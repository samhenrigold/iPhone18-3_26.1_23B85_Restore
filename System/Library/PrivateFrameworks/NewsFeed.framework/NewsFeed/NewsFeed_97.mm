uint64_t FormatCustomItemBinding.URL.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatCustomItemBinding.URL, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatCustomItemBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v11, v9, v12, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD68);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641CFC8(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatTagBinding.URL.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatTagBinding.URL, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatTagBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v11, v9, v12, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE38);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6423BC0(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatSplitBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  sub_1D6666954(0);
  v6 = v5;
  v59 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66669E8(0);
  sub_1D5B58B84(&qword_1EDF0C500, sub_1D66669E8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_13:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v14 - 2);
      v18 = *(v14 - 1);

      v20 = sub_1D6615B98();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v59 + 8))(v9, v6);
      goto LABEL_13;
    }

LABEL_7:
  }

  v54 = 0uLL;
  LOBYTE(v55) = 0;
  if (sub_1D726434C())
  {
    v47 = 0uLL;
    LOBYTE(v48) = 0;
    sub_1D5F40064();
    sub_1D726431C();
    v22 = *(&v42 + 1);
    v38 = v42;
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    sub_1D5F3FE24(0);
    v16 = swift_allocObject();
    v37 = xmmword_1D7273AE0;
    *(v16 + 16) = xmmword_1D7273AE0;
    *(v16 + 32) = v15;
    v38 = v16;
    *(v16 + 40) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = v37;
    *(v22 + 32) = v17;
    *(v22 + 40) = 0;
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v54 = xmmword_1D728CF30;
  LOBYTE(v55) = 0;
  sub_1D5C35368();
  v23 = v9;
  sub_1D726431C();
  v24 = v47;
  v54 = xmmword_1D7297410;
  LOBYTE(v55) = 0;
  sub_1D726431C();
  *&v37 = v24;
  v25 = v47;
  v52 = xmmword_1D72BAA60;
  v53 = 0;
  v36[1] = sub_1D6666B68();
  sub_1D726431C();
  v26 = v59;
  v36[0] = v25;
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v47 = v54;
  v48 = v55;
  *&v40[9] = xmmword_1D72BAA70;
  v41 = 0;
  sub_1D726431C();
  (*(v26 + 8))(v23, v6);
  *(&v40[2] + 7) = v43;
  *(&v40[4] + 7) = v44;
  *(&v40[6] + 7) = v45;
  HIBYTE(v40[8]) = v46;
  *(v40 + 7) = v42;
  v28 = v39;
  *v39 = v38;
  v28[1] = v22;
  v29 = v36[0];
  v28[2] = v37;
  v28[3] = v29;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  *(v28 + 96) = v51;
  *(v28 + 4) = v32;
  *(v28 + 5) = v33;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  v34 = *&v40[2];
  *(v28 + 97) = *v40;
  *(v28 + 161) = v40[8];
  v35 = *&v40[4];
  *(v28 + 145) = *&v40[6];
  *(v28 + 129) = v35;
  *(v28 + 113) = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void FormatSplitBackground.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v152 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v155 = &v148 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v157 = &v148 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  *&v164 = &v148 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v148 - v17;
  sub_1D6666BBC(0);
  v163 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v23 = *(v1 + 8);
  v25 = *(v1 + 24);
  *&v165 = *(v1 + 16);
  v156 = v25;
  v26 = *(v1 + 80);
  v176 = *(v1 + 64);
  v177 = v26;
  v178 = *(v1 + 96);
  v27 = *(v1 + 48);
  v174 = *(v1 + 32);
  v175 = v27;
  v28 = *(v1 + 104);
  v29 = *(v1 + 120);
  v30 = *(v1 + 136);
  v31 = *(v1 + 152);
  v183 = *(v1 + 168);
  v181 = v30;
  v182 = v31;
  v179 = v28;
  v180 = v29;
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D66669E8(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF0C500, sub_1D66669E8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSplitBackground, v35, v37, v32, &type metadata for FormatSplitBackground, v35, &type metadata for FormatVersions.SydroF, v33, v22, v36, &off_1F51F6C58);
  v38 = qword_1EDF31E78;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCC90);
  v41 = *(v39 - 8);
  v42 = *(v41 + 16);
  v43 = v41 + 16;
  v42(v18, v40, v39);
  v44 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v167 = v24;
  *(&v167 + 1) = v23;
  v45 = _s8NewsFeed45FormatCodingSplitBackgroundInsetsZeroStrategyV12shouldEncode12wrappedValueSbAA0cefG0V_tFZ_0(&v167);
  v158 = v42;
  v159 = v39;
  v162 = v44;
  if (v45)
  {
    v160 = v23;
    v161 = v24;
    v151 = v43;
    v46 = v163;
    v47 = &v22[*(v163 + 11)];
    v49 = *v47;
    v48 = *(v47 + 1);
    LOBYTE(v169) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = v169;
    *(v50 + 40) = v49;
    *(v50 + 48) = v48;
    sub_1D6666C50(0);
    v52 = v51;
    sub_1D5B58B84(&qword_1EDF03278, sub_1D6666C50, MEMORY[0x1E69E6F60]);

    v154 = v52;
    v53 = sub_1D72647CC();
    LOBYTE(v169) = 0;
    v54 = swift_allocObject();
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 16) = v53;
    *(v54 + 40) = v169;
    v55 = &v22[*(v46 + 9)];
    v56 = *(v55 + 3);
    v57 = *(v55 + 4);
    v58 = __swift_project_boxed_opaque_existential_1(v55, v56);
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v148 - 4) = sub_1D5B4AA6C;
    *(&v148 - 3) = 0;
    v146 = sub_1D6666D38;
    v147 = v50;
    v62 = v184;
    v64 = sub_1D5D2F7A4(v18, sub_1D615B49C, v63, sub_1D615B4A4, (&v148 - 6), v56, v57);
    if (v62)
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v22, sub_1D6666BBC);

      return;
    }

    v97 = v64;

    if (v97)
    {
      v169 = 0uLL;
      LOBYTE(v170) = 0;
      v166 = v167;
      sub_1D5F400B8();

      sub_1D72647EC();
      v184 = 0;
    }

    else
    {
      v184 = 0;
    }

    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    v42 = v158;
    v39 = v159;
    v43 = v151;
  }

  else
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  }

  v66 = v163;
  v65 = v164;
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v149 = __swift_project_value_buffer(v39, qword_1EDFFCD68);
  (v42)(v65);
  swift_storeEnumTagMultiPayload();
  *&v167 = v165;
  v165 = xmmword_1D728CF30;
  v169 = xmmword_1D728CF30;
  LOBYTE(v170) = 0;
  v67 = &v22[*(v66 + 11)];
  v68 = *v67;
  v69 = *(v67 + 1);
  LOBYTE(v166) = 0;
  v70 = swift_allocObject();
  v161 = &v148;
  *(v70 + 16) = v165;
  *(v70 + 32) = v166;
  *(v70 + 40) = v68;
  *(v70 + 48) = v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v160 = &v148 - 6;
  *(&v148 - 4) = sub_1D5B4AA6C;
  *(&v148 - 3) = 0;
  v146 = sub_1D67088F4;
  v147 = v72;
  LOBYTE(v166) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = v165;
  *(v73 + 32) = v166;
  v150 = v68;
  *(v73 + 40) = v68;
  *(v73 + 48) = v69;
  sub_1D6666C50(0);
  v74 = v66;
  v76 = v75;
  v77 = sub_1D5B58B84(&qword_1EDF03278, sub_1D6666C50, MEMORY[0x1E69E6F60]);
  v148 = v69;
  swift_retain_n();
  v153 = v77;
  v154 = v76;
  v78 = sub_1D72647CC();
  LOBYTE(v166) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v165;
  *(v79 + 40) = v166;
  v80 = *(v74 + 9);
  v81 = v164;
  *&v165 = v22;
  v82 = &v22[v80];
  v83 = v43;
  v84 = *(v82 + 3);
  v85 = *(v82 + 4);
  v86 = __swift_project_boxed_opaque_existential_1(v82, v84);
  MEMORY[0x1EEE9AC00](v86, v87);
  MEMORY[0x1EEE9AC00](v88, v89);
  v90 = v160;
  *(&v148 - 4) = sub_1D615B4A4;
  *(&v148 - 3) = v90;
  v146 = sub_1D67088F4;
  v147 = v73;
  v91 = v184;
  sub_1D5D2BC70(v81, sub_1D615B49C, v92, sub_1D615B4A4, (&v148 - 6), v84, v85);
  if (v91)
  {
    v93 = v165;
    sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v184 = v82;
    v151 = v83;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v95 = v94;
    v96 = sub_1D66582DC();
    sub_1D72647EC();
    v160 = v96;
    v161 = v95;
    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);

    v98 = v157;
    v158(v157, v149, v159);
    swift_storeEnumTagMultiPayload();
    *&v167 = v156;
    v164 = xmmword_1D7297410;
    v169 = xmmword_1D7297410;
    LOBYTE(v170) = 0;
    LOBYTE(v166) = 0;
    v99 = swift_allocObject();
    v163 = &v148;
    *(v99 + 16) = v164;
    *(v99 + 32) = v166;
    v100 = v150;
    v101 = v148;
    *(v99 + 40) = v150;
    *(v99 + 48) = v101;
    MEMORY[0x1EEE9AC00](v99, v102);
    *(&v148 - 4) = sub_1D5B4AA6C;
    *(&v148 - 3) = 0;
    v146 = sub_1D67088F4;
    v147 = v103;
    LOBYTE(v166) = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = v164;
    *(v104 + 32) = v166;
    *(v104 + 40) = v100;
    *(v104 + 48) = v101;
    swift_retain_n();
    v105 = sub_1D72647CC();
    LOBYTE(v166) = 0;
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v164;
    *(v106 + 40) = v166;
    v107 = *(v184 + 3);
    v108 = *(v184 + 4);
    v109 = __swift_project_boxed_opaque_existential_1(v184, v107);
    MEMORY[0x1EEE9AC00](v109, v110);
    MEMORY[0x1EEE9AC00](v111, v112);
    *(&v148 - 4) = sub_1D615B4A4;
    *(&v148 - 3) = (&v148 - 6);
    sub_1D5D2BC70(v98, sub_1D615B49C, v113, sub_1D615B4A4, (&v148 - 6), v107, v108);

    sub_1D72647EC();
    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

    v158(v155, v149, v159);
    swift_storeEnumTagMultiPayload();
    v171 = v176;
    v172 = v177;
    v173 = v178;
    v169 = v174;
    v170 = v175;
    v164 = xmmword_1D72BAA60;
    v167 = xmmword_1D72BAA60;
    v168 = 0;
    LOBYTE(v166) = 0;
    v114 = swift_allocObject();
    v163 = &v148;
    *(v114 + 16) = v164;
    *(v114 + 32) = v166;
    v115 = v150;
    v116 = v148;
    *(v114 + 40) = v150;
    *(v114 + 48) = v116;
    MEMORY[0x1EEE9AC00](v114, v117);
    *(&v148 - 4) = sub_1D5B4AA6C;
    *(&v148 - 3) = 0;
    v146 = sub_1D67088F4;
    v147 = v118;
    LOBYTE(v166) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v164;
    *(v119 + 32) = v166;
    *(v119 + 40) = v115;
    *(v119 + 48) = v116;
    swift_retain_n();
    v120 = sub_1D72647CC();
    LOBYTE(v166) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = v164;
    *(v121 + 40) = v166;
    v122 = *(v184 + 3);
    v123 = *(v184 + 4);
    v124 = __swift_project_boxed_opaque_existential_1(v184, v122);
    MEMORY[0x1EEE9AC00](v124, v125);
    MEMORY[0x1EEE9AC00](v126, v127);
    *(&v148 - 4) = sub_1D615B4A4;
    *(&v148 - 3) = (&v148 - 6);
    v128 = v155;
    sub_1D5D2BC70(v155, sub_1D615B49C, v129, sub_1D615B4A4, (&v148 - 6), v122, v123);

    v130 = sub_1D6666CE4();
    sub_1D72647EC();
    v161 = v130;
    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);

    v131 = v152;
    v158(v152, v149, v159);
    swift_storeEnumTagMultiPayload();
    v171 = v181;
    v172 = v182;
    v173 = v183;
    v169 = v179;
    v170 = v180;
    v164 = xmmword_1D72BAA70;
    v167 = xmmword_1D72BAA70;
    v168 = 0;
    LOBYTE(v166) = 0;
    v132 = swift_allocObject();
    v163 = &v148;
    *(v132 + 16) = v164;
    *(v132 + 32) = v166;
    v133 = v150;
    *(v132 + 40) = v150;
    *(v132 + 48) = v116;
    MEMORY[0x1EEE9AC00](v132, v134);
    *(&v148 - 4) = sub_1D5B4AA6C;
    *(&v148 - 3) = 0;
    v146 = sub_1D67088F4;
    v147 = v135;
    LOBYTE(v166) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = v164;
    *(v136 + 32) = v166;
    *(v136 + 40) = v133;
    *(v136 + 48) = v116;
    swift_retain_n();
    v137 = sub_1D72647CC();
    LOBYTE(v166) = 0;
    v138 = swift_allocObject();
    *(v138 + 16) = v137;
    *(v138 + 24) = v164;
    *(v138 + 40) = v166;
    v139 = *(v184 + 3);
    v140 = *(v184 + 4);
    v141 = __swift_project_boxed_opaque_existential_1(v184, v139);
    MEMORY[0x1EEE9AC00](v141, v142);
    MEMORY[0x1EEE9AC00](v143, v144);
    *(&v148 - 4) = sub_1D615B4A4;
    *(&v148 - 3) = (&v148 - 6);
    v146 = sub_1D67088F4;
    v147 = v136;
    sub_1D5D2BC70(v131, sub_1D615B49C, v145, sub_1D615B4A4, (&v148 - 6), v139, v140);

    v93 = v165;
    sub_1D72647EC();
    sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v93, sub_1D6666BBC);
}

uint64_t FormatSupplementaryNodePinTrait.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
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
          *(v20 + 16) = &unk_1F5111A68;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6666DB4();
    v28 = 0uLL;
    sub_1D726431C();
    v22 = v26;
    if (v26)
    {
      if (v26 == 1)
      {
        v28 = xmmword_1D7279980;
        sub_1D6666E08();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v23 = v26;
        if (HIBYTE(v27))
        {
          v24 = 256;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24 | v27;
      }

      else
      {
        v28 = xmmword_1D7279980;
        sub_1D6666E08();
        sub_1D726427C();
        (*(v7 + 8))(v10, v6);
        v23 = v26;
        v25 = v27;
      }
    }

    else
    {
      sub_1D5C30060(0, &qword_1EDF12750, sub_1D6666E5C, &type metadata for FormatSupplementaryNodePinEdge, type metadata accessor for FormatValue);
      v28 = xmmword_1D7279980;
      sub_1D6666EB0();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v25 = 0;
      v23 = v26;
    }

    *v13 = v23;
    *(v13 + 8) = v25;
    *(v13 + 10) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodePinTrait.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 10);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodePinTrait, &type metadata for FormatCodingKeys, v24, v22, &type metadata for FormatSupplementaryNodePinTrait, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v21, v18, v23, &off_1F51F6CD8);
  if (v20)
  {
    if (v20 == 1)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD50);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6389110(1, v33, v19 & 0x1FF, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCD50);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D643853C(2, v33, v19, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD50);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6388F38(0, v33 & 1, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatTagBinding.DateTime.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatTagBinding.DateTime, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatTagBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v21, v18, v22, &off_1F51F6CF8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCCA8);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D64233C8(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCCA8);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D64233C8(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCA8);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64233C8(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatShineBlend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  sub_1D6667010(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66670A4(0);
  sub_1D5B58B84(&qword_1EC886348, sub_1D66670A4, &unk_1D7321584);
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

  v13 = v46;
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

      v19 = sub_1D6615ED0();
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

  sub_1D6667224();
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_1D726431C();
  v38 = v44[2];
  v39 = v44[3];
  v40 = v45;
  v37 = v44[1];
  v36 = v44[0];
  v34 = xmmword_1D728CF30;
  v35 = 0;
  sub_1D5E4FBA0();
  sub_1D726427C();
  v22 = v31;
  v34 = xmmword_1D7297410;
  v35 = 0;
  sub_1D6667278();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v28[9] = v33;
  v26 = v39;
  *(v13 + 32) = v38;
  *(v13 + 48) = v26;
  *(v13 + 64) = v40;
  v27 = v37;
  *v13 = v36;
  *(v13 + 16) = v27;
  *(v13 + 65) = v22;
  *(v13 + 66) = v29;
  *(v13 + 70) = v30;
  *(v13 + 72) = v23;
  *(v13 + 80) = v24;
  *(v13 + 81) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatShineBlend.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v111 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = v106 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v106 - v11;
  sub_1D66672CC(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 48);
  v136 = *(v1 + 32);
  v137 = v18;
  v138 = *(v1 + 64);
  v19 = *(v1 + 16);
  v134 = *v1;
  v135 = v19;
  v140 = *(v1 + 65);
  v109 = *(v1 + 72);
  v108 = *(v1 + 80);
  v110 = *(v1 + 81);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66670A4(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC886348, sub_1D66670A4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatShineBlend, v23, v25, v20, &type metadata for FormatShineBlend, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  sub_1D5B58478(0);
  v27 = *(v26 + 48);
  v120 = v26;
  v28 = &v12[*(v26 + 64)];
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v33 = v31 + 16;
  v116 = v30;
  v32(v12);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v115 = __swift_project_value_buffer(v29, qword_1EDFFCE68);
  v32(&v12[v27]);
  v34 = type metadata accessor for FormatVersionRequirement.Value(0);
  *v28 = 0;
  *(v28 + 1) = 0;
  v114 = v34;
  swift_storeEnumTagMultiPayload();
  v131 = v136;
  v132 = v137;
  v133 = v138;
  v129 = v134;
  v130 = v135;
  v127 = 0;
  v126 = 0;
  v128 = 0;
  v35 = &v17[*(v14 + 44)];
  v117 = v33;
  v36 = *v35;
  v37 = *(v35 + 1);
  v139 = 0;
  v38 = swift_allocObject();
  v112 = v29;
  v123 = v106;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v139;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = v17;
  *&v125 = v12;
  v106[-4] = sub_1D5B4AA6C;
  v106[-3] = 0;
  v104 = sub_1D67088FC;
  v105 = v41;
  v139 = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v139;
  v119 = v36;
  *(v42 + 40) = v36;
  *(v42 + 48) = v37;
  sub_1D6667360(0);
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EC886370, sub_1D6667360, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v121 = v44;
  v122 = v45;
  v46 = sub_1D72647CC();
  v139 = 0;
  v47 = swift_allocObject();
  v118 = v32;
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v139;
  v48 = &v40[*(v14 + 36)];
  v50 = *(v48 + 3);
  v49 = *(v48 + 4);
  v51 = __swift_project_boxed_opaque_existential_1(v48, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v106[-4] = sub_1D615B4A4;
  v106[-3] = &v106[-6];
  v55 = v125;
  v104 = sub_1D67088FC;
  v105 = v42;
  v56 = v124;
  sub_1D5D2BC70(v125, sub_1D615B49C, v57, sub_1D615B4A4, &v106[-6], v50, v49);
  if (v56)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v58 = v40;
  }

  else
  {
    v107 = v48;
    v124 = v37;

    sub_1D66673F4();
    sub_1D72647EC();
    v58 = v40;
    v123 = 0;
    sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);

    v59 = *(v120 + 48);
    v60 = v113;
    v61 = &v113[*(v120 + 64)];
    v62 = v112;
    v63 = v118;
    (v118)(v113, v116, v112);
    v63(v60 + v59, v115, v62);
    *v61 = 0;
    *(v61 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v125 = xmmword_1D728CF30;
    v129 = xmmword_1D728CF30;
    LOBYTE(v130) = 0;
    LOBYTE(v126) = 0;
    v64 = swift_allocObject();
    v66 = v64;
    *(v64 + 16) = v125;
    *(v64 + 32) = v126;
    v67 = v119;
    v68 = v124;
    *(v64 + 40) = v119;
    *(v64 + 48) = v68;
    if (v140 == 16)
    {

      v69 = v111;
    }

    else
    {
      v106[1] = v106;
      LOBYTE(v126) = v140;
      MEMORY[0x1EEE9AC00](v64, v65);
      v106[-4] = sub_1D5B4AA6C;
      v106[-3] = 0;
      v104 = sub_1D67088FC;
      v105 = v66;
      v139 = 0;
      v78 = swift_allocObject();
      *(v78 + 16) = v125;
      *(v78 + 32) = v139;
      *(v78 + 40) = v67;
      *(v78 + 48) = v68;
      swift_retain_n();
      v79 = sub_1D72647CC();
      v139 = 0;
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      *(v80 + 24) = v125;
      *(v80 + 40) = v139;
      v81 = *(v107 + 3);
      v82 = *(v107 + 4);
      v83 = __swift_project_boxed_opaque_existential_1(v107, v81);
      MEMORY[0x1EEE9AC00](v83, v84);
      MEMORY[0x1EEE9AC00](v85, v86);
      v106[-4] = sub_1D615B4A4;
      v106[-3] = &v106[-6];
      v104 = sub_1D67088FC;
      v105 = v78;
      v87 = v123;
      v89 = sub_1D5D2F7A4(v60, sub_1D615B49C, v88, sub_1D615B4A4, &v106[-6], v81, v82);
      if (v87)
      {
        sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v58, sub_1D66672CC);
      }

      v102 = v89;

      if (v102)
      {
        sub_1D5E4FBF4();
        sub_1D72647EC();
        v69 = v111;
        v62 = v112;
        v123 = 0;
        v60 = v113;
        v68 = v124;
      }

      else
      {
        v123 = 0;
        v69 = v111;
        v60 = v113;
        v68 = v124;
        v62 = v112;
      }
    }

    sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);

    v70 = *(v120 + 48);
    v71 = (v69 + *(v120 + 64));
    v72 = v118;
    (v118)(v69, v116, v62);
    v72(v69 + v70, v115, v62);
    *v71 = 0;
    v71[1] = 0;
    swift_storeEnumTagMultiPayload();
    v125 = xmmword_1D7297410;
    v129 = xmmword_1D7297410;
    LOBYTE(v130) = 0;
    LOBYTE(v126) = 0;
    v73 = swift_allocObject();
    v75 = v73;
    *(v73 + 16) = v125;
    *(v73 + 32) = v126;
    v76 = v119;
    *(v73 + 40) = v119;
    *(v73 + 48) = v68;
    if (v110)
    {
    }

    else
    {
      v126 = v109;
      LOBYTE(v127) = v108 & 1;
      MEMORY[0x1EEE9AC00](v73, v74);
      v106[-4] = sub_1D5B4AA6C;
      v106[-3] = 0;
      v104 = sub_1D67088FC;
      v105 = v75;
      v139 = 0;
      v90 = swift_allocObject();
      *(v90 + 16) = v125;
      *(v90 + 32) = v139;
      *(v90 + 40) = v76;
      *(v90 + 48) = v68;
      swift_retain_n();
      v91 = sub_1D72647CC();
      v139 = 0;
      v92 = swift_allocObject();
      *(v92 + 16) = v91;
      *(v92 + 24) = v125;
      *(v92 + 40) = v139;
      v93 = *(v107 + 3);
      v94 = *(v107 + 4);
      v95 = __swift_project_boxed_opaque_existential_1(v107, v93);
      MEMORY[0x1EEE9AC00](v95, v96);
      MEMORY[0x1EEE9AC00](v97, v98);
      v106[-4] = sub_1D615B4A4;
      v106[-3] = &v106[-6];
      v69 = v111;
      v104 = sub_1D6667448;
      v105 = v90;
      v99 = v123;
      v101 = sub_1D5D2F7A4(v111, sub_1D615B49C, v100, sub_1D615B4A4, &v106[-6], v93, v94);
      if (v99)
      {
        sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v58, sub_1D66672CC);
      }

      v103 = v101;

      if (v103)
      {
        sub_1D66674C4();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v58, sub_1D66672CC);
}

uint64_t FormatHeadlineBinding.Color.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v45 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v46 = v25;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Color, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatHeadlineBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD50);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D641EA18(1, v17);
      v34 = v17;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D641EA18(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641EA18(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641EA18(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641EA18(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t FormatLocalization.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v86 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v96 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v93 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v86 - v15;
  sub_1D6667518(0);
  *&v98 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v95 = v1[6];
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5CAFBB4(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF25598, sub_1D5CAFBB4, &unk_1D7321584);
  v97 = v20;
  sub_1D5D2EE70(&type metadata for FormatLocalization, v26, v28, v23, &type metadata for FormatLocalization, v26, &type metadata for FormatVersions.JazzkonC, v24, v20, v27, &off_1F51F6C78);
  v29 = qword_1EDF31EB0;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v34 = v32 + 16;
  v33(v16, v31, v30);
  v94 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v35 = sub_1D725895C();
  if ((*(*(v35 - 8) + 48))(v6, 1, v35) != 1)
  {
    sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v55 = v98;
LABEL_7:
    v56 = v93;
    v33(v93, v31, v30);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    v33(v56, v31, v30);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    v57 = v96;
    v33(v96, v31, v30);
    swift_storeEnumTagMultiPayload();
    v100 = v95;
    v98 = xmmword_1D72BAA60;
    v102 = xmmword_1D72BAA60;
    v103 = 0;
    v58 = v97;
    v59 = &v97[*(v55 + 44)];
    v60 = *v59;
    v61 = *(v59 + 1);
    v104 = 0;
    v62 = swift_allocObject();
    v63 = v55;
    v95 = &v86;
    *(v62 + 16) = v98;
    *(v62 + 32) = v104;
    *(v62 + 40) = v60;
    *(v62 + 48) = v61;
    MEMORY[0x1EEE9AC00](v62, v64);
    *(&v86 - 4) = sub_1D5B4AA6C;
    *(&v86 - 3) = 0;
    v84 = sub_1D6708900;
    v85 = v65;
    v104 = 0;
    v66 = swift_allocObject();
    *(v66 + 16) = v98;
    *(v66 + 32) = v104;
    *(v66 + 40) = v60;
    *(v66 + 48) = v61;
    sub_1D66675AC(0);
    v68 = v67;
    sub_1D5B58B84(&qword_1EDF035F8, sub_1D66675AC, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v94 = v68;
    v69 = sub_1D72647CC();
    v104 = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v98;
    *(v70 + 40) = v104;
    v71 = (v58 + *(v63 + 36));
    v72 = v71[3];
    v73 = v71[4];
    v74 = __swift_project_boxed_opaque_existential_1(v71, v72);
    MEMORY[0x1EEE9AC00](v74, v75);
    MEMORY[0x1EEE9AC00](v76, v77);
    *(&v86 - 4) = sub_1D615B4A4;
    *(&v86 - 3) = (&v86 - 6);
    v84 = sub_1D6708900;
    v85 = v66;
    v78 = v99;
    sub_1D5D2BC70(v57, sub_1D615B49C, v79, sub_1D615B4A4, (&v86 - 6), v72, v73);
    if (v78)
    {
      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5C34D84(0, &qword_1EDF1B030, &type metadata for FormatLocalizationString, MEMORY[0x1E69E62F8]);
      sub_1D66676BC();
      sub_1D72647EC();
      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    }

    v80 = v58;
    return sub_1D5D2CFE8(v80, sub_1D6667518);
  }

  v92 = v21;
  v87 = v22;
  v88 = v31;
  v89 = v34;
  v90 = v33;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v37 = v97;
  v36 = v98;
  v38 = &v97[*(v98 + 44)];
  v40 = *v38;
  v39 = *(v38 + 1);
  LOBYTE(v102) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v102;
  *(v41 + 40) = v40;
  *(v41 + 48) = v39;
  sub_1D66675AC(0);
  sub_1D5B58B84(&qword_1EDF035F8, sub_1D66675AC, MEMORY[0x1E69E6F60]);

  v42 = sub_1D72647CC();
  LOBYTE(v102) = 0;
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v102;
  v44 = (v37 + *(v36 + 36));
  v45 = v44[3];
  v46 = v44[4];
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v91 = &v86;
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  *(&v86 - 4) = sub_1D5B4AA6C;
  *(&v86 - 3) = 0;
  v84 = sub_1D6667640;
  v85 = v41;
  v51 = v99;
  v53 = sub_1D5D2F7A4(v16, sub_1D615B49C, v52, sub_1D615B4A4, (&v86 - 6), v45, v46);
  v99 = v51;
  if (v51)
  {
    sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v37, sub_1D6667518);
  }

  v81 = v53;

  if ((v81 & 1) == 0)
  {
    sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);

    v55 = v98;
    v31 = v88;
    v33 = v90;
    goto LABEL_7;
  }

  v102 = 0uLL;
  v103 = 0;
  v100 = v87;
  v101 = v92;
  v82 = v97;
  v83 = v99;
  sub_1D72647EC();

  sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);
  v55 = v98;
  v33 = v90;
  if (!v83)
  {
    v99 = 0;
    v31 = v88;
    goto LABEL_7;
  }

  v80 = v82;
  return sub_1D5D2CFE8(v80, sub_1D6667518);
}

uint64_t FormatPurchaseAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
  {
    v11 = v6;
    v12 = v31;
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
          *(v22 + 16) = &unk_1F5111DD0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66677AC();
    v37 = 0;
    v38 = 0;
    sub_1D726431C();
    if (v39 <= 1u)
    {
      if (v39)
      {
        v32 = xmmword_1D7279980;
        sub_1D66678A8();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v28 = 0;
        v24 = v36;
        goto LABEL_19;
      }

      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0;
      v26 = 0uLL;
      v28 = 3;
    }

    else
    {
      if (v39 != 2)
      {
        v36 = xmmword_1D7279980;
        if (v39 == 3)
        {
          sub_1D6667854();
          sub_1D726427C();
          (*(v11 + 8))(v15, v5);
          v25 = *(&v32 + 1);
          v24 = v32;
          v26 = v33;
          v27 = v34;
          v28 = 1;
          v29 = v35;
        }

        else
        {
          sub_1D6667800();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v25 = *(&v32 + 1);
          v24 = v32;
          v28 = 2;
          *&v26 = v33;
        }

        goto LABEL_19;
      }

      (*(v11 + 8))(v15, v5);
      v25 = 0;
      v26 = 0uLL;
      v28 = 3;
      v24 = 1;
    }

    v27 = 0uLL;
    v29 = 0uLL;
LABEL_19:
    *v12 = v24;
    *(v12 + 8) = v25;
    *(v12 + 16) = v26;
    *(v12 + 32) = v27;
    *(v12 + 48) = v29;
    *(v12 + 64) = v28;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPurchaseAction.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v53 = &v52 - v21;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v1 + 16);
  v57 = *v1;
  v27 = *(v1 + 32);
  v55 = *(v1 + 48);
  v56 = v26;
  v54 = v27;
  v28 = *(v1 + 64);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = sub_1D5C30408();
  v59 = v25;
  sub_1D5D2EE70(&type metadata for FormatPurchaseAction, &type metadata for FormatCodingKeys, v32, v29, &type metadata for FormatPurchaseAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v30, v25, v31, &off_1F51F6C18);
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v37 = v57.i64[1];
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCE80);
      (*(*(v38 - 8) + 16))(v6, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v59;
      sub_1D63A2220(4, v57.i64[0], v37, v56, v6);
      v36 = v6;
    }

    else
    {
      v42 = vorrq_s8(v54, v55);
      v43 = vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
      v44 = vdupq_lane_s64(v56, 0);
      *v44.i8 = v43;
      v45 = vorrq_s8(v44, v57);
      if (v45.i64[1] | v45.i64[0] | *(&v56 + 1))
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCD98);
        (*(*(v46 - 8) + 16))(v14, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v35 = v59;
        sub_1D641FDC4(2, v14);
        v36 = v14;
      }

      else
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCD98);
        v50 = v53;
        (*(*(v48 - 8) + 16))(v53, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v35 = v59;
        sub_1D641FDC4(0, v50);
        v36 = v50;
      }
    }
  }

  else if (v28)
  {
    v58[0] = v57;
    v58[1] = v56;
    v58[2] = v54;
    v58[3] = v55;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD98);
    (*(*(v40 - 8) + 16))(v10, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v59;
    sub_1D6438D30(3, v58, v10);
    v36 = v10;
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD98);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v59;
    sub_1D6438B9C(1, v57.i64[0], v18);
    v36 = v18;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t FormatFontDesign.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v31 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v30 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v34 = *v1;
  v19 = a1[3];
  v20 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD50);
  v23 = *(*(v21 - 8) + 16);
  v23(v18, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v24 = v37;
  sub_1D5D2BEC4(v18, sub_1D5B4AA6C, 0, v19, v20);
  result = sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  if (!v24)
  {
    v26 = v35[3];
    v27 = v35[4];
    v37 = __swift_project_boxed_opaque_existential_1(v35, v26);
    if (v34 > 1)
    {
      v28 = v32;
      v23(v32, v22, v21);
    }

    else
    {
      v28 = v30;
      v23(v30, v22, v21);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v28, sub_1D5B4AA6C, 0, v26, v27);
    sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return result;
}

uint64_t FormatItemNodeActionBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - v9;
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

    v13 = v27;
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
          *(v20 + 16) = &unk_1F5111E20;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66678FC();
    v24 = 0uLL;
    sub_1D726431C();
    v23[2] = xmmword_1D7279980;
    sub_1D5C6CE4C();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v22[0] = v24;
    v22[1] = v25;
    v23[0] = *v26;
    *(v23 + 15) = *&v26[15];
    sub_1D62B5F18(v22, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatItemNodeActionBinding.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v29 = *(v2 + 48);
  v14 = *(v2 + 50);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatItemNodeActionBinding, &type metadata for FormatCodingKeys, v18, v15, &type metadata for FormatItemNodeActionBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v16, v11, v17, &off_1F51F6CB8);
  v30 = v14;
  v19 = *v2;
  v24[1] = *(v2 + 16);
  v24[0] = v19;
  v25 = v12;
  v26 = v13;
  v27 = v29;
  v28 = v14;
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D638C3C4(v24, v7);
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v11, sub_1D5D30DC4);
}

uint64_t FormatSlotItemTagFilterNotCondition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D6667950(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66679E4(0);
  sub_1D5B58B84(&qword_1EC8863B8, sub_1D66679E4, &unk_1D7321584);
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

      v19 = sub_1D6628490(0x6F697469646E6F63, 0xE90000000000006ELL);
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

  sub_1D5F34364();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilterNotCondition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6667B64(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66679E4(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC8863B8, sub_1D66679E4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilterNotCondition, v16, v18, v13, &type metadata for FormatSlotItemTagFilterNotCondition, v16, &type metadata for FormatVersions.DawnburstC, v14, v11, v17, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCE98);
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
  v42 = sub_1D6708904;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6667BF8(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EC8863D0, sub_1D6667BF8, MEMORY[0x1E69E6F60]);
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
  v42 = sub_1D6667C8C;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5F343B8();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6667B64);
}

uint64_t FormatBindingTextExpressionLogic.Length.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6667D08(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6667D9C(0);
  sub_1D5B58B84(&qword_1EC886400, sub_1D6667D9C, &unk_1D7321584);
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

  v13 = v25;
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

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x726F74617265706FLL, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v26 = 0uLL;
  v27 = 0;
  v17 = sub_1D72642FC();
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingTextExpressionLogic.Length.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D6667F1C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6667D9C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC886400, sub_1D6667D9C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpressionLogic.Length, v19, v21, v16, &type metadata for FormatBindingTextExpressionLogic.Length, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v77 = v23;
  v78 = v22;
  v72 = v24 + 16;
  v73 = v25;
  (v25)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v15;
  v85 = 0uLL;
  v86 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v84 = 0;
  v29 = swift_allocObject();
  v81 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v84;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v83 = v9;
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D6708908;
  v68 = v31;
  v84 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v84;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6667FB0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC886418, sub_1D6667FB0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v35;
  v80 = v34;
  v36 = sub_1D72647CC();
  v84 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v84;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v45 = v82;
  v46 = v83;
  v67 = sub_1D6708908;
  v68 = v32;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v69 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v38;
    v49 = v77;
    v48 = v78;
    v82 = v28;

    sub_1D72647EC();
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v51 = v76;
    v73(v76, v49, v48);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v87) = v75;
    v83 = xmmword_1D728CF30;
    v85 = xmmword_1D728CF30;
    v86 = 0;
    v84 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v84;
    v53 = v74;
    v54 = v82;
    *(v52 + 40) = v74;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D6708908;
    v68 = v56;
    v84 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v83;
    *(v57 + 32) = v84;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v84 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v83;
    *(v59 + 40) = v84;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D6708908;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6667F1C);
}

uint64_t FormatBindingTextExpressionLogic.Compare.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66680A8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666813C(0);
  sub_1D5B58B84(&qword_1EDF24E48, sub_1D666813C, &unk_1D7321584);
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

  v13 = v29;
  v14 = v7;
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

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x726F74617265706FLL, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  *(v13 + 8) = v20;
  *(v13 + 16) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingTextExpressionLogic.Compare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D66682BC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v88 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D666813C(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24E48, sub_1D666813C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpressionLogic.Compare, v20, v22, v17, &type metadata for FormatBindingTextExpressionLogic.Compare, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v73 = *(v25 + 16);
  v74 = v24;
  v77 = v23;
  v72 = v25 + 16;
  v73(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v15;
  v86 = v16;
  v83 = 0uLL;
  v84 = 0;
  v26 = &v14[*(v11 + 44)];
  v80 = v9;
  v27 = *v26;
  v28 = *(v26 + 1);
  v87 = 0;
  v29 = swift_allocObject();
  v81 = &v68;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v87;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D6708908;
  v67 = v31;
  v87 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v87;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6668350(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02D78, sub_1D6668350, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v78 = v35;
  v79 = v34;
  v36 = sub_1D72647CC();
  v87 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v87;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v45 = v80;
  v66 = sub_1D6708908;
  v67 = v32;
  v46 = v82;
  sub_1D5D2BC70(v80, sub_1D615B49C, v47, sub_1D615B4A4, (&v68 - 6), v39, v40);
  if (v46)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v69 = v38;
    v70 = v28;
    v48 = v77;

    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v50 = v76;
    (v73)(v76, v74, v48);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v85) = v88;
    v82 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    v84 = 0;
    v87 = 0;
    v51 = swift_allocObject();
    v81 = &v68;
    *(v51 + 16) = v82;
    *(v51 + 32) = v87;
    v52 = v75;
    v53 = v70;
    *(v51 + 40) = v75;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v68 - 4) = sub_1D5B4AA6C;
    *(&v68 - 3) = 0;
    v66 = sub_1D6708908;
    v67 = v55;
    v87 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v82;
    *(v56 + 32) = v87;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v87 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v82;
    *(v58 + 40) = v87;
    v59 = *(v69 + 3);
    v60 = *(v69 + 4);
    v61 = __swift_project_boxed_opaque_existential_1(v69, v59);
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v68 - 4) = sub_1D615B4A4;
    *(&v68 - 3) = (&v68 - 6);
    v66 = sub_1D6708908;
    v67 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v65, sub_1D615B4A4, (&v68 - 6), v59, v60);

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66682BC);
}

uint64_t FormatBindingTextExpressionLogic.Binding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D6668448(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66684DC(0);
  sub_1D5B58B84(&qword_1EDF0C420, sub_1D66684DC, &unk_1D7321584);
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

  v13 = v36;
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

      v19 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x726F74617265706FLL, 0xE800000000000000);
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

  sub_1D5C77160();
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_1D726431C();
  v27 = v34[0];
  v28 = v34[1];
  v29 = v34[2];
  v30 = v35;
  v24 = xmmword_1D728CF30;
  v25 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v22 = v26;
  v23 = v28;
  *v13 = v27;
  *(v13 + 16) = v23;
  *(v13 + 32) = v29;
  *(v13 + 48) = v30;
  *(v13 + 50) = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingTextExpressionLogic.Binding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v69 - v8;
  sub_1D666865C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 16);
  v87 = *v1;
  v88 = v15;
  v89 = *(v1 + 32);
  v90 = *(v1 + 48);
  v92 = *(v1 + 50);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66684DC(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C420, sub_1D66684DC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpressionLogic.Binding, v19, v21, v16, &type metadata for FormatBindingTextExpressionLogic.Binding, v19, &type metadata for FormatVersions.SydroF, v17, v14, v20, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD68);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v73 = v23;
  v74 = v22;
  v70 = v25;
  v69[2] = (v24 + 16);
  (v25)(v9);
  v69[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v87;
  v84 = v88;
  v85 = v89;
  v86 = v90;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v91 = 0;
  v29 = swift_allocObject();
  v77 = v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v91;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v79 = v9;
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D670890C;
  v68 = v31;
  v91 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v91;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66686F0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02D88, sub_1D66686F0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v76 = v34;
  v75 = v35;
  v36 = sub_1D72647CC();
  v91 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v91;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v69[-4] = sub_1D615B4A4;
  v69[-3] = &v69[-6];
  v45 = v79;
  v67 = sub_1D6668784;
  v68 = v32;
  v46 = v78;
  sub_1D5D2BC70(v79, sub_1D615B49C, v47, sub_1D615B4A4, &v69[-6], v39, v40);
  if (v46)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v69[0] = v38;
    v48 = v73;
    v49 = v74;
    v78 = v28;

    sub_1D5FD79B8();
    sub_1D72647EC();
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

    v51 = v72;
    v70(v72, v48, v49);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v80) = v92;
    v79 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    LOBYTE(v84) = 0;
    v91 = 0;
    v52 = swift_allocObject();
    v77 = v69;
    *(v52 + 16) = v79;
    *(v52 + 32) = v91;
    v53 = v71;
    v54 = v78;
    *(v52 + 40) = v71;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    v69[-4] = sub_1D5B4AA6C;
    v69[-3] = 0;
    v67 = sub_1D670890C;
    v68 = v56;
    v91 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v79;
    *(v57 + 32) = v91;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v91 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v79;
    *(v59 + 40) = v91;
    v60 = v69[0][3];
    v61 = v69[0][4];
    v62 = __swift_project_boxed_opaque_existential_1(v69[0], v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    v69[-4] = sub_1D615B4A4;
    v69[-3] = &v69[-6];
    v67 = sub_1D670890C;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, &v69[-6], v60, v61);

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D666865C);
}

uint64_t FormatBindingTextExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v76 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v76 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v78 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v77 = &v76 - v29;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v1;
  v84 = *(v1 + 16);
  v86 = v34;
  v35 = *(v1 + 40);
  v82 = *(v1 + 32);
  v83 = v35;
  v36 = *(v1 + 50);
  v37 = *(v1 + 48);
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = sub_1D5C30408();
  v85 = v33;
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpressionLogic, &type metadata for FormatCodingKeys, v41, v38, &type metadata for FormatBindingTextExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v39, v33, v40, &off_1F51F6C78);
  v42 = v36 >> 5;
  if (v42 > 2)
  {
    if ((v36 >> 5) > 4u)
    {
      v54 = v37 & 0xFF00FFFF | (v36 << 16);
      if (v42 == 5)
      {
        v87[0] = v86;
        v87[1] = v84;
        v88 = v82;
        v89 = v83;
        v90 = v54;
        v91 = BYTE2(v54) & 0x1F;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v55 = sub_1D725BD1C();
        v56 = __swift_project_value_buffer(v55, qword_1EDFFCD68);
        v57 = v81;
        (*(*(v55 - 8) + 16))(v81, v56, v55);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v58 = v85;
        sub_1D6388C08(7, v87, v57);
      }

      else
      {
        if (v84 | v86 | *(&v86 + 1) | *(&v84 + 1) | v82 | v83 || v54 != 12582912)
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v74 = sub_1D725BD1C();
          v75 = __swift_project_value_buffer(v74, qword_1EDFFCD30);
          v57 = v78;
          (*(*(v74 - 8) + 16))(v78, v75, v74);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v73 = 1;
        }

        else
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v71 = sub_1D725BD1C();
          v72 = __swift_project_value_buffer(v71, qword_1EDFFCD30);
          v57 = v77;
          (*(*(v71 - 8) + 16))(v77, v72, v71);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v73 = 0;
        }

        v58 = v85;
        sub_1D6419AE8(v73, v57);
      }

      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
      v48 = v58;
      return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
    }

    if (v42 == 3)
    {
      v43 = BYTE8(v86);
      v44 = v85;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
      v47 = v79;
      (*(*(v45 - 8) + 16))(v79, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63888D8(5, v86, v43, v47);
      sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
      v48 = v44;
      return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
    }

    v66 = *(&v86 + 1);
    v67 = v84;
    v49 = v85;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v68 = sub_1D725BD1C();
    v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
    v70 = v80;
    (*(*(v68 - 8) + 16))(v80, v69, v68);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6388A70(6, v86, v66, v67, v70);
    v53 = v70;
LABEL_25:
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    v48 = v49;
    return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
  }

  if (v36 >> 5)
  {
    v49 = v85;
    v50 = *(&v86 + 1);
    if (v42 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
      (*(*(v51 - 8) + 16))(v19, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6388710(3, v86, v50, v19);
      v53 = v19;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
      (*(*(v64 - 8) + 16))(v15, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6388710(4, v86, v50, v15);
      v53 = v15;
    }

    goto LABEL_25;
  }

  v59 = *(&v86 + 1);
  v60 = v85;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v61 = sub_1D725BD1C();
  v62 = __swift_project_value_buffer(v61, qword_1EDFFCD30);
  (*(*(v61 - 8) + 16))(v23, v62, v61);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6388710(2, v86, v59, v23);
  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
}

uint64_t FormatCustomNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D6668800(0);
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6668894(0);
  sub_1D5B58B84(&qword_1EDF252E8, sub_1D6668894, &unk_1D7321584);
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

  v13 = v35;
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

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6616250();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v18 = v33;
  v17 = v34;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  v19 = sub_1D726423C();
  v30 = v18;
  v25 = v7;
  v26 = v13;
  v27 = v19;
  sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D6668A14();
  sub_1D726427C();
  (*(v26 + 8))(v10, v25);
  v28 = v33;
  *a2 = v30;
  *(a2 + 8) = v17;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCustomNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v104 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  *&v112 = &v98 - v11;
  sub_1D6668AEC(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v119 = *(v1 + 16);
  v100 = v1[3];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D6668894(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF252E8, sub_1D6668894, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatCustomNodeStyle.Selector, v22, v24, v19, &type metadata for FormatCustomNodeStyle.Selector, v22, &type metadata for FormatVersions.JazzkonG, v20, v16, v23, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v29 = v112;
  v99 = v26;
  v102 = v25;
  v106 = v27 + 16;
  v107 = v28;
  (v28)(v112);
  v105 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v116 = v17;
  v117 = v18;
  v114 = 0uLL;
  v115 = 0;
  v30 = &v16[*(v13 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v118 = 0;
  v33 = swift_allocObject();
  v110 = &v98;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v118;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v98 - 4) = sub_1D5B4AA6C;
  *(&v98 - 3) = 0;
  v96 = sub_1D6708910;
  v97 = v35;
  v118 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v118;
  v103 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D6668B80(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF032F8, sub_1D6668B80, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v108 = v38;
  v109 = v39;
  v40 = sub_1D72647CC();
  v118 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v118;
  v42 = *(v13 + 36);
  v111 = v16;
  v43 = &v16[v42];
  v45 = *(v43 + 3);
  v44 = *(v43 + 4);
  v46 = __swift_project_boxed_opaque_existential_1(v43, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v98 - 4) = sub_1D615B4A4;
  *(&v98 - 3) = (&v98 - 6);
  v96 = sub_1D6708910;
  v97 = v36;
  v50 = v113;
  sub_1D5D2BC70(v29, sub_1D615B49C, v51, sub_1D615B4A4, (&v98 - 6), v45, v44);
  if (v50)
  {
    sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);

    v52 = v111;
  }

  else
  {
    v98 = v43;
    *&v113 = v32;

    sub_1D5D3E60C();
    v52 = v111;
    sub_1D72647EC();
    sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v110 = 0;
    v54 = v102;
    v55 = __swift_project_value_buffer(v102, qword_1EDFFCDE0);
    v56 = v104;
    v107(v104, v55, v54);
    swift_storeEnumTagMultiPayload();
    v112 = xmmword_1D728CF30;
    v114 = xmmword_1D728CF30;
    v115 = 0;
    LOBYTE(v116) = 0;
    v57 = swift_allocObject();
    v59 = v57;
    *(v57 + 16) = v112;
    *(v57 + 32) = v116;
    v60 = v103;
    v61 = v113;
    *(v57 + 40) = v103;
    *(v57 + 48) = v61;
    if (v119 == 2)
    {

      v63 = v100;
      v62 = v101;
    }

    else
    {
      LOBYTE(v116) = v119 & 1;
      MEMORY[0x1EEE9AC00](v57, v58);
      *(&v98 - 4) = sub_1D5B4AA6C;
      *(&v98 - 3) = 0;
      v96 = sub_1D6708910;
      v97 = v59;
      v118 = 0;
      v80 = swift_allocObject();
      v81 = v60;
      v82 = v80;
      *(v80 + 16) = v112;
      *(v80 + 32) = v118;
      *(v80 + 40) = v81;
      *(v80 + 48) = v61;
      swift_retain_n();
      v83 = sub_1D72647CC();
      v118 = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v112;
      *(v84 + 40) = v118;
      v85 = *(v98 + 3);
      v86 = *(v98 + 4);
      v87 = __swift_project_boxed_opaque_existential_1(v98, v85);
      MEMORY[0x1EEE9AC00](v87, v88);
      MEMORY[0x1EEE9AC00](v89, v90);
      *(&v98 - 4) = sub_1D615B4A4;
      *(&v98 - 3) = (&v98 - 6);
      v56 = v104;
      v96 = sub_1D6708910;
      v97 = v82;
      v91 = v110;
      v93 = sub_1D5D2F7A4(v104, sub_1D615B49C, v92, sub_1D615B4A4, (&v98 - 6), v85, v86);
      if (v91)
      {
        sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v52, sub_1D6668AEC);
      }

      v94 = v93;

      if (v94)
      {
        sub_1D72647EC();
        v62 = v101;
        v54 = v102;
        v110 = 0;
        v60 = v103;
        v63 = v100;
        v61 = v113;
      }

      else
      {
        v110 = 0;
        v63 = v100;
        v62 = v101;
        v61 = v113;
        v54 = v102;
        v60 = v103;
      }
    }

    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    v107(v62, v99, v54);
    swift_storeEnumTagMultiPayload();
    v113 = xmmword_1D7297410;
    v114 = xmmword_1D7297410;
    v115 = 0;
    LOBYTE(v116) = 0;
    v64 = swift_allocObject();
    v66 = v64;
    *(v64 + 16) = v113;
    *(v64 + 32) = v116;
    *(v64 + 40) = v60;
    *(v64 + 48) = v61;
    if (v63)
    {
      *&v112 = &v98;
      v116 = v63;
      MEMORY[0x1EEE9AC00](v64, v65);
      *(&v98 - 4) = sub_1D5B4AA6C;
      *(&v98 - 3) = 0;
      v96 = sub_1D6708910;
      v97 = v66;
      v118 = 0;
      v67 = swift_allocObject();
      *(v67 + 16) = v113;
      *(v67 + 32) = v118;
      *(v67 + 40) = v60;
      *(v67 + 48) = v61;
      swift_retain_n();

      v68 = sub_1D72647CC();
      v118 = 0;
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = v113;
      *(v69 + 40) = v118;
      v70 = *(v98 + 3);
      v71 = *(v98 + 4);
      v72 = __swift_project_boxed_opaque_existential_1(v98, v70);
      MEMORY[0x1EEE9AC00](v72, v73);
      MEMORY[0x1EEE9AC00](v74, v75);
      *(&v98 - 4) = sub_1D615B4A4;
      *(&v98 - 3) = (&v98 - 6);
      v76 = v101;
      v96 = sub_1D6668C14;
      v97 = v67;
      v77 = v110;
      v79 = sub_1D5D2F7A4(v101, sub_1D615B49C, v78, sub_1D615B4A4, (&v98 - 6), v70, v71);
      if (v77)
      {
      }

      else
      {
        v95 = v79;

        if (v95)
        {
          sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
          sub_1D60AD304();
          sub_1D72647EC();
        }
      }

      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v52, sub_1D6668AEC);
}

uint64_t FormatVisibility.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    v23 = a1;
  }

  else
  {
    v11 = a2;
    v12 = a1[3];
    v33 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v13 = sub_1D7264AFC();
    LOBYTE(v12) = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v14 = v37;
    v15 = v9;
    if (v12)
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
          *(v22 + 16) = &unk_1F5111EC0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v6);
          a1 = v33;
          goto LABEL_9;
        }
      }
    }

    sub_1D6668C90();
    v35 = 0;
    v36 = 0;
    sub_1D726431C();
    if (v34 > 1u)
    {
      if (v34 == 2)
      {
        sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
        v34 = xmmword_1D7279980;
        sub_1D5C34150();
        sub_1D726431C();
        (*(v14 + 8))(v15, v6);
        v27 = v35;
        v28 = v36;
        v26 = swift_allocObject();
        *(v26 + 16) = v27;
        *(v26 + 24) = v28;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF0F900, sub_1D615B9E8, &type metadata for FormatVisibility, type metadata accessor for FormatSelectorValue);
        v34 = xmmword_1D7279980;
        sub_1D6668CE4();
        sub_1D726431C();
        (*(v14 + 8))(v15, v6);
        v29 = v35;
        v30 = v36;
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        *(v31 + 24) = v30;
        v26 = v31 | 0x4000000000000000;
      }

      v25 = v33;
    }

    else
    {
      v25 = v33;
      if (v34)
      {
        (*(v14 + 8))(v15, v6);
        v26 = 0x8000000000000008;
      }

      else
      {
        (*(v14 + 8))(v15, v6);
        v26 = 0x8000000000000000;
      }
    }

    *v11 = v26;
    v23 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t FormatVisibility.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVisibility, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatVisibility, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v25, v22, v26, &off_1F51F6CD8);
  if (v23 >> 62)
  {
    if (v23 >> 62 == 1)
    {
      v29 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v29);
      v30 = qword_1EDF31F08;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDE0);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B3000(3, v29, v28, v6);
      sub_1D5EB15C4(v29);

      v33 = v6;
    }

    else if (v23 == 0x8000000000000000)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
      (*(*(v39 - 8) + 16))(v18, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423274(0, v18);
      v33 = v18;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
      (*(*(v41 - 8) + 16))(v14, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423274(1, v14);
      v33 = v14;
    }
  }

  else
  {
    v34 = *(v23 + 16);
    v35 = *(v23 + 24);
    v36 = qword_1EDF31ED0;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v10, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B2E38(2, v34, v35, v10);

    v33 = v10;
  }

  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatIssueCoverNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v283 = &v263 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v267 = &v263 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v268 = &v263 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v269 = &v263 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v270 = &v263 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v272 = &v263 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v271 = &v263 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v273 = &v263 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v281 = (&v263 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v263 - v34;
  sub_1D6669884(0);
  v284 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v263 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1D66699AC(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF0C4A0, sub_1D66699AC, &unk_1D7321584);
  v310 = v39;
  sub_1D5D2EE70(v4, v43, v45, v40, v4, v43, &type metadata for FormatVersions.StarSky, v41, v39, v44, &off_1F51F6CD8);
  swift_beginAccess();
  v47 = v2[2];
  v46 = v2[3];
  v279 = v2;
  v48 = qword_1EDF31ED0;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = sub_1D725BD1C();
  v50 = __swift_project_value_buffer(v49, qword_1EDFFCD50);
  v51 = *(v49 - 8);
  v52 = *(v51 + 16);
  v53 = v51 + 16;
  v280 = v50;
  v52(v35);
  v54 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v55 = v283;
  v274 = v47;
  sub_1D725892C();
  v56 = sub_1D725895C();
  v57 = (*(*(v56 - 8) + 48))(v55, 1, v56);
  v277 = v49;
  v278 = v53;
  v275 = v52;
  v276 = v54;
  if (v57 != 1)
  {
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v55, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v80 = v280;
    v81 = v281;
    goto LABEL_7;
  }

  v266 = v46;
  sub_1D5D35558(v55, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v58 = v35;
  v59 = v284;
  v60 = v310;
  v61 = &v310[*(v284 + 11)];
  v63 = *v61;
  v62 = *(v61 + 1);
  LOBYTE(v299) = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v299;
  *(v64 + 40) = v63;
  *(v64 + 48) = v62;
  sub_1D6669918(0);
  v66 = v65;
  sub_1D5B58B84(&qword_1EDF03008, sub_1D6669918, MEMORY[0x1E69E6F60]);

  *&v283 = v66;
  v67 = sub_1D72647CC();
  LOBYTE(v299) = 0;
  v68 = swift_allocObject();
  *(v68 + 24) = 0;
  *(v68 + 32) = 0;
  *(v68 + 16) = v67;
  *(v68 + 40) = v299;
  v69 = *(v59 + 9);
  v70 = v58;
  v71 = *(v60 + v69 + 24);
  v72 = *(v60 + v69 + 32);
  v73 = __swift_project_boxed_opaque_existential_1((v60 + v69), v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v263 - 4) = sub_1D5B4AA6C;
  *(&v263 - 3) = 0;
  v261 = sub_1D6669B2C;
  v262 = v64;
  v77 = v282;
  v79 = sub_1D5D2F7A4(v70, sub_1D615B49C, v78, sub_1D615B4A4, (&v263 - 6), v71, v72);
  if (!v77)
  {
    v108 = v79;

    if (v108)
    {
      v299 = 0uLL;
      LOBYTE(v300) = 0;
      *&v291 = v274;
      *(&v291 + 1) = v266;
      sub_1D72647EC();

      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
      v81 = v281;
      v282 = 0;
      v80 = v280;
    }

    else
    {
      v282 = 0;
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

      v80 = v280;
      v81 = v281;
    }

    v52 = v275;
    v49 = v277;
LABEL_7:
    v82 = v279[4];
    v83 = v279[5];
    (v52)(v81, v80, v49);
    swift_storeEnumTagMultiPayload();
    *&v291 = v82;
    *(&v291 + 1) = v83;
    v283 = xmmword_1D728CF30;
    v299 = xmmword_1D728CF30;
    LOBYTE(v300) = 0;
    v84 = v310;
    v85 = &v310[*(v284 + 11)];
    v87 = *v85;
    v86 = *(v85 + 1);
    LOBYTE(v285) = 0;
    v88 = swift_allocObject();
    v274 = &v263;
    *(v88 + 16) = v283;
    *(v88 + 32) = v285;
    *(v88 + 40) = v87;
    *(v88 + 48) = v86;
    MEMORY[0x1EEE9AC00](v88, v89);
    *(&v263 - 4) = sub_1D5B4AA6C;
    *(&v263 - 3) = 0;
    v261 = sub_1D6708914;
    v262 = v90;
    LOBYTE(v285) = 0;
    v91 = swift_allocObject();
    *(v91 + 16) = v283;
    *(v91 + 32) = v285;
    v263 = v87;
    *(v91 + 40) = v87;
    *(v91 + 48) = v86;
    sub_1D6669918(0);
    v93 = v92;
    v94 = sub_1D5B58B84(&qword_1EDF03008, sub_1D6669918, MEMORY[0x1E69E6F60]);
    v264 = v86;
    swift_retain_n();
    v265 = v93;
    v266 = v94;
    v95 = sub_1D72647CC();
    LOBYTE(v285) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = v283;
    *(v96 + 40) = v285;
    v97 = &v84[*(v284 + 9)];
    v98 = *(v97 + 3);
    v99 = *(v97 + 4);
    v100 = __swift_project_boxed_opaque_existential_1(v97, v98);
    MEMORY[0x1EEE9AC00](v100, v101);
    MEMORY[0x1EEE9AC00](v102, v103);
    *(&v263 - 4) = sub_1D615B4A4;
    *(&v263 - 3) = (&v263 - 6);
    v261 = sub_1D6708914;
    v262 = v91;
    v104 = v282;
    sub_1D5D2BC70(v81, sub_1D615B49C, v105, sub_1D615B4A4, (&v263 - 6), v98, v99);
    if (v104)
    {
      sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

      v60 = v310;
      goto LABEL_10;
    }

    v284 = v97;

    sub_1D72647EC();
    sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);

    v109 = v279;
    swift_beginAccess();
    v110 = v109[6];
    v111 = v273;
    (v275)(v273, v280, v277);
    swift_storeEnumTagMultiPayload();
    if (*(v110 + 16))
    {
      LOBYTE(v299) = 0;
      v112 = swift_allocObject();
      v283 = xmmword_1D7297410;
      *(v112 + 16) = xmmword_1D7297410;
      *(v112 + 32) = v299;
      *(v112 + 40) = v263;
      *(v112 + 48) = v264;

      v113 = sub_1D72647CC();
      LOBYTE(v299) = 0;
      v114 = swift_allocObject();
      *(v114 + 16) = v113;
      *(v114 + 24) = v283;
      *(v114 + 40) = v299;
      v115 = *(v284 + 3);
      v116 = *(v284 + 4);
      v117 = __swift_project_boxed_opaque_existential_1(v284, v115);
      MEMORY[0x1EEE9AC00](v117, v118);
      MEMORY[0x1EEE9AC00](v119, v120);
      *(&v263 - 4) = sub_1D5B4AA6C;
      *(&v263 - 3) = 0;
      v261 = sub_1D6708914;
      v262 = v112;
      v122 = sub_1D5D2F7A4(v111, sub_1D615B49C, v121, sub_1D615B4A4, (&v263 - 6), v115, v116);
      v123 = v122;

      if (v123)
      {
        v299 = v283;
        LOBYTE(v300) = 0;
        *&v291 = v110;
        sub_1D5C34D84(0, &qword_1EDF04CA8, &type metadata for FormatIssueCoverNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D6669CAC();
        sub_1D72647EC();
        v109 = v279;
        v124 = v271;
        v282 = 0;

        sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);
        goto LABEL_24;
      }

      v282 = 0;
      sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);

      v109 = v279;
    }

    else
    {
      v282 = 0;
      sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
    }

    v124 = v271;
LABEL_24:
    v125 = v109[7];
    v126 = v280;
    v127 = v275;
    (v275)(v124, v280, v277);
    swift_storeEnumTagMultiPayload();
    v283 = xmmword_1D72BAA60;
    v299 = xmmword_1D72BAA60;
    LOBYTE(v300) = 0;
    LOBYTE(v291) = 0;
    v128 = swift_allocObject();
    *(v128 + 16) = v283;
    *(v128 + 32) = v291;
    v131 = v263;
    v130 = v264;
    *(v128 + 40) = v263;
    *(v128 + 48) = v130;
    if (v125)
    {
      *&v291 = v125;
      MEMORY[0x1EEE9AC00](v128, v129);
      *(&v263 - 4) = sub_1D5B4AA6C;
      *(&v263 - 3) = 0;
      v261 = sub_1D6708914;
      v262 = v132;
      LOBYTE(v285) = 0;
      v281 = v132;
      v133 = swift_allocObject();
      *(v133 + 16) = v283;
      *(v133 + 32) = v285;
      *(v133 + 40) = v131;
      *(v133 + 48) = v264;
      swift_retain_n();

      v134 = sub_1D72647CC();
      LOBYTE(v285) = 0;
      v135 = swift_allocObject();
      *(v135 + 16) = v134;
      *(v135 + 24) = v283;
      *(v135 + 40) = v285;
      v136 = v284;
      v137 = *(v284 + 3);
      v138 = *(v284 + 4);
      v139 = __swift_project_boxed_opaque_existential_1(v284, v137);
      MEMORY[0x1EEE9AC00](v139, v140);
      MEMORY[0x1EEE9AC00](v141, v142);
      *(&v263 - 4) = sub_1D615B4A4;
      *(&v263 - 3) = (&v263 - 6);
      v261 = sub_1D6708914;
      v262 = v133;
      v143 = v282;
      v145 = sub_1D5D2F7A4(v124, sub_1D615B49C, v144, sub_1D615B4A4, (&v263 - 6), v137, v138);
      if (v143)
      {

        v146 = v310;

        v147 = v124;
LABEL_57:
        sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
        v106 = v146;
        return sub_1D5D2CFE8(v106, sub_1D6669884);
      }

      v151 = v145;

      if (v151)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v109 = v279;
        v150 = v272;
        v282 = 0;

        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
        v126 = v280;
        v127 = v275;
      }

      else
      {
        v282 = 0;

        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
        v109 = v279;
        v126 = v280;
        v127 = v275;
        v150 = v272;
      }

      v149 = v136;
      v148 = v264;
    }

    else
    {
      v148 = v264;

      sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

      v149 = v284;
      v150 = v272;
    }

    v152 = v109[8];
    v127(v150, v126, v277);
    v153 = v127;
    swift_storeEnumTagMultiPayload();
    v283 = xmmword_1D72BAA70;
    v299 = xmmword_1D72BAA70;
    LOBYTE(v300) = 0;
    LOBYTE(v291) = 0;
    v154 = swift_allocObject();
    v156 = v154;
    *(v154 + 16) = v283;
    *(v154 + 32) = v291;
    v157 = v263;
    *(v154 + 40) = v263;
    *(v154 + 48) = v148;
    if (v152)
    {
      v281 = &v263;
      *&v291 = v152;
      MEMORY[0x1EEE9AC00](v154, v155);
      *(&v263 - 4) = sub_1D5B4AA6C;
      *(&v263 - 3) = 0;
      v261 = sub_1D6708914;
      v262 = v156;
      LOBYTE(v285) = 0;
      v158 = swift_allocObject();
      *(v158 + 16) = v283;
      *(v158 + 32) = v285;
      *(v158 + 40) = v157;
      *(v158 + 48) = v148;
      swift_retain_n();

      v159 = sub_1D72647CC();
      LOBYTE(v285) = 0;
      v160 = swift_allocObject();
      *(v160 + 16) = v159;
      *(v160 + 24) = v283;
      *(v160 + 40) = v285;
      *&v283 = v152;
      v161 = v149;
      v162 = *(v149 + 3);
      v163 = *(v149 + 4);
      v164 = __swift_project_boxed_opaque_existential_1(v161, v162);
      MEMORY[0x1EEE9AC00](v164, v165);
      MEMORY[0x1EEE9AC00](v166, v167);
      *(&v263 - 4) = sub_1D615B4A4;
      *(&v263 - 3) = (&v263 - 6);
      v261 = sub_1D6708914;
      v262 = v158;
      v168 = v282;
      v170 = sub_1D5D2F7A4(v272, sub_1D615B49C, v169, sub_1D615B4A4, (&v263 - 6), v162, v163);
      if (v168)
      {

        v146 = v310;
        v147 = v272;
        goto LABEL_57;
      }

      v172 = v170;

      if (v172)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v173 = v272;
        v282 = 0;

        v174 = v173;
      }

      else
      {
        v282 = 0;

        v174 = v272;
      }

      sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);
      v171 = v280;
      v153 = v275;
    }

    else
    {

      sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);

      v171 = v126;
    }

    v175 = v279[9];
    v176 = v279[10];
    v177 = *(v279 + 88);
    v178 = v270;
    v179 = v171;
    v153(v270);
    swift_storeEnumTagMultiPayload();
    v283 = xmmword_1D72BAA80;
    v308 = xmmword_1D72BAA80;
    v309 = 0;
    LOBYTE(v299) = 0;
    v180 = swift_allocObject();
    v182 = v180;
    *(v180 + 16) = v283;
    *(v180 + 32) = v299;
    v183 = v263;
    *(v180 + 40) = v263;
    *(v180 + 48) = v148;
    if (v177 <= 0xFD)
    {
      v281 = &v263;
      v305 = v175;
      v306 = v176;
      v307 = v177;
      MEMORY[0x1EEE9AC00](v180, v181);
      v274 = &v263 - 6;
      *(&v263 - 4) = sub_1D5B4AA6C;
      *(&v263 - 3) = 0;
      v261 = sub_1D6708914;
      v262 = v182;
      LOBYTE(v299) = 0;
      v216 = swift_allocObject();
      v217 = v284;
      v218 = v216;
      *(v216 + 16) = v283;
      *(v216 + 32) = v299;
      *(v216 + 40) = v183;
      *(v216 + 48) = v148;
      swift_retain_n();
      sub_1D5ED34B0(v175, v176, v177);
      v219 = sub_1D72647CC();
      LOBYTE(v299) = 0;
      v220 = swift_allocObject();
      *(v220 + 16) = v219;
      *(v220 + 24) = v283;
      *(v220 + 40) = v299;
      v221 = *(v217 + 3);
      v222 = *(v217 + 4);
      v223 = __swift_project_boxed_opaque_existential_1(v217, v221);
      MEMORY[0x1EEE9AC00](v223, v224);
      MEMORY[0x1EEE9AC00](v225, v226);
      v227 = v274;
      *(&v263 - 4) = sub_1D615B4A4;
      *(&v263 - 3) = v227;
      v261 = sub_1D6708914;
      v262 = v218;
      v228 = v282;
      v230 = sub_1D5D2F7A4(v270, sub_1D615B49C, v229, sub_1D615B4A4, (&v263 - 6), v221, v222);
      if (v228)
      {

        v146 = v310;
        sub_1D5ED34A0(v305, v306, v307);
        v147 = v270;
        goto LABEL_57;
      }

      v257 = v230;

      if (v257)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v184 = v269;
        v183 = v263;
        v282 = 0;

        sub_1D5ED34A0(v305, v306, v307);
        sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
        v185 = v280;
      }

      else
      {
        v282 = 0;

        sub_1D5ED34A0(v305, v306, v307);
        sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
        v185 = v280;
        v184 = v269;
        v183 = v263;
      }
    }

    else
    {

      sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);

      v184 = v269;
      v185 = v179;
    }

    v186 = *(v279 + 9);
    v301 = *(v279 + 8);
    v302 = v186;
    v303 = *(v279 + 10);
    v304 = *(v279 + 176);
    v187 = *(v279 + 7);
    v299 = *(v279 + 6);
    v300 = v187;
    (v275)(v184, v185, v277);
    swift_storeEnumTagMultiPayload();
    v283 = xmmword_1D72BAA90;
    v297 = xmmword_1D72BAA90;
    v298 = 0;
    LOBYTE(v291) = 0;
    v188 = swift_allocObject();
    v190 = v188;
    *(v188 + 16) = v283;
    *(v188 + 32) = v291;
    *(v188 + 40) = v183;
    *(v188 + 48) = v148;
    if (v304 == 254)
    {

      v191 = v282;
    }

    else
    {
      v281 = &v263;
      v293 = v301;
      v294 = v302;
      v295 = v303;
      v296 = v304;
      v291 = v299;
      v292 = v300;
      MEMORY[0x1EEE9AC00](v188, v189);
      *(&v263 - 4) = sub_1D5B4AA6C;
      *(&v263 - 3) = 0;
      v261 = sub_1D6708914;
      v262 = v190;
      LOBYTE(v285) = 0;
      v231 = swift_allocObject();
      *(v231 + 16) = v283;
      *(v231 + 32) = v285;
      *(v231 + 40) = v183;
      *(v231 + 48) = v148;
      swift_retain_n();
      sub_1D5D355B8(&v299, &v285, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v232 = v284;
      v233 = sub_1D72647CC();
      LOBYTE(v285) = 0;
      v234 = swift_allocObject();
      *(v234 + 16) = v233;
      *(v234 + 24) = v283;
      *(v234 + 40) = v285;
      v235 = *(v232 + 3);
      v236 = *(v232 + 4);
      v237 = __swift_project_boxed_opaque_existential_1(v232, v235);
      MEMORY[0x1EEE9AC00](v237, v238);
      MEMORY[0x1EEE9AC00](v239, v240);
      *(&v263 - 4) = sub_1D615B4A4;
      *(&v263 - 3) = (&v263 - 6);
      v261 = sub_1D6708914;
      v262 = v231;
      v241 = v282;
      v243 = sub_1D5D2F7A4(v269, sub_1D615B49C, v242, sub_1D615B4A4, (&v263 - 6), v235, v236);
      v191 = v241;
      if (v241)
      {

        v287 = v293;
        v288 = v294;
        v289 = v295;
        v290 = v296;
        v285 = v291;
        v286 = v292;
        sub_1D601144C(&v285);
        v146 = v310;
        v244 = v269;
        goto LABEL_56;
      }

      v258 = v243;

      if (v258)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v184 = v269;
        v183 = v263;

        v287 = v293;
        v288 = v294;
        v289 = v295;
        v290 = v296;
        v285 = v291;
        v286 = v292;
        sub_1D601144C(&v285);
      }

      else
      {

        v287 = v293;
        v288 = v294;
        v289 = v295;
        v290 = v296;
        v285 = v291;
        v286 = v292;
        sub_1D601144C(&v285);
        v184 = v269;
        v183 = v263;
      }
    }

    sub_1D5D2CFE8(v184, type metadata accessor for FormatVersionRequirement);
    v192 = *(v279 + 177);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v193 = v277;
    v194 = __swift_project_value_buffer(v277, qword_1EDFFCDE0);
    v195 = v268;
    (v275)(v268, v194, v193);
    swift_storeEnumTagMultiPayload();
    v283 = xmmword_1D72BAAA0;
    v291 = xmmword_1D72BAAA0;
    LOBYTE(v292) = 0;
    LOBYTE(v285) = 0;
    v196 = swift_allocObject();
    v198 = v196;
    *(v196 + 16) = v283;
    *(v196 + 32) = v285;
    *(v196 + 40) = v183;
    v199 = v183;
    v200 = v264;
    *(v196 + 48) = v264;
    if (v192 == 2)
    {

      v201 = v267;
      v202 = v199;
    }

    else
    {
      v281 = &v263;
      LOBYTE(v285) = v192 & 1;
      MEMORY[0x1EEE9AC00](v196, v197);
      v282 = v191;
      *(&v263 - 4) = sub_1D5B4AA6C;
      *(&v263 - 3) = 0;
      v261 = sub_1D6708914;
      v262 = v198;
      LOBYTE(v297) = 0;
      v245 = swift_allocObject();
      *(v245 + 16) = v283;
      *(v245 + 32) = v297;
      *(v245 + 40) = v199;
      *(v245 + 48) = v200;
      swift_retain_n();
      v246 = sub_1D72647CC();
      LOBYTE(v297) = 0;
      v247 = swift_allocObject();
      *(v247 + 16) = v246;
      *(v247 + 24) = v283;
      *(v247 + 40) = v297;
      v248 = *(v284 + 3);
      v249 = *(v284 + 4);
      v250 = __swift_project_boxed_opaque_existential_1(v284, v248);
      MEMORY[0x1EEE9AC00](v250, v251);
      MEMORY[0x1EEE9AC00](v252, v253);
      *(&v263 - 4) = sub_1D615B4A4;
      *(&v263 - 3) = (&v263 - 6);
      v261 = sub_1D6708914;
      v262 = v245;
      v254 = v282;
      v256 = sub_1D5D2F7A4(v195, sub_1D615B49C, v255, sub_1D615B4A4, (&v263 - 6), v248, v249);
      v191 = v254;
      if (v254)
      {
        sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);

        v106 = v310;
        return sub_1D5D2CFE8(v106, sub_1D6669884);
      }

      v259 = v256;

      if ((v259 & 1) == 0)
      {
        v60 = v310;
        v201 = v267;
        v202 = v263;
        goto LABEL_49;
      }

      sub_1D72647EC();
      v201 = v267;
      v202 = v263;
    }

    v60 = v310;
LABEL_49:
    sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);

    v203 = v279;
    swift_beginAccess();
    v204 = v203[23];
    (v275)(v201, v280, v277);
    swift_storeEnumTagMultiPayload();
    if (!*(v204 + 16))
    {
      sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
      goto LABEL_10;
    }

    LOBYTE(v285) = 0;
    v205 = swift_allocObject();
    v283 = xmmword_1D72BAAB0;
    *(v205 + 16) = xmmword_1D72BAAB0;
    *(v205 + 32) = v285;
    *(v205 + 40) = v202;
    *(v205 + 48) = v264;

    v206 = sub_1D72647CC();
    LOBYTE(v285) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = v206;
    *(v207 + 24) = v283;
    *(v207 + 40) = v285;
    v208 = *(v284 + 3);
    v209 = *(v284 + 4);
    v210 = __swift_project_boxed_opaque_existential_1(v284, v208);
    MEMORY[0x1EEE9AC00](v210, v211);
    MEMORY[0x1EEE9AC00](v212, v213);
    *(&v263 - 4) = sub_1D5B4AA6C;
    *(&v263 - 3) = 0;
    v261 = sub_1D6708914;
    v262 = v205;
    v215 = sub_1D5D2F7A4(v201, sub_1D615B49C, v214, sub_1D615B4A4, (&v263 - 6), v208, v209);
    if (v191)
    {
      sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);

LABEL_18:
      v106 = v310;
      return sub_1D5D2CFE8(v106, sub_1D6669884);
    }

    v260 = v215;

    if ((v260 & 1) == 0)
    {
      sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);

      goto LABEL_18;
    }

    v285 = v283;
    LOBYTE(v286) = 0;
    *&v297 = v204;
    sub_1D5C34D84(0, &qword_1EDF04DC0, &type metadata for FormatIssueCoverTraits, MEMORY[0x1E69E62F8]);
    sub_1D6669BBC();
    v146 = v310;
    sub_1D72647EC();
    v244 = v267;

LABEL_56:
    v147 = v244;
    goto LABEL_57;
  }

  sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

LABEL_10:
  v106 = v60;
  return sub_1D5D2CFE8(v106, sub_1D6669884);
}

uint64_t FormatIssueCoverNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  sub_1D6669D48(0);
  v6 = v5;
  v63 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6669DDC(0);
  sub_1D5B58B84(&qword_1EDF0C490, sub_1D6669DDC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = a1;
LABEL_11:
    sub_1D61E4FBC(v10, v3);
    swift_willThrow();

    v34 = v10;
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v11 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = sub_1D7264AFC();
  LOBYTE(v11) = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v13 = v63;
  v14 = v9;
  if (v11)
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
          goto LABEL_8;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6616668();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v6);
      v10 = v41;
      goto LABEL_11;
    }

LABEL_8:
  }

  sub_1D5C36978();
  v57 = 0uLL;
  LOBYTE(v58) = 0;
  sub_1D726431C();
  v18 = v49;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v57 = xmmword_1D728CF30;
  LOBYTE(v58) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v40 = v18;
  v23 = v49;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v57 = xmmword_1D7297410;
  LOBYTE(v58) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v24 = v49;
  v49 = xmmword_1D72BAA60;
  LOBYTE(v50) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v38 = v57;
  v39 = v58;
  v55 = xmmword_1D72BAA70;
  v56 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v51 = v59;
  v52 = v60;
  v53 = v61;
  v54 = v62;
  v49 = v57;
  v50 = v58;
  v47 = xmmword_1D72BAA80;
  v48 = 0;
  HIDWORD(v35) = sub_1D726423C();
  v36 = v24;
  v37 = v23;
  sub_1D5C34D84(0, &qword_1EDF04DC0, &type metadata for FormatIssueCoverTraits, MEMORY[0x1E69E62F8]);
  v47 = xmmword_1D72BAA90;
  v48 = 0;
  sub_1D6669F5C();
  sub_1D726427C();
  (*(v13 + 8))(v14, v6);
  v26 = v46;
  *&v43[23] = v50;
  *&v43[7] = v49;
  *&v43[55] = v52;
  *&v43[39] = v51;
  *&v43[71] = v53;
  v43[87] = v54;
  v27 = v42;
  *v42 = v40;
  v27[1] = *(&v18 + 1);
  v28 = v36;
  v27[2] = v37;
  v27[3] = v28;
  v29 = *(&v38 + 1);
  v27[4] = v38;
  v27[5] = v29;
  *(v27 + 48) = v39;
  v30 = *v43;
  *(v27 + 65) = *&v43[16];
  *(v27 + 49) = v30;
  v31 = *&v43[32];
  v32 = *&v43[48];
  v33 = *&v43[64];
  *(v27 + 129) = *&v43[80];
  *(v27 + 113) = v33;
  *(v27 + 97) = v32;
  *(v27 + 81) = v31;
  *(v27 + 137) = BYTE4(v35);
  LODWORD(v29) = v44;
  *(v27 + 71) = v45;
  *(v27 + 138) = v29;
  v27[18] = v26;
  v34 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t FormatIssueCoverNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v200 = &v195 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v199 = &v195 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v204 = &v195 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v205 = &v195 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v206 = &v195 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v215 = (&v195 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v195 - v23;
  sub_1D666A04C(0);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v195 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 8);
  v220 = *v1;
  v31 = *(v1 + 16);
  v207 = *(v1 + 24);
  v208 = v31;
  v32 = *(v1 + 32);
  v201 = *(v1 + 40);
  v202 = v32;
  v203 = *(v1 + 48);
  v33 = *(v1 + 104);
  v242 = *(v1 + 88);
  v243 = v33;
  v244 = *(v1 + 120);
  v245 = *(v1 + 136);
  v34 = *(v1 + 72);
  v240 = *(v1 + 56);
  v241 = v34;
  v198 = *(v1 + 137);
  v197 = *(v1 + 144);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D6669DDC(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF0C490, sub_1D6669DDC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatIssueCoverNodeStyle.Selector, v38, v40, v35, &type metadata for FormatIssueCoverNodeStyle.Selector, v38, &type metadata for FormatVersions.StarSky, v36, v29, v39, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v209 = v42;
  v211 = v41;
  v213 = v43 + 16;
  v214 = v44;
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
  *&v219 = v24;
  LOBYTE(v238) = 0;
  v48 = swift_allocObject();
  v220 = &v195;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v238;
  *(v48 + 40) = v46;
  *(v48 + 48) = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v195 - 4) = sub_1D5B4AA6C;
  *(&v195 - 3) = 0;
  v193 = sub_1D6708918;
  v194 = v50;
  LOBYTE(v238) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v238;
  v212 = v46;
  *(v51 + 40) = v46;
  *(v51 + 48) = v47;
  sub_1D666A0E0(0);
  v53 = v52;
  v54 = sub_1D5B58B84(&qword_1EDF02FF8, sub_1D666A0E0, MEMORY[0x1E69E6F60]);
  v210 = v47;
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
  *(&v195 - 4) = sub_1D615B4A4;
  *(&v195 - 3) = (&v195 - 6);
  v193 = sub_1D6708918;
  v194 = v51;
  v65 = v219;
  v66 = v246;
  sub_1D5D2BC70(v219, sub_1D615B49C, v67, sub_1D615B4A4, (&v195 - 6), v59, v60);
  if (v66)
  {
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v57, sub_1D666A04C);
  }

  v196 = v58;

  sub_1D5D3E60C();
  sub_1D72647EC();
  v246 = 0;
  v220 = v57;
  sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

  v69 = v214;
  v70 = v215;
  v71 = v209;
  v72 = v211;
  v214(v215, v209, v211);
  swift_storeEnumTagMultiPayload();
  v219 = xmmword_1D728CF30;
  v227 = xmmword_1D728CF30;
  LOBYTE(v228) = 0;
  LOBYTE(v221) = 0;
  v73 = swift_allocObject();
  v75 = v73;
  *(v73 + 16) = v219;
  *(v73 + 32) = v221;
  v76 = v212;
  v77 = v210;
  *(v73 + 40) = v212;
  *(v73 + 48) = v77;
  if (v208)
  {
    *&v221 = v208;
    MEMORY[0x1EEE9AC00](v73, v74);
    *(&v195 - 4) = sub_1D5B4AA6C;
    *(&v195 - 3) = 0;
    v193 = sub_1D6708918;
    v194 = v75;
    LOBYTE(v238) = 0;
    v78 = swift_allocObject();
    *(v78 + 16) = v219;
    *(v78 + 32) = v238;
    *(v78 + 40) = v76;
    *(v78 + 48) = v77;
    swift_retain_n();

    v79 = sub_1D72647CC();
    LOBYTE(v238) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = v219;
    *(v80 + 40) = v238;
    v81 = *(v196 + 3);
    v82 = *(v196 + 4);
    v83 = __swift_project_boxed_opaque_existential_1(v196, v81);
    MEMORY[0x1EEE9AC00](v83, v84);
    MEMORY[0x1EEE9AC00](v85, v86);
    *(&v195 - 4) = sub_1D615B4A4;
    *(&v195 - 3) = (&v195 - 6);
    v87 = v215;
    v193 = sub_1D6708918;
    v194 = v78;
    v88 = v246;
    v90 = sub_1D5D2F7A4(v215, sub_1D615B49C, v89, sub_1D615B4A4, (&v195 - 6), v81, v82);
    v246 = v88;
    if (v88)
    {

      v91 = v220;
LABEL_8:

LABEL_18:
      v109 = v87;
LABEL_19:
      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v91, sub_1D666A04C);
    }

    v92 = v90;

    if (v92)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      v91 = v220;
      v93 = v246;
      sub_1D72647EC();
      v77 = v210;
      v72 = v211;
      v69 = v214;
      if (v93)
      {

        goto LABEL_8;
      }

      v246 = 0;

      sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);
      v76 = v212;
      v71 = v209;
    }

    else
    {

      sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);
      v77 = v210;
      v72 = v211;
      v76 = v212;
      v71 = v209;
      v69 = v214;
    }
  }

  else
  {

    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
  }

  v87 = v206;
  v69(v206, v71, v72);
  swift_storeEnumTagMultiPayload();
  v219 = xmmword_1D7297410;
  v227 = xmmword_1D7297410;
  LOBYTE(v228) = 0;
  LOBYTE(v221) = 0;
  v94 = swift_allocObject();
  v96 = v94;
  *(v94 + 16) = v219;
  *(v94 + 32) = v221;
  *(v94 + 40) = v76;
  *(v94 + 48) = v77;
  if (v207)
  {
    v215 = &v195;
    *&v221 = v207;
    MEMORY[0x1EEE9AC00](v94, v95);
    *(&v195 - 4) = sub_1D5B4AA6C;
    *(&v195 - 3) = 0;
    v193 = sub_1D6708918;
    v194 = v96;
    LOBYTE(v238) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v219;
    *(v97 + 32) = v238;
    *(v97 + 40) = v76;
    *(v97 + 48) = v77;
    swift_retain_n();

    v98 = sub_1D72647CC();
    LOBYTE(v238) = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = v219;
    *(v99 + 40) = v238;
    v100 = *(v196 + 3);
    v101 = *(v196 + 4);
    v102 = __swift_project_boxed_opaque_existential_1(v196, v100);
    MEMORY[0x1EEE9AC00](v102, v103);
    MEMORY[0x1EEE9AC00](v104, v105);
    *(&v195 - 4) = sub_1D615B4A4;
    *(&v195 - 3) = (&v195 - 6);
    v193 = sub_1D6708918;
    v194 = v97;
    v106 = v246;
    v108 = sub_1D5D2F7A4(v87, sub_1D615B49C, v107, sub_1D615B4A4, (&v195 - 6), v100, v101);
    v246 = v106;
    if (v106)
    {

      v91 = v220;
      goto LABEL_18;
    }

    v110 = v108;

    if (v110)
    {
      sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
      sub_1D66612AC();
      v91 = v220;
      v111 = v246;
      sub_1D72647EC();
      v77 = v210;
      v72 = v211;
      v69 = v214;
      if (v111)
      {

        v87 = v206;
        goto LABEL_18;
      }

      v246 = 0;

      sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);
      v76 = v212;
      v71 = v209;
    }

    else
    {

      sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);
      v77 = v210;
      v72 = v211;
      v76 = v212;
      v71 = v209;
      v69 = v214;
    }
  }

  else
  {

    sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);
  }

  v112 = v205;
  v69(v205, v71, v72);
  swift_storeEnumTagMultiPayload();
  v219 = xmmword_1D72BAA60;
  v238 = xmmword_1D72BAA60;
  v239 = 0;
  LOBYTE(v227) = 0;
  v113 = swift_allocObject();
  v115 = v113;
  *(v113 + 16) = v219;
  *(v113 + 32) = v227;
  *(v113 + 40) = v76;
  *(v113 + 48) = v77;
  if (v203 > 0xFD)
  {

    sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);

    goto LABEL_28;
  }

  v215 = &v195;
  v146 = v201;
  v147 = v202;
  v235 = v202;
  v236 = v201;
  v237 = v203;
  MEMORY[0x1EEE9AC00](v113, v114);
  v208 = &v195 - 6;
  *(&v195 - 4) = sub_1D5B4AA6C;
  *(&v195 - 3) = 0;
  v193 = sub_1D6708918;
  v194 = v115;
  LOBYTE(v227) = 0;
  v149 = v148;
  v150 = swift_allocObject();
  *(v150 + 16) = v219;
  *(v150 + 32) = v227;
  *(v150 + 40) = v76;
  *(v150 + 48) = v77;
  swift_retain_n();
  sub_1D5ED34B0(v147, v146, v149);
  v151 = sub_1D72647CC();
  LOBYTE(v227) = 0;
  v152 = swift_allocObject();
  *(v152 + 16) = v151;
  *(v152 + 24) = v219;
  *(v152 + 40) = v227;
  v153 = *(v196 + 3);
  v154 = *(v196 + 4);
  v155 = __swift_project_boxed_opaque_existential_1(v196, v153);
  MEMORY[0x1EEE9AC00](v155, v156);
  MEMORY[0x1EEE9AC00](v157, v158);
  v159 = v208;
  *(&v195 - 4) = sub_1D615B4A4;
  *(&v195 - 3) = v159;
  v193 = sub_1D6708918;
  v194 = v150;
  v160 = v205;
  v161 = v246;
  v163 = sub_1D5D2F7A4(v205, sub_1D615B49C, v162, sub_1D615B4A4, (&v195 - 6), v153, v154);
  v246 = v161;
  if (v161)
  {

    v91 = v220;
LABEL_39:
    sub_1D5ED34A0(v235, v236, v237);
    v109 = v160;
    goto LABEL_19;
  }

  v188 = v163;

  if (v188)
  {
    sub_1D6661258();
    v91 = v220;
    v189 = v246;
    sub_1D72647EC();
    v77 = v210;
    v72 = v211;
    v69 = v214;
    if (v189)
    {

      v160 = v205;
      goto LABEL_39;
    }

    v246 = 0;

    sub_1D5ED34A0(v235, v236, v237);
    sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);
    v76 = v212;
    v71 = v209;
  }

  else
  {

    sub_1D5ED34A0(v235, v236, v237);
    sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
    v77 = v210;
    v72 = v211;
    v76 = v212;
    v71 = v209;
    v69 = v214;
  }

LABEL_28:
  v116 = v204;
  v69(v204, v71, v72);
  swift_storeEnumTagMultiPayload();
  v219 = xmmword_1D72BAA70;
  v233 = xmmword_1D72BAA70;
  v234 = 0;
  LOBYTE(v227) = 0;
  v117 = swift_allocObject();
  v119 = v117;
  *(v117 + 16) = v219;
  *(v117 + 32) = v227;
  *(v117 + 40) = v76;
  *(v117 + 48) = v77;
  if (v245 == 254)
  {

    v120 = v220;
    v121 = v246;
  }

  else
  {
    v215 = &v195;
    v229 = v242;
    v230 = v243;
    v231 = v244;
    v232 = v245;
    v227 = v240;
    v228 = v241;
    MEMORY[0x1EEE9AC00](v117, v118);
    *(&v195 - 4) = sub_1D5B4AA6C;
    *(&v195 - 3) = 0;
    v193 = sub_1D6708918;
    v194 = v119;
    LOBYTE(v221) = 0;
    v164 = swift_allocObject();
    *(v164 + 16) = v219;
    *(v164 + 32) = v221;
    *(v164 + 40) = v76;
    *(v164 + 48) = v77;
    swift_retain_n();
    sub_1D5D355B8(&v240, &v221, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v165 = sub_1D72647CC();
    LOBYTE(v221) = 0;
    v166 = swift_allocObject();
    *(v166 + 16) = v165;
    *(v166 + 24) = v219;
    *(v166 + 40) = v221;
    v167 = *(v196 + 3);
    v168 = *(v196 + 4);
    v169 = __swift_project_boxed_opaque_existential_1(v196, v167);
    MEMORY[0x1EEE9AC00](v169, v170);
    MEMORY[0x1EEE9AC00](v171, v172);
    *(&v195 - 4) = sub_1D615B4A4;
    *(&v195 - 3) = (&v195 - 6);
    v193 = sub_1D6708918;
    v194 = v164;
    v173 = v246;
    v175 = sub_1D5D2F7A4(v116, sub_1D615B49C, v174, sub_1D615B4A4, (&v195 - 6), v167, v168);
    if (v173)
    {

      v223 = v229;
      v224 = v230;
      v225 = v231;
      v226 = v232;
      v221 = v227;
      v222 = v228;
      sub_1D601144C(&v221);
      v120 = v220;
      goto LABEL_42;
    }

    v190 = v175;

    if (v190)
    {
      sub_1D6661204();
      v120 = v220;
      sub_1D72647EC();
      v72 = v211;
      v69 = v214;
      v121 = 0;

      v223 = v229;
      v224 = v230;
      v225 = v231;
      v226 = v232;
      v221 = v227;
      v222 = v228;
      sub_1D601144C(&v221);
      v77 = v210;
    }

    else
    {

      v223 = v229;
      v224 = v230;
      v225 = v231;
      v226 = v232;
      v221 = v227;
      v222 = v228;
      sub_1D601144C(&v221);
      v120 = v220;
      v121 = 0;
      v77 = v210;
      v72 = v211;
      v69 = v214;
    }
  }

  sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v122 = __swift_project_value_buffer(v72, qword_1EDFFCDE0);
  v123 = v199;
  v69(v199, v122, v72);
  swift_storeEnumTagMultiPayload();
  v219 = xmmword_1D72BAA80;
  v227 = xmmword_1D72BAA80;
  LOBYTE(v228) = 0;
  LOBYTE(v221) = 0;
  v124 = swift_allocObject();
  v126 = v124;
  *(v124 + 16) = v219;
  *(v124 + 32) = v221;
  v127 = v212;
  *(v124 + 40) = v212;
  *(v124 + 48) = v77;
  if (v198 == 2)
  {

    v128 = v123;
    v129 = v214;
  }

  else
  {
    v246 = v121;
    v215 = &v195;
    LOBYTE(v221) = v198 & 1;
    MEMORY[0x1EEE9AC00](v124, v125);
    *(&v195 - 4) = sub_1D5B4AA6C;
    *(&v195 - 3) = 0;
    v193 = sub_1D6708918;
    v194 = v126;
    LOBYTE(v233) = 0;
    v176 = swift_allocObject();
    *(v176 + 16) = v219;
    *(v176 + 32) = v233;
    *(v176 + 40) = v127;
    *(v176 + 48) = v77;
    swift_retain_n();
    v177 = sub_1D72647CC();
    LOBYTE(v233) = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v177;
    *(v178 + 24) = v219;
    *(v178 + 40) = v233;
    v179 = *(v196 + 3);
    v180 = *(v196 + 4);
    v181 = __swift_project_boxed_opaque_existential_1(v196, v179);
    MEMORY[0x1EEE9AC00](v181, v182);
    MEMORY[0x1EEE9AC00](v183, v184);
    *(&v195 - 4) = sub_1D615B4A4;
    *(&v195 - 3) = (&v195 - 6);
    v193 = sub_1D6708918;
    v194 = v176;
    v185 = v246;
    v187 = sub_1D5D2F7A4(v123, sub_1D615B49C, v186, sub_1D615B4A4, (&v195 - 6), v179, v180);
    v121 = v185;
    if (v185)
    {
      sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);

      goto LABEL_45;
    }

    v191 = v187;

    if (v191)
    {
      v120 = v220;
      sub_1D72647EC();
      v72 = v211;
      v129 = v214;
      v128 = v199;
      v77 = v210;
    }

    else
    {
      v120 = v220;
      v128 = v199;
      v77 = v210;
      v72 = v211;
      v129 = v214;
    }
  }

  sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);

  v129(v200, v209, v72);
  swift_storeEnumTagMultiPayload();
  v219 = xmmword_1D72BAA90;
  v227 = xmmword_1D72BAA90;
  LOBYTE(v228) = 0;
  LOBYTE(v221) = 0;
  v130 = swift_allocObject();
  v132 = v130;
  *(v130 + 16) = v219;
  *(v130 + 32) = v221;
  v133 = v212;
  *(v130 + 40) = v212;
  *(v130 + 48) = v77;
  if (!v197)
  {

    sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v120, sub_1D666A04C);
  }

  v246 = v121;
  v216 = &v195;
  *&v221 = v197;
  MEMORY[0x1EEE9AC00](v130, v131);
  *(&v195 - 4) = sub_1D5B4AA6C;
  *(&v195 - 3) = 0;
  v193 = sub_1D6708918;
  v194 = v132;
  LOBYTE(v233) = 0;
  v134 = swift_allocObject();
  *(v134 + 16) = v219;
  *(v134 + 32) = v233;
  *(v134 + 40) = v133;
  *(v134 + 48) = v77;
  swift_retain_n();

  v135 = sub_1D72647CC();
  LOBYTE(v233) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = v135;
  *(v136 + 24) = v219;
  *(v136 + 40) = v233;
  v137 = *(v196 + 3);
  v138 = *(v196 + 4);
  v139 = __swift_project_boxed_opaque_existential_1(v196, v137);
  MEMORY[0x1EEE9AC00](v139, v140);
  MEMORY[0x1EEE9AC00](v141, v142);
  *(&v195 - 4) = sub_1D615B4A4;
  *(&v195 - 3) = (&v195 - 6);
  v193 = sub_1D666A174;
  v194 = v134;
  v116 = v200;
  v143 = v246;
  v145 = sub_1D5D2F7A4(v200, sub_1D615B49C, v144, sub_1D615B4A4, (&v195 - 6), v137, v138);
  if (!v143)
  {
    v192 = v145;

    if (v192)
    {
      sub_1D5C34D84(0, &qword_1EDF04DC0, &type metadata for FormatIssueCoverTraits, MEMORY[0x1E69E62F8]);
      sub_1D6669BBC();
      v120 = v220;
      sub_1D72647EC();

      goto LABEL_42;
    }

    sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
LABEL_45:
    v120 = v220;
    return sub_1D5D2CFE8(v120, sub_1D666A04C);
  }

  v120 = v220;
LABEL_42:
  sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v120, sub_1D666A04C);
}

uint64_t FormatProgressViewNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v211 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v216 = &v211 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v217 = &v211 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v219 = &v211 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v218 = &v211 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v220 = &v211 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v228 = (&v211 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v211 - v29;
  sub_1D666A92C(0);
  *&v229 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v211 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D666AA54(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF24F38, sub_1D666AA54, &unk_1D7321584);
  v232 = v34;
  sub_1D5D2EE70(v4, v38, v40, v35, v4, v38, &type metadata for FormatVersions.StarSkyC, v36, v34, v39, &off_1F51F6B18);
  swift_beginAccess();
  v41 = v2[2];
  v42 = v2[3];
  v226 = v2;
  v43 = qword_1EDF31E98;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD00);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v227 = v45;
  v47(v30);
  v225 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v49 = sub_1D725895C();
  v50 = (*(*(v49 - 8) + 48))(v8, 1, v49);
  v223 = v47;
  v224 = v48;
  if (v50 == 1)
  {
    v221 = v41;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v51 = v229;
    v52 = v232;
    v53 = &v232[*(v229 + 44)];
    v55 = *v53;
    v54 = *(v53 + 1);
    LOBYTE(v236) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = v236;
    *(v56 + 40) = v55;
    *(v56 + 48) = v54;
    sub_1D666A9C0(0);
    v58 = v57;
    sub_1D5B58B84(&qword_1EDF02EA8, sub_1D666A9C0, MEMORY[0x1E69E6F60]);

    v222 = v58;
    v59 = sub_1D72647CC();
    LOBYTE(v236) = 0;
    v60 = swift_allocObject();
    *(v60 + 24) = 0;
    *(v60 + 32) = 0;
    *(v60 + 16) = v59;
    *(v60 + 40) = v236;
    v61 = (v52 + *(v51 + 36));
    v62 = v61[3];
    v63 = v61[4];
    v64 = __swift_project_boxed_opaque_existential_1(v61, v62);
    *&v230 = &v211;
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v211 - 4) = sub_1D5B4AA6C;
    *(&v211 - 3) = 0;
    v209 = sub_1D666ABD4;
    v210 = v56;
    v68 = v231;
    v70 = sub_1D5D2F7A4(v30, sub_1D615B49C, v69, sub_1D615B4A4, (&v211 - 6), v62, v63);
    if (v68)
    {
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v71 = v52;
      return sub_1D5D2CFE8(v71, sub_1D666A92C);
    }

    v101 = v70;

    if (v101)
    {
      v236 = 0uLL;
      v237 = 0;
      *&v234 = v221;
      *(&v234 + 1) = v42;
      v72 = v232;
      sub_1D72647EC();

      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
      v47 = v223;
      *&v231 = 0;
    }

    else
    {
      *&v231 = 0;
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v72 = v232;
      v47 = v223;
    }
  }

  else
  {
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v72 = v232;
  }

  v73 = v226[4];
  v74 = v226[5];
  v75 = v228;
  (v47)(v228, v227, v44);
  swift_storeEnumTagMultiPayload();
  *&v234 = v73;
  *(&v234 + 1) = v74;
  v230 = xmmword_1D728CF30;
  v236 = xmmword_1D728CF30;
  v237 = 0;
  v213 = v44;
  v76 = v229;
  v77 = (v72 + *(v229 + 44));
  v79 = *v77;
  v78 = v77[1];
  LOBYTE(v238) = 0;
  v80 = swift_allocObject();
  v222 = &v211;
  *(v80 + 16) = v230;
  *(v80 + 32) = v238;
  *(v80 + 40) = v79;
  *(v80 + 48) = v78;
  MEMORY[0x1EEE9AC00](v80, v81);
  v221 = &v211 - 6;
  *(&v211 - 4) = sub_1D5B4AA6C;
  *(&v211 - 3) = 0;
  v209 = sub_1D670891C;
  v210 = v82;
  LOBYTE(v238) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v230;
  *(v83 + 32) = v238;
  v212 = v79;
  *(v83 + 40) = v79;
  *(v83 + 48) = v78;
  sub_1D666A9C0(0);
  v85 = v84;
  v86 = sub_1D5B58B84(&qword_1EDF02EA8, sub_1D666A9C0, MEMORY[0x1E69E6F60]);
  v211 = v78;
  swift_retain_n();
  v215 = v85;
  v214 = v86;
  v87 = sub_1D72647CC();
  LOBYTE(v238) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = v230;
  *(v88 + 40) = v238;
  v89 = (v72 + *(v76 + 36));
  v91 = v89[3];
  v90 = v89[4];
  v92 = __swift_project_boxed_opaque_existential_1(v89, v91);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  v96 = v221;
  *(&v211 - 4) = sub_1D615B4A4;
  *(&v211 - 3) = v96;
  v209 = sub_1D670891C;
  v210 = v83;
  v97 = v231;
  sub_1D5D2BC70(v75, sub_1D615B49C, v98, sub_1D615B4A4, (&v211 - 6), v91, v90);
  if (v97)
  {
    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);

    v99 = v232;
LABEL_10:
    v71 = v99;
    return sub_1D5D2CFE8(v71, sub_1D666A92C);
  }

  *&v230 = v89;

  v99 = v232;
  sub_1D72647EC();
  *&v231 = 0;
  sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);

  v102 = v226;
  swift_beginAccess();
  v103 = v102[6];
  v104 = v220;
  v105 = v227;
  v106 = v223;
  (v223)(v220, v227, v213);
  swift_storeEnumTagMultiPayload();
  if (!*(v103 + 16))
  {
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
    goto LABEL_23;
  }

  LOBYTE(v234) = 0;
  v107 = swift_allocObject();
  v229 = xmmword_1D7297410;
  *(v107 + 16) = xmmword_1D7297410;
  *(v107 + 32) = v234;
  *(v107 + 40) = v212;
  *(v107 + 48) = v211;

  v108 = sub_1D72647CC();
  LOBYTE(v234) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v229;
  *(v109 + 40) = v234;
  v110 = *(v230 + 24);
  v111 = *(v230 + 32);
  v112 = __swift_project_boxed_opaque_existential_1(v230, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v211 - 4) = sub_1D5B4AA6C;
  *(&v211 - 3) = 0;
  v209 = sub_1D670891C;
  v210 = v107;
  v116 = v231;
  v118 = sub_1D5D2F7A4(v104, sub_1D615B49C, v117, sub_1D615B4A4, (&v211 - 6), v110, v111);
  *&v231 = v116;
  if (!v116)
  {
    v119 = v118;

    if (v119)
    {
      v234 = v229;
      v235 = 0;
      v238 = v103;
      sub_1D5C34D84(0, &qword_1EDF04C18, &type metadata for FormatProgressViewNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D666AC64();
      v99 = v232;
      v120 = v231;
      sub_1D72647EC();
      v106 = v223;
      v121 = v211;
      if (v120)
      {

        v122 = &v240;
LABEL_44:
        sub_1D5D2CFE8(*(v122 - 32), type metadata accessor for FormatVersionRequirement);
        goto LABEL_10;
      }

      *&v231 = 0;

      sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);
LABEL_24:
      v123 = v102[7];
      v124 = v218;
      v106(v218, v105, v213);
      swift_storeEnumTagMultiPayload();
      v229 = xmmword_1D72BAA60;
      v234 = xmmword_1D72BAA60;
      v235 = 0;
      LOBYTE(v238) = 0;
      v125 = swift_allocObject();
      v127 = v125;
      *(v125 + 16) = v229;
      *(v125 + 32) = v238;
      v128 = v212;
      *(v125 + 40) = v212;
      *(v125 + 48) = v121;
      if (v123)
      {
        v228 = &v211;
        v238 = v123;
        MEMORY[0x1EEE9AC00](v125, v126);
        *(&v211 - 4) = sub_1D5B4AA6C;
        *(&v211 - 3) = 0;
        v209 = sub_1D670891C;
        v210 = v127;
        v233 = 0;
        v129 = swift_allocObject();
        *(v129 + 16) = v229;
        *(v129 + 32) = v233;
        *(v129 + 40) = v128;
        *(v129 + 48) = v121;
        swift_retain_n();

        v130 = sub_1D72647CC();
        v233 = 0;
        v131 = swift_allocObject();
        *(v131 + 16) = v130;
        *(v131 + 24) = v229;
        *(v131 + 40) = v233;
        v132 = *(v230 + 24);
        v133 = *(v230 + 32);
        v134 = __swift_project_boxed_opaque_existential_1(v230, v132);
        MEMORY[0x1EEE9AC00](v134, v135);
        MEMORY[0x1EEE9AC00](v136, v137);
        *(&v211 - 4) = sub_1D615B4A4;
        *(&v211 - 3) = (&v211 - 6);
        v209 = sub_1D670891C;
        v210 = v129;
        v138 = v231;
        v140 = sub_1D5D2F7A4(v124, sub_1D615B49C, v139, sub_1D615B4A4, (&v211 - 6), v132, v133);
        if (v138)
        {

          v99 = v232;

          sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
          goto LABEL_10;
        }

        v141 = v140;

        if (v141)
        {
          sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
          sub_1D66582DC();
          v99 = v232;
          sub_1D72647EC();
          v106 = v223;
          *&v231 = 0;
          v205 = v227;

          sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
          v206 = v205;
          v207 = v121;
          goto LABEL_32;
        }

        *&v231 = 0;

        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
        v99 = v232;
        v106 = v223;
      }

      else
      {

        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
      }

      v207 = v121;
      v206 = v227;
LABEL_32:
      v142 = v226;
      v143 = v226[8];
      v144 = v219;
      v106(v219, v206, v213);
      swift_storeEnumTagMultiPayload();
      v229 = xmmword_1D72BAA70;
      v234 = xmmword_1D72BAA70;
      v235 = 0;
      LOBYTE(v238) = 0;
      v145 = swift_allocObject();
      v147 = v145;
      *(v145 + 16) = v229;
      *(v145 + 32) = v238;
      v148 = v212;
      *(v145 + 40) = v212;
      *(v145 + 48) = v207;
      if ((~v143 & 0xF000000000000007) != 0)
      {
        v228 = &v211;
        v238 = v143;
        MEMORY[0x1EEE9AC00](v145, v146);
        *(&v211 - 4) = sub_1D5B4AA6C;
        *(&v211 - 3) = 0;
        v209 = sub_1D670891C;
        v210 = v147;
        v233 = 0;
        v168 = swift_allocObject();
        *(v168 + 16) = v229;
        *(v168 + 32) = v233;
        *(v168 + 40) = v148;
        *(v168 + 48) = v207;
        swift_retain_n();
        sub_1D5CFCFAC(v143);
        v169 = sub_1D72647CC();
        v233 = 0;
        v170 = swift_allocObject();
        *(v170 + 16) = v169;
        *(v170 + 24) = v229;
        *(v170 + 40) = v233;
        v171 = *(v230 + 24);
        v172 = *(v230 + 32);
        v173 = __swift_project_boxed_opaque_existential_1(v230, v171);
        MEMORY[0x1EEE9AC00](v173, v174);
        MEMORY[0x1EEE9AC00](v175, v176);
        *(&v211 - 4) = sub_1D615B4A4;
        *(&v211 - 3) = (&v211 - 6);
        v209 = sub_1D670891C;
        v210 = v168;
        v177 = v231;
        v179 = sub_1D5D2F7A4(v219, sub_1D615B49C, v178, sub_1D615B4A4, (&v211 - 6), v171, v172);
        if (v177)
        {

          v99 = v232;

          v122 = &v239;
          goto LABEL_44;
        }

        v203 = v179;

        if (v203)
        {
          sub_1D5B55CBC();
          v99 = v232;
          sub_1D72647EC();
          v106 = v223;
          v149 = v227;
          *&v231 = 0;

          v144 = v219;
          v207 = v211;
LABEL_35:
          sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
          v150 = v142[9];
          v151 = v217;
          v106(v217, v149, v213);
          swift_storeEnumTagMultiPayload();
          v229 = xmmword_1D72BAA80;
          v234 = xmmword_1D72BAA80;
          v235 = 0;
          LOBYTE(v238) = 0;
          v152 = swift_allocObject();
          v154 = v152;
          *(v152 + 16) = v229;
          *(v152 + 32) = v238;
          v155 = v212;
          *(v152 + 40) = v212;
          *(v152 + 48) = v207;
          if ((~v150 & 0xF000000000000007) != 0)
          {
            v228 = &v211;
            v238 = v150;
            MEMORY[0x1EEE9AC00](v152, v153);
            *(&v211 - 4) = sub_1D5B4AA6C;
            *(&v211 - 3) = 0;
            v209 = sub_1D670891C;
            v210 = v154;
            v233 = 0;
            v180 = swift_allocObject();
            *(v180 + 16) = v229;
            *(v180 + 32) = v233;
            *(v180 + 40) = v155;
            *(v180 + 48) = v207;
            swift_retain_n();
            sub_1D5CFCFAC(v150);
            v181 = sub_1D72647CC();
            v233 = 0;
            v182 = swift_allocObject();
            *(v182 + 16) = v181;
            *(v182 + 24) = v229;
            *(v182 + 40) = v233;
            v157 = v230;
            v183 = *(v230 + 24);
            v184 = *(v230 + 32);
            v185 = __swift_project_boxed_opaque_existential_1(v230, v183);
            MEMORY[0x1EEE9AC00](v185, v186);
            MEMORY[0x1EEE9AC00](v187, v188);
            *(&v211 - 4) = sub_1D615B4A4;
            *(&v211 - 3) = (&v211 - 6);
            v209 = sub_1D670891C;
            v210 = v180;
            v189 = v231;
            v191 = sub_1D5D2F7A4(v151, sub_1D615B49C, v190, sub_1D615B4A4, (&v211 - 6), v183, v184);
            v156 = v189;
            if (v189)
            {

              v99 = v232;

              sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
              goto LABEL_10;
            }

            v204 = v191;

            if (v204)
            {
              sub_1D5B55CBC();
              v99 = v232;
              sub_1D72647EC();
              v106 = v223;
              v158 = v226;

LABEL_38:
              sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
              v159 = *(v158 + 80);
              v160 = v216;
              if (qword_1EDF31F08 != -1)
              {
                swift_once();
              }

              v161 = v213;
              v162 = __swift_project_value_buffer(v213, qword_1EDFFCDE0);
              v106(v160, v162, v161);
              swift_storeEnumTagMultiPayload();
              v231 = xmmword_1D72BAA90;
              v234 = xmmword_1D72BAA90;
              v235 = 0;
              LOBYTE(v238) = 0;
              v163 = swift_allocObject();
              v165 = v163;
              *(v163 + 16) = v231;
              *(v163 + 32) = v238;
              v166 = v212;
              v167 = v211;
              *(v163 + 40) = v212;
              *(v163 + 48) = v167;
              if (v159 == 2)
              {
              }

              else
              {
                *&v230 = &v211;
                LOBYTE(v238) = v159 & 1;
                MEMORY[0x1EEE9AC00](v163, v164);
                *(&v211 - 4) = sub_1D5B4AA6C;
                *(&v211 - 3) = 0;
                v209 = sub_1D670891C;
                v210 = v165;
                v233 = 0;
                v192 = swift_allocObject();
                *(v192 + 16) = v231;
                *(v192 + 32) = v233;
                *(v192 + 40) = v166;
                *(v192 + 48) = v167;
                swift_retain_n();
                v193 = sub_1D72647CC();
                v233 = 0;
                v194 = swift_allocObject();
                *(v194 + 16) = v193;
                *(v194 + 24) = v231;
                *(v194 + 40) = v233;
                v195 = v157[3];
                v196 = v157[4];
                v197 = __swift_project_boxed_opaque_existential_1(v157, v195);
                MEMORY[0x1EEE9AC00](v197, v198);
                MEMORY[0x1EEE9AC00](v199, v200);
                *(&v211 - 4) = sub_1D615B4A4;
                *(&v211 - 3) = (&v211 - 6);
                v209 = sub_1D670891C;
                v210 = v192;
                v202 = sub_1D5D2F7A4(v160, sub_1D615B49C, v201, sub_1D615B4A4, (&v211 - 6), v195, v196);
                if (v156)
                {
                  sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);

                  v99 = v232;
                  goto LABEL_10;
                }

                v208 = v202;

                v99 = v232;
                if (v208)
                {
                  sub_1D72647EC();
                }

                v160 = v216;
              }

              sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);

              goto LABEL_10;
            }

            v99 = v232;
            v106 = v223;
          }

          else
          {

            v156 = v231;
            v157 = v230;
          }

          v158 = v226;
          goto LABEL_38;
        }

        *&v231 = 0;

        v99 = v232;
        v106 = v223;
        v144 = v219;
        v207 = v211;
      }

      else
      {
      }

      v149 = v227;
      goto LABEL_35;
    }

    sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);

    v99 = v232;
    v106 = v223;
LABEL_23:
    v121 = v211;
    goto LABEL_24;
  }

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v232, sub_1D666A92C);
}

uint64_t FormatProgressViewNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D666AD00(0);
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666AD94(0);
  sub_1D5B58B84(&qword_1EDF0C460, sub_1D666AD94, &unk_1D7321584);
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

  v13 = v41;
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

      v20 = *(v16 - 2);
      v19 = *(v16 - 1);

      v21 = sub_1D6616AD8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v37 = 0uLL;
  v38 = 0;
  sub_1D726431C();
  v18 = v39;
  v17 = v40;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v35 = v18;
  v36 = v17;
  v23 = v7;
  v24 = v13;
  v25 = v39;
  v37 = xmmword_1D7297410;
  v38 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v34 = v25;
  v26 = v39;
  v37 = xmmword_1D72BAA60;
  v38 = 0;
  sub_1D726427C();
  v28 = v26;
  v33 = v39;
  v37 = xmmword_1D72BAA70;
  v38 = 0;
  v29 = sub_1D726423C();
  v30 = v34;
  v31 = v29;
  (*(v24 + 8))(v10, v23);
  v32 = v36;
  *a2 = v35;
  *(a2 + 8) = v32;
  *(a2 + 16) = v30;
  *(a2 + 24) = v28;
  *(a2 + 32) = v33;
  *(a2 + 40) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressViewNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v141 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v143 = &v139 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v145 = &v139 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v150 = &v139 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v139 - v17);
  sub_1D666AF14(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[3];
  v146 = v1[2];
  v144 = v26;
  v142 = v1[4];
  v164 = *(v1 + 40);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D666AD94(0);
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF0C460, sub_1D666AD94, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatProgressViewNodeStyle.Selector, v30, v32, v27, &type metadata for FormatProgressViewNodeStyle.Selector, v30, &type metadata for FormatVersions.StarSkyC, v28, v23, v31, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD00);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v151 = v34;
  v147 = v33;
  v148 = v36;
  v153 = v35 + 16;
  (v36)(v18);
  v152 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v161 = v24;
  v162 = v25;
  v159 = 0uLL;
  v160 = 0;
  v37 = &v23[*(v20 + 44)];
  v156 = v18;
  v38 = *v37;
  v39 = *(v37 + 1);
  v163 = 0;
  v40 = swift_allocObject();
  *&v157 = &v139;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v163;
  *(v40 + 40) = v38;
  *(v40 + 48) = v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v139 - 4) = sub_1D5B4AA6C;
  *(&v139 - 3) = 0;
  v137 = sub_1D6708920;
  v138 = v42;
  v163 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v163;
  v149 = v38;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  sub_1D666AFA8(0);
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EDF02E98, sub_1D666AFA8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v154 = v45;
  v155 = v46;
  v47 = sub_1D72647CC();
  v163 = 0;
  v48 = v23;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v47;
  *(v49 + 40) = v163;
  v50 = &v48[*(v20 + 36)];
  v51 = *(v50 + 3);
  v52 = *(v50 + 4);
  v53 = __swift_project_boxed_opaque_existential_1(v50, v51);
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v139 - 4) = sub_1D615B4A4;
  *(&v139 - 3) = (&v139 - 6);
  v137 = sub_1D6708920;
  v138 = v43;
  v57 = v156;
  v58 = v158;
  sub_1D5D2BC70(v156, sub_1D615B49C, v59, sub_1D615B4A4, (&v139 - 6), v51, v52);
  if (v58)
  {
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    v60 = v48;
  }

  else
  {
    v140 = v50;
    *&v158 = v39;

    sub_1D5D3E60C();
    sub_1D72647EC();
    v139 = v48;
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    v62 = v150;
    v64 = v147;
    v63 = v148;
    (v148)(v150, v151, v147);
    swift_storeEnumTagMultiPayload();
    v157 = xmmword_1D728CF30;
    v159 = xmmword_1D728CF30;
    v160 = 0;
    LOBYTE(v161) = 0;
    v65 = swift_allocObject();
    v67 = v65;
    *(v65 + 16) = v157;
    *(v65 + 32) = v161;
    v68 = v149;
    v69 = v158;
    *(v65 + 40) = v149;
    *(v65 + 48) = v69;
    if (v146)
    {
      v156 = &v139;
      v161 = v146;
      MEMORY[0x1EEE9AC00](v65, v66);
      *(&v139 - 4) = sub_1D5B4AA6C;
      *(&v139 - 3) = 0;
      v137 = sub_1D6708920;
      v138 = v67;
      v163 = 0;
      v70 = swift_allocObject();
      *(v70 + 16) = v157;
      *(v70 + 32) = v163;
      *(v70 + 40) = v68;
      *(v70 + 48) = v69;
      swift_retain_n();

      v71 = sub_1D72647CC();
      v163 = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = v71;
      *(v72 + 24) = v157;
      *(v72 + 40) = v163;
      v73 = *(v140 + 3);
      v74 = *(v140 + 4);
      v75 = __swift_project_boxed_opaque_existential_1(v140, v73);
      MEMORY[0x1EEE9AC00](v75, v76);
      MEMORY[0x1EEE9AC00](v77, v78);
      *(&v139 - 4) = sub_1D615B4A4;
      *(&v139 - 3) = (&v139 - 6);
      v79 = v150;
      v137 = sub_1D6708920;
      v138 = v70;
      v81 = sub_1D5D2F7A4(v150, sub_1D615B49C, v80, sub_1D615B4A4, (&v139 - 6), v73, v74);
      v82 = v81;

      if (v82)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v64 = v147;

        sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
        v69 = v158;
        v63 = v148;
        v68 = v149;
      }

      else
      {

        sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
        v69 = v158;
        v63 = v148;
        v68 = v149;
        v64 = v147;
      }
    }

    else
    {

      sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
    }

    v83 = v145;
    (v63)(v145, v151, v64);
    swift_storeEnumTagMultiPayload();
    v157 = xmmword_1D7297410;
    v159 = xmmword_1D7297410;
    v160 = 0;
    LOBYTE(v161) = 0;
    v84 = swift_allocObject();
    v86 = v84;
    *(v84 + 16) = v157;
    *(v84 + 32) = v161;
    *(v84 + 40) = v68;
    *(v84 + 48) = v69;
    if ((~v144 & 0xF000000000000007) != 0)
    {
      v156 = &v139;
      v161 = v144;
      MEMORY[0x1EEE9AC00](v84, v85);
      v154 = &v139 - 6;
      *(&v139 - 4) = sub_1D5B4AA6C;
      *(&v139 - 3) = 0;
      v137 = sub_1D6708920;
      v138 = v86;
      v163 = 0;
      v100 = v99;
      v101 = swift_allocObject();
      *(v101 + 16) = v157;
      *(v101 + 32) = v163;
      *(v101 + 40) = v68;
      *(v101 + 48) = v69;
      swift_retain_n();
      sub_1D5CFCFAC(v100);
      v102 = sub_1D72647CC();
      v163 = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v102;
      *(v103 + 24) = v157;
      *(v103 + 40) = v163;
      v104 = *(v140 + 3);
      v105 = *(v140 + 4);
      v106 = __swift_project_boxed_opaque_existential_1(v140, v104);
      MEMORY[0x1EEE9AC00](v106, v107);
      MEMORY[0x1EEE9AC00](v108, v109);
      v110 = v154;
      *(&v139 - 4) = sub_1D615B4A4;
      *(&v139 - 3) = v110;
      v137 = sub_1D6708920;
      v138 = v101;
      LOBYTE(v104) = sub_1D5D2F7A4(v83, sub_1D615B49C, v111, sub_1D615B4A4, (&v139 - 6), v104, v105);

      if (v104)
      {
        sub_1D5B55CBC();
        sub_1D72647EC();
        v64 = v147;

        v69 = v158;
        v63 = v148;
        v68 = v149;
      }

      else
      {

        v69 = v158;
        v63 = v148;
        v68 = v149;
        v64 = v147;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
    v87 = v143;
    v63();
    swift_storeEnumTagMultiPayload();
    v157 = xmmword_1D72BAA60;
    v159 = xmmword_1D72BAA60;
    v160 = 0;
    LOBYTE(v161) = 0;
    v88 = swift_allocObject();
    v90 = v88;
    *(v88 + 16) = v157;
    *(v88 + 32) = v161;
    *(v88 + 40) = v68;
    *(v88 + 48) = v69;
    v91 = v142;
    if ((~v142 & 0xF000000000000007) != 0)
    {
      v156 = &v139;
      v161 = v142;
      MEMORY[0x1EEE9AC00](v88, v89);
      *(&v139 - 4) = sub_1D5B4AA6C;
      *(&v139 - 3) = 0;
      v137 = sub_1D6708920;
      v138 = v90;
      v163 = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = v157;
      *(v112 + 32) = v163;
      *(v112 + 40) = v68;
      *(v112 + 48) = v69;
      swift_retain_n();
      sub_1D5CFCFAC(v91);
      v113 = sub_1D72647CC();
      v163 = 0;
      v114 = swift_allocObject();
      *(v114 + 16) = v113;
      *(v114 + 24) = v157;
      *(v114 + 40) = v163;
      v115 = *(v140 + 3);
      v116 = *(v140 + 4);
      v117 = __swift_project_boxed_opaque_existential_1(v140, v115);
      MEMORY[0x1EEE9AC00](v117, v118);
      MEMORY[0x1EEE9AC00](v119, v120);
      *(&v139 - 4) = sub_1D615B4A4;
      *(&v139 - 3) = (&v139 - 6);
      v87 = v143;
      v137 = sub_1D6708920;
      v138 = v112;
      v122 = sub_1D5D2F7A4(v143, sub_1D615B49C, v121, sub_1D615B4A4, (&v139 - 6), v115, v116);
      v135 = v122;

      if (v135)
      {
        sub_1D5B55CBC();
        v92 = v139;
        sub_1D72647EC();
        v64 = v147;

        v69 = v158;
      }

      else
      {

        v92 = v139;
        v69 = v158;
        v64 = v147;
      }
    }

    else
    {

      v92 = v139;
    }

    sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v93 = __swift_project_value_buffer(v64, qword_1EDFFCDE0);
    v94 = v141;
    (v148)(v141, v93, v64);
    swift_storeEnumTagMultiPayload();
    v158 = xmmword_1D72BAA70;
    v159 = xmmword_1D72BAA70;
    v160 = 0;
    LOBYTE(v161) = 0;
    v95 = swift_allocObject();
    v97 = v95;
    *(v95 + 16) = v158;
    *(v95 + 32) = v161;
    v98 = v149;
    *(v95 + 40) = v149;
    *(v95 + 48) = v69;
    if (v164 == 2)
    {
    }

    else
    {
      *&v157 = &v139;
      LOBYTE(v161) = v164 & 1;
      MEMORY[0x1EEE9AC00](v95, v96);
      v156 = &v139 - 6;
      *(&v139 - 4) = sub_1D5B4AA6C;
      *(&v139 - 3) = 0;
      v137 = sub_1D6708920;
      v138 = v97;
      v163 = 0;
      v123 = swift_allocObject();
      *(v123 + 16) = v158;
      *(v123 + 32) = v163;
      *(v123 + 40) = v98;
      *(v123 + 48) = v69;
      swift_retain_n();
      v124 = sub_1D72647CC();
      v163 = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = v124;
      *(v125 + 24) = v158;
      *(v125 + 40) = v163;
      v126 = *(v140 + 3);
      v127 = *(v140 + 4);
      v128 = __swift_project_boxed_opaque_existential_1(v140, v126);
      MEMORY[0x1EEE9AC00](v128, v129);
      MEMORY[0x1EEE9AC00](v130, v131);
      v132 = v156;
      *(&v139 - 4) = sub_1D615B4A4;
      *(&v139 - 3) = v132;
      v137 = sub_1D666B03C;
      v138 = v123;
      v134 = sub_1D5D2F7A4(v94, sub_1D615B49C, v133, sub_1D615B4A4, (&v139 - 6), v126, v127);
      v136 = v134;

      if (v136)
      {
        v92 = v139;
        sub_1D72647EC();
      }

      else
      {
        v92 = v139;
      }
    }

    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);

    v60 = v92;
  }

  return sub_1D5D2CFE8(v60, sub_1D666AF14);
}

uint64_t FormatShineSizer.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v31 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v30 = v28 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v28 - v11;
  v32 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD30);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  v18 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v19 = v35;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v19)
  {
    v35 = v18;
    v21 = v33[3];
    v29 = v33[4];
    v28[1] = __swift_project_boxed_opaque_existential_1(v33, v21);
    sub_1D5B58478(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    if (v32)
    {
      v25 = v31;
      v26 = &v31[v24];
      v17(v31, v16, v15);
      if (qword_1EDF31F48 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v25 = v30;
      v26 = &v30[v24];
      v17(v30, v16, v15);
      if (qword_1EDF31F48 == -1)
      {
LABEL_8:
        v27 = __swift_project_value_buffer(v15, qword_1EDFFCE68);
        v17((v25 + v23), v27, v15);
        *v26 = 0;
        *(v26 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v25, sub_1D5B4AA6C, 0, v21, v29);
        sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v33, v33[3]);
        sub_1D7264B3C();
        __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
        sub_1D726473C();

        return __swift_destroy_boxed_opaque_existential_1(v34);
      }
    }

    swift_once();
    goto LABEL_8;
  }

  return result;
}

uint64_t FormatBorder.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v163 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v164 = &v154 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v160 = &v154 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v166 = &v154 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v173 = (&v154 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v154 - v20;
  sub_1D666B184(0);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  *&v175 = *(v1 + 8);
  v165 = *(v1 + 16);
  v28 = *(v1 + 24);
  v161 = *(v1 + 25);
  v162 = v28;
  v159 = *(v1 + 32);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5CD8108(0);
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF24CB8, sub_1D5CD8108, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBorder, v32, v34, v29, &type metadata for FormatBorder, v32, &type metadata for FormatVersions.JazzkonC, v30, v26, v33, &off_1F51F6C78);
  v35 = qword_1EDF31EB0;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v172 = v38 + 16;
  v39(v21, v37, v36);
  v171 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v40 = sub_1D5CD85B0(&unk_1F50F2F48);
  v41 = sub_1D5E22398(v27, v40);

  v167 = v39;
  v168 = v36;
  v170 = v37;
  if (v41)
  {
    goto LABEL_4;
  }

  v65 = &v26[*(v23 + 44)];
  v67 = *v65;
  v66 = *(v65 + 1);
  LOBYTE(v177) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = v177;
  *(v68 + 40) = v67;
  *(v68 + 48) = v66;
  sub_1D5E1C348(0);
  sub_1D5B58B84(&qword_1EDF02B98, sub_1D5E1C348, MEMORY[0x1E69E6F60]);

  v69 = sub_1D72647CC();
  LOBYTE(v177) = 0;
  v70 = swift_allocObject();
  *(v70 + 24) = 0;
  *(v70 + 32) = 0;
  *(v70 + 16) = v69;
  *(v70 + 40) = v177;
  v71 = &v26[*(v23 + 36)];
  v72 = *(v71 + 3);
  v73 = *(v71 + 4);
  v74 = __swift_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v74, v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  *(&v154 - 4) = sub_1D5B4AA6C;
  *(&v154 - 3) = 0;
  v152 = sub_1D666B218;
  v153 = v68;
  v78 = v174;
  v80 = sub_1D5D2F7A4(v21, sub_1D615B49C, v79, sub_1D615B4A4, (&v154 - 6), v72, v73);
  if (v78)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    goto LABEL_13;
  }

  v81 = v80;

  if ((v81 & 1) == 0)
  {
    v174 = 0;
    v39 = v167;
    v36 = v168;
    v37 = v170;
LABEL_4:
    v42 = v23;
    goto LABEL_5;
  }

  sub_1D5E08F78(v27, v26, 0, 0, 0);
  v37 = v170;
  v42 = v23;
  v174 = 0;
  v39 = v167;
  v36 = v168;
LABEL_5:
  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

  v39(v173, v37, v36);
  swift_storeEnumTagMultiPayload();
  v179 = v175;
  v175 = xmmword_1D728CF30;
  v177 = xmmword_1D728CF30;
  v178 = 0;
  v43 = &v26[*(v42 + 44)];
  v44 = *v43;
  v45 = *(v43 + 1);
  v176 = 0;
  v46 = swift_allocObject();
  v169 = &v154;
  *(v46 + 16) = v175;
  *(v46 + 32) = v176;
  *(v46 + 40) = v44;
  *(v46 + 48) = v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v154 - 4) = sub_1D5B4AA6C;
  *(&v154 - 3) = 0;
  v152 = sub_1D6708924;
  v153 = v48;
  v176 = 0;
  v49 = swift_allocObject();
  *(v49 + 16) = v175;
  *(v49 + 32) = v176;
  v156 = v44;
  *(v49 + 40) = v44;
  *(v49 + 48) = v45;
  sub_1D5E1C348(0);
  v51 = v50;
  v52 = sub_1D5B58B84(&qword_1EDF02B98, sub_1D5E1C348, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v157 = v51;
  v158 = v52;
  v53 = sub_1D72647CC();
  v176 = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v175;
  *(v54 + 40) = v176;
  v55 = &v26[*(v42 + 36)];
  v56 = *(v55 + 3);
  v57 = *(v55 + 4);
  v58 = __swift_project_boxed_opaque_existential_1(v55, v56);
  MEMORY[0x1EEE9AC00](v58, v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  *(&v154 - 4) = sub_1D615B4A4;
  *(&v154 - 3) = (&v154 - 6);
  v63 = v173;
  v62 = v174;
  v152 = sub_1D6708924;
  v153 = v49;
  sub_1D5D2BC70(v173, sub_1D615B49C, v64, sub_1D615B4A4, (&v154 - 6), v56, v57);
  if (v62)
  {
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

LABEL_13:
    v98 = v26;
    return sub_1D5D2CFE8(v98, sub_1D666B184);
  }

  v155 = v55;
  v174 = v45;

  sub_1D5B55CBC();
  sub_1D72647EC();
  sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

  v167(v166, v170, v168);
  swift_storeEnumTagMultiPayload();
  v179 = v165;
  v175 = xmmword_1D7297410;
  v177 = xmmword_1D7297410;
  v178 = 0;
  v176 = 0;
  v82 = swift_allocObject();
  v173 = &v154;
  *(v82 + 16) = v175;
  *(v82 + 32) = v176;
  v83 = v156;
  v84 = v174;
  *(v82 + 40) = v156;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v154 - 4) = sub_1D5B4AA6C;
  *(&v154 - 3) = 0;
  v152 = sub_1D6708924;
  v153 = v86;
  v176 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v175;
  *(v87 + 32) = v176;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v176 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v175;
  *(v89 + 40) = v176;
  v90 = *(v155 + 3);
  v91 = *(v155 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v155, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v154 - 4) = sub_1D615B4A4;
  *(&v154 - 3) = (&v154 - 6);
  v96 = v166;
  v152 = sub_1D6708924;
  v153 = v87;
  sub_1D5D2BC70(v166, sub_1D615B49C, v97, sub_1D615B4A4, (&v154 - 6), v90, v91);

  sub_1D5C3526C();
  sub_1D72647EC();
  sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v100 = v168;
  v101 = __swift_project_value_buffer(v168, qword_1EDFFCD50);
  v102 = v160;
  v167(v160, v101, v100);
  swift_storeEnumTagMultiPayload();
  v104 = v163;
  v103 = v164;
  v105 = v161;
  if (v162 == 1)
  {

LABEL_20:
    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
    goto LABEL_21;
  }

  v106 = sub_1D72646CC();

  if (v106)
  {
    goto LABEL_20;
  }

  LOBYTE(v177) = 0;
  v107 = swift_allocObject();
  v175 = xmmword_1D72BAA60;
  *(v107 + 16) = xmmword_1D72BAA60;
  *(v107 + 32) = v177;
  *(v107 + 40) = v156;
  *(v107 + 48) = v174;

  v108 = sub_1D72647CC();
  LOBYTE(v177) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v175;
  *(v109 + 40) = v177;
  v110 = *(v155 + 3);
  v111 = *(v155 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v155, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v154 - 4) = sub_1D5B4AA6C;
  *(&v154 - 3) = 0;
  v152 = sub_1D6708924;
  v153 = v107;
  v117 = sub_1D5D2F7A4(v102, sub_1D615B49C, v116, sub_1D615B4A4, (&v154 - 6), v110, v111);
  v149 = v117;

  if (v149)
  {
    v177 = v175;
    v178 = 0;
    LOBYTE(v179) = v162;
    sub_1D6182558();
    sub_1D72647EC();
    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
    v103 = v164;
    v104 = v163;
  }

  else
  {
    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
    v104 = v163;
    v103 = v164;
  }

LABEL_21:
  v167(v103, v170, v168);
  swift_storeEnumTagMultiPayload();
  if (!v105)
  {

    v118 = v156;
LABEL_26:
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
    v120 = v170;
    goto LABEL_27;
  }

  v118 = v156;
  v119 = sub_1D72646CC();

  if (v119)
  {
    goto LABEL_26;
  }

  LOBYTE(v177) = 0;
  v133 = swift_allocObject();
  v134 = v118;
  v135 = v103;
  v136 = v133;
  v175 = xmmword_1D72BAA70;
  *(v133 + 16) = xmmword_1D72BAA70;
  *(v133 + 32) = v177;
  *(v133 + 40) = v134;
  *(v133 + 48) = v174;

  v137 = sub_1D72647CC();
  LOBYTE(v177) = 0;
  v138 = swift_allocObject();
  *(v138 + 16) = v137;
  *(v138 + 24) = v175;
  *(v138 + 40) = v177;
  v139 = *(v155 + 3);
  v140 = *(v155 + 4);
  v141 = __swift_project_boxed_opaque_existential_1(v155, v139);
  MEMORY[0x1EEE9AC00](v141, v142);
  MEMORY[0x1EEE9AC00](v143, v144);
  *(&v154 - 4) = sub_1D5B4AA6C;
  *(&v154 - 3) = 0;
  v152 = sub_1D6708924;
  v153 = v136;
  v146 = sub_1D5D2F7A4(v135, sub_1D615B49C, v145, sub_1D615B4A4, (&v154 - 6), v139, v140);
  v150 = v146;

  if (v150)
  {
    v177 = v175;
    v178 = 0;
    LOBYTE(v179) = v161;
    sub_1D666B294();
    sub_1D72647EC();
    v151 = v170;
    v118 = v156;
    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
    v120 = v151;
    v104 = v163;
  }

  else
  {
    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
    v104 = v163;
    v120 = v170;
    v118 = v156;
  }

LABEL_27:
  v167(v104, v120, v168);
  swift_storeEnumTagMultiPayload();
  v121 = v174;
  if (!*(v159 + 16))
  {
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
    goto LABEL_13;
  }

  LOBYTE(v177) = 0;
  v122 = swift_allocObject();
  v175 = xmmword_1D72BAA80;
  *(v122 + 16) = xmmword_1D72BAA80;
  *(v122 + 32) = v177;
  *(v122 + 40) = v118;
  *(v122 + 48) = v121;

  v123 = sub_1D72647CC();
  LOBYTE(v177) = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  *(v124 + 24) = v175;
  *(v124 + 40) = v177;
  v125 = *(v155 + 3);
  v126 = *(v155 + 4);
  v127 = __swift_project_boxed_opaque_existential_1(v155, v125);
  MEMORY[0x1EEE9AC00](v127, v128);
  MEMORY[0x1EEE9AC00](v129, v130);
  *(&v154 - 4) = sub_1D5B4AA6C;
  *(&v154 - 3) = 0;
  v152 = sub_1D6708924;
  v153 = v122;
  v132 = sub_1D5D2F7A4(v104, sub_1D615B49C, v131, sub_1D615B4A4, (&v154 - 6), v125, v126);
  v147 = v132;

  if (v147)
  {
    v177 = v175;
    v178 = 0;
    v179 = v159;
    v148 = MEMORY[0x1E69E6448];
    sub_1D5C34D84(0, &qword_1EDF1AEE8, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    sub_1D668EAFC(&qword_1EDF04A70, &qword_1EDF1AEE8, v148);
    sub_1D72647EC();

    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  }

  v98 = v26;
  return sub_1D5D2CFE8(v98, sub_1D666B184);
}

uint64_t FormatBorderInset.encode(to:)(void *a1)
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

uint64_t FormatSelectorValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v52 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v53 = v48 - v9;
  v10 = *(a2 + 16);
  v57 = *(a2 + 24);
  v58 = v10;
  v12 = _s10CodingKeysOMa_250(255, v10, v57, v11);
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  *&v59 = v12;
  *(&v59 + 1) = WitnessTable;
  v60 = v14;
  v61 = v15;
  v16 = type metadata accessor for FormatCodingKeysContainer(255, &v59);
  v17 = swift_getWitnessTable();
  v18 = sub_1D726446C();
  v19 = swift_getWitnessTable();
  v21 = type metadata accessor for VersionedKeyedEncodingContainer(0, v18, v19, v20);
  v56 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v48 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v51 = a2;
  sub_1D5D2EE70(a2, v16, v27, v25, a2, v16, &type metadata for FormatVersions.JazzkonC, v26, v24, v17, &off_1F51F6C78);
  v59 = 0uLL;
  LOBYTE(v60) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v32 = v30 + 16;
  v33 = v53;
  v31(v53, v29, v28);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v34 = v54;
  sub_1D5D38930(v55, &v59, v33, sub_1D5B4AA6C, 0, v21, v58, *(v57 + 16));
  if (v34)
  {
    sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
    return (*(v56 + 8))(v24, v21);
  }

  else
  {
    v48[1] = 0;
    v49 = v24;
    v50 = v32;
    v54 = v31;
    sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
    v62 = sub_1D61834A8(v51);
    v37 = type metadata accessor for FormatSelectorValueSelector(255, v58, v57, v36);
    v38 = swift_getWitnessTable();
    v39 = swift_getWitnessTable();
    v40 = type metadata accessor for FormatCodingEmptyArrayStrategy(0, v37, v38, v39);
    v59 = xmmword_1D728CF30;
    LOBYTE(v60) = 0;
    v41 = qword_1EDF31F10;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v28, qword_1EDFFCDF8);
    v43 = v52;
    v54(v52, v42, v28);
    swift_storeEnumTagMultiPayload();
    v44 = swift_getWitnessTable();
    v45 = v40;
    v46 = v40;
    v47 = v49;
    sub_1D71B5F54(&v62, v45, &v59, v43, sub_1D5B4AA6C, 0, v21, v46, v44);
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    return (*(v56 + 8))(v47, v21);
  }
}

uint64_t FormatSelectorValueSelector.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v42 - v11;
  v13 = *(a2 + 24);
  v45 = *(a2 + 16);
  v43 = v13;
  v15 = _s10CodingKeysOMa_249(255, v45, v13, v14);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v51 = v15;
  *(&v51 + 1) = WitnessTable;
  v52 = v17;
  v53 = v18;
  v19 = type metadata accessor for FormatCodingKeysContainer(255, &v51);
  v20 = swift_getWitnessTable();
  v21 = sub_1D726446C();
  v22 = swift_getWitnessTable();
  v54 = type metadata accessor for VersionedKeyedEncodingContainer(0, v21, v22, v23);
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v24);
  v26 = &v42 - v25;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v44 = a2;
  sub_1D5D2EE70(a2, v19, v29, v27, a2, v19, &type metadata for FormatVersions.Azden, v28, v26, v20, &off_1F51F6B78);
  v31 = *v3;
  v30 = v3[1];
  v46 = v3;
  v50[0] = v31;
  v50[1] = v30;
  v51 = 0uLL;
  LOBYTE(v52) = 0;
  v32 = qword_1EDF31F10;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCDF8);
  v35 = *(*(v33 - 8) + 16);
  v35(v12, v34, v33);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v36 = sub_1D5D3E60C();
  v37 = v48;
  sub_1D5D38930(v50, &v51, v12, sub_1D5B4AA6C, 0, v54, &type metadata for FormatSelector, v36);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

  if (v37)
  {
    return (*(v49 + 8))(v26, v54);
  }

  v39 = *(v44 + 36);
  v51 = xmmword_1D728CF30;
  LOBYTE(v52) = 0;
  v40 = v47;
  v35(v47, v34, v33);
  swift_storeEnumTagMultiPayload();
  v41 = v54;
  sub_1D5D38930(v46 + v39, &v51, v40, sub_1D5B4AA6C, 0, v54, v45, *(v43 + 16));
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  return (*(v49 + 8))(v26, v41);
}

uint64_t FormatMediaTimingFunction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
          *(v20 + 16) = &unk_1F5111F60;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D666B2E8();
    *v27 = 0;
    *&v27[8] = 0;
    sub_1D726431C();
    v22 = v26;
    if (v26)
    {
      v26 = xmmword_1D7279980;
      sub_1D666B33C();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = *v27;
      v24 = *&v27[8];
      v25 = v28;
    }

    else
    {
      sub_1D5C30060(0, &qword_1EC886438, sub_1D666B390, &type metadata for FormatMediaTimingFunctionName, type metadata accessor for FormatValue);
      *v27 = xmmword_1D7279980;
      sub_1D666B3E4();
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

uint64_t FormatMediaTimingFunction.encode(to:)(void *a1)
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
  v29 = *(v1 + 8);
  v30 = v15;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatMediaTimingFunction, &type metadata for FormatCodingKeys, v22, v19, &type metadata for FormatMediaTimingFunction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v20, v14, v21, &off_1F51F6CD8);
  if (v18)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6390554(1, v30, v29, v16, v17, v6);
    v25 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725BD1C();
    v27 = __swift_project_value_buffer(v26, qword_1EDFFCD50);
    (*(*(v26 - 8) + 16))(v10, v27, v26);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6390380(0, v30, v10);
    v25 = v10;
  }

  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatVideoProperties.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  sub_1D666B474(0);
  v7 = v6;
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666B508(0);
  sub_1D5B58B84(&qword_1EDF0C4F0, sub_1D666B508, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = a2;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v47;
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

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6616E88();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v10, v7);
      a1 = v11;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D666B688();
  v54 = 0uLL;
  v55 = 0;
  sub_1D726427C();
  v18 = v52;
  v52 = xmmword_1D728CF30;
  v53 = 0;
  sub_1D5CDCE98();
  sub_1D726427C();
  v24 = v54;
  v45 = v55;
  v54 = xmmword_1D7297410;
  v55 = 0;
  sub_1D666B6DC();
  sub_1D726427C();
  v44 = v24;
  v25 = v52;
  v52 = xmmword_1D72BAA60;
  v53 = 0;
  sub_1D726427C();
  v41 = v25;
  v43 = *(&v54 + 1);
  v26 = v54;
  v42 = v55;
  v52 = xmmword_1D72BAA70;
  v53 = 0;
  sub_1D726427C();
  v40 = v26;
  v27 = *(&v54 + 1);
  v38 = v54;
  v39 = v55;
  v54 = xmmword_1D72BAA80;
  v55 = 0;
  sub_1D666B730();
  sub_1D726427C();
  v37 = v27;
  v36 = v52;
  v54 = xmmword_1D72BAA90;
  v55 = 0;
  sub_1D666B784();
  sub_1D726427C();
  v35 = *(&v24 + 1);
  LOBYTE(v27) = v52;
  v52 = xmmword_1D72BAAA0;
  v53 = 0;
  sub_1D726427C();
  (*(v14 + 8))(v10, v7);
  v28 = v55;
  v29 = v27;
  v30 = v46;
  *v46 = v18;
  *(v30 + 1) = *v56;
  *(v30 + 1) = *&v56[3];
  v31 = v35;
  *(v30 + 1) = v44;
  *(v30 + 2) = v31;
  v30[24] = v45;
  v30[25] = v41;
  *(v30 + 26) = *&v50[7];
  *(v30 + 15) = v51;
  v32 = v43;
  *(v30 + 4) = v40;
  *(v30 + 5) = v32;
  v30[48] = v42;
  LODWORD(v32) = *v50;
  *(v30 + 13) = *&v50[3];
  *(v30 + 49) = v32;
  v33 = v37;
  *(v30 + 7) = v38;
  *(v30 + 8) = v33;
  v30[72] = v39;
  v30[73] = v36;
  v30[74] = v29;
  *(v30 + 75) = v48;
  v30[79] = v49;
  *(v30 + 5) = v54;
  v30[96] = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatVideoProperties.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v266 = &v259 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v268 = &v259 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v271 = &v259 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v275 = &v259 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v277 = &v259 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v281 = &v259 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v286 = (&v259 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v259 - v26;
  sub_1D666B7D8(0);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v259 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v1;
  v34 = *(v1 + 2);
  v280 = *(v1 + 1);
  v279 = v34;
  LODWORD(v285) = v1[24];
  v300 = v1[25];
  v35 = *(v1 + 5);
  v274 = *(v1 + 4);
  v273 = v35;
  v276 = v1[48];
  v36 = *(v1 + 8);
  v270 = *(v1 + 7);
  v269 = v36;
  v272 = v1[72];
  v267 = v1[73];
  v265 = v1[74];
  v37 = *(v1 + 11);
  v263 = *(v1 + 10);
  v262 = v37;
  v264 = v1[96];
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D666B508(0);
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF0C4F0, sub_1D666B508, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatVideoProperties, v41, v43, v38, &type metadata for FormatVideoProperties, v41, &type metadata for FormatVersions.AzdenE, v39, v32, v42, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD98);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v289 = v45;
  v287 = v46 + 16;
  v47(v27);
  *&v290 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v296 = 0uLL;
  v297 = 0;
  v48 = &v32[*(v29 + 44)];
  v50 = *v48;
  v49 = *(v48 + 1);
  LOBYTE(v293) = 0;
  v51 = swift_allocObject();
  v53 = v51;
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v293;
  *(v51 + 40) = v50;
  *(v51 + 48) = v49;
  v291 = v32;
  v278 = v47;
  v282 = v44;
  v283 = v49;
  v284 = v50;
  if (v33 == 3)
  {

    goto LABEL_11;
  }

  *&v288 = &v259;
  LOBYTE(v293) = v33;
  MEMORY[0x1EEE9AC00](v51, v52);
  *(&v259 - 4) = sub_1D5B4AA6C;
  *(&v259 - 3) = 0;
  v257 = sub_1D6708928;
  v258 = v53;
  v299 = 0;
  v54 = v32;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v299;
  *(v55 + 40) = v50;
  *(v55 + 48) = v49;
  sub_1D666B86C(0);
  v57 = v56;
  sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v260 = v57;
  v58 = sub_1D72647CC();
  v299 = 0;
  v59 = v29;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v58;
  *(v60 + 40) = v299;
  v61 = &v54[*(v59 + 36)];
  v63 = *(v61 + 3);
  v62 = *(v61 + 4);
  v64 = __swift_project_boxed_opaque_existential_1(v61, v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  *(&v259 - 4) = sub_1D615B4A4;
  *(&v259 - 3) = &v259 - 6;
  v257 = sub_1D6708928;
  v258 = v55;
  v68 = v292;
  v70 = sub_1D5D2F7A4(v27, sub_1D615B49C, v69, sub_1D615B4A4, (&v259 - 6), v63, v62);
  if (!v68)
  {
    v72 = v70;

    if (v72)
    {
      sub_1D666BA8C();
      v32 = v291;
      sub_1D72647EC();
      v44 = v282;
      v292 = 0;
      v29 = v59;
      v49 = v283;
      v50 = v284;
    }

    else
    {
      v292 = 0;
      v32 = v291;
      v29 = v59;
      v49 = v283;
      v50 = v284;
      v44 = v282;
    }

    v47 = v278;
LABEL_11:
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    v73 = v286;
    (v47)(v286, v289, v44);
    swift_storeEnumTagMultiPayload();
    v288 = xmmword_1D728CF30;
    v296 = xmmword_1D728CF30;
    v297 = 0;
    LOBYTE(v293) = 0;
    v74 = swift_allocObject();
    v76 = v74;
    *(v74 + 16) = v288;
    *(v74 + 32) = v293;
    *(v74 + 40) = v50;
    *(v74 + 48) = v49;
    v261 = v29;
    if (v285 == 255)
    {

      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v260 = &v259;
      v77 = v280;
      v78 = v279;
      v293 = v280;
      v294 = v279;
      v295 = v285 & 1;
      MEMORY[0x1EEE9AC00](v74, v75);
      v259 = &v259 - 6;
      *(&v259 - 4) = sub_1D5B4AA6C;
      *(&v259 - 3) = 0;
      v257 = sub_1D6708928;
      v258 = v76;
      v299 = 0;
      v80 = v79;
      v81 = swift_allocObject();
      v82 = v50;
      v83 = v81;
      *(v81 + 16) = v288;
      *(v81 + 32) = v299;
      *(v81 + 40) = v82;
      *(v81 + 48) = v49;
      swift_retain_n();
      sub_1D6189668(v77, v78, v80);
      sub_1D666B86C(0);
      v85 = v84;
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C, MEMORY[0x1E69E6F60]);
      v285 = v85;
      v86 = sub_1D72647CC();
      v299 = 0;
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v288;
      *(v87 + 40) = v299;
      v88 = &v32[*(v29 + 36)];
      v89 = *(v88 + 3);
      v90 = *(v88 + 4);
      v91 = __swift_project_boxed_opaque_existential_1(v88, v89);
      MEMORY[0x1EEE9AC00](v91, v92);
      MEMORY[0x1EEE9AC00](v93, v94);
      v95 = v259;
      *(&v259 - 4) = sub_1D615B4A4;
      *(&v259 - 3) = v95;
      v257 = sub_1D6708928;
      v258 = v83;
      v96 = v292;
      v98 = sub_1D5D2F7A4(v73, sub_1D615B49C, v97, sub_1D615B4A4, (&v259 - 6), v89, v90);
      if (v96)
      {

        v99 = v291;
        sub_1D5D2F2C8(v293, v294, v295);
        v100 = v73;
LABEL_45:
        sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
        goto LABEL_46;
      }

      v101 = v98;
      v103 = v283;
      v102 = v284;
      v29 = v261;

      if (v101)
      {
        sub_1D60ED320();
        sub_1D72647EC();
        v50 = v102;
        v292 = 0;

        sub_1D5D2F2C8(v293, v294, v295);
        sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);
        v49 = v103;
      }

      else
      {
        v292 = 0;

        sub_1D5D2F2C8(v293, v294, v295);
        sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);
        v49 = v103;
        v50 = v102;
      }

      v44 = v282;
      v47 = v278;
    }

    v104 = v281;
    (v47)(v281, v289, v44);
    swift_storeEnumTagMultiPayload();
    v288 = xmmword_1D7297410;
    v296 = xmmword_1D7297410;
    v297 = 0;
    LOBYTE(v293) = 0;
    v105 = swift_allocObject();
    v107 = v105;
    *(v105 + 16) = v288;
    *(v105 + 32) = v293;
    *(v105 + 40) = v50;
    *(v105 + 48) = v49;
    if (v300 == 2)
    {
    }

    else
    {
      v286 = &v259;
      LOBYTE(v293) = v300 & 1;
      MEMORY[0x1EEE9AC00](v105, v106);
      *(&v259 - 4) = sub_1D5B4AA6C;
      *(&v259 - 3) = 0;
      v257 = sub_1D6708928;
      v258 = v107;
      v299 = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v288;
      *(v108 + 32) = v299;
      *(v108 + 40) = v50;
      *(v108 + 48) = v49;
      sub_1D666B86C(0);
      v110 = v109;
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v111 = v291;
      v285 = v110;
      v112 = sub_1D72647CC();
      v299 = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v288;
      *(v113 + 40) = v299;
      v114 = &v111[*(v29 + 36)];
      v115 = *(v114 + 3);
      v116 = *(v114 + 4);
      v117 = __swift_project_boxed_opaque_existential_1(v114, v115);
      MEMORY[0x1EEE9AC00](v117, v118);
      MEMORY[0x1EEE9AC00](v119, v120);
      *(&v259 - 4) = sub_1D615B4A4;
      *(&v259 - 3) = &v259 - 6;
      v257 = sub_1D6708928;
      v258 = v108;
      v121 = v292;
      v123 = sub_1D5D2F7A4(v104, sub_1D615B49C, v122, sub_1D615B4A4, (&v259 - 6), v115, v116);
      v292 = v121;
      if (v121)
      {
        v124 = v104;
LABEL_23:
        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

LABEL_24:
        v99 = v291;
LABEL_46:
        v71 = v99;
        return sub_1D5D2CFE8(v71, sub_1D666B7D8);
      }

      v125 = v123;
      v126 = v284;
      v49 = v283;
      v29 = v261;

      if (v125)
      {
        sub_1D666BA38();
        v99 = v291;
        v127 = v292;
        sub_1D72647EC();
        v50 = v126;
        v44 = v282;
        if (v127)
        {
          v128 = &v301;
          goto LABEL_28;
        }

        v292 = 0;
        v47 = v278;
      }

      else
      {
        v50 = v126;
        v44 = v282;
        v47 = v278;
      }

      v104 = v281;
    }

    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

    v129 = v277;
    (v47)(v277, v289, v44);
    swift_storeEnumTagMultiPayload();
    v288 = xmmword_1D72BAA60;
    v296 = xmmword_1D72BAA60;
    v297 = 0;
    LOBYTE(v293) = 0;
    v130 = swift_allocObject();
    v132 = v130;
    *(v130 + 16) = v288;
    *(v130 + 32) = v293;
    *(v130 + 40) = v50;
    *(v130 + 48) = v49;
    if (v276 == 255)
    {

      sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v286 = &v259;
      v133 = v274;
      v134 = v273;
      v293 = v274;
      v294 = v273;
      v295 = v276 & 1;
      MEMORY[0x1EEE9AC00](v130, v131);
      v285 = &v259 - 6;
      *(&v259 - 4) = sub_1D5B4AA6C;
      *(&v259 - 3) = 0;
      v257 = sub_1D6708928;
      v258 = v132;
      v299 = 0;
      v136 = v135;
      v137 = swift_allocObject();
      *(v137 + 16) = v288;
      *(v137 + 32) = v299;
      *(v137 + 40) = v50;
      *(v137 + 48) = v49;
      swift_retain_n();
      sub_1D6189668(v133, v134, v136);
      sub_1D666B86C(0);
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C, MEMORY[0x1E69E6F60]);
      v138 = v291;
      v139 = sub_1D72647CC();
      v299 = 0;
      v140 = swift_allocObject();
      *(v140 + 16) = v139;
      *(v140 + 24) = v288;
      *(v140 + 40) = v299;
      v141 = &v138[*(v29 + 36)];
      v142 = *(v141 + 3);
      v143 = *(v141 + 4);
      v144 = __swift_project_boxed_opaque_existential_1(v141, v142);
      MEMORY[0x1EEE9AC00](v144, v145);
      MEMORY[0x1EEE9AC00](v146, v147);
      v148 = v285;
      *(&v259 - 4) = sub_1D615B4A4;
      *(&v259 - 3) = v148;
      v257 = sub_1D6708928;
      v258 = v137;
      v149 = v292;
      v151 = sub_1D5D2F7A4(v129, sub_1D615B49C, v150, sub_1D615B4A4, (&v259 - 6), v142, v143);
      v292 = v149;
      if (v149)
      {
LABEL_43:

        v99 = v291;
        goto LABEL_44;
      }

      v152 = v151;
      v153 = v283;
      v154 = v284;
      v29 = v261;

      if (v152)
      {
        sub_1D60ED320();
        v99 = v291;
        v155 = v292;
        sub_1D72647EC();
        if (v155)
        {

          v129 = v277;
LABEL_44:
          sub_1D5D2F2C8(v293, v294, v295);
          v100 = v129;
          goto LABEL_45;
        }

        v50 = v154;
        v292 = 0;

        sub_1D5D2F2C8(v293, v294, v295);
        sub_1D5D2CFE8(v277, type metadata accessor for FormatVersionRequirement);
        v49 = v153;
      }

      else
      {

        sub_1D5D2F2C8(v293, v294, v295);
        sub_1D5D2CFE8(v277, type metadata accessor for FormatVersionRequirement);
        v49 = v153;
        v50 = v154;
      }

      v44 = v282;
      v47 = v278;
    }

    v129 = v275;
    (v47)(v275, v289, v44);
    swift_storeEnumTagMultiPayload();
    v288 = xmmword_1D72BAA70;
    v296 = xmmword_1D72BAA70;
    v297 = 0;
    LOBYTE(v293) = 0;
    v156 = swift_allocObject();
    v158 = v156;
    *(v156 + 16) = v288;
    *(v156 + 32) = v293;
    *(v156 + 40) = v50;
    *(v156 + 48) = v49;
    if (v272 == 255)
    {

      sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v286 = &v259;
      v159 = v270;
      v160 = v269;
      v293 = v270;
      v294 = v269;
      v295 = v272 & 1;
      MEMORY[0x1EEE9AC00](v156, v157);
      v285 = &v259 - 6;
      *(&v259 - 4) = sub_1D5B4AA6C;
      *(&v259 - 3) = 0;
      v257 = sub_1D6708928;
      v258 = v158;
      v299 = 0;
      v162 = v161;
      v163 = swift_allocObject();
      *(v163 + 16) = v288;
      *(v163 + 32) = v299;
      *(v163 + 40) = v50;
      *(v163 + 48) = v49;
      swift_retain_n();
      sub_1D6189668(v159, v160, v162);
      sub_1D666B86C(0);
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C, MEMORY[0x1E69E6F60]);
      v164 = v291;
      v165 = sub_1D72647CC();
      v299 = 0;
      v166 = swift_allocObject();
      *(v166 + 16) = v165;
      *(v166 + 24) = v288;
      *(v166 + 40) = v299;
      v167 = &v164[*(v29 + 36)];
      v168 = *(v167 + 3);
      v169 = *(v167 + 4);
      v170 = __swift_project_boxed_opaque_existential_1(v167, v168);
      MEMORY[0x1EEE9AC00](v170, v171);
      MEMORY[0x1EEE9AC00](v172, v173);
      v174 = v285;
      *(&v259 - 4) = sub_1D615B4A4;
      *(&v259 - 3) = v174;
      v257 = sub_1D6708928;
      v258 = v163;
      v175 = v292;
      v177 = sub_1D5D2F7A4(v129, sub_1D615B49C, v176, sub_1D615B4A4, (&v259 - 6), v168, v169);
      v292 = v175;
      if (v175)
      {
        goto LABEL_43;
      }

      v179 = v177;
      v180 = v283;
      v181 = v284;
      v29 = v261;

      if (v179)
      {
        sub_1D60ED320();
        v99 = v291;
        v182 = v292;
        sub_1D72647EC();
        if (v182)
        {

          v129 = v275;
          goto LABEL_44;
        }

        v50 = v181;
        v292 = 0;

        sub_1D5D2F2C8(v293, v294, v295);
        sub_1D5D2CFE8(v275, type metadata accessor for FormatVersionRequirement);
        v49 = v180;
      }

      else
      {

        sub_1D5D2F2C8(v293, v294, v295);
        sub_1D5D2CFE8(v275, type metadata accessor for FormatVersionRequirement);
        v49 = v180;
        v50 = v181;
      }

      v44 = v282;
      v47 = v278;
    }

    v183 = v271;
    (v47)(v271, v289, v44);
    swift_storeEnumTagMultiPayload();
    v288 = xmmword_1D72BAA80;
    v296 = xmmword_1D72BAA80;
    v297 = 0;
    LOBYTE(v293) = 0;
    v184 = swift_allocObject();
    v186 = v184;
    *(v184 + 16) = v288;
    *(v184 + 32) = v293;
    *(v184 + 40) = v50;
    *(v184 + 48) = v49;
    if (v267 == 12)
    {

LABEL_57:
      sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);

      v187 = v268;
      (v47)(v268, v289, v44);
      swift_storeEnumTagMultiPayload();
      v288 = xmmword_1D72BAA90;
      v296 = xmmword_1D72BAA90;
      v297 = 0;
      LOBYTE(v293) = 0;
      v188 = swift_allocObject();
      v190 = v188;
      *(v188 + 16) = v288;
      *(v188 + 32) = v293;
      *(v188 + 40) = v50;
      *(v188 + 48) = v49;
      if (v265 == 3)
      {
        v191 = v50;

        goto LABEL_59;
      }

      v286 = &v259;
      LOBYTE(v293) = v265;
      MEMORY[0x1EEE9AC00](v188, v189);
      *(&v259 - 4) = sub_1D5B4AA6C;
      *(&v259 - 3) = 0;
      v257 = sub_1D6708928;
      v258 = v190;
      v299 = 0;
      v236 = swift_allocObject();
      *(v236 + 16) = v288;
      *(v236 + 32) = v299;
      *(v236 + 40) = v50;
      *(v236 + 48) = v49;
      sub_1D666B86C(0);
      v238 = v237;
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v239 = v291;
      v285 = v238;
      v240 = sub_1D72647CC();
      v299 = 0;
      v241 = swift_allocObject();
      *(v241 + 16) = v240;
      *(v241 + 24) = v288;
      *(v241 + 40) = v299;
      v242 = &v239[*(v29 + 36)];
      v243 = *(v242 + 3);
      v244 = *(v242 + 4);
      v245 = __swift_project_boxed_opaque_existential_1(v242, v243);
      MEMORY[0x1EEE9AC00](v245, v246);
      MEMORY[0x1EEE9AC00](v247, v248);
      *(&v259 - 4) = sub_1D615B4A4;
      *(&v259 - 3) = &v259 - 6;
      v257 = sub_1D6708928;
      v258 = v236;
      v249 = v292;
      v251 = sub_1D5D2F7A4(v187, sub_1D615B49C, v250, sub_1D615B4A4, (&v259 - 6), v243, v244);
      if (!v249)
      {
        v255 = v251;
        v191 = v284;

        if (v255)
        {
          sub_1D666B990();
          sub_1D72647EC();
          v44 = v282;
          v292 = 0;
        }

        else
        {
          v292 = 0;
          v44 = v282;
        }

        v49 = v283;
LABEL_59:
        sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);

        sub_1D5B58478(0);
        v193 = *(v192 + 48);
        v194 = v266;
        v195 = (v266 + *(v192 + 64));
        v196 = v278;
        (v278)(v266, v289, v44);
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v197 = __swift_project_value_buffer(v44, qword_1EDFFCD80);
        v196(v194 + v193, v197, v44);
        *v195 = 0;
        v195[1] = 0;
        swift_storeEnumTagMultiPayload();
        v290 = xmmword_1D72BAAA0;
        v296 = xmmword_1D72BAAA0;
        v297 = 0;
        LOBYTE(v293) = 0;
        v198 = swift_allocObject();
        v200 = v198;
        *(v198 + 16) = v290;
        *(v198 + 32) = v293;
        *(v198 + 40) = v191;
        *(v198 + 48) = v49;
        v201 = v264;
        if (v264 == 255)
        {

          sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          *&v288 = &v259;
          v202 = v263;
          v203 = v262;
          v293 = v263;
          v294 = v262;
          v295 = v264 & 1;
          MEMORY[0x1EEE9AC00](v198, v199);
          v289 = &v259 - 6;
          *(&v259 - 4) = sub_1D5B4AA6C;
          *(&v259 - 3) = 0;
          v257 = sub_1D6708928;
          v258 = v200;
          v299 = 0;
          v204 = swift_allocObject();
          *(v204 + 16) = v290;
          *(v204 + 32) = v299;
          *(v204 + 40) = v191;
          *(v204 + 48) = v49;
          swift_retain_n();
          sub_1D6189668(v202, v203, v201);
          sub_1D666B86C(0);
          v205 = v291;
          sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C, MEMORY[0x1E69E6F60]);
          v206 = sub_1D72647CC();
          v299 = 0;
          v207 = swift_allocObject();
          *(v207 + 16) = v206;
          *(v207 + 24) = v290;
          *(v207 + 40) = v299;
          v208 = &v205[*(v261 + 36)];
          v209 = *(v208 + 3);
          v210 = *(v208 + 4);
          v211 = __swift_project_boxed_opaque_existential_1(v208, v209);
          MEMORY[0x1EEE9AC00](v211, v212);
          MEMORY[0x1EEE9AC00](v213, v214);
          v215 = v289;
          *(&v259 - 4) = sub_1D615B4A4;
          *(&v259 - 3) = v215;
          v257 = sub_1D666B900;
          v258 = v204;
          v216 = v292;
          v218 = sub_1D5D2F7A4(v194, sub_1D615B49C, v217, sub_1D615B4A4, (&v259 - 6), v209, v210);
          if (v216)
          {

            v219 = v266;
            sub_1D5D2F2C8(v293, v294, v295);
            sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
            v71 = v291;
            return sub_1D5D2CFE8(v71, sub_1D666B7D8);
          }

          v256 = v218;

          if (v256)
          {
            sub_1D60ED320();
            sub_1D72647EC();
          }

          sub_1D5D2F2C8(v293, v294, v295);
          sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
        }

        v71 = v291;
        return sub_1D5D2CFE8(v71, sub_1D666B7D8);
      }

      sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);

      goto LABEL_24;
    }

    v286 = &v259;
    LOBYTE(v293) = v267;
    MEMORY[0x1EEE9AC00](v184, v185);
    *(&v259 - 4) = sub_1D5B4AA6C;
    *(&v259 - 3) = 0;
    v257 = sub_1D6708928;
    v258 = v186;
    v299 = 0;
    v220 = swift_allocObject();
    *(v220 + 16) = v288;
    *(v220 + 32) = v299;
    *(v220 + 40) = v50;
    *(v220 + 48) = v49;
    sub_1D666B86C(0);
    v222 = v221;
    sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v223 = v291;
    v285 = v222;
    v224 = sub_1D72647CC();
    v299 = 0;
    v225 = swift_allocObject();
    *(v225 + 16) = v224;
    *(v225 + 24) = v288;
    *(v225 + 40) = v299;
    v226 = &v223[*(v29 + 36)];
    v227 = *(v226 + 3);
    v228 = *(v226 + 4);
    v229 = __swift_project_boxed_opaque_existential_1(v226, v227);
    MEMORY[0x1EEE9AC00](v229, v230);
    MEMORY[0x1EEE9AC00](v231, v232);
    *(&v259 - 4) = sub_1D615B4A4;
    *(&v259 - 3) = &v259 - 6;
    v257 = sub_1D6708928;
    v258 = v220;
    v233 = v292;
    v235 = sub_1D5D2F7A4(v183, sub_1D615B49C, v234, sub_1D615B4A4, (&v259 - 6), v227, v228);
    v292 = v233;
    if (v233)
    {
      v124 = v183;
      goto LABEL_23;
    }

    v252 = v235;
    v253 = v284;
    v49 = v283;
    v29 = v261;

    if ((v252 & 1) == 0)
    {
      v50 = v253;
      v44 = v282;
      v47 = v278;
      goto LABEL_57;
    }

    sub_1D666B9E4();
    v99 = v291;
    v254 = v292;
    sub_1D72647EC();
    v44 = v282;
    if (!v254)
    {
      v50 = v253;
      v292 = 0;
      v47 = v278;
      goto LABEL_57;
    }

    v128 = &v298;
LABEL_28:
    sub_1D5D2CFE8(*(v128 - 32), type metadata accessor for FormatVersionRequirement);

    goto LABEL_46;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

  v71 = v291;
  return sub_1D5D2CFE8(v71, sub_1D666B7D8);
}

uint64_t FormatType.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v96 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v95 = &v83 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v83 - v11;
  sub_1D666BAE0(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v20 = *(v1 + 2);
  v93 = *(v1 + 3);
  v94 = v20;
  v21 = v1[9];
  v92 = v1[8];
  v91 = v21;
  v111 = *(v1 + 80);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D5CDF268(0);
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF24D08, sub_1D5CDF268, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatType, v25, v27, v22, &type metadata for FormatType, v25, &type metadata for FormatVersions.JazzkonC, v23, v17, v26, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v89 = v29;
  v97 = v28;
  v88 = v31;
  v87 = v30 + 16;
  (v31)(v12);
  v86 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v103 = v19;
  *(&v103 + 1) = v18;
  v105 = 0uLL;
  LOBYTE(v106) = 0;
  v32 = &v17[*(v14 + 44)];
  v100 = v12;
  v33 = *v32;
  v34 = *(v32 + 1);
  v110 = 0;
  v35 = swift_allocObject();
  v101 = &v83;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v110;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v37 = v17;
  *(&v83 - 4) = sub_1D5B4AA6C;
  *(&v83 - 3) = 0;
  v81 = sub_1D670892C;
  v82 = v38;
  v110 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v110;
  v90 = v33;
  *(v39 + 40) = v33;
  *(v39 + 48) = v34;
  sub_1D666BB74(0);
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF02BE8, sub_1D666BB74, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v98 = v42;
  v99 = v41;
  v43 = sub_1D72647CC();
  v110 = 0;
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = v110;
  v45 = &v17[*(v14 + 36)];
  v46 = *(v45 + 3);
  v47 = *(v45 + 4);
  v48 = __swift_project_boxed_opaque_existential_1(v45, v46);
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v83 - 4) = sub_1D615B4A4;
  *(&v83 - 3) = (&v83 - 6);
  v52 = v100;
  v81 = sub_1D666BC08;
  v82 = v39;
  v53 = v102;
  sub_1D5D2BC70(v100, sub_1D615B49C, v54, sub_1D615B4A4, (&v83 - 6), v46, v47);
  if (v53)
  {
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v57 = v37;
  }

  else
  {
    v84 = v45;
    v55 = v97;
    v85 = v34;

    sub_1D72647EC();
    v56 = v37;
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v59 = v95;
    v60 = v89;
    v61 = v55;
    v62 = v55;
    v63 = v88;
    v88(v95, v89, v62);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
    v64 = v96;
    v63(v96, v60, v61);
    v65 = v64;
    swift_storeEnumTagMultiPayload();
    v105 = v94;
    v106 = v93;
    v107 = v92;
    v108 = v91;
    v109 = v111;
    v102 = xmmword_1D7297410;
    v103 = xmmword_1D7297410;
    v104 = 0;
    v110 = 0;
    v66 = swift_allocObject();
    v101 = &v83;
    *(v66 + 16) = v102;
    *(v66 + 32) = v110;
    v67 = v90;
    v68 = v85;
    *(v66 + 40) = v90;
    *(v66 + 48) = v68;
    MEMORY[0x1EEE9AC00](v66, v69);
    *(&v83 - 4) = sub_1D5B4AA6C;
    *(&v83 - 3) = 0;
    v81 = sub_1D670892C;
    v82 = v70;
    v110 = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v102;
    *(v71 + 32) = v110;
    *(v71 + 40) = v67;
    *(v71 + 48) = v68;
    swift_retain_n();
    v72 = sub_1D72647CC();
    v110 = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v102;
    *(v73 + 40) = v110;
    v74 = *(v84 + 3);
    v75 = *(v84 + 4);
    v76 = __swift_project_boxed_opaque_existential_1(v84, v74);
    MEMORY[0x1EEE9AC00](v76, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v83 - 4) = sub_1D615B4A4;
    *(&v83 - 3) = (&v83 - 6);
    v81 = sub_1D670892C;
    v82 = v71;
    sub_1D5D2BC70(v65, sub_1D615B49C, v80, sub_1D615B4A4, (&v83 - 6), v74, v75);

    sub_1D666BC84();
    sub_1D72647EC();
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

    v57 = v56;
  }

  return sub_1D5D2CFE8(v57, sub_1D666BAE0);
}

uint64_t FormatAdjustment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v251 = &v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v250 = &v226 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v228 = &v226 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v227 = &v226 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v249 = &v226 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v247 = &v226 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v245 = &v226 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v248 = &v226 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v246 = &v226 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v244 = &v226 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v243 = &v226 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v242 = &v226 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v241 = &v226 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v240 = &v226 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v238 = &v226 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v226 = &v226 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v237 = &v226 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v236 = &v226 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v235 = &v226 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v234 = &v226 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v233 = &v226 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v232 = &v226 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v231 = &v226 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v230 = &v226 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v229 = &v226 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v226 - v80;
  MEMORY[0x1EEE9AC00](v82, v83);
  v239 = &v226 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v226 - v87;
  MEMORY[0x1EEE9AC00](v89, v90);
  v92 = &v226 - v91;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v93 - 8, v94);
  v96 = &v226 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *v1;
  v99 = a1[3];
  v98 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v99);
  v100 = sub_1D5C30408();
  v252 = v96;
  sub_1D5D2EE70(&type metadata for FormatAdjustment, &type metadata for FormatCodingKeys, v101, v99, &type metadata for FormatAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v98, v96, v100, &off_1F51F6C78);
  switch((v97 >> 59) & 0x1E | (v97 >> 2) & 1)
  {
    case 1uLL:
      v165 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v166 = sub_1D725BD1C();
      v167 = __swift_project_value_buffer(v166, qword_1EDFFCD30);
      (*(*(v166 - 8) + 16))(v88, v167, v166);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v168 = v165;
      v109 = v252;
      sub_1D63B713C(1, v168, v88);
      v110 = v88;
      goto LABEL_90;
    case 2uLL:
      v151 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v152 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v153 = qword_1EDF31EB0;

      if (v153 != -1)
      {
        swift_once();
      }

      v154 = sub_1D725BD1C();
      v155 = __swift_project_value_buffer(v154, qword_1EDFFCD30);
      v117 = v239;
      (*(*(v154 - 8) + 16))(v239, v155, v154);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B7310(2, v151, v152, v117);
      goto LABEL_87;
    case 3uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v159 = qword_1EDF31EB0;

      if (v159 != -1)
      {
        swift_once();
      }

      v160 = sub_1D725BD1C();
      v161 = __swift_project_value_buffer(v160, qword_1EDFFCD30);
      v117 = v229;
      (*(*(v160 - 8) + 16))(v229, v161, v160);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 4;
      goto LABEL_75;
    case 4uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v129 = qword_1EDF31EB0;

      if (v129 != -1)
      {
        swift_once();
      }

      v130 = sub_1D725BD1C();
      v131 = __swift_project_value_buffer(v130, qword_1EDFFCD30);
      v117 = v230;
      (*(*(v130 - 8) + 16))(v230, v131, v130);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 5;
      goto LABEL_75;
    case 5uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v177 = qword_1EDF31EB0;

      if (v177 != -1)
      {
        swift_once();
      }

      v178 = sub_1D725BD1C();
      v179 = __swift_project_value_buffer(v178, qword_1EDFFCD30);
      v117 = v231;
      (*(*(v178 - 8) + 16))(v231, v179, v178);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 6;
      goto LABEL_75;
    case 6uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v190 = qword_1EDF31EB0;

      if (v190 != -1)
      {
        swift_once();
      }

      v191 = sub_1D725BD1C();
      v192 = __swift_project_value_buffer(v191, qword_1EDFFCD30);
      v117 = v232;
      (*(*(v191 - 8) + 16))(v232, v192, v191);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 7;
      goto LABEL_75;
    case 7uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v162 = qword_1EDF31EB0;

      if (v162 != -1)
      {
        swift_once();
      }

      v163 = sub_1D725BD1C();
      v164 = __swift_project_value_buffer(v163, qword_1EDFFCD30);
      v117 = v233;
      (*(*(v163 - 8) + 16))(v233, v164, v163);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 8;
      goto LABEL_75;
    case 8uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v199 = qword_1EDF31EB0;

      if (v199 != -1)
      {
        swift_once();
      }

      v200 = sub_1D725BD1C();
      v201 = __swift_project_value_buffer(v200, qword_1EDFFCD30);
      v117 = v234;
      (*(*(v200 - 8) + 16))(v234, v201, v200);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 9;
      goto LABEL_75;
    case 9uLL:
      v135 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v136 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v137 = qword_1EDF31EB0;

      if (v137 != -1)
      {
        swift_once();
      }

      v138 = sub_1D725BD1C();
      v139 = __swift_project_value_buffer(v138, qword_1EDFFCD30);
      v117 = v235;
      (*(*(v138 - 8) + 16))(v235, v139, v138);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v140 = v136;
      v109 = v252;
      sub_1D63B7670(10, v135, v140, v117);
      goto LABEL_88;
    case 0xAuLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v196 = qword_1EDF31F08;

      if (v196 != -1)
      {
        swift_once();
      }

      v197 = sub_1D725BD1C();
      v198 = __swift_project_value_buffer(v197, qword_1EDFFCDE0);
      v117 = v236;
      (*(*(v197 - 8) + 16))(v236, v198, v197);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 11;
      goto LABEL_75;
    case 0xBuLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v125 = qword_1EDF31F08;

      if (v125 != -1)
      {
        swift_once();
      }

      v126 = sub_1D725BD1C();
      v127 = __swift_project_value_buffer(v126, qword_1EDFFCDE0);
      v117 = v237;
      (*(*(v126 - 8) + 16))(v237, v127, v126);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 12;
LABEL_75:
      v109 = v252;
      sub_1D63B74A4(v128, v124, v117);
      goto LABEL_88;
    case 0xCuLL:
      v132 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v133 = sub_1D725BD1C();
      v134 = __swift_project_value_buffer(v133, qword_1EDFFCD30);
      v117 = v238;
      (*(*(v133 - 8) + 16))(v238, v134, v133);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B713C(14, v132, v117);
      goto LABEL_89;
    case 0xDuLL:
      v183 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v185 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v184 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v186 = qword_1EDF31EB0;

      if (v186 != -1)
      {
        swift_once();
      }

      v187 = sub_1D725BD1C();
      v188 = __swift_project_value_buffer(v187, qword_1EDFFCD30);
      v117 = v240;
      (*(*(v187 - 8) + 16))(v240, v188, v187);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v189 = v183;
      v109 = v252;
      sub_1D63B7808(15, v189, v185, v184, v117);
      goto LABEL_88;
    case 0xEuLL:
      v119 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v120 = qword_1EDF31EB0;

      if (v120 != -1)
      {
        swift_once();
      }

      v121 = sub_1D725BD1C();
      v122 = __swift_project_value_buffer(v121, qword_1EDFFCD30);
      v117 = v241;
      (*(*(v121 - 8) + 16))(v241, v122, v121);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v123 = 16;
      goto LABEL_37;
    case 0xFuLL:
      v119 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v156 = qword_1EDF31EB0;

      if (v156 != -1)
      {
        swift_once();
      }

      v157 = sub_1D725BD1C();
      v158 = __swift_project_value_buffer(v157, qword_1EDFFCD30);
      v117 = v242;
      (*(*(v157 - 8) + 16))(v242, v158, v157);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v123 = 17;
LABEL_37:
      v109 = v252;
      sub_1D63B79A4(v123, v119, v117);
      goto LABEL_79;
    case 0x10uLL:
      v112 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v114 = qword_1EDF31EB0;

      if (v114 != -1)
      {
        swift_once();
      }

      v115 = sub_1D725BD1C();
      v116 = __swift_project_value_buffer(v115, qword_1EDFFCD30);
      v117 = v243;
      (*(*(v115 - 8) + 16))(v243, v116, v115);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v118 = 18;
      goto LABEL_83;
    case 0x11uLL:
      v112 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v169 = qword_1EDF31EB0;

      if (v169 != -1)
      {
        swift_once();
      }

      v170 = sub_1D725BD1C();
      v171 = __swift_project_value_buffer(v170, qword_1EDFFCD30);
      v117 = v244;
      (*(*(v170 - 8) + 16))(v244, v171, v170);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v118 = 19;
      goto LABEL_83;
    case 0x12uLL:
      v112 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v193 = qword_1EDF31EB0;

      if (v193 != -1)
      {
        swift_once();
      }

      v194 = sub_1D725BD1C();
      v195 = __swift_project_value_buffer(v194, qword_1EDFFCD30);
      v117 = v246;
      (*(*(v194 - 8) + 16))(v246, v195, v194);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v118 = 20;
      goto LABEL_83;
    case 0x13uLL:
      v112 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v209 = qword_1EDF31EB0;

      if (v209 != -1)
      {
        swift_once();
      }

      v210 = sub_1D725BD1C();
      v211 = __swift_project_value_buffer(v210, qword_1EDFFCD30);
      v117 = v248;
      (*(*(v210 - 8) + 16))(v248, v211, v210);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v118 = 21;
LABEL_83:
      v212 = v112;
      v109 = v252;
      sub_1D63B7B38(v118, v212, v111, v113, v117);

      goto LABEL_88;
    case 0x14uLL:
      v172 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v173 = qword_1EDF31EB0;

      if (v173 != -1)
      {
        swift_once();
      }

      v174 = sub_1D725BD1C();
      v175 = __swift_project_value_buffer(v174, qword_1EDFFCD30);
      v117 = v245;
      (*(*(v174 - 8) + 16))(v245, v175, v174);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v176 = 22;
      goto LABEL_59;
    case 0x15uLL:
      v172 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v180 = qword_1EDF31EB0;

      if (v180 != -1)
      {
        swift_once();
      }

      v181 = sub_1D725BD1C();
      v182 = __swift_project_value_buffer(v181, qword_1EDFFCD30);
      v117 = v247;
      (*(*(v181 - 8) + 16))(v247, v182, v181);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v176 = 23;
LABEL_59:
      v109 = v252;
      sub_1D63B7CD0(v176, v172, v117);
      goto LABEL_88;
    case 0x16uLL:
      v202 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v203 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v204 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v205 = qword_1EDF31ED0;

      if (v205 != -1)
      {
        swift_once();
      }

      v206 = sub_1D725BD1C();
      v207 = __swift_project_value_buffer(v206, qword_1EDFFCD50);
      v117 = v249;
      (*(*(v206 - 8) + 16))(v249, v207, v206);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v208 = v202;
      v109 = v252;
      sub_1D63B7E9C(24, v208, v203, v204, v117);
LABEL_79:

      goto LABEL_89;
    case 0x17uLL:
      v213 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v214 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v215 = qword_1EDF31EB0;

      if (v215 != -1)
      {
        swift_once();
      }

      v216 = sub_1D725BD1C();
      v217 = __swift_project_value_buffer(v216, qword_1EDFFCD30);
      v117 = v250;
      (*(*(v216 - 8) + 16))(v250, v217, v216);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B8040(27, v213, v214, v117);
      goto LABEL_87;
    case 0x18uLL:
      v144 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v145 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v146 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v147 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v148 = qword_1EDF31ED0;

      if (v148 != -1)
      {
        swift_once();
      }

      v149 = sub_1D725BD1C();
      v150 = __swift_project_value_buffer(v149, qword_1EDFFCD50);
      v117 = v251;
      (*(*(v149 - 8) + 16))(v251, v150, v149);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B8214(28, v144, v145, v146, v147, v117);

LABEL_87:

LABEL_88:

      goto LABEL_89;
    case 0x19uLL:
      v141 = __ROR8__(v97 + 0x3FFFFFFFFFFFFFFCLL, 3);
      if (v141 > 1)
      {
        v109 = v252;
        if (v141 == 2)
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v219 = sub_1D725BD1C();
          v220 = __swift_project_value_buffer(v219, qword_1EDFFCD30);
          v117 = v227;
          (*(*(v219 - 8) + 16))(v227, v220, v219);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v221 = 25;
        }

        else
        {
          if (qword_1EDF31EA8 != -1)
          {
            swift_once();
          }

          v224 = sub_1D725BD1C();
          v225 = __swift_project_value_buffer(v224, qword_1EDFFCD18);
          v117 = v228;
          (*(*(v224 - 8) + 16))(v228, v225, v224);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v221 = 26;
        }

        goto LABEL_101;
      }

      v109 = v252;
      if (v141)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v222 = sub_1D725BD1C();
        v223 = __swift_project_value_buffer(v222, qword_1EDFFCD30);
        v117 = v226;
        (*(*(v222 - 8) + 16))(v226, v223, v222);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v221 = 13;
LABEL_101:
        sub_1D6423FAC(v221, v117);
        goto LABEL_89;
      }

      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v142 = sub_1D725BD1C();
      v143 = __swift_project_value_buffer(v142, qword_1EDFFCD30);
      (*(*(v142 - 8) + 16))(v81, v143, v142);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423FAC(3, v81);
      v117 = v81;
LABEL_89:
      v110 = v117;
LABEL_90:
      sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v109, sub_1D5D30DC4);
    default:
      v102 = *(v97 + 16);
      v103 = *(v97 + 24);
      v104 = *(v97 + 32);
      v105 = *(v97 + 40);
      v106 = qword_1EDF31EB0;

      if (v106 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
      (*(*(v107 - 8) + 16))(v92, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B6FA4(0, v102, v103, v104, v105, v92);

      v110 = v92;
      goto LABEL_90;
  }
}

uint64_t FormatOptionBindingModifier.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatOptionBindingModifier, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatOptionBindingModifier, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v14, v18, &off_1F51F6BF8);
  if (v15)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638C230(0, v15, v10);
    v22 = v10;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE68);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641AAC8(1, v6);
    v22 = v6;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatWebEmbedNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v221 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v226 = &v221 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v227 = &v221 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v228 = &v221 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v229 = &v221 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v230 = (&v221 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  *&v239 = &v221 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v221 - v29;
  sub_1D666BD7C(0);
  v240 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v221 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D5CCC8E4(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF25158, sub_1D5CCC8E4, &unk_1D7321584);
  sub_1D5D2EE70(v4, v38, v40, v35, v4, v38, &type metadata for FormatVersions.JazzkonC, v36, v34, v39, &off_1F51F6C78);
  swift_beginAccess();
  v41 = v2[2];
  v42 = v2[3];
  v236 = v2;
  v43 = qword_1EDF31EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v238 = v46 + 16;
  v47(v30, v45, v44);
  v237 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v48 = sub_1D725895C();
  v49 = (*(*(v48 - 8) + 48))(v8, 1, v48);
  v233 = v47;
  if (v49 != 1)
  {
    v235 = v44;
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v71 = v239;
    goto LABEL_8;
  }

  v231 = v41;
  *&v242 = v45;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v50 = v240;
  v51 = &v34[*(v240 + 44)];
  v53 = *v51;
  v52 = *(v51 + 1);
  LOBYTE(v243) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 32) = v243;
  *(v54 + 40) = v53;
  *(v54 + 48) = v52;
  sub_1D666BE10(0);
  v56 = v55;
  sub_1D5B58B84(&qword_1EDF03118, sub_1D666BE10, MEMORY[0x1E69E6F60]);

  v225 = v56;
  v57 = sub_1D72647CC();
  LOBYTE(v243) = 0;
  v58 = v34;
  v59 = swift_allocObject();
  *(v59 + 24) = 0;
  *(v59 + 32) = 0;
  *(v59 + 16) = v57;
  *(v59 + 40) = v243;
  v60 = &v58[*(v50 + 36)];
  v61 = *(v60 + 3);
  v62 = *(v60 + 4);
  v63 = __swift_project_boxed_opaque_existential_1(v60, v61);
  v232 = &v221;
  MEMORY[0x1EEE9AC00](v63, v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v221 - 4) = sub_1D5B4AA6C;
  *(&v221 - 3) = 0;
  v219 = sub_1D666BEA4;
  v220 = v54;
  v67 = v241;
  v69 = sub_1D5D2F7A4(v30, sub_1D615B49C, v68, sub_1D615B4A4, (&v221 - 6), v61, v62);
  if (v67)
  {
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    v70 = v58;
    return sub_1D5D2CFE8(v70, sub_1D666BD7C);
  }

  v101 = v69;
  v235 = v44;

  if ((v101 & 1) == 0)
  {
    *&v241 = 0;
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    v34 = v58;
    v45 = v242;
    v47 = v233;
    goto LABEL_7;
  }

  v243 = 0uLL;
  v244 = 0;
  *&v245 = v231;
  *(&v245 + 1) = v42;
  v34 = v58;
  sub_1D72647EC();

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v45 = v242;
  v47 = v233;
  v71 = v239;
  *&v241 = 0;
LABEL_8:
  v72 = v236[4];
  v73 = v236[5];
  v47(v71, v45, v235);
  swift_storeEnumTagMultiPayload();
  *&v245 = v72;
  *(&v245 + 1) = v73;
  v242 = xmmword_1D728CF30;
  v243 = xmmword_1D728CF30;
  v244 = 0;
  v74 = v240;
  v75 = &v34[*(v240 + 44)];
  v76 = *v75;
  v77 = *(v75 + 1);
  LOBYTE(v247) = 0;
  v78 = swift_allocObject();
  v232 = &v221;
  *(v78 + 16) = v242;
  *(v78 + 32) = v247;
  *(v78 + 40) = v76;
  *(v78 + 48) = v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v231 = &v221 - 6;
  *(&v221 - 4) = sub_1D5B4AA6C;
  *(&v221 - 3) = 0;
  v219 = sub_1D6708930;
  v220 = v80;
  LOBYTE(v247) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v242;
  *(v81 + 32) = v247;
  v223 = v76;
  *(v81 + 40) = v76;
  *(v81 + 48) = v77;
  sub_1D666BE10(0);
  v83 = v82;
  v84 = sub_1D5B58B84(&qword_1EDF03118, sub_1D666BE10, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v225 = v83;
  v224 = v84;
  v85 = sub_1D72647CC();
  LOBYTE(v247) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v242;
  *(v86 + 40) = v247;
  v87 = *(v74 + 36);
  v88 = v71;
  v234 = v34;
  v89 = &v34[v87];
  v90 = v45;
  v91 = *(v89 + 3);
  v92 = *(v89 + 4);
  v93 = __swift_project_boxed_opaque_existential_1(v89, v91);
  MEMORY[0x1EEE9AC00](v93, v94);
  MEMORY[0x1EEE9AC00](v95, v96);
  v97 = v231;
  *(&v221 - 4) = sub_1D615B4A4;
  *(&v221 - 3) = v97;
  v219 = sub_1D6708930;
  v220 = v81;
  v98 = v241;
  sub_1D5D2BC70(v88, sub_1D615B49C, v99, sub_1D615B4A4, (&v221 - 6), v91, v92);
  if (v98)
  {
    sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);

    v70 = v234;
    return sub_1D5D2CFE8(v70, sub_1D666BD7C);
  }

  v222 = v89;
  v240 = v77;
  *&v242 = v90;

  sub_1D72647EC();
  sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);

  v102 = v236[6];
  v103 = v236[7];
  v104 = *(v236 + 64);
  v105 = v230;
  v233(v230, v242, v235);
  swift_storeEnumTagMultiPayload();
  v239 = xmmword_1D7297410;
  v243 = xmmword_1D7297410;
  v244 = 0;
  LOBYTE(v245) = 0;
  v106 = swift_allocObject();
  v108 = v106;
  *(v106 + 16) = v239;
  *(v106 + 32) = v245;
  v109 = v223;
  v110 = v240;
  *(v106 + 40) = v223;
  *(v106 + 48) = v110;
  if (v104 <= 0xFD)
  {
    v232 = &v221;
    *&v245 = v102;
    *(&v245 + 1) = v103;
    v246 = v104;
    MEMORY[0x1EEE9AC00](v106, v107);
    v156 = v234;
    *&v241 = 0;
    *(&v221 - 4) = sub_1D5B4AA6C;
    *(&v221 - 3) = 0;
    v219 = sub_1D6708930;
    v220 = v108;
    LOBYTE(v247) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v239;
    *(v157 + 32) = v247;
    *(v157 + 40) = v109;
    *(v157 + 48) = v110;
    swift_retain_n();
    sub_1D5ED34B0(v102, v103, v104);
    v158 = v156;
    v159 = sub_1D72647CC();
    LOBYTE(v247) = 0;
    v160 = swift_allocObject();
    *(v160 + 16) = v159;
    *(v160 + 24) = v239;
    *(v160 + 40) = v247;
    v161 = *(v222 + 3);
    v162 = *(v222 + 4);
    v163 = __swift_project_boxed_opaque_existential_1(v222, v161);
    MEMORY[0x1EEE9AC00](v163, v164);
    MEMORY[0x1EEE9AC00](v165, v166);
    *(&v221 - 4) = sub_1D615B4A4;
    *(&v221 - 3) = (&v221 - 6);
    v219 = sub_1D6708930;
    v220 = v157;
    v167 = v241;
    v169 = sub_1D5D2F7A4(v230, sub_1D615B49C, v168, sub_1D615B4A4, (&v221 - 6), v161, v162);
    if (v167)
    {

      v170 = v230;
      sub_1D5ED34A0(v245, *(&v245 + 1), v246);
      v171 = v170;
      goto LABEL_36;
    }

    v202 = v169;

    if (v202)
    {
      sub_1D6661258();
      sub_1D72647EC();
      v110 = v240;
      v203 = v230;

      sub_1D5ED34A0(v245, *(&v245 + 1), v246);
      sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);
      v111 = v236;
    }

    else
    {

      sub_1D5ED34A0(v245, *(&v245 + 1), v246);
      sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);
      v111 = v236;
      v110 = v240;
    }
  }

  else
  {

    sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);

    v111 = v236;
  }

  v112 = v111[10];
  v232 = v111[9];
  v231 = v112;
  v113 = *(v111 + 88);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v114 = v235;
  v115 = __swift_project_value_buffer(v235, qword_1EDFFCE80);
  v116 = v229;
  v233(v229, v115, v114);
  swift_storeEnumTagMultiPayload();
  v239 = xmmword_1D72BAA60;
  v243 = xmmword_1D72BAA60;
  v244 = 0;
  LOBYTE(v245) = 0;
  v117 = swift_allocObject();
  v119 = v117;
  *(v117 + 16) = v239;
  *(v117 + 32) = v245;
  v120 = v223;
  *(v117 + 40) = v223;
  *(v117 + 48) = v110;
  if (v113 <= 0xFD)
  {
    v230 = &v221;
    v172 = v232;
    v173 = v231;
    *&v245 = v232;
    *(&v245 + 1) = v231;
    v246 = v113;
    MEMORY[0x1EEE9AC00](v117, v118);
    v174 = v234;
    *&v241 = 0;
    *(&v221 - 4) = sub_1D5B4AA6C;
    *(&v221 - 3) = 0;
    v219 = sub_1D6708930;
    v220 = v119;
    LOBYTE(v247) = 0;
    v175 = swift_allocObject();
    v176 = v110;
    v177 = v175;
    *(v175 + 16) = v239;
    *(v175 + 32) = v247;
    *(v175 + 40) = v120;
    *(v175 + 48) = v176;
    swift_retain_n();
    sub_1D5ED34B0(v172, v173, v113);
    v158 = v174;
    v178 = sub_1D72647CC();
    LOBYTE(v247) = 0;
    v179 = swift_allocObject();
    *(v179 + 16) = v178;
    *(v179 + 24) = v239;
    *(v179 + 40) = v247;
    v180 = *(v222 + 3);
    v181 = *(v222 + 4);
    v182 = __swift_project_boxed_opaque_existential_1(v222, v180);
    MEMORY[0x1EEE9AC00](v182, v183);
    MEMORY[0x1EEE9AC00](v184, v185);
    *(&v221 - 4) = sub_1D615B4A4;
    *(&v221 - 3) = (&v221 - 6);
    v219 = sub_1D6708930;
    v220 = v177;
    v186 = v241;
    v188 = sub_1D5D2F7A4(v116, sub_1D615B49C, v187, sub_1D615B4A4, (&v221 - 6), v180, v181);
    if (!v186)
    {
      v215 = v188;

      v122 = v228;
      if (v215)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v121 = v233;
        v110 = v240;

        sub_1D5ED34A0(v245, *(&v245 + 1), v246);
        sub_1D5D2CFE8(v229, type metadata accessor for FormatVersionRequirement);
        v111 = v236;
      }

      else
      {

        sub_1D5ED34A0(v245, *(&v245 + 1), v246);
        sub_1D5D2CFE8(v229, type metadata accessor for FormatVersionRequirement);
        v111 = v236;
        v121 = v233;
        v110 = v240;
      }

      goto LABEL_22;
    }

    v189 = v229;
    sub_1D5ED34A0(v245, *(&v245 + 1), v246);
    v171 = v189;
LABEL_36:
    sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
    v70 = v158;
    return sub_1D5D2CFE8(v70, sub_1D666BD7C);
  }

  sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

  v121 = v233;
  v122 = v228;
LABEL_22:
  v123 = *(v111 + 89);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v124 = v235;
  v125 = __swift_project_value_buffer(v235, qword_1EDFFCDE0);
  v121(v122, v125, v124);
  swift_storeEnumTagMultiPayload();
  v241 = xmmword_1D72BAA70;
  v243 = xmmword_1D72BAA70;
  v244 = 0;
  LOBYTE(v245) = 0;
  v126 = swift_allocObject();
  v128 = v126;
  *(v126 + 16) = v241;
  *(v126 + 32) = v245;
  v129 = v223;
  *(v126 + 40) = v223;
  *(v126 + 48) = v110;
  if (v123 == 2)
  {
  }

  else
  {
    *&v239 = &v221;
    LOBYTE(v245) = v123 & 1;
    MEMORY[0x1EEE9AC00](v126, v127);
    *(&v221 - 4) = sub_1D5B4AA6C;
    *(&v221 - 3) = 0;
    v219 = sub_1D6708930;
    v220 = v128;
    LOBYTE(v247) = 0;
    v190 = swift_allocObject();
    *(v190 + 16) = v241;
    *(v190 + 32) = v247;
    *(v190 + 40) = v129;
    *(v190 + 48) = v110;
    swift_retain_n();
    v191 = sub_1D72647CC();
    LOBYTE(v247) = 0;
    v192 = v122;
    v193 = swift_allocObject();
    *(v193 + 16) = v191;
    *(v193 + 24) = v241;
    *(v193 + 40) = v247;
    v194 = *(v222 + 3);
    v195 = *(v222 + 4);
    v196 = __swift_project_boxed_opaque_existential_1(v222, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    *(&v221 - 4) = sub_1D615B4A4;
    *(&v221 - 3) = (&v221 - 6);
    v219 = sub_1D6708930;
    v220 = v190;
    v201 = sub_1D5D2F7A4(v192, sub_1D615B49C, v200, sub_1D615B4A4, (&v221 - 6), v194, v195);
    v216 = v201;

    if (v216)
    {
      sub_1D72647EC();
      v121 = v233;
      v122 = v228;
      v111 = v236;
    }

    else
    {
      v111 = v236;
      v121 = v233;
      v122 = v228;
    }
  }

  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

  v130 = *(v111 + 90);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v131 = v235;
  v132 = __swift_project_value_buffer(v235, qword_1EDFFCE98);
  v133 = v227;
  v121(v227, v132, v131);
  swift_storeEnumTagMultiPayload();
  v241 = xmmword_1D72BAA80;
  v243 = xmmword_1D72BAA80;
  v244 = 0;
  LOBYTE(v245) = 0;
  v134 = swift_allocObject();
  v136 = v134;
  *(v134 + 16) = v241;
  *(v134 + 32) = v245;
  v137 = v223;
  v138 = v240;
  *(v134 + 40) = v223;
  *(v134 + 48) = v138;
  if (v130 == 2)
  {

    v139 = v133;
    v140 = v242;
    v141 = v222;
  }

  else
  {
    *&v239 = &v221;
    LOBYTE(v245) = v130 & 1;
    MEMORY[0x1EEE9AC00](v134, v135);
    *(&v221 - 4) = sub_1D5B4AA6C;
    *(&v221 - 3) = 0;
    v219 = sub_1D6708930;
    v220 = v136;
    LOBYTE(v247) = 0;
    v204 = swift_allocObject();
    *(v204 + 16) = v241;
    *(v204 + 32) = v247;
    *(v204 + 40) = v137;
    *(v204 + 48) = v138;
    swift_retain_n();
    v205 = sub_1D72647CC();
    LOBYTE(v247) = 0;
    v206 = swift_allocObject();
    *(v206 + 16) = v205;
    *(v206 + 24) = v241;
    *(v206 + 40) = v247;
    v141 = v222;
    v207 = *(v222 + 3);
    v208 = *(v222 + 4);
    v209 = __swift_project_boxed_opaque_existential_1(v222, v207);
    MEMORY[0x1EEE9AC00](v209, v210);
    MEMORY[0x1EEE9AC00](v211, v212);
    *(&v221 - 4) = sub_1D615B4A4;
    *(&v221 - 3) = (&v221 - 6);
    v219 = sub_1D6708930;
    v220 = v204;
    v214 = sub_1D5D2F7A4(v133, sub_1D615B49C, v213, sub_1D615B4A4, (&v221 - 6), v207, v208);
    v217 = v214;

    if (v217)
    {
      sub_1D72647EC();
      v140 = v242;
      v121 = v233;
      v111 = v236;
      v139 = v227;
    }

    else
    {
      v111 = v236;
      v139 = v227;
      v140 = v242;
      v121 = v233;
    }
  }

  sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);

  swift_beginAccess();
  v142 = v111[12];
  v143 = v226;
  v121(v226, v140, v235);
  swift_storeEnumTagMultiPayload();
  if (*(v142 + 16))
  {
    LOBYTE(v245) = 0;
    v144 = swift_allocObject();
    v242 = xmmword_1D72BAA90;
    *(v144 + 16) = xmmword_1D72BAA90;
    *(v144 + 32) = v245;
    *(v144 + 40) = v223;
    *(v144 + 48) = v240;

    v145 = v234;
    v146 = sub_1D72647CC();
    LOBYTE(v245) = 0;
    v147 = swift_allocObject();
    *(v147 + 16) = v146;
    *(v147 + 24) = v242;
    *(v147 + 40) = v245;
    v148 = *(v141 + 3);
    v149 = *(v141 + 4);
    v150 = __swift_project_boxed_opaque_existential_1(v141, v148);
    MEMORY[0x1EEE9AC00](v150, v151);
    MEMORY[0x1EEE9AC00](v152, v153);
    *(&v221 - 4) = sub_1D5B4AA6C;
    *(&v221 - 3) = 0;
    v219 = sub_1D6708930;
    v220 = v144;
    v155 = sub_1D5D2F7A4(v143, sub_1D615B49C, v154, sub_1D615B4A4, (&v221 - 6), v148, v149);
    v218 = v155;

    if (v218)
    {
      v245 = v242;
      v246 = 0;
      v247 = v142;
      sub_1D5C34D84(0, &qword_1EDF04D58, &type metadata for FormatWebEmbedNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D666BF34();
      sub_1D72647EC();

      sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
    }

    v70 = v145;
  }

  else
  {
    sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
    v70 = v234;
  }

  return sub_1D5D2CFE8(v70, sub_1D666BD7C);
}