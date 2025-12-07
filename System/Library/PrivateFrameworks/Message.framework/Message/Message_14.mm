uint64_t sub_1B06DE748(void *a1, uint64_t a2, uint64_t a3)
{
  v322 = a3;
  v324 = a2;
  v323 = a1;
  v315 = 0;
  v352 = 0;
  v351 = 0;
  v350 = 0;
  v314 = 0;
  v339 = 0;
  v334 = 0;
  v316 = _s6LoggerVMa(0);
  v318 = *(*(v316 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v320 = (v318 + 15) & 0xFFFFFFFFFFFFFFF0;
  v317 = &v116 - v320;
  MEMORY[0x1EEE9AC00](v3);
  v319 = &v116 - v320;
  MEMORY[0x1EEE9AC00](v4);
  v321 = &v116 - v320;
  v325 = sub_1B0E439A8();
  v326 = *(v325 - 8);
  v327 = v326;
  v328 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v323);
  v330 = (v328 + 15) & 0xFFFFFFFFFFFFFFF0;
  v329 = &v116 - v330;
  MEMORY[0x1EEE9AC00](v5);
  v331 = &v116 - v330;
  v352 = v6;
  v351 = v7;
  v350 = v8;
  v332 = MFUserAgent();
  if (v332)
  {
    v313 = v332;
  }

  else
  {
    LODWORD(v114) = 0;
    v113 = 86;
    LOBYTE(v112) = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v311 = v313;
  swift_getObjectType();
  v312 = [v311 canRegisterForAPSPush];
  swift_unknownObjectRelease();
  if (!v312)
  {
    v116 = sub_1B0E46A48();
    v288 = v116;
    v289 = v314;
    return v288;
  }

  if (![v323 shouldRegisterForPush])
  {
    (*(v327 + 16))(v329, v324, v325);
    sub_1B0394784(v324, v321);
    sub_1B0394784(v321, v319);
    sub_1B03F4FD0(v321, v317);
    v62 = (v319 + *(v316 + 20));
    v155 = *v62;
    v156 = *(v62 + 1);
    sub_1B039480C(v319);
    v154 = 24;
    v181 = 7;
    v63 = swift_allocObject();
    v64 = v156;
    v166 = v63;
    *(v63 + 16) = v155;
    *(v63 + 20) = v64;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v65 = swift_allocObject();
    v66 = v156;
    v157 = v65;
    *(v65 + 16) = v155;
    *(v65 + 20) = v66;

    v180 = 32;
    v67 = swift_allocObject();
    v68 = v157;
    v182 = v67;
    *(v67 + 16) = sub_1B039BBE8;
    *(v67 + 24) = v68;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v317);
    v201 = sub_1B0E43988();
    v158 = v201;
    v200 = sub_1B0E45908();
    v159 = v200;
    v176 = 17;
    v185 = swift_allocObject();
    v160 = v185;
    v169 = 16;
    *(v185 + 16) = 16;
    v186 = swift_allocObject();
    v161 = v186;
    v178 = 4;
    *(v186 + 16) = 4;
    v69 = swift_allocObject();
    v162 = v69;
    *(v69 + 16) = sub_1B0394C30;
    v172 = 0;
    *(v69 + 24) = 0;
    v70 = swift_allocObject();
    v71 = v162;
    v187 = v70;
    v163 = v70;
    *(v70 + 16) = sub_1B0394C24;
    *(v70 + 24) = v71;
    v188 = swift_allocObject();
    v164 = v188;
    v175 = 0;
    *(v188 + 16) = 0;
    v189 = swift_allocObject();
    v165 = v189;
    *(v189 + 16) = 1;
    v72 = swift_allocObject();
    v73 = v166;
    v167 = v72;
    *(v72 + 16) = sub_1B039BA2C;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    v75 = v167;
    v190 = v74;
    v168 = v74;
    *(v74 + 16) = sub_1B039BA88;
    *(v74 + 24) = v75;
    v191 = swift_allocObject();
    v170 = v191;
    *(v191 + 16) = v169;
    v192 = swift_allocObject();
    v171 = v192;
    *(v192 + 16) = v178;
    v76 = swift_allocObject();
    v77 = v172;
    v173 = v76;
    *(v76 + 16) = sub_1B039BB94;
    *(v76 + 24) = v77;
    v78 = swift_allocObject();
    v79 = v173;
    v193 = v78;
    v174 = v78;
    *(v78 + 16) = sub_1B0394C24;
    *(v78 + 24) = v79;
    v194 = swift_allocObject();
    v177 = v194;
    *(v194 + 16) = v175;
    v195 = swift_allocObject();
    v179 = v195;
    *(v195 + 16) = v178;
    v80 = swift_allocObject();
    v81 = v182;
    v183 = v80;
    *(v80 + 16) = sub_1B039BBA0;
    *(v80 + 24) = v81;
    v82 = swift_allocObject();
    v83 = v183;
    v198 = v82;
    v184 = v82;
    *(v82 + 16) = sub_1B039BC08;
    *(v82 + 24) = v83;
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v196 = sub_1B0E46A48();
    v197 = v84;

    v85 = v185;
    v86 = v197;
    *v197 = sub_1B0398F5C;
    v86[1] = v85;

    v87 = v186;
    v88 = v197;
    v197[2] = sub_1B0398F5C;
    v88[3] = v87;

    v89 = v187;
    v90 = v197;
    v197[4] = sub_1B0399178;
    v90[5] = v89;

    v91 = v188;
    v92 = v197;
    v197[6] = sub_1B0398F5C;
    v92[7] = v91;

    v93 = v189;
    v94 = v197;
    v197[8] = sub_1B0398F5C;
    v94[9] = v93;

    v95 = v190;
    v96 = v197;
    v197[10] = sub_1B039BA94;
    v96[11] = v95;

    v97 = v191;
    v98 = v197;
    v197[12] = sub_1B0398F5C;
    v98[13] = v97;

    v99 = v192;
    v100 = v197;
    v197[14] = sub_1B0398F5C;
    v100[15] = v99;

    v101 = v193;
    v102 = v197;
    v197[16] = sub_1B0399178;
    v102[17] = v101;

    v103 = v194;
    v104 = v197;
    v197[18] = sub_1B0398F5C;
    v104[19] = v103;

    v105 = v195;
    v106 = v197;
    v197[20] = sub_1B0398F5C;
    v106[21] = v105;

    v107 = v197;
    v108 = v198;
    v197[22] = sub_1B03991EC;
    v107[23] = v108;
    sub_1B0394964();

    if (os_log_type_enabled(v201, v200))
    {
      v109 = v314;
      v148 = sub_1B0E45D78();
      v144 = v148;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v146 = 0;
      v149 = sub_1B03949A8(0, v145, v145);
      v147 = v149;
      v150 = sub_1B03949A8(v146, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v349 = v148;
      v348 = v149;
      v347 = v150;
      v151 = &v349;
      sub_1B0394A48(0, &v349);
      sub_1B0394A48(4, v151);
      v345 = sub_1B0398F5C;
      v346 = v160;
      sub_1B03949FC(&v345, v151, &v348, &v347);
      v152 = v109;
      v153 = v109;
      if (v109)
      {
        v142 = 0;

        __break(1u);
      }

      else
      {
        v345 = sub_1B0398F5C;
        v346 = v161;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v140 = 0;
        v141 = 0;
        v345 = sub_1B0399178;
        v346 = v163;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v138 = 0;
        v139 = 0;
        v345 = sub_1B0398F5C;
        v346 = v164;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v136 = 0;
        v137 = 0;
        v345 = sub_1B0398F5C;
        v346 = v165;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v134 = 0;
        v135 = 0;
        v345 = sub_1B039BA94;
        v346 = v168;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v132 = 0;
        v133 = 0;
        v345 = sub_1B0398F5C;
        v346 = v170;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v130 = 0;
        v131 = 0;
        v345 = sub_1B0398F5C;
        v346 = v171;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v128 = 0;
        v129 = 0;
        v345 = sub_1B0399178;
        v346 = v174;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v126 = 0;
        v127 = 0;
        v345 = sub_1B0398F5C;
        v346 = v177;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v124 = 0;
        v125 = 0;
        v345 = sub_1B0398F5C;
        v346 = v179;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v122 = 0;
        v123 = 0;
        v345 = sub_1B03991EC;
        v346 = v184;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v120 = 0;
        v121 = 0;
        _os_log_impl(&dword_1B0389000, v158, v159, "[%.*hhx-%.*X] APNS: shouldRegisterForPush: NO", v144, 0x17u);
        v119 = 0;
        sub_1B03998A8(v147, 0, v145);
        sub_1B03998A8(v150, v119, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v143 = v120;
      }
    }

    else
    {
      v110 = v314;

      v143 = v110;
    }

    v117 = v143;

    (*(v327 + 8))(v329, v325);
    v118 = sub_1B0E46A48();
    v288 = v118;
    v289 = v117;
    return v288;
  }

  v310 = [v323 mailboxesForPushRegistration];
  if (v310)
  {
    v309 = v310;
    v306 = v310;
    v305 = sub_1B03EE50C();
    v307 = sub_1B0E451B8();

    v308 = v307;
  }

  else
  {
    v308 = 0;
  }

  v304 = v308;
  if (!v308)
  {
LABEL_16:
    (*(v327 + 16))(v331, v324, v325);
    sub_1B0394784(v324, v321);
    sub_1B0394784(v321, v319);
    sub_1B03F4FD0(v321, v317);
    v13 = (v319 + *(v316 + 20));
    v240 = *v13;
    v241 = *(v13 + 1);
    sub_1B039480C(v319);
    v239 = 24;
    v266 = 7;
    v14 = swift_allocObject();
    v15 = v241;
    v251 = v14;
    *(v14 + 16) = v240;
    *(v14 + 20) = v15;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v16 = swift_allocObject();
    v17 = v241;
    v242 = v16;
    *(v16 + 16) = v240;
    *(v16 + 20) = v17;

    v265 = 32;
    v18 = swift_allocObject();
    v19 = v242;
    v267 = v18;
    *(v18 + 16) = sub_1B039BBE8;
    *(v18 + 24) = v19;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v317);
    v286 = sub_1B0E43988();
    v243 = v286;
    v285 = sub_1B0E45908();
    v244 = v285;
    v261 = 17;
    v270 = swift_allocObject();
    v245 = v270;
    v254 = 16;
    *(v270 + 16) = 16;
    v271 = swift_allocObject();
    v246 = v271;
    v263 = 4;
    *(v271 + 16) = 4;
    v20 = swift_allocObject();
    v247 = v20;
    *(v20 + 16) = sub_1B0394C30;
    v257 = 0;
    *(v20 + 24) = 0;
    v21 = swift_allocObject();
    v22 = v247;
    v272 = v21;
    v248 = v21;
    *(v21 + 16) = sub_1B0394C24;
    *(v21 + 24) = v22;
    v273 = swift_allocObject();
    v249 = v273;
    v260 = 0;
    *(v273 + 16) = 0;
    v274 = swift_allocObject();
    v250 = v274;
    *(v274 + 16) = 1;
    v23 = swift_allocObject();
    v24 = v251;
    v252 = v23;
    *(v23 + 16) = sub_1B039BA2C;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v252;
    v275 = v25;
    v253 = v25;
    *(v25 + 16) = sub_1B039BA88;
    *(v25 + 24) = v26;
    v276 = swift_allocObject();
    v255 = v276;
    *(v276 + 16) = v254;
    v277 = swift_allocObject();
    v256 = v277;
    *(v277 + 16) = v263;
    v27 = swift_allocObject();
    v28 = v257;
    v258 = v27;
    *(v27 + 16) = sub_1B039BB94;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v258;
    v278 = v29;
    v259 = v29;
    *(v29 + 16) = sub_1B0394C24;
    *(v29 + 24) = v30;
    v279 = swift_allocObject();
    v262 = v279;
    *(v279 + 16) = v260;
    v280 = swift_allocObject();
    v264 = v280;
    *(v280 + 16) = v263;
    v31 = swift_allocObject();
    v32 = v267;
    v268 = v31;
    *(v31 + 16) = sub_1B039BBA0;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v268;
    v283 = v33;
    v269 = v33;
    *(v33 + 16) = sub_1B039BC08;
    *(v33 + 24) = v34;
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v281 = sub_1B0E46A48();
    v282 = v35;

    v36 = v270;
    v37 = v282;
    *v282 = sub_1B0398F5C;
    v37[1] = v36;

    v38 = v271;
    v39 = v282;
    v282[2] = sub_1B0398F5C;
    v39[3] = v38;

    v40 = v272;
    v41 = v282;
    v282[4] = sub_1B0399178;
    v41[5] = v40;

    v42 = v273;
    v43 = v282;
    v282[6] = sub_1B0398F5C;
    v43[7] = v42;

    v44 = v274;
    v45 = v282;
    v282[8] = sub_1B0398F5C;
    v45[9] = v44;

    v46 = v275;
    v47 = v282;
    v282[10] = sub_1B039BA94;
    v47[11] = v46;

    v48 = v276;
    v49 = v282;
    v282[12] = sub_1B0398F5C;
    v49[13] = v48;

    v50 = v277;
    v51 = v282;
    v282[14] = sub_1B0398F5C;
    v51[15] = v50;

    v52 = v278;
    v53 = v282;
    v282[16] = sub_1B0399178;
    v53[17] = v52;

    v54 = v279;
    v55 = v282;
    v282[18] = sub_1B0398F5C;
    v55[19] = v54;

    v56 = v280;
    v57 = v282;
    v282[20] = sub_1B0398F5C;
    v57[21] = v56;

    v58 = v282;
    v59 = v283;
    v282[22] = sub_1B03991EC;
    v58[23] = v59;
    sub_1B0394964();

    if (os_log_type_enabled(v286, v285))
    {
      v60 = v314;
      v233 = sub_1B0E45D78();
      v229 = v233;
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v231 = 0;
      v234 = sub_1B03949A8(0, v230, v230);
      v232 = v234;
      v235 = sub_1B03949A8(v231, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v344 = v233;
      v343 = v234;
      v342 = v235;
      v236 = &v344;
      sub_1B0394A48(0, &v344);
      sub_1B0394A48(4, v236);
      v340 = sub_1B0398F5C;
      v341 = v245;
      sub_1B03949FC(&v340, v236, &v343, &v342);
      v237 = v60;
      v238 = v60;
      if (v60)
      {
        v227 = 0;

        __break(1u);
      }

      else
      {
        v340 = sub_1B0398F5C;
        v341 = v246;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v225 = 0;
        v226 = 0;
        v340 = sub_1B0399178;
        v341 = v248;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v223 = 0;
        v224 = 0;
        v340 = sub_1B0398F5C;
        v341 = v249;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v221 = 0;
        v222 = 0;
        v340 = sub_1B0398F5C;
        v341 = v250;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v219 = 0;
        v220 = 0;
        v340 = sub_1B039BA94;
        v341 = v253;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v217 = 0;
        v218 = 0;
        v340 = sub_1B0398F5C;
        v341 = v255;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v215 = 0;
        v216 = 0;
        v340 = sub_1B0398F5C;
        v341 = v256;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v213 = 0;
        v214 = 0;
        v340 = sub_1B0399178;
        v341 = v259;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v211 = 0;
        v212 = 0;
        v340 = sub_1B0398F5C;
        v341 = v262;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v209 = 0;
        v210 = 0;
        v340 = sub_1B0398F5C;
        v341 = v264;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v207 = 0;
        v208 = 0;
        v340 = sub_1B03991EC;
        v341 = v269;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v205 = 0;
        v206 = 0;
        _os_log_impl(&dword_1B0389000, v243, v244, "[%.*hhx-%.*X] APNS: no mailboxes", v229, 0x17u);
        v204 = 0;
        sub_1B03998A8(v232, 0, v230);
        sub_1B03998A8(v235, v204, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v228 = v205;
      }
    }

    else
    {
      v61 = v314;

      v228 = v61;
    }

    v202 = v228;

    (*(v327 + 8))(v331, v325);
    v203 = sub_1B0E46A48();
    v288 = v203;
    v289 = v202;
    return v288;
  }

  v303 = v304;
  v300 = v304;
  v339 = v304;
  v338 = v304;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
  v301 = v302;
  sub_1B06E3518();
  v9 = sub_1B0E45748();
  if (v9)
  {

    goto LABEL_16;
  }

  v10 = v314;
  v336 = v300;
  v293 = &type metadata for MailboxName;
  v294 = sub_1B0E46A48();
  sub_1B0451F2C();
  v335 = sub_1B0E45438();
  v295 = &v116;
  MEMORY[0x1EEE9AC00](&v116);
  v297 = &v112;
  v114 = v322;
  v115 = v11;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  v296 = v298;
  sub_1B06E35CC();
  sub_1B0E44FD8();
  v299 = v10;
  if (!v10)
  {
    v290 = v337;
    v334 = v337;
    v333 = v337;
    sub_1B06E3654();
    v12 = sub_1B0E44FF8();
    v291 = 0;
    v292 = v12;
    v287 = v12;

    v288 = v287;
    v289 = v291;
    return v288;
  }

  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

void *sub_1B06E1214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v246 = a1;
  v243 = a2;
  v244 = a3;
  v245 = a4;
  v194 = sub_1B039BBE8;
  v195 = sub_1B06E3930;
  v196 = sub_1B0394C30;
  v197 = sub_1B0394C24;
  v198 = sub_1B039BA2C;
  v199 = sub_1B039BA88;
  v200 = sub_1B039BB94;
  v201 = sub_1B0394C24;
  v202 = sub_1B039BBA0;
  v203 = sub_1B039BC08;
  v204 = sub_1B06BA324;
  v205 = sub_1B06E395C;
  v206 = sub_1B039BCF8;
  v207 = sub_1B0398F5C;
  v208 = sub_1B0398F5C;
  v209 = sub_1B0399178;
  v210 = sub_1B0398F5C;
  v211 = sub_1B0398F5C;
  v212 = sub_1B039BA94;
  v213 = sub_1B0398F5C;
  v214 = sub_1B0398F5C;
  v215 = sub_1B0399178;
  v216 = sub_1B0398F5C;
  v217 = sub_1B0398F5C;
  v218 = sub_1B03991EC;
  v219 = sub_1B0398F5C;
  v220 = sub_1B0398F5C;
  v221 = sub_1B03993BC;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0398F5C;
  v224 = sub_1B039BCEC;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  memset(v279, 0, 13);
  v276 = 0;
  memset(v269, 0, 13);
  v232 = 0;
  v225 = _s6LoggerVMa(0);
  v226 = (*(*(v225 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v227 = &v92 - v226;
  v228 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v229 = &v92 - v228;
  v230 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v231 = &v92 - v230;
  v233 = sub_1B0E439A8();
  v234 = *(v233 - 8);
  v235 = v233 - 8;
  v236 = (*(v234 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v232);
  v237 = &v92 - v236;
  v238 = sub_1B0E42E68();
  v239 = *(v238 - 8);
  v240 = v238 - 8;
  v241 = (*(v239 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v238);
  v242 = &v92 - v241;
  v247 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v246);
  v248 = &v92 - v247;
  v283 = v9;
  v282 = *v10;
  v281 = v11;
  v280 = v12;
  v249 = [v282 URL];
  if (v249)
  {
    v192 = v249;
    v191 = v249;
    sub_1B0E42DE8();
    (*(v239 + 32))(v248, v242, v238);
    (*(v239 + 56))(v248, 0, 1, v238);
    MEMORY[0x1E69E5920](v191);
  }

  else
  {
    (*(v239 + 56))(v248, 1, 1, v238);
  }

  v190 = sub_1B07BEDFC(v248);
  v189 = v13;
  sub_1B06E3800(v248);
  if (!v190)
  {
    result = v193;
    v186 = v193;
    return result;
  }

  v187 = v190;
  v188 = v189 & 0xFFFFFFFFFFLL;
  v185 = v189 & 0xFFFFFFFFFFLL;
  v184 = v190;
  v279[0] = v190;
  LODWORD(v279[1]) = v189;
  BYTE4(v279[1]) = (v189 & 0xFFFFFFFFFFuLL) >> 32;
  v277 = v190;
  LODWORD(v278) = v189;
  BYTE4(v278) = BYTE4(v279[1]);
  MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v190, v278);
  v183 = v15;
  v276 = v15;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v272 = v184;
  LODWORD(v273) = v185;
  BYTE4(v273) = BYTE4(v185);
  v16 = MailboxPath.pathSeparator.getter(v184, v273);
  v270 = v16;
  v271 = v17;
  if (v17)
  {
    v274 = v270;
    v275 = v271;
  }

  else
  {
    v274 = sub_1B0E44838();
    v275 = v18;
    if (v271)
    {
      sub_1B03B1198(&v270);
    }
  }

  v19 = v193;
  v20 = sub_1B07BEE90(v183, v274, v275);
  v178 = v19;
  v269[2] = v20;
  v269[3] = v21;
  v179 = v20;
  v180 = v21;
  v181 = BYTE4(v21);
  v182 = v19;
  if (v19)
  {
    v92 = 0;

    v175 = 0;
    v176 = 0;
    v177 = v92;
  }

  else
  {
    v175 = v179;
    v176 = v180 | (v181 << 32);
    v177 = 0;
  }

  v170 = v177;
  v171 = v175;
  v269[0] = v175;
  LODWORD(v269[1]) = v176;
  BYTE4(v269[1]) = BYTE4(v176);
  v172 = &v266;
  v266 = v175;
  v267 = v176;
  v268 = BYTE4(v176);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v174 = v185 | (BYTE4(v185) << 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v173 = v264;
  sub_1B06E38A8(v172, v264);
  *v265 = v184;
  *&v265[8] = v174;
  *(v173 + 28) = BYTE4(v174);
  if (v264[0])
  {
    sub_1B06E38A8(v264, v256);
    if (*v265)
    {
      v166 = v255;
      v255[0] = v256[0];
      *(v255 + 5) = *(v256 + 5);
      v165 = v254;
      v254[0] = *v265;
      v167 = v264;
      *(v254 + 5) = *&v265[5];
      v252 = v255[0];
      LODWORD(v253) = *(v256 + 5) >> 24;
      BYTE4(v253) = BYTE4(v256[1]);
      v250 = v254[0];
      LODWORD(v251) = *&v265[5] >> 24;
      BYTE4(v251) = v265[12];
      v168 = static MailboxPath.__derived_struct_equals(_:_:)(v255[0], v253, v254[0], v251);
      sub_1B039E440(v165);
      sub_1B039E440(v166);
      sub_1B039E440(v167);
      v169 = v168;
      goto LABEL_20;
    }

    sub_1B039E440(v256);
    goto LABEL_22;
  }

  if (*v265)
  {
LABEL_22:
    sub_1B06E38F8(v264);
    v169 = 0;
    goto LABEL_20;
  }

  sub_1B039E440(v264);
  v169 = 1;
LABEL_20:
  v164 = v169;

  if (v164)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v163 = &v257;
    v257 = v184;
    v258 = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
    sub_1B0E454D8();

    result = v170;
    v186 = v170;
  }

  else
  {
    (*(v234 + 16))(v237, v245, v233);
    sub_1B0394784(v245, v231);
    sub_1B0394784(v231, v229);
    sub_1B03F4FD0(v231, v227);
    v22 = (v229 + *(v225 + 20));
    v120 = *v22;
    v121 = *(v22 + 1);
    sub_1B039480C(v229);
    v132 = 24;
    v137 = 7;
    v23 = swift_allocObject();
    v24 = v121;
    v125 = v23;
    *(v23 + 16) = v120;
    *(v23 + 20) = v24;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v25 = swift_allocObject();
    v26 = v121;
    v122 = v25;
    *(v25 + 16) = v120;
    *(v25 + 20) = v26;

    v136 = 32;
    v27 = swift_allocObject();
    v28 = v122;
    v130 = v27;
    *(v27 + 16) = v194;
    *(v27 + 24) = v28;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v227);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = swift_allocObject();
    v30 = v185;
    v31 = BYTE4(v185);
    v123 = v29;
    *(v29 + 16) = v184;
    *(v29 + 24) = v30;
    *(v29 + 28) = v31;

    v32 = swift_allocObject();
    v33 = v123;
    v138 = v32;
    *(v32 + 16) = v195;
    *(v32 + 24) = v33;

    v161 = sub_1B0E43988();
    v162 = sub_1B0E458E8();
    v134 = 17;
    v140 = swift_allocObject();
    v127 = 16;
    *(v140 + 16) = 16;
    v141 = swift_allocObject();
    v129 = 4;
    *(v141 + 16) = 4;
    v34 = swift_allocObject();
    v124 = v34;
    *(v34 + 16) = v196;
    *(v34 + 24) = 0;
    v35 = swift_allocObject();
    v36 = v124;
    v142 = v35;
    *(v35 + 16) = v197;
    *(v35 + 24) = v36;
    v143 = swift_allocObject();
    *(v143 + 16) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = 1;
    v37 = swift_allocObject();
    v38 = v125;
    v126 = v37;
    *(v37 + 16) = v198;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v126;
    v145 = v39;
    *(v39 + 16) = v199;
    *(v39 + 24) = v40;
    v146 = swift_allocObject();
    *(v146 + 16) = v127;
    v147 = swift_allocObject();
    *(v147 + 16) = v129;
    v41 = swift_allocObject();
    v128 = v41;
    *(v41 + 16) = v200;
    *(v41 + 24) = 0;
    v42 = swift_allocObject();
    v43 = v128;
    v148 = v42;
    *(v42 + 16) = v201;
    *(v42 + 24) = v43;
    v149 = swift_allocObject();
    *(v149 + 16) = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = v129;
    v44 = swift_allocObject();
    v45 = v130;
    v131 = v44;
    *(v44 + 16) = v202;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v131;
    v151 = v46;
    *(v46 + 16) = v203;
    *(v46 + 24) = v47;
    v152 = swift_allocObject();
    *(v152 + 16) = 112;
    v153 = swift_allocObject();
    v135 = 8;
    *(v153 + 16) = 8;
    v133 = swift_allocObject();
    *(v133 + 16) = 0x786F626C69616DLL;
    v48 = swift_allocObject();
    v49 = v133;
    v154 = v48;
    *(v48 + 16) = v204;
    *(v48 + 24) = v49;
    v155 = swift_allocObject();
    *(v155 + 16) = 37;
    v156 = swift_allocObject();
    *(v156 + 16) = v135;
    v50 = swift_allocObject();
    v51 = v138;
    v139 = v50;
    *(v50 + 16) = v205;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v139;
    v158 = v52;
    *(v52 + 16) = v206;
    *(v52 + 24) = v53;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v157 = sub_1B0E46A48();
    v159 = v54;

    v55 = v140;
    v56 = v159;
    *v159 = v207;
    v56[1] = v55;

    v57 = v141;
    v58 = v159;
    v159[2] = v208;
    v58[3] = v57;

    v59 = v142;
    v60 = v159;
    v159[4] = v209;
    v60[5] = v59;

    v61 = v143;
    v62 = v159;
    v159[6] = v210;
    v62[7] = v61;

    v63 = v144;
    v64 = v159;
    v159[8] = v211;
    v64[9] = v63;

    v65 = v145;
    v66 = v159;
    v159[10] = v212;
    v66[11] = v65;

    v67 = v146;
    v68 = v159;
    v159[12] = v213;
    v68[13] = v67;

    v69 = v147;
    v70 = v159;
    v159[14] = v214;
    v70[15] = v69;

    v71 = v148;
    v72 = v159;
    v159[16] = v215;
    v72[17] = v71;

    v73 = v149;
    v74 = v159;
    v159[18] = v216;
    v74[19] = v73;

    v75 = v150;
    v76 = v159;
    v159[20] = v217;
    v76[21] = v75;

    v77 = v151;
    v78 = v159;
    v159[22] = v218;
    v78[23] = v77;

    v79 = v152;
    v80 = v159;
    v159[24] = v219;
    v80[25] = v79;

    v81 = v153;
    v82 = v159;
    v159[26] = v220;
    v82[27] = v81;

    v83 = v154;
    v84 = v159;
    v159[28] = v221;
    v84[29] = v83;

    v85 = v155;
    v86 = v159;
    v159[30] = v222;
    v86[31] = v85;

    v87 = v156;
    v88 = v159;
    v159[32] = v223;
    v88[33] = v87;

    v89 = v158;
    v90 = v159;
    v159[34] = v224;
    v90[35] = v89;
    sub_1B0394964();

    if (os_log_type_enabled(v161, v162))
    {
      v113 = sub_1B0E45D78();
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v114 = sub_1B03949A8(0, v112, v112);
      v115 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v116 = &v263;
      v263 = v113;
      v117 = &v262;
      v262 = v114;
      v118 = &v261;
      v261 = v115;
      sub_1B0394A48(3, &v263);
      sub_1B0394A48(6, v116);
      v91 = v170;
      v259 = v207;
      v260 = v140;
      sub_1B03949FC(&v259, v116, v117, v118);
      v119 = v91;
      if (v91)
      {

        __break(1u);
      }

      else
      {
        v259 = v208;
        v260 = v141;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v110 = 0;
        v259 = v209;
        v260 = v142;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v109 = 0;
        v259 = v210;
        v260 = v143;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v108 = 0;
        v259 = v211;
        v260 = v144;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v107 = 0;
        v259 = v212;
        v260 = v145;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v106 = 0;
        v259 = v213;
        v260 = v146;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v105 = 0;
        v259 = v214;
        v260 = v147;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v104 = 0;
        v259 = v215;
        v260 = v148;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v103 = 0;
        v259 = v216;
        v260 = v149;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v102 = 0;
        v259 = v217;
        v260 = v150;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v101 = 0;
        v259 = v218;
        v260 = v151;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v100 = 0;
        v259 = v219;
        v260 = v152;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v99 = 0;
        v259 = v220;
        v260 = v153;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v98 = 0;
        v259 = v221;
        v260 = v154;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v97 = 0;
        v259 = v222;
        v260 = v155;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v96 = 0;
        v259 = v223;
        v260 = v156;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v95 = 0;
        v259 = v224;
        v260 = v158;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v94 = 0;
        _os_log_impl(&dword_1B0389000, v161, v162, "[%.*hhx-%.*X] APNS: Not registering mailbox '%{sensitive,mask.mailbox}s' for push because it’s not modified UTF-7 encoded.", v113, 0x2Bu);
        sub_1B03998A8(v114, 0, v112);
        sub_1B03998A8(v115, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v111 = v94;
      }
    }

    else
    {

      v111 = v170;
    }

    v93 = v111;
    MEMORY[0x1E69E5920](v161);
    (*(v234 + 8))(v237, v233);

    result = v93;
    v186 = v93;
  }

  return result;
}

uint64_t sub_1B06E2C78(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E3294();
  sub_1B0E45728();
  return v2;
}

uint64_t sub_1B06E2CD8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E3294();
  sub_1B0750030();
  sub_1B0E45768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F8, &qword_1B0E9A088);
  sub_1B06E3968();
  sub_1B0E45728();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B06E2DC0(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E3294();
  sub_1B0750030();
  sub_1B0E45768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F8, &qword_1B0E9A088);
  sub_1B06E3968();
  sub_1B0750030();
  sub_1B0E45768();
  sub_1B0E45728();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B06E2EEC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = 0;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E36DC();
  sub_1B0E44F58();
  sub_1B039E440(v12);
  sub_1B0391B00();
  v9 = v4;
  if ((v5 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B06E3764();
    sub_1B0E45598();
    v8 = sub_1B0E453E8();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0E44AC8();

    [v10 serverRegisteredMailboxes:v8 withTopic:v7 version:v9];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
  }
}

uint64_t sub_1B06E311C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1B07BF45C(*a2, *(a2 + 8));
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B06E3170()
{
  v2 = qword_1EB6DCC98;
  if (!qword_1EB6DCC98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCC98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06E31EC(uint64_t a1)
{
  v3 = sub_1B0E43BB8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B06E3294()
{
  v2 = qword_1EB6DB628;
  if (!qword_1EB6DB628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18E8, &unk_1B0E99F00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB628);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06E3384(uint64_t (*a1)(void))
{
  if (a1())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = sub_1B0E44BA8();
    v6 = v1;

    v7 = v5;
    v8 = v6;
  }

  else
  {

    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {
    return v7;
  }

  v4 = sub_1B0E44838();

  return v4;
}

unint64_t sub_1B06E3518()
{
  v2 = qword_1EB6DB018;
  if (!qword_1EB6DB018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06E35CC()
{
  v2 = qword_1EB6DB020;
  if (!qword_1EB6DB020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06E3654()
{
  v2 = qword_1EB6DADB0;
  if (!qword_1EB6DADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18F0, qword_1B0E99F10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06E36DC()
{
  v2 = qword_1EB6DB630;
  if (!qword_1EB6DB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18E8, &unk_1B0E99F00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB630);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06E3764()
{
  v2 = qword_1EB6DB060;
  if (!qword_1EB6DB060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06E3800(uint64_t a1)
{
  v3 = sub_1B0E42E68();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B06E38A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  return result;
}

unint64_t sub_1B06E3968()
{
  v2 = qword_1EB6DA580;
  if (!qword_1EB6DA580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18F8, &qword_1B0E9A088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06E39F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_1B06F3C88();
  v18 = v4;
  sub_1B06F3D18(a1);
  sub_1B06F6420();
  if (sub_1B0E45528())
  {
    v11 = sub_1B06F649C(v17, v18);
    v12 = v5;

    sub_1B06F655C(v11, v12, a1);
  }

  if (sub_1B0E45528())
  {
    v6 = sub_1B06F649C(v17, v18);
    sub_1B06F85B0(v6, v7, a1);
  }

  if (sub_1B0E45528())
  {
    v8 = sub_1B06F649C(v17, v18);
    sub_1B06FC2B8(v8, v9, a1);
  }

  sub_1B06FD86C(a2, a1, a3, a4, v17, v18);

  MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1B06E3BF4()
{
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06E3C50()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06E3C8C()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06E3CC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B06E3D38(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v5 = v2 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06E3DB4()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B06E3E14(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06E3E84()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B06E3EE4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

unint64_t sub_1B06E3F74()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_state);
  swift_beginAccess();
  v3 = *v2 | (*(v2 + 4) << 32);
  swift_endAccess();
  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t sub_1B06E3FE0(uint64_t a1)
{
  v4 = v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_state;
  swift_beginAccess();
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1);
  return swift_endAccess();
}

uint64_t sub_1B06E40A0(void *a1, uint64_t a2, uint64_t a3)
{
  v93 = a1;
  v86 = a2;
  v87 = a3;
  v88 = 0;
  v75 = sub_1B06FF208;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v104 = 0;
  v105 = 0;
  v91 = 0;
  v76 = sub_1B0E459C8();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v80 = v32 - v79;
  v81 = sub_1B0E45C58();
  v82 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91);
  v83 = v32 - v82;
  v84 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91);
  v85 = v32 - v84;
  v89 = (*(*(_s6LoggerVMa(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v90 = v32 - v89;
  v113 = v5;
  v112 = v6;
  v111 = v7;
  v110 = v3;
  *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = v91;
  *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken) = v91;
  *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture) = v8;
  v92 = OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_state;
  v9 = sub_1B06E3F54();
  v10 = v93;
  v11 = v3 + v92;
  *v11 = v9;
  *(v11 + 4) = BYTE4(v9);
  MEMORY[0x1E69E5928](v10);
  v12 = v93;
  *(v3 + 16) = v93;
  MEMORY[0x1E69E5928](v12);
  v94 = [v93 identifier];
  if (v94)
  {
    v73 = v94;
    v68 = v94;
    v69 = sub_1B0E44AD8();
    v70 = v13;
    MEMORY[0x1E69E5920](v68);
    v71 = v69;
    v72 = v70;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v67 = v72;
  v66 = v71;
  MEMORY[0x1E69E5920](v93);
  v106 = v66;
  v107 = v67;
  if (v67)
  {
    v108 = v106;
    v109 = v107;
  }

  else
  {
    v108 = sub_1B0E44838();
    v109 = v14;
    if (v107)
    {
      sub_1B03B1198(&v106);
    }
  }

  v43 = v108;
  v65 = v109;
  v104 = v108;
  v105 = v109;
  sub_1B0394784(v86, v90);
  sub_1B03F4FD0(v90, v74 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger);
  v48 = 0;
  v37 = sub_1B06FF124();
  v32[0] = 56;
  v40 = 1;
  v15 = sub_1B0E46A28();
  v33 = &v102;
  v102 = v15;
  v103 = v16;
  v49 = 1;
  v17 = sub_1B0E44838();
  v32[1] = v18;
  MEMORY[0x1B2728B30](v17);

  v100 = v43;
  v101 = v65;
  v44 = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69E61C8];
  v46 = MEMORY[0x1E69E61C0];
  sub_1B0E46A08();
  v47 = "";
  v19 = sub_1B0E44838();
  v32[2] = v20;
  MEMORY[0x1B2728B30](v19);

  v35 = v102;
  v34 = v103;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v33);
  v39 = sub_1B0E44C88();
  v38 = v21;
  sub_1B0E44278();
  v36 = sub_1B0E46A48();
  sub_1B06FF188();
  sub_1B0E46028();
  (*(v77 + 104))(v80, *MEMORY[0x1E69E8098], v76);
  MEMORY[0x1E69E5928](v87);
  v22 = sub_1B0E45C68();
  v23 = v87;
  *(v74 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue) = v22;
  MEMORY[0x1E69E5928](v23);
  v55 = &unk_1EB737000;
  *(v74 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop) = v87;
  v50 = type metadata accessor for StateCapture();
  v41 = 37;
  v24 = sub_1B0E46A28();
  v52 = &v98;
  v98 = v24;
  v99 = v25;
  v26 = sub_1B0E44838();
  v42 = v27;
  MEMORY[0x1B2728B30](v26);

  v96 = v43;
  v97 = v65;
  sub_1B0E46A08();
  v28 = sub_1B0E44838();
  v51 = v29;
  MEMORY[0x1B2728B30](v28);

  v54 = v98;
  v53 = v99;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v52);
  v58 = sub_1B0E44C88();
  v59 = v30;
  v60 = *(v74 + v55[324]);
  MEMORY[0x1E69E5928](v60);
  v61 = swift_allocObject();
  v56 = v61 + 16;

  v57 = v74;
  swift_weakInit();

  v63 = StateCapture.__allocating_init(title:queue:capture:)(v58, v59, v60, v75, v61);

  v62 = (v74 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture);
  v64 = v95;
  swift_beginAccess();
  *v62 = v63;

  swift_endAccess();

  MEMORY[0x1E69E5920](v87);
  sub_1B039480C(v86);
  MEMORY[0x1E69E5920](v93);
  return v74;
}

uint64_t sub_1B06E4A80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8[4] = a1 + 16;
  swift_beginAccess();
  v8[0] = swift_weakLoadStrong();
  if (v8[0])
  {
    v5 = v8[0];

    sub_1B0391AD4(v8);
    swift_endAccess();
    v4 = (v5 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_state);
    swift_beginAccess();
    v6 = *v4 | (*(v4 + 4) << 32);
    swift_endAccess();

    result = sub_1B06E4BB8(v6 & 0xFFFFFFFFFFLL);
    a2[3] = MEMORY[0x1E69E6158];
    a2[4] = MEMORY[0x1E69E6160];
    *a2 = result;
    a2[1] = v3;
  }

  else
  {
    sub_1B0391AD4(v8);
    result = swift_endAccess();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_1B06E4BB8(uint64_t a1)
{
  v31 = 0;
  v30 = 0;
  v26 = 0;
  v25 = 0;
  v21 = 0;
  v20 = 0;
  v34 = a1;
  v35 = BYTE4(a1);
  v18 = ((a1 & 0xFFFFFFFFFFuLL) >> 38) & 3;
  if ((((a1 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 0)
  {
    if (v18 == 1)
    {
      v26 = a1;
      v25 = ((a1 & 0x3FFFFFFFFFuLL) >> 32) & 1;
      v24[0] = sub_1B0E46A28();
      v24[1] = v7;
      v8 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v8);

      v23 = a1;
      sub_1B06FF210();
      sub_1B0E469F8();
      v9 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v9);

      v22 = ((a1 & 0x3FFFFFFFFFuLL) >> 32) & 1;
      sub_1B06FF28C();
      sub_1B0E469F8();
      v10 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v10);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v24);
      v32 = sub_1B0E44C88();
      v33 = v11;
    }

    else
    {
      if (v18 == 2)
      {
        v31 = a1;
        v30 = ((a1 & 0x3FFFFFFFFFuLL) >> 32) & 1;
        v29[0] = sub_1B0E46A28();
        v29[1] = v12;
        v13 = sub_1B0E44838();
        MEMORY[0x1B2728B30](v13);

        v28 = a1;
        sub_1B06FF210();
        sub_1B0E469F8();
        v14 = sub_1B0E44838();
        MEMORY[0x1B2728B30](v14);

        v27 = ((a1 & 0x3FFFFFFFFFuLL) >> 32) & 1;
        sub_1B06FF28C();
        sub_1B0E469F8();
        v15 = sub_1B0E44838();
        MEMORY[0x1B2728B30](v15);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B1198(v29);
        v32 = sub_1B0E44C88();
      }

      else
      {
        v32 = sub_1B0E44838();
      }

      v33 = v1;
    }
  }

  else
  {
    v21 = a1;
    v20 = ((a1 & 0xFFFFFFFFFFuLL) >> 32) & 1;
    v19[0] = sub_1B0E46A28();
    v19[1] = v2;
    v3 = sub_1B0E44838();
    MEMORY[0x1B2728B30](v3);

    sub_1B06FF210();
    sub_1B0E469F8();
    v4 = sub_1B0E44838();
    MEMORY[0x1B2728B30](v4);

    sub_1B06FF28C();
    sub_1B0E469F8();
    v5 = sub_1B0E44838();
    MEMORY[0x1B2728B30](v5);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v19);
    v32 = sub_1B0E44C88();
    v33 = v6;
  }

  return v32;
}

uint64_t sub_1B06E5120()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture);
  swift_beginAccess();
  if (!*v2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  StateCapture.tearDown()();
}

uint64_t sub_1B06E51C8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  sub_1B039480C(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger);
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue));
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop));
  sub_1B06D56EC();
  sub_1B03FD360((v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken));
  sub_1B0391AD4((v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture));
  return v2;
}

uint64_t sub_1B06E536C(int a1)
{
  v6 = a1;
  v5[0] = sub_1B0E46A28();
  v5[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  sub_1B0E469F8();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v5);
  return sub_1B0E44C88();
}

BOOL sub_1B06E55A4(uint64_t a1, uint64_t a2)
{
  v8 = ((a1 & 0xFFFFFFFFFFuLL) >> 38) & 3;
  if ((((a1 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 0)
  {
    if (v8 == 1)
    {
      v5 = BYTE4(a1) & 0x3F;
      if ((((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 1)
      {
        return 0;
      }

      return sub_1B06E5468(a1, a2) && static Environment.AppState.__derived_enum_equals(_:_:)(v5 & 1, ((a2 & 0x3FFFFFFFFFuLL) >> 32) & 1);
    }

    else
    {
      if (v8 != 2)
      {
        return (((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3) == 3 && (a2 & 0xFFFFFFFFFFLL) == 0xC000000000;
      }

      v4 = BYTE4(a1) & 0x3F;
      if ((((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 2)
      {
        return 0;
      }

      return sub_1B06E5468(a1, a2) && static Environment.AppState.__derived_enum_equals(_:_:)(v4 & 1, ((a2 & 0x3FFFFFFFFFuLL) >> 32) & 1);
    }
  }

  else
  {
    v6 = BYTE4(a1);
    if ((((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 0)
    {
      return 0;
    }

    return sub_1B06E5468(a1, a2) && static Environment.AppState.__derived_enum_equals(_:_:)(v6 & 1, ((a2 & 0xFFFFFFFFFFuLL) >> 32) & 1);
  }
}

uint64_t sub_1B06E58CC(uint64_t a1, uint64_t a2)
{
  v3 = ((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3;
  if (v3 < 2)
  {
    sub_1B0E46C48();
    sub_1B06FF304();
    sub_1B0E46C48();
    sub_1B070E084();
    return sub_1B0E46C48();
  }

  else
  {
    if (v3 == 2)
    {
      sub_1B0E46C48();
      sub_1B06FF304();
      sub_1B0E46C48();
      sub_1B070E084();
    }

    return sub_1B0E46C48();
  }
}

BOOL sub_1B06E5C34(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

void sub_1B06E5D1C()
{
  sub_1B0E46A48();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  sub_1B0394964();
}

uint64_t sub_1B06E61A8(char a1)
{
  if (((((*v1 | (*(v1 + 4) << 32)) & 0xFFFFFFFFFFLL) >> 38) & 3) == 3)
  {
    *v5 = sub_1B06E52E8();
    *(v5 + 4) = a1 & 1;
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

BOOL sub_1B06E6294(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return sub_1B06E5468(a1, a2);
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t sub_1B06E639C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0)
  {
    sub_1B0E46C48();
    sub_1B06FF304();
  }

  return sub_1B0E46C48();
}

uint64_t sub_1B06E6504()
{
  LODWORD(v2) = *v0;
  BYTE4(v2) = *(v0 + 4) & 1;
  return sub_1B06E648C(v2);
}

uint64_t sub_1B06E6540(uint64_t a1)
{
  LODWORD(v3) = *v1;
  BYTE4(v3) = *(v1 + 4) & 1;
  return sub_1B06E639C(a1, v3);
}

BOOL sub_1B06E657C(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = *a1;
  BYTE4(v4) = *(a1 + 4) & 1;
  LODWORD(v3) = *a2;
  BYTE4(v3) = *(a2 + 4) & 1;
  return sub_1B06E6294(v4, v3);
}

uint64_t sub_1B06E65DC()
{
  v5 = *v0 | (*(v0 + 4) << 32);
  if ((((v5 & 0xFFFFFFFFFFLL) >> 38) & 3) != 0)
  {
    if ((((v5 & 0xFFFFFFFFFFLL) >> 38) & 3) == 1)
    {
      v6 = sub_1B06E5308(*v0);
      *v4 = v6;
      *(v4 + 4) = ((v5 & 0x3FFFFFFFFFLL) >> 32) & 1;
      v2 = v6;
      v3 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 1;
    }
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  LODWORD(v7) = v2;
  BYTE4(v7) = v3 & 1;
  return v7;
}

void sub_1B06E673C()
{
  v2 = *v0 | (*(v0 + 4) << 32);
  if ((((v2 & 0xFFFFFFFFFFLL) >> 38) & 3) == 1)
  {
    *v1 = *v0;
    *(v1 + 4) = ((v2 & 0x3FFFFFFFFFLL) >> 32) & 1;
  }
}

BOOL sub_1B06E6818(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    return (a2 & 0xFF00000000) == 0x200000000;
  }

  v4 = BYTE4(a1);
  if ((a2 & 0xFF00000000) == 0x200000000)
  {
    return 0;
  }

  return sub_1B06E5468(a1, a2) && static Environment.AppState.__derived_enum_equals(_:_:)(v4 & 1, ((a2 & 0xFFFFFFFFFFuLL) >> 32) & 1);
}

uint64_t sub_1B06E6980(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFF00000000) != 0x200000000)
  {
    sub_1B0E46C48();
    sub_1B06FF304();
    sub_1B0E46C48();
    sub_1B070E084();
  }

  return sub_1B0E46C48();
}

unint64_t sub_1B06E6BB8(char a1)
{
  v6 = *v1 | (*(v1 + 4) << 32);
  v7 = ((v6 & 0xFFFFFFFFFFLL) >> 38) & 3;
  if ((((v6 & 0xFFFFFFFFFFLL) >> 38) & 3) != 0)
  {
    if (v7 == 1 || v7 == 2)
    {
      v4 = 0x200000000;
    }

    else
    {
      v4 = 0x200000000;
    }
  }

  else if (a1 == 2)
  {
    v2 = sub_1B06E5308(*v1);
    *v5 = v2;
    *(v5 + 4) = (v2 | ((BYTE4(v6) & 1) << 32) | 0x4000000000) >> 32;
    v4 = 0x200000000;
  }

  else
  {
    v8 = sub_1B06E5308(*v1);
    *v5 = v8;
    *(v5 + 4) = (v8 | ((BYTE4(v6) & 1) << 32) | 0xFFFFFF8000000000) >> 32;
    v4 = v8 | ((BYTE4(v6) & 1) << 32);
  }

  return v4 & 0xFFFFFFFFFFLL;
}

BOOL sub_1B06E6D74(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1)
    {
      return (a2 & 0x100000000) != 0 && a2;
    }

    return (a2 & 0x100000000) != 0 && !a2;
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return sub_1B06E5468(a1, a2);
  }
}

uint64_t sub_1B06E6ECC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0)
  {
    sub_1B0E46C48();
    sub_1B06FF304();
  }

  return sub_1B0E46C48();
}

uint64_t sub_1B06E706C()
{
  LODWORD(v2) = *v0;
  BYTE4(v2) = *(v0 + 4) & 1;
  return sub_1B06E6FF4(v2);
}

uint64_t sub_1B06E70A8(uint64_t a1)
{
  LODWORD(v3) = *v1;
  BYTE4(v3) = *(v1 + 4) & 1;
  return sub_1B06E6ECC(a1, v3);
}

BOOL sub_1B06E70E4(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = *a1;
  BYTE4(v4) = *(a1 + 4) & 1;
  LODWORD(v3) = *a2;
  BYTE4(v3) = *(a2 + 4) & 1;
  return sub_1B06E6D74(v4, v3);
}

uint64_t sub_1B06E7208(unsigned int a1, char a2)
{
  v9 = *v2 | (*(v2 + 4) << 32);
  v10 = ((v9 & 0xFFFFFFFFFFLL) >> 38) & 3;
  if ((((v9 & 0xFFFFFFFFFFLL) >> 38) & 3) != 0)
  {
    if (v10 == 1)
    {
      v5 = (a2 & 1) != 0;
      v6 = 1;
    }

    else if (v10 == 2)
    {
      if (a2)
      {
        if (sub_1B06E5468(a1, *v2))
        {
          v3 = sub_1B06E5308(a1);
          *v8 = v3;
          *(v8 + 4) = (v3 | ((BYTE4(v9) & 1) << 32) | 0x4000000000) >> 32;
        }

        v5 = 1;
        v6 = 1;
      }

      else if (sub_1B06E5468(a1, *v2))
      {
        v11 = sub_1B06E5308(a1);
        *v8 = v11;
        *(v8 + 4) = BYTE4(v9) & 1;
        v5 = v11;
        v6 = 0;
      }

      else
      {
        v5 = 0;
        v6 = 1;
      }
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }
  }

  else
  {
    v5 = (a2 & 1) != 0;
    v6 = 1;
  }

  LODWORD(v12) = v5;
  BYTE4(v12) = v6 & 1;
  return v12;
}

unint64_t sub_1B06E7488(char a1, char a2)
{
  v8 = *v2 | (*(v2 + 4) << 32);
  v9 = ((v8 & 0xFFFFFFFFFFLL) >> 38) & 3;
  if ((((v8 & 0xFFFFFFFFFFLL) >> 38) & 3) != 0)
  {
    if (v9 == 1)
    {
      if (static Environment.AppState.__derived_enum_equals(_:_:)(a1 & 1, ((v8 & 0x3FFFFFFFFFLL) >> 32) & 1))
      {
        v4 = 0x200000000;
      }

      else if ((v8 & 0x3FFFFFFFFFLL & 0x100000000) != 0 && (!a2 || a2 == 1))
      {
        v10 = sub_1B06E5308(v8);
        *v7 = v10;
        *(v7 + 4) = (v10 | ((a1 & 1) << 32) | 0xFFFFFF8000000000) >> 32;
        v4 = v10 | ((a1 & 1) << 32);
      }

      else
      {
        *v7 = v8;
        *(v7 + 4) = (v8 | ((a1 & 1) << 32) | 0x4000000000) >> 32;
        v4 = 0x200000000;
      }
    }

    else
    {
      if (v9 == 2)
      {
        *v7 = *v2;
        *(v7 + 4) = (v8 | ((a1 & 1) << 32) | 0xFFFFFF8000000000) >> 32;
      }

      v4 = 0x200000000;
    }
  }

  else
  {
    *v7 = *v2;
    *(v7 + 4) = a1 & 1;
    v4 = 0x200000000;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

uint64_t sub_1B06E7704(uint64_t a1, uint64_t a2, int a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v24 = 0;
  v20 = sub_1B0E44468();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v16 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v21 = (v10 - v16);
  v28 = v4;
  v29 = v5;
  v27 = v6 & 1;
  v26 = v3;

  v17 = *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v17);
  v7 = v18;
  *v21 = v17;
  (*(v7 + 104))();
  v22 = sub_1B0E44488();
  (*(v18 + 8))(v21, v20);
  result = v22;
  if (v22)
  {

    v10[2] = &v25;
    swift_beginAccess();
    v11 = sub_1B06E61A8(v13 & 1);
    swift_endAccess();
    result = v11;
    v24 = v11 & 1;
    if ((v11 & 1) == 0)
    {
      v9 = v12;
      swift_unknownObjectRetain();
      v10[0] = v9 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
      v10[1] = &v23;
      swift_beginAccess();
      *(v10[0] + 8) = v14;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      swift_endAccess();
      return sub_1B06E7960();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06E7960()
{
  v19 = 0;
  v34 = 0;
  v18 = [objc_opt_self() defaultCenter];
  v20 = *MEMORY[0x1E69595F8];
  v0 = v20;
  v21 = v20;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v16 = 0;
  v11 = 0;
  v9 = *(v17 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue);
  v1 = v9;
  v7 = 7;
  v8 = swift_allocObject();
  v6 = v8 + 16;

  swift_weakInit();

  v2 = v9;

  v3 = swift_allocObject();
  v4 = v8;
  *(v3 + 16) = v9;
  *(v3 + 24) = v4;
  v28 = sub_1B06FF6E4;
  v29 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1B06D8164;
  v27 = &block_descriptor_1;
  v10 = _Block_copy(&aBlock);

  v12 = 0;
  v14 = [v18 addObserverForName:v21 object:v11 queue:? usingBlock:?];
  _Block_release(v10);
  swift_unknownObjectRelease();

  v13 = (v17 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken);
  v15 = &v22;
  swift_beginAccess();
  *v13 = v14;
  swift_unknownObjectRelease();
  return swift_endAccess();
}

uint64_t sub_1B06E7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v19 = a3;
  v25 = sub_1B070E528;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v27 = 0;
  v31 = sub_1B0E44238();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v30 = &v12 - v13;
  v35 = sub_1B0E44288();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v14 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v34 = &v12 - v14;
  v24 = sub_1B0E42A08();
  v20 = *(v24 - 8);
  v21 = v24 - 8;
  v17 = v20;
  v18 = *(v20 + 64);
  v15 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v12 - v15;
  v46 = v4;
  v45 = a2;
  v44 = v5 + 16;

  (*(v20 + 16))(v23, v16, v24);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v6 = swift_allocObject();
  v7 = v20;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v26 = v6;
  *(v6 + 16) = v19;
  (*(v7 + 32))(v6 + v8, v9, v10);
  v42 = v25;
  v43 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = 0;
  v40 = sub_1B038C908;
  v41 = &block_descriptor_2407;
  v36 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v27, v34, v30, v36);
  (*(v28 + 8))(v30, v31);
  (*(v32 + 8))(v34, v35);
  _Block_release(v36);
}

uint64_t sub_1B06E80A4(uint64_t a1, uint64_t a2)
{
  v4[5] = a1 + 16;
  v4[4] = a2;
  swift_beginAccess();
  v4[0] = swift_weakLoadStrong();
  if (v4[0])
  {

    sub_1B0391AD4(v4);
    swift_endAccess();
    sub_1B06E8164(a2);
  }

  else
  {
    sub_1B0391AD4(v4);
    return swift_endAccess();
  }
}

uint64_t sub_1B06E8164(uint64_t a1)
{
  v434 = a1;
  v350 = sub_1B039BBE8;
  v351 = sub_1B0394C30;
  v352 = sub_1B0394C24;
  v353 = sub_1B039BA2C;
  v354 = sub_1B039BA88;
  v355 = sub_1B039BB94;
  v356 = sub_1B0394C24;
  v357 = sub_1B039BBA0;
  v358 = sub_1B039BC08;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0399178;
  v362 = sub_1B0398F5C;
  v363 = sub_1B0398F5C;
  v364 = sub_1B039BA94;
  v365 = sub_1B0398F5C;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0399178;
  v368 = sub_1B0398F5C;
  v369 = sub_1B0398F5C;
  v370 = sub_1B03991EC;
  v371 = sub_1B039BBE8;
  v372 = sub_1B0394C24;
  v373 = sub_1B039BA2C;
  v374 = sub_1B039BA88;
  v375 = sub_1B0394C24;
  v376 = sub_1B039BBA0;
  v377 = sub_1B039BC08;
  v378 = sub_1B070B278;
  v379 = sub_1B039BC08;
  v380 = sub_1B0398F5C;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0399178;
  v383 = sub_1B0398F5C;
  v384 = sub_1B0398F5C;
  v385 = sub_1B039BA94;
  v386 = sub_1B0398F5C;
  v387 = sub_1B0398F5C;
  v388 = sub_1B0399178;
  v389 = sub_1B0398F5C;
  v390 = sub_1B0398F5C;
  v391 = sub_1B03991EC;
  v392 = sub_1B0398F5C;
  v393 = sub_1B0398F5C;
  v394 = sub_1B03991EC;
  v395 = sub_1B039BBE8;
  v396 = sub_1B0394C24;
  v397 = sub_1B039BA2C;
  v398 = sub_1B039BA88;
  v399 = sub_1B0394C24;
  v400 = sub_1B039BBA0;
  v401 = sub_1B039BC08;
  v402 = sub_1B0398F5C;
  v403 = sub_1B0398F5C;
  v404 = sub_1B0399178;
  v405 = sub_1B0398F5C;
  v406 = sub_1B0398F5C;
  v407 = sub_1B039BA94;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0399178;
  v411 = sub_1B0398F5C;
  v412 = sub_1B0398F5C;
  v413 = sub_1B03991EC;
  v471 = 0;
  v470 = 0;
  v469 = 0;
  v414 = 0;
  v458 = 0;
  v459 = 0;
  v457 = 0;
  v424 = 0;
  v415 = sub_1B0E439A8();
  v416 = *(v415 - 8);
  v417 = v415 - 8;
  v418 = (*(v416 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v419 = v172 - v418;
  v420 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v421 = v172 - v420;
  v422 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v423 = v172 - v422;
  v425 = _s6LoggerVMa(v6);
  v426 = (*(*(v425 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v424);
  v427 = v172 - v426;
  v428 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v429 = v172 - v428;
  v430 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v431 = v172 - v430;
  v432 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v433 = v172 - v432;
  v471 = v172 - v432;
  v439 = sub_1B0E44468();
  v437 = *(v439 - 8);
  v438 = v439 - 8;
  v435 = (*(v437 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v434);
  v440 = (v172 - v435);
  v470 = v13;
  v469 = v1;

  v436 = *(v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v436);
  v14 = v437;
  *v440 = v436;
  (*(v14 + 104))();
  v441 = sub_1B0E44488();
  (*(v437 + 8))(v440, v439);
  result = v441;
  if ((v441 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_1B0394784(v349 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v433);
  v345 = sub_1B06ECF28();
  v346 = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v347 = *(v349 + 16);
  MEMORY[0x1E69E5928](v347);
  v348 = [v347 identifier];
  if (v348)
  {
    v344 = v348;
    v341 = v348;
    *&v342 = sub_1B0E44AD8();
    *(&v342 + 1) = v17;
    MEMORY[0x1E69E5920](v341);
    v343 = v342;
  }

  else
  {
    v343 = 0uLL;
  }

  v340 = v343;
  MEMORY[0x1E69E5920](v347);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v467[0] = v345;
  v467[1] = v346;
  v468 = v340;
  if (v346)
  {
    sub_1B070B280(v467, &v444);
    if (*(&v468 + 1))
    {
      v337 = &v443;
      v443 = v444;
      v336 = &v442;
      v442 = v468;
      v338 = MEMORY[0x1B2726DE0](v444, *(&v444 + 1), v468, *(&v468 + 1));
      sub_1B03B1198(v336);
      sub_1B03B1198(v337);
      sub_1B03B1198(v467);
      v339 = v338;
      goto LABEL_11;
    }

    sub_1B03B1198(&v444);
    goto LABEL_13;
  }

  if (*(&v468 + 1))
  {
LABEL_13:
    sub_1B06FF6F0(v467);
    v339 = 0;
    goto LABEL_11;
  }

  sub_1B03B1198(v467);
  v339 = 1;
LABEL_11:
  v335 = v339;

  if (v335)
  {
    v332 = &v461;
    swift_beginAccess();
    v460 = sub_1B06E65DC();
    v333 = v460;
    v334 = BYTE4(v460);
    swift_endAccess();
    v458 = v333;
    v459 = v334 & 1;
    if (v334)
    {
      (*(v416 + 16))(v423, v433, v415);
      sub_1B0394784(v433, v431);
      sub_1B0394784(v431, v429);
      sub_1B03F4FD0(v431, v427);
      v18 = (v429 + *(v425 + 20));
      v300 = *v18;
      v301 = *(v18 + 1);
      sub_1B039480C(v429);
      v299 = 24;
      v311 = 7;
      v19 = swift_allocObject();
      v20 = v301;
      v304 = v19;
      *(v19 + 16) = v300;
      *(v19 + 20) = v20;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v21 = swift_allocObject();
      v22 = v301;
      v302 = v21;
      *(v21 + 16) = v300;
      *(v21 + 20) = v22;

      v310 = 32;
      v23 = swift_allocObject();
      v24 = v302;
      v312 = v23;
      *(v23 + 16) = v395;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v427);
      v329 = sub_1B0E43988();
      v330 = sub_1B0E45908();
      v308 = 17;
      v314 = swift_allocObject();
      v306 = 16;
      *(v314 + 16) = 16;
      v315 = swift_allocObject();
      v309 = 4;
      *(v315 + 16) = 4;
      v25 = swift_allocObject();
      v303 = v25;
      *(v25 + 16) = v351;
      *(v25 + 24) = 0;
      v26 = swift_allocObject();
      v27 = v303;
      v316 = v26;
      *(v26 + 16) = v396;
      *(v26 + 24) = v27;
      v317 = swift_allocObject();
      *(v317 + 16) = 0;
      v318 = swift_allocObject();
      *(v318 + 16) = 1;
      v28 = swift_allocObject();
      v29 = v304;
      v305 = v28;
      *(v28 + 16) = v397;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v305;
      v319 = v30;
      *(v30 + 16) = v398;
      *(v30 + 24) = v31;
      v320 = swift_allocObject();
      *(v320 + 16) = v306;
      v321 = swift_allocObject();
      *(v321 + 16) = v309;
      v32 = swift_allocObject();
      v307 = v32;
      *(v32 + 16) = v355;
      *(v32 + 24) = 0;
      v33 = swift_allocObject();
      v34 = v307;
      v322 = v33;
      *(v33 + 16) = v399;
      *(v33 + 24) = v34;
      v323 = swift_allocObject();
      *(v323 + 16) = 0;
      v324 = swift_allocObject();
      *(v324 + 16) = v309;
      v35 = swift_allocObject();
      v36 = v312;
      v313 = v35;
      *(v35 + 16) = v400;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v313;
      v326 = v37;
      *(v37 + 16) = v401;
      *(v37 + 24) = v38;
      v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v325 = sub_1B0E46A48();
      v327 = v39;

      v40 = v314;
      v41 = v327;
      *v327 = v402;
      v41[1] = v40;

      v42 = v315;
      v43 = v327;
      v327[2] = v403;
      v43[3] = v42;

      v44 = v316;
      v45 = v327;
      v327[4] = v404;
      v45[5] = v44;

      v46 = v317;
      v47 = v327;
      v327[6] = v405;
      v47[7] = v46;

      v48 = v318;
      v49 = v327;
      v327[8] = v406;
      v49[9] = v48;

      v50 = v319;
      v51 = v327;
      v327[10] = v407;
      v51[11] = v50;

      v52 = v320;
      v53 = v327;
      v327[12] = v408;
      v53[13] = v52;

      v54 = v321;
      v55 = v327;
      v327[14] = v409;
      v55[15] = v54;

      v56 = v322;
      v57 = v327;
      v327[16] = v410;
      v57[17] = v56;

      v58 = v323;
      v59 = v327;
      v327[18] = v411;
      v59[19] = v58;

      v60 = v324;
      v61 = v327;
      v327[20] = v412;
      v61[21] = v60;

      v62 = v326;
      v63 = v327;
      v327[22] = v413;
      v63[23] = v62;
      sub_1B0394964();

      if (os_log_type_enabled(v329, v330))
      {
        v64 = v414;
        v292 = sub_1B0E45D78();
        v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v291 = 0;
        v293 = sub_1B03949A8(0, v290, v290);
        v294 = sub_1B03949A8(v291, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v295 = &v449;
        v449 = v292;
        v296 = &v448;
        v448 = v293;
        v297 = &v447;
        v447 = v294;
        sub_1B0394A48(0, &v449);
        sub_1B0394A48(4, v295);
        v445 = v402;
        v446 = v314;
        sub_1B03949FC(&v445, v295, v296, v297);
        v298 = v64;
        if (v64)
        {

          __break(1u);
        }

        else
        {
          v445 = v403;
          v446 = v315;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v289 = 0;
          v445 = v404;
          v446 = v316;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v288 = 0;
          v445 = v405;
          v446 = v317;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v287 = 0;
          v445 = v406;
          v446 = v318;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v286 = 0;
          v445 = v407;
          v446 = v319;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v285 = 0;
          v445 = v408;
          v446 = v320;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v284 = 0;
          v445 = v409;
          v446 = v321;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v283 = 0;
          v445 = v410;
          v446 = v322;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v282 = 0;
          v445 = v411;
          v446 = v323;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v281 = 0;
          v445 = v412;
          v446 = v324;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          v280 = 0;
          v445 = v413;
          v446 = v326;
          sub_1B03949FC(&v445, &v449, &v448, &v447);
          _os_log_impl(&dword_1B0389000, v329, v330, "[%.*hhx-%.*X] Accounts: Ignoring credentials did change.", v292, 0x17u);
          v279 = 0;
          sub_1B03998A8(v293, 0, v290);
          sub_1B03998A8(v294, v279, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v329);
      (*(v416 + 8))(v423, v415);
    }

    else
    {
      v331 = v333;
      v245 = v333;
      v457 = v333;
      (*(v416 + 16))(v421, v433, v415);
      sub_1B0394784(v433, v431);
      sub_1B0394784(v431, v429);
      sub_1B03F4FD0(v431, v427);
      v65 = (v429 + *(v425 + 20));
      v242 = *v65;
      v243 = *(v65 + 1);
      sub_1B039480C(v429);
      v241 = 24;
      v256 = 7;
      v66 = swift_allocObject();
      v67 = v243;
      v247 = v66;
      *(v66 + 16) = v242;
      *(v66 + 20) = v67;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v68 = swift_allocObject();
      v69 = v243;
      v244 = v68;
      *(v68 + 16) = v242;
      *(v68 + 20) = v69;

      v255 = 32;
      v70 = swift_allocObject();
      v71 = v244;
      v251 = v70;
      *(v70 + 16) = v371;
      *(v70 + 24) = v71;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v427);
      v257 = swift_allocObject();
      *(v257 + 16) = v245;
      v277 = sub_1B0E43988();
      v278 = sub_1B0E45908();
      v253 = 17;
      v259 = swift_allocObject();
      v249 = 16;
      *(v259 + 16) = 16;
      v260 = swift_allocObject();
      v254 = 4;
      *(v260 + 16) = 4;
      v72 = swift_allocObject();
      v246 = v72;
      *(v72 + 16) = v351;
      *(v72 + 24) = 0;
      v73 = swift_allocObject();
      v74 = v246;
      v261 = v73;
      *(v73 + 16) = v372;
      *(v73 + 24) = v74;
      v262 = swift_allocObject();
      *(v262 + 16) = 0;
      v263 = swift_allocObject();
      *(v263 + 16) = 1;
      v75 = swift_allocObject();
      v76 = v247;
      v248 = v75;
      *(v75 + 16) = v373;
      *(v75 + 24) = v76;
      v77 = swift_allocObject();
      v78 = v248;
      v264 = v77;
      *(v77 + 16) = v374;
      *(v77 + 24) = v78;
      v265 = swift_allocObject();
      *(v265 + 16) = v249;
      v266 = swift_allocObject();
      *(v266 + 16) = v254;
      v79 = swift_allocObject();
      v250 = v79;
      *(v79 + 16) = v355;
      *(v79 + 24) = 0;
      v80 = swift_allocObject();
      v81 = v250;
      v267 = v80;
      *(v80 + 16) = v375;
      *(v80 + 24) = v81;
      v268 = swift_allocObject();
      *(v268 + 16) = 0;
      v269 = swift_allocObject();
      *(v269 + 16) = v254;
      v82 = swift_allocObject();
      v83 = v251;
      v252 = v82;
      *(v82 + 16) = v376;
      *(v82 + 24) = v83;
      v84 = swift_allocObject();
      v85 = v252;
      v270 = v84;
      *(v84 + 16) = v377;
      *(v84 + 24) = v85;
      v271 = swift_allocObject();
      *(v271 + 16) = 0;
      v272 = swift_allocObject();
      *(v272 + 16) = v254;
      v86 = swift_allocObject();
      v87 = v257;
      v258 = v86;
      *(v86 + 16) = v378;
      *(v86 + 24) = v87;
      v88 = swift_allocObject();
      v89 = v258;
      v274 = v88;
      *(v88 + 16) = v379;
      *(v88 + 24) = v89;
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v273 = sub_1B0E46A48();
      v275 = v90;

      v91 = v259;
      v92 = v275;
      *v275 = v380;
      v92[1] = v91;

      v93 = v260;
      v94 = v275;
      v275[2] = v381;
      v94[3] = v93;

      v95 = v261;
      v96 = v275;
      v275[4] = v382;
      v96[5] = v95;

      v97 = v262;
      v98 = v275;
      v275[6] = v383;
      v98[7] = v97;

      v99 = v263;
      v100 = v275;
      v275[8] = v384;
      v100[9] = v99;

      v101 = v264;
      v102 = v275;
      v275[10] = v385;
      v102[11] = v101;

      v103 = v265;
      v104 = v275;
      v275[12] = v386;
      v104[13] = v103;

      v105 = v266;
      v106 = v275;
      v275[14] = v387;
      v106[15] = v105;

      v107 = v267;
      v108 = v275;
      v275[16] = v388;
      v108[17] = v107;

      v109 = v268;
      v110 = v275;
      v275[18] = v389;
      v110[19] = v109;

      v111 = v269;
      v112 = v275;
      v275[20] = v390;
      v112[21] = v111;

      v113 = v270;
      v114 = v275;
      v275[22] = v391;
      v114[23] = v113;

      v115 = v271;
      v116 = v275;
      v275[24] = v392;
      v116[25] = v115;

      v117 = v272;
      v118 = v275;
      v275[26] = v393;
      v118[27] = v117;

      v119 = v274;
      v120 = v275;
      v275[28] = v394;
      v120[29] = v119;
      sub_1B0394964();

      if (os_log_type_enabled(v277, v278))
      {
        v121 = v414;
        v234 = sub_1B0E45D78();
        v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v233 = 0;
        v235 = sub_1B03949A8(0, v232, v232);
        v236 = sub_1B03949A8(v233, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v237 = &v454;
        v454 = v234;
        v238 = &v453;
        v453 = v235;
        v239 = &v452;
        v452 = v236;
        sub_1B0394A48(0, &v454);
        sub_1B0394A48(5, v237);
        v450 = v380;
        v451 = v259;
        sub_1B03949FC(&v450, v237, v238, v239);
        v240 = v121;
        if (v121)
        {

          __break(1u);
        }

        else
        {
          v450 = v381;
          v451 = v260;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v231 = 0;
          v450 = v382;
          v451 = v261;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v230 = 0;
          v450 = v383;
          v451 = v262;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v229 = 0;
          v450 = v384;
          v451 = v263;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v228 = 0;
          v450 = v385;
          v451 = v264;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v227 = 0;
          v450 = v386;
          v451 = v265;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v226 = 0;
          v450 = v387;
          v451 = v266;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v225 = 0;
          v450 = v388;
          v451 = v267;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v224 = 0;
          v450 = v389;
          v451 = v268;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v223 = 0;
          v450 = v390;
          v451 = v269;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v222 = 0;
          v450 = v391;
          v451 = v270;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v221 = 0;
          v450 = v392;
          v451 = v271;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v220 = 0;
          v450 = v393;
          v451 = v272;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          v219 = 0;
          v450 = v394;
          v451 = v274;
          sub_1B03949FC(&v450, &v454, &v453, &v452);
          _os_log_impl(&dword_1B0389000, v277, v278, "[%.*hhx-%.*X] Accounts: Credentials did change (%u).", v234, 0x1Du);
          v218 = 0;
          sub_1B03998A8(v235, 0, v232);
          sub_1B03998A8(v236, v218, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v277);
      (*(v416 + 8))(v421, v415);
      v217 = v349 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v123 = *(v217 + 8);
      v455 = Strong;
      v456 = v123;
      if (Strong)
      {
        v214 = &v455;
        v216 = v455;
        v215 = v456;
        swift_unknownObjectRetain();
        sub_1B03FD360(v214);
        swift_endAccess();
        ObjectType = swift_getObjectType();
        (*(v215 + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1B03FD360(&v455);
        swift_endAccess();
      }
    }

    return sub_1B039480C(v433);
  }

  else
  {
    (*(v416 + 16))(v419, v433, v415);
    sub_1B0394784(v433, v431);
    sub_1B0394784(v431, v429);
    sub_1B03F4FD0(v431, v427);
    v125 = (v429 + *(v425 + 20));
    v183 = *v125;
    v184 = *(v125 + 1);
    sub_1B039480C(v429);
    v182 = 24;
    v194 = 7;
    v126 = swift_allocObject();
    v127 = v184;
    v187 = v126;
    *(v126 + 16) = v183;
    *(v126 + 20) = v127;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v128 = swift_allocObject();
    v129 = v184;
    v185 = v128;
    *(v128 + 16) = v183;
    *(v128 + 20) = v129;

    v193 = 32;
    v130 = swift_allocObject();
    v131 = v185;
    v195 = v130;
    *(v130 + 16) = v350;
    *(v130 + 24) = v131;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v427);
    v212 = sub_1B0E43988();
    v213 = sub_1B0E458D8();
    v191 = 17;
    v197 = swift_allocObject();
    v189 = 16;
    *(v197 + 16) = 16;
    v198 = swift_allocObject();
    v192 = 4;
    *(v198 + 16) = 4;
    v132 = swift_allocObject();
    v186 = v132;
    *(v132 + 16) = v351;
    *(v132 + 24) = 0;
    v133 = swift_allocObject();
    v134 = v186;
    v199 = v133;
    *(v133 + 16) = v352;
    *(v133 + 24) = v134;
    v200 = swift_allocObject();
    *(v200 + 16) = 0;
    v201 = swift_allocObject();
    *(v201 + 16) = 1;
    v135 = swift_allocObject();
    v136 = v187;
    v188 = v135;
    *(v135 + 16) = v353;
    *(v135 + 24) = v136;
    v137 = swift_allocObject();
    v138 = v188;
    v202 = v137;
    *(v137 + 16) = v354;
    *(v137 + 24) = v138;
    v203 = swift_allocObject();
    *(v203 + 16) = v189;
    v204 = swift_allocObject();
    *(v204 + 16) = v192;
    v139 = swift_allocObject();
    v190 = v139;
    *(v139 + 16) = v355;
    *(v139 + 24) = 0;
    v140 = swift_allocObject();
    v141 = v190;
    v205 = v140;
    *(v140 + 16) = v356;
    *(v140 + 24) = v141;
    v206 = swift_allocObject();
    *(v206 + 16) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = v192;
    v142 = swift_allocObject();
    v143 = v195;
    v196 = v142;
    *(v142 + 16) = v357;
    *(v142 + 24) = v143;
    v144 = swift_allocObject();
    v145 = v196;
    v209 = v144;
    *(v144 + 16) = v358;
    *(v144 + 24) = v145;
    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v208 = sub_1B0E46A48();
    v210 = v146;

    v147 = v197;
    v148 = v210;
    *v210 = v359;
    v148[1] = v147;

    v149 = v198;
    v150 = v210;
    v210[2] = v360;
    v150[3] = v149;

    v151 = v199;
    v152 = v210;
    v210[4] = v361;
    v152[5] = v151;

    v153 = v200;
    v154 = v210;
    v210[6] = v362;
    v154[7] = v153;

    v155 = v201;
    v156 = v210;
    v210[8] = v363;
    v156[9] = v155;

    v157 = v202;
    v158 = v210;
    v210[10] = v364;
    v158[11] = v157;

    v159 = v203;
    v160 = v210;
    v210[12] = v365;
    v160[13] = v159;

    v161 = v204;
    v162 = v210;
    v210[14] = v366;
    v162[15] = v161;

    v163 = v205;
    v164 = v210;
    v210[16] = v367;
    v164[17] = v163;

    v165 = v206;
    v166 = v210;
    v210[18] = v368;
    v166[19] = v165;

    v167 = v207;
    v168 = v210;
    v210[20] = v369;
    v168[21] = v167;

    v169 = v209;
    v170 = v210;
    v210[22] = v370;
    v170[23] = v169;
    sub_1B0394964();

    if (os_log_type_enabled(v212, v213))
    {
      v171 = v414;
      v175 = sub_1B0E45D78();
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v174 = 0;
      v176 = sub_1B03949A8(0, v173, v173);
      v177 = sub_1B03949A8(v174, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v178 = &v466;
      v466 = v175;
      v179 = &v465;
      v465 = v176;
      v180 = &v464;
      v464 = v177;
      sub_1B0394A48(0, &v466);
      sub_1B0394A48(4, v178);
      v462 = v359;
      v463 = v197;
      sub_1B03949FC(&v462, v178, v179, v180);
      v181 = v171;
      if (v171)
      {

        __break(1u);
      }

      else
      {
        v462 = v360;
        v463 = v198;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[10] = 0;
        v462 = v361;
        v463 = v199;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[9] = 0;
        v462 = v362;
        v463 = v200;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[8] = 0;
        v462 = v363;
        v463 = v201;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[7] = 0;
        v462 = v364;
        v463 = v202;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[6] = 0;
        v462 = v365;
        v463 = v203;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[5] = 0;
        v462 = v366;
        v463 = v204;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[4] = 0;
        v462 = v367;
        v463 = v205;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[3] = 0;
        v462 = v368;
        v463 = v206;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[2] = 0;
        v462 = v369;
        v463 = v207;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        v172[1] = 0;
        v462 = v370;
        v463 = v209;
        sub_1B03949FC(&v462, &v466, &v465, &v464);
        _os_log_impl(&dword_1B0389000, v212, v213, "[%.*hhx-%.*X] Accounts: Credentials did change for different account.", v175, 0x17u);
        v172[0] = 0;
        sub_1B03998A8(v176, 0, v173);
        sub_1B03998A8(v177, v172[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v212);
    (*(v416 + 8))(v419, v415);
    return sub_1B039480C(v433);
  }
}

uint64_t sub_1B06EAFDC(unsigned int a1)
{
  v181 = a1;
  v139 = sub_1B039BBE8;
  v140 = sub_1B0394C30;
  v141 = sub_1B0394C24;
  v142 = sub_1B039BA2C;
  v143 = sub_1B039BA88;
  v144 = sub_1B039BB94;
  v145 = sub_1B0394C24;
  v146 = sub_1B039BBA0;
  v147 = sub_1B039BC08;
  v148 = sub_1B070B278;
  v149 = sub_1B039BC08;
  v150 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0399178;
  v153 = sub_1B0398F5C;
  v154 = sub_1B0398F5C;
  v155 = sub_1B039BA94;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v158 = sub_1B0399178;
  v159 = sub_1B0398F5C;
  v160 = sub_1B0398F5C;
  v161 = sub_1B03991EC;
  v162 = sub_1B0398F5C;
  v163 = sub_1B0398F5C;
  v164 = sub_1B03991EC;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v165 = 0;
  v171 = 0;
  v166 = sub_1B0E439A8();
  v167 = *(v166 - 8);
  v168 = v166 - 8;
  v169 = (*(v167 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v170 = &v69 - v169;
  v172 = _s6LoggerVMa(v2);
  v173 = (*(*(v172 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v69 - v173;
  v175 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v176 = &v69 - v175;
  v177 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v178 = &v69 - v177;
  v179 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v69 - v179;
  v200 = &v69 - v179;
  v186 = sub_1B0E44468();
  v184 = *(v186 - 8);
  v185 = v186 - 8;
  v182 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v181);
  v187 = (&v69 - v182);
  v199 = v9 & 1;
  v198 = v1;

  v183 = *(v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v183);
  v10 = v184;
  *v187 = v183;
  (*(v10 + 104))();
  v188 = sub_1B0E44488();
  (*(v184 + 8))(v187, v186);
  result = v188;
  if (v188)
  {

    sub_1B0394784(v138 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v180);
    v134 = *(v138 + 16);
    MEMORY[0x1E69E5928](v134);
    v135 = sub_1B06EC92C();
    MEMORY[0x1E69E5920](v134);
    v136 = v197;
    swift_beginAccess();
    v137 = sub_1B06E7488(v181 & 1, v135);
    swift_endAccess();
    LODWORD(v196) = v137;
    BYTE4(v196) = BYTE4(v137);
    if ((v137 & 0xFF00000000) != 0x200000000)
    {
      v133 = v137 & 0xFFFFFFFFFFLL;
      v93 = (v137 & 0xFFFFFFFFFFLL) >> 32;
      v98 = v137;
      v195 = v137;
      v100 = 1;
      v194 = v93 & 1;
      (*(v167 + 16))(v170, v180, v166);
      sub_1B0394784(v180, v178);
      sub_1B0394784(v178, v176);
      sub_1B03F4FD0(v178, v174);
      v12 = (v176 + *(v172 + 20));
      v95 = *v12;
      v96 = *(v12 + 1);
      sub_1B039480C(v176);
      v94 = 24;
      v110 = 7;
      v13 = swift_allocObject();
      v14 = v96;
      v101 = v13;
      *(v13 + 16) = v95;
      *(v13 + 20) = v14;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v15 = swift_allocObject();
      v16 = v96;
      v97 = v15;
      *(v15 + 16) = v95;
      *(v15 + 20) = v16;

      v109 = 32;
      v17 = swift_allocObject();
      v18 = v97;
      v105 = v17;
      *(v17 + 16) = v139;
      *(v17 + 24) = v18;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v174);
      v111 = swift_allocObject();
      *(v111 + 16) = v98;
      v131 = sub_1B0E43988();
      v132 = sub_1B0E458E8();
      v107 = 17;
      v113 = swift_allocObject();
      v103 = 16;
      *(v113 + 16) = 16;
      v114 = swift_allocObject();
      v108 = 4;
      *(v114 + 16) = 4;
      v19 = swift_allocObject();
      v99 = v19;
      *(v19 + 16) = v140;
      *(v19 + 24) = 0;
      v20 = swift_allocObject();
      v21 = v99;
      v115 = v20;
      *(v20 + 16) = v141;
      *(v20 + 24) = v21;
      v116 = swift_allocObject();
      *(v116 + 16) = 0;
      v117 = swift_allocObject();
      *(v117 + 16) = v100;
      v22 = swift_allocObject();
      v23 = v101;
      v102 = v22;
      *(v22 + 16) = v142;
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      v25 = v102;
      v118 = v24;
      *(v24 + 16) = v143;
      *(v24 + 24) = v25;
      v119 = swift_allocObject();
      *(v119 + 16) = v103;
      v120 = swift_allocObject();
      *(v120 + 16) = v108;
      v26 = swift_allocObject();
      v104 = v26;
      *(v26 + 16) = v144;
      *(v26 + 24) = 0;
      v27 = swift_allocObject();
      v28 = v104;
      v121 = v27;
      *(v27 + 16) = v145;
      *(v27 + 24) = v28;
      v122 = swift_allocObject();
      *(v122 + 16) = 0;
      v123 = swift_allocObject();
      *(v123 + 16) = v108;
      v29 = swift_allocObject();
      v30 = v105;
      v106 = v29;
      *(v29 + 16) = v146;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v106;
      v124 = v31;
      *(v31 + 16) = v147;
      *(v31 + 24) = v32;
      v125 = swift_allocObject();
      *(v125 + 16) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v108;
      v33 = swift_allocObject();
      v34 = v111;
      v112 = v33;
      *(v33 + 16) = v148;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v112;
      v128 = v35;
      *(v35 + 16) = v149;
      *(v35 + 24) = v36;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v127 = sub_1B0E46A48();
      v129 = v37;

      v38 = v113;
      v39 = v129;
      *v129 = v150;
      v39[1] = v38;

      v40 = v114;
      v41 = v129;
      v129[2] = v151;
      v41[3] = v40;

      v42 = v115;
      v43 = v129;
      v129[4] = v152;
      v43[5] = v42;

      v44 = v116;
      v45 = v129;
      v129[6] = v153;
      v45[7] = v44;

      v46 = v117;
      v47 = v129;
      v129[8] = v154;
      v47[9] = v46;

      v48 = v118;
      v49 = v129;
      v129[10] = v155;
      v49[11] = v48;

      v50 = v119;
      v51 = v129;
      v129[12] = v156;
      v51[13] = v50;

      v52 = v120;
      v53 = v129;
      v129[14] = v157;
      v53[15] = v52;

      v54 = v121;
      v55 = v129;
      v129[16] = v158;
      v55[17] = v54;

      v56 = v122;
      v57 = v129;
      v129[18] = v159;
      v57[19] = v56;

      v58 = v123;
      v59 = v129;
      v129[20] = v160;
      v59[21] = v58;

      v60 = v124;
      v61 = v129;
      v129[22] = v161;
      v61[23] = v60;

      v62 = v125;
      v63 = v129;
      v129[24] = v162;
      v63[25] = v62;

      v64 = v126;
      v65 = v129;
      v129[26] = v163;
      v65[27] = v64;

      v66 = v128;
      v67 = v129;
      v129[28] = v164;
      v67[29] = v66;
      sub_1B0394964();

      if (os_log_type_enabled(v131, v132))
      {
        v68 = v165;
        v86 = sub_1B0E45D78();
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v85 = 0;
        v87 = sub_1B03949A8(0, v84, v84);
        v88 = sub_1B03949A8(v85, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v89 = &v193;
        v193 = v86;
        v90 = &v192;
        v192 = v87;
        v91 = &v191;
        v191 = v88;
        sub_1B0394A48(0, &v193);
        sub_1B0394A48(5, v89);
        v189 = v150;
        v190 = v113;
        sub_1B03949FC(&v189, v89, v90, v91);
        v92 = v68;
        if (v68)
        {

          __break(1u);
        }

        else
        {
          v189 = v151;
          v190 = v114;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v83 = 0;
          v189 = v152;
          v190 = v115;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v82 = 0;
          v189 = v153;
          v190 = v116;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v81 = 0;
          v189 = v154;
          v190 = v117;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v80 = 0;
          v189 = v155;
          v190 = v118;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v79 = 0;
          v189 = v156;
          v190 = v119;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v78 = 0;
          v189 = v157;
          v190 = v120;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v77 = 0;
          v189 = v158;
          v190 = v121;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v76 = 0;
          v189 = v159;
          v190 = v122;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v75 = 0;
          v189 = v160;
          v190 = v123;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v74 = 0;
          v189 = v161;
          v190 = v124;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v73 = 0;
          v189 = v162;
          v190 = v125;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v72 = 0;
          v189 = v163;
          v190 = v126;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v71 = 0;
          v189 = v164;
          v190 = v128;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          _os_log_impl(&dword_1B0389000, v131, v132, "[%.*hhx-%.*X] Accounts: App visibility did change. Trying to renew (%u).", v86, 0x1Du);
          v70 = 0;
          sub_1B03998A8(v87, 0, v84);
          sub_1B03998A8(v88, v70, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v131);
      (*(v167 + 8))(v170, v166);
      sub_1B06ECC2C(v98, v93 & 1);
    }

    return sub_1B039480C(v180);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06EC92C()
{
  v26 = 0;
  v16 = sub_1B0E43108();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v3[-v19];
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v3[-v21];
  v26 = v0;
  MEMORY[0x1E69E5928](v0);
  v24 = [v23 oauth2Token];
  if (v24)
  {
    v15 = v24;
    v10 = v24;
    v11 = sub_1B0E44AD8();
    v12 = v1;
    MEMORY[0x1E69E5920](v10);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v8 = v14;
  v7 = v13;
  MEMORY[0x1E69E5920](v23);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25[0] = v7;
  v25[1] = v8;
  v9 = [v23 credentialExpiryDate];
  if (v9)
  {
    v6 = v9;
    v5 = v9;
    sub_1B0E430D8();
    (*(v17 + 32))(v22, v20, v16);
    (*(v17 + 56))(v22, 0, 1, v16);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    (*(v17 + 56))(v22, 1, 1, v16);
  }

  sub_1B06FF790();
  v4 = sub_1B06FF7A8(v7, v8, v22, v20);
  sub_1B03B1198(v25);
  return v4;
}

uint64_t sub_1B06ECC2C(int a1, char a2)
{
  v10 = *(v2 + 16);
  MEMORY[0x1E69E5928](v10);
  v9 = *(v4 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue);
  MEMORY[0x1E69E5928](v9);
  v8 = swift_allocObject();

  swift_weakInit();

  v7 = swift_allocObject();
  *(v7 + 16) = v8;
  *(v7 + 24) = a1;
  sub_1B06F2BDC(a2 & 1, v9, sub_1B070B2C0, v7);

  MEMORY[0x1E69E5920](v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1B06ECD9C()
{
  v12 = 0;
  v8 = sub_1B0E44468();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v9 = (v3 - v4);
  v12 = v0;

  v5 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v5);
  v1 = v6;
  *v9 = v5;
  (*(v1 + 104))();
  v10 = sub_1B0E44488();
  (*(v6 + 8))(v9, v8);
  result = v10;
  if (v10)
  {

    v3[1] = &v11;
    swift_beginAccess();
    sub_1B06E673C();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06ECF28()
{
  v10 = v0;
  if (sub_1B0E429F8())
  {
    v5 = *MEMORY[0x1E6959720];
    MEMORY[0x1E69E5928](*MEMORY[0x1E6959720]);
    v7[0] = sub_1B0E44AD8();
    v7[1] = v1;
    sub_1B0E467D8();
    sub_1B0E44778();

    sub_1B070B2CC(v6);
    MEMORY[0x1E69E5920](v5);
    sub_1B03B1198(v7);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v9 = 0;
  }

  if (v9)
  {
    if (swift_dynamicCast())
    {
      return v7[2];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B041C0EC(v8);
    return 0;
  }
}

uint64_t sub_1B06ED0D0()
{
  v224 = sub_1B039BBE8;
  v225 = sub_1B0394C30;
  v226 = sub_1B0394C24;
  v227 = sub_1B039BA2C;
  v228 = sub_1B039BA88;
  v229 = sub_1B039BB94;
  v230 = sub_1B0394C24;
  v231 = sub_1B039BBA0;
  v232 = sub_1B039BC08;
  v233 = sub_1B070B278;
  v234 = sub_1B039BC08;
  v235 = sub_1B0398F5C;
  v236 = sub_1B0398F5C;
  v237 = sub_1B0399178;
  v238 = sub_1B0398F5C;
  v239 = sub_1B0398F5C;
  v240 = sub_1B039BA94;
  v241 = sub_1B0398F5C;
  v242 = sub_1B0398F5C;
  v243 = sub_1B0399178;
  v244 = sub_1B0398F5C;
  v245 = sub_1B0398F5C;
  v246 = sub_1B03991EC;
  v247 = sub_1B0398F5C;
  v248 = sub_1B0398F5C;
  v249 = sub_1B03991EC;
  v250 = sub_1B039BBE8;
  v251 = sub_1B0394C24;
  v252 = sub_1B039BA2C;
  v253 = sub_1B039BA88;
  v254 = sub_1B0394C24;
  v255 = sub_1B039BBA0;
  v256 = sub_1B039BC08;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B0399178;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B039BA94;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B0399178;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0398F5C;
  v268 = sub_1B03991EC;
  v309 = 0;
  v308 = 0;
  v306 = 0;
  v305 = 0;
  v304 = 0;
  v269 = 0;
  v277 = 0;
  v270 = sub_1B0E439A8();
  v271 = *(v270 - 8);
  v272 = v270 - 8;
  v273 = (*(v271 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v274 = v116 - v273;
  v275 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v276 = v116 - v275;
  v278 = _s6LoggerVMa(v3);
  v279 = (*(*(v278 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v277);
  v280 = v116 - v279;
  v281 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v282 = v116 - v281;
  v283 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v284 = v116 - v283;
  v285 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v286 = v116 - v285;
  v309 = v116 - v285;
  v291 = sub_1B0E44468();
  v289 = *(v291 - 8);
  v290 = v291 - 8;
  v287 = (*(v289 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v291);
  v292 = (v116 - v287);
  v308 = v0;

  v288 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v288);
  v10 = v289;
  *v292 = v288;
  (*(v10 + 104))();
  v293 = sub_1B0E44488();
  (*(v289 + 8))(v292, v291);
  result = v293;
  if (v293)
  {

    sub_1B0394784(v223 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v286);
    v219 = *(v223 + 16);
    MEMORY[0x1E69E5928](v219);
    v220 = sub_1B06EC92C();
    MEMORY[0x1E69E5920](v219);
    v221 = v307;
    swift_beginAccess();
    v222 = sub_1B06E6BB8(v220);
    swift_endAccess();
    LODWORD(v306) = v222;
    BYTE4(v306) = BYTE4(v222);
    if ((v222 & 0xFF00000000) == 0x200000000)
    {
      (*(v271 + 16))(v276, v286, v270);
      sub_1B0394784(v286, v284);
      sub_1B0394784(v284, v282);
      sub_1B03F4FD0(v284, v280);
      v12 = (v282 + *(v278 + 20));
      v187 = *v12;
      v188 = *(v12 + 1);
      sub_1B039480C(v282);
      v186 = 24;
      v198 = 7;
      v13 = swift_allocObject();
      v14 = v188;
      v191 = v13;
      *(v13 + 16) = v187;
      *(v13 + 20) = v14;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v15 = swift_allocObject();
      v16 = v188;
      v189 = v15;
      *(v15 + 16) = v187;
      *(v15 + 20) = v16;

      v197 = 32;
      v17 = swift_allocObject();
      v18 = v189;
      v199 = v17;
      *(v17 + 16) = v250;
      *(v17 + 24) = v18;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v280);
      v216 = sub_1B0E43988();
      v217 = sub_1B0E45908();
      v195 = 17;
      v201 = swift_allocObject();
      v193 = 16;
      *(v201 + 16) = 16;
      v202 = swift_allocObject();
      v196 = 4;
      *(v202 + 16) = 4;
      v19 = swift_allocObject();
      v190 = v19;
      *(v19 + 16) = v225;
      *(v19 + 24) = 0;
      v20 = swift_allocObject();
      v21 = v190;
      v203 = v20;
      *(v20 + 16) = v251;
      *(v20 + 24) = v21;
      v204 = swift_allocObject();
      *(v204 + 16) = 0;
      v205 = swift_allocObject();
      *(v205 + 16) = 1;
      v22 = swift_allocObject();
      v23 = v191;
      v192 = v22;
      *(v22 + 16) = v252;
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      v25 = v192;
      v206 = v24;
      *(v24 + 16) = v253;
      *(v24 + 24) = v25;
      v207 = swift_allocObject();
      *(v207 + 16) = v193;
      v208 = swift_allocObject();
      *(v208 + 16) = v196;
      v26 = swift_allocObject();
      v194 = v26;
      *(v26 + 16) = v229;
      *(v26 + 24) = 0;
      v27 = swift_allocObject();
      v28 = v194;
      v209 = v27;
      *(v27 + 16) = v254;
      *(v27 + 24) = v28;
      v210 = swift_allocObject();
      *(v210 + 16) = 0;
      v211 = swift_allocObject();
      *(v211 + 16) = v196;
      v29 = swift_allocObject();
      v30 = v199;
      v200 = v29;
      *(v29 + 16) = v255;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v200;
      v213 = v31;
      *(v31 + 16) = v256;
      *(v31 + 24) = v32;
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v212 = sub_1B0E46A48();
      v214 = v33;

      v34 = v201;
      v35 = v214;
      *v214 = v257;
      v35[1] = v34;

      v36 = v202;
      v37 = v214;
      v214[2] = v258;
      v37[3] = v36;

      v38 = v203;
      v39 = v214;
      v214[4] = v259;
      v39[5] = v38;

      v40 = v204;
      v41 = v214;
      v214[6] = v260;
      v41[7] = v40;

      v42 = v205;
      v43 = v214;
      v214[8] = v261;
      v43[9] = v42;

      v44 = v206;
      v45 = v214;
      v214[10] = v262;
      v45[11] = v44;

      v46 = v207;
      v47 = v214;
      v214[12] = v263;
      v47[13] = v46;

      v48 = v208;
      v49 = v214;
      v214[14] = v264;
      v49[15] = v48;

      v50 = v209;
      v51 = v214;
      v214[16] = v265;
      v51[17] = v50;

      v52 = v210;
      v53 = v214;
      v214[18] = v266;
      v53[19] = v52;

      v54 = v211;
      v55 = v214;
      v214[20] = v267;
      v55[21] = v54;

      v56 = v213;
      v57 = v214;
      v214[22] = v268;
      v57[23] = v56;
      sub_1B0394964();

      if (os_log_type_enabled(v216, v217))
      {
        v58 = v269;
        v179 = sub_1B0E45D78();
        v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v178 = 0;
        v180 = sub_1B03949A8(0, v177, v177);
        v181 = sub_1B03949A8(v178, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v182 = &v298;
        v298 = v179;
        v183 = &v297;
        v297 = v180;
        v184 = &v296;
        v296 = v181;
        sub_1B0394A48(0, &v298);
        sub_1B0394A48(4, v182);
        v294 = v257;
        v295 = v201;
        sub_1B03949FC(&v294, v182, v183, v184);
        v185 = v58;
        if (v58)
        {

          __break(1u);
        }

        else
        {
          v294 = v258;
          v295 = v202;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v176 = 0;
          v294 = v259;
          v295 = v203;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v175 = 0;
          v294 = v260;
          v295 = v204;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v174 = 0;
          v294 = v261;
          v295 = v205;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v173 = 0;
          v294 = v262;
          v295 = v206;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v172 = 0;
          v294 = v263;
          v295 = v207;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v171 = 0;
          v294 = v264;
          v295 = v208;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v170 = 0;
          v294 = v265;
          v295 = v209;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v169 = 0;
          v294 = v266;
          v295 = v210;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v168 = 0;
          v294 = v267;
          v295 = v211;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          v167 = 0;
          v294 = v268;
          v295 = v213;
          sub_1B03949FC(&v294, &v298, &v297, &v296);
          _os_log_impl(&dword_1B0389000, v216, v217, "[%.*hhx-%.*X] Accounts: Ignoring credentials did become invalid.", v179, 0x17u);
          v166 = 0;
          sub_1B03998A8(v180, 0, v177);
          sub_1B03998A8(v181, v166, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v216);
      (*(v271 + 8))(v276, v270);
    }

    else
    {
      v218 = v222 & 0xFFFFFFFFFFLL;
      v126 = (v222 & 0xFFFFFFFFFFLL) >> 32;
      v131 = v222;
      v305 = v222;
      v133 = 1;
      v304 = v126 & 1;
      (*(v271 + 16))(v274, v286, v270);
      sub_1B0394784(v286, v284);
      sub_1B0394784(v284, v282);
      sub_1B03F4FD0(v284, v280);
      v59 = (v282 + *(v278 + 20));
      v128 = *v59;
      v129 = *(v59 + 1);
      sub_1B039480C(v282);
      v127 = 24;
      v143 = 7;
      v60 = swift_allocObject();
      v61 = v129;
      v134 = v60;
      *(v60 + 16) = v128;
      *(v60 + 20) = v61;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v62 = swift_allocObject();
      v63 = v129;
      v130 = v62;
      *(v62 + 16) = v128;
      *(v62 + 20) = v63;

      v142 = 32;
      v64 = swift_allocObject();
      v65 = v130;
      v138 = v64;
      *(v64 + 16) = v224;
      *(v64 + 24) = v65;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v280);
      v144 = swift_allocObject();
      *(v144 + 16) = v131;
      v164 = sub_1B0E43988();
      v165 = sub_1B0E458E8();
      v140 = 17;
      v146 = swift_allocObject();
      v136 = 16;
      *(v146 + 16) = 16;
      v147 = swift_allocObject();
      v141 = 4;
      *(v147 + 16) = 4;
      v66 = swift_allocObject();
      v132 = v66;
      *(v66 + 16) = v225;
      *(v66 + 24) = 0;
      v67 = swift_allocObject();
      v68 = v132;
      v148 = v67;
      *(v67 + 16) = v226;
      *(v67 + 24) = v68;
      v149 = swift_allocObject();
      *(v149 + 16) = 0;
      v150 = swift_allocObject();
      *(v150 + 16) = v133;
      v69 = swift_allocObject();
      v70 = v134;
      v135 = v69;
      *(v69 + 16) = v227;
      *(v69 + 24) = v70;
      v71 = swift_allocObject();
      v72 = v135;
      v151 = v71;
      *(v71 + 16) = v228;
      *(v71 + 24) = v72;
      v152 = swift_allocObject();
      *(v152 + 16) = v136;
      v153 = swift_allocObject();
      *(v153 + 16) = v141;
      v73 = swift_allocObject();
      v137 = v73;
      *(v73 + 16) = v229;
      *(v73 + 24) = 0;
      v74 = swift_allocObject();
      v75 = v137;
      v154 = v74;
      *(v74 + 16) = v230;
      *(v74 + 24) = v75;
      v155 = swift_allocObject();
      *(v155 + 16) = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = v141;
      v76 = swift_allocObject();
      v77 = v138;
      v139 = v76;
      *(v76 + 16) = v231;
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v139;
      v157 = v78;
      *(v78 + 16) = v232;
      *(v78 + 24) = v79;
      v158 = swift_allocObject();
      *(v158 + 16) = 0;
      v159 = swift_allocObject();
      *(v159 + 16) = v141;
      v80 = swift_allocObject();
      v81 = v144;
      v145 = v80;
      *(v80 + 16) = v233;
      *(v80 + 24) = v81;
      v82 = swift_allocObject();
      v83 = v145;
      v161 = v82;
      *(v82 + 16) = v234;
      *(v82 + 24) = v83;
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v160 = sub_1B0E46A48();
      v162 = v84;

      v85 = v146;
      v86 = v162;
      *v162 = v235;
      v86[1] = v85;

      v87 = v147;
      v88 = v162;
      v162[2] = v236;
      v88[3] = v87;

      v89 = v148;
      v90 = v162;
      v162[4] = v237;
      v90[5] = v89;

      v91 = v149;
      v92 = v162;
      v162[6] = v238;
      v92[7] = v91;

      v93 = v150;
      v94 = v162;
      v162[8] = v239;
      v94[9] = v93;

      v95 = v151;
      v96 = v162;
      v162[10] = v240;
      v96[11] = v95;

      v97 = v152;
      v98 = v162;
      v162[12] = v241;
      v98[13] = v97;

      v99 = v153;
      v100 = v162;
      v162[14] = v242;
      v100[15] = v99;

      v101 = v154;
      v102 = v162;
      v162[16] = v243;
      v102[17] = v101;

      v103 = v155;
      v104 = v162;
      v162[18] = v244;
      v104[19] = v103;

      v105 = v156;
      v106 = v162;
      v162[20] = v245;
      v106[21] = v105;

      v107 = v157;
      v108 = v162;
      v162[22] = v246;
      v108[23] = v107;

      v109 = v158;
      v110 = v162;
      v162[24] = v247;
      v110[25] = v109;

      v111 = v159;
      v112 = v162;
      v162[26] = v248;
      v112[27] = v111;

      v113 = v161;
      v114 = v162;
      v162[28] = v249;
      v114[29] = v113;
      sub_1B0394964();

      if (os_log_type_enabled(v164, v165))
      {
        v115 = v269;
        v119 = sub_1B0E45D78();
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v118 = 0;
        v120 = sub_1B03949A8(0, v117, v117);
        v121 = sub_1B03949A8(v118, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v122 = &v303;
        v303 = v119;
        v123 = &v302;
        v302 = v120;
        v124 = &v301;
        v301 = v121;
        sub_1B0394A48(0, &v303);
        sub_1B0394A48(5, v122);
        v299 = v235;
        v300 = v146;
        sub_1B03949FC(&v299, v122, v123, v124);
        v125 = v115;
        if (v115)
        {

          __break(1u);
        }

        else
        {
          v299 = v236;
          v300 = v147;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[13] = 0;
          v299 = v237;
          v300 = v148;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[12] = 0;
          v299 = v238;
          v300 = v149;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[11] = 0;
          v299 = v239;
          v300 = v150;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[10] = 0;
          v299 = v240;
          v300 = v151;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[9] = 0;
          v299 = v241;
          v300 = v152;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[8] = 0;
          v299 = v242;
          v300 = v153;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[7] = 0;
          v299 = v243;
          v300 = v154;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[6] = 0;
          v299 = v244;
          v300 = v155;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[5] = 0;
          v299 = v245;
          v300 = v156;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[4] = 0;
          v299 = v246;
          v300 = v157;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[3] = 0;
          v299 = v247;
          v300 = v158;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[2] = 0;
          v299 = v248;
          v300 = v159;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          v116[1] = 0;
          v299 = v249;
          v300 = v161;
          sub_1B03949FC(&v299, &v303, &v302, &v301);
          _os_log_impl(&dword_1B0389000, v164, v165, "[%.*hhx-%.*X] Accounts: Credentials did become invalid. Trying to renew (%u).", v119, 0x1Du);
          v116[0] = 0;
          sub_1B03998A8(v120, 0, v117);
          sub_1B03998A8(v121, v116[0], MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v164);
      (*(v271 + 8))(v274, v270);
      sub_1B06ECC2C(v131, v126 & 1);
    }

    return sub_1B039480C(v286);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06EFB4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3 + 16;
  v10 = a4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    v5 = sub_1B06E7144(a1);
    sub_1B06EFC38(a4, v5, a2);
  }

  else
  {
    sub_1B0391AD4(&Strong);
    return swift_endAccess();
  }
}

uint64_t sub_1B06EFC38(unsigned int a1, int a2, uint64_t a3)
{
  v447 = a1;
  v446 = a2;
  v445 = a3;
  v356 = sub_1B039BBE8;
  v357 = sub_1B0394C30;
  v358 = sub_1B0394C24;
  v359 = sub_1B039BA2C;
  v360 = sub_1B039BA88;
  v361 = sub_1B039BB94;
  v362 = sub_1B0394C24;
  v363 = sub_1B039BBA0;
  v364 = sub_1B039BC08;
  v365 = sub_1B070B278;
  v366 = sub_1B039BC08;
  v367 = sub_1B0398F5C;
  v368 = sub_1B0398F5C;
  v369 = sub_1B0399178;
  v370 = sub_1B0398F5C;
  v371 = sub_1B0398F5C;
  v372 = sub_1B039BA94;
  v373 = sub_1B0398F5C;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0399178;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0398F5C;
  v378 = sub_1B03991EC;
  v379 = sub_1B0398F5C;
  v380 = sub_1B0398F5C;
  v381 = sub_1B03991EC;
  v382 = sub_1B039BBE8;
  v383 = sub_1B0394C24;
  v384 = sub_1B039BA2C;
  v385 = sub_1B039BA88;
  v386 = sub_1B0394C24;
  v387 = sub_1B039BBA0;
  v388 = sub_1B039BC08;
  v389 = sub_1B070B2F4;
  v390 = sub_1B070B324;
  v391 = sub_1B0398F5C;
  v392 = sub_1B0398F5C;
  v393 = sub_1B0399178;
  v394 = sub_1B0398F5C;
  v395 = sub_1B0398F5C;
  v396 = sub_1B039BA94;
  v397 = sub_1B0398F5C;
  v398 = sub_1B0398F5C;
  v399 = sub_1B0399178;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0398F5C;
  v402 = sub_1B03991EC;
  v403 = sub_1B0398F5C;
  v404 = sub_1B0398F5C;
  v405 = sub_1B070B4B4;
  v406 = sub_1B039BBE8;
  v407 = sub_1B0394C24;
  v408 = sub_1B039BA2C;
  v409 = sub_1B039BA88;
  v410 = sub_1B0394C24;
  v411 = sub_1B039BBA0;
  v412 = sub_1B039BC08;
  v413 = sub_1B0398F5C;
  v414 = sub_1B0398F5C;
  v415 = sub_1B0399178;
  v416 = sub_1B0398F5C;
  v417 = sub_1B0398F5C;
  v418 = sub_1B039BA94;
  v419 = sub_1B0398F5C;
  v420 = sub_1B0398F5C;
  v421 = sub_1B0399178;
  v422 = sub_1B0398F5C;
  v423 = sub_1B0398F5C;
  v424 = sub_1B03991EC;
  v482 = 0;
  v481 = 0;
  v480 = 0;
  v479 = 0;
  v478 = 0;
  v474 = 0;
  v475 = 0;
  v425 = 0;
  v468 = 0;
  v462 = 0;
  v435 = 0;
  v426 = sub_1B0E439A8();
  v427 = *(v426 - 8);
  v428 = v426 - 8;
  v429 = (*(v427 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v430 = v184 - v429;
  v431 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v432 = v184 - v431;
  v433 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v434 = v184 - v433;
  v436 = _s6LoggerVMa(v8);
  v437 = (*(*(v436 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v435);
  v438 = v184 - v437;
  v439 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v440 = v184 - v439;
  v441 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v442 = v184 - v441;
  v443 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v444 = v184 - v443;
  v482 = v184 - v443;
  v452 = sub_1B0E44468();
  v450 = *(v452 - 8);
  v451 = v452 - 8;
  v448 = (*(v450 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v447);
  v453 = (v184 - v448);
  v481 = v15;
  v480 = v16 & 1;
  v479 = v17;
  v478 = v3;

  v449 = *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v449);
  v18 = v450;
  *v453 = v449;
  (*(v18 + 104))();
  v454 = sub_1B0E44488();
  (*(v450 + 8))(v453, v452);
  result = v454;
  if (v454)
  {

    sub_1B0394784(v355 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v444);
    v352 = &v477;
    swift_beginAccess();
    v476 = sub_1B06E7208(v447, v446 & 1);
    v353 = v476;
    v354 = BYTE4(v476);
    swift_endAccess();
    v474 = v353;
    v475 = v354 & 1;
    if (v354)
    {
      if (v353)
      {
        MEMORY[0x1E69E5928](v445);
        if (v445)
        {
          v285 = v445;
          v251 = v445;
          v468 = v445;
          (*(v427 + 16))(v432, v444, v426);
          sub_1B0394784(v444, v442);
          sub_1B0394784(v442, v440);
          sub_1B03F4FD0(v442, v438);
          v80 = (v440 + *(v436 + 20));
          v247 = *v80;
          v248 = *(v80 + 1);
          sub_1B039480C(v440);
          v250 = 24;
          v262 = 7;
          v81 = swift_allocObject();
          v82 = v248;
          v253 = v81;
          *(v81 + 16) = v247;
          *(v81 + 20) = v82;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v83 = swift_allocObject();
          v84 = v248;
          v249 = v83;
          *(v83 + 16) = v247;
          *(v83 + 20) = v84;

          v261 = 32;
          v85 = swift_allocObject();
          v86 = v249;
          v258 = v85;
          *(v85 + 16) = v382;
          *(v85 + 24) = v86;
          sub_1B0394868();
          sub_1B0394868();

          sub_1B039480C(v438);
          MEMORY[0x1E69E5928](v251);
          v263 = swift_allocObject();
          *(v263 + 16) = v251;
          v283 = sub_1B0E43988();
          v284 = sub_1B0E458E8();
          v260 = 17;
          v265 = swift_allocObject();
          v255 = 16;
          *(v265 + 16) = 16;
          v266 = swift_allocObject();
          v257 = 4;
          *(v266 + 16) = 4;
          v87 = swift_allocObject();
          v252 = v87;
          *(v87 + 16) = v357;
          *(v87 + 24) = 0;
          v88 = swift_allocObject();
          v89 = v252;
          v267 = v88;
          *(v88 + 16) = v383;
          *(v88 + 24) = v89;
          v268 = swift_allocObject();
          *(v268 + 16) = 0;
          v269 = swift_allocObject();
          *(v269 + 16) = 1;
          v90 = swift_allocObject();
          v91 = v253;
          v254 = v90;
          *(v90 + 16) = v384;
          *(v90 + 24) = v91;
          v92 = swift_allocObject();
          v93 = v254;
          v270 = v92;
          *(v92 + 16) = v385;
          *(v92 + 24) = v93;
          v271 = swift_allocObject();
          *(v271 + 16) = v255;
          v272 = swift_allocObject();
          *(v272 + 16) = v257;
          v94 = swift_allocObject();
          v256 = v94;
          *(v94 + 16) = v361;
          *(v94 + 24) = 0;
          v95 = swift_allocObject();
          v96 = v256;
          v273 = v95;
          *(v95 + 16) = v386;
          *(v95 + 24) = v96;
          v274 = swift_allocObject();
          *(v274 + 16) = 0;
          v275 = swift_allocObject();
          *(v275 + 16) = v257;
          v97 = swift_allocObject();
          v98 = v258;
          v259 = v97;
          *(v97 + 16) = v387;
          *(v97 + 24) = v98;
          v99 = swift_allocObject();
          v100 = v259;
          v276 = v99;
          *(v99 + 16) = v388;
          *(v99 + 24) = v100;
          v277 = swift_allocObject();
          *(v277 + 16) = 64;
          v278 = swift_allocObject();
          *(v278 + 16) = 8;
          v101 = swift_allocObject();
          v102 = v263;
          v264 = v101;
          *(v101 + 16) = v389;
          *(v101 + 24) = v102;
          v103 = swift_allocObject();
          v104 = v264;
          v280 = v103;
          *(v103 + 16) = v390;
          *(v103 + 24) = v104;
          v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v279 = sub_1B0E46A48();
          v281 = v105;

          v106 = v265;
          v107 = v281;
          *v281 = v391;
          v107[1] = v106;

          v108 = v266;
          v109 = v281;
          v281[2] = v392;
          v109[3] = v108;

          v110 = v267;
          v111 = v281;
          v281[4] = v393;
          v111[5] = v110;

          v112 = v268;
          v113 = v281;
          v281[6] = v394;
          v113[7] = v112;

          v114 = v269;
          v115 = v281;
          v281[8] = v395;
          v115[9] = v114;

          v116 = v270;
          v117 = v281;
          v281[10] = v396;
          v117[11] = v116;

          v118 = v271;
          v119 = v281;
          v281[12] = v397;
          v119[13] = v118;

          v120 = v272;
          v121 = v281;
          v281[14] = v398;
          v121[15] = v120;

          v122 = v273;
          v123 = v281;
          v281[16] = v399;
          v123[17] = v122;

          v124 = v274;
          v125 = v281;
          v281[18] = v400;
          v125[19] = v124;

          v126 = v275;
          v127 = v281;
          v281[20] = v401;
          v127[21] = v126;

          v128 = v276;
          v129 = v281;
          v281[22] = v402;
          v129[23] = v128;

          v130 = v277;
          v131 = v281;
          v281[24] = v403;
          v131[25] = v130;

          v132 = v278;
          v133 = v281;
          v281[26] = v404;
          v133[27] = v132;

          v134 = v280;
          v135 = v281;
          v281[28] = v405;
          v135[29] = v134;
          sub_1B0394964();

          if (os_log_type_enabled(v283, v284))
          {
            v136 = v425;
            v240 = sub_1B0E45D78();
            v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v241 = sub_1B03949A8(1, v239, v239);
            v242 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v243 = &v467;
            v467 = v240;
            v244 = &v466;
            v466 = v241;
            v245 = &v465;
            v465 = v242;
            sub_1B0394A48(2, &v467);
            sub_1B0394A48(5, v243);
            v463 = v391;
            v464 = v265;
            sub_1B03949FC(&v463, v243, v244, v245);
            v246 = v136;
            if (v136)
            {

              __break(1u);
            }

            else
            {
              v463 = v392;
              v464 = v266;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v238 = 0;
              v463 = v393;
              v464 = v267;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v237 = 0;
              v463 = v394;
              v464 = v268;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v236 = 0;
              v463 = v395;
              v464 = v269;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v235 = 0;
              v463 = v396;
              v464 = v270;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v234 = 0;
              v463 = v397;
              v464 = v271;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v233 = 0;
              v463 = v398;
              v464 = v272;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v232 = 0;
              v463 = v399;
              v464 = v273;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v231 = 0;
              v463 = v400;
              v464 = v274;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v230 = 0;
              v463 = v401;
              v464 = v275;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v229 = 0;
              v463 = v402;
              v464 = v276;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v228 = 0;
              v463 = v403;
              v464 = v277;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v227 = 0;
              v463 = v404;
              v464 = v278;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              v226 = 0;
              v463 = v405;
              v464 = v280;
              sub_1B03949FC(&v463, &v467, &v466, &v465);
              _os_log_impl(&dword_1B0389000, v283, v284, "[%.*hhx-%.*X] Accounts: Failed to renew credentials: %@", v240, 0x21u);
              sub_1B03998A8(v241, 1, v239);
              sub_1B03998A8(v242, 0, MEMORY[0x1E69E7CA0] + 8);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v283);
          (*(v427 + 8))(v432, v426);
          MEMORY[0x1E69E5920](v251);
        }

        else
        {
          (*(v427 + 16))(v430, v444, v426);
          sub_1B0394784(v444, v442);
          sub_1B0394784(v442, v440);
          sub_1B03F4FD0(v442, v438);
          v137 = (v440 + *(v436 + 20));
          v195 = *v137;
          v196 = *(v137 + 1);
          sub_1B039480C(v440);
          v194 = 24;
          v206 = 7;
          v138 = swift_allocObject();
          v139 = v196;
          v199 = v138;
          *(v138 + 16) = v195;
          *(v138 + 20) = v139;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v140 = swift_allocObject();
          v141 = v196;
          v197 = v140;
          *(v140 + 16) = v195;
          *(v140 + 20) = v141;

          v205 = 32;
          v142 = swift_allocObject();
          v143 = v197;
          v207 = v142;
          *(v142 + 16) = v406;
          *(v142 + 24) = v143;
          sub_1B0394868();
          sub_1B0394868();

          sub_1B039480C(v438);
          v224 = sub_1B0E43988();
          v225 = sub_1B0E458E8();
          v203 = 17;
          v209 = swift_allocObject();
          v201 = 16;
          *(v209 + 16) = 16;
          v210 = swift_allocObject();
          v204 = 4;
          *(v210 + 16) = 4;
          v144 = swift_allocObject();
          v198 = v144;
          *(v144 + 16) = v357;
          *(v144 + 24) = 0;
          v145 = swift_allocObject();
          v146 = v198;
          v211 = v145;
          *(v145 + 16) = v407;
          *(v145 + 24) = v146;
          v212 = swift_allocObject();
          *(v212 + 16) = 0;
          v213 = swift_allocObject();
          *(v213 + 16) = 1;
          v147 = swift_allocObject();
          v148 = v199;
          v200 = v147;
          *(v147 + 16) = v408;
          *(v147 + 24) = v148;
          v149 = swift_allocObject();
          v150 = v200;
          v214 = v149;
          *(v149 + 16) = v409;
          *(v149 + 24) = v150;
          v215 = swift_allocObject();
          *(v215 + 16) = v201;
          v216 = swift_allocObject();
          *(v216 + 16) = v204;
          v151 = swift_allocObject();
          v202 = v151;
          *(v151 + 16) = v361;
          *(v151 + 24) = 0;
          v152 = swift_allocObject();
          v153 = v202;
          v217 = v152;
          *(v152 + 16) = v410;
          *(v152 + 24) = v153;
          v218 = swift_allocObject();
          *(v218 + 16) = 0;
          v219 = swift_allocObject();
          *(v219 + 16) = v204;
          v154 = swift_allocObject();
          v155 = v207;
          v208 = v154;
          *(v154 + 16) = v411;
          *(v154 + 24) = v155;
          v156 = swift_allocObject();
          v157 = v208;
          v221 = v156;
          *(v156 + 16) = v412;
          *(v156 + 24) = v157;
          v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v220 = sub_1B0E46A48();
          v222 = v158;

          v159 = v209;
          v160 = v222;
          *v222 = v413;
          v160[1] = v159;

          v161 = v210;
          v162 = v222;
          v222[2] = v414;
          v162[3] = v161;

          v163 = v211;
          v164 = v222;
          v222[4] = v415;
          v164[5] = v163;

          v165 = v212;
          v166 = v222;
          v222[6] = v416;
          v166[7] = v165;

          v167 = v213;
          v168 = v222;
          v222[8] = v417;
          v168[9] = v167;

          v169 = v214;
          v170 = v222;
          v222[10] = v418;
          v170[11] = v169;

          v171 = v215;
          v172 = v222;
          v222[12] = v419;
          v172[13] = v171;

          v173 = v216;
          v174 = v222;
          v222[14] = v420;
          v174[15] = v173;

          v175 = v217;
          v176 = v222;
          v222[16] = v421;
          v176[17] = v175;

          v177 = v218;
          v178 = v222;
          v222[18] = v422;
          v178[19] = v177;

          v179 = v219;
          v180 = v222;
          v222[20] = v423;
          v180[21] = v179;

          v181 = v221;
          v182 = v222;
          v222[22] = v424;
          v182[23] = v181;
          sub_1B0394964();

          if (os_log_type_enabled(v224, v225))
          {
            v183 = v425;
            v187 = sub_1B0E45D78();
            v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v186 = 0;
            v188 = sub_1B03949A8(0, v185, v185);
            v189 = sub_1B03949A8(v186, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v190 = &v473;
            v473 = v187;
            v191 = &v472;
            v472 = v188;
            v192 = &v471;
            v471 = v189;
            sub_1B0394A48(0, &v473);
            sub_1B0394A48(4, v190);
            v469 = v413;
            v470 = v209;
            sub_1B03949FC(&v469, v190, v191, v192);
            v193 = v183;
            if (v183)
            {

              __break(1u);
            }

            else
            {
              v469 = v414;
              v470 = v210;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[10] = 0;
              v469 = v415;
              v470 = v211;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[9] = 0;
              v469 = v416;
              v470 = v212;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[8] = 0;
              v469 = v417;
              v470 = v213;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[7] = 0;
              v469 = v418;
              v470 = v214;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[6] = 0;
              v469 = v419;
              v470 = v215;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[5] = 0;
              v469 = v420;
              v470 = v216;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[4] = 0;
              v469 = v421;
              v470 = v217;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[3] = 0;
              v469 = v422;
              v470 = v218;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[2] = 0;
              v469 = v423;
              v470 = v219;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              v184[1] = 0;
              v469 = v424;
              v470 = v221;
              sub_1B03949FC(&v469, &v473, &v472, &v471);
              _os_log_impl(&dword_1B0389000, v224, v225, "[%.*hhx-%.*X] Accounts: Failed to renew credentials.", v187, 0x17u);
              v184[0] = 0;
              sub_1B03998A8(v188, 0, v185);
              sub_1B03998A8(v189, v184[0], MEMORY[0x1E69E7CA0] + 8);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v224);
          (*(v427 + 8))(v430, v426);
        }
      }
    }

    else
    {
      v351 = v353;
      v317 = v353;
      v462 = v353;
      (*(v427 + 16))(v434, v444, v426);
      sub_1B0394784(v444, v442);
      sub_1B0394784(v442, v440);
      sub_1B03F4FD0(v442, v438);
      v20 = (v440 + *(v436 + 20));
      v314 = *v20;
      v315 = *(v20 + 1);
      sub_1B039480C(v440);
      v313 = 24;
      v328 = 7;
      v21 = swift_allocObject();
      v22 = v315;
      v319 = v21;
      *(v21 + 16) = v314;
      *(v21 + 20) = v22;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v23 = swift_allocObject();
      v24 = v315;
      v316 = v23;
      *(v23 + 16) = v314;
      *(v23 + 20) = v24;

      v327 = 32;
      v25 = swift_allocObject();
      v26 = v316;
      v323 = v25;
      *(v25 + 16) = v356;
      *(v25 + 24) = v26;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v438);
      v329 = swift_allocObject();
      *(v329 + 16) = v317;
      v349 = sub_1B0E43988();
      v350 = sub_1B0E45908();
      v325 = 17;
      v331 = swift_allocObject();
      v321 = 16;
      *(v331 + 16) = 16;
      v332 = swift_allocObject();
      v326 = 4;
      *(v332 + 16) = 4;
      v27 = swift_allocObject();
      v318 = v27;
      *(v27 + 16) = v357;
      *(v27 + 24) = 0;
      v28 = swift_allocObject();
      v29 = v318;
      v333 = v28;
      *(v28 + 16) = v358;
      *(v28 + 24) = v29;
      v334 = swift_allocObject();
      *(v334 + 16) = 0;
      v335 = swift_allocObject();
      *(v335 + 16) = 1;
      v30 = swift_allocObject();
      v31 = v319;
      v320 = v30;
      *(v30 + 16) = v359;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v320;
      v336 = v32;
      *(v32 + 16) = v360;
      *(v32 + 24) = v33;
      v337 = swift_allocObject();
      *(v337 + 16) = v321;
      v338 = swift_allocObject();
      *(v338 + 16) = v326;
      v34 = swift_allocObject();
      v322 = v34;
      *(v34 + 16) = v361;
      *(v34 + 24) = 0;
      v35 = swift_allocObject();
      v36 = v322;
      v339 = v35;
      *(v35 + 16) = v362;
      *(v35 + 24) = v36;
      v340 = swift_allocObject();
      *(v340 + 16) = 0;
      v341 = swift_allocObject();
      *(v341 + 16) = v326;
      v37 = swift_allocObject();
      v38 = v323;
      v324 = v37;
      *(v37 + 16) = v363;
      *(v37 + 24) = v38;
      v39 = swift_allocObject();
      v40 = v324;
      v342 = v39;
      *(v39 + 16) = v364;
      *(v39 + 24) = v40;
      v343 = swift_allocObject();
      *(v343 + 16) = 0;
      v344 = swift_allocObject();
      *(v344 + 16) = v326;
      v41 = swift_allocObject();
      v42 = v329;
      v330 = v41;
      *(v41 + 16) = v365;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v330;
      v346 = v43;
      *(v43 + 16) = v366;
      *(v43 + 24) = v44;
      v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v345 = sub_1B0E46A48();
      v347 = v45;

      v46 = v331;
      v47 = v347;
      *v347 = v367;
      v47[1] = v46;

      v48 = v332;
      v49 = v347;
      v347[2] = v368;
      v49[3] = v48;

      v50 = v333;
      v51 = v347;
      v347[4] = v369;
      v51[5] = v50;

      v52 = v334;
      v53 = v347;
      v347[6] = v370;
      v53[7] = v52;

      v54 = v335;
      v55 = v347;
      v347[8] = v371;
      v55[9] = v54;

      v56 = v336;
      v57 = v347;
      v347[10] = v372;
      v57[11] = v56;

      v58 = v337;
      v59 = v347;
      v347[12] = v373;
      v59[13] = v58;

      v60 = v338;
      v61 = v347;
      v347[14] = v374;
      v61[15] = v60;

      v62 = v339;
      v63 = v347;
      v347[16] = v375;
      v63[17] = v62;

      v64 = v340;
      v65 = v347;
      v347[18] = v376;
      v65[19] = v64;

      v66 = v341;
      v67 = v347;
      v347[20] = v377;
      v67[21] = v66;

      v68 = v342;
      v69 = v347;
      v347[22] = v378;
      v69[23] = v68;

      v70 = v343;
      v71 = v347;
      v347[24] = v379;
      v71[25] = v70;

      v72 = v344;
      v73 = v347;
      v347[26] = v380;
      v73[27] = v72;

      v74 = v346;
      v75 = v347;
      v347[28] = v381;
      v75[29] = v74;
      sub_1B0394964();

      if (os_log_type_enabled(v349, v350))
      {
        v76 = v425;
        v306 = sub_1B0E45D78();
        v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v305 = 0;
        v307 = sub_1B03949A8(0, v304, v304);
        v308 = sub_1B03949A8(v305, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v309 = &v459;
        v459 = v306;
        v310 = &v458;
        v458 = v307;
        v311 = &v457;
        v457 = v308;
        sub_1B0394A48(0, &v459);
        sub_1B0394A48(5, v309);
        v455 = v367;
        v456 = v331;
        sub_1B03949FC(&v455, v309, v310, v311);
        v312 = v76;
        if (v76)
        {

          __break(1u);
        }

        else
        {
          v455 = v368;
          v456 = v332;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v303 = 0;
          v455 = v369;
          v456 = v333;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v302 = 0;
          v455 = v370;
          v456 = v334;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v301 = 0;
          v455 = v371;
          v456 = v335;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v300 = 0;
          v455 = v372;
          v456 = v336;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v299 = 0;
          v455 = v373;
          v456 = v337;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v298 = 0;
          v455 = v374;
          v456 = v338;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v297 = 0;
          v455 = v375;
          v456 = v339;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v296 = 0;
          v455 = v376;
          v456 = v340;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v295 = 0;
          v455 = v377;
          v456 = v341;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v294 = 0;
          v455 = v378;
          v456 = v342;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v293 = 0;
          v455 = v379;
          v456 = v343;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v292 = 0;
          v455 = v380;
          v456 = v344;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          v291 = 0;
          v455 = v381;
          v456 = v346;
          sub_1B03949FC(&v455, &v459, &v458, &v457);
          _os_log_impl(&dword_1B0389000, v349, v350, "[%.*hhx-%.*X] Accounts: Did renew credentials (%u).", v306, 0x1Du);
          v290 = 0;
          sub_1B03998A8(v307, 0, v304);
          sub_1B03998A8(v308, v290, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v349);
      (*(v427 + 8))(v434, v426);
      v289 = v355 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v78 = *(v289 + 8);
      v460 = Strong;
      v461 = v78;
      if (Strong)
      {
        v286 = &v460;
        v288 = v460;
        v287 = v461;
        swift_unknownObjectRetain();
        sub_1B03FD360(v286);
        swift_endAccess();
        ObjectType = swift_getObjectType();
        (*(v287 + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1B03FD360(&v460);
        swift_endAccess();
      }
    }

    return sub_1B039480C(v444);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06F2BDC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = sub_1B070B4C0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v49 = 0;
  v54 = sub_1B0E44238();
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v31 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = &v31 - v31;
  v58 = sub_1B0E44288();
  v55 = *(v58 - 8);
  v56 = v58 - 8;
  v32 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v57 = &v31 - v32;
  v36 = 1;
  v75 = v5 & 1;
  v74 = v6;
  v72 = v7;
  v73 = v8;
  v71 = v4;
  v33 = 0;
  v9 = static Environment.AppState.__derived_enum_equals(_:_:)(v5 & 1, 0);
  v35 = v9 ^ v36;
  v70 = (v9 ^ v36) & 1 & v36;
  v37 = static Environment.AppState.__derived_enum_equals(_:_:)(v34 & 1, v33);
  v69 = v37 & v36;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1940, &qword_1B0E9A0A0);
  v39 = sub_1B0E46A48();
  v38 = v10;
  v42 = *MEMORY[0x1E6959AA0];
  MEMORY[0x1E69E5928](v42);
  v11 = sub_1B0E44AD8();
  v12 = v35;
  v13 = v36;
  v15 = v14;
  v16 = v38;
  *v38 = v11;
  v16[1] = v15;
  *(v16 + 16) = v12 & v13;
  v41 = *MEMORY[0x1E6959AA8];
  MEMORY[0x1E69E5928](v41);
  v17 = sub_1B0E44AD8();
  v18 = v36;
  v19 = v37;
  v20 = v38;
  v38[3] = v17;
  v20[4] = v21;
  *(v20 + 40) = v19 & v18;
  sub_1B0394964();
  v43 = v22;
  MEMORY[0x1E69E5920](v41);
  MEMORY[0x1E69E5920](v42);
  v60 = sub_1B0E445D8();
  v68 = v60;
  v59 = *sub_1B06F338C();
  MEMORY[0x1E69E5928](v59);
  sub_1B0E44278();
  sub_1B0E44228();
  MEMORY[0x1E69E5928](v44);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v45);

  v23 = swift_allocObject();
  v24 = v45;
  v25 = v46;
  v26 = v47;
  v27 = v48;
  v28 = v23;
  v29 = v60;
  v28[2] = v44;
  v28[3] = v29;
  v28[4] = v24;
  v28[5] = v25;
  v28[6] = v26;
  v66 = v27;
  v67 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = 0;
  v64 = sub_1B038C908;
  v65 = &block_descriptor_783;
  v50 = _Block_copy(&aBlock);
  MEMORY[0x1B2727B00](v49, v57, v53);
  _Block_release(v50);

  (*(v51 + 8))(v53, v54);
  (*(v55 + 8))(v57, v58);
  MEMORY[0x1E69E5920](v59);
}

uint64_t sub_1B06F30E4()
{
  v11 = 0;
  v3 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = &v2 - v3;
  v4 = (*(*(sub_1B0E45C58() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v9 = &v2 - v4;
  v5 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v2 - v5;
  sub_1B06FF124();
  v6 = sub_1B0E44838();
  v7 = v0;
  sub_1B039B81C();
  sub_1B06F3280();
  sub_1B06F3320(v10);
  result = sub_1B0E45C68();
  qword_1EB6DC020 = result;
  return result;
}

uint64_t sub_1B06F3280()
{
  sub_1B070B188(0);
  sub_1B0E45C58();
  sub_1B06FF188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E19E0, &qword_1B0E9ABD0);
  sub_1B070E3B4();
  return sub_1B0E460A8();
}

uint64_t sub_1B06F3320@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E8098];
  v1 = sub_1B0E459C8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t *sub_1B06F338C()
{
  if (qword_1EB6DC018 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DC020;
}

uint64_t sub_1B06F33EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v20 = a4;
  v21 = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E465D8();
  v12 = sub_1B0E44598();

  MEMORY[0x1E69E5928](a3);

  v5 = swift_allocObject();
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v18 = sub_1B070E43C;
  v19 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_1B06F38E8;
  v17 = &block_descriptor_2395;
  v11 = _Block_copy(&aBlock);

  [a1 renewCredentialsWithOptions:v12 completion:v11];
  _Block_release(v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t sub_1B06F35C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v21 = a2;
  v19 = a4;
  v20 = a5;
  v22 = sub_1B070E4B0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v24 = 0;
  v29 = sub_1B0E44238();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v17 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = &v17 - v17;
  v33 = sub_1B0E44288();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v18 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v32 = &v17 - v18;
  v45 = v6;
  v44 = v7;
  v43 = a3;
  v41 = v8;
  v42 = v9;
  sub_1B0E44278();
  sub_1B0E44228();

  MEMORY[0x1E69E5928](v21);
  v10 = swift_allocObject();
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v10;
  v15 = v23;
  v14[2] = v19;
  v14[3] = v11;
  v14[4] = v15;
  v14[5] = v12;
  v39 = v13;
  v40 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = 0;
  v37 = sub_1B038C908;
  v38 = &block_descriptor_2401;
  v25 = _Block_copy(&aBlock);
  MEMORY[0x1B2727B00](v24, v32, v28);
  _Block_release(v25);

  (*(v26 + 8))(v28, v29);
  return (*(v30 + 8))(v32, v33);
}

uint64_t sub_1B06F3868(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{

  a1(a3, a4);
}

uint64_t sub_1B06F38E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  MEMORY[0x1E69E5928](a3);
  v4(a2, a3);
  MEMORY[0x1E69E5920](a3);
}

uint64_t sub_1B06F3968(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v20 = sub_1B070B53C;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v14 = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v13 - v14;
  v27 = v3;
  v28 = v4;
  v26 = v2;
  v25 = *(v2 + 16);
  MEMORY[0x1E69E5928](v25);
  sub_1B0394784(v15 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v24);
  v23 = *(v15 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue);
  MEMORY[0x1E69E5928](v23);
  v17 = 7;
  v22 = swift_allocObject();

  v16 = v15;
  swift_weakInit();

  v5 = swift_allocObject();
  v6 = v19;
  v7 = v20;
  v8 = v22;
  v9 = v23;
  v10 = v5;
  v11 = v24;
  v21 = v10;
  v10[2] = v18;
  v10[3] = v6;
  v10[4] = v8;
  sub_1B06E39F0(v11, v9, v7, v10);

  MEMORY[0x1E69E5920](v23);
  sub_1B039480C(v24);
  return MEMORY[0x1E69E5920](v25);
}

uint64_t sub_1B06F3B5C(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v10 = a2 & 1;
  v9[5] = a3;
  v9[6] = a4;
  v9[4] = a5 + 16;

  a3(a1);

  if (a2)
  {
    swift_beginAccess();
    v9[0] = swift_weakLoadStrong();
    if (v9[0])
    {

      sub_1B0391AD4(v9);
      swift_endAccess();
      sub_1B06ED0D0();
    }

    else
    {
      sub_1B0391AD4(v9);
      return swift_endAccess();
    }
  }

  return result;
}

dispatch_group_t sub_1B06F3C88()
{
  v6 = 0;
  v7 = 0;
  v3 = dispatch_group_create();
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  v4 = sub_1B070AC10();
  v5 = v0 & 1;
  v2 = sub_1B08D932C(&v4, &unk_1F26A9368);

  v7 = v2;
  sub_1B070E5F4(&v6);
  return v3;
}

uint64_t sub_1B06F3D18(uint64_t a1)
{
  v506 = v523;
  v500 = a1;
  v491 = 0;
  v465 = sub_1B039BBE8;
  v466 = sub_1B0394C30;
  v467 = sub_1B0394C24;
  v468 = sub_1B039BA2C;
  v469 = sub_1B039BA88;
  v470 = sub_1B039BB94;
  v471 = sub_1B0394C24;
  v472 = sub_1B039BBA0;
  v473 = sub_1B039BC08;
  v474 = sub_1B070B550;
  v475 = sub_1B039BCF8;
  v476 = sub_1B0398F5C;
  v477 = sub_1B0398F5C;
  v478 = sub_1B0399178;
  v479 = sub_1B0398F5C;
  v480 = sub_1B0398F5C;
  v481 = sub_1B039BA94;
  v482 = sub_1B0398F5C;
  v483 = sub_1B0398F5C;
  v484 = sub_1B0399178;
  v485 = sub_1B0398F5C;
  v486 = sub_1B0398F5C;
  v487 = sub_1B03991EC;
  v488 = sub_1B0398F5C;
  v489 = sub_1B0398F5C;
  v490 = sub_1B039BCEC;
  memset(v533, 0, sizeof(v533));
  v508 = __b;
  v510 = 40;
  memset(__b, 0, sizeof(__b));
  v530 = 0;
  v531 = 0;
  v511 = 0;
  v492 = 0;
  v493 = _s6LoggerVMa(0);
  v494 = (*(*(v493 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v495 = &v111 - v494;
  v496 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v497 = &v111 - v496;
  v498 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v499 = &v111 - v498;
  v501 = sub_1B0E439A8();
  v502 = *(v501 - 8);
  v503 = v501 - 8;
  v504 = (*(v502 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v500);
  v6 = v506;
  v505 = &v111 - v504;
  v506[38] = v7;
  v6[37] = v1;
  v507 = sub_1B06FFBDC(v7);
  v506[36] = v507;
  sub_1B06F6420();
  v506[35] = sub_1B0E44588();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v509 = &v534;
  sub_1B0E45448();
  memcpy(v508, v509, v510);
  for (i = v511; ; i = v113)
  {
    v462 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1948, &qword_1B0E9A0A8);
    sub_1B0E45508();
    v463 = v506[28];
    v464 = v506[29];
    if (!v464)
    {
      break;
    }

    v460 = v463;
    v461 = v464;
    v8 = v506;
    v9 = v464;
    v456 = v464;
    v455 = v463;
    v506[26] = v463;
    v8[27] = v9;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v458 = *MEMORY[0x1E699AFF0];
    MEMORY[0x1E69E5928](v458);
    v10 = sub_1B0E44AD8();
    v11 = v455;
    v12 = v456;
    v13 = v506;
    v457 = &v529;
    v506[24] = v10;
    v13[25] = v14;
    v13[22] = v11;
    v13[23] = v12;
    v459 = MEMORY[0x1B2726DE0](v13[24], v13[25], v13[22], v13[23]);
    sub_1B03B1198(v457);
    MEMORY[0x1E69E5920](v458);
    if (v459 & 1) != 0 || (, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v453 = *MEMORY[0x1E699AFF8], MEMORY[0x1E69E5928](v453), v15 = sub_1B0E44AD8(), v16 = v455, v17 = v456, v18 = v506, v452 = &v528, v506[20] = v15, v18[21] = v19, v18[18] = v16, v18[19] = v17, v454 = MEMORY[0x1B2726DE0](v18[20], v18[21], v18[18], v18[19]), sub_1B03B1198(v452), MEMORY[0x1E69E5920](v453), (v454) || (, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v450 = *MEMORY[0x1E699B000], MEMORY[0x1E69E5928](v450), v20 = sub_1B0E44AD8(), v21 = v455, v22 = v456, v23 = v506, v449 = &v527, v506[16] = v20, v23[17] = v24, v23[14] = v21, v23[15] = v22, v451 = MEMORY[0x1B2726DE0](v23[16], v23[17], v23[14], v23[15]), sub_1B03B1198(v449), MEMORY[0x1E69E5920](v450), (v451) || (, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v447 = *MEMORY[0x1E699B008], MEMORY[0x1E69E5928](v447), v25 = sub_1B0E44AD8(), v26 = v455, v27 = v456, v28 = v506, v446 = &v526, v506[12] = v25, v28[13] = v29, v28[10] = v26, v28[11] = v27, v448 = MEMORY[0x1B2726DE0](v28[12], v28[13], v28[10], v28[11]), sub_1B03B1198(v446), MEMORY[0x1E69E5920](v447), (v448) || (, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v30 = sub_1B0E44838(), v31 = v455, v32 = v456, v33 = v506, v444 = &v525, v506[8] = v30, v33[9] = v34, v33[6] = v31, v33[7] = v32, v445 = MEMORY[0x1B2726DE0](v33[8], v33[9], v33[6], v33[7]), sub_1B03B1198(v444), (v445) || (, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v35 = sub_1B0E44838(), v36 = v455, v37 = v456, v38 = v506, v442 = &v524, v506[4] = v35, v38[5] = v39, v38[2] = v36, v38[3] = v37, v443 = MEMORY[0x1B2726DE0](v38[4], v38[5], v38[2], v38[3]), sub_1B03B1198(v442), (v443))
    {

      v440 = &v513;
      v513 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1950, &qword_1B0E9A0B0);
      sub_1B0E454D8();
      v441 = v462;
    }

    else
    {

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v438 = *MEMORY[0x1E699AFE0];
      MEMORY[0x1E69E5928](v438);
      v40 = sub_1B0E44AD8();
      v41 = v455;
      v42 = v456;
      v43 = v506;
      v437 = v523;
      v523[0] = v40;
      v506[1] = v44;
      v522[2] = v41;
      v522[3] = v42;
      v439 = MEMORY[0x1B2726DE0](v523[0], v43[1], v41, v42);
      sub_1B03B1198(v437);
      MEMORY[0x1E69E5920](v438);
      if (v439 & 1) != 0 || (, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v435 = *MEMORY[0x1E699AFE8], MEMORY[0x1E69E5928](v435), v45 = sub_1B0E44AD8(), v434 = v522, v522[0] = v45, v522[1] = v46, v521[2] = v455, v521[3] = v456, v436 = MEMORY[0x1B2726DE0](v45, v46, v455, v456), sub_1B03B1198(v434), MEMORY[0x1E69E5920](v435), (v436))
      {

        v433 = &v514;
        v514 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1950, &qword_1B0E9A0B0);
        sub_1B0E454D8();
        v441 = v462;
      }

      else
      {

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v431 = *MEMORY[0x1E699B010];
        MEMORY[0x1E69E5928](v431);
        v47 = sub_1B0E44AD8();
        v430 = v521;
        v521[0] = v47;
        v521[1] = v48;
        v520[1] = v455;
        v520[2] = v456;
        v432 = MEMORY[0x1B2726DE0](v47, v48, v455, v456);
        sub_1B03B1198(v430);
        MEMORY[0x1E69E5920](v431);
        if (v432)
        {

          v429 = &v515;
          v515 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1950, &qword_1B0E9A0B0);
          sub_1B0E454D8();
          v441 = v462;
        }

        else
        {
          v49 = v505;

          (*(v502 + 16))(v49, v500, v501);
          sub_1B0394784(v500, v499);
          sub_1B0394784(v499, v497);
          sub_1B03F4FD0(v499, v495);
          v50 = (v497 + *(v493 + 20));
          v393 = *v50;
          v394 = *(v50 + 1);
          sub_1B039480C(v497);
          v392 = 24;
          v406 = 7;
          v51 = swift_allocObject();
          v52 = v394;
          v397 = v51;
          *(v51 + 16) = v393;
          *(v51 + 20) = v52;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v53 = swift_allocObject();
          v54 = v394;
          v395 = v53;
          *(v53 + 16) = v393;
          *(v53 + 20) = v54;

          v405 = 32;
          v55 = swift_allocObject();
          v56 = v395;
          v402 = v55;
          *(v55 + 16) = v465;
          *(v55 + 24) = v56;
          sub_1B0394868();
          sub_1B0394868();

          sub_1B039480C(v495);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v57 = swift_allocObject();
          v58 = v456;
          v407 = v57;
          *(v57 + 16) = v455;
          *(v57 + 24) = v58;
          v427 = sub_1B0E43988();
          v428 = sub_1B0E458E8();
          v404 = 17;
          v409 = swift_allocObject();
          v399 = 16;
          *(v409 + 16) = 16;
          v410 = swift_allocObject();
          v401 = 4;
          *(v410 + 16) = 4;
          v59 = swift_allocObject();
          v396 = v59;
          *(v59 + 16) = v466;
          *(v59 + 24) = 0;
          v60 = swift_allocObject();
          v61 = v396;
          v411 = v60;
          *(v60 + 16) = v467;
          *(v60 + 24) = v61;
          v412 = swift_allocObject();
          *(v412 + 16) = 0;
          v413 = swift_allocObject();
          *(v413 + 16) = 1;
          v62 = swift_allocObject();
          v63 = v397;
          v398 = v62;
          *(v62 + 16) = v468;
          *(v62 + 24) = v63;
          v64 = swift_allocObject();
          v65 = v398;
          v414 = v64;
          *(v64 + 16) = v469;
          *(v64 + 24) = v65;
          v415 = swift_allocObject();
          *(v415 + 16) = v399;
          v416 = swift_allocObject();
          *(v416 + 16) = v401;
          v66 = swift_allocObject();
          v400 = v66;
          *(v66 + 16) = v470;
          *(v66 + 24) = 0;
          v67 = swift_allocObject();
          v68 = v400;
          v417 = v67;
          *(v67 + 16) = v471;
          *(v67 + 24) = v68;
          v418 = swift_allocObject();
          *(v418 + 16) = 0;
          v419 = swift_allocObject();
          *(v419 + 16) = v401;
          v69 = swift_allocObject();
          v70 = v402;
          v403 = v69;
          *(v69 + 16) = v472;
          *(v69 + 24) = v70;
          v71 = swift_allocObject();
          v72 = v403;
          v420 = v71;
          *(v71 + 16) = v473;
          *(v71 + 24) = v72;
          v421 = swift_allocObject();
          *(v421 + 16) = 34;
          v422 = swift_allocObject();
          *(v422 + 16) = 8;
          v73 = swift_allocObject();
          v74 = v407;
          v408 = v73;
          *(v73 + 16) = v474;
          *(v73 + 24) = v74;
          v75 = swift_allocObject();
          v76 = v408;
          v424 = v75;
          *(v75 + 16) = v475;
          *(v75 + 24) = v76;
          v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v423 = sub_1B0E46A48();
          v425 = v77;

          v78 = v409;
          v79 = v425;
          *v425 = v476;
          v79[1] = v78;

          v80 = v410;
          v81 = v425;
          v425[2] = v477;
          v81[3] = v80;

          v82 = v411;
          v83 = v425;
          v425[4] = v478;
          v83[5] = v82;

          v84 = v412;
          v85 = v425;
          v425[6] = v479;
          v85[7] = v84;

          v86 = v413;
          v87 = v425;
          v425[8] = v480;
          v87[9] = v86;

          v88 = v414;
          v89 = v425;
          v425[10] = v481;
          v89[11] = v88;

          v90 = v415;
          v91 = v425;
          v425[12] = v482;
          v91[13] = v90;

          v92 = v416;
          v93 = v425;
          v425[14] = v483;
          v93[15] = v92;

          v94 = v417;
          v95 = v425;
          v425[16] = v484;
          v95[17] = v94;

          v96 = v418;
          v97 = v425;
          v425[18] = v485;
          v97[19] = v96;

          v98 = v419;
          v99 = v425;
          v425[20] = v486;
          v99[21] = v98;

          v100 = v420;
          v101 = v425;
          v425[22] = v487;
          v101[23] = v100;

          v102 = v421;
          v103 = v425;
          v425[24] = v488;
          v103[25] = v102;

          v104 = v422;
          v105 = v425;
          v425[26] = v489;
          v105[27] = v104;

          v106 = v424;
          v107 = v425;
          v425[28] = v490;
          v107[29] = v106;
          sub_1B0394964();

          if (os_log_type_enabled(v427, v428))
          {
            v108 = v462;
            v370 = sub_1B0E45D78();
            v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v371 = sub_1B03949A8(0, v369, v369);
            v372 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v373 = v520;
            v520[0] = v370;
            v374 = &v519;
            v519 = v371;
            v375 = &v518;
            v518 = v372;
            sub_1B0394A48(2, v520);
            sub_1B0394A48(5, v373);
            v516 = v476;
            v517 = v409;
            sub_1B03949FC(&v516, v373, v374, v375);
            v376 = v108;
            v377 = v409;
            v378 = v410;
            v379 = v411;
            v380 = v412;
            v381 = v413;
            v382 = v414;
            v383 = v415;
            v384 = v416;
            v385 = v417;
            v386 = v418;
            v387 = v419;
            v388 = v420;
            v389 = v421;
            v390 = v422;
            v391 = v424;
            if (v108)
            {
              v353 = v377;
              v354 = v378;
              v355 = v379;
              v356 = v380;
              v357 = v381;
              v358 = v382;
              v359 = v383;
              v360 = v384;
              v361 = v385;
              v362 = v386;
              v363 = v387;
              v364 = v388;
              v365 = v389;
              v366 = v390;
              v367 = v391;
              v128 = v391;
              v127 = v390;
              v126 = v389;
              v125 = v388;
              v124 = v387;
              v123 = v386;
              v122 = v385;
              v121 = v384;
              v120 = v383;
              v119 = v382;
              v118 = v381;
              v117 = v380;
              v116 = v379;
              v115 = v378;

              __break(1u);
            }

            else
            {
              v516 = v477;
              v517 = v410;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v337 = 0;
              v338 = v409;
              v339 = v410;
              v340 = v411;
              v341 = v412;
              v342 = v413;
              v343 = v414;
              v344 = v415;
              v345 = v416;
              v346 = v417;
              v347 = v418;
              v348 = v419;
              v349 = v420;
              v350 = v421;
              v351 = v422;
              v352 = v424;
              v516 = v478;
              v517 = v411;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v321 = 0;
              v322 = v409;
              v323 = v410;
              v324 = v411;
              v325 = v412;
              v326 = v413;
              v327 = v414;
              v328 = v415;
              v329 = v416;
              v330 = v417;
              v331 = v418;
              v332 = v419;
              v333 = v420;
              v334 = v421;
              v335 = v422;
              v336 = v424;
              v516 = v479;
              v517 = v412;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v305 = 0;
              v306 = v409;
              v307 = v410;
              v308 = v411;
              v309 = v412;
              v310 = v413;
              v311 = v414;
              v312 = v415;
              v313 = v416;
              v314 = v417;
              v315 = v418;
              v316 = v419;
              v317 = v420;
              v318 = v421;
              v319 = v422;
              v320 = v424;
              v516 = v480;
              v517 = v413;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v289 = 0;
              v290 = v409;
              v291 = v410;
              v292 = v411;
              v293 = v412;
              v294 = v413;
              v295 = v414;
              v296 = v415;
              v297 = v416;
              v298 = v417;
              v299 = v418;
              v300 = v419;
              v301 = v420;
              v302 = v421;
              v303 = v422;
              v304 = v424;
              v516 = v481;
              v517 = v414;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v273 = 0;
              v274 = v409;
              v275 = v410;
              v276 = v411;
              v277 = v412;
              v278 = v413;
              v279 = v414;
              v280 = v415;
              v281 = v416;
              v282 = v417;
              v283 = v418;
              v284 = v419;
              v285 = v420;
              v286 = v421;
              v287 = v422;
              v288 = v424;
              v516 = v482;
              v517 = v415;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v257 = 0;
              v258 = v409;
              v259 = v410;
              v260 = v411;
              v261 = v412;
              v262 = v413;
              v263 = v414;
              v264 = v415;
              v265 = v416;
              v266 = v417;
              v267 = v418;
              v268 = v419;
              v269 = v420;
              v270 = v421;
              v271 = v422;
              v272 = v424;
              v516 = v483;
              v517 = v416;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v241 = 0;
              v242 = v409;
              v243 = v410;
              v244 = v411;
              v245 = v412;
              v246 = v413;
              v247 = v414;
              v248 = v415;
              v249 = v416;
              v250 = v417;
              v251 = v418;
              v252 = v419;
              v253 = v420;
              v254 = v421;
              v255 = v422;
              v256 = v424;
              v516 = v484;
              v517 = v417;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v225 = 0;
              v226 = v409;
              v227 = v410;
              v228 = v411;
              v229 = v412;
              v230 = v413;
              v231 = v414;
              v232 = v415;
              v233 = v416;
              v234 = v417;
              v235 = v418;
              v236 = v419;
              v237 = v420;
              v238 = v421;
              v239 = v422;
              v240 = v424;
              v516 = v485;
              v517 = v418;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v209 = 0;
              v210 = v409;
              v211 = v410;
              v212 = v411;
              v213 = v412;
              v214 = v413;
              v215 = v414;
              v216 = v415;
              v217 = v416;
              v218 = v417;
              v219 = v418;
              v220 = v419;
              v221 = v420;
              v222 = v421;
              v223 = v422;
              v224 = v424;
              v516 = v486;
              v517 = v419;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v193 = 0;
              v194 = v409;
              v195 = v410;
              v196 = v411;
              v197 = v412;
              v198 = v413;
              v199 = v414;
              v200 = v415;
              v201 = v416;
              v202 = v417;
              v203 = v418;
              v204 = v419;
              v205 = v420;
              v206 = v421;
              v207 = v422;
              v208 = v424;
              v516 = v487;
              v517 = v420;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v177 = 0;
              v178 = v409;
              v179 = v410;
              v180 = v411;
              v181 = v412;
              v182 = v413;
              v183 = v414;
              v184 = v415;
              v185 = v416;
              v186 = v417;
              v187 = v418;
              v188 = v419;
              v189 = v420;
              v190 = v421;
              v191 = v422;
              v192 = v424;
              v516 = v488;
              v517 = v421;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v161 = 0;
              v162 = v409;
              v163 = v410;
              v164 = v411;
              v165 = v412;
              v166 = v413;
              v167 = v414;
              v168 = v415;
              v169 = v416;
              v170 = v417;
              v171 = v418;
              v172 = v419;
              v173 = v420;
              v174 = v421;
              v175 = v422;
              v176 = v424;
              v516 = v489;
              v517 = v422;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v145 = 0;
              v146 = v409;
              v147 = v410;
              v148 = v411;
              v149 = v412;
              v150 = v413;
              v151 = v414;
              v152 = v415;
              v153 = v416;
              v154 = v417;
              v155 = v418;
              v156 = v419;
              v157 = v420;
              v158 = v421;
              v159 = v422;
              v160 = v424;
              v516 = v490;
              v517 = v424;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v129 = 0;
              v130 = v409;
              v131 = v410;
              v132 = v411;
              v133 = v412;
              v134 = v413;
              v135 = v414;
              v136 = v415;
              v137 = v416;
              v138 = v417;
              v139 = v418;
              v140 = v419;
              v141 = v420;
              v142 = v421;
              v143 = v422;
              v144 = v424;
              _os_log_impl(&dword_1B0389000, v427, v428, "[%.*hhx-%.*X] Credentials: Unsupported auth method %{public}s", v370, 0x21u);
              sub_1B03998A8(v371, 0, v369);
              sub_1B03998A8(v372, 1, MEMORY[0x1E69E7CA0] + 8);
              sub_1B0E45D58();

              v368 = v129;
            }
          }

          else
          {
            v109 = v462;

            v368 = v109;
          }

          v114 = v368;
          MEMORY[0x1E69E5920](v427);
          (*(v502 + 8))(v505, v501);
          v441 = v114;
        }
      }
    }

    v113 = v441;
  }

  sub_1B06B91B0();
  v111 = v533;
  v112 = v506[35];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(v111);

  return v112;
}

unint64_t sub_1B06F6420()
{
  v2 = qword_1EB6DBC98;
  if (!qword_1EB6DBC98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBC98);
    return WitnessTable;
  }

  return v2;
}

uint64_t (*sub_1B06F649C(NSObject *a1, uint64_t a2))(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  dispatch_group_enter(a1);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5928](a1);

  v2 = swift_allocObject();
  result = sub_1B070B55C;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B06F655C(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v316 = a1;
  v318 = a2;
  v317 = a3;
  v260 = sub_1B039BBE8;
  v261 = sub_1B0394C30;
  v262 = sub_1B0394C24;
  v263 = sub_1B039BA2C;
  v264 = sub_1B039BA88;
  v265 = sub_1B039BB94;
  v266 = sub_1B0394C24;
  v267 = sub_1B039BBA0;
  v268 = sub_1B039BC08;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0398F5C;
  v271 = sub_1B0399178;
  v272 = sub_1B0398F5C;
  v273 = sub_1B0398F5C;
  v274 = sub_1B039BA94;
  v275 = sub_1B0398F5C;
  v276 = sub_1B0398F5C;
  v277 = sub_1B0399178;
  v278 = sub_1B0398F5C;
  v279 = sub_1B0398F5C;
  v280 = sub_1B03991EC;
  v281 = sub_1B039BBE8;
  v282 = sub_1B0394C24;
  v283 = sub_1B039BA2C;
  v284 = sub_1B039BA88;
  v285 = sub_1B0394C24;
  v286 = sub_1B039BBA0;
  v287 = sub_1B039BC08;
  v288 = sub_1B0398F5C;
  v289 = sub_1B0398F5C;
  v290 = sub_1B0399178;
  v291 = sub_1B0398F5C;
  v292 = sub_1B0398F5C;
  v293 = sub_1B039BA94;
  v294 = sub_1B0398F5C;
  v295 = sub_1B0398F5C;
  v296 = sub_1B0399178;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v299 = sub_1B03991EC;
  v349 = 0;
  v350 = 0;
  v348 = 0;
  v347 = 0;
  v300 = 0;
  v337 = 0;
  v338 = 0;
  v333 = 0;
  v334 = 0;
  v308 = 0;
  v301 = _s6LoggerVMa(0);
  v302 = (*(*(v301 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v303 = &v113 - v302;
  v304 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v305 = &v113 - v304;
  v306 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v307 = &v113 - v306;
  v309 = sub_1B0E439A8();
  v310 = *(v309 - 8);
  v311 = v309 - 8;
  v312 = (*(v310 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v308);
  v313 = &v113 - v312;
  v314 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v315 = &v113 - v314;
  v319 = sub_1B0E44B68();
  v320 = *(v319 - 8);
  v321 = v319 - 8;
  v322 = (*(v320 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v324);
  v323 = &v113 - v322;
  v349 = v9;
  v350 = v10;
  v348 = v11;
  v347 = v12;
  MEMORY[0x1E69E5928](v12);
  v325 = [v324 username];
  if (v325)
  {
    v259 = v325;
    v254 = v325;
    v255 = sub_1B0E44AD8();
    v256 = v13;
    MEMORY[0x1E69E5920](v254);
    v257 = v255;
    v258 = v256;
  }

  else
  {
    v257 = 0;
    v258 = 0;
  }

  v345 = v257;
  v346 = v258;
  if (v258)
  {
    v247 = &v345;
    v248 = v345;
    v249 = v346;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v247);
    MEMORY[0x1E69E5920](v324);
    sub_1B0E44B48();
    sub_1B0394868();
    v250 = sub_1B0E44AE8();
    v251 = v14;
    (*(v320 + 8))(v323, v319);

    v252 = v250;
    v253 = v251;
  }

  else
  {
    sub_1B03B1198(&v345);
    MEMORY[0x1E69E5920](v324);
    v252 = 0;
    v253 = 0xF000000000000000;
  }

  v245 = v253;
  v246 = v252;
  if ((v253 & 0xF000000000000000) != 0xF000000000000000)
  {
    v243 = v246;
    v244 = v245;
    v240 = v245;
    v241 = v246;
    v337 = v246;
    v338 = v245;
    MEMORY[0x1E69E5928](v324);
    v15 = [v324 password];
    v242 = v15;
    if (v15)
    {
      v239 = v242;
      v234 = v242;
      v235 = sub_1B0E44AD8();
      v236 = v16;
      MEMORY[0x1E69E5920](v234);
      v237 = v235;
      v238 = v236;
    }

    else
    {
      v237 = 0;
      v238 = 0;
    }

    v335 = v237;
    v336 = v238;
    if (v238)
    {
      v227 = &v335;
      v228 = v335;
      v229 = v336;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v227);
      MEMORY[0x1E69E5920](v324);
      sub_1B0E44B48();
      sub_1B0394868();
      v230 = sub_1B0E44AE8();
      v231 = v17;
      (*(v320 + 8))(v323, v319);

      v232 = v230;
      v233 = v231;
    }

    else
    {
      sub_1B03B1198(&v335);
      MEMORY[0x1E69E5920](v324);
      v232 = 0;
      v233 = 0xF000000000000000;
    }

    v225 = v233;
    v226 = v232;
    if ((v233 & 0xF000000000000000) != 0xF000000000000000)
    {
      v223 = v226;
      v224 = v225;
      v189 = v225;
      v190 = v226;
      v333 = v226;
      v334 = v225;
      (*(v310 + 16))(v315, v317, v309);
      sub_1B0394784(v317, v307);
      sub_1B0394784(v307, v305);
      sub_1B03F4FD0(v307, v303);
      v18 = (v305 + *(v301 + 20));
      v192 = *v18;
      v193 = *(v18 + 1);
      sub_1B039480C(v305);
      v191 = 24;
      v203 = 7;
      v19 = swift_allocObject();
      v20 = v193;
      v196 = v19;
      *(v19 + 16) = v192;
      *(v19 + 20) = v20;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v21 = swift_allocObject();
      v22 = v193;
      v194 = v21;
      *(v21 + 16) = v192;
      *(v21 + 20) = v22;

      v202 = 32;
      v23 = swift_allocObject();
      v24 = v194;
      v204 = v23;
      *(v23 + 16) = v260;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v303);
      v221 = sub_1B0E43988();
      v222 = sub_1B0E45908();
      v200 = 17;
      v206 = swift_allocObject();
      v198 = 16;
      *(v206 + 16) = 16;
      v207 = swift_allocObject();
      v201 = 4;
      *(v207 + 16) = 4;
      v25 = swift_allocObject();
      v195 = v25;
      *(v25 + 16) = v261;
      *(v25 + 24) = 0;
      v26 = swift_allocObject();
      v27 = v195;
      v208 = v26;
      *(v26 + 16) = v262;
      *(v26 + 24) = v27;
      v209 = swift_allocObject();
      *(v209 + 16) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = 1;
      v28 = swift_allocObject();
      v29 = v196;
      v197 = v28;
      *(v28 + 16) = v263;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v197;
      v211 = v30;
      *(v30 + 16) = v264;
      *(v30 + 24) = v31;
      v212 = swift_allocObject();
      *(v212 + 16) = v198;
      v213 = swift_allocObject();
      *(v213 + 16) = v201;
      v32 = swift_allocObject();
      v199 = v32;
      *(v32 + 16) = v265;
      *(v32 + 24) = 0;
      v33 = swift_allocObject();
      v34 = v199;
      v214 = v33;
      *(v33 + 16) = v266;
      *(v33 + 24) = v34;
      v215 = swift_allocObject();
      *(v215 + 16) = 0;
      v216 = swift_allocObject();
      *(v216 + 16) = v201;
      v35 = swift_allocObject();
      v36 = v204;
      v205 = v35;
      *(v35 + 16) = v267;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v205;
      v218 = v37;
      *(v37 + 16) = v268;
      *(v37 + 24) = v38;
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v217 = sub_1B0E46A48();
      v219 = v39;

      v40 = v206;
      v41 = v219;
      *v219 = v269;
      v41[1] = v40;

      v42 = v207;
      v43 = v219;
      v219[2] = v270;
      v43[3] = v42;

      v44 = v208;
      v45 = v219;
      v219[4] = v271;
      v45[5] = v44;

      v46 = v209;
      v47 = v219;
      v219[6] = v272;
      v47[7] = v46;

      v48 = v210;
      v49 = v219;
      v219[8] = v273;
      v49[9] = v48;

      v50 = v211;
      v51 = v219;
      v219[10] = v274;
      v51[11] = v50;

      v52 = v212;
      v53 = v219;
      v219[12] = v275;
      v53[13] = v52;

      v54 = v213;
      v55 = v219;
      v219[14] = v276;
      v55[15] = v54;

      v56 = v214;
      v57 = v219;
      v219[16] = v277;
      v57[17] = v56;

      v58 = v215;
      v59 = v219;
      v219[18] = v278;
      v59[19] = v58;

      v60 = v216;
      v61 = v219;
      v219[20] = v279;
      v61[21] = v60;

      v62 = v218;
      v63 = v219;
      v219[22] = v280;
      v63[23] = v62;
      sub_1B0394964();

      if (os_log_type_enabled(v221, v222))
      {
        v64 = v300;
        v182 = sub_1B0E45D78();
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v181 = 0;
        v183 = sub_1B03949A8(0, v180, v180);
        v184 = sub_1B03949A8(v181, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v185 = &v330;
        v330 = v182;
        v186 = &v329;
        v329 = v183;
        v187 = &v328;
        v328 = v184;
        sub_1B0394A48(0, &v330);
        sub_1B0394A48(4, v185);
        v326 = v269;
        v327 = v206;
        sub_1B03949FC(&v326, v185, v186, v187);
        v188 = v64;
        if (v64)
        {

          __break(1u);
        }

        else
        {
          v326 = v270;
          v327 = v207;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v179 = 0;
          v326 = v271;
          v327 = v208;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v178 = 0;
          v326 = v272;
          v327 = v209;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v177 = 0;
          v326 = v273;
          v327 = v210;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v176 = 0;
          v326 = v274;
          v327 = v211;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v175 = 0;
          v326 = v275;
          v327 = v212;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v174 = 0;
          v326 = v276;
          v327 = v213;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v173 = 0;
          v326 = v277;
          v327 = v214;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v172 = 0;
          v326 = v278;
          v327 = v215;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v171 = 0;
          v326 = v279;
          v327 = v216;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          v170 = 0;
          v326 = v280;
          v327 = v218;
          sub_1B03949FC(&v326, &v330, &v329, &v328);
          _os_log_impl(&dword_1B0389000, v221, v222, "[%.*hhx-%.*X] Credentials: Adding username + password auth", v182, 0x17u);
          v169 = 0;
          sub_1B03998A8(v183, 0, v180);
          sub_1B03998A8(v184, v169, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v221);
      (*(v310 + 8))(v315, v309);
      sub_1B03B2000(v241, v240);
      sub_1B03B2000(v190, v189);
      v331[0] = v241;
      v331[1] = v240;
      v331[2] = v190;
      v331[3] = v189;
      v331[5] &= 0xCFFFFFFFFFFFFFFFLL;
      v331[7] &= 0xCFFFFFFFFFFFFFFFLL;
      v331[9] &= 0xCFFFFFFFFFFFFFFFLL;
      v168 = v332;
      v166 = 80;
      memcpy(v332, v331, sizeof(v332));
      v167 = __dst;
      memcpy(__dst, v332, sizeof(__dst));
      v316(__dst);
      sub_1B070B568(v168);
      sub_1B0391D50(v190, v189);
      return sub_1B0391D50(v241, v240);
    }

    sub_1B0391D50(v241, v240);
  }

  (*(v310 + 16))(v313, v317, v309);
  sub_1B0394784(v317, v307);
  sub_1B0394784(v307, v305);
  sub_1B03F4FD0(v307, v303);
  v66 = (v305 + *(v301 + 20));
  v135 = *v66;
  v136 = *(v66 + 1);
  sub_1B039480C(v305);
  v134 = 24;
  v146 = 7;
  v67 = swift_allocObject();
  v68 = v136;
  v139 = v67;
  *(v67 + 16) = v135;
  *(v67 + 20) = v68;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v69 = swift_allocObject();
  v70 = v136;
  v137 = v69;
  *(v69 + 16) = v135;
  *(v69 + 20) = v70;

  v145 = 32;
  v71 = swift_allocObject();
  v72 = v137;
  v147 = v71;
  *(v71 + 16) = v281;
  *(v71 + 24) = v72;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v303);
  v164 = sub_1B0E43988();
  v165 = sub_1B0E458E8();
  v143 = 17;
  v149 = swift_allocObject();
  v141 = 16;
  *(v149 + 16) = 16;
  v150 = swift_allocObject();
  v144 = 4;
  *(v150 + 16) = 4;
  v73 = swift_allocObject();
  v138 = v73;
  *(v73 + 16) = v261;
  *(v73 + 24) = 0;
  v74 = swift_allocObject();
  v75 = v138;
  v151 = v74;
  *(v74 + 16) = v282;
  *(v74 + 24) = v75;
  v152 = swift_allocObject();
  *(v152 + 16) = 0;
  v153 = swift_allocObject();
  *(v153 + 16) = 1;
  v76 = swift_allocObject();
  v77 = v139;
  v140 = v76;
  *(v76 + 16) = v283;
  *(v76 + 24) = v77;
  v78 = swift_allocObject();
  v79 = v140;
  v154 = v78;
  *(v78 + 16) = v284;
  *(v78 + 24) = v79;
  v155 = swift_allocObject();
  *(v155 + 16) = v141;
  v156 = swift_allocObject();
  *(v156 + 16) = v144;
  v80 = swift_allocObject();
  v142 = v80;
  *(v80 + 16) = v265;
  *(v80 + 24) = 0;
  v81 = swift_allocObject();
  v82 = v142;
  v157 = v81;
  *(v81 + 16) = v285;
  *(v81 + 24) = v82;
  v158 = swift_allocObject();
  *(v158 + 16) = 0;
  v159 = swift_allocObject();
  *(v159 + 16) = v144;
  v83 = swift_allocObject();
  v84 = v147;
  v148 = v83;
  *(v83 + 16) = v286;
  *(v83 + 24) = v84;
  v85 = swift_allocObject();
  v86 = v148;
  v161 = v85;
  *(v85 + 16) = v287;
  *(v85 + 24) = v86;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v160 = sub_1B0E46A48();
  v162 = v87;

  v88 = v149;
  v89 = v162;
  *v162 = v288;
  v89[1] = v88;

  v90 = v150;
  v91 = v162;
  v162[2] = v289;
  v91[3] = v90;

  v92 = v151;
  v93 = v162;
  v162[4] = v290;
  v93[5] = v92;

  v94 = v152;
  v95 = v162;
  v162[6] = v291;
  v95[7] = v94;

  v96 = v153;
  v97 = v162;
  v162[8] = v292;
  v97[9] = v96;

  v98 = v154;
  v99 = v162;
  v162[10] = v293;
  v99[11] = v98;

  v100 = v155;
  v101 = v162;
  v162[12] = v294;
  v101[13] = v100;

  v102 = v156;
  v103 = v162;
  v162[14] = v295;
  v103[15] = v102;

  v104 = v157;
  v105 = v162;
  v162[16] = v296;
  v105[17] = v104;

  v106 = v158;
  v107 = v162;
  v162[18] = v297;
  v107[19] = v106;

  v108 = v159;
  v109 = v162;
  v162[20] = v298;
  v109[21] = v108;

  v110 = v161;
  v111 = v162;
  v162[22] = v299;
  v111[23] = v110;
  sub_1B0394964();

  if (os_log_type_enabled(v164, v165))
  {
    v112 = v300;
    v127 = sub_1B0E45D78();
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v126 = 0;
    v128 = sub_1B03949A8(0, v125, v125);
    v129 = sub_1B03949A8(v126, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v130 = &v343;
    v343 = v127;
    v131 = &v342;
    v342 = v128;
    v132 = &v341;
    v341 = v129;
    sub_1B0394A48(0, &v343);
    sub_1B0394A48(4, v130);
    v339 = v288;
    v340 = v149;
    sub_1B03949FC(&v339, v130, v131, v132);
    v133 = v112;
    if (v112)
    {

      __break(1u);
    }

    else
    {
      v339 = v289;
      v340 = v150;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v124 = 0;
      v339 = v290;
      v340 = v151;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v123 = 0;
      v339 = v291;
      v340 = v152;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v122 = 0;
      v339 = v292;
      v340 = v153;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v121 = 0;
      v339 = v293;
      v340 = v154;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v120 = 0;
      v339 = v294;
      v340 = v155;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v119 = 0;
      v339 = v295;
      v340 = v156;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v118 = 0;
      v339 = v296;
      v340 = v157;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v117 = 0;
      v339 = v297;
      v340 = v158;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v116 = 0;
      v339 = v298;
      v340 = v159;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      v115 = 0;
      v339 = v299;
      v340 = v161;
      sub_1B03949FC(&v339, &v343, &v342, &v341);
      _os_log_impl(&dword_1B0389000, v164, v165, "[%.*hhx-%.*X] Credentials: Missing username/password.", v127, 0x17u);
      v114 = 0;
      sub_1B03998A8(v128, 0, v125);
      sub_1B03998A8(v129, v114, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v164);
  (*(v310 + 8))(v313, v309);
  memset(v344, 0, 40);
  v344[5] = 0x3000000000000000;
  v344[6] = 0;
  v344[7] = 0x1000000000000000;
  v344[8] = 0;
  v344[9] = 0x3000000000000000;
  memcpy(v352, v344, sizeof(v352));
  return (v316)(v352);
}

uint64_t sub_1B06F85B0(void (*a1)(char *), void (*a2)(char *), uint64_t a3)
{
  v593 = a1;
  v592 = a2;
  v591 = a3;
  v479 = sub_1B039BBE8;
  v480 = sub_1B0394C30;
  v481 = sub_1B0394C24;
  v482 = sub_1B039BA2C;
  v483 = sub_1B039BA88;
  v484 = sub_1B039BB94;
  v485 = sub_1B0394C24;
  v486 = sub_1B039BBA0;
  v487 = sub_1B039BC08;
  v488 = sub_1B070B854;
  v489 = sub_1B03B0DF8;
  v490 = sub_1B0398F5C;
  v491 = sub_1B0398F5C;
  v492 = sub_1B0399178;
  v493 = sub_1B0398F5C;
  v494 = sub_1B0398F5C;
  v495 = sub_1B039BA94;
  v496 = sub_1B0398F5C;
  v497 = sub_1B0398F5C;
  v498 = sub_1B0399178;
  v499 = sub_1B0398F5C;
  v500 = sub_1B0398F5C;
  v501 = sub_1B03991EC;
  v502 = sub_1B0398F5C;
  v503 = sub_1B0398F5C;
  v504 = sub_1B0399260;
  v505 = sub_1B039BBE8;
  v506 = sub_1B0394C24;
  v507 = sub_1B039BA2C;
  v508 = sub_1B039BA88;
  v509 = sub_1B0394C24;
  v510 = sub_1B039BBA0;
  v511 = sub_1B039BC08;
  v512 = sub_1B070B98C;
  v513 = sub_1B03B0DF8;
  v514 = sub_1B0398F5C;
  v515 = sub_1B0398F5C;
  v516 = sub_1B0399178;
  v517 = sub_1B0398F5C;
  v518 = sub_1B0398F5C;
  v519 = sub_1B039BA94;
  v520 = sub_1B0398F5C;
  v521 = sub_1B0398F5C;
  v522 = sub_1B0399178;
  v523 = sub_1B0398F5C;
  v524 = sub_1B0398F5C;
  v525 = sub_1B03991EC;
  v526 = sub_1B0398F5C;
  v527 = sub_1B0398F5C;
  v528 = sub_1B0399260;
  v529 = sub_1B039BBE8;
  v530 = sub_1B0394C24;
  v531 = sub_1B039BA2C;
  v532 = sub_1B039BA88;
  v533 = sub_1B0394C24;
  v534 = sub_1B039BBA0;
  v535 = sub_1B039BC08;
  v536 = sub_1B0398F5C;
  v537 = sub_1B0398F5C;
  v538 = sub_1B0399178;
  v539 = sub_1B0398F5C;
  v540 = sub_1B0398F5C;
  v541 = sub_1B039BA94;
  v542 = sub_1B0398F5C;
  v543 = sub_1B0398F5C;
  v544 = sub_1B0399178;
  v545 = sub_1B0398F5C;
  v546 = sub_1B0398F5C;
  v547 = sub_1B03991EC;
  v548 = sub_1B039BBE8;
  v549 = sub_1B0394C24;
  v550 = sub_1B039BA2C;
  v551 = sub_1B039BA88;
  v552 = sub_1B0394C24;
  v553 = sub_1B039BBA0;
  v554 = sub_1B039BC08;
  v555 = sub_1B0398F5C;
  v556 = sub_1B0398F5C;
  v557 = sub_1B0399178;
  v558 = sub_1B0398F5C;
  v559 = sub_1B0398F5C;
  v560 = sub_1B039BA94;
  v561 = sub_1B0398F5C;
  v562 = sub_1B0398F5C;
  v563 = sub_1B0399178;
  v564 = sub_1B0398F5C;
  v565 = sub_1B0398F5C;
  v566 = sub_1B03991EC;
  v567 = sub_1B070B85C;
  v638 = 0;
  v639 = 0;
  v637 = 0;
  v636 = 0;
  v635 = 0;
  v568 = 0;
  v579 = 0;
  v569 = _s6LoggerVMa(0);
  v570 = *(v569 - 8);
  v571 = v570;
  v572 = *(v570 + 64);
  v573 = (v572 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v574 = v236 - v573;
  v575 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v576 = v236 - v575;
  v577 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v578 = v236 - v577;
  v580 = sub_1B0E439A8();
  v581 = *(v580 - 8);
  v582 = v580 - 8;
  v583 = (*(v581 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v579);
  v584 = v236 - v583;
  v585 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v586 = v236 - v585;
  v587 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v588 = v236 - v587;
  v589 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v590 = v236 - v589;
  v598 = sub_1B0E43108();
  v595 = *(v598 - 8);
  v596 = v598 - 8;
  v594 = (*(v595 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v593);
  v597 = v236 - v594;
  v638 = v14;
  v639 = v15;
  v637 = v16;
  v636 = v3;
  sub_1B0705A4C(v236 - v594);
  sub_1B0E43098();
  v599 = v17;
  v635 = v17;
  (*(v595 + 8))(v597, v598);
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1958, &qword_1B0E9A0B8);
  v602 = &v634;
  v634 = 0xC0F86A0000000000;
  v601 = &v633;
  v633 = v599;
  v603 = sub_1B070B7CC();
  if (sub_1B0E45138())
  {
    (*(v581 + 16))(v590, v591, v580);
    sub_1B0394784(v591, v578);
    sub_1B0394784(v578, v576);
    sub_1B03F4FD0(v578, v574);
    v18 = (v576 + *(v569 + 20));
    v447 = *v18;
    v448 = *(v18 + 1);
    sub_1B039480C(v576);
    v446 = 24;
    v458 = 7;
    v19 = swift_allocObject();
    v20 = v448;
    v451 = v19;
    *(v19 + 16) = v447;
    *(v19 + 20) = v20;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = swift_allocObject();
    v22 = v448;
    v449 = v21;
    *(v21 + 16) = v447;
    *(v21 + 20) = v22;

    v457 = 32;
    v23 = swift_allocObject();
    v24 = v449;
    v459 = v23;
    *(v23 + 16) = v529;
    *(v23 + 24) = v24;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v574);
    v476 = sub_1B0E43988();
    v477 = sub_1B0E45908();
    v455 = 17;
    v461 = swift_allocObject();
    v453 = 16;
    *(v461 + 16) = 16;
    v462 = swift_allocObject();
    v456 = 4;
    *(v462 + 16) = 4;
    v25 = swift_allocObject();
    v450 = v25;
    *(v25 + 16) = v480;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v450;
    v463 = v26;
    *(v26 + 16) = v530;
    *(v26 + 24) = v27;
    v464 = swift_allocObject();
    *(v464 + 16) = 0;
    v465 = swift_allocObject();
    *(v465 + 16) = 1;
    v28 = swift_allocObject();
    v29 = v451;
    v452 = v28;
    *(v28 + 16) = v531;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v452;
    v466 = v30;
    *(v30 + 16) = v532;
    *(v30 + 24) = v31;
    v467 = swift_allocObject();
    *(v467 + 16) = v453;
    v468 = swift_allocObject();
    *(v468 + 16) = v456;
    v32 = swift_allocObject();
    v454 = v32;
    *(v32 + 16) = v484;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    v34 = v454;
    v469 = v33;
    *(v33 + 16) = v533;
    *(v33 + 24) = v34;
    v470 = swift_allocObject();
    *(v470 + 16) = 0;
    v471 = swift_allocObject();
    *(v471 + 16) = v456;
    v35 = swift_allocObject();
    v36 = v459;
    v460 = v35;
    *(v35 + 16) = v534;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v460;
    v473 = v37;
    *(v37 + 16) = v535;
    *(v37 + 24) = v38;
    v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v472 = sub_1B0E46A48();
    v474 = v39;

    v40 = v461;
    v41 = v474;
    *v474 = v536;
    v41[1] = v40;

    v42 = v462;
    v43 = v474;
    v474[2] = v537;
    v43[3] = v42;

    v44 = v463;
    v45 = v474;
    v474[4] = v538;
    v45[5] = v44;

    v46 = v464;
    v47 = v474;
    v474[6] = v539;
    v47[7] = v46;

    v48 = v465;
    v49 = v474;
    v474[8] = v540;
    v49[9] = v48;

    v50 = v466;
    v51 = v474;
    v474[10] = v541;
    v51[11] = v50;

    v52 = v467;
    v53 = v474;
    v474[12] = v542;
    v53[13] = v52;

    v54 = v468;
    v55 = v474;
    v474[14] = v543;
    v55[15] = v54;

    v56 = v469;
    v57 = v474;
    v474[16] = v544;
    v57[17] = v56;

    v58 = v470;
    v59 = v474;
    v474[18] = v545;
    v59[19] = v58;

    v60 = v471;
    v61 = v474;
    v474[20] = v546;
    v61[21] = v60;

    v62 = v473;
    v63 = v474;
    v474[22] = v547;
    v63[23] = v62;
    sub_1B0394964();

    if (os_log_type_enabled(v476, v477))
    {
      v64 = v568;
      v439 = sub_1B0E45D78();
      v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v438 = 0;
      v440 = sub_1B03949A8(0, v437, v437);
      v441 = sub_1B03949A8(v438, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v442 = &v608;
      v608 = v439;
      v443 = &v607;
      v607 = v440;
      v444 = &v606;
      v606 = v441;
      sub_1B0394A48(0, &v608);
      sub_1B0394A48(4, v442);
      v604 = v536;
      v605 = v461;
      sub_1B03949FC(&v604, v442, v443, v444);
      v445 = v64;
      if (v64)
      {

        __break(1u);
      }

      else
      {
        v604 = v537;
        v605 = v462;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v435 = 0;
        v604 = v538;
        v605 = v463;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v434 = 0;
        v604 = v539;
        v605 = v464;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v433 = 0;
        v604 = v540;
        v605 = v465;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v432 = 0;
        v604 = v541;
        v605 = v466;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v431 = 0;
        v604 = v542;
        v605 = v467;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v430 = 0;
        v604 = v543;
        v605 = v468;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v429 = 0;
        v604 = v544;
        v605 = v469;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v428 = 0;
        v604 = v545;
        v605 = v470;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v427 = 0;
        v604 = v546;
        v605 = v471;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v426 = 0;
        v604 = v547;
        v605 = v473;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v425 = 0;
        _os_log_impl(&dword_1B0389000, v476, v477, "[%.*hhx-%.*X] Credentials: OAuth did expire long ago.", v439, 0x17u);
        v424 = 0;
        sub_1B03998A8(v440, 0, v437);
        sub_1B03998A8(v441, v424, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v436 = v425;
      }
    }

    else
    {
      v65 = v568;

      v436 = v65;
    }

    v422 = v436;
    MEMORY[0x1E69E5920](v476);
    (*(v581 + 8))(v590, v580);
    v423 = v422;
  }

  else
  {
    v632 = 0;
    v631 = v599;
    if (sub_1B0E45138())
    {
      (*(v581 + 16))(v588, v591, v580);
      sub_1B0394784(v591, v578);
      sub_1B0394784(v578, v576);
      sub_1B03F4FD0(v578, v574);
      v66 = (v576 + *(v569 + 20));
      v385 = *v66;
      v386 = *(v66 + 1);
      sub_1B039480C(v576);
      v388 = 24;
      v399 = 7;
      v67 = swift_allocObject();
      v68 = v386;
      v390 = v67;
      *(v67 + 16) = v385;
      *(v67 + 20) = v68;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v69 = swift_allocObject();
      v70 = v386;
      v387 = v69;
      *(v69 + 16) = v385;
      *(v69 + 20) = v70;

      v398 = 32;
      v71 = swift_allocObject();
      v72 = v387;
      v395 = v71;
      *(v71 + 16) = v505;
      *(v71 + 24) = v72;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v574);
      v400 = swift_allocObject();
      *(v400 + 16) = v599;
      v420 = sub_1B0E43988();
      v421 = sub_1B0E45908();
      v397 = 17;
      v402 = swift_allocObject();
      v392 = 16;
      *(v402 + 16) = 16;
      v403 = swift_allocObject();
      v394 = 4;
      *(v403 + 16) = 4;
      v73 = swift_allocObject();
      v389 = v73;
      *(v73 + 16) = v480;
      *(v73 + 24) = 0;
      v74 = swift_allocObject();
      v75 = v389;
      v404 = v74;
      *(v74 + 16) = v506;
      *(v74 + 24) = v75;
      v405 = swift_allocObject();
      *(v405 + 16) = 0;
      v406 = swift_allocObject();
      *(v406 + 16) = 1;
      v76 = swift_allocObject();
      v77 = v390;
      v391 = v76;
      *(v76 + 16) = v507;
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v391;
      v407 = v78;
      *(v78 + 16) = v508;
      *(v78 + 24) = v79;
      v408 = swift_allocObject();
      *(v408 + 16) = v392;
      v409 = swift_allocObject();
      *(v409 + 16) = v394;
      v80 = swift_allocObject();
      v393 = v80;
      *(v80 + 16) = v484;
      *(v80 + 24) = 0;
      v81 = swift_allocObject();
      v82 = v393;
      v410 = v81;
      *(v81 + 16) = v509;
      *(v81 + 24) = v82;
      v411 = swift_allocObject();
      *(v411 + 16) = 0;
      v412 = swift_allocObject();
      *(v412 + 16) = v394;
      v83 = swift_allocObject();
      v84 = v395;
      v396 = v83;
      *(v83 + 16) = v510;
      *(v83 + 24) = v84;
      v85 = swift_allocObject();
      v86 = v396;
      v413 = v85;
      *(v85 + 16) = v511;
      *(v85 + 24) = v86;
      v414 = swift_allocObject();
      *(v414 + 16) = 0;
      v415 = swift_allocObject();
      *(v415 + 16) = 8;
      v87 = swift_allocObject();
      v88 = v400;
      v401 = v87;
      *(v87 + 16) = v512;
      *(v87 + 24) = v88;
      v89 = swift_allocObject();
      v90 = v401;
      v417 = v89;
      *(v89 + 16) = v513;
      *(v89 + 24) = v90;
      v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v416 = sub_1B0E46A48();
      v418 = v91;

      v92 = v402;
      v93 = v418;
      *v418 = v514;
      v93[1] = v92;

      v94 = v403;
      v95 = v418;
      v418[2] = v515;
      v95[3] = v94;

      v96 = v404;
      v97 = v418;
      v418[4] = v516;
      v97[5] = v96;

      v98 = v405;
      v99 = v418;
      v418[6] = v517;
      v99[7] = v98;

      v100 = v406;
      v101 = v418;
      v418[8] = v518;
      v101[9] = v100;

      v102 = v407;
      v103 = v418;
      v418[10] = v519;
      v103[11] = v102;

      v104 = v408;
      v105 = v418;
      v418[12] = v520;
      v105[13] = v104;

      v106 = v409;
      v107 = v418;
      v418[14] = v521;
      v107[15] = v106;

      v108 = v410;
      v109 = v418;
      v418[16] = v522;
      v109[17] = v108;

      v110 = v411;
      v111 = v418;
      v418[18] = v523;
      v111[19] = v110;

      v112 = v412;
      v113 = v418;
      v418[20] = v524;
      v113[21] = v112;

      v114 = v413;
      v115 = v418;
      v418[22] = v525;
      v115[23] = v114;

      v116 = v414;
      v117 = v418;
      v418[24] = v526;
      v117[25] = v116;

      v118 = v415;
      v119 = v418;
      v418[26] = v527;
      v119[27] = v118;

      v120 = v417;
      v121 = v418;
      v418[28] = v528;
      v121[29] = v120;
      sub_1B0394964();

      if (os_log_type_enabled(v420, v421))
      {
        v122 = v568;
        v378 = sub_1B0E45D78();
        v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v377 = 0;
        v379 = sub_1B03949A8(0, v376, v376);
        v380 = sub_1B03949A8(v377, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v381 = &v613;
        v613 = v378;
        v382 = &v612;
        v612 = v379;
        v383 = &v611;
        v611 = v380;
        sub_1B0394A48(0, &v613);
        sub_1B0394A48(5, v381);
        v609 = v514;
        v610 = v402;
        sub_1B03949FC(&v609, v381, v382, v383);
        v384 = v122;
        if (v122)
        {

          __break(1u);
        }

        else
        {
          v609 = v515;
          v610 = v403;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v374 = 0;
          v609 = v516;
          v610 = v404;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v373 = 0;
          v609 = v517;
          v610 = v405;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v372 = 0;
          v609 = v518;
          v610 = v406;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v371 = 0;
          v609 = v519;
          v610 = v407;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v370 = 0;
          v609 = v520;
          v610 = v408;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v369 = 0;
          v609 = v521;
          v610 = v409;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v368 = 0;
          v609 = v522;
          v610 = v410;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v367 = 0;
          v609 = v523;
          v610 = v411;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v366 = 0;
          v609 = v524;
          v610 = v412;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v365 = 0;
          v609 = v525;
          v610 = v413;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v364 = 0;
          v609 = v526;
          v610 = v414;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v363 = 0;
          v609 = v527;
          v610 = v415;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v362 = 0;
          v609 = v528;
          v610 = v417;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v361 = 0;
          _os_log_impl(&dword_1B0389000, v420, v421, "[%.*hhx-%.*X] Credentials: OAuth did expire %ld seconds ago.", v378, 0x21u);
          v360 = 0;
          sub_1B03998A8(v379, 0, v376);
          sub_1B03998A8(v380, v360, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v375 = v361;
        }
      }

      else
      {
        v123 = v568;

        v375 = v123;
      }

      v359 = v375;
      MEMORY[0x1E69E5920](v420);
      (*(v581 + 8))(v588, v580);
      v423 = v359;
    }

    else
    {
      (*(v581 + 16))(v586, v591, v580);
      sub_1B0394784(v591, v578);
      sub_1B0394784(v578, v576);
      sub_1B03F4FD0(v578, v574);
      v124 = (v576 + *(v569 + 20));
      v322 = *v124;
      v323 = *(v124 + 1);
      sub_1B039480C(v576);
      v325 = 24;
      v336 = 7;
      v125 = swift_allocObject();
      v126 = v323;
      v327 = v125;
      *(v125 + 16) = v322;
      *(v125 + 20) = v126;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v127 = swift_allocObject();
      v128 = v323;
      v324 = v127;
      *(v127 + 16) = v322;
      *(v127 + 20) = v128;

      v335 = 32;
      v129 = swift_allocObject();
      v130 = v324;
      v332 = v129;
      *(v129 + 16) = v479;
      *(v129 + 24) = v130;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v574);
      v337 = swift_allocObject();
      *(v337 + 16) = v599;
      v357 = sub_1B0E43988();
      v358 = sub_1B0E45908();
      v334 = 17;
      v339 = swift_allocObject();
      v329 = 16;
      *(v339 + 16) = 16;
      v340 = swift_allocObject();
      v331 = 4;
      *(v340 + 16) = 4;
      v131 = swift_allocObject();
      v326 = v131;
      *(v131 + 16) = v480;
      *(v131 + 24) = 0;
      v132 = swift_allocObject();
      v133 = v326;
      v341 = v132;
      *(v132 + 16) = v481;
      *(v132 + 24) = v133;
      v342 = swift_allocObject();
      *(v342 + 16) = 0;
      v343 = swift_allocObject();
      *(v343 + 16) = 1;
      v134 = swift_allocObject();
      v135 = v327;
      v328 = v134;
      *(v134 + 16) = v482;
      *(v134 + 24) = v135;
      v136 = swift_allocObject();
      v137 = v328;
      v344 = v136;
      *(v136 + 16) = v483;
      *(v136 + 24) = v137;
      v345 = swift_allocObject();
      *(v345 + 16) = v329;
      v346 = swift_allocObject();
      *(v346 + 16) = v331;
      v138 = swift_allocObject();
      v330 = v138;
      *(v138 + 16) = v484;
      *(v138 + 24) = 0;
      v139 = swift_allocObject();
      v140 = v330;
      v347 = v139;
      *(v139 + 16) = v485;
      *(v139 + 24) = v140;
      v348 = swift_allocObject();
      *(v348 + 16) = 0;
      v349 = swift_allocObject();
      *(v349 + 16) = v331;
      v141 = swift_allocObject();
      v142 = v332;
      v333 = v141;
      *(v141 + 16) = v486;
      *(v141 + 24) = v142;
      v143 = swift_allocObject();
      v144 = v333;
      v350 = v143;
      *(v143 + 16) = v487;
      *(v143 + 24) = v144;
      v351 = swift_allocObject();
      *(v351 + 16) = 0;
      v352 = swift_allocObject();
      *(v352 + 16) = 8;
      v145 = swift_allocObject();
      v146 = v337;
      v338 = v145;
      *(v145 + 16) = v488;
      *(v145 + 24) = v146;
      v147 = swift_allocObject();
      v148 = v338;
      v354 = v147;
      *(v147 + 16) = v489;
      *(v147 + 24) = v148;
      v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v353 = sub_1B0E46A48();
      v355 = v149;

      v150 = v339;
      v151 = v355;
      *v355 = v490;
      v151[1] = v150;

      v152 = v340;
      v153 = v355;
      v355[2] = v491;
      v153[3] = v152;

      v154 = v341;
      v155 = v355;
      v355[4] = v492;
      v155[5] = v154;

      v156 = v342;
      v157 = v355;
      v355[6] = v493;
      v157[7] = v156;

      v158 = v343;
      v159 = v355;
      v355[8] = v494;
      v159[9] = v158;

      v160 = v344;
      v161 = v355;
      v355[10] = v495;
      v161[11] = v160;

      v162 = v345;
      v163 = v355;
      v355[12] = v496;
      v163[13] = v162;

      v164 = v346;
      v165 = v355;
      v355[14] = v497;
      v165[15] = v164;

      v166 = v347;
      v167 = v355;
      v355[16] = v498;
      v167[17] = v166;

      v168 = v348;
      v169 = v355;
      v355[18] = v499;
      v169[19] = v168;

      v170 = v349;
      v171 = v355;
      v355[20] = v500;
      v171[21] = v170;

      v172 = v350;
      v173 = v355;
      v355[22] = v501;
      v173[23] = v172;

      v174 = v351;
      v175 = v355;
      v355[24] = v502;
      v175[25] = v174;

      v176 = v352;
      v177 = v355;
      v355[26] = v503;
      v177[27] = v176;

      v178 = v354;
      v179 = v355;
      v355[28] = v504;
      v179[29] = v178;
      sub_1B0394964();

      if (os_log_type_enabled(v357, v358))
      {
        v180 = v568;
        v315 = sub_1B0E45D78();
        v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v314 = 0;
        v316 = sub_1B03949A8(0, v313, v313);
        v317 = sub_1B03949A8(v314, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v318 = &v618;
        v618 = v315;
        v319 = &v617;
        v617 = v316;
        v320 = &v616;
        v616 = v317;
        sub_1B0394A48(0, &v618);
        sub_1B0394A48(5, v318);
        v614 = v490;
        v615 = v339;
        sub_1B03949FC(&v614, v318, v319, v320);
        v321 = v180;
        if (v180)
        {

          __break(1u);
        }

        else
        {
          v614 = v491;
          v615 = v340;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v311 = 0;
          v614 = v492;
          v615 = v341;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v310 = 0;
          v614 = v493;
          v615 = v342;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v309 = 0;
          v614 = v494;
          v615 = v343;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v308 = 0;
          v614 = v495;
          v615 = v344;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v307 = 0;
          v614 = v496;
          v615 = v345;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v306 = 0;
          v614 = v497;
          v615 = v346;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v305 = 0;
          v614 = v498;
          v615 = v347;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v304 = 0;
          v614 = v499;
          v615 = v348;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v303 = 0;
          v614 = v500;
          v615 = v349;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v302 = 0;
          v614 = v501;
          v615 = v350;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v301 = 0;
          v614 = v502;
          v615 = v351;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v300 = 0;
          v614 = v503;
          v615 = v352;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v299 = 0;
          v614 = v504;
          v615 = v354;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v298 = 0;
          _os_log_impl(&dword_1B0389000, v357, v358, "[%.*hhx-%.*X] Credentials: OAuth will expire in %ld seconds.", v315, 0x21u);
          v297 = 0;
          sub_1B03998A8(v316, 0, v313);
          sub_1B03998A8(v317, v297, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v312 = v298;
        }
      }

      else
      {
        v181 = v568;

        v312 = v181;
      }

      v296 = v312;
      MEMORY[0x1E69E5920](v357);
      (*(v581 + 8))(v586, v580);
      v423 = v296;
    }
  }

  v295 = v423;
  if (sub_1B070616C(v591))
  {
    (*(v581 + 16))(v584, v591, v580);
    sub_1B0394784(v591, v578);
    sub_1B0394784(v578, v576);
    sub_1B03F4FD0(v578, v574);
    v182 = (v576 + *(v569 + 20));
    v264 = *v182;
    v265 = *(v182 + 1);
    sub_1B039480C(v576);
    v263 = 24;
    v275 = 7;
    v183 = swift_allocObject();
    v184 = v265;
    v268 = v183;
    *(v183 + 16) = v264;
    *(v183 + 20) = v184;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v185 = swift_allocObject();
    v186 = v265;
    v266 = v185;
    *(v185 + 16) = v264;
    *(v185 + 20) = v186;

    v274 = 32;
    v187 = swift_allocObject();
    v188 = v266;
    v276 = v187;
    *(v187 + 16) = v548;
    *(v187 + 24) = v188;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v574);
    v293 = sub_1B0E43988();
    v294 = sub_1B0E45908();
    v272 = 17;
    v278 = swift_allocObject();
    v270 = 16;
    *(v278 + 16) = 16;
    v279 = swift_allocObject();
    v273 = 4;
    *(v279 + 16) = 4;
    v189 = swift_allocObject();
    v267 = v189;
    *(v189 + 16) = v480;
    *(v189 + 24) = 0;
    v190 = swift_allocObject();
    v191 = v267;
    v280 = v190;
    *(v190 + 16) = v549;
    *(v190 + 24) = v191;
    v281 = swift_allocObject();
    *(v281 + 16) = 0;
    v282 = swift_allocObject();
    *(v282 + 16) = 1;
    v192 = swift_allocObject();
    v193 = v268;
    v269 = v192;
    *(v192 + 16) = v550;
    *(v192 + 24) = v193;
    v194 = swift_allocObject();
    v195 = v269;
    v283 = v194;
    *(v194 + 16) = v551;
    *(v194 + 24) = v195;
    v284 = swift_allocObject();
    *(v284 + 16) = v270;
    v285 = swift_allocObject();
    *(v285 + 16) = v273;
    v196 = swift_allocObject();
    v271 = v196;
    *(v196 + 16) = v484;
    *(v196 + 24) = 0;
    v197 = swift_allocObject();
    v198 = v271;
    v286 = v197;
    *(v197 + 16) = v552;
    *(v197 + 24) = v198;
    v287 = swift_allocObject();
    *(v287 + 16) = 0;
    v288 = swift_allocObject();
    *(v288 + 16) = v273;
    v199 = swift_allocObject();
    v200 = v276;
    v277 = v199;
    *(v199 + 16) = v553;
    *(v199 + 24) = v200;
    v201 = swift_allocObject();
    v202 = v277;
    v290 = v201;
    *(v201 + 16) = v554;
    *(v201 + 24) = v202;
    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v289 = sub_1B0E46A48();
    v291 = v203;

    v204 = v278;
    v205 = v291;
    *v291 = v555;
    v205[1] = v204;

    v206 = v279;
    v207 = v291;
    v291[2] = v556;
    v207[3] = v206;

    v208 = v280;
    v209 = v291;
    v291[4] = v557;
    v209[5] = v208;

    v210 = v281;
    v211 = v291;
    v291[6] = v558;
    v211[7] = v210;

    v212 = v282;
    v213 = v291;
    v291[8] = v559;
    v213[9] = v212;

    v214 = v283;
    v215 = v291;
    v291[10] = v560;
    v215[11] = v214;

    v216 = v284;
    v217 = v291;
    v291[12] = v561;
    v217[13] = v216;

    v218 = v285;
    v219 = v291;
    v291[14] = v562;
    v219[15] = v218;

    v220 = v286;
    v221 = v291;
    v291[16] = v563;
    v221[17] = v220;

    v222 = v287;
    v223 = v291;
    v291[18] = v564;
    v223[19] = v222;

    v224 = v288;
    v225 = v291;
    v291[20] = v565;
    v225[21] = v224;

    v226 = v290;
    v227 = v291;
    v291[22] = v566;
    v227[23] = v226;
    sub_1B0394964();

    if (os_log_type_enabled(v293, v294))
    {
      v228 = v295;
      v256 = sub_1B0E45D78();
      v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v255 = 0;
      v257 = sub_1B03949A8(0, v254, v254);
      v258 = sub_1B03949A8(v255, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v259 = &v623;
      v623 = v256;
      v260 = &v622;
      v622 = v257;
      v261 = &v621;
      v621 = v258;
      sub_1B0394A48(0, &v623);
      sub_1B0394A48(4, v259);
      v619 = v555;
      v620 = v278;
      sub_1B03949FC(&v619, v259, v260, v261);
      v262 = v228;
      if (v228)
      {

        __break(1u);
      }

      else
      {
        v619 = v556;
        v620 = v279;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v253 = 0;
        v619 = v557;
        v620 = v280;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v252 = 0;
        v619 = v558;
        v620 = v281;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v251 = 0;
        v619 = v559;
        v620 = v282;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v250 = 0;
        v619 = v560;
        v620 = v283;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v249 = 0;
        v619 = v561;
        v620 = v284;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v248 = 0;
        v619 = v562;
        v620 = v285;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v247 = 0;
        v619 = v563;
        v620 = v286;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v246 = 0;
        v619 = v564;
        v620 = v287;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v245 = 0;
        v619 = v565;
        v620 = v288;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v244 = 0;
        v619 = v566;
        v620 = v290;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        _os_log_impl(&dword_1B0389000, v293, v294, "[%.*hhx-%.*X] Credentials: Renewing OAuth credentials.", v256, 0x17u);
        v243 = 0;
        sub_1B03998A8(v257, 0, v254);
        sub_1B03998A8(v258, v243, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v293);
    (*(v581 + 8))(v584, v580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
    sub_1B0E46A48();
    v236[1] = MEMORY[0x1E69E69B8];
    v236[2] = (MEMORY[0x1E69E7CA0] + 8);
    v236[3] = MEMORY[0x1E69E69C0];
    v236[4] = sub_1B0E445D8();
    v242 = sub_1B0E44598();

    sub_1B0394784(v591, v578);

    MEMORY[0x1E69E5928](v478);
    v237 = (*(v571 + 80) + 16) & ~*(v571 + 80);
    v238 = (v237 + v572 + 7) & 0xFFFFFFFFFFFFFFF8;
    v239 = (v238 + 23) & 0xFFFFFFFFFFFFFFF8;
    v240 = swift_allocObject();
    sub_1B03F4FD0(v578, v240 + v237);
    v229 = v592;
    v230 = v239;
    v231 = v567;
    v232 = v240;
    v233 = v478;
    v234 = (v240 + v238);
    *v234 = v593;
    v234[1] = v229;
    *(v232 + v230) = v233;
    v629 = v231;
    v630 = v232;
    aBlock = MEMORY[0x1E69E9820];
    v625 = 1107296256;
    v626 = 0;
    v627 = sub_1B06F38E8;
    v628 = &block_descriptor_1211;
    v241 = _Block_copy(&aBlock);

    [v478 renewCredentialsWithOptions:v242 completion:v241];
    _Block_release(v241);
    return MEMORY[0x1E69E5920](v242);
  }

  else
  {

    v236[0] = v640;
    sub_1B0708E54(v591, v640);
    v593(v236[0]);
    sub_1B070B568(v236[0]);
  }
}

uint64_t sub_1B06FC2B8(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v141 = a1;
  v143 = a2;
  v142 = a3;
  v112 = sub_1B070B994;
  v113 = sub_1B039BBE8;
  v114 = sub_1B0394C30;
  v115 = sub_1B0394C24;
  v116 = sub_1B039BA2C;
  v117 = sub_1B039BA88;
  v118 = sub_1B039BB94;
  v119 = sub_1B0394C24;
  v120 = sub_1B039BBA0;
  v121 = sub_1B039BC08;
  v122 = sub_1B0398F5C;
  v123 = sub_1B0398F5C;
  v124 = sub_1B0399178;
  v125 = sub_1B0398F5C;
  v126 = sub_1B0398F5C;
  v127 = sub_1B039BA94;
  v128 = sub_1B0398F5C;
  v129 = sub_1B0398F5C;
  v130 = sub_1B0399178;
  v131 = sub_1B0398F5C;
  v132 = sub_1B0398F5C;
  v133 = sub_1B03991EC;
  v171 = 0;
  v172 = 0;
  v170 = 0;
  v169 = 0;
  v134 = 0;
  v163 = 0;
  v135 = 0;
  v136 = sub_1B0E439A8();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v140 = v62 - v139;
  v144 = _s6LoggerVMa(v3);
  v145 = *(v144 - 8);
  v146 = v145;
  v150 = *(v145 + 64);
  v147 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v154);
  v148 = v62 - v147;
  v149 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v151 = v62 - v149;
  v152 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v153 = v62 - v152;
  v171 = v6;
  v172 = v7;
  v170 = v8;
  v169 = v9;
  MEMORY[0x1E69E5928](v9);
  objc_opt_self();
  v155 = swift_dynamicCastObjCClass();
  if (v155)
  {
    v111 = v155;
  }

  else
  {
    MEMORY[0x1E69E5920](v154);
    v111 = 0;
  }

  v110 = v111;
  if (v111)
  {
    v109 = v110;
    v108 = v110;
    v163 = v110;
    sub_1B0394784(v142, v153);

    v104 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v105 = (v104 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
    v106 = swift_allocObject();
    sub_1B03F4FD0(v153, v106 + v104);
    v10 = v143;
    v11 = v112;
    v12 = v106;
    v13 = (v106 + v105);
    *v13 = v141;
    v13[1] = v10;
    v161 = v11;
    v162 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v157 = 1107296256;
    v158 = 0;
    v159 = sub_1B0705908;
    v160 = &block_descriptor_1464;
    v107 = _Block_copy(&aBlock);

    [v108 appleID2AuthWithCompletion_];
    _Block_release(v107);
    return MEMORY[0x1E69E5920](v108);
  }

  else
  {
    (*(v137 + 16))(v140, v142, v136);
    sub_1B0394784(v142, v153);
    sub_1B0394784(v153, v151);
    sub_1B03F4FD0(v153, v148);
    v15 = (v151 + *(v144 + 20));
    v73 = *v15;
    v74 = *(v15 + 1);
    sub_1B039480C(v151);
    v72 = 24;
    v84 = 7;
    v16 = swift_allocObject();
    v17 = v74;
    v77 = v16;
    *(v16 + 16) = v73;
    *(v16 + 20) = v17;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v18 = swift_allocObject();
    v19 = v74;
    v75 = v18;
    *(v18 + 16) = v73;
    *(v18 + 20) = v19;

    v83 = 32;
    v20 = swift_allocObject();
    v21 = v75;
    v85 = v20;
    *(v20 + 16) = v113;
    *(v20 + 24) = v21;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v148);
    v102 = sub_1B0E43988();
    v103 = sub_1B0E458E8();
    v81 = 17;
    v87 = swift_allocObject();
    v79 = 16;
    *(v87 + 16) = 16;
    v88 = swift_allocObject();
    v82 = 4;
    *(v88 + 16) = 4;
    v22 = swift_allocObject();
    v76 = v22;
    *(v22 + 16) = v114;
    *(v22 + 24) = 0;
    v23 = swift_allocObject();
    v24 = v76;
    v89 = v23;
    *(v23 + 16) = v115;
    *(v23 + 24) = v24;
    v90 = swift_allocObject();
    *(v90 + 16) = 0;
    v91 = swift_allocObject();
    *(v91 + 16) = 1;
    v25 = swift_allocObject();
    v26 = v77;
    v78 = v25;
    *(v25 + 16) = v116;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v78;
    v92 = v27;
    *(v27 + 16) = v117;
    *(v27 + 24) = v28;
    v93 = swift_allocObject();
    *(v93 + 16) = v79;
    v94 = swift_allocObject();
    *(v94 + 16) = v82;
    v29 = swift_allocObject();
    v80 = v29;
    *(v29 + 16) = v118;
    *(v29 + 24) = 0;
    v30 = swift_allocObject();
    v31 = v80;
    v95 = v30;
    *(v30 + 16) = v119;
    *(v30 + 24) = v31;
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v82;
    v32 = swift_allocObject();
    v33 = v85;
    v86 = v32;
    *(v32 + 16) = v120;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v86;
    v99 = v34;
    *(v34 + 16) = v121;
    *(v34 + 24) = v35;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v98 = sub_1B0E46A48();
    v100 = v36;

    v37 = v87;
    v38 = v100;
    *v100 = v122;
    v38[1] = v37;

    v39 = v88;
    v40 = v100;
    v100[2] = v123;
    v40[3] = v39;

    v41 = v89;
    v42 = v100;
    v100[4] = v124;
    v42[5] = v41;

    v43 = v90;
    v44 = v100;
    v100[6] = v125;
    v44[7] = v43;

    v45 = v91;
    v46 = v100;
    v100[8] = v126;
    v46[9] = v45;

    v47 = v92;
    v48 = v100;
    v100[10] = v127;
    v48[11] = v47;

    v49 = v93;
    v50 = v100;
    v100[12] = v128;
    v50[13] = v49;

    v51 = v94;
    v52 = v100;
    v100[14] = v129;
    v52[15] = v51;

    v53 = v95;
    v54 = v100;
    v100[16] = v130;
    v54[17] = v53;

    v55 = v96;
    v56 = v100;
    v100[18] = v131;
    v56[19] = v55;

    v57 = v97;
    v58 = v100;
    v100[20] = v132;
    v58[21] = v57;

    v59 = v99;
    v60 = v100;
    v100[22] = v133;
    v60[23] = v59;
    sub_1B0394964();

    if (os_log_type_enabled(v102, v103))
    {
      v61 = v134;
      v65 = sub_1B0E45D78();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v64 = 0;
      v66 = sub_1B03949A8(0, v63, v63);
      v67 = sub_1B03949A8(v64, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v68 = &v168;
      v168 = v65;
      v69 = &v167;
      v167 = v66;
      v70 = &v166;
      v166 = v67;
      sub_1B0394A48(0, &v168);
      sub_1B0394A48(4, v68);
      v164 = v122;
      v165 = v87;
      sub_1B03949FC(&v164, v68, v69, v70);
      v71 = v61;
      if (v61)
      {

        __break(1u);
      }

      else
      {
        v164 = v123;
        v165 = v88;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[10] = 0;
        v164 = v124;
        v165 = v89;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[9] = 0;
        v164 = v125;
        v165 = v90;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[8] = 0;
        v164 = v126;
        v165 = v91;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[7] = 0;
        v164 = v127;
        v165 = v92;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[6] = 0;
        v164 = v128;
        v165 = v93;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[5] = 0;
        v164 = v129;
        v165 = v94;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[4] = 0;
        v164 = v130;
        v165 = v95;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[3] = 0;
        v164 = v131;
        v165 = v96;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[2] = 0;
        v164 = v132;
        v165 = v97;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        v62[1] = 0;
        v164 = v133;
        v165 = v99;
        sub_1B03949FC(&v164, &v168, &v167, &v166);
        _os_log_impl(&dword_1B0389000, v102, v103, "[%.*hhx-%.*X] Credentials: Trying to Apple Token 2 for non iCloud account.", v65, 0x17u);
        v62[0] = 0;
        sub_1B03998A8(v66, 0, v63);
        sub_1B03998A8(v67, v62[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v102);
    (*(v137 + 8))(v140, v136);

    sub_1B0701190(v141, v143, v142);
  }
}

uint64_t sub_1B06FD86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v177 = a1;
  v176 = a2;
  v173 = a3;
  v174 = a4;
  v192 = a5;
  v175 = a6;
  v126 = sub_1B039BBE8;
  v127 = sub_1B0394C30;
  v128 = sub_1B0394C24;
  v129 = sub_1B039BA2C;
  v130 = sub_1B039BA88;
  v131 = sub_1B039BB94;
  v132 = sub_1B0394C24;
  v133 = sub_1B039BBA0;
  v134 = sub_1B039BC08;
  v135 = sub_1B0398F5C;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0399178;
  v138 = sub_1B0398F5C;
  v139 = sub_1B0398F5C;
  v140 = sub_1B039BA94;
  v141 = sub_1B0398F5C;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0399178;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B03991EC;
  v147 = sub_1B070BAB8;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v148 = 0;
  v171 = 0;
  v149 = sub_1B0E44238();
  v150 = *(v149 - 8);
  v151 = v149 - 8;
  v152 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v153 = &v72 - v152;
  v154 = sub_1B0E44288();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v158 = &v72 - v157;
  v159 = _s6LoggerVMa(v7);
  v160 = (*(*(v159 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v161 = &v72 - v160;
  v162 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v163 = &v72 - v162;
  v164 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v72 - v164;
  v166 = sub_1B0E439A8();
  v167 = *(v166 - 8);
  v168 = v166 - 8;
  v169 = (*(v167 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v72 - v169;
  v184 = sub_1B0E44208();
  v181 = *(v184 - 8);
  v182 = v184 - 8;
  v172 = (*(v181 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v183 = (&v72 - v172);
  v188 = sub_1B0E44418();
  v185 = *(v188 - 8);
  v186 = v188 - 8;
  v179 = *(v185 + 64);
  v178 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v177);
  v187 = &v72 - v178;
  v180 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v191 = &v72 - v180;
  v212 = &v72 - v180;
  v211 = v13;
  v210 = v14;
  v208 = v15;
  v209 = v16;
  v206 = a5;
  v207 = v17;
  sub_1B0E44408();
  v18 = v181;
  *v183 = 60;
  (*(v18 + 104))();
  MEMORY[0x1B2726590](v187, v183);
  (*(v181 + 8))(v183, v184);
  v189 = *(v185 + 8);
  v190 = v185 + 8;
  v189(v187, v188);
  MEMORY[0x1E69E5928](a5);
  v193 = sub_1B0E45978();
  MEMORY[0x1E69E5920](v192);
  if (v193)
  {
    (*(v167 + 16))(v170, v176, v166);
    sub_1B0394784(v176, v165);
    sub_1B0394784(v165, v163);
    sub_1B03F4FD0(v165, v161);
    v19 = (v163 + *(v159 + 20));
    v95 = *v19;
    v96 = *(v19 + 1);
    sub_1B039480C(v163);
    v94 = 24;
    v106 = 7;
    v20 = swift_allocObject();
    v21 = v96;
    v99 = v20;
    *(v20 + 16) = v95;
    *(v20 + 20) = v21;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = swift_allocObject();
    v23 = v96;
    v97 = v22;
    *(v22 + 16) = v95;
    *(v22 + 20) = v23;

    v105 = 32;
    v24 = swift_allocObject();
    v25 = v97;
    v107 = v24;
    *(v24 + 16) = v126;
    *(v24 + 24) = v25;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v161);
    v124 = sub_1B0E43988();
    v125 = sub_1B0E458E8();
    v103 = 17;
    v109 = swift_allocObject();
    v101 = 16;
    *(v109 + 16) = 16;
    v110 = swift_allocObject();
    v104 = 4;
    *(v110 + 16) = 4;
    v26 = swift_allocObject();
    v98 = v26;
    *(v26 + 16) = v127;
    *(v26 + 24) = 0;
    v27 = swift_allocObject();
    v28 = v98;
    v111 = v27;
    *(v27 + 16) = v128;
    *(v27 + 24) = v28;
    v112 = swift_allocObject();
    *(v112 + 16) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = 1;
    v29 = swift_allocObject();
    v30 = v99;
    v100 = v29;
    *(v29 + 16) = v129;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v100;
    v114 = v31;
    *(v31 + 16) = v130;
    *(v31 + 24) = v32;
    v115 = swift_allocObject();
    *(v115 + 16) = v101;
    v116 = swift_allocObject();
    *(v116 + 16) = v104;
    v33 = swift_allocObject();
    v102 = v33;
    *(v33 + 16) = v131;
    *(v33 + 24) = 0;
    v34 = swift_allocObject();
    v35 = v102;
    v117 = v34;
    *(v34 + 16) = v132;
    *(v34 + 24) = v35;
    v118 = swift_allocObject();
    *(v118 + 16) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v104;
    v36 = swift_allocObject();
    v37 = v107;
    v108 = v36;
    *(v36 + 16) = v133;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v108;
    v121 = v38;
    *(v38 + 16) = v134;
    *(v38 + 24) = v39;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v120 = sub_1B0E46A48();
    v122 = v40;

    v41 = v109;
    v42 = v122;
    *v122 = v135;
    v42[1] = v41;

    v43 = v110;
    v44 = v122;
    v122[2] = v136;
    v44[3] = v43;

    v45 = v111;
    v46 = v122;
    v122[4] = v137;
    v46[5] = v45;

    v47 = v112;
    v48 = v122;
    v122[6] = v138;
    v48[7] = v47;

    v49 = v113;
    v50 = v122;
    v122[8] = v139;
    v50[9] = v49;

    v51 = v114;
    v52 = v122;
    v122[10] = v140;
    v52[11] = v51;

    v53 = v115;
    v54 = v122;
    v122[12] = v141;
    v54[13] = v53;

    v55 = v116;
    v56 = v122;
    v122[14] = v142;
    v56[15] = v55;

    v57 = v117;
    v58 = v122;
    v122[16] = v143;
    v58[17] = v57;

    v59 = v118;
    v60 = v122;
    v122[18] = v144;
    v60[19] = v59;

    v61 = v119;
    v62 = v122;
    v122[20] = v145;
    v62[21] = v61;

    v63 = v121;
    v64 = v122;
    v122[22] = v146;
    v64[23] = v63;
    sub_1B0394964();

    if (os_log_type_enabled(v124, v125))
    {
      v65 = v148;
      v87 = sub_1B0E45D78();
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v86 = 0;
      v88 = sub_1B03949A8(0, v85, v85);
      v89 = sub_1B03949A8(v86, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v90 = &v198;
      v198 = v87;
      v91 = &v197;
      v197 = v88;
      v92 = &v196;
      v196 = v89;
      sub_1B0394A48(0, &v198);
      sub_1B0394A48(4, v90);
      v194 = v135;
      v195 = v109;
      sub_1B03949FC(&v194, v90, v91, v92);
      v93 = v65;
      if (v65)
      {

        __break(1u);
      }

      else
      {
        v194 = v136;
        v195 = v110;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v84 = 0;
        v194 = v137;
        v195 = v111;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v83 = 0;
        v194 = v138;
        v195 = v112;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v82 = 0;
        v194 = v139;
        v195 = v113;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v81 = 0;
        v194 = v140;
        v195 = v114;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v80 = 0;
        v194 = v141;
        v195 = v115;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v79 = 0;
        v194 = v142;
        v195 = v116;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v78 = 0;
        v194 = v143;
        v195 = v117;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v77 = 0;
        v194 = v144;
        v195 = v118;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v76 = 0;
        v194 = v145;
        v195 = v119;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v75 = 0;
        v194 = v146;
        v195 = v121;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        _os_log_impl(&dword_1B0389000, v124, v125, "[%.*hhx-%.*X] Timed out waiting for credentials.", v87, 0x17u);
        v74 = 0;
        sub_1B03998A8(v88, 0, v85);
        sub_1B03998A8(v89, v74, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v124);
    (*(v167 + 8))(v170, v166);
  }

  MEMORY[0x1E69E5928](v192);

  v66 = swift_allocObject();
  v67 = v175;
  v68 = v173;
  v69 = v174;
  v70 = v147;
  v66[2] = v192;
  v66[3] = v67;
  v66[4] = v68;
  v66[5] = v69;
  v204 = v70;
  v205 = v66;
  aBlock = MEMORY[0x1E69E9820];
  v200 = 1107296256;
  v201 = 0;
  v202 = sub_1B038C908;
  v203 = &block_descriptor_1546;
  v73 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v158, v153, v73);
  (*(v150 + 8))(v153, v149);
  (*(v155 + 8))(v158, v154);
  _Block_release(v73);

  return (v189)(v191, v188);
}

unint64_t sub_1B06FF124()
{
  v2 = qword_1EB6DA870;
  if (!qword_1EB6DA870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA870);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06FF188()
{
  v2 = qword_1EB6DA880;
  if (!qword_1EB6DA880)
  {
    sub_1B0E45C58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF210()
{
  v2 = qword_1EB6DBE18;
  if (!qword_1EB6DBE18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF28C()
{
  v2 = qword_1EB6DCCC8;
  if (!qword_1EB6DCCC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCCC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF304()
{
  v2 = qword_1EB6E1900;
  if (!qword_1EB6E1900)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF380()
{
  v2 = qword_1EB6E1908;
  if (!qword_1EB6E1908)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1908);
    return WitnessTable;
  }

  return v2;
}