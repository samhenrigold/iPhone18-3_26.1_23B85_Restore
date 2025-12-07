uint64_t sub_1D65DCFD0(uint64_t a1)
{
  v2 = sub_1D5C718C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65DD00C(uint64_t a1)
{
  v2 = sub_1D5C718C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVOverlayNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v260 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v265 = &v260 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v266 = &v260 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v267 = &v260 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v268 = &v260 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v269 = &v260 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v271 = &v260 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v270 = &v260 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v272 = &v260 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v281 = &v260 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v260 - v38;
  sub_1D66CBA74(0);
  v285 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v260 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5CC12A0(0);
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF25548, sub_1D5CC12A0, &unk_1D7321584);
  v282 = v43;
  sub_1D5D2EE70(v4, v47, v49, v44, v4, v47, &type metadata for FormatVersions.JazzkonC, v45, v43, v48, &off_1F51F6C78);
  swift_beginAccess();
  v50 = v2[2];
  v51 = v2[3];
  v52 = qword_1EDF31EB0;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v57 = (v55 + 16);
  v56(v39, v54, v53);
  v280 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v58 = sub_1D725895C();
  v59 = (*(*(v58 - 8) + 48))(v8, 1, v58);
  v276 = v2;
  v278 = v53;
  v277 = v56;
  v279 = v57;
  v275 = v54;
  if (v59 == 1)
  {
    v274 = v50;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v60 = v285;
    v61 = v282;
    v62 = &v282[*(v285 + 11)];
    v64 = *v62;
    v63 = *(v62 + 1);
    LOBYTE(v286) = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = v286;
    *(v65 + 40) = v64;
    *(v65 + 48) = v63;
    sub_1D66CBB08(0);
    v67 = v66;
    sub_1D5B58B84(&qword_1EDF03598, sub_1D66CBB08, MEMORY[0x1E69E6F60]);

    *&v284 = v67;
    v68 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v69 = swift_allocObject();
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 16) = v68;
    *(v69 + 40) = v286;
    v70 = (v61 + *(v60 + 9));
    v71 = v70[3];
    v72 = v70[4];
    v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
    MEMORY[0x1EEE9AC00](v73, v74);
    MEMORY[0x1EEE9AC00](v75, v76);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708A74;
    v259 = v65;
    v77 = v283;
    v79 = sub_1D5D2F7A4(v39, sub_1D615B49C, v78, sub_1D615B4A4, (&v260 - 6), v71, v72);
    if (v77)
    {
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v80 = v61;
      return sub_1D5D2CFE8(v80, sub_1D66CBA74);
    }

    v108 = v79;

    if (v108)
    {
      v286 = 0uLL;
      LOBYTE(v287) = 0;
      v298 = v274;
      v299 = v51;
      sub_1D72647EC();

      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
      v53 = v278;
      v56 = v277;
      v54 = v275;
      v283 = 0;
      v2 = v276;
    }

    else
    {
      v283 = 0;
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v2 = v276;
      v53 = v278;
      v56 = v277;
      v54 = v275;
    }
  }

  else
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v81 = v2[4];
  v82 = v2[5];
  v83 = v281;
  v56(v281, v54, v53);
  swift_storeEnumTagMultiPayload();
  v298 = v81;
  v299 = v82;
  v284 = xmmword_1D728CF30;
  v286 = xmmword_1D728CF30;
  LOBYTE(v287) = 0;
  v84 = v282;
  v85 = &v282[*(v285 + 11)];
  v87 = *v85;
  v86 = *(v85 + 1);
  LOBYTE(v297) = 0;
  v88 = swift_allocObject();
  v274 = &v260;
  *(v88 + 16) = v284;
  *(v88 + 32) = v297;
  *(v88 + 40) = v87;
  *(v88 + 48) = v86;
  MEMORY[0x1EEE9AC00](v88, v89);
  v273 = &v260 - 6;
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D6708A74;
  v259 = v90;
  LOBYTE(v297) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v284;
  *(v91 + 32) = v297;
  v262 = v87;
  *(v91 + 40) = v87;
  *(v91 + 48) = v86;
  sub_1D66CBB08(0);
  v93 = v92;
  v94 = sub_1D5B58B84(&qword_1EDF03598, sub_1D66CBB08, MEMORY[0x1E69E6F60]);
  v261 = v86;
  swift_retain_n();
  v264 = v93;
  v263 = v94;
  v95 = sub_1D72647CC();
  LOBYTE(v297) = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  *(v96 + 24) = v284;
  *(v96 + 40) = v297;
  v97 = (v84 + *(v285 + 9));
  v98 = v97[3];
  v99 = v97[4];
  v100 = __swift_project_boxed_opaque_existential_1(v97, v98);
  MEMORY[0x1EEE9AC00](v100, v101);
  MEMORY[0x1EEE9AC00](v102, v103);
  v104 = v273;
  *(&v260 - 4) = sub_1D615B4A4;
  *(&v260 - 3) = v104;
  v258 = sub_1D6708A74;
  v259 = v91;
  v105 = v283;
  sub_1D5D2BC70(v83, sub_1D615B49C, v106, sub_1D615B4A4, (&v260 - 6), v98, v99);
  if (v105)
  {
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v80 = v84;
    return sub_1D5D2CFE8(v80, sub_1D66CBA74);
  }

  v285 = v97;

  sub_1D72647EC();
  sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);

  v109 = v276;
  swift_beginAccess();
  v110 = v109[6];
  v111 = qword_1EDF31ED0;

  if (v111 != -1)
  {
    swift_once();
  }

  v112 = v278;
  v113 = __swift_project_value_buffer(v278, qword_1EDFFCD50);
  v114 = v272;
  v115 = v277;
  v277(v272, v113, v112);
  swift_storeEnumTagMultiPayload();
  if (*(v110 + 16))
  {
    v283 = v110;
    LOBYTE(v286) = 0;
    v116 = swift_allocObject();
    v284 = xmmword_1D7297410;
    *(v116 + 16) = xmmword_1D7297410;
    *(v116 + 32) = v286;
    *(v116 + 40) = v262;
    *(v116 + 48) = v261;

    v117 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v117;
    *(v118 + 24) = v284;
    *(v118 + 40) = v286;
    v119 = v285[3];
    v120 = v285[4];
    v121 = __swift_project_boxed_opaque_existential_1(v285, v119);
    MEMORY[0x1EEE9AC00](v121, v122);
    MEMORY[0x1EEE9AC00](v123, v124);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708A74;
    v259 = v116;
    v126 = sub_1D5D2F7A4(v114, sub_1D615B49C, v125, sub_1D615B4A4, (&v260 - 6), v119, v120);
    v127 = v126;

    if (v127)
    {
      v286 = v284;
      LOBYTE(v287) = 0;
      v297 = v283;
      sub_1D5C34D84(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D668E23C();
      sub_1D72647EC();
      v112 = v278;
      v115 = v277;
      v128 = v272;

      sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);

      v112 = v278;
      v115 = v277;
    }
  }

  else
  {
    sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
  }

  v129 = v270;
  v130 = v275;
  v115(v270, v275, v112);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  v115(v129, v130, v112);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  v131 = v276;
  swift_beginAccess();
  v132 = v131[11];
  v115(v271, v130, v112);
  swift_storeEnumTagMultiPayload();
  if (((v132 >> 59) & 0x1E | (v132 >> 2) & 1) == 0x16 && v132 == 0xB000000000000000)
  {
    sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
    v133 = v269;
    v134 = v115;
    v135 = v278;
    v136 = v276;
  }

  else
  {
    LOBYTE(v286) = 0;
    v150 = swift_allocObject();
    v284 = xmmword_1D72BAA80;
    *(v150 + 16) = xmmword_1D72BAA80;
    *(v150 + 32) = v286;
    *(v150 + 40) = v262;
    *(v150 + 48) = v261;

    sub_1D5C82CD8(v132);
    v283 = v132;
    v151 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = v151;
    *(v152 + 24) = v284;
    *(v152 + 40) = v286;
    v153 = v285[3];
    v154 = v285[4];
    v155 = __swift_project_boxed_opaque_existential_1(v285, v153);
    MEMORY[0x1EEE9AC00](v155, v156);
    MEMORY[0x1EEE9AC00](v157, v158);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708A74;
    v259 = v150;
    v160 = sub_1D5D2F7A4(v271, sub_1D615B49C, v159, sub_1D615B4A4, (&v260 - 6), v153, v154);
    v161 = v160;
    v162 = v283;

    if (v161)
    {
      v286 = v284;
      LOBYTE(v287) = 0;
      v296 = v162;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v135 = v278;
      v163 = v277;
      v164 = v271;
      sub_1D5C92A8C(v296);
      sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
      v136 = v276;
      v133 = v269;
      v134 = v163;
    }

    else
    {
      sub_1D5C92A8C(v162);
      sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
      v136 = v276;
      v135 = v278;
      v134 = v277;
      v133 = v269;
    }
  }

  swift_beginAccess();
  v137 = v136[12];
  v134(v133, v275, v135);
  swift_storeEnumTagMultiPayload();
  if (*(v137 + 16))
  {
    LOBYTE(v286) = 0;
    v138 = swift_allocObject();
    v284 = xmmword_1D72BAA90;
    *(v138 + 16) = xmmword_1D72BAA90;
    *(v138 + 32) = v286;
    *(v138 + 40) = v262;
    *(v138 + 48) = v261;

    v139 = v133;
    v140 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v141 = swift_allocObject();
    v283 = v137;
    *(v141 + 16) = v140;
    *(v141 + 24) = v284;
    *(v141 + 40) = v286;
    v142 = v285[3];
    v143 = v285[4];
    v144 = __swift_project_boxed_opaque_existential_1(v285, v142);
    MEMORY[0x1EEE9AC00](v144, v145);
    MEMORY[0x1EEE9AC00](v146, v147);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708A74;
    v259 = v138;
    v149 = sub_1D5D2F7A4(v139, sub_1D615B49C, v148, sub_1D615B4A4, (&v260 - 6), v142, v143);
    v165 = v283;
    v166 = v149;

    if (v166)
    {
      v286 = v284;
      LOBYTE(v287) = 0;
      v295 = v165;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v135 = v278;
      v134 = v277;

      sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);
      v136 = v276;
    }

    else
    {
      sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);

      v136 = v276;
      v135 = v278;
      v134 = v277;
    }
  }

  else
  {
    sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
  }

  swift_beginAccess();
  v167 = v136[13];
  v168 = v268;
  v134(v268, v275, v135);
  v169 = v167;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v286) = 0;
  v170 = swift_allocObject();
  v284 = xmmword_1D72BAAA0;
  *(v170 + 16) = xmmword_1D72BAAA0;
  *(v170 + 32) = v286;
  *(v170 + 40) = v262;
  *(v170 + 48) = v261;

  v171 = sub_1D72647CC();
  LOBYTE(v286) = 0;
  v172 = swift_allocObject();
  *(v172 + 16) = v171;
  *(v172 + 24) = v284;
  *(v172 + 40) = v286;
  v173 = v285[3];
  v174 = v285[4];
  v175 = __swift_project_boxed_opaque_existential_1(v285, v173);
  MEMORY[0x1EEE9AC00](v175, v176);
  MEMORY[0x1EEE9AC00](v177, v178);
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D6708A74;
  v259 = v170;
  LOBYTE(v173) = sub_1D5D2F7A4(v168, sub_1D615B49C, v179, sub_1D615B4A4, (&v260 - 6), v173, v174);

  if (v173)
  {
    v286 = v284;
    LOBYTE(v287) = 0;
    v294 = v169;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();
    v180 = v278;
    v181 = v277;
    v182 = v268;

    sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);

    v180 = v278;
    v181 = v277;
  }

  v183 = v276;
  swift_beginAccess();
  LODWORD(v284) = *(v183 + 112);
  sub_1D5B58478(0);
  v185 = *(v184 + 48);
  v186 = v267;
  v187 = &v267[*(v184 + 64)];
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v283 = 0;
  v188 = __swift_project_value_buffer(v180, qword_1EDFFCD98);
  v181(v186, v188, v180);
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v189 = __swift_project_value_buffer(v180, qword_1EDFFCE50);
  v181(v186 + v185, v189, v180);
  *v187 = 0;
  *(v187 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  if (!v284)
  {
    goto LABEL_49;
  }

  LOBYTE(v286) = 0;
  v190 = swift_allocObject();
  v284 = xmmword_1D72BAAB0;
  *(v190 + 16) = xmmword_1D72BAAB0;
  *(v190 + 32) = v286;
  *(v190 + 40) = v262;
  *(v190 + 48) = v261;

  v191 = sub_1D72647CC();
  LOBYTE(v286) = 0;
  v192 = swift_allocObject();
  *(v192 + 16) = v191;
  *(v192 + 24) = v284;
  *(v192 + 40) = v286;
  v193 = v285[3];
  v194 = v285[4];
  v195 = __swift_project_boxed_opaque_existential_1(v285, v193);
  MEMORY[0x1EEE9AC00](v195, v196);
  MEMORY[0x1EEE9AC00](v197, v198);
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D6708A74;
  v259 = v190;
  v199 = v283;
  v201 = sub_1D5D2F7A4(v186, sub_1D615B49C, v200, sub_1D615B4A4, (&v260 - 6), v193, v194);
  v283 = v199;
  if (!v199)
  {
    v202 = v201;

    if ((v202 & 1) == 0)
    {
      v204 = v84;
      sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
      v180 = v278;
LABEL_50:
      v205 = v276;
      swift_beginAccess();
      v207 = v205[15];
      v206 = v205[16];
      v208 = *(v205 + 136);
      v209 = v266;
      v277(v266, v189, v180);
      swift_storeEnumTagMultiPayload();
      if (v208)
      {
        sub_1D5C75A4C(v207, v206, 1);

        sub_1D5D2F2C8(v207, v206, 1);
        sub_1D5D2F2C8(0, 0, 0);
        v210 = v285;
      }

      else
      {
        sub_1D5D2F2C8(v207, v206, 0);
        sub_1D5D2F2C8(0, 0, 0);
        v210 = v285;
        if ((v207 & 1) == 0)
        {
          sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);
          goto LABEL_60;
        }
      }

      LODWORD(v281) = v208;
      LOBYTE(v286) = 0;
      v211 = swift_allocObject();
      v284 = xmmword_1D72BAAC0;
      *(v211 + 16) = xmmword_1D72BAAC0;
      *(v211 + 32) = v286;
      *(v211 + 40) = v262;
      *(v211 + 48) = v261;

      v212 = v204;
      v213 = sub_1D72647CC();
      LOBYTE(v286) = 0;
      v214 = swift_allocObject();
      *(v214 + 16) = v213;
      *(v214 + 24) = v284;
      *(v214 + 40) = v286;
      v215 = v210;
      v216 = v210[3];
      v217 = v210[4];
      v218 = __swift_project_boxed_opaque_existential_1(v215, v216);
      MEMORY[0x1EEE9AC00](v218, v219);
      MEMORY[0x1EEE9AC00](v220, v221);
      *(&v260 - 4) = sub_1D5B4AA6C;
      *(&v260 - 3) = 0;
      v258 = sub_1D6708A74;
      v259 = v211;
      v222 = v283;
      v224 = sub_1D5D2F7A4(v209, sub_1D615B49C, v223, sub_1D615B4A4, (&v260 - 6), v216, v217);
      if (v222)
      {
        sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);

        sub_1D5D2F2C8(v207, v206, v281);
        v80 = v212;
        return sub_1D5D2CFE8(v80, sub_1D66CBA74);
      }

      v225 = v224;

      if (v225)
      {
        v286 = v284;
        LOBYTE(v287) = 0;
        *&v291 = v207;
        *(&v291 + 1) = v206;
        v292 = v281;
        sub_1D60ED320();
        sub_1D72647EC();
        v180 = v278;
        v283 = 0;
        sub_1D5D2F2C8(v291, *(&v291 + 1), v292);
        sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
        v205 = v276;
      }

      else
      {
        v283 = 0;
        sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2F2C8(v207, v206, v281);
        v205 = v276;
        v180 = v278;
      }

LABEL_60:
      v226 = v205[18];
      v227 = v205[19];
      v228 = v205[21];
      v281 = v205[20];
      v230 = v205[22];
      v229 = v205[23];
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v231 = __swift_project_value_buffer(v180, qword_1EDFFCE38);
      v232 = v180;
      v233 = v265;
      v277(v265, v231, v232);
      swift_storeEnumTagMultiPayload();
      v284 = xmmword_1D72BAAD0;
      v291 = xmmword_1D72BAAD0;
      v292 = 0;
      LOBYTE(v286) = 0;
      v234 = swift_allocObject();
      v236 = v234;
      *(v234 + 16) = v284;
      *(v234 + 32) = v286;
      v237 = v261;
      *(v234 + 40) = v262;
      *(v234 + 48) = v237;
      if (v226)
      {
        v280 = &v260;
        *&v286 = v226;
        *(&v286 + 1) = v227;
        v287 = v281;
        v288 = v228;
        v289 = v230;
        v290 = v229;
        MEMORY[0x1EEE9AC00](v234, v235);
        v278 = v228;
        v279 = &v260 - 6;
        *(&v260 - 4) = sub_1D5B4AA6C;
        *(&v260 - 3) = 0;
        v258 = sub_1D6708A74;
        v259 = v236;
        v300 = 0;
        v239 = v238;
        v240 = swift_allocObject();
        *(v240 + 16) = v284;
        *(v240 + 32) = v300;
        *(v240 + 40) = v262;
        *(v240 + 48) = v237;
        swift_retain_n();
        sub_1D5EB1D80(v226, v227, v239, v278, v230, v229);
        v241 = sub_1D72647CC();
        v300 = 0;
        v242 = swift_allocObject();
        *(v242 + 16) = v241;
        *(v242 + 24) = v284;
        *(v242 + 40) = v300;
        v243 = v285[3];
        v244 = v285[4];
        v245 = __swift_project_boxed_opaque_existential_1(v285, v243);
        MEMORY[0x1EEE9AC00](v245, v246);
        MEMORY[0x1EEE9AC00](v247, v248);
        v249 = v279;
        *(&v260 - 4) = sub_1D615B4A4;
        *(&v260 - 3) = v249;
        v258 = sub_1D6708A74;
        v259 = v240;
        v250 = v265;
        v251 = v283;
        v253 = sub_1D5D2F7A4(v265, sub_1D615B49C, v252, sub_1D615B4A4, (&v260 - 6), v243, v244);
        if (v251)
        {

          v254 = v282;
LABEL_68:
          v256 = v289;

          sub_1D5CBF568(v256);

          sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
LABEL_71:
          v80 = v254;
          return sub_1D5D2CFE8(v80, sub_1D66CBA74);
        }

        v255 = v253;

        if (v255)
        {
          sub_1D6659A24();
          v254 = v282;
          sub_1D72647EC();

          goto LABEL_68;
        }

        v257 = v289;

        sub_1D5CBF568(v257);

        sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);
      }

      v254 = v282;
      goto LABEL_71;
    }

    v286 = v284;
    LOBYTE(v287) = 0;
    v293[0] = 1;
    v203 = v283;
    sub_1D72647EC();
    v283 = v203;
    v180 = v278;
    if (v203)
    {
      sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v84, sub_1D66CBA74);
    }

LABEL_49:
    v204 = v84;
    sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
    goto LABEL_50;
  }

  sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v84, sub_1D66CBA74);
}

uint64_t sub_1D65DFB10(uint64_t a1)
{
  v2 = sub_1D5CC1378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65DFB4C(uint64_t a1)
{
  v2 = sub_1D5CC1378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65DFB88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v3 = a3(255, a1, a2);
  sub_1D72644CC();
  swift_allocObject();
  v4 = sub_1D726270C();
  *v5 = 256;

  return sub_1D5BFCB60(v4, v3);
}

uint64_t sub_1D65DFBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1D7264A5C();
}

uint64_t sub_1D65DFC54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DFB88(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_10);
  *a2 = result;
  return result;
}

uint64_t sub_1D65DFC98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65DFCEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65DFD40()
{
  v1 = 0x696669746E656469;
  v2 = 2019912806;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x6E656D6574617473;
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

uint64_t sub_1D65DFDB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66CBFE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65DFDE8(uint64_t a1)
{
  v2 = sub_1D665A480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65DFE24(uint64_t a1)
{
  v2 = sub_1D665A480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVibrancyEffectStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v44 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v43 = &v42 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v51 = *v1;
  v31 = a1[3];
  v32 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
  v35 = *(*(v33 - 8) + 16);
  v35(v30, v34, v33);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v36 = v53[6];
  sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v31, v32);
  if (v36)
  {
    return sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v38 = v52[3];
  v39 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v38);
  if (v51 > 3)
  {
    if (v51 <= 5)
    {
      v41 = v47;
      v35(v47, v34, v33);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v38, v39);
      sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      goto LABEL_15;
    }

    if (v51 == 6)
    {
      v40 = v49;
      v35(v49, v34, v33);
    }

    else
    {
      v40 = v50;
      v35(v50, v34, v33);
    }
  }

  else if (v51 > 1)
  {
    v40 = v45;
    v35(v45, v34, v33);
  }

  else
  {
    v40 = v43;
    v35(v43, v34, v33);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v38, v39);
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
LABEL_15:
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t FormatVideoEndAction.encode(to:)(void *a1)
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
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD98);
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

uint64_t FormatVideoGravity.encode(to:)(void *a1)
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
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD98);
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

uint64_t FormatVideoNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v406 = &v379 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v383 = &v379 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v382 = &v379 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v384 = &v379 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v386 = &v379 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v385 = &v379 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v387 = &v379 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v388 = &v379 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v391 = &v379 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v392 = &v379 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v393 = &v379 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v394 = &v379 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v395 = &v379 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  *&v405 = &v379 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v379 - v49;
  sub_1D66CD084(0);
  v403 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v379 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_1D5E197B4(0);
  v58 = v57;
  v59 = sub_1D5B58B84(&qword_1EDF0C3A0, sub_1D5E197B4, &unk_1D7321584);
  v404 = v54;
  sub_1D5D2EE70(v4, v58, v60, v55, v4, v58, &type metadata for FormatVersions.AzdenE, v56, v54, v59, &off_1F51F6C18);
  swift_beginAccess();
  v62 = v2[2];
  v61 = v2[3];
  v401 = v2;
  v63 = qword_1EDF31EE8;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD98);
  v66 = *(v64 - 1);
  v67 = *(v66 + 16);
  v68 = v66 + 16;
  v402 = v64;
  v67(v50, v65, v64);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v406;
  v396 = v62;
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
  v398 = v67;
  v399 = v69;
  v400 = v68;
  v397 = v65;
  if (v72 != 1)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_9;
  }

  v390 = v61;
  sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v73 = v403;
  v74 = v404;
  v75 = &v404[*(v403 + 11)];
  v77 = *v75;
  v76 = *(v75 + 1);
  v78 = v50;
  LOBYTE(v423) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  *(v79 + 32) = v423;
  *(v79 + 40) = v77;
  *(v79 + 48) = v76;
  sub_1D5E19778(0);
  v81 = v80;
  sub_1D5B58B84(&qword_1EC87F8F8, sub_1D5E19778, MEMORY[0x1E69E6F60]);

  v389 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v423) = 0;
  v83 = swift_allocObject();
  *(v83 + 24) = 0;
  *(v83 + 32) = 0;
  *(v83 + 16) = v82;
  *(v83 + 40) = v423;
  v84 = (v74 + *(v73 + 9));
  v85 = v84[3];
  v86 = v84[4];
  v87 = __swift_project_boxed_opaque_existential_1(v84, v85);
  *&v406 = &v379;
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v379 - 4) = sub_1D5B4AA6C;
  *(&v379 - 3) = 0;
  v377 = sub_1D66CD118;
  v378 = v79;
  v91 = v430;
  v93 = sub_1D5D2F7A4(v78, sub_1D615B49C, v92, sub_1D615B4A4, (&v379 - 6), v85, v86);
  v430 = v91;
  if (v91)
  {
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    v94 = v74;
    return sub_1D5D2CFE8(v94, sub_1D66CD084);
  }

  v122 = v93;

  if ((v122 & 1) == 0)
  {
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

    v67 = v398;
    v65 = v397;
    goto LABEL_9;
  }

  v423 = 0uLL;
  LOBYTE(v424) = 0;
  *&v414 = v396;
  *(&v414 + 1) = v390;
  v123 = v404;
  v124 = v430;
  sub_1D72647EC();

  sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  v67 = v398;
  v65 = v397;
  if (!v124)
  {
    v430 = 0;
LABEL_9:
    v96 = v401[4];
    v67(v405, v65, v402);
    swift_storeEnumTagMultiPayload();
    *&v414 = v96;
    v406 = xmmword_1D728CF30;
    v423 = xmmword_1D728CF30;
    LOBYTE(v424) = 0;
    v97 = v403;
    v98 = v404;
    v99 = &v404[*(v403 + 11)];
    v101 = *v99;
    v100 = *(v99 + 1);
    LOBYTE(v407) = 0;
    v102 = swift_allocObject();
    v396 = &v379;
    *(v102 + 16) = v406;
    *(v102 + 32) = v407;
    *(v102 + 40) = v101;
    *(v102 + 48) = v100;
    MEMORY[0x1EEE9AC00](v102, v103);
    *(&v379 - 4) = sub_1D5B4AA6C;
    *(&v379 - 3) = 0;
    v377 = sub_1D6708C18;
    v378 = v104;
    LOBYTE(v407) = 0;
    v105 = swift_allocObject();
    *(v105 + 16) = v406;
    *(v105 + 32) = v407;
    v380 = v101;
    *(v105 + 40) = v101;
    *(v105 + 48) = v100;
    sub_1D5E19778(0);
    v107 = v106;
    v108 = sub_1D5B58B84(&qword_1EC87F8F8, sub_1D5E19778, MEMORY[0x1E69E6F60]);
    v381 = v100;
    swift_retain_n();
    v389 = v107;
    v390 = v108;
    v109 = sub_1D72647CC();
    LOBYTE(v407) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v406;
    *(v110 + 40) = v407;
    v111 = v98;
    v112 = (v98 + *(v97 + 9));
    v113 = v112[3];
    v114 = v112[4];
    v115 = __swift_project_boxed_opaque_existential_1(v112, v113);
    MEMORY[0x1EEE9AC00](v115, v116);
    MEMORY[0x1EEE9AC00](v117, v118);
    *(&v379 - 4) = sub_1D615B4A4;
    *(&v379 - 3) = (&v379 - 6);
    v119 = v405;
    v377 = sub_1D6708C18;
    v378 = v105;
    v120 = v430;
    sub_1D5D2BC70(v405, sub_1D615B49C, v121, sub_1D615B4A4, (&v379 - 6), v113, v114);
    if (v120)
    {
      sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

      v94 = v111;
      return sub_1D5D2CFE8(v94, sub_1D66CD084);
    }

    *&v406 = v112;

    sub_1D5CA1E90();
    sub_1D72647EC();
    v430 = 0;
    sub_1D5D2CFE8(v405, type metadata accessor for FormatVersionRequirement);

    v125 = v401[5];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v126 = v402;
    v127 = __swift_project_value_buffer(v402, qword_1EDFFCD68);
    v128 = v395;
    v129 = v398;
    v398(v395, v127, v126);
    swift_storeEnumTagMultiPayload();
    v405 = xmmword_1D7297410;
    v423 = xmmword_1D7297410;
    LOBYTE(v424) = 0;
    LOBYTE(v414) = 0;
    v130 = swift_allocObject();
    v132 = v130;
    *(v130 + 16) = v405;
    *(v130 + 32) = v414;
    v133 = v380;
    v134 = v381;
    *(v130 + 40) = v380;
    *(v130 + 48) = v134;
    if (v125)
    {
      v403 = &v379;
      *&v414 = v125;
      MEMORY[0x1EEE9AC00](v130, v131);
      *(&v379 - 4) = sub_1D5B4AA6C;
      *(&v379 - 3) = 0;
      v377 = sub_1D6708C18;
      v378 = v132;
      LOBYTE(v407) = 0;
      v135 = swift_allocObject();
      *(v135 + 16) = v405;
      *(v135 + 32) = v407;
      *(v135 + 40) = v133;
      *(v135 + 48) = v134;
      swift_retain_n();

      v136 = sub_1D72647CC();
      LOBYTE(v407) = 0;
      v137 = swift_allocObject();
      *(v137 + 16) = v136;
      *(v137 + 24) = v405;
      *(v137 + 40) = v407;
      v138 = *(v406 + 24);
      v139 = *(v406 + 32);
      v140 = __swift_project_boxed_opaque_existential_1(v406, v138);
      MEMORY[0x1EEE9AC00](v140, v141);
      MEMORY[0x1EEE9AC00](v142, v143);
      *(&v379 - 4) = sub_1D615B4A4;
      *(&v379 - 3) = (&v379 - 6);
      v377 = sub_1D6708C18;
      v378 = v135;
      v144 = v430;
      v146 = sub_1D5D2F7A4(v128, sub_1D615B49C, v145, sub_1D615B4A4, (&v379 - 6), v138, v139);
      if (v144)
      {

        v147 = v404;

        sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
        v94 = v147;
        return sub_1D5D2CFE8(v94, sub_1D66CD084);
      }

      v149 = v146;

      if (v149)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v148 = v401;
        v129 = v398;
        v133 = v380;
        v430 = 0;
      }

      else
      {
        v430 = 0;

        v148 = v401;
        v129 = v398;
        v133 = v380;
      }
    }

    else
    {

      v148 = v401;
    }

    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v150 = v148[6];
    v151 = v148;
    v152 = v394;
    v153 = v129;
    v129(v394, v397, v402);
    swift_storeEnumTagMultiPayload();
    if (*(v150 + 16))
    {
      LOBYTE(v423) = 0;
      v154 = swift_allocObject();
      v405 = xmmword_1D72BAA60;
      *(v154 + 16) = xmmword_1D72BAA60;
      *(v154 + 32) = v423;
      *(v154 + 40) = v133;
      *(v154 + 48) = v381;

      v74 = v404;
      v155 = sub_1D72647CC();
      LOBYTE(v423) = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = v155;
      *(v156 + 24) = v405;
      *(v156 + 40) = v423;
      v157 = *(v406 + 24);
      v158 = *(v406 + 32);
      v159 = __swift_project_boxed_opaque_existential_1(v406, v157);
      MEMORY[0x1EEE9AC00](v159, v160);
      MEMORY[0x1EEE9AC00](v161, v162);
      *(&v379 - 4) = sub_1D5B4AA6C;
      *(&v379 - 3) = 0;
      v377 = sub_1D6708C18;
      v378 = v154;
      v163 = v430;
      v165 = sub_1D5D2F7A4(v152, sub_1D615B49C, v164, sub_1D615B4A4, (&v379 - 6), v157, v158);
      if (v163)
      {
        sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);

LABEL_29:
        v94 = v74;
        return sub_1D5D2CFE8(v94, sub_1D66CD084);
      }

      v168 = v165;

      if (v168)
      {
        v423 = v405;
        LOBYTE(v424) = 0;
        *&v414 = v150;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v166 = v401;
        v169 = v398;
        v133 = v380;
        v430 = 0;

        sub_1D5D2CFE8(v394, type metadata accessor for FormatVersionRequirement);
        v167 = v381;
        v153 = v169;
      }

      else
      {
        v430 = 0;
        sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);

        v166 = v401;
        v153 = v398;
        v133 = v380;
        v167 = v381;
      }
    }

    else
    {
      sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);
      v166 = v151;
      v167 = v381;
    }

    v170 = v166[7];
    v171 = v393;
    v153(v393, v397, v402);
    swift_storeEnumTagMultiPayload();
    v405 = xmmword_1D72BAA70;
    v423 = xmmword_1D72BAA70;
    LOBYTE(v424) = 0;
    LOBYTE(v414) = 0;
    v172 = swift_allocObject();
    v174 = v172;
    *(v172 + 16) = v405;
    *(v172 + 32) = v414;
    *(v172 + 40) = v133;
    *(v172 + 48) = v167;
    if (v170)
    {
      v403 = &v379;
      *&v414 = v170;
      MEMORY[0x1EEE9AC00](v172, v173);
      v175 = v133;
      *(&v379 - 4) = sub_1D5B4AA6C;
      *(&v379 - 3) = 0;
      v377 = sub_1D6708C18;
      v378 = v174;
      LOBYTE(v407) = 0;
      v176 = swift_allocObject();
      *(v176 + 16) = v405;
      *(v176 + 32) = v407;
      *(v176 + 40) = v175;
      *(v176 + 48) = v167;
      swift_retain_n();

      v177 = sub_1D72647CC();
      LOBYTE(v407) = 0;
      v178 = swift_allocObject();
      *(v178 + 16) = v177;
      *(v178 + 24) = v405;
      *(v178 + 40) = v407;
      v179 = *(v406 + 24);
      v180 = *(v406 + 32);
      v181 = __swift_project_boxed_opaque_existential_1(v406, v179);
      MEMORY[0x1EEE9AC00](v181, v182);
      MEMORY[0x1EEE9AC00](v183, v184);
      *(&v379 - 4) = sub_1D615B4A4;
      *(&v379 - 3) = (&v379 - 6);
      v377 = sub_1D6708C18;
      v378 = v176;
      v185 = v430;
      v187 = sub_1D5D2F7A4(v171, sub_1D615B49C, v186, sub_1D615B4A4, (&v379 - 6), v179, v180);
      v430 = v185;
      if (v185)
      {

        v188 = v404;
LABEL_37:
        v189 = v171;
LABEL_50:
        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
        v94 = v188;
        return sub_1D5D2CFE8(v94, sub_1D66CD084);
      }

      v190 = v187;

      if (v190)
      {
        type metadata accessor for FormatVideoNodeStyle();
        sub_1D5B58B84(&qword_1EC887770, type metadata accessor for FormatVideoNodeStyle, &protocol conformance descriptor for FormatVideoNodeStyle);
        v188 = v404;
        v191 = v430;
        sub_1D72647EC();
        v153 = v398;
        v133 = v380;
        v430 = v191;
        if (v191)
        {

          v171 = v393;
          goto LABEL_37;
        }
      }

      else
      {

        v153 = v398;
        v133 = v380;
      }
    }

    else
    {
    }

    v192 = v153;

    sub_1D5D2CFE8(v393, type metadata accessor for FormatVersionRequirement);
    v193 = v401[8];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v194 = v402;
    v195 = __swift_project_value_buffer(v402, qword_1EDFFCD50);
    v196 = v392;
    v192(v392, v195, v194);
    swift_storeEnumTagMultiPayload();
    v405 = xmmword_1D72BAA80;
    v423 = xmmword_1D72BAA80;
    LOBYTE(v424) = 0;
    LOBYTE(v414) = 0;
    v197 = swift_allocObject();
    v199 = v197;
    *(v197 + 16) = v405;
    *(v197 + 32) = v414;
    *(v197 + 40) = v133;
    v200 = v133;
    v201 = v381;
    *(v197 + 48) = v381;
    v396 = v195;
    if (v193)
    {
      v403 = &v379;
      *&v414 = v193;
      MEMORY[0x1EEE9AC00](v197, v198);
      *(&v379 - 4) = sub_1D5B4AA6C;
      *(&v379 - 3) = 0;
      v377 = sub_1D6708C18;
      v378 = v199;
      LOBYTE(v407) = 0;
      v202 = swift_allocObject();
      *(v202 + 16) = v405;
      *(v202 + 32) = v407;
      *(v202 + 40) = v133;
      *(v202 + 48) = v201;
      swift_retain_n();

      v203 = sub_1D72647CC();
      LOBYTE(v407) = 0;
      v204 = swift_allocObject();
      *(v204 + 16) = v203;
      *(v204 + 24) = v405;
      *(v204 + 40) = v407;
      v205 = *(v406 + 24);
      v206 = *(v406 + 32);
      v207 = __swift_project_boxed_opaque_existential_1(v406, v205);
      MEMORY[0x1EEE9AC00](v207, v208);
      MEMORY[0x1EEE9AC00](v209, v210);
      *(&v379 - 4) = sub_1D615B4A4;
      *(&v379 - 3) = (&v379 - 6);
      v377 = sub_1D6708C18;
      v378 = v202;
      v211 = v430;
      v213 = sub_1D5D2F7A4(v196, sub_1D615B49C, v212, sub_1D615B4A4, (&v379 - 6), v205, v206);
      v430 = v211;
      if (v211)
      {

        v188 = v404;
LABEL_49:
        v189 = v196;
        goto LABEL_50;
      }

      v214 = v213;

      if (v214)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
        v188 = v404;
        v215 = v430;
        sub_1D72647EC();
        v192 = v398;
        v200 = v380;
        v430 = v215;
        if (v215)
        {

          v196 = v392;
          goto LABEL_49;
        }

        v201 = v381;
      }

      else
      {

        v192 = v398;
        v200 = v380;
        v201 = v381;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v392, type metadata accessor for FormatVersionRequirement);
    v216 = v401[9];
    v192(v391, v397, v402);
    swift_storeEnumTagMultiPayload();
    *&v414 = v216;
    v405 = xmmword_1D72BAA90;
    v423 = xmmword_1D72BAA90;
    LOBYTE(v424) = 0;
    LOBYTE(v407) = 0;
    v217 = swift_allocObject();
    v403 = &v379;
    *(v217 + 16) = v405;
    *(v217 + 32) = v407;
    *(v217 + 40) = v200;
    *(v217 + 48) = v201;
    MEMORY[0x1EEE9AC00](v217, v218);
    *(&v379 - 4) = sub_1D5B4AA6C;
    *(&v379 - 3) = 0;
    v377 = sub_1D6708C18;
    v378 = v219;
    LOBYTE(v407) = 0;
    v220 = swift_allocObject();
    *(v220 + 16) = v405;
    *(v220 + 32) = v407;
    *(v220 + 40) = v200;
    *(v220 + 48) = v201;
    swift_retain_n();
    v221 = v404;
    v222 = sub_1D72647CC();
    LOBYTE(v407) = 0;
    v223 = swift_allocObject();
    *(v223 + 16) = v222;
    *(v223 + 24) = v405;
    *(v223 + 40) = v407;
    v224 = *(v406 + 24);
    v225 = *(v406 + 32);
    v226 = __swift_project_boxed_opaque_existential_1(v406, v224);
    MEMORY[0x1EEE9AC00](v226, v227);
    MEMORY[0x1EEE9AC00](v228, v229);
    *(&v379 - 4) = sub_1D615B4A4;
    *(&v379 - 3) = (&v379 - 6);
    v230 = v391;
    v377 = sub_1D6708C18;
    v378 = v220;
    v231 = v430;
    sub_1D5D2BC70(v391, sub_1D615B49C, v232, sub_1D615B4A4, (&v379 - 6), v224, v225);
    if (v231)
    {
      sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);

      v74 = v221;
      goto LABEL_29;
    }

    sub_1D5B57B50();
    sub_1D72647EC();
    v74 = v221;
    v430 = 0;
    sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);

    v233 = v401;
    swift_beginAccess();
    v234 = v233[10];
    v235 = v388;
    v236 = v398;
    v398(v388, v397, v402);
    swift_storeEnumTagMultiPayload();
    if (v234)
    {
      LOBYTE(v423) = 0;
      v237 = swift_allocObject();
      v405 = xmmword_1D72BAAA0;
      *(v237 + 16) = xmmword_1D72BAAA0;
      *(v237 + 32) = v423;
      *(v237 + 40) = v380;
      *(v237 + 48) = v381;

      v238 = sub_1D72647CC();
      LOBYTE(v423) = 0;
      v239 = swift_allocObject();
      *(v239 + 16) = v238;
      *(v239 + 24) = v405;
      *(v239 + 40) = v423;
      v240 = *(v406 + 24);
      v241 = *(v406 + 32);
      v242 = __swift_project_boxed_opaque_existential_1(v406, v240);
      v403 = &v379;
      MEMORY[0x1EEE9AC00](v242, v243);
      MEMORY[0x1EEE9AC00](v244, v245);
      *(&v379 - 4) = sub_1D5B4AA6C;
      *(&v379 - 3) = 0;
      v377 = sub_1D6708C18;
      v378 = v237;
      v246 = v430;
      v248 = sub_1D5D2F7A4(v235, sub_1D615B49C, v247, sub_1D615B4A4, (&v379 - 6), v240, v241);
      if (v246)
      {
        sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);

        goto LABEL_29;
      }

      v249 = v248;

      if (v249)
      {
        v423 = v405;
        LOBYTE(v424) = 0;
        *&v414 = v234;
        sub_1D72647EC();
      }

      v430 = 0;
      sub_1D5D2CFE8(v388, type metadata accessor for FormatVersionRequirement);
      v233 = v401;
      v236 = v398;
    }

    else
    {
      sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);
    }

    v250 = v381;
    v251 = v387;
    v252 = v396;
    swift_beginAccess();
    v253 = v233[11];
    v236(v251, v252, v402);
    swift_storeEnumTagMultiPayload();
    if (v253 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v423) = 0;
      v254 = swift_allocObject();
      v405 = xmmword_1D72BAAB0;
      *(v254 + 16) = xmmword_1D72BAAB0;
      *(v254 + 32) = v423;
      *(v254 + 40) = v380;
      *(v254 + 48) = v250;

      sub_1D5EB1500(v253);
      v255 = sub_1D72647CC();
      LOBYTE(v423) = 0;
      v256 = v251;
      v257 = swift_allocObject();
      *(v257 + 16) = v255;
      *(v257 + 24) = v405;
      *(v257 + 40) = v423;
      v258 = *(v406 + 24);
      v259 = *(v406 + 32);
      v260 = __swift_project_boxed_opaque_existential_1(v406, v258);
      MEMORY[0x1EEE9AC00](v260, v261);
      MEMORY[0x1EEE9AC00](v262, v263);
      *(&v379 - 4) = sub_1D5B4AA6C;
      *(&v379 - 3) = 0;
      v377 = sub_1D6708C18;
      v378 = v254;
      v264 = v430;
      v266 = sub_1D5D2F7A4(v256, sub_1D615B49C, v265, sub_1D615B4A4, (&v379 - 6), v258, v259);
      if (v264)
      {

        sub_1D5EB15C4(v253);
        sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);
        goto LABEL_29;
      }

      v267 = v266;
      v430 = 0;

      if (v267)
      {
        v423 = v405;
        LOBYTE(v424) = 0;
        *&v414 = v253;
        sub_1D5DF6A60();
        v268 = v430;
        sub_1D72647EC();
        if (v268)
        {
          sub_1D5EB15C4(v414);
          v269 = v387;
LABEL_85:
          sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);
          v94 = v404;
          return sub_1D5D2CFE8(v94, sub_1D66CD084);
        }

        sub_1D5EB15C4(v414);
        sub_1D5D2CFE8(v387, type metadata accessor for FormatVersionRequirement);
        v430 = 0;
        v74 = v404;
      }

      else
      {
        sub_1D5EB15C4(v253);
        sub_1D5D2CFE8(v387, type metadata accessor for FormatVersionRequirement);
      }

      v233 = v401;
      v236 = v398;
    }

    v270 = v380;
    swift_beginAccess();
    v271 = *(v233 + 96);
    v272 = v402;
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v273 = __swift_project_value_buffer(v272, qword_1EDFFCD00);
    v274 = v385;
    v236(v385, v273, v272);
    swift_storeEnumTagMultiPayload();
    if (v271)
    {
      sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
      goto LABEL_89;
    }

    LOBYTE(v423) = 0;
    v275 = swift_allocObject();
    v405 = xmmword_1D72BAAC0;
    *(v275 + 16) = xmmword_1D72BAAC0;
    *(v275 + 32) = v423;
    *(v275 + 40) = v270;
    *(v275 + 48) = v381;

    v276 = sub_1D72647CC();
    LOBYTE(v423) = 0;
    v277 = swift_allocObject();
    *(v277 + 16) = v276;
    *(v277 + 24) = v405;
    *(v277 + 40) = v423;
    v278 = *(v406 + 24);
    v279 = *(v406 + 32);
    v280 = __swift_project_boxed_opaque_existential_1(v406, v278);
    MEMORY[0x1EEE9AC00](v280, v281);
    MEMORY[0x1EEE9AC00](v282, v283);
    *(&v379 - 4) = sub_1D5B4AA6C;
    *(&v379 - 3) = 0;
    v377 = sub_1D6708C18;
    v378 = v275;
    v284 = v430;
    v286 = sub_1D5D2F7A4(v274, sub_1D615B49C, v285, sub_1D615B4A4, (&v379 - 6), v278, v279);
    v430 = v284;
    if (v284)
    {
      sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);

      goto LABEL_6;
    }

    v287 = v286;

    if (v287)
    {
      v423 = v405;
      LOBYTE(v424) = 0;
      LOBYTE(v414) = 0;
      v288 = v430;
      sub_1D72647EC();
      if (v288)
      {
        v269 = v385;
        goto LABEL_85;
      }

      sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);
      v430 = 0;
    }

    else
    {
      sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);
    }

    v233 = v401;
    v272 = v402;
    v236 = v398;
    v270 = v380;
LABEL_89:
    v289 = v233[13];
    v290 = *(v233 + 112);
    v236(v386, v397, v272);
    swift_storeEnumTagMultiPayload();
    v405 = xmmword_1D72BAAD0;
    v423 = xmmword_1D72BAAD0;
    LOBYTE(v424) = 0;
    LOBYTE(v414) = 0;
    v291 = swift_allocObject();
    v293 = v291;
    *(v291 + 16) = v405;
    *(v291 + 32) = v414;
    v294 = v381;
    *(v291 + 40) = v270;
    *(v291 + 48) = v294;
    if (v290 <= 0xFD)
    {
      *&v414 = v289;
      BYTE8(v414) = v290;
      MEMORY[0x1EEE9AC00](v291, v292);
      *(&v379 - 4) = sub_1D5B4AA6C;
      *(&v379 - 3) = 0;
      v377 = sub_1D6708C18;
      v378 = v293;
      LOBYTE(v407) = 0;
      v295 = swift_allocObject();
      *(v295 + 16) = v405;
      *(v295 + 32) = v407;
      *(v295 + 40) = v270;
      *(v295 + 48) = v294;
      swift_retain_n();
      v296 = sub_1D72647CC();
      LOBYTE(v407) = 0;
      v297 = swift_allocObject();
      *(v297 + 16) = v296;
      *(v297 + 24) = v405;
      *(v297 + 40) = v407;
      v298 = *(v406 + 24);
      v299 = *(v406 + 32);
      v300 = __swift_project_boxed_opaque_existential_1(v406, v298);
      MEMORY[0x1EEE9AC00](v300, v301);
      MEMORY[0x1EEE9AC00](v302, v303);
      *(&v379 - 4) = sub_1D615B4A4;
      *(&v379 - 3) = (&v379 - 6);
      v377 = sub_1D6708C18;
      v378 = v295;
      v304 = v430;
      v306 = sub_1D5D2F7A4(v386, sub_1D615B49C, v305, sub_1D615B4A4, (&v379 - 6), v298, v299);
      v430 = v304;
      if (v304)
      {
        sub_1D5D2CFE8(v386, type metadata accessor for FormatVersionRequirement);

LABEL_125:
        v94 = v404;
        return sub_1D5D2CFE8(v94, sub_1D66CD084);
      }

      v307 = v306;

      if (v307)
      {
        sub_1D5F8F434();
        v308 = v430;
        sub_1D72647EC();
        v430 = v308;
        if (v308)
        {
          v309 = v386;
LABEL_120:
          sub_1D5D2CFE8(v309, type metadata accessor for FormatVersionRequirement);

          goto LABEL_125;
        }
      }

      v236 = v398;
    }

    else
    {
    }

    v310 = v384;
    sub_1D5D2CFE8(v386, type metadata accessor for FormatVersionRequirement);

    v311 = v401;
    swift_beginAccess();
    v312 = v311[15];
    v236(v310, v397, v402);
    swift_storeEnumTagMultiPayload();
    if (*(v312 + 16))
    {
      LOBYTE(v423) = 0;
      v313 = swift_allocObject();
      v405 = xmmword_1D72BAAE0;
      *(v313 + 16) = xmmword_1D72BAAE0;
      *(v313 + 32) = v423;
      *(v313 + 40) = v380;
      *(v313 + 48) = v381;

      v314 = sub_1D72647CC();
      LOBYTE(v423) = 0;
      v315 = swift_allocObject();
      *(v315 + 16) = v314;
      *(v315 + 24) = v405;
      *(v315 + 40) = v423;
      v316 = *(v406 + 24);
      v317 = *(v406 + 32);
      v318 = __swift_project_boxed_opaque_existential_1(v406, v316);
      MEMORY[0x1EEE9AC00](v318, v319);
      MEMORY[0x1EEE9AC00](v320, v321);
      *(&v379 - 4) = sub_1D5B4AA6C;
      *(&v379 - 3) = 0;
      v377 = sub_1D6708C18;
      v378 = v313;
      v322 = v430;
      v324 = sub_1D5D2F7A4(v310, sub_1D615B49C, v323, sub_1D615B4A4, (&v379 - 6), v316, v317);
      v430 = v322;
      if (v322)
      {

LABEL_100:
        sub_1D5D2CFE8(v384, type metadata accessor for FormatVersionRequirement);
        goto LABEL_125;
      }

      v325 = v324;

      if (v325)
      {
        v326 = v430;
        sub_1D5E08824(v312, v404, 0xB, 0, 0);
        v430 = v326;
        if (v326)
        {

          goto LABEL_100;
        }
      }

      v310 = v384;
    }

    sub_1D5D2CFE8(v310, type metadata accessor for FormatVersionRequirement);
    v327 = *(v401 + 13);
    v427 = *(v401 + 12);
    v428 = v327;
    v429 = *(v401 + 224);
    v328 = *(v401 + 9);
    v423 = *(v401 + 8);
    v424 = v328;
    v329 = *(v401 + 11);
    v425 = *(v401 + 10);
    v426 = v329;
    v330 = v382;
    v398(v382, v397, v402);
    swift_storeEnumTagMultiPayload();
    v405 = xmmword_1D72BAAF0;
    v421 = xmmword_1D72BAAF0;
    v422 = 0;
    LOBYTE(v414) = 0;
    v331 = swift_allocObject();
    v333 = v331;
    *(v331 + 16) = v405;
    *(v331 + 32) = v414;
    v334 = v381;
    *(v331 + 40) = v380;
    *(v331 + 48) = v334;
    if (BYTE8(v424) == 254)
    {

      sub_1D5D2CFE8(v330, type metadata accessor for FormatVersionRequirement);

LABEL_114:
      v349 = v401[29];
      v350 = v401[30];
      v351 = v401[31];
      v352 = v401[32];
      v353 = v401[33];
      v354 = v401[34];
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v355 = v402;
      v356 = __swift_project_value_buffer(v402, qword_1EDFFCE38);
      v398(v383, v356, v355);
      swift_storeEnumTagMultiPayload();
      v405 = xmmword_1D7282A80;
      v407 = xmmword_1D7282A80;
      LOBYTE(v408) = 0;
      LOBYTE(v414) = 0;
      v357 = swift_allocObject();
      v359 = v357;
      *(v357 + 16) = v405;
      *(v357 + 32) = v414;
      v360 = v381;
      *(v357 + 40) = v380;
      *(v357 + 48) = v360;
      if (v349)
      {
        v403 = &v379;
        *&v414 = v349;
        *(&v414 + 1) = v350;
        *&v415 = v351;
        *(&v415 + 1) = v352;
        *&v416 = v353;
        *(&v416 + 1) = v354;
        MEMORY[0x1EEE9AC00](v357, v358);
        v402 = &v379 - 6;
        *(&v379 - 4) = sub_1D5B4AA6C;
        *(&v379 - 3) = 0;
        v377 = sub_1D6708C18;
        v378 = v359;
        LOBYTE(v421) = 0;
        v361 = swift_allocObject();
        *(v361 + 16) = v405;
        *(v361 + 32) = v421;
        *(v361 + 40) = v380;
        *(v361 + 48) = v381;
        swift_retain_n();
        sub_1D5EB1D80(v349, v350, v351, v352, v353, v354);
        v362 = sub_1D72647CC();
        LOBYTE(v421) = 0;
        v363 = swift_allocObject();
        *(v363 + 16) = v362;
        *(v363 + 24) = v405;
        *(v363 + 40) = v421;
        v364 = *(v406 + 24);
        v365 = *(v406 + 32);
        v366 = __swift_project_boxed_opaque_existential_1(v406, v364);
        MEMORY[0x1EEE9AC00](v366, v367);
        MEMORY[0x1EEE9AC00](v368, v369);
        v370 = v402;
        *(&v379 - 4) = sub_1D615B4A4;
        *(&v379 - 3) = v370;
        v377 = sub_1D6708C18;
        v378 = v361;
        v371 = v430;
        v373 = sub_1D5D2F7A4(v383, sub_1D615B49C, v372, sub_1D615B4A4, (&v379 - 6), v364, v365);
        v430 = v371;
        if (v371)
        {
        }

        else
        {
          v374 = v373;

          if (v374)
          {
            sub_1D6659A24();
            v375 = v430;
            sub_1D72647EC();
            v430 = v375;
          }
        }

        v376 = v416;

        sub_1D5CBF568(v376);

        sub_1D5D2CFE8(v383, type metadata accessor for FormatVersionRequirement);
        goto LABEL_125;
      }

      v309 = v383;
      goto LABEL_120;
    }

    v420 = v429;
    v418 = v427;
    v419 = v428;
    v414 = v423;
    v415 = v424;
    v416 = v425;
    v417 = v426;
    MEMORY[0x1EEE9AC00](v331, v332);
    *(&v379 - 4) = sub_1D5B4AA6C;
    *(&v379 - 3) = 0;
    v377 = sub_1D6708C18;
    v378 = v333;
    LOBYTE(v407) = 0;
    v335 = swift_allocObject();
    *(v335 + 16) = v405;
    *(v335 + 32) = v407;
    *(v335 + 40) = v380;
    *(v335 + 48) = v334;
    swift_retain_n();
    sub_1D5D355B8(&v423, &v407, &qword_1EC8854C8, &type metadata for FormatVideoProperties, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v336 = sub_1D72647CC();
    LOBYTE(v407) = 0;
    v337 = swift_allocObject();
    *(v337 + 16) = v336;
    *(v337 + 24) = v405;
    *(v337 + 40) = v407;
    v338 = *(v406 + 24);
    v339 = *(v406 + 32);
    v340 = __swift_project_boxed_opaque_existential_1(v406, v338);
    MEMORY[0x1EEE9AC00](v340, v341);
    MEMORY[0x1EEE9AC00](v342, v343);
    *(&v379 - 4) = sub_1D615B4A4;
    *(&v379 - 3) = (&v379 - 6);
    v377 = sub_1D6708C18;
    v378 = v335;
    v344 = v430;
    v346 = sub_1D5D2F7A4(v330, sub_1D615B49C, v345, sub_1D615B4A4, (&v379 - 6), v338, v339);
    v430 = v344;
    if (v344)
    {

      v411 = v418;
      v412 = v419;
      v413 = v420;
      v407 = v414;
      v408 = v415;
      v409 = v416;
      v410 = v417;
      sub_1D62B61EC(&v407);
    }

    else
    {
      v347 = v346;

      if ((v347 & 1) == 0 || (sub_1D618A574(), v348 = v430, sub_1D72647EC(), (v430 = v348) == 0))
      {

        v411 = v418;
        v412 = v419;
        v413 = v420;
        v407 = v414;
        v408 = v415;
        v409 = v416;
        v410 = v417;
        sub_1D62B61EC(&v407);
        sub_1D5D2CFE8(v382, type metadata accessor for FormatVersionRequirement);
        goto LABEL_114;
      }

      v411 = v418;
      v412 = v419;
      v413 = v420;
      v407 = v414;
      v408 = v415;
      v409 = v416;
      v410 = v417;
      sub_1D62B61EC(&v407);
    }

    sub_1D5D2CFE8(v382, type metadata accessor for FormatVersionRequirement);
    goto LABEL_125;
  }

  return sub_1D5D2CFE8(v123, sub_1D66CD084);
}

unint64_t sub_1D65E4474(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0x656C797473;
      break;
    case 5:
      result = 0x6F6974616D696E61;
      break;
    case 6:
      result = 0x746E65746E6F63;
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
      result = 0x69747265706F7270;
      break;
    case 13:
      result = 2019912806;
      break;
    case 14:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65E4608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66CD1FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65E4640(uint64_t a1)
{
  v2 = sub_1D5E1988C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65E467C(uint64_t a1)
{
  v2 = sub_1D5E1988C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVideoNodeBinding, &type metadata for FormatCodingKeys, v17, v14, &type metadata for FormatVideoNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v15, v10, v16, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD98);
  (*(*(v18 - 8) + 16))(v6, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6398828(v11, v12, v13, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t sub_1D65E49E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65E4AC8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65E4B9C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65E4C80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664124(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65E4CB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x65746F6D6572;
  v5 = 0xED00006563616672;
  v6 = 0x65746E4972657375;
  v7 = 0xE700000000000000;
  v8 = 0x676E69646E6962;
  if (v2 != 3)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x686374697773;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatVideoNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v319 = &v296 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v300 = &v296 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v302 = &v296 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v303 = &v296 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v305 = &v296 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v304 = &v296 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v306 = &v296 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v307 = &v296 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v308 = &v296 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v317 = (&v296 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v296 - v37;
  sub_1D66CE11C(0);
  *&v318 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v296 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_1D66CE244(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EC8877B0, sub_1D66CE244, &unk_1D7321584);
  v346 = v42;
  sub_1D5D2EE70(v4, v46, v48, v43, v4, v46, &type metadata for FormatVersions.AzdenE, v44, v42, v47, &off_1F51F6C18);
  swift_beginAccess();
  v50 = v2[2];
  v49 = v2[3];
  v315 = v2;
  v51 = qword_1EDF31EE8;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD98);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v316 = v52;
  v55(v38, v53, v52);
  v57 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v319;
  v310 = v50;
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
  v311 = v55;
  v312 = v56;
  v313 = v53;
  v314 = v57;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v319, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v81 = v316;
    goto LABEL_8;
  }

  v309 = v49;
  sub_1D5D35558(v319, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v61 = v318;
  v62 = v346;
  v63 = &v346[*(v318 + 44)];
  v64 = v38;
  v66 = *v63;
  v65 = *(v63 + 1);
  LOBYTE(v335) = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = v335;
  *(v67 + 40) = v66;
  *(v67 + 48) = v65;
  sub_1D66CE1B0(0);
  sub_1D5B58B84(&qword_1EC8877B8, sub_1D66CE1B0, MEMORY[0x1E69E6F60]);

  v68 = sub_1D72647CC();
  LOBYTE(v335) = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v335;
  v70 = (v62 + *(v61 + 36));
  v71 = v70[3];
  v72 = v70[4];
  v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
  *&v319 = &v296;
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v296 - 4) = sub_1D5B4AA6C;
  *(&v296 - 3) = 0;
  v294 = sub_1D66CE3C4;
  v295 = v67;
  v77 = v320;
  v79 = sub_1D5D2F7A4(v64, sub_1D615B49C, v78, sub_1D615B4A4, (&v296 - 6), v71, v72);
  *&v320 = v77;
  if (v77)
  {
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v62, sub_1D66CE11C);
  }

  v113 = v79;

  if ((v113 & 1) == 0)
  {
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

    v55 = v311;
    v53 = v313;
    goto LABEL_7;
  }

  v114 = v316;
  v335 = 0uLL;
  LOBYTE(v336) = 0;
  *&v327 = v310;
  *(&v327 + 1) = v309;
  v115 = v346;
  v116 = v320;
  sub_1D72647EC();

  sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
  v53 = v313;
  if (v116)
  {
LABEL_39:
    v112 = v115;
    return sub_1D5D2CFE8(v112, sub_1D66CE11C);
  }

  *&v320 = 0;
  v81 = v114;
  v55 = v311;
LABEL_8:
  v82 = v315[4];
  v83 = v315[5];
  v84 = v317;
  v55(v317, v53, v81);
  swift_storeEnumTagMultiPayload();
  *&v327 = v82;
  *(&v327 + 1) = v83;
  v319 = xmmword_1D728CF30;
  v335 = xmmword_1D728CF30;
  LOBYTE(v336) = 0;
  v85 = v318;
  v86 = v346;
  v87 = &v346[*(v318 + 44)];
  v89 = *v87;
  v88 = *(v87 + 1);
  LOBYTE(v321) = 0;
  v90 = swift_allocObject();
  v310 = &v296;
  *(v90 + 16) = v319;
  *(v90 + 32) = v321;
  *(v90 + 40) = v89;
  *(v90 + 48) = v88;
  MEMORY[0x1EEE9AC00](v90, v91);
  v309 = &v296 - 6;
  *(&v296 - 4) = sub_1D5B4AA6C;
  *(&v296 - 3) = 0;
  v294 = sub_1D6708C1C;
  v295 = v92;
  LOBYTE(v321) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v319;
  *(v93 + 32) = v321;
  v298 = v89;
  *(v93 + 40) = v89;
  *(v93 + 48) = v88;
  sub_1D66CE1B0(0);
  v95 = v94;
  v96 = sub_1D5B58B84(&qword_1EC8877B8, sub_1D66CE1B0, MEMORY[0x1E69E6F60]);
  v297 = v88;
  swift_retain_n();
  v299 = v95;
  v301 = v96;
  v97 = sub_1D72647CC();
  LOBYTE(v321) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v319;
  *(v98 + 40) = v321;
  v99 = *(v85 + 36);
  v100 = v86;
  v101 = &v86[v99];
  v102 = v84;
  v103 = *(v101 + 3);
  v104 = *(v101 + 4);
  v105 = __swift_project_boxed_opaque_existential_1(v101, v103);
  MEMORY[0x1EEE9AC00](v105, v106);
  MEMORY[0x1EEE9AC00](v107, v108);
  v109 = v309;
  *(&v296 - 4) = sub_1D615B4A4;
  *(&v296 - 3) = v109;
  v294 = sub_1D6708C1C;
  v295 = v93;
  v110 = v320;
  sub_1D5D2BC70(v102, sub_1D615B49C, v111, sub_1D615B4A4, (&v296 - 6), v103, v104);
  if (!v110)
  {
    *&v319 = v101;

    sub_1D72647EC();
    sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);

    v117 = v315;
    swift_beginAccess();
    v118 = v117[6];
    v119 = v308;
    v120 = v313;
    v121 = v311;
    v311(v308, v313, v316);
    swift_storeEnumTagMultiPayload();
    *&v318 = v118;
    if (*(v118 + 16))
    {
      LOBYTE(v335) = 0;
      v122 = swift_allocObject();
      v320 = xmmword_1D7297410;
      *(v122 + 16) = xmmword_1D7297410;
      *(v122 + 32) = v335;
      *(v122 + 40) = v298;
      *(v122 + 48) = v297;

      v123 = sub_1D72647CC();
      LOBYTE(v335) = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = v123;
      *(v124 + 24) = v320;
      *(v124 + 40) = v335;
      v125 = *(v319 + 24);
      v126 = *(v319 + 32);
      v127 = __swift_project_boxed_opaque_existential_1(v319, v125);
      MEMORY[0x1EEE9AC00](v127, v128);
      MEMORY[0x1EEE9AC00](v129, v130);
      *(&v296 - 4) = sub_1D5B4AA6C;
      *(&v296 - 3) = 0;
      v294 = sub_1D6708C1C;
      v295 = v122;
      v132 = sub_1D5D2F7A4(v119, sub_1D615B49C, v131, sub_1D615B4A4, (&v296 - 6), v125, v126);
      v134 = v132;
      v135 = v318;

      if (v134)
      {
        v335 = v320;
        LOBYTE(v336) = 0;
        *&v327 = v135;
        sub_1D5C34D84(0, &qword_1EC8877C0, &type metadata for FormatVideoNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D66CE454();
        sub_1D72647EC();
        v117 = v315;
        v133 = v311;
        v120 = v313;
        *&v320 = 0;

        sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v320 = 0;
        sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);

        v117 = v315;
        v133 = v311;
        v120 = v313;
      }
    }

    else
    {
      *&v320 = 0;
      sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);
      v133 = v121;
    }

    v136 = v117[7];
    v137 = v316;
    v133(v307, v120, v316);
    swift_storeEnumTagMultiPayload();
    v318 = xmmword_1D72BAA60;
    v335 = xmmword_1D72BAA60;
    LOBYTE(v336) = 0;
    LOBYTE(v327) = 0;
    v138 = swift_allocObject();
    v140 = v138;
    *(v138 + 16) = v318;
    *(v138 + 32) = v327;
    v141 = v297;
    v142 = v298;
    *(v138 + 40) = v298;
    *(v138 + 48) = v141;
    if (v136)
    {
      v317 = &v296;
      *&v327 = v136;
      MEMORY[0x1EEE9AC00](v138, v139);
      *(&v296 - 4) = sub_1D5B4AA6C;
      *(&v296 - 3) = 0;
      v294 = sub_1D6708C1C;
      v295 = v140;
      LOBYTE(v321) = 0;
      v143 = swift_allocObject();
      *(v143 + 16) = v318;
      *(v143 + 32) = v321;
      *(v143 + 40) = v142;
      *(v143 + 48) = v141;
      swift_retain_n();

      v144 = sub_1D72647CC();
      LOBYTE(v321) = 0;
      v145 = swift_allocObject();
      *(v145 + 16) = v144;
      *(v145 + 24) = v318;
      *(v145 + 40) = v321;
      v146 = *(v319 + 24);
      v147 = *(v319 + 32);
      v148 = __swift_project_boxed_opaque_existential_1(v319, v146);
      MEMORY[0x1EEE9AC00](v148, v149);
      MEMORY[0x1EEE9AC00](v150, v151);
      *(&v296 - 4) = sub_1D615B4A4;
      *(&v296 - 3) = (&v296 - 6);
      v294 = sub_1D6708C1C;
      v295 = v143;
      v152 = v307;
      v153 = v320;
      v155 = sub_1D5D2F7A4(v307, sub_1D615B49C, v154, sub_1D615B4A4, (&v296 - 6), v146, v147);
      if (v153)
      {

        v115 = v346;

LABEL_37:
        v184 = v152;
        goto LABEL_38;
      }

      v158 = v155;

      v157 = v306;
      if (v158)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v117 = v315;
        v133 = v311;
        *&v320 = 0;
        v159 = v313;

        sub_1D5D2CFE8(v307, type metadata accessor for FormatVersionRequirement);
        v156 = v159;
        v137 = v316;
        v141 = v297;
      }

      else
      {
        *&v320 = 0;

        sub_1D5D2CFE8(v307, type metadata accessor for FormatVersionRequirement);
        v117 = v315;
        v137 = v316;
        v133 = v311;
        v141 = v297;
        v156 = v313;
      }
    }

    else
    {

      sub_1D5D2CFE8(v307, type metadata accessor for FormatVersionRequirement);

      v156 = v313;
      v157 = v306;
    }

    v160 = v117[8];
    v133(v157, v156, v137);
    swift_storeEnumTagMultiPayload();
    v318 = xmmword_1D72BAA70;
    v335 = xmmword_1D72BAA70;
    LOBYTE(v336) = 0;
    LOBYTE(v327) = 0;
    v161 = swift_allocObject();
    v163 = v161;
    *(v161 + 16) = v318;
    *(v161 + 32) = v327;
    v164 = v298;
    *(v161 + 40) = v298;
    *(v161 + 48) = v141;
    if ((~v160 & 0xF000000000000007) != 0)
    {
      v317 = &v296;
      *&v327 = v160;
      MEMORY[0x1EEE9AC00](v161, v162);
      *(&v296 - 4) = sub_1D5B4AA6C;
      *(&v296 - 3) = 0;
      v294 = sub_1D6708C1C;
      v295 = v163;
      LOBYTE(v321) = 0;
      v152 = v185;
      v186 = swift_allocObject();
      *(v186 + 16) = v318;
      *(v186 + 32) = v321;
      *(v186 + 40) = v164;
      *(v186 + 48) = v141;
      swift_retain_n();
      sub_1D5D04BD4(v160);
      v187 = sub_1D72647CC();
      LOBYTE(v321) = 0;
      v188 = swift_allocObject();
      *(v188 + 16) = v187;
      *(v188 + 24) = v318;
      *(v188 + 40) = v321;
      v189 = *(v319 + 24);
      v190 = *(v319 + 32);
      v191 = __swift_project_boxed_opaque_existential_1(v319, v189);
      MEMORY[0x1EEE9AC00](v191, v192);
      MEMORY[0x1EEE9AC00](v193, v194);
      *(&v296 - 4) = sub_1D615B4A4;
      *(&v296 - 3) = (&v296 - 6);
      v294 = sub_1D6708C1C;
      v295 = v186;
      v195 = v320;
      v197 = sub_1D5D2F7A4(v152, sub_1D615B49C, v196, sub_1D615B4A4, (&v296 - 6), v189, v190);
      if (v195)
      {

        v115 = v346;

        goto LABEL_37;
      }

      v199 = v197;

      if (v199)
      {
        sub_1D5D4A808();
        sub_1D72647EC();
        v117 = v315;
        v133 = v311;
        v165 = v313;
        *&v320 = 0;

        v137 = v316;
        v141 = v297;
LABEL_32:
        sub_1D5D2CFE8(v306, type metadata accessor for FormatVersionRequirement);
        v166 = v117[9];
        v167 = v304;
        v133(v304, v165, v137);
        swift_storeEnumTagMultiPayload();
        v318 = xmmword_1D72BAA80;
        v335 = xmmword_1D72BAA80;
        LOBYTE(v336) = 0;
        LOBYTE(v327) = 0;
        v168 = swift_allocObject();
        v170 = v168;
        *(v168 + 16) = v318;
        *(v168 + 32) = v327;
        v171 = v298;
        *(v168 + 40) = v298;
        *(v168 + 48) = v141;
        if (v166)
        {
          v317 = &v296;
          *&v327 = v166;
          MEMORY[0x1EEE9AC00](v168, v169);
          *(&v296 - 4) = sub_1D5B4AA6C;
          *(&v296 - 3) = 0;
          v294 = sub_1D6708C1C;
          v295 = v170;
          LOBYTE(v321) = 0;
          v172 = swift_allocObject();
          *(v172 + 16) = v318;
          *(v172 + 32) = v321;
          *(v172 + 40) = v171;
          *(v172 + 48) = v141;
          swift_retain_n();

          v173 = sub_1D72647CC();
          LOBYTE(v321) = 0;
          v174 = swift_allocObject();
          *(v174 + 16) = v173;
          *(v174 + 24) = v318;
          *(v174 + 40) = v321;
          *&v318 = v166;
          v175 = *(v319 + 24);
          v176 = *(v319 + 32);
          v177 = __swift_project_boxed_opaque_existential_1(v319, v175);
          MEMORY[0x1EEE9AC00](v177, v178);
          MEMORY[0x1EEE9AC00](v179, v180);
          *(&v296 - 4) = sub_1D615B4A4;
          *(&v296 - 3) = (&v296 - 6);
          v294 = sub_1D6708C1C;
          v295 = v172;
          v181 = v320;
          v183 = sub_1D5D2F7A4(v167, sub_1D615B49C, v182, sub_1D615B4A4, (&v296 - 6), v175, v176);
          if (v181)
          {

            v115 = v346;
            v184 = v167;
LABEL_38:
            sub_1D5D2CFE8(v184, type metadata accessor for FormatVersionRequirement);
            goto LABEL_39;
          }

          v200 = v183;

          if (v200)
          {
            sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
            sub_1D66612AC();
            sub_1D72647EC();
          }

          *&v320 = 0;

          sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
          v198 = v316;
          v141 = v297;
        }

        else
        {
          v198 = v137;

          sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
        }

        v201 = v315;
        v202 = v315[10];
        v203 = v315[11];
        v204 = *(v315 + 96);
        v311(v305, v313, v198);
        swift_storeEnumTagMultiPayload();
        v318 = xmmword_1D72BAA90;
        v344 = xmmword_1D72BAA90;
        v345 = 0;
        LOBYTE(v335) = 0;
        v205 = swift_allocObject();
        v207 = v205;
        *(v205 + 16) = v318;
        *(v205 + 32) = v335;
        v208 = v298;
        *(v205 + 40) = v298;
        *(v205 + 48) = v141;
        if (v204 <= 0xFD)
        {
          v317 = &v296;
          v341 = v202;
          v342 = v203;
          v343 = v204;
          MEMORY[0x1EEE9AC00](v205, v206);
          v310 = &v296 - 6;
          *(&v296 - 4) = sub_1D5B4AA6C;
          *(&v296 - 3) = 0;
          v294 = sub_1D6708C1C;
          v295 = v207;
          LOBYTE(v335) = 0;
          v238 = swift_allocObject();
          *(v238 + 16) = v318;
          *(v238 + 32) = v335;
          *(v238 + 40) = v208;
          *(v238 + 48) = v141;
          swift_retain_n();
          sub_1D5ED34B0(v202, v203, v204);
          v239 = sub_1D72647CC();
          LOBYTE(v335) = 0;
          v240 = swift_allocObject();
          *(v240 + 16) = v239;
          *(v240 + 24) = v318;
          *(v240 + 40) = v335;
          v241 = *(v319 + 24);
          v242 = *(v319 + 32);
          v243 = __swift_project_boxed_opaque_existential_1(v319, v241);
          MEMORY[0x1EEE9AC00](v243, v244);
          MEMORY[0x1EEE9AC00](v245, v246);
          v247 = v310;
          *(&v296 - 4) = sub_1D615B4A4;
          *(&v296 - 3) = v247;
          v294 = sub_1D6708C1C;
          v295 = v238;
          v248 = v305;
          v249 = v320;
          v251 = sub_1D5D2F7A4(v305, sub_1D615B49C, v250, sub_1D615B4A4, (&v296 - 6), v241, v242);
          v210 = v249;
          if (v249)
          {

            v115 = v346;
            sub_1D5ED34A0(v341, v342, v343);
            v184 = v248;
            goto LABEL_38;
          }

          v276 = v251;

          if (v276)
          {
            sub_1D6661258();
            sub_1D72647EC();
            v201 = v315;
            v277 = v303;
            v213 = v313;
            v293 = v311;

            sub_1D5ED34A0(v341, v342, v343);
            sub_1D5D2CFE8(v305, type metadata accessor for FormatVersionRequirement);
            v209 = v297;
            v211 = v293;
            v212 = v277;
LABEL_49:
            v214 = *(v201 + 19);
            v337 = *(v201 + 17);
            v338 = v214;
            v339 = *(v201 + 21);
            v340 = *(v201 + 184);
            v215 = *(v201 + 15);
            v335 = *(v201 + 13);
            v336 = v215;
            v216 = v211;
            v211(v212, v213, v316);
            swift_storeEnumTagMultiPayload();
            v320 = xmmword_1D72BAAA0;
            v333 = xmmword_1D72BAAA0;
            v334 = 0;
            LOBYTE(v327) = 0;
            v217 = swift_allocObject();
            v219 = v217;
            *(v217 + 16) = v320;
            *(v217 + 32) = v327;
            v220 = v298;
            *(v217 + 40) = v298;
            *(v217 + 48) = v209;
            if (v340 == 254)
            {
              *&v320 = v210;

              v221 = v209;
            }

            else
            {
              *&v318 = &v296;
              v329 = v337;
              v330 = v338;
              v331 = v339;
              v332 = v340;
              v327 = v335;
              v328 = v336;
              MEMORY[0x1EEE9AC00](v217, v218);
              *(&v296 - 4) = sub_1D5B4AA6C;
              *(&v296 - 3) = 0;
              v294 = sub_1D6708C1C;
              v295 = v219;
              LOBYTE(v321) = 0;
              v252 = swift_allocObject();
              *(v252 + 16) = v320;
              *(v252 + 32) = v321;
              *(v252 + 40) = v220;
              *(v252 + 48) = v209;
              swift_retain_n();
              sub_1D5D355B8(&v335, &v321, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
              v253 = sub_1D72647CC();
              LOBYTE(v321) = 0;
              v254 = swift_allocObject();
              *(v254 + 16) = v253;
              *(v254 + 24) = v320;
              *(v254 + 40) = v321;
              v255 = *(v319 + 24);
              v256 = *(v319 + 32);
              v257 = __swift_project_boxed_opaque_existential_1(v319, v255);
              MEMORY[0x1EEE9AC00](v257, v258);
              MEMORY[0x1EEE9AC00](v259, v260);
              *(&v296 - 4) = sub_1D615B4A4;
              *(&v296 - 3) = (&v296 - 6);
              v294 = sub_1D6708C1C;
              v295 = v252;
              v262 = sub_1D5D2F7A4(v303, sub_1D615B49C, v261, sub_1D615B4A4, (&v296 - 6), v255, v256);
              if (v210)
              {

                v323 = v329;
                v324 = v330;
                v325 = v331;
                v326 = v332;
                v321 = v327;
                v322 = v328;
                sub_1D601144C(&v321);
                v115 = v346;
                v184 = v303;
                goto LABEL_38;
              }

              v290 = v262;

              if (v290)
              {
                sub_1D6661204();
                sub_1D72647EC();
                v201 = v315;
                v216 = v311;
                v213 = v313;
                *&v320 = 0;

                v323 = v329;
                v324 = v330;
                v325 = v331;
                v326 = v332;
                v321 = v327;
                v322 = v328;
                sub_1D601144C(&v321);
                v221 = v297;
              }

              else
              {
                *&v320 = 0;

                v323 = v329;
                v324 = v330;
                v325 = v331;
                v326 = v332;
                v321 = v327;
                v322 = v328;
                sub_1D601144C(&v321);
                v201 = v315;
                v216 = v311;
                v221 = v297;
                v213 = v313;
              }
            }

            sub_1D5D2CFE8(v303, type metadata accessor for FormatVersionRequirement);
            v222 = v201[24];
            v223 = v302;
            v216(v302, v213, v316);
            swift_storeEnumTagMultiPayload();
            v318 = xmmword_1D72BAAB0;
            v327 = xmmword_1D72BAAB0;
            LOBYTE(v328) = 0;
            LOBYTE(v321) = 0;
            v224 = swift_allocObject();
            v226 = v224;
            *(v224 + 16) = v318;
            *(v224 + 32) = v321;
            v227 = v298;
            *(v224 + 40) = v298;
            *(v224 + 48) = v221;
            if ((~v222 & 0xF000000000000007) != 0)
            {
              v317 = &v296;
              *&v321 = v222;
              MEMORY[0x1EEE9AC00](v224, v225);
              *(&v296 - 4) = sub_1D5B4AA6C;
              *(&v296 - 3) = 0;
              v294 = sub_1D6708C1C;
              v295 = v226;
              LOBYTE(v333) = 0;
              v263 = swift_allocObject();
              *(v263 + 16) = v318;
              *(v263 + 32) = v333;
              *(v263 + 40) = v227;
              *(v263 + 48) = v221;
              swift_retain_n();
              sub_1D5CFCFAC(v222);
              v264 = sub_1D72647CC();
              LOBYTE(v333) = 0;
              v265 = swift_allocObject();
              *(v265 + 16) = v264;
              *(v265 + 24) = v318;
              *(v265 + 40) = v333;
              v266 = *(v319 + 24);
              v267 = *(v319 + 32);
              v268 = __swift_project_boxed_opaque_existential_1(v319, v266);
              MEMORY[0x1EEE9AC00](v268, v269);
              MEMORY[0x1EEE9AC00](v270, v271);
              *(&v296 - 4) = sub_1D615B4A4;
              *(&v296 - 3) = (&v296 - 6);
              v294 = sub_1D6708C1C;
              v295 = v263;
              v272 = v320;
              v274 = sub_1D5D2F7A4(v223, sub_1D615B49C, v273, sub_1D615B4A4, (&v296 - 6), v266, v267);
              v228 = v272;
              if (v272)
              {

                v115 = v346;
                v275 = v302;

                v184 = v275;
                goto LABEL_38;
              }

              v291 = v274;

              if (v291)
              {
                sub_1D5B55CBC();
                sub_1D72647EC();
                v223 = v302;

                v229 = v300;
                v201 = v315;
              }

              else
              {

                v229 = v300;
                v201 = v315;
                v223 = v302;
              }
            }

            else
            {

              v228 = v320;
              v229 = v300;
            }

            sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);
            v230 = *(v201 + 200);
            if (qword_1EDF31F08 != -1)
            {
              swift_once();
            }

            v231 = v316;
            v232 = __swift_project_value_buffer(v316, qword_1EDFFCDE0);
            v311(v229, v232, v231);
            swift_storeEnumTagMultiPayload();
            v318 = xmmword_1D72BAAC0;
            v327 = xmmword_1D72BAAC0;
            LOBYTE(v328) = 0;
            LOBYTE(v321) = 0;
            v233 = swift_allocObject();
            v235 = v233;
            *(v233 + 16) = v318;
            *(v233 + 32) = v321;
            v236 = v297;
            v237 = v298;
            *(v233 + 40) = v298;
            *(v233 + 48) = v236;
            if (v230 == 2)
            {

              v115 = v346;
            }

            else
            {
              v317 = &v296;
              LOBYTE(v321) = v230 & 1;
              MEMORY[0x1EEE9AC00](v233, v234);
              *&v320 = v228;
              *(&v296 - 4) = sub_1D5B4AA6C;
              *(&v296 - 3) = 0;
              v294 = sub_1D6708C1C;
              v295 = v235;
              LOBYTE(v333) = 0;
              v278 = swift_allocObject();
              *(v278 + 16) = v318;
              *(v278 + 32) = v333;
              *(v278 + 40) = v237;
              *(v278 + 48) = v236;
              swift_retain_n();
              v279 = sub_1D72647CC();
              LOBYTE(v333) = 0;
              v280 = swift_allocObject();
              *(v280 + 16) = v279;
              *(v280 + 24) = v318;
              *(v280 + 40) = v333;
              v281 = *(v319 + 24);
              v282 = *(v319 + 32);
              v283 = __swift_project_boxed_opaque_existential_1(v319, v281);
              MEMORY[0x1EEE9AC00](v283, v284);
              MEMORY[0x1EEE9AC00](v285, v286);
              *(&v296 - 4) = sub_1D615B4A4;
              *(&v296 - 3) = (&v296 - 6);
              v294 = sub_1D6708C1C;
              v295 = v278;
              v287 = v320;
              v289 = sub_1D5D2F7A4(v229, sub_1D615B49C, v288, sub_1D615B4A4, (&v296 - 6), v281, v282);
              if (v287)
              {
                sub_1D5D2CFE8(v229, type metadata accessor for FormatVersionRequirement);

                v115 = v346;
                goto LABEL_39;
              }

              v292 = v289;

              if (v292)
              {
                v115 = v346;
                sub_1D72647EC();
              }

              else
              {
                v115 = v346;
              }

              v229 = v300;
            }

            sub_1D5D2CFE8(v229, type metadata accessor for FormatVersionRequirement);

            goto LABEL_39;
          }

          sub_1D5ED34A0(v341, v342, v343);
          sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
          v201 = v315;
          v211 = v311;
          v212 = v303;
          v209 = v297;
        }

        else
        {

          sub_1D5D2CFE8(v305, type metadata accessor for FormatVersionRequirement);

          v209 = v141;
          v210 = v320;
          v211 = v311;
          v212 = v303;
        }

        v213 = v313;
        goto LABEL_49;
      }

      *&v320 = 0;

      v117 = v315;
      v137 = v316;
      v133 = v311;
      v141 = v297;
    }

    else
    {
    }

    v165 = v313;
    goto LABEL_32;
  }

  sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);

  v112 = v100;
  return sub_1D5D2CFE8(v112, sub_1D66CE11C);
}

uint64_t sub_1D65E7760(uint64_t a1)
{
  v2 = sub_1D66CE31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65E779C(uint64_t a1)
{
  v2 = sub_1D66CE31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v237 = &v233 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v241 = &v233 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v243 = &v233 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v244 = &v233 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v245 = &v233 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v248 = &v233 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v250 = (&v233 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v233 - v26;
  sub_1D66CE758(0);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v233 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + 8);
  *&v261 = *v1;
  v34 = *(v1 + 24);
  v249 = *(v1 + 16);
  v35 = *(v1 + 32);
  v36 = *(v1 + 40);
  v246 = v34;
  v247 = v35;
  v239 = *(v1 + 48);
  v240 = v36;
  v242 = *(v1 + 56);
  v37 = *(v1 + 112);
  v283 = *(v1 + 96);
  v284 = v37;
  v285 = *(v1 + 128);
  v286 = *(v1 + 144);
  v38 = *(v1 + 80);
  v281 = *(v1 + 64);
  v282 = v38;
  v238 = *(v1 + 152);
  v236 = *(v1 + 160);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1D66CE5D8(0);
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EC887800, sub_1D66CE5D8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatVideoNodeStyle.Selector, v42, v44, v39, &type metadata for FormatVideoNodeStyle.Selector, v42, &type metadata for FormatVersions.AzdenE, v40, v32, v43, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
  v47 = *(v45 - 8);
  v48 = *(v47 + 16);
  v254 = v46;
  v255 = v47 + 16;
  v256 = v45;
  v252 = v48;
  v48(v27);
  v257 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v262 = v261;
  *(&v262 + 1) = v33;
  v268 = 0uLL;
  LOBYTE(v269) = 0;
  v49 = &v32[*(v29 + 44)];
  v51 = *v49;
  v50 = *(v49 + 1);
  *&v261 = v27;
  LOBYTE(v279) = 0;
  v52 = swift_allocObject();
  v260 = &v233;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = v279;
  *(v52 + 40) = v51;
  *(v52 + 48) = v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v233 - 4) = sub_1D5B4AA6C;
  *(&v233 - 3) = 0;
  v231 = sub_1D6708C20;
  v232 = v54;
  LOBYTE(v279) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v279;
  v253 = v51;
  *(v55 + 40) = v51;
  *(v55 + 48) = v50;
  sub_1D66CE7EC(0);
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EC887818, sub_1D66CE7EC, MEMORY[0x1E69E6F60]);
  v251 = v50;
  swift_retain_n();
  v258 = v58;
  v259 = v57;
  v59 = sub_1D72647CC();
  LOBYTE(v279) = 0;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v59;
  *(v60 + 40) = v279;
  v61 = v32;
  v62 = &v32[*(v29 + 36)];
  v63 = *(v62 + 3);
  v64 = *(v62 + 4);
  v65 = __swift_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v233 - 4) = sub_1D615B4A4;
  *(&v233 - 3) = (&v233 - 6);
  v231 = sub_1D6708C20;
  v232 = v55;
  v69 = v261;
  v70 = v287;
  sub_1D5D2BC70(v261, sub_1D615B49C, v71, sub_1D615B4A4, (&v233 - 6), v63, v64);
  if (!v70)
  {
    v287 = v62;

    sub_1D5D3E60C();
    sub_1D72647EC();
    v235 = v61;
    sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);

    v74 = v250;
    v75 = v252;
    v252(v250, v254, v256);
    swift_storeEnumTagMultiPayload();
    v261 = xmmword_1D728CF30;
    v268 = xmmword_1D728CF30;
    LOBYTE(v269) = 0;
    LOBYTE(v262) = 0;
    v76 = swift_allocObject();
    v78 = v76;
    *(v76 + 16) = v261;
    *(v76 + 32) = v262;
    v79 = v253;
    v80 = v251;
    *(v76 + 40) = v253;
    *(v76 + 48) = v80;
    if (v249)
    {
      v260 = &v233;
      *&v262 = v249;
      MEMORY[0x1EEE9AC00](v76, v77);
      v234 = &v233 - 6;
      *(&v233 - 4) = sub_1D5B4AA6C;
      *(&v233 - 3) = 0;
      v231 = sub_1D6708C20;
      v232 = v78;
      LOBYTE(v279) = 0;
      v81 = swift_allocObject();
      *(v81 + 16) = v261;
      *(v81 + 32) = v279;
      *(v81 + 40) = v79;
      *(v81 + 48) = v80;
      swift_retain_n();

      v82 = sub_1D72647CC();
      LOBYTE(v279) = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      *(v83 + 24) = v261;
      *(v83 + 40) = v279;
      v84 = *(v287 + 3);
      v85 = *(v287 + 4);
      v86 = __swift_project_boxed_opaque_existential_1(v287, v84);
      MEMORY[0x1EEE9AC00](v86, v87);
      MEMORY[0x1EEE9AC00](v88, v89);
      v90 = v234;
      *(&v233 - 4) = sub_1D615B4A4;
      *(&v233 - 3) = v90;
      v231 = sub_1D6708C20;
      v232 = v81;
      v92 = sub_1D5D2F7A4(v74, sub_1D615B49C, v91, sub_1D615B4A4, (&v233 - 6), v84, v85);
      v97 = v92;

      if (v97)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v98 = v235;
        sub_1D72647EC();
        v93 = v251;
        v75 = v252;
        v99 = v256;
        v95 = v254;
        v100 = v248;
        v260 = 0;

        sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
        v94 = v99;
        v96 = v98;
        goto LABEL_14;
      }

      v260 = 0;

      sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
      v96 = v235;
      v93 = v251;
      v75 = v252;
      v94 = v256;
      v95 = v254;
    }

    else
    {
      v260 = 0;
      v93 = v80;

      sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

      v94 = v256;
      v95 = v254;
      v96 = v235;
    }

    v100 = v248;
LABEL_14:
    v75(v100, v95, v94);
    swift_storeEnumTagMultiPayload();
    v261 = xmmword_1D7297410;
    v268 = xmmword_1D7297410;
    LOBYTE(v269) = 0;
    LOBYTE(v262) = 0;
    v101 = swift_allocObject();
    v103 = v101;
    *(v101 + 16) = v261;
    *(v101 + 32) = v262;
    v104 = v253;
    *(v101 + 40) = v253;
    *(v101 + 48) = v93;
    v105 = v246;
    if ((~v246 & 0xF000000000000007) != 0)
    {
      v250 = &v233;
      *&v262 = v246;
      MEMORY[0x1EEE9AC00](v101, v102);
      *(&v233 - 4) = sub_1D5B4AA6C;
      *(&v233 - 3) = 0;
      v231 = sub_1D6708C20;
      v232 = v103;
      LOBYTE(v279) = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = v261;
      *(v125 + 32) = v279;
      *(v125 + 40) = v104;
      *(v125 + 48) = v93;
      swift_retain_n();
      sub_1D5D04BD4(v105);
      v126 = sub_1D72647CC();
      LOBYTE(v279) = 0;
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *(v127 + 24) = v261;
      *(v127 + 40) = v279;
      v128 = *(v287 + 3);
      v129 = *(v287 + 4);
      v130 = __swift_project_boxed_opaque_existential_1(v287, v128);
      MEMORY[0x1EEE9AC00](v130, v131);
      MEMORY[0x1EEE9AC00](v132, v133);
      *(&v233 - 4) = sub_1D615B4A4;
      *(&v233 - 3) = (&v233 - 6);
      v231 = sub_1D6708C20;
      v232 = v125;
      v134 = v260;
      v136 = sub_1D5D2F7A4(v100, sub_1D615B49C, v135, sub_1D615B4A4, (&v233 - 6), v128, v129);
      if (v134)
      {

        v96 = v235;

        goto LABEL_42;
      }

      v137 = v136;

      if (v137)
      {
        sub_1D5D4A808();
        v138 = v235;
        sub_1D72647EC();
        v75 = v252;
        v95 = v254;
        v260 = 0;

        v104 = v253;
        v106 = v93;
        v96 = v138;
        v107 = v256;
        v100 = v248;
      }

      else
      {
        v260 = 0;

        v96 = v235;
        v75 = v252;
        v104 = v253;
        v106 = v93;
        v107 = v256;
        v95 = v254;
      }
    }

    else
    {
      v106 = v93;

      v107 = v256;
    }

    sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
    v108 = v245;
    v75(v245, v95, v107);
    swift_storeEnumTagMultiPayload();
    v261 = xmmword_1D72BAA60;
    v268 = xmmword_1D72BAA60;
    LOBYTE(v269) = 0;
    LOBYTE(v262) = 0;
    v109 = swift_allocObject();
    v111 = v109;
    *(v109 + 16) = v261;
    *(v109 + 32) = v262;
    *(v109 + 40) = v104;
    *(v109 + 48) = v106;
    if (v247)
    {
      v250 = &v233;
      *&v262 = v247;
      MEMORY[0x1EEE9AC00](v109, v110);
      *(&v233 - 4) = sub_1D5B4AA6C;
      *(&v233 - 3) = 0;
      v231 = sub_1D6708C20;
      v232 = v111;
      LOBYTE(v279) = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = v261;
      *(v112 + 32) = v279;
      *(v112 + 40) = v104;
      *(v112 + 48) = v106;
      swift_retain_n();

      v113 = sub_1D72647CC();
      LOBYTE(v279) = 0;
      v114 = swift_allocObject();
      *(v114 + 16) = v113;
      *(v114 + 24) = v261;
      *(v114 + 40) = v279;
      v115 = *(v287 + 3);
      v116 = *(v287 + 4);
      v117 = __swift_project_boxed_opaque_existential_1(v287, v115);
      MEMORY[0x1EEE9AC00](v117, v118);
      MEMORY[0x1EEE9AC00](v119, v120);
      *(&v233 - 4) = sub_1D615B4A4;
      *(&v233 - 3) = (&v233 - 6);
      v231 = sub_1D6708C20;
      v232 = v112;
      v121 = v260;
      v123 = sub_1D5D2F7A4(v108, sub_1D615B49C, v122, sub_1D615B4A4, (&v233 - 6), v115, v116);
      if (v121)
      {

        v124 = v235;
        sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
        v72 = v124;
        return sub_1D5D2CFE8(v72, sub_1D66CE758);
      }

      v139 = v123;

      if (v139)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v140 = v235;
        sub_1D72647EC();
        v75 = v252;
        v95 = v254;
        v260 = 0;

        sub_1D5D2CFE8(v245, type metadata accessor for FormatVersionRequirement);
        v104 = v253;
        v106 = v251;
        v96 = v140;
      }

      else
      {
        v260 = 0;

        sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
        v96 = v235;
        v75 = v252;
        v104 = v253;
        v106 = v251;
        v95 = v254;
      }
    }

    else
    {

      sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
    }

    v141 = v95;
    v142 = v256;
    v143 = v75;
    v75(v244, v141, v256);
    swift_storeEnumTagMultiPayload();
    v261 = xmmword_1D72BAA70;
    v279 = xmmword_1D72BAA70;
    v280 = 0;
    LOBYTE(v268) = 0;
    v144 = swift_allocObject();
    v146 = v144;
    *(v144 + 16) = v261;
    *(v144 + 32) = v268;
    *(v144 + 40) = v104;
    *(v144 + 48) = v106;
    if (v242 > 0xFD)
    {

      sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);

      goto LABEL_30;
    }

    v250 = &v233;
    v169 = v239;
    v168 = v240;
    v276 = v240;
    v277 = v239;
    v278 = v242;
    MEMORY[0x1EEE9AC00](v144, v145);
    v249 = &v233 - 6;
    *(&v233 - 4) = sub_1D5B4AA6C;
    *(&v233 - 3) = 0;
    v231 = sub_1D6708C20;
    v232 = v146;
    LOBYTE(v268) = 0;
    v170 = v106;
    v172 = v171;
    v173 = swift_allocObject();
    *(v173 + 16) = v261;
    *(v173 + 32) = v268;
    *(v173 + 40) = v104;
    *(v173 + 48) = v170;
    swift_retain_n();
    sub_1D5ED34B0(v168, v169, v172);
    v174 = sub_1D72647CC();
    LOBYTE(v268) = 0;
    v175 = swift_allocObject();
    *(v175 + 16) = v174;
    *(v175 + 24) = v261;
    *(v175 + 40) = v268;
    v176 = *(v287 + 3);
    v177 = *(v287 + 4);
    v178 = __swift_project_boxed_opaque_existential_1(v287, v176);
    MEMORY[0x1EEE9AC00](v178, v179);
    MEMORY[0x1EEE9AC00](v180, v181);
    v182 = v249;
    *(&v233 - 4) = sub_1D615B4A4;
    *(&v233 - 3) = v182;
    v231 = sub_1D6708C20;
    v232 = v173;
    v100 = v244;
    v183 = v260;
    v185 = sub_1D5D2F7A4(v244, sub_1D615B49C, v184, sub_1D615B4A4, (&v233 - 6), v176, v177);
    if (!v183)
    {
      v212 = v185;

      if (v212)
      {
        v213 = v100;
        sub_1D6661258();
        sub_1D72647EC();
        v143 = v252;
        v142 = v256;
        v260 = 0;

        sub_1D5ED34A0(v276, v277, v278);
        sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);
        v104 = v253;
        v106 = v170;
        v96 = v235;
      }

      else
      {
        v260 = 0;

        sub_1D5ED34A0(v276, v277, v278);
        sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
        v96 = v235;
        v143 = v252;
        v104 = v253;
        v142 = v256;
        v106 = v170;
      }

LABEL_30:
      v147 = v243;
      v143(v243, v254, v142);
      swift_storeEnumTagMultiPayload();
      v261 = xmmword_1D72BAA80;
      v274 = xmmword_1D72BAA80;
      v275 = 0;
      LOBYTE(v268) = 0;
      v148 = swift_allocObject();
      v150 = v148;
      *(v148 + 16) = v261;
      *(v148 + 32) = v268;
      *(v148 + 40) = v104;
      *(v148 + 48) = v106;
      if (v286 == 254)
      {

        v151 = v238;
      }

      else
      {
        v250 = &v233;
        v270 = v283;
        v271 = v284;
        v272 = v285;
        v273 = v286;
        v268 = v281;
        v269 = v282;
        MEMORY[0x1EEE9AC00](v148, v149);
        *(&v233 - 4) = sub_1D5B4AA6C;
        *(&v233 - 3) = 0;
        v231 = sub_1D6708C20;
        v232 = v150;
        LOBYTE(v262) = 0;
        v187 = swift_allocObject();
        *(v187 + 16) = v261;
        *(v187 + 32) = v262;
        *(v187 + 40) = v104;
        *(v187 + 48) = v106;
        swift_retain_n();
        sub_1D5D355B8(&v281, &v262, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v188 = sub_1D72647CC();
        LOBYTE(v262) = 0;
        v189 = swift_allocObject();
        *(v189 + 16) = v188;
        *(v189 + 24) = v261;
        *(v189 + 40) = v262;
        v190 = *(v287 + 3);
        v191 = *(v287 + 4);
        v192 = __swift_project_boxed_opaque_existential_1(v287, v190);
        MEMORY[0x1EEE9AC00](v192, v193);
        MEMORY[0x1EEE9AC00](v194, v195);
        *(&v233 - 4) = sub_1D615B4A4;
        *(&v233 - 3) = (&v233 - 6);
        v231 = sub_1D6708C20;
        v232 = v187;
        v196 = v260;
        v198 = sub_1D5D2F7A4(v147, sub_1D615B49C, v197, sub_1D615B4A4, (&v233 - 6), v190, v191);
        if (v196)
        {

          v264 = v270;
          v265 = v271;
          v266 = v272;
          v267 = v273;
          v262 = v268;
          v263 = v269;
          sub_1D601144C(&v262);
          v96 = v235;
          v186 = v147;
          goto LABEL_43;
        }

        v226 = v198;

        v151 = v238;
        if ((v226 & 1) == 0)
        {
          v260 = 0;

          v264 = v270;
          v265 = v271;
          v266 = v272;
          v267 = v273;
          v262 = v268;
          v263 = v269;
          sub_1D601144C(&v262);
          v96 = v235;
          v143 = v252;
          v104 = v253;
          v152 = v256;
          v106 = v251;
          goto LABEL_33;
        }

        sub_1D6661204();
        sub_1D72647EC();
        v143 = v252;
        v142 = v256;
        v260 = 0;

        v264 = v270;
        v265 = v271;
        v266 = v272;
        v267 = v273;
        v262 = v268;
        v263 = v269;
        sub_1D601144C(&v262);
        v104 = v253;
        v106 = v251;
        v96 = v235;
      }

      v152 = v142;
LABEL_33:
      sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);
      v153 = v241;
      v143(v241, v254, v152);
      swift_storeEnumTagMultiPayload();
      v261 = xmmword_1D72BAA90;
      v268 = xmmword_1D72BAA90;
      LOBYTE(v269) = 0;
      LOBYTE(v262) = 0;
      v154 = swift_allocObject();
      v156 = v154;
      *(v154 + 16) = v261;
      *(v154 + 32) = v262;
      *(v154 + 40) = v104;
      *(v154 + 48) = v106;
      if ((~v151 & 0xF000000000000007) == 0)
      {

        v157 = v260;
        v158 = v153;
LABEL_35:
        sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v159 = v256;
        v160 = __swift_project_value_buffer(v256, qword_1EDFFCDE0);
        v161 = v237;
        v143(v237, v160, v159);
        swift_storeEnumTagMultiPayload();
        v261 = xmmword_1D72BAAA0;
        v268 = xmmword_1D72BAAA0;
        LOBYTE(v269) = 0;
        LOBYTE(v262) = 0;
        v162 = swift_allocObject();
        v164 = v162;
        *(v162 + 16) = v261;
        *(v162 + 32) = v262;
        v165 = v253;
        v166 = v251;
        *(v162 + 40) = v253;
        *(v162 + 48) = v166;
        if (v236 == 2)
        {

          v167 = v161;
        }

        else
        {
          v260 = &v233;
          LOBYTE(v262) = v236 & 1;
          MEMORY[0x1EEE9AC00](v162, v163);
          *(&v233 - 4) = sub_1D5B4AA6C;
          *(&v233 - 3) = 0;
          v231 = sub_1D6708C20;
          v232 = v164;
          LOBYTE(v274) = 0;
          v214 = swift_allocObject();
          *(v214 + 16) = v261;
          *(v214 + 32) = v274;
          *(v214 + 40) = v165;
          *(v214 + 48) = v166;
          swift_retain_n();
          v215 = sub_1D72647CC();
          LOBYTE(v274) = 0;
          v216 = swift_allocObject();
          *(v216 + 16) = v215;
          *(v216 + 24) = v261;
          *(v216 + 40) = v274;
          v217 = v157;
          v218 = *(v287 + 3);
          v219 = *(v287 + 4);
          v220 = __swift_project_boxed_opaque_existential_1(v287, v218);
          MEMORY[0x1EEE9AC00](v220, v221);
          MEMORY[0x1EEE9AC00](v222, v223);
          *(&v233 - 4) = sub_1D615B4A4;
          *(&v233 - 3) = (&v233 - 6);
          v231 = sub_1D66CE880;
          v232 = v214;
          v225 = sub_1D5D2F7A4(v161, sub_1D615B49C, v224, sub_1D615B4A4, (&v233 - 6), v218, v219);
          if (v217)
          {
            sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);

            v72 = v235;
            return sub_1D5D2CFE8(v72, sub_1D66CE758);
          }

          v229 = v225;

          if (v229)
          {
            v230 = v235;
            sub_1D72647EC();
            v167 = v237;
            v96 = v230;
          }

          else
          {
            v96 = v235;
            v167 = v237;
          }
        }

        sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);

        goto LABEL_44;
      }

      v254 = &v233;
      *&v262 = v151;
      MEMORY[0x1EEE9AC00](v154, v155);
      *(&v233 - 4) = sub_1D5B4AA6C;
      *(&v233 - 3) = 0;
      v231 = sub_1D6708C20;
      v232 = v156;
      LOBYTE(v274) = 0;
      v199 = swift_allocObject();
      *(v199 + 16) = v261;
      *(v199 + 32) = v274;
      *(v199 + 40) = v104;
      *(v199 + 48) = v106;
      swift_retain_n();
      sub_1D5CFCFAC(v151);
      v200 = sub_1D72647CC();
      LOBYTE(v274) = 0;
      v201 = swift_allocObject();
      *(v201 + 16) = v200;
      *(v201 + 24) = v261;
      *(v201 + 40) = v274;
      v202 = *(v287 + 3);
      v203 = *(v287 + 4);
      v204 = __swift_project_boxed_opaque_existential_1(v287, v202);
      MEMORY[0x1EEE9AC00](v204, v205);
      MEMORY[0x1EEE9AC00](v206, v207);
      *(&v233 - 4) = sub_1D615B4A4;
      *(&v233 - 3) = (&v233 - 6);
      v231 = sub_1D6708C20;
      v232 = v199;
      v208 = v260;
      v210 = sub_1D5D2F7A4(v153, sub_1D615B49C, v209, sub_1D615B4A4, (&v233 - 6), v202, v203);
      v157 = v208;
      if (!v208)
      {
        v227 = v210;

        if (v227)
        {
          sub_1D5B55CBC();
          v228 = v235;
          sub_1D72647EC();
          v143 = v252;

          v158 = v241;
          v96 = v228;
        }

        else
        {

          v96 = v235;
          v158 = v241;
          v143 = v252;
        }

        goto LABEL_35;
      }

      v96 = v235;
      v211 = v241;

      v186 = v211;
LABEL_43:
      sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
LABEL_44:
      v72 = v96;
      return sub_1D5D2CFE8(v72, sub_1D66CE758);
    }

    v96 = v235;
    sub_1D5ED34A0(v276, v277, v278);
LABEL_42:
    v186 = v100;
    goto LABEL_43;
  }

  sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

  v72 = v61;
  return sub_1D5D2CFE8(v72, sub_1D66CE758);
}

uint64_t sub_1D65E9978(uint64_t a1)
{
  v2 = sub_1D66CE6B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65E99B4(uint64_t a1)
{
  v2 = sub_1D66CE6B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoPlayback.encode(to:)(void *a1)
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
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD98);
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

uint64_t FormatVideoPlayerContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
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
          *(v20 + 16) = &unk_1F5117FE0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66CE910();
    v30 = 0uLL;
    sub_1D726431C();
    if (v29)
    {
      v29 = xmmword_1D7279980;
      sub_1D66CE964();
      sub_1D726431C();
      v22 = v33;
      (*(v7 + 8))(v13, v6);
      v28 = v30;
      v23 = v31;
      v24 = v32;
      v25 = swift_allocObject();
      *(v25 + 16) = v28;
      *(v25 + 32) = v23;
      *(v25 + 40) = v24;
      v26 = v25 | 0x8000000000000000;
    }

    else
    {
      sub_1D5C30060(0, &qword_1EDF2EDA8, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatSwitchValue);
      v29 = xmmword_1D7279980;
      sub_1D66CE9B8();
      sub_1D726431C();
      v22 = v33;
      (*(v7 + 8))(v13, v6);
      v27 = v30;
      v26 = swift_allocObject();
      *(v26 + 16) = v27;
    }

    *v22 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatVideoPlayerContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVideoPlayerContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatVideoPlayerContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v17, v14, v18, &off_1F51F6B18);
  if (v15 < 0)
  {
    v26 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v28 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v29 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    sub_1D62B6240(v26, v27, v28, v29);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD00);
    (*(*(v30 - 8) + 16))(v6, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6391788(1, v26, v27, v28, v29, v6);
    sub_1D62B628C(v26, v27, v28, v29);
    v25 = v6;
  }

  else
  {
    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
    v22 = qword_1EDF31E98;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD00);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63915B4(0, v20, v21, v10);

    v25 = v10;
  }

  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65EA50C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6962;
  }

  else
  {
    v3 = 0x686374697773;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69646E6962;
  }

  else
  {
    v5 = 0x686374697773;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65EA5B0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65EA630(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65EA69C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65EA724(uint64_t *a1@<X8>)
{
  v2 = 0x686374697773;
  if (*v1)
  {
    v2 = 0x676E69646E6962;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D65EA84C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v6 = v5;
  v35 = a5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    v14 = v31;
    v28 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v35;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = v14;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v28 + 8))(v13, v9);
          goto LABEL_9;
        }
      }
    }

    (v29)(v17);
    v33 = 0;
    *&v34 = 0;
    sub_1D726431C();
    v32 = xmmword_1D7279980;
    sub_1D5C6A164();
    sub_1D726431C();
    (*(v28 + 8))(v13, v9);
    v27 = v34;
    *v18 = v33;
    *(v18 + 8) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D65EABAC(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, char *, __n128))
{
  v25 = a3;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v15 = v3[1];
  v16 = v3[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v20, v17, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v18, v13, v19, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
  (*(*(v21 - 8) + 16))(v9, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  (v25)(v14, v15, v16, v9);
  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v13, sub_1D5D30DC4);
}

uint64_t FormatVideoPlayerNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v481 = &v450 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v453 = &v450 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v454 = &v450 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v452 = &v450 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v455 = &v450 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v456 = &v450 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v457 = &v450 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v458 = &v450 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v459 = &v450 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v460 = &v450 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v461 = &v450 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v462 = &v450 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v463 = &v450 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v466 = &v450 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v467 = &v450 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v468 = (&v450 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v469 = (&v450 - v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v470 = &v450 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  *&v478 = &v450 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v450 - v64;
  sub_1D66D0450(0);
  v480 = v66;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v450 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1[3];
  v71 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v70);
  sub_1D5E195C4(0);
  v73 = v72;
  v74 = sub_1D5B58B84(&qword_1EDF25288, sub_1D5E195C4, &unk_1D7321584);
  v500 = v69;
  sub_1D5D2EE70(v4, v73, v75, v70, v4, v73, &type metadata for FormatVersions.StarSkyC, v71, v69, v74, &off_1F51F6B18);
  swift_beginAccess();
  v476 = v2;
  v76 = v2[2];
  v77 = v2[3];
  v78 = qword_1EDF31E98;

  if (v78 != -1)
  {
    swift_once();
  }

  v79 = sub_1D725BD1C();
  v80 = __swift_project_value_buffer(v79, qword_1EDFFCD00);
  v81 = *(v79 - 8);
  v82 = *(v81 + 16);
  v83 = v81 + 16;
  v477 = v79;
  v82(v65, v80, v79);
  v84 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v481;
  v471 = v76;
  sub_1D725892C();
  v86 = sub_1D725895C();
  v87 = (*(*(v86 - 8) + 48))(v85, 1, v86);
  v474 = v83;
  v475 = v82;
  v472 = v80;
  v473 = v84;
  if (v87 == 1)
  {
    sub_1D5D35558(v481, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v88 = v480;
    v89 = v500;
    v90 = &v500[*(v480 + 11)];
    v91 = v65;
    v93 = *v90;
    v92 = *(v90 + 1);
    LOBYTE(v492) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    *(v94 + 24) = 0;
    *(v94 + 32) = v492;
    *(v94 + 40) = v93;
    *(v94 + 48) = v92;
    sub_1D5E19588(0);
    v96 = v95;
    v97 = sub_1D5B58B84(&qword_1EDF03258, sub_1D5E19588, MEMORY[0x1E69E6F60]);

    *&v481 = v96;
    v465 = v97;
    v98 = sub_1D72647CC();
    LOBYTE(v492) = 0;
    v99 = swift_allocObject();
    *(v99 + 24) = 0;
    *(v99 + 32) = 0;
    *(v99 + 16) = v98;
    *(v99 + 40) = v492;
    v100 = (v89 + *(v88 + 9));
    v101 = v100[3];
    v102 = v100[4];
    v103 = __swift_project_boxed_opaque_existential_1(v100, v101);
    MEMORY[0x1EEE9AC00](v103, v104);
    MEMORY[0x1EEE9AC00](v105, v106);
    *(&v450 - 4) = sub_1D5B4AA6C;
    *(&v450 - 3) = 0;
    v448 = sub_1D66D04E4;
    v449 = v94;
    v107 = v479;
    v109 = sub_1D5D2F7A4(v91, sub_1D615B49C, v108, sub_1D615B4A4, (&v450 - 6), v101, v102);
    if (v107)
    {
      sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

      v110 = v89;
      return sub_1D5D2CFE8(v110, sub_1D66D0450);
    }

    v136 = v109;

    if (v136)
    {
      v492 = 0uLL;
      LOBYTE(v493) = 0;
      v498 = v471;
      v499 = v77;
      sub_1D72647EC();
      v80 = v472;
      *&v479 = 0;

      sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
      v82 = v475;
    }

    else
    {
      *&v479 = 0;
      sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

      v82 = v475;
      v80 = v472;
    }
  }

  else
  {
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v481, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v111 = v476[4];
  v82(v478, v80, v477);
  swift_storeEnumTagMultiPayload();
  v498 = v111;
  v481 = xmmword_1D728CF30;
  v492 = xmmword_1D728CF30;
  LOBYTE(v493) = 0;
  v112 = v500;
  v113 = &v500[*(v480 + 11)];
  v114 = *v113;
  v115 = *(v113 + 1);
  LOBYTE(v490) = 0;
  v116 = swift_allocObject();
  v471 = &v450;
  *(v116 + 16) = v481;
  *(v116 + 32) = v490;
  *(v116 + 40) = v114;
  *(v116 + 48) = v115;
  MEMORY[0x1EEE9AC00](v116, v117);
  *(&v450 - 4) = sub_1D5B4AA6C;
  *(&v450 - 3) = 0;
  v448 = sub_1D6708C24;
  v449 = v118;
  LOBYTE(v490) = 0;
  v119 = swift_allocObject();
  *(v119 + 16) = v481;
  *(v119 + 32) = v490;
  v451 = v114;
  *(v119 + 40) = v114;
  *(v119 + 48) = v115;
  sub_1D5E19588(0);
  v121 = v120;
  v122 = sub_1D5B58B84(&qword_1EDF03258, sub_1D5E19588, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v464 = v121;
  v465 = v122;
  v123 = sub_1D72647CC();
  LOBYTE(v490) = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  *(v124 + 24) = v481;
  *(v124 + 40) = v490;
  v125 = (v112 + *(v480 + 9));
  v126 = v125[3];
  v127 = v125[4];
  v128 = __swift_project_boxed_opaque_existential_1(v125, v126);
  MEMORY[0x1EEE9AC00](v128, v129);
  MEMORY[0x1EEE9AC00](v130, v131);
  *(&v450 - 4) = sub_1D615B4A4;
  *(&v450 - 3) = (&v450 - 6);
  v448 = sub_1D6708C24;
  v449 = v119;
  v132 = v478;
  v133 = v479;
  sub_1D5D2BC70(v478, sub_1D615B49C, v134, sub_1D615B4A4, (&v450 - 6), v126, v127);
  if (v133)
  {
    sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);

    v110 = v500;
    return sub_1D5D2CFE8(v110, sub_1D66D0450);
  }

  v480 = v125;
  *&v481 = v115;

  sub_1D5CA1E90();
  sub_1D72647EC();
  *&v479 = 0;
  sub_1D5D2CFE8(v478, type metadata accessor for FormatVersionRequirement);

  v137 = v476;
  v138 = v476[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v139 = v477;
  v140 = __swift_project_value_buffer(v477, qword_1EDFFCD68);
  v141 = v470;
  v475(v470, v140, v139);
  swift_storeEnumTagMultiPayload();
  v478 = xmmword_1D7297410;
  v492 = xmmword_1D7297410;
  LOBYTE(v493) = 0;
  LOBYTE(v498) = 0;
  v142 = swift_allocObject();
  v144 = v142;
  *(v142 + 16) = v478;
  *(v142 + 32) = v498;
  v145 = v451;
  v146 = v481;
  *(v142 + 40) = v451;
  *(v142 + 48) = v146;
  if (v138)
  {
    v471 = &v450;
    v498 = v138;
    MEMORY[0x1EEE9AC00](v142, v143);
    *(&v450 - 4) = sub_1D5B4AA6C;
    *(&v450 - 3) = 0;
    v448 = sub_1D6708C24;
    v449 = v144;
    LOBYTE(v490) = 0;
    v147 = swift_allocObject();
    *(v147 + 16) = v478;
    *(v147 + 32) = v490;
    *(v147 + 40) = v145;
    *(v147 + 48) = v146;
    swift_retain_n();

    v148 = sub_1D72647CC();
    LOBYTE(v490) = 0;
    v149 = swift_allocObject();
    *(v149 + 16) = v148;
    *(v149 + 24) = v478;
    *(v149 + 40) = v490;
    v150 = v480[3];
    v151 = v480[4];
    v152 = __swift_project_boxed_opaque_existential_1(v480, v150);
    MEMORY[0x1EEE9AC00](v152, v153);
    MEMORY[0x1EEE9AC00](v154, v155);
    *(&v450 - 4) = sub_1D615B4A4;
    *(&v450 - 3) = (&v450 - 6);
    v448 = sub_1D6708C24;
    v449 = v147;
    v156 = v479;
    v158 = sub_1D5D2F7A4(v141, sub_1D615B49C, v157, sub_1D615B4A4, (&v450 - 6), v150, v151);
    v159 = v156;
    if (v156)
    {

      v160 = v500;

      sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
LABEL_29:
      v110 = v160;
      return sub_1D5D2CFE8(v110, sub_1D66D0450);
    }

    v161 = v158;

    if (v161)
    {
      sub_1D6659D24();
      v160 = v500;
      sub_1D72647EC();
      v137 = v476;
      v139 = v477;
      v162 = v469;

      v146 = v481;
      goto LABEL_26;
    }

    v160 = v500;
    v137 = v476;
    v139 = v477;
    v146 = v481;
  }

  else
  {

    v159 = v479;
    v160 = v500;
  }

  v162 = v469;
LABEL_26:
  sub_1D5D2CFE8(v470, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v163 = v137[6];
  v475(v162, v472, v139);
  swift_storeEnumTagMultiPayload();
  if (*(v163 + 16))
  {
    LOBYTE(v492) = 0;
    v164 = swift_allocObject();
    v479 = xmmword_1D72BAA60;
    *(v164 + 16) = xmmword_1D72BAA60;
    *(v164 + 32) = v492;
    *(v164 + 40) = v451;
    *(v164 + 48) = v146;

    v165 = sub_1D72647CC();
    LOBYTE(v492) = 0;
    v166 = swift_allocObject();
    *(v166 + 16) = v165;
    *(v166 + 24) = v479;
    *(v166 + 40) = v492;
    v167 = v480[3];
    v168 = v480[4];
    v169 = __swift_project_boxed_opaque_existential_1(v480, v167);
    *&v478 = &v450;
    MEMORY[0x1EEE9AC00](v169, v170);
    MEMORY[0x1EEE9AC00](v171, v172);
    *(&v450 - 4) = sub_1D5B4AA6C;
    *(&v450 - 3) = 0;
    v448 = sub_1D6708C24;
    v449 = v164;
    v174 = sub_1D5D2F7A4(v162, sub_1D615B49C, v173, sub_1D615B4A4, (&v450 - 6), v167, v168);
    if (v159)
    {
      sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);

      goto LABEL_29;
    }

    v175 = v174;

    if (v175)
    {
      v492 = v479;
      LOBYTE(v493) = 0;
      *&v490 = v163;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v137 = v476;
      v139 = v477;
      v176 = v469;
      *&v479 = 0;

      sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v479 = 0;
      sub_1D5D2CFE8(v469, type metadata accessor for FormatVersionRequirement);

      v137 = v476;
      v139 = v477;
    }

    v146 = v481;
  }

  else
  {
    *&v479 = v159;
    sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);
  }

  v177 = v137[7];
  v178 = v468;
  v475(v468, v472, v139);
  swift_storeEnumTagMultiPayload();
  v478 = xmmword_1D72BAA70;
  v492 = xmmword_1D72BAA70;
  LOBYTE(v493) = 0;
  LOBYTE(v490) = 0;
  v179 = swift_allocObject();
  v181 = v179;
  *(v179 + 16) = v478;
  *(v179 + 32) = v490;
  v182 = v451;
  *(v179 + 40) = v451;
  *(v179 + 48) = v146;
  if (v177)
  {
    v471 = &v450;
    *&v490 = v177;
    MEMORY[0x1EEE9AC00](v179, v180);
    *(&v450 - 4) = sub_1D5B4AA6C;
    *(&v450 - 3) = 0;
    v448 = sub_1D6708C24;
    v449 = v181;
    LOBYTE(v489) = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v478;
    *(v183 + 32) = v489;
    *(v183 + 40) = v182;
    *(v183 + 48) = v146;
    swift_retain_n();

    v184 = sub_1D72647CC();
    LOBYTE(v489) = 0;
    v185 = swift_allocObject();
    *(v185 + 16) = v184;
    *(v185 + 24) = v478;
    *(v185 + 40) = v489;
    v186 = v480[3];
    v187 = v480[4];
    v188 = __swift_project_boxed_opaque_existential_1(v480, v186);
    MEMORY[0x1EEE9AC00](v188, v189);
    MEMORY[0x1EEE9AC00](v190, v191);
    *(&v450 - 4) = sub_1D615B4A4;
    *(&v450 - 3) = (&v450 - 6);
    v448 = sub_1D6708C24;
    v449 = v183;
    v192 = v479;
    v194 = sub_1D5D2F7A4(v178, sub_1D615B49C, v193, sub_1D615B4A4, (&v450 - 6), v186, v187);
    v195 = v192;
    if (v192)
    {

      v196 = v500;
      v197 = v178;
LABEL_13:
      sub_1D5D2CFE8(v197, type metadata accessor for FormatVersionRequirement);
LABEL_14:
      v110 = v196;
      return sub_1D5D2CFE8(v110, sub_1D66D0450);
    }

    v198 = v194;

    if (v198)
    {
      type metadata accessor for FormatVideoPlayerNodeStyle();
      sub_1D5B58B84(&qword_1EDF0B468, type metadata accessor for FormatVideoPlayerNodeStyle, &protocol conformance descriptor for FormatVideoPlayerNodeStyle);
      sub_1D72647EC();
      v137 = v476;
      v139 = v477;
      v182 = v451;

      v146 = v481;
    }

    else
    {

      v137 = v476;
      v139 = v477;
      v146 = v481;
      v182 = v451;
    }
  }

  else
  {

    v195 = v479;
  }

  sub_1D5D2CFE8(v468, type metadata accessor for FormatVersionRequirement);
  v199 = v137[8];
  v475(v467, v472, v139);
  swift_storeEnumTagMultiPayload();
  v478 = xmmword_1D72BAA80;
  v492 = xmmword_1D72BAA80;
  LOBYTE(v493) = 0;
  LOBYTE(v490) = 0;
  v200 = swift_allocObject();
  v202 = v200;
  *(v200 + 16) = v478;
  *(v200 + 32) = v490;
  *(v200 + 40) = v182;
  *(v200 + 48) = v146;
  *&v479 = v195;
  if (v199)
  {
    *&v490 = v199;
    MEMORY[0x1EEE9AC00](v200, v201);
    *(&v450 - 4) = sub_1D5B4AA6C;
    *(&v450 - 3) = 0;
    v448 = sub_1D6708C24;
    v449 = v202;
    LOBYTE(v489) = 0;
    v203 = swift_allocObject();
    *(v203 + 16) = v478;
    *(v203 + 32) = v489;
    *(v203 + 40) = v182;
    *(v203 + 48) = v146;
    swift_retain_n();

    v204 = sub_1D72647CC();
    LOBYTE(v489) = 0;
    v205 = swift_allocObject();
    *(v205 + 16) = v204;
    *(v205 + 24) = v478;
    *(v205 + 40) = v489;
    v206 = v480[3];
    v207 = v480[4];
    v208 = __swift_project_boxed_opaque_existential_1(v480, v206);
    MEMORY[0x1EEE9AC00](v208, v209);
    MEMORY[0x1EEE9AC00](v210, v211);
    *(&v450 - 4) = sub_1D615B4A4;
    *(&v450 - 3) = (&v450 - 6);
    v448 = sub_1D6708C24;
    v449 = v203;
    v212 = v479;
    v214 = sub_1D5D2F7A4(v467, sub_1D615B49C, v213, sub_1D615B4A4, (&v450 - 6), v206, v207);
    if (v212)
    {

      v196 = v500;
      v197 = v467;
      goto LABEL_13;
    }

    v216 = v214;

    if (v216)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
      sub_1D72647EC();
      v137 = v476;
      v139 = v477;
      v182 = v451;
      *&v479 = 0;

      v215 = v481;
    }

    else
    {
      *&v479 = 0;

      v137 = v476;
      v139 = v477;
      v215 = v481;
      v182 = v451;
    }
  }

  else
  {

    v215 = v146;
  }

  sub_1D5D2CFE8(v467, type metadata accessor for FormatVersionRequirement);
  v217 = v137[9];
  v218 = v466;
  v475(v466, v472, v139);
  swift_storeEnumTagMultiPayload();
  *&v490 = v217;
  v478 = xmmword_1D72BAA90;
  v492 = xmmword_1D72BAA90;
  LOBYTE(v493) = 0;
  LOBYTE(v489) = 0;
  v219 = swift_allocObject();
  v471 = &v450;
  *(v219 + 16) = v478;
  *(v219 + 32) = v489;
  *(v219 + 40) = v182;
  *(v219 + 48) = v215;
  MEMORY[0x1EEE9AC00](v219, v220);
  v470 = (&v450 - 6);
  *(&v450 - 4) = sub_1D5B4AA6C;
  *(&v450 - 3) = 0;
  v448 = sub_1D6708C24;
  v449 = v221;
  LOBYTE(v489) = 0;
  v222 = swift_allocObject();
  *(v222 + 16) = v478;
  *(v222 + 32) = v489;
  *(v222 + 40) = v182;
  *(v222 + 48) = v215;
  swift_retain_n();
  v160 = v500;
  v223 = sub_1D72647CC();
  LOBYTE(v489) = 0;
  v224 = swift_allocObject();
  *(v224 + 16) = v223;
  *(v224 + 24) = v478;
  *(v224 + 40) = v489;
  v225 = v480[3];
  v226 = v480[4];
  v227 = __swift_project_boxed_opaque_existential_1(v480, v225);
  MEMORY[0x1EEE9AC00](v227, v228);
  MEMORY[0x1EEE9AC00](v229, v230);
  v231 = v470;
  *(&v450 - 4) = sub_1D615B4A4;
  *(&v450 - 3) = v231;
  v448 = sub_1D6708C24;
  v449 = v222;
  v232 = v479;
  sub_1D5D2BC70(v218, sub_1D615B49C, v233, sub_1D615B4A4, (&v450 - 6), v225, v226);
  if (v232)
  {
    sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);

    goto LABEL_29;
  }

  sub_1D5B57BF8();
  sub_1D72647EC();
  sub_1D5D2CFE8(v466, type metadata accessor for FormatVersionRequirement);

  v234 = v476[10];
  v235 = v463;
  v475(v463, v472, v477);
  swift_storeEnumTagMultiPayload();
  *&v490 = v234;
  v478 = xmmword_1D72BAAA0;
  v492 = xmmword_1D72BAAA0;
  LOBYTE(v493) = 0;
  LOBYTE(v489) = 0;
  v236 = swift_allocObject();
  v471 = &v450;
  *(v236 + 16) = v478;
  *(v236 + 32) = v489;
  v237 = v451;
  v238 = v481;
  *(v236 + 40) = v451;
  *(v236 + 48) = v238;
  MEMORY[0x1EEE9AC00](v236, v239);
  *&v479 = 0;
  *(&v450 - 4) = sub_1D5B4AA6C;
  *(&v450 - 3) = 0;
  v448 = sub_1D6708C24;
  v449 = v240;
  LOBYTE(v489) = 0;
  v241 = swift_allocObject();
  *(v241 + 16) = v478;
  *(v241 + 32) = v489;
  *(v241 + 40) = v237;
  *(v241 + 48) = v238;
  swift_retain_n();
  v242 = v235;
  v243 = sub_1D72647CC();
  LOBYTE(v489) = 0;
  v244 = swift_allocObject();
  *(v244 + 16) = v243;
  *(v244 + 24) = v478;
  *(v244 + 40) = v489;
  v245 = v480[3];
  v246 = v480[4];
  v247 = __swift_project_boxed_opaque_existential_1(v480, v245);
  MEMORY[0x1EEE9AC00](v247, v248);
  MEMORY[0x1EEE9AC00](v249, v250);
  *(&v450 - 4) = sub_1D615B4A4;
  *(&v450 - 3) = (&v450 - 6);
  v448 = sub_1D6708C24;
  v449 = v241;
  v251 = v479;
  sub_1D5D2BC70(v242, sub_1D615B49C, v252, sub_1D615B4A4, (&v450 - 6), v245, v246);
  if (v251)
  {
    sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);

    v196 = v160;
    goto LABEL_14;
  }

  sub_1D5B55E48();
  sub_1D72647EC();
  *&v479 = 0;
  sub_1D5D2CFE8(v463, type metadata accessor for FormatVersionRequirement);

  v253 = v476[11];
  v254 = v462;
  v475(v462, v472, v477);
  swift_storeEnumTagMultiPayload();
  v478 = xmmword_1D72BAAB0;
  v492 = xmmword_1D72BAAB0;
  LOBYTE(v493) = 0;
  LOBYTE(v490) = 0;
  v255 = swift_allocObject();
  v257 = v255;
  *(v255 + 16) = v478;
  *(v255 + 32) = v490;
  v258 = v451;
  v259 = v481;
  *(v255 + 40) = v451;
  *(v255 + 48) = v259;
  if (!v253)
  {

    goto LABEL_62;
  }

  v471 = &v450;
  *&v490 = v253;
  MEMORY[0x1EEE9AC00](v255, v256);
  *(&v450 - 4) = sub_1D5B4AA6C;
  *(&v450 - 3) = 0;
  v448 = sub_1D6708C24;
  v449 = v257;
  LOBYTE(v489) = 0;
  v260 = swift_allocObject();
  *(v260 + 16) = v478;
  *(v260 + 32) = v489;
  *(v260 + 40) = v258;
  *(v260 + 48) = v259;
  swift_retain_n();

  v261 = sub_1D72647CC();
  LOBYTE(v489) = 0;
  v262 = swift_allocObject();
  *(v262 + 16) = v261;
  *(v262 + 24) = v478;
  *(v262 + 40) = v489;
  v263 = v480[3];
  v264 = v480[4];
  v265 = __swift_project_boxed_opaque_existential_1(v480, v263);
  MEMORY[0x1EEE9AC00](v265, v266);
  MEMORY[0x1EEE9AC00](v267, v268);
  *(&v450 - 4) = sub_1D615B4A4;
  *(&v450 - 3) = (&v450 - 6);
  v448 = sub_1D6708C24;
  v449 = v260;
  v269 = v479;
  v271 = sub_1D5D2F7A4(v254, sub_1D615B49C, v270, sub_1D615B4A4, (&v450 - 6), v263, v264);
  *&v479 = v269;
  if (!v269)
  {
    v273 = v271;

    if (v273)
    {
      type metadata accessor for FormatImageNodeStyle(0);
      sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle, &protocol conformance descriptor for FormatImageNodeStyle);
      v274 = v479;
      sub_1D72647EC();
      *&v479 = v274;
      if (v274)
      {

        goto LABEL_56;
      }
    }

LABEL_62:

    sub_1D5D2CFE8(v462, type metadata accessor for FormatVersionRequirement);
    v275 = v476[12];
    v276 = v476[13];
    v277 = v476[14];
    v278 = v476[15];
    v279 = v476[17];
    v471 = v476[16];
    LODWORD(v470) = *(v476 + 144);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v280 = v477;
    v281 = __swift_project_value_buffer(v477, qword_1EDFFCDE0);
    v475(v461, v281, v280);
    swift_storeEnumTagMultiPayload();
    v478 = xmmword_1D72BAAC0;
    v490 = xmmword_1D72BAAC0;
    v491 = 0;
    LOBYTE(v492) = 0;
    v282 = swift_allocObject();
    v284 = v282;
    *(v282 + 16) = v478;
    *(v282 + 32) = v492;
    v285 = v481;
    *(v282 + 40) = v451;
    *(v282 + 48) = v285;
    if (v277 == 1)
    {

LABEL_74:
      sub_1D5D2CFE8(v461, type metadata accessor for FormatVersionRequirement);
      v478 = *(v476 + 19);
      v309 = v476[21];
      v310 = *(v476 + 176);
      v311 = v460;
      v475(v460, v472, v477);
      swift_storeEnumTagMultiPayload();
      v492 = v478;
      v493 = v309;
      LOBYTE(v494) = v310;
      v478 = xmmword_1D72BAAD0;
      v490 = xmmword_1D72BAAD0;
      v491 = 0;
      LOBYTE(v489) = 0;
      v312 = swift_allocObject();
      *(v312 + 16) = v478;
      *(v312 + 32) = v489;
      v313 = v451;
      v314 = v481;
      *(v312 + 40) = v451;
      *(v312 + 48) = v314;
      MEMORY[0x1EEE9AC00](v312, v315);
      *(&v450 - 4) = sub_1D5B4AA6C;
      *(&v450 - 3) = 0;
      v448 = sub_1D6708C24;
      v449 = v316;
      LOBYTE(v489) = 0;
      v317 = swift_allocObject();
      *(v317 + 16) = v478;
      *(v317 + 32) = v489;
      *(v317 + 40) = v313;
      *(v317 + 48) = v314;
      swift_retain_n();
      v318 = sub_1D72647CC();
      LOBYTE(v489) = 0;
      v319 = swift_allocObject();
      *(v319 + 16) = v318;
      *(v319 + 24) = v478;
      *(v319 + 40) = v489;
      v320 = v480[3];
      v321 = v480[4];
      v322 = __swift_project_boxed_opaque_existential_1(v480, v320);
      MEMORY[0x1EEE9AC00](v322, v323);
      MEMORY[0x1EEE9AC00](v324, v325);
      *(&v450 - 4) = sub_1D615B4A4;
      *(&v450 - 3) = (&v450 - 6);
      v448 = sub_1D6708C24;
      v449 = v317;
      v326 = v479;
      sub_1D5D2BC70(v311, sub_1D615B49C, v327, sub_1D615B4A4, (&v450 - 6), v320, v321);
      if (v326)
      {
        sub_1D5D2CFE8(v460, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D60AFC28();
        sub_1D72647EC();
        sub_1D5D2CFE8(v460, type metadata accessor for FormatVersionRequirement);

        v328 = v476;
        swift_beginAccess();
        v329 = v328[23];
        v475(v459, v472, v477);
        swift_storeEnumTagMultiPayload();
        if (v329)
        {
          LOBYTE(v492) = 0;
          v330 = swift_allocObject();
          v479 = xmmword_1D72BAAE0;
          *(v330 + 16) = xmmword_1D72BAAE0;
          *(v330 + 32) = v492;
          *(v330 + 40) = v451;
          *(v330 + 48) = v481;

          v331 = sub_1D72647CC();
          LOBYTE(v492) = 0;
          v332 = swift_allocObject();
          *(v332 + 16) = v331;
          *(v332 + 24) = v479;
          *(v332 + 40) = v492;
          v333 = v480[3];
          v334 = v480[4];
          v335 = __swift_project_boxed_opaque_existential_1(v480, v333);
          MEMORY[0x1EEE9AC00](v335, v336);
          MEMORY[0x1EEE9AC00](v337, v338);
          *(&v450 - 4) = sub_1D5B4AA6C;
          *(&v450 - 3) = 0;
          v448 = sub_1D6708C24;
          v449 = v330;
          LOBYTE(v333) = sub_1D5D2F7A4(v459, sub_1D615B49C, v339, sub_1D615B4A4, (&v450 - 6), v333, v334);

          if (v333)
          {
            v492 = v479;
            LOBYTE(v493) = 0;
            v489 = v329;
            sub_1D72647EC();
          }
        }

        sub_1D5D2CFE8(v459, type metadata accessor for FormatVersionRequirement);
        v340 = v476;
        swift_beginAccess();
        v341 = v340[24];
        v475(v458, v472, v477);
        swift_storeEnumTagMultiPayload();
        if (v341 != 0x8000000000000000)
        {
          LOBYTE(v492) = 0;
          v342 = swift_allocObject();
          v479 = xmmword_1D72BAAF0;
          *(v342 + 16) = xmmword_1D72BAAF0;
          *(v342 + 32) = v492;
          *(v342 + 40) = v451;
          *(v342 + 48) = v481;

          sub_1D5EB1500(v341);
          v343 = sub_1D72647CC();
          LOBYTE(v492) = 0;
          v344 = swift_allocObject();
          *(v344 + 16) = v343;
          *(v344 + 24) = v479;
          *(v344 + 40) = v492;
          v345 = v480[3];
          v346 = v480[4];
          v347 = __swift_project_boxed_opaque_existential_1(v480, v345);
          MEMORY[0x1EEE9AC00](v347, v348);
          MEMORY[0x1EEE9AC00](v349, v350);
          *(&v450 - 4) = sub_1D5B4AA6C;
          *(&v450 - 3) = 0;
          v448 = sub_1D6708C24;
          v449 = v342;
          LOBYTE(v345) = sub_1D5D2F7A4(v458, sub_1D615B49C, v351, sub_1D615B4A4, (&v450 - 6), v345, v346);

          if (v345)
          {
            v492 = v479;
            LOBYTE(v493) = 0;
            v488 = v341;
            sub_1D5DF6A60();
            sub_1D72647EC();
            v352 = v488;
          }

          else
          {
            v352 = v341;
          }

          sub_1D5EB15C4(v352);
        }

        sub_1D5D2CFE8(v458, type metadata accessor for FormatVersionRequirement);
        v353 = v476;
        swift_beginAccess();
        LOBYTE(v353) = *(v353 + 200);
        v475(v457, v472, v477);
        swift_storeEnumTagMultiPayload();
        if ((v353 & 1) == 0)
        {
          LOBYTE(v492) = 0;
          v373 = swift_allocObject();
          v479 = xmmword_1D7282A80;
          *(v373 + 16) = xmmword_1D7282A80;
          *(v373 + 32) = v492;
          *(v373 + 40) = v451;
          *(v373 + 48) = v481;

          v374 = sub_1D72647CC();
          LOBYTE(v492) = 0;
          v375 = swift_allocObject();
          *(v375 + 16) = v374;
          *(v375 + 24) = v479;
          *(v375 + 40) = v492;
          v376 = v480[3];
          v377 = v480[4];
          v378 = __swift_project_boxed_opaque_existential_1(v480, v376);
          MEMORY[0x1EEE9AC00](v378, v379);
          MEMORY[0x1EEE9AC00](v380, v381);
          *(&v450 - 4) = sub_1D5B4AA6C;
          *(&v450 - 3) = 0;
          v448 = sub_1D6708C24;
          v449 = v373;
          v383 = sub_1D5D2F7A4(v457, sub_1D615B49C, v382, sub_1D615B4A4, (&v450 - 6), v376, v377);
          v395 = v383;

          if (v395)
          {
            v492 = v479;
            LOBYTE(v493) = 0;
            LOBYTE(v486) = 0;
            sub_1D72647EC();
          }
        }

        sub_1D5D2CFE8(v457, type metadata accessor for FormatVersionRequirement);
        v354 = v476[26];
        v355 = *(v476 + 216);
        v475(v456, v472, v477);
        swift_storeEnumTagMultiPayload();
        v479 = xmmword_1D72BAB00;
        v492 = xmmword_1D72BAB00;
        LOBYTE(v493) = 0;
        LOBYTE(v486) = 0;
        v356 = swift_allocObject();
        v358 = v356;
        *(v356 + 16) = v479;
        *(v356 + 32) = v486;
        v359 = v481;
        *(v356 + 40) = v451;
        *(v356 + 48) = v359;
        if (v355 <= 0xFD)
        {
          v486 = v354;
          v487 = v355;
          MEMORY[0x1EEE9AC00](v356, v357);
          *(&v450 - 4) = sub_1D5B4AA6C;
          *(&v450 - 3) = 0;
          v448 = sub_1D6708C24;
          v449 = v358;
          v485[0] = 0;
          v384 = swift_allocObject();
          *(v384 + 16) = v479;
          *(v384 + 32) = v485[0];
          *(v384 + 40) = v451;
          *(v384 + 48) = v481;
          swift_retain_n();
          v385 = sub_1D72647CC();
          v485[0] = 0;
          v386 = swift_allocObject();
          *(v386 + 16) = v385;
          *(v386 + 24) = v479;
          *(v386 + 40) = v485[0];
          v387 = v480[3];
          v388 = v480[4];
          v389 = __swift_project_boxed_opaque_existential_1(v480, v387);
          MEMORY[0x1EEE9AC00](v389, v390);
          MEMORY[0x1EEE9AC00](v391, v392);
          *(&v450 - 4) = sub_1D615B4A4;
          *(&v450 - 3) = (&v450 - 6);
          v448 = sub_1D6708C24;
          v449 = v384;
          v394 = sub_1D5D2F7A4(v456, sub_1D615B49C, v393, sub_1D615B4A4, (&v450 - 6), v387, v388);
          v396 = v394;

          if (v396)
          {
            sub_1D5F8F434();
            sub_1D72647EC();
          }
        }

        else
        {
        }

        sub_1D5D2CFE8(v456, type metadata accessor for FormatVersionRequirement);

        v360 = v476;
        swift_beginAccess();
        v361 = v360[28];
        v475(v455, v472, v477);
        swift_storeEnumTagMultiPayload();
        if (*(v361 + 16))
        {
          LOBYTE(v492) = 0;
          v362 = swift_allocObject();
          v479 = xmmword_1D72BAB10;
          *(v362 + 16) = xmmword_1D72BAB10;
          *(v362 + 32) = v492;
          *(v362 + 40) = v451;
          *(v362 + 48) = v481;

          v363 = sub_1D72647CC();
          LOBYTE(v492) = 0;
          v364 = swift_allocObject();
          *(v364 + 16) = v363;
          *(v364 + 24) = v479;
          *(v364 + 40) = v492;
          v365 = v480[3];
          v366 = v480[4];
          v367 = __swift_project_boxed_opaque_existential_1(v480, v365);
          MEMORY[0x1EEE9AC00](v367, v368);
          MEMORY[0x1EEE9AC00](v369, v370);
          *(&v450 - 4) = sub_1D5B4AA6C;
          *(&v450 - 3) = 0;
          v448 = sub_1D6708C24;
          v449 = v362;
          v372 = sub_1D5D2F7A4(v455, sub_1D615B49C, v371, sub_1D615B4A4, (&v450 - 6), v365, v366);
          v397 = v372;

          if (v397)
          {
            sub_1D5E077D4(v361, v500, 0xF, 0, 0);
          }
        }

        sub_1D5D2CFE8(v455, type metadata accessor for FormatVersionRequirement);
        v398 = v452;
        v475(v452, v472, v477);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2CFE8(v398, type metadata accessor for FormatVersionRequirement);
        v399 = v476;
        swift_beginAccess();
        v400 = v399[32];
        v401 = *(v399 + 264);
        v472 = v399[31];
        *&v478 = v400;
        sub_1D6189668(v472, v400, v401);
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v402 = v477;
        v403 = __swift_project_value_buffer(v477, qword_1EDFFCD80);
        v475(v454, v403, v402);
        swift_storeEnumTagMultiPayload();
        v479 = xmmword_1D72BAB30;
        v492 = xmmword_1D72BAB30;
        LOBYTE(v493) = 0;
        LOBYTE(v483) = 0;
        v404 = swift_allocObject();
        v406 = v404;
        *(v404 + 16) = v479;
        *(v404 + 32) = v483;
        v407 = v481;
        *(v404 + 40) = v451;
        *(v404 + 48) = v407;
        if (v401 == 255)
        {
        }

        else
        {
          v471 = &v450;
          v408 = v472;
          v409 = v478;
          *&v483 = v472;
          *(&v483 + 1) = v478;
          v484 = v401 & 1;
          MEMORY[0x1EEE9AC00](v404, v405);
          *(&v450 - 4) = sub_1D5B4AA6C;
          *(&v450 - 3) = 0;
          v448 = sub_1D6708C24;
          v449 = v406;
          v482 = 0;
          v410 = swift_allocObject();
          *(v410 + 16) = v479;
          *(v410 + 32) = v482;
          *(v410 + 40) = v451;
          *(v410 + 48) = v481;
          swift_retain_n();
          sub_1D6189668(v408, v409, v401);
          v411 = sub_1D72647CC();
          v482 = 0;
          v412 = swift_allocObject();
          *(v412 + 16) = v411;
          *(v412 + 24) = v479;
          *(v412 + 40) = v482;
          v413 = v480[3];
          v414 = v480[4];
          v415 = __swift_project_boxed_opaque_existential_1(v480, v413);
          MEMORY[0x1EEE9AC00](v415, v416);
          MEMORY[0x1EEE9AC00](v417, v418);
          *(&v450 - 4) = sub_1D615B4A4;
          *(&v450 - 3) = (&v450 - 6);
          v448 = sub_1D6708C24;
          v449 = v410;
          v420 = sub_1D5D2F7A4(v454, sub_1D615B49C, v419, sub_1D615B4A4, (&v450 - 6), v413, v414);
          v421 = v420;

          if (v421)
          {
            sub_1D60ED320();
            sub_1D72647EC();
          }

          sub_1D60107F0(v472, v478, v401);
          sub_1D5D2F2C8(v483, *(&v483 + 1), v484);
        }

        sub_1D5D2CFE8(v454, type metadata accessor for FormatVersionRequirement);
        v422 = v476[34];
        v423 = v476[35];
        v424 = v476[36];
        v425 = v476[37];
        v426 = v476[39];
        *&v478 = v476[38];
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v427 = v477;
        v428 = __swift_project_value_buffer(v477, qword_1EDFFCE38);
        v475(v453, v428, v427);
        swift_storeEnumTagMultiPayload();
        v479 = xmmword_1D72BAB40;
        v483 = xmmword_1D72BAB40;
        v484 = 0;
        LOBYTE(v492) = 0;
        v429 = swift_allocObject();
        v431 = v429;
        *(v429 + 16) = v479;
        *(v429 + 32) = v492;
        v432 = v481;
        *(v429 + 40) = v451;
        *(v429 + 48) = v432;
        if (v422)
        {
          v477 = &v450;
          v472 = v422;
          *&v492 = v422;
          *(&v492 + 1) = v423;
          v493 = v424;
          v494 = v425;
          v433 = v478;
          v495 = v478;
          v496 = v426;
          MEMORY[0x1EEE9AC00](v429, v430);
          v476 = &v450 - 6;
          *(&v450 - 4) = sub_1D5B4AA6C;
          *(&v450 - 3) = 0;
          v448 = sub_1D6708C24;
          v449 = v431;
          v482 = 0;
          v434 = swift_allocObject();
          *(v434 + 16) = v479;
          *(v434 + 32) = v482;
          *(v434 + 40) = v451;
          *(v434 + 48) = v481;
          swift_retain_n();
          sub_1D5EB1D80(v472, v423, v424, v425, v433, v426);
          v435 = sub_1D72647CC();
          v482 = 0;
          v436 = swift_allocObject();
          *(v436 + 16) = v435;
          *(v436 + 24) = v479;
          *(v436 + 40) = v482;
          v437 = v480[3];
          v438 = v480[4];
          v439 = __swift_project_boxed_opaque_existential_1(v480, v437);
          MEMORY[0x1EEE9AC00](v439, v440);
          MEMORY[0x1EEE9AC00](v441, v442);
          v443 = v476;
          *(&v450 - 4) = sub_1D615B4A4;
          *(&v450 - 3) = v443;
          v448 = sub_1D6708C24;
          v449 = v434;
          v445 = sub_1D5D2F7A4(v453, sub_1D615B49C, v444, sub_1D615B4A4, (&v450 - 6), v437, v438);
          v446 = v445;

          if (v446)
          {
            sub_1D6659A24();
            sub_1D72647EC();
          }

          v447 = v495;

          sub_1D5CBF568(v447);

          sub_1D5D2CFE8(v453, type metadata accessor for FormatVersionRequirement);
        }

        else
        {

          sub_1D5D2CFE8(v453, type metadata accessor for FormatVersionRequirement);
        }
      }

      v110 = v500;
      return sub_1D5D2CFE8(v110, sub_1D66D0450);
    }

    v469 = &v450;
    *&v492 = v275;
    *(&v492 + 1) = v276;
    v493 = v277;
    v494 = v278;
    v495 = v471;
    v496 = v279;
    v497 = v470 & 1;
    MEMORY[0x1EEE9AC00](v282, v283);
    v468 = &v450 - 6;
    *(&v450 - 4) = sub_1D5B4AA6C;
    *(&v450 - 3) = 0;
    v448 = sub_1D6708C24;
    v449 = v284;
    LOBYTE(v489) = 0;
    v286 = swift_allocObject();
    *(v286 + 16) = v478;
    *(v286 + 32) = v489;
    *(v286 + 40) = v451;
    *(v286 + 48) = v285;
    swift_retain_n();
    sub_1D62B7B54(v275, v276, v277, v278, v471, v279, v470);
    v287 = sub_1D72647CC();
    LOBYTE(v489) = 0;
    v288 = swift_allocObject();
    *(v288 + 16) = v287;
    *(v288 + 24) = v478;
    *(v288 + 40) = v489;
    v289 = v480[3];
    v290 = v480[4];
    v291 = __swift_project_boxed_opaque_existential_1(v480, v289);
    MEMORY[0x1EEE9AC00](v291, v292);
    MEMORY[0x1EEE9AC00](v293, v294);
    v295 = v468;
    *(&v450 - 4) = sub_1D615B4A4;
    *(&v450 - 3) = v295;
    v448 = sub_1D6708C24;
    v449 = v286;
    v296 = v479;
    v298 = sub_1D5D2F7A4(v461, sub_1D615B49C, v297, sub_1D615B4A4, (&v450 - 6), v289, v290);
    *&v479 = v296;
    if (v296)
    {
    }

    else
    {
      v303 = v298;

      if ((v303 & 1) == 0 || (sub_1D61BA848(), v304 = v479, sub_1D72647EC(), (*&v479 = v304) == 0))
      {

        v305 = *(&v492 + 1);
        v306 = v495;
        v307 = v496;
        v308 = v497;

        sub_1D5CBF568(v305);

        sub_1D5D2F2C8(v306, v307, v308);
        goto LABEL_74;
      }
    }

    v299 = *(&v492 + 1);
    v300 = v495;
    v301 = v496;
    v302 = v497;

    sub_1D5CBF568(v299);

    sub_1D5D2F2C8(v300, v301, v302);
    v272 = v461;
    goto LABEL_69;
  }

LABEL_56:
  v272 = v462;
LABEL_69:
  sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v500, sub_1D66D0450);
}

unint64_t sub_1D65EEFD8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0x656C797473;
      break;
    case 5:
      result = 0x6F6974616D696E61;
      break;
    case 6:
      result = 0x746E65746E6F63;
      break;
    case 7:
      result = 0x6F43726574736F70;
      break;
    case 8:
      result = 0x7453726574736F70;
      break;
    case 9:
      result = 0x4379616C7265766FLL;
      break;
    case 10:
      result = 0x6576694C7369;
      break;
    case 11:
      result = 0x7865646E497ALL;
      break;
    case 12:
      result = 0x696C696269736976;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x726F7463656C6573;
      break;
    case 16:
      result = 1701667182;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 2019912806;
      break;
    case 19:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65EF200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66D05B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65EF244(uint64_t a1)
{
  v2 = sub_1D5E1969C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65EF280(uint64_t a1)
{
  v2 = sub_1D5E1969C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoPlayerNodeBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
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
          *(v20 + 16) = &unk_1F5118080;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66D0560();
    v26[0] = 0uLL;
    sub_1D726431C();
    v22 = v25;
    if (v25)
    {
      if (v25 != 1)
      {
        v25 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v23 = *&v26[0];
        v24 = *(v26 + 8);
        goto LABEL_17;
      }

      v26[0] = xmmword_1D7279980;
      sub_1D61970BC();
    }

    else
    {
      v26[0] = xmmword_1D7279980;
      sub_1D66663E4();
    }

    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v23 = v25;
    v24 = 0uLL;
LABEL_17:
    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 24) = v22;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatVideoPlayerNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v34 = *(v1 + 8);
  v35 = v19;
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVideoPlayerNodeBinding, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatVideoPlayerNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v23, v18, v24, &off_1F51F6B18);
  if (v21)
  {
    if (v21 == 1)
    {
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD00);
      (*(*(v26 - 8) + 16))(v10, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638B84C(1, v35, v10);
      v28 = v10;
    }

    else
    {
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD00);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638B9E0(2, v35, v34, v20, v6);
      v28 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD00);
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B6B8(0, v35, v14);
    v28 = v14;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D65EFA78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x70756F7267;
  if (v2 != 1)
  {
    v4 = 0x6E6F6974706FLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6974706FLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65EFB6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65EFC08(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65EFC90(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65EFD28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664684(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65EFD58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x70756F7267;
  if (v2 != 1)
  {
    v5 = 0x6E6F6974706FLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C64616568;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatVideoPlayerNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v352 = &v330[-v7];
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v336 = &v330[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v337 = &v330[-v13];
  MEMORY[0x1EEE9AC00](v14, v15);
  v338 = &v330[-v16];
  MEMORY[0x1EEE9AC00](v17, v18);
  v339 = &v330[-v19];
  MEMORY[0x1EEE9AC00](v20, v21);
  v340 = &v330[-v22];
  MEMORY[0x1EEE9AC00](v23, v24);
  v341 = &v330[-v25];
  MEMORY[0x1EEE9AC00](v26, v27);
  v342 = &v330[-v28];
  MEMORY[0x1EEE9AC00](v29, v30);
  v343 = &v330[-v31];
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v353 = &v330[-v34];
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v330[-v37];
  sub_1D66D165C(0);
  v354 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v330[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_1D66D1784(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EDF24F98, sub_1D66D1784, &unk_1D7321584);
  v351 = v42;
  sub_1D5D2EE70(v4, v46, v48, v43, v4, v46, &type metadata for FormatVersions.StarSkyC, v44, v42, v47, &off_1F51F6B18);
  swift_beginAccess();
  v50 = v2[2];
  v49 = v2[3];
  v348 = v2;
  v51 = qword_1EDF31E98;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD00);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v349 = v53;
  v350 = v52;
  v55(v38);
  v57 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v352;
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
  v61 = v38;
  v346 = v56;
  v347 = v55;
  v345 = v57;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v58, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v84 = v353;
    v85 = v354;
    goto LABEL_9;
  }

  v335 = v50;
  sub_1D5D35558(v58, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v62 = v354;
  v63 = v351;
  v64 = &v351[*(v354 + 11)];
  v66 = *v64;
  v65 = v64[1];
  LOBYTE(v369) = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = v369;
  *(v67 + 40) = v66;
  *(v67 + 48) = v65;
  sub_1D66D16F0(0);
  v69 = v68;
  sub_1D5B58B84(&qword_1EDF02F18, sub_1D66D16F0, MEMORY[0x1E69E6F60]);

  v344 = v69;
  v70 = sub_1D72647CC();
  LOBYTE(v369) = 0;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 16) = v70;
  *(v71 + 40) = v369;
  v72 = (v63 + *(v62 + 9));
  v73 = v72[3];
  v74 = v72[4];
  v75 = __swift_project_boxed_opaque_existential_1(v72, v73);
  *&v352 = v330;
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  *&v330[-32] = sub_1D5B4AA6C;
  *&v330[-24] = 0;
  v328 = sub_1D6708C1C;
  v329 = v67;
  v79 = v380;
  v81 = sub_1D5D2F7A4(v61, sub_1D615B49C, v80, sub_1D615B4A4, &v330[-48], v73, v74);
  v380 = v79;
  if (v79)
  {
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

    v82 = v63;
    return sub_1D5D2CFE8(v82, sub_1D66D165C);
  }

  v113 = v81;

  if ((v113 & 1) == 0)
  {
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

    v55 = v347;
    goto LABEL_8;
  }

  v369 = 0uLL;
  LOBYTE(v370) = 0;
  *&v361 = v335;
  *(&v361 + 1) = v49;
  v114 = v351;
  v115 = v380;
  sub_1D72647EC();

  sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
  v55 = v347;
  v84 = v353;
  v85 = v354;
  if (!v115)
  {
    v380 = 0;
LABEL_9:
    v86 = v348[4];
    v87 = v348[5];
    (v55)(v84, v349, v350);
    swift_storeEnumTagMultiPayload();
    *&v361 = v86;
    *(&v361 + 1) = v87;
    v352 = xmmword_1D728CF30;
    v369 = xmmword_1D728CF30;
    LOBYTE(v370) = 0;
    v88 = *(v85 + 11);
    v89 = v351;
    v90 = &v351[v88];
    v92 = *v90;
    v91 = v90[1];
    LOBYTE(v355) = 0;
    v93 = swift_allocObject();
    v344 = v330;
    *(v93 + 16) = v352;
    *(v93 + 32) = v355;
    *(v93 + 40) = v92;
    *(v93 + 48) = v91;
    MEMORY[0x1EEE9AC00](v93, v94);
    *&v330[-32] = sub_1D5B4AA6C;
    *&v330[-24] = 0;
    v328 = sub_1D6708C1C;
    v329 = v95;
    LOBYTE(v355) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v352;
    *(v96 + 32) = v355;
    v333 = v92;
    *(v96 + 40) = v92;
    *(v96 + 48) = v91;
    sub_1D66D16F0(0);
    v98 = v97;
    v99 = sub_1D5B58B84(&qword_1EDF02F18, sub_1D66D16F0, MEMORY[0x1E69E6F60]);
    v332 = v91;
    swift_retain_n();
    v334 = v99;
    v335 = v98;
    v100 = sub_1D72647CC();
    LOBYTE(v355) = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v352;
    *(v101 + 40) = v355;
    v102 = v89;
    v103 = &v89[*(v354 + 9)];
    v104 = v103[3];
    v105 = v103[4];
    v106 = __swift_project_boxed_opaque_existential_1(v103, v104);
    MEMORY[0x1EEE9AC00](v106, v107);
    MEMORY[0x1EEE9AC00](v108, v109);
    *&v330[-32] = sub_1D615B4A4;
    *&v330[-24] = &v330[-48];
    v328 = sub_1D6708C1C;
    v329 = v96;
    v110 = v353;
    v111 = v380;
    sub_1D5D2BC70(v353, sub_1D615B49C, v112, sub_1D615B4A4, &v330[-48], v104, v105);
    if (v111)
    {
      sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);

      v82 = v102;
      return sub_1D5D2CFE8(v82, sub_1D66D165C);
    }

    v354 = v103;

    sub_1D72647EC();
    v380 = 0;
    sub_1D5D2CFE8(v353, type metadata accessor for FormatVersionRequirement);

    v116 = v348;
    swift_beginAccess();
    v117 = v116[6];
    v118 = v343;
    v119 = v349;
    v120 = v347;
    (v347)(v343, v349, v350);
    swift_storeEnumTagMultiPayload();
    if (*(v117 + 16))
    {
      LOBYTE(v369) = 0;
      v121 = swift_allocObject();
      v353 = xmmword_1D7297410;
      *(v121 + 16) = xmmword_1D7297410;
      *(v121 + 32) = v369;
      *(v121 + 40) = v333;
      *(v121 + 48) = v332;

      *&v352 = v117;

      v122 = v351;
      v123 = sub_1D72647CC();
      LOBYTE(v369) = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = v123;
      *(v124 + 24) = v353;
      *(v124 + 40) = v369;
      v125 = v354[3];
      v126 = v354[4];
      v127 = __swift_project_boxed_opaque_existential_1(v354, v125);
      MEMORY[0x1EEE9AC00](v127, v128);
      MEMORY[0x1EEE9AC00](v129, v130);
      *&v330[-32] = sub_1D5B4AA6C;
      *&v330[-24] = 0;
      v328 = sub_1D6708C1C;
      v329 = v121;
      v131 = v380;
      v133 = sub_1D5D2F7A4(v118, sub_1D615B49C, v132, sub_1D615B4A4, &v330[-48], v125, v126);
      if (v131)
      {
        sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);

        v82 = v122;
        return sub_1D5D2CFE8(v82, sub_1D66D165C);
      }

      v134 = v133;
      v380 = 0;
      v135 = v352;

      if (v134)
      {
        v369 = v353;
        LOBYTE(v370) = 0;
        *&v361 = v135;
        sub_1D5C34D84(0, &qword_1EDF04C78, &type metadata for FormatVideoPlayerNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D66D1968();
        v136 = v351;
        v137 = v380;
        sub_1D72647EC();
        v120 = v347;
        v138 = v348;
        v119 = v349;
        v139 = v342;
        v380 = v137;
        if (v137)
        {

          sub_1D5D2CFE8(v343, type metadata accessor for FormatVersionRequirement);
          v82 = v136;
          return sub_1D5D2CFE8(v82, sub_1D66D165C);
        }

        sub_1D5D2CFE8(v343, type metadata accessor for FormatVersionRequirement);
        v116 = v138;
LABEL_26:
        v140 = v116[7];
        v141 = v119;
        v142 = v120;
        (v120)(v139, v141, v350);
        swift_storeEnumTagMultiPayload();
        v353 = xmmword_1D72BAA60;
        v369 = xmmword_1D72BAA60;
        LOBYTE(v370) = 0;
        LOBYTE(v361) = 0;
        v144 = swift_allocObject();
        *(v144 + 16) = v353;
        *(v144 + 32) = v361;
        v145 = v139;
        v146 = v333;
        *(v144 + 40) = v333;
        v147 = v332;
        *(v144 + 48) = v332;
        if (v140)
        {
          *&v352 = v330;
          *&v361 = v140;
          MEMORY[0x1EEE9AC00](v147, v143);
          v344 = &v330[-48];
          *&v330[-32] = sub_1D5B4AA6C;
          *&v330[-24] = 0;
          v328 = sub_1D6708C1C;
          v329 = v144;
          LOBYTE(v355) = 0;
          v149 = v148;
          v150 = swift_allocObject();
          *(v150 + 16) = v353;
          *(v150 + 32) = v355;
          *(v150 + 40) = v146;
          *(v150 + 48) = v149;
          swift_retain_n();

          v151 = sub_1D72647CC();
          LOBYTE(v355) = 0;
          v152 = swift_allocObject();
          *(v152 + 16) = v151;
          *(v152 + 24) = v353;
          *(v152 + 40) = v355;
          v153 = v354[3];
          v154 = v354[4];
          v155 = __swift_project_boxed_opaque_existential_1(v354, v153);
          MEMORY[0x1EEE9AC00](v155, v156);
          MEMORY[0x1EEE9AC00](v157, v158);
          v159 = v344;
          *&v330[-32] = sub_1D615B4A4;
          *&v330[-24] = v159;
          v328 = sub_1D6708C1C;
          v329 = v150;
          v160 = v380;
          v162 = sub_1D5D2F7A4(v145, sub_1D615B49C, v161, sub_1D615B4A4, &v330[-48], v153, v154);
          if (v160)
          {

            v163 = v351;

            v164 = v145;
LABEL_29:
            sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
            goto LABEL_30;
          }

          v167 = v162;

          if (v167)
          {
            sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
            sub_1D66582DC();
            sub_1D72647EC();
            v169 = v347;
            v168 = v348;
            v165 = v349;
            v380 = 0;

            sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
            v116 = v168;
            v166 = v169;
          }

          else
          {
            v380 = 0;

            sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
            v166 = v347;
            v116 = v348;
            v165 = v349;
          }
        }

        else
        {

          sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);

          v165 = v349;
          v166 = v142;
        }

        v170 = v116[8];
        sub_1D5B58478(0);
        v172 = *(v171 + 48);
        *&v352 = v171;
        v173 = v341;
        v174 = &v341[*(v171 + 64)];
        v175 = v165;
        v176 = v350;
        (v166)(v341, v175, v350);
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v344 = __swift_project_value_buffer(v176, qword_1EDFFCC90);
        v166(v173 + v172);
        *v174 = 0;
        v174[1] = 0;
        swift_storeEnumTagMultiPayload();
        v353 = xmmword_1D72BAA70;
        v369 = xmmword_1D72BAA70;
        LOBYTE(v370) = 0;
        LOBYTE(v361) = 0;
        v177 = swift_allocObject();
        v179 = v177;
        *(v177 + 16) = v353;
        *(v177 + 32) = v361;
        v181 = v332;
        v180 = v333;
        *(v177 + 40) = v333;
        *(v177 + 48) = v181;
        if ((~v170 & 0xF000000000000007) != 0)
        {
          v343 = v330;
          *&v361 = v170;
          MEMORY[0x1EEE9AC00](v177, v178);
          *&v330[-32] = sub_1D5B4AA6C;
          *&v330[-24] = 0;
          v328 = sub_1D6708C1C;
          v329 = v179;
          LOBYTE(v355) = 0;
          v185 = swift_allocObject();
          *(v185 + 16) = v353;
          *(v185 + 32) = v355;
          *(v185 + 40) = v180;
          *(v185 + 48) = v181;
          swift_retain_n();
          sub_1D5D04BD4(v170);
          v186 = sub_1D72647CC();
          LOBYTE(v355) = 0;
          v187 = swift_allocObject();
          *(v187 + 16) = v186;
          *(v187 + 24) = v353;
          *(v187 + 40) = v355;
          v188 = v354[3];
          v189 = v354[4];
          v190 = __swift_project_boxed_opaque_existential_1(v354, v188);
          MEMORY[0x1EEE9AC00](v190, v191);
          MEMORY[0x1EEE9AC00](v192, v193);
          *&v330[-32] = sub_1D615B4A4;
          *&v330[-24] = &v330[-48];
          v328 = sub_1D6708C1C;
          v329 = v185;
          v194 = v380;
          v196 = sub_1D5D2F7A4(v173, sub_1D615B49C, v195, sub_1D615B4A4, &v330[-48], v188, v189);
          if (v194)
          {

            v197 = v341;

            goto LABEL_67;
          }

          v198 = v196;

          if (v198)
          {
            sub_1D5D4A808();
            sub_1D72647EC();
            v183 = v348;
            v184 = v349;
            v380 = 0;
          }

          else
          {
            v380 = 0;

            v183 = v348;
            v184 = v349;
          }

          v182 = v341;
        }

        else
        {

          v182 = v173;
          v183 = v348;
          v184 = v349;
        }

        sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);
        v199 = v183[9];
        v200 = *(v352 + 48);
        v201 = v340;
        v202 = &v340[*(v352 + 64)];
        v203 = v184;
        v204 = v350;
        v205 = v347;
        (v347)(v340, v203, v350);
        v205(&v201[v200], v344, v204);
        *v202 = 0;
        v202[1] = 0;
        swift_storeEnumTagMultiPayload();
        v353 = xmmword_1D72BAA80;
        v369 = xmmword_1D72BAA80;
        LOBYTE(v370) = 0;
        LOBYTE(v361) = 0;
        v206 = swift_allocObject();
        v208 = v206;
        *(v206 + 16) = v353;
        *(v206 + 32) = v361;
        v209 = v332;
        v210 = v333;
        *(v206 + 40) = v333;
        *(v206 + 48) = v209;
        if (v199)
        {
          v343 = v330;
          *&v361 = v199;
          MEMORY[0x1EEE9AC00](v206, v207);
          *&v330[-32] = sub_1D5B4AA6C;
          *&v330[-24] = 0;
          v328 = sub_1D6708C1C;
          v329 = v208;
          LOBYTE(v355) = 0;
          v211 = swift_allocObject();
          *(v211 + 16) = v353;
          *(v211 + 32) = v355;
          *(v211 + 40) = v210;
          *(v211 + 48) = v209;
          swift_retain_n();

          v342 = v199;
          v212 = sub_1D72647CC();
          LOBYTE(v355) = 0;
          v213 = swift_allocObject();
          *(v213 + 16) = v212;
          *(v213 + 24) = v353;
          *(v213 + 40) = v355;
          v214 = v354[3];
          v215 = v354[4];
          v216 = __swift_project_boxed_opaque_existential_1(v354, v214);
          MEMORY[0x1EEE9AC00](v216, v217);
          MEMORY[0x1EEE9AC00](v218, v219);
          *&v330[-32] = sub_1D615B4A4;
          *&v330[-24] = &v330[-48];
          v328 = sub_1D6708C1C;
          v329 = v211;
          v220 = v380;
          v222 = sub_1D5D2F7A4(v201, sub_1D615B49C, v221, sub_1D615B4A4, &v330[-48], v214, v215);
          if (v220)
          {

            v223 = v340;
LABEL_68:
            sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);
            v82 = v351;
            return sub_1D5D2CFE8(v82, sub_1D66D165C);
          }

          v226 = v222;

          if (v226)
          {
            sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
            sub_1D66612AC();
            sub_1D72647EC();
            v225 = v348;
            v380 = 0;

            sub_1D5D2CFE8(v340, type metadata accessor for FormatVersionRequirement);
          }

          else
          {
            v380 = 0;

            sub_1D5D2CFE8(v340, type metadata accessor for FormatVersionRequirement);
            v225 = v348;
          }

          v224 = v332;
        }

        else
        {
          v224 = v209;

          sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);

          v225 = v348;
        }

        v227 = v225[11];
        v342 = v225[10];
        v343 = v227;
        v228 = *(v225 + 96);
        v229 = *(v352 + 48);
        v230 = v339;
        v231 = &v339[*(v352 + 64)];
        v232 = v350;
        v233 = v347;
        (v347)(v339, v349, v350);
        v233(&v230[v229], v344, v232);
        *v231 = 0;
        v231[1] = 0;
        swift_storeEnumTagMultiPayload();
        v353 = xmmword_1D72BAA90;
        v378 = xmmword_1D72BAA90;
        v379 = 0;
        LOBYTE(v369) = 0;
        v234 = swift_allocObject();
        v236 = v234;
        *(v234 + 16) = v353;
        *(v234 + 32) = v369;
        v237 = v333;
        *(v234 + 40) = v333;
        *(v234 + 48) = v224;
        if (v228 > 0xFD)
        {

          sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);

          v239 = v347;
          v238 = v348;
          goto LABEL_56;
        }

        v267 = v228;
        v341 = v330;
        v268 = v342;
        v269 = v343;
        v375 = v342;
        v376 = v343;
        v331 = v267;
        v377 = v267;
        MEMORY[0x1EEE9AC00](v234, v235);
        v340 = &v330[-48];
        *&v330[-32] = sub_1D5B4AA6C;
        *&v330[-24] = 0;
        v328 = sub_1D6708C1C;
        v329 = v236;
        LOBYTE(v369) = 0;
        v270 = swift_allocObject();
        *(v270 + 16) = v353;
        *(v270 + 32) = v369;
        *(v270 + 40) = v237;
        *(v270 + 48) = v224;
        swift_retain_n();
        sub_1D5ED34B0(v268, v269, v331);
        v271 = sub_1D72647CC();
        LOBYTE(v369) = 0;
        v272 = swift_allocObject();
        *(v272 + 16) = v271;
        *(v272 + 24) = v353;
        *(v272 + 40) = v369;
        v273 = v354[3];
        v274 = v354[4];
        v275 = __swift_project_boxed_opaque_existential_1(v354, v273);
        MEMORY[0x1EEE9AC00](v275, v276);
        MEMORY[0x1EEE9AC00](v277, v278);
        v279 = v340;
        *&v330[-32] = sub_1D615B4A4;
        *&v330[-24] = v279;
        v328 = sub_1D6708C1C;
        v329 = v270;
        v280 = v380;
        v282 = sub_1D5D2F7A4(v230, sub_1D615B49C, v281, sub_1D615B4A4, &v330[-48], v273, v274);
        if (!v280)
        {
          v308 = v282;

          if (v308)
          {
            sub_1D6661258();
            sub_1D72647EC();
            v239 = v347;
            v238 = v348;
            v309 = v339;
            v380 = 0;

            sub_1D5ED34A0(v375, v376, v377);
            sub_1D5D2CFE8(v309, type metadata accessor for FormatVersionRequirement);
          }

          else
          {
            v380 = 0;

            sub_1D5ED34A0(v375, v376, v377);
            sub_1D5D2CFE8(v339, type metadata accessor for FormatVersionRequirement);
            v239 = v347;
            v238 = v348;
          }

          v224 = v332;
LABEL_56:
          v240 = *(v238 + 19);
          v374 = *(v238 + 184);
          v241 = *(v238 + 21);
          v372 = v240;
          v373 = v241;
          v242 = *(v238 + 17);
          v243 = *(v238 + 15);
          v369 = *(v238 + 13);
          v370 = v243;
          v371 = v242;
          v244 = *(v352 + 48);
          v245 = v338;
          v246 = &v338[*(v352 + 64)];
          v247 = v350;
          v239(v338, v349, v350);
          v239(&v245[v244], v344, v247);
          *v246 = 0;
          v246[1] = 0;
          swift_storeEnumTagMultiPayload();
          v353 = xmmword_1D72BAAA0;
          v367 = xmmword_1D72BAAA0;
          v368 = 0;
          LOBYTE(v361) = 0;
          v248 = swift_allocObject();
          v250 = v248;
          *(v248 + 16) = v353;
          *(v248 + 32) = v361;
          v251 = v333;
          *(v248 + 40) = v333;
          *(v248 + 48) = v224;
          if (v374 == 254)
          {

            v252 = v337;
            v253 = v348;
          }

          else
          {
            *&v352 = v330;
            v363 = v371;
            v364 = v372;
            v365 = v373;
            v366 = v374;
            v361 = v369;
            v362 = v370;
            MEMORY[0x1EEE9AC00](v248, v249);
            *&v330[-32] = sub_1D5B4AA6C;
            *&v330[-24] = 0;
            v328 = sub_1D6708C1C;
            v329 = v250;
            LOBYTE(v355) = 0;
            v283 = swift_allocObject();
            *(v283 + 16) = v353;
            *(v283 + 32) = v355;
            *(v283 + 40) = v251;
            *(v283 + 48) = v224;
            swift_retain_n();
            sub_1D5D355B8(&v369, &v355, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
            v284 = sub_1D72647CC();
            LOBYTE(v355) = 0;
            v285 = swift_allocObject();
            *(v285 + 16) = v284;
            *(v285 + 24) = v353;
            *(v285 + 40) = v355;
            v286 = v354[3];
            v287 = v354[4];
            v288 = __swift_project_boxed_opaque_existential_1(v354, v286);
            MEMORY[0x1EEE9AC00](v288, v289);
            MEMORY[0x1EEE9AC00](v290, v291);
            *&v330[-32] = sub_1D615B4A4;
            *&v330[-24] = &v330[-48];
            v328 = sub_1D6708C1C;
            v329 = v283;
            v292 = v380;
            v294 = sub_1D5D2F7A4(v245, sub_1D615B49C, v293, sub_1D615B4A4, &v330[-48], v286, v287);
            if (v292)
            {

              v357 = v363;
              v358 = v364;
              v359 = v365;
              v360 = v366;
              v355 = v361;
              v356 = v362;
              sub_1D601144C(&v355);
              v163 = v351;
              v164 = v245;
              goto LABEL_29;
            }

            v324 = v294;

            if (v324)
            {
              sub_1D6661204();
              sub_1D72647EC();
              v325 = v348;
              v252 = v337;
              v251 = v333;
              v380 = 0;

              v357 = v363;
              v358 = v364;
              v359 = v365;
              v360 = v366;
              v355 = v361;
              v356 = v362;
              sub_1D601144C(&v355);
              v224 = v332;
              v253 = v325;
            }

            else
            {
              v380 = 0;

              v357 = v363;
              v358 = v364;
              v359 = v365;
              v360 = v366;
              v355 = v361;
              v356 = v362;
              sub_1D601144C(&v355);
              v253 = v348;
              v252 = v337;
              v224 = v332;
              v251 = v333;
            }
          }

          sub_1D5D2CFE8(v338, type metadata accessor for FormatVersionRequirement);
          v254 = v253;
          v255 = v253[24];
          (v347)(v252, v349, v350);
          swift_storeEnumTagMultiPayload();
          v353 = xmmword_1D72BAAB0;
          v361 = xmmword_1D72BAAB0;
          LOBYTE(v362) = 0;
          LOBYTE(v355) = 0;
          v256 = swift_allocObject();
          v258 = v256;
          *(v256 + 16) = v353;
          *(v256 + 32) = v355;
          *(v256 + 40) = v251;
          *(v256 + 48) = v224;
          if ((~v255 & 0xF000000000000007) != 0)
          {
            *&v352 = v330;
            *&v355 = v255;
            MEMORY[0x1EEE9AC00](v256, v257);
            *&v330[-32] = sub_1D5B4AA6C;
            *&v330[-24] = 0;
            v328 = sub_1D6708C1C;
            v329 = v258;
            LOBYTE(v367) = 0;
            v295 = swift_allocObject();
            *(v295 + 16) = v353;
            *(v295 + 32) = v367;
            *(v295 + 40) = v251;
            *(v295 + 48) = v224;
            swift_retain_n();
            sub_1D5CFCFAC(v255);
            v296 = sub_1D72647CC();
            LOBYTE(v367) = 0;
            v297 = swift_allocObject();
            *(v297 + 16) = v296;
            *(v297 + 24) = v353;
            *(v297 + 40) = v367;
            v298 = v354[3];
            v299 = v354[4];
            v300 = __swift_project_boxed_opaque_existential_1(v354, v298);
            MEMORY[0x1EEE9AC00](v300, v301);
            MEMORY[0x1EEE9AC00](v302, v303);
            *&v330[-32] = sub_1D615B4A4;
            *&v330[-24] = &v330[-48];
            v328 = sub_1D6708C1C;
            v329 = v295;
            v304 = v380;
            v306 = sub_1D5D2F7A4(v337, sub_1D615B49C, v305, sub_1D615B4A4, &v330[-48], v298, v299);
            if (v304)
            {

              v163 = v351;
              v307 = v337;

              v164 = v307;
              goto LABEL_29;
            }

            v326 = v306;

            if (v326)
            {
              sub_1D5B55CBC();
              sub_1D72647EC();
              v252 = v337;
              v380 = 0;

              v254 = v348;
            }

            else
            {
              v380 = 0;

              v254 = v348;
              v252 = v337;
            }

            v251 = v333;
          }

          else
          {
          }

          sub_1D5D2CFE8(v252, type metadata accessor for FormatVersionRequirement);
          v259 = *(v254 + 200);
          if (qword_1EDF31F08 != -1)
          {
            swift_once();
          }

          v260 = v350;
          v261 = __swift_project_value_buffer(v350, qword_1EDFFCDE0);
          v262 = v336;
          (v347)(v336, v261, v260);
          swift_storeEnumTagMultiPayload();
          v353 = xmmword_1D72BAAC0;
          v361 = xmmword_1D72BAAC0;
          LOBYTE(v362) = 0;
          LOBYTE(v355) = 0;
          v264 = swift_allocObject();
          *(v264 + 16) = v353;
          *(v264 + 32) = v355;
          *(v264 + 40) = v251;
          v265 = v332;
          *(v264 + 48) = v332;
          if (v259 == 2)
          {

            v163 = v351;
            v266 = v262;
          }

          else
          {
            *&v352 = v330;
            LOBYTE(v355) = v259 & 1;
            MEMORY[0x1EEE9AC00](v265, v263);
            *&v330[-32] = sub_1D5B4AA6C;
            *&v330[-24] = 0;
            v328 = sub_1D6708C1C;
            v329 = v264;
            LOBYTE(v367) = 0;
            v311 = v310;
            v312 = swift_allocObject();
            *(v312 + 16) = v353;
            *(v312 + 32) = v367;
            *(v312 + 40) = v251;
            *(v312 + 48) = v311;
            swift_retain_n();
            v313 = sub_1D72647CC();
            LOBYTE(v367) = 0;
            v314 = swift_allocObject();
            *(v314 + 16) = v313;
            *(v314 + 24) = v353;
            *(v314 + 40) = v367;
            v315 = v354[3];
            v316 = v354[4];
            v317 = __swift_project_boxed_opaque_existential_1(v354, v315);
            MEMORY[0x1EEE9AC00](v317, v318);
            MEMORY[0x1EEE9AC00](v319, v320);
            *&v330[-32] = sub_1D615B4A4;
            *&v330[-24] = &v330[-48];
            v328 = sub_1D6708C1C;
            v329 = v312;
            v321 = v380;
            v323 = sub_1D5D2F7A4(v262, sub_1D615B49C, v322, sub_1D615B4A4, &v330[-48], v315, v316);
            if (v321)
            {
              sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);

              v163 = v351;
              goto LABEL_30;
            }

            v327 = v323;

            if (v327)
            {
              v163 = v351;
              sub_1D72647EC();
            }

            else
            {
              v163 = v351;
            }

            v266 = v336;
          }

          sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);

LABEL_30:
          v82 = v163;
          return sub_1D5D2CFE8(v82, sub_1D66D165C);
        }

        v197 = v339;
        sub_1D5ED34A0(v375, v376, v377);
LABEL_67:
        v223 = v197;
        goto LABEL_68;
      }

      sub_1D5D2CFE8(v343, type metadata accessor for FormatVersionRequirement);

      v120 = v347;
      v116 = v348;
      v119 = v349;
    }

    else
    {
      sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
    }

    v139 = v342;
    goto LABEL_26;
  }

  return sub_1D5D2CFE8(v114, sub_1D66D165C);
}

uint64_t sub_1D65F291C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x726F7463656C6573;
    v8 = 0x6168706C61;
    if (a1 != 3)
    {
      v8 = 0x756F72676B636162;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7373616C63;
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
    v1 = 0x6F6C6F43746E6974;
    v2 = 0xD000000000000018;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73726564726F62;
    v4 = 0x615272656E726F63;
    if (a1 != 6)
    {
      v4 = 0x776F64616873;
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

uint64_t sub_1D65F2A90(uint64_t a1)
{
  v2 = sub_1D66D185C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65F2ACC(uint64_t a1)
{
  v2 = sub_1D66D185C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65F2B78@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t (*a6)(__n128)@<X5>, void *a7@<X8>)
{
  v59 = a6;
  v58 = a7;
  v11 = a2(0);
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, a5, &unk_1D7321584);
  v15 = v80;
  sub_1D7264B0C();
  v16 = v15;
  if (v15)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v16);
    swift_willThrow();

    v51 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v17 = v59;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v21 = v60;
  v20 = v61;
  v22 = v14;
  if (v19)
  {
    v23 = sub_1D726433C();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v17;
      v26 = (v23 + 48);
      while (*v26 != 1)
      {
        v26 += 24;
        if (!--v24)
        {
          goto LABEL_7;
        }
      }

      v28 = v20;
      v29 = *(v26 - 2);
      v30 = *(v26 - 1);

      v32 = (v25)(v31);
      sub_1D5E2D970();
      v16 = swift_allocError();
      *v33 = v29;
      *(v33 + 8) = v30;
      *(v33 + 16) = v32;
      *(v33 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v21 + 8))(v22, v28);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v74 = 0uLL;
  LOBYTE(v75) = 0;
  sub_1D726431C();
  v27 = *(&v66 + 1);
  v80 = v66;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v74 = xmmword_1D728CF30;
  LOBYTE(v75) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v59 = v27;
  v57 = a1;
  v35 = v66;
  v74 = xmmword_1D7297410;
  LOBYTE(v75) = 0;
  sub_1D5C4A954();
  v36 = v14;
  sub_1D726427C();
  v37 = v66;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v74 = xmmword_1D72BAA60;
  LOBYTE(v75) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v56 = v37;
  v38 = v66;
  v66 = xmmword_1D72BAA70;
  LOBYTE(v67) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v55 = v38;
  v39 = v74;
  v54 = v75;
  v72 = xmmword_1D72BAA80;
  v73 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v53 = v39;
  v69 = v77;
  v70 = v78;
  v66 = v74;
  v71 = v79;
  v67 = v75;
  v68 = v76;
  v63 = xmmword_1D72BAA90;
  v64 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v52 = v65;
  v63 = xmmword_1D72BAAA0;
  v64 = 0;
  v40 = sub_1D726423C();
  v41 = v53;
  v42 = v40;
  (*(v21 + 8))(v36, v20);
  *&v62[23] = v67;
  *&v62[7] = v66;
  *&v62[55] = v69;
  *&v62[39] = v68;
  *&v62[71] = v70;
  v62[87] = v71;
  v43 = v58;
  v44 = v59;
  *v58 = v80;
  v43[1] = v44;
  v45 = v55;
  v46 = v56;
  v43[2] = v35;
  v43[3] = v46;
  v43[4] = v45;
  *(v43 + 5) = __PAIR128__(*(&v53 + 1), v41);
  *(v43 + 56) = v54;
  v47 = *v62;
  *(v43 + 73) = *&v62[16];
  *(v43 + 57) = v47;
  v48 = *&v62[32];
  v49 = *&v62[48];
  v50 = *&v62[64];
  *(v43 + 137) = *&v62[80];
  *(v43 + 121) = v50;
  *(v43 + 105) = v49;
  *(v43 + 89) = v48;
  LODWORD(v45) = v65;
  *(v43 + 37) = *(&v65 + 3);
  *(v43 + 145) = v45;
  v43[19] = v52;
  *(v43 + 160) = v42;
  v51 = v57;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t FormatVideoPlayerNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v251 = &v248 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v255 = &v248 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v258 = &v248 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v257 = &v248 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v259 = &v248 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v262 = &v248 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v264 = &v248 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v248 - v26;
  sub_1D66D1C6C(0);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v248 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + 8);
  *&v275 = *v1;
  v34 = *(v1 + 24);
  v263 = *(v1 + 16);
  v35 = *(v1 + 40);
  v260 = *(v1 + 32);
  v261 = v34;
  v253 = *(v1 + 48);
  v254 = v35;
  v256 = *(v1 + 56);
  v36 = *(v1 + 112);
  v297 = *(v1 + 96);
  v298 = v36;
  v299 = *(v1 + 128);
  v300 = *(v1 + 144);
  v37 = *(v1 + 80);
  v295 = *(v1 + 64);
  v296 = v37;
  v252 = *(v1 + 152);
  v250 = *(v1 + 160);
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D66D1AEC(0);
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF24F88, sub_1D66D1AEC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatVideoPlayerNodeStyle.Selector, v41, v43, v38, &type metadata for FormatVideoPlayerNodeStyle.Selector, v41, &type metadata for FormatVersions.StarSkyC, v39, v32, v42, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD00);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v269 = v45;
  v270 = v46 + 16;
  v267 = v44;
  v265 = v47;
  (v47)(v27);
  v268 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v276 = v275;
  *(&v276 + 1) = v33;
  v282 = 0uLL;
  LOBYTE(v283) = 0;
  v48 = &v32[*(v29 + 44)];
  v50 = *v48;
  v49 = *(v48 + 1);
  *&v274 = v27;
  LOBYTE(v293) = 0;
  v51 = swift_allocObject();
  *&v275 = &v248;
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v293;
  *(v51 + 40) = v50;
  *(v51 + 48) = v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  *(&v248 - 4) = sub_1D5B4AA6C;
  *(&v248 - 3) = 0;
  v246 = sub_1D6708C20;
  v247 = v53;
  LOBYTE(v293) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 32) = v293;
  v271 = v50;
  *(v54 + 40) = v50;
  *(v54 + 48) = v49;
  sub_1D66D1D00(0);
  v56 = v55;
  v57 = sub_1D5B58B84(&qword_1EDF02F08, sub_1D66D1D00, MEMORY[0x1E69E6F60]);
  v266 = v49;
  swift_retain_n();
  v272 = v56;
  v273 = v57;
  v58 = sub_1D72647CC();
  LOBYTE(v293) = 0;
  v59 = swift_allocObject();
  *(v59 + 24) = 0;
  *(v59 + 32) = 0;
  *(v59 + 16) = v58;
  *(v59 + 40) = v293;
  v60 = *(v29 + 36);
  v61 = v32;
  v62 = &v32[v60];
  v63 = *(v62 + 3);
  v64 = *(v62 + 4);
  v65 = __swift_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v248 - 4) = sub_1D615B4A4;
  *(&v248 - 3) = (&v248 - 6);
  v246 = sub_1D6708C20;
  v247 = v54;
  v69 = v274;
  v70 = v301;
  sub_1D5D2BC70(v274, sub_1D615B49C, v71, sub_1D615B4A4, (&v248 - 6), v63, v64);
  if (v70)
  {
    sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

LABEL_25:
    v146 = v61;
    return sub_1D5D2CFE8(v146, sub_1D66D1C6C);
  }

  v301 = v62;

  sub_1D5D3E60C();
  sub_1D72647EC();
  *&v275 = 0;
  sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

  v72 = v264;
  v73 = v267;
  v265(v264, v269, v267);
  swift_storeEnumTagMultiPayload();
  v274 = xmmword_1D728CF30;
  v282 = xmmword_1D728CF30;
  LOBYTE(v283) = 0;
  LOBYTE(v276) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = v274;
  *(v75 + 32) = v276;
  v76 = v271;
  *(v75 + 40) = v271;
  v77 = v266;
  *(v75 + 48) = v266;
  v249 = v61;
  if (v263)
  {
    v248 = &v248;
    *&v276 = v263;
    MEMORY[0x1EEE9AC00](v77, v74);
    v79 = v78;
    *(&v248 - 4) = sub_1D5B4AA6C;
    *(&v248 - 3) = 0;
    v246 = sub_1D6708C20;
    v247 = v75;
    LOBYTE(v293) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v274;
    *(v80 + 32) = v293;
    *(v80 + 40) = v76;
    *(v80 + 48) = v79;
    swift_retain_n();

    v81 = sub_1D72647CC();
    LOBYTE(v293) = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = v81;
    *(v82 + 24) = v274;
    *(v82 + 40) = v293;
    v83 = *(v301 + 3);
    v84 = *(v301 + 4);
    v85 = __swift_project_boxed_opaque_existential_1(v301, v83);
    MEMORY[0x1EEE9AC00](v85, v86);
    MEMORY[0x1EEE9AC00](v87, v88);
    *(&v248 - 4) = sub_1D615B4A4;
    *(&v248 - 3) = (&v248 - 6);
    v89 = v264;
    v246 = sub_1D6708C20;
    v247 = v80;
    v90 = v275;
    v92 = sub_1D5D2F7A4(v264, sub_1D615B49C, v91, sub_1D615B4A4, (&v248 - 6), v83, v84);
    *&v275 = v90;
    if (v90)
    {

      v61 = v249;
LABEL_8:

      v93 = v89;
LABEL_24:
      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
      goto LABEL_25;
    }

    v94 = v92;

    if (v94)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      v61 = v249;
      v95 = v275;
      sub_1D72647EC();
      v73 = v267;
      if (v95)
      {

        goto LABEL_8;
      }

      *&v275 = 0;

      sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
      v61 = v249;
      v73 = v267;
    }
  }

  else
  {

    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5B58478(0);
  v97 = *(v96 + 48);
  v264 = v96;
  v98 = v262;
  v99 = &v262[*(v96 + 64)];
  v100 = v265;
  v265(v262, v269, v73);
  v101 = v271;
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v263 = __swift_project_value_buffer(v73, qword_1EDFFCC90);
  v100(v98 + v97);
  *v99 = 0;
  *(v99 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v274 = xmmword_1D7297410;
  v282 = xmmword_1D7297410;
  LOBYTE(v283) = 0;
  LOBYTE(v276) = 0;
  v102 = swift_allocObject();
  v104 = v102;
  *(v102 + 16) = v274;
  *(v102 + 32) = v276;
  v105 = v266;
  *(v102 + 40) = v101;
  *(v102 + 48) = v105;
  if ((~v261 & 0xF000000000000007) != 0)
  {
    v248 = &v248;
    *&v276 = v261;
    MEMORY[0x1EEE9AC00](v102, v103);
    *(&v248 - 4) = sub_1D5B4AA6C;
    *(&v248 - 3) = 0;
    v246 = sub_1D6708C20;
    v247 = v104;
    LOBYTE(v293) = 0;
    v129 = v128;
    v130 = swift_allocObject();
    v131 = v101;
    v132 = v98;
    v133 = v130;
    *(v130 + 16) = v274;
    *(v130 + 32) = v293;
    *(v130 + 40) = v131;
    *(v130 + 48) = v105;
    swift_retain_n();
    sub_1D5D04BD4(v129);
    v134 = sub_1D72647CC();
    LOBYTE(v293) = 0;
    v135 = swift_allocObject();
    *(v135 + 16) = v134;
    *(v135 + 24) = v274;
    *(v135 + 40) = v293;
    v136 = *(v301 + 3);
    v137 = *(v301 + 4);
    v138 = __swift_project_boxed_opaque_existential_1(v301, v136);
    MEMORY[0x1EEE9AC00](v138, v139);
    MEMORY[0x1EEE9AC00](v140, v141);
    *(&v248 - 4) = sub_1D615B4A4;
    *(&v248 - 3) = (&v248 - 6);
    v246 = sub_1D6708C20;
    v247 = v133;
    v142 = v275;
    v144 = sub_1D5D2F7A4(v132, sub_1D615B49C, v143, sub_1D615B4A4, (&v248 - 6), v136, v137);
    if (v142)
    {

      v145 = v262;

      v93 = v145;
      goto LABEL_24;
    }

    v148 = v144;

    if (v148)
    {
      sub_1D5D4A808();
      sub_1D72647EC();
      v105 = v266;
      v98 = v262;
      *&v275 = 0;

      v100 = v265;
    }

    else
    {
      *&v275 = 0;

      v100 = v265;
      v105 = v266;
      v98 = v262;
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
  v106 = *(v264 + 48);
  v107 = v259;
  v108 = (v259 + *(v264 + 64));
  v109 = v267;
  (v100)(v259, v269, v267);
  (v100)(v107 + v106, v263, v109);
  *v108 = 0;
  v108[1] = 0;
  swift_storeEnumTagMultiPayload();
  v274 = xmmword_1D72BAA60;
  v282 = xmmword_1D72BAA60;
  LOBYTE(v283) = 0;
  LOBYTE(v276) = 0;
  v110 = swift_allocObject();
  v112 = v110;
  *(v110 + 16) = v274;
  *(v110 + 32) = v276;
  *(v110 + 40) = v271;
  *(v110 + 48) = v105;
  if (v260)
  {
    v262 = &v248;
    *&v276 = v260;
    MEMORY[0x1EEE9AC00](v110, v111);
    *(&v248 - 4) = sub_1D5B4AA6C;
    *(&v248 - 3) = 0;
    v246 = sub_1D6708C20;
    v247 = v112;
    LOBYTE(v293) = 0;
    v114 = v113;
    v115 = swift_allocObject();
    *(v115 + 16) = v274;
    *(v115 + 32) = v293;
    *(v115 + 40) = v114;
    *(v115 + 48) = v105;
    swift_retain_n();

    v116 = sub_1D72647CC();
    LOBYTE(v293) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v116;
    *(v117 + 24) = v274;
    *(v117 + 40) = v293;
    v118 = *(v301 + 3);
    v119 = *(v301 + 4);
    v120 = __swift_project_boxed_opaque_existential_1(v301, v118);
    MEMORY[0x1EEE9AC00](v120, v121);
    MEMORY[0x1EEE9AC00](v122, v123);
    *(&v248 - 4) = sub_1D615B4A4;
    *(&v248 - 3) = (&v248 - 6);
    v246 = sub_1D6708C20;
    v247 = v115;
    v124 = v275;
    v126 = sub_1D5D2F7A4(v107, sub_1D615B49C, v125, sub_1D615B4A4, (&v248 - 6), v118, v119);
    if (v124)
    {

      v127 = v107;
LABEL_51:
      sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
LABEL_52:
      v146 = v249;
      return sub_1D5D2CFE8(v146, sub_1D66D1C6C);
    }

    v149 = v126;

    if (v149)
    {
      sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
      sub_1D66612AC();
      sub_1D72647EC();
      v105 = v266;
      *&v275 = 0;

      sub_1D5D2CFE8(v259, type metadata accessor for FormatVersionRequirement);
      v100 = v265;
    }

    else
    {
      *&v275 = 0;

      sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);
      v100 = v265;
      v105 = v266;
    }
  }

  else
  {

    sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);
  }

  v150 = *(v264 + 48);
  v151 = v257;
  v152 = (v257 + *(v264 + 64));
  v153 = v267;
  (v100)(v257, v269, v267);
  v154 = v153;
  v155 = v151;
  (v100)(v151 + v150, v263, v154);
  *v152 = 0;
  v152[1] = 0;
  swift_storeEnumTagMultiPayload();
  v274 = xmmword_1D72BAA70;
  v293 = xmmword_1D72BAA70;
  v294 = 0;
  LOBYTE(v282) = 0;
  v156 = swift_allocObject();
  v158 = v156;
  *(v156 + 16) = v274;
  *(v156 + 32) = v282;
  *(v156 + 40) = v271;
  *(v156 + 48) = v105;
  v159 = v256;
  if (v256 <= 0xFD)
  {
    v181 = v105;
    v262 = &v248;
    v183 = v253;
    v182 = v254;
    v290 = v254;
    v291 = v253;
    v292 = v256;
    MEMORY[0x1EEE9AC00](v156, v157);
    v261 = (&v248 - 6);
    *(&v248 - 4) = sub_1D5B4AA6C;
    *(&v248 - 3) = 0;
    v246 = sub_1D6708C20;
    v247 = v158;
    LOBYTE(v282) = 0;
    v185 = v184;
    v186 = swift_allocObject();
    *(v186 + 16) = v274;
    *(v186 + 32) = v282;
    *(v186 + 40) = v185;
    *(v186 + 48) = v181;
    swift_retain_n();
    sub_1D5ED34B0(v182, v183, v159);
    v187 = sub_1D72647CC();
    LOBYTE(v282) = 0;
    v188 = swift_allocObject();
    *(v188 + 16) = v187;
    *(v188 + 24) = v274;
    *(v188 + 40) = v282;
    v189 = *(v301 + 3);
    v190 = *(v301 + 4);
    v191 = __swift_project_boxed_opaque_existential_1(v301, v189);
    MEMORY[0x1EEE9AC00](v191, v192);
    MEMORY[0x1EEE9AC00](v193, v194);
    v195 = v261;
    *(&v248 - 4) = sub_1D615B4A4;
    *(&v248 - 3) = v195;
    v246 = sub_1D6708C20;
    v247 = v186;
    v196 = v275;
    v198 = sub_1D5D2F7A4(v155, sub_1D615B49C, v197, sub_1D615B4A4, (&v248 - 6), v189, v190);
    if (v196)
    {

      sub_1D5ED34A0(v290, v291, v292);
LABEL_50:
      v127 = v155;
      goto LABEL_51;
    }

    v228 = v198;

    if (v228)
    {
      sub_1D6661258();
      sub_1D72647EC();
      v105 = v266;
      *&v275 = 0;

      sub_1D5ED34A0(v290, v291, v292);
      sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);
      v100 = v265;
    }

    else
    {
      *&v275 = 0;

      sub_1D5ED34A0(v290, v291, v292);
      sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
      v100 = v265;
      v105 = v266;
    }
  }

  else
  {

    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
  }

  v160 = *(v264 + 48);
  v161 = v258;
  v162 = (v258 + *(v264 + 64));
  v163 = v267;
  (v100)(v258, v269, v267);
  (v100)(v161 + v160, v263, v163);
  *v162 = 0;
  v162[1] = 0;
  swift_storeEnumTagMultiPayload();
  v274 = xmmword_1D72BAA80;
  v288 = xmmword_1D72BAA80;
  v289 = 0;
  LOBYTE(v282) = 0;
  v164 = swift_allocObject();
  v166 = v164;
  *(v164 + 16) = v274;
  *(v164 + 32) = v282;
  v167 = v271;
  *(v164 + 40) = v271;
  *(v164 + 48) = v105;
  if (v300 == 254)
  {

    v168 = v255;
    goto LABEL_38;
  }

  v199 = v167;
  v284 = v297;
  v285 = v298;
  v286 = v299;
  v287 = v300;
  v282 = v295;
  v283 = v296;
  MEMORY[0x1EEE9AC00](v164, v165);
  *(&v248 - 4) = sub_1D5B4AA6C;
  *(&v248 - 3) = 0;
  v246 = sub_1D6708C20;
  v247 = v166;
  LOBYTE(v276) = 0;
  v200 = swift_allocObject();
  *(v200 + 16) = v274;
  *(v200 + 32) = v276;
  *(v200 + 40) = v199;
  *(v200 + 48) = v105;
  swift_retain_n();
  sub_1D5D355B8(&v295, &v276, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v201 = sub_1D72647CC();
  LOBYTE(v276) = 0;
  v202 = swift_allocObject();
  *(v202 + 16) = v201;
  *(v202 + 24) = v274;
  *(v202 + 40) = v276;
  v203 = *(v301 + 3);
  v204 = *(v301 + 4);
  v205 = __swift_project_boxed_opaque_existential_1(v301, v203);
  MEMORY[0x1EEE9AC00](v205, v206);
  MEMORY[0x1EEE9AC00](v207, v208);
  *(&v248 - 4) = sub_1D615B4A4;
  *(&v248 - 3) = (&v248 - 6);
  v246 = sub_1D6708C20;
  v247 = v200;
  v155 = v258;
  v209 = v275;
  v211 = sub_1D5D2F7A4(v258, sub_1D615B49C, v210, sub_1D615B4A4, (&v248 - 6), v203, v204);
  if (v209)
  {

    v278 = v284;
    v279 = v285;
    v280 = v286;
    v281 = v287;
    v276 = v282;
    v277 = v283;
    sub_1D601144C(&v276);
    goto LABEL_50;
  }

  v244 = v211;

  if (v244)
  {
    sub_1D6661204();
    sub_1D72647EC();
    v168 = v255;
    v105 = v266;
    *&v275 = 0;

    v278 = v284;
    v279 = v285;
    v280 = v286;
    v281 = v287;
    v276 = v282;
    v277 = v283;
    sub_1D601144C(&v276);
    v100 = v265;
  }

  else
  {
    *&v275 = 0;

    v278 = v284;
    v279 = v285;
    v280 = v286;
    v281 = v287;
    v276 = v282;
    v277 = v283;
    sub_1D601144C(&v276);
    v168 = v255;
    v100 = v265;
    v105 = v266;
  }

LABEL_38:
  sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
  (v100)(v168, v269, v267);
  swift_storeEnumTagMultiPayload();
  v274 = xmmword_1D72BAA90;
  v282 = xmmword_1D72BAA90;
  LOBYTE(v283) = 0;
  LOBYTE(v276) = 0;
  v169 = swift_allocObject();
  v171 = v169;
  *(v169 + 16) = v274;
  *(v169 + 32) = v276;
  v172 = v271;
  *(v169 + 40) = v271;
  *(v169 + 48) = v105;
  v173 = v252;
  if ((~v252 & 0xF000000000000007) == 0)
  {

    v174 = v275;
LABEL_40:
    v175 = v251;
    goto LABEL_41;
  }

  *&v276 = v252;
  MEMORY[0x1EEE9AC00](v169, v170);
  *(&v248 - 4) = sub_1D5B4AA6C;
  *(&v248 - 3) = 0;
  v246 = sub_1D6708C20;
  v247 = v171;
  LOBYTE(v288) = 0;
  v212 = swift_allocObject();
  v213 = v105;
  v214 = v168;
  v215 = v212;
  *(v212 + 16) = v274;
  *(v212 + 32) = v288;
  *(v212 + 40) = v172;
  *(v212 + 48) = v213;
  swift_retain_n();
  sub_1D5CFCFAC(v173);
  v216 = sub_1D72647CC();
  LOBYTE(v288) = 0;
  v217 = swift_allocObject();
  *(v217 + 16) = v216;
  *(v217 + 24) = v274;
  *(v217 + 40) = v288;
  v218 = *(v301 + 3);
  v219 = *(v301 + 4);
  v220 = __swift_project_boxed_opaque_existential_1(v301, v218);
  MEMORY[0x1EEE9AC00](v220, v221);
  MEMORY[0x1EEE9AC00](v222, v223);
  *(&v248 - 4) = sub_1D615B4A4;
  *(&v248 - 3) = (&v248 - 6);
  v246 = sub_1D6708C20;
  v247 = v215;
  v224 = v275;
  v226 = sub_1D5D2F7A4(v214, sub_1D615B49C, v225, sub_1D615B4A4, (&v248 - 6), v218, v219);
  v174 = v224;
  if (v224)
  {

    v227 = v255;

    v127 = v227;
    goto LABEL_51;
  }

  v245 = v226;

  if (v245)
  {
    sub_1D5B55CBC();
    sub_1D72647EC();
    v168 = v255;
    v105 = v266;
    v174 = 0;

    goto LABEL_40;
  }

  v175 = v251;
  v168 = v255;
  v105 = v266;
LABEL_41:
  sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v176 = v267;
  v177 = __swift_project_value_buffer(v267, qword_1EDFFCDE0);
  v265(v175, v177, v176);
  swift_storeEnumTagMultiPayload();
  v275 = xmmword_1D72BAAA0;
  v282 = xmmword_1D72BAAA0;
  LOBYTE(v283) = 0;
  LOBYTE(v276) = 0;
  v178 = swift_allocObject();
  v180 = v178;
  *(v178 + 16) = v275;
  *(v178 + 32) = v276;
  *(v178 + 40) = v271;
  *(v178 + 48) = v105;
  if (v250 == 2)
  {
  }

  else
  {
    *&v274 = &v248;
    LOBYTE(v276) = v250 & 1;
    MEMORY[0x1EEE9AC00](v178, v179);
    v229 = v105;
    *(&v248 - 4) = sub_1D5B4AA6C;
    *(&v248 - 3) = 0;
    v246 = sub_1D6708C20;
    v247 = v180;
    LOBYTE(v288) = 0;
    v231 = v230;
    v232 = swift_allocObject();
    *(v232 + 16) = v275;
    *(v232 + 32) = v288;
    *(v232 + 40) = v231;
    *(v232 + 48) = v229;
    swift_retain_n();
    v233 = v175;
    v234 = sub_1D72647CC();
    LOBYTE(v288) = 0;
    v235 = swift_allocObject();
    *(v235 + 16) = v234;
    *(v235 + 24) = v275;
    *(v235 + 40) = v288;
    v236 = v174;
    v237 = *(v301 + 3);
    v238 = *(v301 + 4);
    v239 = __swift_project_boxed_opaque_existential_1(v301, v237);
    MEMORY[0x1EEE9AC00](v239, v240);
    MEMORY[0x1EEE9AC00](v241, v242);
    *(&v248 - 4) = sub_1D615B4A4;
    *(&v248 - 3) = (&v248 - 6);
    v246 = sub_1D6708C20;
    v247 = v232;
    sub_1D5D2F7A4(v233, sub_1D615B49C, v243, sub_1D615B4A4, (&v248 - 6), v237, v238);
    if (v236)
    {
      sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);

      goto LABEL_52;
    }

    sub_1D72647EC();
    v175 = v251;
  }

  sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v249, sub_1D66D1C6C);
}

uint64_t sub_1D65F555C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726F7463656C6573;
    v6 = 0x756F72676B636162;
    if (a1 != 2)
    {
      v6 = 0x73726564726F62;
    }

    if (a1)
    {
      v5 = 0x6168706C61;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F6C6F43746E6974;
    v2 = 0xD000000000000018;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x615272656E726F63;
    if (a1 != 4)
    {
      v3 = 0x776F64616873;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D65F568C(uint64_t a1)
{
  v2 = sub_1D66D1BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65F56C8(uint64_t a1)
{
  v2 = sub_1D66D1BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65F5704()
{
  v1 = *v0;
  v2 = 0x746E6F436F676F6CLL;
  v3 = 0x697365526F676F6CLL;
  v4 = 0x61727544776F6873;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A69536F676F6CLL;
  if (v1 != 1)
  {
    v5 = 0x6C7974536F676F6CLL;
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

uint64_t sub_1D65F57D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66D247C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65F5808(uint64_t a1)
{
  v2 = sub_1D666D270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65F5844(uint64_t a1)
{
  v2 = sub_1D666D270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D65F5880(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6172476F65646976;
    v6 = 0x6B63616279616C70;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0x676E69706F6F6CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F69746341646E65;
    v2 = 0xD000000000000016;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646574756DLL;
    if (a1 != 4)
    {
      v3 = 0x6172476567616D69;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D65F59AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66D2690(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65F59E4(uint64_t a1)
{
  v2 = sub_1D666B5E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65F5A20(uint64_t a1)
{
  v2 = sub_1D666B5E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatViewNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v377 = &v353 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v356 = &v353 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v360 = &v353 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v357 = &v353 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v358 = &v353 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v359 = &v353 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v361 = &v353 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v363 = &v353 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v364 = &v353 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v366 = &v353 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v367 = &v353 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v369 = &v353 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v376 = (&v353 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *&v380 = &v353 - v46;
  sub_1D66D2984(0);
  v379 = v47;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v353 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1[3];
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v51);
  sub_1D5CC4D10(0);
  v54 = v53;
  v55 = sub_1D5B58B84(&qword_1EDF24BD8, sub_1D5CC4D10, &unk_1D7321584);
  sub_1D5D2EE70(v4, v54, v56, v51, v4, v54, &type metadata for FormatVersions.JazzkonC, v52, v50, v55, &off_1F51F6C78);
  swift_beginAccess();
  v58 = v2[2];
  v57 = v2[3];
  v375 = v2;
  v59 = qword_1EDF31EB0;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = sub_1D725BD1C();
  v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
  v62 = *(v60 - 8);
  v63 = *(v62 + 16);
  v64 = v62 + 16;
  v63(v380, v61, v60);
  v65 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v66 = v377;
  v371 = v58;
  sub_1D725892C();
  v67 = sub_1D725895C();
  v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
  v374 = v60;
  v372 = v64;
  v373 = v65;
  v370 = v61;
  if (v68 == 1)
  {
    v365 = v57;
    v368 = v63;
    sub_1D5D35558(v66, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v69 = v379;
    v70 = &v50[*(v379 + 11)];
    v72 = *v70;
    v71 = *(v70 + 1);
    LOBYTE(v381) = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = 0;
    *(v73 + 24) = 0;
    *(v73 + 32) = v381;
    *(v73 + 40) = v72;
    *(v73 + 48) = v71;
    sub_1D5E19518(0);
    sub_1D5B58B84(&qword_1EDF02A98, sub_1D5E19518, MEMORY[0x1E69E6F60]);

    v74 = sub_1D72647CC();
    LOBYTE(v381) = 0;
    v75 = v50;
    v76 = swift_allocObject();
    *(v76 + 24) = 0;
    *(v76 + 32) = 0;
    *(v76 + 16) = v74;
    *(v76 + 40) = v381;
    v77 = &v75[*(v69 + 9)];
    v78 = *(v77 + 3);
    v79 = *(v77 + 4);
    v80 = __swift_project_boxed_opaque_existential_1(v77, v78);
    MEMORY[0x1EEE9AC00](v80, v81);
    MEMORY[0x1EEE9AC00](v82, v83);
    *(&v353 - 4) = sub_1D5B4AA6C;
    *(&v353 - 3) = 0;
    v351 = sub_1D66D2A18;
    v352 = v73;
    v84 = v380;
    v85 = v378;
    v87 = sub_1D5D2F7A4(v380, sub_1D615B49C, v86, sub_1D615B4A4, (&v353 - 6), v78, v79);
    if (v85)
    {
      sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

      v88 = v75;
      return sub_1D5D2CFE8(v88, sub_1D66D2984);
    }

    v115 = v87;

    if (v115)
    {
      v381 = 0uLL;
      LOBYTE(v382) = 0;
      v393 = v371;
      v394 = v365;
      v50 = v75;
      sub_1D72647EC();

      sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);
      v63 = v368;
      v60 = v374;
      v378 = 0;
      v61 = v370;
    }

    else
    {
      sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

      v378 = 0;
      v50 = v75;
      v63 = v368;
      v61 = v370;
      v60 = v374;
    }
  }

  else
  {
    sub_1D5D2CFE8(v380, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v66, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v90 = v375[4];
  v91 = v376;
  v63(v376, v61, v60);
  swift_storeEnumTagMultiPayload();
  v393 = v90;
  v380 = xmmword_1D728CF30;
  v381 = xmmword_1D728CF30;
  LOBYTE(v382) = 0;
  v92 = &v50[*(v379 + 11)];
  v93 = *v92;
  v94 = *(v92 + 1);
  LOBYTE(v392) = 0;
  v95 = swift_allocObject();
  *&v377 = &v353;
  *(v95 + 16) = v380;
  *(v95 + 32) = v392;
  *(v95 + 40) = v93;
  *(v95 + 48) = v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v371 = &v353 - 6;
  *(&v353 - 4) = sub_1D5B4AA6C;
  *(&v353 - 3) = 0;
  v351 = sub_1D6708C28;
  v352 = v97;
  LOBYTE(v392) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v380;
  *(v98 + 32) = v392;
  v354 = v93;
  *(v98 + 40) = v93;
  *(v98 + 48) = v94;
  sub_1D5E19518(0);
  v100 = v99;
  v101 = sub_1D5B58B84(&qword_1EDF02A98, sub_1D5E19518, MEMORY[0x1E69E6F60]);
  v355 = v94;
  swift_retain_n();
  v365 = v100;
  v362 = v101;
  v102 = sub_1D72647CC();
  LOBYTE(v392) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v380;
  *(v103 + 40) = v392;
  v104 = *(v379 + 9);
  *&v380 = v50;
  v105 = &v50[v104];
  v106 = *(v105 + 3);
  v107 = *(v105 + 4);
  v108 = __swift_project_boxed_opaque_existential_1(v105, v106);
  MEMORY[0x1EEE9AC00](v108, v109);
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = v371;
  *(&v353 - 4) = sub_1D615B4A4;
  *(&v353 - 3) = v112;
  v351 = sub_1D6708C28;
  v352 = v98;
  v113 = v378;
  sub_1D5D2BC70(v91, sub_1D615B49C, v114, sub_1D615B4A4, (&v353 - 6), v106, v107);
  if (v113)
  {
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v380, sub_1D66D2984);
  }

  v379 = v105;
  v368 = v63;

  sub_1D5CA1E90();
  sub_1D72647EC();
  v378 = 0;
  sub_1D5D2CFE8(v376, type metadata accessor for FormatVersionRequirement);

  v116 = v375[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v117 = v374;
  v118 = __swift_project_value_buffer(v374, qword_1EDFFCD68);
  v119 = v369;
  v120 = v368;
  v368(v369, v118, v117);
  swift_storeEnumTagMultiPayload();
  v377 = xmmword_1D7297410;
  v381 = xmmword_1D7297410;
  LOBYTE(v382) = 0;
  LOBYTE(v393) = 0;
  v121 = swift_allocObject();
  v123 = v121;
  *(v121 + 16) = v377;
  *(v121 + 32) = v393;
  v124 = v354;
  v125 = v355;
  *(v121 + 40) = v354;
  *(v121 + 48) = v125;
  if (v116)
  {
    v393 = v116;
    MEMORY[0x1EEE9AC00](v121, v122);
    *(&v353 - 4) = sub_1D5B4AA6C;
    *(&v353 - 3) = 0;
    v351 = sub_1D6708C28;
    v352 = v123;
    LOBYTE(v392) = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = v377;
    *(v126 + 32) = v392;
    *(v126 + 40) = v124;
    *(v126 + 48) = v125;
    swift_retain_n();

    v127 = sub_1D72647CC();
    LOBYTE(v392) = 0;
    v128 = swift_allocObject();
    *(v128 + 16) = v127;
    *(v128 + 24) = v377;
    *(v128 + 40) = v392;
    v129 = *(v379 + 3);
    v130 = *(v379 + 4);
    v131 = __swift_project_boxed_opaque_existential_1(v379, v129);
    MEMORY[0x1EEE9AC00](v131, v132);
    MEMORY[0x1EEE9AC00](v133, v134);
    *(&v353 - 4) = sub_1D615B4A4;
    *(&v353 - 3) = (&v353 - 6);
    v351 = sub_1D6708C28;
    v352 = v126;
    v135 = v378;
    v137 = sub_1D5D2F7A4(v119, sub_1D615B49C, v136, sub_1D615B4A4, (&v353 - 6), v129, v130);
    if (v135)
    {

      v138 = v119;
LABEL_19:
      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v380, sub_1D66D2984);
    }

    v140 = v137;

    if (v140)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v117 = v374;
      v125 = v355;
      v378 = 0;
      v139 = v370;
      v120 = v368;
    }

    else
    {
      v378 = 0;

      v117 = v374;
      v125 = v355;
      v139 = v370;
      v120 = v368;
    }
  }

  else
  {

    v139 = v370;
  }

  sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);
  v141 = v375;
  swift_beginAccess();
  v142 = v141[6];
  v143 = v367;
  v120(v367, v139, v117);
  swift_storeEnumTagMultiPayload();
  if (!*(v142 + 16))
  {
    sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
    goto LABEL_32;
  }

  LOBYTE(v381) = 0;
  v144 = swift_allocObject();
  v377 = xmmword_1D72BAA60;
  *(v144 + 16) = xmmword_1D72BAA60;
  *(v144 + 32) = v381;
  *(v144 + 40) = v124;
  *(v144 + 48) = v125;

  v145 = v380;
  v146 = sub_1D72647CC();
  LOBYTE(v381) = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = v146;
  *(v147 + 24) = v377;
  *(v147 + 40) = v381;
  v148 = *(v379 + 3);
  v149 = *(v379 + 4);
  v150 = __swift_project_boxed_opaque_existential_1(v379, v148);
  MEMORY[0x1EEE9AC00](v150, v151);
  MEMORY[0x1EEE9AC00](v152, v153);
  *(&v353 - 4) = sub_1D5B4AA6C;
  *(&v353 - 3) = 0;
  v351 = sub_1D6708C28;
  v352 = v144;
  v154 = v378;
  v156 = sub_1D5D2F7A4(v143, sub_1D615B49C, v155, sub_1D615B4A4, (&v353 - 6), v148, v149);
  if (!v154)
  {
    v157 = v156;

    if (v157)
    {
      v381 = v377;
      LOBYTE(v382) = 0;
      v392 = v142;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v117 = v374;
      v158 = v367;
      v378 = 0;

      sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v378 = 0;
      sub_1D5D2CFE8(v367, type metadata accessor for FormatVersionRequirement);

      v117 = v374;
    }

LABEL_32:
    v159 = v375[7];
    v160 = v366;
    v161 = v368;
    v368(v366, v370, v117);
    swift_storeEnumTagMultiPayload();
    v377 = xmmword_1D72BAA70;
    v381 = xmmword_1D72BAA70;
    LOBYTE(v382) = 0;
    LOBYTE(v392) = 0;
    v162 = swift_allocObject();
    v164 = v162;
    *(v162 + 16) = v377;
    *(v162 + 32) = v392;
    *(v162 + 40) = v124;
    v165 = v124;
    v166 = v355;
    *(v162 + 48) = v355;
    if (v159)
    {
      v376 = &v353;
      v392 = v159;
      MEMORY[0x1EEE9AC00](v162, v163);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708C28;
      v352 = v164;
      LOBYTE(v391) = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v377;
      *(v167 + 32) = v391;
      *(v167 + 40) = v165;
      *(v167 + 48) = v166;
      swift_retain_n();

      v168 = sub_1D72647CC();
      LOBYTE(v391) = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = v168;
      *(v169 + 24) = v377;
      *(v169 + 40) = v391;
      v170 = *(v379 + 3);
      v171 = *(v379 + 4);
      v172 = __swift_project_boxed_opaque_existential_1(v379, v170);
      MEMORY[0x1EEE9AC00](v172, v173);
      MEMORY[0x1EEE9AC00](v174, v175);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708C28;
      v352 = v167;
      v176 = v378;
      v178 = sub_1D5D2F7A4(v160, sub_1D615B49C, v177, sub_1D615B4A4, (&v353 - 6), v170, v171);
      if (v176)
      {

        sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
        v88 = v380;
        return sub_1D5D2CFE8(v88, sub_1D66D2984);
      }

      v179 = v178;

      if (v179)
      {
        type metadata accessor for FormatViewNodeStyle();
        sub_1D5B58B84(&qword_1EDF2BA98, type metadata accessor for FormatViewNodeStyle, &protocol conformance descriptor for FormatViewNodeStyle);
        sub_1D72647EC();
        v117 = v374;
        v161 = v368;
        v165 = v354;
        v378 = 0;

        v160 = v366;
      }

      else
      {
        v378 = 0;

        v117 = v374;
        v161 = v368;
        v165 = v354;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
    v180 = v375[8];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v181 = __swift_project_value_buffer(v117, qword_1EDFFCD50);
    v182 = v364;
    v376 = v181;
    v161(v364);
    swift_storeEnumTagMultiPayload();
    v377 = xmmword_1D72BAA80;
    v381 = xmmword_1D72BAA80;
    LOBYTE(v382) = 0;
    LOBYTE(v392) = 0;
    v183 = swift_allocObject();
    v185 = v183;
    *(v183 + 16) = v377;
    *(v183 + 32) = v392;
    *(v183 + 40) = v165;
    v186 = v165;
    v187 = v355;
    *(v183 + 48) = v355;
    if (v180)
    {
      v371 = &v353;
      v392 = v180;
      MEMORY[0x1EEE9AC00](v183, v184);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708C28;
      v352 = v185;
      LOBYTE(v391) = 0;
      v188 = swift_allocObject();
      *(v188 + 16) = v377;
      *(v188 + 32) = v391;
      *(v188 + 40) = v186;
      *(v188 + 48) = v187;
      swift_retain_n();

      v189 = sub_1D72647CC();
      LOBYTE(v391) = 0;
      v190 = swift_allocObject();
      *(v190 + 16) = v189;
      *(v190 + 24) = v377;
      *(v190 + 40) = v391;
      v191 = *(v379 + 3);
      v192 = *(v379 + 4);
      v193 = __swift_project_boxed_opaque_existential_1(v379, v191);
      MEMORY[0x1EEE9AC00](v193, v194);
      MEMORY[0x1EEE9AC00](v195, v196);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708C28;
      v352 = v188;
      v197 = v378;
      v199 = sub_1D5D2F7A4(v182, sub_1D615B49C, v198, sub_1D615B4A4, (&v353 - 6), v191, v192);
      if (v197)
      {

        v138 = v182;
        goto LABEL_19;
      }

      v201 = v199;
      v200 = v186;

      if (v201)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
        sub_1D72647EC();
        v117 = v374;
        v187 = v355;
        v378 = 0;
      }

      else
      {

        v378 = 0;
        v117 = v374;
        v187 = v355;
      }
    }

    else
    {
      v200 = v186;
    }

    sub_1D5D2CFE8(v364, type metadata accessor for FormatVersionRequirement);
    v202 = v375;
    swift_beginAccess();
    v203 = v202[9];
    v204 = v363;
    v205 = v368;
    v368(v363, v370, v117);
    swift_storeEnumTagMultiPayload();
    if (v203)
    {
      LOBYTE(v381) = 0;
      v206 = swift_allocObject();
      v377 = xmmword_1D72BAA90;
      *(v206 + 16) = xmmword_1D72BAA90;
      *(v206 + 32) = v381;
      *(v206 + 40) = v200;
      *(v206 + 48) = v187;

      v207 = v380;
      v208 = sub_1D72647CC();
      LOBYTE(v381) = 0;
      v209 = swift_allocObject();
      *(v209 + 16) = v208;
      *(v209 + 24) = v377;
      *(v209 + 40) = v381;
      v210 = *(v379 + 3);
      v211 = *(v379 + 4);
      v212 = __swift_project_boxed_opaque_existential_1(v379, v210);
      MEMORY[0x1EEE9AC00](v212, v213);
      MEMORY[0x1EEE9AC00](v214, v215);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708C28;
      v352 = v206;
      v216 = v378;
      v218 = sub_1D5D2F7A4(v204, sub_1D615B49C, v217, sub_1D615B4A4, (&v353 - 6), v210, v211);
      v378 = v216;
      if (v216)
      {
        sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);

LABEL_64:
        v88 = v207;
        return sub_1D5D2CFE8(v88, sub_1D66D2984);
      }

      v220 = v218;

      if (v220)
      {
        v381 = v377;
        LOBYTE(v382) = 0;
        v391 = v203;
        v221 = v380;
        v222 = v378;
        sub_1D72647EC();
        v117 = v374;
        v187 = v355;
        v378 = v222;
        v219 = v361;
        v223 = v363;
        v205 = v368;
        if (v222)
        {
LABEL_73:
          sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);
          v88 = v221;
          return sub_1D5D2CFE8(v88, sub_1D66D2984);
        }

        sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);
        v117 = v374;
        v187 = v355;
        v219 = v361;
        v205 = v368;
      }
    }

    else
    {
      sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
      v219 = v361;
    }

    v224 = v375;
    swift_beginAccess();
    v225 = v224[10];
    v205(v219, v376, v117);
    swift_storeEnumTagMultiPayload();
    if (v225 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
      v226 = v360;
      goto LABEL_58;
    }

    LOBYTE(v381) = 0;
    v231 = swift_allocObject();
    v377 = xmmword_1D72BAAA0;
    *(v231 + 16) = xmmword_1D72BAAA0;
    *(v231 + 32) = v381;
    *(v231 + 40) = v200;
    *(v231 + 48) = v187;

    sub_1D5EB1500(v225);
    v207 = v380;
    v232 = sub_1D72647CC();
    LOBYTE(v381) = 0;
    v233 = swift_allocObject();
    *(v233 + 16) = v232;
    *(v233 + 24) = v377;
    *(v233 + 40) = v381;
    v234 = *(v379 + 3);
    v235 = *(v379 + 4);
    v236 = __swift_project_boxed_opaque_existential_1(v379, v234);
    MEMORY[0x1EEE9AC00](v236, v237);
    MEMORY[0x1EEE9AC00](v238, v239);
    *(&v353 - 4) = sub_1D5B4AA6C;
    *(&v353 - 3) = 0;
    v351 = sub_1D6708C28;
    v352 = v231;
    v240 = v378;
    v242 = sub_1D5D2F7A4(v219, sub_1D615B49C, v241, sub_1D615B4A4, (&v353 - 6), v234, v235);
    v378 = v240;
    if (v240)
    {

      sub_1D5EB15C4(v225);
      sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
      goto LABEL_64;
    }

    v256 = v242;

    v226 = v360;
    if (v256)
    {
      v381 = v377;
      LOBYTE(v382) = 0;
      v390 = v225;
      sub_1D5DF6A60();
      v221 = v380;
      v257 = v378;
      sub_1D72647EC();
      v117 = v374;
      v187 = v355;
      v378 = v257;
      if (v257)
      {
        sub_1D5EB15C4(v390);
        v223 = v361;
        goto LABEL_73;
      }

      sub_1D5EB15C4(v390);
      sub_1D5D2CFE8(v361, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5EB15C4(v225);
      sub_1D5D2CFE8(v361, type metadata accessor for FormatVersionRequirement);
      v117 = v374;
      v187 = v355;
    }

LABEL_58:
    v227 = v375;
    swift_beginAccess();
    v228 = *(v227 + 88);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v229 = __swift_project_value_buffer(v117, qword_1EDFFCD00);
    v230 = v359;
    v368(v359, v229, v117);
    swift_storeEnumTagMultiPayload();
    if (v228)
    {
      sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);
      goto LABEL_78;
    }

    LOBYTE(v381) = 0;
    v243 = swift_allocObject();
    v377 = xmmword_1D72BAAB0;
    *(v243 + 16) = xmmword_1D72BAAB0;
    *(v243 + 32) = v381;
    *(v243 + 40) = v200;
    *(v243 + 48) = v187;

    v244 = v380;
    v245 = sub_1D72647CC();
    LOBYTE(v381) = 0;
    v246 = swift_allocObject();
    *(v246 + 16) = v245;
    *(v246 + 24) = v377;
    *(v246 + 40) = v381;
    v247 = *(v379 + 3);
    v248 = *(v379 + 4);
    v249 = __swift_project_boxed_opaque_existential_1(v379, v247);
    MEMORY[0x1EEE9AC00](v249, v250);
    MEMORY[0x1EEE9AC00](v251, v252);
    *(&v353 - 4) = sub_1D5B4AA6C;
    *(&v353 - 3) = 0;
    v351 = sub_1D6708C28;
    v352 = v243;
    v253 = v378;
    v255 = sub_1D5D2F7A4(v230, sub_1D615B49C, v254, sub_1D615B4A4, (&v353 - 6), v247, v248);
    v378 = v253;
    if (v253)
    {
      sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);

LABEL_67:
      v88 = v244;
      return sub_1D5D2CFE8(v88, sub_1D66D2984);
    }

    v258 = v255;

    v226 = v360;
    if (v258)
    {
      v381 = v377;
      LOBYTE(v382) = 0;
      LOBYTE(v388) = 0;
      v221 = v380;
      v259 = v378;
      sub_1D72647EC();
      v378 = v259;
      v223 = v359;
      if (v259)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v223 = v359;
    }

    sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);
    v117 = v374;
LABEL_78:
    v260 = v375[12];
    v261 = *(v375 + 104);
    v262 = v358;
    v368(v358, v370, v117);
    swift_storeEnumTagMultiPayload();
    v377 = xmmword_1D72BAAC0;
    v381 = xmmword_1D72BAAC0;
    LOBYTE(v382) = 0;
    LOBYTE(v388) = 0;
    v263 = swift_allocObject();
    v265 = v263;
    *(v263 + 16) = v377;
    *(v263 + 32) = v388;
    *(v263 + 40) = v200;
    *(v263 + 48) = v187;
    if (v261 <= 0xFD)
    {
      v388 = v260;
      v389 = v261;
      MEMORY[0x1EEE9AC00](v263, v264);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708C28;
      v352 = v265;
      LOBYTE(v386) = 0;
      v267 = swift_allocObject();
      *(v267 + 16) = v377;
      *(v267 + 32) = v386;
      *(v267 + 40) = v200;
      *(v267 + 48) = v187;
      swift_retain_n();
      v268 = sub_1D72647CC();
      LOBYTE(v386) = 0;
      v269 = swift_allocObject();
      *(v269 + 16) = v268;
      *(v269 + 24) = v377;
      *(v269 + 40) = v386;
      v270 = *(v379 + 3);
      v271 = *(v379 + 4);
      v272 = __swift_project_boxed_opaque_existential_1(v379, v270);
      MEMORY[0x1EEE9AC00](v272, v273);
      MEMORY[0x1EEE9AC00](v274, v275);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708C28;
      v352 = v267;
      v276 = v378;
      v278 = sub_1D5D2F7A4(v262, sub_1D615B49C, v277, sub_1D615B4A4, (&v353 - 6), v270, v271);
      v378 = v276;
      if (v276)
      {
        sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v380, sub_1D66D2984);
      }

      v279 = v278;

      v226 = v360;
      if (v279)
      {
        sub_1D5F8F434();
        v280 = v378;
        sub_1D72647EC();
        if (v280)
        {
          sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);

          return sub_1D5D2CFE8(v380, sub_1D66D2984);
        }

        v378 = 0;
      }

      v117 = v374;
      v266 = v357;
      v187 = v355;
    }

    else
    {

      v266 = v357;
    }

    sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);

    v281 = v375;
    swift_beginAccess();
    v282 = v281[14];
    v283 = qword_1EDF31EA8;

    if (v283 != -1)
    {
      swift_once();
    }

    v284 = __swift_project_value_buffer(v117, qword_1EDFFCD18);
    v368(v266, v284, v117);
    swift_storeEnumTagMultiPayload();
    if (*(v282 + 16))
    {
      LOBYTE(v381) = 0;
      v285 = swift_allocObject();
      v286 = v187;
      v287 = v266;
      v288 = v285;
      v377 = xmmword_1D72BAAD0;
      *(v285 + 16) = xmmword_1D72BAAD0;
      *(v285 + 32) = v381;
      *(v285 + 40) = v200;
      *(v285 + 48) = v286;

      v289 = sub_1D72647CC();
      LOBYTE(v381) = 0;
      v290 = swift_allocObject();
      *(v290 + 16) = v289;
      *(v290 + 24) = v377;
      *(v290 + 40) = v381;
      v291 = *(v379 + 3);
      v292 = *(v379 + 4);
      v293 = __swift_project_boxed_opaque_existential_1(v379, v291);
      MEMORY[0x1EEE9AC00](v293, v294);
      MEMORY[0x1EEE9AC00](v295, v296);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708C28;
      v352 = v288;
      v297 = v378;
      sub_1D5D2F7A4(v287, sub_1D615B49C, v298, sub_1D615B4A4, (&v353 - 6), v291, v292);
      if (v297)
      {

        v138 = v357;
        goto LABEL_19;
      }

      sub_1D5E08D2C(v282, v380, 0xA, 0, 0);
      v378 = 0;
      v226 = v360;
      v117 = v374;
      v266 = v357;
      v187 = v355;
    }

    sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
    v299 = v375[15];
    v300 = v375[16];
    v301 = v117;
    v302 = v368;
    v368(v226, v376, v301);
    swift_storeEnumTagMultiPayload();
    v377 = xmmword_1D72BAAE0;
    v381 = xmmword_1D72BAAE0;
    LOBYTE(v382) = 0;
    LOBYTE(v386) = 0;
    v303 = swift_allocObject();
    v305 = v303;
    *(v303 + 16) = v377;
    *(v303 + 32) = v386;
    *(v303 + 40) = v200;
    *(v303 + 48) = v187;
    if (v300)
    {
      v376 = &v353;
      *&v386 = v299;
      *(&v386 + 1) = v300;
      MEMORY[0x1EEE9AC00](v303, v304);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708C28;
      v352 = v305;
      v395 = 0;
      v306 = swift_allocObject();
      *(v306 + 16) = v377;
      *(v306 + 32) = v395;
      *(v306 + 40) = v200;
      *(v306 + 48) = v187;
      swift_retain_n();

      v307 = sub_1D72647CC();
      v395 = 0;
      v308 = swift_allocObject();
      *(v308 + 16) = v307;
      *(v308 + 24) = v377;
      *(v308 + 40) = v395;
      v309 = *(v379 + 3);
      v310 = *(v379 + 4);
      v311 = __swift_project_boxed_opaque_existential_1(v379, v309);
      MEMORY[0x1EEE9AC00](v311, v312);
      MEMORY[0x1EEE9AC00](v313, v314);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708C28;
      v352 = v306;
      v315 = v378;
      v317 = sub_1D5D2F7A4(v226, sub_1D615B49C, v316, sub_1D615B4A4, (&v353 - 6), v309, v310);
      if (v315)
      {

        sub_1D5D2CFE8(v360, type metadata accessor for FormatVersionRequirement);
        v88 = v380;
        return sub_1D5D2CFE8(v88, sub_1D66D2984);
      }

      v318 = v317;

      if (v318)
      {
        sub_1D72647EC();
      }

      v378 = 0;

      sub_1D5D2CFE8(v360, type metadata accessor for FormatVersionRequirement);
      v302 = v368;
    }

    else
    {

      sub_1D5D2CFE8(v226, type metadata accessor for FormatVersionRequirement);
    }

    v319 = v375[17];
    v320 = v375[18];
    v321 = v375[19];
    v322 = v375[20];
    v323 = v375[21];
    v324 = v375[22];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v325 = v374;
    v326 = __swift_project_value_buffer(v374, qword_1EDFFCE38);
    v302(v356, v326, v325);
    swift_storeEnumTagMultiPayload();
    v377 = xmmword_1D72BAAF0;
    v386 = xmmword_1D72BAAF0;
    v387 = 0;
    LOBYTE(v381) = 0;
    v327 = swift_allocObject();
    v329 = v327;
    *(v327 + 16) = v377;
    *(v327 + 32) = v381;
    v330 = v354;
    v331 = v355;
    *(v327 + 40) = v354;
    *(v327 + 48) = v331;
    if (v319)
    {
      v376 = &v353;
      *&v381 = v319;
      *(&v381 + 1) = v320;
      v382 = v321;
      v383 = v322;
      v384 = v323;
      v385 = v324;
      MEMORY[0x1EEE9AC00](v327, v328);
      v375 = &v353 - 6;
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708C28;
      v352 = v329;
      v395 = 0;
      v332 = v320;
      v333 = swift_allocObject();
      *(v333 + 16) = v377;
      *(v333 + 32) = v395;
      *(v333 + 40) = v330;
      *(v333 + 48) = v331;
      swift_retain_n();
      sub_1D5EB1D80(v319, v332, v321, v322, v323, v324);
      v244 = v380;
      v334 = sub_1D72647CC();
      v395 = 0;
      v335 = swift_allocObject();
      *(v335 + 16) = v334;
      *(v335 + 24) = v377;
      *(v335 + 40) = v395;
      v336 = *(v379 + 3);
      v337 = *(v379 + 4);
      v338 = __swift_project_boxed_opaque_existential_1(v379, v336);
      MEMORY[0x1EEE9AC00](v338, v339);
      MEMORY[0x1EEE9AC00](v340, v341);
      v342 = v375;
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = v342;
      v351 = sub_1D6708C28;
      v352 = v333;
      v343 = v356;
      v344 = v378;
      v346 = sub_1D5D2F7A4(v356, sub_1D615B49C, v345, sub_1D615B4A4, (&v353 - 6), v336, v337);
      v378 = v344;
      if (v344)
      {

LABEL_105:
        v347 = v384;

        sub_1D5CBF568(v347);

        sub_1D5D2CFE8(v343, type metadata accessor for FormatVersionRequirement);
        goto LABEL_67;
      }

      v348 = v346;

      if (v348)
      {
        sub_1D6659A24();
        v349 = v378;
        sub_1D72647EC();
        v378 = v349;
        if (v349)
        {

          v244 = v380;
          v343 = v356;
          goto LABEL_105;
        }
      }

      v350 = v384;

      sub_1D5CBF568(v350);

      sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);
    }

    v88 = v380;
    return sub_1D5D2CFE8(v88, sub_1D66D2984);
  }

  sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v145, sub_1D66D2984);
}