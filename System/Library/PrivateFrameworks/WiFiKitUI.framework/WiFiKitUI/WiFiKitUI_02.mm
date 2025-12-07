unint64_t sub_2740425A8()
{
  result = qword_2809357C0;
  if (!qword_2809357C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809357C0);
  }

  return result;
}

uint64_t sub_274042618@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  sub_274020248();
  v4 = sub_274051468();
  v6 = v5;
  v8 = v7;
  sub_2740513D8();
  v9 = sub_274051448();
  v11 = v10;
  v13 = v12;

  sub_27402029C(v4, v6, v8 & 1);

  sub_274051528();
  v14 = sub_274051428();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_27402029C(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_274042818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v277 = a2;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935840, &qword_27405B208);
  MEMORY[0x28223BE20](v276);
  v4 = &v239 - v3;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935860, &qword_27405B220);
  MEMORY[0x28223BE20](v273);
  v275 = &v239 - v5;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935830, &qword_27405B200);
  MEMORY[0x28223BE20](v274);
  v268 = &v239 - v6;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935868, &qword_27405B228);
  MEMORY[0x28223BE20](v267);
  v245 = &v239 - v7;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935870, &qword_27405B230);
  MEMORY[0x28223BE20](v264);
  v266 = &v239 - v8;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935878, &qword_27405B238);
  MEMORY[0x28223BE20](v265);
  v251 = &v239 - v9;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935880, &qword_27405B240);
  v297 = *(v288 - 8);
  v10 = MEMORY[0x28223BE20](v288);
  v250 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v260 = &v239 - v12;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935888, &qword_27405B248);
  v296 = *(v286 - 8);
  v13 = MEMORY[0x28223BE20](v286);
  v258 = &v239 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v259 = &v239 - v15;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935890, &qword_27405B250);
  v256 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v249 = &v239 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935898, &qword_27405B258);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v252 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v289 = &v239 - v21;
  MEMORY[0x28223BE20](v20);
  v291 = &v239 - v22;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358A0, &qword_27405B260);
  v270 = *(v271 - 8);
  MEMORY[0x28223BE20](v271);
  v248 = &v239 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358A8, &qword_27405B268);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v253 = &v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v287 = &v239 - v28;
  MEMORY[0x28223BE20](v27);
  v285 = &v239 - v29;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358B0, &qword_27405B270);
  v246 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v242 = &v239 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358B8, &qword_27405B278);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v255 = &v239 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v284 = &v239 - v34;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358C0, &qword_27405B280);
  MEMORY[0x28223BE20](v244);
  v243 = (&v239 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358C8, &qword_27405B288);
  v294 = *(v36 - 8);
  v295 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v254 = &v239 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v283 = &v239 - v39;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358D0, &qword_27405B290);
  v278 = *(v290 - 1);
  MEMORY[0x28223BE20](v290);
  v269 = &v239 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358D8, &qword_27405B298);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v44 = &v239 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v239 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v279 = &v239 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v292 = &v239 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v272 = &v239 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v280 = &v239 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v282 = &v239 - v57;
  MEMORY[0x28223BE20](v56);
  v281 = &v239 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358E0, &qword_27405B2A0);
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v262 = &v239 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v263 = &v239 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358E8, &qword_27405B2A8);
  v64 = MEMORY[0x28223BE20](v63);
  v261 = &v239 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v298 = &v239 - v66;
  v67 = a1;
  v68 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v293 = v68;
  sub_274050E68();

  if (v299)
  {
    v69 = 0x8000000274066070;
  }

  else
  {
    v69 = 0xE800000000000000;
  }

  if ((v299 & 1) == 0 && v69 == 0xE800000000000000)
  {

LABEL_8:
    MEMORY[0x28223BE20](v70);
    sub_274046224(&v299);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935908, &qword_27405B398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935910, &qword_27405B3A0);
    sub_27402179C(&qword_280935918, &qword_280935908, &qword_27405B398, MEMORY[0x277CE14C0]);
    sub_27404DB48(&qword_280935920, &qword_280935910, &qword_27405B3A0, sub_27404DBC4);
    v72 = v298;
    sub_274051628();
    v73 = (v67 + *(type metadata accessor for NetworkList(0) + 28));
    v74 = *v73;
    v75 = v73[1];
    v76 = (v72 + *(v63 + 52));
    *v76 = v74;
    v76[1] = v75;
    v77 = *(v67 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    if (v299 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v299 >> 62)
      {
        v78 = sub_274051A98();
      }

      else
      {
        v78 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v79 = v278;
      v253 = v77;

      if (v78 < 1)
      {
        v93 = 1;
        v90 = v281;
        v92 = v290;
      }

      else
      {
        v252 = &v239;
        MEMORY[0x28223BE20](v80);
        type metadata accessor for WFNetworkListViewController();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v82 = [objc_opt_self() bundleForClass_];
        v83 = sub_274050D68();
        v85 = v84;

        v299 = v83;
        v300 = v85;
        sub_274020248();
        v299 = sub_274051468();
        v300 = v86;
        LOBYTE(v301) = v87 & 1;
        v302 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
        sub_27404DABC();
        v89 = v269;
        sub_274051608();
        v90 = v281;
        v91 = v89;
        v92 = v290;
        (*(v79 + 32))(v281, v91, v290);
        v93 = 0;
      }

      v118 = *(v79 + 56);
      v118(v90, v93, 1, v92);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v299 >> 62)
      {
        v119 = sub_274051A98();
      }

      else
      {
        v119 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v119 < 1)
      {
        v131 = 1;
        v130 = v282;
      }

      else
      {
        MEMORY[0x28223BE20](v120);
        type metadata accessor for WFNetworkListViewController();
        v121 = swift_getObjCClassFromMetadata();
        v122 = [objc_opt_self() bundleForClass_];
        v123 = sub_274050D68();
        v125 = v124;

        v299 = v123;
        v300 = v125;
        v92 = v290;
        sub_274020248();
        v299 = sub_274051468();
        v300 = v126;
        LOBYTE(v301) = v127 & 1;
        v302 = v128;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
        sub_27404DABC();
        v129 = v269;
        sub_2740515F8();
        v130 = v282;
        (*(v278 + 32))(v282, v129, v92);
        v131 = 0;
      }

      v132 = (v118)(v130, v131, 1, v92);
      MEMORY[0x28223BE20](v132);
      v133 = sub_274051118();
      v134 = v243;
      *v243 = v133;
      v134[1] = 0;
      *(v134 + 16) = 1;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935978, &qword_27405B540);
      sub_27404AFAC(v134 + *(v135 + 44));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935980, &qword_27405B548);
      sub_27402179C(&qword_280935988, &qword_2809358C0, &qword_27405B280, MEMORY[0x277CE1138]);
      sub_27402179C(&qword_280935990, &qword_280935980, &qword_27405B548, MEMORY[0x277CE14C0]);
      sub_2740515F8();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v299 >> 62)
      {
        v136 = sub_274051A98();
      }

      else
      {
        v136 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v137 = v256;

      if (v136 < 1)
      {
        v150 = 1;
        v148 = v280;
        v149 = v290;
      }

      else
      {
        MEMORY[0x28223BE20](v138);
        type metadata accessor for WFNetworkListViewController();
        v139 = swift_getObjCClassFromMetadata();
        v140 = [objc_opt_self() bundleForClass_];
        v141 = sub_274050D68();
        v143 = v142;

        v299 = v141;
        v300 = v143;
        sub_274020248();
        v299 = sub_274051468();
        v300 = v144;
        LOBYTE(v301) = v145 & 1;
        v302 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
        sub_27404DABC();
        v147 = v269;
        sub_2740515F8();
        v148 = v280;
        v149 = v290;
        (*(v278 + 32))(v280, v147, v290);
        v150 = 0;
      }

      v118(v148, v150, 1, v149);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v299 >> 62)
      {
        v151 = sub_274051A98();
      }

      else
      {
        v151 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v153 = v284;
      v152 = v285;

      if (v151 < 1)
      {
        v160 = 1;
        v161 = v247;
        v162 = v246;
      }

      else
      {
        MEMORY[0x28223BE20](v154);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        v155 = v300;
        if (v300)
        {
          sub_274020248();
          v156 = sub_274051468();
          v155 = v159 & 1;
        }

        else
        {
          v156 = 0;
          v157 = 0;
          v158 = 0;
        }

        v299 = v156;
        v300 = v157;
        v301 = v155;
        v302 = v158;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809359A0, &qword_27405B5E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
        sub_27404DCD0();
        sub_27404DABC();
        v178 = v242;
        sub_2740515F8();
        v162 = v246;
        v161 = v247;
        (*(v246 + 32))(v153, v178, v247);
        v160 = 0;
      }

      v179 = *(v162 + 56);
      v180 = 1;
      v179(v153, v160, 1, v161);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if ((v299 & 1) == 0)
      {
        MEMORY[0x28223BE20](v181);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935938, &qword_27405B448);
        sub_27402179C(&qword_280935940, &qword_280935938, &qword_27405B448, MEMORY[0x277CDF028]);
        v182 = v248;
        sub_274051618();
        (*(v270 + 32))(v152, v182, v271);
        v180 = 0;
      }

      v183 = 1;
      (*(v270 + 56))(v152, v180, 1, v271);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v185 = v257;
      if ((v299 & 1) == 0)
      {
        MEMORY[0x28223BE20](v184);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935948, &qword_27405B498);
        sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498, MEMORY[0x277CDF068]);
        v186 = v249;
        sub_274051618();
        (*(v137 + 32))(v291, v186, v185);
        v183 = 0;
      }

      v187 = (*(v137 + 56))(v291, v183, 1, v185);
      MEMORY[0x28223BE20](v187);
      sub_2740476EC(&v299);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935998, &qword_27405B5E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809359A0, &qword_27405B5E8);
      sub_27402179C(&qword_2809359A8, &qword_280935998, &qword_27405B5E0, MEMORY[0x277CDF028]);
      sub_27404DCD0();
      v188 = v259;
      v189 = sub_274051628();
      MEMORY[0x28223BE20](v189);
      sub_274047A6C(&v299);
      v190 = v260;
      sub_274051628();
      v191 = v272;
      sub_274021180(v281, v272, &qword_2809358D8, &qword_27405B298);
      sub_274021180(v282, v292, &qword_2809358D8, &qword_27405B298);
      v192 = *(v294 + 16);
      v193 = v254;
      v192(v254, v283, v295);
      sub_274021180(v280, v279, &qword_2809358D8, &qword_27405B298);
      sub_274021180(v284, v255, &qword_2809358B8, &qword_27405B278);
      sub_274021180(v285, v287, &qword_2809358A8, &qword_27405B268);
      sub_274021180(v291, v289, &qword_280935898, &qword_27405B258);
      v293 = *(v296 + 16);
      v293(v258, v188, v286);
      v290 = *(v297 + 16);
      v194 = v250;
      (v290)(v250, v190, v288);
      v195 = v251;
      sub_274021180(v191, v251, &qword_2809358D8, &qword_27405B298);
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809359B8, &qword_27405B5F0);
      sub_274021180(v292, v195 + v196[12], &qword_2809358D8, &qword_27405B298);
      v192((v195 + v196[16]), v193, v295);
      sub_274021180(v279, v195 + v196[20], &qword_2809358D8, &qword_27405B298);
      v197 = v255;
      sub_274021180(v255, v195 + v196[24], &qword_2809358B8, &qword_27405B278);
      v198 = v287;
      sub_274021180(v287, v195 + v196[28], &qword_2809358A8, &qword_27405B268);
      v199 = v289;
      sub_274021180(v289, v195 + v196[32], &qword_280935898, &qword_27405B258);
      v200 = v258;
      v201 = v286;
      v293((v195 + v196[36]), v258, v286);
      v202 = v288;
      (v290)(v195 + v196[40], v194, v288);
      v203 = *(v297 + 8);
      v297 += 8;
      v293 = v203;
      (v203)(v194, v202);
      v204 = *(v296 + 8);
      v296 += 8;
      v204(v200, v201);
      sub_2740211E8(v199, &qword_280935898, &qword_27405B258);
      sub_2740211E8(v198, &qword_2809358A8, &qword_27405B268);
      sub_2740211E8(v197, &qword_2809358B8, &qword_27405B278);
      sub_2740211E8(v279, &qword_2809358D8, &qword_27405B298);
      v205 = *(v294 + 8);
      v294 += 8;
      v205(v254, v295);
      sub_2740211E8(v292, &qword_2809358D8, &qword_27405B298);
      sub_2740211E8(v272, &qword_2809358D8, &qword_27405B298);
      sub_274021180(v195, v266, &qword_280935878, &qword_27405B238);
      swift_storeEnumTagMultiPayload();
      v206 = MEMORY[0x277CE14C0];
      sub_27402179C(&qword_280935960, &qword_280935878, &qword_27405B238, MEMORY[0x277CE14C0]);
      sub_27402179C(&qword_280935968, &qword_280935868, &qword_27405B228, v206);
      v207 = v263;
      sub_2740512B8();
      sub_2740211E8(v195, &qword_280935878, &qword_27405B238);
      (v293)(v260, v288);
      v204(v259, v286);
      v114 = v207;
      sub_2740211E8(v291, &qword_280935898, &qword_27405B258);
      sub_2740211E8(v285, &qword_2809358A8, &qword_27405B268);
      sub_2740211E8(v284, &qword_2809358B8, &qword_27405B278);
      sub_2740211E8(v280, &qword_2809358D8, &qword_27405B298);
      v205(v283, v295);
      sub_2740211E8(v282, &qword_2809358D8, &qword_27405B298);
      v115 = v281;
      v116 = &qword_2809358D8;
      v117 = &qword_27405B298;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v95 = v257;
      v96 = v256;
      if (v299)
      {
        v97 = 1;
        v98 = v271;
        v99 = v270;
        v100 = v253;
      }

      else
      {
        MEMORY[0x28223BE20](v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935938, &qword_27405B448);
        sub_27402179C(&qword_280935940, &qword_280935938, &qword_27405B448, MEMORY[0x277CDF028]);
        v103 = v248;
        sub_274051618();
        v99 = v270;
        v100 = v253;
        v98 = v271;
        (*(v270 + 32))(v253, v103, v271);
        v97 = 0;
      }

      v104 = 1;
      (*(v99 + 56))(v100, v97, 1, v98);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if ((v299 & 1) == 0)
      {
        MEMORY[0x28223BE20](v105);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935948, &qword_27405B498);
        sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498, MEMORY[0x277CDF068]);
        v106 = v249;
        sub_274051618();
        (*(v96 + 32))(v252, v106, v95);
        v104 = 0;
      }

      v107 = v252;
      (*(v96 + 56))(v252, v104, 1, v95);
      v108 = v100;
      v109 = v287;
      sub_274021180(v108, v287, &qword_2809358A8, &qword_27405B268);
      v110 = v289;
      sub_274021180(v107, v289, &qword_280935898, &qword_27405B258);
      v111 = v245;
      sub_274021180(v109, v245, &qword_2809358A8, &qword_27405B268);
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935958, &qword_27405B4A0);
      sub_274021180(v110, v111 + *(v112 + 48), &qword_280935898, &qword_27405B258);
      sub_2740211E8(v110, &qword_280935898, &qword_27405B258);
      sub_2740211E8(v109, &qword_2809358A8, &qword_27405B268);
      sub_274021180(v111, v266, &qword_280935868, &qword_27405B228);
      swift_storeEnumTagMultiPayload();
      v113 = MEMORY[0x277CE14C0];
      sub_27402179C(&qword_280935960, &qword_280935878, &qword_27405B238, MEMORY[0x277CE14C0]);
      sub_27402179C(&qword_280935968, &qword_280935868, &qword_27405B228, v113);
      v114 = v263;
      sub_2740512B8();
      sub_2740211E8(v111, &qword_280935868, &qword_27405B228);
      sub_2740211E8(v107, &qword_280935898, &qword_27405B258);
      v115 = v253;
      v116 = &qword_2809358A8;
      v117 = &qword_27405B268;
    }

    sub_2740211E8(v115, v116, v117);
    v208 = v277;
    v209 = v298;
    v210 = v261;
    sub_274021180(v298, v261, &qword_2809358E8, &qword_27405B2A8);
    v211 = v262;
    sub_274021180(v114, v262, &qword_2809358E0, &qword_27405B2A0);
    v212 = v268;
    sub_274021180(v210, v268, &qword_2809358E8, &qword_27405B2A8);
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935970, &qword_27405B4A8);
    sub_274021180(v211, v212 + *(v213 + 48), &qword_2809358E0, &qword_27405B2A0);
    sub_2740211E8(v211, &qword_2809358E0, &qword_27405B2A0);
    sub_2740211E8(v210, &qword_2809358E8, &qword_27405B2A8);
    sub_274021180(v212, v275, &qword_280935830, &qword_27405B200);
    swift_storeEnumTagMultiPayload();
    v214 = v114;
    v215 = MEMORY[0x277CE14C0];
    sub_27402179C(&qword_280935828, &qword_280935830, &qword_27405B200, MEMORY[0x277CE14C0]);
    sub_27402179C(&qword_280935838, &qword_280935840, &qword_27405B208, v215);
    sub_2740512B8();
    sub_2740211E8(v212, &qword_280935830, &qword_27405B200);
    sub_2740211E8(v214, &qword_2809358E0, &qword_27405B2A0);
    sub_2740211E8(v209, &qword_2809358E8, &qword_27405B2A8);
    v216 = 0;
    v217 = v208;
    goto LABEL_55;
  }

  v240 = v44;
  v241 = v4;
  v71 = sub_274051B08();

  if (v71)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v299)
  {
    v101 = 0x8000000274066070;
  }

  else
  {
    v101 = 0xE800000000000000;
  }

  if (v299 == 1 && 0x8000000274066070 == v101)
  {

    v102 = v278;
  }

  else
  {
    v163 = sub_274051B08();

    v102 = v278;
    if ((v163 & 1) == 0)
    {
      v216 = 1;
      v217 = v277;
      goto LABEL_55;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v299 >> 62)
  {
    v164 = sub_274051A98();
  }

  else
  {
    v164 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v164 < 1)
  {
    v177 = 1;
    v176 = v290;
  }

  else
  {
    MEMORY[0x28223BE20](v165);
    type metadata accessor for WFNetworkListViewController();
    v166 = swift_getObjCClassFromMetadata();
    v167 = [objc_opt_self() bundleForClass_];
    v168 = sub_274050D68();
    v170 = v169;

    v299 = v168;
    v300 = v170;
    sub_274020248();
    v299 = sub_274051468();
    v300 = v171;
    LOBYTE(v301) = v172 & 1;
    v302 = v173;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
    sub_27404DABC();
    v174 = v269;
    sub_2740515F8();
    v175 = v174;
    v176 = v290;
    (*(v102 + 32))(v47, v175, v290);
    v177 = 0;
  }

  v220 = *(v102 + 56);
  v220(v47, v177, 1, v176);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v299 >> 62)
  {
    v221 = sub_274051A98();
  }

  else
  {
    v221 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v221 < 1)
  {
    v233 = 1;
    v232 = v240;
  }

  else
  {
    MEMORY[0x28223BE20](v222);
    type metadata accessor for WFNetworkListViewController();
    v223 = swift_getObjCClassFromMetadata();
    v224 = [objc_opt_self() bundleForClass_];
    v225 = sub_274050D68();
    v227 = v226;

    v299 = v225;
    v300 = v227;
    v176 = v290;
    sub_274020248();
    v299 = sub_274051468();
    v300 = v228;
    LOBYTE(v301) = v229 & 1;
    v302 = v230;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
    sub_27404DABC();
    v231 = v269;
    sub_2740515F8();
    v232 = v240;
    (*(v102 + 32))(v240, v231, v176);
    v233 = 0;
  }

  v220(v232, v233, 1, v176);
  v234 = v272;
  sub_274021180(v47, v272, &qword_2809358D8, &qword_27405B298);
  v235 = v292;
  sub_274021180(v232, v292, &qword_2809358D8, &qword_27405B298);
  v236 = v241;
  sub_274021180(v234, v241, &qword_2809358D8, &qword_27405B298);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F0, &qword_27405B388);
  sub_274021180(v235, v236 + *(v237 + 48), &qword_2809358D8, &qword_27405B298);
  sub_2740211E8(v235, &qword_2809358D8, &qword_27405B298);
  sub_2740211E8(v234, &qword_2809358D8, &qword_27405B298);
  sub_274021180(v236, v275, &qword_280935840, &qword_27405B208);
  swift_storeEnumTagMultiPayload();
  v238 = MEMORY[0x277CE14C0];
  sub_27402179C(&qword_280935828, &qword_280935830, &qword_27405B200, MEMORY[0x277CE14C0]);
  sub_27402179C(&qword_280935838, &qword_280935840, &qword_27405B208, v238);
  v217 = v277;
  sub_2740512B8();
  sub_2740211E8(v236, &qword_280935840, &qword_27405B208);
  sub_2740211E8(v232, &qword_2809358D8, &qword_27405B298);
  sub_2740211E8(v47, &qword_2809358D8, &qword_27405B298);
  v216 = 0;
LABEL_55:
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935820, &qword_27405B1F8);
  return (*(*(v218 - 8) + 56))(v217, v216, 1, v218);
}

uint64_t sub_274045670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_2740456DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NetworkList(0);

  sub_2740516A8();
  sub_274050FD8();
}

uint64_t sub_27404576C@<X0>(uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AC0, &qword_27405B980);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AC8, &qword_27405B988);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v34 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AD0, &qword_27405B990);
  MEMORY[0x28223BE20](v35);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AD8, &qword_27405B998);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AE0, &qword_27405B9A0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AE8, &qword_27405B9A8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v36 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v44 == 1)
  {
    sub_274045DE8(&qword_280935B08, &qword_27405BA48, sub_27404BF88, v15);
    sub_274021180(v15, v12, &qword_280935AE0, &qword_27405B9A0);
    swift_storeEnumTagMultiPayload();
    v21 = MEMORY[0x277CE1138];
    sub_27402179C(&qword_280935AF0, &qword_280935AE0, &qword_27405B9A0, MEMORY[0x277CE1138]);
    sub_27402179C(&qword_280935AF8, &qword_280935AD0, &qword_27405B990, v21);
    sub_2740512B8();
    v22 = v15;
    v23 = &qword_280935AE0;
    v24 = &qword_27405B9A0;
  }

  else
  {
    sub_274045DE8(&qword_280935B68, &qword_27405BB50, sub_27404C96C, v9);
    sub_274021180(v9, v12, &qword_280935AD0, &qword_27405B990);
    swift_storeEnumTagMultiPayload();
    v25 = MEMORY[0x277CE1138];
    sub_27402179C(&qword_280935AF0, &qword_280935AE0, &qword_27405B9A0, MEMORY[0x277CE1138]);
    sub_27402179C(&qword_280935AF8, &qword_280935AD0, &qword_27405B990, v25);
    sub_2740512B8();
    v22 = v9;
    v23 = &qword_280935AD0;
    v24 = &qword_27405B990;
  }

  sub_2740211E8(v22, v23, v24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v26 = v39;
  if (v43 == 1 && (swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , , v42))
  {

    v27 = v34;
    sub_274045F44(v34);
    sub_27404E36C(v27, v26);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v37 + 56))(v26, v28, 1, v38);
  v29 = v36;
  sub_274021180(v20, v36, &qword_280935AE8, &qword_27405B9A8);
  v30 = v40;
  sub_274021180(v26, v40, &qword_280935AC8, &qword_27405B988);
  v31 = v41;
  sub_274021180(v29, v41, &qword_280935AE8, &qword_27405B9A8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B00, &qword_27405B9F8);
  sub_274021180(v30, v31 + *(v32 + 48), &qword_280935AC8, &qword_27405B988);
  sub_2740211E8(v26, &qword_280935AC8, &qword_27405B988);
  sub_2740211E8(v20, &qword_280935AE8, &qword_27405B9A8);
  sub_2740211E8(v30, &qword_280935AC8, &qword_27405B988);
  return sub_2740211E8(v29, &qword_280935AE8, &qword_27405B9A8);
}

uint64_t sub_274045DE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_274050D68();
  v13 = v12;

  *a4 = sub_274051118();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  a3(v4, v11, v13);
}

uint64_t sub_274045F44@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = type metadata accessor for NetworkList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809359D0, qword_27405B678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v9 = v18;
  if (v18)
  {
    sub_27404DECC(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    v12 = sub_27404DF34(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for NetworkList);
    MEMORY[0x28223BE20](v12);
    *(&v17 - 2) = v9;
    *(&v17 - 1) = v1;
    type metadata accessor for NetworkListRowView(0);
    sub_27404E2E4(&qword_2809350A0, type metadata accessor for NetworkListRowView, &protocol conformance descriptor for NetworkListRowView);
    sub_2740515B8();

    v13 = v17;
    (*(v6 + 32))(v17, v8, v5);
    v14 = 0;
    v15 = v13;
  }

  else
  {
    v14 = 1;
    v15 = v17;
  }

  return (*(v6 + 56))(v15, v14, 1, v5);
}

uint64_t sub_274046224@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if ((v22 & 1) == 0)
  {
    sub_27404BC30();
    type metadata accessor for WFNetworkListViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_274050D68();
    v13 = v12;

    *&v22 = v11;
    *(&v22 + 1) = v13;
    sub_274020248();
    v7 = sub_274051468();
    v4 = v7;
    v5 = v8;
    v6 = v14 & 1;
LABEL_5:
    sub_274020AD4(v7, v8, v6);

    sub_2740512B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935080, &qword_2740599D0);
    sub_2740207F8();
    sub_2740512B8();
    sub_27402029C(v4, v5, v6);

    v16 = v22;
    v17 = v23;
    v18 = v24;
    if (v25)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_8;
  }

  if (sub_274025FFC())
  {
    sub_27404B888(&v22);
    v5 = *(&v22 + 1);
    v4 = v22;
    v6 = v23;
    v8 = *(&v22 + 1);
    v7 = v22;
    goto LABEL_5;
  }

  v21 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  result = swift_beginAccess();
  if (*(v3 + v21))
  {
    v16 = 0uLL;
    v20 = -256;
    v17 = 0uLL;
    goto LABEL_9;
  }

  sub_27404BAE8(&v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935080, &qword_2740599D0);
  sub_2740207F8();
  result = sub_2740512B8();
  v16 = v22;
  v17 = v23;
  v18 = v24;
  if (v25)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

LABEL_8:
  v20 = v19 | v18;
LABEL_9:
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_274046540@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809359D0, qword_27405B678);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = v53 - v10;
  v11 = type metadata accessor for NetworkList(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v64 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v53 - v15;
  v17 = type metadata accessor for NetworkListRowView(0);
  v18 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v23 = v53 - v22;
  if (a1)
  {
    v57 = v21;
    v58 = v20;
    v59 = v19;
    v60 = v3;
    v61 = v7;
    v62 = v6;
    v63 = a2;
    sub_27404DECC(v3, v16, type metadata accessor for NetworkList);
    v24 = *(v12 + 80);
    v25 = (v24 + 16) & ~v24;
    v26 = swift_allocObject();
    sub_27404DF34(v16, v26 + v25, type metadata accessor for NetworkList);
    *(v26 + ((v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v68 = 0;
    v54 = a1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
    sub_274051568();
    v55 = v67;
    LOBYTE(v68) = 0;
    sub_274051568();
    v27 = *(&v67 + 1);
    v23[72] = v67;
    *(v23 + 10) = v27;
    v28 = objc_opt_self();
    v29 = [v28 defaultCenter];
    if (qword_280934D80 != -1)
    {
      swift_once();
    }

    v30 = qword_280937200;
    sub_274051938();
    v31 = [v28 defaultCenter];
    if (qword_280934D88 != -1)
    {
      swift_once();
    }

    v53[0] = ~v24;
    v32 = qword_280937208;
    sub_274051938();
    v33 = [v28 defaultCenter];
    v34 = v60;
    v53[1] = v17;
    if (qword_280934D90 != -1)
    {
      swift_once();
    }

    v35 = qword_280937210;
    sub_274051938();
    type metadata accessor for WFNetworkRowConfigModel(0);
    sub_27404E2E4(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel, &protocol conformance descriptor for WFNetworkRowConfigModel);
    v36 = v54;
    *v23 = sub_274050F88();
    *(v23 + 1) = v37;
    v68 = 0;
    sub_274051568();
    swift_unknownObjectRelease();

    *(v23 + 1) = v67;
    *(v23 + 4) = sub_27404DEC4;
    *(v23 + 5) = v26;
    v38 = OBJC_IVAR___WFNetworkRowConfig_context;
    swift_beginAccess();
    v39 = *&v36[v38];

    v40 = -4.0;
    if (!v39)
    {
      v40 = 0.0;
    }

    *(v23 + 6) = v40;
    *(v23 + 7) = 0;
    *(v23 + 8) = 0;
    v41 = v59;
    sub_27404DECC(v23, v59, type metadata accessor for NetworkListRowView);
    v42 = v64;
    sub_27404DECC(v34, v64, type metadata accessor for NetworkList);
    v43 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v44 = (v58 + v24 + v43) & v53[0];
    v45 = swift_allocObject();
    *(v45 + 16) = v36;
    sub_27404DF34(v41, v45 + v43, type metadata accessor for NetworkListRowView);
    v46 = sub_27404DF34(v42, v45 + v44, type metadata accessor for NetworkList);
    MEMORY[0x28223BE20](v46);
    v53[-2] = v23;
    sub_27404E2E4(&qword_2809350A0, type metadata accessor for NetworkListRowView, &protocol conformance descriptor for NetworkListRowView);
    v47 = v36;
    v48 = v66;
    sub_2740515B8();
    v50 = v61;
    v49 = v62;
    (*(v61 + 16))(v65, v48, v62);
    sub_27402179C(&qword_2809359E0, &unk_2809359D0, qword_27405B678, MEMORY[0x277CDF028]);
    v51 = sub_2740515D8();

    (*(v50 + 8))(v48, v49);
    *v63 = v51;
    return sub_27404E0A0(v23);
  }

  else
  {
    result = sub_2740515D8();
    *a2 = result;
  }

  return result;
}

uint64_t sub_274046CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for NetworkList(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  swift_getKeyPath();
  sub_27404DECC(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_27404DF34(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for NetworkList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_27402179C(&qword_2809359C8, &qword_280935540, &qword_27405A4B0, MEMORY[0x277D83980]);
  return sub_2740515E8();
}

uint64_t sub_274046EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A78, &qword_27405B8D8);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = v33 - v6;
  v7 = type metadata accessor for NetworkList(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A80, &qword_27405B8E0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v35 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = v33 - v14;
  v34 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v33[1] = swift_getKeyPath();
  sub_27404DECC(a1, v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_27404DF34(v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for NetworkList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_27402179C(&qword_2809359C8, &qword_280935540, &qword_27405A4B0, MEMORY[0x277D83980]);
  v17 = v41;
  sub_2740515E8();
  v18 = sub_274051668();
  v19 = (v17 + *(v11 + 44));
  v20 = v17;
  *v19 = v18;
  v19[1] = 1;
  v21 = v34;
  sub_27404DECC(v34, v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v22 = swift_allocObject();
  sub_27404DF34(v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v15, type metadata accessor for NetworkList);
  v42 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A88, &qword_27405B930);
  sub_27402179C(&qword_280935A90, &qword_280935A88, &qword_27405B930, MEMORY[0x277CE1138]);
  v23 = v36;
  sub_2740515B8();
  v24 = v35;
  sub_274021180(v20, v35, &qword_280935A80, &qword_27405B8E0);
  v26 = v37;
  v25 = v38;
  v27 = *(v38 + 16);
  v28 = v39;
  v27(v37, v23, v39);
  v29 = v40;
  sub_274021180(v24, v40, &qword_280935A80, &qword_27405B8E0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A98, &qword_27405B938);
  v27((v29 + *(v30 + 48)), v26, v28);
  v31 = *(v25 + 8);
  v31(v23, v28);
  sub_2740211E8(v41, &qword_280935A80, &qword_27405B8E0);
  v31(v26, v28);
  return sub_2740211E8(v24, &qword_280935A80, &qword_27405B8E0);
}

uint64_t sub_2740473B8(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27404DECC(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NetworkList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27404DF34(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for NetworkList);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AA8, &qword_27405B970);
  sub_27402179C(&qword_280935AB0, &qword_280935AA8, &qword_27405B970, MEMORY[0x277CE1138]);
  return sub_2740515B8();
}

uint64_t sub_274047550()
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  type metadata accessor for NetworkListConfigDataSource(0);
  sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource, &protocol conformance descriptor for NetworkListConfigDataSource);
  v2 = sub_274050F98();
  swift_getKeyPath();
  sub_274050FA8();

  sub_274020248();
  return sub_2740515C8();
}

uint64_t sub_2740476EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  result = swift_beginAccess();
  if (*(v3 + v4) != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , result = , v24 == -1))
  {
    v16 = 0;
    v18 = 0;
    v23 = 0;
    v22 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    sub_27404BDAC(v24);
    sub_274020248();
    v6 = sub_274051468();
    v8 = v7;
    v10 = v9;
    sub_274051528();
    v11 = sub_274051428();
    v13 = v12;
    v15 = v14;

    sub_27402029C(v6, v8, v10 & 1);

    sub_2740513D8();
    v16 = sub_274051448();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_27402029C(v11, v13, v15 & 1);

    v23 = v20 & 1;
  }

  *a1 = v16;
  a1[1] = v18;
  a1[2] = v23;
  a1[3] = v22;
  return result;
}

uint64_t sub_2740478E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NetworkList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_27404DECC(a1, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NetworkList);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_27404DF34(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for NetworkList);
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809359E8, &qword_27405B728);
  sub_27402179C(&qword_2809359F0, &qword_2809359E8, &qword_27405B728, MEMORY[0x277CE1138]);
  return sub_2740515B8();
}

uint64_t sub_274047A6C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  sub_274020248();
  v4 = sub_274051468();
  v6 = v5;
  v8 = v7;
  sub_274051528();
  v9 = sub_274051428();
  v11 = v10;
  v13 = v12;

  sub_27402029C(v4, v6, v8 & 1);

  sub_2740513D8();
  v14 = sub_274051448();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_27402029C(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_274047C6C(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v9 = a1;
  v10 = sub_27404149C(sub_27404E528, v8, v10);
  swift_getKeyPath();
  sub_27404DECC(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NetworkList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27404DF34(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for NetworkList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_27402179C(&qword_2809359C8, &qword_280935540, &qword_27405A4B0, MEMORY[0x277D83980]);
  return sub_2740515E8();
}

uint64_t sub_274047E94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for NetworkList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - v10;
  v12 = type metadata accessor for NetworkListRowView(0);
  MEMORY[0x28223BE20](v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B88, &qword_27405BB70);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  if (a1)
  {
    v45 = v19;
    v46 = v42 - v18;
    v47 = v17;
    v48 = a2;
    v42[1] = v12;
    sub_27404DECC(v2, v11, type metadata accessor for NetworkList);
    v20 = *(v6 + 80);
    v21 = (v20 + 16) & ~v20;
    v42[0] = v14;
    v22 = swift_allocObject();
    sub_27404DF34(v11, v22 + v21, type metadata accessor for NetworkList);
    *(v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v23 = v22;
    sub_27404DECC(v2, v9, type metadata accessor for NetworkList);
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    sub_27404DF34(v9, v24 + ((v20 + 24) & ~v20), type metadata accessor for NetworkList);
    v50 = 0;
    v43 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
    sub_274051568();
    v44 = v49;
    LOBYTE(v50) = 0;
    sub_274051568();
    v25 = *(&v49 + 1);
    v26 = v42[0];
    *(v42[0] + 72) = v49;
    *(v26 + 80) = v25;
    v27 = objc_opt_self();
    v28 = [v27 defaultCenter];
    if (qword_280934D80 != -1)
    {
      swift_once();
    }

    v29 = qword_280937200;
    sub_274051938();
    v30 = [v27 defaultCenter];
    if (qword_280934D88 != -1)
    {
      swift_once();
    }

    v31 = qword_280937208;
    sub_274051938();
    v32 = [v27 defaultCenter];
    a2 = v48;
    if (qword_280934D90 != -1)
    {
      swift_once();
    }

    v33 = qword_280937210;
    sub_274051938();
    type metadata accessor for WFNetworkRowConfigModel(0);
    sub_27404E2E4(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel, &protocol conformance descriptor for WFNetworkRowConfigModel);
    v34 = v43;
    *v26 = sub_274050F88();
    *(v26 + 8) = v35;
    v50 = 0;
    sub_274051568();
    swift_unknownObjectRelease();

    *(v26 + 16) = v49;
    *(v26 + 32) = sub_27404E674;
    *(v26 + 40) = v23;
    v36 = OBJC_IVAR___WFNetworkRowConfig_context;
    swift_beginAccess();
    v37 = *&v34[v36];

    v38 = -4.0;
    if (!v37)
    {
      v38 = 0.0;
    }

    *(v26 + 48) = v38;
    *(v26 + 56) = sub_27404E70C;
    *(v26 + 64) = v24;
    v39 = v46;
    sub_27404DECC(v26, v46, type metadata accessor for NetworkListRowView);
    *(v39 + *(v47 + 36)) = 0;
    sub_27404E0A0(v26);
    sub_274021180(v39, v45, &qword_280935B88, &qword_27405BB70);
    sub_27404E770();
    v40 = sub_2740515D8();

    result = sub_2740211E8(v39, &qword_280935B88, &qword_27405BB70);
  }

  else
  {
    result = sub_2740515D8();
    v40 = result;
  }

  *a2 = v40;
  return result;
}

uint64_t sub_27404845C(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v9 = a1;
  v10 = sub_27404149C(sub_27404E9F0, v8, v10);
  swift_getKeyPath();
  sub_27404DECC(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NetworkList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27404DF34(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for NetworkList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_27402179C(&qword_2809359C8, &qword_280935540, &qword_27405A4B0, MEMORY[0x277D83980]);
  return sub_2740515E8();
}

uint64_t sub_274048684(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
LABEL_35:
    v5 = sub_274051A98();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v20 = v5;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743E3810](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      v9 = [v7 ssid];
      if (v9)
      {
        v10 = v9;
        v11 = sub_2740517D8();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v14 = v21;
      if (v21)
      {
        v15 = [v21 ssid];
        swift_unknownObjectRelease();
        if (v15)
        {
          v14 = sub_2740517D8();
          v17 = v16;

          if (!v13)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0;
          v17 = 0;
          if (!v13)
          {
LABEL_5:
            swift_unknownObjectRelease();
            if (!v17)
            {
              goto LABEL_31;
            }

            goto LABEL_6;
          }
        }
      }

      else
      {
        v17 = 0;
        if (!v13)
        {
          goto LABEL_5;
        }
      }

      if (!v17)
      {
        swift_unknownObjectRelease();
LABEL_6:

        goto LABEL_7;
      }

      if (v11 == v14 && v13 == v17)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      v18 = sub_274051B08();

      swift_unknownObjectRelease();
      if (v18)
      {
LABEL_31:

        return 0;
      }

LABEL_7:
      ++v6;
    }

    while (v8 != v20);
  }

  return 1;
}

uint64_t sub_274048944(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v5 = sub_274050E28();
  __swift_project_value_buffer(v5, qword_280937140);
  v6 = a1;
  v7 = sub_274050E08();
  v8 = sub_2740518B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2740310C4(0xD000000000000020, 0x8000000274067220, v25);
    *(v9 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (v24 && (v11 = [v24 ssid], swift_unknownObjectRelease(), v11))
    {
      v12 = sub_2740517D8();
      v14 = v13;

      v15 = v12;
    }

    else
    {
      v15 = 0;
      v14 = 0xE000000000000000;
    }

    v16 = sub_2740310C4(v15, v14, v25);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_273FB9000, v7, v8, "%s: Tapped on %s!", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v10, -1, -1);
    MEMORY[0x2743E44F0](v9, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (!v25[0])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (v25[0])
    {
      v18 = [v25[0] isInstantHotspot];
      swift_unknownObjectRelease();
      if (v18)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        sub_274035324(v25[0]);
        swift_unknownObjectRelease();
      }
    }

    v19 = [objc_opt_self() defaultCenter];
    if (qword_280934D98 != -1)
    {
      swift_once();
    }

    [v19 postNotificationName:qword_280937218 object:0 userInfo:0];

    v20 = *(a3 + 8);
    sub_27402F910();
    v21 = v20 + OBJC_IVAR___WFNetworkListDataSource_associationHandler;
    result = swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = *(v21 + 8);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_274050E68();

      v22();
      sub_273FBD2BC(v22, v23);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_274048DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8) + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler;
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    v6(v8, a3);
    sub_273FBD2BC(v6, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_274048E94(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v2)
  {
    sub_27402D6C4(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_274048F28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v5 = type metadata accessor for NetworkList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_27404DECC(a2, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_27404DF34(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for NetworkList);
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274051568();
  LOBYTE(v26) = 0;
  sub_274051568();
  v10 = *(&v25 + 1);
  *(a3 + 72) = v25;
  *(a3 + 80) = v10;
  type metadata accessor for NetworkListRowView(0);
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  if (qword_280934D80 != -1)
  {
    swift_once();
  }

  v13 = qword_280937200;
  sub_274051938();
  v14 = [v11 defaultCenter];
  if (qword_280934D88 != -1)
  {
    swift_once();
  }

  v15 = qword_280937208;
  sub_274051938();
  v16 = [v11 defaultCenter];
  if (qword_280934D90 != -1)
  {
    swift_once();
  }

  v17 = qword_280937210;
  sub_274051938();
  type metadata accessor for WFNetworkRowConfigModel(0);
  sub_27404E2E4(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel, &protocol conformance descriptor for WFNetworkRowConfigModel);
  v18 = v24;
  *a3 = sub_274050F88();
  *(a3 + 8) = v19;
  v26 = 0;
  sub_274051568();
  swift_unknownObjectRelease();

  *(a3 + 16) = v25;
  *(a3 + 32) = sub_27404E524;
  *(a3 + 40) = v9;
  v20 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  v22 = -4.0;
  if (!*&v18[v20])
  {
    v22 = 0.0;
  }

  *(a3 + 48) = v22;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

uint64_t sub_2740492D4(uint64_t a1)
{
  v1 = *(a1 + 8) + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    v3(v5, 1);
    sub_273FBD2BC(v3, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2740493B4(uint64_t a1)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v2 = sub_274050E28();
  __swift_project_value_buffer(v2, qword_280937140);
  v3 = sub_274050E08();
  v4 = sub_2740518B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2740310C4(0x6761735561746164, 0xEC000000776F5265, v12);
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: Tapped on date usage row", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743E44F0](v6, -1, -1);
    MEMORY[0x2743E44F0](v5, -1, -1);
  }

  v7 = *(a1 + 24) + OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v9(v11);
    return sub_273FBD2BC(v9, v10);
  }

  return result;
}

double sub_27404954C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_274051118();
  v16 = 1;
  sub_274049694(&v10);
  v19 = v12;
  v20 = v13;
  v21[0] = v14[0];
  *(v21 + 9) = *(v14 + 9);
  v17 = v10;
  v18 = v11;
  *(v23 + 9) = *(v14 + 9);
  v22[2] = v12;
  v22[3] = v13;
  v23[0] = v14[0];
  v22[0] = v10;
  v22[1] = v11;
  sub_274021180(&v17, &v9, &qword_280935AB8, &qword_27405B978);
  sub_2740211E8(v22, &qword_280935AB8, &qword_27405B978);
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21[0];
  *&v15[80] = *(v21 + 9);
  *&v15[7] = v17;
  *&v15[23] = v18;
  v4 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v4;
  v5 = *&v15[80];
  *(a2 + 81) = *&v15[64];
  *(a2 + 97) = v5;
  result = *&v15[16];
  v7 = *v15;
  *(a2 + 33) = *&v15[16];
  v8 = v16;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_274049694@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_274050D68();
  v6 = v5;

  v25 = v4;
  v26 = v6;
  sub_274020248();
  v7 = sub_274051468();
  v9 = v8;
  v11 = v10;
  sub_274051518();
  v24 = sub_274051428();
  v13 = v12;
  LOBYTE(v3) = v14;
  v16 = v15;

  sub_27402029C(v7, v9, v11 & 1);

  sub_2740498B4(&v25);
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  LOBYTE(v3) = v3 & 1;
  LOBYTE(v25) = v3;
  v22 = v30;
  *a1 = v24;
  *(a1 + 8) = v13;
  *(a1 + 16) = v3;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  sub_274020AD4(v24, v13, v3);

  sub_27404E15C(v17, v18, v19, v20, v21);
  sub_27404E1C4(v17, v18, v19, v20, v21);
  sub_27402029C(v24, v13, v3);
}

double sub_2740498B4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_274050D98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274050DB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274050D78();
  sub_274050DA8();
  (*(v7 + 8))(v9, v6);
  v10 = sub_274050D88();
  (*(v3 + 8))(v5, v2);
  if (v10 == 1)
  {
    v11 = sub_274051558();
    v12 = sub_274051528();
    KeyPath = swift_getKeyPath();
    v14 = sub_2740513D8();
    v15 = swift_getKeyPath();
    v25 = v11;
    v26 = KeyPath;
    v27 = v12;
    v28 = v15;
    v29 = v14;
    v30 = 0;
  }

  else
  {
    v16 = sub_274051558();
    v17 = sub_274051528();
    v18 = swift_getKeyPath();
    v19 = sub_2740513D8();
    v20 = swift_getKeyPath();
    v25 = v16;
    v26 = v18;
    v27 = v17;
    v28 = v20;
    v29 = v19;
    v30 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A00, &unk_27405AD60);
  sub_27403C98C();
  sub_2740512B8();
  result = *&v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  *a1 = v31;
  *(a1 + 16) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = v24;
  return result;
}

uint64_t sub_274049B4C(uint64_t a1)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v2 = sub_274050E28();
  __swift_project_value_buffer(v2, qword_280937140);
  v3 = sub_274050E08();
  v4 = sub_2740518B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2740310C4(0x696F4A6F546B7361, 0xEC000000776F526ELL, v11);
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: Tapped on ask to join row", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743E44F0](v6, -1, -1);
    MEMORY[0x2743E44F0](v5, -1, -1);
  }

  v7 = *(a1 + 24) + OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    v9();
    return sub_273FBD2BC(v9, v10);
  }

  return result;
}

uint64_t sub_274049D30@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_274050D68();

  v42 = v5;
  sub_274020248();
  v6 = sub_274051468();
  v8 = v7;
  v10 = v9;
  sub_274051518();
  v11 = sub_274051428();
  v39 = v12;
  v40 = v11;
  v38 = v13;
  v41 = v14;

  sub_27402029C(v6, v8, v10 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v42 = sub_27404A064(v42);
  v43 = v15;
  v16 = sub_274051468();
  v18 = v17;
  v20 = v19;
  sub_274051528();
  v21 = sub_274051428();
  v36 = v22;
  v37 = v21;
  v24 = v23;
  v26 = v25;

  sub_27402029C(v16, v18, v20 & 1);

  sub_2740498B4(&v42);
  v27 = v42;
  v28 = v43;
  v30 = v44;
  v29 = v45;
  v34 = v45;
  v35 = v42;
  v31 = v46;
  LOBYTE(v42) = v38 & 1;
  v32 = v47;
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v38 & 1;
  *(a2 + 24) = v41;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v37;
  *(a2 + 56) = v36;
  *(a2 + 64) = v24 & 1;
  *(a2 + 72) = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = v28;
  *(a2 + 96) = v30;
  *(a2 + 104) = v29;
  *(a2 + 112) = v31;
  *(a2 + 120) = v32;
  sub_274020AD4(v40, v39, v38 & 1);

  sub_274020AD4(v37, v36, v24 & 1);

  sub_27404E15C(v35, v28, v30, v34, v31);
  sub_27404E1C4(v35, v28, v30, v34, v31);
  sub_27402029C(v37, v36, v24 & 1);

  sub_27402029C(v40, v39, v42);
}

uint64_t sub_27404A064(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_274050D68();

  return v3;
}

uint64_t sub_27404A240(uint64_t a1)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v2 = sub_274050E28();
  __swift_project_value_buffer(v2, qword_280937140);
  v3 = sub_274050E08();
  v4 = sub_2740518B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2740310C4(0xD000000000000015, 0x8000000274067410, v11);
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: Tapped on auto instant hotspot row", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743E44F0](v6, -1, -1);
    MEMORY[0x2743E44F0](v5, -1, -1);
  }

  v7 = *(a1 + 24) + OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    v9();
    return sub_273FBD2BC(v9, v10);
  }

  return result;
}

double sub_27404A420@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_274051118();
  v22 = 1;
  a2(&v14, a1);
  v27 = v18;
  v28 = v19;
  v29[0] = v20[0];
  *(v29 + 9) = *(v20 + 9);
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v30[0] = v14;
  v30[1] = v15;
  v30[2] = v16;
  v30[3] = v17;
  v30[4] = v18;
  v30[5] = v19;
  v31[0] = v20[0];
  *(v31 + 9) = *(v20 + 9);
  sub_274021180(&v23, &v13, &qword_2809359F8, &qword_27405B730);
  sub_2740211E8(v30, &qword_2809359F8, &qword_27405B730);
  *(&v21[4] + 7) = v27;
  *(&v21[5] + 7) = v28;
  *(&v21[6] + 7) = v29[0];
  v21[7] = *(v29 + 9);
  *(v21 + 7) = v23;
  *(&v21[1] + 7) = v24;
  *(&v21[2] + 7) = v25;
  *(&v21[3] + 7) = v26;
  v7 = v21[5];
  *(a3 + 81) = v21[4];
  *(a3 + 97) = v7;
  v8 = v21[7];
  *(a3 + 113) = v21[6];
  *(a3 + 129) = v8;
  v9 = v21[1];
  *(a3 + 17) = v21[0];
  *(a3 + 33) = v9;
  result = *&v21[2];
  v11 = v21[3];
  *(a3 + 49) = v21[2];
  v12 = v22;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 65) = v11;
  return result;
}

uint64_t sub_27404A5B0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_274050D68();

  v42 = v5;
  sub_274020248();
  v6 = sub_274051468();
  v8 = v7;
  v10 = v9;
  sub_274051518();
  v11 = sub_274051428();
  v39 = v12;
  v40 = v11;
  v38 = v13;
  v41 = v14;

  sub_27402029C(v6, v8, v10 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v42 = sub_27404A8E0(v42);
  v43 = v15;
  v16 = sub_274051468();
  v18 = v17;
  v20 = v19;
  sub_274051528();
  v21 = sub_274051428();
  v36 = v22;
  v37 = v21;
  v24 = v23;
  v26 = v25;

  sub_27402029C(v16, v18, v20 & 1);

  sub_2740498B4(&v42);
  v27 = v42;
  v28 = v43;
  v30 = v44;
  v29 = v45;
  v34 = v45;
  v35 = v42;
  v31 = v46;
  LOBYTE(v42) = v38 & 1;
  v32 = v47;
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v38 & 1;
  *(a2 + 24) = v41;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v37;
  *(a2 + 56) = v36;
  *(a2 + 64) = v24 & 1;
  *(a2 + 72) = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = v28;
  *(a2 + 96) = v30;
  *(a2 + 104) = v29;
  *(a2 + 112) = v31;
  *(a2 + 120) = v32;
  sub_274020AD4(v40, v39, v38 & 1);

  sub_274020AD4(v37, v36, v24 & 1);

  sub_27404E15C(v35, v28, v30, v34, v31);
  sub_27404E1C4(v35, v28, v30, v34, v31);
  sub_27402029C(v37, v36, v24 & 1);

  sub_27402029C(v40, v39, v42);
}

uint64_t sub_27404A8E0(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_274050D68();

  return v3;
}

uint64_t sub_27404AAD0(uint64_t a1)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v2 = sub_274050E28();
  __swift_project_value_buffer(v2, qword_280937140);
  v3 = sub_274050E08();
  v4 = sub_2740518B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2740310C4(0x74654E726568746FLL, 0xEF776F526B726F77, v12);
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: Tapped on other network row", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743E44F0](v6, -1, -1);
    MEMORY[0x2743E44F0](v5, -1, -1);
  }

  v7 = *(a1 + 8) + OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v9(v11);
    return sub_273FBD2BC(v9, v10);
  }

  return result;
}

double sub_27404AC6C@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  v5 = sub_274051118();
  v19 = 1;
  sub_27404AE70(&v12);
  v24 = v16;
  v25[0] = v17[0];
  *(v25 + 9) = *(v17 + 9);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v26[0] = v12;
  v26[1] = v13;
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v27[0] = v17[0];
  *(v27 + 9) = *(v17 + 9);
  sub_274021180(&v20, &v11, &qword_280935AA0, &qword_27405B940);
  sub_2740211E8(v26, &qword_280935AA0, &qword_27405B940);

  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25[0];
  *&v18[96] = *(v25 + 9);
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v6 = *&v18[32];
  *(a2 + 65) = *&v18[48];
  v7 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v7;
  *(a2 + 113) = *&v18[96];
  result = *v18;
  v9 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v9;
  v10 = v19;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 49) = v6;
  return result;
}

uint64_t sub_27404AE70@<X0>(uint64_t a4@<X8>)
{
  sub_274051638();
  sub_274050F38();
  sub_274020248();

  v5 = sub_274051468();
  v7 = v6;
  v8 = v5;
  v10 = v9 & 1;
  *a4 = 0;
  *(a4 + 8) = 1;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  *(a4 + 40) = v16;
  *(a4 + 48) = v17;
  *(a4 + 56) = v18;
  *(a4 + 64) = v5;
  *(a4 + 72) = v6;
  *(a4 + 80) = v9 & 1;
  *(a4 + 88) = v11;
  *(a4 + 96) = 0;
  *(a4 + 104) = 1;
  sub_274020AD4(v5, v6, v9 & 1);

  sub_27402029C(v8, v7, v10);
}

uint64_t sub_27404AFAC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A30, &qword_27405B828);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = (&v54 - v5);
  v6 = sub_2740512F8();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356B8, &unk_27405B830);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A40, &unk_27405ACC0);
  v11 = MEMORY[0x28223BE20](v62);
  v69 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A48, &qword_27405B840);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v73 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v54 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v77 >> 62)
  {
    v18 = sub_274051A98();
  }

  else
  {
    v18 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 <= 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (v77 >> 62)
    {
      sub_274051A98();
    }
  }

  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_274050D68();
  v23 = v22;

  v77 = v21;
  v78 = v23;
  sub_274020248();
  v24 = sub_274051468();
  v26 = v25;
  v71 = v27;
  v29 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v77 == 1)
  {
    sub_274051638();
    sub_274050F38();
    v58 = v77;
    v57 = v79;
    v56 = v81;
    v55 = v82;
    v76 = 1;
    v75 = v78;
    v74 = v80;
    v59 = v26;
    v30 = v10;
    sub_274050EF8();
    v31 = v66;
    sub_2740512E8();
    sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830, MEMORY[0x277CDD7F8]);
    sub_27404E2E4(&qword_280935A60, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v60 = v24;
    v32 = v63;
    v33 = v65;
    v61 = v29;
    v34 = v68;
    sub_274051498();
    (*(v67 + 8))(v31, v34);
    (*(v64 + 8))(v30, v33);
    v35 = (v32 + *(v62 + 36));
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935270, &qword_274059CC0) + 28);
    v37 = *MEMORY[0x277CDF438];
    v38 = sub_274050ED8();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    LOBYTE(v36) = v76;
    v68 = v3;
    v39 = v75;
    v40 = v4;
    v41 = a2;
    v42 = v74;
    v43 = v69;
    sub_274021180(v32, v69, &qword_280935A40, &unk_27405ACC0);
    v44 = v70;
    *v70 = 0;
    *(v44 + 8) = v36;
    v44[2] = v58;
    *(v44 + 24) = v39;
    v44[4] = v57;
    *(v44 + 40) = v42;
    a2 = v41;
    v45 = v55;
    v44[6] = v56;
    v44[7] = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A70, &qword_27405B8D0);
    sub_274021180(v43, v44 + *(v46 + 48), &qword_280935A40, &unk_27405ACC0);
    v47 = v32;
    v24 = v60;
    sub_2740211E8(v47, &qword_280935A40, &unk_27405ACC0);
    sub_2740211E8(v43, &qword_280935A40, &unk_27405ACC0);
    v48 = v44;
    v29 = v61;
    v49 = v72;
    sub_273FBD094(v48, v72);
    (*(v40 + 56))(v49, 0, 1, v68);
    v26 = v59;
  }

  else
  {
    v49 = v72;
    (*(v4 + 56))(v72, 1, 1, v3);
  }

  v50 = v73;
  sub_274021180(v49, v73, &qword_280935A48, &qword_27405B840);
  *a2 = v24;
  *(a2 + 8) = v26;
  v51 = v71 & 1;
  *(a2 + 16) = v71 & 1;
  *(a2 + 24) = v29;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A50, &unk_27405B890);
  sub_274021180(v50, a2 + *(v52 + 48), &qword_280935A48, &qword_27405B840);
  sub_274020AD4(v24, v26, v51);

  sub_2740211E8(v49, &qword_280935A48, &qword_27405B840);
  sub_2740211E8(v50, &qword_280935A48, &qword_27405B840);
  sub_27402029C(v24, v26, v51);
}

uint64_t sub_27404B888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274051158();
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_274050D68();

  sub_274051148();
  sub_274051138();
  v6 = [v4 bundleForClass_];
  sub_274050D68();

  sub_274051128();

  sub_274051138();
  sub_274051128();

  sub_274051138();
  sub_274051178();
  result = sub_274051458();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_27404BAE8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  sub_274020248();
  result = sub_274051468();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_27404BC30()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled;
  swift_beginAccess();
  v7 = 0xD00000000000001DLL;
  if (v3)
  {
    v7 = 0xD00000000000001FLL;
  }

  v8 = 0xD000000000000025;
  if (v3)
  {
    v8 = 0xD000000000000027;
  }

  if (v5)
  {
    v7 = v8;
  }

  v9 = 0xD000000000000029;
  if (!v3)
  {
    v9 = 0xD000000000000027;
  }

  v10 = 0xD00000000000002FLL;
  if (v3)
  {
    v10 = 0xD000000000000031;
  }

  if (v5)
  {
    v9 = v10;
  }

  if (*(v1 + v6) == 1)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_27404BDAC(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_274050D68();

  return v3;
}

uint64_t sub_27404BF88@<X0>(void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = a3;
  v60 = a2;
  v62 = a4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B10, &qword_27405BA50);
  MEMORY[0x28223BE20](v59);
  v58 = &v51 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B18, &qword_27405BA58);
  MEMORY[0x28223BE20](v68);
  v70 = &v51 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B20, &qword_27405BA60);
  MEMORY[0x28223BE20](v69);
  v7 = &v51 - v6;
  v55 = sub_2740512F8();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356B8, &unk_27405B830);
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B28, &qword_27405BA68);
  v56 = *(v57 - 8);
  v13 = MEMORY[0x28223BE20](v57);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B30, &qword_27405BA70);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v67 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = &v51 - v21;
  sub_274051638();
  sub_274050F38();
  v65 = v78;
  v66 = v76;
  v64 = v80;
  v63 = v81;
  v84 = 1;
  v83 = v77;
  v82 = v79;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v72 == 2)
  {
    v72 = v60;
    v73 = v61;
    sub_274020248();

    v22 = sub_274051468();
    v24 = v23;
    LODWORD(v60) = v25;
    v61 = v26;
    sub_274050EF8();
    sub_2740512E8();
    sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830, MEMORY[0x277CDD7F8]);
    sub_27404E2E4(&qword_280935A60, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v27 = v15;
    v28 = v17;
    v52 = v17;
    v29 = v55;
    sub_274051498();
    (*(v54 + 8))(v9, v29);
    (*(v53 + 8))(v12, v10);
    v30 = v56;
    v31 = *(v56 + 16);
    v32 = v57;
    v31(v27, v28, v57);
    *v7 = v22;
    *(v7 + 1) = v24;
    v33 = v60 & 1;
    v7[16] = v60 & 1;
    *(v7 + 3) = v61;
    *(v7 + 4) = 0;
    v7[40] = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B60, &qword_27405BB00);
    v31(&v7[*(v34 + 64)], v27, v32);
    sub_274020AD4(v22, v24, v33);

    sub_274020AD4(v22, v24, v33);
    v60 = *(v30 + 8);
    v35 = v60;

    v35(v27, v32);
    sub_27402029C(v22, v24, v33);

    sub_274021180(v7, v70, &qword_280935B20, &qword_27405BA60);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935B38, &qword_280935B20, &qword_27405BA60, MEMORY[0x277CE14C0]);
    sub_27404E3E4();
    sub_2740512B8();
    sub_27402029C(v22, v24, v33);

    sub_2740211E8(v7, &qword_280935B20, &qword_27405BA60);
    v60(v52, v32);
  }

  else
  {
    v74 = v60;
    v75 = v61;
    type metadata accessor for NetworkListConfigDataSource(0);
    sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource, &protocol conformance descriptor for NetworkListConfigDataSource);

    v36 = sub_274050F98();
    swift_getKeyPath();
    sub_274050FA8();

    sub_274020248();
    v37 = v58;
    sub_2740515C8();
    KeyPath = swift_getKeyPath();
    v39 = swift_allocObject();
    *(v39 + 16) = 1;
    v40 = (v37 + *(v59 + 36));
    *v40 = KeyPath;
    v40[1] = sub_27404E3DC;
    v40[2] = v39;
    sub_274021180(v37, v70, &qword_280935B10, &qword_27405BA50);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935B38, &qword_280935B20, &qword_27405BA60, MEMORY[0x277CE14C0]);
    sub_27404E3E4();
    sub_2740512B8();
    sub_2740211E8(v37, &qword_280935B10, &qword_27405BA50);
  }

  v41 = v84;
  v42 = v83;
  v43 = v82;
  v44 = v71;
  v45 = v67;
  sub_274021180(v71, v67, &qword_280935B30, &qword_27405BA70);
  v46 = v62;
  *v62 = 0;
  *(v46 + 8) = v41;
  v47 = v65;
  v46[2] = v66;
  *(v46 + 24) = v42;
  v46[4] = v47;
  *(v46 + 40) = v43;
  v48 = v63;
  v46[6] = v64;
  v46[7] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B58, &qword_27405BAF8);
  sub_274021180(v45, v46 + *(v49 + 48), &qword_280935B30, &qword_27405BA70);
  sub_2740211E8(v44, &qword_280935B30, &qword_27405BA70);
  return sub_2740211E8(v45, &qword_280935B30, &qword_27405BA70);
}

uint64_t sub_27404C96C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v59 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935948, &qword_27405B498);
  v55 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v57 = &v50 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B70, &qword_27405BB58);
  MEMORY[0x28223BE20](v64);
  v67 = &v50 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B20, &qword_27405BA60);
  MEMORY[0x28223BE20](v66);
  v8 = (&v50 - v7);
  v54 = sub_2740512F8();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356B8, &unk_27405B830);
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B28, &qword_27405BA68);
  v69 = *(v56 - 8);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B78, &qword_27405BB60);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v65 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v50 - v21;
  sub_274051638();
  sub_274050F38();
  v63 = v75;
  v62 = v77;
  v61 = v79;
  v60 = v80;
  v83 = 1;
  v82 = v76;
  v81 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v71 == 2)
  {
    v71 = v59;
    v72 = v58;
    sub_274020248();

    v22 = sub_274051468();
    v59 = v23;
    LODWORD(v57) = v24;
    v58 = v25;
    sub_274050EF8();
    sub_2740512E8();
    sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830, MEMORY[0x277CDD7F8]);
    sub_27404E2E4(&qword_280935A60, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v26 = v17;
    v50 = v17;
    v27 = v54;
    sub_274051498();
    (*(v52 + 8))(v10, v27);
    (*(v51 + 8))(v13, v11);
    v28 = *(v69 + 16);
    v29 = v53;
    v30 = v56;
    v28(v53, v26, v56);
    *v8 = v22;
    v31 = v8;
    v32 = a4;
    v33 = v59;
    *(v31 + 8) = v59;
    v34 = v57 & 1;
    *(v31 + 16) = v57 & 1;
    *(v31 + 24) = v58;
    *(v31 + 32) = 0;
    *(v31 + 40) = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B60, &qword_27405BB00);
    v28((v31 + *(v35 + 64)), v29, v30);
    v36 = v33;
    a4 = v32;
    sub_274020AD4(v22, v36, v34);

    sub_274020AD4(v22, v36, v34);
    v37 = *(v69 + 8);
    v69 += 8;

    v37(v29, v30);
    sub_27402029C(v22, v36, v34);

    sub_274021180(v31, v67, &qword_280935B20, &qword_27405BA60);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935B38, &qword_280935B20, &qword_27405BA60, MEMORY[0x277CE14C0]);
    sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498, MEMORY[0x277CDF068]);
    sub_2740512B8();
    sub_27402029C(v22, v59, v34);

    sub_2740211E8(v31, &qword_280935B20, &qword_27405BA60);
    v37(v50, v30);
  }

  else
  {
    v73 = v59;
    v74 = v58;
    type metadata accessor for NetworkListConfigDataSource(0);
    v38 = v55;
    sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource, &protocol conformance descriptor for NetworkListConfigDataSource);

    v39 = sub_274050F98();
    swift_getKeyPath();
    sub_274050FA8();

    sub_274020248();
    v40 = v57;
    sub_2740515C8();
    v41 = v68;
    (*(v38 + 16))(v67, v40, v68);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935B38, &qword_280935B20, &qword_27405BA60, MEMORY[0x277CE14C0]);
    sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498, MEMORY[0x277CDF068]);
    sub_2740512B8();
    (*(v38 + 8))(v40, v41);
  }

  v42 = v83;
  v43 = v82;
  v44 = v81;
  v45 = v70;
  v46 = v65;
  sub_274021180(v70, v65, &qword_280935B78, &qword_27405BB60);
  *a4 = 0;
  *(a4 + 8) = v42;
  *(a4 + 16) = v63;
  *(a4 + 24) = v43;
  *(a4 + 32) = v62;
  *(a4 + 40) = v44;
  v47 = v60;
  *(a4 + 48) = v61;
  *(a4 + 56) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B80, &qword_27405BB68);
  sub_274021180(v46, a4 + *(v48 + 48), &qword_280935B78, &qword_27405BB60);
  sub_2740211E8(v45, &qword_280935B78, &qword_27405BB60);
  return sub_2740211E8(v46, &qword_280935B78, &qword_27405BB60);
}

uint64_t sub_27404D3B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_27404DECC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_27404DF34(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NetworkList);
  *a2 = sub_27404EA0C;
  a2[1] = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkListMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkListMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_27404D668(uint64_t a1)
{
  sub_27404D70C(319);
  if (v1 <= 0x3F)
  {
    sub_27404D7A0(319);
    if (v2 <= 0x3F)
    {
      sub_274051948();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27404D70C(uint64_t a1)
{
  if (!qword_2809357E0)
  {
    type metadata accessor for NetworkListDataSource(255);
    sub_27404E2E4(&unk_2809357B0, type metadata accessor for NetworkListDataSource, &protocol conformance descriptor for NetworkListDataSource);
    v1 = sub_274050FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809357E0);
    }
  }
}

void sub_27404D7A0(uint64_t a1)
{
  if (!qword_2809357E8)
  {
    type metadata accessor for NetworkListConfigDataSource(255);
    sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource, &protocol conformance descriptor for NetworkListConfigDataSource);
    v1 = sub_274050FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809357E8);
    }
  }
}

uint64_t sub_27404D834@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for NetworkList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_274041E2C(a1, v6, a2);
}

double sub_27404D8B4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 201) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_27404D8E4()
{
  result = qword_280935818;
  if (!qword_280935818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935820, &qword_27405B1F8);
    v1 = MEMORY[0x277CE14C0];
    sub_27402179C(&qword_280935828, &qword_280935830, &qword_27405B200, MEMORY[0x277CE14C0]);
    sub_27402179C(&qword_280935838, &qword_280935840, &qword_27405B208, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935818);
  }

  return result;
}

uint64_t sub_27404D9C4(uint64_t a1)
{
  v3 = *(sub_274050FE8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for NetworkList(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_274045670(a1, v1 + v4, v7);
}

unint64_t sub_27404DABC()
{
  result = qword_280935900;
  if (!qword_280935900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809358F8, &qword_27405B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935900);
  }

  return result;
}

uint64_t sub_27404DB48(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27404DBC4()
{
  result = qword_280935928;
  if (!qword_280935928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935930, &unk_27405B3A8);
    sub_2740207F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935928);
  }

  return result;
}

unint64_t sub_27404DCD0()
{
  result = qword_2809359B0;
  if (!qword_2809359B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809359A0, &qword_27405B5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809359B0);
  }

  return result;
}

uint64_t sub_27404DECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27404DF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27404DF9C()
{
  v1 = *(type metadata accessor for NetworkListRowView(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for NetworkList(0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_274048944(v5, v0 + v2, v6);
}

uint64_t sub_27404E0A0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkListRowView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27404E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_27404E1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_27404E240(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NetworkList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_27404E2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27404E36C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AC0, &qword_27405B980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27404E3E4()
{
  result = qword_280935B40;
  if (!qword_280935B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935B10, &qword_27405BA50);
    sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498, MEMORY[0x277CDF068]);
    sub_27402179C(&qword_280935B48, &qword_280935B50, &qword_27405BAF0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935B40);
  }

  return result;
}

uint64_t objectdestroy_96Tm()
{
  v1 = (type metadata accessor for NetworkList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_274051948();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_27404E67C(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkList(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_274048DAC(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_27404E70C()
{
  type metadata accessor for NetworkList(0);
  v1 = *(v0 + 16);

  return sub_274048E94(v1);
}

unint64_t sub_27404E770()
{
  result = qword_280935B90;
  if (!qword_280935B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935B88, &qword_27405BB70);
    sub_27404E2E4(&qword_2809350A0, type metadata accessor for NetworkListRowView, &protocol conformance descriptor for NetworkListRowView);
    sub_27402179C(&qword_280935B98, &unk_280935BA0, &unk_27405BB78, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935B90);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for NetworkList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_274051948();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_27404E960@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  type metadata accessor for NetworkList(0);
  result = a2(&v7, *a1);
  *a3 = v7;
  return result;
}

unint64_t sub_27404EA4C()
{
  result = qword_280935BB0;
  if (!qword_280935BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935BB0);
  }

  return result;
}

uint64_t sub_27404EAA0()
{
  v1 = *v0;
  sub_274051B38();
  MEMORY[0x2743E3950](v1);
  return sub_274051B68();
}

uint64_t sub_27404EB14(uint64_t a1)
{
  v2 = *v1;
  sub_274051B38();
  MEMORY[0x2743E3950](v2);
  return sub_274051B68();
}

uint64_t WFShouldUseInsetTableView()
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 bounds];
  if (v1 <= 320.0)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;

  if (v4 > 320.0)
  {
    v0 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [v0 preferredContentSizeCategory];
    v5 = _WFIsSupportedContentSizeCategoryForInsetTableView(v6);

LABEL_6:
    return v5;
  }

  return 0;
}

uint64_t WFSecurityModeFromScanDictionary(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:5];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:12];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:13];
  v48 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v41 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v46 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v42 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v45 = [MEMORY[0x277CCABB0] numberWithInt:18];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    v21 = 0;
    if (!a2)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v7 = [v3 objectForKey:@"WEP"];

  if (v7)
  {
    v8 = [v3 objectForKey:@"WEP"];
    v9 = [v8 BOOLValue];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v40 = a2;
  v11 = [v3 objectForKey:@"RSN_IE"];

  if (!v11)
  {
    v20 = 16;
    v21 = v10;
    goto LABEL_52;
  }

  v39 = v5;
  v12 = [v3 objectForKey:@"RSN_IE"];
  v13 = [v12 objectForKey:@"IE_KEY_RSN_AUTHSELS"];
  v14 = [v12 objectForKey:@"IE_KEY_RSN_CAPS"];
  v15 = [v14 objectForKey:@"MFP_REQUIRED"];
  v16 = [v14 objectForKey:@"MFP_CAPABLE"];
  if (v15)
  {
    v19 = v15 != *MEMORY[0x277CBED28] || v16 != *MEMORY[0x277CBED28] || v16 == 0;
  }

  else
  {
    v19 = 1;
  }

  v38 = v6;
  if (([v13 containsObject:v47] & 1) != 0 || objc_msgSend(v13, "containsObject:", v44))
  {
    v22 = 1;
    v23 = 1024;
    v10 = 1024;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (([v13 containsObject:v4] & 1) != 0 || (objc_msgSend(v13, "containsObject:", v39) & 1) != 0 || objc_msgSend(v13, "containsObject:", v38))
  {
    if ((v19 | [v13 containsObject:v4]))
    {
      v23 |= 0x20uLL;
      if (!v22)
      {
        v10 = 32;
      }

      v22 = 1;
    }

    else
    {
      if (!v22)
      {
        v10 = 1024;
      }

      v22 = 1;
      v23 = 1056;
    }
  }

  if (([v13 containsObject:v46] & 1) != 0 || objc_msgSend(v13, "containsObject:", v42))
  {
    if (!v22)
    {
      v10 = 512;
    }

    v23 |= 0x200uLL;
    v24 = [v13 containsObject:v45];
  }

  else
  {
    v24 = [v13 containsObject:v45];
    if (!v22)
    {
      v25 = 0;
      v26 = 2048;
      goto LABEL_39;
    }
  }

  v25 = 1;
  v26 = v10;
LABEL_39:
  v27 = v25 | v24;
  if (v24)
  {
    v28 = v23 | 0x800;
  }

  else
  {
    v28 = v23;
  }

  if (v24)
  {
    v20 = v26;
  }

  else
  {
    v20 = v10;
  }

  if (([v13 containsObject:v48] & 1) != 0 || (objc_msgSend(v13, "containsObject:", v43) & 1) != 0 || objc_msgSend(v13, "containsObject:", v41))
  {
    if (!v27)
    {
      v20 = 8;
    }

    v10 = v28 | 8;
  }

  else
  {
    if (v20 == 1)
    {
      v10 = 1075;
    }

    else
    {
      v10 = 32;
    }

    if (v27)
    {
      v10 = v28;
    }

    else
    {
      v20 = v10;
    }
  }

  v6 = v38;
  v5 = v39;

  v21 = v20;
LABEL_52:
  v29 = [v3 objectForKey:@"WPA_IE"];

  if (v29)
  {
    v30 = [v3 objectForKey:@"WPA_IE"];
    v31 = [v30 objectForKey:@"IE_KEY_WPA_AUTHSELS"];
    v32 = [v31 containsObject:v4];
    if (v11)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    if (v32)
    {
      v10 = v10 & 0xFEE | 0x10;
    }

    else
    {
      v10 &= 0xFFEu;
    }

    if (v32)
    {
      v21 = v20;
    }

    if ([v31 containsObject:v48])
    {
      if (!v33)
      {
        v21 = 4;
      }

      v10 |= 4uLL;
    }

    else
    {
      v34 = 16;
      if (v21 == 1)
      {
        v34 = 1075;
      }

      if (!v33)
      {
        v10 = v34;
        v21 = v34;
      }
    }

    a2 = v40;
  }

  else
  {
    a2 = v40;
  }

  v35 = [v3 objectForKey:@"WAPI"];
  if (v35)
  {
    v36 = v35;
    if (([v35 intValue] & 8) != 0)
    {
      v10 = 128;
    }

    else
    {
      v10 = 64;
    }

    v21 = v10;
  }

  if (a2)
  {
LABEL_77:
    *a2 = v10;
  }

LABEL_78:

  return v21;
}

id WFUserNameFromEnterpriseProfile(void *a1)
{
  v1 = [a1 objectForKey:@"EAPClientConfiguration"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"UserName"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFGetCarNameFromCarPlayNetworkUUID(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CF8A68]);
    v3 = v2;
    if (v2)
    {
      v4 = [v2 vehicleNameForWiFiUUID:v1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v4;
}

uint64_t WFIsValidIPv4Address(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v3 isValidIPv4Address] && objc_msgSend(v5, "isValidSubnetMask"))
    {
      if ([v3 hasPrefix:@"169.254."])
      {
        v6 = [v5 isEqualToString:@"255.255.0.0"] ^ 1;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t WFIsValidIPv6Address(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  v6[0] = 0;
  v7 = 0;
  v6[1] = 0;
  if (!v1 || (CFStringGetCString(v1, buffer, 46, 0x600u), inet_pton(30, buffer, v6) != 1) || LOBYTE(v6[0]) == 254 && (BYTE1(v6[0]) & 0xC0) == 0x80)
  {
    v4 = 0;
  }

  else
  {
    v3 = LOBYTE(v6[0]) != 255 || (BYTE1(v6[0]) & 0xF0) == 48;
    v4 = (BYTE1(v6[0]) & 0xF) != 2 || v3;
  }

  return v4;
}

BOOL WFScanRecordArchiveToEnterprisePath(void *a1)
{
  [a1 attributes];
  v1 = WiFiNetworkCreate();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = WiFiNetworkArchiveToPath() != 0;
  CFRelease(v2);
  return v3;
}