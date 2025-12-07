unint64_t sub_227145A58()
{
  result = qword_28139D210;
  if (!qword_28139D210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D210);
  }

  return result;
}

uint64_t sub_227145B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetLoaderResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227145B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_227145BDC()
{
  result = qword_27D7BB5E0;
  if (!qword_27D7BB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB5E0);
  }

  return result;
}

unint64_t sub_227145C30(uint64_t a1)
{
  result = sub_227145C58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227145C58()
{
  result = qword_27D7BB5E8;
  if (!qword_27D7BB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB5E8);
  }

  return result;
}

uint64_t sub_227145CAC(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EF30(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EF30((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t AMSRequestBagConsumerError.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

unint64_t sub_227145E54()
{
  result = qword_27D7BB5F0;
  if (!qword_27D7BB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB5F0);
  }

  return result;
}

unint64_t sub_227145EAC()
{
  result = qword_28139A078[0];
  if (!qword_28139A078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28139A078);
  }

  return result;
}

void *static Configuration.representativeSamples()()
{
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB5F8, &qword_22767ACD0);
  v185 = *(v182 - 1);
  MEMORY[0x28223BE20](v182);
  v181 = &v141 - v0;
  v180 = sub_227663FA0();
  v184 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v183 = &v141 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_227667370();
  v166 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v188 = &v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_2276676D0();
  v168 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v186 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_227667500();
  v196 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v169 = &v141 - v6;
  v208 = sub_227666ED0();
  v195 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v205 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v174 = &v141 - v9;
  v191 = sub_227668970();
  v194 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v211 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_227666CB0();
  v193 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v210 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_227668300();
  v204 = *(v192 - 8);
  v209 = v192 - 8;
  *&v202 = v204;
  MEMORY[0x28223BE20](v192);
  v13 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227668CB0();
  v15 = *(v14 - 8);
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227668CA0();
  v19 = sub_22766C380();
  *(v19 + 16) = 3;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v165 = v19;
  v21 = v19 + v20;
  v22 = *(v15 + 16);
  v22(v19 + v20, v18, v14);
  v23 = *(v15 + 72);
  v177 = v22;
  v178 = v16 + 16;
  v22(v21 + v23, v18, v14);
  v24 = *(v16 + 32);
  v203 = v18;
  v179 = v14;
  v24(v21 + 2 * v23, v18, v14);
  v25 = sub_226F5D274();
  v164 = sub_22766BE70();
  v163 = sub_22766BE70();
  v162 = sub_22766BE70();
  v161 = sub_22766BE70();
  v160 = sub_22766BE70();
  v159 = sub_22766BE70();
  v158 = sub_22766BE70();
  sub_2276682F0();
  v26 = v192;
  v27 = sub_22766C380();
  *(v27 + 16) = 3;
  v28 = v202;
  v29 = (*(v202 + 80) + 32) & ~*(v202 + 80);
  v157 = v27;
  v30 = v27 + v29;
  v31 = *(v202 + 16);
  v31(v27 + v29, v13, v26);
  v32 = *(v204 + 9);
  v175 = v31;
  v176 = v28 + 16;
  v31(v30 + v32, v13, v26);
  v33 = *(v28 + 32);
  v204 = v13;
  v33(v30 + 2 * v32, v13, v26);
  v156 = sub_22766BE70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB600, &qword_22767ACD8);
  v34 = swift_allocObject();
  v154 = xmmword_227675BD0;
  *(v34 + 16) = xmmword_227675BD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB608, &qword_22767ACE0);
  inited = swift_initStackObject();
  v202 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_22766C0A0();
  *(inited + 40) = v36;
  v167 = xmmword_22767A620;
  *(inited + 48) = xmmword_22767A620;
  *(inited + 64) = 1;
  v37 = sub_2271483E4(inited, &qword_27D7BB810, &qword_22767AEB8, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &qword_27D7BB610, &qword_22767ACE8);
  *(v34 + 32) = v37;
  v38 = swift_initStackObject();
  *(v38 + 16) = v202;
  *(v38 + 32) = sub_22766C0A0();
  *(v38 + 48) = 0;
  *(v38 + 56) = 0;
  *(v38 + 40) = v39;
  *(v38 + 64) = 1;
  v40 = sub_2271483E4(v38, &qword_27D7BB810, &qword_22767AEB8, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v38 + 32, &qword_27D7BB610, &qword_22767ACE8);
  *(v34 + 40) = v40;
  v41 = swift_initStackObject();
  *(v41 + 16) = v202;
  *(v41 + 32) = sub_22766C0A0();
  *(v41 + 40) = v42;
  v153 = xmmword_22767ACC0;
  *(v41 + 48) = xmmword_22767ACC0;
  *(v41 + 64) = 1;
  v43 = sub_2271483E4(v41, &qword_27D7BB810, &qword_22767AEB8, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v41 + 32, &qword_27D7BB610, &qword_22767ACE8);
  v155 = v34;
  *(v34 + 48) = v43;
  v201 = sub_226F05E24();
  v330[0] = sub_22766CFA0();
  v330[1] = v330;
  v329 = sub_22766BE70();
  v330[2] = &v329;
  v170 = v25;
  v328 = sub_22766BE70();
  v330[3] = &v328;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v325 = v198;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v197 = v326;
  v327 = v326;
  v200 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v322[3] = v200;
  v323 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v199 = v323;
  v324 = v323;
  v44 = sub_2276638E0();

  v45 = *(v44 + 16);
  if (v45)
  {
    v291 = MEMORY[0x277D84F90];
    result = sub_226F20088(0, v45, 0);
    v47 = 0;
    v48 = v291;
    v49 = v195;
    v209 = v195 + 32;
    v50 = v44 + 48;
    v51 = v174;
    while (v47 < *(v44 + 16))
    {
      sub_227666E90();
      v291 = v48;
      v53 = v48[2];
      v52 = v48[3];
      if (v53 >= v52 >> 1)
      {
        sub_226F20088((v52 > 1), v53 + 1, 1);
        v48 = v291;
      }

      ++v47;
      v48[2] = v53 + 1;
      result = (*(v49 + 32))(v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v53, v51, v208);
      v50 += 24;
      if (v45 == v47)
      {
        v152 = v48;

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v152 = MEMORY[0x277D84F90];
LABEL_9:
  sub_227665950();
  sub_22714BEB8(&qword_27D7BB618, MEMORY[0x277D51A98], MEMORY[0x277D51AA0]);
  v54 = sub_22766C5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB620, &qword_22767ACF0);
  v55 = sub_22766C380();
  v55[2] = 3;
  v55[4] = v54;
  v55[5] = v54;
  v151 = v55;
  v55[6] = v54;
  sub_227664010();
  sub_22714BEB8(&qword_28139BA00, MEMORY[0x277D50618], MEMORY[0x277D50620]);
  swift_bridgeObjectRetain_n();
  v56 = sub_22766C5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9C0, &unk_227676780);
  v57 = sub_22766C380();
  v57[2] = 3;
  v57[4] = v56;
  v57[5] = v56;
  v150 = v57;
  v57[6] = v56;
  v58 = sub_227667C20();
  v59 = sub_22714BEB8(&qword_28139B4E0, MEMORY[0x277D531E0], MEMORY[0x277D531E8]);
  swift_bridgeObjectRetain_n();
  v146 = v58;
  v144 = v59;
  v60 = sub_22766C5F0();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB628, &qword_22767ACF8);
  v61 = sub_22766C380();
  v61[2] = 3;
  v61[4] = v60;
  v61[5] = v60;
  v149 = v61;
  v61[6] = v60;
  swift_bridgeObjectRetain_n();
  v148 = sub_22766BE70();
  v62 = v210;
  sub_227666CA0();
  v63 = v190;
  v64 = sub_22766C380();
  *(v64 + 16) = 3;
  v65 = v193;
  v66 = (*(v193 + 80) + 32) & ~*(v193 + 80);
  v147 = v64;
  v67 = v64 + v66;
  v68 = *(v193 + 16);
  v68(v64 + v66, v62, v63);
  v69 = *(v65 + 72);
  v173 = v68;
  v174 = (v65 + 16);
  v68(v67 + v69, v62, v63);
  (*(v65 + 32))(v67 + 2 * v69, v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_2271482DC();
  v193 = sub_22766C2D0();
  v70 = v211;
  sub_227668960();
  v71 = v191;
  v72 = sub_22766C380();
  *(v72 + 16) = 3;
  v73 = v194;
  v74 = (*(v194 + 80) + 32) & ~*(v194 + 80);
  v145 = v72;
  v75 = v72 + v74;
  v76 = *(v194 + 16);
  v76(v72 + v74, v70, v71);
  v77 = *(v73 + 72);
  v171 = v76;
  v172 = v73 + 16;
  v76(v75 + v77, v70, v71);
  (*(v73 + 32))(v75 + 2 * v77, v70, v71);
  v322[0] = sub_22766CFA0();
  v322[1] = v322;
  v321 = sub_22766BE70();
  v322[2] = &v321;
  v319 = v198;
  v320 = v197;
  v317 = v200;
  v318 = v199;
  v78 = sub_2276638E0();

  v79 = *(v78 + 16);
  if (v79)
  {
    v291 = MEMORY[0x277D84F90];
    result = sub_226F20068(0, v79, 0);
    v80 = 0;
    v81 = v291;
    v82 = v196;
    v209 = v196 + 32;
    v83 = v78 + 40;
    v84 = v169;
    while (v80 < *(v78 + 16))
    {
      sub_2276674E0();
      v291 = v81;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        sub_226F20068((v85 > 1), v86 + 1, 1);
        v82 = v196;
        v81 = v291;
      }

      ++v80;
      v81[2] = v86 + 1;
      result = (*(v82 + 32))(v81 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v86, v84, v207);
      v83 += 16;
      if (v79 == v80)
      {

        goto LABEL_17;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v81 = MEMORY[0x277D84F90];
LABEL_17:
  v209 = sub_22766CFA0();
  v87 = v186;
  sub_2276676C0();
  v88 = v187;
  v89 = sub_22766C380();
  v194 = v89;
  *(v89 + 16) = 3;
  v90 = v168;
  v91 = v89 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
  v92 = v168 + 16;
  v93 = *(v168 + 16);
  (v93)(v91, v87, v88);
  v94 = *(v90 + 72);
  v169 = v93;
  v170 = v92;
  (v93)(v91 + v94, v87, v88);
  (*(v90 + 32))(v91 + 2 * v94, v87, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB640, &qword_22767AD00);
  v95 = swift_allocObject();
  *(v95 + 16) = v154;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB648, &qword_22767AD08);
  v96 = swift_initStackObject();
  *(v96 + 16) = v202;
  *(v96 + 32) = sub_22766C0A0();
  *(v96 + 48) = 0;
  *(v96 + 56) = 0;
  *(v96 + 40) = v97;
  *(v96 + 64) = 1;
  v98 = sub_2271483E4(v96, &qword_27D7BB808, &qword_22767AEB0, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v96 + 32, &qword_27D7BB650, &qword_22767AD10);
  *(v95 + 32) = v98;
  v99 = swift_initStackObject();
  *(v99 + 16) = v202;
  *(v99 + 32) = sub_22766C0A0();
  *(v99 + 40) = v100;
  *(v99 + 48) = v167;
  *(v99 + 64) = 1;
  v101 = sub_2271483E4(v99, &qword_27D7BB808, &qword_22767AEB0, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v99 + 32, &qword_27D7BB650, &qword_22767AD10);
  *(v95 + 40) = v101;
  v142 = v95;
  v102 = swift_initStackObject();
  *(v102 + 16) = v202;
  *(v102 + 32) = sub_22766C0A0();
  *(v102 + 40) = v103;
  *(v102 + 48) = v153;
  *(v102 + 64) = 1;
  v104 = sub_2271483E4(v102, &qword_27D7BB808, &qword_22767AEB0, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v102 + 32, &qword_27D7BB650, &qword_22767AD10);
  *(v95 + 48) = v104;
  *&v202 = sub_22766CFA0();
  v105 = sub_22766C5F0();
  v106 = sub_22766C380();
  v106[2] = 3;
  v106[4] = v105;
  v106[5] = v105;
  v106[6] = v105;
  swift_bridgeObjectRetain_n();
  v107 = v188;
  sub_227667350();
  v108 = v189;
  v109 = sub_22766C380();
  v201 = v109;
  *(v109 + 16) = 3;
  v110 = v166;
  v111 = v109 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
  v113 = v166 + 16;
  v112 = *(v166 + 16);
  v112(v111, v107, v108);
  v114 = *(v110 + 72);
  v168 = v113;
  *&v167 = v112;
  v112(v111 + v114, v107, v108);
  (*(v110 + 32))(v111 + 2 * v114, v107, v108);
  v290 = v165;
  v289 = v164;
  v291 = &v290;
  v292 = &v289;
  v288 = v163;
  v287 = v162;
  v293 = &v288;
  v294 = &v287;
  v286 = v161;
  v285 = v160;
  v295 = &v286;
  v296 = &v285;
  v284 = v159;
  v283 = v158;
  v297 = &v284;
  v298 = &v283;
  v282 = v157;
  v281 = v156;
  v299 = &v282;
  v300 = &v281;
  v280 = v155;
  v279 = v152;
  v301 = &v280;
  v302 = &v279;
  v278 = v151;
  v277 = v150;
  v303 = &v278;
  v304 = &v277;
  v276 = v149;
  v275 = v148;
  v305 = &v276;
  v306 = &v275;
  v274 = v147;
  v273 = v193;
  v307 = &v274;
  v308 = &v273;
  v272 = v145;
  v271 = v81;
  v309 = &v272;
  v310 = &v271;
  v270 = v209;
  v269 = v194;
  v311 = &v270;
  v312 = &v269;
  v268 = v142;
  v267 = v202;
  v313 = &v268;
  v314 = &v267;
  v266 = v106;
  v265 = v201;
  v315 = &v266;
  v316 = &v265;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB658, &qword_22767AD18);
  v115 = v197;
  v240 = v197;
  v241 = v197;
  v242 = v197;
  v243 = v197;
  v244 = v197;
  v245 = v197;
  v246 = v197;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB660, &qword_22767AD20);
  v248 = v115;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB668, &qword_22767AD28);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB670, &qword_22767AD30);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB678, &qword_22767AD38);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB680, &qword_22767AD40);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB688, &qword_22767AD48);
  v253 = v116;
  v254 = v115;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB690, &qword_22767AD50);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB698, &qword_22767AD58);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6A0, &qword_22767AD60);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6A8, &qword_22767AD68);
  v117 = v198;
  v259 = v198;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6B0, &qword_22767AD70);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6B8, &qword_22767AD78);
  v262 = v117;
  v263 = v116;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6C0, &qword_22767AD80);
  v213 = sub_226F5BF60(&qword_27D7BB6C8, &qword_27D7BB658, &qword_22767AD18);
  v118 = v199;
  v214 = v199;
  v215 = v199;
  v216 = v199;
  v217 = v199;
  v218 = v199;
  v219 = v199;
  v220 = v199;
  v221 = sub_226F5BF60(&qword_27D7BB6D0, &qword_27D7BB660, &qword_22767AD20);
  v222 = v118;
  v223 = sub_226F5BF60(&qword_27D7BB6D8, &qword_27D7BB668, &qword_22767AD28);
  v224 = sub_226F5BF60(&qword_27D7BB6E0, &qword_27D7BB670, &qword_22767AD30);
  v225 = sub_226F5BF60(&qword_27D7BB6E8, &qword_27D7BB678, &qword_22767AD38);
  v226 = sub_226F5BF60(&qword_27D7BB6F0, &qword_27D7BB680, &qword_22767AD40);
  v119 = sub_226F5BF60(&qword_27D7BB6F8, &qword_27D7BB688, &qword_22767AD48);
  v227 = v119;
  v228 = v118;
  v229 = sub_226F5BF60(&qword_27D7BB700, &qword_27D7BB690, &qword_22767AD50);
  v230 = sub_226F5BF60(&qword_27D7BB708, &qword_27D7BB698, &qword_22767AD58);
  v231 = sub_226F5BF60(&qword_27D7BB710, &qword_27D7BB6A0, &qword_22767AD60);
  v232 = sub_226F5BF60(&qword_27D7BB718, &qword_27D7BB6A8, &qword_22767AD68);
  v120 = v200;
  v233 = v200;
  v234 = sub_226F5BF60(&qword_27D7BB720, &qword_27D7BB6B0, &qword_22767AD70);
  v235 = sub_226F5BF60(&qword_27D7BB728, &qword_27D7BB6B8, &qword_22767AD78);
  v236 = v120;
  v237 = v119;
  v238 = sub_226F5BF60(&qword_27D7BB730, &qword_27D7BB6C0, &qword_22767AD80);
  v121 = sub_2276638E0();

  v122 = *(v121 + 16);
  if (v122)
  {
    v212 = MEMORY[0x277D84F90];
    result = sub_226F20048(0, v122, 0);
    v123 = 0;
    v124 = *(v185 + 80);
    v209 = v212;
    v164 = v121 + ((v124 + 32) & ~v124);
    v165 = v122;
    v162 = (v196 + 16);
    v163 = (v195 + 16);
    v161 = v184 + 32;
    v166 = v121;
    while (v123 < *(v121 + 16))
    {
      v125 = v181;
      sub_226E93170(v164 + *(v185 + 72) * v123, v181, &qword_27D7BB5F8, &qword_22767ACD0);
      *&v202 = *(v125 + v182[12]);
      v126 = v182[40];
      v127 = *(v125 + v182[48]);
      v201 = v123;
      v128 = v182[52];
      v129 = v182[72];
      v130 = *(v125 + v182[76]);
      v197 = v127;
      v198 = v130;
      v131 = v182[80];
      v132 = *(v125 + v182[88]);
      v133 = v182[84];
      v134 = v182[92];
      v196 = *(v125 + v182[96]);
      v199 = *(v125 + v182[100]);
      v200 = v132;
      v135 = *(v125 + v182[104]);
      v194 = v134;
      v195 = v135;
      v193 = v182[108];
      v177(v203, v125, v179);
      v175(v204, v125 + v126, v192);
      (*v163)(v205, v125 + v128, v208);
      v173(v210, v125 + v129, v190);
      v171(v211, v125 + v131, v191);
      (*v162)(v206, v125 + v133, v207);
      (v169)(v186, v125 + v194, v187);
      (v167)(v188, v125 + v193, v189);

      v136 = v183;
      sub_227663E70();
      sub_226E97D1C(v125, &qword_27D7BB5F8, &qword_22767ACD0);
      v212 = v209;
      v138 = *(v209 + 16);
      v137 = *(v209 + 24);
      if (v138 >= v137 >> 1)
      {
        sub_226F20048((v137 > 1), v138 + 1, 1);
        v136 = v183;
        v209 = v212;
      }

      v139 = v201 + 1;
      v140 = v209;
      *(v209 + 16) = v138 + 1;
      result = (*(v184 + 32))(v140 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v138, v136, v180);
      v121 = v166;
      v123 = v139;
      if (v165 == v139)
      {

        return v209;
      }
    }

    goto LABEL_28;
  }

  return MEMORY[0x277D84F90];
}

void sub_227147D44(void *a1, uint64_t a2)
{
  v3 = [a1 data];
  if (v3)
  {
    v4 = v3;
    sub_227662590();

    sub_22714BEB8(&qword_28139BA28, MEMORY[0x277D50560], MEMORY[0x277D50558]);
    sub_2276683D0();
  }

  else
  {
    v5 = sub_227664DD0();
    sub_22714BEB8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D51028], v5);
    swift_willThrow();
  }
}

unint64_t sub_227147EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7E8, &qword_22767AE88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A58, &qword_227674E80);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB7E8, &qword_22767AE88);
      result = sub_226F39E30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2276694E0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_226E92AB8(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2271480B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E78, &qword_2276724C0);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E92000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2271481B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E92000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2271482DC()
{
  result = qword_27D7BB630;
  if (!qword_27D7BB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    sub_227148368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB630);
  }

  return result;
}

unint64_t sub_227148368()
{
  result = qword_27D7BB638;
  if (!qword_27D7BB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB638);
  }

  return result;
}

unint64_t sub_2271483E4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22766D010();

    for (i = (a1 + 64); ; i += 40)
    {
      v9 = *(i - 4);
      v10 = *(i - 3);
      v11 = *(i - 2);
      v12 = *(i - 1);
      v13 = *i;

      a4(v11, v12, v13);
      result = sub_226E92000(v9, v10);
      if (v15)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v9;
      v16[1] = v10;
      v17 = v7[7] + 24 * result;
      *v17 = v11;
      *(v17 + 8) = v12;
      *(v17 + 16) = v13;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_227148508(uint64_t a1)
{
  result = sub_22714BEB8(&qword_28139BA30, MEMORY[0x277D50560], &protocol conformance descriptor for Configuration);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227148560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7B0, &qword_22767AE48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7B8, &qword_22767AE50);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB7B0, &qword_22767AE48);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226E92000(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_227664EB0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714874C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7A0, &qword_22767AE38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7A8, &qword_22767AE40);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB7A0, &qword_22767AE38);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226E92000(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_227666FF0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227148938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB790, &qword_22767AE28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB798, &qword_22767AE30);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB790, &qword_22767AE28);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226E92000(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_2276632A0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227148B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB780, &qword_22767AE18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB788, &qword_22767AE20);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB780, &qword_22767AE18);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226E92000(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_227663A30();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227148D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB768, &qword_22767AE00);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, &v15, &qword_27D7B9460, &unk_227689B60);
      v5 = v15;
      v6 = v16;
      result = sub_226E92000(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227148E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9780, &qword_227674BE0);
    v3 = sub_22766D010();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_226E92000(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227148F7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97A0, &qword_227674C00);
    v3 = sub_22766D010();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_226F3AA10(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7E0, &qword_22767AE80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9758, &qword_227674BB8);
    v7 = sub_22766D010();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB7E0, &qword_22767AE80);
      result = sub_226F3AA2C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2276639B0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = *(v8 + 2);
      *v16 = *v8;
      *(v16 + 16) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, &v13, &unk_27D7BE5C0, &qword_22767D1D0);
      v5 = v13;
      v6 = v14;
      result = sub_226E92000(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_226F04970(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98D8, &qword_227674D28);
    v3 = sub_22766D010();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      *&v17 = *(i - 5);
      *(&v17 + 1) = v5;
      *&v18 = v6;
      *(&v18 + 1) = v7;
      v19 = v8;

      sub_226EB396C(v6, v7, v8);

      result = sub_226F3ABA4(&v17);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 40 * result;
      v13 = v18;
      *v12 = v17;
      *(v12 + 16) = v13;
      *(v12 + 32) = v19;
      *(v3[7] + 8 * result) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2271494D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98D0, &qword_227674D20);
    v3 = sub_22766D010();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      sub_226EB396C(v6, v7, v8);

      result = sub_226F3AB00(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97D8, &qword_227674C30);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, &v11, &qword_27D7BA1C0, &qword_227678670);
      v5 = v11;
      result = sub_226F49208();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_226F04970(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714972C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, &v16, &qword_27D7BC920, &qword_22767F820);
      v5 = v16;
      v6 = v17;
      result = sub_226E92000(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98B8, &qword_227674D08);
    v3 = sub_22766D010();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_226F3ACCC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98A8, &qword_227674CF8);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226F3ACCC(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9868, &qword_227674CB8);
    v3 = sub_22766D010();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_226F3AC2C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149B54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
    v5 = sub_22766D010();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      sub_226EB396C(v7, v8, *(i - 8));
      result = a2(v7, v8, v9);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v5[6] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB770, &qword_22767AE08);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, v14, &qword_27D7BB778, &qword_22767AE10);
      v5 = v14[0];
      result = sub_226F3B02C(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9778, &qword_227674BD8);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BA4A8, &qword_227678D20);
      result = sub_226F3B058(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2276624A0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227149FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7D0, &qword_22767AE68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9770, &qword_227674BD0);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB7D0, &qword_22767AE68);
      result = sub_226F3B058(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2276624A0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_227663CD0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714A1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9740, &qword_227674BA0);
    v3 = sub_22766D010();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_226F3B1C0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714A2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7F8, &qword_22767AE98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98A0, &qword_227674CF0);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB7F8, &qword_22767AE98);
      v11 = *v5;
      result = sub_226F3B1C0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
      result = sub_22714C150(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714A4C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_226E92000(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714A5C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A60, &qword_227674E88);
    v3 = sub_22766D010();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_226F3B210(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714A6B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98F8, &qword_227674D48);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7B93B0, &unk_22768C130);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226E92000(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_227662750();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714A8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7F0, &qword_22767AE90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A50, &qword_227674E78);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB7F0, &qword_22767AE90);
      result = sub_226F39E30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2276694E0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_226E92AB8(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714AA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE6A0, qword_22768B5E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9748, &qword_227674BA8);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &unk_27D7BE6A0, qword_22768B5E0);
      v11 = *v5;
      result = sub_226F3B23C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
      result = sub_22714C0E8(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for AssetMediaStreamLoader.TaskResult);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714AC9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_226E92000(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714AD98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7C8, &qword_22767AE60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97D0, &qword_227674C28);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB7C8, &qword_22767AE60);
      result = sub_226F3B28C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_227668BB0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
      result = sub_22714C0E8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714AFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB800, &qword_22767AEA0);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, v11, &qword_27D7BBBB0, &qword_22767AEA8);
      v5 = v11[0];
      result = sub_226F3B360(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_226E92AB8(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714B0E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7D8, &qword_22767AE70);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, v11, &qword_27D7BBBF0, &qword_22767AE78);
      v5 = v11[0];
      result = sub_226F3A004(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_226E92AB8(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714B234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9890, &qword_227674CE0);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_226E92000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714B360(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7C0, &qword_22767AE58);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_226F5E0B4(v5, v6);
      result = sub_226F49208();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714B48C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22766D010();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714B5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9910, &qword_227674D58);
  v3 = sub_22766D010();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_226E923A0(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_226E923A0(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22714B6B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB748, &qword_22767ADE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB750, &qword_22767ADE8);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB748, &qword_22767ADE0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226E92000(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_227666600();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714B8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB758, &qword_22767ADF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97C0, &qword_227674C18);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BB758, &qword_22767ADF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226E92000(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_227667DE0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714BA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97A8, &qword_227674C08);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BAC70, &qword_2276796B0);
      result = sub_226F3A6FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_227665F20();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_227666760();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714BCD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22766D010();
    v8 = (a1 + 32);

    while (1)
    {
      v9 = *v8;
      result = a4();
      if (v11)
      {
        break;
      }

      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v7 + 56) + 8 * result) = v9;
      v12 = *(v7 + 16);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v14;
      ++v8;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22714BDBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB740, &qword_22767ADD8);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E92000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22714BEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22714BF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
    v7 = sub_22766D010();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v9, v5, &qword_27D7BADA0, &qword_227679808);
      result = sub_226F39F04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_227665440();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22714C0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22714C150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22714C1C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a2;
  v3 = sub_227662750();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30[0] = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v30 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v11 = sub_2276627D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v30 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v30 - v20;
  v22 = [a1 planIdentifier];
  if (v22)
  {
    v23 = v22;
    sub_2276627B0();

    (*(v12 + 32))(v21, v17, v11);
    v24 = [a1 dateViewed];
    if (v24)
    {
      v25 = v24;
      sub_227662710();

      v27 = v31;
      v26 = v32;
      (*(v31 + 32))(v10, v7, v32);
      (*(v12 + 16))(v14, v21, v11);
      (*(v27 + 16))(v30[0], v10, v26);
      sub_227667420();

      (*(v27 + 8))(v10, v26);
      (*(v12 + 8))(v21, v11);
      return;
    }

    (*(v12 + 8))(v21, v11);
  }

  v28 = sub_227664DD0();
  sub_22714CD08(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
  swift_willThrow();
}

void *static WorkoutPlanSummaryViewed.representativeSamples()()
{
  v34 = sub_227662750();
  v0 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2276627D0();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB818, &qword_22767AEE8);
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = v24 - v5;
  v29 = sub_227667440();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662780();
  v40 = sub_227662630();
  v41[0] = v10;
  v41[1] = v41;
  v41[2] = &v40;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v36 = sub_226F5BF60(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v37 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v11 = sub_2276638E0();

  v12 = *(v11 + 16);
  if (v12)
  {
    v27 = v9;
    v35 = MEMORY[0x277D84F90];
    result = sub_226F200A8(0, v12, 0);
    v14 = v2;
    v15 = 0;
    v28 = v4;
    v16 = v35;
    v25 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v26 = v7;
    v17 = (v14 + 16);
    v18 = (v0 + 16);
    v24[1] = v7 + 32;
    v19 = v27;
    while (v15 < *(v11 + 16))
    {
      v20 = v11;
      sub_22714CBD8(v25 + *(v28 + 72) * v15, v6);
      v21 = *(v30 + 48);
      (*v17)(v31, v6, v32);
      (*v18)(v33, &v6[v21], v34);
      sub_227667420();
      sub_22714CC48(v6);
      v35 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F200A8((v22 > 1), v23 + 1, 1);
        v16 = v35;
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      result = (*(v26 + 32))(v16 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v19, v29);
      v11 = v20;
      if (v12 == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22714CA08(void *a1)
{
  v2 = sub_2276627D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667410();
  v10 = sub_2276626A0();
  (*(v7 + 8))(v9, v6);
  [a1 setDateViewed_];

  sub_227667430();
  v11 = sub_227662790();
  (*(v3 + 8))(v5, v2);
  [a1 setPlanIdentifier_];
}

uint64_t sub_22714CBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB818, &qword_22767AEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22714CC48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB818, &qword_22767AEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22714CCB0(uint64_t a1)
{
  result = sub_22714CD08(&qword_2813A5608, MEMORY[0x277D52D18], &protocol conformance descriptor for WorkoutPlanSummaryViewed);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22714CD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_22714CD8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22714CDD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22714CE50(uint64_t a1)
{
  v34 = sub_227664530();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 64;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 72;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 56) + *(v3 + 72) * v8, v34);
      v36 = sub_2276644D0();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
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

uint64_t sub_22714D158(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v2[28] = swift_task_alloc();
  v2[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB820, &unk_22767AFE0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v4 = sub_2276627D0();
  v2[35] = v4;
  v5 = *(v4 - 8);
  v2[36] = v5;
  v2[37] = *(v5 + 64);
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22714D308, 0, 0);
}

uint64_t sub_22714D308()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = v4[16];
  v7 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v6);
  sub_22714E1C4(v4, v0 + 16);
  v8 = *(v3 + 16);
  *(v0 + 312) = v8;
  *(v0 + 320) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v5, v2);
  v9 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v0 + 328) = v10;
  v11 = *(v0 + 160);
  *(v10 + 144) = *(v0 + 144);
  *(v10 + 160) = v11;
  *(v10 + 176) = *(v0 + 176);
  *(v10 + 192) = *(v0 + 192);
  v12 = *(v0 + 96);
  *(v10 + 80) = *(v0 + 80);
  *(v10 + 96) = v12;
  v13 = *(v0 + 128);
  *(v10 + 112) = *(v0 + 112);
  *(v10 + 128) = v13;
  v14 = *(v0 + 32);
  *(v10 + 16) = *(v0 + 16);
  *(v10 + 32) = v14;
  v15 = *(v0 + 64);
  *(v10 + 48) = *(v0 + 48);
  *(v10 + 64) = v15;
  (*(v3 + 32))(v10 + v9, v1, v2);
  v19 = (*(v7 + 24) + **(v7 + 24));
  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB828, &qword_22767AFF0);
  *v16 = v0;
  v16[1] = sub_22714D53C;

  return v19(v0 + 200, sub_22714E1FC, v10, v17, v6, v7);
}

uint64_t sub_22714D53C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_22714DEAC;
  }

  else
  {

    v2 = sub_22714D658;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22714D658()
{
  v1 = v0[27];
  v0[44] = v0[25];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0(v1 + 5, v2);

  v5 = sub_22714CE50(v4);
  v0[45] = v5;

  v6 = swift_task_alloc();
  v0[46] = v6;
  v7 = *(v3 + 8);
  *v6 = v0;
  v6[1] = sub_22714D748;

  return MEMORY[0x2821AED78](v5, v2, v7);
}

uint64_t sub_22714D748(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22714D8FC, 0, 0);
  }
}

uint64_t sub_22714D8FC()
{
  v49 = v0;
  v1 = v0[44];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[36];
    v35 = v0[33];
    v36 = v0[47];
    v34 = v0[29];
    v48[0] = MEMORY[0x277D84F90];
    sub_226F200C8(0, v2, 0);
    v4 = v48[0];
    v5 = v1 + 64;
    result = sub_22766CC90();
    v32 = v0;
    v33 = (v3 + 56);
    v37 = v1;
    v31 = v1 + 64;
    do
    {
      if (result < 0 || result >= 1 << *(v1 + 32))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_26;
      }

      v40 = 1 << result;
      v41 = result >> 6;
      v47 = v4;
      v38 = v2;
      v39 = *(v1 + 36);
      v43 = *(v34 + 48);
      v8 = v0[30];
      v7 = v0[31];
      v9 = *(v1 + 48);
      v10 = result;
      v11 = sub_227665F20();
      v12 = *(v11 - 8);
      v44 = *(v12 + 16);
      v44(v7, v9 + *(v12 + 72) * v10, v11);
      v13 = *(v1 + 56);
      v14 = sub_227664530();
      v15 = *(v14 - 8);
      v46 = v10;
      (*(v15 + 16))(v7 + v43, v13 + *(v15 + 72) * v10, v14);
      v45 = v11;
      (*(v12 + 32))(v8, v7, v11);
      (*(v15 + 32))(v8 + *(v34 + 48), v7 + v43, v14);
      v16 = sub_2276644D0();
      if (*(v36 + 16))
      {
        sub_226E92000(v16, v17);
      }

      v42 = v0[39];
      v19 = v0[34];
      v18 = v0[35];
      v20 = v0[30];
      v21 = v0[28];
      v22 = v0[26];
      sub_227664490();
      sub_227664510();
      sub_2276644F0();
      v42(v21, v22, v18);
      (*v33)(v21, 0, 1, v18);
      sub_227666750();
      v44(v19, v20, v45);
      sub_226E97D1C(v20, &qword_27D7BB820, &unk_22767AFE0);
      v4 = v47;
      v48[0] = v47;
      v24 = *(v47 + 16);
      v23 = *(v47 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F200C8((v23 > 1), v24 + 1, 1);
        v4 = v48[0];
      }

      v25 = v32[34];
      *(v4 + 16) = v24 + 1;
      sub_22714F73C(v25, v4 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24);
      v1 = v37;
      result = v46;
      if (v46 >= -(-1 << *(v37 + 32)))
      {
        goto LABEL_27;
      }

      v0 = v32;
      v5 = v31;
      if ((*(v31 + 8 * v41) & v40) == 0)
      {
        goto LABEL_28;
      }

      if (v39 != *(v37 + 36))
      {
        goto LABEL_29;
      }

      result = sub_22766CCB0();
      v2 = v38 - 1;
    }

    while (v38 != 1);

    if (!*(v4 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97A8, &qword_227674C08);
    v26 = sub_22766D010();
    goto LABEL_18;
  }

LABEL_17:
  v26 = MEMORY[0x277D84F98];
LABEL_18:
  v27 = v0[48];
  v48[0] = v26;

  sub_22714F0FC(v28, 1, v48);
  if (v27)
  {

    return swift_unexpectedError();
  }

  else
  {

    v29 = v48[0];

    v30 = v0[1];

    return v30(v29);
  }
}

uint64_t sub_22714DEAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22714DF54@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a4;
  v7 = sub_227663FA0();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276638D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2 + 18, a2[21]);
  v25 = a1;
  v14 = v26;
  result = sub_22714E27C(a3, a1, v13);
  if (!v14)
  {
    v22 = v10;
    v26 = v11;
    sub_2276637D0();
    v16 = sub_226F491E8();
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v17 = v25;
    sub_226EAF48C(v25, v9);
    sub_227663F60();
    v19 = v18;
    (*(v24 + 8))(v9, v7);
    v20 = sub_22727227C(a3, v16, v17, v19);
    (*(v26 + 8))(v13, v22);

    *v23 = v20;
  }

  return result;
}

uint64_t sub_22714E27C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD0, &qword_227679720);
  v10 = sub_2276627D0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v13 + v12, a1, v10);
  v14 = sub_226F4BB6C(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  v15 = sub_227273B0C(v14, a2);

  if (!v3)
  {
    sub_22722AEAC(v15, v9);

    v17 = sub_2276638D0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v9, 1, v17) == 1)
    {
      sub_226E97D1C(v9, &unk_27D7BB920, &unk_227672480);
      v19 = sub_227664EC0();
      sub_22714F81C();
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51188], v19);
      return swift_willThrow();
    }

    else
    {
      return (*(v18 + 32))(a3, v9, v17);
    }
  }

  return result;
}

uint64_t sub_22714E544(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_2276627D0();
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v3[30] = *(v5 + 64);
  v3[31] = swift_task_alloc();
  v3[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB830, &qword_22767B000);
  v3[33] = swift_task_alloc();
  v6 = sub_2276638D0();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22714E6A8, 0, 0);
}

uint64_t sub_22714E6A8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = v4[16];
  v7 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v6);
  sub_22714E1C4(v4, v0 + 16);
  (*(v3 + 16))(v1, v5, v2);
  v8 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v0 + 296) = v9;
  v10 = *(v0 + 160);
  *(v9 + 144) = *(v0 + 144);
  *(v9 + 160) = v10;
  *(v9 + 176) = *(v0 + 176);
  *(v9 + 192) = *(v0 + 192);
  v11 = *(v0 + 96);
  *(v9 + 80) = *(v0 + 80);
  *(v9 + 96) = v11;
  v12 = *(v0 + 128);
  *(v9 + 112) = *(v0 + 112);
  *(v9 + 128) = v12;
  v13 = *(v0 + 32);
  *(v9 + 16) = *(v0 + 16);
  *(v9 + 32) = v13;
  v14 = *(v0 + 64);
  *(v9 + 48) = *(v0 + 48);
  *(v9 + 64) = v14;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v19 = (*(v7 + 24) + **(v7 + 24));
  v15 = swift_task_alloc();
  *(v0 + 304) = v15;
  *v15 = v0;
  v15[1] = sub_22714E8B8;
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);

  return v19(v16, sub_22714F874, v9, v17, v6, v7);
}

uint64_t sub_22714E8B8()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_22714EC74;
  }

  else
  {

    v2 = sub_22714E9D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22714E9D4()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[27];
  v4 = *(v0[33] + *(v0[32] + 48));
  v0[40] = v4;
  (*(v2 + 32))(v1);
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_22714EAA8;
  v6 = v0[25];

  return sub_227432300(v6, v3 + 40, v4);
}

uint64_t sub_22714EAA8()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_22714ED00;
  }

  else
  {
    v2 = sub_22714EBD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22714EBD8()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22714EC74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22714ED00()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22714ED9C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = sub_227663FA0();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276627D0();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276638D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2 + 18, a2[21]);
  v15 = a3;
  v16 = a1;
  v17 = v34;
  result = sub_22714E27C(v15, a1, v14);
  if (!v17)
  {
    v28 = v12;
    v34 = v11;
    sub_2276637C0();
    sub_2276637D0();
    v19 = sub_226F491E8();
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    sub_226EAF48C(a1, v32);
    v20 = v32;
    sub_227663F60();
    v22 = v21;
    (*(v30 + 8))(v20, v7);
    v23 = v33;
    v24 = sub_22727227C(v33, v19, v16, v22);
    (*(v31 + 8))(v23, v9);

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB830, &qword_22767B000) + 48);
    v26 = v29;
    result = (*(v28 + 32))(v29, v14, v34);
    *(v26 + v25) = v24;
  }

  return result;
}

void sub_22714F0FC(uint64_t a1, char a2, void *a3)
{
  v66 = a3;
  v6 = sub_227666760();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_227665F20();
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - v12;
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_24;
  }

  v54[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v61 + 80);
  v59 = a1;
  v16 = a1 + ((v15 + 32) & ~v15);
  v17 = (v62 + 32);
  v18 = (v63 + 32);
  v56 = v16;
  sub_22714F7AC(v16, v13);
  v55 = *v17;
  v55(v9, v13, v65);
  v19 = *v18;
  v57 = v14;
  v60 = v6;
  v19(v64, &v13[v14], v6);
  v20 = *v66;
  v22 = sub_226F3A6FC(v9);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_226FF3C28();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_226FEA754(v25, a2 & 1);
  v27 = sub_226F3A6FC(v9);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v31 = v65;
      v32 = *v66;
      *(*v66 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v55((v32[6] + *(v62 + 72) * v22), v9, v31);
      v33 = v60;
      v19((v32[7] + *(v63 + 72) * v22), v64, v60);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v58 != 1)
      {
        v37 = 1;
        while (v37 < *(v59 + 16))
        {
          sub_22714F7AC(v56 + *(v61 + 72) * v37, v13);
          v38 = *v17;
          (*v17)(v9, v13, v65);
          v39 = *v18;
          (*v18)(v64, &v13[v57], v33);
          v40 = *v66;
          v41 = sub_226F3A6FC(v9);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v35 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v35)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_226FEA754(v45, 1);
            v41 = sub_226F3A6FC(v9);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = v65;
          v49 = *v66;
          *(*v66 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v50 = v41;
          v38((v49[6] + *(v62 + 72) * v41), v9, v48);
          v51 = v49[7] + *(v63 + 72) * v50;
          v33 = v60;
          v39(v51, v64, v60);
          v52 = v49[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v49[2] = v53;
          if (v58 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v69 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v64, v60);
      (*(v62 + 8))(v9, v65);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22766D220();
  __break(1u);
LABEL_29:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_22714F73C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22714F7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22714F81C()
{
  result = qword_28139B898;
  if (!qword_28139B898)
  {
    sub_227664EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B898);
  }

  return result;
}

uint64_t static KeyCertificate.canonical()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227662300();
  v3 = MEMORY[0x22AA8E800](v2);
  v5 = v4;
  result = type metadata accessor for KeyCertificate(0);
  v7 = (a1 + *(result + 20));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

uint64_t sub_22714F940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662300();
  result = MEMORY[0x22AA8E800](v4);
  v6 = (a2 + *(a1 + 20));
  *v6 = result;
  v6[1] = v7;
  return result;
}

void sub_22714F978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_226F1EF30(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_22766CC90();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_226F1EF30((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_226EB526C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_22714FBA0(id a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F08, &qword_227672920);
  MEMORY[0x28223BE20](v3 - 8);
  v176 = v152 - v4;
  v5 = sub_227664210();
  v178 = *(v5 - 8);
  v179 = v5;
  MEMORY[0x28223BE20](v5);
  v177 = v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v7 - 8);
  v175 = v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v152 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v12 - 8);
  v174 = v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v152 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v152 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v152 - v21;
  v23 = sub_2276624A0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v172 = v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v171 = v152 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v152 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v152 - v33;
  v35 = [a1 identifier];
  if (!v35)
  {
    goto LABEL_13;
  }

  v169 = v11;
  v184 = v23;
  v36 = v35;
  v168 = sub_22766C000();
  v38 = v37;

  v39 = [a1 title];
  if (!v39)
  {

LABEL_13:
    v50 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D51028], v50);
    swift_willThrow();

    return;
  }

  v165 = v16;
  v167 = v30;
  v40 = v39;
  v164 = sub_22766C000();
  v170 = v41;

  v180 = a1;
  v42 = [a1 streamingURL];
  if (v42)
  {
    v43 = v42;
    sub_22766C000();
  }

  sub_227662310();
  v44 = *(v24 + 48);
  v45 = v184;
  if (v44(v22, 1, v184) == 1)
  {

    v46 = v22;
LABEL_12:
    sub_226E97D1C(v46, &unk_27D7BB570, &unk_227670FC0);
    a1 = v180;
    goto LABEL_13;
  }

  v163 = v38;
  v166 = v24;
  v47 = *(v24 + 32);
  v47(v34, v22, v45);
  v48 = [v180 sharingURL];
  if (v48)
  {
    v49 = v48;
    sub_22766C000();

    v45 = v184;
  }

  sub_227662310();
  if (v44(v19, 1, v45) == 1)
  {
    (*(v166 + 8))(v34, v45);

    v46 = v19;
    goto LABEL_12;
  }

  v52 = v167;
  v47(v167, v19, v45);
  v53 = v180;
  v54 = [v180 trainerEvents];
  v55 = v34;
  if (!v54)
  {
    v61 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277D51028], v61);
    swift_willThrow();

    v60 = v166;

    goto LABEL_23;
  }

  v56 = v54;
  v57 = MEMORY[0x22AA99A00]();
  v58 = v181;
  v59 = sub_227158438(v56);
  v60 = v166;
  if (v58)
  {
    objc_autoreleasePoolPop(v57);

LABEL_23:
    v71 = *(v60 + 8);
    v71(v52, v45);
    v72 = v55;
LABEL_24:
    v71(v72, v45);
    return;
  }

  v63 = v59;
  objc_autoreleasePoolPop(v57);
  v64 = sub_226F3FC54(v63);

  v65 = v180;
  v66 = [v180 musicTracks];
  if (!v66)
  {
    v69 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x277D51028], v69);
    swift_willThrow();

LABEL_21:

LABEL_22:
    v60 = v166;
    goto LABEL_23;
  }

  v67 = v66;
  v68 = MEMORY[0x22AA99A00]();
  v73 = sub_227156A60(v67, MEMORY[0x277D4FEC8], sub_226F1F408, type metadata accessor for ManagedMusicTrack, sub_2275D46FC);
  objc_autoreleasePoolPop(v68);
  v74 = sub_226F3FAB8(v73);

  v75 = [v65 mediaMoments];
  if (!v75)
  {
    v78 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v78 - 8) + 104))(v79, *MEMORY[0x277D51028], v78);
    swift_willThrow();

    goto LABEL_21;
  }

  v76 = v75;
  v77 = MEMORY[0x22AA99A00]();
  v80 = sub_2271579B8(v76);
  objc_autoreleasePoolPop(v77);
  v160 = sub_226F3F91C(v80);

  v81 = [v65 artwork];
  if (v81)
  {
    v82 = v81;
    sub_227662590();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  sub_2276683D0();
  v181 = v182;
  v83 = [v65 musicPlaylistURL];
  if (v83)
  {
    v84 = v83;
    sub_22766C000();
  }

  v161 = v74;
  sub_227662310();
  v85 = v180;
  v86 = [v180 musicPlaylistIdentifier];
  if (v86)
  {
    v87 = v86;
    v88 = sub_22766C000();
    v159 = v89;
  }

  else
  {
    v88 = 0;
    v159 = 0;
  }

  v90 = v169;
  v91 = v177;
  v92 = [v85 preview];
  if (v92)
  {
    sub_226F96E94(v92, v91);
    v96 = v178;
    v97 = v90;
    v98 = v179;
    (*(v178 + 32))(v97, v91, v179);
    v99 = v98;
    v100 = 0;
    v45 = v184;
  }

  else
  {
    v93 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v94 = swift_allocError();
    (*(*(v93 - 8) + 104))(v95, *MEMORY[0x277D51028], v93);
    swift_willThrow();

    v100 = 1;
    v45 = v184;
    v96 = v178;
    v99 = v179;
  }

  (*(v96 + 56))(v169, v100, 1, v99);
  v101 = [v85 location];
  if (v101)
  {
    v102 = v101;
    v177 = sub_22766C000();
    v179 = v103;
  }

  else
  {
    v177 = 0;
    v179 = 0;
  }

  v104 = [v85 summary];
  v162 = v64;
  if (v104)
  {
    v105 = v104;
    sub_22766C000();
    v178 = v106;
  }

  else
  {
    v178 = 0;
  }

  v60 = v166;
  v107 = [v85 contributors];
  if (!v107)
  {
    v110 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v110 - 8) + 104))(v111, *MEMORY[0x277D51028], v110);
    swift_willThrow();

    sub_226E97D1C(v169, &qword_27D7B8F00, &unk_227672910);
    sub_226E97D1C(v165, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_23;
  }

  v108 = v107;
  v158 = v88;
  v109 = MEMORY[0x22AA99A00]();
  v112 = sub_227156A60(v108, MEMORY[0x277D4FFF0], sub_226F1F3C8, type metadata accessor for ManagedContributor, sub_2270A7880);
  objc_autoreleasePoolPop(v109);
  v113 = sub_226F3F780(v112);

  v114 = [v85 accessibilityFeatures];
  if (!v114)
  {
    v117 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v117 - 8) + 104))(v118, *MEMORY[0x277D51028], v117);
    swift_willThrow();

    v45 = v184;

    sub_226E97D1C(v169, &qword_27D7B8F00, &unk_227672910);
    sub_226E97D1C(v165, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_22;
  }

  v115 = v114;
  v157 = v113;
  v116 = MEMORY[0x22AA99A00]();
  v119 = sub_226EB218C(v115, sub_226F1F2E8, type metadata accessor for ManagedCatalogAccessibilityFeature, &selRef_feature, sub_226F51824, MEMORY[0x277D530D8]);
  v120 = v55;
  objc_autoreleasePoolPop(v116);
  v156 = sub_226F3ECEC(v119);

  v121 = [v85 commentaryEvents];
  if (!v121)
  {
    v124 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v124 - 8) + 104))(v125, *MEMORY[0x277D51028], v124);
    swift_willThrow();

LABEL_60:

    sub_226E97D1C(v169, &qword_27D7B8F00, &unk_227672910);
    sub_226E97D1C(v165, &unk_27D7BB570, &unk_227670FC0);
    v71 = *(v166 + 8);
    v45 = v184;
    v71(v167, v184);
    v72 = v55;
    goto LABEL_24;
  }

  v122 = v121;
  v123 = MEMORY[0x22AA99A00]();
  v126 = sub_2271570C0(v122);
  objc_autoreleasePoolPop(v123);
  v154 = sub_226F3F5E4(v126);

  v127 = [v180 streamingProgramIdentifier];
  if (v127)
  {
    v128 = v127;
    v153 = sub_22766C000();
    v155 = v129;
  }

  else
  {
    v153 = 0;
    v155 = 0;
  }

  v130 = [v180 languageDisclaimers];
  if (!v130)
  {
    v133 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v133 - 8) + 104))(v134, *MEMORY[0x277D51028], v133);
    swift_willThrow();

LABEL_59:

    goto LABEL_60;
  }

  v131 = v130;
  v132 = MEMORY[0x22AA99A00]();
  v135 = sub_227156A60(v131, MEMORY[0x277D51730], sub_226F1F388, type metadata accessor for ManagedLanguageDisclaimer, sub_2271E39B0);
  objc_autoreleasePoolPop(v132);
  v152[3] = sub_226F3F448(v135);

  v136 = [v180 coachingEvents];
  if (!v136)
  {
    v139 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v139 - 8) + 104))(v140, *MEMORY[0x277D51028], v139);
    swift_willThrow();

    goto LABEL_59;
  }

  v137 = v136;
  v138 = MEMORY[0x22AA99A00]();
  v141 = sub_227156A60(v137, MEMORY[0x277D50520], sub_226F1F368, type metadata accessor for ManagedCoachingEvent, sub_226F5E16C);
  objc_autoreleasePoolPop(v138);
  v152[2] = sub_226F3F2AC(v141);

  v152[1] = sub_2274B47BC([v180 availableAudioLanguages]);
  v142 = MEMORY[0x277D84FA0];
  if (v181)
  {
    v142 = v181;
  }

  v181 = v142;
  v143 = [v180 contentRatingSystem];
  if (v143)
  {
    v144 = v143;
    v145 = sub_22766C000();
    v147 = v146;
  }

  else
  {
    v145 = 0;
    v147 = 0;
  }

  v182 = v145;
  v183 = v147;
  sub_227665900();
  sub_226EB2904(&qword_27D7BB868, MEMORY[0x277D51A70], MEMORY[0x277D51A78]);
  sub_227663AF0();
  sub_226E93170(v165, v174, &unk_27D7BB570, &unk_227670FC0);
  sub_226E93170(v169, v175, &qword_27D7B8F00, &unk_227672910);
  v148 = v166;
  v149 = *(v166 + 16);
  v150 = v184;
  v149(v171, v167, v184);
  v149(v172, v120, v150);
  sub_227666430();

  sub_226E97D1C(v169, &qword_27D7B8F00, &unk_227672910);
  sub_226E97D1C(v165, &unk_27D7BB570, &unk_227670FC0);
  v151 = *(v148 + 8);
  v151(v167, v150);
  v151(v120, v150);
}

void sub_2271515C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v99 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F08, &qword_227672920);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v88 - v10;
  v12 = sub_2276624A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666370();
  v16 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666480();
  v17 = sub_22766BFD0();

  [a1 setTitle_];

  sub_2276664B0();
  v94 = v11;
  if (v18)
  {
    v19 = sub_22766BFD0();
  }

  else
  {
    v19 = 0;
  }

  [a1 setSummary_];

  sub_2276663C0();
  sub_227662390();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v21 = sub_22766BFD0();

  [a1 setStreamingURL_];

  v22 = sub_2276663D0();
  v96 = v3;
  v23 = v99;
  v24 = v97;
  sub_22764A594(v99, v22);
  if (v24)
  {

    return;
  }

  v26 = v25;
  v90 = v13 + 8;
  v91 = v13;
  v89 = v15;
  v92 = v20;
  v97 = v12;

  [a1 setTrainerEvents_];

  v27 = sub_227666390();
  sub_22764AA60(v23, v27);
  v29 = v28;

  [a1 setMusicTracks_];

  v30 = sub_2276663B0();
  sub_22764AE80(v23, v30);
  v32 = v31;

  [a1 setMediaMoments_];

  v98 = sub_227666490();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  v33 = sub_2276683C0();
  v35 = v34;

  v36 = sub_227662560();
  sub_226EDC420(v33, v35);
  [0 setArtwork_];

  v37 = v94;
  sub_227666400();
  v38 = v97;
  if ((*(v91 + 48))(v37, 1, v97) == 1)
  {
    sub_226E97D1C(v37, &unk_27D7BB570, &unk_227670FC0);
    v39 = 0;
  }

  else
  {
    sub_227662390();
    v92(v37, v38);
    v39 = sub_22766BFD0();
  }

  v40 = v99;
  [a1 setMusicPlaylistURL_];

  sub_227666460();
  if (v41)
  {
    v42 = sub_22766BFD0();
  }

  else
  {
    v42 = 0;
  }

  [a1 setMusicPlaylistIdentifier_];

  v43 = v95;
  sub_2276664A0();
  v44 = sub_227664210();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_226E97D1C(v43, &qword_27D7B8F00, &unk_227672910);
    v46 = 0;
  }

  else
  {
    v50 = objc_opt_self();
    v51 = sub_22766BFD0();
    v52 = [v50 insertNewObjectForEntityForName:v51 inManagedObjectContext:v40];

    type metadata accessor for ManagedCatalogPreview();
    v53 = swift_dynamicCastClass();
    if (!v53)
    {

      v65 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D51000], v65);
      swift_willThrow();
      (*(v45 + 8))(v95, v44);
      return;
    }

    v46 = v53;
    v54 = v95;
    sub_226F9789C(v53);
    (*(v45 + 8))(v54, v44);
  }

  [a1 setPreview_];

  sub_2276664C0();
  v47 = v92;
  if (v48)
  {
    v49 = sub_22766BFD0();
  }

  else
  {
    v49 = 0;
  }

  [a1 setLocation_];

  v55 = sub_2276663A0();
  sub_22764B438(v40, v55);
  v57 = v56;

  [a1 setContributors_];

  v58 = v89;
  sub_227666380();
  sub_227662390();
  v47(v58, v97);
  v59 = sub_22766BFD0();

  [a1 setSharingURL_];

  v60 = sub_2276663F0();
  sub_22764B860(v40, v60);
  v62 = v61;

  [a1 setCommentaryEvents_];

  sub_227666470();
  if (v63)
  {
    v64 = sub_22766BFD0();
  }

  else
  {
    v64 = 0;
  }

  [a1 setStreamingProgramIdentifier_];

  v67 = sub_227666440();
  sub_227647448(v40, v67);
  v69 = v68;

  [a1 setAccessibilityFeatures_];

  v70 = sub_227666420();
  sub_22764BD14(v40, v70);
  v72 = v71;

  [a1 setLanguageDisclaimers_];

  v73 = sub_2276663E0();
  sub_22764C1DC(v40, v73);
  v75 = v74;

  [a1 setCoachingEvents_];

  v76 = sub_227666450();
  sub_22714F978(v76);
  v78 = v77;

  v79 = a1;
  v80 = v40;
  v81 = sub_226F3DADC(v78);

  sub_22764C5CC(v80, v81);
  v83 = v82;

  [v79 setAvailableAudioLanguages_];

  v84 = v93;
  sub_227666410();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB858, &qword_22767B048);
  if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
  {
    sub_226E97D1C(v93, &qword_27D7B8F08, &qword_227672920);
    v86 = 0;
  }

  else
  {
    v87 = v93;
    sub_227663AD0();
    sub_226E97D1C(v87, &qword_27D7BB858, &qword_22767B048);
    v86 = sub_22766BFD0();
  }

  [v79 setContentRatingSystem_];
}

void *static CatalogWorkoutMetadata.representativeSamples()()
{
  v0 = sub_2276624A0();
  v128 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v103 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v132 = &v90 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v90 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v131 = &v90 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F08, &qword_227672920);
  MEMORY[0x28223BE20](v8 - 8);
  v130 = &v90 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB838, &qword_22767B030);
  v10 = *(v101 - 1);
  MEMORY[0x28223BE20](v101);
  v129 = &v90 - v11;
  v100 = sub_2276664D0();
  v12 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v133 = sub_22766C090();
  v14 = sub_22766CB70();
  v15 = sub_22766CB70();
  v104 = v0;
  v16 = sub_22766CB70();
  v17 = sub_2276622F0();
  v18 = sub_22766CB70();
  v19 = sub_2276622F0();
  v20 = sub_22766C090();
  v21 = sub_22766C090();
  v160 = v14;
  v161[0] = v133;
  v161[1] = v161;
  v161[2] = &v160;
  v158 = v16;
  v159 = v15;
  v161[3] = &v159;
  v161[4] = &v158;
  v156 = v18;
  v157 = v17;
  v161[5] = &v157;
  v161[6] = &v156;
  v154 = v20;
  v155 = v19;
  v161[7] = &v155;
  v161[8] = &v154;
  v153 = v21;
  v161[9] = &v153;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v144 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v145 = v23;
  v146 = v23;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB840, &qword_22767B038);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v149 = v23;
  v150 = v148;
  v151 = v22;
  v152 = v22;
  v24 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v135 = v24;
  v25 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v136 = v25;
  v137 = v25;
  v138 = sub_226F5BF60(&qword_27D7BB848, &qword_27D7BB840, &qword_22767B038);
  v139 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v140 = v25;
  v141 = v139;
  v142 = v24;
  v143 = v24;
  v26 = sub_2276638E0();

  v27 = *(v26 + 16);
  if (v27)
  {
    v134 = MEMORY[0x277D84F90];
    result = sub_226F1F8E8(0, v27, 0);
    v29 = 0;
    v94 = v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v92 = v12 + 32;
    v93 = (v128 + 16);
    v30 = v134;
    v31 = *MEMORY[0x277D53DC8];
    v90 = *MEMORY[0x277D51A60];
    v91 = v31;
    v133 = xmmword_227670CD0;
    v97 = v12;
    v98 = v10;
    v95 = v27;
    v96 = v26;
    while (v29 < *(v26 + 16))
    {
      v32 = v129;
      sub_226E93170(v94 + *(v10 + 72) * v29, v129, &qword_27D7BB838, &qword_22767B030);
      v33 = *v32;
      v34 = *(v32 + 1);
      v35 = *(v32 + 3);
      v126 = *(v32 + 2);
      v127 = v33;
      v119 = v34;
      v120 = v35;
      v36 = *(v32 + 5);
      v125 = *(v32 + 4);
      v109 = v101[20];
      v112 = v101[24];
      v37 = &v32[v101[28]];
      v39 = *v37;
      v38 = v37[1];
      v124 = v39;
      v117 = v38;
      v113 = v101[32];
      v121 = *&v32[v101[36]];
      v122 = v36;
      v40 = &v32[v101[40]];
      v41 = v32;
      v43 = *v40;
      v42 = v40[1];
      v118 = v43;
      v116 = v42;
      v123 = sub_226F4DB14(&unk_283A93A78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB850, &qword_22767B040);
      v44 = sub_227669180();
      v45 = *(v44 - 8);
      v46 = *(v45 + 80);
      v128 = v30;
      v47 = (v46 + 32) & ~v46;
      v48 = swift_allocObject();
      *(v48 + 16) = v133;
      sub_227669170();
      v115 = sub_226F4DD20(v48);
      swift_setDeallocating();
      (*(v45 + 8))(v48 + v47, v44);
      swift_deallocClassInstance();
      v114 = sub_226F4BE8C(&unk_283A93AC8);
      sub_226FA6DA4(&unk_283A93AE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB278, &qword_227679E10);
      v49 = sub_227663E50();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v133;
      sub_227663E30();
      v111 = sub_226F4E040(v52);
      swift_setDeallocating();
      (*(v50 + 8))(v52 + v51, v49);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB258, &qword_227679DD0);
      v53 = sub_227664650();
      v54 = *(v53 - 8);
      v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v133;
      sub_227664630();
      v110 = sub_226F4E360(v56);
      swift_setDeallocating();
      (*(v54 + 8))(v56 + v55, v53);
      swift_deallocClassInstance();
      v57 = sub_2276694F0();
      v58 = v130;
      (*(*(v57 - 8) + 104))(v130, v91, v57);
      v59 = sub_227665900();
      (*(*(v59 - 8) + 104))(v58, v90, v59);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB858, &qword_22767B048);
      swift_storeEnumTagMultiPayload();
      (*(*(v60 - 8) + 56))(v58, 0, 1, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB248, &unk_227679DC0);
      v61 = sub_227663610();
      v62 = *(v61 - 8);
      v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = v133;
      sub_227663600();
      v108 = sub_226F4E680(v64);
      swift_setDeallocating();
      (*(v62 + 8))(v64 + v63, v61);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB030, &unk_227679B40);
      v65 = sub_2276655A0();
      v66 = *(v65 - 8);
      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = v133;
      sub_227665580();
      v107 = sub_226F4E9A0(v68);
      swift_setDeallocating();
      (*(v66 + 8))(v68 + v67, v65);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFB8, &qword_227679A78);
      v69 = sub_227663680();
      v70 = *(v69 - 8);
      v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = v133;
      sub_227663660();
      v106 = sub_226F4ECC0(v72);
      swift_setDeallocating();
      (*(v70 + 8))(v72 + v71, v69);
      swift_deallocClassInstance();
      sub_226E93170(&v41[v109], v131, &unk_27D7BB570, &unk_227670FC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF48, &qword_2276799F0);
      v73 = sub_227663350();
      v74 = *(v73 - 8);
      v75 = *(v74 + 80);
      v109 = v29;
      v76 = (v75 + 32) & ~v75;
      v77 = swift_allocObject();
      *(v77 + 16) = v133;
      sub_227663330();
      v105 = sub_226F4EFE0(v77);
      swift_setDeallocating();
      (*(v74 + 8))(v77 + v76, v73);
      swift_deallocClassInstance();
      v78 = v102;
      sub_227664200();
      v79 = sub_227664210();
      (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
      v80 = *v93;
      v81 = v104;
      (*v93)(v132, &v41[v112], v104);
      v80(v103, &v41[v113], v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB010, &qword_227679B10);
      v82 = sub_227663C90();
      v83 = *(v82 - 8);
      v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = v133;
      sub_227663C70();
      sub_226F4F300(v85);
      swift_setDeallocating();
      v86 = v85 + v84;
      v30 = v128;
      (*(v83 + 8))(v86, v82);
      swift_deallocClassInstance();

      v87 = v99;
      sub_227666430();
      sub_226E97D1C(v129, &qword_27D7BB838, &qword_22767B030);
      v134 = v30;
      v89 = *(v30 + 16);
      v88 = *(v30 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_226F1F8E8((v88 > 1), v89 + 1, 1);
        v30 = v134;
      }

      v29 = v109 + 1;
      *(v30 + 16) = v89 + 1;
      result = (*(v97 + 32))(v30 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v89, v87, v100);
      v26 = v96;
      v10 = v98;
      if (v95 == v29)
      {

        return v30;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_2271531E0(void *a1)
{
  v107 = sub_227668480();
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v4 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v117 = &v100 - v6;
  v7 = sub_2276622D0();
  v101 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v120 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v100 - v10;
  MEMORY[0x28223BE20](v12);
  v118 = &v100 - v13;
  MEMORY[0x28223BE20](v14);
  v119 = &v100 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v100 - v18;
  v20 = [a1 count];
  v128 = MEMORY[0x277D84F90];
  sub_226F1F1B0(0, v20 & ~(v20 >> 63), 0);
  v116 = v128;
  v113 = v19;
  result = sub_22766CA80();
  if (v20 < 0)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  v114 = v1;
  if (v20)
  {
    v104 = v4;
    v106 = (v101 + 8);
    v102 = v108 + 32;
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    v22 = 0;
    v103 = v20;
    while (1)
    {
      v112 = v22;
      result = sub_22766CBB0();
      if (!v127)
      {
        goto LABEL_95;
      }

      sub_226E97CC0(&v126, &v124);
      type metadata accessor for ManagedWorkoutPlanModalityPreference();
      if (!swift_dynamicCast())
      {
        break;
      }

      v23 = *&v123[0];
      v24 = [*&v123[0] modalityIdentifier];
      if (!v24)
      {
        (*v106)(v113, v7);
        v94 = sub_227664DD0();
        sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v94 - 8) + 104))(v95, *MEMORY[0x277D51028], v94);
        swift_willThrow();

        return __swift_destroy_boxed_opaque_existential_0(&v126);
      }

      v25 = v24;
      v110 = sub_22766C000();
      v111 = v26;

      v27 = [v23 preferredMusicGenres];
      v115 = v23;
      if (v27)
      {
        v105 = v27;
        sub_22766CA80();
        sub_22766CBB0();
        if (v125)
        {
          v28 = MEMORY[0x277D84F90];
          do
          {
            sub_226F04970(&v124, v123);
            sub_226E97CC0(v123, v122);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
            if (swift_dynamicCast())
            {
              v29 = v121;
              ObjectType = swift_getObjectType();
              v31 = (*(v29 + 8))(ObjectType, v29);
              v33 = v32;
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(v123);
              if (v33)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v28 = sub_226EB3F78(0, *(v28 + 2) + 1, 1, v28);
                }

                v35 = *(v28 + 2);
                v34 = *(v28 + 3);
                if (v35 >= v34 >> 1)
                {
                  v28 = sub_226EB3F78((v34 > 1), v35 + 1, 1, v28);
                }

                *(v28 + 2) = v35 + 1;
                v36 = &v28[16 * v35];
                *(v36 + 4) = v31;
                *(v36 + 5) = v33;
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(v123);
            }

            sub_22766CBB0();
          }

          while (v125);
        }

        else
        {
          v28 = MEMORY[0x277D84F90];
        }

        (*v106)(v11, v7);
        v109 = sub_226F3E6A8(v28);
        v39 = v105;

        v23 = v115;
      }

      else
      {
        sub_226F62704();
        v37 = v114;
        v38 = sub_22766C5E0();
        v114 = v37;
        if (v37)
        {
          (*v106)(v113, v7);

          return __swift_destroy_boxed_opaque_existential_0(&v126);
        }

        v109 = v38;
      }

      v40 = [v23 preferredTrainers];
      if (v40)
      {
        v105 = v40;
        sub_22766CA80();
        sub_22766CBB0();
        if (v125)
        {
          v41 = MEMORY[0x277D84F90];
          do
          {
            sub_226F04970(&v124, v123);
            sub_226E97CC0(v123, v122);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
            if (swift_dynamicCast())
            {
              v42 = v121;
              v43 = swift_getObjectType();
              v44 = (*(v42 + 8))(v43, v42);
              v46 = v45;
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(v123);
              if (v46)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_226EB3F78(0, *(v41 + 2) + 1, 1, v41);
                }

                v48 = *(v41 + 2);
                v47 = *(v41 + 3);
                if (v48 >= v47 >> 1)
                {
                  v41 = sub_226EB3F78((v47 > 1), v48 + 1, 1, v41);
                }

                *(v41 + 2) = v48 + 1;
                v49 = &v41[16 * v48];
                *(v49 + 4) = v44;
                *(v49 + 5) = v46;
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(v123);
            }

            sub_22766CBB0();
          }

          while (v125);
        }

        else
        {
          v41 = MEMORY[0x277D84F90];
        }

        (*v106)(v120, v7);
        sub_226F3E6A8(v41);
        v51 = v105;
      }

      else
      {
        sub_226F62704();
        v50 = v114;
        sub_22766C5E0();
        v114 = v50;
        if (v50)
        {
          (*v106)(v113, v7);

          return __swift_destroy_boxed_opaque_existential_0(&v126);
        }
      }

      v52 = v104;
      sub_227668450();

      __swift_destroy_boxed_opaque_existential_0(&v126);
      v53 = v116;
      v128 = v116;
      v55 = *(v116 + 16);
      v54 = *(v116 + 24);
      v56 = v112;
      if (v55 >= v54 >> 1)
      {
        sub_226F1F1B0((v54 > 1), v55 + 1, 1);
        v53 = v128;
      }

      v22 = v56 + 1;
      *(v53 + 16) = v55 + 1;
      v57 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v116 = v53;
      (*(v108 + 32))(v53 + v57 + *(v108 + 72) * v55, v52, v107);
      if (v22 == v103)
      {
        goto LABEL_42;
      }
    }

    (*v106)(v113, v7);
    v92 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v92 - 8) + 104))(v93, *MEMORY[0x277D51028], v92);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_0(&v126);
  }

LABEL_42:
  sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22766CBB0();
  if (!v125)
  {
LABEL_81:
    (*(v101 + 8))(v113, v7);
    sub_226E97D1C(&v124, &unk_27D7BC990, &qword_227670A30);
    return v116;
  }

  v110 = (v101 + 8);
  v106 = (v108 + 32);
  while (1)
  {
    sub_226F04970(&v124, &v126);
    sub_226E97CC0(&v126, &v124);
    type metadata accessor for ManagedWorkoutPlanModalityPreference();
    if (!swift_dynamicCast())
    {
      (*v110)(v113, v7);
      v96 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v96 - 8) + 104))(v97, *MEMORY[0x277D51028], v96);
      swift_willThrow();
LABEL_86:
      __swift_destroy_boxed_opaque_existential_0(&v126);
    }

    v58 = *&v123[0];
    v59 = [*&v123[0] modalityIdentifier];
    if (!v59)
    {
      (*v110)(v113, v7);
      v98 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v98 - 8) + 104))(v99, *MEMORY[0x277D51028], v98);
      swift_willThrow();

      goto LABEL_86;
    }

    v60 = v59;
    v112 = sub_22766C000();
    v62 = v61;

    v63 = [v58 preferredMusicGenres];
    v120 = v58;
    v115 = v62;
    if (v63)
    {
      v109 = v63;
      sub_22766CA80();
      sub_22766CBB0();
      v64 = MEMORY[0x277D84F90];
      while (v125)
      {
        sub_226F04970(&v124, v123);
        sub_226E97CC0(v123, v122);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
        if (swift_dynamicCast())
        {
          v66 = v121;
          v67 = swift_getObjectType();
          v68 = (*(v66 + 8))(v67, v66);
          v70 = v69;
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v123);
          if (v70)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_226EB3F78(0, *(v64 + 2) + 1, 1, v64);
            }

            v72 = *(v64 + 2);
            v71 = *(v64 + 3);
            if (v72 >= v71 >> 1)
            {
              v64 = sub_226EB3F78((v71 > 1), v72 + 1, 1, v64);
            }

            *(v64 + 2) = v72 + 1;
            v73 = &v64[16 * v72];
            *(v73 + 4) = v68;
            *(v73 + 5) = v70;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v123);
        }

        sub_22766CBB0();
      }

      (*v110)(v119, v7);
      v111 = sub_226F3E6A8(v64);
      v65 = v109;

      v58 = v120;
    }

    else
    {
      sub_226F62704();
      v74 = v114;
      v75 = sub_22766C5E0();
      v114 = v74;
      if (v74)
      {
        goto LABEL_92;
      }

      v111 = v75;
    }

    v76 = [v58 preferredTrainers];
    if (v76)
    {
      v109 = v76;
      sub_22766CA80();
      sub_22766CBB0();
      if (v125)
      {
        v77 = MEMORY[0x277D84F90];
        do
        {
          sub_226F04970(&v124, v123);
          sub_226E97CC0(v123, v122);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
          if (swift_dynamicCast())
          {
            v78 = v121;
            v79 = swift_getObjectType();
            v80 = (*(v78 + 8))(v79, v78);
            v82 = v81;
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0(v123);
            if (v82)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v77 = sub_226EB3F78(0, *(v77 + 2) + 1, 1, v77);
              }

              v84 = *(v77 + 2);
              v83 = *(v77 + 3);
              if (v84 >= v83 >> 1)
              {
                v77 = sub_226EB3F78((v83 > 1), v84 + 1, 1, v77);
              }

              *(v77 + 2) = v84 + 1;
              v85 = &v77[16 * v84];
              *(v85 + 4) = v80;
              *(v85 + 5) = v82;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v123);
          }

          sub_22766CBB0();
        }

        while (v125);
      }

      else
      {
        v77 = MEMORY[0x277D84F90];
      }

      (*v110)(v118, v7);
      sub_226F3E6A8(v77);
      v87 = v109;

      v58 = v120;
      goto LABEL_78;
    }

    sub_226F62704();
    v86 = v114;
    sub_22766C5E0();
    v114 = v86;
    if (v86)
    {
      break;
    }

LABEL_78:
    sub_227668450();

    __swift_destroy_boxed_opaque_existential_0(&v126);
    v88 = v116;
    v128 = v116;
    v90 = *(v116 + 16);
    v89 = *(v116 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_226F1F1B0((v89 > 1), v90 + 1, 1);
      v88 = v128;
    }

    *(v88 + 16) = v90 + 1;
    v91 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v116 = v88;
    (*(v108 + 32))(v88 + v91 + *(v108 + 72) * v90);
    sub_22766CBB0();
    if (!v125)
    {
      goto LABEL_81;
    }
  }

LABEL_92:

  __swift_destroy_boxed_opaque_existential_0(&v126);
  (*v110)(v113, v7);
}

void *sub_22715454C(void *a1)
{
  v39 = sub_2276622D0();
  v37 = *(v39 - 8);
  v2 = MEMORY[0x28223BE20](v39);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 count];
  v45 = MEMORY[0x277D84F90];
  sub_226F1F1F0(0, v5 & ~(v5 >> 63), 0);
  v6 = v45;
  v38 = v4;
  result = sub_22766CA80();
  if (v5 < 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  if (v5)
  {
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    while (1)
    {
      result = sub_22766CBB0();
      if (!v44)
      {
        goto LABEL_37;
      }

      sub_226E97CC0(&v43, &v41);
      type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
      if (!swift_dynamicCast())
      {
        break;
      }

      v8 = v40;
      v9 = [v40 bodyFocus];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v9 = [v8 equipment];
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v9 = [v8 skillLevel];
          if (!v9)
          {
            v9 = [v8 theme];
            if (!v9)
            {
              v32 = sub_227664DD0();
              sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
              swift_allocError();
              (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51028], v32);
              swift_willThrow();

              (*(v37 + 8))(v38, v39);
              goto LABEL_30;
            }
          }

          v10 = 2;
        }
      }

      v11 = v9;
      v12 = sub_22766C000();
      v14 = v13;

      __swift_destroy_boxed_opaque_existential_0(&v43);
      v45 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F1F1F0((v15 > 1), v16 + 1, 1);
        v6 = v45;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 24 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      *(v17 + 48) = v10;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }

    (*(v37 + 8))(v38, v39);
    v28 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
    swift_willThrow();
LABEL_30:

    __swift_destroy_boxed_opaque_existential_0(&v43);
    return v6;
  }

LABEL_16:
  sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22766CBB0();
  if (!v42)
  {
LABEL_28:
    (*(v37 + 8))(v38, v39);
    sub_226E97D1C(&v41, &unk_27D7BC990, &qword_227670A30);
    return v6;
  }

  while (1)
  {
    sub_226F04970(&v41, &v43);
    sub_226E97CC0(&v43, &v41);
    type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
    if (!swift_dynamicCast())
    {
      (*(v37 + 8))(v38, v39);
      v30 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51028], v30);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(&v43);
      goto LABEL_32;
    }

    v18 = v40;
    v19 = [v40 bodyFocus];
    if (!v19)
    {
      break;
    }

    v20 = 0;
LABEL_25:
    v21 = v19;
    v22 = sub_22766C000();
    v24 = v23;

    __swift_destroy_boxed_opaque_existential_0(&v43);
    v45 = v6;
    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_226F1F1F0((v25 > 1), v26 + 1, 1);
      v6 = v45;
    }

    *(v6 + 16) = v26 + 1;
    v27 = v6 + 24 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    *(v27 + 48) = v20;
    sub_22766CBB0();
    if (!v42)
    {
      goto LABEL_28;
    }
  }

  v19 = [v18 equipment];
  if (v19)
  {
    v20 = 1;
    goto LABEL_25;
  }

  v19 = [v18 skillLevel];
  if (v19 || (v19 = [v18 theme]) != 0)
  {
    v20 = 2;
    goto LABEL_25;
  }

  v34 = sub_227664DD0();
  sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51028], v34);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(&v43);
  (*(v37 + 8))(v38, v39);
LABEL_32:

  return v6;
}

void *sub_227154CD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - v5;
  v7 = sub_2276624A0();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v71 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v59 - v10;
  MEMORY[0x28223BE20](v11);
  v63 = &v59 - v12;
  v74 = sub_2276653A0();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v59 - v16;
  v79 = sub_2276622D0();
  v61 = *(v79 - 8);
  v17 = MEMORY[0x28223BE20](v79);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 count];
  v86 = MEMORY[0x277D84F90];
  sub_226F1F288(0, v20 & ~(v20 >> 63), 0);
  v21 = v86;
  v78 = v19;
  result = sub_22766CA80();
  if (v20 < 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v64 = v6;
    if (v20)
    {
      v70 = (v60 + 48);
      v68 = (v60 + 32);
      v67 = (v60 + 16);
      v66 = (v60 + 8);
      v65 = v76 + 32;
      v72 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      v69 = v14;
      while (1)
      {
        result = sub_22766CBB0();
        if (!v85)
        {
          goto LABEL_34;
        }

        sub_226E97CC0(&v84, &v82);
        type metadata accessor for ManagedSocialMediaHandle();
        if (!swift_dynamicCast())
        {
          break;
        }

        v23 = v80;
        v24 = [v80 platform];
        if (!v24)
        {
          goto LABEL_26;
        }

        v25 = v24;
        v26 = sub_22766C000();
        v28 = v27;

        v29 = [v23 url];
        if (v29)
        {
          v30 = v29;
          sub_22766C000();
        }

        v31 = v73;
        sub_227662310();
        if ((*v70)(v31, 1, v7) == 1)
        {

          sub_226E97D1C(v31, &unk_27D7BB570, &unk_227670FC0);
LABEL_26:
          v53 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v53 - 8) + 104))(v54, *MEMORY[0x277D51028], v53);
          swift_willThrow();

          (*(v61 + 8))(v78, v79);
LABEL_27:

          __swift_destroy_boxed_opaque_existential_0(&v84);
          return v21;
        }

        v77 = v20;
        v32 = v21;
        v33 = v71;
        (*v68)(v71, v31, v7);
        v80 = v26;
        v81 = v28;
        sub_226FC47F4();
        sub_227663AE0();
        (*v67)(v75, v33, v7);
        v34 = v69;
        sub_227665380();

        v35 = v33;
        v21 = v32;
        (*v66)(v35, v7);
        __swift_destroy_boxed_opaque_existential_0(&v84);
        v86 = v32;
        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_226F1F288((v36 > 1), v37 + 1, 1);
          v21 = v86;
        }

        *(v21 + 16) = v37 + 1;
        (*(v76 + 32))(v21 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v37, v34, v74);
        v20 = v77 - 1;
        if (v77 == 1)
        {
          goto LABEL_13;
        }
      }

      (*(v61 + 8))(v78, v79);
      v51 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D51028], v51);
      swift_willThrow();
      goto LABEL_27;
    }

LABEL_13:
    v77 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v83)
    {
      v72 = (v60 + 32);
      v73 = (v60 + 48);
      v70 = (v60 + 8);
      v71 = (v60 + 16);
      v69 = (v76 + 32);
      while (1)
      {
        sub_226F04970(&v82, &v84);
        sub_226E97CC0(&v84, &v82);
        type metadata accessor for ManagedSocialMediaHandle();
        if (!swift_dynamicCast())
        {
          (*(v61 + 8))(v78, v79);
          v55 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D51028], v55);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v84);
          goto LABEL_31;
        }

        v38 = v80;
        v39 = [v80 platform];
        if (!v39)
        {
          break;
        }

        v40 = v39;
        v41 = sub_22766C000();
        v43 = v42;

        v44 = [v38 url];
        if (v44)
        {
          v45 = v44;
          sub_22766C000();
        }

        v46 = v64;
        sub_227662310();
        if ((*v73)(v46, 1, v7) == 1)
        {

          sub_226E97D1C(v46, &unk_27D7BB570, &unk_227670FC0);
          break;
        }

        v47 = v63;
        (*v72)(v63, v46, v7);
        v80 = v41;
        v81 = v43;
        sub_226FC47F4();
        sub_227663AE0();
        (*v71)(v75, v47, v7);
        v48 = v62;
        sub_227665380();

        (*v70)(v47, v7);
        __swift_destroy_boxed_opaque_existential_0(&v84);
        v86 = v21;
        v50 = *(v21 + 16);
        v49 = *(v21 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_226F1F288((v49 > 1), v50 + 1, 1);
          v21 = v86;
        }

        *(v21 + 16) = v50 + 1;
        (*(v76 + 32))(v21 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v50, v48, v74);
        sub_22766CBB0();
        if (!v83)
        {
          goto LABEL_23;
        }
      }

      v57 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v57 - 8) + 104))(v58, *MEMORY[0x277D51028], v57);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(&v84);
      (*(v61 + 8))(v78, v79);
LABEL_31:
    }

    else
    {
LABEL_23:
      (*(v61 + 8))(v78, v79);
      sub_226E97D1C(&v82, &unk_27D7BC990, &qword_227670A30);
    }

    return v21;
  }

  return result;
}

char *sub_227155968(void *a1)
{
  v2 = sub_227663A30();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v47 = sub_2276622D0();
  v40 = *(v47 - 8);
  v9 = MEMORY[0x28223BE20](v47);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 count];
  v53 = MEMORY[0x277D84F90];
  sub_226F1F308(0, v12 & ~(v12 >> 63), 0);
  v13 = v53;
  v46 = v11;
  result = sub_22766CA80();
  if (v12 < 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    if (v12)
    {
      v41 = v45 + 32;
      v15 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      v42 = v8;
      v43 = v15;
      while (1)
      {
        result = sub_22766CBB0();
        if (!v52)
        {
          goto LABEL_32;
        }

        sub_226E97CC0(&v51, &v49);
        type metadata accessor for ManagedCatalogTheme();
        if (!swift_dynamicCast())
        {
          break;
        }

        v16 = v13;
        v13 = v5;
        v17 = v48;
        v18 = [v48 identifier];
        if (!v18)
        {
          (*(v40 + 8))(v46, v47);
          goto LABEL_23;
        }

        v19 = v18;
        sub_22766C000();

        v20 = [v17 name];
        if (!v20)
        {
          (*(v40 + 8))(v46, v47);

LABEL_23:
          v33 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
          swift_willThrow();

LABEL_24:
          __swift_destroy_boxed_opaque_existential_0(&v51);
          return v13;
        }

        v21 = v20;
        sub_22766C000();

        [v17 sortOrder];
        v5 = v13;
        sub_2276639F0();

        __swift_destroy_boxed_opaque_existential_0(&v51);
        v13 = v16;
        v53 = v16;
        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_226F1F308((v22 > 1), v23 + 1, 1);
          v13 = v53;
        }

        *(v13 + 2) = v23 + 1;
        (*(v45 + 32))(&v13[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v23], v5, v44);
        --v12;
        v8 = v42;
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      (*(v40 + 8))(v46, v47);
      v31 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
      swift_willThrow();

      goto LABEL_24;
    }

LABEL_11:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v50)
    {
      v43 = v45 + 32;
      while (1)
      {
        sub_226F04970(&v49, &v51);
        sub_226E97CC0(&v51, &v49);
        type metadata accessor for ManagedCatalogTheme();
        if (!swift_dynamicCast())
        {
          (*(v40 + 8))(v46, v47);
          v35 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51028], v35);
          swift_willThrow();
          goto LABEL_29;
        }

        v24 = v48;
        v25 = [v48 identifier];
        if (!v25)
        {
          (*(v40 + 8))(v46, v47);
          goto LABEL_28;
        }

        v26 = v25;
        sub_22766C000();

        v27 = [v24 name];
        if (!v27)
        {
          break;
        }

        v28 = v27;
        sub_22766C000();

        [v24 sortOrder];
        sub_2276639F0();

        __swift_destroy_boxed_opaque_existential_0(&v51);
        v53 = v13;
        v30 = *(v13 + 2);
        v29 = *(v13 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_226F1F308((v29 > 1), v30 + 1, 1);
          v13 = v53;
        }

        *(v13 + 2) = v30 + 1;
        (*(v45 + 32))(&v13[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30], v8, v44);
        sub_22766CBB0();
        if (!v50)
        {
          goto LABEL_19;
        }
      }

      (*(v40 + 8))(v46, v47);

LABEL_28:
      v37 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
      swift_willThrow();

LABEL_29:
      __swift_destroy_boxed_opaque_existential_0(&v51);
    }

    else
    {
LABEL_19:
      (*(v40 + 8))(v46, v47);
      sub_226E97D1C(&v49, &unk_27D7BC990, &qword_227670A30);
    }

    return v13;
  }

  return result;
}

void *sub_22715629C(void *a1)
{
  v2 = sub_227663AB0();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v47 = sub_2276622D0();
  v41 = *(v47 - 8);
  v9 = MEMORY[0x28223BE20](v47);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 count];
  v56 = MEMORY[0x277D84F90];
  sub_226F1F348(0, v12 & ~(v12 >> 63), 0);
  v49 = v56;
  v46 = v11;
  result = sub_22766CA80();
  if (v12 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    if (v12)
    {
      sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v55)
        {
          goto LABEL_27;
        }

        sub_226E97CC0(&v54, &v52);
        type metadata accessor for ManagedPlaylistItem();
        if (!swift_dynamicCast())
        {
          break;
        }

        v14 = v48;
        sub_226FFFF60(v50);
        v48 = v14;
        if (v14)
        {
          (*(v41 + 8))(v46, v47);
          goto LABEL_21;
        }

        __swift_destroy_boxed_opaque_existential_0(&v54);
        v15 = v49;
        v56 = v49;
        v17 = *(v49 + 16);
        v16 = *(v49 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_226F1F348((v16 > 1), v17 + 1, 1);
          v15 = v56;
        }

        *(v15 + 16) = v17 + 1;
        v18 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v49 = v15;
        (*(v45 + 32))(v15 + v18 + *(v45 + 72) * v17, v5, v44);
        if (!--v12)
        {
          goto LABEL_10;
        }
      }

      (*(v41 + 8))(v46, v47);
      v31 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51028], v31);
      v48 = v32;
      swift_willThrow();
LABEL_21:

      return __swift_destroy_boxed_opaque_existential_0(&v54);
    }

LABEL_10:
    v43 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v53)
    {
      v42 = v45 + 32;
      while (1)
      {
        sub_226F04970(&v52, &v54);
        sub_226E97CC0(&v54, &v52);
        type metadata accessor for ManagedPlaylistItem();
        if (!swift_dynamicCast())
        {
          (*(v41 + 8))(v46, v47);
          v34 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v35 = swift_allocError();
          (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D51028], v34);
          v48 = v35;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v54);
        }

        v19 = v50;
        v20 = [v50 identifier];
        if (!v20)
        {
          break;
        }

        v21 = v20;
        sub_22766C000();

        v22 = [v19 mediaType];
        if (!v22)
        {

          break;
        }

        v23 = v22;
        v24 = sub_22766C000();
        v26 = v25;

        [v19 index];
        [v19 healthKitActivityType];
        v50 = v24;
        v51 = v26;
        sub_226ED56C4();
        sub_227663AE0();
        [v19 duration];
        sub_227663A50();

        __swift_destroy_boxed_opaque_existential_0(&v54);
        v27 = v49;
        v56 = v49;
        v29 = *(v49 + 16);
        v28 = *(v49 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_226F1F348((v28 > 1), v29 + 1, 1);
          v27 = v56;
        }

        *(v27 + 16) = v29 + 1;
        v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v49 = v27;
        (*(v45 + 32))(v27 + v30 + *(v45 + 72) * v29, v8, v44);
        sub_22766CBB0();
        if (!v53)
        {
          goto LABEL_18;
        }
      }

      v37 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v38 = swift_allocError();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D51028], v37);
      v48 = v38;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(&v54);
      (*(v41 + 8))(v46, v47);
    }

    else
    {
LABEL_18:
      (*(v41 + 8))(v46, v47);
      sub_226E97D1C(&v52, &unk_27D7BC990, &qword_227670A30);
      return v49;
    }
  }

  return result;
}

void *sub_227156A60(void *a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(void), void (*a5)(uint64_t))
{
  v32 = a5;
  v33 = a4;
  v31 = a2(0);
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v27 - v12;
  v35 = sub_2276622D0();
  v28 = *(v35 - 8);
  v13 = MEMORY[0x28223BE20](v35);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 count];
  v41 = MEMORY[0x277D84F90];
  v27 = a3;
  a3(0, v16 & ~(v16 >> 63), 0);
  v17 = v41;
  v34 = v15;
  result = sub_22766CA80();
  if (v16 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    if (v16)
    {
      v29 = v8 + 32;
      sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v40)
        {
          goto LABEL_25;
        }

        sub_226E97CC0(&v39, &v37);
        v33(0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v32(v36);
        if (v5)
        {
          (*(v28 + 8))(v34, v35);
          goto LABEL_19;
        }

        __swift_destroy_boxed_opaque_existential_0(&v39);
        v41 = v17;
        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          v27(v19 > 1, v20 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v20 + 1;
        (*(v8 + 32))(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v10, v31);
        if (!--v16)
        {
          goto LABEL_10;
        }
      }

      (*(v28 + 8))(v34, v35);
      v23 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
      swift_willThrow();
LABEL_19:

      __swift_destroy_boxed_opaque_existential_0(&v39);
      return v17;
    }

LABEL_10:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v38)
    {
      while (1)
      {
        sub_226F04970(&v37, &v39);
        sub_226E97CC0(&v39, &v37);
        v33(0);
        if (!swift_dynamicCast())
        {
          (*(v28 + 8))(v34, v35);
          v25 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v39);
          goto LABEL_22;
        }

        v32(v36);
        if (v5)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_0(&v39);
        v41 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          v27(v21 > 1, v22 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v22 + 1;
        (*(v8 + 32))(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v30, v31);
        sub_22766CBB0();
        if (!v38)
        {
          goto LABEL_16;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v39);
      (*(v28 + 8))(v34, v35);
LABEL_22:
    }

    else
    {
LABEL_16:
      (*(v28 + 8))(v34, v35);
      sub_226E97D1C(&v37, &unk_27D7BC990, &qword_227670A30);
    }

    return v17;
  }

  return result;
}

void *sub_2271570C0(void *a1)
{
  v2 = sub_227664650();
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v52 = sub_2276622D0();
  v45 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 count];
  v59 = MEMORY[0x277D84F90];
  sub_226F1F3A8(0, v12 & ~(v12 >> 63), 0);
  v13 = v59;
  v51 = v11;
  result = sub_22766CA80();
  if (v12 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v46 = v8;
    if (v12)
    {
      v47 = v50 + 32;
      v48 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v58)
        {
          goto LABEL_29;
        }

        sub_226E97CC0(&v57, &v55);
        type metadata accessor for ManagedCommentaryEvent();
        if (!swift_dynamicCast())
        {
          break;
        }

        v15 = v53;
        v16 = [v53 topic];
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = v16;
        v18 = sub_22766C000();
        v20 = v19;

        v21 = [v15 topicIdentifier];
        if (!v21)
        {

LABEL_21:
          v38 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
          swift_willThrow();

          (*(v45 + 8))(v51, v52);
LABEL_22:

          __swift_destroy_boxed_opaque_existential_0(&v57);
          return v13;
        }

        v22 = v21;
        sub_22766C000();

        [v15 duration];
        [v15 startTime];
        v53 = v18;
        v54 = v20;
        sub_22706539C();
        sub_227663AE0();
        sub_227664610();

        __swift_destroy_boxed_opaque_existential_0(&v57);
        v59 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_226F1F3A8((v23 > 1), v24 + 1, 1);
          v13 = v59;
        }

        *(v13 + 16) = v24 + 1;
        (*(v50 + 32))(v13 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v24, v5, v49);
        if (!--v12)
        {
          goto LABEL_11;
        }
      }

      (*(v45 + 8))(v51, v52);
      v36 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
      swift_willThrow();
      goto LABEL_22;
    }

LABEL_11:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v56)
    {
      while (1)
      {
        sub_226F04970(&v55, &v57);
        sub_226E97CC0(&v57, &v55);
        type metadata accessor for ManagedCommentaryEvent();
        if (!swift_dynamicCast())
        {
          (*(v45 + 8))(v51, v52);
          v40 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v57);
          goto LABEL_26;
        }

        v25 = v53;
        v26 = [v53 topic];
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v28 = sub_22766C000();
        v30 = v29;

        v31 = [v25 topicIdentifier];
        if (!v31)
        {

          break;
        }

        v32 = v31;
        sub_22766C000();

        [v25 duration];
        [v25 startTime];
        v53 = v28;
        v54 = v30;
        sub_22706539C();
        sub_227663AE0();
        v33 = v46;
        sub_227664610();

        __swift_destroy_boxed_opaque_existential_0(&v57);
        v59 = v13;
        v35 = *(v13 + 16);
        v34 = *(v13 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_226F1F3A8((v34 > 1), v35 + 1, 1);
          v13 = v59;
        }

        *(v13 + 16) = v35 + 1;
        (*(v50 + 32))(v13 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v35, v33, v49);
        sub_22766CBB0();
        if (!v56)
        {
          goto LABEL_18;
        }
      }

      v42 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51028], v42);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(&v57);
      (*(v45 + 8))(v51, v52);
LABEL_26:
    }

    else
    {
LABEL_18:
      (*(v45 + 8))(v51, v52);
      sub_226E97D1C(&v55, &unk_27D7BC990, &qword_227670A30);
    }

    return v13;
  }

  return result;
}

void *sub_2271579B8(void *a1)
{
  v48 = sub_227669180();
  MEMORY[0x28223BE20](v48);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v43 - v5;
  v47 = sub_227663680();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = v43 - v10;
  v52 = sub_2276622D0();
  v43[0] = *(v52 - 8);
  v11 = MEMORY[0x28223BE20](v52);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 count];
  v59 = MEMORY[0x277D84F90];
  sub_226F1F3E8(0, v14 & ~(v14 >> 63), 0);
  v15 = v59;
  v51 = v13;
  result = sub_22766CA80();
  if (v14 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v43[1] = v6;
  if (v14)
  {
    v45 = v49 + 32;
    v46 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    while (1)
    {
      result = sub_22766CBB0();
      if (!v58)
      {
        goto LABEL_36;
      }

      sub_226E97CC0(&v57, &v55);
      type metadata accessor for ManagedMediaMoment();
      if (!swift_dynamicCast())
      {
        break;
      }

      v17 = v54;
      v18 = [v54 identifier];
      if (!v18)
      {
        v37 = sub_227664DD0();
        sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
        swift_willThrow();

        goto LABEL_27;
      }

      v19 = v18;
      v50 = v15;
      v20 = v3;
      sub_22766C000();

      [v17 startTime];
      [v17 duration];
      v21 = [v17 artwork];
      if (v21)
      {
        v22 = v21;
        sub_227662590();
      }

      sub_226EB2904(&qword_27D7BB870, MEMORY[0x277D53A78], MEMORY[0x277D53A68]);
      v3 = v20;
      v23 = v53;
      sub_2276683D0();
      v53 = v23;
      if (v23)
      {

        v15 = v50;
LABEL_27:
        (*(v43[0] + 8))(v51, v52);
LABEL_28:

        __swift_destroy_boxed_opaque_existential_0(&v57);
        return v15;
      }

      sub_227663620();

      __swift_destroy_boxed_opaque_existential_0(&v57);
      v15 = v50;
      v59 = v50;
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F3E8((v24 > 1), v25 + 1, 1);
        v15 = v59;
      }

      *(v15 + 16) = v25 + 1;
      (*(v49 + 32))(v15 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v25, v8, v47);
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    (*(v43[0] + 8))(v51, v52);
    v35 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51028], v35);
    swift_willThrow();
    goto LABEL_28;
  }

LABEL_13:
  sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22766CBB0();
  if (!v56)
  {
LABEL_23:
    (*(v43[0] + 8))(v51, v52);
    sub_226E97D1C(&v55, &unk_27D7BC990, &qword_227670A30);
    return v15;
  }

  v50 = v49 + 32;
  v26 = v53;
  while (1)
  {
    sub_226F04970(&v55, &v57);
    sub_226E97CC0(&v57, &v55);
    type metadata accessor for ManagedMediaMoment();
    if (!swift_dynamicCast())
    {
      (*(v43[0] + 8))(v51, v52);
      v39 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51028], v39);
      swift_willThrow();
LABEL_31:
      __swift_destroy_boxed_opaque_existential_0(&v57);
      goto LABEL_33;
    }

    v27 = v54;
    v28 = [v54 identifier];
    if (!v28)
    {
      (*(v43[0] + 8))(v51, v52);
      v41 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51028], v41);
      swift_willThrow();

      goto LABEL_31;
    }

    v29 = v28;
    sub_22766C000();

    [v27 startTime];
    [v27 duration];
    v30 = [v27 artwork];
    if (v30)
    {
      v31 = v30;
      sub_227662590();
    }

    sub_226EB2904(&qword_27D7BB870, MEMORY[0x277D53A78], MEMORY[0x277D53A68]);
    sub_2276683D0();
    if (v26)
    {
      break;
    }

    v32 = v44;
    sub_227663620();

    __swift_destroy_boxed_opaque_existential_0(&v57);
    v59 = v15;
    v34 = *(v15 + 16);
    v33 = *(v15 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_226F1F3E8((v33 > 1), v34 + 1, 1);
      v32 = v44;
      v15 = v59;
    }

    *(v15 + 16) = v34 + 1;
    (*(v49 + 32))(v15 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v34, v32, v47);
    sub_22766CBB0();
    if (!v56)
    {
      goto LABEL_23;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v57);
  (*(v43[0] + 8))(v51, v52);
LABEL_33:

  return v15;
}

void *sub_227158438(void *a1)
{
  v2 = sub_227663C90();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v45 = &v43[-v7];
  v51 = sub_2276622D0();
  v44 = *(v51 - 8);
  v8 = MEMORY[0x28223BE20](v51);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [a1 count];
  v58 = MEMORY[0x277D84F90];
  sub_226F1F428(0, v11 & ~(v11 >> 63), 0);
  v12 = v58;
  v50 = v10;
  result = sub_22766CA80();
  if (v11 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      v46 = v49 + 32;
      v47 = sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v57)
        {
          goto LABEL_29;
        }

        sub_226E97CC0(&v56, &v54);
        type metadata accessor for ManagedTrainerEvent();
        if (!swift_dynamicCast())
        {
          break;
        }

        v14 = v52;
        v15 = [v52 identifier];
        if (!v15)
        {
          goto LABEL_21;
        }

        v16 = v15;
        sub_22766C000();

        v17 = [v14 type];
        if (!v17)
        {

LABEL_21:
          v37 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
          swift_willThrow();

          (*(v44 + 8))(v50, v51);
LABEL_22:

          __swift_destroy_boxed_opaque_existential_0(&v56);
          return v12;
        }

        v18 = v17;
        v19 = sub_22766C000();
        v21 = v20;

        [v14 duration];
        [v14 leadDuration];
        [v14 startTime];
        v52 = v19;
        v53 = v21;
        sub_227158DC8();
        sub_227663AE0();
        sub_227663C20();

        __swift_destroy_boxed_opaque_existential_0(&v56);
        v58 = v12;
        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226F1F428((v22 > 1), v23 + 1, 1);
          v12 = v58;
        }

        *(v12 + 16) = v23 + 1;
        (*(v49 + 32))(v12 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v23, v5, v48);
        if (!--v11)
        {
          goto LABEL_11;
        }
      }

      (*(v44 + 8))(v50, v51);
      v35 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51028], v35);
      swift_willThrow();
      goto LABEL_22;
    }

LABEL_11:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v55)
    {
      while (1)
      {
        sub_226F04970(&v54, &v56);
        sub_226E97CC0(&v56, &v54);
        type metadata accessor for ManagedTrainerEvent();
        if (!swift_dynamicCast())
        {
          (*(v44 + 8))(v50, v51);
          v39 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          swift_allocError();
          (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51028], v39);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v56);
          goto LABEL_26;
        }

        v24 = v52;
        v25 = [v52 identifier];
        if (!v25)
        {
          break;
        }

        v26 = v25;
        sub_22766C000();

        v27 = [v24 type];
        if (!v27)
        {

          break;
        }

        v28 = v27;
        v29 = sub_22766C000();
        v31 = v30;

        [v24 duration];
        [v24 leadDuration];
        [v24 startTime];
        v52 = v29;
        v53 = v31;
        v32 = v45;
        sub_227158DC8();
        sub_227663AE0();
        sub_227663C20();

        __swift_destroy_boxed_opaque_existential_0(&v56);
        v58 = v12;
        v34 = *(v12 + 16);
        v33 = *(v12 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_226F1F428((v33 > 1), v34 + 1, 1);
          v12 = v58;
        }

        *(v12 + 16) = v34 + 1;
        (*(v49 + 32))(v12 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v34, v32, v48);
        sub_22766CBB0();
        if (!v55)
        {
          goto LABEL_18;
        }
      }

      v41 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51028], v41);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(&v56);
      (*(v44 + 8))(v50, v51);
LABEL_26:
    }

    else
    {
LABEL_18:
      (*(v44 + 8))(v50, v51);
      sub_226E97D1C(&v54, &unk_27D7BC990, &qword_227670A30);
    }

    return v12;
  }

  return result;
}

uint64_t sub_227158D70(uint64_t a1)
{
  result = sub_226EB2904(&qword_27D7BB860, MEMORY[0x277D52300], &protocol conformance descriptor for CatalogWorkoutMetadata);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227158DC8()
{
  result = qword_27D7BB878;
  if (!qword_27D7BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB878);
  }

  return result;
}

void sub_227158E1C(void *a1)
{
  v2 = a1;
  v3 = [a1 modalityIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_22766C000();

    v5 = [v2 filterProperties];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x22AA99A00]();
      v8 = sub_22715454C(v6);
      if (v1)
      {
        objc_autoreleasePoolPop(v7);

        v2 = v6;
      }

      else
      {
        v13 = v8;
        objc_autoreleasePoolPop(v7);
        sub_226F3EAA8(v13);

        [v2 duration];
        sub_2276673D0();
      }
    }

    else
    {
      v11 = sub_227664DD0();
      sub_227159544(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_227664DD0();
    sub_227159544(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
  }
}

void sub_227159074(void *a1, uint64_t a2)
{
  v5 = sub_2276673F0();
  v6 = 0x7FFFFFFFLL;
  if (v5 < 0x7FFFFFFF)
  {
    v6 = v5;
  }

  if (v6 <= 0xFFFFFFFF80000000)
  {
    v7 = 0xFFFFFFFF80000000;
  }

  else
  {
    v7 = v6;
  }

  [a1 setDuration_];
  sub_2276673E0();
  v8 = sub_22766BFD0();

  [a1 setModalityIdentifier_];

  v9 = sub_2276673C0();
  sub_22764936C(a2, v9);
  v11 = v10;

  if (!v2)
  {
    [a1 setFilterProperties_];
  }
}

void *static WorkoutPlanScheduledItem.representativeSamples()()
{
  v18 = sub_227667400();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F05E24();
  v3 = sub_22766CFA0();
  static WorkoutPlanScheduleFilterProperty.representativeSamples()(v3);
  v5 = sub_226F3EAA8(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB880, &qword_22767B098);
  v6 = sub_22766C380();
  v6[2] = 3;
  v6[4] = v5;
  v6[5] = v5;
  v6[6] = v5;
  swift_bridgeObjectRetain_n();
  v7 = sub_22766C090();
  v27 = v3;
  v28[0] = v7;
  v28[1] = v28;
  v28[2] = &v27;
  v26 = v6;
  v28[3] = &v26;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB888, &qword_22767B0A0);
  v20 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v21 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v22 = sub_226F5BF60(&qword_27D7BB890, &qword_27D7BB888, &qword_22767B0A0);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_226F1F1D0(0, v9, 0);
    v11 = 0;
    v12 = v19;
    v16 = v0 + 32;
    v17 = v0;
    v13 = v8 + 56;
    while (v11 < *(v8 + 16))
    {

      sub_2276673D0();
      v19 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F1F1D0((v14 > 1), v15 + 1, 1);
        v12 = v19;
      }

      ++v11;
      *(v12 + 16) = v15 + 1;
      result = (*(v17 + 32))(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v2, v18);
      v13 += 32;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2271594EC(uint64_t a1)
{
  result = sub_227159544(&qword_27D7BB898, MEMORY[0x277D52CE0], &protocol conformance descriptor for WorkoutPlanScheduledItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227159544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_22715958C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  sub_226F20148(0, v1, 0);
  v2 = v27;
  v3 = a1 + 56;
  result = sub_22766CC90();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v6 + 36);
    sub_227663FB0();
    sub_226ED978C();
    result = sub_227663AE0();
    v11 = v25;
    v13 = *(v27 + 16);
    v12 = *(v27 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_226F20148((v12 > 1), v13 + 1, 1);
      v11 = v25;
    }

    *(v27 + 16) = v13 + 1;
    v14 = v27 + 24 * v13;
    *(v14 + 32) = v11;
    *(v14 + 48) = v26;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v10);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v23;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 64 + 8 * v10);
      v9 = v23;
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_226EB526C(v5, v24, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v5, v24, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2271597F4(uint64_t a1)
{
  v34 = sub_227666650();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_227666620();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
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

uint64_t sub_227159AFC(uint64_t a1)
{
  v47 = sub_227666650();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - v7;
  v8 = *(a1 + 16);
  v52 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v9 = a1 + 56;
  v10 = v52;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(a1 + 56);
  v14 = (63 - v12) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v8;
  if (v8)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v15 = 0;
    v16 = 0;
    while (v13)
    {
      v17 = v10;
LABEL_11:
      v19 = v49;
      v20 = *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v21 = v46;
      v22 = v47;
      (*(v49 + 16))(v46, v20, v47);
      v23 = sub_227666620();
      v50 = v24;
      v51 = v23;
      (*(v19 + 8))(v21, v22);
      v10 = v17;
      v52 = v17;
      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      ++v15;
      v13 &= v13 - 1;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      v27 = v50;
      *(v26 + 32) = v51;
      *(v26 + 40) = v27;
      a1 = v48;
      if (v15 == v45)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v10;
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_16:
    v28 = v49;
    v50 = v49 + 16;
    v45 = v49 + 8;
    v46 = (v49 + 32);
    if (!v13)
    {
      goto LABEL_18;
    }

    do
    {
      v51 = v10;
LABEL_22:
      v30 = *(a1 + 48) + *(v28 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v31 = v42;
      v32 = v47;
      (*(v28 + 16))(v42, v30, v47);
      v33 = v41;
      (*(v28 + 32))(v41, v31, v32);
      v34 = sub_227666620();
      v36 = v35;
      (*(v28 + 8))(v33, v32);
      v10 = v51;
      v52 = v51;
      v37 = *(v51 + 16);
      if (v37 >= *(v51 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      v13 &= v13 - 1;
      *(v10 + 16) = v37 + 1;
      v38 = v10 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      a1 = v48;
      v28 = v49;
    }

    while (v13);
LABEL_18:
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v14)
      {

        return v10;
      }

      v13 = *(v9 + 8 * v29);
      ++v16;
      if (v13)
      {
        v51 = v10;
        v16 = v29;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_227159F08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v62 = *(v3 - 8);
  v63 = v3;
  v61 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v57 - v12;
  MEMORY[0x28223BE20](v14);
  v65 = v57 - v15;
  MEMORY[0x28223BE20](v16);
  v59 = v57 - v17;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v19 + 8))(v21, v18);
  v22 = v2;
  sub_22715BF38();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22717B550;
  *(v23 + 24) = v2;
  v24 = *(v8 + 16);
  v71 = v8 + 16;
  v72 = v24;
  v24(v10, v13, v7);
  v25 = *(v8 + 80);
  v69 = (v25 + 16) & ~v25;
  v70 = v25;
  v26 = v69;
  v27 = (v9 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v66 = *(v8 + 32);
  v29 = v28 + v26;
  v30 = v7;
  v66(v29, v10, v7);
  v57[1] = v8 + 32;
  v31 = (v28 + v27);
  *v31 = sub_227086964;
  v31[1] = v23;

  v32 = v65;
  sub_227669270();
  v33 = *(v8 + 8);
  v67 = v8 + 8;
  v68 = v33;
  v33(v13, v7);
  v34 = v22;
  v35 = *__swift_project_boxed_opaque_existential_0((v22 + 624), *(v22 + 648));
  v74[3] = type metadata accessor for RecommendationScriptClient();
  v74[4] = &off_283AAE7D8;
  v74[0] = v35;
  sub_226E91B50(v74, v73);
  v36 = swift_allocObject();
  sub_226E92AB8(v73, v36 + 16);

  __swift_destroy_boxed_opaque_existential_0(v74);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_22717B558;
  *(v37 + 24) = v36;
  v72(v13, v32, v30);
  v57[0] = v27;
  v38 = swift_allocObject();
  v39 = v30;
  v66(v38 + v69, v13, v30);
  v40 = (v38 + v27);
  *v40 = sub_226F09740;
  v40[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v41 = v58;
  sub_227669270();
  v68(v32, v39);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_22717B588;
  *(v42 + 24) = v34;
  v44 = v62;
  v43 = v63;
  v45 = v60;
  (*(v62 + 16))(v60, v41, v63);
  v46 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v47 = (v61 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v44 + 32))(v48 + v46, v45, v43);
  v49 = (v48 + v47);
  *v49 = sub_227086814;
  v49[1] = v42;

  v50 = v59;
  sub_227669270();
  (*(v44 + 8))(v41, v43);
  v51 = v65;
  v52 = v50;
  v72(v65, v50, v39);
  v53 = v57[0];
  v54 = swift_allocObject();
  v66(v54 + v69, v51, v39);
  v55 = (v54 + v53);
  *v55 = sub_22715CBF4;
  v55[1] = 0;
  sub_227669270();
  return (v68)(v52, v39);
}

uint64_t sub_22715A67C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v10, v11, "[RecommendationSystem] catalog updated, evaluating recommendations", v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227159F08(v5);

    v14 = sub_227669290();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14(sub_226EB4544, v15);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_22715A91C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a3;
  v22 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a2;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_226E8E000, v13, v14, v16, v15, 2u);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227159F08(v8);

    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v19(v22, v20);

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22715ABAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned int *a5)
{
  v20[0] = a5;
  v20[1] = a2;
  v6 = sub_227669910();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a4;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, v17, v16, 2u);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  swift_getObjectType();
  (*(v7 + 104))(v9, *v20[0], v6);
  sub_227669660();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22715ADD0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_22766B390();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715AE90, 0, 0);
}

uint64_t sub_22715AE90(uint64_t a1)
{
  sub_22766A660();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[RecommendationSystem] scheduled private data activity", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[9] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v1[10] = v9;
    *v9 = v1;
    v9[1] = sub_22715B02C;

    return sub_22715B14C();
  }

  else
  {

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_22715B02C()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_22715B14C()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715B218, 0, 0);
}

uint64_t sub_22715B218(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[6];
  sub_22766A660();
  sub_22766B370();
  v6 = *(v4 + 8);
  v1[11] = v6;
  v1[12] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = v5[71];
  __swift_project_boxed_opaque_existential_0(v5 + 67, v5[70]);
  v8 = *(v7 + 24);

  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[13] = v9;
  *v9 = v1;
  v9[1] = sub_22715B3E8;

  return v11();
}

uint64_t sub_22715B3E8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22715B594;
  }

  else
  {

    v2 = sub_22715B504;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22715B504()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 48) + 792), *(*(v0 + 48) + 816));
  sub_2271D7EE8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22715B594()
{
  v19 = v0;
  v1 = v0[14];

  sub_22766A660();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[9];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v12 = sub_226E97AE8(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "[RecommendationSystem] Failed to deduplicate onboarding survey results: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v5(v6, v7);
  }

  else
  {
    v13 = v0[11];
    v14 = v0[9];
    v15 = v0[7];

    v13(v14, v15);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_22715B770()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  __swift_destroy_boxed_opaque_existential_0((v0 + 664));
  __swift_destroy_boxed_opaque_existential_0((v0 + 704));
  __swift_destroy_boxed_opaque_existential_0((v0 + 744));

  __swift_destroy_boxed_opaque_existential_0((v0 + 792));
  __swift_destroy_boxed_opaque_existential_0((v0 + 832));

  __swift_destroy_boxed_opaque_existential_0((v0 + 880));

  v1 = OBJC_IVAR____TtC15SeymourServices20RecommendationSystem__journalPersonalizationRequests;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_22715B8A4()
{
  sub_22715B770();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecommendationSystem(uint64_t a1)
{
  result = qword_2813A0CE0;
  if (!qword_2813A0CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22715B950(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22715BA54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = v2[70];
  v15 = v2[71];
  __swift_project_boxed_opaque_existential_0(v2 + 67, v14);

  sub_226ECF5D8(sub_22717B688, v2, v14, MEMORY[0x277D84F78] + 8, v15, v9);

  v16 = swift_allocObject();
  *(v16 + 16) = sub_22717B6A4;
  *(v16 + 24) = v2;
  (*(v4 + 16))(v6, v9, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v17, v6, v3);
  v20 = (v19 + v18);
  *v20 = sub_226F32FEC;
  v20[1] = v16;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

char *sub_22715BD6C(void *a1, uint64_t a2)
{
  result = sub_22734441C(a1);
  if (!v2)
  {
    v6 = result;
    sub_22734466C(a1);
    __swift_project_boxed_opaque_existential_0((a2 + 792), *(a2 + 816));
    v7 = sub_227159AFC(v6);

    sub_2272D7D58(1, v7, a1);
  }

  return result;
}

uint64_t sub_22715BE1C(uint64_t a1, void *a2)
{
  v3 = sub_22766A430();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2 + 99, a2[102]);
  sub_2271D7EE8();
  swift_getObjectType();
  sub_22766A420();
  sub_2276699D0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22715BF38()
{
  v0 = sub_22766A8A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = sub_2276693C0();
  (*(v1 + 104))(v3, *MEMORY[0x277D4F960], v0);
  v9 = sub_226EC9A38(v3, v8);

  (*(v1 + 8))(v3, v0);
  if (v9)
  {
    return sub_2276692A0();
  }

  v11 = sub_227665A50();
  sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
  v12 = swift_allocError();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D51B30], v11);
  *(swift_allocObject() + 16) = v12;
  return sub_227669280();
}

uint64_t sub_22715C210(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 424;
  *(v2 + 48) = &unk_22767B6D8;
  *(v2 + 56) = a1;

  return sub_227669270();
}

uint64_t sub_22715C2C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_project_boxed_opaque_existential_0((*v8 + 16), *(*v8 + 40));
  sub_22728B1A0(9, 0, 0, v7);
  sub_2272A6AC0(v7, a2);
  return (*(v5 + 8))(v7, v4);
}

void sub_22715C3E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v3;
  MEMORY[0x28223BE20](v4);
  v66 = &v64 - v5;
  v6 = sub_227664410();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v64 - v10;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  sub_22766A660();
  sub_22766B370();
  v21 = *(v12 + 8);
  v82 = v12 + 8;
  v83 = v11;
  v81 = v21;
  v21(v20, v11);
  sub_22766A660();
  v84 = a1;

  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  v24 = os_log_type_enabled(v22, v23);
  v73 = v7;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 134349056;
    *(v25 + 4) = *(v84 + 16);

    _os_log_impl(&dword_226E8E000, v22, v23, "Inserting %{public}ld recommendations", v25, 0xCu);
    v7 = v73;
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  else
  {
  }

  v81(v17, v83);
  v26 = v84 + 56;
  v27 = 1 << *(v84 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v84 + 56);
  v30 = (v27 + 63) >> 6;
  v78 = v7 + 32;
  v79 = v7 + 16;
  v77 = (v7 + 8);

  v31 = 0;
  *&v32 = 136446210;
  v72 = v32;
  v33 = v74;
  v34 = v14;
  v71 = v14;
  if (v29)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v35 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v35 >= v30)
    {
      v49 = v84;

      v50 = v67;
      v51 = v67[70];
      v52 = v67[71];
      __swift_project_boxed_opaque_existential_0(v67 + 67, v51);
      v53 = swift_allocObject();
      *(v53 + 16) = v50;
      *(v53 + 24) = v49;

      v54 = v66;
      sub_226ECF5D8(sub_22717B5B4, v53, v51, MEMORY[0x277D84F78] + 8, v52, v66);

      v55 = swift_allocObject();
      *(v55 + 16) = sub_22717B5D0;
      *(v55 + 24) = v50;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_226EB4A28;
      *(v56 + 24) = v55;
      v57 = v68;
      v58 = v65;
      v59 = v70;
      (*(v68 + 16))(v65, v54, v70);
      v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v61 = (v64 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      (*(v57 + 32))(v62 + v60, v58, v59);
      v63 = (v62 + v61);
      *v63 = sub_226EBFB9C;
      v63[1] = v56;

      sub_227669270();
      (*(v57 + 8))(v54, v59);
      return;
    }

    v29 = *(v26 + 8 * v35);
    ++v31;
    if (v29)
    {
      while (1)
      {
        v36 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v37 = v80;
        (*(v7 + 16))(v80, *(v84 + 48) + *(v7 + 72) * (v36 | (v35 << 6)), v6);
        sub_22766A660();
        (*(v7 + 32))(v33, v37, v6);
        v38 = v34;
        v39 = sub_22766B380();
        v40 = sub_22766C8B0();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v75 = v41;
          v76 = swift_slowAlloc();
          v85 = v76;
          *v41 = v72;
          sub_22717B7C4(&qword_27D7BBA38, MEMORY[0x277D508B0], MEMORY[0x277D508C8]);
          v42 = sub_22766D140();
          v43 = v6;
          v45 = v44;
          (*v77)(v33, v43);
          v46 = sub_226E97AE8(v42, v45, &v85);
          v6 = v43;

          v47 = v75;
          *(v75 + 1) = v46;
          _os_log_impl(&dword_226E8E000, v39, v40, "Inserting %{public}s", v47, 0xCu);
          v48 = v76;
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x22AA9A450](v48, -1, -1);
          v7 = v73;
          MEMORY[0x22AA9A450](v47, -1, -1);

          v34 = v71;
          v81(v71, v83);
          v31 = v35;
          v33 = v74;
          if (!v29)
          {
            goto LABEL_10;
          }
        }

        else
        {

          (*v77)(v33, v6);
          v81(v38, v83);
          v31 = v35;
          v34 = v38;
          if (!v29)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v35 = v31;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22715CBF4(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_22766A660();
  sub_226F04AAC(v6, v7);
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  sub_226EB4548(v6, v7);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v18[1] = v6;
    v19 = v7;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA28, &qword_22767B6C8);
    v13 = sub_226E9CFD0(&qword_2813989E0, &unk_27D7BBA28, &qword_22767B6C8, MEMORY[0x277D53F40]);
    v14 = MEMORY[0x22AA958B0](v12, v13);
    v16 = sub_226E97AE8(v14, v15, &v20);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v8, v9, "[RecommendationSystem] evaluateAllRecommendations result: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22715CE14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  v12 = __swift_project_boxed_opaque_existential_0((v2 + 624), *(v2 + 648));
  __swift_project_boxed_opaque_existential_0((*v12 + 16), *(*v12 + 40));
  sub_227288FBC(12, 0, 0, v7);
  sub_2272A4624(v7, a1);
  return (*(v5 + 8))(v7, v4);
}

char *sub_22715D004@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_227344918(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22715D030()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715D0F0, 0, 0);
}

uint64_t sub_22715D0F0(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A660();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[70];
  v7 = v5[71];
  __swift_project_boxed_opaque_existential_0(v5 + 67, v6);
  v8 = *(v7 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D80, &unk_227672090);
  *v9 = v1;
  v9[1] = sub_226F9D924;
  v11 = v1[3];

  return (v13)(v1 + 2, sub_22717A800, v11, v10, v6, v7);
}

uint64_t sub_22715D2C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715D384, 0, 0);
}

uint64_t sub_22715D384(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A660();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[70];
  v7 = v5[71];
  __swift_project_boxed_opaque_existential_0(v5 + 67, v6);
  v8 = *(v7 + 24);

  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  v10 = sub_227666650();
  *v9 = v1;
  v9[1] = sub_226FC1FE0;
  v11 = v1[2];
  v12 = v1[3];

  return (v14)(v11, sub_22717A82C, v12, v10, v6, v7);
}

char *sub_22715D548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  result = sub_22734441C(a1);
  if (!v2)
  {
    sub_226F75D68(result, v7);

    v9 = sub_227666650();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_226E97D1C(v7, &unk_27D7BB8C0, &qword_22767F780);
      v11 = sub_227665A50();
      sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
      swift_allocError();
      (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51B48], v11);
      return swift_willThrow();
    }

    else
    {
      return (*(v10 + 32))(a2, v7, v9);
    }
  }

  return result;
}

char *sub_22715D730@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  result = sub_227344DFC(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22715D764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a1;
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v31 = &v29 - v13;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v15 + 8))(v17, v14);
  v18 = __swift_project_boxed_opaque_existential_0((v4 + 624), *(v4 + 648));
  v19 = *(*__swift_project_boxed_opaque_existential_0((*v18 + 16), *(*v18 + 40)) + 24);
  v20 = swift_allocObject();
  *(v20 + 16) = v30;
  *(v20 + 24) = a2;

  sub_227669280();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = 13;
  v22 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v22, v11, v6);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v23, v22, v6);
  v26 = (v25 + v24);
  *v26 = sub_22717A7A8;
  v26[1] = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  v27 = v31;
  sub_227669270();
  (*(v7 + 8))(v11, v6);
  sub_2272A55D0(v27, v34);
  return (*(v32 + 8))(v27, v33);
}

uint64_t sub_22715DB54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A680();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  v12 = __swift_project_boxed_opaque_existential_0((v2 + 624), *(v2 + 648));
  __swift_project_boxed_opaque_existential_0((*v12 + 16), *(*v12 + 40));
  sub_227289554(14, 0, 0, v7);
  sub_2272A4B68(v7, a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22715DD44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A660();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  v13 = __swift_project_boxed_opaque_existential_0((v1 + 624), *(v1 + 648));
  __swift_project_boxed_opaque_existential_0((*v13 + 16), *(*v13 + 40));
  sub_227289B0C(2, 0, 0, v5);
  sub_2272A509C(v5, v8);
  v14 = *(v3 + 8);
  v14(v5, v2);
  (*(v3 + 16))(v5, v8, v2);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v15, v5, v2);
  v17 = (v16 + ((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_22715E028;
  v17[1] = 0;
  sub_227664DC0();
  sub_227669270();
  return (v14)(v8, v2);
}

uint64_t sub_22715E028(uint64_t a1)
{
  v2 = sub_22766B390();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - v6;
  v7 = sub_227664DC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD750, &unk_22767B6B0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v36 - v15);
  sub_226E93170(a1, &v36 - v15, &unk_27D7BD750, &unk_22767B6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    sub_22766A660();
    v18 = v17;
    v19 = sub_22766B380();
    v20 = sub_22766C890();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = v17;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_226E8E000, v19, v20, "[Onboarding] Failed fetching onboarding detail: %{public}@", v21, 0xCu);
      sub_226E97D1C(v22, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    else
    {
    }

    return (*(v39 + 8))(v4, v40);
  }

  else
  {
    (*(v8 + 32))(v13, v16, v7);
    sub_22766A660();
    (*(v8 + 16))(v10, v13, v7);
    v25 = sub_22766B380();
    v26 = sub_22766C8B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      sub_22717B7C4(&qword_28139B8E0, MEMORY[0x277D50FD0], MEMORY[0x277D50FD8]);
      v29 = sub_22766D140();
      v31 = v30;
      v37 = v13;
      v32 = *(v8 + 8);
      v32(v10, v7);
      v33 = sub_226E97AE8(v29, v31, &v41);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_226E8E000, v25, v26, "[Onboarding] Fetched onboarding detail: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AA9A450](v28, -1, -1);
      MEMORY[0x22AA9A450](v27, -1, -1);

      (*(v39 + 8))(v38, v40);
      return (v32)(v37, v7);
    }

    else
    {

      v35 = *(v8 + 8);
      v35(v10, v7);
      (*(v39 + 8))(v38, v40);
      return (v35)(v13, v7);
    }
  }
}

uint64_t sub_22715E524(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227669890();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715E5E8, 0, 0);
}

uint64_t sub_22715E5E8()
{
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationInferenceResponse", 37, 2, &dword_226E8E000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_22715E6B0;
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  return sub_22715E7C4(v4, v2, v3);
}

uint64_t sub_22715E6B0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22717B82C;
  }

  else
  {
    v2 = sub_22717B834;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22715E7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_227668F90();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B8, &qword_22767B638);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_22715E904;

  return sub_22715F258();
}

uint64_t sub_22715E904()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22715EA5C, 0, 0);
  }
}

uint64_t sub_22715EA5C()
{
  v1 = *(v0[3] + 872);
  v2 = sub_227668F80();
  if (*(v1 + 16) && (v3 = sub_226F3B210(v2), (v4 & 1) != 0))
  {
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v8 = v0[4];
    v0[12] = *(*(v1 + 56) + 8 * v3);
    (*(v7 + 16))(v5, v8, v6);
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    v0[13] = v11;
    *(v11 + 16) = v9;
    (*(v7 + 32))(v11 + v10, v5, v6);

    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_22715EE28;
    v13 = v0[10];

    return MEMORY[0x2821AFC88](v13, &unk_22767B648, v11);
  }

  else
  {
    v15 = v0[9];
    v14 = v0[10];
    v16 = sub_2276689A0();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v14, 1, 1, v16);
    sub_226E93170(v14, v15, &qword_27D7BB9B8, &qword_22767B638);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v18 = v0[10];
      sub_226E97D1C(v0[9], &qword_27D7BB9B8, &qword_22767B638);
      v19 = sub_227665A50();
      sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51B58], v19);
      swift_willThrow();
      sub_226E97D1C(v18, &qword_27D7BB9B8, &qword_22767B638);
    }

    else
    {
      v22 = v0[9];
      v23 = v0[2];
      sub_226E97D1C(v0[10], &qword_27D7BB9B8, &qword_22767B638);
      (*(v17 + 32))(v23, v22, v16);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22715EE28()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22715F1C8;
  }

  else
  {

    v2 = sub_22715EF4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22715EF4C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = sub_2276689A0();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_226E93170(v1, v2, &qword_27D7BB9B8, &qword_22767B638);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[10];
    sub_226E97D1C(v0[9], &qword_27D7BB9B8, &qword_22767B638);
    v6 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51B58], v6);
    swift_willThrow();
    sub_226E97D1C(v5, &qword_27D7BB9B8, &qword_22767B638);
  }

  else
  {
    v9 = v0[9];
    v10 = v0[2];
    sub_226E97D1C(v0[10], &qword_27D7BB9B8, &qword_22767B638);
    (*(v4 + 32))(v10, v9, v3);
  }

  v8 = v0[1];

  return v8();
}