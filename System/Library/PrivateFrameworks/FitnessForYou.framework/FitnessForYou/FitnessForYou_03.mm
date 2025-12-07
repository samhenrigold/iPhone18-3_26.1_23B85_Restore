unint64_t sub_20C341484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9518;
  if (!qword_2810E9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9518);
  }

  return result;
}

unint64_t sub_20C3414D8()
{
  result = qword_2810E8C98;
  if (!qword_2810E8C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8C98);
  }

  return result;
}

unint64_t sub_20C34155C()
{
  result = qword_2810E8C50;
  if (!qword_2810E8C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAB0, &qword_20C375290);
    sub_20C3077A8(&qword_2810E8C58, &qword_27C79EAB8, &qword_20C375298, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8C50);
  }

  return result;
}

uint64_t sub_20C34160C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v242 = a5;
  v243 = a6;
  v231 = a4;
  v232 = a1;
  v237 = a3;
  v238 = a2;
  v235 = a8;
  v213 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v212 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v222 = &v200 - v11;
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA0, &qword_20C375280);
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
  sub_20C36C734();
  sub_20C36CB24();
  v244 = sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  v12 = sub_20C36C544();
  v314 = a7;
  v315 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x277CDF678];
  v312 = WitnessTable;
  v313 = MEMORY[0x277CDF678];
  v15 = swift_getWitnessTable();
  v16 = sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
  v310 = v15;
  v311 = v16;
  v308 = swift_getWitnessTable();
  v309 = MEMORY[0x277CDF748];
  v306 = swift_getWitnessTable();
  v307 = v14;
  v17 = swift_getWitnessTable();
  v20 = sub_20C341484(v17, v18, v19);
  v21 = MEMORY[0x277D85048];
  *&v299 = v12;
  *(&v299 + 1) = MEMORY[0x277D85048];
  v300 = v17;
  v301 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_20C36C734();
  *&v299 = v12;
  *(&v299 + 1) = v21;
  v300 = v17;
  v301 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_20C3414D8();
  v304 = OpaqueTypeConformance2;
  v305 = v23;
  swift_getWitnessTable();
  sub_20C36C504();
  sub_20C36C544();
  sub_20C36C734();
  v24 = MEMORY[0x277CE0BD8];
  swift_getTupleTypeMetadata2();
  v25 = sub_20C36CC74();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAB0, &qword_20C375290);
  v27 = swift_getWitnessTable();
  v28 = sub_20C34155C();
  *&v299 = v25;
  *(&v299 + 1) = v24;
  v300 = v26;
  v301 = v27;
  v302 = MEMORY[0x277CE0BC8];
  v303 = v28;
  v29 = sub_20C36C784();
  v202 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v201 = &v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v200 = &v200 - v32;
  v33 = sub_20C36C1C4();
  v239 = v29;
  v34 = sub_20C36C734();
  v206 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v205 = &v200 - v35;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAE0, &qword_20C375338);
  v204 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v210 = &v200 - v36;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAE8, &qword_20C375340);
  MEMORY[0x28223BE20](v207);
  v209 = &v200 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA98, &qword_20C375278);
  MEMORY[0x28223BE20](v38);
  v211 = &v200 - v39;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAC0, &qword_20C3752A0);
  v203 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v208 = &v200 - v40;
  v218 = v38;
  v236 = v34;
  v41 = sub_20C36C734();
  v215 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v214 = &v200 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v225 = &v200 - v44;
  v240 = v45;
  v46 = sub_20C36C734();
  v224 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v223 = &v200 - v47;
  v48 = sub_20C36C144();
  MEMORY[0x28223BE20](v48 - 8);
  v219 = &v200 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20C36CD64();
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v230 = v33;
  v221 = *(v33 - 8);
  MEMORY[0x28223BE20](v51);
  v220 = &v200 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = v46;
  v53 = v238;
  v54 = sub_20C36C734();
  v229 = *(v54 - 8);
  v55 = MEMORY[0x28223BE20](v54);
  v228 = &v200 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v226 = &v200 - v58;
  v59 = *(v237 - 8);
  v60 = MEMORY[0x28223BE20](v57);
  v227 = &v200 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v63 = &v200 - v62;
  v65 = v64;
  v66 = sub_20C36C734();
  v233 = *(v66 - 8);
  v234 = v66;
  MEMORY[0x28223BE20](v66);
  v241 = &v200 - v67;
  *&v299 = v53;
  *(&v299 + 1) = v65;
  v68 = v65;
  v300 = v231;
  v301 = v242;
  v302 = v243;
  v303 = a7;
  v69 = type metadata accessor for ForYouView(0, &v299);
  v70 = v232;
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  if (v299 == 2)
  {
    v71 = *(v59 + 16);
    v71(v63, v70 + *(v69 + 72), v65);
    v72 = v227;
    v71(v227, v63, v65);
    v73 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
    v74 = sub_20C34323C();
    v75 = swift_getWitnessTable();
    v251 = v73;
    v252 = v75;
    v76 = swift_getWitnessTable();
    v249 = v74;
    v250 = v76;
    v77 = swift_getWitnessTable();
    v247 = v73;
    v248 = v77;
    v78 = swift_getWitnessTable();
    v79 = v242;
    v245 = v78;
    v246 = v242;
    v80 = swift_getWitnessTable();
    v81 = v243;
    sub_20C3607A4(v72, v68, v54, v243, v80);
    v82 = *(v59 + 8);
    v82(v72, v68);
    v82(v63, v68);
    v83 = v79;
    v84 = v235;
  }

  else
  {
    v231 = v54;
    v85 = v239;
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    v86 = v300;
    if (v301)
    {
      if (v301 == 1)
      {

        v87 = v213;
        v88 = *(v213 + 16);
        v89 = v70 + *(v69 + 68);
        v90 = v222;
        v91 = v238;
        v88(v222, v89, v238);
        v92 = v212;
        v88(v212, v90, v91);
        v93 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
        v94 = sub_20C34323C();
        v95 = swift_getWitnessTable();
        v297 = v93;
        v298 = v95;
        v96 = swift_getWitnessTable();
        v295 = v94;
        v296 = v96;
        v97 = swift_getWitnessTable();
        v293 = v93;
        v294 = v97;
        v98 = v244;
        v99 = swift_getWitnessTable();
        v100 = v226;
        v101 = v242;
        sub_20C36089C(v92, v98, v91, v99, v242);
        v102 = *(v87 + 8);
        v102(v92, v91);
        v102(v222, v91);
      }

      else
      {
        v118 = v230;
        sub_20C36CD54();
        if (qword_2810E8BF0 != -1)
        {
          swift_once();
        }

        v119 = qword_2810ED6B0;
        sub_20C339DF8();
        swift_getKeyPath();
        sub_20C36CCE4();

        sub_20C36CD84();
        v120 = v220;
        sub_20C36C1B4();
        v121 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
        v122 = sub_20C34323C();
        v123 = swift_getWitnessTable();
        v257 = v121;
        v258 = v123;
        v124 = swift_getWitnessTable();
        v255 = v122;
        v256 = v124;
        v125 = v240;
        v126 = swift_getWitnessTable();
        v127 = v223;
        sub_20C3607A4(v120, v118, v125, v121, v126);
        v253 = v121;
        v254 = v126;
        v128 = v244;
        v129 = swift_getWitnessTable();
        v100 = v226;
        v101 = v242;
        sub_20C3607A4(v127, v128, v238, v129, v242);
        (*(v224 + 8))(v127, v128);
        (*(v221 + 8))(v120, v118);
      }
    }

    else
    {
      v103 = v299;
      v104 = v230;
      if (v300)
      {
        if (v300 == 1)
        {
          v105 = v210;
          sub_20C33AA90(v299, v69);
          v106 = v204;
          (*(v204 + 16))(v209, v105, v217);
          swift_storeEnumTagMultiPayload();
          v107 = MEMORY[0x277CDE158];
          sub_20C3077A8(&qword_2810E8C78, &qword_27C79EAC0, &qword_20C3752A0, MEMORY[0x277CDE158]);
          v108 = v104;
          v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAC8, &qword_20C3752A8);
          v110 = sub_20C3077A8(&qword_2810E8C80, &qword_27C79EAC8, &qword_20C3752A8, v107);
          v263 = v109;
          v104 = v108;
          v264 = v110;
          swift_getOpaqueTypeConformance2();
          v111 = v211;
          v112 = v217;
          sub_20C36C724();
          v113 = sub_20C34323C();
          v114 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
          v115 = swift_getWitnessTable();
          v261 = v114;
          v262 = v115;
          v116 = v236;
          v117 = swift_getWitnessTable();
          sub_20C3607A4(v111, v218, v116, v113, v117);
          sub_20C2F9050(v111);
          (*(v106 + 8))(v210, v112);
        }

        else if (v299 == 0)
        {
          v227 = *(&v299 + 1);
          sub_20C36CD54();
          if (qword_2810E8BF0 != -1)
          {
            swift_once();
          }

          v156 = qword_2810ED6B0;
          sub_20C339DF8();
          swift_getKeyPath();
          sub_20C36CCE4();

          sub_20C36CD84();
          v157 = v220;
          sub_20C36C1B4();
          v158 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
          v159 = v85;
          v160 = swift_getWitnessTable();
          v161 = v205;
          sub_20C3607A4(v157, v104, v159, v158, v160);
          v162 = sub_20C34323C();
          v265 = v158;
          v266 = v160;
          v163 = v236;
          v164 = swift_getWitnessTable();
          sub_20C36089C(v161, v218, v163, v162, v164);
          sub_20C3048B4(v103, v227, v86, 0);
          (*(v206 + 8))(v161, v163);
          (*(v221 + 8))(v157, v104);
        }

        else
        {
          v143 = v201;
          sub_20C33BC2C(v69, v201);
          v144 = v85;
          v145 = swift_getWitnessTable();
          v146 = v202;
          v147 = *(v202 + 16);
          v148 = v200;
          v147(v200, v143, v85);
          v149 = *(v146 + 8);
          v149(v143, v85);
          v147(v143, v148, v85);
          v150 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
          v151 = v205;
          sub_20C36089C(v143, v230, v144, v150, v145);
          v152 = sub_20C34323C();
          v273 = v150;
          v274 = v145;
          v153 = v236;
          v154 = swift_getWitnessTable();
          sub_20C36089C(v151, v218, v153, v152, v154);
          (*(v206 + 8))(v151, v153);
          v149(v143, v144);
          v155 = v148;
          v104 = v230;
          v149(v155, v144);
        }
      }

      else
      {
        v130 = v208;
        v227 = *(&v299 + 1);
        v222 = v299;
        sub_20C33A2A0(v299, *(&v299 + 1), v69);
        v232 = v86;
        v131 = v203;
        (*(v203 + 16))(v209, v130, v216);
        swift_storeEnumTagMultiPayload();
        v132 = MEMORY[0x277CDE158];
        sub_20C3077A8(&qword_2810E8C78, &qword_27C79EAC0, &qword_20C3752A0, MEMORY[0x277CDE158]);
        v133 = v104;
        v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAC8, &qword_20C3752A8);
        v135 = sub_20C3077A8(&qword_2810E8C80, &qword_27C79EAC8, &qword_20C3752A8, v132);
        v263 = v134;
        v104 = v133;
        v264 = v135;
        swift_getOpaqueTypeConformance2();
        v136 = v211;
        v137 = v216;
        sub_20C36C724();
        v138 = sub_20C34323C();
        v139 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
        v140 = swift_getWitnessTable();
        v259 = v139;
        v260 = v140;
        v141 = v236;
        v142 = swift_getWitnessTable();
        sub_20C3607A4(v136, v218, v141, v138, v142);
        sub_20C3048B4(v222, v227, v232, 0);
        sub_20C2F9050(v136);
        (*(v131 + 8))(v208, v137);
      }

      v165 = sub_20C34323C();
      v166 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
      v167 = swift_getWitnessTable();
      v271 = v166;
      v272 = v167;
      v168 = swift_getWitnessTable();
      v269 = v165;
      v270 = v168;
      v169 = v240;
      v170 = swift_getWitnessTable();
      v171 = v214;
      v172 = v215;
      v173 = v225;
      (*(v215 + 16))(v214, v225, v169);
      v174 = v223;
      sub_20C36089C(v171, v104, v169, v166, v170);
      v267 = v166;
      v268 = v170;
      v175 = v244;
      v176 = swift_getWitnessTable();
      v100 = v226;
      v177 = v173;
      v178 = v169;
      v101 = v242;
      sub_20C3607A4(v174, v175, v238, v176, v242);
      (*(v224 + 8))(v174, v175);
      v179 = *(v172 + 8);
      v179(v171, v178);
      v179(v177, v178);
    }

    v81 = v243;
    v180 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
    v181 = sub_20C34323C();
    v182 = swift_getWitnessTable();
    v291 = v180;
    v292 = v182;
    v183 = swift_getWitnessTable();
    v289 = v181;
    v290 = v183;
    v184 = swift_getWitnessTable();
    v287 = v180;
    v288 = v184;
    v285 = swift_getWitnessTable();
    v286 = v101;
    v185 = v231;
    v186 = swift_getWitnessTable();
    v188 = v228;
    v187 = v229;
    (*(v229 + 16))(v228, v100, v185);
    sub_20C36089C(v188, v237, v185, v81, v186);
    v189 = *(v187 + 8);
    v189(v188, v185);
    v189(v100, v185);
    v83 = v101;
    v84 = v235;
  }

  v190 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
  v191 = sub_20C34323C();
  v192 = swift_getWitnessTable();
  v283 = v190;
  v284 = v192;
  v193 = swift_getWitnessTable();
  v281 = v191;
  v282 = v193;
  v194 = swift_getWitnessTable();
  v279 = v190;
  v280 = v194;
  v277 = swift_getWitnessTable();
  v278 = v83;
  v195 = swift_getWitnessTable();
  v275 = v81;
  v276 = v195;
  v196 = v234;
  swift_getWitnessTable();
  v197 = v233;
  v198 = v241;
  (*(v233 + 16))(v84, v241, v196);
  return (*(v197 + 8))(v198, v196);
}

unint64_t sub_20C34323C()
{
  result = qword_2810E8C88;
  if (!qword_2810E8C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EA98, &qword_20C375278);
    v1 = MEMORY[0x277CDE158];
    sub_20C3077A8(&qword_2810E8C78, &qword_27C79EAC0, &qword_20C3752A0, MEMORY[0x277CDE158]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAC8, &qword_20C3752A8);
    sub_20C3077A8(&qword_2810E8C80, &qword_27C79EAC8, &qword_20C3752A8, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8C88);
  }

  return result;
}

double sub_20C343360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  *&v11 = a3;
  *(&v11 + 1) = a4;
  *&v12 = a5;
  *(&v12 + 1) = a6;
  v13 = a7;
  type metadata accessor for ForYouView(0, &v10);
  sub_20C339DF8();
  v10 = a8;
  v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 8;
  sub_20C36CCF4();

  return result;
}

void sub_20C343434(void *a1)
{
  sub_20C343BA0(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_20C343C44(319, &qword_2810E8C70, MEMORY[0x277CE1378]);
          if (v5 <= 0x3F)
          {
            sub_20C343C44(319, &qword_2810E8C60, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_20C343C90(319);
              if (v7 <= 0x3F)
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

uint64_t sub_20C34355C(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a3[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v16;
  v19 = *(*(v7 - 8) + 64) + 7;
  if (v17 < a2)
  {
    v20 = ((((((v19 + ((v18 + ((v14 + v15 + ((v13 + 17) & ~v13)) & ~v15)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v21 = a2 - v17;
    v22 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_32;
      }

      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    v37 = v17 + (v29 | v28);
    return (v37 + 1);
  }

LABEL_32:
  v30 = (a1 + v13 + 17) & ~v13;
  if (v6 != v17)
  {
    v32 = (v30 + v14 + v15) & ~v15;
    if (v9 == v17)
    {
      v33 = *(v8 + 48);
      v34 = *(v8 + 84);
      v35 = a3[3];

      return v33(v32, v34, v35);
    }

    v32 = (v18 + v32) & ~v16;
    if (v12 == v17)
    {
      v33 = *(v11 + 48);
      v34 = *(v11 + 84);
      v35 = a3[4];

      return v33(v32, v34, v35);
    }

    v36 = *(((v19 + v32) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 - 1;
    if (v37 < 0)
    {
      v37 = -1;
    }

    return (v37 + 1);
  }

  v31 = *(v5 + 48);

  return v31(v30);
}

unsigned int *sub_20C343840(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = a4[3];
  v7 = *(v5 + 84);
  v8 = *(v6 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(a4[4] - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(*(v6 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v10 <= v12)
  {
    v19 = *(v11 + 84);
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = v16 + v17;
  v21 = ((((((v18 + 7 + ((v16 + v17 + ((v14 + v15 + ((v13 + 17) & ~v13)) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_21;
    }

LABEL_26:
    if (v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v21)
    {
      v27 = ~v19 + a2;
      v28 = result;
      bzero(result, v21);
      result = v28;
      *v28 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(result + v21) = v26;
      }

      else
      {
        *(result + v21) = v26;
      }
    }

    else if (v24)
    {
      *(result + v21) = v26;
    }

    return result;
  }

  v22 = a3 - v19;
  if (v21)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 < 2)
  {
    v24 = 0;
  }

  v25 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(result + v21) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *(result + v21) = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  *(result + v21) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  v29 = (result + v13 + 17) & ~v13;
  if (v7 != v19)
  {
    result = ((v29 + v14 + v15) & ~v15);
    if (v9 == v19)
    {
      v31 = *(v8 + 56);
    }

    else
    {
      result = ((result + v20) & ~v17);
      if (v12 != v19)
      {
        v32 = ((result + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          v32[1] = 0;
          v32[2] = 0;
          *v32 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v32[2] = a2;
        }

        return result;
      }

      v31 = *(v11 + 56);
    }

    return v31(result);
  }

  v30 = *(v5 + 56);

  return v30(v29);
}

void sub_20C343BA0(uint64_t a1)
{
  if (!qword_2810E8CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAD0, &qword_20C375318);
    sub_20C3077A8(&qword_2810E8C38, &qword_27C79EAD0, &qword_20C375318, MEMORY[0x277D04410]);
    v1 = sub_20C36C4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2810E8CA0);
    }
  }
}

void sub_20C343C44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20C36CB94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20C343C90(uint64_t a1)
{
  if (!qword_2810E8C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAD8, qword_20C375320);
    v1 = sub_20C36CB94();
    if (!v2)
    {
      atomic_store(v1, &qword_2810E8C68);
    }
  }
}

double sub_20C343DD0(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v9 = *(type metadata accessor for ForYouView(0, v11) - 8);
  return sub_20C343360(v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v3, v4, v5, v6, v7, v8, a1);
}

unint64_t sub_20C343EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8C30;
  if (!qword_2810E8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8C30);
  }

  return result;
}

uint64_t sub_20C343EF4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C3078C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C343F38(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C3078B8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C343F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v4;
  v7[2] = *(v1 + 48);
  v5 = type metadata accessor for ForYouView(0, v7);
  return sub_20C33ACBC(v3, v5, a1);
}

unint64_t sub_20C344024()
{
  result = qword_27C79EB08;
  if (!qword_27C79EB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAF8, &qword_20C3753F8);
    sub_20C3440DC();
    sub_20C3077A8(&qword_27C79EB30, &qword_27C79EB38, &qword_20C375418, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EB08);
  }

  return result;
}

unint64_t sub_20C3440DC()
{
  result = qword_27C79EB10;
  if (!qword_27C79EB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EB18, &qword_20C375408);
    sub_20C344188();
    sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420, MEMORY[0x277CE0F70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EB10);
  }

  return result;
}

unint64_t sub_20C344188()
{
  result = qword_27C79EB20;
  if (!qword_27C79EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EB28, &qword_20C375410);
    sub_20C3077A8(&qword_27C79EB30, &qword_27C79EB38, &qword_20C375418, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EB20);
  }

  return result;
}

uint64_t sub_20C344238(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_20C3442A0()
{
  result = qword_27C79EB50;
  if (!qword_27C79EB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EB00, &qword_20C375400);
    sub_20C34432C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EB50);
  }

  return result;
}

unint64_t sub_20C34432C()
{
  result = qword_27C79EB58;
  if (!qword_27C79EB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EB60, &qword_20C375428);
    sub_20C344238(&qword_27C79EB68, &qword_27C79EB70, &qword_20C375430, MEMORY[0x277CE0BC8]);
    sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420, MEMORY[0x277CE0F70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EB58);
  }

  return result;
}

uint64_t sub_20C344504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for ForYouView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_20C33E804(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

double sub_20C344610(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for ForYouView(0, v13) - 8);
  return sub_20C33F9A4(v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10, a1, a2);
}

uint64_t sub_20C3446D8()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for ForYouView(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_20C33DFD0(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_20C344794()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v9 = v0[2];
  v1 = v9;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  type metadata accessor for ForYouView(0, &v9);
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v7 = type metadata accessor for ForYouView(0, &v9);
  return sub_20C339FBC(0, v7);
}

unint64_t sub_20C34484C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8C48;
  if (!qword_2810E8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8C48);
  }

  return result;
}

uint64_t sub_20C3448A0(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v15 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  v7 = v1[9];
  v3[2] = v4;
  v3[3] = v15;
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v8;
  v3[7] = v7;
  v9 = *(type metadata accessor for ForYouView(0, (v3 + 2)) - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  v3[8] = v13;
  *v13 = v3;
  v13[1] = sub_20C3449D8;

  return sub_20C33E0B8(a1, v11, v12, v1 + v10, v4, v15, v5, v6);
}

uint64_t sub_20C3449D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20C344ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_20C36D084();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_20C344BCC, 0, 0);
}

uint64_t sub_20C344BCC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_20C36D094();
  v5 = sub_20C344F84(&qword_27C79EBB0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_20C36D294();
  sub_20C344F84(&qword_27C79EBB8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_20C36D0A4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_20C344D5C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_20C344D5C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C344F18, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20C344F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C344F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C344FEC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v13[0] = v0[2];
  v1 = v13[0];
  v13[1] = v2;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v5;
  v13[5] = v6;
  v7 = *(type metadata accessor for ForYouView(0, v13) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_20C36C4E4() - 8);
  v11 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_20C33F888(v0 + v8, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 24);
  v8[0] = *(v0 + 16);
  v2 = v8[0];
  v8[1] = v1;
  v3 = *(v0 + 48);
  v9 = *(v0 + 32);
  v7 = v9;
  v10 = v3;
  v4 = (type metadata accessor for ForYouView(0, v8) - 8);
  v5 = (v0 + ((*(*v4 + 80) + 64) & ~*(*v4 + 80)));
  sub_20C3070BC(*v5, v5[1]);
  (*(*(v2 - 8) + 8))(v5 + v4[19], v2);
  (*(*(v1 - 8) + 8))(v5 + v4[20], v1);
  (*(*(v7 - 8) + 8))(v5 + v4[21]);

  return swift_deallocObject();
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 40);
  v8[0] = *(v0 + 32);
  v2 = v8[0];
  v8[1] = v1;
  v3 = *(v0 + 64);
  v9 = *(v0 + 48);
  v7 = v9;
  v10 = v3;
  v4 = (type metadata accessor for ForYouView(0, v8) - 8);
  v5 = (*(*v4 + 80) + 80) & ~*(*v4 + 80);
  swift_unknownObjectRelease();
  sub_20C3070BC(*(v0 + v5), *(v0 + v5 + 8));
  (*(*(v2 - 8) + 8))(v0 + v5 + v4[19], v2);
  (*(*(v1 - 8) + 8))(v0 + v5 + v4[20], v1);
  (*(*(v7 - 8) + 8))(v0 + v5 + v4[21]);

  return swift_deallocObject();
}

uint64_t sub_20C34545C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v15 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  v7 = v1[9];
  v3[2] = v4;
  v3[3] = v15;
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v8;
  v3[7] = v7;
  v9 = *(type metadata accessor for ForYouView(0, (v3 + 2)) - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  v3[8] = v13;
  *v13 = v3;
  v13[1] = sub_20C3455A0;

  return sub_20C33FBD4(a1, v11, v12, v1 + v10, v4, v15, v5, v6);
}

__n128 ForYouSummaryEnvironment.init(fetchSectionDescriptors:makeAchievementEnvironmentCacheUpdatedStream:makeActiveWorkoutPlanUpdatedStream:makeAllowedContentRatingsUpdatedStream:makeAppDidBecomeActiveStream:makeCatalogDeletedStream:makeContentAvailabilityStream:makeNetworkConditionsUpdatedStream:makeOnboardingSurveyResultsUpdatedStream:makePersonalizationPrivacyPreferenceUpdatedStream:makeSignificantTimeChangeStream:makeWheelchairStatusUpdatedStream:navigateToFitnessPlusTab:navigateToItem:navigateToSettings:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20, uint64_t a21)
{
  result = a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  *(a9 + 232) = a21;
  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_20C34562C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C345674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PlaceholderReferenceType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6472617761;
    v6 = 0x6169726F74696465;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6169726F74696465;
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
    v1 = 0x2D72656E69617274;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x6D6172676F7270;
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

uint64_t sub_20C345838(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PlaceholderReferenceType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlaceholderReferenceType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C36D264();
  }

  return v8 & 1;
}

unint64_t sub_20C3458C0@<X0>(Swift::String *a1@<X0>, FitnessForYou::PlaceholderReferenceType_optional *a2@<X8>)
{
  result = _s13FitnessForYou24PlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_20C3458F0@<X0>(uint64_t *a1@<X8>)
{
  result = PlaceholderReferenceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20C3459CC()
{
  v1 = *v0;
  sub_20C36D314();
  PlaceholderReferenceType.rawValue.getter(v1);
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t sub_20C345A30(uint64_t a1)
{
  PlaceholderReferenceType.rawValue.getter(*v1);
  sub_20C36CDC4();
}

uint64_t sub_20C345A84(uint64_t a1)
{
  v2 = *v1;
  sub_20C36D314();
  PlaceholderReferenceType.rawValue.getter(v2);
  sub_20C36CDC4();

  return sub_20C36D354();
}

unint64_t _s13FitnessForYou24PlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C36D0E4();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20C345B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EBC0;
  if (!qword_27C79EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EBC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceholderReferenceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceholderReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C345CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CE0;
  if (!qword_2810E8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CE0);
  }

  return result;
}

uint64_t ForYouItemContext.identifier.getter()
{
  v1 = type metadata accessor for CanvasPlaceholder(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ForYouItemContext(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C345E60(v0, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20C347600(v6, v3, type metadata accessor for CanvasPlaceholder);
    v7 = *(v3 + 2);

    sub_20C3288D4(v3, type metadata accessor for CanvasPlaceholder);
  }

  else
  {
    v7 = *v6;
  }

  return v7;
}

uint64_t sub_20C345E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouItemContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C345EC8()
{
  if (*v0)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_20C345F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C345FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C347504(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C346020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C347504(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_20C34605C()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x5379616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_20C3460C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C347A90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C3460F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3475AC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C34612C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3475AC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C346188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C346214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C347558(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C346250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C347558(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBC8, "6N");
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v34 - v3;
  v35 = type metadata accessor for CanvasPlaceholder(0);
  MEMORY[0x28223BE20](v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBD0, &qword_20C3756C8);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v34 - v7;
  v8 = type metadata accessor for ForYouItemContext(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBD8, &qword_20C3756D0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C347504(v15, v16, v17);
  sub_20C36D374();
  sub_20C345E60(v41, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_20C347600(v10, v5, type metadata accessor for CanvasPlaceholder);
    v49 = 1;
    sub_20C347558(v21, v22, v23);
    v24 = v36;
    sub_20C36D1B4();
    sub_20C3476B0(&qword_2810E8F00, type metadata accessor for CanvasPlaceholder, &protocol conformance descriptor for CanvasPlaceholder);
    v25 = v38;
    sub_20C36D234();
    (*(v37 + 8))(v24, v25);
    sub_20C3288D4(v5, type metadata accessor for CanvasPlaceholder);
  }

  else
  {
    v41 = v12;
    v26 = v10[32];
    v48 = 0;
    sub_20C3475AC(EnumCaseMultiPayload, v19, v20);
    sub_20C36D1B4();
    v47 = 0;
    v27 = v40;
    v28 = v42;
    sub_20C36D1F4();

    if (v28)
    {

      (*(v39 + 8))(v43, v27);
      v12 = v41;
    }

    else
    {
      v46 = 1;
      sub_20C36D1C4();

      v12 = v41;
      v45 = v26;
      v44 = 2;
      sub_20C2FBA48(v29, v30, v31);
      v32 = v43;
      sub_20C36D234();
      (*(v39 + 8))(v32, v27);
    }
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t ForYouItemContext.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CanvasPlaceholder(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForYouItemContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C345E60(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20C347600(v9, v6, type metadata accessor for CanvasPlaceholder);
    MEMORY[0x20F2F7E60](1);
    CanvasPlaceholder.hash(into:)(a1);
    return sub_20C3288D4(v6, type metadata accessor for CanvasPlaceholder);
  }

  else
  {
    v11 = *(v9 + 3);
    v12 = v9[32];
    MEMORY[0x20F2F7E60](0);
    sub_20C36CDC4();

    sub_20C36D334();
    if (v11)
    {
      sub_20C36CDC4();
    }

    DisplayStyle.rawValue.getter(v12);
    sub_20C36CDC4();
  }
}

uint64_t ForYouItemContext.hashValue.getter()
{
  sub_20C36D314();
  ForYouItemContext.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t ForYouItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBE0, &qword_20C3756D8);
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  MEMORY[0x28223BE20](v3);
  v64 = &v55 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBE8, &qword_20C3756E0);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v55 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBF0, &unk_20C3756E8);
  v66 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v55 - v8;
  v10 = type metadata accessor for ForYouItemContext(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = a1[3];
  v68 = a1;
  v20 = __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20C347504(v20, v21, v22);
  v23 = v67;
  sub_20C36D364();
  if (!v23)
  {
    v57 = v18;
    v58 = v13;
    v56 = v16;
    v24 = v63;
    v25 = v64;
    v67 = v10;
    v26 = v65;
    v27 = v62;
    v28 = sub_20C36D194();
    v29 = (2 * *(v28 + 16)) | 1;
    v69 = v28;
    v70 = v28 + 32;
    v71 = 0;
    v72 = v29;
    v30 = sub_20C32A508();
    v33 = v9;
    if (v30 == 2 || v71 != v72 >> 1)
    {
      v39 = sub_20C36D064();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
      *v41 = v67;
      sub_20C36D104();
      sub_20C36D054();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v66 + 8))(v33, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v30)
      {
        v74 = 1;
        sub_20C347558(v30, v31, v32);
        v34 = v25;
        sub_20C36D0F4();
        type metadata accessor for CanvasPlaceholder(0);
        sub_20C3476B0(&qword_27C79E768, type metadata accessor for CanvasPlaceholder, &protocol conformance descriptor for CanvasPlaceholder);
        v36 = v58;
        v35 = v59;
        sub_20C36D184();
        (*(v60 + 8))(v34, v35);
        (*(v66 + 8))(v9, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v37 = v36;
      }

      else
      {
        v74 = 0;
        sub_20C3475AC(v30, v31, v32);
        sub_20C36D0F4();
        v43 = v27;
        v74 = 0;
        v44 = sub_20C36D144();
        v45 = v66;
        v47 = v46;
        v64 = v44;
        v74 = 1;
        v48 = sub_20C36D114();
        v49 = v61;
        v59 = v48;
        v60 = v50;
        v73 = 2;
        sub_20C2FC0B0(v48, v50, v51);
        sub_20C36D184();
        (*(v49 + 8))(v7, v24);
        (*(v45 + 8))(v33, v43);
        swift_unknownObjectRelease();
        v52 = v74;
        v53 = v56;
        *v56 = v64;
        v53[1] = v47;
        v54 = v60;
        v53[2] = v59;
        v53[3] = v54;
        *(v53 + 32) = v52;
        swift_storeEnumTagMultiPayload();
        v37 = v53;
      }

      v38 = v57;
      sub_20C347600(v37, v57, type metadata accessor for ForYouItemContext);
      sub_20C347600(v38, v26, type metadata accessor for ForYouItemContext);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t sub_20C347098()
{
  sub_20C36D314();
  ForYouItemContext.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t sub_20C3470DC(uint64_t a1)
{
  sub_20C36D314();
  ForYouItemContext.hash(into:)(v2);
  return sub_20C36D354();
}

uint64_t _s13FitnessForYou0bC11ItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasPlaceholder(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForYouItemContext(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EC18, &unk_20C375B40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  v17 = &v40 + *(v14 + 56) - v15;
  sub_20C345E60(a1, &v40 - v15);
  sub_20C345E60(a2, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C345E60(v16, v12);
    v20 = *v12;
    v19 = *(v12 + 1);
    v22 = *(v12 + 2);
    v21 = *(v12 + 3);
    v23 = v12[32];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

LABEL_7:
      sub_20C347BBC(v16);
LABEL_26:
      v18 = 0;
      return v18 & 1;
    }

    v24 = *v17;
    v25 = *(v17 + 1);
    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    v28 = v17[32];
    if (v20 == v24 && v19 == v25)
    {
    }

    else
    {
      v30 = sub_20C36D264();

      if ((v30 & 1) == 0)
      {

LABEL_24:

        goto LABEL_25;
      }
    }

    if (v21)
    {
      if (!v26)
      {
        goto LABEL_24;
      }

      if (v22 == v27 && v21 == v26)
      {
      }

      else
      {
        v32 = sub_20C36D264();

        if ((v32 & 1) == 0)
        {
LABEL_25:
          sub_20C3288D4(v16, type metadata accessor for ForYouItemContext);
          goto LABEL_26;
        }
      }
    }

    else if (v26)
    {
      goto LABEL_24;
    }

    v34 = DisplayStyle.rawValue.getter(v23);
    v36 = v35;
    if (v34 == DisplayStyle.rawValue.getter(v28) && v36 == v37)
    {
    }

    else
    {
      v39 = sub_20C36D264();

      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_20C3288D4(v16, type metadata accessor for ForYouItemContext);
    v18 = 1;
    return v18 & 1;
  }

  sub_20C345E60(v16, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C3288D4(v10, type metadata accessor for CanvasPlaceholder);
    goto LABEL_7;
  }

  sub_20C347600(v17, v6, type metadata accessor for CanvasPlaceholder);
  v18 = _s13FitnessForYou17CanvasPlaceholderV2eeoiySbAC_ACtFZ_0(v10, v6);
  sub_20C3288D4(v6, type metadata accessor for CanvasPlaceholder);
  sub_20C3288D4(v10, type metadata accessor for CanvasPlaceholder);
  sub_20C3288D4(v16, type metadata accessor for ForYouItemContext);
  return v18 & 1;
}

unint64_t sub_20C347504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E94E8;
  if (!qword_2810E94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E94E8);
  }

  return result;
}

unint64_t sub_20C347558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E94D0;
  if (!qword_2810E94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E94D0);
  }

  return result;
}

unint64_t sub_20C3475AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9500;
  if (!qword_2810E9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9500);
  }

  return result;
}

uint64_t sub_20C347600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C3476B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20C34777C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC00;
  if (!qword_27C79EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC00);
  }

  return result;
}

unint64_t sub_20C3477D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC08;
  if (!qword_27C79EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC08);
  }

  return result;
}

unint64_t sub_20C34782C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC10;
  if (!qword_27C79EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC10);
  }

  return result;
}

unint64_t sub_20C347884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E94F0;
  if (!qword_2810E94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E94F0);
  }

  return result;
}

unint64_t sub_20C3478DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E94F8;
  if (!qword_2810E94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E94F8);
  }

  return result;
}

unint64_t sub_20C347934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E94C0;
  if (!qword_2810E94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E94C0);
  }

  return result;
}

unint64_t sub_20C34798C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E94C8;
  if (!qword_2810E94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E94C8);
  }

  return result;
}

unint64_t sub_20C3479E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E94D8;
  if (!qword_2810E94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E94D8);
  }

  return result;
}

unint64_t sub_20C347A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E94E0;
  if (!qword_2810E94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E94E0);
  }

  return result;
}

uint64_t sub_20C347A90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377A30 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t sub_20C347BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EC18, &unk_20C375B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C347C24()
{
  v1 = 0x64656863746566;
  if (*v0 != 1)
  {
    v1 = 0x676E696863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_20C347C78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C3484C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C347CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C348298(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C347CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C348298(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C347D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C348340(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C347D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C348340(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C347D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3482EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C347DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3482EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C347E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C348394(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C347E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C348394(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t AwardLoadState.encode(to:)(void *a1, uint64_t a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EC20, &qword_20C375B50);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EC28, &qword_20C375B58);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EC30, &qword_20C375B60);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EC38, &qword_20C375B68);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C348298(v15, v16, v17);
  v18 = v32;
  v19 = sub_20C36D374();
  if (!v18)
  {
    v34 = 0;
    sub_20C348394(v19, v20, v21);
    sub_20C36D1B4();
    (*(v26 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v18 == 1)
  {
    v36 = 2;
    sub_20C3482EC(v19, v20, v21);
    v22 = v27;
    sub_20C36D1B4();
    (*(v28 + 8))(v22, v29);
    return (*(v12 + 8))(v14, v11);
  }

  v35 = 1;
  sub_20C348340(v19, v20, v21);
  sub_20C36D1B4();
  v33 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
  sub_20C302DB8(&qword_2810E8BF8, sub_20C3028E4, MEMORY[0x277D83948]);
  v24 = v31;
  sub_20C36D234();
  (*(v30 + 8))(v7, v24);
  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_20C348298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC40;
  if (!qword_27C79EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC40);
  }

  return result;
}

unint64_t sub_20C3482EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC48;
  if (!qword_27C79EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC48);
  }

  return result;
}

unint64_t sub_20C348340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC50;
  if (!qword_27C79EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC50);
  }

  return result;
}

unint64_t sub_20C348394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC58;
  if (!qword_27C79EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC58);
  }

  return result;
}

uint64_t sub_20C348400@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C3485DC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static AwardLoadState.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_20C332634(a1, a2);
}

uint64_t sub_20C348484(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_20C332634(v2, v3);
}

uint64_t sub_20C3484C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t sub_20C3485DC(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ECB0, &qword_20C375FF8);
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v35 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ECB8, &qword_20C376000);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ECC0, &qword_20C376008);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ECC8, &unk_20C376010);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = a1[3];
  v44 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_20C348298(v13, v14, v15);
  v16 = v43;
  sub_20C36D364();
  if (v16)
  {
    goto LABEL_11;
  }

  v35 = v5;
  v36 = 0;
  v18 = v40;
  v17 = v41;
  v19 = v42;
  v43 = v9;
  v20 = sub_20C36D194();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_20C32A510();
  if (v22 == 3 || v47 != v48 >> 1)
  {
    v28 = sub_20C36D064();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
    *v30 = &type metadata for AwardLoadState;
    v13 = v11;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
LABEL_9:
    v26 = v43;
    goto LABEL_10;
  }

  if (!v22)
  {
    LOBYTE(v49) = 0;
    sub_20C348394(v22, v23, v24);
    v13 = v11;
    v32 = v36;
    sub_20C36D0F4();
    if (!v32)
    {
      (*(v18 + 8))(v7, v35);
      (*(v43 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v22 == 1)
  {
    LOBYTE(v49) = 1;
    sub_20C348340(v22, v23, v24);
    v13 = v11;
    v25 = v36;
    sub_20C36D0F4();
    v26 = v43;
    if (!v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
      sub_20C302DB8(&qword_27C79DBF0, sub_20C302E30, MEMORY[0x277D83978]);
      v27 = v37;
      sub_20C36D184();
      (*(v39 + 8))(v4, v27);
      (*(v26 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = v49;
      goto LABEL_11;
    }

LABEL_10:
    (*(v26 + 8))(v11, v8);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  LOBYTE(v49) = 2;
  sub_20C3482EC(v22, v23, v24);
  v33 = v36;
  sub_20C36D0F4();
  v34 = v43;
  if (v33)
  {
    v13 = v43 + 8;
    (*(v43 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v19 + 8))(v17, v38);
    (*(v34 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v13 = 1;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v13;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou14AwardLoadStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20C348C20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_20C348C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_20C348CD0(void *result, int a2)
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

unint64_t sub_20C348D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC60;
  if (!qword_27C79EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC60);
  }

  return result;
}

unint64_t sub_20C348D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC68;
  if (!qword_27C79EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC68);
  }

  return result;
}

unint64_t sub_20C348DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC70;
  if (!qword_27C79EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC70);
  }

  return result;
}

unint64_t sub_20C348E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC78;
  if (!qword_27C79EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC78);
  }

  return result;
}

unint64_t sub_20C348EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC80;
  if (!qword_27C79EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC80);
  }

  return result;
}

unint64_t sub_20C348EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC88;
  if (!qword_27C79EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC88);
  }

  return result;
}

unint64_t sub_20C348F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC90;
  if (!qword_27C79EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC90);
  }

  return result;
}

unint64_t sub_20C348FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EC98;
  if (!qword_27C79EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EC98);
  }

  return result;
}

unint64_t sub_20C349004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79ECA0;
  if (!qword_27C79ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79ECA0);
  }

  return result;
}

unint64_t sub_20C34905C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79ECA8;
  if (!qword_27C79ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79ECA8);
  }

  return result;
}

__n128 ForYouToastFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t ForYouToastFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ECD0, &unk_20C376020);
  v92 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v71 - v14;
  LOBYTE(a4) = *a4;
  v17 = *v4;
  v16 = v4[1];
  v18 = v4[3];
  v89 = v4[2];
  v90 = v16;
  v91 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
  v22 = v19[16];
  v88 = v19[20];
  v23 = v19[24];
  if (a4)
  {
    v24 = v19;
    v79 = v10;
    v25 = &v13[v23];
    v95[0] = 1;
    v85 = sub_20C3497F8(v19, v20, v21);
    sub_20C36D024();
    sub_20C36CF04();
    v26 = *MEMORY[0x277D043F0];
    v27 = sub_20C36CCD4();
    v28 = *(v27 - 8);
    v29 = *(v28 + 104);
    v84 = v26;
    v82 = v29;
    v83 = v27;
    v81 = v28 + 104;
    (v29)(&v13[v22], v26);
    v30 = swift_allocObject();
    v31 = v17;
    v32 = v89;
    v33 = v90;
    v30[2] = v17;
    v30[3] = v33;
    v34 = v91;
    v30[4] = v32;
    v30[5] = v34;
    *v25 = &unk_20C376038;
    *(v25 + 1) = v30;
    v35 = *MEMORY[0x277D043E8];
    v36 = sub_20C36CCC4();
    v37 = *(v36 - 8);
    v38 = *(v37 + 104);
    v80 = v35;
    v77 = v38;
    v78 = v36;
    v76 = v37 + 104;
    (v38)(v88 + v13, v35);
    v39 = v92;
    v40 = *(v92 + 104);
    v75 = *MEMORY[0x277D043B0];
    v87 = v7;
    v74 = v40;
    v40(v13);
    v88 = a3;
    v41 = *a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_20C349FA8(0, *(v41 + 2) + 1, 1, v41, &qword_27C79ED10, &qword_20C376190, &qword_27C79ECD0, &unk_20C376020);
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    v45 = v79;
    if (v44 >= v43 >> 1)
    {
      v41 = sub_20C349FA8((v43 > 1), v44 + 1, 1, v41, &qword_27C79ED10, &qword_20C376190, &qword_27C79ECD0, &unk_20C376020);
    }

    *(v41 + 2) = v44 + 1;
    v46 = *(v39 + 32);
    v72 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v71 = *(v39 + 72);
    v47 = v87;
    v92 = v39 + 32;
    v73 = v46;
    v46(&v41[v72 + v71 * v44], v13, v87);
    v48 = v24[16];
    v49 = v24[20];
    v50 = &v45[v24[24]];
    v94 = 0;
    sub_20C36D024();
    sub_20C36CF04();
    v82(&v45[v48], v84, v83);
    v51 = swift_allocObject();
    v53 = v90;
    v52 = v91;
    v51[2] = v86;
    v51[3] = v53;
    v51[4] = v89;
    v51[5] = v52;
    *v50 = &unk_20C376048;
    *(v50 + 1) = v51;
    v77(&v45[v49], v80, v78);
    v74(v45, v75, v47);
    v54 = *(v41 + 2);
    v55 = *(v41 + 3);

    if (v54 >= v55 >> 1)
    {
      v41 = sub_20C349FA8((v55 > 1), v54 + 1, 1, v41, &qword_27C79ED10, &qword_20C376190, &qword_27C79ECD0, &unk_20C376020);
    }

    *(v41 + 2) = v54 + 1;
    result = v73(&v41[v72 + v54 * v71], v45, v47);
    v57 = v88;
  }

  else
  {
    v58 = a3;
    v59 = &v15[v23];
    v93 = 1;
    sub_20C3497F8(v19, v20, v21);
    sub_20C36D024();
    sub_20C36CF04();
    v60 = *MEMORY[0x277D043F0];
    v61 = sub_20C36CCD4();
    (*(*(v61 - 8) + 104))(&v15[v22], v60, v61);
    v62 = swift_allocObject();
    v63 = v89;
    v64 = v90;
    v62[2] = v17;
    v62[3] = v64;
    v65 = v91;
    v62[4] = v63;
    v62[5] = v65;
    *v59 = &unk_20C376058;
    *(v59 + 1) = v62;
    v57 = v58;
    v66 = *MEMORY[0x277D043E8];
    v67 = sub_20C36CCC4();
    (*(*(v67 - 8) + 104))(v88 + v15, v66, v67);
    v68 = v92;
    (*(v92 + 104))(v15, *MEMORY[0x277D043B0], v7);
    v41 = *v58;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_20C349FA8(0, *(v41 + 2) + 1, 1, v41, &qword_27C79ED10, &qword_20C376190, &qword_27C79ECD0, &unk_20C376020);
    }

    v70 = *(v41 + 2);
    v69 = *(v41 + 3);
    if (v70 >= v69 >> 1)
    {
      v41 = sub_20C349FA8((v69 > 1), v70 + 1, 1, v41, &qword_27C79ED10, &qword_20C376190, &qword_27C79ECD0, &unk_20C376020);
    }

    *(v41 + 2) = v70 + 1;
    result = (*(v68 + 32))(&v41[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v70], v15, v7);
  }

  *v57 = v41;
  return result;
}

unint64_t sub_20C3497F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79ECD8;
  if (!qword_27C79ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79ECD8);
  }

  return result;
}

uint64_t sub_20C34984C(uint64_t a1, int *a2)
{
  v2[2] = sub_20C36CEF4();
  v2[3] = sub_20C36CEE4();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20C320518;

  return v6(1);
}

uint64_t sub_20C349960(uint64_t a1, int *a2)
{
  v2[2] = sub_20C36CEF4();
  v2[3] = sub_20C36CEE4();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20C320518;

  return v6(0);
}

uint64_t sub_20C349A74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C3295B8;

  return sub_20C349960(a1, v4);
}

uint64_t sub_20C349B30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_20C36CEF4();
  v4[3] = sub_20C36CEE4();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_20C3201EC;

  return v8();
}

uint64_t sub_20C349C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C329164;

  return sub_20C349B30(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t sub_20C349D44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C3295B8;

  return sub_20C34984C(a1, v4);
}

unint64_t sub_20C349E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79ECE0;
  if (!qword_27C79ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79ECE0);
  }

  return result;
}

unint64_t sub_20C349E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79ECE8;
  if (!qword_27C79ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79ECE8);
  }

  return result;
}

unint64_t sub_20C349EB4()
{
  result = qword_27C79ECF0;
  if (!qword_27C79ECF0)
  {
    type metadata accessor for ForYouToastState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79ECF0);
  }

  return result;
}

unint64_t sub_20C349F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79ECF8;
  if (!qword_27C79ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79ECF8);
  }

  return result;
}

void *sub_20C349FA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t ForYouFeature.environment.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x160uLL);
  memcpy(a1, v1, 0x160uLL);
  return sub_20C34A1F4(__dst, v4);
}

void sub_20C34A250(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v68 = a4;
  v69 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED08, &qword_20C376188);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v70 = &v63 - v9;
  memcpy(v76, v4, 0x160uLL);
  v10 = type metadata accessor for ForYouState(0);
  v11 = *(a2 + v10[14]);
  v12 = *(a2 + v10[18]);
  v72 = *a1;
  v73 = v12;
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v13 = sub_20C36C3D4();
  v71 = __swift_project_value_buffer(v13, qword_2810ED6B8);
  v14 = sub_20C36C3B4();
  v15 = sub_20C36CFD4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v64 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v67 = a2;
    v19 = v18;
    v75[0] = v18;
    *v17 = 136315650;
    v74 = v11;
    v20 = sub_20C36CD94();
    v65 = a1;
    v22 = sub_20C359E04(v20, v21, v75);
    v66 = v7;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v74 = v73;
    v24 = sub_20C36CD94();
    v26 = sub_20C359E04(v24, v25, v75);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    v74 = v72;
    v27 = sub_20C36CD94();
    v29 = sub_20C359E04(v27, v28, v75);
    a1 = v65;

    *(v17 + 24) = v29;
    v7 = v66;
    _os_log_impl(&dword_20C2F6000, v14, v15, "For You State — NetworkConditions: %s, SubscriptionState: %s, BrowsingIdentity: %s", v17, 0x20u);
    swift_arrayDestroy();
    v30 = v19;
    a2 = v67;
    MEMORY[0x20F2F83A0](v30, -1, -1);
    v31 = v17;
    v10 = v64;
    MEMORY[0x20F2F83A0](v31, -1, -1);
  }

  if (v11 == 1)
  {
    v32 = sub_20C36C3B4();
    v33 = sub_20C36CFD4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Current Network Conditions are unsupported for fetching section descriptors.";
LABEL_11:
      _os_log_impl(&dword_20C2F6000, v32, v33, v35, v34, 2u);
      MEMORY[0x20F2F83A0](v34, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v73 == 2)
  {
    v32 = sub_20C36C3B4();
    v33 = sub_20C36CFD4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Current Subscription State is unsupported for fetching section descriptors.";
      goto LABEL_11;
    }

LABEL_12:

    return;
  }

  if ((v72 & 1) == 0 && (*(a2 + v10[19]) & 1) == 0)
  {
    v54 = a2 + v10[11];
    v55 = *v54;
    v56 = *(v54 + 8);
    v67 = a2;
    v57 = *(v54 + 16);
    v59 = *(a1 + 1);
    v58 = *(a1 + 2);
    v60 = *(a1 + 3);
    v61 = *(v54 + 24);
    v62 = a1[32];
    sub_20C3047D4(v55, v56, v57, v61);
    sub_20C3048A0(v59, v58, v60, v62);
    *(a1 + 1) = v55;
    *(a1 + 2) = v56;
    *(a1 + 3) = v57;
    a1[32] = v61;
    memcpy(v75, v76, sizeof(v75));
    sub_20C34A8FC(0, 0, 0, 2, v67);
    return;
  }

  v36 = a2 + v10[11];
  v37 = *(v36 + 16);
  if (*(v36 + 24))
  {
    if (*(v36 + 24) != 1 && v37 | *v36 | *(v36 + 8))
    {
      return;
    }

    v38 = *(a2 + v10[6]);
    goto LABEL_21;
  }

  v38 = *(a2 + v10[6]);
  if ((v37 & 0xFE) == 0)
  {
LABEL_21:
    memcpy(v75, v76, sizeof(v75));
    sub_20C34ABD0(a1, a2);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
  v40 = v39[16];
  v41 = v39[20];
  v42 = v70;
  v43 = &v70[v39[24]];
  LOBYTE(v75[0]) = 2;
  sub_20C350A54(v39, v44, v45);
  sub_20C36D024();
  sub_20C36CF04();
  v46 = *MEMORY[0x277D04400];
  v47 = sub_20C36CCD4();
  (*(*(v47 - 8) + 104))(&v42[v40], v46, v47);
  v48 = *MEMORY[0x277D043E0];
  v49 = sub_20C36CCC4();
  (*(*(v49 - 8) + 104))(&v42[v41], v48, v49);
  v50 = swift_allocObject();
  memcpy(v50 + 16, v76, 0x160uLL);
  v50[368] = v68;
  v50[369] = v38;
  *v43 = &unk_20C3764D0;
  *(v43 + 1) = v50;
  (*(v8 + 104))(v42, *MEMORY[0x277D043B0], v7);
  v51 = *v69;
  sub_20C352354(v76, v75);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_20C349F84(0, v51[2] + 1, 1, v51);
  }

  v53 = v51[2];
  v52 = v51[3];
  if (v53 >= v52 >> 1)
  {
    v51 = sub_20C349F84((v52 > 1), v53 + 1, 1, v51);
  }

  v51[2] = v53 + 1;
  (*(v8 + 32))(v51 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v53, v70, v7);
  *v69 = v51;
}

void sub_20C34A8FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = a5 + *(type metadata accessor for ForYouState(0) + 44);
  v10 = *v9;
  v29 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v13 = sub_20C36C3D4();
  __swift_project_value_buffer(v13, qword_2810ED6B8);
  sub_20C3047D4(v10, v29, v11, v12);
  sub_20C3047D4(a1, a2, a3, a4);
  v14 = sub_20C36C3B4();
  v15 = sub_20C36CFD4();
  sub_20C3048B4(a1, a2, a3, a4);
  v27 = v15;
  v16 = v15;
  v17 = v14;
  if (os_log_type_enabled(v14, v16))
  {
    v28 = v11;
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v18 = 136315394;
    v19 = sub_20C36CD94();
    v21 = sub_20C359E04(v19, v20, &v30);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_20C3047D4(a1, a2, a3, a4);
    v22 = sub_20C36CD94();
    v24 = sub_20C359E04(v22, v23, &v30);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_20C2F6000, v17, v27, "Transitioning from %s to %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F83A0](v26, -1, -1);
    v25 = v18;
    v11 = v28;
    MEMORY[0x20F2F83A0](v25, -1, -1);
  }

  else
  {

    sub_20C3048B4(v10, v29, v11, v12);
  }

  sub_20C3047D4(a1, a2, a3, a4);
  sub_20C3048B4(v10, v29, v11, v12);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

uint64_t sub_20C34ABD0(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v4 = sub_20C36C104();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ForYouState(0);
  v6 = a2 + *(v56 + 44);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(v6 + 24);
  v14 = *(a1 + 32);
  sub_20C3047D4(*v6, v8, v9, v13);
  sub_20C3048A0(v11, v10, v12, v14);
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v13;
  memcpy(v60, v55, sizeof(v60));
  v15 = v57;
  sub_20C34A8FC(1, 0, 0, 2, v57);
  v16 = v54;
  sub_20C36C0F4();
  sub_20C36C0E4();
  (*(v58 + 8))(v16, v59);
  sub_20C36CF54();
  v17 = v56;
  v18 = v15 + *(v56 + 48);
  *(v18 + 16) = v19;
  *(v18 + 24) = 0;
  v56 = *(v17 + 20);
  v20 = *(v15 + v56);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v24 = 1 << *(*(v15 + v56) + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v59 = *(v15 + v56);

  v28 = 0;
  v29 = MEMORY[0x277D84F98];
  v58 = v22;
  while (v26)
  {
    v33 = v28;
LABEL_11:
    v34 = __clz(__rbit64(v26)) | (v33 << 6);
    v35 = (*(v59 + 48) + 16 * v34);
    v37 = *v35;
    v36 = v35[1];
    v38 = *(*(v59 + 56) + 8 * v34);
    swift_bridgeObjectRetain_n();
    sub_20C336328(v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v29;
    v40 = sub_20C35A4F4(v37, v36);
    v42 = v29[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_22;
    }

    v46 = v41;
    if (v29[3] >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = v40;
        sub_20C35A8CC();
        v40 = v51;
      }
    }

    else
    {
      sub_20C35A624(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_20C35A4F4(v37, v36);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_24;
      }
    }

    v26 &= v26 - 1;
    if (v46)
    {
      v30 = v40;

      v29 = v60[0];
      v31 = *(v60[0] + 56);
      v32 = *(v31 + 8 * v30);
      *(v31 + 8 * v30) = 1;
      sub_20C336338(v32);

      sub_20C336338(v38);
    }

    else
    {
      v29 = v60[0];
      *(v60[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = (v29[6] + 16 * v40);
      *v48 = v37;
      v48[1] = v36;
      *(v29[7] + 8 * v40) = 1;

      sub_20C336338(v38);
      v49 = v29[2];
      v44 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v44)
      {
        goto LABEL_23;
      }

      v29[2] = v50;
    }

    v28 = v33;
    v22 = v58;
  }

  while (1)
  {
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v33 >= v27)
    {

      *(v57 + v56) = v29;
      return result;
    }

    v26 = *(v22 + 8 * v33);
    ++v28;
    if (v26)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_20C36D284();
  __break(1u);
  return result;
}

uint64_t sub_20C34AF9C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 107) = a4;
  *(v4 + 106) = a3;
  *(v4 + 664) = a1;
  v5 = *(a2 + 288);
  v6 = *(a2 + 304);
  *(v4 + 672) = *a2;
  *(v4 + 688) = v5;
  v7 = *(a2 + 320);
  *(v4 + 704) = v6;
  *(v4 + 720) = v7;
  v10 = (*(a2 + 336) + **(a2 + 336));
  v8 = swift_task_alloc();
  *(v4 + 736) = v8;
  *v8 = v4;
  v8[1] = sub_20C34B0A4;

  return v10();
}

uint64_t sub_20C34B0A4(char a1)
{
  v4 = *v2;
  *(*v2 + 744) = v1;

  if (v1)
  {
    v5 = sub_20C34D6A8;
  }

  else
  {
    *(v4 + 108) = a1 & 1;
    v5 = sub_20C34B1D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20C34B1D0()
{
  v25 = v0;
  if (*(v0 + 108) != 1)
  {
    *(v0 + 304) = 2;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 8;
    v16 = swift_task_alloc();
    *(v0 + 872) = v16;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *(v0 + 880) = v14;
    *v16 = v0;
    v16[1] = sub_20C34CBE0;
    v17 = v0 + 304;
LABEL_14:

    return MEMORY[0x282159B08](v17, v14);
  }

  v1 = *(v0 + 744);
  sub_20C36CF34();
  if (v1)
  {
    *(v0 + 904) = v1;
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v2 = sub_20C36C3D4();
    __swift_project_value_buffer(v2, qword_2810ED6B8);
    v3 = v1;
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_20C36D2C4();
      v10 = sub_20C359E04(v8, v9, &v24);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Failed to fetched descriptors with error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x20F2F83A0](v7, -1, -1);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 640) = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D0, &qword_20C372720);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    if (!*(v0 + 105))
    {
      *(v0 + 112) = xmmword_20C372290;
      v12 = v0 + 112;
      *(v0 + 136) = 0;
      *(v0 + 144) = 0;
      *(v0 + 128) = 2;
      *(v0 + 152) = 1;
      v13 = swift_task_alloc();
      *(v0 + 936) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
      *(v0 + 944) = v14;
      *v13 = v0;
      v15 = sub_20C34D2DC;
      goto LABEL_13;
    }

    if (*(v0 + 105) == 1)
    {
      *(v0 + 208) = 0;
      v12 = v0 + 208;
      *(v0 + 216) = 0;
      *(v0 + 224) = 2;
      *(v0 + 232) = 0;
      *(v0 + 240) = 0;
      *(v0 + 248) = 1;
      v13 = swift_task_alloc();
      *(v0 + 912) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
      *(v0 + 920) = v14;
      *v13 = v0;
      v15 = sub_20C34CFF8;
    }

    else
    {
LABEL_12:

      swift_getErrorValue();
      v18 = sub_20C36D2C4();
      *(v0 + 960) = v19;
      *(v0 + 64) = v18;
      v12 = v0 + 64;
      *(v0 + 72) = v19;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = 0;
      *(v0 + 104) = 3;
      v13 = swift_task_alloc();
      *(v0 + 968) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
      *v13 = v0;
      v15 = sub_20C34D52C;
    }

LABEL_13:
    v13[1] = v15;
    v17 = v12;
    goto LABEL_14;
  }

  v23 = (*(v0 + 672) + **(v0 + 672));
  v20 = swift_task_alloc();
  *(v0 + 752) = v20;
  *v20 = v0;
  v20[1] = sub_20C34B704;
  v21 = *(v0 + 106);

  return v23(v0 + 16, v21);
}

uint64_t sub_20C34B704()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_20C34DA58;
  }

  else
  {
    v2 = sub_20C34B818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C34B818()
{
  v28 = v0;
  v1 = *(v0 + 24);
  *(v0 + 768) = *(v0 + 16);
  *(v0 + 776) = v1;
  v2 = *(v0 + 40);
  *(v0 + 784) = *(v0 + 32);
  *(v0 + 792) = v2;
  *(v0 + 800) = *(v0 + 48);
  if (*(v1 + 16))
  {
    *(v0 + 400) = 3;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 8;

    v3 = swift_task_alloc();
    *(v0 + 816) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *(v0 + 824) = v4;
    *v3 = v0;
    v3[1] = sub_20C34BCD0;
    v5 = v0 + 400;
    goto LABEL_13;
  }

  sub_20C32942C(v6, v7, v8);
  v9 = swift_allocError();
  *v10 = 2;
  swift_willThrow();
  *(v0 + 904) = v9;
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v11 = sub_20C36C3D4();
  __swift_project_value_buffer(v11, qword_2810ED6B8);
  v12 = v9;
  v13 = sub_20C36C3B4();
  v14 = sub_20C36CFD4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_20C36D2C4();
    v19 = sub_20C359E04(v17, v18, &v27);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_20C2F6000, v13, v14, "Failed to fetched descriptors with error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F2F83A0](v16, -1, -1);
    MEMORY[0x20F2F83A0](v15, -1, -1);
  }

  *(v0 + 640) = v9;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D0, &qword_20C372720);
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  if (!*(v0 + 105))
  {
    *(v0 + 112) = xmmword_20C372290;
    v21 = v0 + 112;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    *(v0 + 128) = 2;
    *(v0 + 152) = 1;
    v22 = swift_task_alloc();
    *(v0 + 936) = v22;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *(v0 + 944) = v4;
    *v22 = v0;
    v23 = sub_20C34D2DC;
    goto LABEL_12;
  }

  if (*(v0 + 105) == 1)
  {
    *(v0 + 208) = 0;
    v21 = v0 + 208;
    *(v0 + 216) = 0;
    *(v0 + 224) = 2;
    *(v0 + 232) = 0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 1;
    v22 = swift_task_alloc();
    *(v0 + 912) = v22;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *(v0 + 920) = v4;
    *v22 = v0;
    v23 = sub_20C34CFF8;
  }

  else
  {
LABEL_11:

    swift_getErrorValue();
    v24 = sub_20C36D2C4();
    *(v0 + 960) = v25;
    *(v0 + 64) = v24;
    v21 = v0 + 64;
    *(v0 + 72) = v25;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 3;
    v22 = swift_task_alloc();
    *(v0 + 968) = v22;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v22 = v0;
    v23 = sub_20C34D52C;
  }

LABEL_12:
  v22[1] = v23;
  v5 = v21;
LABEL_13:

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_20C34BCD0()
{
  v1 = *v0;
  v2 = *v0;

  *(v1 + 448) = 1;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 0u;
  *(v1 + 488) = 8;
  v3 = swift_task_alloc();
  *(v1 + 832) = v3;
  *v3 = v2;
  v3[1] = sub_20C34BE4C;
  v4 = *(v1 + 824);

  return MEMORY[0x282159B08](v1 + 448, v4);
}

uint64_t sub_20C34BE4C()
{

  return MEMORY[0x2822009F8](sub_20C34BF48, 0, 0);
}

uint64_t sub_20C34BF48()
{
  v41 = v0;
  v1 = *(v0 + 760);
  sub_20C36CF34();
  if (v1)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    *(v0 + 904) = v1;
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v2 = sub_20C36C3D4();
    __swift_project_value_buffer(v2, qword_2810ED6B8);
    v3 = v1;
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v40[0] = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_20C36D2C4();
      v10 = sub_20C359E04(v8, v9, v40);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Failed to fetched descriptors with error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x20F2F83A0](v7, -1, -1);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 640) = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D0, &qword_20C372720);
    if (!swift_dynamicCast())
    {
      goto LABEL_10;
    }

    if (!*(v0 + 105))
    {
      *(v0 + 112) = xmmword_20C372290;
      v12 = v0 + 112;
      *(v0 + 136) = 0;
      *(v0 + 144) = 0;
      *(v0 + 128) = 2;
      *(v0 + 152) = 1;
      v13 = swift_task_alloc();
      *(v0 + 936) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
      *(v0 + 944) = v14;
      *v13 = v0;
      v15 = sub_20C34D2DC;
      goto LABEL_11;
    }

    if (*(v0 + 105) == 1)
    {
      *(v0 + 208) = 0;
      v12 = v0 + 208;
      *(v0 + 216) = 0;
      *(v0 + 224) = 2;
      *(v0 + 232) = 0;
      *(v0 + 240) = 0;
      *(v0 + 248) = 1;
      v13 = swift_task_alloc();
      *(v0 + 912) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
      *(v0 + 920) = v14;
      *v13 = v0;
      v15 = sub_20C34CFF8;
    }

    else
    {
LABEL_10:

      swift_getErrorValue();
      v16 = sub_20C36D2C4();
      *(v0 + 960) = v17;
      *(v0 + 64) = v16;
      v12 = v0 + 64;
      *(v0 + 72) = v17;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = 0;
      *(v0 + 104) = 3;
      v13 = swift_task_alloc();
      *(v0 + 968) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
      *v13 = v0;
      v15 = sub_20C34D52C;
    }

LABEL_11:
    v13[1] = v15;
    v18 = v12;
    goto LABEL_19;
  }

  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v19 = sub_20C36C3D4();
  __swift_project_value_buffer(v19, qword_2810ED6B8);

  v20 = sub_20C36C3B4();
  v21 = sub_20C36CFD4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 776);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136315138;
    v25 = MEMORY[0x20F2F7970](v22, &type metadata for CanvasSectionDescriptor);
    v27 = sub_20C359E04(v25, v26, v40);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_20C2F6000, v20, v21, "Fetched descriptors: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x20F2F83A0](v24, -1, -1);
    MEMORY[0x20F2F83A0](v23, -1, -1);
  }

  v28 = sub_20C36C3B4();
  v29 = sub_20C36CFD4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 768);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40[0] = v32;
    *v31 = 136315138;
    v33 = MEMORY[0x20F2F7970](v30, &type metadata for AwardCanvasSectionDescriptor);
    v35 = sub_20C359E04(v33, v34, v40);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_20C2F6000, v28, v29, "Fetched award descriptors: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x20F2F83A0](v32, -1, -1);
    MEMORY[0x20F2F83A0](v31, -1, -1);
  }

  v36 = *(v0 + 792);
  v37 = *(v0 + 776);
  *(v0 + 496) = *(v0 + 784);
  *(v0 + 504) = v36;
  *(v0 + 512) = *(v0 + 800);
  *(v0 + 528) = v37;
  *(v0 + 536) = 5;

  v38 = swift_task_alloc();
  *(v0 + 840) = v38;
  *v38 = v0;
  v38[1] = sub_20C34C5C0;
  v14 = *(v0 + 824);
  v18 = v0 + 496;
LABEL_19:

  return MEMORY[0x282159B08](v18, v14);
}

uint64_t sub_20C34C5C0()
{
  v1 = *v0;
  v2 = *(*v0 + 768);
  v3 = *v0;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v1 + 544) = v2;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0u;
  *(v1 + 584) = 4;
  v4 = swift_task_alloc();
  *(v1 + 848) = v4;
  *v4 = v3;
  v4[1] = sub_20C34C79C;
  v5 = *(v1 + 824);

  return MEMORY[0x282159B08](v1 + 544, v5);
}

uint64_t sub_20C34C79C()
{
  v1 = *v0;
  v2 = *(*v0 + 107);
  v3 = *v0;

  if (v2 == 1)
  {
    v7 = (v1[90] + *v1[90]);
    v4 = swift_task_alloc();
    v1[107] = v4;
    *v4 = v3;
    v4[1] = sub_20C34C9F0;
  }

  else
  {
    v7 = (v1[88] + *v1[88]);
    v5 = swift_task_alloc();
    v1[108] = v5;
    *v5 = v3;
    v5[1] = sub_20C34CAE8;
  }

  return v7();
}

uint64_t sub_20C34C9F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20C34CAE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20C34CBE0()
{
  v1 = *v0;
  v2 = *(*v0 + 688);
  v3 = *v0;

  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 888) = v4;
  *v4 = v3;
  v4[1] = sub_20C34CD90;

  return v6();
}

uint64_t sub_20C34CD90(unsigned __int8 a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    a1 = 4;
  }

  *(v4 + 352) = a1;
  *(v4 + 360) = 0;
  *(v4 + 376) = 0;
  *(v4 + 384) = 0;
  *(v4 + 368) = 1;
  *(v4 + 392) = 1;
  v6 = swift_task_alloc();
  *(v4 + 896) = v6;
  *v6 = v5;
  v6[1] = sub_20C34CF00;
  v7 = *(v4 + 880);

  return MEMORY[0x282159B08](v4 + 352, v7);
}

uint64_t sub_20C34CF00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20C34CFF8()
{
  v1 = *v0;
  v2 = *v0;

  *(v1 + 256) = 5;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 8;
  v3 = swift_task_alloc();
  *(v1 + 928) = v3;
  *v3 = v2;
  v3[1] = sub_20C34D174;
  v4 = *(v1 + 920);

  return MEMORY[0x282159B08](v1 + 256, v4);
}

uint64_t sub_20C34D174()
{

  return MEMORY[0x2822009F8](sub_20C34D270, 0, 0);
}

uint64_t sub_20C34D270()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C34D2DC()
{
  v1 = *v0;
  v6 = *v0;

  *(v1 + 160) = 5;
  v2 = v1 + 160;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 8;
  v3 = swift_task_alloc();
  *(v2 + 792) = v3;
  *v3 = v6;
  v3[1] = sub_20C34D430;
  v4 = *(v2 + 784);

  return MEMORY[0x282159B08](v2, v4);
}

uint64_t sub_20C34D430()
{

  return MEMORY[0x2822009F8](sub_20C35B18C, 0, 0);
}

uint64_t sub_20C34D52C()
{

  return MEMORY[0x2822009F8](sub_20C34D644, 0, 0);
}

uint64_t sub_20C34D644()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C34D6A8()
{
  v20 = v0;
  v1 = *(v0 + 744);
  *(v0 + 904) = v1;
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_20C36C3D4();
  __swift_project_value_buffer(v2, qword_2810ED6B8);
  v3 = v1;
  v4 = sub_20C36C3B4();
  v5 = sub_20C36CFD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_20C36D2C4();
    v10 = sub_20C359E04(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20C2F6000, v4, v5, "Failed to fetched descriptors with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F83A0](v7, -1, -1);
    MEMORY[0x20F2F83A0](v6, -1, -1);
  }

  *(v0 + 640) = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D0, &qword_20C372720);
  if (!swift_dynamicCast())
  {
LABEL_9:

    swift_getErrorValue();
    v16 = sub_20C36D2C4();
    *(v0 + 960) = v17;
    *(v0 + 64) = v16;
    v12 = v0 + 64;
    *(v0 + 72) = v17;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 3;
    v13 = swift_task_alloc();
    *(v0 + 968) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v13 = v0;
    v15 = sub_20C34D52C;
    goto LABEL_10;
  }

  if (*(v0 + 105))
  {
    if (*(v0 + 105) == 1)
    {
      *(v0 + 208) = 0;
      v12 = v0 + 208;
      *(v0 + 216) = 0;
      *(v0 + 224) = 2;
      *(v0 + 232) = 0;
      *(v0 + 240) = 0;
      *(v0 + 248) = 1;
      v13 = swift_task_alloc();
      *(v0 + 912) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
      *(v0 + 920) = v14;
      *v13 = v0;
      v15 = sub_20C34CFF8;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(v0 + 112) = xmmword_20C372290;
  v12 = v0 + 112;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 128) = 2;
  *(v0 + 152) = 1;
  v13 = swift_task_alloc();
  *(v0 + 936) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
  *(v0 + 944) = v14;
  *v13 = v0;
  v15 = sub_20C34D2DC;
LABEL_10:
  v13[1] = v15;

  return MEMORY[0x282159B08](v12, v14);
}

uint64_t sub_20C34DA58()
{
  v20 = v0;
  v1 = *(v0 + 760);
  *(v0 + 904) = v1;
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_20C36C3D4();
  __swift_project_value_buffer(v2, qword_2810ED6B8);
  v3 = v1;
  v4 = sub_20C36C3B4();
  v5 = sub_20C36CFD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_20C36D2C4();
    v10 = sub_20C359E04(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20C2F6000, v4, v5, "Failed to fetched descriptors with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F83A0](v7, -1, -1);
    MEMORY[0x20F2F83A0](v6, -1, -1);
  }

  *(v0 + 640) = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D0, &qword_20C372720);
  if (!swift_dynamicCast())
  {
LABEL_9:

    swift_getErrorValue();
    v16 = sub_20C36D2C4();
    *(v0 + 960) = v17;
    *(v0 + 64) = v16;
    v12 = v0 + 64;
    *(v0 + 72) = v17;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 3;
    v13 = swift_task_alloc();
    *(v0 + 968) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v13 = v0;
    v15 = sub_20C34D52C;
    goto LABEL_10;
  }

  if (*(v0 + 105))
  {
    if (*(v0 + 105) == 1)
    {
      *(v0 + 208) = 0;
      v12 = v0 + 208;
      *(v0 + 216) = 0;
      *(v0 + 224) = 2;
      *(v0 + 232) = 0;
      *(v0 + 240) = 0;
      *(v0 + 248) = 1;
      v13 = swift_task_alloc();
      *(v0 + 912) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
      *(v0 + 920) = v14;
      *v13 = v0;
      v15 = sub_20C34CFF8;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(v0 + 112) = xmmword_20C372290;
  v12 = v0 + 112;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 128) = 2;
  *(v0 + 152) = 1;
  v13 = swift_task_alloc();
  *(v0 + 936) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
  *(v0 + 944) = v14;
  *v13 = v0;
  v15 = sub_20C34D2DC;
LABEL_10:
  v13[1] = v15;

  return MEMORY[0x282159B08](v12, v14);
}

void ForYouFeature.reduce(localState:sharedState:sideEffects:action:)(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v414 = a3;
  v415 = a1;
  v7 = *(a4 + 1);
  v412 = a2;
  *&v413 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA8, &qword_20C3754C0);
  MEMORY[0x28223BE20](v8 - 8);
  v405 = &v387 - v9;
  v10 = sub_20C36C104();
  v407 = *(v10 - 8);
  v408 = v10;
  MEMORY[0x28223BE20](v10);
  v406 = &v387 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED08, &qword_20C376188);
  v411 = *(v409 - 8);
  v12 = MEMORY[0x28223BE20](v409);
  v403 = &v387 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v394 = &v387 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v402 = &v387 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v393 = &v387 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v401 = &v387 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v400 = &v387 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v392 = &v387 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v399 = &v387 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v391 = &v387 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v398 = &v387 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v397 = &v387 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v396 = &v387 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v395 = &v387 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v404 = &v387 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v387 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v387 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v387 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v387 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v387 - v52;
  v410 = v5;
  v54 = memcpy(v419, v5, 0x160uLL);
  v57 = *a4;
  v58 = *(a4 + 1) | ((*(a4 + 5) | (a4[7] << 16)) << 32);
  v59 = *(a4 + 2);
  v60 = a4[40];
  v61 = v57 | (v58 << 8);
  if (v60 <= 3)
  {
    v408 = v53;
    if (v60 > 1)
    {
      if (v60 == 2)
      {
        memcpy(v417, v410, sizeof(v417));
        sub_20C34A250(v415, v412, v414, v57);
      }

      else
      {
        v121 = v412 + *(type metadata accessor for ForYouState(0) + 44);
        if (*(v121 + 24) || (*(v121 + 16) & 0xFELL) == 0)
        {
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
          v123 = v122[16];
          v124 = v122[20];
          v125 = &v48[v122[24]];
          LOBYTE(v417[0]) = 3;
          sub_20C350A54(v122, v126, v127);
          v128 = v413;

          sub_20C36D024();
          sub_20C36CF04();
          v129 = *MEMORY[0x277D04400];
          v130 = sub_20C36CCD4();
          (*(*(v130 - 8) + 104))(&v48[v123], v129, v130);
          v131 = *MEMORY[0x277D043E0];
          v132 = sub_20C36CCC4();
          (*(*(v132 - 8) + 104))(&v48[v124], v131, v132);
          v133 = swift_allocObject();
          *(v133 + 16) = v57;
          *(v133 + 23) = BYTE6(v58);
          *(v133 + 21) = WORD2(v58);
          *(v133 + 17) = v58;
          *(v133 + 24) = v128;
          *v125 = &unk_20C3762C0;
          *(v125 + 1) = v133;
          v134 = v411;
          v135 = v409;
          (*(v411 + 104))(v48, *MEMORY[0x277D043B0], v409);
          v136 = v414;
          v137 = *v414;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_20C349F84(0, v137[2] + 1, 1, v137);
          }

          v139 = v137[2];
          v138 = v137[3];
          if (v139 >= v138 >> 1)
          {
            v137 = sub_20C349F84((v138 > 1), v139 + 1, 1, v137);
          }

          v137[2] = v139 + 1;
          (*(v134 + 32))(v137 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v139, v48, v135);
          *v136 = v137;
        }

        else
        {
          v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
          v177 = v176[16];
          v178 = v176[20];
          v179 = &v45[v176[24]];
          LOBYTE(v417[0]) = 22;
          sub_20C350A54(v176, v180, v181);
          sub_20C36D024();
          sub_20C36CF04();
          v182 = *MEMORY[0x277D04400];
          v183 = sub_20C36CCD4();
          (*(*(v183 - 8) + 104))(&v45[v177], v182, v183);
          v184 = *MEMORY[0x277D043E0];
          v185 = sub_20C36CCC4();
          (*(*(v185 - 8) + 104))(&v45[v178], v184, v185);
          *v179 = &unk_20C3762B0;
          *(v179 + 1) = 0;
          v186 = v411;
          v187 = v409;
          (*(v411 + 104))(v45, *MEMORY[0x277D043B0], v409);
          v188 = v414;
          v189 = *v414;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v189 = sub_20C349F84(0, v189[2] + 1, 1, v189);
          }

          v191 = v189[2];
          v190 = v189[3];
          if (v191 >= v190 >> 1)
          {
            v189 = sub_20C349F84((v190 > 1), v191 + 1, 1, v189);
          }

          v189[2] = v191 + 1;
          (*(v186 + 32))(v189 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v191, v45, v187);
          *v188 = v189;
        }
      }

      return;
    }

    if (v60)
    {
      v414 = (v57 | (v58 << 8));
      v108 = v412 + *(type metadata accessor for ForYouState(0) + 44);
      v109 = *v108;
      v110 = *(v108 + 8);
      v111 = *(v108 + 16);
      v112 = v415;
      v113 = *(v415 + 2);
      v411 = *(v415 + 1);
      v114 = *(v415 + 3);
      v115 = *(v108 + 24);
      v116 = v415[32];
      sub_20C3047D4(v109, v110, v111, v115);
      sub_20C3048A0(v411, v113, v114, v116);
      *(v112 + 1) = v109;
      *(v112 + 2) = v110;
      *(v112 + 3) = v111;
      v112[32] = v115;
      memcpy(v417, v410, sizeof(v417));
      v117 = v59;
      v118 = v414;
      v119 = v413;
      v120 = 0;
      goto LABEL_53;
    }

    v418 = v57 & 1;
    if (qword_2810E8CA8 != -1)
    {
LABEL_150:
      swift_once();
    }

    v72 = sub_20C36C3D4();
    __swift_project_value_buffer(v72, qword_2810ED6B8);
    v73 = sub_20C36C3B4();
    v74 = sub_20C36CFD4();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v411;
    if (v75)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v417[0] = v78;
      *v77 = 136315138;
      v416 = v57 & 1;
      v79 = sub_20C36CD94();
      v81 = sub_20C359E04(v79, v80, v417);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_20C2F6000, v73, v74, "Browsing Identity Updated to state: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x20F2F83A0](v78, -1, -1);
      MEMORY[0x20F2F83A0](v77, -1, -1);

      v82 = v418;
      *v415 = v418;
      if (v82)
      {
        goto LABEL_56;
      }
    }

    else
    {

      *v415 = v57 & 1;
      if (v57)
      {
        goto LABEL_56;
      }
    }

    v160 = type metadata accessor for ForYouState(0);
    if ((*(v412 + *(v160 + 76)) & 1) == 0)
    {
      v207 = v160;
      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
      v209 = v208[16];
      v210 = v208[20];
      v211 = v408;
      v212 = &v408[v208[24]];
      LOBYTE(v417[0]) = 1;
      sub_20C350A54(v208, v213, v214);
      sub_20C36D024();
      sub_20C36CF04();
      v215 = *MEMORY[0x277D043F0];
      v216 = sub_20C36CCD4();
      (*(*(v216 - 8) + 104))(&v211[v209], v215, v216);
      v217 = *MEMORY[0x277D043E8];
      v218 = sub_20C36CCC4();
      (*(*(v218 - 8) + 104))(&v211[v210], v217, v218);
      *v212 = &unk_20C3762C8;
      *(v212 + 1) = 0;
      (*(v76 + 104))(v211, *MEMORY[0x277D043B0], v409);
      v219 = v414;
      v220 = *v414;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v220 = sub_20C349F84(0, v220[2] + 1, 1, v220);
      }

      v222 = v220[2];
      v221 = v220[3];
      if (v222 >= v221 >> 1)
      {
        v220 = sub_20C349F84((v221 > 1), v222 + 1, 1, v220);
      }

      v220[2] = v222 + 1;
      (*(v76 + 32))(v220 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v222);
      *v219 = v220;
      v223 = v412 + *(v207 + 44);
      v224 = *v223;
      v225 = *(v223 + 8);
      v226 = *(v223 + 16);
      v227 = v415;
      v228 = *(v415 + 1);
      v229 = *(v415 + 2);
      v230 = *(v415 + 3);
      v231 = *(v223 + 24);
      v232 = v415[32];
      sub_20C3047D4(*v223, v225, v226, v231);
      sub_20C3048A0(v228, v229, v230, v232);
      *(v227 + 1) = v224;
      *(v227 + 2) = v225;
      *(v227 + 3) = v226;
      v227[32] = v231;
      memcpy(v417, v419, sizeof(v417));
      v118 = 0;
      v119 = 0;
      v117 = 0;
      v120 = 2;
      goto LABEL_53;
    }

LABEL_56:
    v107 = v419;
LABEL_57:
    memcpy(v417, v107, sizeof(v417));
    v162 = v414;
    v161 = v415;
    v163 = v412;
LABEL_58:
    sub_20C34A250(v161, v163, v162, 1);
    return;
  }

  v63 = *(a4 + 3);
  v62 = *(a4 + 4);
  if (a4[40] <= 5u)
  {
    if (v60 == 4)
    {
      v83 = *((v57 | (v58 << 8)) + 0x10);
      if (!v83)
      {
        v84 = MEMORY[0x277D84F98];
LABEL_64:
        if (qword_2810E8CA8 != -1)
        {
          swift_once();
        }

        v165 = sub_20C36C3D4();
        __swift_project_value_buffer(v165, qword_2810ED6B8);

        v166 = sub_20C36C3B4();
        v167 = sub_20C36CFD4();

        v168 = v84;
        if (os_log_type_enabled(v166, v167))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v417[0] = v170;
          *v169 = 136315138;
          v171 = sub_20C36CD14();
          v173 = sub_20C359E04(v171, v172, v417);

          *(v169 + 4) = v173;
          _os_log_impl(&dword_20C2F6000, v166, v167, "Updated award load states %s", v169, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v170);
          MEMORY[0x20F2F83A0](v170, -1, -1);
          MEMORY[0x20F2F83A0](v169, -1, -1);
        }

        v174 = *(type metadata accessor for ForYouState(0) + 20);
        v175 = v412;

        *(v175 + v174) = v168;
        return;
      }

      v84 = MEMORY[0x277D84F98];
      v57 = v61 + 64;
      v413 = xmmword_20C3761A0;
      while (1)
      {
        v414 = v83;
        v88 = *(v57 - 16);
        v87 = *(v57 - 8);
        v89 = *v57;
        v90 = *(v57 - 32);
        v91 = *(v57 - 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED18, &qword_20C3762A8);
        v92 = swift_allocObject();
        *(v92 + 16) = v413;
        *(v92 + 32) = v90;
        *(v92 + 40) = v91;
        *(v92 + 48) = v88;
        *(v92 + 56) = v87;
        *(v92 + 64) = v89;
        v415 = v91;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v93 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v417[0] = v93;
        v96 = sub_20C35A4F4(v88, v87);
        v97 = *(v93 + 16);
        v98 = (v95 & 1) == 0;
        v99 = v97 + v98;
        if (__OFADD__(v97, v98))
        {
          __break(1u);
          goto LABEL_119;
        }

        v100 = v95;
        if (*(v93 + 24) >= v99)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v84 = v417[0];
            if (v95)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_20C35A8CC();
            v84 = v417[0];
            if (v100)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          sub_20C35A624(v99, isUniquelyReferenced_nonNull_native);
          v101 = sub_20C35A4F4(v88, v87);
          if ((v100 & 1) != (v102 & 1))
          {
            sub_20C36D284();
            __break(1u);
            return;
          }

          v96 = v101;
          v84 = v417[0];
          if (v100)
          {
LABEL_22:
            v85 = v84[7];
            v86 = *(v85 + 8 * v96);
            *(v85 + 8 * v96) = v92;
            sub_20C336338(v86);

            goto LABEL_23;
          }
        }

        v84[(v96 >> 6) + 8] |= 1 << v96;
        v103 = (v84[6] + 16 * v96);
        *v103 = v88;
        v103[1] = v87;
        *(v84[7] + 8 * v96) = v92;

        v104 = v84[2];
        v105 = __OFADD__(v104, 1);
        v106 = v104 + 1;
        if (v105)
        {
          __break(1u);
          goto LABEL_150;
        }

        v84[2] = v106;
LABEL_23:
        v57 += 40;
        v83 = (v414 - 1);
        if (v414 == 1)
        {
          goto LABEL_64;
        }
      }
    }

    v414 = (v57 | (v58 << 8));
    v411 = v62;
    v146 = type metadata accessor for ForYouState(0);
    v147 = v412;
    *(v412 + v146[15]) = 0;
    v148 = v406;
    sub_20C36C0F4();
    sub_20C36C0E4();
    (*(v407 + 8))(v148, v408);
    sub_20C36CF54();
    v149 = v147 + v146[12];
    *(v149 + 32) = v150;
    *(v149 + 40) = 0;
    *(v149 + 48) = v59;
    *(v149 + 56) = 0;
    *(v149 + 64) = v63;
    *(v149 + 72) = 0;
    v151 = v147 + v146[11];
    v152 = *v151;
    v153 = *(v151 + 8);
    v154 = *(v151 + 16);
    v155 = v415;
    v156 = *(v415 + 1);
    v157 = *(v415 + 2);
    v158 = *(v415 + 3);
    v159 = *(v151 + 24);
    LOBYTE(v147) = v415[32];
    sub_20C3047D4(*v151, v153, v154, v159);
    sub_20C3048A0(v156, v157, v158, v147);
    *(v155 + 1) = v152;
    *(v155 + 2) = v153;
    *(v155 + 3) = v154;
    v155[32] = v159;
    memcpy(v417, v419, sizeof(v417));
    v118 = v414;
    v119 = v413;
    v117 = v411;
    v120 = 1;
LABEL_53:
    sub_20C34A8FC(v118, v119, v117, v120, v412);
    return;
  }

  if (v60 == 6)
  {
    if (v57 == 1)
    {
      return;
    }

    v107 = v410;
    goto LABEL_57;
  }

  if (v60 == 7)
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v64 = sub_20C36C3D4();
    __swift_project_value_buffer(v64, qword_2810ED6B8);
    v65 = sub_20C36C3B4();
    v66 = sub_20C36CFD4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v417[0] = v68;
      *v67 = 136315138;
      v418 = v57;
      v69 = sub_20C36CD94();
      v71 = sub_20C359E04(v69, v70, v417);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_20C2F6000, v65, v66, "Subscription State Updated to state: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x20F2F83A0](v68, -1, -1);
      MEMORY[0x20F2F83A0](v67, -1, -1);
    }

    if (v57 == 2)
    {
      return;
    }

    goto LABEL_56;
  }

  v140 = v59 | v413 | v63 | v62;
  v141 = v414;
  if (!(v140 | v61))
  {
    v164 = v412 + *(type metadata accessor for ForYouState(0) + 44);
    if (*(v164 + 24))
    {
      if (*(v164 + 24) != 1 && !(*(v164 + 16) | *v164 | *(v164 + 8)))
      {
        goto LABEL_62;
      }
    }

    else if (!*(v164 + 16))
    {
LABEL_62:
      memcpy(v417, v410, sizeof(v417));
      v161 = v415;
      v163 = v412;
      v162 = v141;
      goto LABEL_58;
    }

    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v241 = sub_20C36C3D4();
    __swift_project_value_buffer(v241, qword_2810ED6B8);
    v415 = sub_20C36C3B4();
    v242 = sub_20C36CFD4();
    if (os_log_type_enabled(v415, v242))
    {
      v243 = swift_slowAlloc();
      *v243 = 0;
      _os_log_impl(&dword_20C2F6000, v415, v242, "App Did Become Active - Current Load State is unsupported for fetching section descriptors.", v243, 2u);
      MEMORY[0x20F2F83A0](v243, -1, -1);
    }

    v244 = v415;

    return;
  }

  if (v61 == 1 && !v140)
  {
    LOBYTE(v417[0]) = 23;
    sub_20C350A54(v54, v55, v56);
    sub_20C36D024();
    v142 = v411;
    (*(v411 + 104))(v51, *MEMORY[0x277D043C0], v409);
    v143 = *v141;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_20C349F84(0, v143[2] + 1, 1, v143);
    }

    v145 = v143[2];
    v144 = v143[3];
    if (v145 >= v144 >> 1)
    {
      v143 = sub_20C349F84((v144 > 1), v145 + 1, 1, v143);
    }

    v143[2] = v145 + 1;
    (*(v142 + 32))(v143 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v145, v51, v409);
    *v141 = v143;
    return;
  }

  v88 = v411;
  if (v61 == 2 && !v140)
  {
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
    v193 = v192[16];
    v194 = v192[20];
    v195 = &v42[v192[24]];
    LOBYTE(v417[0]) = 19;
    sub_20C350A54(v192, v196, v197);
    sub_20C36D024();
    sub_20C36CF04();
    v198 = *MEMORY[0x277D043F0];
    v199 = sub_20C36CCD4();
    v200 = &v42[v193];
    v141 = v414;
    (*(*(v199 - 8) + 104))(v200, v198, v199);
    v201 = *MEMORY[0x277D043E8];
    v202 = sub_20C36CCC4();
    (*(*(v202 - 8) + 104))(&v42[v194], v201, v202);
    v203 = swift_allocObject();
    memcpy((v203 + 16), v419, 0x160uLL);
    *v195 = &unk_20C3762A0;
    *(v195 + 1) = v203;
    v204 = v409;
    (*(v88 + 104))(v42, *MEMORY[0x277D043B0], v409);
    v53 = *v141;
    sub_20C352354(v419, v417);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_20C349F84(0, *(v53 + 2) + 1, 1, v53);
    }

    v206 = *(v53 + 2);
    v205 = *(v53 + 3);
    if (v206 >= v205 >> 1)
    {
      v53 = sub_20C349F84((v205 > 1), v206 + 1, 1, v53);
    }

    *(v53 + 2) = v206 + 1;
    (*(v88 + 32))(&v53[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v206], v42, v204);
LABEL_83:
    *v141 = v53;
    return;
  }

  v233 = v409;
  if (v61 == 3 && !v140)
  {
    v234 = v412 + *(type metadata accessor for ForYouState(0) + 44);
    if (!*(v234 + 24))
    {
      v235 = *(v234 + 16);
      if (v235 == 2 && !*(v234 + 8) && *v234 == 1)
      {
        v236 = sub_20C36CF24();
        v237 = v405;
        (*(*(v236 - 8) + 56))(v405, 1, 1, v236);
        sub_20C36CEF4();
        sub_20C352354(v419, v417);
        sub_20C3047D4(1, 0, v235, 0);
        v238 = sub_20C36CEE4();
        v239 = swift_allocObject();
        v240 = MEMORY[0x277D85700];
        v239[2] = v238;
        v239[3] = v240;
        memcpy(v239 + 4, v419, 0x160uLL);
        sub_20C351554(0, 0, v237, &unk_20C376290, v239);
      }
    }

    return;
  }

  if (v61 == 4 && !v140)
  {
    v245 = *(type metadata accessor for ForYouState(0) + 60);
    v246 = v412;
    v247 = *(v412 + v245);
    v105 = __OFADD__(v247, 1);
    v248 = v247 + 1;
    if (!v105)
    {
      *(v412 + v245) = v248;
      memcpy(v417, v410, sizeof(v417));
      sub_20C34A250(v415, v246, v141, 0);
      return;
    }

    __break(1u);
    goto LABEL_152;
  }

  if (v61 == 5 && !v140)
  {
    v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3B0, &qword_20C372458);
    v250 = v249[24];
    v251 = v249[28];
    v59 = v404;
    v252 = &v404[v249[32]];
    LOBYTE(v417[0]) = 23;
    sub_20C350A54(v249, v253, v254);
    sub_20C36D024();
    *(v59 + 5) = 0x4000000000000000;
    v59[48] = 0;
    sub_20C36CF04();
    v255 = *MEMORY[0x277D04400];
    v256 = sub_20C36CCD4();
    (*(*(v256 - 8) + 104))(&v59[v250], v255, v256);
    v257 = *MEMORY[0x277D043E0];
    v258 = sub_20C36CCC4();
    (*(*(v258 - 8) + 104))(&v59[v251], v257, v258);
    *v252 = &unk_20C376280;
    *(v252 + 1) = 0;
    (*(v88 + 104))(v59, *MEMORY[0x277D043B8], v233);
    v53 = *v141;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v260 = *(v53 + 2);
      v259 = *(v53 + 3);
      if (v260 >= v259 >> 1)
      {
        v53 = sub_20C349F84((v259 > 1), v260 + 1, 1, v53);
      }

      *(v53 + 2) = v260 + 1;
      (*(v88 + 32))(&v53[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v260], v59, v233);
      goto LABEL_83;
    }

LABEL_152:
    v53 = sub_20C349F84(0, *(v53 + 2) + 1, 1, v53);
    goto LABEL_111;
  }

  v99 = type metadata accessor for ForYouState(0);
  v261 = v412 + *(v99 + 44);
  v97 = *(v261 + 16);
  if (*(v261 + 24))
  {
    if (*(v261 + 24) == 1 || v97 | *v261 | *(v261 + 8))
    {
      return;
    }
  }

  else
  {
LABEL_119:
    if (v97)
    {
      return;
    }
  }

  v262 = v406;
  v263 = v99;
  sub_20C36C0F4();
  sub_20C36C0E4();
  (*(v407 + 8))(v262, v408);
  sub_20C36CF54();
  v264 = *(v263 + 48);
  v265 = v412;
  v266 = v412 + v264;
  *v266 = v267;
  *(v266 + 8) = 0;
  memcpy(v417, v419, sizeof(v417));
  v268 = v414;
  sub_20C34A250(v415, v265, v414, 1);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
  v270 = v269[16];
  v271 = v269[20];
  v272 = v395;
  v273 = &v395[v269[24]];
  LOBYTE(v417[0]) = 4;
  v415 = sub_20C350A54(v269, v274, v275);
  sub_20C36D024();
  sub_20C36CF04();
  v276 = *MEMORY[0x277D04400];
  v277 = sub_20C36CCD4();
  v278 = *(v277 - 8);
  v279 = *(v278 + 104);
  LODWORD(v413) = v276;
  v412 = v277;
  v410 = v279;
  v408 = (v278 + 104);
  (v279)(&v272[v270], v276);
  v280 = *MEMORY[0x277D043E0];
  v281 = sub_20C36CCC4();
  v282 = *(v281 - 8);
  v283 = *(v282 + 104);
  LODWORD(v407) = v280;
  v405 = v283;
  v406 = v281;
  v404 = (v282 + 104);
  (v283)(&v272[v271], v280);
  v284 = swift_allocObject();
  memcpy((v284 + 16), v419, 0x160uLL);
  *v273 = &unk_20C3761B8;
  *(v273 + 1) = v284;
  v285 = *(v88 + 104);
  v390 = *MEMORY[0x277D043B0];
  v389 = v285;
  v285(v272);
  v286 = *v268;
  sub_20C352354(v419, v417);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v286 = sub_20C349F84(0, v286[2] + 1, 1, v286);
  }

  v288 = v286[2];
  v287 = v286[3];
  if (v288 >= v287 >> 1)
  {
    v286 = sub_20C349F84((v287 > 1), v288 + 1, 1, v286);
  }

  v286[2] = v288 + 1;
  v289 = *(v411 + 32);
  v388 = (*(v411 + 80) + 32) & ~*(v411 + 80);
  v387 = *(v411 + 72);
  v290 = v395;
  v291 = v409;
  v411 += 32;
  v395 = v289;
  (v289)(v286 + v388 + v387 * v288, v290, v409);
  v292 = v269[16];
  v293 = v269[20];
  v294 = v396;
  v295 = &v396[v269[24]];
  LOBYTE(v417[0]) = 5;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v294[v292], v413, v412);
  (v405)(&v294[v293], v407, v406);
  v296 = swift_allocObject();
  memcpy((v296 + 16), v419, 0x160uLL);
  *v295 = &unk_20C3761C8;
  *(v295 + 1) = v296;
  v389(v294, v390, v291);
  sub_20C352354(v419, v417);
  v298 = v286[2];
  v297 = v286[3];
  if (v298 >= v297 >> 1)
  {
    v286 = sub_20C349F84((v297 > 1), v298 + 1, 1, v286);
  }

  v286[2] = v298 + 1;
  v299 = v409;
  (v395)(v286 + v388 + v298 * v387, v396, v409);
  v300 = v269[16];
  v301 = v269[20];
  v302 = v397;
  v303 = &v397[v269[24]];
  LOBYTE(v417[0]) = 6;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v302[v300], v413, v412);
  (v405)(&v302[v301], v407, v406);
  v304 = swift_allocObject();
  memcpy((v304 + 16), v419, 0x160uLL);
  *v303 = &unk_20C3761D8;
  *(v303 + 1) = v304;
  v389(v302, v390, v299);
  sub_20C352354(v419, v417);
  v306 = v286[2];
  v305 = v286[3];
  if (v306 >= v305 >> 1)
  {
    v286 = sub_20C349F84((v305 > 1), v306 + 1, 1, v286);
  }

  v286[2] = v306 + 1;
  v307 = v409;
  (v395)(v286 + v388 + v306 * v387, v397, v409);
  v308 = v269[16];
  v309 = v269[20];
  v310 = v398;
  v311 = &v398[v269[24]];
  LOBYTE(v417[0]) = 7;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v310[v308], v413, v412);
  (v405)(&v310[v309], v407, v406);
  v312 = swift_allocObject();
  memcpy((v312 + 16), v419, 0x160uLL);
  *v311 = &unk_20C3761E8;
  *(v311 + 1) = v312;
  v389(v310, v390, v307);
  sub_20C352354(v419, v417);
  v314 = v286[2];
  v313 = v286[3];
  if (v314 >= v313 >> 1)
  {
    v286 = sub_20C349F84((v313 > 1), v314 + 1, 1, v286);
  }

  v315 = v391;
  v286[2] = v314 + 1;
  v316 = v409;
  (v395)(v286 + v388 + v314 * v387, v398, v409);
  v317 = v269[16];
  v318 = v269[20];
  v319 = &v315[v269[24]];
  LOBYTE(v417[0]) = 9;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v315[v317], v413, v412);
  (v405)(&v315[v318], v407, v406);
  v320 = swift_allocObject();
  memcpy((v320 + 16), v419, 0x160uLL);
  *v319 = &unk_20C3761F8;
  *(v319 + 1) = v320;
  v389(v315, v390, v316);
  sub_20C352354(v419, v417);
  v322 = v286[2];
  v321 = v286[3];
  if (v322 >= v321 >> 1)
  {
    v286 = sub_20C349F84((v321 > 1), v322 + 1, 1, v286);
  }

  v286[2] = v322 + 1;
  v323 = v409;
  (v395)(v286 + v388 + v322 * v387, v315, v409);
  v324 = v269[16];
  v325 = v269[20];
  v326 = v399;
  v327 = &v399[v269[24]];
  LOBYTE(v417[0]) = 10;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v326[v324], v413, v412);
  (v405)(&v326[v325], v407, v406);
  v328 = swift_allocObject();
  memcpy((v328 + 16), v419, 0x160uLL);
  *v327 = &unk_20C376208;
  *(v327 + 1) = v328;
  v389(v326, v390, v323);
  sub_20C352354(v419, v417);
  v330 = v286[2];
  v329 = v286[3];
  if (v330 >= v329 >> 1)
  {
    v286 = sub_20C349F84((v329 > 1), v330 + 1, 1, v286);
  }

  v331 = v392;
  v286[2] = v330 + 1;
  v332 = v409;
  (v395)(v286 + v388 + v330 * v387, v399, v409);
  v333 = v269[16];
  v334 = v269[20];
  v335 = &v331[v269[24]];
  LOBYTE(v417[0]) = 11;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v331[v333], v413, v412);
  (v405)(&v331[v334], v407, v406);
  v336 = swift_allocObject();
  memcpy((v336 + 16), v419, 0x160uLL);
  *v335 = &unk_20C376218;
  *(v335 + 1) = v336;
  v389(v331, v390, v332);
  sub_20C352354(v419, v417);
  v338 = v286[2];
  v337 = v286[3];
  if (v338 >= v337 >> 1)
  {
    v286 = sub_20C349F84((v337 > 1), v338 + 1, 1, v286);
  }

  v286[2] = v338 + 1;
  v339 = v409;
  (v395)(v286 + v388 + v338 * v387, v331, v409);
  v340 = v269[16];
  v341 = v269[20];
  v342 = v400;
  v343 = &v400[v269[24]];
  LOBYTE(v417[0]) = 12;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v342[v340], v413, v412);
  (v405)(&v342[v341], v407, v406);
  v344 = swift_allocObject();
  memcpy((v344 + 16), v419, 0x160uLL);
  *v343 = &unk_20C376228;
  *(v343 + 1) = v344;
  v389(v342, v390, v339);
  sub_20C352354(v419, v417);
  v346 = v286[2];
  v345 = v286[3];
  if (v346 >= v345 >> 1)
  {
    v286 = sub_20C349F84((v345 > 1), v346 + 1, 1, v286);
  }

  v286[2] = v346 + 1;
  v347 = v409;
  (v395)(v286 + v388 + v346 * v387, v400, v409);
  v348 = v269[16];
  v349 = v269[20];
  v350 = v401;
  v351 = &v401[v269[24]];
  LOBYTE(v417[0]) = 13;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v350[v348], v413, v412);
  (v405)(&v350[v349], v407, v406);
  v352 = swift_allocObject();
  memcpy((v352 + 16), v419, 0x160uLL);
  *v351 = &unk_20C376238;
  *(v351 + 1) = v352;
  v389(v350, v390, v347);
  sub_20C352354(v419, v417);
  v354 = v286[2];
  v353 = v286[3];
  if (v354 >= v353 >> 1)
  {
    v286 = sub_20C349F84((v353 > 1), v354 + 1, 1, v286);
  }

  v355 = v393;
  v286[2] = v354 + 1;
  v356 = v409;
  (v395)(v286 + v388 + v354 * v387, v401, v409);
  v357 = v269[16];
  v358 = v269[20];
  v359 = &v355[v269[24]];
  LOBYTE(v417[0]) = 14;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v355[v357], v413, v412);
  (v405)(&v355[v358], v407, v406);
  v360 = swift_allocObject();
  memcpy((v360 + 16), v419, 0x160uLL);
  *v359 = &unk_20C376248;
  *(v359 + 1) = v360;
  v389(v355, v390, v356);
  sub_20C352354(v419, v417);
  v362 = v286[2];
  v361 = v286[3];
  if (v362 >= v361 >> 1)
  {
    v286 = sub_20C349F84((v361 > 1), v362 + 1, 1, v286);
  }

  v286[2] = v362 + 1;
  v363 = v409;
  (v395)(v286 + v388 + v362 * v387, v355, v409);
  v364 = v269[16];
  v365 = v269[20];
  v366 = v402;
  v367 = &v402[v269[24]];
  LOBYTE(v417[0]) = 15;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v366[v364], v413, v412);
  (v405)(&v366[v365], v407, v406);
  v368 = swift_allocObject();
  memcpy((v368 + 16), v419, 0x160uLL);
  *v367 = &unk_20C376258;
  *(v367 + 1) = v368;
  v389(v366, v390, v363);
  sub_20C352354(v419, v417);
  v370 = v286[2];
  v369 = v286[3];
  if (v370 >= v369 >> 1)
  {
    v286 = sub_20C349F84((v369 > 1), v370 + 1, 1, v286);
  }

  v286[2] = v370 + 1;
  v371 = v409;
  v372 = v394;
  (v395)(v286 + v388 + v370 * v387, v402, v409);
  v373 = v269[16];
  v374 = v269[20];
  v375 = &v372[v269[24]];
  LOBYTE(v417[0]) = 17;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v372[v373], v413, v412);
  (v405)(&v372[v374], v407, v406);
  v376 = swift_allocObject();
  memcpy((v376 + 16), v419, 0x160uLL);
  *v375 = &unk_20C376268;
  *(v375 + 1) = v376;
  v389(v372, v390, v371);
  sub_20C352354(v419, v417);
  v378 = v286[2];
  v377 = v286[3];
  if (v378 >= v377 >> 1)
  {
    v286 = sub_20C349F84((v377 > 1), v378 + 1, 1, v286);
  }

  v286[2] = v378 + 1;
  v379 = v409;
  (v395)(v286 + v388 + v378 * v387, v372, v409);
  v380 = v269[16];
  v381 = v269[20];
  v382 = v403;
  v383 = &v403[v269[24]];
  LOBYTE(v417[0]) = 8;
  sub_20C36D024();
  sub_20C36CF04();
  (v410)(&v382[v380], v413, v412);
  (v405)(&v382[v381], v407, v406);
  v384 = swift_allocObject();
  memcpy((v384 + 16), v419, 0x160uLL);
  *v383 = &unk_20C376278;
  *(v383 + 1) = v384;
  v389(v382, v390, v379);
  sub_20C352354(v419, v417);
  v386 = v286[2];
  v385 = v286[3];
  if (v386 >= v385 >> 1)
  {
    v286 = sub_20C349F84((v385 > 1), v386 + 1, 1, v286);
  }

  v286[2] = v386 + 1;
  (v395)(v286 + v388 + v386 * v387, v403, v409);
  *v414 = v286;
}

unint64_t sub_20C350A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E90D8;
  if (!qword_2810E90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90D8);
  }

  return result;
}

uint64_t sub_20C350AA8()
{
  *(v0 + 64) = sub_20C36CEF4();
  *(v0 + 72) = sub_20C36CEE4();
  *(v0 + 16) = 2;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 8;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
  *v1 = v0;
  v1[1] = sub_20C350BA0;

  return MEMORY[0x282159B08](v0 + 16, v2);
}

uint64_t sub_20C350BA0()
{

  v1 = sub_20C36CEC4();

  return MEMORY[0x2822009F8](sub_20C35B190, v1, v0);
}

uint64_t sub_20C350CDC()
{
  *(v0 + 64) = sub_20C36CEF4();
  *(v0 + 72) = sub_20C36CEE4();
  *(v0 + 16) = 5;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 8;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
  *v1 = v0;
  v1[1] = sub_20C350DD4;

  return MEMORY[0x282159B08](v0 + 16, v2);
}

uint64_t sub_20C350DD4()
{

  v1 = sub_20C36CEC4();

  return MEMORY[0x2822009F8](sub_20C350F10, v1, v0);
}

uint64_t sub_20C350F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C350F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = sub_20C36CEF4();
  *(v3 + 72) = sub_20C36CEE4();
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
  *v6 = v3;
  v6[1] = sub_20C350BA0;

  return MEMORY[0x282159B08](v3 + 16, v7);
}

uint64_t sub_20C35106C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_20C36CEF4();
  v2[3] = sub_20C36CEE4();
  v6 = (*(a2 + 256) + **(a2 + 256));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20C351174;

  return v6();
}

uint64_t sub_20C351174()
{

  v1 = sub_20C36CEC4();

  return MEMORY[0x2822009F8](sub_20C320348, v1, v0);
}

uint64_t sub_20C3512B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_20C36CEF4();
  v4[3] = sub_20C36CEE4();
  v8 = (*(a4 + 272) + **(a4 + 272));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_20C3513B8;

  return v8();
}

uint64_t sub_20C3513B8()
{

  v1 = sub_20C36CEC4();

  return MEMORY[0x2822009F8](sub_20C3514F4, v1, v0);
}

uint64_t sub_20C3514F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C351554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA8, &qword_20C3754C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20C35AE00(a3, v25 - v10);
  v12 = sub_20C36CF24();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20C35AE70(v11);
  }

  else
  {
    sub_20C36CF14();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20C36CEC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20C36CDA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20C35AE70(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20C35AE70(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20C351814()
{
  *(v0 + 64) = sub_20C36CEF4();
  *(v0 + 72) = sub_20C36CEE4();
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 2;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
  *v1 = v0;
  v1[1] = sub_20C350BA0;

  return MEMORY[0x282159B08](v0 + 16, v2);
}

uint64_t sub_20C35190C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C351A20;

  return v6(v2 + 13);
}

uint64_t sub_20C351A20()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C351B80;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C351B80()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C351D58;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C351D58()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C351E6C, v4, v5);
  }

  return result;
}

uint64_t sub_20C351E6C()
{
  v14 = v0;
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_20C36CD94();
      v10 = sub_20C359E04(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20C2F6000, v4, v5, "AchievementEnvironmentCache updated - refreshing. Updated cache %s ", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x20F2F83A0](v7, -1, -1);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 56) = 2;
    v11 = swift_task_alloc();
    *(v0 + 216) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v11 = v0;
    v11[1] = sub_20C3520C0;

    return MEMORY[0x282159B08](v0 + 16, v12);
  }
}

uint64_t sub_20C3520C0()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C3521E0, v3, v2);
}

uint64_t sub_20C3521E0(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C351D58;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C3522BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C35190C(a1, v1 + 16);
}

uint64_t sub_20C35238C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 48) + **(a2 + 48));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C3524A0;

  return v6(v2 + 13);
}

uint64_t sub_20C3524A0()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C352600;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C352600()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C3527D8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C3527D8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C3528EC, v4, v5);
  }

  return result;
}

uint64_t sub_20C3528EC()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Active Workout Plan Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 16) = 4;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v7 = v0;
    v7[1] = sub_20C352AD0;

    return MEMORY[0x282159B08](v0 + 16, v8);
  }
}

uint64_t sub_20C352AD0()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C352BF0, v3, v2);
}

uint64_t sub_20C352BF0(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C3527D8;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C352CCC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 64) + **(a2 + 64));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C352DE0;

  return v6(v2 + 13);
}

uint64_t sub_20C352DE0()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C352F40;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C352F40()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C353118;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C353118()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C35322C, v4, v5);
  }

  return result;
}

uint64_t sub_20C35322C()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Allowed Content Ratings Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v7 = v0;
    v7[1] = sub_20C353410;

    return MEMORY[0x282159B08](v0 + 16, v8);
  }
}

uint64_t sub_20C353410()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C353530, v3, v2);
}

uint64_t sub_20C353530(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C353118;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C35360C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 80) + **(a2 + 80));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C353720;

  return v6(v2 + 13);
}

uint64_t sub_20C353720()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C353880;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C353880()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C353A58;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C353A58()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C353B6C, v4, v5);
  }

  return result;
}

uint64_t sub_20C353B6C()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 56) = 8;
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v3 = v0;
    v3[1] = sub_20C353C98;

    return MEMORY[0x282159B08](v0 + 16, v4);
  }
}

uint64_t sub_20C353C98()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C353DB8, v3, v2);
}

uint64_t sub_20C353DB8(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C353A58;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C353E94(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 112) + **(a2 + 112));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C353FA8;

  return v6(v2 + 13);
}

uint64_t sub_20C353FA8()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C3547D0;
  }

  else
  {
    v5 = sub_20C354108;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C354108()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C3542E0;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C3542E0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C3543F4, v4, v5);
  }

  return result;
}

uint64_t sub_20C3543F4()
{
  v1 = *(v0 + 57);
  if (v1 == 2)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v4 = sub_20C36C3D4();
    __swift_project_value_buffer(v4, qword_2810ED6B8);
    v5 = sub_20C36C3B4();
    v6 = sub_20C36CFD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20C2F6000, v5, v6, "Browsing Identity Updated — refreshing", v7, 2u);
      MEMORY[0x20F2F83A0](v7, -1, -1);
    }

    *(v0 + 16) = v1 & 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0;
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v8 = v0;
    v8[1] = sub_20C3545D4;

    return MEMORY[0x282159B08](v0 + 16, v9);
  }
}

uint64_t sub_20C3545D4()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C3546F4, v3, v2);
}

uint64_t sub_20C3546F4(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C3542E0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C3547D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C354834(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 128) + **(a2 + 128));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C354948;

  return v6(v2 + 13);
}

uint64_t sub_20C354948()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C354AA8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C354AA8()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C354C80;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C354C80()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C354D94, v4, v5);
  }

  return result;
}

uint64_t sub_20C354D94()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Catalog Deleted — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 16) = 3;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v7 = v0;
    v7[1] = sub_20C354F78;

    return MEMORY[0x282159B08](v0 + 16, v8);
  }
}

uint64_t sub_20C354F78()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C355098, v3, v2);
}

uint64_t sub_20C355098(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C354C80;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C355174(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 144) + **(a2 + 144));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C355288;

  return v6(v2 + 13);
}

uint64_t sub_20C355288()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C3553E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C3553E8()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C3555C0;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C3555C0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C3556D4, v4, v5);
  }

  return result;
}

uint64_t sub_20C3556D4()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Content Availability Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v7 = v0;
    v7[1] = sub_20C3558B8;

    return MEMORY[0x282159B08](v0 + 16, v8);
  }
}

uint64_t sub_20C3558B8()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C3559D8, v3, v2);
}

uint64_t sub_20C3559D8(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C3555C0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C355AB4(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 160) + **(a2 + 160));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C355BC8;

  return v6(v2 + 13);
}

uint64_t sub_20C355BC8()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C355D28;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C355D28()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C355F00;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C355F00()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C356014, v4, v5);
  }

  return result;
}

uint64_t sub_20C356014()
{
  v1 = *(v0 + 57);
  if (v1 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v4 = sub_20C36C3D4();
    __swift_project_value_buffer(v4, qword_2810ED6B8);
    v5 = sub_20C36C3B4();
    v6 = sub_20C36CFD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20C2F6000, v5, v6, "Network Conditions Updated — refreshing", v7, 2u);
      MEMORY[0x20F2F83A0](v7, -1, -1);
    }

    *(v0 + 16) = v1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 6;
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v8 = v0;
    v8[1] = sub_20C3561F4;

    return MEMORY[0x282159B08](v0 + 16, v9);
  }
}

uint64_t sub_20C3561F4()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C356314, v3, v2);
}

uint64_t sub_20C356314(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C355F00;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C3563F0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 176) + **(a2 + 176));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C356504;

  return v6(v2 + 13);
}

uint64_t sub_20C356504()
{
  v1 = *v0;

  v3 = sub_20C36CEC4();
  *(v1 + 176) = v3;
  *(v1 + 184) = v2;

  return MEMORY[0x2822009F8](sub_20C356648, v3, v2);
}

uint64_t sub_20C356648()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[24] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_20C356820;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C356820()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 176);
    v5 = *(v2 + 184);

    return MEMORY[0x2822009F8](sub_20C356934, v4, v5);
  }

  return result;
}

uint64_t sub_20C356934()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Onboarding Survey Results Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 56) = 2;
    v7 = swift_task_alloc();
    *(v0 + 208) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v7 = v0;
    v7[1] = sub_20C356B14;

    return MEMORY[0x282159B08](v0 + 16, v8);
  }
}

uint64_t sub_20C356B14()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_20C356C34, v3, v2);
}

uint64_t sub_20C356C34(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[24] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[25] = v3;
  *v3 = v1;
  v3[1] = sub_20C356820;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C356D10(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 192) + **(a2 + 192));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C356E24;

  return v6(v2 + 13);
}

uint64_t sub_20C356E24()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C356F84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C356F84()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C35715C;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C35715C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C357270, v4, v5);
  }

  return result;
}

uint64_t sub_20C357270()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Personalization Privacy Preference Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v7 = v0;
    v7[1] = sub_20C357454;

    return MEMORY[0x282159B08](v0 + 16, v8);
  }
}

uint64_t sub_20C357454()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C357574, v3, v2);
}

uint64_t sub_20C357574(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C35715C;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C357650(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 208) + **(a2 + 208));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C357764;

  return v6(v2 + 13);
}

uint64_t sub_20C357764()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C3578C4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C3578C4()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C357A9C;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C357A9C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C357BB0, v4, v5);
  }

  return result;
}

uint64_t sub_20C357BB0()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Significant Time Change — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v7 = v0;
    v7[1] = sub_20C357D94;

    return MEMORY[0x282159B08](v0 + 16, v8);
  }
}

uint64_t sub_20C357D94()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C357EB4, v3, v2);
}

uint64_t sub_20C357EB4(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C357A9C;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C357F90(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v6 = (*(a2 + 240) + **(a2 + 240));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_20C3580A4;

  return v6(v2 + 13);
}

uint64_t sub_20C3580A4()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_20C36CEC4();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_20C35B188;
  }

  else
  {
    v5 = sub_20C358204;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C358204()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = sub_20C36CEE4();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C3583DC;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v5, v7);
}

uint64_t sub_20C3583DC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_20C3584F0, v4, v5);
  }

  return result;
}

uint64_t sub_20C3584F0()
{
  if (*(v0 + 57) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Wheelchair Status Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v7 = v0;
    v7[1] = sub_20C3586D4;

    return MEMORY[0x282159B08](v0 + 16, v8);
  }
}

uint64_t sub_20C3586D4()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C3587F4, v3, v2);
}

uint64_t sub_20C3587F4(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 8), v1[11]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_20C3583DC;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 57, v2, v4);
}

uint64_t sub_20C3588D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = sub_20C36CEF4();
  *(v2 + 104) = sub_20C36CEE4();
  *(v2 + 112) = *(a2 + 16);
  v6 = (*(a2 + 96) + **(a2 + 96));
  v4 = swift_task_alloc();
  *(v2 + 128) = v4;
  *v4 = v2;
  v4[1] = sub_20C3589E8;

  return v6(v2 + 56);
}

uint64_t sub_20C3589E8()
{
  v2 = *v1;
  v2[17] = v0;

  v4 = sub_20C36CEC4();
  v2[18] = v4;
  v2[19] = v3;
  if (v0)
  {
    v5 = sub_20C359188;
  }

  else
  {
    v5 = sub_20C358B48;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C358B48()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[20] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_20C358D20;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_20C358D20()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x2822009F8](sub_20C358E34, v4, v5);
  }

  return result;
}

uint64_t sub_20C358E34()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*(v0 + 112) + **(v0 + 112));
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_20C358F70;

    return v4();
  }
}

uint64_t sub_20C358F70()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_20C3591EC;
  }

  else
  {
    v5 = sub_20C3590AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C3590AC(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[20] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_20C358D20;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_20C359188()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C3591EC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ForYouFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_20C34A8FC(0, 0, 0, 2, a2);
  v35 = *(type metadata accessor for ForYouState(0) + 20);
  v36 = a2;
  v4 = *(a2 + v35);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v37 = v4;

  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  if (v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v15 >= v9)
    {

      *(v36 + v35) = v11;
      return result;
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
  }

  while (!v8);
  while (1)
  {
    v16 = __clz(__rbit64(v8)) | (v15 << 6);
    v17 = (*(v37 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v37 + 56) + 8 * v16);
    swift_bridgeObjectRetain_n();
    sub_20C336328(v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = v11;
    v22 = sub_20C35A4F4(v19, v18);
    v24 = v11[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v11[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v22;
        sub_20C35A8CC();
        v22 = v33;
      }
    }

    else
    {
      sub_20C35A624(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_20C35A4F4(v19, v18);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_24;
      }
    }

    v8 &= v8 - 1;
    if (v28)
    {
      v12 = v22;

      v11 = __dst[0];
      v13 = *(__dst[0] + 56);
      v14 = *(v13 + 8 * v12);
      *(v13 + 8 * v12) = 0;
      sub_20C336338(v14);

      sub_20C336338(v20);
      v10 = v15;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = __dst[0];
      *(__dst[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v30 = (v11[6] + 16 * v22);
      *v30 = v19;
      v30[1] = v18;
      *(v11[7] + 8 * v22) = 0;

      sub_20C336338(v20);
      v31 = v11[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_23;
      }

      v11[2] = v32;
      v10 = v15;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v15 = v10;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_20C36D284();
  __break(1u);
  return result;
}

uint64_t sub_20C3594F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3595EC;

  return v6(a1);
}

uint64_t sub_20C3595EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20C3596E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C35238C(a1, v1 + 16);
}

uint64_t sub_20C35977C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C352CCC(a1, v1 + 16);
}

uint64_t sub_20C359814(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C35360C(a1, v1 + 16);
}

uint64_t sub_20C3598AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C353E94(a1, v1 + 16);
}

uint64_t sub_20C359944(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C354834(a1, v1 + 16);
}

uint64_t sub_20C3599DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C355174(a1, v1 + 16);
}

uint64_t sub_20C359A74(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C355AB4(a1, v1 + 16);
}

uint64_t sub_20C359B0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C3563F0(a1, v1 + 16);
}

uint64_t sub_20C359BA4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C356D10(a1, v1 + 16);
}

uint64_t sub_20C359C3C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C357650(a1, v1 + 16);
}

uint64_t sub_20C359CD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C357F90(a1, v1 + 16);
}

uint64_t sub_20C359D6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C3588D0(a1, v1 + 16);
}

unint64_t sub_20C359E04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20C359ED0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20C35AF90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20C359ED0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20C359FDC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20C36D074();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_20C359FDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_20C35A028(a1, a2);
  sub_20C35A158(&unk_282358130);
  return v3;
}

void *sub_20C35A028(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20C35A244(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20C36D074();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20C36CDE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20C35A244(v10, 0);
        result = sub_20C36D034();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20C35A158(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20C35A2B8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20C35A244(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C79ED30, &qword_20C3764C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20C35A2B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C79ED30, &qword_20C3764C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_20C35A3AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C329164;

  return sub_20C3512B0(a1, v4, v5, v1 + 32);
}

uint64_t sub_20C35A45C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C35106C(a1, v1 + 16);
}

unint64_t sub_20C35A4F4(uint64_t a1, uint64_t a2)
{
  sub_20C36D314();
  sub_20C36CDC4();
  v4 = sub_20C36D354();

  return sub_20C35A56C(a1, a2, v4);
}

unint64_t sub_20C35A56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20C36D264())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_20C35A624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED28, &qword_20C3764A0);
  v35 = v4;
  v6 = sub_20C36D0C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        sub_20C336328(v24);
      }

      sub_20C36D314();
      sub_20C36CDC4();
      v25 = sub_20C36D354();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20C35A8CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED28, &qword_20C3764A0);
  v2 = *v0;
  v3 = sub_20C36D0B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        sub_20C336328(v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_20C35AA3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C3295B8;

  return sub_20C350F74(a1, v5, v4);
}

unint64_t sub_20C35AAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E90E0;
  if (!qword_2810E90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90E0);
  }

  return result;
}

unint64_t sub_20C35AB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E90E8;
  if (!qword_2810E90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90E8);
  }

  return result;
}

unint64_t sub_20C35AB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9508;
  if (!qword_2810E9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9508);
  }

  return result;
}

unint64_t sub_20C35ABF0()
{
  result = qword_2810E9308[0];
  if (!qword_2810E9308[0])
  {
    type metadata accessor for ForYouState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E9308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForYouFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C35ADAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E90D0;
  if (!qword_2810E90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90D0);
  }

  return result;
}

uint64_t sub_20C35AE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA8, &qword_20C3754C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C35AE70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA8, &qword_20C3754C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C35AED8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C3295B8;

  return sub_20C3594F4(a1, v4);
}

uint64_t sub_20C35AF90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_20C35B0D8(uint64_t a1)
{
  v4 = *(v1 + 369);
  v5 = *(v1 + 368);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C329164;

  return sub_20C34AF9C(a1, v1 + 16, v5, v4);
}

uint64_t sub_20C35B194(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000020C377BA0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79536C65636E6163 && a2 == 0xEF72656D6954636ELL || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377BE0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377C00 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657070416D657469 && a2 == 0xEC00000064657261 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C3781C0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C3781E0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377C60 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x707061546D657469 && a2 == 0xEA00000000006465 || (sub_20C36D264() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E79537472617473 && a2 == 0xEE0072656D695463 || (sub_20C36D264() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 12;
  }

  else
  {
    v5 = sub_20C36D264();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_20C35B5E8(char a1)
{
  result = 0x79536C65636E6163;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F5464656C696166;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x657070416D657469;
      break;
    case 6:
      result = 0x646564616F6CLL;
      break;
    case 7:
    case 9:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x707061546D657469;
      break;
    case 11:
      result = 0x6E79537472617473;
      break;
    case 12:
      result = 0x4164694477656976;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_20C35B788(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656767697274 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C35B800(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000020C377D00 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_20C35B884(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C35B8F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C35B978(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000020C377CE0 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_20C35B9FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C35BA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C35B194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C35BC10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C3169FC();
  *a1 = result;
  return result;
}

uint64_t sub_20C35BC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C35B788(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_20C35BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}