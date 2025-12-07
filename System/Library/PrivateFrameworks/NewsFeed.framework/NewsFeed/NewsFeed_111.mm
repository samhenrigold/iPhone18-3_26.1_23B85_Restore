uint64_t FormatShineOptions.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v207 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v209 = &v204 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v204 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v215 = &v204 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v216 = &v204 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v218 = &v204 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v204 - v24;
  sub_1D66B67AC(0);
  v27 = v26;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v204 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v1 + 8);
  v229 = *v1;
  v217 = *(v1 + 16);
  v239 = *(v1 + 24);
  v32 = *(v1 + 32);
  v212 = *(v1 + 56);
  v213 = *(v1 + 40);
  v211 = *(v1 + 72);
  v210 = *(v1 + 80);
  v208 = *(v1 + 88);
  v33 = *(v1 + 96);
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1D66B6590(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC8871F0, sub_1D66B6590, &unk_1D7321584);
  v231 = v30;
  sub_1D5D2EE70(&type metadata for FormatShineOptions, v37, v39, v34, &type metadata for FormatShineOptions, v37, &type metadata for FormatVersions.JazzkonC, v35, v30, v38, &off_1F51F6C78);
  sub_1D5B58478(0);
  v41 = *(v40 + 48);
  v42 = &v25[*(v40 + 64)];
  if (qword_1EDF31EB0 != -1)
  {
    v161 = v40;
    swift_once();
    v40 = v161;
  }

  v214 = v12;
  v226 = v40;
  v43 = sub_1D725BD1C();
  v44 = __swift_project_value_buffer(v43, qword_1EDFFCD30);
  v45 = *(v43 - 8);
  v46 = *(v45 + 16);
  v47 = v45 + 16;
  v221 = v44;
  v46(v25);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v220 = __swift_project_value_buffer(v43, qword_1EDFFCE68);
  v46(&v25[v41]);
  v48 = type metadata accessor for FormatVersionRequirement.Value(0);
  *v42 = 0;
  *(v42 + 1) = 0;
  v219 = v48;
  swift_storeEnumTagMultiPayload();
  *&v232 = v229;
  *(&v232 + 1) = v31;
  v234 = 0uLL;
  LOBYTE(v235) = 0;
  v49 = *(v27 + 44);
  v223 = v46;
  v50 = v27;
  v51 = v231;
  v52 = &v231[v49];
  v53 = *v52;
  v54 = *(v52 + 1);
  v238 = 0;
  v55 = swift_allocObject();
  v222 = v47;
  v229 = &v204;
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v238;
  *(v55 + 40) = v53;
  *(v55 + 48) = v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v204 - 4) = sub_1D5B4AA6C;
  *(&v204 - 3) = 0;
  v202 = sub_1D6708B68;
  v203 = v57;
  v238 = 0;
  v58 = swift_allocObject();
  v225 = v43;
  v59 = v58;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = v238;
  v224 = v53;
  *(v58 + 40) = v53;
  *(v58 + 48) = v54;
  sub_1D66B6840(0);
  v61 = v60;
  v62 = sub_1D5B58B84(&qword_1EC887218, sub_1D66B6840, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v227 = v62;
  v228 = v61;
  v63 = sub_1D72647CC();
  v238 = 0;
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  *(v64 + 32) = 0;
  *(v64 + 16) = v63;
  *(v64 + 40) = v238;
  v65 = *(v50 + 36);
  v66 = v25;
  v67 = &v51[v65];
  v68 = *&v51[v65 + 24];
  v69 = *&v51[v65 + 32];
  v70 = __swift_project_boxed_opaque_existential_1(v67, v68);
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  *(&v204 - 4) = sub_1D615B4A4;
  *(&v204 - 3) = (&v204 - 6);
  v202 = sub_1D66B68D4;
  v203 = v59;
  v74 = v230;
  sub_1D5D2BC70(v66, sub_1D615B49C, v75, sub_1D615B4A4, (&v204 - 6), v68, v69);
  if (v74)
  {
    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    v77 = v231;
  }

  else
  {
    v205 = v67;
    v206 = v54;

    v76 = v231;
    sub_1D72647EC();
    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    v229 = 0;
    v79 = v76;
    v80 = *(v226 + 48);
    v81 = v218;
    v82 = &v218[*(v226 + 64)];
    v83 = v225;
    v84 = v223;
    (v223)(v218, v221, v225);
    v84(v81 + v80, v220, v83);
    *v82 = 0;
    *(v82 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    *&v232 = v217;
    v230 = xmmword_1D728CF30;
    v234 = xmmword_1D728CF30;
    LOBYTE(v235) = 0;
    v238 = 0;
    v85 = swift_allocObject();
    v217 = &v204;
    *(v85 + 16) = v230;
    *(v85 + 32) = v238;
    v86 = v224;
    v87 = v206;
    *(v85 + 40) = v224;
    *(v85 + 48) = v87;
    MEMORY[0x1EEE9AC00](v85, v88);
    *(&v204 - 4) = sub_1D5B4AA6C;
    *(&v204 - 3) = 0;
    v202 = sub_1D6708B68;
    v203 = v89;
    v238 = 0;
    v90 = swift_allocObject();
    *(v90 + 16) = v230;
    *(v90 + 32) = v238;
    *(v90 + 40) = v86;
    *(v90 + 48) = v87;
    swift_retain_n();
    v91 = sub_1D72647CC();
    v238 = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = v230;
    *(v92 + 40) = v238;
    v93 = *(v205 + 3);
    v94 = *(v205 + 4);
    v95 = __swift_project_boxed_opaque_existential_1(v205, v93);
    MEMORY[0x1EEE9AC00](v95, v96);
    MEMORY[0x1EEE9AC00](v97, v98);
    *(&v204 - 4) = sub_1D615B4A4;
    *(&v204 - 3) = (&v204 - 6);
    v202 = sub_1D6708B68;
    v203 = v90;
    v99 = v229;
    sub_1D5D2BC70(v81, sub_1D615B49C, v100, sub_1D615B4A4, (&v204 - 6), v93, v94);
    if (v99)
    {
      sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

      v77 = v79;
    }

    else
    {

      sub_1D5B55CBC();
      sub_1D72647EC();
      sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

      v101 = *(v226 + 48);
      v102 = v216;
      v103 = &v216[*(v226 + 64)];
      v104 = v225;
      v105 = v223;
      (v223)(v216, v221, v225);
      v105(v102 + v101, v220, v104);
      *v103 = 0;
      *(v103 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      LOBYTE(v232) = v239;
      v230 = xmmword_1D7297410;
      v234 = xmmword_1D7297410;
      LOBYTE(v235) = 0;
      v238 = 0;
      v106 = swift_allocObject();
      v229 = &v204;
      *(v106 + 16) = v230;
      *(v106 + 32) = v238;
      v107 = v224;
      v108 = v206;
      *(v106 + 40) = v224;
      *(v106 + 48) = v108;
      MEMORY[0x1EEE9AC00](v106, v109);
      *(&v204 - 4) = sub_1D5B4AA6C;
      *(&v204 - 3) = 0;
      v202 = sub_1D6708B68;
      v203 = v110;
      v238 = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = v230;
      *(v111 + 32) = v238;
      *(v111 + 40) = v107;
      *(v111 + 48) = v108;
      swift_retain_n();
      v112 = sub_1D72647CC();
      v238 = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v230;
      *(v113 + 40) = v238;
      v114 = *(v205 + 3);
      v115 = *(v205 + 4);
      v116 = __swift_project_boxed_opaque_existential_1(v205, v114);
      MEMORY[0x1EEE9AC00](v116, v117);
      MEMORY[0x1EEE9AC00](v118, v119);
      *(&v204 - 4) = sub_1D615B4A4;
      *(&v204 - 3) = (&v204 - 6);
      v202 = sub_1D6708B68;
      v203 = v111;
      sub_1D5D2BC70(v102, sub_1D615B49C, v120, sub_1D615B4A4, (&v204 - 6), v114, v115);

      sub_1D618180C();
      sub_1D72647EC();
      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);

      v121 = *(v226 + 48);
      v122 = v215;
      v123 = &v215[*(v226 + 64)];
      v124 = v225;
      v125 = v223;
      (v223)(v215, v221, v225);
      v125(v122 + v121, v220, v124);
      *v123 = 0;
      *(v123 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      *&v232 = v32;
      v230 = xmmword_1D72BAA60;
      v234 = xmmword_1D72BAA60;
      LOBYTE(v235) = 0;
      v238 = 0;
      v126 = swift_allocObject();
      v229 = &v204;
      *(v126 + 16) = v230;
      *(v126 + 32) = v238;
      v127 = v224;
      v128 = v206;
      *(v126 + 40) = v224;
      *(v126 + 48) = v128;
      MEMORY[0x1EEE9AC00](v126, v129);
      *(&v204 - 4) = sub_1D5B4AA6C;
      *(&v204 - 3) = 0;
      v202 = sub_1D6708B68;
      v203 = v130;
      v238 = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = v230;
      *(v131 + 32) = v238;
      *(v131 + 40) = v127;
      *(v131 + 48) = v128;
      swift_retain_n();
      v132 = sub_1D72647CC();
      v238 = 0;
      v133 = swift_allocObject();
      *(v133 + 16) = v132;
      *(v133 + 24) = v230;
      *(v133 + 40) = v238;
      v134 = *(v205 + 3);
      v135 = *(v205 + 4);
      v136 = __swift_project_boxed_opaque_existential_1(v205, v134);
      MEMORY[0x1EEE9AC00](v136, v137);
      MEMORY[0x1EEE9AC00](v138, v139);
      *(&v204 - 4) = sub_1D615B4A4;
      *(&v204 - 3) = (&v204 - 6);
      v202 = sub_1D6708B68;
      v203 = v131;
      sub_1D5D2BC70(v122, sub_1D615B49C, v140, sub_1D615B4A4, (&v204 - 6), v134, v135);

      sub_1D72647EC();
      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

      v141 = *(v226 + 48);
      v142 = v214;
      v143 = &v214[*(v226 + 64)];
      v144 = v225;
      v145 = v223;
      (v223)(v214, v221, v225);
      v145(v142 + v141, v220, v144);
      *v143 = 0;
      *(v143 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v234 = v213;
      v235 = v212;
      v236 = v211;
      v237 = v210;
      v230 = xmmword_1D72BAA70;
      v232 = xmmword_1D72BAA70;
      v233 = 0;
      v238 = 0;
      v146 = swift_allocObject();
      v229 = &v204;
      *(v146 + 16) = v230;
      *(v146 + 32) = v238;
      v147 = v224;
      v148 = v206;
      *(v146 + 40) = v224;
      *(v146 + 48) = v148;
      MEMORY[0x1EEE9AC00](v146, v149);
      *(&v204 - 4) = sub_1D5B4AA6C;
      *(&v204 - 3) = 0;
      v202 = sub_1D6708B68;
      v203 = v150;
      v238 = 0;
      v151 = swift_allocObject();
      *(v151 + 16) = v230;
      *(v151 + 32) = v238;
      *(v151 + 40) = v147;
      *(v151 + 48) = v148;
      swift_retain_n();
      v152 = sub_1D72647CC();
      v238 = 0;
      v153 = swift_allocObject();
      *(v153 + 16) = v152;
      *(v153 + 24) = v230;
      *(v153 + 40) = v238;
      v154 = *(v205 + 3);
      v155 = *(v205 + 4);
      v156 = __swift_project_boxed_opaque_existential_1(v205, v154);
      MEMORY[0x1EEE9AC00](v156, v157);
      MEMORY[0x1EEE9AC00](v158, v159);
      *(&v204 - 4) = sub_1D615B4A4;
      *(&v204 - 3) = (&v204 - 6);
      v202 = sub_1D6708B68;
      v203 = v151;
      sub_1D5D2BC70(v142, sub_1D615B49C, v160, sub_1D615B4A4, (&v204 - 6), v154, v155);

      sub_1D66B5FA8();
      sub_1D72647EC();
      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);

      v162 = *(v226 + 48);
      v163 = v209;
      v164 = (v209 + *(v226 + 64));
      v165 = v225;
      v166 = v223;
      (v223)(v209, v221, v225);
      v166(v163 + v162, v220, v165);
      *v164 = 0;
      v164[1] = 0;
      swift_storeEnumTagMultiPayload();
      *&v232 = v208;
      v230 = xmmword_1D72BAA80;
      v234 = xmmword_1D72BAA80;
      LOBYTE(v235) = 0;
      v238 = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v230;
      *(v167 + 32) = v238;
      v168 = v224;
      v169 = v206;
      *(v167 + 40) = v224;
      *(v167 + 48) = v169;
      MEMORY[0x1EEE9AC00](v167, v170);
      *(&v204 - 4) = sub_1D5B4AA6C;
      *(&v204 - 3) = 0;
      v202 = sub_1D6708B68;
      v203 = v171;
      v238 = 0;
      v172 = swift_allocObject();
      *(v172 + 16) = v230;
      *(v172 + 32) = v238;
      *(v172 + 40) = v168;
      *(v172 + 48) = v169;
      swift_retain_n();
      v173 = sub_1D72647CC();
      v238 = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = v173;
      *(v174 + 24) = v230;
      *(v174 + 40) = v238;
      v175 = *(v205 + 3);
      v176 = *(v205 + 4);
      v177 = __swift_project_boxed_opaque_existential_1(v205, v175);
      MEMORY[0x1EEE9AC00](v177, v178);
      MEMORY[0x1EEE9AC00](v179, v180);
      *(&v204 - 4) = sub_1D615B4A4;
      *(&v204 - 3) = (&v204 - 6);
      v202 = sub_1D6708B68;
      v203 = v172;
      sub_1D5D2BC70(v163, sub_1D615B49C, v181, sub_1D615B4A4, (&v204 - 6), v175, v176);

      sub_1D5C34D84(0, &qword_1EC8871F8, &type metadata for FormatShineBlend, MEMORY[0x1E69E62F8]);
      sub_1D66B6964();
      sub_1D72647EC();
      sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);

      v182 = *(v226 + 48);
      v183 = v207;
      v184 = (v207 + *(v226 + 64));
      v185 = v225;
      v186 = v223;
      (v223)(v207, v221, v225);
      v186(v183 + v182, v220, v185);
      *v184 = 0;
      v184[1] = 0;
      swift_storeEnumTagMultiPayload();
      *&v232 = v33;
      v230 = xmmword_1D72BAA90;
      v234 = xmmword_1D72BAA90;
      LOBYTE(v235) = 0;
      v238 = 0;
      v187 = swift_allocObject();
      *(v187 + 16) = v230;
      *(v187 + 32) = v238;
      v188 = v224;
      v189 = v206;
      *(v187 + 40) = v224;
      *(v187 + 48) = v189;
      MEMORY[0x1EEE9AC00](v187, v190);
      *(&v204 - 4) = sub_1D5B4AA6C;
      *(&v204 - 3) = 0;
      v202 = sub_1D6708B68;
      v203 = v191;
      v238 = 0;
      v192 = swift_allocObject();
      *(v192 + 16) = v230;
      *(v192 + 32) = v238;
      *(v192 + 40) = v188;
      *(v192 + 48) = v189;
      swift_retain_n();
      v193 = sub_1D72647CC();
      v238 = 0;
      v194 = swift_allocObject();
      *(v194 + 16) = v193;
      *(v194 + 24) = v230;
      *(v194 + 40) = v238;
      v195 = *(v205 + 3);
      v196 = *(v205 + 4);
      v197 = __swift_project_boxed_opaque_existential_1(v205, v195);
      MEMORY[0x1EEE9AC00](v197, v198);
      MEMORY[0x1EEE9AC00](v199, v200);
      *(&v204 - 4) = sub_1D615B4A4;
      *(&v204 - 3) = (&v204 - 6);
      v202 = sub_1D6708B68;
      v203 = v192;
      sub_1D5D2BC70(v183, sub_1D615B49C, v201, sub_1D615B4A4, (&v204 - 6), v195, v196);

      sub_1D5B578C4();
      sub_1D72647EC();
      sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);

      v77 = v231;
    }
  }

  return sub_1D5D2CFE8(v77, sub_1D66B67AC);
}

uint64_t sub_1D6586CB8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x656C616373;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x6E6F69746F6DLL;
  if (v1 != 4)
  {
    v4 = 0x73646E656C62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x72657A6973;
  if (v1 != 2)
  {
    v5 = 0x6152657461746F72;
  }

  if (*v0)
  {
    v2 = 0x726F6C6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6586DA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B86A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6586DE0(uint64_t a1)
{
  v2 = sub_1D66B6668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6586E1C(uint64_t a1)
{
  v2 = sub_1D66B6668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v251 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v252 = &v225 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v250 = &v225 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v249 = &v225 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v248 = &v225 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v232 = &v225 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v231 = &v225 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v230 = &v225 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v247 = &v225 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v246 = &v225 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v245 = &v225 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v229 = &v225 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v228 = &v225 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v227 = &v225 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v244 = &v225 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v242 = &v225 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v239 = &v225 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v240 = &v225 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v241 = &v225 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v238 = &v225 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v237 = &v225 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v236 = &v225 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v235 = &v225 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v234 = &v225 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v233 = &v225 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v226 = &v225 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v84 = &v225 - v83;
  MEMORY[0x1EEE9AC00](v85, v86);
  v243 = &v225 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v91 = &v225 - v90;
  MEMORY[0x1EEE9AC00](v92, v93);
  v95 = &v225 - v94;
  MEMORY[0x1EEE9AC00](v96, v97);
  v99 = &v225 - v98;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v100 - 8, v101);
  v103 = &v225 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *v1;
  v105 = a1;
  v106 = a1[3];
  v107 = v105[4];
  __swift_project_boxed_opaque_existential_1(v105, v106);
  v108 = sub_1D5C30408();
  v253 = v103;
  sub_1D5D2EE70(&type metadata for FormatSize, &type metadata for FormatCodingKeys, v109, v106, &type metadata for FormatSize, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v107, v103, v108, &off_1F51F6C78);
  switch((v104 >> 59) & 0x1E | (v104 >> 2) & 1)
  {
    case 1uLL:
      v163 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v162 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      sub_1D5C07390(v162);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v164 = sub_1D725BD1C();
      v165 = __swift_project_value_buffer(v164, qword_1EDFFCD50);
      (*(*(v164 - 8) + 16))(v91, v165, v164);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BDE34(2, v163, v162, v91);

      sub_1D5C08648(v162);
      v166 = v91;
      goto LABEL_79;
    case 2uLL:
      v146 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v145 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5D0A048(v146);
      sub_1D5D0A048(v145);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v147 = sub_1D725BD1C();
      v148 = __swift_project_value_buffer(v147, qword_1EDFFCD30);
      v99 = v243;
      (*(*(v147 - 8) + 16))(v243, v148, v147);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BDFC8(3, v146, v145, v99);
      sub_1D5D09FB0(v146);
      sub_1D5D09FB0(v145);
      goto LABEL_78;
    case 3uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v153 = qword_1EDF31EB0;

      if (v153 != -1)
      {
        swift_once();
      }

      v154 = sub_1D725BD1C();
      v155 = __swift_project_value_buffer(v154, qword_1EDFFCD30);
      v99 = v233;
      (*(*(v154 - 8) + 16))(v233, v155, v154);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 6;
      goto LABEL_76;
    case 4uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v131 = qword_1EDF31EB0;

      if (v131 != -1)
      {
        swift_once();
      }

      v132 = sub_1D725BD1C();
      v133 = __swift_project_value_buffer(v132, qword_1EDFFCD30);
      v99 = v234;
      (*(*(v132 - 8) + 16))(v234, v133, v132);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 7;
      goto LABEL_76;
    case 5uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v175 = qword_1EDF31EB0;

      if (v175 != -1)
      {
        swift_once();
      }

      v176 = sub_1D725BD1C();
      v177 = __swift_project_value_buffer(v176, qword_1EDFFCD30);
      v99 = v235;
      (*(*(v176 - 8) + 16))(v235, v177, v176);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 8;
      goto LABEL_76;
    case 6uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v187 = qword_1EDF31EB0;

      if (v187 != -1)
      {
        swift_once();
      }

      v188 = sub_1D725BD1C();
      v189 = __swift_project_value_buffer(v188, qword_1EDFFCD30);
      v99 = v236;
      (*(*(v188 - 8) + 16))(v236, v189, v188);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 9;
      goto LABEL_76;
    case 7uLL:
      v156 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v157 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v158 = qword_1EDF31EE8;

      if (v158 != -1)
      {
        swift_once();
      }

      v159 = sub_1D725BD1C();
      v160 = __swift_project_value_buffer(v159, qword_1EDFFCD98);
      v99 = v237;
      (*(*(v159 - 8) + 16))(v237, v160, v159);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v161 = 10;
      goto LABEL_65;
    case 8uLL:
      v156 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v157 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v198 = qword_1EDF31EE8;

      if (v198 != -1)
      {
        swift_once();
      }

      v199 = sub_1D725BD1C();
      v200 = __swift_project_value_buffer(v199, qword_1EDFFCD98);
      v99 = v238;
      (*(*(v199 - 8) + 16))(v238, v200, v199);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v161 = 11;
LABEL_65:
      v120 = v253;
      sub_1D63BE15C(v161, v156, v157, v99);
      goto LABEL_77;
    case 9uLL:
      v140 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v141 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v142 = qword_1EDF31F48;

      if (v142 != -1)
      {
        swift_once();
      }

      v143 = sub_1D725BD1C();
      v144 = __swift_project_value_buffer(v143, qword_1EDFFCE68);
      v99 = v241;
      (*(*(v143 - 8) + 16))(v241, v144, v143);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE2F4(12, v140, v141, v99);

      goto LABEL_78;
    case 0xAuLL:
      v193 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v194 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v195 = qword_1EDF31EB0;

      if (v195 != -1)
      {
        swift_once();
      }

      v196 = sub_1D725BD1C();
      v197 = __swift_project_value_buffer(v196, qword_1EDFFCD30);
      v99 = v240;
      (*(*(v196 - 8) + 16))(v240, v197, v196);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE488(13, v193, v194, v99);
      goto LABEL_77;
    case 0xBuLL:
      v126 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v127 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v128 = sub_1D725BD1C();
      v129 = __swift_project_value_buffer(v128, qword_1EDFFCD30);
      v99 = v239;
      (*(*(v128 - 8) + 16))(v239, v129, v128);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE620(14, v126, v127, v99);
      goto LABEL_78;
    case 0xCuLL:
      v135 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v136 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v137 = qword_1EDF31EB0;

      if (v137 != -1)
      {
        swift_once();
      }

      v138 = sub_1D725BD1C();
      v139 = __swift_project_value_buffer(v138, qword_1EDFFCD30);
      v99 = v242;
      (*(*(v138 - 8) + 16))(v242, v139, v138);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE7EC(15, v135, v136, v99);
      goto LABEL_77;
    case 0xDuLL:
      v182 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v181 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v183 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v184 = qword_1EDF31EB0;

      if (v184 != -1)
      {
        swift_once();
      }

      v185 = sub_1D725BD1C();
      v186 = __swift_project_value_buffer(v185, qword_1EDFFCD30);
      v99 = v244;
      (*(*(v185 - 8) + 16))(v244, v186, v185);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE9BC(16, v182, v181, v183, v99);
      goto LABEL_77;
    case 0xEuLL:
      v121 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v122 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v123 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1D5DEA234(v122);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCD30);
      v99 = v245;
      (*(*(v124 - 8) + 16))(v245, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BEB54(20, v121, v122, v123, v99);
      sub_1D5CBF568(v122);
      goto LABEL_78;
    case 0xFuLL:
      v150 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v149 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5C82CD8(v150);
      sub_1D62B48BC(v149);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v151 = sub_1D725BD1C();
      v152 = __swift_project_value_buffer(v151, qword_1EDFFCE80);
      v99 = v246;
      (*(*(v151 - 8) + 16))(v246, v152, v151);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BECF0(21, v150, v149, v99);
      sub_1D5C92A8C(v150);
      sub_1D62B48D0(v149);
      goto LABEL_78;
    case 0x10uLL:
      v117 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v116 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      sub_1D5C82CD8(v116);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD30);
      v99 = v247;
      (*(*(v118 - 8) + 16))(v247, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BEE84(22, v117, v116, v99);

      sub_1D5C92A8C(v116);
      goto LABEL_78;
    case 0x11uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v167 = qword_1EDF31EA8;

      if (v167 != -1)
      {
        swift_once();
      }

      v168 = sub_1D725BD1C();
      v169 = __swift_project_value_buffer(v168, qword_1EDFFCD18);
      v99 = v248;
      (*(*(v168 - 8) + 16))(v248, v169, v168);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 26;
      goto LABEL_76;
    case 0x12uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v190 = qword_1EDF31EA8;

      if (v190 != -1)
      {
        swift_once();
      }

      v191 = sub_1D725BD1C();
      v192 = __swift_project_value_buffer(v191, qword_1EDFFCD18);
      v99 = v249;
      (*(*(v191 - 8) + 16))(v249, v192, v191);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 27;
      goto LABEL_76;
    case 0x13uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v205 = qword_1EDF31EA8;

      if (v205 != -1)
      {
        swift_once();
      }

      v206 = sub_1D725BD1C();
      v207 = __swift_project_value_buffer(v206, qword_1EDFFCD18);
      v99 = v250;
      (*(*(v206 - 8) + 16))(v250, v207, v206);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 28;
LABEL_76:
      v120 = v253;
      sub_1D63BDC68(v134, v130, v99);
      goto LABEL_77;
    case 0x14uLL:
      v170 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v171 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v172 = qword_1EDF31EA8;

      if (v172 != -1)
      {
        swift_once();
      }

      v173 = sub_1D725BD1C();
      v174 = __swift_project_value_buffer(v173, qword_1EDFFCD18);
      v99 = v252;
      (*(*(v173 - 8) + 16))(v252, v174, v173);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BF058(29, v170, v171, v99);

LABEL_77:

      goto LABEL_78;
    case 0x15uLL:
      v178 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (qword_1EDF31EF0 != -1)
      {
        swift_once();
      }

      v179 = sub_1D725BD1C();
      v180 = __swift_project_value_buffer(v179, qword_1EDFFCDB0);
      v99 = v251;
      (*(*(v179 - 8) + 16))(v251, v180, v179);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BF1EC(30, v178, v99);
      goto LABEL_78;
    case 0x16uLL:
      v201 = __ROR8__(v104 + 0x5000000000000000, 3);
      if (v201 > 3)
      {
        if (v201 <= 5)
        {
          v120 = v253;
          if (v201 == 4)
          {
            if (qword_1EDF31EB0 != -1)
            {
              swift_once();
            }

            v213 = sub_1D725BD1C();
            v214 = __swift_project_value_buffer(v213, qword_1EDFFCD30);
            v99 = v228;
            (*(*(v213 - 8) + 16))(v228, v214, v213);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 18;
          }

          else
          {
            if (qword_1EDF31EB0 != -1)
            {
              swift_once();
            }

            v223 = sub_1D725BD1C();
            v224 = __swift_project_value_buffer(v223, qword_1EDFFCD30);
            v99 = v229;
            (*(*(v223 - 8) + 16))(v229, v224, v223);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 19;
          }
        }

        else
        {
          v120 = v253;
          if (v201 == 6)
          {
            if (qword_1EDF31F10 != -1)
            {
              swift_once();
            }

            v215 = sub_1D725BD1C();
            v216 = __swift_project_value_buffer(v215, qword_1EDFFCDF8);
            v99 = v230;
            (*(*(v215 - 8) + 16))(v230, v216, v215);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 23;
          }

          else if (v201 == 7)
          {
            if (qword_1EDF31F30 != -1)
            {
              swift_once();
            }

            v202 = sub_1D725BD1C();
            v203 = __swift_project_value_buffer(v202, qword_1EDFFCE20);
            v99 = v231;
            (*(*(v202 - 8) + 16))(v231, v203, v202);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 24;
          }

          else
          {
            if (qword_1EDF31EA8 != -1)
            {
              swift_once();
            }

            v221 = sub_1D725BD1C();
            v222 = __swift_project_value_buffer(v221, qword_1EDFFCD18);
            v99 = v232;
            (*(*(v221 - 8) + 16))(v232, v222, v221);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 25;
          }
        }

LABEL_109:
        sub_1D6424650(v204, v99);
        goto LABEL_78;
      }

      if (v201 > 1)
      {
        v120 = v253;
        if (v201 == 2)
        {
          if (qword_1EDF31F50 != -1)
          {
            swift_once();
          }

          v211 = sub_1D725BD1C();
          v212 = __swift_project_value_buffer(v211, qword_1EDFFCE80);
          v99 = v226;
          (*(*(v211 - 8) + 16))(v226, v212, v211);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v204 = 5;
        }

        else
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v219 = sub_1D725BD1C();
          v220 = __swift_project_value_buffer(v219, qword_1EDFFCD30);
          v99 = v227;
          (*(*(v219 - 8) + 16))(v227, v220, v219);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v204 = 17;
        }

        goto LABEL_109;
      }

      v120 = v253;
      if (!v201)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v209 = sub_1D725BD1C();
        v210 = __swift_project_value_buffer(v209, qword_1EDFFCD30);
        (*(*(v209 - 8) + 16))(v99, v210, v209);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v204 = 0;
        goto LABEL_109;
      }

      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v217 = sub_1D725BD1C();
      v218 = __swift_project_value_buffer(v217, qword_1EDFFCD30);
      (*(*(v217 - 8) + 16))(v84, v218, v217);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424650(4, v84);
      v99 = v84;
LABEL_78:
      v166 = v99;
LABEL_79:
      sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
      v115 = v120;
      return sub_1D5D2CFE8(v115, sub_1D5D30DC4);
    default:
      v110 = *(v104 + 16);
      v111 = qword_1EDF31EB0;

      if (v111 != -1)
      {
        swift_once();
      }

      v112 = sub_1D725BD1C();
      v113 = __swift_project_value_buffer(v112, qword_1EDFFCD30);
      (*(*(v112 - 8) + 16))(v95, v113, v112);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v114 = v253;
      sub_1D63BDC68(1, v110, v95);

      sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);
      v115 = v114;
      return sub_1D5D2CFE8(v115, sub_1D5D30DC4);
  }
}

unint64_t sub_1D6588C98(char a1)
{
  result = 1819044198;
  switch(a1)
  {
    case 1:
      result = 0x746E6563726570;
      break;
    case 2:
      result = 0x46746E6563726570;
      break;
    case 3:
      result = 0x6F69736E656D6964;
      break;
    case 4:
      result = 0x69466F54657A6973;
      break;
    case 5:
    case 27:
    case 30:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6874646977;
      break;
    case 7:
      result = 0x746867696568;
      break;
    case 8:
      result = 0x695764656C616373;
      break;
    case 9:
      result = 0x654864656C616373;
      break;
    case 10:
      result = 0x7274654D746E6F66;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x664F7265626D756ELL;
      break;
    case 13:
      result = 0x6F69746172;
      break;
    case 14:
      result = 0x736E6D756C6F63;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x6F526E6D756C6F63;
      break;
    case 17:
      result = 0x676E696361705376;
      break;
    case 18:
      result = 0x676E696361705368;
      break;
    case 19:
      result = 1869768058;
      break;
    case 20:
      result = 0x656873696C627570;
      break;
    case 21:
      result = 0x65726F736E6F7073;
      break;
    case 22:
      result = 0x686374697773;
      break;
    case 23:
      result = 0x6361766972506461;
      break;
    case 24:
      result = 0x63697274654D6461;
      break;
    case 25:
    case 29:
      result = 0x656C626978656C66;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D658904C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6588C98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatSizeColumn.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  v11 = *(a2 + 16);
  v42 = *(a2 + 24);
  v43 = v11;
  v13 = _s10CodingKeysOMa_69(255, v11, v42, v12);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *&v47 = v13;
  *(&v47 + 1) = WitnessTable;
  v48 = v15;
  v49 = v16;
  v17 = type metadata accessor for FormatCodingKeysContainer(255, &v47);
  v18 = swift_getWitnessTable();
  v19 = sub_1D726446C();
  v20 = swift_getWitnessTable();
  v22 = type metadata accessor for VersionedKeyedEncodingContainer(0, v19, v20, v21);
  v45 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v39 - v24;
  v27 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v40 = a2;
  sub_1D5D2EE70(a2, v17, v28, v27, a2, v17, &type metadata for FormatVersions.JazzkonC, v26, v25, v18, &off_1F51F6C78);
  v47 = 0uLL;
  LOBYTE(v48) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v33 = v31 + 16;
  v32(v10, v30, v29);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v34 = v44;
  sub_1D5D38930(v46, &v47, v10, sub_1D5B4AA6C, 0, v22, v43, *(v42 + 16));
  if (v34)
  {
    v35 = v10;
  }

  else
  {
    v43 = v33;
    v44 = v32;
    sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
    v50 = FormatSizeColumn.alignOrigin.getter(v40) & 1;
    v47 = xmmword_1D728CF30;
    LOBYTE(v48) = 0;
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v29, qword_1EDFFCDE0);
    v37 = v41;
    v44(v41, v36, v29);
    swift_storeEnumTagMultiPayload();
    sub_1D71B5F54(&v50, &type metadata for FormatCodingTrueStrategy, &v47, v37, sub_1D5B4AA6C, 0, v22, &type metadata for FormatCodingTrueStrategy, &protocol witness table for FormatCodingTrueStrategy);
    v35 = v37;
  }

  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return (*(v45 + 8))(v25, v22);
}

uint64_t sub_1D658956C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69724F6E67696C61 && a2 == 0xEB000000006E6967 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D6589684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D658956C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65896B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_69);
  *a2 = result;
  return result;
}

uint64_t sub_1D65896F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D658974C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65897A0()
{
  v1 = 0x746867696568;
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
    return 0x6874646977;
  }
}

uint64_t sub_1D65897EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B8930(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6589824(uint64_t a1)
{
  v2 = sub_1D666CB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6589860(uint64_t a1)
{
  v2 = sub_1D666CB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v192 = v188 - v6;
  v194 = sub_1D725B76C();
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v7);
  v191 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v195 = v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v196 = v188 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v197 = v188 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v198 = v188 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v199 = v188 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v207 = v188 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v188 - v29;
  sub_1D66B6AFC(0);
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = v188 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = type metadata accessor for FormatSlotDefinition(0);
  sub_1D5CAB770(0);
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EDF25378, sub_1D5CAB770, &unk_1D7321584);
  v190 = v38;
  sub_1D5D2EE70(v38, v40, v42, v36, v38, v40, &type metadata for FormatVersions.JazzkonC, v37, v35, v41, &off_1F51F6C78);
  v43 = *v2;
  v44 = v2[1];
  v204 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
  v47 = *(v45 - 8);
  v48 = *(v47 + 16);
  v200 = v46;
  v202 = v48;
  v203 = v45;
  v201 = v47 + 16;
  (v48)(v30);
  v206 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v216 = v43;
  v217 = v44;
  v214 = 0uLL;
  v215 = 0;
  v49 = &v35[*(v32 + 44)];
  v51 = *v49;
  v50 = *(v49 + 1);
  v218 = 0;
  v52 = swift_allocObject();
  *&v211 = v188;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = v218;
  *(v52 + 40) = v51;
  *(v52 + 48) = v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v210 = &v188[-6];
  v188[-4] = sub_1D5B4AA6C;
  v188[-3] = 0;
  v186 = sub_1D6708B6C;
  v187 = v54;
  v218 = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v218;
  v205 = v51;
  *(v55 + 40) = v51;
  *(v55 + 48) = v50;
  sub_1D66B6B90(0);
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF033A8, sub_1D66B6B90, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v208 = v58;
  v209 = v57;
  v59 = sub_1D72647CC();
  v218 = 0;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v59;
  *(v60 + 40) = v218;
  v61 = *(v32 + 36);
  v62 = v30;
  v213 = v35;
  v63 = &v35[v61];
  v64 = *&v35[v61 + 24];
  v65 = *&v35[v61 + 32];
  v66 = __swift_project_boxed_opaque_existential_1(&v35[v61], v64);
  MEMORY[0x1EEE9AC00](v66, v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v70 = v210;
  v188[-4] = sub_1D615B4A4;
  v188[-3] = v70;
  v186 = sub_1D6708B6C;
  v187 = v55;
  v71 = v212;
  sub_1D5D2BC70(v62, sub_1D615B49C, v72, sub_1D615B4A4, &v188[-6], v64, v65);
  if (v71)
  {
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

    v73 = v213;
LABEL_7:
    v93 = v73;
    return sub_1D5D2CFE8(v93, sub_1D66B6AFC);
  }

  v189 = v63;
  v210 = v50;

  v73 = v213;
  sub_1D72647EC();
  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

  v74 = v204[2];
  v75 = v204[3];
  v202(v207, v200, v203);
  swift_storeEnumTagMultiPayload();
  v216 = v74;
  v217 = v75;
  v212 = xmmword_1D728CF30;
  v214 = xmmword_1D728CF30;
  v215 = 0;
  v218 = 0;
  v76 = swift_allocObject();
  v188[1] = v188;
  *(v76 + 16) = v212;
  *(v76 + 32) = v218;
  *&v211 = 0;
  v77 = v205;
  v78 = v210;
  *(v76 + 40) = v205;
  *(v76 + 48) = v78;
  MEMORY[0x1EEE9AC00](v76, v79);
  v188[-4] = sub_1D5B4AA6C;
  v188[-3] = 0;
  v186 = sub_1D6708B6C;
  v187 = v80;
  v218 = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v212;
  *(v81 + 32) = v218;
  *(v81 + 40) = v77;
  *(v81 + 48) = v78;
  swift_retain_n();
  v82 = sub_1D72647CC();
  v218 = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v82;
  *(v83 + 24) = v212;
  *(v83 + 40) = v218;
  v84 = *(v189 + 3);
  v85 = *(v189 + 4);
  v86 = __swift_project_boxed_opaque_existential_1(v189, v84);
  MEMORY[0x1EEE9AC00](v86, v87);
  MEMORY[0x1EEE9AC00](v88, v89);
  v188[-4] = sub_1D615B4A4;
  v188[-3] = &v188[-6];
  v90 = v207;
  v186 = sub_1D6708B6C;
  v187 = v81;
  v91 = v211;
  sub_1D5D2BC70(v207, sub_1D615B49C, v92, sub_1D615B4A4, &v188[-6], v84, v85);
  if (v91)
  {
    sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);

    goto LABEL_7;
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);

  v95 = v204[4];
  v96 = v204[5];
  v202(v199, v200, v203);
  swift_storeEnumTagMultiPayload();
  v216 = v95;
  v217 = v96;
  v212 = xmmword_1D7297410;
  v214 = xmmword_1D7297410;
  v215 = 0;
  v218 = 0;
  v97 = swift_allocObject();
  *&v211 = v188;
  *(v97 + 16) = v212;
  *(v97 + 32) = v218;
  v98 = v205;
  v99 = v210;
  *(v97 + 40) = v205;
  *(v97 + 48) = v99;
  MEMORY[0x1EEE9AC00](v97, v100);
  v188[-4] = sub_1D5B4AA6C;
  v188[-3] = 0;
  v186 = sub_1D6708B6C;
  v187 = v101;
  v218 = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = v212;
  *(v102 + 32) = v218;
  *(v102 + 40) = v98;
  *(v102 + 48) = v99;
  swift_retain_n();
  v103 = sub_1D72647CC();
  v218 = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v103;
  *(v104 + 24) = v212;
  *(v104 + 40) = v218;
  v105 = *(v189 + 3);
  v106 = *(v189 + 4);
  v107 = __swift_project_boxed_opaque_existential_1(v189, v105);
  MEMORY[0x1EEE9AC00](v107, v108);
  MEMORY[0x1EEE9AC00](v109, v110);
  v188[-4] = sub_1D615B4A4;
  v188[-3] = &v188[-6];
  v111 = v199;
  v186 = sub_1D6708B6C;
  v187 = v102;
  sub_1D5D2BC70(v199, sub_1D615B49C, v112, sub_1D615B4A4, &v188[-6], v105, v106);

  sub_1D72647EC();
  sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);

  v113 = v204[6];
  v202(v198, v200, v203);
  swift_storeEnumTagMultiPayload();
  v216 = v113;
  v212 = xmmword_1D72BAA60;
  v214 = xmmword_1D72BAA60;
  v215 = 0;
  v218 = 0;
  v114 = swift_allocObject();
  v207 = v188;
  *(v114 + 16) = v212;
  *(v114 + 32) = v218;
  *&v211 = 0;
  v115 = v205;
  v116 = v210;
  *(v114 + 40) = v205;
  *(v114 + 48) = v116;
  MEMORY[0x1EEE9AC00](v114, v117);
  v188[-4] = sub_1D5B4AA6C;
  v188[-3] = 0;
  v186 = sub_1D6708B6C;
  v187 = v118;
  v218 = 0;
  v119 = swift_allocObject();
  *(v119 + 16) = v212;
  *(v119 + 32) = v218;
  *(v119 + 40) = v115;
  *(v119 + 48) = v116;
  swift_retain_n();
  v120 = sub_1D72647CC();
  v218 = 0;
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v212;
  *(v121 + 40) = v218;
  v122 = *(v189 + 3);
  v123 = *(v189 + 4);
  v124 = __swift_project_boxed_opaque_existential_1(v189, v122);
  MEMORY[0x1EEE9AC00](v124, v125);
  MEMORY[0x1EEE9AC00](v126, v127);
  v188[-4] = sub_1D615B4A4;
  v188[-3] = &v188[-6];
  v128 = v198;
  v186 = sub_1D6708B6C;
  v187 = v119;
  v129 = v211;
  sub_1D5D2BC70(v198, sub_1D615B49C, v130, sub_1D615B4A4, &v188[-6], v122, v123);
  if (v129)
  {
    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);

    v93 = v73;
    return sub_1D5D2CFE8(v93, sub_1D66B6AFC);
  }

  sub_1D5B5BF78(0, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
  sub_1D66B6C24();
  sub_1D72647EC();
  sub_1D5D2CFE8(v198, type metadata accessor for FormatVersionRequirement);

  v131 = v204;
  v132 = v204[7];
  v133 = qword_1EDF31ED0;

  if (v133 != -1)
  {
    swift_once();
  }

  v134 = v203;
  v135 = __swift_project_value_buffer(v203, qword_1EDFFCD50);
  v136 = v197;
  v137 = v202;
  v202(v197, v135, v134);
  swift_storeEnumTagMultiPayload();
  *&v212 = v132;
  if (*(v132 + 16))
  {
    LOBYTE(v214) = 0;
    v138 = swift_allocObject();
    v211 = xmmword_1D72BAA70;
    *(v138 + 16) = xmmword_1D72BAA70;
    *(v138 + 32) = v214;
    *(v138 + 40) = v205;
    *(v138 + 48) = v210;

    v139 = sub_1D72647CC();
    LOBYTE(v214) = 0;
    v140 = swift_allocObject();
    *(v140 + 16) = v139;
    *(v140 + 24) = v211;
    *(v140 + 40) = v214;
    v141 = *(v189 + 3);
    v142 = *(v189 + 4);
    v143 = __swift_project_boxed_opaque_existential_1(v189, v141);
    MEMORY[0x1EEE9AC00](v143, v144);
    MEMORY[0x1EEE9AC00](v145, v146);
    v188[-4] = sub_1D5B4AA6C;
    v188[-3] = 0;
    v186 = sub_1D66B6CFC;
    v187 = v138;
    v148 = sub_1D5D2F7A4(v136, sub_1D615B49C, v147, sub_1D615B4A4, &v188[-6], v141, v142);
    v149 = v148;

    if (v149)
    {
      v214 = v211;
      v215 = 0;
      v216 = v212;
      sub_1D5C34D84(0, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform, MEMORY[0x1E69E62F8]);
      sub_1D6661AAC();
      sub_1D72647EC();

      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
    }

    v134 = v203;
    v131 = v204;
    v137 = v202;
  }

  else
  {
    sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
  }

  v150 = v131[8];
  v151 = v196;
  v137(v196, v200, v134);
  swift_storeEnumTagMultiPayload();
  v216 = v150;
  v212 = xmmword_1D72BAA80;
  v214 = xmmword_1D72BAA80;
  v215 = 0;
  v218 = 0;
  v152 = swift_allocObject();
  *&v211 = v188;
  *(v152 + 16) = v212;
  *(v152 + 32) = v218;
  v153 = v205;
  v154 = v210;
  *(v152 + 40) = v205;
  *(v152 + 48) = v154;
  MEMORY[0x1EEE9AC00](v152, v155);
  v188[-4] = sub_1D5B4AA6C;
  v188[-3] = 0;
  v186 = sub_1D6708B6C;
  v187 = v156;
  v218 = 0;
  v157 = swift_allocObject();
  *(v157 + 16) = v212;
  *(v157 + 32) = v218;
  *(v157 + 40) = v153;
  *(v157 + 48) = v154;
  swift_retain_n();
  v158 = sub_1D72647CC();
  v218 = 0;
  v159 = swift_allocObject();
  *(v159 + 16) = v158;
  *(v159 + 24) = v212;
  *(v159 + 40) = v218;
  v160 = *(v189 + 3);
  v161 = *(v189 + 4);
  v162 = __swift_project_boxed_opaque_existential_1(v189, v160);
  MEMORY[0x1EEE9AC00](v162, v163);
  MEMORY[0x1EEE9AC00](v164, v165);
  v188[-4] = sub_1D615B4A4;
  v188[-3] = &v188[-6];
  v186 = sub_1D6708B6C;
  v187 = v157;
  sub_1D5D2BC70(v151, sub_1D615B49C, v166, sub_1D615B4A4, &v188[-6], v160, v161);

  sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  sub_1D66856D0();
  sub_1D72647EC();
  sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);

  v167 = *(v190 + 40);
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v168 = v203;
  v169 = __swift_project_value_buffer(v203, qword_1EDFFCD80);
  v202(v195, v169, v168);
  swift_storeEnumTagMultiPayload();
  v212 = xmmword_1D72BAA90;
  v214 = xmmword_1D72BAA90;
  v215 = 0;
  LOBYTE(v216) = 0;
  v170 = swift_allocObject();
  *(v170 + 16) = v212;
  *(v170 + 32) = v216;
  v171 = v210;
  *(v170 + 40) = v205;
  *(v170 + 48) = v171;
  v172 = v204 + v167;
  v173 = v192;
  sub_1D5CDE2EC(v172, v192, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v193 + 48))(v173, 1, v194) != 1)
  {
    v174 = (*(v193 + 32))(v191, v192, v194);
    MEMORY[0x1EEE9AC00](v174, v175);
    v188[-4] = sub_1D5B4AA6C;
    v188[-3] = 0;
    v186 = sub_1D6708B6C;
    v187 = v170;
    LOBYTE(v216) = 0;
    v176 = swift_allocObject();
    *(v176 + 16) = v212;
    *(v176 + 32) = v216;
    *(v176 + 40) = v205;
    *(v176 + 48) = v210;
    swift_retain_n();
    v177 = sub_1D72647CC();
    LOBYTE(v216) = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v177;
    *(v178 + 24) = v212;
    *(v178 + 40) = v216;
    v179 = *(v189 + 3);
    v180 = *(v189 + 4);
    v181 = __swift_project_boxed_opaque_existential_1(v189, v179);
    MEMORY[0x1EEE9AC00](v181, v182);
    MEMORY[0x1EEE9AC00](v183, v184);
    v188[-4] = sub_1D615B4A4;
    v188[-3] = &v188[-6];
    v186 = sub_1D6708B6C;
    v187 = v176;
    LOBYTE(v179) = sub_1D5D2F7A4(v195, sub_1D615B49C, v185, sub_1D615B4A4, &v188[-6], v179, v180);

    if (v179)
    {
      sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v193 + 8))(v191, v194);
    sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);
    v93 = v213;
    return sub_1D5D2CFE8(v93, sub_1D66B6AFC);
  }

  sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v213, sub_1D66B6AFC);
  return sub_1D5D35558(v192, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D658B4E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B8A40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D658B518(uint64_t a1)
{
  v2 = sub_1D5CAB8DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D658B554(uint64_t a1)
{
  v2 = sub_1D5CAB8DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotDefinitionItemSetAuxiliary.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D66B6D8C(0);
  v33 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66B6E58(0);
  v10 = v9;
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B6EEC(0);
  sub_1D5B58B84(&qword_1EDF24D68, sub_1D66B6EEC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_2:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v10;
  v18 = v33;
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
          goto LABEL_9;
        }
      }

      v23 = v17;
      v25 = *(v21 - 2);
      v24 = *(v21 - 1);

      v26 = sub_1D6627E68(0x69747265706F7270, 0xEA00000000007365, 0x736D657469, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v39 + 8))(v13, v23);
      goto LABEL_2;
    }

LABEL_9:
  }

  v37 = 0uLL;
  v38 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC48, sub_1D66B6D8C, MEMORY[0x1E69D64C8]);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    sub_1D726431C();
    v22 = v39;
    v28 = sub_1D725A74C();
    (*(v31 + 8))(v8, v18);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v22 = v39;
  }

  sub_1D5B5BF78(0, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5CABB2C();
  sub_1D726431C();
  (*(v22 + 8))(v13, v17);
  v29 = v34;
  v30 = v32;
  *v32 = v28;
  v30[1] = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotDefinitionItemSetAuxiliary.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v85 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v76 - v10;
  sub_1D66B706C(0);
  *&v86 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v84 = v1[1];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66B6EEC(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24D68, sub_1D66B6EEC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSlotDefinitionItemSetAuxiliary, v20, v22, v17, &type metadata for FormatSlotDefinitionItemSetAuxiliary, v20, &type metadata for FormatVersions.SydroF, v18, v15, v21, &off_1F51F6C58);
  v23 = qword_1EDF31ED8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD68);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v11, v25, v24);
  v83 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!v16[2])
  {
    v80 = v3;
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v51 = v85;
    v50 = v86;
LABEL_10:
    v27(v51, v25, v24);
    goto LABEL_11;
  }

  v82 = v16;
  v78 = v25;
  v79 = v28;
  v77 = v27;
  v29 = v86;
  v30 = &v15[*(v86 + 44)];
  v32 = *v30;
  v31 = *(v30 + 1);
  LOBYTE(v88) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v88;
  *(v33 + 40) = v32;
  *(v33 + 48) = v31;
  sub_1D66B7100(0);
  v34 = v15;
  v81 = v15;
  v35 = v3;
  v37 = v36;
  sub_1D5B58B84(&qword_1EDF02C48, sub_1D66B7100, MEMORY[0x1E69E6F60]);

  v76 = v37;
  v38 = sub_1D72647CC();
  LOBYTE(v88) = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v88;
  v40 = &v34[*(v29 + 36)];
  v41 = *(v40 + 3);
  v42 = *(v40 + 4);
  v43 = __swift_project_boxed_opaque_existential_1(v40, v41);
  v80 = &v76;
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v76 - 4) = sub_1D5B4AA6C;
  *(&v76 - 3) = 0;
  v74 = sub_1D66B7194;
  v75 = v33;
  v48 = sub_1D5D2F7A4(v11, sub_1D615B49C, v47, sub_1D615B4A4, (&v76 - 6), v41, v42);
  if (v35)
  {
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v49 = v81;
    return sub_1D5D2CFE8(v49, sub_1D66B706C);
  }

  v52 = v48;
  v15 = v81;

  if ((v52 & 1) == 0)
  {
    v80 = 0;
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v51 = v85;
    v50 = v86;
    v27 = v77;
    v25 = v78;
    goto LABEL_10;
  }

  v88 = 0uLL;
  v89 = 0;
  v90 = v82;
  sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  sub_1D66856D0();
  sub_1D72647EC();

  sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
  v51 = v85;
  v50 = v86;
  v80 = 0;
  v77(v85, v78, v24);
LABEL_11:
  swift_storeEnumTagMultiPayload();
  v90 = v84;
  v86 = xmmword_1D728CF30;
  v88 = xmmword_1D728CF30;
  v89 = 0;
  v53 = &v15[*(v50 + 44)];
  v55 = *v53;
  v54 = *(v53 + 1);
  v87 = 0;
  v56 = swift_allocObject();
  v84 = &v76;
  *(v56 + 16) = v86;
  *(v56 + 32) = v87;
  *(v56 + 40) = v55;
  *(v56 + 48) = v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  *(&v76 - 4) = sub_1D5B4AA6C;
  *(&v76 - 3) = 0;
  v74 = sub_1D6708B70;
  v75 = v58;
  v87 = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = v86;
  *(v59 + 32) = v87;
  *(v59 + 40) = v55;
  *(v59 + 48) = v54;
  sub_1D66B7100(0);
  v61 = v60;
  sub_1D5B58B84(&qword_1EDF02C48, sub_1D66B7100, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v83 = v61;
  v62 = sub_1D72647CC();
  v87 = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  *(v63 + 24) = v86;
  *(v63 + 40) = v87;
  v64 = &v15[*(v50 + 36)];
  v65 = *(v64 + 3);
  v66 = *(v64 + 4);
  v67 = __swift_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v67, v68);
  MEMORY[0x1EEE9AC00](v69, v70);
  *(&v76 - 4) = sub_1D615B4A4;
  *(&v76 - 3) = (&v76 - 6);
  v74 = sub_1D6708B70;
  v75 = v59;
  v71 = v80;
  sub_1D5D2BC70(v51, sub_1D615B49C, v72, sub_1D615B4A4, (&v76 - 6), v65, v66);
  if (v71)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5B5BF78(0, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
    sub_1D66B6C24();
    sub_1D72647EC();
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);
  }

  v49 = v15;
  return sub_1D5D2CFE8(v49, sub_1D66B706C);
}

uint64_t sub_1D658C360()
{
  v1 = 0x736D657469;
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
    return 0x69747265706F7270;
  }
}

uint64_t sub_1D658C3B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B8CE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D658C3EC(uint64_t a1)
{
  v2 = sub_1D66B6FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D658C428(uint64_t a1)
{
  v2 = sub_1D66B6FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotExpireContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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

    v13 = v25;
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
          *(v20 + 16) = &unk_1F51172E8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B7210();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v27;
    if (v27)
    {
      sub_1D5C34074(0, &qword_1EC886F48, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for FormatValue);
      v26 = xmmword_1D7279980;
      sub_1D66A51C8();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = v27;
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      v23 = 0;
    }

    *v13 = v23;
    *(v13 + 8) = v22 ^ 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotExpireContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSlotExpireContent, &type metadata for FormatCodingKeys, v20, v17, &type metadata for FormatSlotExpireContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v18, v14, v19, &off_1F51F6C38);
  if (v16)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCDE0);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641C3E4(0, v10);
    v23 = v10;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCDE0);
    (*(*(v24 - 8) + 16))(v6, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63939B0(1, v6, v15);
    v23 = v6;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D658CADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74657366666FLL;
  }

  else
  {
    v3 = 0x73626F6E6BLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x74657366666FLL;
  }

  else
  {
    v5 = 0x73626F6E6BLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D658CB7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D658CBF8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D658CC60(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D658CCE4(uint64_t *a1@<X8>)
{
  v2 = 0x73626F6E6BLL;
  if (*v1)
  {
    v2 = 0x74657366666FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSlotItemCountLimit.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v39 = type metadata accessor for FormatSlotDefinition(0);
  MEMORY[0x1EEE9AC00](v39, v5);
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for FormatSlotItemCountLimit(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v32[0] = v14;
    v32[1] = v11;
    v15 = v35;
    v16 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_1D7264AFC();
    v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

    v19 = v36;
    v20 = v10;
    if (v18)
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
          v3 = swift_allocError();
          *v27 = v26;
          *(v27 + 8) = v25;
          *(v27 + 16) = &unk_1F5117338;
          *(v27 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v15 + 8))(v10, v19);
          a1 = v16;
          goto LABEL_9;
        }
      }
    }

    sub_1D66B7264();
    v38 = 0uLL;
    sub_1D726431C();
    a1 = v16;
    if (v37)
    {
      if (v37 == 1)
      {
        v37 = xmmword_1D7279980;
        sub_1D66B72B8();
        sub_1D726431C();
        v31 = v34;
        (*(v15 + 8))(v20, v19);
        v30 = v32[0];
        *v32[0] = v38;
      }

      else
      {
        v38 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2AB28, type metadata accessor for FormatSlotDefinition, &protocol conformance descriptor for FormatSlotDefinition);
        v29 = v33;
        sub_1D726431C();
        (*(v15 + 8))(v10, v19);
        v30 = v32[0];
        sub_1D5C8F76C(v29, v32[0], type metadata accessor for FormatSlotDefinition);
        v31 = v34;
      }
    }

    else
    {
      (*(v15 + 8))(v10, v19);
      v31 = v34;
      v30 = v32[0];
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5C8F76C(v30, v31, type metadata accessor for FormatSlotItemCountLimit);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemCountLimit.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatSlotDefinition(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v42 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v42 - v15;
  v17 = type metadata accessor for FormatSlotItemCountLimit(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = sub_1D5C30408();
  sub_1D5D2EE70(v17, &type metadata for FormatCodingKeys, v28, v25, v17, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v26, v24, v27, &off_1F51F6CD8);
  sub_1D6706BB4(v42[1], v20, type metadata accessor for FormatSlotItemCountLimit);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v42[0];
      sub_1D5C8F76C(v20, v42[0], type metadata accessor for FormatSlotDefinition);
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDE0);
      (*(*(v31 - 8) + 16))(v8, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6392BE8(2, v30, v8);
      sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
      v33 = type metadata accessor for FormatSlotDefinition;
      v34 = v30;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
      (*(*(v39 - 8) + 16))(v16, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641BD40(0, v16);
      v33 = type metadata accessor for FormatVersionRequirement;
      v34 = v16;
    }
  }

  else
  {
    v35 = *v20;
    v36 = v20[1];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v12, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6392A54(1, v35, v36, v12);
    v33 = type metadata accessor for FormatVersionRequirement;
    v34 = v12;
  }

  sub_1D5D2CFE8(v34, v33);
  return sub_1D5D2CFE8(v24, sub_1D5D30DC4);
}

uint64_t sub_1D658D7C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746E756F63;
  if (v2 != 1)
  {
    v5 = 1953459315;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x73626F6E6BLL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x746E756F63;
  if (*a2 != 1)
  {
    v8 = 1953459315;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73626F6E6BLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D658D8A8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D658D93C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D658D9BC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D658DA4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664384(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D658DA7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746E756F63;
  if (v2 != 1)
  {
    v5 = 1953459315;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73626F6E6BLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D658DC38(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "smallestToGreatest";
  }

  else
  {
    v2 = "tems";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "smallestToGreatest";
  }

  else
  {
    v4 = "tems";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D658DCDC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D658DD54(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D658DDB8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D658DE38(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "smallestToGreatest";
  }

  else
  {
    v2 = "tems";
  }

  *a1 = 0xD000000000000012;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t FormatSlotItemPuzzleStatisticTransform.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
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
    v11 = v7;
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
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
          *(v21 + 16) = &unk_1F5117388;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B730C();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      (*(v11 + 8))(v10, v6);
      v23 = 2;
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D5F2B7AC();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = v27;
    }

    *v12 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemPuzzleStatisticTransform.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSlotItemPuzzleStatisticTransform, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemPuzzleStatisticTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v17, v14, v18, &off_1F51F6BD8);
  if (v15 == 2)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE80);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418DB0(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63863B8(0, v15 & 1, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D658E55C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D456E6F6ELL;
  }

  else
  {
    v3 = 0x726564726FLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D456E6F6ELL;
  }

  else
  {
    v5 = 0x726564726FLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D658E600()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D658E680(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D658E6EC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D658E774(uint64_t *a1@<X8>)
{
  v2 = 0x726564726FLL;
  if (*v1)
  {
    v2 = 0x7974706D456E6F6ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSlotItemSort.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
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
          *(v22 + 16) = &unk_1F51173D8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B7360();
    v28 = 0uLL;
    sub_1D726431C();
    if (v29)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
    }

    else
    {
      sub_1D66B73B4(0, &qword_1EC887238, &qword_1EDF3A6A0, MEMORY[0x1E69E6530], &protocol witness table for Int);
      v28 = xmmword_1D7279980;
      sub_1D66B7424(&qword_1EC887240, sub_1D66B74B0, MEMORY[0x1E69E6330]);
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v25 = v29;
      v24 = swift_allocObject();
      *(v24 + 16) = v25;
    }

    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemSort.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSlotItemSort, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemSort, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v17, v14, v18, &off_1F51F6AF8);
  if (v15)
  {
    v20 = *(v15 + 16);
    v21 = qword_1EDF31F40;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCE50);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A7CA4(0, v20, v10);

    v24 = v10;
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCC90);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6421C30(1, v6);
    v24 = v6;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D658EF1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746174536E656573;
  }

  else
  {
    v3 = 0x726F7463656C6573;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x746174536E656573;
  }

  else
  {
    v5 = 0x726F7463656C6573;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
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
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D658EFC8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D658F050(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatSlotItemTagFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
          *(v20 + 16) = &unk_1F5117428;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B7534();
    v26 = 0uLL;
    sub_1D726431C();
    v26 = xmmword_1D7279980;
    if (v27)
    {
      sub_1D5F34364();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27 | 0x2000000000000000;
    }

    else
    {
      sub_1D5F34364();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilter.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilter, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemTagFilter, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v17, v14, v18, &off_1F51F6B98);
  if ((v15 & 0x2000000000000000) != 0)
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE98);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639381C(1, v15 & 0xDFFFFFFFFFFFFFFFLL, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE98);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639381C(0, v15, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D658F810(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6564756C637865;
  }

  else
  {
    v2 = 0x6564756C636E69;
  }

  if (*a2)
  {
    v3 = 0x6564756C637865;
  }

  else
  {
    v3 = 0x6564756C636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D658F88C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D658F8F8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D658F948(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D658F9BC(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6564756C637865;
  }

  else
  {
    v2 = 0x6564756C636E69;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t FormatSlotItemTagFilterAndCondition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66B7588(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B761C(0);
  sub_1D5B58B84(&qword_1EC887270, sub_1D66B761C, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x69646E6F4373686CLL, 0xEC0000006E6F6974, 0x69646E6F43736872, 0xEC0000006E6F6974);
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

  sub_1D5F34364();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilterAndCondition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D66B779C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66B761C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC887270, sub_1D66B761C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilterAndCondition, v19, v21, v16, &type metadata for FormatSlotItemTagFilterAndCondition, v19, &type metadata for FormatVersions.DawnburstC, v17, v14, v20, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE98);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v79 = v22;
  v73 = v24 + 16;
  v74 = v25;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v85 = 0;
  v29 = swift_allocObject();
  v82 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v85;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v84 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708B74;
  v69 = v31;
  v85 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v85;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66B7830(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887288, sub_1D66B7830, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v81 = v34;
  v36 = sub_1D72647CC();
  v85 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v85;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v45 = v83;
  v46 = v84;
  v68 = sub_1D6708B74;
  v69 = v32;
  sub_1D5D2BC70(v84, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v38;
    v49 = v78;
    v48 = v79;
    v83 = v28;

    v50 = sub_1D5F343B8();
    sub_1D72647EC();
    v70 = v50;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v52 = v77;
    v74(v77, v49, v48);
    swift_storeEnumTagMultiPayload();
    v88 = v76;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v82 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v75;
    v55 = v83;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708B74;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708B74;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66B779C);
}

uint64_t sub_1D6590660(uint64_t a1)
{
  v2 = sub_1D66B76F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659069C(uint64_t a1)
{
  v2 = sub_1D66B76F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D65906F0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D65907F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664800(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6590820(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x67615464656566;
  v5 = 0xE200000000000000;
  v6 = 29295;
  if (v2 != 5)
  {
    v6 = 7630702;
    v5 = 0xE300000000000000;
  }

  v7 = 0xEA00000000006465;
  v8 = 0x776F6C6C6F666E75;
  if (v2 != 3)
  {
    v8 = 6581857;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x67615470756F7267;
  if (v2 != 1)
  {
    v9 = 0x6465776F6C6C6F66;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1D6590998()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

void sub_1D65909D0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D6590AC4(uint64_t a1)
{
  v2 = sub_1D6667ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6590B00(uint64_t a1)
{
  v2 = sub_1D6667ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotItemTagFilterOrCondition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66B7928(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B79BC(0);
  sub_1D5B58B84(&qword_1EC8872B8, sub_1D66B79BC, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x69646E6F4373686CLL, 0xEC0000006E6F6974, 0x69646E6F43736872, 0xEC0000006E6F6974);
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

  sub_1D5F34364();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilterOrCondition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D66B7B3C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66B79BC(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8872B8, sub_1D66B79BC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilterOrCondition, v19, v21, v16, &type metadata for FormatSlotItemTagFilterOrCondition, v19, &type metadata for FormatVersions.DawnburstC, v17, v14, v20, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE98);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v79 = v22;
  v73 = v24 + 16;
  v74 = v25;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v85 = 0;
  v29 = swift_allocObject();
  v82 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v85;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v84 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708B74;
  v69 = v31;
  v85 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v85;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66B7BD0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8872D0, sub_1D66B7BD0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v81 = v34;
  v36 = sub_1D72647CC();
  v85 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v85;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v45 = v83;
  v46 = v84;
  v68 = sub_1D66B7C64;
  v69 = v32;
  sub_1D5D2BC70(v84, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v38;
    v49 = v78;
    v48 = v79;
    v83 = v28;

    v50 = sub_1D5F343B8();
    sub_1D72647EC();
    v70 = v50;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v52 = v77;
    v74(v77, v49, v48);
    swift_storeEnumTagMultiPayload();
    v88 = v76;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v82 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v75;
    v55 = v83;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708B74;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708B74;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66B7B3C);
}

uint64_t sub_1D6591704(uint64_t a1)
{
  v2 = sub_1D66B7A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6591740(uint64_t a1)
{
  v2 = sub_1D66B7A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotItemValidate.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSlotItemValidate, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatSlotItemValidate, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v11, v9, v12, &off_1F51F6AB8);
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCC90);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641D7B0(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

void FormatSlotNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v138 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v139 = &v135 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v140 = &v135 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v142 = &v135 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v135 - v19;
  sub_1D66B8F1C(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C548F0(0);
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF24C08, sub_1D5C548F0, &unk_1D7321584);
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.JazzkonC, v27, v25, v30, &off_1F51F6C78);
  swift_beginAccess();
  v32 = v2[2];
  v33 = v2[3];
  v143 = v2;
  v34 = qword_1EDF31EB0;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v141 = v36;
  v145 = v35;
  v146 = v38;
  v148 = v37 + 16;
  (v38)(v20);
  v147 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v160 = v32;
  *(&v160 + 1) = v33;
  *&v153 = v33;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v39 = &v25[*(v22 + 44)];
  v151 = v20;
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v158) = 0;
  v42 = swift_allocObject();
  v152 = &v135;
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v158;
  *(v42 + 40) = v40;
  *(v42 + 48) = v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v135 - 4) = sub_1D5B4AA6C;
  *(&v135 - 3) = 0;
  v133 = sub_1D6708B78;
  v134 = v44;
  LOBYTE(v158) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v158;
  v144 = v40;
  *(v45 + 40) = v40;
  *(v45 + 48) = v41;
  sub_1D5E1A018(0);
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF02AC8, sub_1D5E1A018, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v150 = v47;
  v149 = v48;
  v49 = sub_1D72647CC();
  LOBYTE(v158) = 0;
  v50 = swift_allocObject();
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = v158;
  v51 = &v25[*(v22 + 36)];
  v52 = *(v51 + 3);
  v53 = *(v51 + 4);
  v54 = __swift_project_boxed_opaque_existential_1(v51, v52);
  MEMORY[0x1EEE9AC00](v54, v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  *(&v135 - 4) = sub_1D615B4A4;
  *(&v135 - 3) = (&v135 - 6);
  v58 = v151;
  v133 = sub_1D6708B78;
  v134 = v45;
  v59 = v154;
  sub_1D5D2BC70(v151, sub_1D615B49C, v60, sub_1D615B4A4, (&v135 - 6), v52, v53);
  if (v59)
  {
    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v25, sub_1D66B8F1C);

    return;
  }

  v137 = v51;
  v154 = v41;

  sub_1D72647EC();
  sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

  v61 = v143;
  swift_beginAccess();
  v62 = *(v61 + 32);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v63 = v145;
  v64 = __swift_project_value_buffer(v145, qword_1EDFFCD50);
  v65 = v142;
  v66 = v146;
  v146(v142, v64, v63);
  swift_storeEnumTagMultiPayload();
  v67 = v144;
  if (v62)
  {
    LOBYTE(v160) = 0;
    v68 = v65;
    v69 = swift_allocObject();
    v153 = xmmword_1D728CF30;
    *(v69 + 16) = xmmword_1D728CF30;
    *(v69 + 32) = v160;
    *(v69 + 40) = v67;
    *(v69 + 48) = v154;

    v70 = sub_1D72647CC();
    LOBYTE(v160) = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v153;
    *(v71 + 40) = v160;
    v72 = v25;
    v73 = *(v137 + 3);
    v74 = *(v137 + 4);
    v75 = __swift_project_boxed_opaque_existential_1(v137, v73);
    MEMORY[0x1EEE9AC00](v75, v76);
    MEMORY[0x1EEE9AC00](v77, v78);
    *(&v135 - 4) = sub_1D5B4AA6C;
    *(&v135 - 3) = 0;
    v133 = sub_1D6708B78;
    v134 = v69;
    v80 = sub_1D5D2F7A4(v68, sub_1D615B49C, v79, sub_1D615B4A4, (&v135 - 6), v73, v74);
    v99 = v80;

    if (v99)
    {
      v160 = v153;
      v161 = 0;
      LOBYTE(v158) = 1;
      v25 = v72;
      sub_1D72647EC();
      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
      v81 = v154;
      v66 = v146;
      v63 = v145;
      v67 = v144;
    }

    else
    {
      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
      v25 = v72;
      v63 = v145;
      v81 = v154;
      v67 = v144;
      v66 = v146;
    }
  }

  else
  {
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
    v81 = v154;
  }

  v136 = v25;
  swift_beginAccess();
  v82 = v61[5];
  v83 = v140;
  v66(v140, v141, v63);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v158) = 0;
  v84 = swift_allocObject();
  v153 = xmmword_1D7297410;
  *(v84 + 16) = xmmword_1D7297410;
  *(v84 + 32) = v158;
  *(v84 + 40) = v67;
  *(v84 + 48) = v81;

  v85 = sub_1D72647CC();
  LOBYTE(v158) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v153;
  *(v86 + 40) = v158;
  v87 = *(v137 + 3);
  v88 = *(v137 + 4);
  v89 = __swift_project_boxed_opaque_existential_1(v137, v87);
  MEMORY[0x1EEE9AC00](v89, v90);
  MEMORY[0x1EEE9AC00](v91, v92);
  *(&v135 - 4) = sub_1D5B4AA6C;
  *(&v135 - 3) = 0;
  v133 = sub_1D66B8FB0;
  v134 = v84;
  LOBYTE(v87) = sub_1D5D2F7A4(v83, sub_1D615B49C, v93, sub_1D615B4A4, (&v135 - 6), v87, v88);

  if (v87)
  {
    v158 = v153;
    v159 = 0;
    v157 = v82;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    v94 = v136;
    sub_1D72647EC();
    v95 = v139;
    v96 = v145;
    v97 = v144;
    v98 = v141;

    sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);

    v94 = v136;
    v95 = v139;
    v96 = v145;
    v97 = v144;
    v98 = v141;
  }

  v100 = v143;
  swift_beginAccess();
  v101 = v100[6];
  v146(v95, v98, v96);
  swift_storeEnumTagMultiPayload();
  if (*(v101 + 16))
  {
    LOBYTE(v157) = 0;
    v102 = swift_allocObject();
    v153 = xmmword_1D72BAA60;
    *(v102 + 16) = xmmword_1D72BAA60;
    *(v102 + 32) = v157;
    *(v102 + 40) = v97;
    *(v102 + 48) = v154;

    v103 = sub_1D72647CC();
    LOBYTE(v157) = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = v153;
    *(v104 + 40) = v157;
    v105 = v95;
    v106 = *(v137 + 3);
    v107 = *(v137 + 4);
    v108 = __swift_project_boxed_opaque_existential_1(v137, v106);
    MEMORY[0x1EEE9AC00](v108, v109);
    MEMORY[0x1EEE9AC00](v110, v111);
    *(&v135 - 4) = sub_1D5B4AA6C;
    *(&v135 - 3) = 0;
    v133 = sub_1D6708B78;
    v134 = v102;
    v113 = sub_1D5D2F7A4(v105, sub_1D615B49C, v112, sub_1D615B4A4, (&v135 - 6), v106, v107);
    v115 = v113;

    if (v115)
    {
      v94 = v136;
      sub_1D5E08DAC(v101, v136, 3, 0, 0);
    }

    else
    {
      v94 = v136;
    }

    v114 = v138;
    v95 = v139;

    v96 = v145;
    v97 = v144;
    v98 = v141;
  }

  else
  {
    v114 = v138;
  }

  sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);
  v116 = v143;
  swift_beginAccess();
  v117 = v116[7];
  v146(v114, v98, v96);
  swift_storeEnumTagMultiPayload();
  if (*(v117 + 16))
  {
    LOBYTE(v155) = 0;
    v118 = swift_allocObject();
    v153 = xmmword_1D72BAA70;
    *(v118 + 16) = xmmword_1D72BAA70;
    *(v118 + 32) = v155;
    *(v118 + 40) = v97;
    *(v118 + 48) = v154;

    v119 = sub_1D72647CC();
    LOBYTE(v155) = 0;
    v120 = v114;
    v121 = swift_allocObject();
    *(v121 + 16) = v119;
    *(v121 + 24) = v153;
    *(v121 + 40) = v155;
    v123 = *(v137 + 3);
    v122 = *(v137 + 4);
    v124 = __swift_project_boxed_opaque_existential_1(v137, v123);
    v154 = &v135;
    MEMORY[0x1EEE9AC00](v124, v125);
    MEMORY[0x1EEE9AC00](v126, v127);
    *(&v135 - 4) = sub_1D5B4AA6C;
    *(&v135 - 3) = 0;
    v133 = sub_1D6708B78;
    v134 = v118;
    v129 = sub_1D5D2F7A4(v120, sub_1D615B49C, v128, sub_1D615B4A4, (&v135 - 6), v123, v122);
    v132 = v129;

    if ((v132 & 1) == 0)
    {
      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);

      v131 = v136;
      goto LABEL_27;
    }

    v155 = v153;
    v156 = 0;
    v165 = v117;
    sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D60AD304();
    v94 = v136;
    sub_1D72647EC();

    v130 = v138;
  }

  else
  {
    v130 = v114;
  }

  sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
  v131 = v94;
LABEL_27:
  sub_1D5D2CFE8(v131, sub_1D66B8F1C);
}

uint64_t sub_1D6592F80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B9534(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6592FB8(uint64_t a1)
{
  v2 = sub_1D5C54A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6592FF4(uint64_t a1)
{
  v2 = sub_1D5C54A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotTransform.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for FormatSlotItemCountLimit(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v47 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v12 = v51;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();
  }

  else
  {
    v51 = v6;
    v14 = v47;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v17 = v11;
    if (v16)
    {
      v18 = sub_1D726433C();
      v19 = (v18 + 40);
      v20 = *(v18 + 16) + 1;
      while (--v20)
      {
        v21 = v19 + 2;
        v22 = *v19;
        v19 += 2;
        if (v22 >= 4)
        {
          v23 = *(v21 - 3);

          sub_1D5E2D970();
          v13 = swift_allocError();
          *v24 = v23;
          *(v24 + 8) = v22;
          *(v24 + 16) = &unk_1F51174F0;
          *(v24 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v48 + 8))(v11, v8);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B902C();
    v50 = 0uLL;
    sub_1D726431C();
    v26 = v51;
    switch(v49)
    {
      case 1:
        v50 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF3F1F8, type metadata accessor for FormatSlotItemCountLimit, &protocol conformance descriptor for FormatSlotItemCountLimit);
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v27 = swift_allocBox();
        sub_1D5C8F76C(v26, v36, type metadata accessor for FormatSlotItemCountLimit);
        break;
      case 2:
        v27 = 0xA000000000000008;
        (*(v48 + 8))(v17, v8);
        break;
      case 3:
        sub_1D66B9324(0);
        v50 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF126F8, sub_1D66B9324, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v32 = v49;
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        v27 = v33 | 0x1000000000000000;
        break;
      case 4:
        v50 = xmmword_1D7279980;
        sub_1D5B57DEC();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v28 = v49;
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        v27 = v29 | 0x2000000000000000;
        break;
      case 5:
        v50 = xmmword_1D7279980;
        sub_1D66B92D0();
        sub_1D726427C();
        if (BYTE9(v49))
        {
          v37 = 0;
        }

        else
        {
          v37 = v49;
        }

        v38 = BYTE8(v49) & ~BYTE9(v49);
        (*(v48 + 8))(v17, v8);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        *(v39 + 24) = v38 & 1;
        v27 = v39 | 0x3000000000000000;
        break;
      case 6:
        v50 = xmmword_1D7279980;
        sub_1D66B9260();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v40 = v49;
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        v27 = v41 | 0x4000000000000000;
        break;
      case 7:
        v50 = xmmword_1D7279980;
        sub_1D66B920C();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v34 = v49;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v27 = v35 | 0x5000000000000000;
        break;
      case 8:
        sub_1D5C30060(0, &qword_1EC8872F0, sub_1D66B9128, &type metadata for FormatSlotTransform, type metadata accessor for FormatSelectorValue);
        v49 = xmmword_1D7279980;
        sub_1D66B917C();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v45 = *(&v50 + 1);
        v44 = v50;
        v46 = swift_allocObject();
        *(v46 + 16) = v44;
        *(v46 + 24) = v45;
        v27 = v46 | 0x6000000000000000;
        break;
      case 9:
        v50 = xmmword_1D7279980;
        sub_1D61FE0FC();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v30 = v49;
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        v27 = v31 | 0x7000000000000000;
        break;
      case 10:
        v50 = xmmword_1D7279980;
        sub_1D66B90D4();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v42 = v49;
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        v27 = v43 | 0x8000000000000000;
        break;
      case 11:
        v50 = xmmword_1D7279980;
        sub_1D66B9080();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v27 = swift_allocEmptyBox() | 0x9000000000000000;
        break;
      case 12:
        (*(v48 + 8))(v17, v8);
        v27 = 0xA000000000000010;
        break;
      default:
        (*(v48 + 8))(v17, v8);
        v27 = 0xA000000000000000;
        break;
    }

    *v14 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotTransform.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatSlotItemCountLimit(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v124 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v117 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v119 = &v114 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v121 = &v114 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v120 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v122 = &v114 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v118 = &v114 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v123 = &v114 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v114 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v114 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v114 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v115 = &v114 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v114 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v116 = &v114 - v49;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v114 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *v2;
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  v57 = sub_1D5C30408();
  v125 = v53;
  sub_1D5D2EE70(&type metadata for FormatSlotTransform, &type metadata for FormatCodingKeys, v58, v55, &type metadata for FormatSlotTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v56, v53, v57, &off_1F51F6CD8);
  v59 = v54 >> 60;
  if ((v54 >> 60) > 4)
  {
    if (v59 > 7)
    {
      if (v59 != 8)
      {
        if (v59 == 9)
        {
          if (qword_1EDF31E78 != -1)
          {
            swift_once();
          }

          v75 = sub_1D725BD1C();
          v76 = __swift_project_value_buffer(v75, qword_1EDFFCC90);
          v65 = v119;
          (*(*(v75 - 8) + 16))(v119, v76, v75);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v66 = v125;
          sub_1D63A5EF8(11, v65);
        }

        else
        {
          if (v54 == 0xA000000000000000)
          {
            if (qword_1EDF31ED0 != -1)
            {
              swift_once();
            }

            v108 = sub_1D725BD1C();
            v109 = __swift_project_value_buffer(v108, qword_1EDFFCD50);
            v65 = v116;
            (*(*(v108 - 8) + 16))(v116, v109, v108);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v107 = 0;
            v110 = v65;
            v66 = v125;
          }

          else
          {
            if (v54 == 0xA000000000000008)
            {
              v66 = v125;
              if (qword_1EDF31ED0 != -1)
              {
                swift_once();
              }

              v105 = sub_1D725BD1C();
              v106 = __swift_project_value_buffer(v105, qword_1EDFFCD50);
              v65 = v115;
              (*(*(v105 - 8) + 16))(v115, v106, v105);
              type metadata accessor for FormatVersionRequirement.Value(0);
              swift_storeEnumTagMultiPayload();
              v107 = 2;
            }

            else
            {
              v66 = v125;
              if (qword_1EDF31F40 != -1)
              {
                swift_once();
              }

              v111 = sub_1D725BD1C();
              v112 = __swift_project_value_buffer(v111, qword_1EDFFCE50);
              v65 = v117;
              (*(*(v111 - 8) + 16))(v117, v112, v111);
              type metadata accessor for FormatVersionRequirement.Value(0);
              swift_storeEnumTagMultiPayload();
              v107 = 12;
            }

            v110 = v65;
          }

          sub_1D6420710(v107, v110);
        }

        goto LABEL_56;
      }

      v90 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v91 = qword_1EDF31F40;

      if (v91 != -1)
      {
        swift_once();
      }

      v92 = sub_1D725BD1C();
      v93 = __swift_project_value_buffer(v92, qword_1EDFFCE50);
      v65 = v121;
      (*(*(v92 - 8) + 16))(v121, v93, v92);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v125;
      sub_1D63A5D64(10, v90, v65);
    }

    else
    {
      if (v59 == 5)
      {
        v87 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v88 = sub_1D725BD1C();
        v89 = __swift_project_value_buffer(v88, qword_1EDFFCE80);
        v65 = v118;
        (*(*(v88 - 8) + 16))(v118, v89, v88);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v66 = v125;
        sub_1D63A5868(7, v87, v65);
        goto LABEL_56;
      }

      if (v59 == 6)
      {
        v61 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v60 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        sub_1D5FBABE0(v61);
        v62 = qword_1EDF31F40;

        if (v62 != -1)
        {
          swift_once();
        }

        v63 = sub_1D725BD1C();
        v64 = __swift_project_value_buffer(v63, qword_1EDFFCE50);
        v65 = v122;
        (*(*(v63 - 8) + 16))(v122, v64, v63);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v66 = v125;
        sub_1D63A59FC(8, v61, v60, v65);
        sub_1D5FBAC60(v61);

        goto LABEL_56;
      }

      v101 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v102 = qword_1EDF31F40;

      if (v102 != -1)
      {
        swift_once();
      }

      v103 = sub_1D725BD1C();
      v104 = __swift_project_value_buffer(v103, qword_1EDFFCE50);
      v65 = v120;
      (*(*(v103 - 8) + 16))(v120, v104, v103);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v125;
      sub_1D63A5BD0(9, v101, v65);
    }

LABEL_56:
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
    v81 = v66;
    return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
  }

  v67 = v39;
  v68 = v35;
  v65 = v31;
  v69 = v123;
  v70 = v124;
  if (v59 > 1)
  {
    if (v59 != 2)
    {
      if (v59 == 3)
      {
        v71 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v72 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCDE0);
        (*(*(v73 - 8) + 16))(v65, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v66 = v125;
        sub_1D63A5538(5, v71, v72, v65);
      }

      else
      {
        v94 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D66B9518(v94);
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v95 = sub_1D725BD1C();
        v96 = __swift_project_value_buffer(v95, qword_1EDFFCE98);
        v65 = v69;
        (*(*(v95 - 8) + 16))(v69, v96, v95);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v66 = v125;
        sub_1D63A56D4(6, v94, v69);
        sub_1D66B92B4(v94);
      }

      goto LABEL_56;
    }

    v82 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5FBABE0(v82);
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v83 = sub_1D725BD1C();
    v84 = __swift_project_value_buffer(v83, qword_1EDFFCD50);
    (*(*(v83 - 8) + 16))(v68, v84, v83);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = v125;
    sub_1D63A53A4(4, v82, v68);
    sub_1D5FBAC60(v82);
    v86 = v68;
    goto LABEL_38;
  }

  if (v59)
  {
    v97 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v98 = qword_1EDF31ED0;

    if (v98 != -1)
    {
      swift_once();
    }

    v99 = sub_1D725BD1C();
    v100 = __swift_project_value_buffer(v99, qword_1EDFFCD50);
    (*(*(v99 - 8) + 16))(v67, v100, v99);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = v125;
    sub_1D63A51D8(3, v97, v67);

    v86 = v67;
LABEL_38:
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
    v81 = v85;
    return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
  }

  v77 = swift_projectBox();
  sub_1D6706BB4(v77, v70, type metadata accessor for FormatSlotItemCountLimit);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v78 = sub_1D725BD1C();
  v79 = __swift_project_value_buffer(v78, qword_1EDFFCD50);
  (*(*(v78 - 8) + 16))(v46, v79, v78);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v80 = v125;
  sub_1D63A5004(1, v70, v46);
  sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  sub_1D5D2CFE8(v70, type metadata accessor for FormatSlotItemCountLimit);
  v81 = v80;
  return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
}

uint64_t sub_1D65947F0(char a1)
{
  result = 0x657571696E75;
  switch(a1)
  {
    case 1:
      result = 0x74696D696CLL;
      break;
    case 2:
      result = 0x6C616E6F73726570;
      break;
    case 3:
      result = 0x65726975716572;
      break;
    case 4:
      result = 0x7963696C6F70;
      break;
    case 5:
      result = 0x6F43657269707865;
      break;
    case 6:
      result = 6775156;
      break;
    case 7:
      result = 0x7453656C7A7A7570;
      break;
    case 8:
      result = 0x726F7463656C6573;
      break;
    case 9:
      result = 0x7265746C6966;
      break;
    case 10:
      result = 1953656691;
      break;
    case 11:
      result = 0x65746164696C6176;
      break;
    case 12:
      result = 0x7974706D65;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D65949A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663CFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D65949D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D65947F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6594AAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B9740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6594AE4(uint64_t a1)
{
  v2 = sub_1D5C5F448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6594B20(uint64_t a1)
{
  v2 = sub_1D5C5F448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double FormatSnippetNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v152 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v157 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v158 = &v152 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v160 = &v152 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v159 = &v152 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v170 = &v152 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v152 - v26;
  sub_1D66B99E4(0);
  v173 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D5C5BFA0(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF25608, sub_1D5C5BFA0, &unk_1D7321584);
  v174 = v31;
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.JazzkonC, v33, v31, v36, &off_1F51F6C78);
  swift_beginAccess();
  v167 = v2;
  v38 = v2[2];
  v39 = v2[3];
  v40 = qword_1EDF31EB0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v45 = v43 + 16;
  v168 = v41;
  v44(v27, v42, v41);
  v169 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v46 = sub_1D725895C();
  v47 = (*(*(v46 - 8) + 48))(v8, 1, v46);
  v164 = v44;
  v165 = v45;
  if (v47 == 1)
  {
    v163 = v38;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v49 = v173;
    v48 = v174;
    v50 = &v174[*(v173 + 11)];
    v52 = *v50;
    v51 = *(v50 + 1);
    LOBYTE(v183) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    *(v53 + 32) = v183;
    *(v53 + 40) = v52;
    *(v53 + 48) = v51;
    sub_1D5E19FA8(0);
    v55 = v54;
    sub_1D5B58B84(&qword_1EDF03668, sub_1D5E19FA8, MEMORY[0x1E69E6F60]);

    v166 = v55;
    v56 = sub_1D72647CC();
    LOBYTE(v183) = 0;
    v57 = swift_allocObject();
    *(v57 + 24) = 0;
    *(v57 + 32) = 0;
    *(v57 + 16) = v56;
    *(v57 + 40) = v183;
    v58 = (v48 + *(v49 + 9));
    v59 = v58[3];
    v60 = v58[4];
    v61 = __swift_project_boxed_opaque_existential_1(v58, v59);
    *&v172 = &v152;
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v152 - 4) = sub_1D5B4AA6C;
    *(&v152 - 3) = 0;
    v150 = sub_1D66B9A78;
    v151 = v53;
    v65 = v171;
    v67 = sub_1D5D2F7A4(v27, sub_1D615B49C, v66, sub_1D615B4A4, (&v152 - 6), v59, v60);
    if (v65)
    {
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v68 = v48;
LABEL_6:
      sub_1D5D2CFE8(v68, sub_1D66B99E4);
      return result;
    }

    v97 = v67;

    if (v97)
    {
      v183 = 0;
      v184 = 0;
      v185 = 0;
      *&v181 = v163;
      *(&v181 + 1) = v39;
      v70 = v174;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v44 = v164;
      v166 = v42;
      v171 = 0;
    }

    else
    {
      v166 = v42;
      v171 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v70 = v174;
      v44 = v164;
    }
  }

  else
  {
    v166 = v42;
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v70 = v174;
  }

  v71 = v167;
  swift_beginAccess();
  v72 = v71[4];
  v73 = v71[5];
  v74 = v170;
  v44(v170, v166, v168);
  swift_storeEnumTagMultiPayload();
  v179 = v72;
  v180 = v73;
  v172 = xmmword_1D728CF30;
  v181 = xmmword_1D728CF30;
  v182 = 0;
  v75 = (v70 + *(v173 + 11));
  v77 = *v75;
  v76 = v75[1];
  LOBYTE(v177) = 0;
  v78 = swift_allocObject();
  v162 = &v152;
  *(v78 + 16) = v172;
  *(v78 + 32) = v177;
  *(v78 + 40) = v77;
  *(v78 + 48) = v76;
  MEMORY[0x1EEE9AC00](v78, v79);
  v161 = &v152 - 6;
  *(&v152 - 4) = sub_1D5B4AA6C;
  *(&v152 - 3) = 0;
  v150 = sub_1D6708B7C;
  v151 = v80;
  LOBYTE(v177) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v172;
  *(v81 + 32) = v177;
  v154 = v77;
  *(v81 + 40) = v77;
  *(v81 + 48) = v76;
  sub_1D5E19FA8(0);
  v83 = v82;
  v84 = sub_1D5B58B84(&qword_1EDF03668, sub_1D5E19FA8, MEMORY[0x1E69E6F60]);
  v153 = v76;
  swift_retain_n();
  v163 = v73;

  v156 = v83;
  v155 = v84;
  v85 = sub_1D72647CC();
  LOBYTE(v177) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v172;
  *(v86 + 40) = v177;
  v87 = (v70 + *(v173 + 9));
  v89 = v87[3];
  v88 = v87[4];
  v90 = __swift_project_boxed_opaque_existential_1(v87, v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  MEMORY[0x1EEE9AC00](v92, v93);
  v94 = v161;
  *(&v152 - 4) = sub_1D615B4A4;
  *(&v152 - 3) = v94;
  v150 = sub_1D6708B7C;
  v151 = v81;
  v95 = v171;
  sub_1D5D2BC70(v74, sub_1D615B49C, v96, sub_1D615B4A4, (&v152 - 6), v89, v88);
  if (!v95)
  {
    v173 = v87;

    sub_1D72647EC();
    sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);

    v98 = v159;
    v99 = v166;
    v100 = v168;
    v101 = v164;
    v164(v159, v166, v168);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
    v101(v98, v99, v100);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
    v102 = v167;
    swift_beginAccess();
    v103 = v102[10];
    v104 = v160;
    v101(v160, v99, v100);
    swift_storeEnumTagMultiPayload();
    if (*(v103 + 16))
    {
      LOBYTE(v179) = 0;
      v105 = swift_allocObject();
      v172 = xmmword_1D72BAA70;
      *(v105 + 16) = xmmword_1D72BAA70;
      *(v105 + 32) = v179;
      v106 = v153;
      *(v105 + 40) = v154;
      *(v105 + 48) = v106;

      v107 = sub_1D72647CC();
      LOBYTE(v179) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v172;
      *(v108 + 40) = v179;
      v109 = v173[3];
      v110 = v173[4];
      v111 = __swift_project_boxed_opaque_existential_1(v173, v109);
      *&v172 = &v152;
      MEMORY[0x1EEE9AC00](v111, v112);
      MEMORY[0x1EEE9AC00](v113, v114);
      *(&v152 - 4) = sub_1D5B4AA6C;
      *(&v152 - 3) = 0;
      v150 = sub_1D6708B7C;
      v151 = v105;
      v116 = sub_1D5D2F7A4(v104, sub_1D615B49C, v115, sub_1D615B4A4, (&v152 - 6), v109, v110);
      v120 = v116;

      v119 = v174;
      if (v120)
      {
        sub_1D5E07BF8(v103, v174, 4, 0, 0);
        v118 = v106;
        v121 = v164;
      }

      else
      {
        v121 = v164;
        v118 = v106;
      }

      v117 = v158;
      v102 = v167;
      v101 = v121;
    }

    else
    {
      v117 = v158;
      v118 = v153;
      v119 = v174;
    }

    sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v122 = v102[11];
    v101(v117, v166, v168);
    swift_storeEnumTagMultiPayload();
    if (*(v122 + 16))
    {
      LOBYTE(v177) = 0;
      v123 = swift_allocObject();
      v172 = xmmword_1D72BAA80;
      *(v123 + 16) = xmmword_1D72BAA80;
      *(v123 + 32) = v177;
      *(v123 + 40) = v154;
      *(v123 + 48) = v118;

      v124 = sub_1D72647CC();
      LOBYTE(v177) = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = v124;
      *(v125 + 24) = v172;
      *(v125 + 40) = v177;
      v126 = v173[3];
      v127 = v173[4];
      v128 = __swift_project_boxed_opaque_existential_1(v173, v126);
      MEMORY[0x1EEE9AC00](v128, v129);
      MEMORY[0x1EEE9AC00](v130, v131);
      *(&v152 - 4) = sub_1D5B4AA6C;
      *(&v152 - 3) = 0;
      v150 = sub_1D6708B7C;
      v151 = v123;
      v133 = sub_1D5D2F7A4(v117, sub_1D615B49C, v132, sub_1D615B4A4, (&v152 - 6), v126, v127);
      v134 = v133;

      if (v134)
      {
        v177 = v172;
        v178 = 0;
        *&v175 = v122;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        v119 = v174;
        sub_1D72647EC();
        v102 = v167;
        v101 = v164;
        v118 = v153;

        sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);

        v119 = v174;
        v102 = v167;
        v101 = v164;
        v118 = v153;
      }
    }

    else
    {
      sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v135 = v102[12];
    v136 = qword_1EDF31ED0;

    if (v136 != -1)
    {
      swift_once();
    }

    v137 = v168;
    v138 = __swift_project_value_buffer(v168, qword_1EDFFCD50);
    v101(v157, v138, v137);
    swift_storeEnumTagMultiPayload();
    if (v135 >> 62)
    {
      if (sub_1D7263BFC())
      {
LABEL_31:
        LOBYTE(v175) = 0;
        v139 = swift_allocObject();
        v172 = xmmword_1D72BAA90;
        *(v139 + 16) = xmmword_1D72BAA90;
        *(v139 + 32) = v175;
        *(v139 + 40) = v154;
        *(v139 + 48) = v118;

        v140 = sub_1D72647CC();
        LOBYTE(v175) = 0;
        v141 = swift_allocObject();
        *(v141 + 16) = v140;
        *(v141 + 24) = v172;
        *(v141 + 40) = v175;
        v142 = v173[3];
        v143 = v173[4];
        v144 = __swift_project_boxed_opaque_existential_1(v173, v142);
        MEMORY[0x1EEE9AC00](v144, v145);
        MEMORY[0x1EEE9AC00](v146, v147);
        *(&v152 - 4) = sub_1D5B4AA6C;
        *(&v152 - 3) = 0;
        v150 = sub_1D6708B7C;
        v151 = v139;
        LOBYTE(v142) = sub_1D5D2F7A4(v157, sub_1D615B49C, v148, sub_1D615B4A4, (&v152 - 6), v142, v143);

        if (v142)
        {
          v175 = v172;
          v176 = 0;
          v186 = v135;
          sub_1D5B5BF78(0, &qword_1EDF1B428, type metadata accessor for FormatBlock, MEMORY[0x1E69E62F8]);
          sub_1D666E5D0();
          v149 = v174;
          sub_1D72647EC();

          sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
          v68 = v149;
        }

        else
        {
          sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

          v68 = v174;
        }

        goto LABEL_6;
      }
    }

    else if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

    v68 = v119;
    goto LABEL_6;
  }

  sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v174, sub_1D66B99E4);

  return result;
}

uint64_t sub_1D6596300@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BAE90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6596338(uint64_t a1)
{
  v2 = sub_1D5C5C078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6596374(uint64_t a1)
{
  v2 = sub_1D5C5C078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65963B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BB13C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65963E8(uint64_t a1)
{
  v2 = sub_1D5C32FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6596424(uint64_t a1)
{
  v2 = sub_1D5C32FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSourceItem.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - v9;
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

    v13 = v37;
    v14 = v10;
    if (v12)
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
          *(v21 + 16) = &unk_1F5117540;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v13 + 8))(v14, v7);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B9B84();
    v32 = 0;
    v33 = 0;
    sub_1D726431C();
    if (v36)
    {
      sub_1D5C30060(0, &qword_1EDF29130, sub_1D66B9BD8, &type metadata for FormatSourceItem, type metadata accessor for FormatSwitchListValue);
      v36 = xmmword_1D7279980;
      sub_1D66B9C2C();
      sub_1D726431C();
      v23 = a2;
      (*(v13 + 8))(v14, v7);
      v24 = v32;
      v25 = v33;
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v25;
      v27 = v26 | 0x8000000000000000;
    }

    else
    {
      v36 = xmmword_1D7279980;
      sub_1D66B9D10();
      sub_1D726431C();
      v23 = a2;
      (*(v13 + 8))(v14, v7);
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v31 = v35;
      v27 = swift_allocObject();
      *(v27 + 16) = v28;
      *(v27 + 24) = v29;
      *(v27 + 32) = v30;
      *(v27 + 40) = v31;
    }

    *v23 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItem.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSourceItem, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSourceItem, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v17, v14, v18, &off_1F51F6B38);
  if (v15 < 0)
  {
    v27 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v28 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v29 = qword_1EDF31F40;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCE50);
    (*(*(v30 - 8) + 16))(v6, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B46A8(1, v27, v28, v6);

    v26 = v6;
  }

  else
  {
    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
    v22 = *(v15 + 32);
    v23 = *(v15 + 40);
    sub_1D5F586D0(v21, v22, v23);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCE68);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B4508(0, v20, v21, v22, v23, v10);
    sub_1D5F5870C(v21, v22, v23);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6596BC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x686374697773;
  }

  else
  {
    v3 = 7367028;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x686374697773;
  }

  else
  {
    v5 = 7367028;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_1D6596C64()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6596CDC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6596D40(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6596DC0(uint64_t *a1@<X8>)
{
  v2 = 7367028;
  if (*v1)
  {
    v2 = 0x686374697773;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSourceItemTip.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1D66B9D64(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B9DF8(0);
  sub_1D5B58B84(&qword_1EDF25488, sub_1D66B9DF8, &unk_1D7321584);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v34;
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

      v22 = *(v16 - 2);
      v21 = *(v16 - 1);

      v23 = sub_1D6627E68(7367028, 0xE300000000000000, 0x737469617274, 0xE600000000000000);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D66B9F78();
  v32 = 0uLL;
  v33 = 0;
  sub_1D726431C();
  v17 = v30;
  v26 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v26;
    v31 = 0;
    sub_1D66B9FCC();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    v19 = v27;
    v18 = v28;
    v20 = v29;
    sub_1D5F586D0(v27, v28, v29);
    sub_1D5F5870C(v19, v18, v20);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v18 = 0;
    v20 = 0;
    v19 = MEMORY[0x1E69E7CC0];
  }

  *v13 = v17;
  *(v13 + 8) = v19;
  *(v13 + 16) = v18;
  *(v13 + 24) = v20;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItemTip.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D66BA020(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 2);
  *&v76 = *(v1 + 1);
  *(&v76 + 1) = v16;
  v88 = v1[24];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66B9DF8(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25488, sub_1D66B9DF8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSourceItemTip, v20, v22, v17, &type metadata for FormatSourceItemTip, v20, &type metadata for FormatVersions.CrystalGlow, v18, v14, v21, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCE68);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v77 = v24;
  v73 = v26;
  v74 = v23;
  v72 = v25 + 16;
  (v26)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v83) = v15;
  v85 = 0uLL;
  v86 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v87 = 0;
  v30 = swift_allocObject();
  *&v81 = &v68;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v87;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D6708B84;
  v67 = v32;
  v87 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v87;
  v70 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66BA0B4(0);
  v80 = v9;
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF034C8, sub_1D66BA0B4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v78 = v35;
  v79 = v36;
  v37 = sub_1D72647CC();
  v87 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v87;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v46 = v80;
  v66 = sub_1D6708B84;
  v67 = v33;
  v47 = v82;
  sub_1D5D2BC70(v80, sub_1D615B49C, v48, sub_1D615B4A4, (&v68 - 6), v40, v41);
  if (v47)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v49 = v14;
  }

  else
  {
    v69 = v39;
    v50 = v46;
    v51 = v77;
    v82 = v29;

    sub_1D66BA148();
    sub_1D72647EC();
    v49 = v14;
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v52 = v75;
    v73(v75, v51, v74);
    swift_storeEnumTagMultiPayload();
    v85 = v76;
    v53 = v88;
    v86 = v88;
    v83 = MEMORY[0x1E69E7CC0];
    v84 = 0;
    sub_1D5F586D0(v76, *(&v76 + 1), v88);
    v54 = _s8NewsFeed25FormatSourceItemTipTraitsO2eeoiySbAC_ACtFZ_0(&v85, &v83);
    sub_1D5F5870C(v83, *(&v83 + 1), v84);
    if ((v54 & 1) != 0 || (LOBYTE(v85) = 0, v55 = swift_allocObject(), v81 = xmmword_1D728CF30, *(v55 + 16) = xmmword_1D728CF30, *(v55 + 32) = v85, *(v55 + 40) = v70, *(v55 + 48) = v82, , v56 = sub_1D72647CC(), LOBYTE(v85) = 0, v57 = swift_allocObject(), *(v57 + 16) = v56, *(v57 + 24) = v81, *(v57 + 40) = v85, v58 = *(v69 + 3), v59 = *(v69 + 4), v60 = __swift_project_boxed_opaque_existential_1(v69, v58), MEMORY[0x1EEE9AC00](v60, v61), MEMORY[0x1EEE9AC00](v62, v63), *(&v68 - 4) = sub_1D5B4AA6C, *(&v68 - 3) = 0, v66 = sub_1D66BA19C, v67 = v55, LOBYTE(v58) = sub_1D5D2F7A4(v52, sub_1D615B49C, v64, sub_1D615B4A4, (&v68 - 6), v58, v59), , , (v58 & 1) == 0))
    {
      sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
      sub_1D5F5870C(v76, *(&v76 + 1), v53);
    }

    else
    {
      v85 = v81;
      v86 = 0;
      v83 = v76;
      v84 = v53;
      sub_1D66BA218();
      sub_1D72647EC();
      sub_1D5F5870C(v83, *(&v83 + 1), v84);
      sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v49, sub_1D66BA020);
}

uint64_t sub_1D6597AD8()
{
  v1 = 0x737469617274;
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
    return 7367028;
  }
}

uint64_t sub_1D6597B20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BB264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6597B58(uint64_t a1)
{
  v2 = sub_1D66B9ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6597B94(uint64_t a1)
{
  v2 = sub_1D66B9ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSourceItemTipBinding.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
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
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
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
          *(v21 + 16) = &unk_1F5117590;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D66BA26C();
    v27 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v28 > 1u)
    {
      v23 = v26;
      v27 = xmmword_1D7279980;
      if (v28 == 2)
      {
        sub_1D668F874();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 0x10;
      }

      else
      {
        sub_1D668F820();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 24;
      }
    }

    else
    {
      v23 = v26;
      v27 = xmmword_1D7279980;
      if (v28)
      {
        sub_1D668F8C8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 8;
      }

      else
      {
        sub_1D66BA2C0();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItemTipBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSourceItemTipBinding, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatSourceItemTipBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v25, v22, v26, &off_1F51F6B38);
  v28 = (v23 >> 3) & 3;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v32 = sub_1D725BD1C();
      v33 = __swift_project_value_buffer(v32, qword_1EDFFCE68);
      (*(*(v32 - 8) + 16))(v10, v33, v32);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638CDC4(2, v23 & 1, v10);
      v31 = v10;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCE68);
      (*(*(v36 - 8) + 16))(v6, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638CF5C(3, v6);
      v31 = v6;
    }
  }

  else if (v28)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCE50);
    (*(*(v34 - 8) + 16))(v14, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638CC2C(1, v23 & 1, v14);
    v31 = v14;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCE68);
    (*(*(v29 - 8) + 16))(v18, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638CA98(0, v23, v18);
    v31 = v18;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D6598520()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65985D4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6598674(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6598724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666454C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6598754(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x70756F7267;
  v4 = 0xE300000000000000;
  v5 = 6775156;
  if (*v1 != 2)
  {
    v5 = 0x6465626D45626577;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x656E696C64616568;
    v2 = 0xE800000000000000;
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

uint64_t FormatSourceItemTipObject.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
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

    v14 = v24;
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
          *(v21 + 16) = &unk_1F51175E0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BA314();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D66BA368();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItemTipObject.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSourceItemTipObject, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatSourceItemTipObject, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v13, v10, v14, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCE68);
  (*(*(v16 - 8) + 16))(v6, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D638FE5C(v11, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatSourceItemTipTrait.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSourceItemTipTrait, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatSourceItemTipTrait, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v21, v18, v22, &off_1F51F6B38);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE68);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641BBEC(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE50);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641BBEC(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE68);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641BBEC(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6599288(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF6C6C6F7263536ELL;
  v3 = 0x4F7373696D736964;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0x4F7373696D736964;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001D73BBC10;
  }

  else
  {
    v6 = 0xEF6C6C6F7263536ELL;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001D73BBBF0;
  }

  if (*a2 == 1)
  {
    v3 = 0xD00000000000001CLL;
    v2 = 0x80000001D73BBC10;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001D73BBBF0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6599370()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6599424(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65994C4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6599574@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66643D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65995A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6C6C6F7263536ELL;
  v4 = 0x4F7373696D736964;
  if (v2 == 1)
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x80000001D73BBC10;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (v5)
  {
    v3 = 0x80000001D73BBBF0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatSourceItemTipTraits.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
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
          *(v20 + 16) = &unk_1F5117680;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BA410();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v25;
    if (v25)
    {
      sub_1D66BA464(0);
      v25 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EC887320, sub_1D66BA464, &protocol conformance descriptor for FormatSelectorValue<A>);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = *(&v26 + 1);
      v23 = v26;
    }

    else
    {
      sub_1D5C34D84(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
      v26 = xmmword_1D7279980;
      sub_1D66BA5DC();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = 0;
      v23 = v25;
    }

    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 16) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItemTipTraits.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSourceItemTipTraits, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatSourceItemTipTraits, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v19, v14, v20, &off_1F51F6B38);
  if (v17)
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCE68);
    (*(*(v22 - 8) + 16))(v6, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638FC90(1, v15, v16, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCE68);
    (*(*(v25 - 8) + 16))(v10, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638FAD0(0, v15, v10);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6599DC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F7463656C6573;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F7463656C6573;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D6599E64()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6599EE4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6599F50(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6599FD8(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x726F7463656C6573;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSourceMap.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D66BA6CC(0);
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BA760(0);
  sub_1D5B58B84(&qword_1EC887350, sub_1D66BA760, &unk_1D7321584);
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

  v13 = v33;
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

      v22 = sub_1D6623414();
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

  v31 = 0uLL;
  v32 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  v30 = v17;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  v25 = v7;
  v26 = v13;
  v27 = sub_1D72642FC();
  v31 = xmmword_1D7297410;
  v32 = 0;
  v28 = sub_1D72642FC();
  (*(v26 + 8))(v10, v25);
  *a2 = v30;
  a2[1] = v19;
  a2[2] = v27;
  a2[3] = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceMap.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v99 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v89 - v11;
  sub_1D66BA8E0(0);
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[3];
  v92 = v1[2];
  v90 = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66BA760(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC887350, sub_1D66BA760, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSourceMap, v23, v25, v20, &type metadata for FormatSourceMap, v23, &type metadata for FormatVersions.JazzkonC, v21, v16, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v96 = v27;
  v97 = v26;
  v94 = v28 + 16;
  v95 = v29;
  (v29)(v12);
  v93 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v108 = v17;
  v109 = v18;
  v106 = 0uLL;
  v107 = 0;
  v30 = v104;
  v31 = &v16[*(v104 + 11)];
  v102 = v12;
  v32 = *v31;
  v33 = *(v31 + 1);
  v110 = 0;
  v34 = swift_allocObject();
  v103 = &v89;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v110;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v89 - 4) = sub_1D5B4AA6C;
  *(&v89 - 3) = 0;
  v87 = sub_1D6708B88;
  v88 = v36;
  v110 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v110;
  v98 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D66BA974(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EC887368, sub_1D66BA974, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v100 = v40;
  v101 = v39;
  v41 = sub_1D72647CC();
  v110 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v110;
  v43 = *(v30 + 9);
  v44 = v102;
  v45 = &v16[v43];
  v104 = v16;
  v46 = *&v16[v43 + 24];
  v47 = *&v16[v43 + 32];
  v48 = __swift_project_boxed_opaque_existential_1(v45, v46);
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v89 - 4) = sub_1D615B4A4;
  *(&v89 - 3) = (&v89 - 6);
  v87 = sub_1D66BAA08;
  v88 = v37;
  v52 = v105;
  sub_1D5D2BC70(v44, sub_1D615B49C, v53, sub_1D615B4A4, (&v89 - 6), v46, v47);
  if (v52)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v54 = v104;
  }

  else
  {
    v89 = v45;

    v54 = v104;
    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v56 = v99;
    v95(v99, v96, v97);
    swift_storeEnumTagMultiPayload();
    v108 = v92;
    v105 = xmmword_1D728CF30;
    v106 = xmmword_1D728CF30;
    v107 = 0;
    v110 = 0;
    v57 = swift_allocObject();
    v103 = &v89;
    *(v57 + 16) = v105;
    *(v57 + 32) = v110;
    v58 = v98;
    *(v57 + 40) = v98;
    *(v57 + 48) = v33;
    MEMORY[0x1EEE9AC00](v57, v59);
    v102 = 0;
    *(&v89 - 4) = sub_1D5B4AA6C;
    *(&v89 - 3) = 0;
    v87 = sub_1D6708B88;
    v88 = v60;
    v110 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v105;
    *(v61 + 32) = v110;
    *(v61 + 40) = v58;
    *(v61 + 48) = v33;
    swift_retain_n();
    v62 = sub_1D72647CC();
    v110 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v105;
    *(v63 + 40) = v110;
    v64 = *(v89 + 3);
    v65 = *(v89 + 4);
    v66 = __swift_project_boxed_opaque_existential_1(v89, v64);
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    *(&v89 - 4) = sub_1D615B4A4;
    *(&v89 - 3) = (&v89 - 6);
    v87 = sub_1D6708B88;
    v88 = v61;
    v70 = v102;
    sub_1D5D2BC70(v56, sub_1D615B49C, v71, sub_1D615B4A4, (&v89 - 6), v64, v65);
    if (v70)
    {
      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D72647EC();
      sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

      v72 = v91;
      v95(v91, v96, v97);
      swift_storeEnumTagMultiPayload();
      v108 = v90;
      v105 = xmmword_1D7297410;
      v106 = xmmword_1D7297410;
      v107 = 0;
      v110 = 0;
      v73 = swift_allocObject();
      v103 = &v89;
      *(v73 + 16) = v105;
      *(v73 + 32) = v110;
      v74 = v98;
      *(v73 + 40) = v98;
      *(v73 + 48) = v33;
      MEMORY[0x1EEE9AC00](v73, v75);
      *(&v89 - 4) = sub_1D5B4AA6C;
      *(&v89 - 3) = 0;
      v87 = sub_1D6708B88;
      v88 = v76;
      v110 = 0;
      v77 = swift_allocObject();
      *(v77 + 16) = v105;
      *(v77 + 32) = v110;
      *(v77 + 40) = v74;
      *(v77 + 48) = v33;
      swift_retain_n();
      v78 = sub_1D72647CC();
      v110 = 0;
      v79 = swift_allocObject();
      *(v79 + 16) = v78;
      *(v79 + 24) = v105;
      *(v79 + 40) = v110;
      v80 = *(v89 + 3);
      v81 = *(v89 + 4);
      v82 = __swift_project_boxed_opaque_existential_1(v89, v80);
      MEMORY[0x1EEE9AC00](v82, v83);
      MEMORY[0x1EEE9AC00](v84, v85);
      *(&v89 - 4) = sub_1D615B4A4;
      *(&v89 - 3) = (&v89 - 6);
      v87 = sub_1D6708B88;
      v88 = v77;
      sub_1D5D2BC70(v72, sub_1D615B49C, v86, sub_1D615B4A4, (&v89 - 6), v80, v81);

      sub_1D72647EC();
      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v54, sub_1D66BA8E0);
}

uint64_t sub_1D659AF48()
{
  v1 = 0x68746150656C6966;
  v2 = 0x6E6D756C6F63;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 1701734764;
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

uint64_t sub_1D659AFAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BB378(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D659AFE4(uint64_t a1)
{
  v2 = sub_1D66BA838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659B020(uint64_t a1)
{
  v2 = sub_1D66BA838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D659B06C(uint64_t a1)
{
  v2 = sub_1D5C9EB24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659B0A8(uint64_t a1)
{
  v2 = sub_1D5C9EB24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D659B0E4()
{
  v1 = *v0;
  v2 = 0x737465736E4978;
  v3 = 0x656469537466656CLL;
  v4 = 0x6469537468676972;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726F68636E4178;
  if (v1 != 1)
  {
    v5 = 0x73656572676564;
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

uint64_t sub_1D659B19C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BB694(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D659B1D4(uint64_t a1)
{
  v2 = sub_1D6666AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659B210(uint64_t a1)
{
  v2 = sub_1D6666AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSplitBackgroundInsets.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66BAA84(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BAB18(0);
  sub_1D5B58B84(&qword_1EDF0C450, sub_1D66BAB18, &unk_1D7321584);
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

      v20 = sub_1D6627E68(1952867692, 0xE400000000000000, 0x7468676972, 0xE500000000000000);
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

  sub_1D660C130(sub_1D66BAA84, &v26, 0.0);
  v17 = v26;
  sub_1D660C130(sub_1D66BAA84, &v26, 0.0);
  (*(v7 + 8))(v10, v6);
  v23 = v26;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void FormatSplitBackgroundInsets.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v89 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v78 - v8;
  sub_1D66BAC98(0);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v14 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66BAB18(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C450, sub_1D66BAB18, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSplitBackgroundInsets, v19, v21, v16, &type metadata for FormatSplitBackgroundInsets, v19, &type metadata for FormatVersions.LuckCheer, v17, v13, v20, &off_1F51F6AB8);
  v22 = qword_1EDF31E78;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCC90);
  v25 = *(v23 - 8);
  *&v88 = *(v25 + 16);
  v87 = v25 + 16;
  (v88)(v9, v24, v23);
  v86 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  sub_1D5F3FE24(0);
  v85 = v27;
  inited = swift_initStackObject();
  v84 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v26;
  *(inited + 40) = 0;
  sub_1D633A310(v15, inited);
  LOBYTE(v26) = v29;
  swift_setDeallocating();
  sub_1D5C30060(0, qword_1EDF2C898, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquationToken);
  v83 = v30;
  swift_arrayDestroy();
  if (v26)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v81 = v15;
    v79 = v24;
    v82 = v14;
    v31 = v90;
    v32 = &v13[*(v90 + 44)];
    v34 = *v32;
    v33 = *(v32 + 1);
    LOBYTE(v92) = 0;
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = v92;
    *(v35 + 40) = v34;
    *(v35 + 48) = v33;
    sub_1D66BAD2C(0);
    v37 = v36;
    v38 = sub_1D5B58B84(&qword_1EC887380, sub_1D66BAD2C, MEMORY[0x1E69E6F60]);

    v80 = v37;
    v39 = sub_1D72647CC();
    LOBYTE(v92) = 0;
    v40 = swift_allocObject();
    *(v40 + 24) = 0;
    *(v40 + 32) = 0;
    *(v40 + 16) = v39;
    *(v40 + 40) = v92;
    v41 = &v13[*(v31 + 36)];
    v42 = *(v41 + 3);
    v43 = *(v41 + 4);
    v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x1EEE9AC00](v44, v45);
    MEMORY[0x1EEE9AC00](v46, v47);
    *(&v78 - 4) = sub_1D5B4AA6C;
    *(&v78 - 3) = 0;
    v76 = sub_1D66BADC0;
    v77 = v35;
    v48 = v91;
    v50 = sub_1D5D2F7A4(v9, sub_1D615B49C, v49, sub_1D615B4A4, (&v78 - 6), v42, v43);
    if (v48)
    {
      sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v13, sub_1D66BAC98);
LABEL_14:

      return;
    }

    v51 = v50;
    v91 = v38;

    if (v51)
    {
      v92 = 0uLL;
      v93 = 0;
      v94 = v81;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      sub_1D72647EC();
      v14 = v82;
      v91 = 0;

      sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v91 = 0;
      sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

      v14 = v82;
    }

    v24 = v79;
  }

  v52 = v89;
  (v88)(v89, v24, v23);
  swift_storeEnumTagMultiPayload();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v54 = swift_initStackObject();
  *(v54 + 16) = v84;
  *(v54 + 32) = v53;
  *(v54 + 40) = 0;

  sub_1D633A310(v55, v54);
  LOBYTE(v53) = v56;
  swift_setDeallocating();
  swift_arrayDestroy();
  v57 = v90;
  if (v53)
  {
    goto LABEL_12;
  }

  v82 = v14;
  v59 = &v13[*(v90 + 44)];
  v60 = *v59;
  v61 = *(v59 + 1);
  LOBYTE(v92) = 0;
  v62 = swift_allocObject();
  v88 = xmmword_1D728CF30;
  *(v62 + 16) = xmmword_1D728CF30;
  *(v62 + 32) = v92;
  *(v62 + 40) = v60;
  *(v62 + 48) = v61;
  sub_1D66BAD2C(0);
  sub_1D5B58B84(&qword_1EC887380, sub_1D66BAD2C, MEMORY[0x1E69E6F60]);

  v63 = sub_1D72647CC();
  LOBYTE(v92) = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v88;
  *(v64 + 40) = v92;
  v65 = &v13[*(v57 + 36)];
  v66 = *(v65 + 3);
  v67 = *(v65 + 4);
  v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
  MEMORY[0x1EEE9AC00](v68, v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  *(&v78 - 4) = sub_1D5B4AA6C;
  *(&v78 - 3) = 0;
  v76 = sub_1D6708B8C;
  v77 = v62;
  v72 = v91;
  v74 = sub_1D5D2F7A4(v52, sub_1D615B49C, v73, sub_1D615B4A4, (&v78 - 6), v66, v67);
  if (!v72)
  {
    v75 = v74;

    if (v75)
    {
      v92 = v88;
      v93 = 0;
      v94 = v82;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      sub_1D72647EC();

      v58 = v89;
      goto LABEL_13;
    }

    v52 = v89;
LABEL_12:
    v58 = v52;
LABEL_13:
    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v13, sub_1D66BAC98);
    goto LABEL_14;
  }

  sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v13, sub_1D66BAC98);
}

uint64_t sub_1D659C06C()
{
  v1 = 0x7468676972;
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
    return 1952867692;
  }
}

uint64_t sub_1D659C0B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BB898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D659C0EC(uint64_t a1)
{
  v2 = sub_1D66BABF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659C128(uint64_t a1)
{
  v2 = sub_1D66BABF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D659C1A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32[1] = a4;
  v32[0] = a3;
  v34 = a2;
  v6 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v32 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    v14 = v34;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v33;
    v19 = v13;
    if (v16)
    {
      v20 = sub_1D726433C();
      v21 = (v20 + 40);
      v22 = *(v20 + 16) + 1;
      while (--v22)
      {
        v23 = v21 + 2;
        v24 = *v21;
        v21 += 2;
        if (v24 >= 4)
        {
          v25 = *(v23 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v26 = v25;
          *(v26 + 8) = v24;
          *(v26 + 16) = v14;
          *(v26 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v18 + 8))(v19, v10);
          goto LABEL_11;
        }
      }
    }

    (v32[0])(v17);
    v40[9] = 0;
    v40[10] = 0;
    sub_1D726431C();
    v27 = (v18 + 8);
    if (v42)
    {
      v39 = xmmword_1D7279980;
      sub_1D5C4C9E8();
      sub_1D726431C();
      (*v27)(v19, v10);
      v28 = v40[0];
      v35 = *&v40[1];
      v36 = *&v40[3];
      v37 = *&v40[5];
      v38 = v40[7];
      v29 = 1;
      v41 = 1;
    }

    else
    {
      *v40 = xmmword_1D7279980;
      sub_1D5B570F8();
      sub_1D726431C();
      (*v27)(v19, v10);
      v29 = 0;
      v28 = v39;
      v41 = 0;
    }

    *a5 = v28;
    v31 = v36;
    *(a5 + 8) = v35;
    *(a5 + 24) = v31;
    *(a5 + 40) = v37;
    *(a5 + 56) = v38;
    *(a5 + 64) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSplitBackgroundSide.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v17 = *(v2 + 64);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSplitBackgroundSide, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatSplitBackgroundSide, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v19, v15, v20, &off_1F51F6C58);
  if (v17)
  {
    v28 = v16;
    v29 = *(v2 + 8);
    v30 = *(v2 + 24);
    v31 = *(v2 + 40);
    v32 = *(v2 + 56);
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD68);
    (*(*(v22 - 8) + 16))(v7, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638F930(1, &v28, v7);
    v24 = v7;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD68);
    (*(*(v25 - 8) + 16))(v11, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638F79C(0, v16, v11);
    v24 = v11;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D659C8DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656964617267;
  }

  else
  {
    v3 = 0x726F6C6F63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656964617267;
  }

  else
  {
    v5 = 0x726F6C6F63;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D659C980()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D659CA00(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D659CA6C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D659CAF4(uint64_t *a1@<X8>)
{
  v2 = 0x726F6C6F63;
  if (*v1)
  {
    v2 = 0x746E656964617267;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSponsoredBannerNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v287 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v293 = &v287 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v294 = &v287 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v296 = &v287 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v295 = &v287 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v297 = &v287 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v298 = &v287 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v299 = &v287 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v300 = &v287 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *&v310 = &v287 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v287 - v38;
  sub_1D66BC62C(0);
  v308 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v287 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5E19DF4(0);
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF25058, sub_1D5E19DF4, &unk_1D7321584);
  v311 = v43;
  sub_1D5D2EE70(v4, v47, v49, v44, v4, v47, &type metadata for FormatVersions.DawnburstF, v45, v43, v48, &off_1F51F6BD8);
  swift_beginAccess();
  v51 = v2[2];
  v50 = v2[3];
  v307 = v2;
  v52 = qword_1EDF31F50;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCE80);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v57 = v55 + 16;
  v56(v39, v54, v53);
  v58 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v8, 1, v59);
  v303 = v56;
  v304 = v57;
  v305 = v58;
  v306 = v54;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v84 = v311;
LABEL_8:
    v85 = v310;
    goto LABEL_9;
  }

  v301 = v51;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v61 = v308;
  v62 = v311;
  v63 = &v311[*(v308 + 11)];
  v65 = *v63;
  v64 = *(v63 + 1);
  LOBYTE(v313) = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 32) = v313;
  *(v66 + 40) = v65;
  *(v66 + 48) = v64;
  sub_1D5E19DB8(0);
  v68 = v67;
  v69 = sub_1D5B58B84(&qword_1EDF02FD8, sub_1D5E19DB8, MEMORY[0x1E69E6F60]);

  *&v309 = v68;
  v302 = v69;
  v70 = sub_1D72647CC();
  LOBYTE(v313) = 0;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 16) = v70;
  *(v71 + 40) = v313;
  v72 = (v62 + *(v61 + 9));
  v73 = v72[3];
  v74 = v72[4];
  v75 = __swift_project_boxed_opaque_existential_1(v72, v73);
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  *(&v287 - 4) = sub_1D5B4AA6C;
  *(&v287 - 3) = 0;
  v285 = sub_1D66BC6C0;
  v286 = v66;
  v79 = v312;
  v81 = sub_1D5D2F7A4(v39, sub_1D615B49C, v80, sub_1D615B4A4, (&v287 - 6), v73, v74);
  *&v312 = v79;
  if (v79)
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    v82 = v62;
    return sub_1D5D2CFE8(v82, sub_1D66BC62C);
  }

  v111 = v81;

  if ((v111 & 1) == 0)
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    v84 = v311;
    v56 = v303;
    v54 = v306;
    goto LABEL_8;
  }

  v313 = 0uLL;
  LOBYTE(v314) = 0;
  v325 = v301;
  v326 = v50;
  v84 = v311;
  v112 = v312;
  sub_1D72647EC();

  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  v54 = v306;
  v85 = v310;
  if (v112)
  {
    return sub_1D5D2CFE8(v84, sub_1D66BC62C);
  }

  *&v312 = 0;
  v56 = v303;
LABEL_9:
  v86 = v307[4];
  v56(v85, v54, v53);
  swift_storeEnumTagMultiPayload();
  v325 = v86;
  v309 = xmmword_1D728CF30;
  v313 = xmmword_1D728CF30;
  LOBYTE(v314) = 0;
  v87 = v308;
  v88 = (v84 + *(v308 + 11));
  v290 = v53;
  v90 = *v88;
  v89 = v88[1];
  LOBYTE(v324) = 0;
  v91 = swift_allocObject();
  v302 = &v287;
  *(v91 + 16) = v309;
  *(v91 + 32) = v324;
  *(v91 + 40) = v90;
  *(v91 + 48) = v89;
  MEMORY[0x1EEE9AC00](v91, v92);
  v301 = &v287 - 6;
  *(&v287 - 4) = sub_1D5B4AA6C;
  *(&v287 - 3) = 0;
  v285 = sub_1D6708B90;
  v286 = v93;
  LOBYTE(v324) = 0;
  v94 = swift_allocObject();
  *(v94 + 16) = v309;
  *(v94 + 32) = v324;
  v289 = v90;
  *(v94 + 40) = v90;
  *(v94 + 48) = v89;
  sub_1D5E19DB8(0);
  v96 = v95;
  v97 = sub_1D5B58B84(&qword_1EDF02FD8, sub_1D5E19DB8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v292 = v96;
  v291 = v97;
  v98 = sub_1D72647CC();
  LOBYTE(v324) = 0;
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  *(v99 + 24) = v309;
  *(v99 + 40) = v324;
  v100 = (v84 + *(v87 + 9));
  v102 = v100[3];
  v101 = v100[4];
  v103 = __swift_project_boxed_opaque_existential_1(v100, v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  MEMORY[0x1EEE9AC00](v105, v106);
  v107 = v301;
  *(&v287 - 4) = sub_1D615B4A4;
  *(&v287 - 3) = v107;
  v285 = sub_1D6708B90;
  v286 = v94;
  v108 = v310;
  v109 = v312;
  sub_1D5D2BC70(v310, sub_1D615B49C, v110, sub_1D615B4A4, (&v287 - 6), v102, v101);
  if (v109)
  {
    sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v311, sub_1D66BC62C);
  }

  *&v309 = v100;
  v288 = v89;

  sub_1D5CA1E90();
  sub_1D72647EC();
  sub_1D5D2CFE8(v310, type metadata accessor for FormatVersionRequirement);

  v113 = v307[5];
  v114 = v300;
  v115 = v303;
  v303(v300, v306, v290);
  swift_storeEnumTagMultiPayload();
  v310 = xmmword_1D7297410;
  v313 = xmmword_1D7297410;
  LOBYTE(v314) = 0;
  LOBYTE(v325) = 0;
  v117 = swift_allocObject();
  *(v117 + 16) = v310;
  *(v117 + 32) = v325;
  v118 = v289;
  *(v117 + 40) = v289;
  v119 = v288;
  *(v117 + 48) = v288;
  if (v113)
  {
    v308 = &v287;
    v325 = v113;
    MEMORY[0x1EEE9AC00](v119, v116);
    *&v312 = 0;
    *(&v287 - 4) = sub_1D5B4AA6C;
    *(&v287 - 3) = 0;
    v285 = sub_1D6708B90;
    v286 = v117;
    LOBYTE(v324) = 0;
    v121 = v120;
    v122 = swift_allocObject();
    *(v122 + 16) = v310;
    *(v122 + 32) = v324;
    *(v122 + 40) = v118;
    *(v122 + 48) = v121;
    swift_retain_n();

    v123 = sub_1D72647CC();
    LOBYTE(v324) = 0;
    v124 = swift_allocObject();
    *(v124 + 16) = v123;
    *(v124 + 24) = v310;
    *(v124 + 40) = v324;
    v125 = *(v309 + 24);
    v126 = *(v309 + 32);
    v127 = __swift_project_boxed_opaque_existential_1(v309, v125);
    MEMORY[0x1EEE9AC00](v127, v128);
    MEMORY[0x1EEE9AC00](v129, v130);
    *(&v287 - 4) = sub_1D615B4A4;
    *(&v287 - 3) = (&v287 - 6);
    v285 = sub_1D6708B90;
    v286 = v122;
    v131 = v312;
    v133 = sub_1D5D2F7A4(v114, sub_1D615B49C, v132, sub_1D615B4A4, (&v287 - 6), v125, v126);
    if (v131)
    {

      v134 = v311;
      v135 = v300;

      v136 = v135;
LABEL_19:
      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
      v82 = v134;
      return sub_1D5D2CFE8(v82, sub_1D66BC62C);
    }

    v138 = v133;

    if (v138)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v115 = v303;
    }

    else
    {

      v115 = v303;
    }

    v137 = v300;
  }

  else
  {

    v137 = v114;
  }

  sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
  v139 = v307;
  swift_beginAccess();
  v140 = v139[6];
  v141 = v299;
  v115(v299, v306, v290);
  swift_storeEnumTagMultiPayload();
  if (*(v140 + 16))
  {
    LOBYTE(v313) = 0;
    v142 = swift_allocObject();
    v312 = xmmword_1D72BAA60;
    *(v142 + 16) = xmmword_1D72BAA60;
    *(v142 + 32) = v313;
    *(v142 + 40) = v289;
    *(v142 + 48) = v288;

    v143 = sub_1D72647CC();
    LOBYTE(v313) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v143;
    *(v144 + 24) = v312;
    *(v144 + 40) = v313;
    v145 = *(v309 + 24);
    v146 = *(v309 + 32);
    v147 = __swift_project_boxed_opaque_existential_1(v309, v145);
    MEMORY[0x1EEE9AC00](v147, v148);
    MEMORY[0x1EEE9AC00](v149, v150);
    *(&v287 - 4) = sub_1D5B4AA6C;
    *(&v287 - 3) = 0;
    v285 = sub_1D6708B90;
    v286 = v142;
    v152 = sub_1D5D2F7A4(v141, sub_1D615B49C, v151, sub_1D615B4A4, (&v287 - 6), v145, v146);
    v153 = v152;

    if (v153)
    {
      v313 = v312;
      LOBYTE(v314) = 0;
      v324 = v140;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v115 = v303;
      v154 = v309;

      sub_1D5D2CFE8(v299, type metadata accessor for FormatVersionRequirement);
      goto LABEL_33;
    }

    sub_1D5D2CFE8(v299, type metadata accessor for FormatVersionRequirement);

    v115 = v303;
  }

  else
  {
    sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
  }

  v154 = v309;
LABEL_33:
  v155 = v307;
  swift_beginAccess();
  v156 = v155[7];
  v157 = v298;
  v115(v298, v306, v290);
  swift_storeEnumTagMultiPayload();
  if (v156 == 0x8000000000000000)
  {
    v158 = v157;
LABEL_35:
    sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
    goto LABEL_36;
  }

  LOBYTE(v313) = 0;
  v185 = swift_allocObject();
  v312 = xmmword_1D72BAA70;
  *(v185 + 16) = xmmword_1D72BAA70;
  *(v185 + 32) = v313;
  *(v185 + 40) = v289;
  *(v185 + 48) = v288;

  sub_1D5EB1500(v156);
  v186 = sub_1D72647CC();
  LOBYTE(v313) = 0;
  v187 = swift_allocObject();
  *(v187 + 16) = v186;
  *(v187 + 24) = v312;
  *(v187 + 40) = v313;
  v188 = v154[3];
  v189 = v154[4];
  v190 = __swift_project_boxed_opaque_existential_1(v154, v188);
  MEMORY[0x1EEE9AC00](v190, v191);
  MEMORY[0x1EEE9AC00](v192, v193);
  *(&v287 - 4) = sub_1D5B4AA6C;
  *(&v287 - 3) = 0;
  v285 = sub_1D6708B90;
  v286 = v185;
  v195 = sub_1D5D2F7A4(v157, sub_1D615B49C, v194, sub_1D615B4A4, (&v287 - 6), v188, v189);
  v223 = v195;

  if (v223)
  {
    v313 = v312;
    LOBYTE(v314) = 0;
    v323 = v156;
    sub_1D5DF6A60();
    sub_1D72647EC();
    v115 = v303;
    sub_1D5EB15C4(v323);
    v158 = v298;
    goto LABEL_35;
  }

  sub_1D5EB15C4(v156);
  sub_1D5D2CFE8(v298, type metadata accessor for FormatVersionRequirement);
  v115 = v303;
LABEL_36:
  v159 = v297;
  v160 = v307;
  swift_beginAccess();
  LOBYTE(v160) = *(v160 + 64);
  v115(v159, v306, v290);
  swift_storeEnumTagMultiPayload();
  if (v160)
  {
    *&v312 = 0;
    v161 = v159;
LABEL_38:
    sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);
    goto LABEL_39;
  }

  LOBYTE(v313) = 0;
  v196 = swift_allocObject();
  v312 = xmmword_1D72BAA80;
  *(v196 + 16) = xmmword_1D72BAA80;
  *(v196 + 32) = v313;
  *(v196 + 40) = v289;
  *(v196 + 48) = v288;

  v197 = v159;
  v198 = sub_1D72647CC();
  LOBYTE(v313) = 0;
  v199 = swift_allocObject();
  *(v199 + 16) = v198;
  *(v199 + 24) = v312;
  *(v199 + 40) = v313;
  v200 = v154[3];
  v201 = v154[4];
  v202 = __swift_project_boxed_opaque_existential_1(v154, v200);
  MEMORY[0x1EEE9AC00](v202, v203);
  MEMORY[0x1EEE9AC00](v204, v205);
  *(&v287 - 4) = sub_1D5B4AA6C;
  *(&v287 - 3) = 0;
  v285 = sub_1D6708B90;
  v286 = v196;
  v207 = sub_1D5D2F7A4(v197, sub_1D615B49C, v206, sub_1D615B4A4, (&v287 - 6), v200, v201);
  v224 = v207;

  if (v224)
  {
    v313 = v312;
    LOBYTE(v314) = 0;
    LOBYTE(v321) = 0;
    sub_1D72647EC();
    *&v312 = 0;
    v161 = v297;
    goto LABEL_38;
  }

  *&v312 = 0;
  sub_1D5D2CFE8(v297, type metadata accessor for FormatVersionRequirement);
LABEL_39:
  v162 = v307[9];
  v163 = *(v307 + 80);
  v164 = v295;
  v303(v295, v306, v290);
  swift_storeEnumTagMultiPayload();
  v310 = xmmword_1D72BAA90;
  v313 = xmmword_1D72BAA90;
  LOBYTE(v314) = 0;
  LOBYTE(v321) = 0;
  v166 = swift_allocObject();
  *(v166 + 16) = v310;
  *(v166 + 32) = v321;
  v167 = v289;
  *(v166 + 40) = v289;
  v168 = v288;
  *(v166 + 48) = v288;
  if (v163 > 0xFD)
  {

    v169 = v303;
    goto LABEL_41;
  }

  v308 = &v287;
  v321 = v162;
  v322 = v163;
  MEMORY[0x1EEE9AC00](v168, v165);
  *(&v287 - 4) = sub_1D5B4AA6C;
  *(&v287 - 3) = 0;
  v285 = sub_1D6708B90;
  v286 = v166;
  v320[0] = 0;
  v209 = v208;
  v210 = swift_allocObject();
  *(v210 + 16) = v310;
  *(v210 + 32) = v320[0];
  *(v210 + 40) = v167;
  *(v210 + 48) = v209;
  swift_retain_n();
  v211 = sub_1D72647CC();
  v320[0] = 0;
  v212 = swift_allocObject();
  *(v212 + 16) = v211;
  *(v212 + 24) = v310;
  *(v212 + 40) = v320[0];
  v213 = v154[3];
  v214 = v154[4];
  v215 = __swift_project_boxed_opaque_existential_1(v154, v213);
  MEMORY[0x1EEE9AC00](v215, v216);
  MEMORY[0x1EEE9AC00](v217, v218);
  *(&v287 - 4) = sub_1D615B4A4;
  *(&v287 - 3) = (&v287 - 6);
  v285 = sub_1D6708B90;
  v286 = v210;
  v219 = v312;
  v221 = sub_1D5D2F7A4(v164, sub_1D615B49C, v220, sub_1D615B4A4, (&v287 - 6), v213, v214);
  *&v312 = v219;
  if (v219)
  {
    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);

    v222 = v311;
LABEL_50:
    v82 = v222;
    return sub_1D5D2CFE8(v82, sub_1D66BC62C);
  }

  v227 = v221;

  if (v227)
  {
    sub_1D5F8F434();
    v222 = v311;
    v228 = v312;
    sub_1D72647EC();
    v169 = v303;
    *&v312 = v228;
    if (v228)
    {
      sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);

      goto LABEL_50;
    }
  }

  else
  {
    v169 = v303;
  }

LABEL_41:
  sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);

  v170 = v307;
  swift_beginAccess();
  v171 = v170[11];
  v172 = v296;
  v169(v296, v306, v290);
  swift_storeEnumTagMultiPayload();
  if (*(v171 + 16))
  {
    LOBYTE(v313) = 0;
    v173 = swift_allocObject();
    v310 = xmmword_1D72BAAA0;
    *(v173 + 16) = xmmword_1D72BAAA0;
    *(v173 + 32) = v313;
    *(v173 + 40) = v289;
    *(v173 + 48) = v288;

    v174 = sub_1D72647CC();
    LOBYTE(v313) = 0;
    v175 = swift_allocObject();
    *(v175 + 16) = v174;
    *(v175 + 24) = v310;
    *(v175 + 40) = v313;
    v176 = v154[3];
    v177 = v154[4];
    v178 = __swift_project_boxed_opaque_existential_1(v154, v176);
    MEMORY[0x1EEE9AC00](v178, v179);
    MEMORY[0x1EEE9AC00](v180, v181);
    *(&v287 - 4) = sub_1D5B4AA6C;
    *(&v287 - 3) = 0;
    v285 = sub_1D6708B90;
    v286 = v173;
    v182 = v312;
    v184 = sub_1D5D2F7A4(v172, sub_1D615B49C, v183, sub_1D615B4A4, (&v287 - 6), v176, v177);
    if (v182)
    {

      v134 = v311;
      v136 = v296;
      goto LABEL_19;
    }

    v229 = v184;

    if (v229)
    {
      sub_1D5E06D4C(v171, v311, 7, 0, 0);
    }

    v169 = v303;
    v226 = v288;
    *&v312 = 0;

    v225 = v294;
  }

  else
  {
    v225 = v294;
    v226 = v288;
  }

  sub_1D5D2CFE8(v296, type metadata accessor for FormatVersionRequirement);
  v230 = v307;
  swift_beginAccess();
  v231 = v230[12];
  v169(v225, v306, v290);
  swift_storeEnumTagMultiPayload();
  v310 = xmmword_1D72BAAB0;
  v313 = xmmword_1D72BAAB0;
  LOBYTE(v314) = 0;
  LOBYTE(v318) = 0;
  v232 = swift_allocObject();
  v234 = v232;
  *(v232 + 16) = v310;
  *(v232 + 32) = v318;
  v235 = v289;
  *(v232 + 40) = v289;
  *(v232 + 48) = v226;
  if (!v231)
  {

    v249 = v312;
    goto LABEL_72;
  }

  v308 = &v287;
  *&v318 = v231;
  MEMORY[0x1EEE9AC00](v232, v233);
  *(&v287 - 4) = sub_1D5B4AA6C;
  *(&v287 - 3) = 0;
  v285 = sub_1D6708B90;
  v286 = v234;
  v327 = 0;
  v236 = swift_allocObject();
  *(v236 + 16) = v310;
  *(v236 + 32) = v327;
  *(v236 + 40) = v235;
  *(v236 + 48) = v226;
  swift_retain_n();
  swift_retain_n();
  v237 = v225;
  v238 = sub_1D72647CC();
  v327 = 0;
  v239 = swift_allocObject();
  *(v239 + 16) = v238;
  *(v239 + 24) = v310;
  *(v239 + 40) = v327;
  v240 = v154[3];
  v241 = v154[4];
  v242 = __swift_project_boxed_opaque_existential_1(v154, v240);
  MEMORY[0x1EEE9AC00](v242, v243);
  MEMORY[0x1EEE9AC00](v244, v245);
  *(&v287 - 4) = sub_1D615B4A4;
  *(&v287 - 3) = (&v287 - 6);
  v285 = sub_1D6708B90;
  v286 = v236;
  v246 = v312;
  v248 = sub_1D5D2F7A4(v237, sub_1D615B49C, v247, sub_1D615B4A4, (&v287 - 6), v240, v241);
  v249 = v246;
  if (!v246)
  {
    v251 = v248;

    if (v251)
    {
      type metadata accessor for FormatSponsoredBannerNodeStyle();
      sub_1D5B58B84(&unk_1EDF09B38, type metadata accessor for FormatSponsoredBannerNodeStyle, &protocol conformance descriptor for FormatSponsoredBannerNodeStyle);
      sub_1D72647EC();
    }

    v225 = v294;
LABEL_72:
    *&v312 = v249;

    sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);
    v253 = v307[13];
    v252 = v307[14];
    v254 = v307[15];
    v255 = v307[16];
    v257 = v307[17];
    v256 = v307[18];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v258 = v290;
    v259 = __swift_project_value_buffer(v290, qword_1EDFFCE38);
    v303(v293, v259, v258);
    swift_storeEnumTagMultiPayload();
    v310 = xmmword_1D72BAAC0;
    v318 = xmmword_1D72BAAC0;
    v319 = 0;
    LOBYTE(v313) = 0;
    v260 = swift_allocObject();
    v262 = v260;
    *(v260 + 16) = v310;
    *(v260 + 32) = v313;
    v263 = v289;
    v264 = v288;
    *(v260 + 40) = v289;
    *(v260 + 48) = v264;
    if (v253)
    {
      v308 = &v287;
      *&v313 = v253;
      *(&v313 + 1) = v252;
      v314 = v254;
      v315 = v255;
      v316 = v257;
      v306 = v256;
      v317 = v256;
      MEMORY[0x1EEE9AC00](v260, v261);
      v307 = &v287 - 6;
      *(&v287 - 4) = sub_1D5B4AA6C;
      *(&v287 - 3) = 0;
      v285 = sub_1D6708B90;
      v286 = v262;
      v327 = 0;
      v265 = v253;
      v266 = swift_allocObject();
      *(v266 + 16) = v310;
      *(v266 + 32) = v327;
      *(v266 + 40) = v263;
      *(v266 + 48) = v264;
      swift_retain_n();
      sub_1D5EB1D80(v265, v252, v254, v255, v257, v306);
      v267 = sub_1D72647CC();
      v327 = 0;
      v268 = swift_allocObject();
      *(v268 + 16) = v267;
      *(v268 + 24) = v310;
      *(v268 + 40) = v327;
      v269 = *(v309 + 24);
      v270 = *(v309 + 32);
      v271 = __swift_project_boxed_opaque_existential_1(v309, v269);
      MEMORY[0x1EEE9AC00](v271, v272);
      MEMORY[0x1EEE9AC00](v273, v274);
      v275 = v307;
      *(&v287 - 4) = sub_1D615B4A4;
      *(&v287 - 3) = v275;
      v285 = sub_1D6708B90;
      v286 = v266;
      v276 = v312;
      v278 = sub_1D5D2F7A4(v293, sub_1D615B49C, v277, sub_1D615B4A4, (&v287 - 6), v269, v270);
      if (v276)
      {

        v279 = v293;
        v280 = v316;

        sub_1D5CBF568(v280);

        v281 = v279;
      }

      else
      {
        v282 = v278;

        if ((v282 & 1) == 0)
        {

          v283 = v316;

          sub_1D5CBF568(v283);

          sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);
          goto LABEL_46;
        }

        sub_1D6659A24();
        sub_1D72647EC();

        v284 = v316;

        sub_1D5CBF568(v284);

        v281 = v293;
      }

      sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);
    }

LABEL_46:
    v82 = v311;
    return sub_1D5D2CFE8(v82, sub_1D66BC62C);
  }

  v250 = v311;
  sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v250, sub_1D66BC62C);
}

unint64_t sub_1D659F910(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x657A69736572;
    v8 = 0x656D7473756A6461;
    if (a1 != 3)
    {
      v8 = 0x696C696269736976;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1702521203;
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
    v1 = 0x656C797473;
    v2 = 2019912806;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x726F7463656C6573;
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

uint64_t sub_1D659FA70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BC7F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D659FAA8(uint64_t a1)
{
  v2 = sub_1D5E19ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659FAE4(uint64_t a1)
{
  v2 = sub_1D5E19ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerNodeBinding.init(from:)(void *a1)
{
  v2 = v1;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v1)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    if (v11)
    {
      v12 = sub_1D726433C();
      v13 = (v12 + 40);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 2;
        v16 = *v13;
        v13 += 2;
        if (v16 >= 4)
        {
          v17 = *(v15 - 3);

          sub_1D5E2D970();
          v2 = swift_allocError();
          *v18 = v17;
          *(v18 + 8) = v16;
          *(v18 + 16) = &unk_1F5117720;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BC750();
    v20 = 0uLL;
    sub_1D726431C();
    v20 = xmmword_1D7279980;
    sub_1D66BC7A4();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSponsoredBannerNodeBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSponsoredBannerNodeBinding, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatSponsoredBannerNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowG, v11, v9, v12, &off_1F51F6B58);
  if (qword_1EDF31F30 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE20);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6387A08(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatSponsoredBannerNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v209 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v214 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v215 = &v209 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v216 = &v209 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v217 = &v209 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v218 = &v209 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v226 = (&v209 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v209 - v29;
  sub_1D66BD280(0);
  *&v227 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D66BD3A8(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF24E88, sub_1D66BD3A8, &unk_1D7321584);
  v230 = v34;
  sub_1D5D2EE70(v4, v38, v40, v35, v4, v38, &type metadata for FormatVersions.DawnburstF, v36, v34, v39, &off_1F51F6BD8);
  swift_beginAccess();
  v41 = v2[2];
  v42 = v2[3];
  v225 = v2;
  v43 = qword_1EDF31F50;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCE80);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v223 = v45;
  v47(v30);
  v224 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v49 = sub_1D725895C();
  v50 = (*(*(v49 - 8) + 48))(v8, 1, v49);
  v221 = v47;
  v222 = v48;
  if (v50 == 1)
  {
    v220 = v41;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v51 = v227;
    v52 = v230;
    v53 = &v230[*(v227 + 44)];
    v55 = *v53;
    v54 = *(v53 + 1);
    LOBYTE(v234) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = v234;
    *(v56 + 40) = v55;
    *(v56 + 48) = v54;
    sub_1D66BD314(0);
    v58 = v57;
    v59 = sub_1D5B58B84(&qword_1EDF02DC8, sub_1D66BD314, MEMORY[0x1E69E6F60]);

    *&v228 = v58;
    v219 = v59;
    v60 = sub_1D72647CC();
    LOBYTE(v234) = 0;
    v61 = swift_allocObject();
    *(v61 + 24) = 0;
    *(v61 + 32) = 0;
    *(v61 + 16) = v60;
    *(v61 + 40) = v234;
    v62 = (v52 + *(v51 + 36));
    v63 = v62[3];
    v64 = v62[4];
    v65 = __swift_project_boxed_opaque_existential_1(v62, v63);
    MEMORY[0x1EEE9AC00](v65, v66);
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v209 - 4) = sub_1D5B4AA6C;
    *(&v209 - 3) = 0;
    v207 = sub_1D66BD528;
    v208 = v56;
    v69 = v229;
    v71 = sub_1D5D2F7A4(v30, sub_1D615B49C, v70, sub_1D615B4A4, (&v209 - 6), v63, v64);
    if (v69)
    {
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v52, sub_1D66BD280);
    }

    v101 = v71;

    if (v101)
    {
      v234 = 0uLL;
      v235 = 0;
      *&v232 = v220;
      *(&v232 + 1) = v42;
      v73 = v230;
      sub_1D72647EC();

      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
      v47 = v221;
      *&v229 = 0;
    }

    else
    {
      *&v229 = 0;
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v73 = v230;
      v47 = v221;
    }
  }

  else
  {
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v73 = v230;
  }

  v74 = v226;
  v75 = v225[4];
  v76 = v225[5];
  (v47)(v226, v223, v44);
  swift_storeEnumTagMultiPayload();
  *&v232 = v75;
  *(&v232 + 1) = v76;
  v228 = xmmword_1D728CF30;
  v234 = xmmword_1D728CF30;
  v235 = 0;
  v77 = v227;
  v78 = (v73 + *(v227 + 44));
  v211 = v44;
  v79 = *v78;
  v80 = v78[1];
  LOBYTE(v236) = 0;
  v81 = swift_allocObject();
  v220 = &v209;
  *(v81 + 16) = v228;
  *(v81 + 32) = v236;
  *(v81 + 40) = v79;
  *(v81 + 48) = v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v219 = &v209 - 6;
  *(&v209 - 4) = sub_1D5B4AA6C;
  *(&v209 - 3) = 0;
  v207 = sub_1D6708B94;
  v208 = v83;
  LOBYTE(v236) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v228;
  *(v84 + 32) = v236;
  v210 = v79;
  *(v84 + 40) = v79;
  *(v84 + 48) = v80;
  sub_1D66BD314(0);
  v86 = v85;
  v87 = sub_1D5B58B84(&qword_1EDF02DC8, sub_1D66BD314, MEMORY[0x1E69E6F60]);
  v209 = v80;
  swift_retain_n();
  v213 = v86;
  v212 = v87;
  v88 = sub_1D72647CC();
  LOBYTE(v236) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v228;
  *(v89 + 40) = v236;
  v90 = (v73 + *(v77 + 36));
  v92 = v90[3];
  v91 = v90[4];
  v93 = __swift_project_boxed_opaque_existential_1(v90, v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  MEMORY[0x1EEE9AC00](v95, v96);
  v97 = v219;
  *(&v209 - 4) = sub_1D615B4A4;
  *(&v209 - 3) = v97;
  v207 = sub_1D6708B94;
  v208 = v84;
  v98 = v229;
  sub_1D5D2BC70(v74, sub_1D615B49C, v99, sub_1D615B4A4, (&v209 - 6), v92, v91);
  if (v98)
  {
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

LABEL_9:
    v100 = v230;
    return sub_1D5D2CFE8(v100, sub_1D66BD280);
  }

  *&v228 = v90;

  v100 = v230;
  sub_1D72647EC();
  *&v229 = 0;
  sub_1D5D2CFE8(v226, type metadata accessor for FormatVersionRequirement);

  v102 = v225;
  swift_beginAccess();
  v103 = v102[6];
  v104 = v218;
  v105 = v223;
  v106 = v221;
  (v221)(v218, v223, v211);
  swift_storeEnumTagMultiPayload();
  if (!*(v103 + 16))
  {
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
LABEL_23:
    v121 = v209;
    goto LABEL_24;
  }

  LOBYTE(v232) = 0;
  v107 = swift_allocObject();
  v227 = xmmword_1D7297410;
  *(v107 + 16) = xmmword_1D7297410;
  *(v107 + 32) = v232;
  *(v107 + 40) = v210;
  *(v107 + 48) = v209;

  v108 = sub_1D72647CC();
  LOBYTE(v232) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v227;
  *(v109 + 40) = v232;
  v110 = *(v228 + 24);
  v111 = *(v228 + 32);
  v112 = __swift_project_boxed_opaque_existential_1(v228, v110);
  v226 = &v209;
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v209 - 4) = sub_1D5B4AA6C;
  *(&v209 - 3) = 0;
  v207 = sub_1D6708B94;
  v208 = v107;
  v116 = v229;
  v118 = sub_1D5D2F7A4(v104, sub_1D615B49C, v117, sub_1D615B4A4, (&v209 - 6), v110, v111);
  *&v229 = v116;
  if (v116)
  {
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v230, sub_1D66BD280);
  }

  v119 = v118;

  if ((v119 & 1) == 0)
  {
    sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);

    v100 = v230;
    v106 = v221;
    v105 = v223;
    goto LABEL_23;
  }

  v232 = v227;
  v233 = 0;
  v236 = v103;
  sub_1D5C34D84(0, &qword_1EC887390, &type metadata for FormatSponsoredBannerNodeStyle.Selector, MEMORY[0x1E69E62F8]);
  sub_1D66BD60C();
  v100 = v230;
  v120 = v229;
  sub_1D72647EC();
  v106 = v221;
  v121 = v209;
  if (!v120)
  {
    *&v229 = 0;

    sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);
    v105 = v223;
LABEL_24:
    v122 = v210;
    v123 = v102[7];
    v124 = v217;
    v106(v217, v105, v211);
    swift_storeEnumTagMultiPayload();
    v227 = xmmword_1D72BAA60;
    v232 = xmmword_1D72BAA60;
    v233 = 0;
    LOBYTE(v236) = 0;
    v125 = swift_allocObject();
    v127 = v125;
    *(v125 + 16) = v227;
    *(v125 + 32) = v236;
    *(v125 + 40) = v122;
    *(v125 + 48) = v121;
    if ((~v123 & 0xF000000000000007) != 0)
    {
      v226 = &v209;
      v236 = v123;
      MEMORY[0x1EEE9AC00](v125, v126);
      *(&v209 - 4) = sub_1D5B4AA6C;
      *(&v209 - 3) = 0;
      v207 = sub_1D6708B94;
      v208 = v127;
      v231 = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = v227;
      *(v131 + 32) = v231;
      *(v131 + 40) = v122;
      *(v131 + 48) = v121;
      v132 = v121;
      swift_retain_n();
      sub_1D5CFCFAC(v123);
      v133 = sub_1D72647CC();
      v231 = 0;
      v134 = swift_allocObject();
      *(v134 + 16) = v133;
      *(v134 + 24) = v227;
      *(v134 + 40) = v231;
      v135 = *(v228 + 24);
      v136 = *(v228 + 32);
      v137 = __swift_project_boxed_opaque_existential_1(v228, v135);
      MEMORY[0x1EEE9AC00](v137, v138);
      MEMORY[0x1EEE9AC00](v139, v140);
      *(&v209 - 4) = sub_1D615B4A4;
      *(&v209 - 3) = (&v209 - 6);
      v207 = sub_1D6708B94;
      v208 = v131;
      v141 = v229;
      v143 = sub_1D5D2F7A4(v124, sub_1D615B49C, v142, sub_1D615B4A4, (&v209 - 6), v135, v136);
      if (v141)
      {

        v100 = v230;

        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v100, sub_1D66BD280);
      }

      v144 = v143;

      if (v144)
      {
        sub_1D5B55CBC();
        v100 = v230;
        sub_1D72647EC();
        v130 = v221;
        *&v229 = 0;
      }

      else
      {
        *&v229 = 0;

        v100 = v230;
        v130 = v221;
      }

      v128 = v132;
      v129 = v216;
      v105 = v223;
    }

    else
    {

      v128 = v121;
      v129 = v216;
      v130 = v106;
    }

    sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
    v145 = v225[8];
    v130(v129, v105, v211);
    swift_storeEnumTagMultiPayload();
    v227 = xmmword_1D72BAA70;
    v232 = xmmword_1D72BAA70;
    v233 = 0;
    LOBYTE(v236) = 0;
    v146 = swift_allocObject();
    v148 = v146;
    *(v146 + 16) = v227;
    *(v146 + 32) = v236;
    v149 = v210;
    *(v146 + 40) = v210;
    *(v146 + 48) = v128;
    if ((~v145 & 0xF000000000000007) != 0)
    {
      v226 = &v209;
      v236 = v145;
      MEMORY[0x1EEE9AC00](v146, v147);
      *(&v209 - 4) = sub_1D5B4AA6C;
      *(&v209 - 3) = 0;
      v207 = sub_1D6708B94;
      v208 = v148;
      v231 = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v227;
      *(v167 + 32) = v231;
      *(v167 + 40) = v149;
      *(v167 + 48) = v128;
      swift_retain_n();
      sub_1D5CFCFAC(v145);
      v168 = sub_1D72647CC();
      v231 = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = v168;
      *(v169 + 24) = v227;
      *(v169 + 40) = v231;
      v170 = *(v228 + 24);
      v171 = *(v228 + 32);
      v172 = __swift_project_boxed_opaque_existential_1(v228, v170);
      MEMORY[0x1EEE9AC00](v172, v173);
      MEMORY[0x1EEE9AC00](v174, v175);
      *(&v209 - 4) = sub_1D615B4A4;
      *(&v209 - 3) = (&v209 - 6);
      v207 = sub_1D6708B94;
      v208 = v167;
      v176 = v229;
      v178 = sub_1D5D2F7A4(v129, sub_1D615B49C, v177, sub_1D615B4A4, (&v209 - 6), v170, v171);
      if (v176)
      {

        v100 = v230;

        sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v100, sub_1D66BD280);
      }

      v204 = v178;

      if (v204)
      {
        sub_1D5B55CBC();
        v100 = v230;
        sub_1D72647EC();
        v130 = v221;
        v150 = v225;
        *&v229 = 0;

        v129 = v216;
        v105 = v223;
        v128 = v209;
LABEL_36:
        sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
        v151 = *(v150 + 72);
        v152 = v215;
        v130(v215, v105, v211);
        swift_storeEnumTagMultiPayload();
        v227 = xmmword_1D72BAA80;
        v232 = xmmword_1D72BAA80;
        v233 = 0;
        LOBYTE(v236) = 0;
        v153 = swift_allocObject();
        v155 = v153;
        *(v153 + 16) = v227;
        *(v153 + 32) = v236;
        v156 = v210;
        *(v153 + 40) = v210;
        *(v153 + 48) = v128;
        if (v151 == 2)
        {
          v157 = v128;

          v158 = v229;
          v159 = v214;
          v160 = v156;
        }

        else
        {
          v226 = &v209;
          LOBYTE(v236) = v151 & 1;
          MEMORY[0x1EEE9AC00](v153, v154);
          *(&v209 - 4) = sub_1D5B4AA6C;
          *(&v209 - 3) = 0;
          v207 = sub_1D6708B94;
          v208 = v155;
          v231 = 0;
          v157 = v128;
          v179 = swift_allocObject();
          *(v179 + 16) = v227;
          *(v179 + 32) = v231;
          *(v179 + 40) = v156;
          *(v179 + 48) = v128;
          swift_retain_n();
          v180 = sub_1D72647CC();
          v231 = 0;
          v181 = swift_allocObject();
          *(v181 + 16) = v180;
          *(v181 + 24) = v227;
          *(v181 + 40) = v231;
          v182 = *(v228 + 24);
          v183 = *(v228 + 32);
          v184 = __swift_project_boxed_opaque_existential_1(v228, v182);
          MEMORY[0x1EEE9AC00](v184, v185);
          MEMORY[0x1EEE9AC00](v186, v187);
          *(&v209 - 4) = sub_1D615B4A4;
          *(&v209 - 3) = (&v209 - 6);
          v207 = sub_1D6708B94;
          v208 = v179;
          v188 = v229;
          v190 = sub_1D5D2F7A4(v152, sub_1D615B49C, v189, sub_1D615B4A4, (&v209 - 6), v182, v183);
          if (v188)
          {
            sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);

            goto LABEL_9;
          }

          v205 = v190;
          v160 = v156;

          if (v205)
          {
            v100 = v230;
            sub_1D72647EC();
            v159 = v214;
            v130 = v221;
            v158 = 0;
          }

          else
          {
            v158 = 0;
            v100 = v230;
            v159 = v214;
            v130 = v221;
          }
        }

        sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

        v161 = v225[10];
        if (qword_1EDF31F30 != -1)
        {
          swift_once();
        }

        v162 = v211;
        v163 = __swift_project_value_buffer(v211, qword_1EDFFCE20);
        v130(v159, v163, v162);
        swift_storeEnumTagMultiPayload();
        v229 = xmmword_1D72BAA90;
        v232 = xmmword_1D72BAA90;
        v233 = 0;
        LOBYTE(v236) = 0;
        v164 = swift_allocObject();
        v166 = v164;
        *(v164 + 16) = v229;
        *(v164 + 32) = v236;
        *(v164 + 40) = v160;
        *(v164 + 48) = v157;
        if (v161 == 2)
        {
        }

        else
        {
          v191 = v160;
          *&v227 = &v209;
          v236 = v161;
          MEMORY[0x1EEE9AC00](v164, v165);
          v192 = v159;
          *(&v209 - 4) = sub_1D5B4AA6C;
          *(&v209 - 3) = 0;
          v207 = sub_1D6708B94;
          v208 = v166;
          v231 = 0;
          v193 = swift_allocObject();
          *(v193 + 16) = v229;
          *(v193 + 32) = v231;
          *(v193 + 40) = v191;
          *(v193 + 48) = v157;
          swift_retain_n();
          sub_1D5D0A59C(v161);
          v194 = sub_1D72647CC();
          v231 = 0;
          v195 = swift_allocObject();
          *(v195 + 16) = v194;
          *(v195 + 24) = v229;
          *(v195 + 40) = v231;
          v196 = *(v228 + 24);
          v197 = *(v228 + 32);
          v198 = __swift_project_boxed_opaque_existential_1(v228, v196);
          MEMORY[0x1EEE9AC00](v198, v199);
          MEMORY[0x1EEE9AC00](v200, v201);
          *(&v209 - 4) = sub_1D615B4A4;
          *(&v209 - 3) = (&v209 - 6);
          v207 = sub_1D6708B94;
          v208 = v193;
          v203 = sub_1D5D2F7A4(v192, sub_1D615B49C, v202, sub_1D615B4A4, (&v209 - 6), v196, v197);
          if (v158)
          {

            v100 = v230;
            v159 = v214;
          }

          else
          {
            v206 = v203;

            if ((v206 & 1) == 0)
            {

              sub_1D5D0A58C(v236);
              v100 = v230;
              v159 = v214;
              goto LABEL_56;
            }

            sub_1D66BD5B8();
            v100 = v230;
            sub_1D72647EC();
            v159 = v214;
          }

          sub_1D5D0A58C(v236);
        }

LABEL_56:
        sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v100, sub_1D66BD280);
      }

      *&v229 = 0;

      v100 = v230;
      v130 = v221;
      v129 = v216;
      v105 = v223;
      v128 = v209;
    }

    else
    {
    }

    v150 = v225;
    goto LABEL_36;
  }

  sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v100, sub_1D66BD280);
}

unint64_t sub_1D65A1FD0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1885433183;
  if (v1 == 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000018;
  if (v1 == 4)
  {
    v4 = 0x64656C6C69666E75;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x726F7463656C6573;
  if (v1 != 2)
  {
    v5 = 0x6F4364656C6C6966;
  }

  if (*v0)
  {
    v2 = 0x7373616C63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}