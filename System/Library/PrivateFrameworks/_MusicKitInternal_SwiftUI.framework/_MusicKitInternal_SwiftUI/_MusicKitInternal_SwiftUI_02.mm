uint64_t sub_217886D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21788D5B8(&unk_27CB8AF30);
  *a2 = sub_217966D1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF38, &unk_21796B640);
  return sub_21788A5A8(v2, *(a1 + 16), *(a1 + 24), (a2 + *(v5 + 44)));
}

uint64_t sub_217886E18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v281 = a3;
  v282 = a4;
  v242 = a2;
  v283 = a1;
  v269 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE20, &qword_21796B520);
  v293[0] = sub_21796852C();
  v293[1] = a3;
  v293[2] = sub_21788D650(&qword_27CB8A828);
  v293[3] = a4;
  _s13ItemShelfCellVMa(255, v293);
  sub_21796732C();
  v9 = sub_21796698C();
  v278 = MEMORY[0x277CD7CB0];
  v10 = sub_21788D5B8(&unk_27CB8AE28);
  v277 = sub_21786438C(v10, v11, v12);
  v293[0] = v8;
  v293[1] = MEMORY[0x277CD7E90];
  v293[2] = v9;
  v293[3] = v10;
  v293[4] = v277;
  sub_217967D9C();
  v13 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21788D650(&qword_27CB8A710);
  v302 = WitnessTable;
  v303 = v15;
  v301 = swift_getWitnessTable();
  v299 = swift_getWitnessTable();
  v300 = MEMORY[0x277CDF918];
  v249 = v13;
  v244 = swift_getWitnessTable();
  v16 = sub_21796665C();
  swift_getTupleTypeMetadata2();
  v17 = sub_217967E9C();
  v250 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v248 = &v223 - v19;
  v251 = v16;
  v243 = *(v16 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v247 = &v223 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v245 = &v223 - v23;
  v252 = v7;
  v24 = MEMORY[0x28223BE20](v22);
  v246 = &v223 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v259 = &v223 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AE50, &unk_21796B570);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v267 = &v223 - v29;
  v273 = v8;
  v262 = *(v8 - 8);
  MEMORY[0x28223BE20](v28);
  v274 = &v223 - v30;
  v280 = v17;
  v272 = sub_21796944C();
  v268 = *(v272 - 8);
  v31 = MEMORY[0x28223BE20](v272);
  v271 = &v223 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v279 = &v223 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v36 = sub_2179689AC();
  v37 = sub_21788D650(&qword_27CB8A6D0);
  v293[0] = v36;
  v293[1] = v281;
  v293[2] = v37;
  v293[3] = v282;
  _s9VItemCellVMa(255, v293);
  v38 = sub_21796698C();
  v39 = sub_21788D5B8(&unk_27CB8AE10);
  v293[0] = v35;
  v293[1] = MEMORY[0x277CD7E90];
  v293[2] = v38;
  v293[3] = v39;
  v293[4] = v277;
  v40 = sub_217967D9C();
  v297 = swift_getWitnessTable();
  v298 = v15;
  v296 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v235 = v40;
  v231 = v41;
  v42 = sub_217967E8C();
  v43 = sub_21796698C();
  v44 = sub_21796698C();
  swift_getTupleTypeMetadata2();
  v45 = sub_217967E9C();
  v239 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v238 = &v223 - v46;
  v47 = sub_21796708C();
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v258 = &v223 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = v42;
  v227 = *(v42 - 8);
  v50 = MEMORY[0x28223BE20](v48);
  v226 = &v223 - v51;
  v237 = v43;
  v230 = *(v43 - 8);
  v52 = MEMORY[0x28223BE20](v50);
  v228 = &v223 - v53;
  v240 = v44;
  v232 = *(v44 - 8);
  v54 = MEMORY[0x28223BE20](v52);
  v236 = &v223 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v233 = &v223 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC0, &qword_21796B610);
  MEMORY[0x28223BE20](v57 - 8);
  v256 = &v223 - v58;
  v257 = sub_21796757C();
  v255 = *(v257 - 8);
  v59 = MEMORY[0x28223BE20](v257);
  v254 = &v223 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = v34;
  v61 = MEMORY[0x28223BE20](v59);
  v229 = &v223 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v253 = &v223 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v223 - v65;
  v67 = sub_217968AFC();
  v68 = *(v67 - 8);
  v69 = MEMORY[0x28223BE20](v67);
  v264 = &v223 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v69);
  v73 = &v223 - v72;
  v260 = *(v35 - 8);
  MEMORY[0x28223BE20](v71);
  v75 = &v223 - v74;
  v278 = v45;
  v76 = sub_21796944C();
  v276 = *(v76 - 8);
  v277 = v76;
  v77 = MEMORY[0x28223BE20](v76);
  v275 = &v223 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v80 = &v223 - v79;
  v82 = _s16ArtistDetailViewVMa(0, v281, v282, v81);
  sub_217876FA0();
  sub_217968AAC();
  v83 = *(v68 + 8);
  v265 = v68 + 8;
  v266 = v67;
  v263 = v83;
  v83(v73, v67);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v35);
  v85 = MEMORY[0x277CE0A80];
  v270 = v80;
  v261 = v82;
  if (EnumTagSinglePayload == 1)
  {
    sub_21788D4D0(v66, &qword_27CB8A770);
LABEL_5:
    v92 = v272;
    v91 = v273;
    v93 = v280;
    v94 = v271;
    v96 = v274;
    v95 = v275;
    v97 = v283;
    __swift_storeEnumTagSinglePayload(v275, 1, 1, v278);
    swift_getWitnessTable();
    sub_2178AEE20(v95, v80);
    (*(v276 + 8))(v95, v277);
    goto LABEL_9;
  }

  v86 = v82;
  v87 = v260;
  (*(v260 + 32))(v75, v66, v35);
  v88 = sub_2178D2AE4();
  if (v88)
  {
    (*(v87 + 8))(v75, v35);
    goto LABEL_5;
  }

  v224 = v35;
  v225 = v75;
  v98 = &v283[*(v86 + 76)];
  v99 = v98[1];
  v293[0] = *v98;
  v293[1] = v99;
  sub_217873C34(v88, v89, v90);

  v100 = sub_21796763C();
  v102 = v101;
  v104 = v103;
  v105 = *v85;
  v107 = v254;
  v106 = v255;
  v108 = v257;
  (*(v255 + 104))(v254, v105, v257);
  v109 = sub_2179674BC();
  v110 = v256;
  __swift_storeEnumTagSinglePayload(v256, 1, 1, v109);
  sub_2179674CC();
  sub_21796752C();
  sub_21788D4D0(v110, &qword_27CB8AEC0);
  (*(v106 + 8))(v107, v108);
  v111 = sub_2179675DC();
  v113 = v112;
  LOBYTE(v107) = v114;
  v116 = v115;

  sub_21788C9B8(v100, v102, v104 & 1);

  v117 = sub_21796742C();
  v292 = v107 & 1;
  v288 = 1;
  v293[0] = v111;
  v293[1] = v113;
  LOBYTE(v293[2]) = v107 & 1;
  *(&v293[2] + 1) = v294;
  HIDWORD(v293[2]) = *(&v294 + 3);
  v293[3] = v116;
  LOBYTE(v293[4]) = v117;
  *(&v293[4] + 1) = v289;
  HIDWORD(v293[4]) = *(&v289 + 3);
  memset(&v293[5], 0, 32);
  LOBYTE(v293[9]) = 1;
  if (qword_27CB8A3E0 != -1)
  {
    swift_once();
  }

  v118 = qword_27CB979B0;
  v119 = *algn_27CB979B8;
  v120 = qword_27CB979C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_21796A340;
  *(v121 + 32) = 0x4449746E65726170;
  *(v121 + 40) = 0xE800000000000000;
  *(v121 + 72) = MEMORY[0x277D837D0];
  *(v121 + 48) = 0x736D75626C61;
  *(v121 + 56) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v122 = sub_217968EAC();
  sub_2178ED924(v122, v118, v119, v120);
  v124 = v123;
  v126 = v125;
  v128 = v127;

  memcpy(v291, v293, 0x49uLL);
  sub_2178EE0A8(v124, v126, v128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEF0, &qword_21796B628);
  sub_21788CAEC();
  sub_21796790C();
  sub_21788D4D0(v293, &qword_27CB8AEF0);

  v129 = v283;
  v130 = sub_217877224(v261);
  MEMORY[0x28223BE20](v130);
  v131 = v282;
  *(&v223 - 6) = v281;
  *(&v223 - 5) = v131;
  *(&v223 - 4) = v225;
  *(&v223 - 3) = v129;
  sub_217966E5C();
  v132 = v231;
  sub_217889928();
  v221 = v132;
  v133 = v226;
  sub_217967E7C();
  sub_21796744C();
  v134 = v234;
  v135 = swift_getWitnessTable();
  v136 = v228;
  sub_217967A0C();
  (*(v227 + 8))(v133, v134);
  sub_2179673EC();
  v286 = v135;
  v137 = MEMORY[0x277CDF918];
  v287 = MEMORY[0x277CDF918];
  v138 = v237;
  v139 = swift_getWitnessTable();
  v140 = v236;
  sub_217967A0C();
  (*(v230 + 8))(v136, v138);
  v284 = v139;
  v285 = v137;
  v141 = v240;
  v142 = swift_getWitnessTable();
  v143 = v233;
  sub_2179560E4();
  v144 = v232;
  v145 = *(v232 + 8);
  v145(v140, v141);
  v146 = v253;
  v147 = v229;
  sub_21788D484(v253, v229, &qword_27CB8ADE8, &qword_21796BE90);
  v291[0] = v147;
  (*(v144 + 16))(v140, v143, v141);
  v291[1] = v140;
  v294 = v241;
  v295 = v141;
  v289 = sub_21788CB7C(&unk_27CB8AF00);
  v290 = v142;
  v148 = v238;
  sub_2178B9390(v291, 2, &v294);
  v145(v143, v141);
  sub_21788D4D0(v146, &qword_27CB8ADE8);
  v145(v140, v141);
  sub_21788D4D0(v147, &qword_27CB8ADE8);
  v149 = v275;
  v150 = v278;
  (*(v239 + 32))(v275, v148, v278);
  __swift_storeEnumTagSinglePayload(v149, 0, 1, v150);
  swift_getWitnessTable();
  sub_2178AEE20(v149, v270);
  (*(v276 + 8))(v149, v277);
  (*(v260 + 8))(v225, v224);
  v92 = v272;
  v91 = v273;
  v93 = v280;
  v94 = v271;
  v97 = v283;
  v96 = v274;
LABEL_9:
  v151 = v267;
  v152 = v264;
  sub_217876FA0();
  sub_217968A4C();
  v263(v152, v266);
  if (__swift_getEnumTagSinglePayload(v151, 1, v91) == 1)
  {
    sub_21788D4D0(v151, &qword_27CB8AE50);
LABEL_13:
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v93);
    swift_getWitnessTable();
    v157 = v279;
    sub_2178AEE20(v94, v279);
    v158 = v268;
    v283 = *(v268 + 8);
    (v283)(v94, v92);
    v159 = v94;
    goto LABEL_17;
  }

  v153 = v262;
  (*(v262 + 32))(v96, v151, v91);
  v154 = sub_2178D2BB8();
  if (v154)
  {
    (*(v153 + 8))(v96, v91);
    goto LABEL_13;
  }

  v160 = &v97[*(v261 + 80)];
  v161 = v160[1];
  v293[0] = *v160;
  v293[1] = v161;
  sub_217873C34(v154, v155, v156);

  v162 = sub_21796763C();
  v164 = v163;
  v166 = v165;
  v168 = v254;
  v167 = v255;
  v169 = v257;
  (*(v255 + 104))(v254, *MEMORY[0x277CE0A80], v257);
  v170 = sub_2179674BC();
  v171 = v256;
  __swift_storeEnumTagSinglePayload(v256, 1, 1, v170);
  sub_2179674CC();
  sub_21796752C();
  sub_21788D4D0(v171, &qword_27CB8AEC0);
  (*(v167 + 8))(v168, v169);
  v172 = sub_2179675DC();
  v174 = v173;
  LOBYTE(v168) = v175;
  v177 = v176;

  sub_21788C9B8(v162, v164, v166 & 1);

  v178 = sub_21796740C();
  LOBYTE(v162) = v168 & 1;
  v179 = v283;
  LOBYTE(v291[0]) = v162;
  LOBYTE(v294) = 1;
  v180 = sub_21796741C();
  sub_21796660C();
  v182 = v181;
  v184 = v183;
  v186 = v185;
  v188 = v187;
  LOBYTE(v293[0]) = 0;
  v189 = sub_21796742C();
  v292 = 1;
  v293[0] = v172;
  v293[1] = v174;
  LOBYTE(v293[2]) = v162;
  v293[3] = v177;
  LOBYTE(v293[4]) = v178;
  memset(&v293[5], 0, 32);
  LOBYTE(v293[9]) = 1;
  LOBYTE(v293[10]) = v180;
  v293[11] = v182;
  v293[12] = v184;
  v293[13] = v186;
  v293[14] = v188;
  LOBYTE(v293[15]) = 0;
  HIDWORD(v293[15]) = *(&v294 + 3);
  *(&v293[15] + 1) = v294;
  LOBYTE(v293[16]) = v189;
  *(&v293[16] + 1) = v289;
  HIDWORD(v293[16]) = *(&v289 + 3);
  memset(&v293[17], 0, 32);
  LOBYTE(v293[21]) = 1;
  if (qword_27CB8A3E0 != -1)
  {
    swift_once();
  }

  v190 = qword_27CB979B0;
  v191 = *algn_27CB979B8;
  v192 = qword_27CB979C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_21796A340;
  *(v193 + 32) = 0x4449746E65726170;
  *(v193 + 40) = 0xE800000000000000;
  *(v193 + 72) = MEMORY[0x277D837D0];
  *(v193 + 48) = 0x646956636973756DLL;
  *(v193 + 56) = 0xEB00000000736F65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v194 = sub_217968EAC();
  sub_2178ED924(v194, v190, v191, v192);
  v196 = v195;
  v198 = v197;
  v200 = v199;

  memcpy(v291, v293, 0xA9uLL);
  sub_2178EE0A8(v196, v198, v200);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC8, &qword_21796B618);
  sub_21788CA2C();
  v201 = v259;
  sub_21796790C();
  sub_21788D4D0(v293, &qword_27CB8AEC8);

  MEMORY[0x28223BE20](v202);
  v203 = v282;
  *(&v223 - 4) = v281;
  *(&v223 - 3) = v203;
  v221 = v274;
  v222 = v179;
  sub_2178AA13C();
  sub_21789A9E0();
  v204 = v247;
  sub_21796664C();
  v205 = v251;
  v206 = swift_getWitnessTable();
  v207 = v245;
  sub_2179560E4();
  v208 = v243;
  v209 = *(v243 + 8);
  v209(v204, v205);
  v210 = v201;
  v211 = v246;
  sub_21788D484(v210, v246, &qword_27CB8AE08, &unk_21796B508);
  v291[0] = v211;
  (*(v208 + 16))(v204, v207, v205);
  v291[1] = v204;
  v294 = v252;
  v295 = v205;
  v289 = sub_21788CB7C(&unk_27CB8AEF8);
  v290 = v206;
  v212 = v248;
  sub_2178B9390(v291, 2, &v294);
  v209(v207, v205);
  sub_21788D4D0(v259, &qword_27CB8AE08);
  v209(v204, v205);
  sub_21788D4D0(v211, &qword_27CB8AE08);
  v159 = v271;
  v213 = v280;
  (*(v250 + 32))(v271, v212, v280);
  __swift_storeEnumTagSinglePayload(v159, 0, 1, v213);
  swift_getWitnessTable();
  v157 = v279;
  sub_2178AEE20(v159, v279);
  v158 = v268;
  v92 = v272;
  v283 = *(v268 + 8);
  (v283)(v159, v272);
  (*(v262 + 8))(v274, v273);
LABEL_17:
  v215 = v275;
  v214 = v276;
  v216 = v270;
  v217 = v277;
  (*(v276 + 16))(v275, v270, v277);
  v293[0] = v215;
  (*(v158 + 16))(v159, v157, v92);
  v293[1] = v159;
  v291[0] = v217;
  v291[1] = v92;
  v293[23] = swift_getWitnessTable();
  v294 = swift_getWitnessTable();
  v293[22] = swift_getWitnessTable();
  v295 = swift_getWitnessTable();
  sub_2178B9390(v293, 2, v291);
  v218 = v283;
  (v283)(v279, v92);
  v219 = *(v214 + 8);
  v219(v216, v217);
  (v218)(v159, v92);
  return (v219)(v215, v217);
}

uint64_t sub_217888B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a3;
  v67 = a6;
  v64 = a2;
  v61 = a1;
  v63 = sub_21796681C();
  v60 = *(v63 - 8);
  v65 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v59 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a4;
  v50 = a4;
  v10 = a5;
  v49 = a5;
  v56 = _s16ArtistDetailViewVMa(0, a4, a5, v11);
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v48 - v17;
  v48[0] = v48 - v17;
  v19 = sub_2179689AC();
  v62 = MEMORY[0x277CD82C8];
  v20 = sub_21788D650(&qword_27CB8A6D0);
  v71 = v19;
  v72 = v9;
  v73 = v20;
  v74 = v10;
  v52 = _s9VItemCellVMa(255, &v71);
  sub_21796732C();
  v21 = sub_21796698C();
  v53 = v21;
  v22 = sub_21788D5B8(&unk_27CB8AE10);
  v57 = v22;
  v25 = sub_21786438C(v22, v23, v24);
  v26 = v15;
  v48[1] = v15;
  v71 = v15;
  v72 = MEMORY[0x277CD7E90];
  v73 = v21;
  v74 = v22;
  v75 = v25;
  v27 = sub_217967D9C();
  v58 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v51 = v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v55 = v48 - v30;
  (*(v16 + 16))(v18, v61, v26);
  v31 = v54;
  v32 = v56;
  (*(v12 + 16))(v54, v64, v56);
  v33 = v59;
  v34 = v60;
  v35 = v63;
  (*(v60 + 16))(v59, v66, v63);
  v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v37 = (v13 + *(v34 + 80) + v36) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = v49;
  *(v38 + 16) = v50;
  *(v38 + 24) = v39;
  (*(v12 + 32))(v38 + v36, v31, v32);
  (*(v34 + 32))(v38 + v37, v33, v35);
  WitnessTable = swift_getWitnessTable();
  v41 = sub_21788D650(&qword_27CB8A710);
  v69 = WitnessTable;
  v70 = v41;
  v42 = swift_getWitnessTable();
  sub_21788D650(&unk_27CB8AF10);
  v43 = v51;
  sub_217967D8C();
  v68 = v42;
  swift_getWitnessTable();
  v44 = v55;
  v45 = v43;
  sub_2179560E4();
  v46 = *(v58 + 8);
  v46(v45, v27);
  sub_2179560E4();
  return (v46)(v44, v27);
}

uint64_t sub_217889148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a3;
  v60 = a6;
  v10 = sub_2179689AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21788D650(&qword_27CB8A6D0);
  *&v63 = v10;
  *(&v63 + 1) = a4;
  v64 = v53;
  v65 = a5;
  v14 = _s9VItemCellVMa(0, &v63);
  v57 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  sub_21796732C();
  v54 = v14;
  v17 = sub_21796698C();
  v59 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v58 = &v52 - v20;
  (*(v11 + 16))(v13, a1, v10);
  v22 = a2 + *(_s16ArtistDetailViewVMa(0, a4, a5, v21) + 64);
  v24 = *(v22 + 8);
  v23 = *(v22 + 16);
  v25 = *(v22 + 24);
  LOBYTE(v63) = *v22;
  *(&v63 + 1) = v24;
  v64 = v23;
  v65 = v25;

  sub_217863EC4(v25);
  sub_21796680C();
  sub_217889750();
  v27 = v26;
  v55 = a1;
  v28 = sub_2179688EC();
  v30 = sub_2178898D8(v28, v29 & 1);
  sub_21790E3C4(v13, &v63, v30, v31, v10, a4, v16, v27, v53, a5);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v32 = xmmword_27CB979C8;
  v33 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796B330;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;

  v35 = sub_21796895C();
  v36 = MEMORY[0x277CD7E90];
  *(inited + 48) = v35;
  *(inited + 56) = v37;
  *(inited + 72) = v36;
  *(inited + 80) = 0x4449746E65726170;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x736D75626C61;
  *(inited + 104) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v38 = sub_217968EAC();
  v63 = v32;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](1819043139, 0xE400000000000000);

  sub_2178ED924(v38, v63, *(&v63 + 1), v33);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = v54;
  WitnessTable = swift_getWitnessTable();
  v47 = v56;
  sub_2178ED854(v40, v42, v44, v45, WitnessTable);

  (*(v57 + 8))(v16, v45);
  v48 = sub_21788D650(&qword_27CB8A710);
  v61 = WitnessTable;
  v62 = v48;
  swift_getWitnessTable();
  v49 = v58;
  sub_2179560E4();
  v50 = *(v59 + 8);
  v50(v47, v17);
  sub_2179560E4();
  return (v50)(v49, v17);
}

uint64_t sub_217889750()
{
  v0 = sub_21796613C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_21796612C();
  (*(v1 + 104))(v4, *MEMORY[0x277D2AC70], v0);
  sub_21796611C();
  v7 = *(v1 + 8);
  v7(v4, v0);
  return (v7)(v6, v0);
}

uint64_t sub_2178898D8(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return sub_21796966C();
  }
}

uint64_t sub_217889928()
{
  sub_21796708C();
  sub_21788D650(&unk_27CB8AF08);
  return sub_2179697CC();
}

uint64_t sub_2178899A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a1;
  v53 = a2;
  v55 = a5;
  v44 = a3;
  v43 = a4;
  v50 = _s16ArtistDetailViewVMa(0, a3, a4, a4);
  v7 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AE20, &qword_21796B520);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - v12;
  v13 = sub_21796852C();
  v54 = MEMORY[0x277CD7E58];
  v14 = sub_21788D650(&qword_27CB8A828);
  v61 = v13;
  v62 = a3;
  v63 = v14;
  v64 = a4;
  v41 = _s13ItemShelfCellVMa(255, &v61);
  sub_21796732C();
  v15 = sub_21796698C();
  v46 = v15;
  v16 = sub_21788D5B8(&unk_27CB8AE28);
  v48 = v16;
  v19 = sub_21786438C(v16, v17, v18);
  v61 = v10;
  v62 = MEMORY[0x277CD7E90];
  v63 = v15;
  v64 = v16;
  v65 = v19;
  v20 = sub_217967D9C();
  v49 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v23 = sub_21796698C();
  v51 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v45 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v47 = &v41 - v26;
  (*(v11 + 16))(v42, v52, v10);
  v27 = v9;
  v28 = v9;
  v29 = v50;
  (*(v7 + 16))(v28, v53, v50);
  v30 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v31 = swift_allocObject();
  v32 = v43;
  *(v31 + 16) = v44;
  *(v31 + 24) = v32;
  (*(v7 + 32))(v31 + v30, v27, v29);
  WitnessTable = swift_getWitnessTable();
  v34 = sub_21788D650(&qword_27CB8A710);
  v59 = WitnessTable;
  v60 = v34;
  v35 = swift_getWitnessTable();
  sub_21788D650(&unk_27CB8AF20);
  sub_217967D8C();
  sub_21796742C();
  v58 = v35;
  v36 = swift_getWitnessTable();
  v37 = v45;
  sub_217967A0C();
  (*(v49 + 8))(v22, v20);
  v56 = v36;
  v57 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v38 = v47;
  sub_2179560E4();
  v39 = *(v51 + 8);
  v39(v37, v23);
  sub_2179560E4();
  return (v39)(v38, v23);
}

uint64_t sub_217889F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a2;
  v65 = a5;
  v8 = sub_21796852C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21788D650(&qword_27CB8A828);
  *&v68 = v8;
  *(&v68 + 1) = a3;
  v69 = v12;
  v70 = a4;
  v13 = _s13ItemShelfCellVMa(0, &v68);
  v62 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  sub_21796732C();
  v60 = v13;
  v58 = sub_21796698C();
  v64 = *(v58 - 8);
  v16 = MEMORY[0x28223BE20](v58);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v57 - v18;
  (*(v9 + 16))(v11, a1, v8);
  v20 = _s16ArtistDetailViewVMa(0, a3, a4, v19);
  v21 = v57 + *(v20 + 68);
  v23 = *(v21 + 8);
  v22 = *(v21 + 16);
  v24 = *(v21 + 24);
  LOBYTE(v68) = *v21;
  *(&v68 + 1) = v23;
  v69 = v22;
  v70 = v24;

  sub_217863EC4(v24);
  v59 = a1;
  v25 = sub_2179684CC();
  v27 = sub_2178898D8(v25, v26 & 1);
  v29 = v28;
  v30 = sub_2178AA2C4();
  v56 = a3;
  v55 = a3;
  v31 = v15;
  sub_21791B630(v11, &v68, v27, v29, 11, 0, 1, v30, v15, v32, v33, v55, v8, v56, v12, a4);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v34 = xmmword_27CB979C8;
  v35 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796B330;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;

  v37 = sub_2179684FC();
  v38 = MEMORY[0x277CD7E90];
  *(inited + 48) = v37;
  *(inited + 56) = v39;
  *(inited + 72) = v38;
  *(inited + 80) = 0x4449746E65726170;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x646956636973756DLL;
  *(inited + 104) = 0xEB00000000736F65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v40 = sub_217968EAC();
  v68 = v34;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](1819043139, 0xE400000000000000);

  sub_2178ED924(v40, v68, *(&v68 + 1), v35);
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = v60;
  WitnessTable = swift_getWitnessTable();
  v49 = v61;
  sub_2178ED854(v42, v44, v46, v47, WitnessTable);

  (*(v62 + 8))(v31, v47);
  v50 = sub_21788D650(&qword_27CB8A710);
  v66 = WitnessTable;
  v67 = v50;
  v51 = v58;
  swift_getWitnessTable();
  v52 = v63;
  sub_2179560E4();
  v53 = *(v64 + 8);
  v53(v49, v51);
  sub_2179560E4();
  return (v53)(v52, v51);
}

uint64_t sub_21788A5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF40, &qword_21796BF00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF48, &qword_21796B650);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF50, &qword_21796B658);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v21 = _s16ArtistDetailViewVMa(0, a2, a3, v20);
  sub_21788A9EC(v21, v9);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF58, &qword_21796B660);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v22);
  v42 = a2;
  v43 = a3;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF60, &qword_21796B668);
  sub_21788D5B8(&unk_27CB8AF68);
  sub_21788D5B8(&qword_27CB8AF70);
  sub_21796687C();
  LOBYTE(a3) = sub_217878888(v21);
  v23 = sub_217967B3C();
  v24 = sub_217967B3C();
  v45[0] = a3 & 1;
  v46 = v23;
  v47 = v24;
  v25 = sub_21788D5B8(&unk_27CB8AF78);
  sub_21788CF3C(v25, v26, v27);
  v28 = v38;
  sub_21796770C();

  (*(v39 + 8))(v13, v28);
  LOBYTE(a3) = sub_217878888(v21);
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = a3 & 1;
  v31 = &v19[*(v15 + 44)];
  *v31 = KeyPath;
  v31[1] = sub_21788CF90;
  v31[2] = v30;
  v32 = v40;
  sub_21788D484(v19, v40, &qword_27CB8AF50, &qword_21796B658);
  v33 = v41;
  *v41 = 0;
  *(v33 + 8) = 1;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF88, &unk_21796B6A0);
  sub_21788D484(v32, v34 + *(v35 + 48), &qword_27CB8AF50, &qword_21796B658);
  v36 = v34 + *(v35 + 64);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_21788D4D0(v19, &qword_27CB8AF50);
  return sub_21788D4D0(v32, &qword_27CB8AF50);
}

unint64_t sub_21788A9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_217876FA0();
  v5 = (v2 + *(a1 + 36));
  v6 = *v5;
  v8 = *(v5 + 1);
  v7 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF58, &qword_21796B660);
  v11 = a2 + v10[9];
  *v11 = v6;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  *(a2 + v10[10]) = 1;
  *(a2 + v10[11]) = 0;

  return sub_217863EC4(v9);
}

uint64_t sub_21788AA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF90, &qword_21796B6B0);
  sub_21788D5B8(&unk_27CB8AF98);
  *a4 = sub_2178AA13C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFA0, &qword_21796B6B8);
  return sub_21788AB60(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_21788AB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a4;
  v7 = sub_217966FAC();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7);
  v86 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFA8, &qword_21796B6C0);
  MEMORY[0x28223BE20](v79);
  v94 = &v79 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFB0, &qword_21796B6C8);
  MEMORY[0x28223BE20](v92);
  v93 = &v79 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFB8, &qword_21796B6D0);
  MEMORY[0x28223BE20](v81);
  v83 = &v79 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFC0, &qword_21796B6D8);
  v12 = MEMORY[0x28223BE20](v82);
  v85 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v79 - v14;
  v15 = sub_217968AFC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFC8, &qword_21796B6E0);
  MEMORY[0x28223BE20](v19);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFD0, &qword_21796B6E8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v80 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v95 = &v79 - v25;
  v27 = _s16ArtistDetailViewVMa(0, a2, a3, v26);
  sub_217876FA0();
  v90 = v27;
  v91 = a1;
  v28 = *(a1 + *(v27 + 72) + 40);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFD8, &qword_21796B6F0);
  v30 = &v21[v29[12]];
  if (qword_27CB8A378 != -1)
  {
    swift_once();
  }

  _s13PreviewPlayerCMa(0);
  sub_21788D650(&qword_27CB8AFE0);

  *v30 = sub_2179668BC();
  v30[1] = v31;
  v32 = &v21[v29[13]];
  __asm { FMOV            V1.2D, #5.0 }

  *v32 = xmmword_21796B360;
  *(v32 + 1) = _Q1;
  *(v32 + 2) = xmmword_21796B370;
  (*(v16 + 16))(v21, v18, v15);
  *&v21[v29[9]] = v28;
  sub_217876960(&v100);
  v38 = v102;
  v39 = v103;
  __swift_project_boxed_opaque_existential_1(&v100, v102);
  v40 = (*(v39 + 104))(v38, v39);
  (*(v16 + 8))(v18, v15);
  v41 = v28 * v40;
  __swift_destroy_boxed_opaque_existential_1(&v100);
  *&v21[v29[10]] = v41;
  *&v21[v29[11]] = v41 * 0.5;
  v42 = sub_21796740C();
  v43 = &v21[*(v19 + 36)];
  *v43 = v42;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  v43[40] = 1;
  if (qword_27CB8A418 != -1)
  {
    swift_once();
  }

  v44 = xmmword_27CB97A58;
  v45 = qword_27CB97A68;
  v100 = xmmword_27CB97A58;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

  sub_2178EE0A8(v100, *(&v100 + 1), v45);

  sub_21788CF98();
  sub_21796790C();

  sub_21788D4D0(v21, &qword_27CB8AFC8);
  sub_21788B72C(v90, &v100);
  v46 = v100;
  v47 = v101;
  v48 = v102;
  v49 = v103;
  v96 = v44;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x747369747261, 0xE600000000000000);

  v51 = *(&v96 + 1);
  v50 = v96;
  v96 = v46;
  v97 = v47;
  v98 = v48;
  v99 = v49;
  sub_2178EE0A8(v50, v51, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFF8, &qword_21796B6F8);
  sub_21788D050();
  v52 = v93;
  sub_21796790C();
  sub_21788D0CC(v46, *(&v46 + 1), v47, v48);

  KeyPath = swift_getKeyPath();
  v54 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B008, &qword_21796B700) + 36);
  *v54 = KeyPath;
  *(v54 + 8) = 3;
  *(v54 + 16) = 0;
  v55 = swift_getKeyPath();
  v56 = v52 + *(v92 + 36);
  *v56 = v55;
  *(v56 + 8) = 1;
  v57 = *MEMORY[0x277CDFA10];
  v58 = sub_21796695C();
  v59 = v94;
  (*(*(v58 - 8) + 104))(v94, v57, v58);
  sub_21788D650(&unk_27CB8B010);
  result = sub_217968F1C();
  if (result)
  {
    sub_21788D108();
    sub_21788D5B8(&qword_27CB8B038);
    v61 = v83;
    sub_2179677CC();
    sub_21788D4D0(v59, &qword_27CB8AFA8);
    sub_21788D4D0(v52, &qword_27CB8AFB0);
    v62 = sub_2179673EC();
    v63 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B040, &qword_21796B710) + 36);
    *v63 = v62;
    *(v63 + 8) = 0u;
    *(v63 + 24) = 0u;
    v64 = v95;
    *(v63 + 40) = 1;
    v65 = (v61 + *(v81 + 36));
    v66 = *(sub_217966A2C() + 20);
    v67 = *MEMORY[0x277CE0118];
    v68 = sub_217966DAC();
    (*(*(v68 - 8) + 104))(&v65[v66], v67, v68);
    __asm { FMOV            V0.2D, #20.0 }

    *v65 = _Q0;
    sub_21788D2A4();
    sub_21788D650(&unk_27CB8B050);
    v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ADF0, &qword_21796B500) + 36)] = 0;
    sub_21788D3CC();
    sub_21788D650(&qword_27CB8AE00);
    v70 = v86;
    sub_217966A8C();
    v71 = v84;
    v72 = v88;
    sub_21796773C();
    (*(v87 + 8))(v70, v72);
    sub_21788D4D0(v61, &qword_27CB8AFB8);
    v73 = sub_21796741C();
    v74 = v71 + *(v82 + 36);
    *v74 = v73;
    *(v74 + 8) = 0u;
    *(v74 + 24) = 0u;
    *(v74 + 40) = 1;
    v75 = v80;
    sub_21788D484(v64, v80, &qword_27CB8AFD0, &qword_21796B6E8);
    v76 = v85;
    sub_21788D484(v71, v85, &qword_27CB8AFC0, &qword_21796B6D8);
    v77 = v89;
    sub_21788D484(v75, v89, &qword_27CB8AFD0, &qword_21796B6E8);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B060, &qword_21796B718);
    sub_21788D484(v76, v77 + *(v78 + 48), &qword_27CB8AFC0, &qword_21796B6D8);
    sub_21788D4D0(v71, &qword_27CB8AFC0);
    sub_21788D4D0(v64, &qword_27CB8AFD0);
    sub_21788D4D0(v76, &qword_27CB8AFC0);
    return sub_21788D4D0(v75, &qword_27CB8AFD0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21788B72C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v2 = sub_217966D7C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_217968AFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217876FA0();
  v7 = sub_217968A9C();
  v9 = v8;
  v10 = (*(v4 + 8))(v6, v3);
  *&v66 = v7;
  *(&v66 + 1) = v9;
  sub_217873C34(v10, v11, v12);
  v13 = sub_21796763C();
  v15 = v14;
  LOBYTE(v6) = v16;
  sub_2179674AC();
  sub_21796748C();

  v58 = sub_2179675DC();
  v59 = v17;
  v57 = v18;
  v60 = v19;

  sub_21788C9B8(v13, v15, v6 & 1);

  sub_217966D6C();
  sub_217966D5C();
  sub_217967B8C();
  sub_217966D3C();

  sub_217966D5C();
  sub_217966D9C();
  v20 = sub_21796761C();
  v22 = v21;
  LOBYTE(v6) = v23;
  sub_21796753C();
  sub_21796748C();

  v24 = sub_2179675DC();
  v26 = v25;
  LOBYTE(v4) = v27;

  sub_21788C9B8(v20, v22, v6 & 1);

  LODWORD(v66) = sub_2179670FC();
  v28 = sub_2179675BC();
  v30 = v29;
  LOBYTE(v9) = v31;
  sub_21788C9B8(v24, v26, v4 & 1);

  v32 = sub_21796759C();
  v34 = v33;
  v36 = v35;
  sub_21788C9B8(v28, v30, v9 & 1);

  if (sub_217878888(v55))
  {
    v38 = v57;
    v37 = v58;
    v39 = v59;
    v61 = v58;
    v62 = v59;
    v63 = v57 & 1;
    v64 = v60;
    v65 = 1;
    sub_217863114(v58, v59, v57 & 1);

    sub_217863114(v37, v39, v38 & 1);

    sub_217966F8C();
    sub_21788C9B8(v32, v34, v36 & 1);

    sub_21788C9B8(v37, v39, v38 & 1);

    v40 = v38 & 1;
    v41 = v37;
    v42 = v39;
  }

  else
  {
    sub_217966D6C();
    sub_217966D5C();
    sub_217966D2C();
    sub_217966D5C();
    sub_217966D2C();
    sub_217966D5C();
    sub_217966D9C();
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v43 = qword_27CB978B8;
    v44 = sub_21796761C();
    v46 = v45;
    v61 = v44;
    v62 = v45;
    v48 = v47 & 1;
    v63 = v47 & 1;
    v64 = v49;
    v65 = 0;
    sub_217863114(v44, v45, v47 & 1);

    sub_217863114(v44, v46, v48);

    sub_217966F8C();
    sub_21788C9B8(v32, v34, v36 & 1);

    sub_21788C9B8(v58, v59, v57 & 1);

    sub_21788C9B8(v44, v46, v48);

    v41 = v44;
    v42 = v46;
    v40 = v48;
  }

  sub_21788C9B8(v41, v42, v40);

  result = *&v66;
  v51 = v67;
  v52 = v68;
  v53 = v56;
  *v56 = v66;
  v53[1] = v51;
  *(v53 + 32) = v52;
  return result;
}

uint64_t sub_21788BDA4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v6);
  v7 = v0[6];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v7);
}

uint64_t sub_21788BE60()
{
  sub_21796973C();
  sub_21788BDA4();
  return sub_21796977C();
}

BOOL sub_21788BEA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_21788BD28(v5, v7);
}

uint64_t sub_21788BF94(uint64_t a1)
{
  sub_21796973C();
  sub_21788BDA4();
  return sub_21796977C();
}

void sub_21788C000(uint64_t a1)
{
  sub_21788C184(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    _s9ViewModelCMa(255, v4, v5, v2);
    swift_getWitnessTable();
    sub_217966ADC();
    if (v6 <= 0x3F)
    {
      sub_21788C1DC(319);
      if (v7 <= 0x3F)
      {
        sub_21788C240();
        if (v9 <= 0x3F)
        {
          _s16ArtistDetailViewV9ConstantsVMa(319, v4, v5, v8);
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21788C184(uint64_t a1)
{
  if (!qword_27CB8AD60[0])
  {
    sub_217968AFC();
    v1 = sub_217967C4C();
    if (!v2)
    {
      atomic_store(v1, qword_27CB8AD60);
    }
  }
}

void sub_21788C1DC(uint64_t a1)
{
  if (!qword_27CB8A628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A630, qword_21796A7B0);
    v1 = sub_2179666CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8A628);
    }
  }
}

void sub_21788C240()
{
  if (!qword_27CB8A648[0])
  {
    v0 = sub_217967C4C();
    if (!v1)
    {
      atomic_store(v0, qword_27CB8A648);
    }
  }
}

uint64_t sub_21788C2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21788C300(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21788C320(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_21788C3C4()
{
  OUTLINED_FUNCTION_45();
  v4 = _s16ArtistDetailViewVMa(v0, v1, v2, v3);
  OUTLINED_FUNCTION_48(v4);
  OUTLINED_FUNCTION_45();

  return sub_21787D010(v5, v6, v7);
}

uint64_t sub_21788C43C()
{
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_45();
  v8 = _s16ArtistDetailViewVMa(v4, v5, v6, v7);
  OUTLINED_FUNCTION_48(v8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v0[2];
  v12 = v0[3];
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_21788C52C;

  return sub_21787BCA4(v11, v12, v0 + v10, v2, v3);
}

uint64_t sub_21788C52C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_39();

  return v3();
}

unint64_t sub_21788C65C()
{
  result = qword_27CB8AE68;
  if (!qword_27CB8AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE18, &qword_21796B518);
    sub_21788D5B8(&unk_27CB8AE60);
    sub_21788D650(&qword_27CB8A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AE68);
  }

  return result;
}

unint64_t sub_21788C744()
{
  result = qword_27CB8AE70;
  if (!qword_27CB8AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE30, &unk_21796B528);
    sub_21788CA5C(&unk_27CB8AE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AE70);
  }

  return result;
}

unint64_t sub_21788C7F4()
{
  result = qword_27CB8AE88;
  if (!qword_27CB8AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE90, &unk_21796B590);
    sub_21788C8AC();
    sub_21788D5B8(&unk_27CB8AEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AE88);
  }

  return result;
}

unint64_t sub_21788C8AC()
{
  result = qword_27CB8AE98;
  if (!qword_27CB8AE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEA0, &unk_21796DA80);
    sub_21788D5B8(&qword_27CB8A890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AE98);
  }

  return result;
}

unint64_t sub_21788C964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8AEB8;
  if (!qword_27CB8AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AEB8);
  }

  return result;
}

uint64_t sub_21788C9B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21788C9C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_217966C6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_21788CA5C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v8 = v5();
    result = OUTLINED_FUNCTION_35_1(v8, v9, v10, v11, v12, v13, v14, v15, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21788CAEC()
{
  result = qword_27CB8AEE8;
  if (!qword_27CB8AEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEF0, &qword_21796B628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AEE8);
  }

  return result;
}

unint64_t sub_21788CB7C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v8 = v5();
    OUTLINED_FUNCTION_1_0();
    v17 = sub_21788D650(v9);
    result = OUTLINED_FUNCTION_35_1(v17, v10, v11, v12, v13, v14, v15, v16, v8);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21788CC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(OUTLINED_FUNCTION_58_1(a1, a2, a3, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = sub_21796681C();
  OUTLINED_FUNCTION_48(v12);
  v14 = v5 + ((v10 + v11 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_217889148(v4, v5 + v10, v14, v7, v8, v6);
}

uint64_t objectdestroyTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s16ArtistDetailViewVMa(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_13();
  v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  sub_217968AFC();
  OUTLINED_FUNCTION_4_1();
  (*(v9 + 8))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);

  OUTLINED_FUNCTION_59_1();
  sub_2178643E0(*(v6 + 24));

  v10 = v8 + v4[12];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_57_1(v4[13]);

  sub_2178643E0(*(v8 + v4[14]));
  OUTLINED_FUNCTION_59_1();
  sub_2178643E0(*(v6 + 24));
  OUTLINED_FUNCTION_59_1();
  sub_2178643E0(*(v6 + 24));
  OUTLINED_FUNCTION_59_1();
  sub_2178643E0(*(v6 + 24));
  OUTLINED_FUNCTION_57_1(v4[19]);

  OUTLINED_FUNCTION_57_1(v4[20]);

  return swift_deallocObject();
}

uint64_t sub_21788CE9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_58_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_48(v8);
  v10 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a2(v4, v10, v6, v7);
}

unint64_t sub_21788CF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8AF80;
  if (!qword_27CB8AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AF80);
  }

  return result;
}

unint64_t sub_21788CF98()
{
  result = qword_27CB8AFE8;
  if (!qword_27CB8AFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AFC8, &qword_21796B6E0);
    sub_21788D5B8(&unk_27CB8AFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AFE8);
  }

  return result;
}

unint64_t sub_21788D050()
{
  result = qword_27CB8B000;
  if (!qword_27CB8B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AFF8, &qword_21796B6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B000);
  }

  return result;
}

uint64_t sub_21788D0CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_21788C9B8(a1, a2, a3 & 1);
}

unint64_t sub_21788D108()
{
  result = qword_27CB8B018;
  if (!qword_27CB8B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AFB0, &qword_21796B6C8);
    sub_21788D1C0();
    sub_21788D5B8(&unk_27CB8AEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B018);
  }

  return result;
}

unint64_t sub_21788D1C0()
{
  result = qword_27CB8B020;
  if (!qword_27CB8B020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B008, &qword_21796B700);
    sub_21788CB7C(&unk_27CB8B028);
    sub_21788D5B8(&qword_27CB8A890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B020);
  }

  return result;
}

unint64_t sub_21788D2A4()
{
  result = qword_27CB8B048;
  if (!qword_27CB8B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B040, &qword_21796B710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AFB0, &qword_21796B6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AFA8, &qword_21796B6C0);
    sub_21788D108();
    sub_21788D5B8(&qword_27CB8B038);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B048);
  }

  return result;
}

unint64_t sub_21788D3CC()
{
  result = qword_27CB8B058;
  if (!qword_27CB8B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AFB8, &qword_21796B6D0);
    sub_21788D2A4();
    sub_21788D5B8(&qword_27CB8ADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B058);
  }

  return result;
}

uint64_t sub_21788D484(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_69(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v4;
}

uint64_t sub_21788D4D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_63_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_21788D5B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_51_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21788D5F4(uint64_t a1)
{
  v2 = sub_217966A2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21788D650(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_51_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t result)
{
  *(v2 - 168) = v1;
  *(v2 - 160) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 240) = a2;
  *(v2 - 232) = a1;
  return MEMORY[0x277CE0340];
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t result)
{
  *(v2 - 136) = v1;
  *(v2 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{

  return sub_21788D5B8(a1);
}

void OUTLINED_FUNCTION_38_1()
{
  v3 = (v0 + *(v1 + 52));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v2 + 56) = v4;
  *(v2 + 64) = v5;
  *(v2 + 304) = 1;
}

void OUTLINED_FUNCTION_40_0()
{
  v3 = (v1 + *(v2 + 52));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  *(v0 + 305) = 0;
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);

  return _s16ArtistDetailViewVMa(0, v6, v7, a4);
}

uint64_t OUTLINED_FUNCTION_59_1()
{
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_68_1()
{
  *(v3 + 4) = v1;
  *(v3 + 12) = 2082;
  *(v2 + 88) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_69_0(uint64_t a1)
{

  return MEMORY[0x28211DB18](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return sub_2179657FC();
}

uint64_t OUTLINED_FUNCTION_83_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 136) = v1 - a1;

  return sub_21796577C();
}

uint64_t OUTLINED_FUNCTION_87_0()
{
}

void *sub_21788DC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v118 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B208, &qword_21796B930);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_45_0();
  v117 = v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B210, &qword_21796B938);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_45_0();
  v107 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  OUTLINED_FUNCTION_48(v8);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_45_0();
  v100 = v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B220, &qword_21796B940);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_45_0();
  v111 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B228, &qword_21796B948);
  OUTLINED_FUNCTION_48(v13);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_45_0();
  v110 = v15;
  v112 = sub_217965E6C();
  OUTLINED_FUNCTION_2();
  v99 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14();
  v101 = v19 - v18;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B230, &qword_21796B950);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_45_0();
  v104 = v21;
  v22 = sub_217965EFC();
  OUTLINED_FUNCTION_2();
  v109 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14();
  v108 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  OUTLINED_FUNCTION_48(v27);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v28);
  v30 = v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B240, &qword_21796B958);
  OUTLINED_FUNCTION_48(v31);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v32);
  v34 = v97 - v33;
  sub_217965E9C();
  OUTLINED_FUNCTION_2();
  v113 = v36;
  v114 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14();
  v39 = v38 - v37;
  v103 = v2;
  v102 = a1;
  v41 = *(a1 + 16);
  v40 = *(a1 + 24);
  _s9ViewModelCMa(0, v41, v40, v42);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D8900();

  v43 = v22;
  if (__swift_getEnumTagSinglePayload(v30, 1, v22))
  {
    sub_2178653BC(v30, &qword_27CB8B238, &qword_21796C6B0);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v114);
LABEL_4:
    sub_2178653BC(v34, &qword_27CB8B240, &qword_21796B958);
    swift_storeEnumTagMultiPayload();
    sub_21788FC2C();
    return sub_217966F8C();
  }

  v44 = v110;
  v97[0] = v41;
  v97[1] = v40;
  v45 = v112;
  v98 = v39;
  v46 = v113;
  v47 = v111;
  v48 = v108;
  v49 = v109;
  (*(v109 + 16))(v108, v30, v43);
  sub_2178653BC(v30, &qword_27CB8B238, &qword_21796C6B0);
  sub_217965EEC();
  (*(v49 + 8))(v48, v43);
  v50 = v114;
  if (__swift_getEnumTagSinglePayload(v34, 1, v114) == 1)
  {
    goto LABEL_4;
  }

  v52 = v46;
  v53 = v98;
  (*(v46 + 32))(v98, v34, v50);
  v54 = sub_217965E7C();
  sub_217936598(v54);

  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    sub_2178653BC(v44, &qword_27CB8B228, &qword_21796B948);
    v55 = sub_217965E8C();
    v57 = v56;
    v58 = sub_21796572C();
    v59 = v100;
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v58);
    sub_21788E620(v55, v57, 0, 0, v59);

    sub_2178653BC(v59, &qword_27CB8B218, &unk_217970AE0);
    sub_2179673FC();
    sub_21796660C();
    OUTLINED_FUNCTION_13_1();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B260, &qword_21796B960);
    v61 = OUTLINED_FUNCTION_8_1(v60);
    v62 = v50;
    OUTLINED_FUNCTION_11_1(v61, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B290, &qword_21796B978);
    OUTLINED_FUNCTION_10_1();
    sub_21788EFE4(v64, v65, v66, v67);
    sub_21788FD68();
    OUTLINED_FUNCTION_5_0(&qword_27CB8B2A0, &qword_27CB8B298, &qword_21796B980);
    v68 = sub_217967E3C();
    v70 = v69;
    v71 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B288, &qword_21796B970) + 36));
    *v71 = v68;
    v71[1] = v70;
    OUTLINED_FUNCTION_9_0();
    swift_storeEnumTagMultiPayload();
    v72 = sub_21788FCB0();
    OUTLINED_FUNCTION_7_0(v72);
    sub_2178653BC(v47, &qword_27CB8B220, &qword_21796B940);
  }

  else
  {
    v73 = v101;
    (*(v99 + 32))(v101, v44, v45);
    v110 = sub_217965E8C();
    v75 = v74;
    v76 = sub_217965E5C();
    v77 = (v103 + *(v102 + 44));
    v78 = *v77;
    v79 = v77[1];
    v119 = v76;
    v120 = v80;

    MEMORY[0x21CEA7F50](v78, v79);

    v45 = v119;
    v81 = v120;
    v82 = v100;
    sub_217965E4C();
    v83 = sub_21796572C();
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v83);
    sub_21788E620(v110, v75, v45, v81, v82);

    v84 = v82;
    v62 = v50;
    sub_2178653BC(v84, &qword_27CB8B218, &unk_217970AE0);
    v52 = v113;
    sub_2179673FC();
    sub_21796660C();
    OUTLINED_FUNCTION_13_1();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B260, &qword_21796B960);
    v86 = OUTLINED_FUNCTION_8_1(v85);
    OUTLINED_FUNCTION_11_1(v86, v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B290, &qword_21796B978);
    v53 = v98;
    OUTLINED_FUNCTION_10_1();
    sub_21788E800(v88, v89, v90, v91);
    sub_21788FD68();
    OUTLINED_FUNCTION_5_0(&qword_27CB8B2A0, &qword_27CB8B298, &qword_21796B980);
    v92 = sub_217967E3C();
    v94 = v93;
    v95 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B288, &qword_21796B970) + 36));
    *v95 = v92;
    v95[1] = v94;
    OUTLINED_FUNCTION_9_0();
    swift_storeEnumTagMultiPayload();
    v96 = sub_21788FCB0();
    OUTLINED_FUNCTION_7_0(v96);
    sub_2178653BC(v47, &qword_27CB8B220, &qword_21796B940);
    (*(v99 + 8))(v101, v112);
  }

  sub_217864D70(v45, v117, &qword_27CB8B230, &qword_21796B950);
  swift_storeEnumTagMultiPayload();
  sub_21788FC2C();
  sub_217966F8C();
  sub_2178653BC(v45, &qword_27CB8B230, &qword_21796B950);
  return (*(v52 + 8))(v53, v62);
}

void *sub_21788E620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t x4_0)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2D0, &qword_21796B9B0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for WrappedTextWithLinkView(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  v21 = (v20 - v19);
  if (a4)
  {
    sub_217864D70(x4_0, v21 + *(v14 + 24), &qword_27CB8B218, &unk_217970AE0);
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;
    v21[3] = a4;
    sub_21788FF3C(v21, v13);
    swift_storeEnumTagMultiPayload();
    sub_21788FE80();

    sub_217966F8C();
    return sub_21788FFA0(v21);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;
    sub_217873C34(v16, v17, v18);

    *v13 = sub_21796763C();
    *(v13 + 1) = v23;
    v13[16] = v24 & 1;
    *(v13 + 3) = v25;
    swift_storeEnumTagMultiPayload();
    sub_21788FE80();
    return sub_217966F8C();
  }
}

uint64_t sub_21788E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v7 = sub_217967E0C();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2A8, &qword_21796B988);
  MEMORY[0x28223BE20](v89);
  v90 = &v71 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2B0, &qword_21796B990);
  v10 = MEMORY[0x28223BE20](v88);
  v95 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v92 = &v71 - v14;
  v97 = sub_2179666BC();
  v15 = *(v97 - 8);
  v16 = MEMORY[0x28223BE20](v97);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  v21 = sub_217966A2C();
  v22 = MEMORY[0x28223BE20](v21);
  v83 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = (&v71 - v24);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2B8, &qword_21796B998);
  MEMORY[0x28223BE20](v80);
  v27 = &v71 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2C0, &qword_21796B9A0);
  v28 = MEMORY[0x28223BE20](v81);
  v86 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v79 = &v71 - v31;
  MEMORY[0x28223BE20](v30);
  v84 = &v71 - v32;
  v71 = (a1 + *(_s13SearchContextVMa(0, a2, a3, v33) + 40));
  v34 = *v71;
  v82 = v21;
  v35 = *(v21 + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_217966DAC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v78 = v36;
  v77 = v37;
  v76 = v39;
  v75 = v38 + 104;
  (v39)(v25 + v35, v36);
  *v25 = v34;
  v25[1] = v34;
  sub_21795626C();
  v40 = *(v15 + 104);
  v74 = *MEMORY[0x277CDF3D0];
  v41 = v97;
  v73 = v40;
  v40(v18);
  LOBYTE(a3) = sub_2179666AC();
  v42 = *(v15 + 8);
  v85 = v18;
  v42(v18, v41);
  v43 = v20;
  v72 = v42;
  v42(v20, v41);
  if (a3)
  {
    v44 = sub_217967B1C();
  }

  else
  {
    v44 = sub_217967B0C();
  }

  v45 = v44;
  sub_21788FED8(v25, v27);
  v46 = v80;
  *&v27[*(v80 + 52)] = v45;
  *&v27[*(v46 + 56)] = 256;
  sub_217967ADC();
  v47 = v71;
  v48 = sub_217967B2C();

  v49 = v47[2];
  v50 = v79;
  sub_217864D20(v27, v79, &qword_27CB8B2B8, &qword_21796B998);
  v51 = (v50 + *(v81 + 36));
  *v51 = v48;
  v51[1] = v49;
  v51[2] = 0;
  v51[3] = 0;
  v52 = v50;
  v53 = v84;
  sub_217864D20(v52, v84, &qword_27CB8B2C0, &qword_21796B9A0);
  v54 = v83;
  v76(&v83[*(v82 + 20)], v78, v77);
  *v54 = v34;
  v54[1] = v34;
  v55 = v91;
  sub_217967DEC();
  v56 = v43;
  sub_21795626C();
  v57 = v85;
  v58 = v97;
  v73(v85, v74, v97);
  v59 = sub_2179666AC();
  v60 = v72;
  v72(v57, v58);
  v60(v56, v58);
  if (v59)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = 1.0;
  }

  v62 = v90;
  (*(v93 + 32))(v90, v55, v94);
  *(v62 + *(v89 + 36)) = v61;
  v63 = v87;
  sub_21788FED8(v54, v87);
  v64 = v88;
  sub_217864D20(v62, v63 + *(v88 + 52), &qword_27CB8B2A8, &qword_21796B988);
  *(v63 + *(v64 + 56)) = 256;
  v65 = v92;
  sub_217864D20(v63, v92, &qword_27CB8B2B0, &qword_21796B990);
  v66 = v86;
  sub_217864D70(v53, v86, &qword_27CB8B2C0, &qword_21796B9A0);
  v67 = v95;
  sub_217864D70(v65, v95, &qword_27CB8B2B0, &qword_21796B990);
  v68 = v96;
  sub_217864D70(v66, v96, &qword_27CB8B2C0, &qword_21796B9A0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2C8, &qword_21796B9A8);
  sub_217864D70(v67, v68 + *(v69 + 48), &qword_27CB8B2B0, &qword_21796B990);
  sub_2178653BC(v65, &qword_27CB8B2B0, &qword_21796B990);
  sub_2178653BC(v53, &qword_27CB8B2C0, &qword_21796B9A0);
  sub_2178653BC(v67, &qword_27CB8B2B0, &qword_21796B990);
  return sub_2178653BC(v66, &qword_27CB8B2C0, &qword_21796B9A0);
}

uint64_t sub_21788EFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v83 = sub_217967E0C();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2A8, &qword_21796B988);
  MEMORY[0x28223BE20](v78);
  v79 = &v66 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2B0, &qword_21796B990);
  v9 = MEMORY[0x28223BE20](v77);
  v84 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v82 = &v66 - v13;
  v14 = sub_2179666BC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = sub_217966A2C();
  v22 = MEMORY[0x28223BE20](v21);
  v74 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = (&v66 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2B8, &qword_21796B998);
  MEMORY[0x28223BE20](v26);
  v72 = &v66 - v27;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2C0, &qword_21796B9A0);
  v28 = MEMORY[0x28223BE20](v71);
  v75 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v70 = &v66 - v31;
  MEMORY[0x28223BE20](v30);
  v89 = &v66 - v32;
  v34 = _s13SearchContextVMa(0, a2, a3, v33);
  v86 = (a1 + *(v34 + 40));
  v35 = *v86;
  v73 = v21;
  v36 = *(v21 + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_217966DAC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 104);
  v69 = v37;
  v68 = v38;
  v67 = v40;
  v66 = v39 + 104;
  (v40)(v25 + v36, v37);
  *v25 = v35;
  v25[1] = v35;
  v41 = *(v34 + 36);
  v90 = a1;
  v88 = v41;
  sub_21795626C();
  v42 = *MEMORY[0x277CDF3D0];
  v87 = *(v15 + 104);
  v87(v18, v42, v14);
  LOBYTE(v36) = sub_2179666AC();
  v43 = *(v15 + 8);
  v43(v18, v14);
  v43(v20, v14);
  if (v36)
  {
    v44 = sub_217967B1C();
  }

  else
  {
    v44 = sub_217967B0C();
  }

  v45 = v44;
  v46 = v25;
  v47 = v72;
  sub_21788FED8(v46, v72);
  *(v47 + *(v26 + 52)) = v45;
  *(v47 + *(v26 + 56)) = 256;
  sub_217967ADC();
  sub_21795626C();
  v87(v18, v42, v14);
  sub_2179666AC();
  v43(v18, v14);
  v43(v20, v14);
  v48 = sub_217967B2C();

  v49 = v86[2];
  v50 = v70;
  sub_217864D20(v47, v70, &qword_27CB8B2B8, &qword_21796B998);
  v51 = (v50 + *(v71 + 36));
  *v51 = v48;
  v51[1] = v49;
  v51[2] = 0;
  v51[3] = 0;
  sub_217864D20(v50, v89, &qword_27CB8B2C0, &qword_21796B9A0);
  v52 = v74;
  v67(&v74[*(v73 + 20)], v69, v68);
  *v52 = v35;
  v52[1] = v35;
  v53 = v80;
  sub_217967DEC();
  sub_21795626C();
  v87(v18, v42, v14);
  v54 = sub_2179666AC();
  v43(v18, v14);
  v43(v20, v14);
  if (v54)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = 1.0;
  }

  v56 = v79;
  (*(v81 + 32))(v79, v53, v83);
  *(v56 + *(v78 + 36)) = v55;
  v57 = v76;
  sub_21788FED8(v52, v76);
  v58 = v77;
  sub_217864D20(v56, v57 + *(v77 + 52), &qword_27CB8B2A8, &qword_21796B988);
  *(v57 + *(v58 + 56)) = 256;
  v59 = v82;
  sub_217864D20(v57, v82, &qword_27CB8B2B0, &qword_21796B990);
  v60 = v89;
  v61 = v75;
  sub_217864D70(v89, v75, &qword_27CB8B2C0, &qword_21796B9A0);
  v62 = v84;
  sub_217864D70(v59, v84, &qword_27CB8B2B0, &qword_21796B990);
  v63 = v85;
  sub_217864D70(v61, v85, &qword_27CB8B2C0, &qword_21796B9A0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2C8, &qword_21796B9A8);
  sub_217864D70(v62, v63 + *(v64 + 48), &qword_27CB8B2B0, &qword_21796B990);
  sub_2178653BC(v59, &qword_27CB8B2B0, &qword_21796B990);
  sub_2178653BC(v60, &qword_27CB8B2C0, &qword_21796B9A0);
  sub_2178653BC(v62, &qword_27CB8B2B0, &qword_21796B990);
  return sub_2178653BC(v61, &qword_27CB8B2C0, &qword_21796B9A0);
}

double sub_21788F830@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  _s9ViewModelCMa(0, a1, a2, a4);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  *a3 = sub_217966ACC();
  a3[1] = v7;
  v9 = _s13SearchContextVMa(0, a1, a2, v8);
  v10 = v9[9];
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0F0, &dword_21796B7F0);
  swift_storeEnumTagMultiPayload();
  v11 = (a3 + v9[10]);
  *v11 = xmmword_21796B790;
  v11[1] = xmmword_21796B7A0;
  result = 1.0;
  v11[2] = xmmword_21796B7B0;
  v13 = (a3 + v9[11]);
  *v13 = 2542199328;
  v13[1] = 0xA400000000000000;
  return result;
}

uint64_t sub_21788F938(uint64_t a1)
{
  v2 = sub_2179666BC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_217966B2C();
}

void sub_21788FA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  _s9ViewModelCMa(255, v4, v5, a4);
  swift_getWitnessTable();
  sub_217966ADC();
  if (v6 <= 0x3F)
  {
    sub_21788FB20(319);
    if (v8 <= 0x3F)
    {
      _s13SearchContextV9ConstantsVMa(319, v4, v5, v7);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21788FB20(uint64_t a1)
{
  if (!qword_27CB8B180[0])
  {
    sub_2179666BC();
    v1 = sub_2179666CC();
    if (!v2)
    {
      atomic_store(v1, qword_27CB8B180);
    }
  }
}

uint64_t sub_21788FB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_21788FC2C()
{
  result = qword_27CB8B248;
  if (!qword_27CB8B248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B230, &qword_21796B950);
    sub_21788FCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B248);
  }

  return result;
}

unint64_t sub_21788FCB0()
{
  result = qword_27CB8B250;
  if (!qword_27CB8B250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B220, &qword_21796B940);
    sub_21788FD68();
    sub_217864B2C(&qword_27CB8B280, &qword_27CB8B288, &qword_21796B970, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B250);
  }

  return result;
}

unint64_t sub_21788FD68()
{
  result = qword_27CB8B258;
  if (!qword_27CB8B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B260, &qword_21796B960);
    sub_21788FDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B258);
  }

  return result;
}

unint64_t sub_21788FDF4()
{
  result = qword_27CB8B268;
  if (!qword_27CB8B268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B270, &qword_21796B968);
    sub_21788FE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B268);
  }

  return result;
}

unint64_t sub_21788FE80()
{
  result = qword_27CB8B278;
  if (!qword_27CB8B278)
  {
    type metadata accessor for WrappedTextWithLinkView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B278);
  }

  return result;
}

uint64_t sub_21788FED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_217966A2C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21788FF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappedTextWithLinkView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21788FFA0(uint64_t a1)
{
  v2 = type metadata accessor for WrappedTextWithLinkView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21788FFFC()
{
  result = qword_27CB8B2D8;
  if (!qword_27CB8B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B2E0, &qword_21796B9B8);
    sub_21788FC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B2D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CE11A8];

  return sub_217864B2C(a1, a2, a3, v4);
}

void *OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return sub_217966F8C();
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{
  v8 = v2 + *(a1 + 36);
  *v8 = v1;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;
  *(v8 + 40) = 0;

  return sub_217967E3C();
}

uint64_t OUTLINED_FUNCTION_9_0()
{
  v5 = *(v3 - 232);

  return sub_217864D70(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t result, uint64_t a2)
{
  v4 = (v2 + *(*(v3 - 248) + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

void sub_217890174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = sub_2178901B4(a3, a4, a5);

  sub_217890908(v6, v7, a1);
}

uint64_t sub_2178901B4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a1;
  v21[0] = a1;
  v21[1] = a2;
  v6 = objc_allocWithZone(MEMORY[0x277D75C40]);

  v7 = [v6 initReadonlyAndUnselectableWithFrame:0 textContainer:{0.0, 0.0, a3, 0.0}];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  sub_2178908B0(v5, a2, v7);
  v9 = [objc_opt_self() systemFontOfSize_];
  [v8 setFont_];

  [v8 setTextContainerInset_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v10 = [v8 textContainer];
  [v10 setLineFragmentPadding_];

  v11 = [v8 textContainer];
  [v11 setLineBreakMode_];

  [v8 layoutIfNeeded];
  v12 = [v8 textContainer];
  v13 = [v12 textLayoutManager];

  if (!v13)
  {

    v7 = 0;
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21789097C;
  *(v15 + 24) = v14;
  v20[4] = sub_217890984;
  v20[5] = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_217890854;
  v20[3] = &block_descriptor;
  v16 = _Block_copy(v20);

  v17 = [v13 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v16];

  swift_unknownObjectRelease();
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v21[0];
    v7 = sub_21789097C;
LABEL_7:
    sub_21789096C(v7, v14);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2178904E0(void *a1, uint64_t *a2)
{
  v4 = sub_2179655BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 textLineFragments];
  sub_2178909C8();
  v9 = sub_2179690CC();

  if (sub_217964FB0())
  {
    sub_21791913C(0, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x21CEA8490](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;

    v12 = [a1 textLineFragments];
    sub_2179690CC();

    v13 = sub_217964FB0();

    if (v13 < 2)
    {

      return 1;
    }

    v14 = [v11 attributedString];
    v15 = [v11 characterRange];
    v17 = [v14 attributedSubstringFromRange_];

    v18 = [v17 string];
    v19 = sub_217968F6C();
    v21 = v20;

    v36[0] = v19;
    v36[1] = v21;
    v22 = sub_21796559C();
    sub_217873C34(v22, v23, v24);
    v25 = MEMORY[0x277D837D0];
    v26 = sub_21796947C();
    v28 = v27;
    (*(v5 + 8))(v7, v4);

    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    sub_21796560C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21796A340;
    *(v29 + 56) = v25;
    *(v29 + 64) = sub_21788C964(v29, v30, v31);
    *(v29 + 32) = v26;
    *(v29 + 40) = v28;
    v32 = sub_217968F7C();
    v34 = v33;

    *a2 = v32;
    a2[1] = v34;
  }

  return 1;
}

uint64_t sub_217890854(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void sub_2178908B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_217968F2C();
  [a3 setText_];
}

void sub_217890908(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_217968F2C();

  [a3 setPrompt_];
}

uint64_t sub_21789096C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2178909C8()
{
  result = qword_27CB8B2E8;
  if (!qword_27CB8B2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB8B2E8);
  }

  return result;
}

uint64_t _s5ClickV11ControlKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s19AccessoryButtonKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217890B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8B2F0;
  if (!qword_27CB8B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B2F0);
  }

  return result;
}

uint64_t sub_217890BD0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v39 = *a2;
  v38 = *(a2 + 8);
  v37 = *(a2 + 3);
  v44[0] = a16;
  v44[1] = a17;
  v44[2] = a18;
  v44[3] = a19;
  v23 = _s19ContainerHeaderCellVMa(0, v44);
  v24 = (a9 + v23[19]);
  _s9ViewModelCMa(0, a17, a19, v25);
  swift_getWitnessTable();
  *v24 = sub_217966ACC();
  v24[1] = v26;
  v27 = (a9 + v23[20]);
  *v27 = xmmword_21796BA50;
  v27[1] = xmmword_21796BA60;
  v27[2] = xmmword_21796BA70;
  v27[3] = xmmword_21796BA80;
  v27[4] = xmmword_21796BA90;
  v28 = *(a16 - 8);
  (*(v28 + 16))(a9, a1, a16);
  v29 = a9 + v23[13];
  *v29 = v39;
  *(v29 + 8) = v38;
  *(v29 + 24) = v37;
  v30 = (a9 + v23[14]);
  *v30 = a3;
  v30[1] = a4;
  if (!a6)
  {
    a5 = (*(a18 + 72))(a16, a18);
    a6 = v31;
  }

  result = (*(v28 + 8))(a1, a16);
  v33 = (a9 + v23[15]);
  *v33 = a5;
  v33[1] = a6;
  v34 = (a9 + v23[16]);
  *v34 = a7;
  v34[1] = a8;
  v35 = (a9 + v23[17]);
  *v35 = a14;
  v35[1] = a15;
  v36 = a9 + v23[18];
  *v36 = a10;
  *(v36 + 8) = a11;
  *(v36 + 16) = a12;
  return result;
}

uint64_t sub_217890E40(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5D0, &qword_21796BE88);
  MEMORY[0x21CEA6C70](&v7, v5);
  return v7;
}

uint64_t sub_217890EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0B0, &unk_21796BF60);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2179689AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a1 + 56) + 8))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v17);
  }

  else
  {
    (*(v10 + 16))(v12, v2, v9);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
      (*(v14 + 32))(v16, v8, v13);
      sub_21796898C();
      return (*(v14 + 8))(v16, v13);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
      sub_217899038(v8, &qword_27CB8B0B0);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);
      return __swift_storeEnumTagSinglePayload(a2, 1, 1, v19);
    }
  }
}

BOOL sub_217891168(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_21796809C();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB38, &unk_21796B110);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B678, &qword_21796BEF8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_217968AFC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217890EA0(a1, v10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
  {
    sub_217899038(v10, &qword_27CB8AB38);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  }

  else
  {
    sub_217936650(v13);
    (*(*(v18 - 8) + 8))(v10, v18);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      sub_2179684BC();
      sub_21796808C();
      (*(v23 + 8))(v7, v5);
      (*(v15 + 8))(v17, v14);
      v20 = sub_21796862C();
      v19 = __swift_getEnumTagSinglePayload(v4, 1, v20) == 1;
      sub_217899038(v4, &qword_27CB8AC40);
      return v19;
    }
  }

  sub_217899038(v13, &qword_27CB8B678);
  return 1;
}

uint64_t sub_217891518(uint64_t a1)
{
  v3 = sub_2179689AC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  MEMORY[0x28223BE20](v5);
  if (*(v1 + *(a1 + 56) + 8))
  {

    return sub_217967B4C();
  }

  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v8);
  if (!swift_dynamicCast())
  {
    return sub_217967B4C();
  }

  (*(v4 + 8))(v7, v3);
  if (qword_27CB8A350 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21789170C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_217966FAC();
  OUTLINED_FUNCTION_2();
  v48 = v4;
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 + 3;
  v46 = a1 + 5;
  v8 = a1[4];
  v42 = a1[2];
  v7 = v42;
  v43 = v8;
  _s11ArtworkViewVMa(255, v42, v8, v9);
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B410, &qword_21796BCC0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  v59 = sub_21796698C();
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B418, &unk_21796BCC8);
  _s9CellTitleVMa(255, v7, v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B420, &qword_21796BCD8);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  v56 = sub_21796698C();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B428, &qword_21796BCE0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B430, &qword_21796BCE8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  v60 = sub_217967CDC();
  v61 = MEMORY[0x277CE1180];
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B438, &unk_21796BCF0);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_4();
  v11 = sub_21796698C();
  v14 = OUTLINED_FUNCTION_10_2(v11, v12, v13);
  v15 = OUTLINED_FUNCTION_8_2(&qword_27CB8ADF8);
  v53 = v14;
  v54 = v15;
  OUTLINED_FUNCTION_1();
  v40 = v11;
  swift_getWitnessTable();
  v16 = sub_217967CDC();
  OUTLINED_FUNCTION_2();
  v41 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  OUTLINED_FUNCTION_7_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  v23 = sub_21789908C(v22);
  v59 = v16;
  v60 = v3;
  v61 = WitnessTable;
  v62 = v23;
  v38 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v39 = v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v38 - v30;
  sub_217966E6C();
  *&v32 = v42;
  *(&v32 + 1) = *v45;
  *&v33 = v43;
  *(&v33 + 1) = *v46;
  v50 = v32;
  v51 = v33;
  v52 = v47;
  sub_217967CCC();
  v34 = v44;
  v35 = OUTLINED_FUNCTION_17_2();
  sub_217884F70(v35);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_59();
  sub_21796773C();
  (*(v48 + 8))(v34, v3);
  (*(v41 + 8))(v20, v16);
  v59 = v16;
  v60 = v3;
  v61 = WitnessTable;
  v62 = v23;
  swift_getOpaqueTypeConformance2();
  sub_2179560E4();
  v36 = *(v39 + 8);
  v36(v29, OpaqueTypeMetadata2);
  sub_2179560E4();
  return (v36)(v31, OpaqueTypeMetadata2);
}

uint64_t sub_217891CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v37 = a1;
  v41 = a6;
  v39 = sub_217966A2C();
  MEMORY[0x28223BE20](v39);
  v40 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11ArtworkViewVMa(255, a2, a4, v10);
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B410, &qword_21796BCC0);
  sub_21796698C();
  v53 = sub_21796698C();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B418, &unk_21796BCC8);
  _s9CellTitleVMa(255, a2, a4, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B420, &qword_21796BCD8);
  sub_21796698C();
  v50 = sub_21796698C();
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B428, &qword_21796BCE0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B430, &qword_21796BCE8);
  swift_getTupleTypeMetadata();
  sub_217967E9C();
  swift_getWitnessTable();
  v54 = sub_217967CDC();
  v55 = MEMORY[0x277CE1180];
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B438, &unk_21796BCF0);
  swift_getTupleTypeMetadata();
  sub_217967E9C();
  v33[1] = swift_getWitnessTable();
  v12 = sub_217967CAC();
  v35 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v33 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  v15 = sub_21796698C();
  v36 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v34 = v33 - v19;
  sub_217966D1C();
  v42 = a2;
  v43 = a3;
  v20 = a4;
  v44 = a4;
  v21 = v38;
  v22 = v37;
  v45 = v38;
  v46 = v37;
  sub_217967C9C();
  v53 = a2;
  v54 = a3;
  v55 = v20;
  v56 = v21;
  v23 = *(v22 + *(_s19ContainerHeaderCellVMa(0, &v53) + 80) + 64);
  v24 = *(v39 + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_217966DAC();
  v27 = v40;
  (*(*(v26 - 8) + 104))(&v40[v24], v25, v26);
  *v27 = v23;
  v27[1] = v23;
  WitnessTable = swift_getWitnessTable();
  sub_21789908C(&unk_27CB8B050);
  sub_217862E84();
  sub_21796779C();
  sub_21788D5F4(v27);
  (*(v35 + 8))(v14, v12);
  v29 = sub_217898FF8(&qword_27CB8ADF8);
  v47 = WitnessTable;
  v48 = v29;
  swift_getWitnessTable();
  v30 = v34;
  sub_2179560E4();
  v31 = *(v36 + 8);
  v31(v18, v15);
  sub_2179560E4();
  return (v31)(v30, v15);
}

uint64_t sub_2178922D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v145 = a5;
  v144 = a3;
  v141 = a6;
  v137 = sub_217966FAC();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B440, &qword_21796BD00);
  MEMORY[0x28223BE20](v131);
  v130 = (&v110 - v10);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B448, &qword_21796BD08);
  MEMORY[0x28223BE20](v132);
  v133 = &v110 - v11;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B438, &unk_21796BCF0);
  v12 = MEMORY[0x28223BE20](v138);
  v140 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v139 = &v110 - v14;
  *&v161 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B418, &unk_21796BCC8);
  _s9CellTitleVMa(255, a2, a4, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B420, &qword_21796BCD8);
  sub_21796698C();
  sub_21796732C();
  *(&v161 + 1) = sub_21796698C();
  *&v162 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B428, &qword_21796BCE0);
  *(&v162 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B430, &qword_21796BCE8);
  swift_getTupleTypeMetadata();
  v16 = sub_217967E9C();
  WitnessTable = swift_getWitnessTable();
  v125 = v16;
  v123 = WitnessTable;
  v134 = sub_217967CDC();
  v146 = *(v134 - 8);
  v18 = MEMORY[0x28223BE20](v134);
  v148 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v110 - v20;
  v110 = sub_217966A2C();
  MEMORY[0x28223BE20](v110);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B450, &qword_21796BD10);
  v23 = MEMORY[0x28223BE20](v122);
  v121 = &v110 - v24;
  v25 = *(a2 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s11ArtworkViewVMa(0, a2, a4, v28);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v110 - v31;
  v33 = sub_21796698C();
  v117 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v111 = &v110 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B410, &qword_21796BCC0);
  v113 = v33;
  v35 = sub_21796698C();
  v118 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v116 = &v110 - v36;
  v119 = v37;
  v126 = sub_21796698C();
  v142 = *(v126 - 8);
  v38 = MEMORY[0x28223BE20](v126);
  v149 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v143 = &v110 - v40;
  (*(v25 + 16))(v27, a1, a2);
  *&v161 = a2;
  *(&v161 + 1) = v144;
  *&v162 = a4;
  *(&v162 + 1) = v145;
  v120 = _s19ContainerHeaderCellVMa(0, &v161);
  v41 = *(v120 + 80);
  v129 = a1;
  v42 = a1 + v41;
  v43 = *(v42 + 16);
  v124 = v42;
  v127 = a2;
  v128 = a4;
  sub_21790B394(v27, a2, a4, v44);
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v114 = *(&xmmword_27CB979E0 + 1);
  v115 = xmmword_27CB979E0;
  v161 = xmmword_27CB979E0;
  v45 = qword_27CB979F0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

  v46 = v161;
  v47 = swift_getWitnessTable();
  v48 = v111;
  v112 = v45;
  sub_2178ED854(v46, *(&v46 + 1), v45, v29, v47);

  (*(v30 + 8))(v32, v29);
  v49 = *(v110 + 20);
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_217966DAC();
  (*(*(v51 - 8) + 104))(&v22[v49], v50, v51);
  *v22 = v43;
  *(v22 + 1) = v43;
  sub_217967AFC();
  v52 = sub_217967B2C();

  sub_21796671C();
  v53 = v121;
  sub_217897E74(v22, v121);
  v54 = *&v158 * 0.5;
  v55 = v53 + *(v122 + 68);
  sub_217897E74(v22, v55);
  *(v55 + *(sub_217966A1C() + 20)) = v54;
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B458, &qword_21796BD18) + 36);
  v57 = v159;
  *v56 = v158;
  *(v56 + 16) = v57;
  *(v56 + 32) = v160;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B460, &qword_21796BD20);
  *(v55 + *(v58 + 52)) = v52;
  *(v55 + *(v58 + 56)) = 256;
  v59 = sub_217967E3C();
  v61 = v60;
  sub_21788D5F4(v22);
  v62 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B468, &qword_21796BD28) + 36));
  *v62 = v59;
  v62[1] = v61;
  v63 = sub_21789908C(&qword_27CB8A710);
  v157[8] = v47;
  v157[9] = v63;
  v64 = v113;
  v65 = swift_getWitnessTable();
  sub_217898FF8(&unk_27CB8B470);
  sub_217967E3C();
  v66 = v116;
  sub_2179679EC();
  sub_217899038(v53, &qword_27CB8B450);
  (*(v117 + 8))(v48, v64);
  sub_21796743C();
  v67 = sub_217898FF8(&unk_27CB8B478);
  v157[6] = v65;
  v157[7] = v67;
  v68 = v119;
  v69 = swift_getWitnessTable();
  v70 = v149;
  sub_217967A0C();
  (*(v118 + 8))(v66, v68);
  v157[4] = v69;
  v157[5] = MEMORY[0x277CDF918];
  v71 = v126;
  v119 = swift_getWitnessTable();
  sub_2179560E4();
  v72 = *(v142 + 8);
  v121 = v142 + 8;
  v122 = v72;
  v72(v70, v71);
  v73 = sub_217966E6C();
  MEMORY[0x28223BE20](v73);
  v74 = v144;
  *(&v110 - 6) = v127;
  *(&v110 - 5) = v74;
  v75 = v145;
  *(&v110 - 4) = v128;
  *(&v110 - 3) = v75;
  *(&v110 - 2) = v129;
  v76 = v148;
  sub_217967CCC();
  v77 = v134;
  v128 = swift_getWitnessTable();
  sub_2179560E4();
  v78 = *(v146 + 8);
  v144 = v146 + 8;
  v145 = v78;
  v78(v76, v77);
  v79 = v130;
  sub_217896008(v120, v130);
  *&v161 = v115;
  *(&v161 + 1) = v114;
  v80 = v112;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0xD000000000000011, 0x8000000217974550);

  sub_2178EE0A8(v161, *(&v161 + 1), v80);

  sub_217897EF0();
  v81 = v133;
  sub_21796790C();

  sub_217899038(v79, &qword_27CB8B440);
  sub_21789882C(&unk_27CB8B578);
  sub_21789908C(&qword_27CB8AE00);
  v82 = v135;
  v83 = v137;
  sub_217884F70(v132);
  OUTLINED_FUNCTION_59();
  v84 = v139;
  sub_21796773C();
  (*(v136 + 8))(v82, v83);
  sub_217899038(v81, &qword_27CB8B448);
  sub_217967E5C();
  sub_2179667FC();
  v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B580, &qword_21796BDB8) + 36));
  v86 = v162;
  *v85 = v161;
  v85[1] = v86;
  v85[2] = v163;
  LOBYTE(v59) = sub_21796742C();
  sub_21796660C();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B588, &qword_21796BDC0) + 36);
  *v95 = v59;
  *(v95 + 8) = v88;
  *(v95 + 16) = v90;
  *(v95 + 24) = v92;
  *(v95 + 32) = v94;
  *(v95 + 40) = 0;
  LOBYTE(v59) = sub_21796743C();
  sub_21796660C();
  v96 = v138;
  v97 = v84 + *(v138 + 36);
  *v97 = v59;
  *(v97 + 8) = v98;
  *(v97 + 16) = v99;
  *(v97 + 24) = v100;
  *(v97 + 32) = v101;
  *(v97 + 40) = 0;
  v102 = v149;
  v103 = v143;
  (*(v142 + 16))(v149, v143, v71);
  v157[0] = v102;
  v104 = v148;
  v105 = v147;
  (*(v146 + 16))(v148, v147, v77);
  v155 = 0;
  v156 = 1;
  v157[1] = v104;
  v157[2] = &v155;
  v106 = v140;
  sub_21788D484(v84, v140, &qword_27CB8B438, &unk_21796BCF0);
  v157[3] = v106;
  v154[0] = v71;
  v154[1] = v77;
  v154[2] = MEMORY[0x277CE1180];
  v154[3] = v96;
  v150 = v119;
  v151 = v128;
  v152 = MEMORY[0x277CE1170];
  v153 = sub_2178988C8(&unk_27CB8B590);
  sub_2178B9390(v157, 4, v154);
  sub_217899038(v84, &qword_27CB8B438);
  v107 = v145;
  v145(v105, v77);
  v108 = v122;
  (v122)(v103, v71);
  sub_217899038(v106, &qword_27CB8B438);
  v107(v104, v77);
  return v108(v149, v71);
}

uint64_t sub_2178935C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v229 = a6;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ADE8, &qword_21796BE90);
  MEMORY[0x28223BE20](v226);
  v213 = &v193 - v11;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B430, &qword_21796BCE8);
  v12 = MEMORY[0x28223BE20](v227);
  v228 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v193 - v14;
  v16 = sub_21796722C();
  v195 = *(v16 - 8);
  v196 = v16;
  MEMORY[0x28223BE20](v16);
  v194 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5D8, &qword_21796BE98);
  MEMORY[0x28223BE20](v200);
  v193 = (&v193 - v18);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5E0, &qword_21796BEA0);
  v201 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v199 = &v193 - v19;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5E8, &qword_21796BEA8);
  MEMORY[0x28223BE20](v211);
  v202 = &v193 - v20;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5F0, &unk_21796BEB0);
  MEMORY[0x28223BE20](v209);
  v210 = &v193 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB38, &unk_21796B110);
  MEMORY[0x28223BE20](v22 - 8);
  v205 = &v193 - v23;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);
  v207 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v206 = &v193 - v24;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5F8, &qword_21796BEC8);
  MEMORY[0x28223BE20](v222);
  v208 = &v193 - v25;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B428, &qword_21796BCE0);
  v26 = MEMORY[0x28223BE20](v224);
  v225 = &v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v193 - v29;
  v217 = *(a2 - 8);
  MEMORY[0x28223BE20](v28);
  v215 = &v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s9CellTitleVMa(0, a2, a4, v32);
  v218 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v216 = &v193 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  *&v230 = v33;
  v35 = sub_21796698C();
  *(&v230 + 1) = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v219 = &v193 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B420, &qword_21796BCD8);
  v231 = v35;
  v37 = sub_21796698C();
  v220 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = &v193 - v38;
  sub_21796732C();
  v221 = v37;
  v239 = sub_21796698C();
  v236 = *(v239 - 8);
  v40 = MEMORY[0x28223BE20](v239);
  v243 = &v193 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v238 = &v193 - v42;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B600, &unk_21796BED0);
  MEMORY[0x28223BE20](v234);
  v214 = &v193 - v43;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B418, &unk_21796BCC8);
  v44 = MEMORY[0x28223BE20](v223);
  v237 = &v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v193 - v46;
  v232 = a2;
  v233 = a4;
  *&v249[0] = a2;
  v197 = a3;
  v198 = a5;
  *(&v249[0] + 1) = a3;
  *&v249[1] = a4;
  *(&v249[1] + 1) = a5;
  v48 = _s19ContainerHeaderCellVMa(0, v249);
  v51 = (a1 + *(v48 + 56));
  v52 = v51[1];
  v240 = v15;
  v241 = v48;
  v242 = v30;
  v235 = a1;
  v244 = v47;
  if (v52)
  {
    v204 = v39;
    *&v249[0] = *v51;
    *(&v249[0] + 1) = v52;
    sub_217873C34(v48, v49, v50);

    v53 = sub_21796763C();
    v55 = v54;
    v57 = v56;
    sub_21796754C();
    v58 = sub_2179675DC();
    v60 = v59;
    v62 = v61;

    sub_21788C9B8(v53, v55, v57 & 1);

    v63 = sub_2179675CC();
    v65 = v64;
    v67 = v66;
    sub_21788C9B8(v58, v60, v62 & 1);

    sub_217967B4C();
    v68 = sub_2179675AC();
    v70 = v69;
    v72 = v71;
    v74 = v73;

    sub_21788C9B8(v63, v65, v67 & 1);

    if (qword_27CB8A3F0 != -1)
    {
      swift_once();
    }

    v75 = qword_27CB979F0;
    v249[0] = xmmword_27CB979E0;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0x6554726564616568, 0xEA00000000007478);

    v76 = v249[0];
    *&v249[0] = v68;
    *(&v249[0] + 1) = v70;
    LOBYTE(v249[1]) = v72 & 1;
    *(&v249[1] + 1) = v74;
    sub_2178EE0A8(v76, *(&v76 + 1), v75);

    v77 = v214;
    sub_21796790C();
    sub_21788C9B8(v68, v70, v72 & 1);

    v47 = v244;
    sub_217898E78(v77, v244, &qword_27CB8B600, &unk_21796BED0);
    v78 = 0;
    a1 = v235;
    v39 = v204;
  }

  else
  {
    v78 = 1;
  }

  __swift_storeEnumTagSinglePayload(v47, v78, 1, v234);
  v79 = v215;
  v80 = v232;
  (*(v217 + 16))(v215, a1, v232);
  v81 = v216;
  sub_2178C6F54(v79, 0, 1, v80, v233, v216);
  v82 = v230;
  WitnessTable = swift_getWitnessTable();
  v84 = v219;
  sub_217967AAC();
  (*(v218 + 8))(v81, v82);
  v85 = sub_217898FF8(&qword_27CB8A890);
  v258 = WitnessTable;
  v259 = v85;
  v86 = v231;
  v87 = swift_getWitnessTable();
  sub_21796785C();
  (*(*(&v230 + 1) + 8))(v84, v86);
  v88 = a1;
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v89 = *(&xmmword_27CB979E0 + 1);
  v90 = qword_27CB979F0;
  *&v230 = xmmword_27CB979E0;
  v249[0] = xmmword_27CB979E0;

  *(&v230 + 1) = v89;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

  v92 = *(&v249[0] + 1);
  v91 = *&v249[0];
  v93 = sub_217898FF8(&qword_27CB8B608);
  v256 = v87;
  v257 = v93;
  v94 = v221;
  v95 = swift_getWitnessTable();
  v96 = v243;
  sub_2178ED854(v91, v92, v90, v94, v95);
  v231 = v90;

  (*(v220 + 8))(v39, v94);
  v97 = sub_21789908C(&qword_27CB8A710);
  v254 = v95;
  v255 = v97;
  v98 = v239;
  v219 = swift_getWitnessTable();
  sub_2179560E4();
  v220 = *(v236 + 8);
  v221 = v236 + 8;
  (v220)(v96, v98);
  v99 = v241;
  v100 = (v88 + *(v241 + 60));
  v101 = v100[1];
  v102 = v88;
  if (v101)
  {
    v103 = *v100;
    v104 = HIBYTE(v101) & 0xF;
    if ((v101 & 0x2000000000000000) == 0)
    {
      v104 = v103 & 0xFFFFFFFFFFFFLL;
    }

    v105 = v240;
    v106 = v242;
    v107 = v244;
    if (v104)
    {

      v108 = v205;
      sub_217890EA0(v99, v205);
      v109 = v212;
      if (__swift_getEnumTagSinglePayload(v108, 1, v212) == 1)
      {
        v110 = v99;
        v111 = sub_217899038(v108, &qword_27CB8AB38);
        *&v249[0] = v103;
        *(&v249[0] + 1) = v101;
        sub_217873C34(v111, v112, v113);
        v114 = sub_21796763C();
        v116 = v115;
        v118 = v117;
        sub_217891518(v110);
        v119 = sub_2179675AC();
        v121 = v120;
        v123 = v122;

        sub_21788C9B8(v114, v116, v118 & 1);

        sub_21796747C();
        v124 = sub_2179675DC();
        v126 = v125;
        v128 = v127;
        v130 = v129;

        v131 = v121;
        v107 = v244;
        sub_21788C9B8(v119, v131, v123 & 1);

        v249[0] = v230;
        v132 = v231;

        MEMORY[0x21CEA7F50](46, 0xE100000000000000);

        MEMORY[0x21CEA7F50](0x656C746974627573, 0xE800000000000000);

        v133 = v249[0];
        *&v249[0] = v124;
        *(&v249[0] + 1) = v126;
        v134 = v128 & 1;
        LOBYTE(v249[1]) = v128 & 1;
        *(&v249[1] + 1) = v130;
        sub_2178EE0A8(v133, *(&v133 + 1), v132);

        v135 = v214;
        v106 = v242;
        sub_21796790C();
        sub_21788C9B8(v124, v126, v134);
        v102 = v235;

        sub_21788D484(v135, v210, &qword_27CB8B600, &unk_21796BED0);
        swift_storeEnumTagMultiPayload();
        sub_217898C9C();
        sub_217898AE0();
        v136 = v208;
        sub_217966F8C();
        sub_217899038(v135, &qword_27CB8B600);
      }

      else
      {

        v138 = v206;
        (*(v207 + 32))(v206, v108, v109);
        v139 = sub_217966D1C();
        v140 = v193;
        *v193 = v139;
        *(v140 + 8) = 0;
        *(v140 + 16) = 0;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B648, &qword_21796BEE0);
        sub_217894EF8(v138, v102, v232, v197, v233, v198, v140 + *(v141 + 44));
        v142 = v194;
        sub_21796720C();
        v233 = sub_217898FF8(&unk_27CB8B638);
        v143 = v199;
        v144 = v200;
        sub_2179678AC();
        (*(v195 + 8))(v142, v196);
        sub_217899038(v140, &qword_27CB8B5D8);
        v249[0] = v230;
        v145 = v231;

        MEMORY[0x21CEA7F50](46, 0xE100000000000000);

        MEMORY[0x21CEA7F50](0x747369747261, 0xE600000000000000);

        sub_2178EE0A8(*&v249[0], *(&v249[0] + 1), v145);

        *&v249[0] = v144;
        *(&v249[0] + 1) = v233;
        swift_getOpaqueTypeConformance2();
        v147 = v202;
        v146 = v203;
        sub_21796790C();

        (*(v201 + 8))(v143, v146);
        sub_21788D484(v147, v210, &qword_27CB8B5E8, &qword_21796BEA8);
        swift_storeEnumTagMultiPayload();
        sub_217898C9C();
        sub_217898AE0();
        v136 = v208;
        sub_217966F8C();
        sub_217899038(v147, &qword_27CB8B5E8);
        (*(v207 + 8))(v206, v212);
      }

      sub_21784B5F8(v136, v106);
      v137 = 0;
      v105 = v240;
      v99 = v241;
    }

    else
    {
      v137 = 1;
    }
  }

  else
  {
    v137 = 1;
    v105 = v240;
    v106 = v242;
    v107 = v244;
  }

  v148 = __swift_storeEnumTagSinglePayload(v106, v137, 1, v222);
  v151 = (v102 + *(v99 + 64));
  v152 = v151[1];
  if (v152)
  {
    *&v249[0] = *v151;
    *(&v249[0] + 1) = v152;
    sub_217873C34(v148, v149, v150);

    v153 = sub_21796763C();
    v155 = v154;
    v157 = v156;
    sub_21796754C();
    v158 = sub_2179675DC();
    v160 = v159;
    v162 = v161;

    sub_21788C9B8(v153, v155, v157 & 1);

    v163 = sub_2179675CC();
    v165 = v164;
    v167 = v166;
    sub_21788C9B8(v158, v160, v162 & 1);

    sub_217967B4C();
    v168 = sub_2179675AC();
    v170 = v169;
    v172 = v171;
    v174 = v173;

    sub_21788C9B8(v163, v165, v167 & 1);

    LOBYTE(v163) = sub_21796740C();
    sub_21796660C();
    v248 = v172 & 1;
    v246 = 0;
    *&v249[0] = v168;
    *(&v249[0] + 1) = v170;
    LOBYTE(v249[1]) = v172 & 1;
    *(&v249[1] + 1) = v250;
    DWORD1(v249[1]) = *(&v250 + 3);
    *(&v249[1] + 1) = v174;
    v175 = v244;
    LOBYTE(v249[2]) = v163;
    *(&v249[2] + 1) = *v247;
    DWORD1(v249[2]) = *&v247[3];
    *(&v249[2] + 1) = v176;
    *&v249[3] = v177;
    *(&v249[3] + 1) = v178;
    *&v249[4] = v179;
    BYTE8(v249[4]) = 0;
    v245[0] = v230;
    v180 = v231;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0x65547265746F6F66, 0xEA00000000007478);

    v181 = v245[0];
    memcpy(v245, v249, 0x49uLL);
    sub_2178EE0A8(v181, *(&v181 + 1), v180);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEF0, &qword_21796B628);
    sub_21788CAEC();
    v182 = v213;
    v183 = v242;
    sub_21796790C();
    sub_217899038(v249, &qword_27CB8AEF0);
    v107 = v175;

    v184 = v240;
    sub_217898E78(v182, v240, &qword_27CB8ADE8, &qword_21796BE90);
    __swift_storeEnumTagSinglePayload(v184, 0, 1, v226);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v226);
    v184 = v105;
    v183 = v106;
  }

  v185 = v237;
  sub_21788D484(v107, v237, &qword_27CB8B418, &unk_21796BCC8);
  *&v249[0] = v185;
  v186 = v243;
  v188 = v238;
  v187 = v239;
  (*(v236 + 16))(v243, v238, v239);
  *(&v249[0] + 1) = v186;
  v189 = v225;
  sub_21788D484(v183, v225, &qword_27CB8B428, &qword_21796BCE0);
  *&v249[1] = v189;
  v190 = v228;
  sub_21788D484(v184, v228, &qword_27CB8B430, &qword_21796BCE8);
  *(&v249[1] + 1) = v190;
  *&v245[0] = v223;
  *(&v245[0] + 1) = v187;
  *&v245[1] = v224;
  *(&v245[1] + 1) = v227;
  v250 = sub_217898B9C(&unk_27CB8B610);
  v251 = v219;
  v252 = sub_217898B9C(&unk_27CB8B620);
  v253 = sub_217898DC8();
  sub_2178B9390(v249, 4, v245);
  sub_217899038(v184, &qword_27CB8B430);
  sub_217899038(v242, &qword_27CB8B428);
  v191 = v220;
  (v220)(v188, v187);
  sub_217899038(v244, &qword_27CB8B418);
  sub_217899038(v190, &qword_27CB8B430);
  sub_217899038(v189, &qword_27CB8B428);
  v191(v243, v187);
  return sub_217899038(v237, &qword_27CB8B418);
}

uint64_t sub_217894EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v36 = a7;
  v37[0] = a3;
  v37[1] = a4;
  v37[2] = a5;
  v37[3] = a6;
  v29 = _s19ContainerHeaderCellVMa(0, v37);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v27 - v10;
  v28 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v35 = &v27 - v17;
  v18 = *(v13 + 16);
  v18();
  v19 = v11;
  v20 = v29;
  (*(v8 + 16))(v19, v30, v29);
  (v18)(v16, a1, v12);
  v21 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v22 = (v9 + *(v13 + 80) + v21) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v24 = v32;
  *(v23 + 2) = v31;
  *(v23 + 3) = v24;
  v25 = v34;
  *(v23 + 4) = v33;
  *(v23 + 5) = v25;
  (*(v8 + 32))(&v23[v21], v28, v20);
  (*(v13 + 32))(&v23[v22], v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B650, &qword_21796BEE8);
  sub_217898FF8(&unk_27CB8B658);
  sub_217898FF8(&unk_27CB8B660);
  sub_21789908C(&unk_27CB8B668);
  return sub_217967D8C();
}

uint64_t sub_21789524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v106 = a3;
  v111 = a8;
  v108 = sub_217968AFC();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v98 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B670, &qword_21796BEF0);
  MEMORY[0x28223BE20](v103);
  v104 = &v98 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B678, &qword_21796BEF8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v99 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v98 - v20;
  MEMORY[0x28223BE20](v19);
  v102 = &v98 - v21;
  v22 = sub_217966D7C();
  MEMORY[0x28223BE20](v22 - 8);
  v101 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF40, &qword_21796BF00);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v98 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B680, &qword_21796BF08);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v98 - v29;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B688, &unk_21796BF10);
  v31 = MEMORY[0x28223BE20](v100);
  v110 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v113 = &v98 - v33;
  v116 = a4;
  v117 = a5;
  v118 = a6;
  v119 = a7;
  v34 = _s19ContainerHeaderCellVMa(0, &v116);
  sub_217895DB0(a1, v34, v26);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF58, &qword_21796B660);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v35);
  v105 = a1;
  v114 = a1;
  sub_217898FF8(&qword_27CB8AF70);
  sub_21796687C();
  v36 = a2;
  v37 = sub_217891168(v34);
  if (qword_27CB8A350 != -1)
  {
    swift_once();
  }

  v38 = qword_27CB977C8;

  v39 = sub_217967B4C();
  LOBYTE(v116) = v37;
  v117 = v38;
  v118 = v39;
  v40 = sub_217898FF8(&unk_27CB8B690);
  sub_21788CF3C(v40, v41, v42);
  v43 = v113;
  sub_21796770C();

  (*(v28 + 8))(v30, v27);
  v109 = v34;
  LOBYTE(v38) = sub_217891168(v34);
  KeyPath = swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = v38 & 1;
  v46 = &v43[*(v100 + 36)];
  *v46 = KeyPath;
  v46[1] = sub_21788CF90;
  v46[2] = v45;
  sub_217966D6C();
  sub_217966D5C();
  v47 = v107;
  v48 = v102;
  v49 = v108;
  (*(v107 + 16))(v102, v105, v108);
  v50 = __swift_storeEnumTagSinglePayload(v48, 0, 1, v49);
  v51 = v112;
  sub_2178D28C0(v50, v52, v53, v54, v55, v56, v57, v58, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
  v59 = *(v103 + 48);
  v60 = v104;
  sub_21788D484(v48, v104, &qword_27CB8B678, &qword_21796BEF8);
  sub_21788D484(v51, v60 + v59, &qword_27CB8B678, &qword_21796BEF8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v49);
  v106 = v36;
  v62 = v49;
  v63 = v60;
  if (EnumTagSinglePayload != 1)
  {
    v65 = v60;
    v66 = v99;
    sub_21788D484(v65, v99, &qword_27CB8B678, &qword_21796BEF8);
    if (__swift_getEnumTagSinglePayload(v63 + v59, 1, v62) != 1)
    {
      v67 = v63 + v59;
      v68 = v98;
      (*(v47 + 32))(v98, v67, v62);
      sub_21789908C(&unk_27CB8B6A0);
      v69 = sub_217968F1C();
      v70 = *(v47 + 8);
      v70(v68, v62);
      sub_217899038(v112, &qword_27CB8B678);
      sub_217899038(v48, &qword_27CB8B678);
      v70(v66, v62);
      sub_217899038(v63, &qword_27CB8B678);
      if (v69)
      {
        v64 = v113;
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    sub_217899038(v112, &qword_27CB8B678);
    sub_217899038(v48, &qword_27CB8B678);
    (*(v47 + 8))(v66, v62);
LABEL_8:
    sub_217899038(v63, &qword_27CB8B670);
LABEL_9:
    v64 = v113;
    goto LABEL_12;
  }

  sub_217899038(v51, &qword_27CB8B678);
  sub_217899038(v48, &qword_27CB8B678);
  if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v62) != 1)
  {
    goto LABEL_8;
  }

  v64 = v113;
  sub_217899038(v63, &qword_27CB8B678);
LABEL_12:
  sub_217966D4C();

  sub_217966D5C();
  sub_217966D9C();
  v71 = sub_21796761C();
  v73 = v72;
  v75 = v74;
  sub_21796747C();
  v76 = sub_2179675DC();
  v78 = v77;
  v80 = v79;
  v82 = v81;

  sub_21788C9B8(v71, v73, v75 & 1);

  v83 = sub_21796744C();
  sub_21796660C();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v80 &= 1u;
  v130 = v80;
  v127 = 0;
  v92 = v64;
  v93 = v64;
  v94 = v110;
  sub_21788D484(v93, v110, &qword_27CB8B688, &unk_21796BF10);
  v95 = v111;
  sub_21788D484(v94, v111, &qword_27CB8B688, &unk_21796BF10);
  v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B698, &unk_21796BF50) + 48);
  __src[0] = v76;
  __src[1] = v78;
  LOBYTE(__src[2]) = v80;
  *(&__src[2] + 1) = *v129;
  HIDWORD(__src[2]) = *&v129[3];
  __src[3] = v82;
  LOBYTE(__src[4]) = v83;
  *(&__src[4] + 1) = *v128;
  HIDWORD(__src[4]) = *&v128[3];
  __src[5] = v85;
  __src[6] = v87;
  __src[7] = v89;
  __src[8] = v91;
  LOBYTE(__src[9]) = 0;
  memcpy((v95 + v96), __src, 0x49uLL);
  sub_21788D484(__src, &v116, &qword_27CB8AEF0, &qword_21796B628);
  sub_217899038(v92, &qword_27CB8B688);
  v116 = v76;
  v117 = v78;
  LOBYTE(v118) = v80;
  *(&v118 + 1) = *v129;
  HIDWORD(v118) = *&v129[3];
  v119 = v82;
  v120 = v83;
  *v121 = *v128;
  *&v121[3] = *&v128[3];
  v122 = v85;
  v123 = v87;
  v124 = v89;
  v125 = v91;
  v126 = 0;
  sub_217899038(&v116, &qword_27CB8AEF0);
  return sub_217899038(v94, &qword_27CB8B688);
}

unint64_t sub_217895DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217968AFC();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = v3 + *(a2 + 52);
  LOBYTE(a1) = *v8;
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF58, &qword_21796B660);
  v13 = a3 + v12[9];
  *v13 = a1;
  *(v13 + 8) = v10;
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  *(a3 + v12[10]) = 1;
  *(a3 + v12[11]) = 0;

  return sub_217863EC4(v11);
}

uint64_t sub_217895E90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217966D7C();
  MEMORY[0x28223BE20](v2 - 8);
  sub_217966D6C();
  sub_217966D5C();
  sub_217968A9C();
  sub_217966D4C();

  sub_217966D5C();
  sub_217966D9C();
  v3 = sub_21796761C();
  v5 = v4;
  v7 = v6;
  sub_21796747C();
  v8 = sub_2179675DC();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_21788C9B8(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_217896008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v4 = sub_2179669FC();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B568, &qword_21796BDB0);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B560, &qword_21796BDA8);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5A8, &qword_21796BDC8);
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B490, &qword_21796BD30);
  MEMORY[0x28223BE20](v16);
  v18 = (v29 - v17);
  v19 = sub_217890E40(a1);
  if (v19 == 3)
  {
    sub_2178964EC(a1, v18);
    sub_21788D484(v18, v15, &qword_27CB8B490, &qword_21796BD30);
    swift_storeEnumTagMultiPayload();
    sub_217897F7C();
    sub_2178986B4();
    sub_217966F8C();
    v20 = v18;
    v21 = &qword_27CB8B490;
  }

  else
  {
    v29[1] = v13;
    v30 = v10;
    v29[0] = v29;
    MEMORY[0x28223BE20](v19);
    v22 = *(a1 + 32);
    *&v29[-6] = *(a1 + 16);
    *&v29[-4] = v22;
    v29[-2] = v2;
    sub_217897F7C();

    sub_217967C6C();
    sub_2179669EC();
    sub_217898FF8(&unk_27CB8B570);
    sub_21789908C(&qword_27CB8A708);
    v23 = v32;
    v24 = v34;
    sub_2179676FC();
    (*(v33 + 8))(v6, v24);
    (*(v31 + 8))(v9, v23);
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }

    v25 = qword_27CB977C8;
    KeyPath = swift_getKeyPath();
    v27 = &v12[*(v30 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    sub_21788D484(v12, v15, &qword_27CB8B560, &qword_21796BDA8);
    swift_storeEnumTagMultiPayload();
    sub_2178986B4();

    sub_217966F8C();
    v20 = v12;
    v21 = &qword_27CB8B560;
  }

  return sub_217899038(v20, v21);
}

void *sub_2178964EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v84 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B510, &qword_21796BD78);
  MEMORY[0x28223BE20](v73);
  v4 = &v64 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5B0, &unk_21796BE00);
  MEMORY[0x28223BE20](v70);
  v72 = &v64 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B500, &qword_21796BD68);
  MEMORY[0x28223BE20](v79);
  v74 = &v64 - v6;
  v69 = sub_2179671EC();
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB98, &qword_21796BD70);
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v10 = &v64 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ABA0, &qword_21796B190);
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = &v64 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5B8, &qword_21796BE10);
  MEMORY[0x28223BE20](v82);
  v83 = &v64 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5C0, &qword_21796BE18);
  MEMORY[0x28223BE20](v75);
  v77 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5C8, &qword_21796BE20);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4B0, &unk_21796BD40);
  MEMORY[0x28223BE20](v76);
  v19 = &v64 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4A0, &qword_21796BD38);
  MEMORY[0x28223BE20](v81);
  v78 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770);
  MEMORY[0x28223BE20](v21);
  v23 = (&v64 - v22);
  switch(sub_217890E40(a1))
  {
    case 1u:
      v80 = sub_217967B8C();
      v57 = sub_21796753C();
      KeyPath = swift_getKeyPath();
      v59 = (v23 + *(v21 + 36));
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
      v61 = *MEMORY[0x277CE1050];
      v62 = sub_217967BCC();
      (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
      *v59 = swift_getKeyPath();
      *v23 = v80;
      v23[1] = KeyPath;
      v23[2] = v57;
      v30 = &qword_27CB8B4C0;
      sub_21788D484(v23, v17, &qword_27CB8B4C0, &qword_217973770);
      goto LABEL_7;
    case 2u:
      sub_21796677C();
      sub_2179671DC();
      v32 = sub_217898FF8(&qword_27CB8ABA8);
      v33 = sub_21789908C(&qword_27CB8ABB0);
      v35 = v68;
      v34 = v69;
      sub_21796766C();
      (*(v66 + 8))(v8, v34);
      (*(v65 + 8))(v10, v35);
      v36 = v67;
      v37 = v71;
      (*(v67 + 16))(v72, v12, v71);
      swift_storeEnumTagMultiPayload();
      v85 = v35;
      v86 = v34;
      v87 = v32;
      v88 = v33;
      swift_getOpaqueTypeConformance2();
      sub_2178983D4();
      v38 = v74;
      sub_217966F8C();
      sub_21788D484(v38, v77, &qword_27CB8B500, &qword_21796BD68);
      swift_storeEnumTagMultiPayload();
      sub_217898094();
      sub_217898288();
      v39 = v78;
      sub_217966F8C();
      sub_217899038(v38, &qword_27CB8B500);
      sub_21788D484(v39, v83, &qword_27CB8B4A0, &qword_21796BD38);
      swift_storeEnumTagMultiPayload();
      sub_217898008();
      sub_217966F8C();
      sub_217899038(v39, &qword_27CB8B4A0);
      return (*(v36 + 8))(v12, v37);
    case 3u:
      v40 = sub_217967B8C();
      v41 = sub_2179670EC();
      sub_21796747C();
      v42 = sub_21796748C();

      v43 = swift_getKeyPath();
      v44 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B520, &qword_21796BD80) + 36)];
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
      v46 = *MEMORY[0x277CE1050];
      v47 = sub_217967BCC();
      (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
      *v44 = swift_getKeyPath();
      *v4 = v40;
      *(v4 + 2) = v41;
      *(v4 + 2) = v43;
      *(v4 + 3) = v42;
      v48 = sub_217967B4C();
      v49 = swift_getKeyPath();
      v50 = v72;
      v51 = &v4[*(v73 + 36)];
      *v51 = v49;
      v51[1] = v48;
      v30 = &qword_27CB8B510;
      sub_21788D484(v4, v50, &qword_27CB8B510, &qword_21796BD78);
      swift_storeEnumTagMultiPayload();
      v52 = sub_217898FF8(&qword_27CB8ABA8);
      v53 = sub_21789908C(&qword_27CB8ABB0);
      v85 = v68;
      v86 = v69;
      v87 = v52;
      v88 = v53;
      swift_getOpaqueTypeConformance2();
      sub_2178983D4();
      v54 = v74;
      sub_217966F8C();
      sub_21788D484(v54, v77, &qword_27CB8B500, &qword_21796BD68);
      swift_storeEnumTagMultiPayload();
      sub_217898094();
      sub_217898288();
      v55 = v78;
      sub_217966F8C();
      sub_217899038(v54, &qword_27CB8B500);
      sub_21788D484(v55, v83, &qword_27CB8B4A0, &qword_21796BD38);
      swift_storeEnumTagMultiPayload();
      sub_217898008();
      sub_217966F8C();
      sub_217899038(v55, &qword_27CB8B4A0);
      v56 = v4;
      return sub_217899038(v56, v30);
    case 4u:
      swift_storeEnumTagMultiPayload();
      sub_217898008();
      return sub_217966F8C();
    default:
      v80 = sub_217967B8C();
      sub_21796747C();
      v24 = sub_21796748C();

      v25 = swift_getKeyPath();
      v26 = (v23 + *(v21 + 36));
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
      v28 = *MEMORY[0x277CE1058];
      v29 = sub_217967BCC();
      (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
      *v26 = swift_getKeyPath();
      *v23 = v80;
      v23[1] = v25;
      v23[2] = v24;
      v30 = &qword_27CB8B4C0;
      sub_21788D484(v23, v17, &qword_27CB8B4C0, &qword_217973770);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      sub_217898118();
      sub_217966F8C();
      sub_21788D484(v19, v77, &qword_27CB8B4B0, &unk_21796BD40);
      swift_storeEnumTagMultiPayload();
      sub_217898094();
      sub_217898288();
      v63 = v78;
      sub_217966F8C();
      sub_217899038(v19, &qword_27CB8B4B0);
      sub_21788D484(v63, v83, &qword_27CB8B4A0, &qword_21796BD38);
      swift_storeEnumTagMultiPayload();
      sub_217898008();
      sub_217966F8C();
      sub_217899038(v63, &qword_27CB8B4A0);
      v56 = v23;
      return sub_217899038(v56, v30);
  }
}

void *sub_217897288@<X0>(void *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v6 = _s19ContainerHeaderCellVMa(0, v8);
  return sub_2178964EC(v6, a1);
}

uint64_t sub_21789737C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v6);
  v7 = v0[6];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v7);
  v8 = v0[7];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v8);
  v9 = v0[8];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v9);
  v10 = v0[9];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v10);
}

uint64_t sub_217897474()
{
  sub_21796973C();
  sub_21789737C();
  return sub_21796977C();
}

BOOL sub_2178974BC(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_2178972D0(v4, __dst);
}

uint64_t sub_2178975B8(uint64_t a1)
{
  sub_21796973C();
  memcpy(__dst, v1, sizeof(__dst));
  sub_21789737C();
  return sub_21796977C();
}

uint64_t sub_21789763C(unsigned __int8 a1)
{
  sub_21796973C();
  MEMORY[0x21CEA86B0](a1);
  return sub_21796977C();
}

uint64_t sub_2178976B0(uint64_t a1)
{
  v2 = *v1;
  sub_21796973C();
  MEMORY[0x21CEA86B0](v2);
  return sub_21796977C();
}

uint64_t sub_217897750(void *a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v18 = 0;
    v25 = v2;
    v26 = &type metadata for MusicPicker.Click.SourceContext;
    sub_217897C74();
    if (v6 > 0x3F)
    {
      return v5;
    }

    v19 = 0;
    v27 = v5;
    v28 = v5;
    v20 = 0;
    v29 = v5;
    v5 = sub_217875494();
    if (v7 > 0x3F)
    {
      return v5;
    }

    v21 = 0;
    v30 = v5;
    sub_217897CC4(319);
    if (v9 > 0x3F)
    {
      return v5;
    }

    v22 = 0;
    v31 = v5;
    v10 = a1[3];
    v11 = a1[5];
    _s9ViewModelCMa(255, v10, v11, v8);
    swift_getWitnessTable();
    v5 = sub_217966ADC();
    if (v12 > 0x3F)
    {
      return v5;
    }

    else
    {
      v23 = 0;
      v32 = v5;
      v13 = a1[4];
      v17[0] = v3;
      v17[1] = v10;
      v17[2] = v13;
      v17[3] = v11;
      v14 = _s19ContainerHeaderCellV9ConstantsVMa(319, v17);
      v3 = v14;
      if (v15 <= 0x3F)
      {
        v24 = 0;
        v33 = v14;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_2178978C0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 80;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_217897A4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 80;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFB0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFB0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFB0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 80);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_217897C74()
{
  if (!qword_2811AD308)
  {
    v0 = sub_21796944C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811AD308);
    }
  }
}

void sub_217897CC4(uint64_t a1)
{
  if (!qword_27CB8B388[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A790, &qword_21796A968);
    v1 = sub_217967D5C();
    if (!v2)
    {
      atomic_store(v1, qword_27CB8B388);
    }
  }
}

uint64_t sub_217897D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217897D84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217897DA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_217897E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_217966A2C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_217897EF0()
{
  result = qword_27CB8B480;
  if (!qword_27CB8B480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B440, &qword_21796BD00);
    sub_217897F7C();
    sub_2178986B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B480);
  }

  return result;
}

unint64_t sub_217897F7C()
{
  result = qword_27CB8B488;
  if (!qword_27CB8B488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B490, &qword_21796BD30);
    sub_217898008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B488);
  }

  return result;
}

unint64_t sub_217898008()
{
  result = qword_27CB8B498;
  if (!qword_27CB8B498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B4A0, &qword_21796BD38);
    sub_217898094();
    sub_217898288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B498);
  }

  return result;
}

unint64_t sub_217898094()
{
  result = qword_27CB8B4A8;
  if (!qword_27CB8B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B4B0, &unk_21796BD40);
    sub_217898118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B4A8);
  }

  return result;
}

unint64_t sub_217898118()
{
  result = qword_27CB8B4B8;
  if (!qword_27CB8B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B4C0, &qword_217973770);
    sub_2178981D0();
    sub_217898FF8(&qword_27CB8B4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B4B8);
  }

  return result;
}

unint64_t sub_2178981D0()
{
  result = qword_27CB8B4C8;
  if (!qword_27CB8B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B4D0, &qword_21796BD50);
    sub_217898FF8(&unk_27CB8B4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B4C8);
  }

  return result;
}

unint64_t sub_217898288()
{
  result = qword_27CB8B4F8;
  if (!qword_27CB8B4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B500, &qword_21796BD68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AB98, &qword_21796BD70);
    sub_2179671EC();
    sub_217898FF8(&qword_27CB8ABA8);
    sub_21789908C(&qword_27CB8ABB0);
    swift_getOpaqueTypeConformance2();
    sub_2178983D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B4F8);
  }

  return result;
}

unint64_t sub_2178983D4()
{
  result = qword_27CB8B508;
  if (!qword_27CB8B508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B510, &qword_21796BD78);
    sub_21789848C();
    sub_217898FF8(&qword_27CB8A8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B508);
  }

  return result;
}

unint64_t sub_21789848C()
{
  result = qword_27CB8B518;
  if (!qword_27CB8B518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B520, &qword_21796BD80);
    sub_217898544();
    sub_217898FF8(&qword_27CB8B4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B518);
  }

  return result;
}

unint64_t sub_217898544()
{
  result = qword_27CB8B528;
  if (!qword_27CB8B528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B530, &qword_21796BD88);
    sub_2178985FC();
    sub_217898FF8(&unk_27CB8B4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B528);
  }

  return result;
}

unint64_t sub_2178985FC()
{
  result = qword_27CB8B538;
  if (!qword_27CB8B538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B540, &unk_21796BD90);
    sub_217898FF8(&qword_27CB8B548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B538);
  }

  return result;
}

unint64_t sub_2178986B4()
{
  result = qword_27CB8B558;
  if (!qword_27CB8B558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B560, &qword_21796BDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B568, &qword_21796BDB0);
    sub_2179669FC();
    sub_217898FF8(&unk_27CB8B570);
    sub_21789908C(&qword_27CB8A708);
    swift_getOpaqueTypeConformance2();
    sub_217898FF8(&qword_27CB8A8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B558);
  }

  return result;
}

unint64_t sub_21789882C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_21789908C(&qword_27CB8A710);
    OUTLINED_FUNCTION_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2178988C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    OUTLINED_FUNCTION_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217898964()
{
  result = qword_27CB8B5A0;
  if (!qword_27CB8B5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B580, &qword_21796BDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B448, &qword_21796BD08);
    sub_217966FAC();
    sub_21789882C(&unk_27CB8B578);
    sub_21789908C(&qword_27CB8AE00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B5A0);
  }

  return result;
}

unint64_t sub_217898AE0()
{
  result = qword_27CB8B618;
  if (!qword_27CB8B618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B600, &unk_21796BED0);
    sub_21789908C(&qword_27CB8A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B618);
  }

  return result;
}

unint64_t sub_217898B9C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217898C10()
{
  result = qword_27CB8B628;
  if (!qword_27CB8B628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B5F8, &qword_21796BEC8);
    sub_217898C9C();
    sub_217898AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B628);
  }

  return result;
}

unint64_t sub_217898C9C()
{
  result = qword_27CB8B630;
  if (!qword_27CB8B630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B5E8, &qword_21796BEA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B5D8, &qword_21796BE98);
    sub_217898FF8(&unk_27CB8B638);
    swift_getOpaqueTypeConformance2();
    sub_21789908C(&qword_27CB8A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B630);
  }

  return result;
}

unint64_t sub_217898DC8()
{
  result = qword_27CB8B640;
  if (!qword_27CB8B640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B430, &qword_21796BCE8);
    sub_21789882C(&unk_27CB8AF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B640);
  }

  return result;
}

uint64_t sub_217898E78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_69(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v4;
}

uint64_t sub_217898EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v15[0] = v2[2];
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v9 = *(_s19ContainerHeaderCellVMa(0, v15) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0) - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_21789524C(a1, v2 + v10, v13, v5, v6, v7, v8, a2);
}

unint64_t sub_217898FF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_217899038(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_63_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_21789908C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{

  return sub_217898FF8(a1);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t String.init(localizedFormatStringKey:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[4];

  sub_21796560C();

  swift_bridgeObjectRelease_n();
  sub_217968F3C();

  return sub_21796903C();
}

uint64_t LocalizedFormatStringKey.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocalizedFormatStringKey.tableName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LocalizedFormatStringKey.comment.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall LocalizedFormatStringKey.init(_:tableName:bundle:comment:)(_MusicKitInternal_SwiftUI::LocalizedFormatStringKey *__return_ptr retstr, Swift::String _, Swift::String tableName, NSBundle bundle, Swift::String comment)
{
  retstr->key = _;
  retstr->tableName = tableName;
  retstr->bundle = bundle;
  retstr->comment = comment;
}

uint64_t static LocalizedFormatStringKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  v9 = a2[6];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_21796969C() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v3 == v7;
  if (!v11 && (sub_21796969C() & 1) == 0)
  {
    return 0;
  }

  sub_21789946C();
  if ((sub_21796941C() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_21796969C();
}

unint64_t sub_21789946C()
{
  result = qword_27CB8B6A8;
  if (!qword_27CB8B6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB8B6A8);
  }

  return result;
}

uint64_t LocalizedFormatStringKey.hash(into:)(uint64_t a1)
{
  sub_217968FCC();
  sub_217968FCC();
  sub_21796942C();

  return sub_217968FCC();
}

uint64_t LocalizedFormatStringKey.hashValue.getter()
{
  sub_21796973C();
  sub_217968FCC();
  sub_217968FCC();
  sub_21796942C();
  sub_217968FCC();
  return sub_21796977C();
}

uint64_t sub_2178995DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = *(v1 + 24);
  v9 = v3;
  v10 = v4;
  sub_21796973C();
  LocalizedFormatStringKey.hash(into:)(v6);
  return sub_21796977C();
}

unint64_t sub_217899640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8B6B0;
  if (!qword_27CB8B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B6B0);
  }

  return result;
}

uint64_t sub_217899694(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2178996D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21789975C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21796715C();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return sub_217899828(v6, a2);
}

uint64_t sub_217899828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21796757C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21796715C();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  v9 = _s14MenuLabelStyleV14ImplementationVMa(0);
  v16 = 0x4040000000000000;
  v10 = (*(v5 + 104))(v7, *MEMORY[0x277CE0A80], v4);
  sub_21789A57C(v10, v11, v12);
  sub_21796678C();
  v16 = 0x402A000000000000;
  sub_21796679C();
  v13 = *(v9 + 28);
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6C0, &dword_21796C0C8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2178999D4@<X0>(uint64_t a1@<X8>)
{
  v26[0] = a1;
  v1 = sub_21796695C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B700, &qword_21796C150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  _s14MenuLabelStyleV14ImplementationVMa(0);
  sub_217956410();
  v8 = sub_21796694C();
  v9 = *(v2 + 8);
  v9(v4, v1);
  if (v8)
  {
    v10 = sub_217966CFC();
  }

  else
  {
    v10 = sub_217966D1C();
  }

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6C8, &qword_21796C0D0);
  sub_2179667AC();
  v12 = v26[1];
  *v7 = v11;
  *(v7 + 1) = v12;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B708, &qword_21796C158);
  sub_217899C40(&v7[*(v13 + 44)]);
  v14 = sub_21796744C();
  sub_217956410();
  sub_21796694C();
  v9(v4, v1);
  sub_21796660C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v26[0];
  sub_21789A7AC(v7, v26[0], &qword_27CB8B700, &qword_21796C150);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B710, &qword_21796C160);
  v25 = v23 + *(result + 36);
  *v25 = v14;
  *(v25 + 8) = v16;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_217899C40@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v61 = sub_21796695C();
  v77 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v2 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21796713C();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B718, &qword_21796C168);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v66 = &v60 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B720, &qword_21796C170);
  MEMORY[0x28223BE20](v63);
  v67 = &v60 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B728, &qword_21796C178);
  MEMORY[0x28223BE20](v64);
  v68 = &v60 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B730, &qword_21796C180);
  v9 = MEMORY[0x28223BE20](v65);
  v75 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v60 - v12;
  MEMORY[0x28223BE20](v11);
  v74 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B738, &qword_21796C188);
  v15 = MEMORY[0x28223BE20](v14);
  v70 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  sub_21796712C();
  v19 = sub_21796753C();
  KeyPath = swift_getKeyPath();
  v21 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B740, &qword_21796C1C0) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B748, &unk_21796C1C8) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
  v24 = *MEMORY[0x277CE1058];
  v25 = sub_217967BCC();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  v26 = *(_s14MenuLabelStyleV14ImplementationVMa(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6C8, &qword_21796C0D0);
  v60 = v26;
  sub_2179667AC();
  sub_217967E4C();
  sub_2179667FC();
  v27 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B750, &qword_21796C208) + 36)];
  v28 = v79;
  *v27 = v78;
  *(v27 + 1) = v28;
  *(v27 + 2) = v80;
  if (qword_27CB8A350 != -1)
  {
    swift_once();
  }

  v29 = qword_27CB977C8;
  v30 = swift_getKeyPath();
  v31 = &v18[*(v14 + 36)];
  *v31 = v30;
  v31[1] = v29;

  v32 = v4;
  sub_21796714C();
  sub_217956410();
  LOBYTE(v29) = sub_21796694C();
  v33 = *(v77 + 8);
  v34 = v2;
  v35 = v2;
  v36 = v61;
  v77 += 8;
  v33(v35);
  if (v29)
  {
    sub_2179667AC();
    sub_2179667AC();
  }

  sub_21789A764(&qword_27CB8B758, MEMORY[0x277CDE230], MEMORY[0x277CDE228]);
  v37 = v66;
  v38 = v71;
  sub_2179677BC();
  (*(v69 + 8))(v32, v38);
  sub_217956410();
  LOBYTE(v38) = sub_21796694C();
  (v33)(v34, v36);
  if (v38)
  {
    v39 = 3;
  }

  else
  {
    v39 = 1;
  }

  v40 = swift_getKeyPath();
  v41 = v67;
  (*(v72 + 32))(v67, v37, v73);
  v42 = &v41[*(v63 + 36)];
  *v42 = v40;
  *(v42 + 1) = v39;
  v42[16] = 0;
  v43 = sub_217967B3C();
  v44 = swift_getKeyPath();
  v45 = v41;
  v46 = v68;
  sub_21789A7AC(v45, v68, &qword_27CB8B720, &qword_21796C170);
  v47 = (v46 + *(v64 + 36));
  *v47 = v44;
  v47[1] = v43;
  v48 = sub_21796747C();
  v49 = swift_getKeyPath();
  v50 = v46;
  v51 = v62;
  sub_21789A7AC(v50, v62, &qword_27CB8B728, &qword_21796C178);
  v52 = (v51 + *(v65 + 36));
  *v52 = v49;
  v52[1] = v48;
  v53 = v51;
  v54 = v74;
  sub_21789A7AC(v53, v74, &qword_27CB8B730, &qword_21796C180);
  v55 = v70;
  sub_21789A80C(v18, v70);
  v56 = v75;
  sub_21784BD58(v54, v75);
  v57 = v76;
  sub_21789A80C(v55, v76);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B760, &unk_21796C270);
  sub_21784BD58(v56, v57 + *(v58 + 48));
  sub_21784BDC0(v54);
  sub_21789A87C(v18);
  sub_21784BDC0(v56);
  return sub_21789A87C(v55);
}

uint64_t sub_21789A460(uint64_t a1)
{
  v2 = sub_21796695C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_217966B8C();
}

uint64_t _s14MenuLabelStyleV14ImplementationVMa(uint64_t a1)
{
  result = qword_27CB8B6D8;
  if (!qword_27CB8B6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21789A57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8B6B8;
  if (!qword_27CB8B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B6B8);
  }

  return result;
}

void sub_21789A5F8(uint64_t a1)
{
  sub_21796715C();
  if (v1 <= 0x3F)
  {
    sub_21789A694(319, v1, v2);
    if (v3 <= 0x3F)
    {
      sub_21789A6F0(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21789A694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27CB8B6E8)
  {
    sub_21789A57C(0, a2, a3);
    v3 = sub_2179667BC();
    if (!v4)
    {
      atomic_store(v3, &qword_27CB8B6E8);
    }
  }
}

void sub_21789A6F0(uint64_t a1)
{
  if (!qword_27CB8B6F0)
  {
    sub_21796695C();
    v1 = sub_2179666CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8B6F0);
    }
  }
}

uint64_t sub_21789A764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21789A7AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21789A80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B738, &qword_21796C188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21789A87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B738, &qword_21796C188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21789A8E4()
{
  result = qword_27CB8B768;
  if (!qword_27CB8B768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B710, &qword_21796C160);
    sub_21789A970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B768);
  }

  return result;
}

unint64_t sub_21789A970()
{
  result = qword_27CB8B770[0];
  if (!qword_27CB8B770[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B700, &qword_21796C150);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8B770);
  }

  return result;
}

uint64_t sub_21789A9E0()
{
  sub_21796708C();
  sub_2178AA01C(&unk_27CB8AF08);
  return sub_2179697CC();
}

double sub_21789AA78@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>)
{
  _s9ViewModelCMa(0, a2, a3, a4);
  swift_getWitnessTable();
  *a1 = sub_217966ACC();
  *(a1 + 8) = v5;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 56) = 0;
  *(a1 + 64) = sub_21785853C(0) & 1;
  *(a1 + 72) = v6;
  v9[0] = 1;
  v10 = 0;
  v11 = 0;
  v12 = 0x6000000000000000;
  sub_21789ABA4(v9);
  *(a1 + 80) = v13;
  v7 = v15;
  *(a1 + 88) = v14;
  *(a1 + 104) = v7;
  *(a1 + 216) = xmmword_21796C280;
  *(a1 + 232) = xmmword_21796C290;
  *(a1 + 248) = xmmword_21796C290;
  *(a1 + 264) = 0xC030000000000000;
  result = 12.0;
  *(a1 + 272) = xmmword_21796C2A0;
  *(a1 + 288) = xmmword_21796C2B0;
  *(a1 + 304) = 0x4014000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x8000000000000001;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0x8000000000000001;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x8000000000000001;
  return result;
}

uint64_t sub_21789ABE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_25_MusicKitInternal_SwiftUI0A28PickerUserExperienceObserver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t get_enum_tag_for_layout_string_25_MusicKitInternal_SwiftUI0A6PickerV6PageIDO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return *a1 + 4;
  }
}

uint64_t sub_21789AC68(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 312))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21789ACBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21789ADBC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  _s9ViewModelCMa(0, *(a2 + 16), *(a2 + 24), v7);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D8858();

  v8 = _s12SearchColumnVMa(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    sub_217966A9C();
    sub_2178D2C28();

    sub_217936680();

    result = __swift_getEnumTagSinglePayload(v6, 1, v8);
    if (result != 1)
    {
      return sub_217899038(v6, &qword_27CB8B958);
    }
  }

  else
  {
    sub_2178A909C(v6, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  return result;
}

uint64_t sub_21789AF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v95 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v89 = sub_21796595C();
  v93 = *(a1 + 16);
  OUTLINED_FUNCTION_17_3();
  sub_2178AA01C(v3);
  v96 = *(a1 + 24);
  v4 = OUTLINED_FUNCTION_24_2();
  _s16SearchResultCellVMa(v4, v5);
  v6 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v6);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_14_2();
  sub_217898FF8(v7);
  v115 = MEMORY[0x277D837E0];
  OUTLINED_FUNCTION_24_2();
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_11_2();
  v9 = v8;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  v134 = swift_getWitnessTable();
  v135 = MEMORY[0x277CDF918];
  v10 = MEMORY[0x277CDF918];
  v11 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  v12 = OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_75(v12);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  v86 = v9;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_217967CDC();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  OUTLINED_FUNCTION_7_1();
  v94 = v13;
  v132 = swift_getWitnessTable();
  v133 = v10;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  v88 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B818, &qword_21796C668);
  sub_2179682DC();
  OUTLINED_FUNCTION_16_1();
  sub_2178AA01C(v14);
  v15 = OUTLINED_FUNCTION_24_2();
  _s17SearchContentViewVMa(v15, v16);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  v17 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v17);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  v18 = OUTLINED_FUNCTION_24_2();
  _s17SearchContentViewVMa(v18, v19);
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  OUTLINED_FUNCTION_41();
  sub_21796944C();
  OUTLINED_FUNCTION_15_2();
  v130 = swift_getWitnessTable();
  v131 = MEMORY[0x277CDF918];
  v129 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  sub_217966F9C();
  sub_217966F9C();
  v20 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_0();
  v127 = v20;
  v128 = swift_getWitnessTable();
  v125 = swift_getWitnessTable();
  v126 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_24_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_48_0();
  sub_217967B7C();
  sub_21796698C();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  v124 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_2();
  v122 = v21;
  v123 = sub_2178AA01C(v22);
  v120 = swift_getWitnessTable();
  v23 = MEMORY[0x277CDF918];
  v121 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  sub_21796666C();
  OUTLINED_FUNCTION_41();
  v24 = sub_21796698C();
  v118 = OUTLINED_FUNCTION_21_2(v24, v25, v26);
  v119 = MEMORY[0x277CDFC60];
  v90 = v11;
  v87 = v21;
  v89 = swift_getWitnessTable();
  OUTLINED_FUNCTION_48_0();
  v27 = sub_21796686C();
  _s13SearchContextVMa(255, v93, v96, v28);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  v29 = OUTLINED_FUNCTION_48_0();
  v30 = v93;
  _s11ColumnsViewVMa(v29, v31, v96, v32);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B828, &qword_21796C670);
  OUTLINED_FUNCTION_9();
  sub_217966F9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  v33 = OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_75(v33);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  v34 = sub_217967CDC();
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  v116 = swift_getWitnessTable();
  v117 = v23;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_2();
  v77 = v27;
  v111 = v27;
  v112 = v34;
  v113 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v113;
  v74 = OpaqueTypeConformance2;
  v81 = MEMORY[0x277CDE708];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v83 = v36;
  MEMORY[0x28223BE20](v37);
  v78 = &v73 - v38;
  v80 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v86 = v39;
  MEMORY[0x28223BE20](v40);
  v94 = &v73 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B830, &qword_21796C678);
  v85 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v88 = v42;
  v44 = MEMORY[0x28223BE20](v43);
  v82 = &v73 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v84 = &v73 - v46;
  v47 = *(v95 - 8);
  v75 = *(v47 + 16);
  v76 = v47 + 16;
  v48 = v91;
  v75(&v111, v91);
  v49 = swift_allocObject();
  v50 = v96;
  OUTLINED_FUNCTION_30_1(v49);
  swift_checkMetadataState();
  v111 = sub_21796685C();
  v112 = v51;
  v100 = v30;
  v101 = v50;
  v102 = v48;
  v52 = swift_checkMetadataState();
  v53 = swift_checkMetadataState();
  sub_217966E5C();
  v54 = v35;
  v55 = v78;
  sub_21796775C();

  (v75)(&v111, v48, v95);
  v56 = swift_allocObject();
  OUTLINED_FUNCTION_30_1(v56);
  v107 = v52;
  v108 = v53;
  v109 = v54;
  v110 = v74;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = OpaqueTypeMetadata2;
  sub_2178D0790(sub_2178A8998, v56, OpaqueTypeMetadata2, v57);

  (*(v83 + 8))(v55, v58);
  v97 = v30;
  v98 = v50;
  v99 = v48;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B838, &qword_21796C680);
  v62 = sub_217864644(v59, v60, v61);
  v105 = v57;
  v106 = v62;
  v63 = v80;
  v64 = swift_getWitnessTable();
  sub_2178A92BC(&unk_27CB8B840);
  sub_2178935BC(v63);
  v65 = v82;
  v66 = v94;
  sub_2179679DC();
  (*(v86 + 8))(v66, v63);
  OUTLINED_FUNCTION_13_2();
  v68 = sub_217898FF8(v67);
  v103 = v64;
  v104 = v68;
  v69 = v85;
  swift_getWitnessTable();
  v70 = v84;
  sub_2179560E4();
  v71 = *(v88 + 8);
  v71(v65, v69);
  sub_2179560E4();
  return (v71)(v70, v69);
}

uint64_t sub_21789BB88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v41 = a1;
  v42 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v38 = sub_21796595C();
  v37 = sub_2178AA01C(&qword_27CB8B808);
  v66 = v38;
  v67 = a2;
  v68 = v37;
  v69 = a3;
  _s16SearchResultCellVMa(255, &v66);
  swift_getTupleTypeMetadata2();
  v7 = sub_217967E9C();
  v8 = sub_217898FF8(&unk_27CB8B810);
  v66 = v6;
  v67 = MEMORY[0x277D837D0];
  v68 = v7;
  v69 = v8;
  v70 = MEMORY[0x277D837E0];
  sub_217967D9C();
  sub_21796698C();
  v9 = MEMORY[0x277CE14C0];
  WitnessTable = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x277CDF918];
  v10 = MEMORY[0x277CDF918];
  v11 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_21796665C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v36[2] = v9;
  swift_getWitnessTable();
  sub_217967CDC();
  v12 = sub_21796698C();
  v61 = swift_getWitnessTable();
  v62 = v10;
  v13 = swift_getWitnessTable();
  v66 = v12;
  v67 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  v36[3] = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B818, &qword_21796C668);
  v14 = sub_2179682DC();
  v15 = sub_2178AA01C(&unk_27CB8B820);
  v66 = v14;
  v67 = a2;
  v40 = a2;
  v68 = v15;
  v69 = a3;
  v39 = a3;
  _s17SearchContentViewVMa(255, &v66);
  sub_21796698C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  v66 = v38;
  v67 = a2;
  v68 = v37;
  v69 = a3;
  _s17SearchContentViewVMa(255, &v66);
  v16 = sub_21796698C();
  sub_21796944C();
  v59 = swift_getWitnessTable();
  v60 = MEMORY[0x277CDF918];
  v58 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  sub_217966F9C();
  v17 = sub_217966F9C();
  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v55 = MEMORY[0x277CE1410];
  v18 = swift_getWitnessTable();
  v66 = v17;
  v67 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796944C();
  v66 = v16;
  v67 = v58;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  sub_217967B7C();
  sub_21796698C();
  v19 = sub_21796698C();
  v53 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v52 = sub_2178AA01C(&qword_27CB8A710);
  v36[1] = v11;
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CDF918];
  v20 = swift_getWitnessTable();
  v21 = sub_21796666C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v36 - v23;
  v25 = sub_21796698C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v36 - v30;
  v32 = sub_2179673DC();
  v44 = v40;
  v45 = v39;
  v46 = v41;
  sub_21789AA60(v32, sub_2178A91C8, v43, v19, v20);
  v35 = swift_getWitnessTable();
  sub_217967E3C();
  sub_2179679AC();
  (*(v22 + 8))(v24, v21);
  v47 = v35;
  v48 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_2179560E4();
  v33 = *(v26 + 8);
  v33(v29, v25);
  sub_2179560E4();
  return (v33)(v31, v25);
}

uint64_t sub_21789C510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v46 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v43 = sub_21796595C();
  v42 = sub_2178AA01C(&qword_27CB8B808);
  v64 = v43;
  v65 = a2;
  v66 = v42;
  v67 = a3;
  _s16SearchResultCellVMa(255, &v64);
  swift_getTupleTypeMetadata2();
  v7 = sub_217967E9C();
  v8 = sub_217898FF8(&unk_27CB8B810);
  v64 = v6;
  v65 = MEMORY[0x277D837D0];
  v66 = v7;
  v67 = v8;
  v68 = MEMORY[0x277D837E0];
  sub_217967D9C();
  sub_21796698C();
  v9 = MEMORY[0x277CE14C0];
  WitnessTable = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v62 = MEMORY[0x277CDF918];
  v10 = MEMORY[0x277CDF918];
  v11 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_21796665C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v44 = v9;
  swift_getWitnessTable();
  sub_217967CDC();
  v12 = sub_21796698C();
  v37[1] = MEMORY[0x277CE1198];
  v59 = swift_getWitnessTable();
  v60 = v10;
  v41 = v11;
  v13 = swift_getWitnessTable();
  v64 = v12;
  v65 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  v40 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B818, &qword_21796C668);
  v14 = sub_2179682DC();
  v15 = sub_2178AA01C(&unk_27CB8B820);
  v64 = v14;
  v65 = a2;
  v39 = a2;
  v66 = v15;
  v67 = a3;
  v38 = a3;
  _s17SearchContentViewVMa(255, &v64);
  sub_21796698C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  v64 = v43;
  v65 = a2;
  v66 = v42;
  v67 = a3;
  _s17SearchContentViewVMa(255, &v64);
  v16 = sub_21796698C();
  sub_21796944C();
  v57 = swift_getWitnessTable();
  v58 = v10;
  v56 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  sub_217966F9C();
  v17 = sub_217966F9C();
  v54 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v53 = MEMORY[0x277CE1410];
  v18 = swift_getWitnessTable();
  v64 = v17;
  v65 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796944C();
  v64 = v16;
  v65 = v56;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  sub_217967B7C();
  v19 = sub_21796698C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v37 - v21;
  v23 = sub_21796698C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v37 - v28;
  v31 = _s17SearchResultsViewVMa(0, v39, v38, v30);
  sub_21789CDD4(v31, v22);
  LODWORD(v43) = sub_21796740C();
  v51 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v33 = sub_2178AA01C(&qword_27CB8A710);
  v49 = v32;
  v50 = v33;
  v34 = swift_getWitnessTable();
  sub_217967A0C();
  (*(v20 + 8))(v22, v19);
  v47 = v34;
  v48 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_2179560E4();
  v35 = *(v24 + 8);
  v35(v27, v23);
  sub_2179560E4();
  return (v35)(v29, v23);
}

uint64_t sub_21789CDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v37 = sub_21796595C();
  v4 = *(a1 + 16);
  v34 = sub_2178AA01C(&qword_27CB8B808);
  v40 = *(a1 + 24);
  v59 = v37;
  v60 = v4;
  v61 = v34;
  v62 = v40;
  _s16SearchResultCellVMa(255, &v59);
  swift_getTupleTypeMetadata2();
  v5 = sub_217967E9C();
  v6 = sub_217898FF8(&unk_27CB8B810);
  v59 = v3;
  v60 = MEMORY[0x277D837D0];
  v61 = v5;
  v62 = v6;
  v63 = MEMORY[0x277D837E0];
  sub_217967D9C();
  sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x277CDF918];
  v7 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_21796665C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  v8 = sub_21796698C();
  v54 = swift_getWitnessTable();
  v55 = v7;
  v9 = swift_getWitnessTable();
  v59 = v8;
  v60 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  v36 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B818, &qword_21796C668);
  v10 = sub_2179682DC();
  v11 = sub_2178AA01C(&unk_27CB8B820);
  v59 = v10;
  v60 = v4;
  v35 = v4;
  v61 = v11;
  v62 = v40;
  _s17SearchContentViewVMa(255, &v59);
  sub_21796698C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  v59 = v37;
  v60 = v4;
  v61 = v34;
  v62 = v40;
  _s17SearchContentViewVMa(255, &v59);
  v12 = sub_21796698C();
  sub_21796944C();
  v52 = swift_getWitnessTable();
  v53 = MEMORY[0x277CDF918];
  v51 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  sub_217966F9C();
  v13 = sub_217966F9C();
  v49 = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CE1410];
  v14 = swift_getWitnessTable();
  v59 = v13;
  v60 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796944C();
  v59 = v12;
  v60 = v51;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  v15 = sub_217967B7C();
  v37 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = sub_21796698C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  v41 = v35;
  v42 = v40;
  v43 = v38;
  v25 = swift_getWitnessTable();
  sub_217967B6C();
  if (qword_27CB8A3C0 != -1)
  {
    swift_once();
  }

  v26 = qword_27CB97950;
  v27 = *algn_27CB97958;
  v28 = qword_27CB97960;
  v46 = v25;
  v29 = swift_getWitnessTable();
  sub_2178ED854(v26, v27, v28, v15, v29);
  (*(v37 + 8))(v17, v15);
  v30 = sub_2178AA01C(&qword_27CB8A710);
  v44 = v29;
  v45 = v30;
  swift_getWitnessTable();
  sub_2179560E4();
  v31 = *(v19 + 8);
  v31(v22, v18);
  sub_2179560E4();
  return (v31)(v24, v18);
}

uint64_t sub_21789D6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a1;
  v36 = a4;
  v6 = sub_217966E1C();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  _s13SearchContextVMa(255, a2, a3, v8);
  sub_21796698C();
  sub_21796944C();
  _s11ColumnsViewVMa(255, a2, a3, v9);
  sub_21796698C();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B828, &qword_21796C670);
  sub_217966F9C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  v27[2] = sub_217967E9C();
  v27[1] = swift_getWitnessTable();
  v10 = sub_217967CDC();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = sub_21796698C();
  v29 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  WitnessTable = swift_getWitnessTable();
  v43 = MEMORY[0x277CDF918];
  v16 = swift_getWitnessTable();
  v40 = v13;
  v41 = v16;
  v27[0] = MEMORY[0x277CDEA38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v27 - v22;
  sub_217966E5C();
  v37 = v30;
  v38 = v31;
  v39 = v32;
  sub_217967CCC();
  sub_21796740C();
  sub_217967A0C();
  (*(v28 + 8))(v12, v10);
  v24 = v33;
  sub_217966E0C();
  sub_21796786C();
  (*(v34 + 8))(v24, v35);
  (*(v29 + 8))(v15, v13);
  v40 = v13;
  v41 = v16;
  swift_getOpaqueTypeConformance2();
  sub_2179560E4();
  v25 = *(v18 + 8);
  v25(v21, OpaqueTypeMetadata2);
  sub_2179560E4();
  return (v25)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_21789DBB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B828, &qword_21796C670);
  MEMORY[0x28223BE20](v7);
  v104 = (&v100 - v8);
  v128 = _s11ColumnsViewVMa(255, a2, a3, v9);
  v133 = sub_21796698C();
  v10 = sub_21796944C();
  v110 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v108 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v109 = &v100 - v13;
  v118 = v14;
  v112 = v7;
  v131 = sub_217966F9C();
  v120 = sub_21796944C();
  v117 = *(v120 - 8);
  v15 = MEMORY[0x28223BE20](v120);
  v119 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v132 = &v100 - v17;
  v19 = _s13SearchContextVMa(0, a2, a3, v18);
  v103 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v100 = (&v100 - v20);
  v130 = v21;
  v22 = sub_21796698C();
  v115 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v101 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v102 = &v100 - v25;
  v26 = sub_217965EFC();
  v125 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v105 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B240, &qword_21796B958);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v106 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v100 - v37;
  v129 = v22;
  v39 = sub_21796944C();
  v126 = *(v39 - 8);
  v40 = MEMORY[0x28223BE20](v39);
  v127 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v134 = &v100 - v42;
  v111 = a1;
  v43 = *a1;
  v44 = a1[1];
  v122 = a2;
  v123 = a3;
  _s9ViewModelCMa(0, a2, a3, v45);
  swift_getWitnessTable();
  v113 = v43;
  v116 = v44;
  sub_217966A9C();
  sub_2178D8900();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v26);
  v47 = MEMORY[0x277CDF918];
  v124 = v39;
  v107 = v26;
  v114 = v28;
  if (EnumTagSinglePayload)
  {
    sub_217899038(v33, &qword_27CB8B238);
    v48 = sub_217965E9C();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v48);
LABEL_4:
    sub_217899038(v38, &qword_27CB8B240);
    v51 = v127;
    __swift_storeEnumTagSinglePayload(v127, 1, 1, v129);
    v141[5] = swift_getWitnessTable();
    v141[6] = v47;
    swift_getWitnessTable();
    goto LABEL_5;
  }

  v49 = v125;
  (*(v125 + 16))(v28, v33, v26);
  sub_217899038(v33, &qword_27CB8B238);
  sub_217965EEC();
  v47 = MEMORY[0x277CDF918];
  (*(v49 + 8))(v28, v26);
  v50 = sub_217965E9C();
  if (__swift_getEnumTagSinglePayload(v38, 1, v50) == 1)
  {
    goto LABEL_4;
  }

  sub_217899038(v38, &qword_27CB8B240);
  v73 = v100;
  sub_21788F830(v122, v123, v100, v74);
  sub_2179673EC();
  v75 = v130;
  WitnessTable = swift_getWitnessTable();
  v77 = v101;
  sub_217967A0C();
  (*(v103 + 8))(v73, v75);
  v135 = WitnessTable;
  v136 = v47;
  v78 = v129;
  swift_getWitnessTable();
  v79 = v102;
  sub_2179560E4();
  v80 = v115;
  v81 = *(v115 + 8);
  v81(v77, v78);
  sub_2179560E4();
  v81(v79, v78);
  v39 = v124;
  v51 = v127;
  (*(v80 + 32))(v127, v77, v78);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v78);
LABEL_5:
  sub_2178AEE20(v51, v134);
  v115 = *(v126 + 8);
  v116 = v126 + 8;
  (v115)(v51, v39);
  sub_217966A9C();
  sub_2178D2C28();
  v53 = v52;

  v54 = *(v53 + 16);

  v56 = v125;
  v57 = v114;
  if (v54)
  {
    v58 = _s17SearchResultsViewVMa(0, v122, v123, v55);
    v59 = v108;
    sub_21789EAFC(v58, v108, v60);
    v141[3] = swift_getWitnessTable();
    v141[4] = MEMORY[0x277CDF918];
    v141[2] = swift_getWitnessTable();
    v61 = v118;
    v62 = swift_getWitnessTable();
    v63 = v109;
    sub_2179560E4();
    v64 = *(v110 + 8);
    v64(v59, v61);
    sub_2179560E4();
    v65 = sub_2178A8B34();
    v66 = v119;
    sub_217952EE8();
    v64(v59, v61);
    v64(v63, v61);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v131);
    v141[0] = v62;
    v67 = v141;
  }

  else
  {
    sub_217966A9C();
    v68 = v105;
    sub_2178D8900();

    v69 = v107;
    if (__swift_getEnumTagSinglePayload(v68, 1, v107))
    {
      sub_217899038(v68, &qword_27CB8B238);
      v70 = sub_217965E9C();
      v71 = v106;
      __swift_storeEnumTagSinglePayload(v106, 1, 1, v70);
      v66 = v119;
      v72 = v131;
    }

    else
    {
      (*(v56 + 16))(v57, v68, v69);
      sub_217899038(v68, &qword_27CB8B238);
      v71 = v106;
      sub_217965EEC();
      (*(v56 + 8))(v57, v69);
      v82 = sub_217965E9C();
      v83 = __swift_getEnumTagSinglePayload(v71, 1, v82);
      v66 = v119;
      v72 = v131;
      if (v83 != 1)
      {
        sub_217899038(v71, &qword_27CB8B240);
        __swift_storeEnumTagSinglePayload(v66, 1, 1, v72);
        v137[3] = swift_getWitnessTable();
        v137[4] = MEMORY[0x277CDF918];
        v137[2] = swift_getWitnessTable();
        v99 = swift_getWitnessTable();
        v65 = sub_2178A8B34();
        v137[0] = v99;
        v67 = v137;
        goto LABEL_12;
      }
    }

    sub_217899038(v71, &qword_27CB8B240);
    v85 = _s17SearchResultsViewVMa(0, v122, v123, v84);
    v86 = v104;
    sub_21789F13C(v85, v104);
    v138[3] = swift_getWitnessTable();
    v138[4] = MEMORY[0x277CDF918];
    v138[2] = swift_getWitnessTable();
    v87 = swift_getWitnessTable();
    v65 = sub_2178A8B34();
    sub_217952FA4();
    sub_217899038(v86, &qword_27CB8B828);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v72);
    v138[0] = v87;
    v67 = v138;
  }

LABEL_12:
  v67[1] = v65;
  v123 = MEMORY[0x277CE0340];
  swift_getWitnessTable();
  v88 = v132;
  sub_2178AEE20(v66, v132);
  v89 = v117;
  v125 = *(v117 + 8);
  v90 = v120;
  (v125)(v66, v120);
  v91 = v127;
  v92 = v124;
  (*(v126 + 16))(v127, v134, v124);
  v140[0] = v91;
  (*(v89 + 16))(v66, v88, v90);
  v140[1] = v66;
  v139[0] = v92;
  v139[1] = v90;
  v138[12] = swift_getWitnessTable();
  v93 = MEMORY[0x277CDF918];
  v138[13] = MEMORY[0x277CDF918];
  v138[11] = swift_getWitnessTable();
  v138[14] = swift_getWitnessTable();
  v138[9] = swift_getWitnessTable();
  v138[10] = v93;
  v138[8] = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v95 = sub_2178A8B34();
  v138[6] = v94;
  v138[7] = v95;
  v138[5] = swift_getWitnessTable();
  v138[15] = swift_getWitnessTable();
  sub_2178B9390(v140, 2, v139);
  v96 = v125;
  (v125)(v132, v90);
  v97 = v115;
  (v115)(v134, v92);
  v96(v66, v90);
  return v97(v91, v92);
}

uint64_t sub_21789EAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v54 = a2;
  v5 = *(a1 + 16);
  v43 = *(a1 + 24);
  v44 = v5;
  v6 = _s11ColumnsViewVMa(0, v5, v43, a3);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = (&v42 - v7);
  v53 = v8;
  v9 = sub_21796698C();
  v49 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = _s12SearchColumnVMa(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v50 = sub_21796944C();
  v52 = *(v50 - 8);
  v22 = MEMORY[0x28223BE20](v50);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v51 = &v42 - v25;
  sub_21789ADBC(v15, a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v27 = MEMORY[0x277CDF918];
  if (EnumTagSinglePayload == 1)
  {
    sub_217899038(v15, &qword_27CB8B958);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v9);
    WitnessTable = swift_getWitnessTable();
    v62 = v27;
    swift_getWitnessTable();
  }

  else
  {
    sub_2178A909C(v15, v21);
    sub_2178A9100(v21, v19);
    (*(*(a1 - 8) + 16))(v57, v3, a1);
    v28 = swift_allocObject();
    v30 = v43;
    v29 = v44;
    v28[2] = v44;
    v28[3] = v30;
    memcpy(v28 + 4, v57, 0x138uLL);
    v31 = v45;
    sub_2179524E0(v19, sub_2178A9164, v28, v29, v30, v45);
    sub_21796740C();
    v32 = v53;
    v33 = swift_getWitnessTable();
    v34 = v48;
    sub_217967A0C();
    (*(v47 + 8))(v31, v32);
    sub_2178A9170(v21, _s12SearchColumnVMa);
    v55 = v33;
    v56 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v35 = v46;
    sub_2179560E4();
    v36 = v49;
    v37 = *(v49 + 8);
    v37(v34, v9);
    sub_2179560E4();
    v37(v35, v9);
    (*(v36 + 32))(v24, v34, v9);
    v27 = MEMORY[0x277CDF918];
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v9);
  }

  v38 = v51;
  sub_2178AEE20(v24, v51);
  v39 = *(v52 + 8);
  v40 = v50;
  v39(v24, v50);
  v59 = swift_getWitnessTable();
  v60 = v27;
  v58 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4();
  return (v39)(v38, v40);
}

void *sub_21789F13C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v83 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B900, &qword_21796C6E8);
  MEMORY[0x28223BE20](v82);
  v5 = &v62 - v4;
  v76 = sub_21796701C();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B8F8, &qword_21796C6E0);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v62 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B8E0, &qword_21796C6D8);
  MEMORY[0x28223BE20](v65);
  v67 = &v62 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B908, &qword_21796C6F0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v81 = &v62 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B8D8, &qword_21796C6D0);
  MEMORY[0x28223BE20](v70);
  v72 = &v62 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B8C8, &qword_21796C6C8);
  MEMORY[0x28223BE20](v71);
  v75 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B8B8, &qword_21796C6C0);
  v13 = MEMORY[0x28223BE20](v12);
  v73 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v62 - v15;
  v80 = v2;
  _s9ViewModelCMa(0, *(a1 + 16), *(a1 + 24), v16);
  swift_getWitnessTable();
  v17 = sub_217966A9C();
  sub_2178D8634(v17, v18, v19, v20, v21, v22, v23, v24, v62, v63, v64, v65, v66, v67);
  v26 = v25;

  v27 = *(v26 + 16);

  if (v27 < 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_2178A8BEC(&unk_27CB8B8B0);
    return sub_217966F8C();
  }

  else
  {
    v63 = v12;
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v87 = sub_21796560C();
    v88 = v28;
    v29 = sub_217966AAC();
    MEMORY[0x28223BE20](v29);
    swift_getKeyPath();
    sub_217966ABC();

    v84 = __src[0];
    v85 = __src[1];
    v86 = __src[2];
    MEMORY[0x28223BE20](v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B910, &qword_21796C730);
    sub_2178A8E74(v31, v32, v33);
    v61 = sub_2178A8EC8();
    sub_217873C34(v61, v34, v35);
    v36 = v64;
    sub_217967CBC();
    if (qword_27CB8A3C8 != -1)
    {
      swift_once();
    }

    sub_2178EE0A8(qword_27CB97968, unk_27CB97970, qword_27CB97978);
    sub_217898FF8(&unk_27CB8B8F0);
    v37 = v67;
    v38 = v68;
    sub_21796790C();

    (*(v66 + 8))(v36, v38);
    v39 = v69;
    sub_21796700C();
    sub_2178A8D80();
    v40 = v81;
    v41 = v76;
    sub_21796774C();
    (*(v74 + 8))(v39, v41);
    sub_217899038(v37, &qword_27CB8B8E0);
    sub_217967E3C();
    v42 = v63;
    sub_217966A6C();
    v43 = v72;
    (*(v77 + 32))(v72, v40, v78);
    memcpy(&v43[*(v70 + 36)], __src, 0x70uLL);
    LOBYTE(v41) = sub_2179673EC();
    v44 = v43;
    v45 = v75;
    sub_217898E78(v44, v75, &qword_27CB8B8D8, &qword_21796C6D0);
    v46 = v45 + *(v71 + 36);
    *v46 = v41;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 1;
    LOBYTE(v41) = sub_21796741C();
    sub_21796660C();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v45;
    v56 = v73;
    sub_217898E78(v55, v73, &qword_27CB8B8C8, &qword_21796C6C8);
    v57 = v56 + *(v42 + 36);
    *v57 = v41;
    *(v57 + 8) = v48;
    *(v57 + 16) = v50;
    *(v57 + 24) = v52;
    *(v57 + 32) = v54;
    *(v57 + 40) = 0;
    v58 = v56;
    v59 = v79;
    sub_217898E78(v58, v79, &qword_27CB8B8B8, &qword_21796C6C0);
    sub_21788D484(v59, v5, &qword_27CB8B8B8, &qword_21796C6C0);
    swift_storeEnumTagMultiPayload();
    sub_2178A8BEC(&unk_27CB8B8B0);
    sub_217966F8C();
    return sub_217899038(v59, &qword_27CB8B8B8);
  }
}

uint64_t sub_21789FBC8(uint64_t a1)
{
  sub_217956100();
  v1 = v6;
  if (!v6)
  {
    return sub_217899038(v5, &qword_27CB8A630);
  }

  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4 = 0x8000000000000001;
  (*(v2 + 8))(&v4, v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_21789FC68@<X0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B860, &qword_21796C690);
  v37 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v36 = &v36 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B890, &qword_21796C6A8);
  MEMORY[0x28223BE20](v41);
  v43 = &v36 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B870, &qword_21796C698);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - v8;
  v9 = sub_217965EFC();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B850, &qword_21796C688);
  MEMORY[0x28223BE20](v15);
  v40 = &v36 - v16;
  _s9ViewModelCMa(0, x1_0, a3, v17);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D3000();
  v19 = v18;

  if (v19)
  {
    v20 = v45;
    sub_217966A9C();
    sub_2178D8900();

    if (__swift_getEnumTagSinglePayload(v14, 1, v9))
    {
      sub_217899038(v14, &qword_27CB8B238);
      v21 = v20;
    }

    else
    {
      v29 = v38;
      (*(v38 + 16))(v11, v14, v9);
      sub_217899038(v14, &qword_27CB8B238);
      sub_217965E3C();
      v31 = v30;
      v32 = (*(v29 + 8))(v11, v9);
      v21 = v20;
      if (v31)
      {
        MEMORY[0x28223BE20](v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B898, &qword_21796C6B8);
        sub_217898FF8(&unk_27CB8B8A0);
        v33 = v36;
        sub_2179670CC();

        v34 = v37;
        v35 = v44;
        (*(v37 + 16))(v43, v33, v44);
        swift_storeEnumTagMultiPayload();
        sub_217898FF8(&unk_27CB8B858);
        sub_2178A8A68();
        v26 = v40;
        sub_217966F8C();
        (*(v34 + 8))(v33, v35);
        goto LABEL_10;
      }
    }

    v22 = v39;
    sub_2179670DC();
    v23 = sub_21796740C();
    v24 = v43;
    v25 = v22 + *(v42 + 36);
    *v25 = v23;
    *(v25 + 8) = 0u;
    *(v25 + 24) = 0u;
    *(v25 + 40) = 1;
    sub_21788D484(v22, v24, &qword_27CB8B870, &qword_21796C698);
    swift_storeEnumTagMultiPayload();
    sub_217898FF8(&unk_27CB8B858);
    sub_2178A8A68();
    v26 = v40;
    sub_217966F8C();
    sub_217899038(v22, &qword_27CB8B870);
LABEL_10:
    sub_217898E78(v26, v21, &qword_27CB8B850, &qword_21796C688);
    return __swift_storeEnumTagSinglePayload(v21, 0, 1, v15);
  }

  v27 = v45;

  return __swift_storeEnumTagSinglePayload(v27, 1, 1, v15);
}

uint64_t sub_2178A0328()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v3 = sub_21796560C();
  sub_217873C34(v3, v0, v1);
  return sub_217967BFC();
}

uint64_t sub_2178A0410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_217873C34(a1, a2, a3);

  result = sub_21796763C();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_2178A0480(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(0, a2, a3, a4);
  swift_getWitnessTable();
  v4 = sub_217966A9C();
  sub_2178D8634(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17, v18, v19, v20, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B938, &qword_21796C740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B930, &qword_21796C738);
  sub_217898FF8(&unk_27CB8B940);
  v12 = sub_2178A8F4C();
  sub_2178A9048(v12, v13, v14);
  return sub_217967D8C();
}

uint64_t sub_2178A05C0(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B950, &qword_21796C748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *a1;
  v19 = sub_2178FEE10(v6);
  v20 = v7;
  sub_217873C34(v19, v7, v8);
  *v5 = sub_21796763C();
  *(v5 + 1) = v9;
  v5[16] = v10 & 1;
  *(v5 + 3) = v11;
  v5[32] = v6;
  v5[33] = 1;
  if (qword_27CB8A3C8 != -1)
  {
    swift_once();
  }

  v12 = qword_27CB97978;
  if (v6)
  {
    v13 = 0x7972617262696CLL;
  }

  else
  {
    v13 = 0x676F6C61746163;
  }

  v19 = qword_27CB97968;
  v20 = unk_27CB97970;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](v13, 0xE700000000000000);

  sub_2178EE0A8(v19, v20, v12);

  v17 = sub_2178A8E74(v14, v15, v16);
  v19 = MEMORY[0x277CE0BD8];
  v20 = &_s12SearchSourceON;
  v21 = MEMORY[0x277CE0BC8];
  v22 = v17;
  swift_getOpaqueTypeConformance2();
  sub_21796790C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2178A0828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v243 = a1;
  v218 = a4;
  v245 = sub_21796595C();
  v232 = sub_2178AA01C(&qword_27CB8B808);
  v269 = v245;
  v270 = a2;
  v271 = v232;
  v272 = a3;
  v6 = a3;
  v7 = _s17SearchContentViewVMa(0, &v269);
  v202 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v200 = &v181 - v8;
  v9 = sub_21796698C();
  v201 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v199 = &v181 - v10;
  v203 = v7;
  WitnessTable = swift_getWitnessTable();
  v279 = WitnessTable;
  v280 = MEMORY[0x277CDF918];
  v246 = MEMORY[0x277CDFAD8];
  v11 = swift_getWitnessTable();
  v269 = v9;
  v270 = v11;
  v228 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v204 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v214 = &v181 - v13;
  v14 = sub_21796732C();
  v205 = OpaqueTypeMetadata2;
  v230 = v14;
  v15 = sub_21796698C();
  v208 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v207 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v206 = &v181 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  MEMORY[0x28223BE20](v19 - 8);
  v213 = &v181 - v20;
  v212 = _s12SearchColumnVMa(0);
  MEMORY[0x28223BE20](v212);
  v225 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = v15;
  v217 = sub_21796944C();
  v215 = *(v217 - 8);
  v22 = MEMORY[0x28223BE20](v217);
  v238 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v216 = &v181 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B818, &qword_21796C668);
  v25 = sub_2179682DC();
  v26 = sub_2178AA01C(&unk_27CB8B820);
  v269 = v25;
  v270 = a2;
  v271 = v26;
  v272 = v6;
  v27 = v6;
  v242 = v6;
  _s17SearchContentViewVMa(255, &v269);
  sub_21796698C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  v241 = v9;
  sub_21796944C();
  v240 = v11;
  v278 = v11;
  swift_getWitnessTable();
  sub_21796665C();
  sub_217966F9C();
  v28 = sub_217966F9C();
  v192 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v191 = &v181 - v29;
  v231 = MEMORY[0x277CE1198];
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v276 = v30;
  v277 = v31;
  v274 = swift_getWitnessTable();
  v275 = MEMORY[0x277CE1410];
  v32 = swift_getWitnessTable();
  v237 = v28;
  v269 = v28;
  v270 = v32;
  v235 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v193 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v211 = &v181 - v34;
  v194 = v35;
  v36 = sub_21796698C();
  v197 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v196 = &v181 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v195 = &v181 - v39;
  v234 = v40;
  v236 = sub_21796944C();
  v233 = *(v236 - 8);
  v41 = MEMORY[0x28223BE20](v236);
  v244 = &v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v247 = &v181 - v43;
  v44 = sub_21796722C();
  v221 = *(v44 - 8);
  v222 = v44;
  MEMORY[0x28223BE20](v44);
  v220 = &v181 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v269 = v245;
  v270 = a2;
  v47 = a2;
  v271 = v232;
  v272 = v27;
  _s16SearchResultCellVMa(255, &v269);
  swift_getTupleTypeMetadata2();
  v48 = sub_217967E9C();
  v49 = sub_217898FF8(&unk_27CB8B810);
  v269 = v46;
  v270 = MEMORY[0x277D837D0];
  v271 = v48;
  v272 = v49;
  v273 = MEMORY[0x277D837E0];
  sub_217967D9C();
  sub_21796698C();
  v268[13] = swift_getWitnessTable();
  v268[11] = swift_getWitnessTable();
  v50 = MEMORY[0x277CDF918];
  v268[12] = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_21796665C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  v51 = sub_217967CDC();
  v185 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v209 = (&v181 - v52);
  v53 = sub_21796698C();
  v184 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v183 = &v181 - v54;
  v182 = swift_getWitnessTable();
  v268[9] = v182;
  v268[10] = v50;
  v55 = swift_getWitnessTable();
  v231 = v53;
  v269 = v53;
  v270 = v55;
  v229 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v186 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v210 = &v181 - v57;
  v58 = sub_21796698C();
  v190 = *(v58 - 8);
  v59 = MEMORY[0x28223BE20](v58);
  v189 = &v181 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v187 = &v181 - v62;
  MEMORY[0x28223BE20](v61);
  v188 = &v181 - v63;
  v230 = v64;
  v232 = sub_21796944C();
  v228 = *(v232 - 8);
  v65 = MEMORY[0x28223BE20](v232);
  v246 = &v181 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v245 = &v181 - v67;
  v68 = *v243;
  v69 = v243[1];
  v223 = v47;
  v71 = _s9ViewModelCMa(0, v47, v242, v70);
  v72 = swift_getWitnessTable();
  sub_217966A9C();
  v73 = sub_2178D8034();
  v75 = v74;

  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v73 & 0xFFFFFFFFFFFFLL;
  }

  v219 = v68;
  v224 = v69;
  v226 = v72;
  v227 = v71;
  if (v76 || (v82 = sub_217966A9C(), sub_2178D8A04(v82, v83, v84, v85, v86, v87, v88, v89, v181, v182, v183, v184, v185, v186), v91 = v90, , v92 = *(v91 + 16), , !v92))
  {
    v77 = v246;
    __swift_storeEnumTagSinglePayload(v246, 1, 1, v230);
    v269 = v231;
    v270 = v229;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v79 = sub_2178AA01C(&qword_27CB8A710);
    v268[7] = OpaqueTypeConformance2;
    v268[8] = v79;
    swift_getWitnessTable();
    v80 = v239;
    v81 = v234;
  }

  else
  {
    v94 = _s17SearchResultsViewVMa(0, v223, v242, v93);
    sub_2178A257C(v94, v209);
    sub_21796740C();
    v95 = sub_217966A9C();
    sub_2178D8634(v95, v96, v97, v98, v99, v100, v101, v102, v181, v182, v183, v184, v185, v186);

    v103 = v183;
    v104 = v209;
    sub_217967A0C();
    (*(v185 + 8))(v104, v51);
    v105 = v220;
    sub_21796721C();
    v106 = v231;
    v107 = v229;
    sub_2179678AC();
    (*(v221 + 8))(v105, v222);
    (*(v184 + 8))(v103, v106);
    if (qword_27CB8A3C0 != -1)
    {
      swift_once();
    }

    v108 = qword_27CB97960;
    v269 = qword_27CB97950;
    v270 = *algn_27CB97958;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0xD000000000000015, 0x8000000217974640);

    v109 = v269;
    v110 = v270;
    v269 = v106;
    v270 = v107;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = v187;
    v113 = v109;
    v114 = v210;
    sub_2178ED854(v113, v110, v108, v56, v111);

    (*(v186 + 8))(v114, v56);
    v115 = sub_2178AA01C(&qword_27CB8A710);
    v248 = v111;
    v249 = v115;
    v116 = v230;
    swift_getWitnessTable();
    v117 = v188;
    sub_2179560E4();
    v118 = v190;
    v119 = *(v190 + 8);
    v119(v112, v116);
    v120 = v189;
    sub_2179560E4();
    v119(v117, v116);
    v77 = v246;
    (*(v118 + 32))(v246, v120, v116);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v116);
    v80 = v239;
    v81 = v234;
  }

  sub_2178AEE20(v77, v245);
  v209 = *(v228 + 8);
  v210 = (v228 + 8);
  (v209)(v77, v232);
  sub_217966A9C();
  v121 = sub_2178D3474();

  v123 = v237;
  v124 = v235;
  v125 = v211;
  if (v121)
  {
    v126 = _s17SearchResultsViewVMa(0, v223, v242, v122);
    v127 = v191;
    sub_2178A2910(v126, v191);
    v128 = v220;
    sub_21796721C();
    sub_2179678AC();
    (*(v221 + 8))(v128, v222);
    (*(v192 + 8))(v127, v123);
    if (qword_27CB8A3C0 != -1)
    {
      swift_once();
    }

    v129 = qword_27CB97960;
    v269 = qword_27CB97950;
    v270 = *algn_27CB97958;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0x6974736567677553, 0xEB00000000736E6FLL);

    v130 = v269;
    v131 = v270;
    v269 = v123;
    v270 = v124;
    v132 = swift_getOpaqueTypeConformance2();
    v133 = v196;
    v134 = v194;
    sub_2178ED854(v130, v131, v129, v194, v132);

    (*(v193 + 8))(v125, v134);
    v135 = sub_2178AA01C(&qword_27CB8A710);
    v250 = v132;
    v251 = v135;
    swift_getWitnessTable();
    v136 = v195;
    sub_2179560E4();
    v137 = v197;
    v138 = *(v197 + 8);
    v138(v133, v81);
    sub_2179560E4();
    v138(v136, v81);
    v139 = v244;
    (*(v137 + 32))(v244, v133, v81);
    __swift_storeEnumTagSinglePayload(v139, 0, 1, v81);
  }

  else
  {
    v139 = v244;
    __swift_storeEnumTagSinglePayload(v244, 1, 1, v81);
    v269 = v123;
    v270 = v124;
    v140 = swift_getOpaqueTypeConformance2();
    v141 = sub_2178AA01C(&qword_27CB8A710);
    v268[5] = v140;
    v268[6] = v141;
    swift_getWitnessTable();
  }

  sub_2178AEE20(v139, v247);
  v142 = *(v233 + 8);
  v224 = v233 + 8;
  v211 = v142;
  (v142)(v139, v236);
  sub_217966A9C();
  v143 = v213;
  sub_2178D8858();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v143, 1, v212);
  v145 = v214;
  if (EnumTagSinglePayload == 1)
  {
    sub_217899038(v143, &qword_27CB8B958);
    v146 = v238;
    __swift_storeEnumTagSinglePayload(v238, 1, 1, v80);
    v269 = v241;
    v270 = v240;
    v147 = swift_getOpaqueTypeConformance2();
    v148 = sub_2178AA01C(&qword_27CB8A710);
    v268[3] = v147;
    v268[4] = v148;
    swift_getWitnessTable();
  }

  else
  {
    sub_2178A909C(v143, v225);
    v150 = _s17SearchResultsViewVMa(0, v223, v242, v149);
    v151 = v200;
    sub_2178A3770(v150, v200);
    sub_21796742C();
    v152 = v199;
    v153 = v203;
    sub_217967A0C();
    (*(v202 + 8))(v151, v153);
    v154 = v220;
    sub_21796721C();
    v156 = v240;
    v155 = v241;
    sub_2179678AC();
    (*(v221 + 8))(v154, v222);
    (*(v201 + 8))(v152, v155);
    if (qword_27CB8A3C0 != -1)
    {
      swift_once();
    }

    v157 = qword_27CB97960;
    v269 = qword_27CB97950;
    v270 = *algn_27CB97958;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0x73746C75736552, 0xE700000000000000);

    v158 = v269;
    v159 = v270;
    v269 = v155;
    v270 = v156;
    v160 = swift_getOpaqueTypeConformance2();
    v161 = v207;
    v162 = v205;
    sub_2178ED854(v158, v159, v157, v205, v160);

    (*(v204 + 8))(v145, v162);
    sub_2178A9170(v225, _s12SearchColumnVMa);
    v163 = sub_2178AA01C(&qword_27CB8A710);
    v252 = v160;
    v253 = v163;
    swift_getWitnessTable();
    v164 = v206;
    sub_2179560E4();
    v165 = v208;
    v166 = *(v208 + 8);
    v166(v161, v80);
    sub_2179560E4();
    v166(v164, v80);
    v146 = v238;
    (*(v165 + 32))(v238, v161, v80);
    __swift_storeEnumTagSinglePayload(v146, 0, 1, v80);
    v139 = v244;
  }

  v167 = v216;
  sub_2178AEE20(v146, v216);
  v168 = v215;
  v242 = *(v215 + 8);
  v243 = (v215 + 8);
  v169 = v146;
  v170 = v217;
  v242(v146, v217);
  v171 = v246;
  v172 = v232;
  (*(v228 + 16))(v246, v245, v232);
  v269 = v171;
  v173 = v236;
  (*(v233 + 16))(v139, v247, v236);
  v270 = v139;
  (*(v168 + 16))(v169, v167, v170);
  v271 = v169;
  v268[0] = v172;
  v268[1] = v173;
  v268[2] = v170;
  v265 = v231;
  v266 = v229;
  v174 = swift_getOpaqueTypeConformance2();
  v175 = sub_2178AA01C(&qword_27CB8A710);
  v263 = v174;
  v264 = v175;
  v262 = swift_getWitnessTable();
  v265 = swift_getWitnessTable();
  v260 = v237;
  v261 = v235;
  v258 = swift_getOpaqueTypeConformance2();
  v259 = v175;
  v257 = swift_getWitnessTable();
  v266 = swift_getWitnessTable();
  v260 = v241;
  v261 = v240;
  v255 = swift_getOpaqueTypeConformance2();
  v256 = v175;
  v254 = swift_getWitnessTable();
  v267 = swift_getWitnessTable();
  sub_2178B9390(&v269, 3, v268);
  v176 = v167;
  v177 = v242;
  v242(v176, v170);
  v178 = v211;
  (v211)(v247, v173);
  v179 = v209;
  (v209)(v245, v172);
  v177(v238, v170);
  v178(v244, v173);
  return v179(v246, v172);
}

uint64_t sub_2178A257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v5 = sub_21796595C();
  v6 = *(a1 + 16);
  v7 = sub_2178AA01C(&qword_27CB8B808);
  v8 = *(a1 + 24);
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  _s16SearchResultCellVMa(255, &v25);
  swift_getTupleTypeMetadata2();
  v9 = sub_217967E9C();
  v10 = sub_217898FF8(&unk_27CB8B810);
  v25 = v4;
  v26 = MEMORY[0x277D837D0];
  v27 = v9;
  v28 = v10;
  v29 = MEMORY[0x277D837E0];
  sub_217967D9C();
  sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_21796665C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  v11 = sub_217967CDC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v20[4] = v6;
  v20[5] = v8;
  v21 = v2;
  sub_217966E5C();
  sub_217967CCC();
  swift_getWitnessTable();
  sub_2179560E4();
  v18 = *(v12 + 8);
  v18(v15, v11);
  sub_2179560E4();
  return (v18)(v17, v11);
}

uint64_t sub_2178A2910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = sub_21796708C();
  MEMORY[0x28223BE20](v4 - 8);
  v73 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21796595C();
  v7 = *(a1 + 16);
  v8 = sub_2178AA01C(&qword_27CB8B808);
  v9 = *(a1 + 24);
  v108 = v6;
  v109 = v7;
  v110 = v8;
  v111 = v9;
  _s17SearchContentViewVMa(255, &v108);
  sub_21796698C();
  v10 = sub_21796944C();
  WitnessTable = swift_getWitnessTable();
  v107 = MEMORY[0x277CDF918];
  v105 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v69[2] = v10;
  v69[1] = v11;
  v12 = sub_21796665C();
  v72 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v71 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  MEMORY[0x28223BE20](v16 - 8);
  v77 = v69 - v17;
  v85 = sub_21796832C();
  v79 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B818, &qword_21796C668);
  v19 = sub_2179682DC();
  v20 = sub_2178AA01C(&unk_27CB8B820);
  v108 = v19;
  v109 = v7;
  v110 = v20;
  v111 = v9;
  _s17SearchContentViewVMa(255, &v108);
  sub_21796698C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v74 = swift_getWitnessTable();
  v21 = sub_217967CDC();
  v93 = v12;
  v22 = sub_217966F9C();
  v81 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v80 = v69 - v24;
  v91 = v21;
  v76 = *(v21 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v75 = v69 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v69 - v30;
  v32 = sub_21796846C();
  v87 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v86 = v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v22;
  v90 = sub_217966F9C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = v69 - v34;
  v84 = v2;
  v83 = v7;
  v82 = v9;
  _s9ViewModelCMa(0, v7, v9, v35);
  swift_getWitnessTable();
  sub_217966A9C();
  LOBYTE(v10) = sub_2178D86A8();

  if (v10)
  {
    v36 = sub_21796969C();

    v37 = v91;
    if ((v36 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v37 = v91;
  }

  sub_217966A9C();
  sub_2178D8890();

  if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
  {
    v43 = v86;
    v44 = (*(v87 + 32))();
    MEMORY[0x28223BE20](v44);
    v45 = v82;
    v69[-4] = v83;
    v69[-3] = v45;
    v46 = v84;
    v69[-2] = v43;
    v69[-1] = v46;
    sub_217966E5C();
    sub_217967CCC();
    v47 = swift_getWitnessTable();
    v91 = v32;
    v48 = v75;
    sub_2179560E4();
    v49 = *(v76 + 8);
    v49(v27, v37);
    sub_2179560E4();
    v50 = swift_getWitnessTable();
    v51 = v80;
    sub_217952EE8();
    v95 = v47;
    v96 = v50;
    v52 = v92;
    swift_getWitnessTable();
    v42 = v88;
    sub_217952EE8();
    (*(v81 + 8))(v51, v52);
    v49(v27, v37);
    v49(v48, v37);
    (*(v87 + 8))(v86, v91);
    goto LABEL_14;
  }

  sub_217899038(v31, &qword_27CB8BA30);
LABEL_7:
  sub_217966A9C();
  v38 = sub_2178D86A8();

  if (v38 & 1) != 0 || (sub_21796969C())
  {
    sub_217966A9C();
    v39 = v77;
    sub_2178D88C8();

    if (__swift_getEnumTagSinglePayload(v39, 1, v85) != 1)
    {
      v53 = v78;
      v54 = (*(v79 + 32))();
      MEMORY[0x28223BE20](v54);
      v55 = v82;
      v69[-4] = v83;
      v69[-3] = v55;
      v56 = v84;
      v69[-2] = v53;
      v69[-1] = v56;
      sub_217966E5C();
      sub_21789A9E0();
      v57 = v71;
      sub_21796664C();
      v58 = v93;
      v59 = swift_getWitnessTable();
      v60 = v70;
      sub_2179560E4();
      v61 = *(v72 + 8);
      v61(v57, v58);
      sub_2179560E4();
      v62 = swift_getWitnessTable();
      v63 = v80;
      sub_217952FA4();
      v97 = v62;
      v98 = v59;
      v64 = v92;
      swift_getWitnessTable();
      v42 = v88;
      sub_217952EE8();
      (*(v81 + 8))(v63, v64);
      v61(v57, v58);
      v61(v60, v58);
      (*(v79 + 8))(v78, v85);
      goto LABEL_14;
    }

    sub_217899038(v39, &qword_27CB8BA28);
  }

  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v103 = v40;
  v104 = v41;
  swift_getWitnessTable();
  v42 = v88;
  sub_217952FA4();
LABEL_14:
  v65 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v101 = v65;
  v102 = v66;
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x277CE1410];
  v67 = v90;
  swift_getWitnessTable();
  sub_2179560E4();
  return (*(v89 + 8))(v42, v67);
}

uint64_t sub_2178A3770@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8BB98, &qword_21796C948);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_21796595C();
  v22 = v7;
  v8 = *(a1 + 16);
  v9 = sub_2178AA01C(&qword_27CB8B808);
  v10 = *(a1 + 24);
  v24 = v7;
  *&v25 = v8;
  *(&v25 + 1) = v9;
  *&v26 = v10;
  v11 = _s17SearchContentViewVMa(0, &v24);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_217965A1C();
  LOBYTE(v24) = *(v2 + 80);
  v18 = *(v2 + 104);
  v25 = *(v2 + 88);
  v26 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B960, &qword_21796C758);
  sub_217967C1C();
  LOBYTE(v24) = v27;
  v25 = v28;
  *&v26 = v29;
  sub_2178CF3F0(v6, &v24, v22, v9, v15, v8, v10);
  swift_getWitnessTable();
  sub_2179560E4();
  v19 = *(v12 + 8);
  v19(v15, v11);
  sub_2179560E4();
  return (v19)(v17, v11);
}

void sub_2178A39F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MusicPicker.Click.ControlID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31[-v12 - 8];
  _s9ViewModelCMa(0, a3, a4, v14);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178A9100(a1, v13);
  v15 = _s12SearchColumnVMa(0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_2178D886C();

  sub_2178C010C(v35);
  v16 = LOBYTE(v35[0]);
  if (LOBYTE(v35[0]) != 10)
  {
    v18 = a2[11];
    v17 = a2[12];
    v19 = a2[13];
    v20 = a2[14];
    LOBYTE(v35[0]) = *(a2 + 80);
    v35[1] = v18;
    v35[2] = v17;
    v36 = v19;
    v37 = v20;
    v31[0] = 1;
    v32 = 0;
    v33 = 0;
    v34 = v16 | 0x6000000000000000;

    sub_217863EC4(v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B960, &qword_21796C758);
    sub_217967C2C();
    v21 = v36;

    sub_2178643E0(v21);

    sub_217956100();
    v22 = v36;
    if (v36)
    {
      v23 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      *v10 = v16;
      swift_storeEnumTagMultiPayload();
      v24 = *(a2 + 120);
      v26 = a2[16];
      v25 = a2[17];
      v27 = a2[18];
      v31[0] = v24;
      v32 = v26;
      v33 = v25;
      v34 = v27;
      v28 = *(v23 + 16);

      sub_217863EC4(v27);
      v28(v10, v31, v22, v23);
      v29 = v34;

      sub_2178643E0(v29);
      sub_2178A9170(v10, type metadata accessor for MusicPicker.Click.ControlID);
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      sub_217899038(v35, &qword_27CB8A630);
    }
  }
}

uint64_t sub_2178A3CCC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v7 = sub_21796708C();
  MEMORY[0x28223BE20](v7 - 8);
  v42 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v10 = sub_21796595C();
  v11 = sub_2178AA01C(&qword_27CB8B808);
  v50 = v10;
  v51 = a2;
  v52 = v11;
  v53 = a3;
  _s16SearchResultCellVMa(255, &v50);
  swift_getTupleTypeMetadata2();
  v12 = sub_217967E9C();
  v13 = sub_217898FF8(&unk_27CB8B810);
  v50 = v9;
  v51 = MEMORY[0x277D837D0];
  v52 = v12;
  v53 = v13;
  v54 = MEMORY[0x277D837E0];
  sub_217967D9C();
  v14 = sub_21796698C();
  v49[4] = swift_getWitnessTable();
  v49[2] = swift_getWitnessTable();
  v49[3] = MEMORY[0x277CDF918];
  v40[2] = v14;
  v40[1] = swift_getWitnessTable();
  v15 = sub_21796665C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v41 = v40 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B7F8, &qword_21796C650);
  v40[0] = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v40 - v25;
  *v26 = sub_217966D1C();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B968, &qword_21796C760) + 44)];
  v28 = a1;
  v29 = a1;
  v30 = a2;
  sub_2178A4210(v29, a2, a3, v27);
  LOBYTE(a2) = sub_2179673EC();
  sub_21796660C();
  v31 = &v26[*(v21 + 36)];
  *v31 = a2;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  sub_217966E6C();
  v44 = v30;
  v45 = a3;
  v46 = v28;
  sub_21789A9E0();
  sub_21796664C();
  WitnessTable = swift_getWitnessTable();
  v37 = v41;
  sub_2179560E4();
  v38 = *(v16 + 8);
  v38(v19, v15);
  sub_21788D484(v26, v24, &qword_27CB8B7F8, &qword_21796C650);
  v50 = v24;
  (*(v16 + 16))(v19, v37, v15);
  v51 = v19;
  v49[0] = v40[0];
  v49[1] = v15;
  v47 = sub_2178A91F8();
  v48 = WitnessTable;
  sub_2178B9390(&v50, 2, v49);
  v38(v37, v15);
  sub_217899038(v26, &qword_27CB8B7F8);
  v38(v19, v15);
  return sub_217899038(v24, &qword_27CB8B7F8);
}

uint64_t sub_2178A4210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v98 = a2;
  v127 = a1;
  v131 = a4;
  v4 = sub_217966FAC();
  v129 = *(v4 - 8);
  v130 = v4;
  MEMORY[0x28223BE20](v4);
  v128 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_21796804C();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21796707C();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v107 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B990, &qword_21796C778);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v95 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B998, &qword_21796C780);
  MEMORY[0x28223BE20](v103);
  v104 = &v95 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B9A0, &qword_21796C788);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v11 = &v95 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B9A8, &qword_21796C790);
  MEMORY[0x28223BE20](v105);
  v108 = &v95 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B9B0, &qword_21796C798);
  MEMORY[0x28223BE20](v106);
  v111 = &v95 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B9B8, &qword_21796C7A0);
  MEMORY[0x28223BE20](v110);
  v116 = &v95 - v14;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B9C0, &qword_21796C7A8);
  MEMORY[0x28223BE20](v120);
  v121 = &v95 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B9C8, &unk_21796C7B0);
  v125 = *(v16 - 8);
  v126 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v124 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B600, &unk_21796BED0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v122 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v132 = &v95 - v23;
  sub_217966D8C();
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v109 = v11;
  v97 = qword_27CB978B8;
  v94 = 2;
  v93 = 60;
  v24 = sub_21796761C();
  v26 = v25;
  v28 = v27;
  sub_21796756C();
  v29 = sub_2179675DC();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_21788C9B8(v24, v26, v28 & 1);

  if (qword_27CB8A3D0 != -1)
  {
    swift_once();
  }

  v36 = *algn_27CB97988;
  v96 = qword_27CB97980;
  v37 = qword_27CB97990;
  v133 = qword_27CB97980;
  v134 = *algn_27CB97988;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

  v38 = v133;
  v39 = v134;
  v133 = v29;
  v134 = v31;
  v40 = v33 & 1;
  v135 = v40;
  v136 = v35;
  sub_2178EE0A8(v38, v39, v37);

  sub_21796790C();
  sub_21788C9B8(v29, v31, v40);

  v133 = sub_21796560C();
  v134 = v41;
  MEMORY[0x28223BE20](v133);
  v42 = v99;
  *(&v95 - 4) = v98;
  *(&v95 - 3) = v42;
  v43 = v127;
  v93 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B9D0, &qword_21796C7C0);
  v44 = sub_217898FF8(&unk_27CB8B9D8);
  sub_217873C34(v44, v45, v46);
  v47 = v100;
  sub_21796758C();
  v133 = v96;
  v134 = v36;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x7261656C63, 0xE500000000000000);

  sub_2178EE0A8(v133, v134, v37);

  sub_217898FF8(&unk_27CB8B9E0);
  v48 = v104;
  v49 = v102;
  sub_21796790C();

  (*(v101 + 8))(v47, v49);
  v50 = v107;
  sub_21796706C();
  sub_2178A932C();
  sub_2178AA01C(&unk_27CB8B9F0);
  v51 = v109;
  v52 = v114;
  sub_2179676FC();
  (*(v112 + 8))(v50, v52);
  sub_217899038(v48, &qword_27CB8B998);
  v53 = v117;
  sub_21796802C();
  LOBYTE(v49) = sub_21796803C();
  (*(v118 + 8))(v53, v119);
  if (v49)
  {
    v54 = sub_217967B4C();
  }

  else
  {
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }

    v54 = qword_27CB977C8;
  }

  KeyPath = swift_getKeyPath();
  v56 = v108;
  (*(v113 + 32))(v108, v51, v115);
  v57 = &v56[*(v105 + 36)];
  *v57 = KeyPath;
  v57[1] = v54;
  v58 = sub_21796745C();
  v59 = swift_getKeyPath();
  v60 = v56;
  v61 = v111;
  sub_217898E78(v60, v111, &qword_27CB8B9A8, &qword_21796C790);
  v62 = (v61 + *(v106 + 36));
  *v62 = v59;
  v62[1] = v58;
  LOBYTE(v58) = sub_21796743C();
  sub_21796660C();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v116;
  sub_217898E78(v61, v116, &qword_27CB8B9B0, &qword_21796C798);
  v72 = v71 + *(v110 + 36);
  *v72 = v58;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  v73 = *(v43 + 304);
  v74 = v121;
  v75 = &v121[*(v120 + 36)];
  v76 = *(sub_217966A2C() + 20);
  v77 = *MEMORY[0x277CE0118];
  v78 = sub_217966DAC();
  (*(*(v78 - 8) + 104))(&v75[v76], v77, v78);
  *v75 = v73;
  *(v75 + 1) = v73;
  v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ADF0, &qword_21796B500) + 36)] = 0;
  sub_217898E78(v71, v74, &qword_27CB8B9B8, &qword_21796C7A0);
  v79 = v128;
  sub_217966A8C();
  sub_2178A946C();
  sub_2178AA01C(&qword_27CB8AE00);
  v80 = v123;
  v81 = v130;
  sub_21796773C();
  (*(v129 + 8))(v79, v81);
  sub_217899038(v74, &qword_27CB8B9C0);
  v82 = v132;
  v83 = v122;
  sub_21788D484(v132, v122, &qword_27CB8B600, &unk_21796BED0);
  v85 = v124;
  v84 = v125;
  v86 = *(v125 + 16);
  v87 = v126;
  v86(v124, v80, v126);
  v88 = v131;
  sub_21788D484(v83, v131, &qword_27CB8B600, &unk_21796BED0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA18, &unk_21796C830);
  v90 = v88 + *(v89 + 48);
  *v90 = 0;
  *(v90 + 8) = 1;
  v86((v88 + *(v89 + 64)), v85, v87);
  v91 = *(v84 + 8);
  v91(v80, v87);
  sub_217899038(v82, &qword_27CB8B600);
  v91(v85, v87);
  return sub_217899038(v83, &qword_27CB8B600);
}

uint64_t sub_2178A510C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-v7 - 8];
  sub_2179665BC();
  v9 = sub_2179665FC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v11 = _s17SearchResultsViewVMa(0, a2, a3, v10);
  (*(*(v11 - 8) + 16))(v15, a1, v11);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  memcpy(v12 + 4, v15, 0x138uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B898, &qword_21796C6B8);
  sub_217898FF8(&unk_27CB8B8A0);
  return sub_217967C5C();
}

double sub_2178A52C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(0, a2, a3, a4);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D35C4();

  return result;
}

uint64_t sub_2178A539C@<X0>(uint64_t a1@<X8>)
{
  sub_217966D8C();
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v2 = qword_27CB978B8;
  result = sub_21796761C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2178A5484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217967B8C();
  *a1 = result;
  return result;
}

uint64_t sub_2178A54BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v44 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v48[0] = sub_21796595C();
  v48[1] = a2;
  v48[2] = sub_2178AA01C(&qword_27CB8B808);
  v48[3] = a3;
  _s16SearchResultCellVMa(255, v48);
  swift_getTupleTypeMetadata2();
  v39 = sub_217967E9C();
  v40 = sub_217898FF8(&unk_27CB8B810);
  v48[0] = v41;
  v48[1] = MEMORY[0x277D837D0];
  v48[2] = v39;
  v48[3] = v40;
  v48[4] = MEMORY[0x277D837E0];
  v7 = sub_217967D9C();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_21796698C();
  v43 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &v35 - v13;
  v14 = v36;
  _s9ViewModelCMa(0, a2, v36, v15);
  swift_getWitnessTable();
  v16 = sub_217966A9C();
  sub_2178D8A04(v16, v17, v18, v19, v20, v21, v22, v23, v35, v36, v37, v38, v39, v40);
  v25 = v24;

  v48[39] = v25;
  v27 = _s17SearchResultsViewVMa(0, a2, v14, v26);
  (*(*(v27 - 8) + 16))(v48, a1, v27);
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = v14;
  memcpy(v28 + 4, v48, 0x138uLL);
  WitnessTable = swift_getWitnessTable();
  sub_2178AA01C(&unk_27CB8B988);
  sub_217967D8C();
  sub_21796742C();
  v47 = WitnessTable;
  v30 = swift_getWitnessTable();
  v31 = v37;
  sub_217967A0C();
  (*(v42 + 8))(v9, v7);
  v45 = v30;
  v46 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v32 = v38;
  sub_2179560E4();
  v33 = *(v43 + 8);
  v33(v31, v10);
  sub_2179560E4();
  return (v33)(v32, v10);
}

uint64_t sub_2178A59B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v43 = a3;
  v45 = a1;
  v46 = a5;
  v44 = sub_217965C8C();
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21796595C();
  v12 = sub_2178AA01C(&qword_27CB8B808);
  v50 = v11;
  v51 = a3;
  v52 = v12;
  v53 = a4;
  v13 = _s16SearchResultCellVMa(0, &v50);
  v40 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v22 = MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v37 - v24;
  sub_217967D6C();
  v26 = sub_21796743C();
  v27 = &v21[*(v19 + 36)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  sub_217898E78(v21, v25, &qword_27CB8A780, &qword_21796C770);
  v28 = v25;
  v38 = v25;
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v19);
  (*(v8 + 16))(v10, v45, v44);
  v30 = *(a2 + 192);
  v29 = *(a2 + 200);
  v31 = *(a2 + 208);
  LOBYTE(v50) = *(a2 + 184);
  v51 = v30;
  v52 = v29;
  v53 = v31;

  sub_217863EC4(v31);
  sub_217940188(v10, &v50, v43, v42, v16);
  WitnessTable = swift_getWitnessTable();
  sub_2179560E4();
  v33 = v40;
  v34 = *(v40 + 8);
  v34(v16, v13);
  v35 = v39;
  sub_21788D484(v28, v39, &qword_27CB8A6E0, &qword_21796A8E0);
  v50 = v35;
  (*(v33 + 16))(v16, v18, v13);
  v51 = v16;
  v49[0] = v41;
  v49[1] = v13;
  v47 = sub_2178A92BC(&qword_27CB8A7B8);
  v48 = WitnessTable;
  sub_2178B9390(&v50, 2, v49);
  v34(v18, v13);
  sub_217899038(v38, &qword_27CB8A6E0);
  v34(v16, v13);
  return sub_217899038(v35, &qword_27CB8A6E0);
}

uint64_t sub_2178A5E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a2;
  v81 = a5;
  v67 = sub_2179682DC();
  v94 = v67;
  v95 = a3;
  v82 = a3;
  v65 = sub_2178AA01C(&unk_27CB8B820);
  v96 = v65;
  v97 = a4;
  v8 = _s17SearchContentViewVMa(0, &v94);
  v69 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = v61 - v9;
  v85 = v10;
  v11 = sub_21796698C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = v61 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA38, &qword_21796C850);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v17 = v61 - v16;
  v80 = sub_21796944C();
  v77 = *(v80 - 8);
  v18 = MEMORY[0x28223BE20](v80);
  v84 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v79 = v61 - v20;
  v21 = sub_21796708C();
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA40, &qword_21796C858);
  MEMORY[0x28223BE20](v22);
  v24 = v61 - v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B818, &qword_21796C668);
  v25 = MEMORY[0x28223BE20](v76);
  v78 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v61 - v27;
  v83 = a1;
  v29 = *(sub_21796845C() + 16);

  v70 = a4;
  if (v29)
  {
    v62 = sub_217966E6C();
    v63 = v61;
    v30 = v75;
    v61[1] = *(v75 + 272);
    MEMORY[0x28223BE20](v62);
    v64 = v12;
    v31 = v83;
    v61[-4] = v82;
    v61[-3] = v32;
    v61[-2] = v31;
    v61[-1] = v30;
    LODWORD(v94) = 0;
    sub_2178AA01C(&unk_27CB8AF08);
    sub_2179697CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA48, &qword_21796C860);
    sub_2178A977C();
    v12 = v64;
    sub_21796664C();
    v33 = sub_2179673EC();
    sub_21796660C();
    v34 = &v24[*(v22 + 36)];
    *v34 = v33;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    sub_217898E78(v24, v28, &qword_27CB8BA40, &qword_21796C858);
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v30 = v75;
  }

  __swift_storeEnumTagSinglePayload(v28, v39, 1, v22);
  sub_21796844C();
  v40 = sub_2178D2BF0();
  (*(v73 + 8))(v17, v74);
  if (v40)
  {
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v11);
    WitnessTable = swift_getWitnessTable();
    v87 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
  }

  else
  {
    sub_21796844C();
    v41 = *(v30 + 192);
    v42 = *(v30 + 200);
    v43 = *(v30 + 208);
    LOBYTE(v94) = *(v30 + 184);
    v95 = v41;
    v96 = v42;
    v97 = v43;
    v44 = v66;
    sub_2178CF3F0(v17, &v94, v67, v65, v66, v82, v70);

    sub_217863EC4(v43);
    sub_21796742C();
    v45 = v28;
    v46 = v85;
    v47 = swift_getWitnessTable();
    v48 = v71;
    sub_217967A0C();
    v49 = v46;
    v28 = v45;
    v50 = v84;
    (*(v69 + 8))(v44, v49);
    v93[2] = v47;
    v93[3] = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v51 = v68;
    sub_2179560E4();
    v52 = *(v12 + 8);
    v52(v48, v11);
    sub_2179560E4();
    v52(v51, v11);
    (*(v12 + 32))(v50, v48, v11);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v11);
  }

  v72 = v28;
  v53 = v79;
  v54 = v84;
  sub_2178AEE20(v84, v79);
  v55 = v77;
  v56 = *(v77 + 8);
  v57 = v80;
  v56(v54, v80);
  v58 = v28;
  v59 = v78;
  sub_21788D484(v58, v78, &qword_27CB8B818, &qword_21796C668);
  v94 = v59;
  (*(v55 + 16))(v54, v53, v57);
  v95 = v54;
  v93[0] = v76;
  v93[1] = v57;
  v91 = sub_2178A92BC(&unk_27CB8BA68);
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x277CDF918];
  v88 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  sub_2178B9390(&v94, 2, v93);
  v56(v53, v57);
  sub_217899038(v72, &qword_27CB8B818);
  v56(v54, v57);
  return sub_217899038(v59, &qword_27CB8B818);
}

uint64_t sub_2178A6838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = sub_21796845C();
  v8 = _s17SearchResultsViewVMa(0, a3, a4, v7);
  (*(*(v8 - 8) + 16))(__src, a2, v8);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  memcpy(v9 + 4, __src, 0x138uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA88, &qword_21796C878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA60, &qword_21796C868);
  sub_217898FF8(&unk_27CB8BA90);
  sub_217898FF8(&unk_27CB8BA58);
  sub_2178AA01C(&unk_27CB8BA98);
  return sub_217967D8C();
}

uint64_t sub_2178A6A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a3;
  v87 = a4;
  v85 = a1;
  v106 = a5;
  v6 = sub_217966FAC();
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x28223BE20](v6);
  v103 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2179669FC();
  v98 = *(v8 - 8);
  v99 = v8;
  MEMORY[0x28223BE20](v8);
  v96 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_21796843C();
  v10 = *(v84 - 8);
  v83 = *(v10 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BAA0, &qword_21796C880);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v81 = &v81 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BAA8, &qword_21796C888);
  MEMORY[0x28223BE20](v89);
  v91 = &v81 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BAB0, &qword_21796C890);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BAB8, &qword_21796C898);
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v100 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v93 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v81 - v25;
  sub_217967D6C();
  v27 = sub_2179673EC();
  sub_21796660C();
  v28 = &v21[*(v19 + 36)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = v85;
  sub_217898E78(v21, v26, &qword_27CB8A780, &qword_21796C770);
  v92 = v26;
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v19);
  v35 = v86;
  v34 = v87;
  v37 = _s17SearchResultsViewVMa(0, v86, v87, v36);
  v38 = a2;
  (*(*(v37 - 8) + 16))(v111, a2, v37);
  v39 = v10;
  v40 = *(v10 + 16);
  v41 = v82;
  v42 = v84;
  v40(v82, v33, v84);
  v43 = (*(v39 + 80) + 344) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v35;
  *(v44 + 3) = v34;
  memcpy(v44 + 32, v111, 0x138uLL);
  (*(v39 + 32))(&v44[v43], v41, v42);
  v107 = v35;
  v108 = v34;
  v109 = v33;
  v110 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BAC0, &qword_21796C8A0);
  sub_2178A8BEC(&unk_27CB8BAC8);
  v45 = v81;
  sub_217967C6C();
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v46 = xmmword_27CB979C8;
  v47 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;

  v49 = sub_2179683FC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v49;
  *(inited + 56) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v51 = sub_217968EAC();
  *v111 = v46;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0xD000000000000010, 0x8000000217974790);

  sub_2178ED924(v51, v111[0], v111[1], v47);
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_2178EE0A8(v53, v55, v57);

  sub_217898FF8(&unk_27CB8BB10);
  v58 = v90;
  v59 = v91;
  sub_21796790C();

  (*(v88 + 8))(v45, v58);
  v60 = v96;
  sub_2179669EC();
  sub_2178A9B3C();
  sub_2178AA01C(&qword_27CB8A708);
  v61 = v95;
  v62 = v99;
  sub_2179676FC();
  (*(v98 + 8))(v60, v62);
  sub_217899038(v59, &qword_27CB8BAA8);
  v63 = *(v38 + 304);
  v64 = (v61 + *(v94 + 36));
  v65 = *(sub_217966A2C() + 20);
  v66 = *MEMORY[0x277CE0118];
  v67 = sub_217966DAC();
  (*(*(v67 - 8) + 104))(&v64[v65], v66, v67);
  *v64 = v63;
  *(v64 + 1) = v63;
  v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ADF0, &qword_21796B500) + 36)] = 0;
  v68 = v103;
  sub_217966A8C();
  sub_2178A9C24();
  sub_2178AA01C(&qword_27CB8AE00);
  v69 = v97;
  v70 = v105;
  sub_21796773C();
  (*(v104 + 8))(v68, v70);
  sub_217899038(v61, &qword_27CB8BAB0);
  v72 = v92;
  v71 = v93;
  sub_21788D484(v92, v93, &qword_27CB8A6E0, &qword_21796A8E0);
  v74 = v100;
  v73 = v101;
  v75 = *(v101 + 16);
  v76 = v102;
  v75(v100, v69, v102);
  v77 = v106;
  sub_21788D484(v71, v106, &qword_27CB8A6E0, &qword_21796A8E0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB28, &qword_21796C8C8);
  v75((v77 + *(v78 + 48)), v74, v76);
  v79 = *(v73 + 8);
  v79(v69, v76);
  sub_217899038(v72, &qword_27CB8A6E0);
  v79(v74, v76);
  return sub_217899038(v71, &qword_27CB8A6E0);
}

uint64_t sub_2178A7510(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MusicPicker.Click.ControlID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  _s9ViewModelCMa(0, a3, a4, v11);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D3614();

  sub_217956100();
  v12 = v28;
  if (!v28)
  {
    return sub_217899038(v27, &qword_27CB8A630);
  }

  v13 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v14 = sub_21796843C();
  (*(*(v14 - 8) + 16))(v10, a2, v14);
  swift_storeEnumTagMultiPayload();
  v15 = *(a1 + 152);
  v17 = a1[20];
  v16 = a1[21];
  v18 = a1[22];
  v23[0] = v15;
  v24 = v17;
  v25 = v16;
  v26 = v18;
  v19 = *(v13 + 16);

  sub_217863EC4(v18);
  v19(v10, v23, v12, v13);
  v20 = v26;

  sub_2178643E0(v20);
  sub_2178A9170(v10, type metadata accessor for MusicPicker.Click.ControlID);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_2178A7710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_217966D1C();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB30, &qword_21796C8D0);
  sub_2178A785C(a1, a2, a3, a4, (a5 + *(v10 + 44)));
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BAE8, &qword_21796C8B0) + 36)) = 0;
  LOBYTE(a4) = sub_2179673EC();
  sub_21796660C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BAD8, &qword_21796C8A8) + 36);
  *v19 = a4;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  LOBYTE(a4) = sub_21796744C();
  sub_21796660C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BAC0, &qword_21796C8A0);
  v29 = a5 + *(result + 36);
  *v29 = a4;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_2178A785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB38, &qword_21796C8D8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-v15];
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB40, &qword_21796C8E0);
  sub_2178A9D74();
  sub_217967BEC();
  v17 = *(v11 + 16);
  v17(v14, v16, v10);
  v17(a5, v14, v10);
  v18 = &a5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB60, &qword_21796C8F8) + 48)];
  *v18 = 0;
  v18[8] = 1;
  v19 = *(v11 + 8);
  v19(v16, v10);
  return (v19)(v14, v10);
}

uint64_t sub_2178A7A58@<X0>(uint64_t a2@<X8>, uint64_t x2_0@<X2>, uint64_t a3@<X3>)
{
  v7 = sub_2179655CC();
  MEMORY[0x28223BE20](v7 - 8);
  _s9ViewModelCMa(0, x2_0, a3, v8);
  swift_getWitnessTable();
  sub_217966A9C();
  v9 = sub_2178D8034();
  v11 = v10;

  sub_2178A7B7C(v9, v11);

  result = sub_21796762C();
  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_2178A7B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB68, &qword_21796C930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB70, &qword_21796C938);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB78, &qword_21796C940);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = sub_21796562C();
  MEMORY[0x28223BE20](v13 - 8);
  sub_21796840C();
  sub_21796561C();
  sub_2179655DC();
  v26[0] = sub_217967ADC();
  sub_2178A9FC8(v26[0], v14, v15);
  sub_2179655EC();
  v26[0] = a1;
  v26[1] = a2;
  v16 = sub_21796581C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  sub_2179655CC();
  v17 = sub_2178AA01C(&unk_27CB8BB88);
  sub_217873C34(v17, v18, v19);
  sub_2179656DC();
  sub_217899038(v6, &qword_27CB8BB68);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v20 = &qword_27CB8BB70;
    v21 = v9;
  }

  else
  {
    sub_217898E78(v9, v12, &qword_27CB8BB78, &qword_21796C940);
    v22 = sub_217967B3C();
    sub_217898FF8(&unk_27CB8BB90);
    v23 = sub_2179655FC();
    v25[1] = v22;
    sub_21796563C();
    v23(v26, 0);
    v21 = v12;
    v20 = &qword_27CB8BB78;
  }

  return sub_217899038(v21, v20);
}