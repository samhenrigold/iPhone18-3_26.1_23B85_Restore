uint64_t sub_1B4E305F0(uint64_t a1)
{
  v2 = sub_1B4E34134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3062C(uint64_t a1)
{
  v2 = sub_1B4E34230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30668(uint64_t a1)
{
  v2 = sub_1B4E34230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E306A4(uint64_t a1)
{
  v2 = sub_1B4E341DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E306E0(uint64_t a1)
{
  v2 = sub_1B4E341DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3071C()
{
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E30760(uint64_t a1)
{
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E307A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4F68D54();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4E30820(uint64_t a1)
{
  v2 = sub_1B4E34188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E3085C(uint64_t a1)
{
  v2 = sub_1B4E34188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteBrowsingJournalProperty.encode(to:)(void *a1)
{
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4880, &qword_1B4F6E530);
  v303 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273, v2);
  v270 = &v152 - v3;
  v272 = sub_1B4F66F74();
  v271 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272, v4);
  v269 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4888, &qword_1B4F6E538);
  v302 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268, v6);
  v267 = &v152 - v7;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4890, &qword_1B4F6E540);
  v301 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266, v8);
  v265 = &v152 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v264 = &v152 - v12;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48A0, &qword_1B4F6E550);
  v300 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263, v13);
  v260 = &v152 - v14;
  v262 = sub_1B4F670C4();
  v261 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262, v15);
  v259 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48A8, &qword_1B4F6E558);
  v299 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258, v17);
  v255 = &v152 - v18;
  v257 = sub_1B4F66AF4();
  v256 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257, v19);
  v254 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48B0, &qword_1B4F6E560);
  v298 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253, v21);
  v250 = &v152 - v22;
  v252 = sub_1B4F660C4();
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252, v23);
  v249 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48B8, &qword_1B4F6E568);
  v297 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248, v25);
  v245 = &v152 - v26;
  v247 = sub_1B4F64ED4();
  v246 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247, v27);
  v244 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48C0, &qword_1B4F6E570);
  v296 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243, v29);
  v240 = &v152 - v30;
  v242 = sub_1B4F65C64();
  v241 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242, v31);
  v239 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48C8, &qword_1B4F6E578);
  v295 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238, v33);
  v236 = &v152 - v34;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48D0, &qword_1B4F6E580);
  v294 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237, v35);
  v233 = &v152 - v36;
  v235 = sub_1B4F66354();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235, v37);
  v232 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48D8, &qword_1B4F6E588);
  v293 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v39);
  v228 = &v152 - v40;
  v230 = sub_1B4F65E04();
  v229 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230, v41);
  v227 = &v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48E0, &qword_1B4F6E590);
  v292 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226, v43);
  v223 = &v152 - v44;
  v225 = sub_1B4F65DE4();
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225, v45);
  v222 = &v152 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48E8, &qword_1B4F6E598);
  v291 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221, v47);
  v218 = &v152 - v48;
  v220 = sub_1B4F66BA4();
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220, v49);
  v217 = &v152 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48F0, &qword_1B4F6E5A0);
  v290 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216, v51);
  v215 = &v152 - v52;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48F8, &qword_1B4F6E5A8);
  v289 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214, v53);
  v211 = &v152 - v54;
  v213 = sub_1B4F67A94();
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213, v55);
  v210 = &v152 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4900, &qword_1B4F6E5B0);
  v288 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209, v57);
  v206 = &v152 - v58;
  v208 = sub_1B4F673D4();
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208, v59);
  v205 = &v152 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4908, &qword_1B4F6E5B8);
  v287 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204, v61);
  v201 = &v152 - v62;
  v203 = sub_1B4F66624();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203, v63);
  v200 = &v152 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4910, &qword_1B4F6E5C0);
  v286 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199, v65);
  v196 = &v152 - v66;
  v198 = sub_1B4F66604();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v67);
  v195 = &v152 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4918, &qword_1B4F6E5C8);
  v285 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v69);
  v191 = &v152 - v70;
  v193 = sub_1B4F668C4();
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193, v71);
  v190 = &v152 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4920, &qword_1B4F6E5D0);
  v284 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v73);
  v186 = &v152 - v74;
  v188 = sub_1B4F66454();
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188, v75);
  v185 = &v152 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4928, &qword_1B4F6E5D8);
  v283 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184, v77);
  v181 = &v152 - v78;
  v183 = sub_1B4F66A54();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v79);
  v180 = &v152 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4930, &qword_1B4F6E5E0);
  v282 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179, v81);
  v178 = &v152 - v82;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4938, &qword_1B4F6E5E8);
  v281 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v83);
  v176 = &v152 - v84;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4940, &qword_1B4F6E5F0);
  v280 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v85);
  v174 = &v152 - v86;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4948, &qword_1B4F6E5F8);
  v279 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v87);
  v170 = &v152 - v88;
  v172 = sub_1B4F669F4();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172, v89);
  v169 = &v152 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4950, &qword_1B4F6E600);
  v278 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v91);
  v167 = &v152 - v92;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4958, &qword_1B4F6E608);
  v277 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166, v93);
  v163 = &v152 - v94;
  v165 = sub_1B4F66754();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v95);
  v162 = &v152 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4960, &qword_1B4F6E610);
  v276 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v97);
  v159 = &v152 - v98;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4968, &qword_1B4F6E618);
  v275 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160, v99);
  v156 = &v152 - v100;
  v158 = sub_1B4F65954();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v101);
  v155 = &v152 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4970, &qword_1B4F6E620);
  v274 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v103);
  v105 = &v152 - v104;
  v106 = sub_1B4F65184();
  v153 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v107);
  v109 = &v152 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v110, v111);
  v113 = &v152 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4978, &qword_1B4F6E628);
  v307 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305, v114);
  v116 = &v152 - v115;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4E33EB0();
  v304 = v116;
  sub_1B4F68F54();
  sub_1B4E33F04(v306, v113);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v132 = v157;
      v133 = v155;
      v134 = v158;
      (*(v157 + 32))(v155, v113, v158);
      LOBYTE(v309) = 1;
      sub_1B4E34C2C();
      v135 = v156;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4B80, MEMORY[0x1E69CB538], MEMORY[0x1E69CB540]);
      v136 = v160;
      sub_1B4F68CE4();
      v137 = v275;
      goto LABEL_35;
    case 2u:
      v140 = *v113;
      LOBYTE(v309) = 2;
      sub_1B4E34B84();
      v141 = v159;
      v124 = v304;
      v123 = v305;
      sub_1B4F68CB4();
      LOBYTE(v309) = v140;
      sub_1B4E34BD8();
      v142 = v161;
      sub_1B4F68CE4();
      (*(v276 + 8))(v141, v142);
      return (*(v307 + 8))(v124, v123);
    case 3u:
      v132 = v164;
      v133 = v162;
      v134 = v165;
      (*(v164 + 32))(v162, v113, v165);
      LOBYTE(v309) = 3;
      sub_1B4E34B30();
      v135 = v163;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4B60, MEMORY[0x1E69CC658], MEMORY[0x1E69CC660]);
      v136 = v166;
      sub_1B4F68CE4();
      v137 = v277;
      goto LABEL_35;
    case 4u:
      v138 = *v113;
      LOBYTE(v309) = 4;
      sub_1B4E34A28();
      v127 = v167;
      v129 = v304;
      v128 = v305;
      sub_1B4F68CB4();
      v309 = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
      sub_1B4E34A7C();
      v130 = v168;
      sub_1B4F68CE4();
      v139 = &v308;
      goto LABEL_27;
    case 5u:
      v132 = v171;
      v133 = v169;
      v134 = v172;
      (*(v171 + 32))(v169, v113, v172);
      LOBYTE(v309) = 5;
      sub_1B4E349D4();
      v135 = v170;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4B30, MEMORY[0x1E69CC830], MEMORY[0x1E69CC838]);
      v136 = v173;
      sub_1B4F68CE4();
      v137 = v279;
      goto LABEL_35;
    case 6u:
      v149 = *v113;
      LOBYTE(v309) = 6;
      sub_1B4E34980();
      v127 = v174;
      v129 = v304;
      v128 = v305;
      sub_1B4F68CB4();
      v309 = v149;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B08, &qword_1B4F6E648);
      sub_1B4E348CC();
      v130 = v175;
      sub_1B4F68CE4();
      v139 = &v310;
      goto LABEL_27;
    case 7u:
      v144 = *v113;
      LOBYTE(v309) = 7;
      sub_1B4E34878();
      v127 = v176;
      v129 = v304;
      v128 = v305;
      sub_1B4F68CB4();
      v309 = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B08, &qword_1B4F6E648);
      sub_1B4E348CC();
      v130 = v177;
      sub_1B4F68CE4();
      v139 = &v311;
      goto LABEL_27;
    case 8u:
      v150 = *v113;
      LOBYTE(v309) = 8;
      sub_1B4E34824();
      v127 = v178;
      v129 = v304;
      v128 = v305;
      sub_1B4F68CB4();
      v309 = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
      sub_1B4E387E4(&qword_1EB8F4AF8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
      v130 = v179;
      sub_1B4F68CE4();
      v139 = &v312;
LABEL_27:
      v131 = *(v139 - 32);
      goto LABEL_28;
    case 9u:
      v132 = v182;
      v133 = v180;
      v134 = v183;
      (*(v182 + 32))(v180, v113, v183);
      LOBYTE(v309) = 9;
      sub_1B4E347D0();
      v135 = v181;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AE0, MEMORY[0x1E69CC938], MEMORY[0x1E69CC940]);
      v136 = v184;
      sub_1B4F68CE4();
      v137 = v283;
      goto LABEL_35;
    case 0xAu:
      v132 = v187;
      v133 = v185;
      v134 = v188;
      (*(v187 + 32))(v185, v113, v188);
      LOBYTE(v309) = 10;
      sub_1B4E3477C();
      v135 = v186;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AD0, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC200]);
      v136 = v189;
      sub_1B4F68CE4();
      v137 = v284;
      goto LABEL_35;
    case 0xBu:
      v132 = v192;
      v133 = v190;
      v134 = v193;
      (*(v192 + 32))(v190, v113, v193);
      LOBYTE(v309) = 11;
      sub_1B4E34728();
      v135 = v191;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AC0, MEMORY[0x1E69CC760], MEMORY[0x1E69CC768]);
      v136 = v194;
      sub_1B4F68CE4();
      v137 = v285;
      goto LABEL_35;
    case 0xCu:
      v132 = v197;
      v133 = v195;
      v134 = v198;
      (*(v197 + 32))(v195, v113, v198);
      LOBYTE(v309) = 12;
      sub_1B4E346D4();
      v135 = v196;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AB0, MEMORY[0x1E69CC528], MEMORY[0x1E69CC530]);
      v136 = v199;
      sub_1B4F68CE4();
      v137 = v286;
      goto LABEL_35;
    case 0xDu:
      v132 = v202;
      v133 = v200;
      v134 = v203;
      (*(v202 + 32))(v200, v113, v203);
      LOBYTE(v309) = 13;
      sub_1B4E34680();
      v135 = v201;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AA0, MEMORY[0x1E69CC560], MEMORY[0x1E69CC568]);
      v136 = v204;
      sub_1B4F68CE4();
      v137 = v287;
      goto LABEL_35;
    case 0xEu:
      v132 = v207;
      v133 = v205;
      v134 = v208;
      (*(v207 + 32))(v205, v113, v208);
      LOBYTE(v309) = 14;
      sub_1B4E3462C();
      v135 = v206;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A90, MEMORY[0x1E69CD068], MEMORY[0x1E69CD070]);
      v136 = v209;
      sub_1B4F68CE4();
      v137 = v288;
      goto LABEL_35;
    case 0xFu:
      v132 = v212;
      v133 = v210;
      v134 = v213;
      (*(v212 + 32))(v210, v113, v213);
      LOBYTE(v309) = 15;
      sub_1B4E345D8();
      v135 = v211;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A80, MEMORY[0x1E69CD370], MEMORY[0x1E69CD378]);
      v136 = v214;
      sub_1B4F68CE4();
      v137 = v289;
      goto LABEL_35;
    case 0x10u:
      v126 = *v113;
      LOBYTE(v309) = 16;
      sub_1B4E344D0();
      v127 = v215;
      v129 = v304;
      v128 = v305;
      sub_1B4F68CB4();
      v309 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
      sub_1B4E34524();
      v130 = v216;
      sub_1B4F68CE4();
      v131 = v290;
      goto LABEL_28;
    case 0x11u:
      v132 = v219;
      v133 = v217;
      v134 = v220;
      (*(v219 + 32))(v217, v113, v220);
      LOBYTE(v309) = 17;
      sub_1B4E3447C();
      v135 = v218;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A58, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAD0]);
      v136 = v221;
      sub_1B4F68CE4();
      v137 = v291;
      goto LABEL_35;
    case 0x12u:
      v132 = v224;
      v133 = v222;
      v134 = v225;
      (*(v224 + 32))(v222, v113, v225);
      LOBYTE(v309) = 18;
      sub_1B4E34428();
      v135 = v223;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A48, MEMORY[0x1E69CB800], MEMORY[0x1E69CB808]);
      v136 = v226;
      sub_1B4F68CE4();
      v137 = v292;
      goto LABEL_35;
    case 0x13u:
      v132 = v229;
      v133 = v227;
      v134 = v230;
      (*(v229 + 32))(v227, v113, v230);
      LOBYTE(v309) = 19;
      sub_1B4E343D4();
      v135 = v228;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A38, MEMORY[0x1E69CB850], MEMORY[0x1E69CB858]);
      v136 = v231;
      sub_1B4F68CE4();
      v137 = v293;
      goto LABEL_35;
    case 0x14u:
      v132 = v234;
      v133 = v232;
      v134 = v235;
      (*(v234 + 32))(v232, v113, v235);
      LOBYTE(v309) = 20;
      sub_1B4E34380();
      v135 = v233;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A28, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFE0]);
      v136 = v237;
      sub_1B4F68CE4();
      v137 = v294;
      goto LABEL_35;
    case 0x15u:
      LOBYTE(v309) = 21;
      sub_1B4E3432C();
      v145 = v236;
      v147 = v304;
      v146 = v305;
      sub_1B4F68CB4();
      v148 = v238;
      sub_1B4F68CD4();

      (*(v295 + 8))(v145, v148);
      return (*(v307 + 8))(v147, v146);
    case 0x16u:
      v132 = v241;
      v133 = v239;
      v134 = v242;
      (*(v241 + 32))(v239, v113, v242);
      LOBYTE(v309) = 22;
      sub_1B4E342D8();
      v135 = v240;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A10, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB6B8]);
      v136 = v243;
      sub_1B4F68CE4();
      v137 = v296;
      goto LABEL_35;
    case 0x17u:
      v132 = v246;
      v133 = v244;
      v134 = v247;
      (*(v246 + 32))(v244, v113, v247);
      LOBYTE(v309) = 23;
      sub_1B4E34284();
      v135 = v245;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A00, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB0E8]);
      v136 = v248;
      sub_1B4F68CE4();
      v137 = v297;
      goto LABEL_35;
    case 0x18u:
      v132 = v251;
      v133 = v249;
      v134 = v252;
      (*(v251 + 32))(v249, v113, v252);
      LOBYTE(v309) = 24;
      sub_1B4E34230();
      v135 = v250;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F49F0, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE48]);
      v136 = v253;
      sub_1B4F68CE4();
      v137 = v298;
      goto LABEL_35;
    case 0x19u:
      v132 = v256;
      v133 = v254;
      v134 = v257;
      (*(v256 + 32))(v254, v113, v257);
      LOBYTE(v309) = 25;
      sub_1B4E341DC();
      v135 = v255;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F49E0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA08]);
      v136 = v258;
      sub_1B4F68CE4();
      v137 = v299;
      goto LABEL_35;
    case 0x1Au:
      v132 = v261;
      v133 = v259;
      v134 = v262;
      (*(v261 + 32))(v259, v113, v262);
      LOBYTE(v309) = 26;
      sub_1B4E34188();
      v135 = v260;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F49D0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD0]);
      v136 = v263;
      sub_1B4F68CE4();
      v137 = v300;
      goto LABEL_35;
    case 0x1Bu:
      v121 = v264;
      sub_1B4E340C4(v113, v264);
      LOBYTE(v309) = 27;
      sub_1B4E34134();
      v122 = v265;
      v124 = v304;
      v123 = v305;
      sub_1B4F68CB4();
      sub_1B4F67074();
      sub_1B4E3FCA0(&qword_1EB8F49C0, MEMORY[0x1E69CCD78], MEMORY[0x1E69CCD80]);
      v125 = v266;
      sub_1B4F68CC4();
      (*(v301 + 8))(v122, v125);
      sub_1B4DD2BC4(v121, &qword_1EB8F4898, &qword_1B4F6E548);
      return (*(v307 + 8))(v124, v123);
    case 0x1Cu:
      v151 = *v113;
      LOBYTE(v309) = 28;
      sub_1B4E33FBC();
      v127 = v267;
      v129 = v304;
      v128 = v305;
      sub_1B4F68CB4();
      v309 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F49A0, &unk_1B4F6E630);
      sub_1B4E34010();
      v130 = v268;
      sub_1B4F68CE4();
      v131 = v302;
LABEL_28:
      (*(v131 + 8))(v127, v130);
      (*(v307 + 8))(v129, v128);

    case 0x1Du:
      v132 = v271;
      v133 = v269;
      v134 = v272;
      (*(v271 + 32))(v269, v113, v272);
      LOBYTE(v309) = 29;
      sub_1B4E33F68();
      v135 = v270;
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4990, MEMORY[0x1E69CCC70], MEMORY[0x1E69CCC78]);
      v136 = v273;
      sub_1B4F68CE4();
      v137 = v303;
LABEL_35:
      (*(v137 + 8))(v135, v136);
      (*(v132 + 8))(v133, v134);
      return (*(v307 + 8))(v119, v118);
    default:
      v117 = v153;
      (*(v153 + 32))(v109, v113, v106);
      LOBYTE(v309) = 0;
      sub_1B4E34C80();
      v119 = v304;
      v118 = v305;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4B90, MEMORY[0x1E69CB238], MEMORY[0x1E69CB240]);
      v120 = v154;
      sub_1B4F68CE4();
      (*(v274 + 8))(v105, v120);
      (*(v117 + 8))(v109, v106);
      return (*(v307 + 8))(v119, v118);
  }
}

uint64_t type metadata accessor for RemoteBrowsingJournalProperty(uint64_t a1)
{
  result = qword_1EDB6E500;
  if (!qword_1EDB6E500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4E33EB0()
{
  result = qword_1EB8F4980;
  if (!qword_1EB8F4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4980);
  }

  return result;
}

uint64_t sub_1B4E33F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4E33F68()
{
  result = qword_1EB8F4988;
  if (!qword_1EB8F4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4988);
  }

  return result;
}

unint64_t sub_1B4E33FBC()
{
  result = qword_1EB8F4998;
  if (!qword_1EB8F4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4998);
  }

  return result;
}

unint64_t sub_1B4E34010()
{
  result = qword_1EB8F49A8;
  if (!qword_1EB8F49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F49A0, &unk_1B4F6E630);
    sub_1B4E3FCA0(&qword_1EB8F49B0, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49A8);
  }

  return result;
}

uint64_t sub_1B4E340C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4E34134()
{
  result = qword_1EB8F49B8;
  if (!qword_1EB8F49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49B8);
  }

  return result;
}

unint64_t sub_1B4E34188()
{
  result = qword_1EB8F49C8;
  if (!qword_1EB8F49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49C8);
  }

  return result;
}

unint64_t sub_1B4E341DC()
{
  result = qword_1EB8F49D8;
  if (!qword_1EB8F49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49D8);
  }

  return result;
}

unint64_t sub_1B4E34230()
{
  result = qword_1EB8F49E8;
  if (!qword_1EB8F49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49E8);
  }

  return result;
}

unint64_t sub_1B4E34284()
{
  result = qword_1EB8F49F8;
  if (!qword_1EB8F49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49F8);
  }

  return result;
}

unint64_t sub_1B4E342D8()
{
  result = qword_1EB8F4A08;
  if (!qword_1EB8F4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A08);
  }

  return result;
}

unint64_t sub_1B4E3432C()
{
  result = qword_1EB8F4A18;
  if (!qword_1EB8F4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A18);
  }

  return result;
}

unint64_t sub_1B4E34380()
{
  result = qword_1EB8F4A20;
  if (!qword_1EB8F4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A20);
  }

  return result;
}

unint64_t sub_1B4E343D4()
{
  result = qword_1EB8F4A30;
  if (!qword_1EB8F4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A30);
  }

  return result;
}

unint64_t sub_1B4E34428()
{
  result = qword_1EB8F4A40;
  if (!qword_1EB8F4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A40);
  }

  return result;
}

unint64_t sub_1B4E3447C()
{
  result = qword_1EB8F4A50;
  if (!qword_1EB8F4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A50);
  }

  return result;
}

unint64_t sub_1B4E344D0()
{
  result = qword_1EB8F4A60;
  if (!qword_1EB8F4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A60);
  }

  return result;
}

unint64_t sub_1B4E34524()
{
  result = qword_1EB8F4A68;
  if (!qword_1EB8F4A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F42E8, &unk_1B4F70E80);
    sub_1B4E3FCA0(&qword_1EB8F4A70, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A68);
  }

  return result;
}

unint64_t sub_1B4E345D8()
{
  result = qword_1EB8F4A78;
  if (!qword_1EB8F4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A78);
  }

  return result;
}

unint64_t sub_1B4E3462C()
{
  result = qword_1EB8F4A88;
  if (!qword_1EB8F4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A88);
  }

  return result;
}

unint64_t sub_1B4E34680()
{
  result = qword_1EB8F4A98;
  if (!qword_1EB8F4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A98);
  }

  return result;
}

unint64_t sub_1B4E346D4()
{
  result = qword_1EB8F4AA8;
  if (!qword_1EB8F4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AA8);
  }

  return result;
}

unint64_t sub_1B4E34728()
{
  result = qword_1EB8F4AB8;
  if (!qword_1EB8F4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AB8);
  }

  return result;
}

unint64_t sub_1B4E3477C()
{
  result = qword_1EB8F4AC8;
  if (!qword_1EB8F4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AC8);
  }

  return result;
}

unint64_t sub_1B4E347D0()
{
  result = qword_1EB8F4AD8;
  if (!qword_1EB8F4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AD8);
  }

  return result;
}

unint64_t sub_1B4E34824()
{
  result = qword_1EB8F4AE8;
  if (!qword_1EB8F4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AE8);
  }

  return result;
}

unint64_t sub_1B4E34878()
{
  result = qword_1EB8F4B00;
  if (!qword_1EB8F4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B00);
  }

  return result;
}

unint64_t sub_1B4E348CC()
{
  result = qword_1EB8F4B10;
  if (!qword_1EB8F4B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B08, &qword_1B4F6E648);
    sub_1B4E3FCA0(&qword_1EB8F4B18, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B10);
  }

  return result;
}

unint64_t sub_1B4E34980()
{
  result = qword_1EB8F4B20;
  if (!qword_1EB8F4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B20);
  }

  return result;
}

unint64_t sub_1B4E349D4()
{
  result = qword_1EB8F4B28;
  if (!qword_1EB8F4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B28);
  }

  return result;
}

unint64_t sub_1B4E34A28()
{
  result = qword_1EB8F4B38;
  if (!qword_1EB8F4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B38);
  }

  return result;
}

unint64_t sub_1B4E34A7C()
{
  result = qword_1EB8F4B48;
  if (!qword_1EB8F4B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B40, &qword_1B4F6E650);
    sub_1B4E3FCA0(&qword_1EB8F4B50, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B48);
  }

  return result;
}

unint64_t sub_1B4E34B30()
{
  result = qword_1EB8F4B58;
  if (!qword_1EB8F4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B58);
  }

  return result;
}

unint64_t sub_1B4E34B84()
{
  result = qword_1EB8F4B68;
  if (!qword_1EB8F4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B68);
  }

  return result;
}

unint64_t sub_1B4E34BD8()
{
  result = qword_1EB8F4B70;
  if (!qword_1EB8F4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B70);
  }

  return result;
}

unint64_t sub_1B4E34C2C()
{
  result = qword_1EB8F4B78;
  if (!qword_1EB8F4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B78);
  }

  return result;
}

unint64_t sub_1B4E34C80()
{
  result = qword_1EB8F4B88;
  if (!qword_1EB8F4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B88);
  }

  return result;
}

uint64_t RemoteBrowsingJournalProperty.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v429 = a2;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B98, &qword_1B4F6E658);
  v401 = *(v400 - 8);
  MEMORY[0x1EEE9AC00](v400, v3);
  v428 = &v312 - v4;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BA0, &qword_1B4F6E660);
  v398 = *(v399 - 8);
  MEMORY[0x1EEE9AC00](v399, v5);
  v436 = &v312 - v6;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BA8, &qword_1B4F6E668);
  v396 = *(v397 - 8);
  MEMORY[0x1EEE9AC00](v397, v7);
  v427 = &v312 - v8;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BB0, &qword_1B4F6E670);
  v394 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395, v9);
  v426 = &v312 - v10;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BB8, &qword_1B4F6E678);
  v392 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393, v11);
  v425 = &v312 - v12;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BC0, &qword_1B4F6E680);
  v390 = *(v391 - 8);
  MEMORY[0x1EEE9AC00](v391, v13);
  v424 = &v312 - v14;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BC8, &qword_1B4F6E688);
  v388 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389, v15);
  v423 = &v312 - v16;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BD0, &qword_1B4F6E690);
  v386 = *(v387 - 8);
  MEMORY[0x1EEE9AC00](v387, v17);
  v422 = &v312 - v18;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BD8, &qword_1B4F6E698);
  v384 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385, v19);
  v421 = &v312 - v20;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BE0, &qword_1B4F6E6A0);
  v382 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383, v21);
  v420 = &v312 - v22;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BE8, &qword_1B4F6E6A8);
  v380 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381, v23);
  v419 = &v312 - v24;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BF0, &qword_1B4F6E6B0);
  v378 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379, v25);
  v418 = &v312 - v26;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BF8, &qword_1B4F6E6B8);
  v376 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377, v27);
  v417 = &v312 - v28;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C00, &qword_1B4F6E6C0);
  v374 = *(v375 - 8);
  MEMORY[0x1EEE9AC00](v375, v29);
  v416 = &v312 - v30;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C08, &qword_1B4F6E6C8);
  v372 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373, v31);
  v415 = &v312 - v32;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C10, &qword_1B4F6E6D0);
  v370 = *(v371 - 8);
  MEMORY[0x1EEE9AC00](v371, v33);
  v414 = &v312 - v34;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C18, &qword_1B4F6E6D8);
  v368 = *(v369 - 8);
  MEMORY[0x1EEE9AC00](v369, v35);
  v413 = &v312 - v36;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C20, &qword_1B4F6E6E0);
  v366 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367, v37);
  v412 = &v312 - v38;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C28, &qword_1B4F6E6E8);
  v364 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365, v39);
  v411 = &v312 - v40;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C30, &qword_1B4F6E6F0);
  v362 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363, v41);
  v410 = &v312 - v42;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C38, &qword_1B4F6E6F8);
  v360 = *(v361 - 8);
  MEMORY[0x1EEE9AC00](v361, v43);
  v409 = &v312 - v44;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C40, &qword_1B4F6E700);
  v358 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359, v45);
  v408 = &v312 - v46;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C48, &qword_1B4F6E708);
  v356 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357, v47);
  v407 = &v312 - v48;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C50, &qword_1B4F6E710);
  v354 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355, v49);
  v406 = &v312 - v50;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C58, &qword_1B4F6E718);
  v352 = *(v353 - 8);
  MEMORY[0x1EEE9AC00](v353, v51);
  v405 = &v312 - v52;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C60, &qword_1B4F6E720);
  v350 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351, v53);
  v404 = &v312 - v54;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C68, &qword_1B4F6E728);
  v348 = *(v349 - 8);
  MEMORY[0x1EEE9AC00](v349, v55);
  v403 = &v312 - v56;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C70, &qword_1B4F6E730);
  v346 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347, v57);
  v402 = &v312 - v58;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C78, &qword_1B4F6E738);
  v345 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342, v59);
  v434 = &v312 - v60;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C80, &qword_1B4F6E740);
  v343 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344, v61);
  v433 = &v312 - v62;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C88, &unk_1B4F6E748);
  v430 = *(v435 - 8);
  MEMORY[0x1EEE9AC00](v435, v63);
  v440 = &v312 - v64;
  v437 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v437, v65);
  v341 = &v312 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v324 = (&v312 - v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  v432 = &v312 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v431 = &v312 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v340 = &v312 - v78;
  MEMORY[0x1EEE9AC00](v79, v80);
  v339 = &v312 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v338 = &v312 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v337 = &v312 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v323 = (&v312 - v90);
  MEMORY[0x1EEE9AC00](v91, v92);
  v336 = &v312 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v335 = &v312 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v334 = &v312 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v333 = &v312 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v322 = (&v312 - v105);
  MEMORY[0x1EEE9AC00](v106, v107);
  v332 = &v312 - v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  v331 = &v312 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v330 = &v312 - v114;
  MEMORY[0x1EEE9AC00](v115, v116);
  v329 = &v312 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v328 = &v312 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v327 = &v312 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v326 = &v312 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v321 = (&v312 - v129);
  MEMORY[0x1EEE9AC00](v130, v131);
  v320 = (&v312 - v132);
  MEMORY[0x1EEE9AC00](v133, v134);
  v319 = (&v312 - v135);
  MEMORY[0x1EEE9AC00](v136, v137);
  v325 = &v312 - v138;
  MEMORY[0x1EEE9AC00](v139, v140);
  v142 = &v312 - v141;
  MEMORY[0x1EEE9AC00](v143, v144);
  v146 = &v312 - v145;
  MEMORY[0x1EEE9AC00](v147, v148);
  v150 = &v312 - v149;
  MEMORY[0x1EEE9AC00](v151, v152);
  v154 = &v312 - v153;
  MEMORY[0x1EEE9AC00](v155, v156);
  v158 = &v312 - v157;
  MEMORY[0x1EEE9AC00](v159, v160);
  v162 = &v312 - v161;
  v163 = a1[3];
  v438 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v163);
  sub_1B4E33EB0();
  v164 = v439;
  sub_1B4F68F44();
  if (v164)
  {
LABEL_8:
    v184 = v438;
    return __swift_destroy_boxed_opaque_existential_1Tm(v184);
  }

  v315 = v158;
  v313 = v150;
  v316 = v154;
  v317 = v146;
  v314 = v142;
  v165 = v431;
  v166 = v432;
  v167 = v433;
  v168 = v434;
  v169 = v436;
  v318 = v162;
  v439 = 0;
  v170 = v435;
  v171 = v440;
  v172 = sub_1B4F68CA4();
  v173 = (2 * *(v172 + 16)) | 1;
  v441 = v172;
  v442 = v172 + 32;
  v443 = 0;
  v444 = v173;
  v174 = sub_1B4E2DBD4();
  if (v443 != v444 >> 1)
  {
LABEL_6:
    v180 = v170;
    v181 = sub_1B4F68A04();
    swift_allocError();
    v183 = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0);
    *v183 = v437;
    sub_1B4F68C64();
    sub_1B4F689F4();
    (*(*(v181 - 8) + 104))(v183, *MEMORY[0x1E69E6AF8], v181);
    swift_willThrow();
    (*(v430 + 8))(v171, v180);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v174)
  {
    case 0:
      LOBYTE(v445) = 0;
      sub_1B4E34C80();
      v175 = v171;
      v176 = v439;
      sub_1B4F68C54();
      if (v176)
      {
        goto LABEL_67;
      }

      sub_1B4F65184();
      sub_1B4E3FCA0(&qword_1EB8F4D88, MEMORY[0x1E69CB238], MEMORY[0x1E69CB258]);
      v177 = v315;
      v178 = v344;
      sub_1B4F68C94();
      v179 = v430;
      (*(v343 + 8))(v167, v178);
      (*(v179 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 1:
      LOBYTE(v445) = 1;
      sub_1B4E34C2C();
      v175 = v171;
      v239 = v439;
      sub_1B4F68C54();
      if (v239)
      {
        goto LABEL_67;
      }

      sub_1B4F65954();
      sub_1B4E3FCA0(&qword_1EB8F4D80, MEMORY[0x1E69CB538], MEMORY[0x1E69CB550]);
      v177 = v316;
      v240 = v342;
      sub_1B4F68C94();
      v241 = v430;
      (*(v345 + 8))(v168, v240);
      (*(v241 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 2:
      LOBYTE(v445) = 2;
      sub_1B4E34B84();
      v223 = v402;
      v175 = v171;
      v224 = v439;
      sub_1B4F68C54();
      if (v224)
      {
        goto LABEL_67;
      }

      sub_1B4E389B8();
      v225 = v347;
      sub_1B4F68C94();
      v226 = v430;
      (*(v346 + 8))(v223, v225);
      (*(v226 + 8))(v171, v170);
      swift_unknownObjectRelease();
      v194 = v313;
      *v313 = v445;
      goto LABEL_70;
    case 3:
      LOBYTE(v445) = 3;
      sub_1B4E34B30();
      v231 = v403;
      v175 = v171;
      v232 = v439;
      sub_1B4F68C54();
      if (v232)
      {
        goto LABEL_67;
      }

      sub_1B4F66754();
      sub_1B4E3FCA0(&qword_1EB8F4D70, MEMORY[0x1E69CC658], MEMORY[0x1E69CC678]);
      v177 = v317;
      v233 = v349;
      sub_1B4F68C94();
      v234 = v430;
      (*(v348 + 8))(v231, v233);
      (*(v234 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 4:
      LOBYTE(v445) = 4;
      sub_1B4E34A28();
      v203 = v404;
      v175 = v171;
      v204 = v439;
      sub_1B4F68C54();
      if (v204)
      {
        goto LABEL_67;
      }

      v205 = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
      sub_1B4E38904();
      v206 = v351;
      sub_1B4F68C94();
      (*(v350 + 8))(v203, v206);
      (*(v430 + 8))(v171, v205);
      swift_unknownObjectRelease();
      v194 = v314;
      *v314 = v445;
      goto LABEL_70;
    case 5:
      LOBYTE(v445) = 5;
      sub_1B4E349D4();
      v250 = v405;
      v175 = v171;
      v251 = v439;
      sub_1B4F68C54();
      if (v251)
      {
        goto LABEL_67;
      }

      sub_1B4F669F4();
      sub_1B4E3FCA0(&qword_1EB8F4D58, MEMORY[0x1E69CC830], MEMORY[0x1E69CC850]);
      v177 = v325;
      v252 = v353;
      sub_1B4F68C94();
      v253 = v430;
      (*(v352 + 8))(v250, v252);
      (*(v253 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 6:
      LOBYTE(v445) = 6;
      sub_1B4E34980();
      v264 = v406;
      v175 = v171;
      v265 = v439;
      sub_1B4F68C54();
      if (v265)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B08, &qword_1B4F6E648);
      sub_1B4E38850();
      v266 = v355;
      sub_1B4F68C94();
      v267 = v430;
      (*(v354 + 8))(v264, v266);
      (*(v267 + 8))(v171, v170);
      swift_unknownObjectRelease();
      v194 = v319;
      *v319 = v445;
      goto LABEL_70;
    case 7:
      LOBYTE(v445) = 7;
      sub_1B4E34878();
      v235 = v407;
      v175 = v171;
      v236 = v439;
      sub_1B4F68C54();
      if (v236)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B08, &qword_1B4F6E648);
      sub_1B4E38850();
      v237 = v357;
      sub_1B4F68C94();
      v238 = v430;
      (*(v356 + 8))(v235, v237);
      (*(v238 + 8))(v171, v170);
      swift_unknownObjectRelease();
      v194 = v320;
      *v320 = v445;
      goto LABEL_70;
    case 8:
      LOBYTE(v445) = 8;
      sub_1B4E34824();
      v276 = v408;
      v175 = v171;
      v277 = v439;
      sub_1B4F68C54();
      if (v277)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
      sub_1B4E387E4(&qword_1EB8F4D40, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
      v278 = v359;
      sub_1B4F68C94();
      v279 = v430;
      (*(v358 + 8))(v276, v278);
      (*(v279 + 8))(v171, v170);
      swift_unknownObjectRelease();
      v194 = v321;
      *v321 = v445;
      goto LABEL_70;
    case 9:
      LOBYTE(v445) = 9;
      sub_1B4E347D0();
      v211 = v409;
      v175 = v171;
      v212 = v439;
      sub_1B4F68C54();
      if (v212)
      {
        goto LABEL_67;
      }

      sub_1B4F66A54();
      sub_1B4E3FCA0(&qword_1EB8F4D38, MEMORY[0x1E69CC938], MEMORY[0x1E69CC958]);
      v177 = v326;
      v213 = v361;
      sub_1B4F68C94();
      v214 = v430;
      (*(v360 + 8))(v211, v213);
      (*(v214 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 10:
      LOBYTE(v445) = 10;
      sub_1B4E3477C();
      v272 = v410;
      v175 = v171;
      v273 = v439;
      sub_1B4F68C54();
      if (v273)
      {
        goto LABEL_67;
      }

      sub_1B4F66454();
      sub_1B4E3FCA0(&qword_1EB8F4D30, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC218]);
      v177 = v327;
      v274 = v363;
      sub_1B4F68C94();
      v275 = v430;
      (*(v362 + 8))(v272, v274);
      (*(v275 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 11:
      LOBYTE(v445) = 11;
      sub_1B4E34728();
      v199 = v411;
      v175 = v171;
      v200 = v439;
      sub_1B4F68C54();
      if (v200)
      {
        goto LABEL_67;
      }

      sub_1B4F668C4();
      sub_1B4E3FCA0(&qword_1EB8F4D28, MEMORY[0x1E69CC760], MEMORY[0x1E69CC778]);
      v177 = v328;
      v201 = v365;
      sub_1B4F68C94();
      v202 = v430;
      (*(v364 + 8))(v199, v201);
      (*(v202 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 12:
      LOBYTE(v445) = 12;
      sub_1B4E346D4();
      v207 = v412;
      v175 = v171;
      v208 = v439;
      sub_1B4F68C54();
      if (v208)
      {
        goto LABEL_67;
      }

      sub_1B4F66604();
      sub_1B4E3FCA0(&qword_1EB8F4D20, MEMORY[0x1E69CC528], MEMORY[0x1E69CC548]);
      v177 = v329;
      v209 = v367;
      sub_1B4F68C94();
      v210 = v430;
      (*(v366 + 8))(v207, v209);
      (*(v210 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 13:
      LOBYTE(v445) = 13;
      sub_1B4E34680();
      v260 = v413;
      v175 = v171;
      v261 = v439;
      sub_1B4F68C54();
      if (v261)
      {
        goto LABEL_67;
      }

      sub_1B4F66624();
      sub_1B4E3FCA0(&qword_1EB8F4D18, MEMORY[0x1E69CC560], MEMORY[0x1E69CC578]);
      v177 = v330;
      v262 = v369;
      sub_1B4F68C94();
      v263 = v430;
      (*(v368 + 8))(v260, v262);
      (*(v263 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 14:
      LOBYTE(v445) = 14;
      sub_1B4E3462C();
      v195 = v414;
      v175 = v171;
      v196 = v439;
      sub_1B4F68C54();
      if (v196)
      {
        goto LABEL_67;
      }

      sub_1B4F673D4();
      sub_1B4E3FCA0(&qword_1EB8F4D10, MEMORY[0x1E69CD068], MEMORY[0x1E69CD088]);
      v177 = v331;
      v197 = v371;
      sub_1B4F68C94();
      v198 = v430;
      (*(v370 + 8))(v195, v197);
      (*(v198 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 15:
      LOBYTE(v445) = 15;
      sub_1B4E345D8();
      v227 = v415;
      v175 = v171;
      v228 = v439;
      sub_1B4F68C54();
      if (v228)
      {
        goto LABEL_67;
      }

      sub_1B4F67A94();
      sub_1B4E3FCA0(&qword_1EB8F4D08, MEMORY[0x1E69CD370], MEMORY[0x1E69CD390]);
      v177 = v332;
      v229 = v373;
      sub_1B4F68C94();
      v230 = v430;
      (*(v372 + 8))(v227, v229);
      (*(v230 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 16:
      LOBYTE(v445) = 16;
      sub_1B4E344D0();
      v190 = v416;
      v175 = v171;
      v191 = v439;
      sub_1B4F68C54();
      if (v191)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
      sub_1B4E38730();
      v192 = v375;
      sub_1B4F68C94();
      v193 = v430;
      (*(v374 + 8))(v190, v192);
      (*(v193 + 8))(v171, v170);
      swift_unknownObjectRelease();
      v194 = v322;
      *v322 = v445;
      goto LABEL_70;
    case 17:
      LOBYTE(v445) = 17;
      sub_1B4E3447C();
      v242 = v417;
      v175 = v171;
      v243 = v439;
      sub_1B4F68C54();
      if (v243)
      {
        goto LABEL_67;
      }

      sub_1B4F66BA4();
      sub_1B4E3FCA0(&qword_1EB8F4CF0, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAE8]);
      v177 = v333;
      v244 = v377;
      sub_1B4F68C94();
      v245 = v430;
      (*(v376 + 8))(v242, v244);
      (*(v245 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 18:
      LOBYTE(v445) = 18;
      sub_1B4E34428();
      v268 = v418;
      v175 = v171;
      v269 = v439;
      sub_1B4F68C54();
      if (v269)
      {
        goto LABEL_67;
      }

      sub_1B4F65DE4();
      sub_1B4E3FCA0(&qword_1EB8F4CE8, MEMORY[0x1E69CB800], MEMORY[0x1E69CB820]);
      v177 = v334;
      v270 = v379;
      sub_1B4F68C94();
      v271 = v430;
      (*(v378 + 8))(v268, v270);
      (*(v271 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 19:
      LOBYTE(v445) = 19;
      sub_1B4E343D4();
      v284 = v419;
      v175 = v171;
      v285 = v439;
      sub_1B4F68C54();
      if (v285)
      {
        goto LABEL_67;
      }

      sub_1B4F65E04();
      sub_1B4E3FCA0(&qword_1EB8F4CE0, MEMORY[0x1E69CB850], MEMORY[0x1E69CB870]);
      v177 = v335;
      v286 = v381;
      sub_1B4F68C94();
      v287 = v430;
      (*(v380 + 8))(v284, v286);
      (*(v287 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 20:
      LOBYTE(v445) = 20;
      sub_1B4E34380();
      v246 = v420;
      v175 = v171;
      v247 = v439;
      sub_1B4F68C54();
      if (v247)
      {
        goto LABEL_67;
      }

      sub_1B4F66354();
      sub_1B4E3FCA0(&qword_1EB8F4CD8, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFF8]);
      v177 = v336;
      v248 = v383;
      sub_1B4F68C94();
      v249 = v430;
      (*(v382 + 8))(v246, v248);
      (*(v249 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 21:
      LOBYTE(v445) = 21;
      sub_1B4E3432C();
      v254 = v421;
      v175 = v171;
      v255 = v439;
      sub_1B4F68C54();
      if (v255)
      {
        goto LABEL_67;
      }

      v256 = v170;
      v257 = v385;
      v258 = sub_1B4F68C84();
      v259 = v430;
      v306 = v258;
      v308 = v307;
      (*(v384 + 8))(v254, v257);
      (*(v259 + 8))(v171, v256);
      swift_unknownObjectRelease();
      v309 = v323;
      *v323 = v306;
      v309[1] = v308;
      swift_storeEnumTagMultiPayload();
      v305 = v309;
      goto LABEL_72;
    case 22:
      LOBYTE(v445) = 22;
      sub_1B4E342D8();
      v280 = v422;
      v175 = v171;
      v281 = v439;
      sub_1B4F68C54();
      if (v281)
      {
        goto LABEL_67;
      }

      sub_1B4F65C64();
      sub_1B4E3FCA0(&qword_1EB8F4CD0, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB6D0]);
      v177 = v337;
      v282 = v387;
      sub_1B4F68C94();
      v283 = v430;
      (*(v386 + 8))(v280, v282);
      (*(v283 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 23:
      LOBYTE(v445) = 23;
      sub_1B4E34284();
      v288 = v423;
      v175 = v171;
      v289 = v439;
      sub_1B4F68C54();
      if (v289)
      {
        goto LABEL_67;
      }

      sub_1B4F64ED4();
      sub_1B4E3FCA0(&qword_1EB8F4CC8, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB100]);
      v177 = v338;
      v290 = v389;
      sub_1B4F68C94();
      v291 = v430;
      (*(v388 + 8))(v288, v290);
      (*(v291 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 24:
      LOBYTE(v445) = 24;
      sub_1B4E34230();
      v219 = v424;
      v175 = v171;
      v220 = v439;
      sub_1B4F68C54();
      if (v220)
      {
        goto LABEL_67;
      }

      sub_1B4F660C4();
      sub_1B4E3FCA0(&qword_1EB8F4CC0, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE60]);
      v177 = v339;
      v221 = v391;
      sub_1B4F68C94();
      v222 = v430;
      (*(v390 + 8))(v219, v221);
      (*(v222 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 25:
      LOBYTE(v445) = 25;
      sub_1B4E341DC();
      v215 = v425;
      v175 = v171;
      v216 = v439;
      sub_1B4F68C54();
      if (v216)
      {
        goto LABEL_67;
      }

      sub_1B4F66AF4();
      sub_1B4E3FCA0(&qword_1EB8F4CB8, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA20]);
      v177 = v340;
      v217 = v393;
      sub_1B4F68C94();
      v218 = v430;
      (*(v392 + 8))(v215, v217);
      (*(v218 + 8))(v171, v170);
      swift_unknownObjectRelease();
LABEL_69:
      swift_storeEnumTagMultiPayload();
      v305 = v177;
      goto LABEL_72;
    case 26:
      LOBYTE(v445) = 26;
      sub_1B4E34188();
      v301 = v426;
      v175 = v171;
      v302 = v439;
      sub_1B4F68C54();
      if (v302)
      {
        goto LABEL_67;
      }

      sub_1B4F670C4();
      sub_1B4E3FCA0(&qword_1EB8F4CB0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDE8]);
      v298 = v165;
      v303 = v395;
      sub_1B4F68C94();
      v304 = v430;
      (*(v394 + 8))(v301, v303);
      (*(v304 + 8))(v171, v170);
      swift_unknownObjectRelease();
      goto LABEL_71;
    case 27:
      LOBYTE(v445) = 27;
      sub_1B4E34134();
      v186 = v427;
      v175 = v171;
      v187 = v439;
      sub_1B4F68C54();
      if (v187)
      {
        goto LABEL_67;
      }

      sub_1B4F67074();
      sub_1B4E3FCA0(&qword_1EB8F4CA8, MEMORY[0x1E69CCD78], MEMORY[0x1E69CCD98]);
      v188 = v397;
      sub_1B4F68C74();
      v189 = v430;
      (*(v396 + 8))(v186, v188);
      (*(v189 + 8))(v440, v170);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v305 = v166;
      goto LABEL_72;
    case 28:
      LOBYTE(v445) = 28;
      sub_1B4E33FBC();
      v292 = v169;
      v175 = v171;
      v293 = v439;
      sub_1B4F68C54();
      if (v293)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F49A0, &unk_1B4F6E630);
      sub_1B4E3867C();
      v294 = v399;
      sub_1B4F68C94();
      v295 = v430;
      (*(v398 + 8))(v292, v294);
      (*(v295 + 8))(v171, v170);
      swift_unknownObjectRelease();
      v194 = v324;
      *v324 = v445;
LABEL_70:
      swift_storeEnumTagMultiPayload();
      v305 = v194;
      goto LABEL_72;
    case 29:
      LOBYTE(v445) = 29;
      sub_1B4E33F68();
      v296 = v428;
      v175 = v171;
      v297 = v439;
      sub_1B4F68C54();
      if (v297)
      {
LABEL_67:
        (*(v430 + 8))(v175, v170);
        goto LABEL_7;
      }

      sub_1B4F66F74();
      sub_1B4E3FCA0(&qword_1EB8F4C90, MEMORY[0x1E69CCC70], MEMORY[0x1E69CCC90]);
      v298 = v341;
      v299 = v400;
      sub_1B4F68C94();
      v300 = v430;
      (*(v401 + 8))(v296, v299);
      (*(v300 + 8))(v171, v170);
      swift_unknownObjectRelease();
LABEL_71:
      swift_storeEnumTagMultiPayload();
      v305 = v298;
LABEL_72:
      v310 = v318;
      sub_1B4E38618(v305, v318);
      v311 = v438;
      sub_1B4E38618(v310, v429);
      v184 = v311;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v184);
}

uint64_t sub_1B4E38618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4E3867C()
{
  result = qword_1EB8F4C98;
  if (!qword_1EB8F4C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F49A0, &unk_1B4F6E630);
    sub_1B4E3FCA0(&qword_1EB8F4CA0, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCEE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4C98);
  }

  return result;
}

unint64_t sub_1B4E38730()
{
  result = qword_1EB8F4CF8;
  if (!qword_1EB8F4CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F42E8, &unk_1B4F70E80);
    sub_1B4E3FCA0(&qword_1EB8F4D00, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4CF8);
  }

  return result;
}

uint64_t sub_1B4E387E4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4E38850()
{
  result = qword_1EB8F4D48;
  if (!qword_1EB8F4D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B08, &qword_1B4F6E648);
    sub_1B4E3FCA0(&qword_1EB8F4D50, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4D48);
  }

  return result;
}

unint64_t sub_1B4E38904()
{
  result = qword_1EB8F4D60;
  if (!qword_1EB8F4D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B40, &qword_1B4F6E650);
    sub_1B4E3FCA0(&qword_1EB8F4D68, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4D60);
  }

  return result;
}

unint64_t sub_1B4E389B8()
{
  result = qword_1EB8F4D78;
  if (!qword_1EB8F4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4D78);
  }

  return result;
}

uint64_t RemoteBrowsingJournalProperty.hash(into:)(uint64_t a1)
{
  v153 = a1;
  v151 = sub_1B4F66F74();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v1);
  v148 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1B4F67074();
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v3);
  v93 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v146 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v147 = &v92 - v10;
  v11 = sub_1B4F670C4();
  v144 = *(v11 - 8);
  v145 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v143 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4F66AF4();
  v141 = *(v14 - 8);
  v142 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v140 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B4F660C4();
  v138 = *(v17 - 8);
  v139 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v137 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B4F64ED4();
  v135 = *(v20 - 8);
  v136 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v134 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1B4F65C64();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v23);
  v131 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1B4F66354();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v25);
  v128 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1B4F65E04();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v27);
  v125 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1B4F65DE4();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v29);
  v122 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1B4F66BA4();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v31);
  v119 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1B4F67A94();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v33);
  v116 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1B4F673D4();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v35);
  v113 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1B4F66624();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v37);
  v110 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1B4F66604();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v39);
  v107 = &v92 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1B4F668C4();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v41);
  v104 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F66454();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v43);
  v101 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1B4F66A54();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v45);
  v98 = &v92 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1B4F669F4();
  v97 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v47);
  v49 = &v92 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1B4F66754();
  v96 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1B4F65954();
  v95 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v92 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1B4F65184();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v60);
  v62 = &v92 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = (&v92 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B4E33F04(v154, v66);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = v95;
      (*(v95 + 32))(v57, v66, v54);
      MEMORY[0x1B8C82740](1);
      sub_1B4E3FCA0(&qword_1EB8F4E08, MEMORY[0x1E69CB538], MEMORY[0x1E69CB548]);
      sub_1B4F67F24();
      return (*(v86 + 8))(v57, v54);
    case 2u:
      MEMORY[0x1B8C82740](2);
      sub_1B4F66134();
      sub_1B4F67FE4();
      goto LABEL_33;
    case 3u:
      v84 = v96;
      (*(v96 + 32))(v53, v66, v50);
      MEMORY[0x1B8C82740](3);
      sub_1B4E3FCA0(&qword_1EB8F4E00, MEMORY[0x1E69CC658], MEMORY[0x1E69CC668]);
      sub_1B4F67F24();
      return (*(v84 + 8))(v53, v50);
    case 4u:
      v72 = *v66;
      v73 = v153;
      MEMORY[0x1B8C82740](4);
      v74 = &unk_1EDB70020;
      v75 = MEMORY[0x1E69CD2D8];
      v76 = MEMORY[0x1E69CD2D8];
      v77 = MEMORY[0x1E69CD2E8];
      goto LABEL_32;
    case 5u:
      v87 = v97;
      v88 = v94;
      (*(v97 + 32))(v49, v66, v94);
      MEMORY[0x1B8C82740](5);
      sub_1B4E3FCA0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830], MEMORY[0x1E69CC840]);
      sub_1B4F67F24();
      return (*(v87 + 8))(v49, v88);
    case 6u:
      v72 = *v66;
      v85 = 6;
      goto LABEL_24;
    case 7u:
      v72 = *v66;
      v85 = 7;
LABEL_24:
      v73 = v153;
      MEMORY[0x1B8C82740](v85);
      v74 = &unk_1EDB70038;
      v75 = MEMORY[0x1E69CCE28];
      v76 = MEMORY[0x1E69CCE28];
      v77 = MEMORY[0x1E69CCE38];
      goto LABEL_32;
    case 8u:
      v89 = *v66;
      v90 = v153;
      MEMORY[0x1B8C82740](8);
      sub_1B4E3A680(v90, v89);
      goto LABEL_33;
    case 9u:
      v78 = v99;
      v79 = v98;
      v80 = v100;
      (*(v99 + 32))(v98, v66, v100);
      MEMORY[0x1B8C82740](9);
      v81 = &unk_1EB8F4DF0;
      v82 = MEMORY[0x1E69CC938];
      v83 = MEMORY[0x1E69CC948];
      goto LABEL_36;
    case 0xAu:
      v78 = v102;
      v79 = v101;
      v80 = v103;
      (*(v102 + 32))(v101, v66, v103);
      MEMORY[0x1B8C82740](10);
      v81 = &unk_1EB8F4DE8;
      v82 = MEMORY[0x1E69CC1F8];
      v83 = MEMORY[0x1E69CC208];
      goto LABEL_36;
    case 0xBu:
      v78 = v105;
      v79 = v104;
      v80 = v106;
      (*(v105 + 32))(v104, v66, v106);
      MEMORY[0x1B8C82740](11);
      v81 = &unk_1EB8F4DE0;
      v82 = MEMORY[0x1E69CC760];
      v83 = MEMORY[0x1E69CC770];
      goto LABEL_36;
    case 0xCu:
      v78 = v108;
      v79 = v107;
      v80 = v109;
      (*(v108 + 32))(v107, v66, v109);
      MEMORY[0x1B8C82740](12);
      v81 = &unk_1EB8F4DD8;
      v82 = MEMORY[0x1E69CC528];
      v83 = MEMORY[0x1E69CC538];
      goto LABEL_36;
    case 0xDu:
      v78 = v111;
      v79 = v110;
      v80 = v112;
      (*(v111 + 32))(v110, v66, v112);
      MEMORY[0x1B8C82740](13);
      v81 = &unk_1EB8F4DD0;
      v82 = MEMORY[0x1E69CC560];
      v83 = MEMORY[0x1E69CC570];
      goto LABEL_36;
    case 0xEu:
      v78 = v114;
      v79 = v113;
      v80 = v115;
      (*(v114 + 32))(v113, v66, v115);
      MEMORY[0x1B8C82740](14);
      v81 = &unk_1EB8F4DC8;
      v82 = MEMORY[0x1E69CD068];
      v83 = MEMORY[0x1E69CD078];
      goto LABEL_36;
    case 0xFu:
      v78 = v117;
      v79 = v116;
      v80 = v118;
      (*(v117 + 32))(v116, v66, v118);
      MEMORY[0x1B8C82740](15);
      v81 = &unk_1EB8F4180;
      v82 = MEMORY[0x1E69CD370];
      v83 = MEMORY[0x1E69CD380];
      goto LABEL_36;
    case 0x10u:
      v72 = *v66;
      v73 = v153;
      MEMORY[0x1B8C82740](16);
      v74 = &unk_1EDB70088;
      v75 = MEMORY[0x1E69CC5E8];
      v76 = MEMORY[0x1E69CC5E8];
      v77 = MEMORY[0x1E69CC5F8];
      goto LABEL_32;
    case 0x11u:
      v78 = v120;
      v79 = v119;
      v80 = v121;
      (*(v120 + 32))(v119, v66, v121);
      MEMORY[0x1B8C82740](17);
      v81 = &unk_1EB8F4DC0;
      v82 = MEMORY[0x1E69CCAC8];
      v83 = MEMORY[0x1E69CCAD8];
      goto LABEL_36;
    case 0x12u:
      v78 = v123;
      v79 = v122;
      v80 = v124;
      (*(v123 + 32))(v122, v66, v124);
      MEMORY[0x1B8C82740](18);
      v81 = &unk_1EB8F4188;
      v82 = MEMORY[0x1E69CB800];
      v83 = MEMORY[0x1E69CB810];
      goto LABEL_36;
    case 0x13u:
      v78 = v126;
      v79 = v125;
      v80 = v127;
      (*(v126 + 32))(v125, v66, v127);
      MEMORY[0x1B8C82740](19);
      v81 = &unk_1EB8F4190;
      v82 = MEMORY[0x1E69CB850];
      v83 = MEMORY[0x1E69CB860];
      goto LABEL_36;
    case 0x14u:
      v78 = v129;
      v79 = v128;
      v80 = v130;
      (*(v129 + 32))(v128, v66, v130);
      MEMORY[0x1B8C82740](20);
      v81 = &unk_1EB8F4DB8;
      v82 = MEMORY[0x1E69CBFD8];
      v83 = MEMORY[0x1E69CBFE8];
      goto LABEL_36;
    case 0x15u:
      MEMORY[0x1B8C82740](21);
      sub_1B4F67FE4();

    case 0x16u:
      v78 = v132;
      v79 = v131;
      v80 = v133;
      (*(v132 + 32))(v131, v66, v133);
      MEMORY[0x1B8C82740](22);
      v81 = &unk_1EB8F4DB0;
      v82 = MEMORY[0x1E69CB6B0];
      v83 = MEMORY[0x1E69CB6C0];
      goto LABEL_36;
    case 0x17u:
      v79 = v134;
      v78 = v135;
      v80 = v136;
      (*(v135 + 32))(v134, v66, v136);
      MEMORY[0x1B8C82740](23);
      v81 = &unk_1EB8F4DA8;
      v82 = MEMORY[0x1E69CB0E0];
      v83 = MEMORY[0x1E69CB0F0];
      goto LABEL_36;
    case 0x18u:
      v79 = v137;
      v78 = v138;
      v80 = v139;
      (*(v138 + 32))(v137, v66, v139);
      MEMORY[0x1B8C82740](24);
      v81 = &unk_1EB8F4198;
      v82 = MEMORY[0x1E69CBE40];
      v83 = MEMORY[0x1E69CBE50];
      goto LABEL_36;
    case 0x19u:
      v79 = v140;
      v78 = v141;
      v80 = v142;
      (*(v141 + 32))(v140, v66, v142);
      MEMORY[0x1B8C82740](25);
      v81 = &unk_1EB8F4DA0;
      v82 = MEMORY[0x1E69CCA00];
      v83 = MEMORY[0x1E69CCA10];
      goto LABEL_36;
    case 0x1Au:
      v79 = v143;
      v78 = v144;
      v80 = v145;
      (*(v144 + 32))(v143, v66, v145);
      MEMORY[0x1B8C82740](26);
      v81 = &unk_1EB8F41A0;
      v82 = MEMORY[0x1E69CCDC8];
      v83 = MEMORY[0x1E69CCDD8];
      goto LABEL_36;
    case 0x1Bu:
      v68 = v147;
      sub_1B4E340C4(v66, v147);
      MEMORY[0x1B8C82740](27);
      v69 = v146;
      sub_1B4E3C968(v68, v146);
      v70 = v150;
      v71 = v152;
      if ((*(v150 + 48))(v69, 1, v152) == 1)
      {
        sub_1B4F68EA4();
      }

      else
      {
        v91 = v93;
        (*(v70 + 32))(v93, v69, v71);
        sub_1B4F68EA4();
        sub_1B4E3FCA0(&qword_1EB8F4D98, MEMORY[0x1E69CCD78], MEMORY[0x1E69CCD88]);
        sub_1B4F67F24();
        (*(v70 + 8))(v91, v71);
      }

      return sub_1B4DD2BC4(v68, &qword_1EB8F4898, &qword_1B4F6E548);
    case 0x1Cu:
      v72 = *v66;
      v73 = v153;
      MEMORY[0x1B8C82740](28);
      v74 = &unk_1EDB70030;
      v75 = MEMORY[0x1E69CCEC8];
      v76 = MEMORY[0x1E69CCEC8];
      v77 = MEMORY[0x1E69CCED8];
LABEL_32:
      sub_1B4E3A474(v73, v72, v75, v74, v76, v77);
LABEL_33:

      break;
    case 0x1Du:
      v79 = v148;
      v78 = v149;
      v80 = v151;
      (*(v149 + 32))(v148, v66, v151);
      MEMORY[0x1B8C82740](29);
      v81 = &unk_1EB8F4D90;
      v82 = MEMORY[0x1E69CCC70];
      v83 = MEMORY[0x1E69CCC80];
LABEL_36:
      sub_1B4E3FCA0(v81, v82, v83);
      sub_1B4F67F24();
      result = (*(v78 + 8))(v79, v80);
      break;
    default:
      (*(v59 + 32))(v62, v66, v58);
      MEMORY[0x1B8C82740](0);
      sub_1B4E3FCA0(&qword_1EB8F4E10, MEMORY[0x1E69CB238], MEMORY[0x1E69CB248]);
      sub_1B4F67F24();
      result = (*(v59 + 8))(v62, v58);
      break;
  }

  return result;
}

uint64_t RemoteBrowsingJournalProperty.hashValue.getter()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalProperty.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E3A3F0()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalProperty.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E3A434(uint64_t a1)
{
  sub_1B4F68E84();
  RemoteBrowsingJournalProperty.hash(into:)(v2);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E3A474(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v27 - v11;
  v13 = a1[3];
  v33 = a1[2];
  v34 = v13;
  v35 = *(a1 + 8);
  v15 = *a1;
  v14 = a1[1];
  v27[1] = a1;
  v31 = v15;
  v32 = v14;
  v16 = sub_1B4F68EC4();
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v27[3] = v9 + 16;
  v27[4] = v16;
  v27[2] = v9 + 8;

  v22 = 0;
  for (i = 0; v19; v22 ^= v26)
  {
    v24 = i;
LABEL_9:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v9 + 16))(v12, *(a2 + 48) + *(v9 + 72) * (v25 | (v24 << 6)), v8);
    sub_1B4E3FCA0(v28, v29, v30);
    v26 = sub_1B4F67F14();
    result = (*(v9 + 8))(v12, v8);
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return MEMORY[0x1B8C82740](v22);
    }

    v19 = *(a2 + 56 + 8 * v24);
    ++i;
    if (v19)
    {
      i = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4E3A680(__int128 *a1, uint64_t a2)
{
  sub_1B4F68EC4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B8C82740](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1B4F68E84();

        sub_1B4F67FE4();
        v11 = sub_1B4F68EC4();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13SeymourClient29RemoteBrowsingJournalPropertyO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v336 = a2;
  v337 = a1;
  v2 = sub_1B4F66F74();
  v331 = *(v2 - 8);
  v332 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v267 = &v243 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_1B4F67074();
  v269 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270, v5);
  v244 = &v243 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v245 = &v243 - v9;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5108, &qword_1B4F70D80);
  MEMORY[0x1EEE9AC00](v266, v10);
  v268 = &v243 - v11;
  v12 = sub_1B4F670C4();
  v329 = *(v12 - 8);
  v330 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v265 = &v243 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4F66AF4();
  v327 = *(v15 - 8);
  v328 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v264 = &v243 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4F660C4();
  v325 = *(v18 - 8);
  v326 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v263 = &v243 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B4F64ED4();
  v323 = *(v21 - 8);
  v324 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v262 = &v243 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B4F65C64();
  v321 = *(v24 - 8);
  v322 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v261 = &v243 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B4F66354();
  v319 = *(v27 - 8);
  v320 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v260 = &v243 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1B4F65E04();
  v317 = *(v30 - 8);
  v318 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v259 = &v243 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_1B4F65DE4();
  v315 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316, v33);
  v258 = &v243 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_1B4F66BA4();
  v313 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314, v35);
  v257 = &v243 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_1B4F67A94();
  v311 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312, v37);
  v256 = &v243 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = sub_1B4F673D4();
  v309 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310, v39);
  v255 = &v243 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_1B4F66624();
  v307 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308, v41);
  v254 = &v243 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_1B4F66604();
  v305 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306, v43);
  v253 = &v243 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_1B4F668C4();
  v303 = *(v304 - 8);
  MEMORY[0x1EEE9AC00](v304, v45);
  v252 = &v243 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_1B4F66454();
  v301 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302, v47);
  v251 = &v243 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_1B4F66A54();
  v299 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300, v49);
  v250 = &v243 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_1B4F669F4();
  v297 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298, v51);
  v249 = &v243 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_1B4F66754();
  v295 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296, v53);
  v248 = &v243 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_1B4F65954();
  v293 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294, v55);
  v247 = &v243 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1B4F65184();
  v333 = *(v57 - 8);
  v334 = v57;
  MEMORY[0x1EEE9AC00](v57, v58);
  v246 = &v243 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v335, v60);
  v292 = &v243 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v287 = (&v243 - v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v289 = &v243 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v291 = &v243 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v290 = &v243 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v288 = &v243 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v286 = &v243 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v285 = &v243 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v280 = (&v243 - v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  v284 = &v243 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  v283 = &v243 - v91;
  MEMORY[0x1EEE9AC00](v92, v93);
  v282 = &v243 - v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v281 = &v243 - v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v275 = (&v243 - v100);
  MEMORY[0x1EEE9AC00](v101, v102);
  v279 = &v243 - v103;
  MEMORY[0x1EEE9AC00](v104, v105);
  v278 = &v243 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v277 = &v243 - v109;
  MEMORY[0x1EEE9AC00](v110, v111);
  v276 = &v243 - v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  v274 = &v243 - v115;
  MEMORY[0x1EEE9AC00](v116, v117);
  v273 = &v243 - v118;
  MEMORY[0x1EEE9AC00](v119, v120);
  v272 = &v243 - v121;
  MEMORY[0x1EEE9AC00](v122, v123);
  v125 = (&v243 - v124);
  MEMORY[0x1EEE9AC00](v126, v127);
  v129 = (&v243 - v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  v133 = (&v243 - v132);
  MEMORY[0x1EEE9AC00](v134, v135);
  v271 = &v243 - v136;
  MEMORY[0x1EEE9AC00](v137, v138);
  v140 = (&v243 - v139);
  MEMORY[0x1EEE9AC00](v141, v142);
  v144 = &v243 - v143;
  MEMORY[0x1EEE9AC00](v145, v146);
  v148 = &v243 - v147;
  MEMORY[0x1EEE9AC00](v149, v150);
  v152 = &v243 - v151;
  MEMORY[0x1EEE9AC00](v153, v154);
  v156 = &v243 - v155;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5110, &qword_1B4F70D88);
  MEMORY[0x1EEE9AC00](v157 - 8, v158);
  v160 = &v243 - v159;
  v162 = (&v243 + *(v161 + 56) - v159);
  sub_1B4E33F04(v337, &v243 - v159);
  v337 = v162;
  sub_1B4E33F04(v336, v162);
  v163 = v160;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4E33F04(v160, v152);
      v202 = v337;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v203 = v293;
        v204 = v247;
        v205 = v294;
        (*(v293 + 32))(v247, v202, v294);
        v198 = MEMORY[0x1B8C7F1D0](v152, v204);
        v206 = *(v203 + 8);
        v206(v204, v205);
        v206(v152, v205);
        goto LABEL_72;
      }

      (*(v293 + 8))(v152, v294);
      goto LABEL_96;
    case 2u:
      sub_1B4E33F04(v160, v148);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_96;
      }

      v189 = sub_1B4F66134();
      v191 = v190;
      if (v189 == sub_1B4F66134() && v191 == v192)
      {
        goto LABEL_45;
      }

      v238 = sub_1B4F68D54();

      if ((v238 & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_46;
    case 3u:
      sub_1B4E33F04(v160, v144);
      v194 = v337;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v195 = v295;
        v196 = v248;
        v197 = v296;
        (*(v295 + 32))(v248, v194, v296);
        v198 = sub_1B4F66734();
        v199 = *(v195 + 8);
        v199(v196, v197);
        v199(v144, v197);
        goto LABEL_72;
      }

      (*(v295 + 8))(v144, v296);
      goto LABEL_96;
    case 4u:
      sub_1B4E33F04(v160, v140);
      v183 = *v140;
      v184 = v337;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_86;
      }

      sub_1B4EDD738(v183, *v184);
      goto LABEL_65;
    case 5u:
      v176 = v271;
      sub_1B4E33F04(v160, v271);
      v209 = v337;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v178 = v297;
        v179 = v249;
        v180 = v298;
        (*(v297 + 32))(v249, v209, v298);
        v181 = MEMORY[0x1B8C80280](v176, v179);
        goto LABEL_71;
      }

      (*(v297 + 8))(v176, v298);
      goto LABEL_96;
    case 6u:
      sub_1B4E33F04(v160, v133);
      v200 = *v133;
      v201 = v337;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_50;
      }

      goto LABEL_86;
    case 7u:
      sub_1B4E33F04(v160, v129);
      v200 = *v129;
      v201 = v337;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_86;
      }

LABEL_50:
      sub_1B4EDDAE8(v200, *v201);
      goto LABEL_65;
    case 8u:
      sub_1B4E33F04(v160, v125);
      v219 = *v125;
      v220 = v337;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_86;
      }

      v175 = sub_1B4EDDE98(v219, *v220);
      goto LABEL_65;
    case 9u:
      v176 = v272;
      sub_1B4E33F04(v160, v272);
      v186 = v337;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v178 = v299;
        v179 = v250;
        v180 = v300;
        (*(v299 + 32))(v250, v186, v300);
        v181 = MEMORY[0x1B8C802E0](v176, v179);
        goto LABEL_71;
      }

      (*(v299 + 8))(v176, v300);
      goto LABEL_96;
    case 0xAu:
      v176 = v273;
      sub_1B4E33F04(v160, v273);
      v218 = v337;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v178 = v301;
        v179 = v251;
        v180 = v302;
        (*(v301 + 32))(v251, v218, v302);
        v181 = sub_1B4F66434();
        goto LABEL_71;
      }

      (*(v301 + 8))(v176, v302);
      goto LABEL_96;
    case 0xBu:
      v176 = v274;
      sub_1B4E33F04(v160, v274);
      v182 = v337;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v178 = v303;
        v179 = v252;
        v180 = v304;
        (*(v303 + 32))(v252, v182, v304);
        v181 = MEMORY[0x1B8C80160](v176, v179);
        goto LABEL_71;
      }

      (*(v303 + 8))(v176, v304);
      goto LABEL_96;
    case 0xCu:
      v176 = v276;
      sub_1B4E33F04(v160, v276);
      v185 = v337;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v178 = v305;
        v179 = v253;
        v180 = v306;
        (*(v305 + 32))(v253, v185, v306);
        v181 = sub_1B4F665F4();
        goto LABEL_71;
      }

      (*(v305 + 8))(v176, v306);
      goto LABEL_96;
    case 0xDu:
      v176 = v277;
      sub_1B4E33F04(v160, v277);
      v216 = v337;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v178 = v307;
        v179 = v254;
        v180 = v308;
        (*(v307 + 32))(v254, v216, v308);
        v181 = MEMORY[0x1B8C7FEC0](v176, v179);
        goto LABEL_71;
      }

      (*(v307 + 8))(v176, v308);
      goto LABEL_96;
    case 0xEu:
      v176 = v278;
      sub_1B4E33F04(v160, v278);
      v177 = v337;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v178 = v309;
        v179 = v255;
        v180 = v310;
        (*(v309 + 32))(v255, v177, v310);
        v181 = MEMORY[0x1B8C80C70](v176, v179);
        goto LABEL_71;
      }

      (*(v309 + 8))(v176, v310);
      goto LABEL_96;
    case 0xFu:
      v176 = v279;
      sub_1B4E33F04(v160, v279);
      v193 = v337;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v178 = v311;
        v179 = v256;
        v180 = v312;
        (*(v311 + 32))(v256, v193, v312);
        v181 = MEMORY[0x1B8C81310](v176, v179);
        goto LABEL_71;
      }

      (*(v311 + 8))(v176, v312);
      goto LABEL_96;
    case 0x10u:
      v172 = v275;
      sub_1B4E33F04(v160, v275);
      v173 = *v172;
      v174 = v337;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_86;
      }

      sub_1B4EDE050(v173, *v174);
      goto LABEL_65;
    case 0x11u:
      v176 = v281;
      sub_1B4E33F04(v160, v281);
      v207 = v337;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v178 = v313;
        v179 = v257;
        v180 = v314;
        (*(v313 + 32))(v257, v207, v314);
        v181 = MEMORY[0x1B8C80430](v176, v179);
        goto LABEL_71;
      }

      (*(v313 + 8))(v176, v314);
      goto LABEL_96;
    case 0x12u:
      v176 = v282;
      sub_1B4E33F04(v160, v282);
      v217 = v337;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v178 = v315;
        v179 = v258;
        v180 = v316;
        (*(v315 + 32))(v258, v217, v316);
        v181 = sub_1B4F65DD4();
        goto LABEL_71;
      }

      (*(v315 + 8))(v176, v316);
      goto LABEL_96;
    case 0x13u:
      v176 = v283;
      sub_1B4E33F04(v160, v283);
      v222 = v337;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v178 = v317;
        v180 = v318;
        v179 = v259;
        (*(v317 + 32))(v259, v222, v318);
        v181 = MEMORY[0x1B8C7F6A0](v176, v179);
        goto LABEL_71;
      }

      v231 = v317;
      v230 = v318;
      goto LABEL_95;
    case 0x14u:
      v176 = v284;
      sub_1B4E33F04(v160, v284);
      v208 = v337;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v178 = v319;
        v180 = v320;
        v179 = v260;
        (*(v319 + 32))(v260, v208, v320);
        v181 = MEMORY[0x1B8C7FBC0](v176, v179);
        goto LABEL_71;
      }

      v231 = v319;
      v230 = v320;
      goto LABEL_95;
    case 0x15u:
      v210 = v280;
      sub_1B4E33F04(v160, v280);
      v212 = *v210;
      v211 = v210[1];
      v213 = v337;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_86;
      }

      v214 = *v213;
      v215 = v213[1];
      if (v212 == v214 && v211 == v215)
      {
LABEL_45:

        goto LABEL_46;
      }

      v239 = sub_1B4F68D54();

      if ((v239 & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_46;
    case 0x16u:
      v176 = v285;
      sub_1B4E33F04(v160, v285);
      v221 = v337;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v178 = v321;
        v180 = v322;
        v179 = v261;
        (*(v321 + 32))(v261, v221, v322);
        v181 = MEMORY[0x1B8C7F4F0](v176, v179);
        goto LABEL_71;
      }

      v231 = v321;
      v230 = v322;
      goto LABEL_95;
    case 0x17u:
      v176 = v286;
      sub_1B4E33F04(v160, v286);
      v223 = v337;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        v178 = v323;
        v180 = v324;
        v179 = v262;
        (*(v323 + 32))(v262, v223, v324);
        v181 = MEMORY[0x1B8C7E740](v176, v179);
        goto LABEL_71;
      }

      v231 = v323;
      v230 = v324;
      goto LABEL_95;
    case 0x18u:
      v176 = v288;
      sub_1B4E33F04(v160, v288);
      v188 = v337;
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        v178 = v325;
        v180 = v326;
        v179 = v263;
        (*(v325 + 32))(v263, v188, v326);
        v181 = MEMORY[0x1B8C7F960](v176, v179);
        goto LABEL_71;
      }

      v231 = v325;
      v230 = v326;
      goto LABEL_95;
    case 0x19u:
      v176 = v290;
      sub_1B4E33F04(v160, v290);
      v187 = v337;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v178 = v327;
        v180 = v328;
        v179 = v264;
        (*(v327 + 32))(v264, v187, v328);
        v181 = sub_1B4F66AE4();
        goto LABEL_71;
      }

      v231 = v327;
      v230 = v328;
      goto LABEL_95;
    case 0x1Au:
      v176 = v291;
      sub_1B4E33F04(v160, v291);
      v228 = v337;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v178 = v329;
        v180 = v330;
        v179 = v265;
        (*(v329 + 32))(v265, v228, v330);
        v181 = MEMORY[0x1B8C80950](v176, v179);
        goto LABEL_71;
      }

      v231 = v329;
      v230 = v330;
      goto LABEL_95;
    case 0x1Bu:
      v165 = v289;
      sub_1B4E33F04(v160, v289);
      v166 = v337;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v167 = *(v266 + 48);
        v168 = v268;
        sub_1B4E340C4(v165, v268);
        sub_1B4E340C4(v166, v168 + v167);
        v169 = v269;
        v170 = *(v269 + 48);
        v171 = v270;
        if (v170(v168, 1, v270) == 1)
        {
          if (v170(v168 + v167, 1, v171) == 1)
          {
            sub_1B4DD2BC4(v168, &qword_1EB8F4898, &qword_1B4F6E548);
LABEL_46:
            sub_1B4E3FC44(v163);
            v198 = 1;
            return v198 & 1;
          }
        }

        else
        {
          v237 = v245;
          sub_1B4E3C968(v168, v245);
          if (v170(v168 + v167, 1, v171) != 1)
          {
            v240 = v244;
            (*(v169 + 32))(v244, v168 + v167, v171);
            sub_1B4E3FCA0(&qword_1EB8F5118, MEMORY[0x1E69CCD78], MEMORY[0x1E69CCD90]);
            v241 = sub_1B4F67F54();
            v242 = *(v169 + 8);
            v242(v240, v171);
            v242(v237, v171);
            sub_1B4DD2BC4(v168, &qword_1EB8F4898, &qword_1B4F6E548);
            if (v241)
            {
              goto LABEL_46;
            }

            goto LABEL_108;
          }

          (*(v169 + 8))(v237, v171);
        }

        sub_1B4DD2BC4(v168, &qword_1EB8F5108, &qword_1B4F70D80);
LABEL_108:
        sub_1B4E3FC44(v163);
        goto LABEL_97;
      }

      sub_1B4DD2BC4(v165, &qword_1EB8F4898, &qword_1B4F6E548);
LABEL_96:
      sub_1B4DD2BC4(v160, &qword_1EB8F5110, &qword_1B4F70D88);
LABEL_97:
      v198 = 0;
      return v198 & 1;
    case 0x1Cu:
      v224 = v287;
      sub_1B4E33F04(v160, v287);
      v225 = *v224;
      v226 = v337;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
LABEL_86:

        goto LABEL_96;
      }

      sub_1B4EDE400(v225, *v226);
LABEL_65:
      v198 = v175;

      goto LABEL_72;
    case 0x1Du:
      v176 = v292;
      sub_1B4E33F04(v160, v292);
      v227 = v337;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v178 = v331;
        v180 = v332;
        v179 = v267;
        (*(v331 + 32))(v267, v227, v332);
        v181 = MEMORY[0x1B8C807E0](v176, v179);
LABEL_71:
        v198 = v181;
        v229 = *(v178 + 8);
        v229(v179, v180);
        v229(v176, v180);
        goto LABEL_72;
      }

      v231 = v331;
      v230 = v332;
LABEL_95:
      (*(v231 + 8))(v176, v230);
      goto LABEL_96;
    default:
      sub_1B4E33F04(v160, v156);
      v164 = v337;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v333 + 8))(v156, v334);
        goto LABEL_96;
      }

      v234 = v333;
      v233 = v334;
      v235 = v246;
      (*(v333 + 32))(v246, v164, v334);
      v198 = MEMORY[0x1B8C7E9F0](v156, v235);
      v236 = *(v234 + 8);
      v236(v235, v233);
      v236(v156, v233);
LABEL_72:
      sub_1B4E3FC44(v163);
      return v198 & 1;
  }
}

uint64_t sub_1B4E3C968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B4E3CA70(uint64_t a1)
{
  sub_1B4F65184();
  if (v1 <= 0x3F)
  {
    sub_1B4F65954();
    if (v2 <= 0x3F)
    {
      sub_1B4F66754();
      if (v3 <= 0x3F)
      {
        sub_1B4E3CCE8(319);
        if (v4 <= 0x3F)
        {
          sub_1B4F669F4();
          if (v5 <= 0x3F)
          {
            sub_1B4E3CD7C(319);
            if (v6 <= 0x3F)
            {
              sub_1B4E3CE10();
              if (v7 <= 0x3F)
              {
                sub_1B4F66A54();
                if (v8 <= 0x3F)
                {
                  sub_1B4F66454();
                  if (v9 <= 0x3F)
                  {
                    sub_1B4F668C4();
                    if (v10 <= 0x3F)
                    {
                      sub_1B4F66604();
                      if (v11 <= 0x3F)
                      {
                        sub_1B4F66624();
                        if (v12 <= 0x3F)
                        {
                          sub_1B4F673D4();
                          if (v13 <= 0x3F)
                          {
                            sub_1B4F67A94();
                            if (v14 <= 0x3F)
                            {
                              sub_1B4E3CE68(319);
                              if (v15 <= 0x3F)
                              {
                                sub_1B4F66BA4();
                                if (v16 <= 0x3F)
                                {
                                  sub_1B4F65DE4();
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1B4F65E04();
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1B4F66354();
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1B4F65C64();
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1B4F64ED4();
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1B4F660C4();
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1B4F66AF4();
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1B4F670C4();
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1B4E3CEFC(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1B4E3CF54(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1B4F66F74();
                                                      if (v27 <= 0x3F)
                                                      {
                                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B4E3CCE8(uint64_t a1)
{
  if (!qword_1EDB6DAE0)
  {
    sub_1B4F679C4();
    sub_1B4E3FCA0(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
    v1 = sub_1B4F68554();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB6DAE0);
    }
  }
}

void sub_1B4E3CD7C(uint64_t a1)
{
  if (!qword_1EDB6DAF0)
  {
    sub_1B4F67124();
    sub_1B4E3FCA0(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
    v1 = sub_1B4F68554();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB6DAF0);
    }
  }
}

void sub_1B4E3CE10()
{
  if (!qword_1EDB6DA98)
  {
    v0 = sub_1B4F68554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB6DA98);
    }
  }
}

void sub_1B4E3CE68(uint64_t a1)
{
  if (!qword_1EDB6DB08)
  {
    sub_1B4F66674();
    sub_1B4E3FCA0(&qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
    v1 = sub_1B4F68554();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB6DB08);
    }
  }
}

void sub_1B4E3CEFC(uint64_t a1)
{
  if (!qword_1EDB70040)
  {
    sub_1B4F67074();
    v1 = sub_1B4F687D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB70040);
    }
  }
}

void sub_1B4E3CF54(uint64_t a1)
{
  if (!qword_1EDB6DAE8)
  {
    sub_1B4F67154();
    sub_1B4E3FCA0(&qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
    v1 = sub_1B4F68554();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB6DAE8);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteBrowsingJournalProperty.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteBrowsingJournalProperty.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4E3D324()
{
  result = qword_1EB8F4E20;
  if (!qword_1EB8F4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E20);
  }

  return result;
}

unint64_t sub_1B4E3D37C()
{
  result = qword_1EB8F4E28;
  if (!qword_1EB8F4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E28);
  }

  return result;
}

unint64_t sub_1B4E3D3D4()
{
  result = qword_1EB8F4E30;
  if (!qword_1EB8F4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E30);
  }

  return result;
}

unint64_t sub_1B4E3D42C()
{
  result = qword_1EB8F4E38;
  if (!qword_1EB8F4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E38);
  }

  return result;
}

unint64_t sub_1B4E3D484()
{
  result = qword_1EB8F4E40;
  if (!qword_1EB8F4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E40);
  }

  return result;
}

unint64_t sub_1B4E3D4DC()
{
  result = qword_1EB8F4E48;
  if (!qword_1EB8F4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E48);
  }

  return result;
}

unint64_t sub_1B4E3D534()
{
  result = qword_1EB8F4E50;
  if (!qword_1EB8F4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E50);
  }

  return result;
}

unint64_t sub_1B4E3D58C()
{
  result = qword_1EB8F4E58;
  if (!qword_1EB8F4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E58);
  }

  return result;
}

unint64_t sub_1B4E3D5E4()
{
  result = qword_1EB8F4E60;
  if (!qword_1EB8F4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E60);
  }

  return result;
}

unint64_t sub_1B4E3D63C()
{
  result = qword_1EB8F4E68;
  if (!qword_1EB8F4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E68);
  }

  return result;
}

unint64_t sub_1B4E3D694()
{
  result = qword_1EB8F4E70;
  if (!qword_1EB8F4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E70);
  }

  return result;
}

unint64_t sub_1B4E3D6EC()
{
  result = qword_1EB8F4E78;
  if (!qword_1EB8F4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E78);
  }

  return result;
}

unint64_t sub_1B4E3D744()
{
  result = qword_1EB8F4E80;
  if (!qword_1EB8F4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E80);
  }

  return result;
}

unint64_t sub_1B4E3D79C()
{
  result = qword_1EB8F4E88;
  if (!qword_1EB8F4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E88);
  }

  return result;
}

unint64_t sub_1B4E3D7F4()
{
  result = qword_1EB8F4E90;
  if (!qword_1EB8F4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E90);
  }

  return result;
}

unint64_t sub_1B4E3D84C()
{
  result = qword_1EB8F4E98;
  if (!qword_1EB8F4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E98);
  }

  return result;
}

unint64_t sub_1B4E3D8A4()
{
  result = qword_1EB8F4EA0;
  if (!qword_1EB8F4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EA0);
  }

  return result;
}

unint64_t sub_1B4E3D8FC()
{
  result = qword_1EB8F4EA8;
  if (!qword_1EB8F4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EA8);
  }

  return result;
}

unint64_t sub_1B4E3D954()
{
  result = qword_1EB8F4EB0;
  if (!qword_1EB8F4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EB0);
  }

  return result;
}

unint64_t sub_1B4E3D9AC()
{
  result = qword_1EB8F4EB8;
  if (!qword_1EB8F4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EB8);
  }

  return result;
}

unint64_t sub_1B4E3DA04()
{
  result = qword_1EB8F4EC0;
  if (!qword_1EB8F4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EC0);
  }

  return result;
}

unint64_t sub_1B4E3DA5C()
{
  result = qword_1EB8F4EC8;
  if (!qword_1EB8F4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EC8);
  }

  return result;
}

unint64_t sub_1B4E3DAB4()
{
  result = qword_1EB8F4ED0;
  if (!qword_1EB8F4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4ED0);
  }

  return result;
}

unint64_t sub_1B4E3DB0C()
{
  result = qword_1EB8F4ED8;
  if (!qword_1EB8F4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4ED8);
  }

  return result;
}

unint64_t sub_1B4E3DB64()
{
  result = qword_1EB8F4EE0;
  if (!qword_1EB8F4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EE0);
  }

  return result;
}

unint64_t sub_1B4E3DBBC()
{
  result = qword_1EB8F4EE8;
  if (!qword_1EB8F4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EE8);
  }

  return result;
}

unint64_t sub_1B4E3DC14()
{
  result = qword_1EB8F4EF0;
  if (!qword_1EB8F4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EF0);
  }

  return result;
}

unint64_t sub_1B4E3DC6C()
{
  result = qword_1EB8F4EF8;
  if (!qword_1EB8F4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EF8);
  }

  return result;
}

unint64_t sub_1B4E3DCC4()
{
  result = qword_1EB8F4F00;
  if (!qword_1EB8F4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F00);
  }

  return result;
}

unint64_t sub_1B4E3DD1C()
{
  result = qword_1EB8F4F08;
  if (!qword_1EB8F4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F08);
  }

  return result;
}

unint64_t sub_1B4E3DD74()
{
  result = qword_1EB8F4F10;
  if (!qword_1EB8F4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F10);
  }

  return result;
}

unint64_t sub_1B4E3DDCC()
{
  result = qword_1EB8F4F18;
  if (!qword_1EB8F4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F18);
  }

  return result;
}

unint64_t sub_1B4E3DE24()
{
  result = qword_1EB8F4F20;
  if (!qword_1EB8F4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F20);
  }

  return result;
}

unint64_t sub_1B4E3DE7C()
{
  result = qword_1EB8F4F28;
  if (!qword_1EB8F4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F28);
  }

  return result;
}

unint64_t sub_1B4E3DED4()
{
  result = qword_1EB8F4F30;
  if (!qword_1EB8F4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F30);
  }

  return result;
}

unint64_t sub_1B4E3DF2C()
{
  result = qword_1EB8F4F38;
  if (!qword_1EB8F4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F38);
  }

  return result;
}

unint64_t sub_1B4E3DF84()
{
  result = qword_1EB8F4F40;
  if (!qword_1EB8F4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F40);
  }

  return result;
}

unint64_t sub_1B4E3DFDC()
{
  result = qword_1EB8F4F48;
  if (!qword_1EB8F4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F48);
  }

  return result;
}

unint64_t sub_1B4E3E034()
{
  result = qword_1EB8F4F50;
  if (!qword_1EB8F4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F50);
  }

  return result;
}

unint64_t sub_1B4E3E08C()
{
  result = qword_1EB8F4F58;
  if (!qword_1EB8F4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F58);
  }

  return result;
}

unint64_t sub_1B4E3E0E4()
{
  result = qword_1EB8F4F60;
  if (!qword_1EB8F4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F60);
  }

  return result;
}

unint64_t sub_1B4E3E13C()
{
  result = qword_1EB8F4F68;
  if (!qword_1EB8F4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F68);
  }

  return result;
}

unint64_t sub_1B4E3E194()
{
  result = qword_1EB8F4F70;
  if (!qword_1EB8F4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F70);
  }

  return result;
}

unint64_t sub_1B4E3E1EC()
{
  result = qword_1EB8F4F78;
  if (!qword_1EB8F4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F78);
  }

  return result;
}

unint64_t sub_1B4E3E244()
{
  result = qword_1EB8F4F80;
  if (!qword_1EB8F4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F80);
  }

  return result;
}

unint64_t sub_1B4E3E29C()
{
  result = qword_1EB8F4F88;
  if (!qword_1EB8F4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F88);
  }

  return result;
}

unint64_t sub_1B4E3E2F4()
{
  result = qword_1EB8F4F90;
  if (!qword_1EB8F4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F90);
  }

  return result;
}

unint64_t sub_1B4E3E34C()
{
  result = qword_1EB8F4F98;
  if (!qword_1EB8F4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F98);
  }

  return result;
}

unint64_t sub_1B4E3E3A4()
{
  result = qword_1EB8F4FA0;
  if (!qword_1EB8F4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FA0);
  }

  return result;
}

unint64_t sub_1B4E3E3FC()
{
  result = qword_1EB8F4FA8;
  if (!qword_1EB8F4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FA8);
  }

  return result;
}

unint64_t sub_1B4E3E454()
{
  result = qword_1EB8F4FB0;
  if (!qword_1EB8F4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FB0);
  }

  return result;
}

unint64_t sub_1B4E3E4AC()
{
  result = qword_1EB8F4FB8;
  if (!qword_1EB8F4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FB8);
  }

  return result;
}

unint64_t sub_1B4E3E504()
{
  result = qword_1EB8F4FC0;
  if (!qword_1EB8F4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FC0);
  }

  return result;
}

unint64_t sub_1B4E3E55C()
{
  result = qword_1EB8F4FC8;
  if (!qword_1EB8F4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FC8);
  }

  return result;
}

unint64_t sub_1B4E3E5B4()
{
  result = qword_1EB8F4FD0;
  if (!qword_1EB8F4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FD0);
  }

  return result;
}

unint64_t sub_1B4E3E60C()
{
  result = qword_1EB8F4FD8;
  if (!qword_1EB8F4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FD8);
  }

  return result;
}

unint64_t sub_1B4E3E664()
{
  result = qword_1EB8F4FE0;
  if (!qword_1EB8F4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FE0);
  }

  return result;
}

unint64_t sub_1B4E3E6BC()
{
  result = qword_1EB8F4FE8;
  if (!qword_1EB8F4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FE8);
  }

  return result;
}

unint64_t sub_1B4E3E714()
{
  result = qword_1EB8F4FF0;
  if (!qword_1EB8F4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FF0);
  }

  return result;
}

unint64_t sub_1B4E3E76C()
{
  result = qword_1EB8F4FF8;
  if (!qword_1EB8F4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FF8);
  }

  return result;
}

unint64_t sub_1B4E3E7C4()
{
  result = qword_1EB8F5000;
  if (!qword_1EB8F5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5000);
  }

  return result;
}

unint64_t sub_1B4E3E81C()
{
  result = qword_1EB8F5008;
  if (!qword_1EB8F5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5008);
  }

  return result;
}

unint64_t sub_1B4E3E874()
{
  result = qword_1EB8F5010;
  if (!qword_1EB8F5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5010);
  }

  return result;
}

unint64_t sub_1B4E3E8CC()
{
  result = qword_1EB8F5018;
  if (!qword_1EB8F5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5018);
  }

  return result;
}

unint64_t sub_1B4E3E924()
{
  result = qword_1EB8F5020;
  if (!qword_1EB8F5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5020);
  }

  return result;
}

unint64_t sub_1B4E3E97C()
{
  result = qword_1EB8F5028;
  if (!qword_1EB8F5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5028);
  }

  return result;
}

unint64_t sub_1B4E3E9D4()
{
  result = qword_1EB8F5030;
  if (!qword_1EB8F5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5030);
  }

  return result;
}

unint64_t sub_1B4E3EA2C()
{
  result = qword_1EB8F5038;
  if (!qword_1EB8F5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5038);
  }

  return result;
}

unint64_t sub_1B4E3EA84()
{
  result = qword_1EB8F5040;
  if (!qword_1EB8F5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5040);
  }

  return result;
}

unint64_t sub_1B4E3EADC()
{
  result = qword_1EB8F5048;
  if (!qword_1EB8F5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5048);
  }

  return result;
}

unint64_t sub_1B4E3EB34()
{
  result = qword_1EB8F5050;
  if (!qword_1EB8F5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5050);
  }

  return result;
}

unint64_t sub_1B4E3EB8C()
{
  result = qword_1EB8F5058;
  if (!qword_1EB8F5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5058);
  }

  return result;
}

unint64_t sub_1B4E3EBE4()
{
  result = qword_1EB8F5060;
  if (!qword_1EB8F5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5060);
  }

  return result;
}

unint64_t sub_1B4E3EC3C()
{
  result = qword_1EB8F5068;
  if (!qword_1EB8F5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5068);
  }

  return result;
}

unint64_t sub_1B4E3EC94()
{
  result = qword_1EB8F5070;
  if (!qword_1EB8F5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5070);
  }

  return result;
}

unint64_t sub_1B4E3ECEC()
{
  result = qword_1EB8F5078;
  if (!qword_1EB8F5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5078);
  }

  return result;
}

unint64_t sub_1B4E3ED44()
{
  result = qword_1EB8F5080;
  if (!qword_1EB8F5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5080);
  }

  return result;
}

unint64_t sub_1B4E3ED9C()
{
  result = qword_1EB8F5088;
  if (!qword_1EB8F5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5088);
  }

  return result;
}

unint64_t sub_1B4E3EDF4()
{
  result = qword_1EB8F5090;
  if (!qword_1EB8F5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5090);
  }

  return result;
}

unint64_t sub_1B4E3EE4C()
{
  result = qword_1EB8F5098;
  if (!qword_1EB8F5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5098);
  }

  return result;
}

unint64_t sub_1B4E3EEA4()
{
  result = qword_1EB8F50A0;
  if (!qword_1EB8F50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50A0);
  }

  return result;
}

unint64_t sub_1B4E3EEFC()
{
  result = qword_1EB8F50A8;
  if (!qword_1EB8F50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50A8);
  }

  return result;
}

unint64_t sub_1B4E3EF54()
{
  result = qword_1EB8F50B0;
  if (!qword_1EB8F50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50B0);
  }

  return result;
}

unint64_t sub_1B4E3EFAC()
{
  result = qword_1EB8F50B8;
  if (!qword_1EB8F50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50B8);
  }

  return result;
}

unint64_t sub_1B4E3F004()
{
  result = qword_1EB8F50C0;
  if (!qword_1EB8F50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50C0);
  }

  return result;
}

unint64_t sub_1B4E3F05C()
{
  result = qword_1EB8F50C8;
  if (!qword_1EB8F50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50C8);
  }

  return result;
}

unint64_t sub_1B4E3F0B4()
{
  result = qword_1EB8F50D0;
  if (!qword_1EB8F50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50D0);
  }

  return result;
}

unint64_t sub_1B4E3F10C()
{
  result = qword_1EB8F50D8;
  if (!qword_1EB8F50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50D8);
  }

  return result;
}

unint64_t sub_1B4E3F164()
{
  result = qword_1EB8F50E0;
  if (!qword_1EB8F50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50E0);
  }

  return result;
}

unint64_t sub_1B4E3F1BC()
{
  result = qword_1EB8F50E8;
  if (!qword_1EB8F50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50E8);
  }

  return result;
}

unint64_t sub_1B4E3F214()
{
  result = qword_1EB8F50F0;
  if (!qword_1EB8F50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50F0);
  }

  return result;
}

unint64_t sub_1B4E3F26C()
{
  result = qword_1EB8F50F8;
  if (!qword_1EB8F50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50F8);
  }

  return result;
}

unint64_t sub_1B4E3F2C4()
{
  result = qword_1EB8F5100;
  if (!qword_1EB8F5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5100);
  }

  return result;
}

uint64_t sub_1B4E3F318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xED000073676E6952;
  if (v4 || (sub_1B4F68D54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEF6E6F6973736553 || (sub_1B4F68D54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4F80B00 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4F80B20 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE900000000000073 || (sub_1B4F68D54() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F80B40 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4F80B60 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F80B80 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001B4F80BA0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F80BD0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4F80BF0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4F80C10 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F80C30 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F80C50 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4F80C70 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4F80CA0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B4F80CC0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4F80CE0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4F80D00 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4F80D20 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164 || (sub_1B4F68D54() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x75517478654E7075 && a2 == 0xEF6D657449657565 || (sub_1B4F68D54() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4F80D40 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4F80D60 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F80D80 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4F80DA0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4F80DC0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B4F80DE0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4F80E00 == a2)
  {

    return 29;
  }

  else
  {
    v6 = sub_1B4F68D54();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t sub_1B4E3FC44(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E3FCA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicTrackEnded.musicTrack.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64AD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MusicTrackEnded.init(musicTrack:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MusicTrackEnded(uint64_t a1)
{
  result = qword_1EB8F5120;
  if (!qword_1EB8F5120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E3FE58(uint64_t a1)
{
  result = sub_1B4F64AD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RecentSearchTermsUpdated.changeset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66BB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RecentSearchTermsUpdated.init(changeset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66BB4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for RecentSearchTermsUpdated(uint64_t a1)
{
  result = qword_1EDB70848;
  if (!qword_1EDB70848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E4001C(uint64_t a1)
{
  result = sub_1B4F66BB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4E40088(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t GatedResource.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GatedResource.init(logger:)(a1, v3, v4, v5);
  return v2;
}

uint64_t GatedResource.init(logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for GatedResource.State(0, *(*v4 + 80), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v16 - v9);
  v11 = qword_1EDB73080;
  v12 = sub_1B4F67C54();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4 + v11, a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F682C4();
  *v10 = sub_1B4F68204();
  swift_storeEnumTagMultiPayload();
  v14 = sub_1B4E41C00(v10, v6);
  (*(v7 + 8))(v10, v6);
  (*(v13 + 8))(a1, v12);
  *(v4 + qword_1EDB73088) = v14;
  return v4;
}

uint64_t GatedResource.deinit()
{
  v1 = qword_1EDB73080;
  v2 = sub_1B4F67C54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GatedResource.__deallocating_deinit()
{
  GatedResource.deinit();

  return swift_deallocClassInstance();
}

uint64_t GatedResource.queueCount.getter()
{
  v1 = *(v0 + qword_1EDB73088);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4E41C80(v1 + v2, v4, v5, &v7);
  os_unfair_lock_unlock((v1 + v3));
  return v7;
}

uint64_t sub_1B4E404E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for GatedResource.State(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, a1, v7, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    result = (*(v8 + 8))(v12, v7);
    v15 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F682C4();
    v15 = sub_1B4F68234();
  }

  *a5 = v15;
  *(a5 + 8) = EnumCaseMultiPayload != 0;
  return result;
}

void GatedResource.query()(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_1EDB73088);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B4E41C9C(v3 + v4, v6, v7, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1B4E40724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for GatedResource.State(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, a1, v8, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v9 + 8))(v13, v8);
    sub_1B4E4219C();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  if (EnumCaseMultiPayload == 1)
  {
    return swift_willThrow();
  }

  return (*(*(a2 - 8) + 32))(a5, v13, a2);
}

uint64_t GatedResource.fetch()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E408E8, 0, 0);
}

uint64_t sub_1B4E408E8()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_1B4E409B8;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x29286863746566, 0xE700000000000000, sub_1B4E41CB8, v5, v3);
}

uint64_t sub_1B4E409B8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E40AEC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1B4E40B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + qword_1EDB73088);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1B4E42180((v2 + v3));
  os_unfair_lock_unlock((v2 + v4));
}

void sub_1B4E40BA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v15 = type metadata accessor for GatedResource.State(0, v5, v13, v14);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = (&v38 - v19);
  (*(v16 + 16))(&v38 - v19, a1, v15, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = *v20;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
      sub_1B4F682C4();
      sub_1B4F682A4();
    }

    else
    {
      (*(v6 + 32))(v12, v20, v5);
      (*(v6 + 16))(v8, v12, v5);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
      sub_1B4F682C4();
      sub_1B4F682B4();
      (*(v6 + 8))(v12, v5);
    }
  }

  else
  {
    (*(v16 + 8))(a1, v15);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
    v22 = sub_1B4F682C4();
    sub_1B4F68D14();
    v23 = *(v22 - 8);
    swift_allocObject();
    sub_1B4F681D4();
    (*(v23 + 16))(v24, v39, v22);
    sub_1B4F68254();
    v25 = sub_1B4F681F4();

    *a1 = v25;
    swift_storeEnumTagMultiPayload();
    v41 = a3;
    v26 = sub_1B4F67F94();
    v28 = v27;

    v29 = sub_1B4F67C34();
    v30 = sub_1B4F685E4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136446722;
      v33 = sub_1B4DC4F88(v26, v28, &v41);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2082;
      v40 = v5;
      swift_getMetatypeMetadata();
      v34 = sub_1B4F67F94();
      v36 = sub_1B4DC4F88(v34, v35, &v41);

      *(v31 + 14) = v36;
      *(v31 + 22) = 2048;
      v37 = sub_1B4F68234();

      if (__OFADD__(v37, 1))
      {
        __break(1u);
      }

      else
      {
        *(v31 + 24) = v37 + 1;

        _os_log_impl(&dword_1B4DC2000, v29, v30, "[%{public}s] GatedResource<%{public}s> is now at %ld", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C831D0](v32, -1, -1);
        MEMORY[0x1B8C831D0](v31, -1, -1);
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

void GatedResource.release(with:)(uint64_t a1)
{
  v2 = *(v1 + qword_1EDB73088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F682C4();
  sub_1B4F68254();
  sub_1B4F687D4();
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1B4E41CC0((v2 + v3), &v7);
  os_unfair_lock_unlock((v2 + v4));
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v5, v6);
    swift_getWitnessTable();
    sub_1B4F68114();
  }
}

uint64_t sub_1B4E41268@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v67 = a4;
  v64 = a3;
  v6 = *(*a2 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v68 = sub_1B4F68F14();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v65 = &v55 - v17;
  v20 = type metadata accessor for GatedResource.State(0, v6, v18, v19);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = (&v55 - v24);
  (*(v21 + 16))(&v55 - v24, a1, v20, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = *(v21 + 8);
  if (EnumCaseMultiPayload)
  {
    result = v27(v25, v20);
    v29 = 0;
  }

  else
  {
    v59 = v7;
    v60 = v14;
    v61 = v10;
    v62 = a1;
    v27(a1, v20);
    v29 = *v25;
    v70 = a2;
    v58 = sub_1B4F67F94();
    v31 = v30;
    v32 = v65;
    v33 = v64;
    v63 = *(v66 + 16);
    v63(v65, v64, v68);
    swift_bridgeObjectRetain_n();
    v34 = sub_1B4F67C34();
    v35 = sub_1B4F685E4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v57 = v20;
      v55 = v34;
      v37 = v36;
      v56 = swift_slowAlloc();
      v70 = v56;
      *v37 = 136447234;
      v38 = sub_1B4DC4F88(v58, v31, &v70);
      LODWORD(v58) = v35;
      v39 = v38;

      *(v37 + 4) = v39;
      *(v37 + 12) = 2082;
      v40 = v6;
      v69 = v6;
      swift_getMetatypeMetadata();
      v41 = sub_1B4F67F94();
      v43 = sub_1B4DC4F88(v41, v42, &v70);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2048;
      sub_1B4F682C4();
      v44 = sub_1B4F68234();

      *(v37 + 24) = v44;

      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2080;
      v45 = v68;
      v63(v60, v32, v68);
      v46 = v33;
      v47 = sub_1B4F67F94();
      v49 = v48;
      v50 = v45;
      v6 = v40;
      (*(v66 + 8))(v32, v50);
      v51 = sub_1B4DC4F88(v47, v49, &v70);

      *(v37 + 44) = v51;
      v33 = v46;
      v52 = v55;
      _os_log_impl(&dword_1B4DC2000, v55, v58, "[%{public}s] GatedResource<%{public}s> (%ld) released with %{mask.hash}s", v37, 0x34u);
      v53 = v56;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v53, -1, -1);
      MEMORY[0x1B8C831D0](v37, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v66 + 8))(v32, v68);
    }

    v54 = v61;
    v63(v61, v33, v68);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v62 = *v54;
    }

    else
    {
      (*(*(v6 - 8) + 32))(v62, v54, v6);
    }

    result = swift_storeEnumTagMultiPayload();
  }

  *v67 = v29;
  return result;
}

uint64_t sub_1B4E417E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v4 = sub_1B4F682C4();
  return sub_1B4E4CECC(a2, v4);
}

Swift::Void __swiftcall GatedResource.reset()()
{
  v1 = *(v0 + qword_1EDB73088);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4E41CF8((v1 + v2), v4, v5, v6);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4E41900(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GatedResource.State(0, *(*a2 + 80), a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  v10._countAndFlagsBits = 0x29287465736572;
  v11._object = 0x80000001B4F80E30;
  v11._countAndFlagsBits = 0xD000000000000021;
  v10._object = 0xE700000000000000;
  Logger.trace(file:function:)(v11, v10);
  (*(v6 + 16))(v9, a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v6 + 8);
  if (!EnumCaseMultiPayload)
  {
    return v13(v9, v5);
  }

  v13(a1, v5);
  v13(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F682C4();
  *a1 = sub_1B4F68204();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B4E41B1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE13F0;

  return GatedResource.fetch()(a1);
}

uint64_t sub_1B4E41C00(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B4F68A24();
  return sub_1B4F68A14();
}

uint64_t sub_1B4E41D18(uint64_t a1)
{
  result = sub_1B4F67C54();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4E41DF8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F682C4();
  result = sub_1B4F68254();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4E41EB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1B4E41FC8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1B4E4219C()
{
  result = qword_1EB8F5138;
  if (!qword_1EB8F5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5138);
  }

  return result;
}

uint64_t sub_1B4E421F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void *PrivacyPreferenceClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E435D8(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4E423DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  v12 = a4(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v19 - v14;
  ObjectType = swift_getObjectType();
  v17 = a5(0);
  (*(*(v17 - 8) + 16))(v15, a1, v17);
  (*(a3 + 8))(v15, v12, a6, ObjectType, a3);
  return sub_1B4E443F0(v15, a7);
}

uint64_t sub_1B4E42600(char a1, __int16 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v17 = a2;
  v16 = a1;
  v13 = *(v11 + 32);
  v14 = a3(0);
  return v13(&v17, &v16, MEMORY[0x1E69E6370], v14, MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], a4, a5, ObjectType, v11);
}

uint64_t PrivacyPreferenceClient.queryAllPrivacyAcknowledgements()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v8 = 273;
  v3 = *(v1 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
  v5 = sub_1B4E21010();
  v6 = sub_1B4E21094();
  return v3(&v8, v4, v5, v6, ObjectType, v1);
}

uint64_t PrivacyPreferenceClient.queryPrivacyAcknowledgement(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v34 = a2;
  v36 = a4;
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80);
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v12 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v38 = 273;
  v14 = *(v12 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
  v16 = sub_1B4E21010();
  v17 = sub_1B4E21094();
  v30 = v11;
  v14(&v38, v15, v16, v17, ObjectType, v12);
  v18 = swift_allocObject();
  v19 = v34;
  *(v18 + 16) = v37;
  *(v18 + 24) = v19;
  v20 = v35 & 1;
  *(v18 + 32) = v35 & 1;
  v21 = v31;
  v22 = v32;
  v23 = v11;
  v24 = v33;
  (*(v32 + 16))(v31, v23, v33);
  v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v26 = swift_allocObject();
  (*(v22 + 32))(v26 + v25, v21, v24);
  v27 = (v26 + ((v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_1B4E4386C;
  v27[1] = v18;
  sub_1B4E43934(v37, v19, v20);
  sub_1B4F66674();
  sub_1B4F675F4();
  return (*(v22 + 8))(v30, v24);
}

uint64_t sub_1B4E42A24@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v8 = sub_1B4F66674();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v38 = &v37 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5140, &qword_1B4F70ED8);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v37 - v25;
  sub_1B4E43934(a2, a3, a4 & 1);

  v28 = sub_1B4E43C28(v27, a2, a3, a4 & 1);
  sub_1B4DE5390(a2, a3, a4 & 1);
  sub_1B4E24418(v28, v26);

  v40 = v26;
  sub_1B4E44044(v26, v22);
  if ((*(v9 + 48))(v22, 1, v8) == 1)
  {
    sub_1B4E440B4(v22);
    sub_1B4E43934(a2, a3, a4 & 1);
    sub_1B4F66654();
    v29 = v39;
    (*(v9 + 16))(v39, v15, v8);
    v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v31 = swift_allocObject();
    (*(v9 + 32))(v31 + v30, v29, v8);
    sub_1B4F67604();
  }

  else
  {
    v32 = *(v9 + 32);
    v33 = v38;
    v32(v38, v22, v8);
    (*(v9 + 16))(v15, v33, v8);
    v34 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v35 = swift_allocObject();
    v32((v35 + v34), v15, v8);
    sub_1B4F67604();
    v15 = v33;
  }

  (*(v9 + 8))(v15, v8);
  return sub_1B4E440B4(v40);
}

uint64_t PrivacyPreferenceClient.insertPrivacyAcknowledgement(for:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1B4F66674();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E43934(a1, a2, a3 & 1);
  sub_1B4F66654();
  v12 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 274;
  (*(v12 + 16))(&v16, v11, v7, MEMORY[0x1E69CC5D0], MEMORY[0x1E69CC5D8], ObjectType, v12);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B4E42F58(uint64_t a1, __int16 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = a2;
  v12 = *(v10 + 16);
  v13 = a3(0);
  return v12(&v16, a1, v13, a4, a5, ObjectType, v10);
}

uint64_t sub_1B4E43038(__int16 a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v14 = a1;
  v11 = *(v9 + 24);
  v12 = a2(0);
  return v11(&v14, v12, a3, a4, ObjectType, v9);
}

uint64_t sub_1B4E431E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1B4F66674();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  sub_1B4E43934(a1, a2, a3 & 1);
  sub_1B4F66654();
  v13 = *(v12 + 24);
  ObjectType = swift_getObjectType();
  v17 = 274;
  (*(v13 + 16))(&v17, v11, v7, MEMORY[0x1E69CC5D0], MEMORY[0x1E69CC5D8], ObjectType, v13);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B4E4337C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v13 = *(*v7 + 24);
  ObjectType = swift_getObjectType();
  v18 = a4;
  v15 = *(v13 + 16);
  v16 = a5(0);
  return v15(&v18, a1, v16, a6, a7, ObjectType, v13);
}

uint64_t sub_1B4E4345C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = *(*v6 + 24);
  ObjectType = swift_getObjectType();
  v16 = a3;
  v13 = *(v11 + 24);
  v14 = a4(0);
  return v13(&v16, v14, a5, a6, ObjectType, v11);
}

unint64_t *sub_1B4E43508(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E43934(a4, a5, a6 & 1);
    sub_1B4E43994(v11, a2, a3, a4, a5, a6 & 1);
    v13 = v12;

    sub_1B4DE5390(a4, a5, a6 & 1);
    sub_1B4DE5390(a4, a5, a6 & 1);
    return v13;
  }

  return result;
}

void *sub_1B4E435D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 53;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = sub_1B4F668C4();

  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E44468, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CC750], MEMORY[0x1E69CC758]);

  v17 = a1;
  v16 = 54;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = sub_1B4F66624();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E4446C, v11, ObjectType, v12, &protocol witness table for XPCClient, MEMORY[0x1E69CC550], MEMORY[0x1E69CC558]);

  v17 = a1;
  v16 = 55;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = sub_1B4F673D4();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E44470, v13, ObjectType, v14, &protocol witness table for XPCClient, MEMORY[0x1E69CD058], MEMORY[0x1E69CD060]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E437EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC6AB0(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4E43878(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4E1DE10(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1B4E43934(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_1B4E43994(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v37 = a2;
  v45 = a4;
  v46 = a5;
  v38 = a1;
  v55 = sub_1B4F66674();
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v55, v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v13 = 0;
  v47 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v43 = v9 + 16;
  v44 = v9;
  v42 = v9 + 8;
  v41 = a6 & 1;
  v21 = v9;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v48 = (v19 - 1) & v19;
LABEL_11:
    v25 = v22 | (v13 << 6);
    v26 = *(v47 + 48);
    v27 = *(v21 + 72);
    v40 = v25;
    (*(v21 + 16))(v12, v26 + v27 * v25, v55, v10);
    v28 = sub_1B4F66664();
    v30 = v29;
    v52 = v28;
    v53 = v29;
    v32 = v31 & 1;
    v54 = v31 & 1;
    v49 = v45;
    v50 = v46;
    v51 = v41;
    sub_1B4E44228();
    sub_1B4E4427C();
    v33 = sub_1B4F65064();
    sub_1B4DE5390(v28, v30, v32);
    (*(v21 + 8))(v12, v55);
    v19 = v48;
    if (v33)
    {
      *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_15:
        v35 = v47;

        sub_1B4EE6A20(v38, v37, v39, v35);
        return;
      }
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_15;
    }

    v24 = *(v15 + 8 * v13);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v48 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E43C28(int64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v63 = *MEMORY[0x1E69E9840];
  v51 = sub_1B4F66674();
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v11);
  v50 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v13 = v12 & 0x3F;
  v43 = ((1 << v12) + 63) >> 6;
  v14 = 8 * v43;
  v53 = a4;
  v54 = a2;
  v55 = a3;
  v15 = sub_1B4E43934(a2, a3, a4 & 1);
  if (v13 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42[1] = v5;
    v42[0] = v42;
    MEMORY[0x1EEE9AC00](v15, v16);
    v44 = v42 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v44, v14);
    v45 = 0;
    v17 = 0;
    v52 = a1;
    v18 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(a1 + 56);
    a1 = (v19 + 63) >> 6;
    v47 = v10 + 8;
    v48 = v10 + 16;
    v5 = v10;
    v49 = v10;
    v10 = v51;
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v56 = (v21 - 1) & v21;
LABEL_12:
      v25 = v22 | (v17 << 6);
      v26 = *(v52 + 48);
      v27 = *(v5 + 72);
      v46 = v25;
      v28 = v50;
      (*(v5 + 16))(v50, v26 + v27 * v25, v10);
      v14 = sub_1B4F66664();
      v30 = v29;
      v60 = v14;
      v61 = v29;
      v32 = v31 & 1;
      v62 = v31 & 1;
      v57 = v54;
      v58 = v55;
      v59 = v53 & 1;
      sub_1B4E44228();
      sub_1B4E4427C();
      v33 = sub_1B4F65064();
      v34 = v30;
      v5 = v49;
      sub_1B4DE5390(v14, v34, v32);
      (*(v5 + 8))(v28, v10);
      v21 = v56;
      if (v33)
      {
        *&v44[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
        if (__OFADD__(v45++, 1))
        {
          __break(1u);
LABEL_16:
          v36 = sub_1B4EE6A20(v44, v43, v45, v52);
          sub_1B4DE5390(v54, v55, v53 & 1);
          return v36;
        }
      }
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= a1)
      {
        goto LABEL_16;
      }

      v24 = *(v18 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v56 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();
  v39 = v53;
  v41 = v54;
  v40 = v55;
  sub_1B4E43934(v54, v55, v53 & 1);
  v36 = sub_1B4E43508(v38, v43, a1, v41, v40, v39 & 1);

  MEMORY[0x1B8C831D0](v38, -1, -1);
  sub_1B4DE5390(v41, v40, v39 & 1);
  return v36;
}

uint64_t sub_1B4E44044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5140, &qword_1B4F70ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4E440B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5140, &qword_1B4F70ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_1B4F66674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_1B4E44228()
{
  result = qword_1EB8F5148;
  if (!qword_1EB8F5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5148);
  }

  return result;
}

unint64_t sub_1B4E4427C()
{
  result = qword_1EB8F5150;
  if (!qword_1EB8F5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5150);
  }

  return result;
}

uint64_t sub_1B4E443F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HealthKitStandaloneWorkoutJobProcessed.healthKitStandaloneWorkoutJob.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67194();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HealthKitStandaloneWorkoutJobProcessed.init(healthKitStandaloneWorkoutJob:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F67194();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for HealthKitStandaloneWorkoutJobProcessed(uint64_t a1)
{
  result = qword_1EDB6E0D0;
  if (!qword_1EDB6E0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E445CC(uint64_t a1)
{
  result = sub_1B4F67194();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4E44684()
{
  result = qword_1EB8F45F8;
  if (!qword_1EB8F45F8)
  {
    sub_1B4F64F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F45F8);
  }

  return result;
}

uint64_t sub_1B4E44728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = sub_1B4F64F54();
  sub_1B4E44684();
  v7 = swift_allocError();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69CB130], v6);
  *(swift_allocObject() + 16) = v7;
  a4(0);

  return sub_1B4F67604();
}

id sub_1B4E448C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  return v2;
}

uint64_t dispatch thunk of CatalogClientProtocol.queryCatalogSyncAnchor()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 336) + **(a3 + 336));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE13F0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CatalogClientProtocol.enumerateCatalogWorkoutReferences(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 352) + **(a4 + 352));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t MultiUserSessionUpdated.multiUserSession.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65DB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserSessionUpdated.init(multiUserSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65DB4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserSessionUpdated(uint64_t a1)
{
  result = qword_1EDB708D8;
  if (!qword_1EDB708D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1B4E4505C(uint64_t a1)
{
  v2 = sub_1B4F65804();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = sub_1B4F677E4();
  v29 = v7;
  [v7 setActivityType_];
  sub_1B4F67734();
  v9 = sub_1B4F657F4();
  v11 = v10;
  v13 = v12;
  v30 = *(v3 + 8);
  v31 = v3 + 8;
  v30(v6, v2);
  v32 = v9;
  v33 = v11;
  v34 = v13 & 1;
  v35 = 0;
  sub_1B4E4537C();
  sub_1B4E453D0();
  LOBYTE(v3) = sub_1B4F65074();
  v14 = v11;
  v15 = a1;
  sub_1B4DE5390(v9, v14, v13 & 1);
  if (v3 & 1) != 0 || (sub_1B4F67734(), v16 = sub_1B4F657F4(), v18 = v17, v20 = v19, v30(v6, v2), v32 = v16, v33 = v18, v20 &= 1u, v34 = v20, v35 = 1, v21 = sub_1B4F65074(), sub_1B4DE5390(v16, v18, v20), (v21))
  {
    v22 = v29;
    v23 = v29;
    [v23 setLocationType_];
    v24 = 1;
    [v23 setShouldDisambiguateLocation_];
  }

  else
  {
    v22 = v29;
    v24 = 2;
    [v29 setLocationType_];
  }

  [v22 setFitnessPlusMediaType_];
  sub_1B4F67734();
  sub_1B4F655E4();
  v30(v6, v2);
  v25 = sub_1B4F67F64();

  [v22 setFitnessPlusCatalogWorkoutId_];

  v26 = sub_1B4F678C4();
  (*(*(v26 - 8) + 8))(v15, v26);
  return v22;
}

unint64_t sub_1B4E4537C()
{
  result = qword_1EB8F5158;
  if (!qword_1EB8F5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5158);
  }

  return result;
}

unint64_t sub_1B4E453D0()
{
  result = qword_1EB8F5160;
  if (!qword_1EB8F5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5160);
  }

  return result;
}

uint64_t MetricTopicRoutingBehavior.clickStreamTopic(isSubscribed:platform:)(char a1, unsigned __int8 a2, unsigned int a3)
{
  if (a3 <= 1u)
  {
    if (a1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    if (a3)
    {
      return a3;
    }

    else
    {
      return v3;
    }
  }

  if (a3 == 2)
  {
    return 3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v8 = &unk_1F2CD4228;
    }

    else
    {
      v8 = &unk_1F2CD4258;
    }

    goto LABEL_17;
  }

  if (a2)
  {
    v8 = &unk_1F2CD41E8;
LABEL_17:
    v7 = sub_1B4DE2E78(v8);
    goto LABEL_18;
  }

  v6 = sub_1B4DE2E78(&unk_1F2CD4178);
  v7 = sub_1B4E45848(&unk_1F2CD41C0, v6);
LABEL_18:
  v9 = sub_1B4E45514(0x22u, v7);

  if (a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  if (v9)
  {
    return 4;
  }

  else
  {
    return v10;
  }
}

BOOL sub_1B4E45514(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v3);
  v4 = sub_1B4F68EC4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_1B4E45660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v29 = a5;
  v8 = a3(0);
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  v20 = 0;
  v30 = a2;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v25 = v20;
LABEL_9:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    sub_1B4E2C950(*(a1 + 48) + *(v28 + 72) * (v26 | (v25 << 6)), v19, a4);
    sub_1B4E2CA18(v19, v11, a4);
    v29(v15, v11);
    sub_1B4E2C9B8(v15, a4);
  }

  while (1)
  {
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return;
    }

    v23 = *(a1 + 56 + 8 * v25);
    ++v20;
    if (v23)
    {
      v20 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E45848(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B4E79538(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1B4E458A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64E14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v21 - v12;
  v22 = a2;
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v4, v11);
      sub_1B4E78E28(v13, v8);
      (*(v15 - 8))(v13, v4);
      v18 += v19;
      --v14;
    }

    while (v14);
    return v22;
  }

  return a2;
}

uint64_t CommentaryEventStarted.commentaryEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65A44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CommentaryEventStarted.init(commentaryEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CommentaryEventStarted(uint64_t a1)
{
  result = qword_1EB8F5168;
  if (!qword_1EB8F5168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E45B84(uint64_t a1)
{
  result = sub_1B4F65A44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AssetRequest.ExpirationPolicy.interval.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 && !a1)
  {
    return sub_1B4F684D4();
  }

  else
  {
    return sub_1B4F684C4();
  }
}

uint64_t BlockingPromise.init(_:timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1B4F67674();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for BlockingPromise(0, a2, v9, v10);
  *(a3 + *(result + 28)) = a4;
  return result;
}

uint64_t BlockingPromise.resolve()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v35 = a2;
  v42 = sub_1B4F67D94();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v11 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v12 = sub_1B4F68F14();
  v13 = sub_1B4F687D4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v21 = dispatch_semaphore_create(0);
  v36 = *(v12 - 8);
  v37 = v12;
  (*(v36 + 56))(v20, 1, 1, v12);
  v22 = sub_1B4E41C7C(v20, v13);
  (*(v14 + 8))(v20, v13);
  v23 = swift_allocObject();
  v23[2] = v11;
  v23[3] = v22;
  v23[4] = v21;
  v39 = v11;
  sub_1B4F67674();

  v24 = v21;
  sub_1B4F67644();

  sub_1B4F67D84();
  sub_1B4F684E4();
  sub_1B4F67DB4();
  v25 = *(v41 + 8);
  v26 = v24;
  v27 = v42;
  v25(v6, v42);
  LOBYTE(v6) = sub_1B4F68714();
  v28 = (v25)(v10, v27);
  if (v6)
  {
    sub_1B4E463C8();
    swift_allocError();
    *v30 = 0;
LABEL_6:
    swift_willThrow();
  }

  MEMORY[0x1EEE9AC00](v28, v29);
  v32 = v38;
  v31 = v39;
  *(&v35 - 2) = v39;
  sub_1B4E40088(sub_1B4E463AC, (&v35 - 4), v22);
  if ((*(v36 + 48))(v32, 1, v37) == 1)
  {
    sub_1B4E463C8();
    swift_allocError();
    *v33 = 1;
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_6;
  }

  return (*(*(v31 - 8) + 32))(v35, v32, v31);
}

uint64_t sub_1B4E4613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a4;
  v6[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68F14();
  sub_1B4F687D4();
  sub_1B4E40088(sub_1B4E464BC, v6, a2);
  return sub_1B4F68724();
}

uint64_t sub_1B4E461E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v5 = sub_1B4F68F14();
  v6 = sub_1B4F687D4();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *(v5 - 8);
  (*(v7 + 16))(a1, a2, v5);
  return (*(v7 + 56))(a1, 0, 1, v5);
}

uint64_t sub_1B4E462FC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68F14();
  v5 = sub_1B4F687D4();
  return (*(*(v5 - 8) + 16))(a3, a1, v5);
}

unint64_t sub_1B4E463C8()
{
  result = qword_1EB8F5178;
  if (!qword_1EB8F5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5178);
  }

  return result;
}

uint64_t sub_1B4E4641C(uint64_t a1, double a2)
{
  result = sub_1B4F67674();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ActivityRingsUpdated.activityRings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActivityRingsUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityRingsUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ActivityRingsUpdated(uint64_t a1)
{
  result = qword_1EB8F5180;
  if (!qword_1EB8F5180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityRingsUpdated.init(activityRings:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F65184();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ActivityRingsUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4E46688(uint64_t a1)
{
  result = sub_1B4F65184();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4E467B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1B4DF4344(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B4E281EC();
        v13 = v16;
      }

      result = sub_1B4E8BE20(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1B4E5E444(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_1B4E468A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B4DC933C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1B4E5E574(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1B4E48D78(a1);
    sub_1B4F63230(a2, a3, v9);

    return sub_1B4E48D78(v9);
  }

  return result;
}

uint64_t EventHub.__allocating_init(queue:dispatchStrategy:timerProvider:)(uint64_t a1, _BYTE *a2, void *a3)
{
  v6 = swift_allocObject();
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = MEMORY[0x1EEE9AC00](v9, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1B4E488FC(a1, a2, v12, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v14;
}

uint64_t sub_1B4E46A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4F687D4();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v37 - v21;
  v38 = a2;
  v39 = v6;
  v23 = *(v6 + 80);
  v24 = a5;
  v26 = v25;
  v42 = a4;
  v43 = v24;
  v44 = a2;
  v45 = a3;
  v28 = v27;
  v40 = a3;
  v46 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51A0, &qword_1B4F71178);
  sub_1B4E40088(sub_1B4E48DE0, v41, v23);
  (*(v26 + 16))(v18, v22, v28);
  if ((*(v12 + 48))(v18, 1, a4) == 1)
  {
    v29 = *(v26 + 8);
    v29(v18, v28);
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB72490);
    v31 = v40;

    v32 = sub_1B4F67C34();
    v33 = sub_1B4F685C4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_1B4DC4F88(v38, v31, &v47);
      _os_log_impl(&dword_1B4DC2000, v32, v33, "Attempted to deliver %{public}s, but found no queued event", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1B8C831D0](v35, -1, -1);
      MEMORY[0x1B8C831D0](v34, -1, -1);
    }

    return (v29)(v22, v28);
  }

  else
  {
    (*(v12 + 32))(v14, v18, a4);
    sub_1B4DCD994(v14, a4, v24);
    (*(v12 + 8))(v14, a4);
    return (*(v26 + 8))(v22, v28);
  }
}

uint64_t sub_1B4E46E20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v56 = a5;
  v11 = sub_1B4F687D4();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v53 = &v48 - v17;
  v20 = type metadata accessor for PublishRecord(255, a4, v18, v19);
  v57 = sub_1B4F687D4();
  v21 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v48 - v27;
  v51 = a1;
  v52 = a3;
  v29 = *a1;
  v30 = *(v29 + 16);
  v50 = a2;
  if (v30 && (v31 = sub_1B4DF4344(a2, a3), (v32 & 1) != 0))
  {
    sub_1B4DC40A0(*(v29 + 56) + 40 * v31, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5190, &qword_1B4F71168);
    v33 = swift_dynamicCast();
    v34 = *(v20 - 8);
    (*(v34 + 56))(v28, v33 ^ 1u, 1, v20);
  }

  else
  {
    v34 = *(v20 - 8);
    (*(v34 + 56))(v28, 1, 1, v20);
  }

  v35 = v57;
  (*(v21 + 16))(v24, v28, v57);
  v36 = v34;
  if ((*(v34 + 48))(v24, 1, v20) == 1)
  {
    (*(v21 + 8))(v24, v35);
    v37 = *(a4 - 8);
    v38 = v53;
    (*(v37 + 56))(v53, 1, 1, a4);
    v40 = v54;
    v39 = v55;
  }

  else
  {
    v49 = v14;
    v38 = v53;
    v40 = v54;
    v39 = v55;
    (*(v54 + 16))(v53, &v24[*(v20 + 28)], v55);
    (*(v36 + 8))(v24, v20);
    v37 = *(a4 - 8);
    if ((*(v37 + 48))(v38, 1, a4) != 1)
    {
      v41 = v56;
      (*(v37 + 32))(v56, v38, a4);
      v42 = *(v37 + 56);
      v43 = v49;
      v42(v49, 1, 1, a4);
      v58[3] = v20;
      v58[4] = &protocol witness table for PublishRecord<A>;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      PublishRecord.init(lastDelivery:queuedEvent:timer:)(v43, 0, a4, boxed_opaque_existential_1, a6, v45);
      v46 = v52;

      sub_1B4E468A4(v58, v50, v46);
      v42(v41, 0, 1, a4);
      return (*(v21 + 8))(v28, v57);
    }
  }

  (*(v40 + 8))(v38, v39);
  (*(v37 + 56))(v56, 1, 1, a4);
  return (*(v21 + 8))(v28, v57);
}

uint64_t EventHub.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t EventHub.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1B4E473D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v61 = a7;
  v62 = a5;
  v67 = a4;
  v15 = sub_1B4F64964();
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B4F687D4();
  v68 = *(v19 - 8);
  v69 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v61 - v21;
  v25 = type metadata accessor for PublishRecord(255, a6, v23, v24);
  v26 = sub_1B4F687D4();
  v63 = *(v26 - 8);
  v64 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v61 - v28;
  v72 = *(v25 - 8);
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v30, v31);
  v71 = (&v61 - v33);
  v70 = a1;
  v34 = *a1;
  if (*(*a1 + 16) && (v35 = sub_1B4DF4344(a2, a3), (v36 & 1) != 0))
  {
    v37 = a3;
    sub_1B4DC40A0(*(v34 + 56) + 40 * v35, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5190, &qword_1B4F71168);
    v38 = swift_dynamicCast();
    v39 = v72;
    (*(v72 + 56))(v29, v38 ^ 1u, 1, v25);
    if ((*(v39 + 48))(v29, 1, v25) != 1)
    {
      v40 = v71;
      (*(v39 + 32))(v71, v29, v25);
      v41 = a2;
      goto LABEL_8;
    }
  }

  else
  {
    v37 = a3;
    v39 = v72;
    (*(v72 + 56))(v29, 1, 1, v25, v32);
  }

  (*(*(a6 - 8) + 56))(v22, 1, 1, a6);
  sub_1B4F648D4();
  sub_1B4F648A4();
  v43 = v42;
  (v65[1])(v18, v66);
  v40 = v71;
  PublishRecord.init(lastDelivery:queuedEvent:timer:)(v22, 0, a6, v71, v43, v44);
  v45 = (*(v39 + 48))(v29, 1, v25);
  v41 = a2;
  if (v45 != 1)
  {
    (*(v63 + 8))(v29, v64);
  }

LABEL_8:
  if (*(v40 + *(v25 + 32)))
  {
    v46 = *(a6 - 8);
    (*(v46 + 16))(v22, v67, a6);
    (*(v46 + 56))(v22, 0, 1, a6);
    v74 = v25;
    v75 = &protocol witness table for PublishRecord<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);

    sub_1B4EF8BB4(0.0, 1, v22, 0, v25, boxed_opaque_existential_1);
    (*(v68 + 8))(v22, v69);
    sub_1B4E468A4(v73, v41, v37);
    return (*(v72 + 8))(v40, v25);
  }

  else
  {
    if (a9 - (a8 - *v40) < 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = a9 - (a8 - *v40);
    }

    v50 = v62;
    v51 = v62[7];
    v52 = v62[8];
    v53 = __swift_project_boxed_opaque_existential_1(v62 + 4, v51);
    v64 = v50[2];
    v65 = v53;
    v54 = swift_allocObject();
    v55 = v61;
    *(v54 + 16) = a6;
    *(v54 + 24) = v55;
    *(v54 + 32) = v50;
    *(v54 + 40) = v41;
    *(v54 + 48) = v37;
    *(v54 + 56) = v49 + a8;
    v66 = v41;
    v56 = *(v52 + 8);

    v57 = v56(v64, sub_1B4E48D40, v54, v51, v52, v49);

    v58 = *(a6 - 8);
    (*(v58 + 16))(v22, v67, a6);
    (*(v58 + 56))(v22, 0, 1, a6);
    v74 = v25;
    v75 = &protocol witness table for PublishRecord<A>;
    v59 = __swift_allocate_boxed_opaque_existential_1(v73);

    swift_unknownObjectRetain();
    v60 = v71;
    sub_1B4EF8BB4(0.0, 1, v22, v57, v25, v59);
    swift_unknownObjectRelease();
    (*(v68 + 8))(v22, v69);
    sub_1B4E468A4(v73, v66, v37);
    swift_unknownObjectRelease();
    return (*(v72 + 8))(v60, v25);
  }
}

uint64_t EventHub.subscribe<A>(_:subscriptionToken:handler:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a3;
  v13[5] = a4;

  EventHub.subscribe<A>(_:subscriptionToken:handler:)(a2, sub_1B4E48A28, v13, a5, a6, x8_0);
}

double EventHub.subscribe<A>(_:subscriptionToken:handler:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v14 = (*(a5 + 24))(a4, a5);

  Subscription.init(handler:)(a2, a3, a4, a5, v20);
  v15 = *(v7 + 72);
  os_unfair_lock_lock((v15 + 24));
  sub_1B4E47C90((v15 + 16), v14, v20, a1, a4, a5);
  os_unfair_lock_unlock((v15 + 24));
  a6[3] = type metadata accessor for Subscription(0, a4, a5, v16);
  a6[4] = &protocol witness table for Subscription<A>;
  v17 = swift_allocObject();
  *a6 = v17;
  result = *v20;
  v19 = v20[1];
  *(v17 + 16) = v20[0];
  *(v17 + 32) = v19;
  *(v17 + 48) = v21;
  return result;
}

void sub_1B4E47C90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_1B4DC8ED4(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46D0, &qword_1B4F6D0A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4F6CF50;
  v17 = type metadata accessor for Subscription(0, a5, a6, v16);
  *(inited + 56) = v17;
  *(inited + 64) = &protocol witness table for Subscription<A>;
  v18 = swift_allocObject();
  *(inited + 32) = v18;
  v19 = *(a3 + 16);
  *(v18 + 16) = *a3;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a3 + 32);
  v25 = v14;
  (*(*(v17 - 8) + 16))(v23, a3, v17);
  sub_1B4DC8CA8(inited);
  v20 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v23[0] = *a1;
  sub_1B4DC8DB0(v20, a2, isUniquelyReferenced_nonNull_native);
  *a1 = *&v23[0];
  v22 = *(a3 + 16);
  v23[0] = *a3;
  v23[1] = v22;
  v24 = *(a3 + 32);
  sub_1B4DC9238();
}

uint64_t EventHub.subscribe<A>(_:subscriptionToken:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a3;
  v14[5] = a4;

  EventHub.subscribe<A>(_:subscriptionToken:handler:)(a1, a2, &unk_1B4F710D0, v14, a5, a6, a7);
}

{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a1;

  EventHub.subscribe<A>(_:subscriptionToken:handler:)(a2, sub_1B4E48B0C, v14, a5, a6, a7);
}

uint64_t sub_1B4E47EF8(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B4DE13F0;

  return v5();
}

uint64_t sub_1B4E480A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v21 - v15;
  v17 = sub_1B4F68324();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  v18 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a5;
  *(v19 + 5) = a6;
  *(v19 + 6) = a2;
  *(v19 + 7) = a3;
  (*(v11 + 32))(&v19[v18], &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  *&v19[(v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = v22;

  sub_1B4E4E620(0, 0, v16, &unk_1B4F71160, v19);
}

uint64_t sub_1B4E482AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a7;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *v9 = v7;
  v9[1] = sub_1B4E483AC;

  return v11(a6);
}

uint64_t sub_1B4E483AC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E484E0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4E484E0()
{
  v19 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3 = v1;
  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_1B4F68F84();
    v12 = sub_1B4DC4F88(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = MEMORY[0x1B8C826C0](v0[3], v0[4]);
    v15 = sub_1B4DC4F88(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "Caught error while executing %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v9, -1, -1);
    MEMORY[0x1B8C831D0](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

unint64_t sub_1B4E486E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(*a1 + 16))
  {
    a1 = sub_1B4DC8ED4(a2);
    if (a2)
    {
    }
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  v10[2] = a3;
  v7 = sub_1B4DDC5B8(sub_1B4E48BDC, v10, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v5;
  result = sub_1B4DC8DB0(v7, a2, isUniquelyReferenced_nonNull_native);
  *v5 = v11;
  return result;
}

uint64_t sub_1B4E487E4(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_1B4F68D54();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_1B4E488FC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v17 = a5;
  v18 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, a3, v6);
  LOBYTE(v6) = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51A8, &qword_1B4F71180);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  v13 = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  *(a4 + 72) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B0, &qword_1B4F71188);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v13;
  *(a4 + 80) = v14;
  sub_1B4DC933C(&v16, a4 + 32);
  *(a4 + 16) = a1;
  *(a4 + 24) = v6;
  return a4;
}

uint64_t sub_1B4E48A50(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE13F0;

  return sub_1B4E47EF8(a1, v4);
}

uint64_t dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 24))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 32))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 40))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 48))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B4E48BFC(uint64_t a1)
{
  v3 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(v1 + ((*(*(v1[4] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B4DE13F0;

  return sub_1B4E482AC(a1, v4, v5, v6, v7, v1 + v3, v8);
}

uint64_t sub_1B4E48D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5198, &qword_1B4F71170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BurnBarDisplayPreference.default()()
{
  v0 = sub_1B4F674E4();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69CD198], v2);
  return sub_1B4F669E4();
}

void *Session.token.getter()
{
  v0 = sub_1B4F676B4();
  v2 = v1;
  type metadata accessor for SessionToken();
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B8, &qword_1B4F71190);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  v3[4] = v4;
  return v3;
}

uint64_t CatalogWorkout.metadata()@<X0>(uint64_t a1@<X8>)
{
  v20[17] = a1;
  v1 = sub_1B4F64824();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C0, &qword_1B4F711A0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v20[1] = v20 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D0, &qword_1B4F711B0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v20[11] = v20 - v12;
  v20[16] = sub_1B4F656F4();
  v20[15] = sub_1B4F65764();
  v20[14] = sub_1B4F65704();
  v20[13] = sub_1B4F656A4();
  v20[12] = sub_1B4F656B4();
  sub_1B4F656D4();
  v20[10] = sub_1B4F65644();
  v13 = sub_1B4F655E4();
  v20[8] = v14;
  v20[9] = v13;
  v20[7] = sub_1B4F656E4();
  v15 = sub_1B4F657B4();
  v20[5] = v16;
  v20[6] = v15;
  v20[4] = sub_1B4F65664();
  v17 = sub_1B4F65714();
  v20[2] = v18;
  v20[3] = v17;
  sub_1B4F656C4();
  v20[0] = sub_1B4F65624();
  sub_1B4F65784();
  sub_1B4F655F4();
  sub_1B4F65724();
  sub_1B4F65674();
  sub_1B4F65794();
  sub_1B4F65734();
  sub_1B4F65694();
  return sub_1B4F66524();
}

uint64_t Termination.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F64E24();

  return sub_1B4F64E34();
}

uint64_t sub_1B4E4928C(double a1)
{
  sub_1B4F64E24();

  return sub_1B4F64E34();
}

uint64_t CadenceMetric.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F65254();

  return sub_1B4F65264();
}

uint64_t sub_1B4E49344(double a1)
{
  sub_1B4F65254();

  return sub_1B4F65264();
}

uint64_t ResourceGating.release(throwing:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v6 = sub_1B4F68F14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  *(&v14 - v9) = a1;
  swift_storeEnumTagMultiPayload();
  v11 = *(a3 + 48);
  v12 = a1;
  v11(v10, a2, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t ResourceGating.release(returning:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v7 = sub_1B4F68F14();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v14 - v11;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v14 - v11, a1, AssociatedTypeWitness, v10);
  swift_storeEnumTagMultiPayload();
  (*(a3 + 48))(v12, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t dispatch thunk of ResourceGating.fetch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE13F0;

  return v9(a1, a2, a3);
}

uint64_t SessionUpdate.applyingTimestampOffset(_:)@<X0>(uint64_t a1@<X8>)
{
  v408 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v421 = &v374 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v412 = &v374 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v407 = &v374 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v409 = &v374 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v406 = &v374 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v436 = &v374 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v405 = &v374 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v435 = &v374 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v404 = &v374 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v434 = &v374 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v374 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v401 = &v374 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v380 = &v374 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v400 = &v374 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v433 = &v374 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  v396 = &v374 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v432 = &v374 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v379 = &v374 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v395 = &v374 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v431 = &v374 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v64 - 8, v65);
  v394 = &v374 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v430 = &v374 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v70 - 8, v71);
  v393 = &v374 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73, v74);
  v429 = &v374 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v76 - 8, v77);
  v411 = &v374 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79, v80);
  v428 = &v374 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51E0, &qword_1B4F71248);
  MEMORY[0x1EEE9AC00](v82 - 8, v83);
  v378 = &v374 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51E8, &qword_1B4F71250);
  MEMORY[0x1EEE9AC00](v85 - 8, v86);
  v377 = &v374 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v88 - 8, v89);
  v403 = &v374 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91, v92);
  v94 = &v374 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v95 - 8, v96);
  v392 = &v374 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98, v99);
  v427 = &v374 - v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v101 - 8, v102);
  v391 = &v374 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v104, v105);
  v426 = &v374 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v107 - 8, v108);
  v410 = &v374 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v110, v111);
  v425 = &v374 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v113 - 8, v114);
  v390 = &v374 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116, v117);
  v424 = &v374 - v118;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v119 - 8, v120);
  v389 = &v374 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122, v123);
  v423 = &v374 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v125 - 8, v126);
  v388 = &v374 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v128, v129);
  v422 = &v374 - v130;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v131 - 8, v132);
  v387 = &v374 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v134, v135);
  v137 = &v374 - v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  MEMORY[0x1EEE9AC00](v138 - 8, v139);
  v376 = &v374 - v140;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  MEMORY[0x1EEE9AC00](v141 - 8, v142);
  v375 = &v374 - v143;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  MEMORY[0x1EEE9AC00](v144 - 8, v145);
  v374 = &v374 - v146;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v147 - 8, v148);
  v386 = &v374 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v150, v151);
  v420 = &v374 - v152;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v153 - 8, v154);
  v385 = &v374 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v156, v157);
  v419 = &v374 - v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v159 - 8, v160);
  v384 = &v374 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v162, v163);
  v418 = &v374 - v164;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v165 - 8, v166);
  v383 = &v374 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v168, v169);
  v417 = &v374 - v170;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v171 - 8, v172);
  v382 = &v374 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v174, v175);
  v416 = &v374 - v176;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v177 - 8, v178);
  v381 = &v374 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v180, v181);
  v415 = &v374 - v182;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4148, &qword_1B4F6A648);
  MEMORY[0x1EEE9AC00](v183 - 8, v184);
  v186 = &v374 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v187, v188);
  v190 = &v374 - v189;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4150, &qword_1B4F6A650);
  MEMORY[0x1EEE9AC00](v191 - 8, v192);
  v194 = &v374 - v193;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v195 - 8, v196);
  v198 = &v374 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v199, v200);
  v414 = &v374 - v201;
  v397 = sub_1B4F65434();
  v399 = sub_1B4F65444();
  v398 = v202;
  v437 = v2;
  sub_1B4F65384();
  v203 = sub_1B4F65184();
  v204 = *(v203 - 8);
  v205 = (*(v204 + 48))(v198, 1, v203);
  v402 = v36;
  v413 = v94;
  if (v205 == 1)
  {
    sub_1B4DD2BC4(v198, &qword_1EB8F7050, &qword_1B4F71500);
    v206 = 1;
    v207 = v414;
  }

  else
  {
    v208 = sub_1B4F65CA4();
    (*(*(v208 - 8) + 56))(v194, 1, 1, v208);
    v209 = sub_1B4F64EF4();
    v210 = *(*(v209 - 8) + 56);
    v210(v190, 1, 1, v209);
    v210(v186, 1, 1, v209);
    sub_1B4F65134();
    v211 = v414;
    sub_1B4F65174();
    sub_1B4DD2BC4(v186, &qword_1EB8F4148, &qword_1B4F6A648);
    sub_1B4DD2BC4(v190, &qword_1EB8F4148, &qword_1B4F6A648);
    sub_1B4DD2BC4(v194, &qword_1EB8F4150, &qword_1B4F6A650);
    (*(v204 + 8))(v198, v203);
    v206 = 0;
    v207 = v211;
  }

  (*(v204 + 56))(v207, v206, 1, v203);
  v212 = v381;
  sub_1B4F65464();
  v213 = v212;
  v214 = sub_1B4F663B4();
  v215 = *(v214 - 8);
  v216 = (*(v215 + 48))(v213, 1, v214);
  v217 = v423;
  v218 = v419;
  v219 = v417;
  v220 = v384;
  if (v216 == 1)
  {
    sub_1B4DD2BC4(v213, &qword_1EB8F4140, qword_1B4F789A0);
    v221 = 1;
    v222 = v415;
  }

  else
  {
    sub_1B4F66394();
    v222 = v415;
    sub_1B4F663A4();
    (*(v215 + 8))(v213, v214);
    v221 = 0;
  }

  (*(v215 + 56))(v222, v221, 1, v214);
  v223 = v382;
  sub_1B4F65484();
  v224 = sub_1B4F66754();
  v225 = *(v224 - 8);
  if ((*(v225 + 48))(v223, 1, v224) == 1)
  {
    sub_1B4DD2BC4(v223, &qword_1EB8F4138, &qword_1B4F6A640);
    v226 = 1;
    v227 = v425;
    v228 = v416;
  }

  else
  {
    sub_1B4F66714();
    v228 = v416;
    sub_1B4F66744();
    (*(v225 + 8))(v223, v224);
    v226 = 0;
    v227 = v425;
  }

  (*(v225 + 56))(v228, v226, 1, v224);
  v229 = v383;
  sub_1B4F65394();
  v230 = sub_1B4F65274();
  v231 = *(v230 - 8);
  if ((*(v231 + 48))(v229, 1, v230) == 1)
  {
    sub_1B4DD2BC4(v229, &qword_1EB8F4130, &unk_1B4F78990);
    v232 = 1;
  }

  else
  {
    sub_1B4F65254();
    sub_1B4F65264();
    (*(v231 + 8))(v229, v230);
    v232 = 0;
  }

  v233 = v411;
  (*(v231 + 56))(v219, v232, 1, v230);
  sub_1B4F653E4();
  v234 = sub_1B4F65AD4();
  v235 = *(v234 - 8);
  if ((*(v235 + 48))(v220, 1, v234) == 1)
  {
    sub_1B4DD2BC4(v220, &qword_1EB8F4120, &unk_1B4F78980);
    v236 = 1;
    v237 = v418;
  }

  else
  {
    sub_1B4F65AB4();
    v237 = v418;
    sub_1B4F65AC4();
    (*(v235 + 8))(v220, v234);
    v236 = 0;
  }

  (*(v235 + 56))(v237, v236, 1, v234);
  v238 = v385;
  sub_1B4F654F4();
  v239 = sub_1B4F67AF4();
  v240 = *(v239 - 8);
  if ((*(v240 + 48))(v238, 1, v239) == 1)
  {
    sub_1B4DD2BC4(v238, &qword_1EB8F4128, &qword_1B4F6A638);
    v241 = 1;
  }

  else
  {
    sub_1B4F67AD4();
    sub_1B4F67AE4();
    (*(v240 + 8))(v238, v239);
    v241 = 0;
  }

  v242 = v410;
  (*(v240 + 56))(v218, v241, 1, v239);
  v243 = v386;
  sub_1B4F65454();
  v244 = sub_1B4F66014();
  v245 = *(v244 - 8);
  if ((*(v245 + 48))(v243, 1, v244) == 1)
  {
    sub_1B4DD2BC4(v243, &qword_1EB8F4118, &qword_1B4F6A630);
    v246 = 1;
    v247 = v420;
  }

  else
  {
    v248 = sub_1B4F669F4();
    v249 = v137;
    v250 = v374;
    (*(*(v248 - 8) + 56))(v374, 1, 1, v248);
    v251 = sub_1B4F66A54();
    v252 = v375;
    (*(*(v251 - 8) + 56))(v375, 1, 1, v251);
    v253 = sub_1B4F66BA4();
    v254 = v217;
    v255 = v227;
    v256 = v376;
    (*(*(v253 - 8) + 56))(v376, 1, 1, v253);
    v257 = v243;
    sub_1B4F65FF4();
    v247 = v420;
    sub_1B4F66004();
    v258 = v256;
    v227 = v255;
    v217 = v254;
    sub_1B4DD2BC4(v258, &qword_1EB8F4100, &qword_1B4F6A618);
    sub_1B4DD2BC4(v252, &qword_1EB8F4108, &qword_1B4F6A620);
    v259 = v250;
    v233 = v411;
    v137 = v249;
    v242 = v410;
    sub_1B4DD2BC4(v259, &qword_1EB8F4110, &qword_1B4F6A628);
    (*(v245 + 8))(v257, v244);
    v246 = 0;
  }

  (*(v245 + 56))(v247, v246, 1, v244);
  v260 = v387;
  sub_1B4F653B4();
  v261 = sub_1B4F65854();
  v262 = *(v261 - 8);
  if ((*(v262 + 48))(v260, 1, v261) == 1)
  {
    sub_1B4DD2BC4(v260, &qword_1EB8F40F8, &unk_1B4F78970);
    v263 = 1;
  }

  else
  {
    sub_1B4F65814();
    sub_1B4F65844();
    (*(v262 + 8))(v260, v261);
    v263 = 0;
  }

  v264 = v403;
  v265 = *(v262 + 56);
  v403 = v137;
  v265(v137, v263, 1, v261);
  v266 = v388;
  sub_1B4F65374();
  v267 = sub_1B4F64FD4();
  v268 = *(v267 - 8);
  if ((*(v268 + 48))(v266, 1, v267) == 1)
  {
    sub_1B4DD2BC4(v266, &qword_1EB8F72D0, &qword_1B4F6A610);
    v269 = 1;
    v270 = v422;
  }

  else
  {
    v271 = v266;
    sub_1B4F64F94();
    v270 = v422;
    sub_1B4F64FC4();
    (*(v268 + 8))(v271, v267);
    v269 = 0;
  }

  (*(v268 + 56))(v270, v269, 1, v267);
  v272 = v389;
  sub_1B4F65414();
  v273 = sub_1B4F65D04();
  v274 = *(v273 - 8);
  if ((*(v274 + 48))(v272, 1, v273) == 1)
  {
    sub_1B4DD2BC4(v272, &qword_1EB8F40F0, &unk_1B4F78960);
    v275 = 1;
  }

  else
  {
    sub_1B4F65CE4();
    sub_1B4F65CF4();
    (*(v274 + 8))(v272, v273);
    v275 = 0;
  }

  v276 = v391;
  (*(v274 + 56))(v217, v275, 1, v273);
  v277 = v390;
  sub_1B4F654C4();
  v278 = sub_1B4F66B74();
  v279 = *(v278 - 8);
  if ((*(v279 + 48))(v277, 1, v278) == 1)
  {
    sub_1B4DD2BC4(v277, &qword_1EB8F40E8, &qword_1B4F6A608);
    v280 = 1;
    v281 = v424;
  }

  else
  {
    v282 = v277;
    sub_1B4F66B54();
    v281 = v424;
    sub_1B4F66B64();
    (*(v279 + 8))(v282, v278);
    v280 = 0;
  }

  (*(v279 + 56))(v281, v280, 1, v278);
  sub_1B4F653F4();
  v283 = sub_1B4F65B84();
  v284 = *(v283 - 8);
  if ((*(v284 + 48))(v242, 1, v283) == 1)
  {
    sub_1B4DD2BC4(v242, &qword_1EB8F40E0, &unk_1B4F78950);
    v285 = 1;
  }

  else
  {
    sub_1B4F65B64();
    sub_1B4F65B74();
    (*(v284 + 8))(v242, v283);
    v285 = 0;
  }

  v286 = v395;
  (*(v284 + 56))(v227, v285, 1, v283);
  sub_1B4F65334();
  v287 = sub_1B4F64AA4();
  v288 = *(v287 - 8);
  if ((*(v288 + 48))(v276, 1, v287) == 1)
  {
    sub_1B4DD2BC4(v276, &qword_1EB8F40D8, &qword_1B4F6A600);
    v289 = 1;
    v290 = v426;
  }

  else
  {
    sub_1B4F64A84();
    v290 = v426;
    sub_1B4F64A94();
    (*(v288 + 8))(v276, v287);
    v289 = 0;
  }

  (*(v288 + 56))(v290, v289, 1, v287);
  v291 = v392;
  sub_1B4F65474();
  v292 = sub_1B4F66454();
  v293 = *(v292 - 8);
  v294 = (*(v293 + 48))(v291, 1, v292);
  v295 = v427;
  if (v294 == 1)
  {
    sub_1B4DD2BC4(v291, &qword_1EB8F40D0, &unk_1B4F78940);
    v296 = 1;
  }

  else
  {
    sub_1B4F66424();
    sub_1B4F66444();
    (*(v293 + 8))(v291, v292);
    v296 = 0;
  }

  v297 = v396;
  (*(v293 + 56))(v295, v296, 1, v292);
  sub_1B4F65314();
  v298 = sub_1B4F65DB4();
  v299 = *(v298 - 8);
  if ((*(v299 + 48))(v264, 1, v298) == 1)
  {
    sub_1B4DD2BC4(v264, &qword_1EB8F40C8, &qword_1B4F6A5F8);
    v300 = 1;
    v301 = v402;
    v302 = v413;
  }

  else
  {
    v303 = sub_1B4F65F04();
    v304 = v377;
    (*(*(v303 - 8) + 56))(v377, 1, 1, v303);
    v305 = sub_1B4F65EF4();
    v306 = v264;
    v307 = v378;
    (*(*(v305 - 8) + 56))(v378, 1, 1, v305);
    sub_1B4F65D94();
    v302 = v413;
    sub_1B4F65DA4();
    sub_1B4DD2BC4(v307, &qword_1EB8F51E0, &qword_1B4F71248);
    sub_1B4DD2BC4(v304, &qword_1EB8F51E8, &qword_1B4F71250);
    (*(v299 + 8))(v306, v298);
    v300 = 0;
    v301 = v402;
  }

  (*(v299 + 56))(v302, v300, 1, v298);
  sub_1B4F65324();
  v308 = sub_1B4F66E84();
  v309 = *(v308 - 8);
  if ((*(v309 + 48))(v233, 1, v308) == 1)
  {
    sub_1B4DD2BC4(v233, &qword_1EB8F40C0, &unk_1B4F78930);
    v310 = 1;
    v311 = v428;
  }

  else
  {
    v312 = v233;
    sub_1B4F66E64();
    v311 = v428;
    sub_1B4F66E74();
    (*(v309 + 8))(v312, v308);
    v310 = 0;
  }

  v313 = v429;
  (*(v309 + 56))(v311, v310, 1, v308);
  v314 = v393;
  sub_1B4F65344();
  v315 = sub_1B4F64B04();
  v316 = *(v315 - 8);
  if ((*(v316 + 48))(v314, 1, v315) == 1)
  {
    sub_1B4DD2BC4(v314, &qword_1EB8F40B8, &qword_1B4F6A5F0);
    v317 = 1;
  }

  else
  {
    sub_1B4F64AE4();
    sub_1B4F64AF4();
    (*(v316 + 8))(v314, v315);
    v317 = 0;
  }

  v318 = v394;
  (*(v316 + 56))(v313, v317, 1, v315);
  sub_1B4F653C4();
  v319 = sub_1B4F65894();
  v320 = *(v319 - 8);
  v321 = (*(v320 + 48))(v318, 1, v319);
  v322 = v404;
  v323 = v433;
  if (v321 == 1)
  {
    sub_1B4DD2BC4(v318, &qword_1EB8F40A0, &qword_1B4F6A5E0);
    v324 = 1;
    v325 = v430;
  }

  else
  {
    sub_1B4F65874();
    v325 = v430;
    sub_1B4F65884();
    (*(v320 + 8))(v318, v319);
    v324 = 0;
  }

  (*(v320 + 56))(v325, v324, 1, v319);
  sub_1B4F654E4();
  v326 = sub_1B4F67A34();
  v327 = *(v326 - 8);
  if ((*(v327 + 48))(v286, 1, v326) == 1)
  {
    sub_1B4DD2BC4(v286, &qword_1EB8F40B0, &unk_1B4F78920);
    v328 = 1;
    v329 = v431;
  }

  else
  {
    sub_1B4F67A04();
    v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
    v331 = v379;
    (*(*(v330 - 8) + 56))(v379, 1, 1, v330);
    v329 = v431;
    sub_1B4F67A24();
    sub_1B4DD2BC4(v331, &qword_1EB8F40A8, &qword_1B4F6A5E8);
    (*(v327 + 8))(v286, v326);
    v328 = 0;
  }

  (*(v327 + 56))(v329, v328, 1, v326);
  sub_1B4F65494();
  v332 = sub_1B4F66914();
  v333 = *(v332 - 8);
  if ((*(v333 + 48))(v297, 1, v332) == 1)
  {
    sub_1B4DD2BC4(v297, &qword_1EB8F4090, &qword_1B4F6A5D8);
    v334 = 1;
    v335 = v432;
  }

  else
  {
    sub_1B4F668F4();
    v335 = v432;
    sub_1B4F66904();
    (*(v333 + 8))(v297, v332);
    v334 = 0;
  }

  v336 = v401;
  (*(v333 + 56))(v335, v334, 1, v332);
  v337 = v400;
  sub_1B4F65354();
  v338 = sub_1B4F64E14();
  v339 = *(v338 - 8);
  if ((*(v339 + 48))(v337, 1, v338) == 1)
  {
    sub_1B4DD2BC4(v337, &qword_1EB8F51D8, &unk_1B4F78900);
    v340 = 1;
  }

  else
  {
    v341 = v337;
    sub_1B4F64DD4();
    v342 = sub_1B4F65A94();
    v343 = v380;
    (*(*(v342 - 8) + 56))(v380, 1, 1, v342);
    v442 = 1;
    v441 = 1;
    v440 = 1;
    v439 = 1;
    v438 = 1;
    sub_1B4F64DF4();
    sub_1B4DD2BC4(v343, &qword_1EB8F41B8, &qword_1B4F6A678);
    (*(v339 + 8))(v341, v338);
    v340 = 0;
  }

  v344 = v409;
  (*(v339 + 56))(v323, v340, 1, v338);
  sub_1B4F65364();
  v345 = sub_1B4F64E44();
  v346 = *(v345 - 8);
  if ((*(v346 + 48))(v301, 1, v345) == 1)
  {
    sub_1B4DD2BC4(v301, &qword_1EB8F4088, &qword_1B4F6A5D0);
    v347 = 1;
  }

  else
  {
    sub_1B4F64E24();
    sub_1B4F64E34();
    (*(v346 + 8))(v301, v345);
    v347 = 0;
  }

  (*(v346 + 56))(v336, v347, 1, v345);
  sub_1B4F65404();
  v348 = sub_1B4F65C34();
  v349 = *(v348 - 8);
  v350 = (*(v349 + 48))(v322, 1, v348);
  v351 = v435;
  if (v350 == 1)
  {
    sub_1B4DD2BC4(v322, &qword_1EB8F4080, &unk_1B4F788F0);
    v352 = 1;
    v353 = v434;
  }

  else
  {
    sub_1B4F65C14();
    v353 = v434;
    sub_1B4F65C24();
    (*(v349 + 8))(v322, v348);
    v352 = 0;
  }

  (*(v349 + 56))(v353, v352, 1, v348);
  v354 = v405;
  sub_1B4F653D4();
  v355 = sub_1B4F66084();
  v356 = *(v355 - 8);
  if ((*(v356 + 48))(v354, 1, v355) == 1)
  {
    sub_1B4DD2BC4(v354, &qword_1EB8F4078, &qword_1B4F6A5C8);
    v357 = 1;
  }

  else
  {
    sub_1B4F66054();
    sub_1B4F66064();
    (*(v356 + 8))(v354, v355);
    v357 = 0;
  }

  (*(v356 + 56))(v351, v357, 1, v355);
  v358 = v406;
  sub_1B4F654A4();
  v359 = sub_1B4F66964();
  v360 = *(v359 - 8);
  v361 = (*(v360 + 48))(v358, 1, v359);
  v362 = v407;
  if (v361 == 1)
  {
    sub_1B4DD2BC4(v358, &qword_1EB8F4060, &unk_1B4F788D0);
    v363 = 1;
    v364 = v436;
  }

  else
  {
    sub_1B4F66944();
    v364 = v436;
    sub_1B4F66954();
    (*(v360 + 8))(v358, v359);
    v363 = 0;
  }

  (*(v360 + 56))(v364, v363, 1, v359);
  sub_1B4F654B4();
  v365 = sub_1B4F66AC4();
  v366 = *(v365 - 8);
  if ((*(v366 + 48))(v362, 1, v365) == 1)
  {
    sub_1B4DD2BC4(v362, &qword_1EB8F4070, &unk_1B4F788E0);
    v367 = 1;
  }

  else
  {
    sub_1B4F66AA4();
    sub_1B4F66AB4();
    (*(v366 + 8))(v362, v365);
    v367 = 0;
  }

  (*(v366 + 56))(v344, v367, 1, v365);
  v368 = v421;
  sub_1B4F654D4();
  v369 = sub_1B4F679A4();
  v370 = *(v369 - 8);
  if ((*(v370 + 48))(v368, 1, v369) == 1)
  {
    sub_1B4DD2BC4(v421, &qword_1EB8F4068, &qword_1B4F6A5C0);
    v371 = 1;
  }

  else
  {
    v372 = v421;
    sub_1B4F67974();
    sub_1B4F67994();
    (*(v370 + 8))(v372, v369);
    v371 = 0;
  }

  (*(v370 + 56))(v412, v371, 1, v369);
  sub_1B4F653A4();
  return sub_1B4F65424();
}

uint64_t RemoteBrowsingGuestEnvironmentReceived.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteBrowsingGuestEnvironmentReceived(uint64_t a1)
{
  result = qword_1EB8F51F0;
  if (!qword_1EB8F51F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E4CA60(uint64_t a1)
{
  result = sub_1B4F67284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RemoteBrowsingGuestAuthenticationCompleted.handshake.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67474();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteBrowsingGuestAuthenticationCompleted(uint64_t a1)
{
  result = qword_1EB8F5200;
  if (!qword_1EB8F5200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E4CCD0(uint64_t a1)
{
  result = sub_1B4F67474();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Void __swiftcall TextOutputStreamLog.write(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);

  oslog = sub_1B4F67C34();
  v4 = sub_1B4F685E4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1B4DC4F88(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_1B4DC2000, oslog, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B8C831D0](v6, -1, -1);
    MEMORY[0x1B8C831D0](v5, -1, -1);
  }
}

uint64_t sub_1B4E4CECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10, v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4F68F14();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v20 - v16;
  (*(v18 + 16))(&v20 - v16, a1, v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v17, v8);
    return sub_1B4F682A4();
  }

  else
  {
    (*(v4 + 32))(v6, v17, v3);
    return sub_1B4F682B4();
  }
}

uint64_t TransportClient.sendRequest(_:)(_WORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 64) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E4D134, 0, 0);
}

uint64_t sub_1B4E4D134()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1B4E4D240;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x75716552646E6573, 0xEF293A5F28747365, sub_1B4E4D638, v3, v5);
}

uint64_t sub_1B4E4D240()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B4E4D35C;
  }

  else
  {

    v2 = sub_1B4E4E614;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E4D35C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E4D3C0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v23 - v16;
  v26 = a3;
  (*(a5 + 8))(&v26, v24, a5, v15);
  (*(v8 + 16))(v11, v25, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v11, v7);
  v20 = sub_1B4F67654();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B4E4E618;
  *(v21 + 24) = v19;

  v20(sub_1B4DDDFD0, v21);

  return (*(v13 + 8))(v17, v12);
}

uint64_t TransportClient.sendRequest<A>(_:payload:)(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  *(v8 + 96) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E4D67C, 0, 0);
}

uint64_t sub_1B4E4D67C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v1;
  *(v3 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1B4E4D78C;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000017, 0x80000001B4F80F20, sub_1B4E4DB98, v3, v7);
}

uint64_t sub_1B4E4D78C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B4E4D8A8;
  }

  else
  {

    v2 = sub_1B4DEDE88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E4D8A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E4D90C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a6;
  v31 = a8;
  v32 = a5;
  v33 = a1;
  v28 = a4;
  v29 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v27 - v20;
  v34 = a3;
  (*(a7 + 16))(&v34, v28, v30, v31, a9, v32, a7, v19);
  (*(v12 + 16))(v15, v33, v11);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  (*(v12 + 32))(v23 + v22, v15, v11);
  v24 = sub_1B4F67654();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B4E4E50C;
  *(v25 + 24) = v23;

  v24(sub_1B4DDE050, v25);

  return (*(v17 + 8))(v21, v16);
}

uint64_t sub_1B4E4DBD0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    return sub_1B4F682A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    return sub_1B4F682B4();
  }
}

uint64_t sub_1B4E4DC4C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E4E61C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t TransportClient.sendRequest<A, B>(_:payload:)(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v12;
  *(v9 + 96) = v8;
  *(v9 + 72) = v11;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 16) = a1;
  *(v9 + 128) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4E4DDD0, 0, 0);
}

uint64_t sub_1B4E4DDD0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  v7 = *(v0 + 80);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 80) = v2;
  *(v4 + 88) = v1;
  *(v4 + 96) = v3;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1B4E4DEEC;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000017, 0x80000001B4F80F20, sub_1B4E4E318, v4, v9);
}

uint64_t sub_1B4E4DEEC()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E4E028, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4E4E028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E4E08C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a6;
  v47 = a2;
  v43 = a4;
  v44 = a1;
  v42 = a12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v41 = sub_1B4F682C4();
  v16 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v17);
  v19 = &v36 - v18;
  v37 = &v36 - v18;
  v38 = a7;
  v45 = sub_1B4F67674();
  v48 = *(v45 - 8);
  v21 = MEMORY[0x1EEE9AC00](v45, v20);
  v39 = a8;
  v40 = &v36 - v22;
  v49 = a3;
  v23 = *(a8 + 32);
  v35 = a8;
  v24 = v46;
  v25 = a7;
  v26 = v42;
  v23(&v49, v43, v46, v25, a9, a10, a11, v42, v21, a5, v35);
  v27 = v19;
  v28 = v41;
  (*(v16 + 16))(v27, v44, v41);
  v29 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = a5;
  *(v30 + 3) = v24;
  v31 = v39;
  *(v30 + 4) = v38;
  *(v30 + 5) = v31;
  *(v30 + 6) = a9;
  *(v30 + 7) = a10;
  *(v30 + 8) = a11;
  *(v30 + 9) = v26;
  (*(v16 + 32))(&v30[v29], v37, v28);
  v32 = v45;
  v33 = v40;
  sub_1B4F67644();

  return (*(v48 + 8))(v33, v32);
}

uint64_t sub_1B4E4E3DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v2 = sub_1B4F682C4();
  return sub_1B4E4CECC(a1, v2);
}

uint64_t sub_1B4E4E474(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v2 = sub_1B4F682C4();
  return sub_1B4E4CECC(a1, v2);
}

uint64_t objectdestroy_13Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4E4E620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1B4E21A90(a3, v26 - v11, &unk_1EB8F7040, &qword_1B4F71150);
  v13 = sub_1B4F68324();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B4DD2BC4(v12, &unk_1EB8F7040, &qword_1B4F71150);
  }

  else
  {
    sub_1B4F68314();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B4F68274();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B4F67FB4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1B4DD2BC4(a3, &unk_1EB8F7040, &qword_1B4F71150);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B4DD2BC4(a3, &unk_1EB8F7040, &qword_1B4F71150);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t ActivityRingsQuerying.fetchActivityRings(timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5210, &qword_1B4F71438);
  *(v4 + 32) = v7;
  v8 = *(v7 - 8);
  *(v4 + 40) = v8;
  *(v4 + 48) = *(v8 + 64);
  *(v4 + 56) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v4 + 64) = v9;
  v10 = swift_task_alloc();
  *(v4 + 72) = v10;
  *v10 = v4;
  v10[1] = sub_1B4E4EA54;

  return sub_1B4E4EF2C(v9, a2, a3);
}

uint64_t sub_1B4E4EA54()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4E4EB50, 0, 0);
}

uint64_t sub_1B4E4EB50()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  (*(v2 + 16))(v1, v0[8], v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = swift_task_alloc();
  v0[11] = v7;
  v7[2] = &unk_1B4F71450;
  v7[3] = v6;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v0[12] = v8;
  v9 = sub_1B4F65184();
  *v8 = v0;
  v8[1] = sub_1B4E4ECD4;
  v10 = v0[2];

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD00000000000001FLL, 0x80000001B4F80F40, sub_1B4E51508, v7, v9);
}

uint64_t sub_1B4E4ECD4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B4E4EE80;
  }

  else
  {

    v2 = sub_1B4E4EDF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E4EDF8()
{
  (*(v0[5] + 8))(v0[8], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4E4EE80()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4E4EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5280, &qword_1B4F71558);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E4EFFC, 0, 0);
}

uint64_t sub_1B4E4EFFC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v4;
  sub_1B4F65184();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_1B4F68494();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B4E4F0F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5250, &qword_1B4F71538);
  v2[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5210, &qword_1B4F71438);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5258, &qword_1B4F71540);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5260, &qword_1B4F71548);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E4F300, 0, 0);
}

uint64_t sub_1B4E4F300()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  sub_1B4E21468(&qword_1EB8F5268, &qword_1EB8F5210, &qword_1B4F71438, MEMORY[0x1E69E87D0]);
  sub_1B4F68C24();
  MEMORY[0x1B8C82470](v3);
  sub_1B4F68454();
  sub_1B4F68BD4();
  (*(v2 + 8))(v1, v3);
  sub_1B4F68C14();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1B4E4F4B4;
  v5 = v0[4];

  return sub_1B4E4F918(v5, 0, 0);
}

uint64_t sub_1B4E4F4B4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B4E4F778;
  }

  else
  {
    v2 = sub_1B4E4F5C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E4F5C8()
{
  v1 = v0[4];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = sub_1B4F65184();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1B4E527B4();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[4], v2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4E4F778()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4E4F830(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5210, &qword_1B4F71438) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B4DE0D94;

  return sub_1B4E4F0F4(a1, v1 + v5);
}

uint64_t sub_1B4E4F918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1B4F68274();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[15] = v5;
  v4[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4E4F9B0, v5, v7);
}

uint64_t sub_1B4E4F9B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5260, &qword_1B4F71548);
  if (sub_1B4F68BD4())
  {
    v1 = sub_1B4F68BF4();
    --*v2;
    v1(v0 + 2, 0);
    v0[17] = sub_1B4F68BE4();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5250, &qword_1B4F71538);
    v4 = sub_1B4E21468(&qword_1EB8F5278, &qword_1EB8F5250, &qword_1B4F71538, MEMORY[0x1E69E87C0]);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_1B4E4FB94;
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[11];

    return MEMORY[0x1EEE6D8D0](v8, v6, v7, v0 + 10, v3, v4);
  }

  else
  {
    v9 = v0[11];
    v10 = sub_1B4F65184();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}