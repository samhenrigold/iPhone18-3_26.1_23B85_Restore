uint64_t sub_100001640()
{
  v0 = sub_100015804();
  sub_100013558(v0, qword_1000208A8);
  sub_100009FC4(v0, qword_1000208A8);
  return sub_1000157F4();
}

uint64_t sub_1000016C0@<X0>(int a1@<W0>, void (*a2)(char *, uint64_t)@<X8>)
{
  v374 = a1;
  v396 = a2;
  v354 = sub_100015C54();
  v356 = *(v354 - 8);
  __chkstk_darwin(v354);
  v353 = &v324 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = sub_1000157B4();
  v358 = *(v371 - 8);
  __chkstk_darwin(v371);
  v370 = &v324 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = sub_1000158A4();
  v375 = *(v383 - 8);
  v4 = __chkstk_darwin(v383);
  v367 = &v324 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v369 = &v324 - v7;
  __chkstk_darwin(v6);
  v384 = &v324 - v8;
  v389 = sub_100015804();
  v388 = *(v389 - 8);
  v9 = __chkstk_darwin(v389);
  v348 = &v324 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v341 = &v324 - v12;
  v13 = __chkstk_darwin(v11);
  v339 = &v324 - v14;
  v15 = __chkstk_darwin(v13);
  v342 = &v324 - v16;
  v17 = __chkstk_darwin(v15);
  v343 = &v324 - v18;
  v19 = __chkstk_darwin(v17);
  v344 = &v324 - v20;
  v21 = __chkstk_darwin(v19);
  v345 = &v324 - v22;
  v23 = __chkstk_darwin(v21);
  v355 = &v324 - v24;
  v25 = __chkstk_darwin(v23);
  v357 = &v324 - v26;
  v27 = __chkstk_darwin(v25);
  v347 = &v324 - v28;
  v29 = __chkstk_darwin(v27);
  v352 = &v324 - v30;
  v31 = __chkstk_darwin(v29);
  v379 = &v324 - v32;
  v33 = __chkstk_darwin(v31);
  v362 = &v324 - v34;
  v35 = __chkstk_darwin(v33);
  v376 = &v324 - v36;
  v37 = __chkstk_darwin(v35);
  v366 = &v324 - v38;
  v39 = __chkstk_darwin(v37);
  v377 = &v324 - v40;
  v41 = __chkstk_darwin(v39);
  v368 = &v324 - v42;
  v43 = __chkstk_darwin(v41);
  v373 = (&v324 - v44);
  v45 = __chkstk_darwin(v43);
  v381 = &v324 - v46;
  __chkstk_darwin(v45);
  v387 = &v324 - v47;
  v48 = sub_100009860(&qword_100020708, &qword_100016588);
  v49 = __chkstk_darwin(v48 - 8);
  v351 = &v324 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v365 = &v324 - v52;
  v53 = __chkstk_darwin(v51);
  v359 = &v324 - v54;
  __chkstk_darwin(v53);
  v391 = &v324 - v55;
  v56 = sub_100015794();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v324 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = sub_1000156D4();
  v394 = *(v399 - 8);
  v60 = __chkstk_darwin(v399);
  v346 = &v324 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v340 = &v324 - v63;
  v64 = __chkstk_darwin(v62);
  v350 = &v324 - v65;
  v66 = __chkstk_darwin(v64);
  v361 = &v324 - v67;
  v68 = __chkstk_darwin(v66);
  v360 = &v324 - v69;
  v70 = __chkstk_darwin(v68);
  v364 = &v324 - v71;
  v72 = __chkstk_darwin(v70);
  v382 = &v324 - v73;
  v74 = __chkstk_darwin(v72);
  v378 = &v324 - v75;
  v76 = __chkstk_darwin(v74);
  v380 = &v324 - v77;
  __chkstk_darwin(v76);
  v390 = &v324 - v78;
  v393 = sub_100015BC4();
  v395 = *(v393 - 8);
  v79 = __chkstk_darwin(v393);
  v349 = &v324 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v79);
  v363 = &v324 - v82;
  v83 = __chkstk_darwin(v81);
  v372 = &v324 - v84;
  __chkstk_darwin(v83);
  v86 = &v324 - v85;
  sub_100015A54();
  sub_100015664();
  v397 = 0;
  v398 = 0xE000000000000000;
  sub_100015F24(23);

  v397 = 0xD000000000000015;
  v398 = 0x8000000100016C30;
  sub_100015784();
  v87 = [objc_allocWithZone(NSDateFormatter) init];
  v88 = sub_100015C94();
  [v87 setDateFormat:v88];

  isa = sub_100015754().super.isa;
  v90 = [v87 stringFromDate:isa];

  v91 = sub_100015CC4();
  v93 = v92;

  (*(v57 + 8))(v59, v56);
  v400._countAndFlagsBits = v91;
  v400._object = v93;
  sub_100015D24(v400);

  v94 = sub_100015844();
  v95 = *(v94 - 8);
  v96 = *(v95 + 56);
  v97 = v95 + 56;
  v98 = v391;
  v96(v391, 1, 1, v94);
  v99 = v86;
  v100 = v390;
  v101 = v98;
  v102 = v392;
  sub_100015B94();
  if (v102)
  {

    sub_1000132C0(v98, &qword_100020708, &qword_100016588);
    (*(v394 + 8))(v100, v399);
    return (*(v395 + 8))(v99, v393);
  }

  v104 = v387;
  v338 = 0;
  v332 = v97;
  v333 = v96;
  v334 = v94;

  sub_1000132C0(v101, &qword_100020708, &qword_100016588);
  v105 = v394;
  v106 = v399;
  v385 = *(v394 + 8);
  v386 = v394 + 8;
  v385(v100, v399);
  v107 = *(v395 + 8);
  v395 += 8;
  v335 = v107;
  v107(v99, v393);
  if (qword_1000204B0 != -1)
  {
    swift_once();
  }

  v108 = v389;
  v109 = sub_100009FC4(v389, qword_1000208A8);
  v110 = v388;
  v111 = *(v388 + 2);
  v390 = v109;
  v391 = v388 + 16;
  v392 = v111;
  v111(v104);
  v112 = *(v105 + 16);
  v113 = v380;
  v337 = v105 + 16;
  v336 = v112;
  v112(v380, v396, v106);
  v114 = sub_1000157E4();
  v115 = sub_100015E14();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = v108;
    v117 = v105;
    v118 = swift_slowAlloc();
    v119 = v113;
    v120 = swift_slowAlloc();
    v397 = v120;
    *v118 = 136315138;
    v121 = sub_1000156C4();
    v123 = v122;
    v385(v119, v399);
    v124 = sub_100013AAC(v121, v123, &v397);
    v106 = v399;

    *(v118 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v114, v115, "Creating voicebanking diagnose in %s", v118, 0xCu);
    sub_100012FE4(v120);

    v105 = v117;
    v110 = v388;
    v108 = v116;

    v125 = *(v110 + 1);
    v125(v387, v116);
  }

  else
  {

    v385(v113, v106);
    v125 = *(v110 + 1);
    v125(v104, v108);
  }

  v126 = v381;
  (v392)(v381, v390, v108);
  v127 = sub_1000157E4();
  v128 = sub_100015E14();
  v129 = os_log_type_enabled(v127, v128);
  v388 = v125;
  if (v129)
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&_mh_execute_header, v127, v128, "Will fetch voices", v130, 2u);
    v125 = v388;
  }

  v131 = v110 + 8;
  v125(v126, v108);
  v132 = type metadata accessor for VoiceBankingDiagnosticHelper.SyncBox(0);
  v133 = swift_allocObject();
  v133[2] = &_swiftEmptyArrayStorage;
  v133[3] = &_swiftEmptyArrayStorage;
  v133[4] = &_swiftEmptyArrayStorage;
  v133[5] = &_swiftEmptyArrayStorage;
  v136 = *(v105 + 56);
  v135 = v105 + 56;
  v134 = v136;
  v136(v133 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_url, 1, 1, v106);
  v137 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error;
  *(v133 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error) = 0;
  v138 = v106;
  v139 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore;
  *(v133 + v139) = dispatch_semaphore_create(0);
  sub_100005574();

  sub_1000158D4();

  v140 = *(v133 + v139);
  sub_100015E34();

  if (*(v133 + v137))
  {
    swift_willThrow();
    swift_errorRetain();

    v141 = v396;
    return (v385)(v141, v138);
  }

  v331 = v134;
  v329 = v132;
  v394 = v135;
  v387 = v131;
  v142 = v133[2];

  v143 = v373;
  v144 = v389;
  (v392)(v373, v390, v389);

  v145 = sub_1000157E4();
  v146 = sub_100015E14();
  v147 = os_log_type_enabled(v145, v146);
  v380 = v142;
  if (v147)
  {
    v148 = swift_slowAlloc();
    *v148 = 134217984;
    *(v148 + 4) = *(v142 + 16);

    _os_log_impl(&_mh_execute_header, v145, v146, "Did fetch %ld voices", v148, 0xCu);
  }

  else
  {
  }

  v149 = v383;
  v150 = v331;
  v151 = &VoiceBankingDiagnosticHelper;
  v152 = v388;
  (v388)(v143, v144);
  v153 = v396;
  v154 = v372;
  if (v374)
  {
    sub_100015A54();
    v155 = v359;
    v333(v359, 1, 1, v334);
    v156 = v338;
    sub_100015B94();
    if (v156)
    {

      sub_1000132C0(v155, &qword_100020708, &qword_100016588);
      v335(v154, v393);
      return (v385)(v153, v399);
    }

    v338 = 0;
    sub_1000132C0(v155, &qword_100020708, &qword_100016588);
    v335(v154, v393);
    v326 = *(v380 + 16);
    if (v326)
    {
      v164 = v375;
      v327 = v380 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
      v359 = (v375 + 16);
      v373 = (v375 + 8);
      v328 = (v358 + 8);
      v165 = 0;
      *&v163 = 136315138;
      v324 = v163;
      *&v163 = 136315394;
      v325 = v163;
      while (v165 < *(v380 + 16))
      {
        v167 = *(v164 + 72);
        v330 = v165;
        v168 = v327 + v167 * v165;
        v169 = *(v164 + 16);
        v170 = v384;
        v169(v384, v168, v149);
        v171 = v368;
        v172 = v144;
        (v392)(v368, v390, v144);
        v173 = v369;
        v358 = v169;
        v169(v369, v170, v149);
        v174 = sub_1000157E4();
        v175 = sub_100015E14();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = v173;
          v178 = v149;
          v179 = swift_slowAlloc();
          v397 = v179;
          *v176 = v324;
          v180 = v171;
          v181 = sub_100015884();
          v183 = v182;
          v184 = v177;
          v185 = v384;
          v372 = *v373;
          (v372)(v184, v178);
          v186 = v181;
          v170 = v185;
          v187 = sub_100013AAC(v186, v183, &v397);
          v188 = v389;

          *(v176 + 4) = v187;
          _os_log_impl(&_mh_execute_header, v174, v175, "Will export training data for voice: %s", v176, 0xCu);
          sub_100012FE4(v179);

          (v388)(v180, v188);
          v189 = v371;
          v190 = v370;
          v191 = v377;
        }

        else
        {

          v372 = *v373;
          (v372)(v173, v149);
          v152(v171, v172);
          v189 = v371;
          v190 = v370;
          v191 = v377;
          v188 = v172;
        }

        v192 = v190;
        sub_100015874();
        v193 = v382;
        v194 = v338;
        sub_1000045F8(v382);
        if (v194)
        {

          (*v328)(v192, v189);
          (v372)(v170, v383);
          v263 = v399;
          v264 = v385;
          v385(v378, v399);
          return (v264)(v396, v263);
        }

        v381 = 0;
        (*v328)(v192, v189);
        (v392)(v191, v390, v188);
        v195 = v367;
        v196 = v383;
        v358(v367, v170, v383);
        v197 = v364;
        v198 = v193;
        v199 = v399;
        v336(v364, v198, v399);
        v200 = v191;
        v201 = sub_1000157E4();
        v202 = sub_100015E14();
        if (os_log_type_enabled(v201, v202))
        {
          v203 = swift_slowAlloc();
          v397 = swift_slowAlloc();
          *v203 = v325;
          v204 = sub_100015884();
          v206 = v205;
          (v372)(v195, v196);
          v207 = sub_100013AAC(v204, v206, &v397);

          *(v203 + 4) = v207;
          *(v203 + 12) = 2080;
          v208 = sub_1000156C4();
          v210 = v209;
          v385(v197, v399);
          v211 = sub_100013AAC(v208, v210, &v397);
          v188 = v389;

          *(v203 + 14) = v211;
          _os_log_impl(&_mh_execute_header, v201, v202, "Did export training data for voice: %s. URL=%s", v203, 0x16u);
          swift_arrayDestroy();

          v212 = v377;
        }

        else
        {

          v385(v197, v199);
          (v372)(v195, v196);
          v212 = v200;
        }

        v213 = v388;
        (v388)(v212, v188);
        v214 = v363;
        v215 = v366;
        v216 = v393;
        (v392)(v366, v390, v188);
        v217 = sub_1000157E4();
        v218 = sub_100015E14();
        v219 = os_log_type_enabled(v217, v218);
        v220 = v381;
        if (v219)
        {
          v221 = swift_slowAlloc();
          *v221 = 0;
          _os_log_impl(&_mh_execute_header, v217, v218, "Will move training data export to voicediagnose", v221, 2u);
        }

        v213(v215, v188);
        sub_100015A54();
        v222 = v365;
        v333(v365, 1, 1, v334);
        v223 = v382;
        v224 = v378;
        sub_100015BB4();
        v381 = v220;
        if (v220)
        {

          sub_1000132C0(v222, &qword_100020708, &qword_100016588);
          v335(v214, v216);
          v265 = v399;
          v266 = v385;
          v385(v223, v399);
          (v372)(v384, v383);
          v266(v224, v265);
          return (v266)(v396, v265);
        }

        sub_1000132C0(v222, &qword_100020708, &qword_100016588);
        v335(v214, v216);
        v225 = v376;
        (v392)(v376, v390, v188);
        v226 = v360;
        v227 = v399;
        v228 = v336;
        v336(v360, v223, v399);
        v229 = v361;
        v228(v361, v224, v227);
        v230 = sub_1000157E4();
        v231 = sub_100015E14();
        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          v397 = swift_slowAlloc();
          *v232 = v325;
          v233 = sub_1000156C4();
          v235 = v234;
          v236 = v385;
          v385(v226, v399);
          v237 = sub_100013AAC(v233, v235, &v397);

          *(v232 + 4) = v237;
          *(v232 + 12) = 2080;
          v238 = sub_1000156C4();
          v240 = v239;
          v236(v229, v399);
          v241 = v390;
          v242 = sub_100013AAC(v238, v240, &v397);
          v188 = v389;

          *(v232 + 14) = v242;
          _os_log_impl(&_mh_execute_header, v230, v231, "Did move training data export to voicediagnose from=%s to=%s", v232, 0x16u);
          swift_arrayDestroy();

          v152 = v388;
          (v388)(v376, v188);
          v243 = v362;
        }

        else
        {

          v244 = v385;
          v385(v229, v227);
          v244(v226, v227);
          v152 = v388;
          (v388)(v225, v188);
          v243 = v362;
          v241 = v390;
        }

        v245 = v241;
        v246 = v241;
        v247 = v188;
        (v392)(v243, v246, v188);
        v248 = sub_1000157E4();
        v249 = sub_100015E14();
        if (os_log_type_enabled(v248, v249))
        {
          v250 = swift_slowAlloc();
          *v250 = 0;
          _os_log_impl(&_mh_execute_header, v248, v249, "Will create CSV file for training metadata", v250, 2u);
        }

        v144 = v188;
        v152(v243, v188);
        v153 = v396;
        v251 = v381;
        sub_100004848(v384, v396);
        v151 = &VoiceBankingDiagnosticHelper;
        v338 = v251;
        if (v251)
        {

          v267 = v399;
          v268 = v385;
          v385(v382, v399);
          (v372)(v384, v383);
          v268(v378, v267);
          return (v268)(v153, v267);
        }

        (v392)(v379, v245, v247);
        v252 = sub_1000157E4();
        v253 = sub_100015E14();
        v254 = os_log_type_enabled(v252, v253);
        v255 = v382;
        v149 = v383;
        if (v254)
        {
          v256 = swift_slowAlloc();
          *v256 = 0;
          _os_log_impl(&_mh_execute_header, v252, v253, "Did create CSV file for training metadata", v256, 2u);
          v152 = v388;
        }

        v165 = v330 + 1;

        v152(v379, v144);
        v166 = v399;
        v385(v255, v399);
        (v372)(v384, v149);
        v164 = v375;
        if (v326 == v165)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    v166 = v399;
LABEL_47:
    v385(v378, v166);
    v150 = v331;
  }

  v157 = v338;
  sub_10000EE58(v380, v153);
  if (v157)
  {
    v385(v153, v399);
  }

  v158 = swift_allocObject();
  *(v158 + 2) = &_swiftEmptyArrayStorage;
  *(v158 + 3) = &_swiftEmptyArrayStorage;
  *(v158 + 4) = &_swiftEmptyArrayStorage;
  *(v158 + 5) = &_swiftEmptyArrayStorage;
  v159 = v399;
  v150(&v158[*&v151[31].ivar_base_size], 1, 1, v399);
  v160 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error;
  *&v158[OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error] = 0;
  v138 = v159;
  v161 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore;
  *&v158[v161] = dispatch_semaphore_create(0);

  sub_1000158C4();

  v162 = *&v158[v161];
  sub_100015E34();

  if (*&v158[v160] || (v257 = *(v158 + 3), , , sub_10000F444(v257, v153), , v258 = swift_allocObject(), *(v258 + 2) = &_swiftEmptyArrayStorage, *(v258 + 3) = &_swiftEmptyArrayStorage, *(v258 + 4) = &_swiftEmptyArrayStorage, *(v258 + 5) = &_swiftEmptyArrayStorage, v138 = v399, v331(&v258[*&v151[31].ivar_base_size], 1, 1, v399), v259 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error, *&v258[OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error] = 0, v260 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore, *&v258[v260] = dispatch_semaphore_create(0), , , sub_1000158B4(), , , v261 = *&v258[v260], sub_100015E34(), v261, *&v258[v259]))
  {
    swift_willThrow();
    swift_errorRetain();

    v141 = v153;
    return (v385)(v141, v138);
  }

  v262 = *(v258 + 5);

  sub_10000F878(v262, v153);

  if (v374)
  {
    v269 = v352;
    (v392)(v352, v390, v389);
    v270 = sub_1000157E4();
    v271 = sub_100015E14();
    if (os_log_type_enabled(v270, v271))
    {
      v272 = swift_slowAlloc();
      *v272 = 0;
      _os_log_impl(&_mh_execute_header, v270, v271, "Will copy container path into diagnose", v272, 2u);
    }

    (v388)(v269, v389);
    v273 = v349;
    sub_100015A54();
    v274 = v356;
    v275 = v353;
    v276 = v354;
    v394 = *(v356 + 104);
    (v394)(v353, enum case for TTSVBPath.root(_:), v354);
    v277 = v350;
    sub_100015C44();
    v278 = *(v274 + 8);
    v356 = v274 + 8;
    v278(v275, v276);
    v279 = v351;
    v333(v351, 1, 1, v334);
    sub_100015BA4();
    sub_1000132C0(v279, &qword_100020708, &qword_100016588);
    v385(v277, v399);
    v335(v273, v393);
    v283 = v347;
    v284 = v389;
    (v392)(v347, v390, v389);
    v285 = sub_1000157E4();
    v286 = sub_100015E14();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      *v287 = 0;
      _os_log_impl(&_mh_execute_header, v285, v286, "Did copy container path into diagnose", v287, 2u);
    }

    (v388)(v283, v284);
    v153 = v396;
    v281 = v357;
    v280 = v390;
    v282 = v284;
  }

  else
  {
    v280 = v390;
    v281 = v357;
    v282 = v389;
  }

  v288 = v282;
  v392(v281, v280);
  v289 = sub_1000157E4();
  v290 = sub_100015E14();
  v291 = os_log_type_enabled(v289, v290);
  v292 = v355;
  if (v291)
  {
    v293 = swift_slowAlloc();
    *v293 = 0;
    _os_log_impl(&_mh_execute_header, v289, v290, "Creating AVSpeechVoice list", v293, 2u);
    v281 = v357;
  }

  (v388)(v281, v288);
  sub_10000FCA4(v153);
  (v392)(v292, v390, v288);
  v294 = sub_1000157E4();
  v295 = sub_100015E14();
  if (os_log_type_enabled(v294, v295))
  {
    v296 = swift_slowAlloc();
    *v296 = 0;
    _os_log_impl(&_mh_execute_header, v294, v295, "Creating TTS voice list", v296, 2u);
  }

  (v388)(v292, v288);
  sub_1000101C4(v153);
  v297 = v345;
  (v392)(v345, v390, v288);
  v298 = sub_1000157E4();
  v299 = sub_100015E14();
  if (os_log_type_enabled(v298, v299))
  {
    v300 = swift_slowAlloc();
    *v300 = 0;
    _os_log_impl(&_mh_execute_header, v298, v299, "Creating AX Prefs file", v300, 2u);
  }

  (v388)(v297, v288);
  sub_100010724(v153);
  v152 = 0;
  (v392)(v344, v390, v389);
  v301 = sub_1000157E4();
  v302 = sub_100015E14();
  if (os_log_type_enabled(v301, v302))
  {
    v303 = swift_slowAlloc();
    *v303 = 0;
    _os_log_impl(&_mh_execute_header, v301, v302, "Creating access file", v303, 2u);
  }

  (v388)(v344, v389);
  sub_100010ADC(v153);
  (v392)(v343, v390, v389);
  v304 = sub_1000157E4();
  v305 = sub_100015E14();
  if (os_log_type_enabled(v304, v305))
  {
    v306 = swift_slowAlloc();
    *v306 = 0;
    _os_log_impl(&_mh_execute_header, v304, v305, "Creating long-term logs file", v306, 2u);
  }

  (v388)(v343, v389);
  sub_1000111B8(v153);
LABEL_73:
  (v392)(v342, v390, v389);
  v307 = sub_1000157E4();
  v308 = sub_100015E14();
  if (os_log_type_enabled(v307, v308))
  {
    v309 = swift_slowAlloc();
    *v309 = 0;
    _os_log_impl(&_mh_execute_header, v307, v308, "Creating datastore analysis file", v309, 2u);
  }

  (v388)(v342, v389);
  sub_100011D20(v153);
  if (v152)
  {
    (v392)(v339, v390, v389);
    swift_errorRetain();
    v310 = sub_1000157E4();
    v311 = sub_100015E04();

    if (os_log_type_enabled(v310, v311))
    {
      v312 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      *v312 = 138412290;
      swift_errorRetain();
      v314 = _swift_stdlib_bridgeErrorToNSError();
      *(v312 + 4) = v314;
      *v313 = v314;
      _os_log_impl(&_mh_execute_header, v310, v311, "Error Creating datastore analysis file: %@", v312, 0xCu);
      sub_1000132C0(v313, &qword_100020710, &qword_100016590);
    }

    else
    {
    }

    (v388)(v339, v389);
  }

  (v392)(v341, v390, v389);
  v336(v340, v153, v399);
  v315 = sub_1000157E4();
  v316 = sub_100015E14();
  if (os_log_type_enabled(v315, v316))
  {
    v317 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    v397 = v318;
    *v317 = 136315138;
    v319 = v340;
    v320 = sub_1000156C4();
    v322 = v321;
    v385(v319, v399);
    v323 = sub_100013AAC(v320, v322, &v397);

    *(v317 + 4) = v323;
    _os_log_impl(&_mh_execute_header, v315, v316, "Finished createVoiceDiagnose. returning directory=%s", v317, 0xCu);
    sub_100012FE4(v318);
  }

  else
  {

    v385(v340, v399);
  }

  return (v388)(v341, v389);
}

uint64_t sub_1000045F8@<X0>(uint64_t a2@<X8>)
{
  v15 = a2;
  v2 = sub_100009860(&qword_100020700, &qword_100016580);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  type metadata accessor for VoiceBankingDiagnosticHelper.SyncBox(0);
  v5 = swift_allocObject();
  *(v5 + 2) = &_swiftEmptyArrayStorage;
  *(v5 + 3) = &_swiftEmptyArrayStorage;
  *(v5 + 4) = &_swiftEmptyArrayStorage;
  *(v5 + 5) = &_swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_url;
  v7 = sub_1000156D4();
  v8 = *(v7 - 8);
  (*(v8 + 56))(&v5[v6], 1, 1, v7);
  v9 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error;
  *&v5[OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error] = 0;
  v10 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore;
  *&v5[v10] = dispatch_semaphore_create(0);
  sub_100005574();

  sub_1000158E4();

  v11 = *&v5[v10];
  sub_100015E34();

  if (*&v5[v9])
  {
    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
    v13 = v15;
    swift_beginAccess();
    sub_1000134F0(&v5[v6], v4, &qword_100020700, &qword_100016580);
    result = (*(v8 + 48))(v4, 1, v7);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      return (*(v8 + 32))(v13, v4, v7);
    }
  }

  return result;
}

uint64_t sub_100004848(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v94 = a2;
  *&v96 = a1;
  v86 = sub_100015CF4();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100015B74();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v5 - 8);
  v91 = &v81 - v6;
  v97 = sub_1000157B4();
  v103 = *(v97 - 8);
  v7 = __chkstk_darwin(v97);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v81 - v9;
  v11 = sub_100015594();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100015BC4();
  v92 = *(v15 - 8);
  v93 = v15;
  __chkstk_darwin(v15);
  v90 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000156D4();
  v87 = *(v17 - 8);
  v88 = v17;
  __chkstk_darwin(v17);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015A54();
  v102._countAndFlagsBits = 0;
  v102._object = 0xE000000000000000;
  sub_100015F24(26);

  v102._countAndFlagsBits = 0xD000000000000011;
  v102._object = 0x8000000100016C70;
  v101._countAndFlagsBits = sub_100015884();
  v101._object = v20;
  sub_100015584();
  v83 = sub_100013030();
  v21 = sub_100015E84();
  (*(v12 + 8))(v14, v11);

  v101._countAndFlagsBits = v21;
  v22 = sub_100009860(&qword_100020728, &qword_100016598);
  v23 = sub_100013488(&qword_100020730, &qword_100020728, &qword_100016598, &protocol conformance descriptor for [A]);
  v99 = v22;
  v24 = sub_100015C84();
  v26 = v25;

  v104._countAndFlagsBits = v24;
  v104._object = v26;
  sub_100015D24(v104);

  v105._countAndFlagsBits = 95;
  v105._object = 0xE100000000000000;
  sub_100015D24(v105);
  sub_100015894();
  v27 = sub_1000157A4();
  v29 = v28;
  v30 = v10;
  v31 = v19;
  v32 = *(v103 + 8);
  v33 = v103 + 8;
  v32(v30, v97);
  v106._countAndFlagsBits = v27;
  v106._object = v29;
  sub_100015D24(v106);
  v34 = v91;

  v107._countAndFlagsBits = 1987273518;
  v107._object = 0xE400000000000000;
  sub_100015D24(v107);
  v35 = sub_100015844();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  v36 = v95;
  v37 = v90;
  sub_100015B84();
  if (v36)
  {

    sub_1000132C0(v34, &qword_100020708, &qword_100016588);
    return (*(v92 + 8))(v37, v93);
  }

  else
  {
    v82 = v31;
    v94 = v32;
    v103 = v33;
    v81 = 0;
    v95 = v23;

    sub_1000132C0(v34, &qword_100020708, &qword_100016588);
    (*(v92 + 8))(v37, v93);
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    sub_100015894();
    type metadata accessor for VoiceBankingDiagnosticHelper.SyncBox(0);
    v39 = swift_allocObject();
    v39[2] = &_swiftEmptyArrayStorage;
    v39[3] = &_swiftEmptyArrayStorage;
    v39[4] = &_swiftEmptyArrayStorage;
    v39[5] = &_swiftEmptyArrayStorage;
    v40 = v87;
    v41 = v88;
    (*(v87 + 56))(v39 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_url, 1, 1, v88);
    v42 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error;
    *(v39 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error) = 0;
    v43 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore;
    *(v39 + v43) = dispatch_semaphore_create(0);
    sub_100005574();

    sub_1000158F4();

    v44 = *(v39 + v43);
    sub_100015E34();

    if (*(v39 + v42))
    {
      swift_willThrow();
      swift_errorRetain();

      v94(v89, v97);
      return (*(v40 + 8))(v82, v41);
    }

    else
    {
      v94(v89, v97);
      v45 = v39[4];

      v101._countAndFlagsBits = &off_10001CC38;
      v101._countAndFlagsBits = sub_100015C84();
      v101._object = v46;

      v108._countAndFlagsBits = 10;
      v108._object = 0xE100000000000000;
      sub_100015D24(v108);

      sub_100015D24(v101);

      v47 = *(v45 + 16);
      if (v47)
      {
        v48 = *(v100 + 16);
        v49 = *(v100 + 80);
        v93 = v45;
        v50 = v45 + ((v49 + 32) & ~v49);
        v103 = *(v100 + 72);
        v51 = (v100 + 8);
        v96 = xmmword_1000164C0;
        v52 = v98;
        v100 += 16;
        v97 = v48;
        v94 = (v100 - 8);
        v48(v4, v50, v98);
        while (1)
        {
          if (sub_100015A64())
          {
            sub_100009860(&qword_100020738, &qword_1000165A0);
            v61 = swift_allocObject();
            *(v61 + 16) = v96;
            *(v61 + 32) = sub_100015B44();
            *(v61 + 40) = v62;
            v101._countAndFlagsBits = 34;
            v101._object = 0xE100000000000000;
            v115._countAndFlagsBits = sub_100015B54();
            sub_100015D24(v115);

            v116._countAndFlagsBits = 34;
            v116._object = 0xE100000000000000;
            sub_100015D24(v116);
            object = v101._object;
            *(v61 + 48) = v101._countAndFlagsBits;
            *(v61 + 56) = object;
            v101._countAndFlagsBits = sub_100015AD4();
            *(v61 + 64) = sub_100015FA4();
            *(v61 + 72) = v64;
            v101._countAndFlagsBits = sub_100015AC4();
            *(v61 + 80) = sub_100015FA4();
            *(v61 + 88) = v65;
            v101._countAndFlagsBits = 0;
            v101._object = 0xE000000000000000;
            sub_100015AE4();
            sub_100015DB4();
            v66 = v101._object;
            *(v61 + 96) = v101._countAndFlagsBits;
            *(v61 + 104) = v66;
            v101._countAndFlagsBits = 0;
            v101._object = 0xE000000000000000;
            sub_100015AF4();
            sub_100015DB4();
            v67 = v101._object;
            *(v61 + 112) = v101._countAndFlagsBits;
            *(v61 + 120) = v67;
            v101._countAndFlagsBits = 0;
            v101._object = 0xE000000000000000;
            if (sub_100015A64())
            {
              v68._countAndFlagsBits = 49;
            }

            else
            {
              v68._countAndFlagsBits = 48;
            }

            v68._object = 0xE100000000000000;
            sub_100015D24(v68);
            v69 = v101._object;
            *(v61 + 128) = v101._countAndFlagsBits;
            *(v61 + 136) = v69;
            v101._countAndFlagsBits = 34;
            v101._object = 0xE100000000000000;
            v117._countAndFlagsBits = sub_100015B24();
            sub_100015D24(v117);

            v118._countAndFlagsBits = 34;
            v118._object = 0xE100000000000000;
            sub_100015D24(v118);
            v70 = v101._object;
            *(v61 + 144) = v101._countAndFlagsBits;
            *(v61 + 152) = v70;
            v101._countAndFlagsBits = 34;
            v101._object = 0xE100000000000000;
            v71._countAndFlagsBits = sub_100015A84();
            if (v71._object)
            {
              v72 = v71._object;
            }

            else
            {
              v71._countAndFlagsBits = 0;
              v72 = 0xE000000000000000;
            }

            v71._object = v72;
            sub_100015D24(v71);

            v119._countAndFlagsBits = 34;
            v119._object = 0xE100000000000000;
            sub_100015D24(v119);
            v73 = v101._object;
            *(v61 + 160) = v101._countAndFlagsBits;
            *(v61 + 168) = v73;
            v101._countAndFlagsBits = sub_100015B64();
            *(v61 + 176) = sub_100015FA4();
            *(v61 + 184) = v74;
            v101._countAndFlagsBits = 0;
            v101._object = 0xE000000000000000;
            sub_100015B04();
            sub_100015DC4();
            v75 = v101._object;
            *(v61 + 192) = v101._countAndFlagsBits;
            *(v61 + 200) = v75;
            v101._countAndFlagsBits = 0;
            v101._object = 0xE000000000000000;
            sub_100015AA4();
            sub_100015DC4();
            v76 = v101._object;
            *(v61 + 208) = v101._countAndFlagsBits;
            *(v61 + 216) = v76;
            v101._countAndFlagsBits = 0;
            v101._object = 0xE000000000000000;
            sub_100015B14();
            sub_100015DC4();
            v77 = v101._object;
            *(v61 + 224) = v101._countAndFlagsBits;
            *(v61 + 232) = v77;
            v101._countAndFlagsBits = 0;
            v101._object = 0xE000000000000000;
            sub_100015AB4();
            sub_100015DC4();
            v78 = v101._object;
            *(v61 + 240) = v101._countAndFlagsBits;
            *(v61 + 248) = v78;
            v101._countAndFlagsBits = 34;
            v101._object = 0xE100000000000000;
            if (sub_100015A64())
            {
              v53._countAndFlagsBits = sub_100015A94();
              v54 = v53._object;
            }

            else
            {
              v54 = 0xE300000000000000;
              v53._countAndFlagsBits = 4271950;
            }

            v53._object = v54;
            sub_100015D24(v53);

            v109._countAndFlagsBits = 34;
            v109._object = 0xE100000000000000;
            sub_100015D24(v109);
            v55 = v101._object;
            *(v61 + 256) = v101._countAndFlagsBits;
            *(v61 + 264) = v55;
            v101._countAndFlagsBits = 34;
            v101._object = 0xE100000000000000;
            v110._countAndFlagsBits = sub_100015A74();
            sub_100015D24(v110);

            v111._countAndFlagsBits = 34;
            v111._object = 0xE100000000000000;
            sub_100015D24(v111);
            v56 = v101._object;
            *(v61 + 272) = v101._countAndFlagsBits;
            *(v61 + 280) = v56;
            v101._countAndFlagsBits = 34;
            v101._object = 0xE100000000000000;
            v112._countAndFlagsBits = sub_100015B34();
            sub_100015D24(v112);

            v113._countAndFlagsBits = 34;
            v113._object = 0xE100000000000000;
            sub_100015D24(v113);
            v57 = v101._object;
            *(v61 + 288) = v101._countAndFlagsBits;
            *(v61 + 296) = v57;
            v101._countAndFlagsBits = v61;
            v58 = sub_100015C84();
            v60 = v59;

            v101._countAndFlagsBits = v58;
            v101._object = v60;

            v114._countAndFlagsBits = 10;
            v114._object = 0xE100000000000000;
            sub_100015D24(v114);

            sub_100015D24(v101);

            v48 = v97;
            v52 = v98;
            v51 = v94;
          }

          (*v51)(v4, v52);
          v50 += v103;
          if (!--v47)
          {
            break;
          }

          v48(v4, v50, v52);
        }

        v40 = v87;
        v41 = v88;
      }

      else
      {
      }

      v101 = v102;
      v79 = v84;
      sub_100015CE4();
      v80 = v82;
      sub_100015E94();
      (*(v85 + 8))(v79, v86);

      return (*(v40 + 8))(v80, v41);
    }
  }
}

uint64_t sub_100005574()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    sub_100015914();
    swift_allocObject();
    v1 = sub_100015904();
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1000055E8()
{

  sub_1000132C0(v0 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_url, &qword_100020700, &qword_100016580);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10000569C(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v78 = a1;
  v3 = sub_100009860(&qword_100020788, &qword_1000165C8);
  v4 = __chkstk_darwin(v3 - 8);
  v77 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v66 - v6;
  v7 = sub_1000157D4();
  __chkstk_darwin(v7 - 8);
  v74 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009860(&qword_1000207E8, &qword_1000168C8);
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  __chkstk_darwin(v9);
  v73 = &v66 - v11;
  v79 = sub_100015704();
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v81 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100015724();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100015794();
  v70 = *(v15 - 8);
  v71 = v15;
  __chkstk_darwin(v15);
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000157B4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_100015F24(496);
  v87._countAndFlagsBits = 0xD00000000000001CLL;
  v87._object = 0x80000001000171B0;
  sub_100015D24(v87);
  v88._countAndFlagsBits = sub_1000159F4();
  sub_100015D24(v88);

  v89._object = 0x80000001000171D0;
  v89._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v89);
  sub_100015A34();
  v21 = sub_1000157A4();
  v23 = v22;
  v24 = *(v18 + 8);
  v24(v20, v17);
  v90._countAndFlagsBits = v21;
  v90._object = v23;
  sub_100015D24(v90);

  v91._object = 0x80000001000171F0;
  v91._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v91);
  sub_100015A14();
  v25 = sub_1000157A4();
  v27 = v26;
  v24(v20, v17);
  v28 = v72;
  v92._countAndFlagsBits = v25;
  v92._object = v27;
  sub_100015D24(v92);

  v93._object = 0x8000000100017210;
  v93._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v93);
  v29 = v69;
  sub_100015954();
  sub_100015714();
  v30 = v81;
  sub_1000156F4();
  v31 = sub_100015774();
  v33 = v32;
  v34 = *(v83 + 8);
  v83 += 8;
  v67 = v34;
  v34(v30, v79);
  v35 = *(v82 + 8);
  v68 = v14;
  v82 += 8;
  v66 = v35;
  v35(v14, v80);
  v36 = v70;
  v37 = v29;
  v38 = v71;
  v69 = *(v70 + 8);
  (v69)(v37, v71);
  v94._countAndFlagsBits = v31;
  v94._object = v33;
  sub_100015D24(v94);

  v95._object = 0x8000000100017230;
  v95._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v95);
  v96._countAndFlagsBits = sub_100015994();
  sub_100015D24(v96);

  v97._object = 0x8000000100017250;
  v97._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v97);
  v39._countAndFlagsBits = sub_1000159A4();
  if (v39._object)
  {
    object = v39._object;
  }

  else
  {
    v39._countAndFlagsBits = 0x3E6C696E3CLL;
    object = 0xE500000000000000;
  }

  v39._object = object;
  sub_100015D24(v39);

  v98._object = 0x8000000100017270;
  v98._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v98);
  v41._countAndFlagsBits = sub_1000159B4();
  if (v41._object)
  {
    v42 = v41._object;
  }

  else
  {
    v41._countAndFlagsBits = 0x3E6C696E3CLL;
    v42 = 0xE500000000000000;
  }

  v41._object = v42;
  sub_100015D24(v41);

  v99._object = 0x8000000100017290;
  v99._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v99);
  v43._countAndFlagsBits = sub_100015944();
  if (v43._object)
  {
    v44 = v43._object;
  }

  else
  {
    v43._countAndFlagsBits = 0x3E6C696E3CLL;
    v44 = 0xE500000000000000;
  }

  v43._object = v44;
  sub_100015D24(v43);

  v100._object = 0x80000001000172B0;
  v100._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v100);
  v101._countAndFlagsBits = sub_100015A24();
  sub_100015D24(v101);

  v102._object = 0x80000001000172D0;
  v102._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v102);
  v103._countAndFlagsBits = sub_100015974();
  sub_100015D24(v103);

  v104._object = 0x80000001000172F0;
  v104._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v104);
  sub_100015A04();
  v105._countAndFlagsBits = sub_100015E24();
  sub_100015D24(v105);

  v106._object = 0x8000000100017310;
  v106._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v106);
  sub_100015984();
  v107._countAndFlagsBits = sub_100015E54();
  sub_100015D24(v107);

  v108._object = 0x8000000100017330;
  v108._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v108);
  sub_1000159D4();
  v86 = v45;
  sub_1000157C4();
  sub_100013434();
  v46 = v73;
  sub_100015624();
  sub_100013488(&qword_1000207F8, &qword_1000207E8, &qword_1000168C8, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
  v47 = v75;
  sub_100015C64();
  (*(v76 + 8))(v46, v47);
  sub_100015D24(v84);

  v109._object = 0x8000000100017350;
  v109._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v109);
  v48 = a2;
  sub_1000159C4();
  if ((*(v36 + 48))(v28, 1, v38) == 1)
  {
    sub_1000132C0(v28, &qword_100020788, &qword_1000165C8);
    v49._countAndFlagsBits = 0x3E656E6F6E3CLL;
    v50 = 0xE600000000000000;
  }

  else
  {
    v51 = v68;
    sub_100015714();
    v52 = v81;
    sub_1000156F4();
    v53 = sub_100015774();
    v50 = v54;
    v67(v52, v79);
    v66(v51, v80);
    (v69)(v28, v38);
    v49._countAndFlagsBits = v53;
  }

  v49._object = v50;
  sub_100015D24(v49);

  v110._object = 0x8000000100017370;
  v110._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v110);
  v55 = v77;
  v56 = sub_1000159C4();
  __chkstk_darwin(v56);
  *(&v66 - 2) = v48;
  v57 = sub_10000627C(sub_1000134D0);
  v59 = v58;
  sub_1000132C0(v55, &qword_100020788, &qword_1000165C8);
  if (v59)
  {
    v60._countAndFlagsBits = v57;
  }

  else
  {
    v60._countAndFlagsBits = 0x3E656E6F4E3CLL;
  }

  if (!v59)
  {
    v59 = 0xE600000000000000;
  }

  v60._object = v59;
  sub_100015D24(v60);

  v111._object = 0x8000000100017390;
  v111._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100015D24(v111);
  v61 = sub_100015964();
  v62 = (v61 & 1) == 0;
  if (v61)
  {
    v63._countAndFlagsBits = 7562585;
  }

  else
  {
    v63._countAndFlagsBits = 28494;
  }

  if (v62)
  {
    v64 = 0xE200000000000000;
  }

  else
  {
    v64 = 0xE300000000000000;
  }

  v63._object = v64;
  sub_100015D24(v63);

  v112._countAndFlagsBits = 10;
  v112._object = 0xE100000000000000;
  sub_100015D24(v112);
  sub_100015D24(v85);
}

uint64_t sub_100006170@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100015794();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015954();
  sub_100015744();
  (*(v3 + 8))(v5, v2);
  sub_100015FF4();
  result = sub_100015FE4();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_10000627C(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_100015794();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009860(&qword_100020788, &qword_1000165C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1000134F0(v1, &v11 - v8, &qword_100020788, &qword_1000165C8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11;
  }

  return result;
}

uint64_t sub_100006460(uint64_t a1, uint64_t a2)
{
  v96 = a1;
  v4 = sub_1000156D4();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v93 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000155E4();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v86 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000155C4();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000155F4();
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v88 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009860(&qword_100020788, &qword_1000165C8);
  v12 = __chkstk_darwin(v11 - 8);
  v83 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = v74 - v14;
  v15 = sub_100015704();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v80 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100015724();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100015794();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v20 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000157B4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100015824();
  v99 = v15;
  v101 = v16;
  if (v2)
  {

    v82 = 0;
    v79 = 0;
  }

  else
  {
    v79 = 0;
    v82 = v25;
  }

  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  sub_100015F24(425);
  v105._countAndFlagsBits = 0xD000000000000016;
  v105._object = 0x8000000100016F50;
  sub_100015D24(v105);
  swift_getKeyPath();
  sub_100015814();

  sub_100015D24(v102);

  v106._object = 0x8000000100016F70;
  v106._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v106);
  swift_getKeyPath();
  sub_100015814();

  v26 = sub_1000157A4();
  v28 = v27;
  v29 = *(v22 + 8);
  v29(v24, v21);
  v107._countAndFlagsBits = v26;
  v107._object = v28;
  sub_100015D24(v107);

  v108._object = 0x8000000100016F90;
  v108._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v108);
  swift_getKeyPath();
  sub_100015814();

  v30 = sub_1000157A4();
  v32 = v31;
  v29(v24, v21);
  v109._countAndFlagsBits = v30;
  v109._object = v32;
  sub_100015D24(v109);

  v110._object = 0x8000000100016FB0;
  v110._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v110);
  swift_getKeyPath();
  sub_100015814();

  v33 = v97;
  sub_100015714();
  v34 = v80;
  sub_1000156F4();
  v35 = sub_100015774();
  v37 = v36;
  v38 = *(v101 + 8);
  v101 += 8;
  v76 = v38;
  v38(v34, v99);
  v39 = *(v100 + 8);
  v100 += 8;
  v75 = v39;
  v39(v33, v98);
  v40 = v77;
  v41 = *(v77 + 8);
  v42 = v78;
  v74[1] = v77 + 8;
  v74[0] = v41;
  v41(v20, v78);
  v111._countAndFlagsBits = v35;
  v111._object = v37;
  sub_100015D24(v111);

  v112._object = 0x8000000100016FD0;
  v112._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v112);
  swift_getKeyPath();
  sub_100015814();

  sub_100015D24(v102);

  v113._object = 0x8000000100016FF0;
  v113._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v113);
  swift_getKeyPath();
  sub_100015814();

  if (v102._object)
  {
    v43._countAndFlagsBits = v102._countAndFlagsBits;
  }

  else
  {
    v43._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  if (v102._object)
  {
    object = v102._object;
  }

  else
  {
    object = 0xE500000000000000;
  }

  v43._object = object;
  sub_100015D24(v43);

  v114._object = 0x8000000100017010;
  v114._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v114);
  swift_getKeyPath();
  sub_100015814();

  if (v102._object)
  {
    v45._countAndFlagsBits = v102._countAndFlagsBits;
  }

  else
  {
    v45._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  if (v102._object)
  {
    v46 = v102._object;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  v45._object = v46;
  sub_100015D24(v45);

  v115._object = 0x8000000100017030;
  v115._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v115);
  swift_getKeyPath();
  sub_100015814();

  if (v102._object)
  {
    v47._countAndFlagsBits = v102._countAndFlagsBits;
  }

  else
  {
    v47._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  if (v102._object)
  {
    v48 = v102._object;
  }

  else
  {
    v48 = 0xE500000000000000;
  }

  v47._object = v48;
  sub_100015D24(v47);

  v116._object = 0x8000000100017050;
  v116._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v116);
  swift_getKeyPath();
  sub_100015814();

  sub_100015D24(v102);

  v117._object = 0x8000000100017070;
  v117._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v117);
  swift_getKeyPath();
  sub_100015814();

  sub_100015D24(v102);

  v118._object = 0x8000000100017090;
  v118._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v118);
  swift_getKeyPath();
  sub_100015814();

  v119._countAndFlagsBits = sub_100015E24();
  sub_100015D24(v119);

  v120._object = 0x80000001000170B0;
  v120._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v120);
  swift_getKeyPath();
  sub_100015814();

  v121._countAndFlagsBits = sub_100015E54();
  sub_100015D24(v121);

  v122._object = 0x80000001000170D0;
  v122._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v122);
  swift_getKeyPath();
  v49 = v81;
  sub_100015814();

  if ((*(v40 + 48))(v49, 1, v42) == 1)
  {
    sub_1000132C0(v49, &qword_100020788, &qword_1000165C8);
    v50._countAndFlagsBits = 0x3E656E6F6E3CLL;
    v51 = 0xE600000000000000;
  }

  else
  {
    v52 = v97;
    sub_100015714();
    sub_1000156F4();
    v53 = sub_100015774();
    v51 = v54;
    v76(v34, v99);
    v75(v52, v98);
    (v74[0])(v49, v42);
    v50._countAndFlagsBits = v53;
  }

  v50._object = v51;
  sub_100015D24(v50);

  v123._object = 0x80000001000170F0;
  v123._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v123);
  swift_getKeyPath();
  v55 = v83;
  sub_100015814();

  __chkstk_darwin(v56);
  v74[-2] = a2;
  v57 = sub_10000627C(sub_10001336C);
  v59 = v58;
  sub_1000132C0(v55, &qword_100020788, &qword_1000165C8);
  if (v59)
  {
    v60._countAndFlagsBits = v57;
  }

  else
  {
    v60._countAndFlagsBits = 0x3E656E6F4E3CLL;
  }

  if (!v59)
  {
    v59 = 0xE600000000000000;
  }

  v60._object = v59;
  sub_100015D24(v60);

  v124._object = 0x8000000100017110;
  v124._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v124);
  swift_getKeyPath();
  sub_100015814();

  if (LOBYTE(v102._countAndFlagsBits))
  {
    v61._countAndFlagsBits = 7562585;
  }

  else
  {
    v61._countAndFlagsBits = 28494;
  }

  if (LOBYTE(v102._countAndFlagsBits))
  {
    v62 = 0xE300000000000000;
  }

  else
  {
    v62 = 0xE200000000000000;
  }

  v61._object = v62;
  sub_100015D24(v61);

  v125._object = 0x8000000100017130;
  v125._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v125);
  v104 = v82;
  v63 = v85;
  v64 = v84;
  v65 = v87;
  (*(v85 + 104))(v84, enum case for ByteCountFormatStyle.Style.file(_:), v87);
  v66 = v86;
  sub_1000155D4();
  v67 = v88;
  sub_100015574();
  (*(v89 + 8))(v66, v90);
  (*(v63 + 8))(v64, v65);
  sub_10001338C();
  sub_1000130D4(&qword_1000207D0, &type metadata accessor for ByteCountFormatStyle, &protocol conformance descriptor for ByteCountFormatStyle);
  sub_1000133E0();
  v68 = v92;
  sub_100015EB4();
  (*(v91 + 8))(v67, v68);
  sub_100015D24(v102);

  v126._object = 0x8000000100017150;
  v126._countAndFlagsBits = 0xD000000000000017;
  sub_100015D24(v126);
  swift_getKeyPath();
  v69 = v93;
  sub_100015814();

  v70 = sub_1000156C4();
  v72 = v71;
  (*(v94 + 8))(v69, v95);
  v127._countAndFlagsBits = v70;
  v127._object = v72;
  sub_100015D24(v127);

  v128._countAndFlagsBits = 10;
  v128._object = 0xE100000000000000;
  sub_100015D24(v128);
  sub_100015D24(v103);
}

uint64_t sub_100007388@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000159F4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100007420@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100015994();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000744C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000159A4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100007478@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000159B4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000074A4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100015944();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000074D0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100015A24();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000074FC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100015974();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100007528@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100015A04();
  *a2 = result;
  return result;
}

uint64_t sub_100007554@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100015984();
  *a2 = result;
  return result;
}

uint64_t sub_1000075A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100015794();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100015814();

  sub_100015744();
  (*(v3 + 8))(v5, v2);
  sub_100015FF4();
  result = sub_100015FE4();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_1000076C8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100015964();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10000771C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 language];
  v5 = sub_100015CC4();
  v7 = v6;

  v8 = [v3 language];
  v9 = sub_100015CC4();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {

    goto LABEL_10;
  }

  v13 = sub_100015FB4();

  if (v13)
  {
LABEL_10:
    v22 = [v2 identifier];
    v23 = sub_100015CC4();
    v25 = v24;

    v26 = [v3 identifier];
    v27 = sub_100015CC4();
    v29 = v28;

    if (v23 != v27 || v25 != v29)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = [v2 language];
  v15 = sub_100015CC4();
  v17 = v16;

  v18 = [v3 language];
  v19 = sub_100015CC4();
  v21 = v20;

  if (v15 != v19 || v17 != v21)
  {
LABEL_13:
    v30 = sub_100015FB4();
    goto LABEL_14;
  }

LABEL_12:
  v30 = 0;
LABEL_14:

  return v30 & 1;
}

uint64_t sub_100007908(uint64_t a1, id *a2)
{
  v2 = *a2;
  v3 = [*a2 language];
  v4 = sub_100015CC4();
  v6 = v5;

  v22._countAndFlagsBits = v4;
  v22._object = v6;
  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  sub_100015D24(v23);
  v7 = [v2 name];
  v8 = sub_100015CC4();
  v10 = v9;

  v24._countAndFlagsBits = v8;
  v24._object = v10;
  sub_100015D24(v24);

  v25._countAndFlagsBits = 23328;
  v25._object = 0xE200000000000000;
  sub_100015D24(v25);
  v11 = [v2 quality];
  if (v11 == 1)
  {
    v16 = 0xE700000000000000;
    v15._countAndFlagsBits = 0x746C7561666544;
  }

  else
  {
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E55;
    if (v11 == 2)
    {
      v13 = 0x6465636E61686E45;
      v12 = 0xE800000000000000;
    }

    v14 = v11 == 3;
    if (v11 == 3)
    {
      v15._countAndFlagsBits = 0x6D75696D657250;
    }

    else
    {
      v15._countAndFlagsBits = v13;
    }

    if (v14)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = v12;
    }
  }

  v15._object = v16;
  sub_100015D24(v15);

  v26._countAndFlagsBits = 2105949;
  v26._object = 0xE300000000000000;
  sub_100015D24(v26);
  v17 = [v2 identifier];
  v18 = sub_100015CC4();
  v20 = v19;

  v27._countAndFlagsBits = v18;
  v27._object = v20;
  sub_100015D24(v27);

  v28._countAndFlagsBits = 10;
  v28._object = 0xE100000000000000;
  sub_100015D24(v28);
  sub_100015D24(v22);
}

uint64_t sub_100007AF8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 languages];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100015D74();

    if (v6[2])
    {
      v8 = v6[4];
      v7 = v6[5];
    }

    else
    {
      v8 = 0x6E776F6E6B6E753CLL;
      v7 = 0xE90000000000003ELL;
    }
  }

  else
  {
    v8 = 0x6E776F6E6B6E753CLL;
    v7 = 0xE90000000000003ELL;
  }

  v9 = [v3 languages];
  if (v9)
  {
    v10 = v9;
    v11 = sub_100015D74();

    if (v11[2])
    {
      v13 = v11[4];
      v12 = v11[5];
    }

    else
    {
      v13 = 0x6E776F6E6B6E753CLL;
      v12 = 0xE90000000000003ELL;
    }

    if (v8 == v13)
    {
LABEL_14:
      if (v7 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v12 = 0xE90000000000003ELL;
    if (v8 == 0x6E776F6E6B6E753CLL)
    {
      goto LABEL_14;
    }
  }

  if ((sub_100015FB4() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_16:

  v14 = [v2 name];
  if (v14)
  {
    v15 = v14;
    v16 = sub_100015CC4();
    v18 = v17;
  }

  else
  {
    v16 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
  }

  v19 = [v3 name];
  if (!v19)
  {
    v23 = 0xE90000000000003ELL;
    if (v16 != 0x6E776F6E6B6E753CLL)
    {
      goto LABEL_24;
    }

LABEL_23:
    if (v18 == v23)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v20 = v19;
  v21 = sub_100015CC4();
  v23 = v22;

  if (v16 == v21)
  {
    goto LABEL_23;
  }

LABEL_24:
  if ((sub_100015FB4() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_25:

  v24 = [v2 voiceId];
  if (v24)
  {
    v25 = v24;
    v26 = sub_100015CC4();
    v28 = v27;
  }

  else
  {
    v26 = 0x6E776F6E6B6E753CLL;
    v28 = 0xE90000000000003ELL;
  }

  v29 = [v3 voiceId];
  if (v29)
  {
    v30 = v29;
    v31 = sub_100015CC4();
    v33 = v32;

    if (v26 != v31)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v33 = 0xE90000000000003ELL;
    if (v26 != 0x6E776F6E6B6E753CLL)
    {
LABEL_35:
      v34 = sub_100015FB4();
      goto LABEL_36;
    }
  }

  if (v28 != v33)
  {
    goto LABEL_35;
  }

  v34 = 0;
LABEL_36:

  return v34 & 1;
}

uint64_t sub_100007E0C()
{
  v1 = v0;
  v2 = [v0 speechVoice];
  v3 = [v0 languages];
  if (v3)
  {
    v4 = v3;
    sub_100015D74();

    sub_100009860(&qword_100020728, &qword_100016598);
    sub_100013488(&qword_100020730, &qword_100020728, &qword_100016598, &protocol conformance descriptor for [A]);
    v5 = sub_100015C84();
    v7 = v6;
  }

  else
  {
    v7 = 0x8000000100016E60;
    v5 = 0xD000000000000012;
  }

  v42._countAndFlagsBits = v5;
  v42._object = v7;
  sub_100015D24(v42);

  v8 = [v1 name];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100015CC4();
    v12 = v11;
  }

  else
  {
    v12 = 0xED00003E656D614ELL;
    v10 = 0x6E776F6E6B6E753CLL;
  }

  v43._countAndFlagsBits = v10;
  v43._object = v12;
  sub_100015D24(v43);

  v44._countAndFlagsBits = 2108704;
  v44._object = 0xE300000000000000;
  sub_100015D24(v44);

  v45._countAndFlagsBits = sub_1000098A8([v1 type]);
  sub_100015D24(v45);

  v46._countAndFlagsBits = 44;
  v46._object = 0xE100000000000000;
  sub_100015D24(v46);
  v13 = [v1 footprint];
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = 0xE700000000000000;
      v15._countAndFlagsBits = 0x746361706D6F43;
      goto LABEL_21;
    }

    if (v13 != 4)
    {
      if (v13 == 5)
      {
        v14 = 0xEB00000000686769;
        v15._countAndFlagsBits = 0x486D75696D657250;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v14 = 0xE700000000000000;
    v15._countAndFlagsBits = 0x6D75696D657250;
  }

  else
  {
    if (!v13)
    {
      v14 = 0xE300000000000000;
      v15._countAndFlagsBits = 7958081;
      goto LABEL_21;
    }

    if (v13 != 1)
    {
      if (v13 == 2)
      {
        v14 = 0xEC00000074636170;
        v15._countAndFlagsBits = 0x6D6F437265707553;
        goto LABEL_21;
      }

LABEL_18:
      v14 = 0xE700000000000000;
      v15._countAndFlagsBits = 0x6E776F6E6B6E55;
      goto LABEL_21;
    }

    v14 = 0xE700000000000000;
    v15._countAndFlagsBits = 0x746C7561666544;
  }

LABEL_21:
  v15._object = v14;
  sub_100015D24(v15);

  v47._countAndFlagsBits = 23328;
  v47._object = 0xE200000000000000;
  sub_100015D24(v47);

  v16 = [v1 isNoveltyVoice];
  v17 = v16 == 0;
  if (v16)
  {
    v18._countAndFlagsBits = 0x79746C65766F4E2CLL;
  }

  else
  {
    v18._countAndFlagsBits = 0;
  }

  if (v17)
  {
    v19 = 0xE000000000000000;
  }

  else
  {
    v19 = 0xE800000000000000;
  }

  v18._object = v19;
  sub_100015D24(v18);

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_100015D24(v48);

  v20 = [v1 isInstalled];
  v21 = v20 == 0;
  if (v20)
  {
    v22._countAndFlagsBits = 0x6C6C6174736E492CLL;
  }

  else
  {
    v22._countAndFlagsBits = 0;
  }

  if (v21)
  {
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = 0xEA00000000006465;
  }

  v22._object = v23;
  sub_100015D24(v22);

  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_100015D24(v49);

  v24 = v2;
  v25 = [v24 isDefault];
  v26 = v25 == 0;
  if (v25)
  {
    v27._countAndFlagsBits = 0x746C75616665442CLL;
  }

  else
  {
    v27._countAndFlagsBits = 0;
  }

  if (v26)
  {
    v28 = 0xE000000000000000;
  }

  else
  {
    v28 = 0xE800000000000000;
  }

  v27._object = v28;
  sub_100015D24(v27);

  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_100015D24(v50);

  v29 = [v24 isSystemVoice];
  v30 = v29 == 0;
  if (v29)
  {
    v31._countAndFlagsBits = 0x6D65747379532CLL;
  }

  else
  {
    v31._countAndFlagsBits = 0;
  }

  if (v30)
  {
    v32 = 0xE000000000000000;
  }

  else
  {
    v32 = 0xE700000000000000;
  }

  v31._object = v32;
  sub_100015D24(v31);

  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  sub_100015D24(v51);

  v33 = [v24 canBeDownloaded];

  if (v33)
  {
    v34._countAndFlagsBits = 0x616F6C6E776F442CLL;
  }

  else
  {
    v34._countAndFlagsBits = 0;
  }

  if (v33)
  {
    v35 = 0xED0000656C626164;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v34._object = v35;
  sub_100015D24(v34);

  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_100015D24(v52);

  v53._countAndFlagsBits = 93;
  v53._object = 0xE100000000000000;
  sub_100015D24(v53);

  v36 = [v1 voiceId];
  if (v36)
  {
    v37 = v36;
    v38 = sub_100015CC4();
    v40 = v39;
  }

  else
  {
    v38 = 0xD000000000000010;
    v40 = 0x8000000100016E80;
  }

  v54._countAndFlagsBits = v38;
  v54._object = v40;
  sub_100015D24(v54);

  v55._countAndFlagsBits = 32;
  v55._object = 0xE100000000000000;
  sub_100015D24(v55);

  return 0;
}

id sub_1000084E0(uint64_t a1)
{
  sub_100015674(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_1000156D4();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_100015614();

    swift_willThrow();
    v10 = sub_1000156D4();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_100008638(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v40 = a2;
  v2 = sub_1000155B4();
  v44 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  v7 = sub_100009860(&qword_100020788, &qword_1000165C8);
  v8 = __chkstk_darwin(v7 - 8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_100015794();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v42 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v38 = sub_100009860(&qword_100020778, &qword_1000165C0);
  inited = swift_initStackObject();
  v37 = xmmword_1000164D0;
  *(inited + 16) = xmmword_1000164D0;
  *(inited + 32) = NSURLCreationDateKey;
  v34 = NSURLCreationDateKey;
  sub_100010FC4(inited);
  swift_setDeallocating();
  sub_100013264(inited + 32);
  v19 = v36;
  sub_100015644();
  v45 = v17;
  v41 = v2;
  if (v19)
  {

    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {

    sub_1000155A4();
    (*(v44 + 8))(v6, v2);
    v20 = *(v13 + 48);
    if (v20(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v45, v11, v12);
      goto LABEL_7;
    }
  }

  sub_100015734();
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) != 1)
  {
    sub_1000132C0(v11, &qword_100020788, &qword_1000165C8);
  }

LABEL_7:
  v21 = swift_initStackObject();
  *(v21 + 16) = v37;
  *(v21 + 32) = v34;
  v22 = v21 + 32;
  sub_100010FC4(v21);
  swift_setDeallocating();
  sub_100013264(v22);
  v23 = v39;
  sub_100015644();
  v24 = v41;
  v25 = v44;

  v26 = v43;
  sub_1000155A4();
  (*(v25 + 8))(v23, v24);
  v27 = v20(v26, 1, v12);
  v28 = v42;
  if (v27 == 1)
  {
    sub_100015734();
    if (v20(v26, 1, v12) != 1)
    {
      sub_1000132C0(v26, &qword_100020788, &qword_1000165C8);
    }
  }

  else
  {
    (*(v13 + 32))(v42, v26, v12);
  }

  v29 = v45;
  v30 = sub_100015764();
  v31 = *(v13 + 8);
  v31(v28, v12);
  v31(v29, v12);
  return v30 & 1;
}

void sub_100008B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015854();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009860(&qword_100020808, &qword_1000168D8);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000134F0(a1, &v15 - v9, &qword_100020808, &qword_1000168D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v5 + 32);
    v11(v7, v10, v4);
    sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v12 = swift_allocError();
    v11(v13, v7, v4);
    *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error) = v12;
  }

  else
  {
    *(a2 + 16) = *v10;
  }

  v14 = *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore);
  sub_100015E44();
}

void sub_100008D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015854();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009860(&qword_100020800, &qword_1000168D0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000134F0(a1, &v15 - v9, &qword_100020800, &qword_1000168D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v5 + 32);
    v11(v7, v10, v4);
    sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v12 = swift_allocError();
    v11(v13, v7, v4);
    *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error) = v12;
  }

  else
  {
    *(a2 + 24) = *v10;
  }

  v14 = *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore);
  sub_100015E44();
}

void sub_100008F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015854();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009860(&qword_1000207E0, &qword_1000168C0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000134F0(a1, &v15 - v9, &qword_1000207E0, &qword_1000168C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v5 + 32);
    v11(v7, v10, v4);
    sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v12 = swift_allocError();
    v11(v13, v7, v4);
    *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error) = v12;
  }

  else
  {
    *(a2 + 40) = *v10;
  }

  v14 = *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore);
  sub_100015E44();
}

void sub_100009190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015854();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009860(&qword_100020740, &qword_1000165A8);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000134F0(a1, &v15 - v9, &qword_100020740, &qword_1000165A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v5 + 32);
    v11(v7, v10, v4);
    sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v12 = swift_allocError();
    v11(v13, v7, v4);
    *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error) = v12;
  }

  else
  {
    *(a2 + 32) = *v10;
  }

  v14 = *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore);
  sub_100015E44();
}

void sub_100009398(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015854();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009860(&qword_100020700, &qword_100016580);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100009860(&qword_100020750, &qword_1000165B0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  sub_1000134F0(a1, &v21 - v12, &qword_100020750, &qword_1000165B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v5 + 32);
    v14(v7, v13, v4);
    sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v15 = swift_allocError();
    v14(v16, v7, v4);
    *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_error) = v15;
  }

  else
  {
    v17 = sub_1000156D4();
    v18 = *(v17 - 8);
    (*(v18 + 32))(v10, v13, v17);
    (*(v18 + 56))(v10, 0, 1, v17);
    v19 = OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_url;
    swift_beginAccess();
    sub_100013124(v10, a2 + v19);
    swift_endAccess();
  }

  v20 = *(a2 + OBJC_IVAR____TtCC23VoiceBankingDiagnostics28VoiceBankingDiagnosticHelper7SyncBox_semaphore);
  sub_100015E44();
}

uint64_t sub_10000969C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t type metadata accessor for VoiceBankingDiagnosticHelper.SyncBox(uint64_t a1)
{
  result = qword_100020588;
  if (!qword_100020588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000974C(uint64_t a1)
{
  sub_100009808(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100009808(uint64_t a1)
{
  if (!qword_100020598)
  {
    sub_1000156D4();
    v1 = sub_100015E74();
    if (!v2)
    {
      atomic_store(v1, &qword_100020598);
    }
  }
}

uint64_t sub_100009860(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000098A8(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 1634627403;
      }

      if (a1 == 6)
      {
        return 0xD000000000000017;
      }

      return 0x6F5679636167654CLL;
    }

    switch(a1)
    {
      case 8:
        return 0x6C616E6F73726550;
      case 9:
        return 0x74784568746E7953;
      case 10:
        return 0x6D6F74737543;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x64696C61766E49;
    }

    if (a1 == 1)
    {
      return 7105601;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 2)
  {
    return 0x6C61546E6963614DLL;
  }

  if (a1 == 3)
  {
    return 0x6E6F6870797247;
  }

  return 1769300301;
}

uint64_t sub_100009A40(uint64_t a1, id *a2)
{
  result = sub_100015CA4();
  *a2 = 0;
  return result;
}

uint64_t sub_100009AB8(uint64_t a1, id *a2)
{
  v3 = sub_100015CB4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100009B38@<X0>(uint64_t *a2@<X8>)
{
  sub_100015CC4();
  v3 = sub_100015C94();

  *a2 = v3;
  return result;
}

uint64_t sub_100009B7C()
{
  sub_100015CC4();
  v0 = sub_100015D44();

  return v0;
}

uint64_t sub_100009BB8(uint64_t a1)
{
  sub_100015CC4();
  sub_100015D14();
}

Swift::Int sub_100009C0C(uint64_t a1)
{
  sub_100015CC4();
  sub_100015FC4();
  sub_100015D14();
  v1 = sub_100015FD4();

  return v1;
}

uint64_t sub_100009C80(void *a1, uint64_t *a2)
{
  v2 = sub_100015CC4();
  v4 = v3;
  if (v2 == sub_100015CC4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100015FB4();
  }

  return v7 & 1;
}

uint64_t sub_100009D08@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100015C94();

  *a2 = v3;
  return result;
}

uint64_t sub_100009D50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100015CC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100009D7C(uint64_t a1)
{
  v2 = sub_1000130D4(&qword_100020840, type metadata accessor for URLResourceKey, &unk_100016A48);
  v3 = sub_1000130D4(&qword_100020848, type metadata accessor for URLResourceKey, &unk_1000169E8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

char *sub_100009E38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009860(&qword_100020798, &qword_1000165D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100009F3C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100009860(&qword_100020758, &qword_1000165B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_100009FC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000A004(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  a3(v10);
  return sub_100015F54();
}

Swift::Int sub_10000A098(uint64_t *a1)
{
  v2 = *(sub_1000156D4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10000EE44(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10000A358(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10000A140(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100015F94(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100013324(0, &qword_1000207B0, AVSpeechSynthesisVoice_ptr);
        v6 = sub_100015D94();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10000B074(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000A484(0, v2, 1, a1);
  }

  return result;
}

void sub_10000A254(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100015F94(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100015DF4();
        v6 = sub_100015D94();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10000B9EC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10000A6E4(0, v2, 1, a1);
  }
}

Swift::Int sub_10000A358(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_100015F94(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000156D4();
        v6 = sub_100015D94();
        v6[2] = v5;
      }

      v7 = *(sub_1000156D4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000C3EC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000A7D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000A484(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v38 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v36 = v4;
    v37 = a3;
    v6 = *(v38 + 8 * a3);
    v35 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 language];
      v11 = sub_100015CC4();
      v13 = v12;

      v14 = [v9 language];
      v15 = sub_100015CC4();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {
        break;
      }

      v19 = sub_100015FB4();

      if (v19)
      {
        goto LABEL_14;
      }

      v20 = [v8 language];
      v21 = sub_100015CC4();
      v23 = v22;

      v24 = [v9 language];
LABEL_15:
      v27 = v24;
      v28 = sub_100015CC4();
      v30 = v29;

      if (v21 == v28 && v23 == v30)
      {

LABEL_5:
        a3 = v37 + 1;
        v4 = v36 + 8;
        v5 = v35 - 1;
        if (v37 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v31 = sub_100015FB4();

      if ((v31 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v38)
      {
        __break(1u);
        return result;
      }

      v32 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v32;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

LABEL_14:
    v25 = [v8 identifier];
    v21 = sub_100015CC4();
    v23 = v26;

    v24 = [v9 identifier];
    goto LABEL_15;
  }

  return result;
}

void sub_10000A6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_100007AF8(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t sub_10000A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = sub_1000155B4();
  v8 = *(v65 - 8);
  v9 = __chkstk_darwin(v65);
  v79 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v56 - v11;
  v12 = sub_100009860(&qword_100020788, &qword_1000165C8);
  v13 = __chkstk_darwin(v12 - 8);
  v77 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v56 - v15;
  v83 = sub_100015794();
  v16 = *(v83 - 8);
  v17 = __chkstk_darwin(v83);
  v86 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v85 = &v56 - v19;
  v20 = sub_1000156D4();
  v21 = __chkstk_darwin(v20);
  v69 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v89 = &v56 - v24;
  result = __chkstk_darwin(v23);
  v84 = &v56 - v27;
  v58 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v30 = *(v26 + 16);
    v29 = v26 + 16;
    v74 = v30;
    v73 = NSURLCreationDateKey;
    v31 = *(v29 + 56);
    v80 = (v16 + 56);
    v64 = (v8 + 8);
    v88 = (v16 + 48);
    v63 = (v16 + 32);
    v72 = (v16 + 8);
    v70 = (v29 - 8);
    v75 = v29;
    v67 = (v29 + 16);
    v32 = v28 + v31 * (a3 - 1);
    v66 = -v31;
    v33 = a1 - a3;
    v68 = v28;
    v57 = v31;
    v34 = v28 + v31 * a3;
    v82 = xmmword_1000164D0;
    v71 = v20;
LABEL_5:
    v62 = a3;
    v59 = v34;
    v60 = v33;
    v61 = v32;
    while (1)
    {
      v35 = v74;
      v74(v84, v34, v20);
      v35(v89, v32, v20);
      sub_100009860(&qword_100020778, &qword_1000165C0);
      inited = swift_initStackObject();
      *(inited + 16) = v82;
      v37 = v73;
      *(inited + 32) = v73;
      v81 = v37;
      sub_100010FC4(inited);
      swift_setDeallocating();
      sub_100013264(inited + 32);
      v38 = v78;
      v39 = v87;
      sub_100015644();
      if (v39)
      {

        v40 = v76;
        v41 = v83;
        (*v80)(v76, 1, 1, v83);
      }

      else
      {

        v40 = v76;
        sub_1000155A4();
        (*v64)(v38, v65);
        v42 = *v88;
        v41 = v83;
        if ((*v88)(v40, 1, v83) != 1)
        {
          (*v63)(v85, v40, v41);
          goto LABEL_12;
        }
      }

      sub_100015734();
      v42 = *v88;
      if ((*v88)(v40, 1, v41) != 1)
      {
        sub_1000132C0(v40, &qword_100020788, &qword_1000165C8);
      }

LABEL_12:
      v43 = swift_initStackObject();
      *(v43 + 16) = v82;
      *(v43 + 32) = v81;
      v44 = v43 + 32;
      sub_100010FC4(v43);
      swift_setDeallocating();
      sub_100013264(v44);
      v45 = v79;
      sub_100015644();
      v87 = 0;

      v46 = v77;
      sub_1000155A4();
      (*v64)(v45, v65);
      v47 = v83;
      if (v42(v46, 1, v83) == 1)
      {
        sub_100015734();
        if (v42(v46, 1, v47) != 1)
        {
          sub_1000132C0(v46, &qword_100020788, &qword_1000165C8);
        }
      }

      else
      {
        (*v63)(v86, v46, v47);
      }

      v48 = v85;
      v49 = v86;
      v50 = sub_100015764();
      v51 = *v72;
      (*v72)(v49, v47);
      v51(v48, v47);
      v52 = *v70;
      v20 = v71;
      (*v70)(v89, v71);
      result = v52(v84, v20);
      if ((v50 & 1) == 0)
      {
LABEL_4:
        a3 = v62 + 1;
        v32 = v61 + v57;
        v33 = v60 - 1;
        v34 = v59 + v57;
        if (v62 + 1 == v58)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v68)
      {
        __break(1u);
        return result;
      }

      v53 = *v67;
      v54 = v69;
      (*v67)(v69, v34, v20);
      swift_arrayInitWithTakeFrontToBack();
      result = (v53)(v32, v54, v20);
      v32 += v66;
      v34 += v66;
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void sub_10000B074(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_112:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v146 = v5;
      v123 = *(v5 + 2);
      if (v123 >= 2)
      {
        do
        {
          v124 = *v7;
          if (!*v7)
          {
            goto LABEL_149;
          }

          v7 = (v123 - 1);
          v125 = *&v5[16 * v123];
          v126 = *&v5[16 * v123 + 24];
          sub_10000DD50((v124 + 8 * v125), (v124 + 8 * *&v5[16 * v123 + 16]), (v124 + 8 * v126), v10, sub_10000771C);
          if (v6)
          {
            break;
          }

          if (v126 < v125)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10000E83C(v5);
          }

          if (v123 - 2 >= *(v5 + 2))
          {
            goto LABEL_139;
          }

          v127 = &v5[16 * v123];
          *v127 = v125;
          *(v127 + 1) = v126;
          v146 = v5;
          sub_10000E7B0(v123 - 1);
          v5 = v146;
          v123 = *(v146 + 2);
          v7 = a3;
        }

        while (v123 > 1);
      }

LABEL_122:

      return;
    }

LABEL_145:
    v5 = sub_10000E83C(v5);
    goto LABEL_114;
  }

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (2)
  {
    v11 = v9;
    if (v9 + 1 >= v8)
    {
      ++v9;
      goto LABEL_32;
    }

    v140 = v8;
    v131 = v10;
    v12 = *v7;
    v145 = *(*v7 + 8 * (v9 + 1));
    v144 = *(v12 + 8 * v9);
    v13 = v144;
    v14 = v145;
    v15 = v13;
    v142 = sub_10000771C(&v145, &v144);
    if (v6)
    {

      return;
    }

    v16 = (v9 + 2);
    v129 = v9;
    v136 = 8 * v9;
    v17 = (v12 + 8 * v9 + 16);
    v9 = v140;
    while (v9 != v16)
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = v19;
      v22 = [v20 language];
      v23 = sub_100015CC4();
      v25 = v24;

      v26 = [v21 language];
      v27 = sub_100015CC4();
      v29 = v28;

      if (v23 == v27 && v25 == v29)
      {
      }

      else
      {
        v31 = sub_100015FB4();

        if ((v31 & 1) == 0)
        {
          v32 = [v20 language];
          v33 = sub_100015CC4();
          v35 = v34;

          v36 = [v21 language];
          goto LABEL_18;
        }
      }

      v37 = [v20 identifier];
      v33 = sub_100015CC4();
      v35 = v38;

      v36 = [v21 identifier];
LABEL_18:
      v5 = v36;
      v39 = sub_100015CC4();
      v41 = v40;

      if (v33 == v39 && v35 == v41)
      {
        v18 = 0;
      }

      else
      {
        v18 = sub_100015FB4();
      }

      v9 = v140;

      v16 = (v16 + 1);
      ++v17;
      v6 = 0;
      if ((v142 ^ v18))
      {
        v9 = v16 - 1;
        break;
      }
    }

    v7 = a3;
    v11 = v129;
    v10 = v131;
    v42 = v136;
    if ((v142 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (v9 < v129)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v129 < v9)
    {
      v43 = 8 * v9 - 8;
      v44 = v9;
      v45 = v129;
      do
      {
        if (v45 != --v44)
        {
          v47 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v46 = *(v47 + v42);
          *(v47 + v42) = *(v47 + v43);
          *(v47 + v43) = v46;
        }

        ++v45;
        v43 -= 8;
        v42 += 8;
      }

      while (v45 < v44);
    }

LABEL_32:
    v48 = v7[1];
    if (v9 >= v48)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_141;
    }

    if (v9 - v11 >= a4)
    {
LABEL_60:
      if (v9 < v11)
      {
        goto LABEL_140;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100009E38(0, *(v10 + 2) + 1, 1, v10);
      }

      v78 = *(v10 + 2);
      v77 = *(v10 + 3);
      v79 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v10 = sub_100009E38((v77 > 1), v78 + 1, 1, v10);
      }

      *(v10 + 2) = v79;
      v80 = &v10[16 * v78];
      *(v80 + 4) = v11;
      *(v80 + 5) = v9;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_150;
      }

      if (!v78)
      {
LABEL_3:
        v7 = a3;
        v8 = a3[1];
        if (v9 >= v8)
        {
          goto LABEL_112;
        }

        continue;
      }

      while (1)
      {
        v81 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v82 = *(v10 + 4);
          v83 = *(v10 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_80:
          if (v85)
          {
            goto LABEL_129;
          }

          v98 = &v10[16 * v79];
          v100 = *v98;
          v99 = *(v98 + 1);
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_132;
          }

          v104 = &v10[16 * v81 + 32];
          v106 = *v104;
          v105 = *(v104 + 1);
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_136;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              v81 = v79 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v108 = &v10[16 * v79];
        v110 = *v108;
        v109 = *(v108 + 1);
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_94:
        if (v103)
        {
          goto LABEL_131;
        }

        v111 = &v10[16 * v81];
        v113 = *(v111 + 4);
        v112 = *(v111 + 5);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_134;
        }

        if (v114 < v102)
        {
          goto LABEL_3;
        }

LABEL_101:
        v119 = v81 - 1;
        if (v81 - 1 >= v79)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v7 = v9;
        v120 = *&v10[16 * v119 + 32];
        v121 = *&v10[16 * v81 + 40];
        sub_10000DD50((*a3 + 8 * v120), (*a3 + 8 * *&v10[16 * v81 + 32]), (*a3 + 8 * v121), v5, sub_10000771C);
        if (v6)
        {
          goto LABEL_122;
        }

        if (v121 < v120)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10000E83C(v10);
        }

        if (v119 >= *(v10 + 2))
        {
          goto LABEL_126;
        }

        v122 = &v10[16 * v119];
        *(v122 + 4) = v120;
        *(v122 + 5) = v121;
        v146 = v10;
        sub_10000E7B0(v81);
        v10 = v146;
        v79 = *(v146 + 2);
        v9 = v7;
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v86 = &v10[16 * v79 + 32];
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_127;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_128;
      }

      v93 = &v10[16 * v79];
      v95 = *v93;
      v94 = *(v93 + 1);
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_130;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_133;
      }

      if (v97 >= v89)
      {
        v115 = &v10[16 * v81 + 32];
        v117 = *v115;
        v116 = *(v115 + 1);
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_137;
        }

        if (v84 < v118)
        {
          v81 = v79 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

    break;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_142;
  }

  if (v11 + a4 < v48)
  {
    v48 = v11 + a4;
  }

  if (v48 < v11)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v134 = v48;
  if (v9 == v48)
  {
    goto LABEL_60;
  }

  v130 = v11;
  v132 = v10;
  v138 = v6;
  v143 = *v7;
  v49 = *v7 + 8 * v9 - 8;
  v50 = v11 - v9;
  while (2)
  {
    v141 = v9;
    v51 = *(v143 + 8 * v9);
    v135 = v50;
    v137 = v49;
LABEL_44:
    v52 = *v49;
    v53 = v51;
    v5 = v52;
    v54 = [v53 language];
    v55 = sub_100015CC4();
    v57 = v56;

    v58 = [v5 language];
    v59 = sub_100015CC4();
    v61 = v60;

    if (v55 == v59 && v57 == v61)
    {

      goto LABEL_51;
    }

    v63 = sub_100015FB4();

    if (v63)
    {
LABEL_51:
      v69 = [v53 identifier];
      v65 = sub_100015CC4();
      v67 = v70;

      v68 = [v5 identifier];
      goto LABEL_52;
    }

    v64 = [v53 language];
    v65 = sub_100015CC4();
    v67 = v66;

    v68 = [v5 language];
LABEL_52:
    v7 = v68;
    v71 = sub_100015CC4();
    v73 = v72;

    if (v65 == v71 && v67 == v73)
    {

LABEL_42:
      v9 = v141 + 1;
      v49 = v137 + 8;
      v50 = v135 - 1;
      if ((v141 + 1) == v134)
      {
        v6 = v138;
        v11 = v130;
        v10 = v132;
        v9 = v134;
        goto LABEL_60;
      }

      continue;
    }

    break;
  }

  v74 = sub_100015FB4();

  if ((v74 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v143)
  {
    v75 = *v49;
    v51 = *(v49 + 8);
    *v49 = v51;
    *(v49 + 8) = v75;
    v49 -= 8;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void sub_10000B9EC(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = v7;
        v10 = *a3;
        v128 = *(*a3 + 8 * v6);
        v127 = *(v10 + 8 * v8);
        v11 = v127;
        v4 = v128;
        v12 = v11;
        v13 = sub_100007AF8(&v128, &v127);
        if (v125)
        {

          return;
        }

        v14 = v13;

        v15 = v8 + 2;
        v117 = v8;
        v16 = 8 * v8;
        v17 = (v10 + 8 * v8 + 16);
        while (v5 != v15)
        {
          v18 = *(v17 - 1);
          v128 = *v17;
          v127 = v18;
          v4 = v128;
          v19 = v18;
          v20 = sub_100007AF8(&v128, &v127);

          ++v15;
          ++v17;
          if ((v14 ^ v20))
          {
            v5 = v15 - 1;
            break;
          }
        }

        v7 = v9;
        v8 = v117;
        if (v14)
        {
          if (v5 < v117)
          {
            goto LABEL_160;
          }

          if (v117 < v5)
          {
            v21 = 8 * v5 - 8;
            v22 = v5;
            v23 = v117;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_164;
                }

                v25 = *(v24 + v16);
                *(v24 + v16) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 8;
              v16 += 8;
            }

            while (v23 < v22);
          }
        }

        v6 = v5;
      }

      v26 = a3[1];
      if (v6 >= v26)
      {
        goto LABEL_72;
      }

      if (__OFSUB__(v6, v8))
      {
        goto LABEL_156;
      }

      if (v6 - v8 >= a4)
      {
        goto LABEL_72;
      }

      v27 = v8 + a4;
      if (__OFADD__(v8, a4))
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        return;
      }

      if (v27 >= v26)
      {
        v27 = a3[1];
      }

      if (v27 < v8)
      {
        goto LABEL_159;
      }

      if (v6 == v27)
      {
        goto LABEL_72;
      }

      v115 = v7;
      v126 = *a3;
      v28 = *a3 + 8 * v6 - 8;
      v118 = v8;
      v5 = v8 - v6;
      v120 = v27;
      while (2)
      {
        v122 = v28;
        v123 = v6;
        v29 = *(v126 + 8 * v6);
        v121 = v5;
        while (1)
        {
          v30 = *v28;
          v31 = v29;
          v32 = v30;
          v33 = [v31 languages];
          if (v33)
          {
            v34 = v33;
            v35 = sub_100015D74();

            if (v35[2])
            {
              v36 = v35[4];
              v37 = v35[5];
            }

            else
            {
              v36 = 0x6E776F6E6B6E753CLL;
              v37 = 0xE90000000000003ELL;
            }
          }

          else
          {
            v36 = 0x6E776F6E6B6E753CLL;
            v37 = 0xE90000000000003ELL;
          }

          v38 = [v32 languages];
          if (v38)
          {
            v39 = v38;
            v40 = sub_100015D74();

            if (v40[2])
            {
              v41 = v40[4];
              v4 = v40[5];
            }

            else
            {
              v41 = 0x6E776F6E6B6E753CLL;
              v4 = 0xE90000000000003ELL;
            }

            if (v36 == v41)
            {
LABEL_44:
              if (v37 == v4)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
            v4 = 0xE90000000000003ELL;
            if (v36 == 0x6E776F6E6B6E753CLL)
            {
              goto LABEL_44;
            }
          }

          if ((sub_100015FB4() & 1) == 0)
          {
            goto LABEL_66;
          }

LABEL_46:

          v42 = [v31 name];
          if (v42)
          {
            v43 = v42;
            v44 = sub_100015CC4();
            v46 = v45;
          }

          else
          {
            v44 = 0x6E776F6E6B6E753CLL;
            v46 = 0xE90000000000003ELL;
          }

          v47 = [v32 name];
          if (v47)
          {
            v48 = v47;
            v49 = sub_100015CC4();
            v4 = v50;

            if (v44 == v49)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v4 = 0xE90000000000003ELL;
            if (v44 == 0x6E776F6E6B6E753CLL)
            {
LABEL_53:
              if (v46 == v4)
              {
                goto LABEL_55;
              }
            }
          }

          if ((sub_100015FB4() & 1) == 0)
          {
LABEL_66:
            v61 = sub_100015FB4();

            if ((v61 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_67;
          }

LABEL_55:

          v51 = [v31 voiceId];
          if (v51)
          {
            v52 = v51;
            v4 = sub_100015CC4();
            v54 = v53;
          }

          else
          {
            v4 = 0x6E776F6E6B6E753CLL;
            v54 = 0xE90000000000003ELL;
          }

          v55 = [v32 voiceId];
          if (!v55)
          {
            break;
          }

          v56 = v55;
          v57 = sub_100015CC4();
          v59 = v58;

          if (v4 == v57)
          {
            goto LABEL_63;
          }

LABEL_64:
          v60 = sub_100015FB4();

          if ((v60 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_67:
          if (!v126)
          {
            goto LABEL_161;
          }

          v62 = *v28;
          v29 = *(v28 + 8);
          *v28 = v29;
          *(v28 + 8) = v62;
          v28 -= 8;
          if (__CFADD__(v5++, 1))
          {
            goto LABEL_29;
          }
        }

        v59 = 0xE90000000000003ELL;
        if (v4 != 0x6E776F6E6B6E753CLL)
        {
          goto LABEL_64;
        }

LABEL_63:
        if (v54 != v59)
        {
          goto LABEL_64;
        }

LABEL_29:
        v6 = v123 + 1;
        v28 = v122 + 8;
        v5 = v121 - 1;
        if (v123 + 1 != v120)
        {
          continue;
        }

        break;
      }

      v6 = v120;
      v7 = v115;
      v8 = v118;
LABEL_72:
      if (v6 < v8)
      {
        goto LABEL_155;
      }

      v64 = v7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v64;
      }

      else
      {
        v7 = sub_100009E38(0, *(v64 + 2) + 1, 1, v64);
      }

      v5 = *(v7 + 2);
      v65 = *(v7 + 3);
      v66 = v5 + 1;
      if (v5 >= v65 >> 1)
      {
        v7 = sub_100009E38((v65 > 1), v5 + 1, 1, v7);
      }

      *(v7 + 2) = v66;
      v67 = &v7[16 * v5];
      *(v67 + 4) = v8;
      *(v67 + 5) = v6;
      v68 = *a1;
      if (!*a1)
      {
        goto LABEL_165;
      }

      if (v5)
      {
        while (1)
        {
          v69 = v66 - 1;
          if (v66 >= 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v70 = *(v7 + 4);
            v71 = *(v7 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
LABEL_92:
            if (v73)
            {
              goto LABEL_144;
            }

            v86 = &v7[16 * v66];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_147;
            }

            v92 = &v7[16 * v69 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_150;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_151;
            }

            if (v90 + v95 >= v72)
            {
              if (v72 < v95)
              {
                v69 = v66 - 2;
              }

              goto LABEL_113;
            }

            goto LABEL_106;
          }

          v96 = &v7[16 * v66];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_106:
          if (v91)
          {
            goto LABEL_146;
          }

          v99 = &v7[16 * v69];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_149;
          }

          if (v102 < v90)
          {
            goto LABEL_3;
          }

LABEL_113:
          v5 = v69 - 1;
          if (v69 - 1 >= v66)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            v110 = sub_10000E83C(v5);
            goto LABEL_127;
          }

          if (!*a3)
          {
            goto LABEL_162;
          }

          v4 = v7;
          v107 = *&v7[16 * v5 + 32];
          v108 = *&v7[16 * v69 + 40];
          sub_10000DD50((*a3 + 8 * v107), (*a3 + 8 * *&v7[16 * v69 + 32]), (*a3 + 8 * v108), v68, sub_100007AF8);
          if (v125)
          {
            goto LABEL_138;
          }

          if (v108 < v107)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10000E83C(v4);
          }

          if (v5 >= *(v4 + 16))
          {
            goto LABEL_141;
          }

          v109 = v4 + 16 * v5;
          *(v109 + 32) = v107;
          *(v109 + 40) = v108;
          v129 = v4;
          sub_10000E7B0(v69);
          v7 = v129;
          v66 = *(v129 + 16);
          if (v66 <= 1)
          {
            goto LABEL_3;
          }
        }

        v74 = &v7[16 * v66 + 32];
        v75 = *(v74 - 64);
        v76 = *(v74 - 56);
        v80 = __OFSUB__(v76, v75);
        v77 = v76 - v75;
        if (v80)
        {
          goto LABEL_142;
        }

        v79 = *(v74 - 48);
        v78 = *(v74 - 40);
        v80 = __OFSUB__(v78, v79);
        v72 = v78 - v79;
        v73 = v80;
        if (v80)
        {
          goto LABEL_143;
        }

        v81 = &v7[16 * v66];
        v83 = *v81;
        v82 = *(v81 + 1);
        v80 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v80)
        {
          goto LABEL_145;
        }

        v80 = __OFADD__(v72, v84);
        v85 = v72 + v84;
        if (v80)
        {
          goto LABEL_148;
        }

        if (v85 >= v77)
        {
          v103 = &v7[16 * v69 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v80 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v80)
          {
            goto LABEL_154;
          }

          if (v72 < v106)
          {
            v69 = v66 - 2;
          }

          goto LABEL_113;
        }

        goto LABEL_92;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_124;
      }
    }
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_124:
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_166;
  }

  v5 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_157;
  }

  v110 = v5;
LABEL_127:
  v129 = v110;
  v5 = *(v110 + 2);
  if (v5 >= 2)
  {
    while (*a3)
    {
      v111 = *&v110[16 * v5];
      v112 = v110;
      v113 = *&v110[16 * v5 + 24];
      sub_10000DD50((*a3 + 8 * v111), (*a3 + 8 * *&v110[16 * v5 + 16]), (*a3 + 8 * v113), v4, sub_100007AF8);
      if (v125)
      {
        goto LABEL_138;
      }

      if (v113 < v111)
      {
        goto LABEL_152;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_10000E83C(v112);
      }

      if ((v5 - 2) >= *(v112 + 2))
      {
        goto LABEL_153;
      }

      v114 = &v112[16 * v5];
      *v114 = v111;
      *(v114 + 1) = v113;
      v129 = v112;
      sub_10000E7B0(v5 - 1);
      v110 = v129;
      v5 = *(v129 + 16);
      if (v5 <= 1)
      {
        goto LABEL_138;
      }
    }

    goto LABEL_163;
  }

LABEL_138:
}

unint64_t sub_10000C3EC(unint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v200 = a4;
  v201 = a1;
  v219 = sub_1000155B4();
  v5 = *(v219 - 8);
  v6 = __chkstk_darwin(v219);
  v225 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v227 = &v198 - v9;
  v10 = __chkstk_darwin(v8);
  v208 = &v198 - v11;
  __chkstk_darwin(v10);
  v207 = &v198 - v12;
  v13 = sub_100009860(&qword_100020788, &qword_1000165C8);
  v14 = __chkstk_darwin(v13 - 8);
  v224 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v226 = &v198 - v17;
  v18 = __chkstk_darwin(v16);
  v206 = &v198 - v19;
  __chkstk_darwin(v18);
  v205 = &v198 - v20;
  v21 = sub_100015794();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v243 = &v198 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v244 = &v198 - v26;
  v27 = __chkstk_darwin(v25);
  v214 = &v198 - v28;
  __chkstk_darwin(v27);
  v213 = &v198 - v29;
  v30 = sub_1000156D4();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v204 = &v198 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v220 = &v198 - v35;
  v36 = __chkstk_darwin(v34);
  v37 = __chkstk_darwin(v36);
  v247 = &v198 - v38;
  v39 = __chkstk_darwin(v37);
  v217 = &v198 - v40;
  v41 = __chkstk_darwin(v39);
  v215 = &v198 - v42;
  v43 = __chkstk_darwin(v41);
  v199 = &v198 - v44;
  result = __chkstk_darwin(v43);
  v198 = &v198 - v47;
  v48 = a3[1];
  v210 = a3;
  if (v48 < 1)
  {
    v50 = &_swiftEmptyArrayStorage;
LABEL_142:
    v5 = *v201;
    if (!*v201)
    {
      goto LABEL_184;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v30 = v210;
    if ((result & 1) == 0)
    {
LABEL_178:
      result = sub_10000E83C(v50);
      v50 = result;
    }

    v250 = v50;
    v192 = *(v50 + 16);
    if (v192 >= 2)
    {
      while (*v30)
      {
        v193 = *(v50 + 16 * v192);
        v194 = *(v50 + 16 * (v192 - 1) + 40);
        v195 = v245;
        sub_10000E114(*v30 + *(v31 + 72) * v193, *v30 + *(v31 + 72) * *(v50 + 16 * (v192 - 1) + 32), *v30 + *(v31 + 72) * v194, v5);
        v245 = v195;
        if (v195)
        {
        }

        if (v194 < v193)
        {
          goto LABEL_171;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_10000E83C(v50);
        }

        if (v192 - 2 >= *(v50 + 16))
        {
          goto LABEL_172;
        }

        v196 = (v50 + 16 * v192);
        *v196 = v193;
        v196[1] = v194;
        v250 = v50;
        result = sub_10000E7B0(v192 - 1);
        v50 = v250;
        v192 = *(v250 + 16);
        if (v192 <= 1)
        {
        }
      }

      goto LABEL_182;
    }
  }

  v223 = v46;
  v49 = 0;
  v233 = v31 + 16;
  v232 = (v31 + 8);
  v231 = NSURLCreationDateKey;
  v235 = (v22 + 56);
  v218 = (v5 + 8);
  v246 = (v22 + 48);
  v216 = (v22 + 32);
  v230 = (v22 + 8);
  v229 = (v31 + 32);
  v50 = &_swiftEmptyArrayStorage;
  v212 = xmmword_1000164D0;
  v209 = v31;
  v236 = v21;
  v234 = v30;
  while (1)
  {
    v203 = v50;
    v228 = v49;
    if (v49 + 1 >= v48)
    {
      v68 = v49 + 1;
      v87 = v200;
      goto LABEL_36;
    }

    v211 = v48;
    v51 = *v210;
    v52 = *(v31 + 72);
    v53 = *(v31 + 16);
    v54 = v198;
    v242 = *v210 + v52 * (v49 + 1);
    (v53)(v198);
    v241 = v51;
    v55 = v51 + v52 * v49;
    v56 = v199;
    v238 = v53;
    (v53)(v199, v55, v30);
    v57 = v245;
    LODWORD(v239) = sub_100008638(v54, v56);
    v245 = v57;
    if (v57)
    {
      v197 = *v232;
      (*v232)(v56, v30);
      v197(v54, v30);
    }

    v5 = v232;
    v58 = *v232;
    (*v232)(v56, v30);
    v237 = v58;
    result = (v58)(v54, v30);
    v59 = v49 + 2;
    v60 = v241 + v52 * (v49 + 2);
    v61 = v52;
    v240 = v52;
    v62 = v242;
    while (1)
    {
      v68 = v211;
      if (v211 == v59)
      {
        break;
      }

      v69 = v238;
      (v238)(v215, v60, v30);
      v242 = v62;
      (v69)(v217, v62, v30);
      v241 = sub_100009860(&qword_100020778, &qword_1000165C0);
      inited = swift_initStackObject();
      *(inited + 16) = v212;
      v71 = v231;
      *(inited + 32) = v231;
      v72 = v71;
      sub_100010FC4(inited);
      swift_setDeallocating();
      sub_100013264(inited + 32);
      v73 = v207;
      v74 = v245;
      sub_100015644();
      if (v74)
      {

        v75 = v205;
        (*v235)(v205, 1, 1, v21);
        v76 = v21;
LABEL_13:
        sub_100015734();
        v78 = *v246;
        if ((*v246)(v75, 1, v76) != 1)
        {
          sub_1000132C0(v75, &qword_100020788, &qword_1000165C8);
        }

        goto LABEL_16;
      }

      v77 = v205;
      sub_1000155A4();
      v75 = v77;
      (*v218)(v73, v219);
      v76 = v21;
      v78 = *v246;
      if ((*v246)(v75, 1, v76) == 1)
      {
        goto LABEL_13;
      }

      (*v216)(v213, v75, v76);
LABEL_16:
      v79 = swift_initStackObject();
      *(v79 + 16) = v212;
      *(v79 + 32) = v72;
      v80 = v79 + 32;
      sub_100010FC4(v79);
      swift_setDeallocating();
      sub_100013264(v80);
      v81 = v208;
      sub_100015644();
      v245 = 0;

      v82 = v206;
      sub_1000155A4();
      v83 = v82;
      (*v218)(v81, v219);
      v84 = v82;
      v85 = v236;
      v86 = v78(v84, 1, v236);
      v30 = v234;
      if (v86 == 1)
      {
        sub_100015734();
        if (v78(v83, 1, v85) != 1)
        {
          sub_1000132C0(v83, &qword_100020788, &qword_1000165C8);
        }

        v21 = v236;
      }

      else
      {
        (*v216)(v214, v83, v85);
        v21 = v85;
      }

      v63 = v213;
      v64 = v214;
      v65 = sub_100015764();
      v66 = *v230;
      (*v230)(v64, v21);
      v66(v63, v21);
      v5 = v232;
      v67 = v237;
      v237(v217, v30);
      result = (v67)(v215, v30);
      ++v59;
      v61 = v240;
      v60 = &v240[v60];
      v62 = &v240[v242];
      if ((v239 ^ v65))
      {
        v68 = v59 - 1;
        break;
      }
    }

    v87 = v200;
    v31 = v209;
    v50 = v203;
    if ((v239 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (v68 < v228)
    {
      goto LABEL_177;
    }

    if (v228 < v68)
    {
      v88 = v61 * (v68 - 1);
      v89 = v68 * v61;
      v211 = v68;
      v90 = v228;
      v91 = v228 * v61;
      do
      {
        if (v90 != --v68)
        {
          v93 = *v210;
          if (!*v210)
          {
            goto LABEL_181;
          }

          v5 = &v93[v91];
          v94 = *v229;
          (*v229)(v204, &v93[v91], v234);
          if (v91 < v88 || v5 >= &v93[v89])
          {
            v92 = v234;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v92 = v234;
            if (v91 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          result = (v94)(&v93[v88], v204, v92);
          v21 = v236;
          v30 = v92;
          v50 = v203;
          v61 = v240;
        }

        ++v90;
        v88 -= v61;
        v89 -= v61;
        v91 += v61;
      }

      while (v90 < v68);
      v87 = v200;
      v31 = v209;
      v68 = v211;
    }

LABEL_36:
    v95 = v210[1];
    if (v68 >= v95)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v68, v228))
    {
      goto LABEL_174;
    }

    if (v68 - v228 >= v87)
    {
LABEL_44:
      v49 = v68;
      goto LABEL_45;
    }

    if (__OFADD__(v228, v87))
    {
      goto LABEL_175;
    }

    if (v228 + v87 < v95)
    {
      v95 = (v228 + v87);
    }

    if (v95 < v228)
    {
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v68 == v95)
    {
      goto LABEL_44;
    }

    v202 = v95;
    v240 = *v210;
    v242 = sub_100009860(&qword_100020790, &qword_1000165D0);
    v222 = *(v31 + 72);
    v221 = *(v31 + 16);
    v142 = v223;
LABEL_97:
    v211 = v68;
    v143 = v68;
LABEL_98:
    v144 = v143 - 1;
    v145 = v240;
    v146 = v222;
    v238 = &v240[v222 * v143];
    v147 = v221;
    v221(v247);
    v239 = v144;
    v237 = &v145[v144 * v146];
    v147(v142);
    v148 = v231;
    v249 = v231;
    v30 = sub_100015F04();
    v5 = v30 + 56;
    v149 = v249;
    v241 = v148;
    sub_100015CC4();
    sub_100015FC4();
    v31 = v149;
    sub_100015D14();
    v150 = sub_100015FD4();

    v151 = -1 << *(v30 + 32);
    v50 = v150 & ~v151;
    v152 = v50 >> 6;
    v153 = *(v30 + 56 + 8 * (v50 >> 6));
    v154 = 1 << v50;
    if (((1 << v50) & v153) != 0)
    {
      v155 = ~v151;
      while (1)
      {
        v156 = sub_100015CC4();
        v158 = v157;
        if (v156 == sub_100015CC4() && v158 == v159)
        {

          goto LABEL_111;
        }

        v161 = sub_100015FB4();

        if (v161)
        {
          break;
        }

        v50 = (v50 + 1) & v155;
        v152 = v50 >> 6;
        v153 = *(v5 + 8 * (v50 >> 6));
        v154 = 1 << v50;
        if (((1 << v50) & v153) == 0)
        {
          v21 = v236;
          goto LABEL_107;
        }
      }

LABEL_111:
      v21 = v236;
    }

    else
    {
LABEL_107:
      *(v5 + 8 * v152) = v154 | v153;
      *(*(v30 + 48) + 8 * v50) = v31;
      v162 = *(v30 + 16);
      v110 = __OFADD__(v162, 1);
      v163 = v162 + 1;
      if (v110)
      {
        __break(1u);
        goto LABEL_156;
      }

      *(v30 + 16) = v163;
    }

    sub_100013264(&v249);
    v164 = v227;
    v165 = v245;
    sub_100015644();
    v166 = v226;
    if (v165)
    {

      (*v235)(v166, 1, 1, v21);
LABEL_115:
      sub_100015734();
      v31 = *v246;
      if ((*v246)(v166, 1, v21) != 1)
      {
        sub_1000132C0(v166, &qword_100020788, &qword_1000165C8);
      }
    }

    else
    {

      sub_1000155A4();
      (*v218)(v164, v219);
      v31 = *v246;
      if ((*v246)(v166, 1, v21) == 1)
      {
        goto LABEL_115;
      }

      (*v216)(v244, v166, v21);
    }

    v248 = v241;
    v30 = sub_100015F04();
    v50 = v30 + 56;
    v167 = v248;
    sub_100015CC4();
    sub_100015FC4();
    v245 = v167;
    sub_100015D14();
    v168 = sub_100015FD4();

    v169 = -1 << *(v30 + 32);
    v5 = v168 & ~v169;
    v170 = v5 >> 6;
    v171 = *(v30 + 56 + 8 * (v5 >> 6));
    v172 = 1 << v5;
    if (((1 << v5) & v171) == 0)
    {
      goto LABEL_127;
    }

    v241 = v31;
    v173 = ~v169;
    while (1)
    {
      v174 = sub_100015CC4();
      v176 = v175;
      if (v174 == sub_100015CC4() && v176 == v177)
      {

        goto LABEL_131;
      }

      v179 = sub_100015FB4();

      if (v179)
      {
        break;
      }

      v5 = (v5 + 1) & v173;
      v170 = v5 >> 6;
      v171 = *(v50 + 8 * (v5 >> 6));
      v172 = 1 << v5;
      if (((1 << v5) & v171) == 0)
      {
        v31 = v241;
LABEL_127:
        *(v50 + 8 * v170) = v172 | v171;
        *(*(v30 + 48) + 8 * v5) = v245;
        v180 = *(v30 + 16);
        v110 = __OFADD__(v180, 1);
        v181 = v180 + 1;
        v21 = v236;
        if (!v110)
        {
          *(v30 + 16) = v181;
          goto LABEL_132;
        }

LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }
    }

LABEL_131:
    v21 = v236;
    v31 = v241;
LABEL_132:
    sub_100013264(&v248);
    v182 = v225;
    v142 = v223;
    sub_100015644();
    v183 = v224;
    v245 = 0;

    sub_1000155A4();
    (*v218)(v182, v219);
    if ((v31)(v183, 1, v21) == 1)
    {
      v30 = v234;
      sub_100015734();
      if ((v31)(v183, 1, v21) != 1)
      {
        sub_1000132C0(v183, &qword_100020788, &qword_1000165C8);
      }
    }

    else
    {
      (*v216)(v243, v183, v21);
      v30 = v234;
    }

    v184 = v244;
    v185 = v243;
    v186 = sub_100015764();
    v31 = v230;
    v187 = *v230;
    (*v230)(v185, v21);
    v187(v184, v21);
    v188 = *v232;
    (*v232)(v142, v30);
    result = (v188)(v247, v30);
    if (v186)
    {
      break;
    }

LABEL_96:
    v68 = v211 + 1;
    if ((v211 + 1) != v202)
    {
      goto LABEL_97;
    }

    v50 = v203;
    v49 = v202;
LABEL_45:
    v5 = v228;
    if (v49 < v228)
    {
      goto LABEL_173;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100009E38(0, *(v50 + 16) + 1, 1, v50);
      v50 = result;
    }

    v97 = *(v50 + 16);
    v96 = *(v50 + 24);
    v98 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      result = sub_100009E38((v96 > 1), v97 + 1, 1, v50);
      v50 = result;
    }

    *(v50 + 16) = v98;
    v99 = v50 + 16 * v97;
    *(v99 + 32) = v5;
    *(v99 + 40) = v49;
    v5 = *v201;
    if (!*v201)
    {
      goto LABEL_183;
    }

    if (v97)
    {
      while (2)
      {
        v31 = v98 - 1;
        if (v98 >= 4)
        {
          v104 = v50 + 32 + 16 * v98;
          v105 = *(v104 - 64);
          v106 = *(v104 - 56);
          v110 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          if (v110)
          {
            goto LABEL_160;
          }

          v109 = *(v104 - 48);
          v108 = *(v104 - 40);
          v110 = __OFSUB__(v108, v109);
          v102 = v108 - v109;
          v103 = v110;
          if (v110)
          {
            goto LABEL_161;
          }

          v111 = (v50 + 16 * v98);
          v113 = *v111;
          v112 = v111[1];
          v110 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v110)
          {
            goto LABEL_163;
          }

          v110 = __OFADD__(v102, v114);
          v115 = v102 + v114;
          if (v110)
          {
            goto LABEL_166;
          }

          if (v115 >= v107)
          {
            v133 = (v50 + 32 + 16 * v31);
            v135 = *v133;
            v134 = v133[1];
            v110 = __OFSUB__(v134, v135);
            v136 = v134 - v135;
            if (v110)
            {
              goto LABEL_170;
            }

            if (v102 < v136)
            {
              v31 = v98 - 2;
            }
          }

          else
          {
LABEL_65:
            if (v103)
            {
              goto LABEL_162;
            }

            v116 = (v50 + 16 * v98);
            v118 = *v116;
            v117 = v116[1];
            v119 = __OFSUB__(v117, v118);
            v120 = v117 - v118;
            v121 = v119;
            if (v119)
            {
              goto LABEL_165;
            }

            v122 = (v50 + 32 + 16 * v31);
            v124 = *v122;
            v123 = v122[1];
            v110 = __OFSUB__(v123, v124);
            v125 = v123 - v124;
            if (v110)
            {
              goto LABEL_168;
            }

            if (__OFADD__(v120, v125))
            {
              goto LABEL_169;
            }

            if (v120 + v125 < v102)
            {
              goto LABEL_79;
            }

            if (v102 < v125)
            {
              v31 = v98 - 2;
            }
          }
        }

        else
        {
          if (v98 == 3)
          {
            v100 = *(v50 + 32);
            v101 = *(v50 + 40);
            v110 = __OFSUB__(v101, v100);
            v102 = v101 - v100;
            v103 = v110;
            goto LABEL_65;
          }

          v126 = (v50 + 16 * v98);
          v128 = *v126;
          v127 = v126[1];
          v110 = __OFSUB__(v127, v128);
          v120 = v127 - v128;
          v121 = v110;
LABEL_79:
          if (v121)
          {
            goto LABEL_164;
          }

          v129 = v50 + 16 * v31;
          v131 = *(v129 + 32);
          v130 = *(v129 + 40);
          v110 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v110)
          {
            goto LABEL_167;
          }

          if (v132 < v120)
          {
            break;
          }
        }

        v137 = v31 - 1;
        if (v31 - 1 >= v98)
        {
          goto LABEL_157;
        }

        if (!*v210)
        {
          goto LABEL_180;
        }

        v138 = *(v50 + 32 + 16 * v137);
        v139 = *(v50 + 32 + 16 * v31 + 8);
        v140 = v245;
        sub_10000E114(*v210 + *(v209 + 72) * v138, *v210 + *(v209 + 72) * *(v50 + 32 + 16 * v31), *v210 + *(v209 + 72) * v139, v5);
        v245 = v140;
        if (v140)
        {
        }

        if (v139 < v138)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_10000E83C(v50);
        }

        if (v137 >= *(v50 + 16))
        {
          goto LABEL_159;
        }

        v141 = v50 + 16 * v137;
        *(v141 + 32) = v138;
        *(v141 + 40) = v139;
        v250 = v50;
        result = sub_10000E7B0(v31);
        v50 = v250;
        v98 = *(v250 + 16);
        if (v98 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v48 = v210[1];
    v31 = v209;
    if (v49 >= v48)
    {
      goto LABEL_142;
    }
  }

  if (v240)
  {
    v189 = *v229;
    v190 = v220;
    (*v229)(v220, v238, v30);
    v191 = v237;
    swift_arrayInitWithTakeFrontToBack();
    v189(v191, v190, v30);
    v143 = v239;
    if (v239 == v228)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
  return result;
}

uint64_t sub_10000DD50(id *__dst, id *__src, id *a3, unint64_t a4, uint64_t (*a5)(id *, id *))
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v17 = &v16[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = v17;
      v20 = v8;
      v55 = *v8;
      v21 = v16;
      v54 = *v16;
      v22 = v54;
      v23 = v55;
      v24 = v22;
      v25 = a5(&v55, &v54);
      if (v6)
      {

        v45 = v19 - v21 + 7;
        if ((v19 - v21) >= 0)
        {
          v45 = v19 - v21;
        }

        v46 = v45 >> 3;
        if (v9 < v21 || v9 >= (v21 + (v45 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v9, v21, 8 * v46);
          return 1;
        }

        if (v9 == v21)
        {
          return 1;
        }

        v44 = 8 * v46;
        v42 = v9;
        v43 = v21;
        goto LABEL_57;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v18 = v21;
      v16 = v21 + 1;
      v8 = v20;
      if (v9 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      v17 = v19;
      v6 = 0;
      if (v16 >= v19)
      {
        goto LABEL_10;
      }
    }

    v18 = v20;
    v8 = v20 + 1;
    v16 = v21;
    if (v9 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v15);
    a4 = v27;
  }

  v52 = a4;
  v17 = (a4 + 8 * v15);
  if (v13 >= 8 && v8 > v9)
  {
    v28 = -a4;
    v49 = -a4;
    v50 = v9;
LABEL_25:
    v51 = v8;
    v29 = v8 - 1;
    v30 = v17 + v28;
    --v7;
    v31 = v17;
    while (1)
    {
      v32 = *--v31;
      v55 = v32;
      v33 = v29;
      v54 = *v29;
      v34 = v54;
      v35 = v32;
      v36 = v34;
      v37 = a5(&v55, &v54);
      if (v6)
      {
        break;
      }

      v38 = v37;

      v39 = v7 + 1;
      if (v38)
      {
        if (v39 != v51)
        {
          *v7 = *v33;
        }

        v16 = v52;
        v6 = 0;
        if (v17 <= v52 || (v8 = v33, v28 = v49, v33 <= v50))
        {
          v8 = v33;
          goto LABEL_51;
        }

        goto LABEL_25;
      }

      if (v39 != v17)
      {
        *v7 = *v31;
      }

      v30 -= 8;
      --v7;
      v17 = v31;
      v6 = 0;
      v29 = v33;
      if (v31 <= v52)
      {
        v17 = v31;
        v8 = v51;
        v16 = v52;
        goto LABEL_51;
      }
    }

    if (v30 >= 0)
    {
      v40 = v30;
    }

    else
    {
      v40 = v30 + 7;
    }

    v41 = v40 >> 3;
    v42 = v51;
    v43 = v52;
    if (v51 < v52 || v51 >= (v52 + (v40 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v51, v52, 8 * v41);
      return 1;
    }

    if (v51 == v52)
    {
      return 1;
    }

    v44 = 8 * v41;
    goto LABEL_57;
  }

  v16 = a4;
LABEL_51:
  v47 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v47 = v17 - v16;
  }

  if (v8 < v16 || v8 >= (v16 + (v47 & 0xFFFFFFFFFFFFFFF8)) || v8 != v16)
  {
    v44 = 8 * (v47 >> 3);
    v42 = v8;
    v43 = v16;
LABEL_57:
    memmove(v42, v43, v44);
  }

  return 1;
}

uint64_t sub_10000E114(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = sub_1000156D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v61 - v13;
  __chkstk_darwin(v12);
  result = __chkstk_darwin(&v61 - v15);
  v19 = &v61 - v18;
  v72 = *(v20 + 72);
  if (!v72)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_66;
  }

  v21 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v72;
  v79 = a1;
  v78 = a4;
  v74 = v9;
  if (v22 >= v21 / v72)
  {
    v70 = v17;
    v71 = v14;
    v24 = v21 / v72 * v72;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v24;
    if (v24 >= 1)
    {
      v37 = v71;
      v38 = -v72;
      v67 = (v10 + 16);
      v68 = (v10 + 8);
      v39 = v36;
      v73 = a4;
      v64 = a1;
      v65 = -v72;
      do
      {
        v75 = v5;
        v62 = v36;
        v40 = a2;
        v41 = a2 + v38;
        v66 = v41;
        v69 = v40;
        while (1)
        {
          v44 = v76;
          if (v40 <= a1)
          {
            v79 = v40;
            v59 = v62;
LABEL_62:
            v77 = v59;
            goto LABEL_64;
          }

          v63 = v36;
          v72 = v39;
          v45 = v39 + v38;
          v46 = *v67;
          v47 = v74;
          (*v67)(v37, v39 + v38, v74);
          v48 = v41;
          v49 = v38;
          v50 = v70;
          v46(v70, v48, v47);
          v51 = v75;
          v52 = sub_100008638(v37, v50);
          v75 = v51;
          if (v51)
          {
            v60 = *v68;
            (*v68)(v50, v47);
            v60(v37, v47);
            v79 = v69;
            v59 = v63;
            goto LABEL_62;
          }

          v53 = v52;
          v76 = v44 + v49;
          v54 = *v68;
          (*v68)(v50, v47);
          v54(v37, v47);
          if (v53)
          {
            break;
          }

          v36 = v45;
          v55 = v64;
          if (v44 < v72 || v76 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
            v41 = v66;
            v42 = v73;
          }

          else
          {
            v38 = v65;
            v41 = v66;
            v42 = v73;
            if (v44 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v43 = v45 > v42;
          v37 = v71;
          a1 = v55;
          v40 = v69;
          if (!v43)
          {
            a2 = v69;
            goto LABEL_63;
          }
        }

        a1 = v64;
        if (v44 < v69 || v76 >= v69)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v73;
          v5 = v75;
          v36 = v63;
          v38 = v65;
        }

        else
        {
          v56 = v44 == v69;
          v38 = v65;
          a2 = v66;
          v57 = v73;
          v5 = v75;
          v36 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v71;
        v39 = v72;
      }

      while (v72 > v57);
    }

LABEL_63:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v23 = v22 * v72;
    v71 = result;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v23;
    v77 = a4 + v23;
    if (v23 >= 1 && a2 < v76)
    {
      v26 = *(v10 + 16);
      v69 = v10 + 16;
      v67 = v26;
      v68 = (v10 + 8);
      while (1)
      {
        v27 = a2;
        v28 = a4;
        v29 = v67;
        (v67)(v19, a2, v9);
        v30 = v19;
        v31 = v71;
        v73 = v28;
        (v29)(v71, v28, v9);
        v32 = sub_100008638(v30, v31);
        if (v5)
        {
          break;
        }

        v33 = v32;
        v75 = 0;
        v34 = *v68;
        (*v68)(v31, v9);
        v34(v30, v9);
        v19 = v30;
        if (v33)
        {
          v35 = v72;
          a2 = v27 + v72;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v73;
        }

        else
        {
          v35 = v72;
          a4 = v73 + v72;
          a2 = v27;
          if (a1 < v73 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 += v35;
        v79 = a1;
        v5 = v75;
        if (a4 < v70)
        {
          v9 = v74;
          if (a2 < v76)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v58 = *v68;
      (*v68)(v31, v9);
      v58(v30, v9);
    }
  }

LABEL_64:
  sub_10000E850(&v79, &v78, &v77);
  return 1;
}

uint64_t sub_10000E7B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000E83C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10000E850(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000156D4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void (*sub_10000E934(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100015F34();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100013708;
  }

  __break(1u);
  return result;
}

void (*sub_10000E9B4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100015F34();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10000EA34;
  }

  __break(1u);
  return result;
}

char *sub_10000EA3C(unint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_100015F64();
  if (!v5)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_100009F3C(v5, 0);
  a2(v7 + 32, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10000EAD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100015F64();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100015F64();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100013488(&qword_1000207C0, &qword_1000207B8, &qword_1000165E8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100009860(&qword_1000207B8, &qword_1000165E8);
            v9 = sub_10000E934(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100013324(0, &qword_1000207B0, AVSpeechSynthesisVoice_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EC8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100015F64();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100015F64();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100013488(&qword_1000207A8, &qword_1000207A0, &qword_1000165E0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100009860(&qword_1000207A0, &qword_1000165E0);
            v9 = sub_10000E9B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100015DF4();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EE58(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v48 = a2;
  v47 = a1;
  v50 = sub_1000157B4();
  v41 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100015CF4();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000158A4();
  v43 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_100015BC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000156D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015A54();
  v18 = sub_100015844();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = v49;
  sub_100015B84();
  if (v19)
  {
    sub_1000132C0(v9, &qword_100020708, &qword_100016588);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v38 = v17;
    v39 = v15;
    v21 = v43;
    v40 = v14;
    sub_1000132C0(v9, &qword_100020708, &qword_100016588);
    (*(v11 + 8))(v13, v10);
    v22 = 0x80000001000173D0;
    v23 = 0xD000000000000012;
    v52 = 0xD000000000000012;
    v53 = 0x80000001000173D0;
    v24 = *(v47 + 16);
    if (v24)
    {
      v37 = 0;
      v26 = *(v21 + 16);
      v25 = v21 + 16;
      v27 = v47 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
      v28 = v42;
      v48 = (v41 + 8);
      v49 = v26;
      v47 = *(v25 + 56);
      v29 = v54;
      do
      {
        v49(v6, v27, v29);
        v51._countAndFlagsBits = 0;
        v51._object = 0xE000000000000000;
        sub_100015F24(16);

        v51._countAndFlagsBits = 0x203A656D614ELL;
        v51._object = 0xE600000000000000;
        v55._countAndFlagsBits = sub_100015884();
        sub_100015D24(v55);

        v56._countAndFlagsBits = 0x203A44490ALL;
        v56._object = 0xE500000000000000;
        sub_100015D24(v56);
        sub_100015894();
        v30 = sub_1000157A4();
        v32 = v31;
        (*v48)(v28, v50);
        v57._countAndFlagsBits = v30;
        v57._object = v32;
        sub_100015D24(v57);

        v58._countAndFlagsBits = 10;
        v58._object = 0xE100000000000000;
        sub_100015D24(v58);
        sub_100015D24(v51);
        v29 = v54;

        (*(v25 - 8))(v6, v29);
        v27 += v47;
        --v24;
      }

      while (v24);
      v23 = v52;
      v22 = v53;
    }

    v52 = v23;
    v53 = v22;
    v33 = v44;
    sub_100015CE4();
    sub_100013030();
    v34 = v38;
    sub_100015E94();
    v36 = v39;
    v35 = v40;
    (*(v45 + 8))(v33, v46);
    (*(v36 + 8))(v34, v35);
  }
}

uint64_t sub_10000F444(uint64_t a1, uint64_t a2)
{
  v3 = sub_100015CF4();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_100015BC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000156D4();
  v27 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015A54();
  v15 = sub_100015844();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = v32;
  sub_100015B84();
  if (v16)
  {
    sub_1000132C0(v7, &qword_100020708, &qword_100016588);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v32 = v14;
    sub_1000132C0(v7, &qword_100020708, &qword_100016588);
    (*(v9 + 8))(v11, v8);
    v18 = 0;
    v31[0] = 0xD000000000000013;
    v31[1] = 0x8000000100017190;
    v19 = *(a1 + 16);
    v21 = v28;
    v20 = v29;
    v22 = v12;
    v23 = v27;
    while (v19 != v18)
    {
      v24 = *(sub_100015A44() - 8);
      sub_10000569C(v31, (a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18++));
    }

    v25 = v30;
    sub_100015CE4();
    sub_100013030();
    v26 = v32;
    sub_100015E94();
    (*(v21 + 8))(v25, v20);
    (*(v23 + 8))(v26, v22);
  }
}

uint64_t sub_10000F878(uint64_t a1, uint64_t a2)
{
  v3 = sub_100015CF4();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_100015BC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000156D4();
  v27 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015A54();
  v15 = sub_100015844();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = v32;
  sub_100015B84();
  if (v16)
  {
    sub_1000132C0(v7, &qword_100020708, &qword_100016588);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v32 = v14;
    sub_1000132C0(v7, &qword_100020708, &qword_100016588);
    (*(v9 + 8))(v11, v8);
    v18 = 0;
    v31[0] = 0xD000000000000019;
    v31[1] = 0x8000000100016F30;
    v19 = *(a1 + 16);
    v21 = v28;
    v20 = v29;
    v22 = v12;
    v23 = v27;
    while (v19 != v18)
    {
      v24 = *(sub_100015834() - 8);
      sub_100006460(v31, a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18++);
    }

    v25 = v30;
    sub_100015CE4();
    sub_100013030();
    v26 = v32;
    sub_100015E94();
    (*(v21 + 8))(v25, v20);
    (*(v23 + 8))(v26, v22);
  }
}

uint64_t sub_10000FCA4(uint64_t a1)
{
  v1 = sub_100015CF4();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  __chkstk_darwin(v1);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_100015BC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000156D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015A54();
  v15 = sub_100015844();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = v36;
  sub_100015B84();
  if (v16)
  {
    sub_1000132C0(v6, &qword_100020708, &qword_100016588);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v32 = v12;
    v36 = v11;
    v18 = v35;
    sub_1000132C0(v6, &qword_100020708, &qword_100016588);
    (*(v8 + 8))(v10, v7);
    v19 = [objc_opt_self() _speechVoicesIncludingSiriAndSuperCompact];
    sub_100013324(0, &qword_1000207B0, AVSpeechSynthesisVoice_ptr);
    sub_100015D74();

    v37 = sub_10000EA3C(v20, sub_10000EAD8);
    sub_10000A004(&v37, sub_10001370C, sub_10000A140);

    v21 = v37;
    v22 = 0x8000000100016EE0;
    v23 = 0xD00000000000001CLL;
    v37 = 0xD00000000000001CLL;
    v38 = 0x8000000100016EE0;
    if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
    {
      goto LABEL_17;
    }

    for (i = *(v21 + 16); i; i = sub_100015F64())
    {
      v22 = 0;
      v23 = (v21 & 0xC000000000000001);
      while (1)
      {
        if (v23)
        {
          v25 = sub_100015F34();
        }

        else
        {
          if (v22 >= *(v21 + 16))
          {
            goto LABEL_16;
          }

          v25 = *(v21 + 8 * v22 + 32);
        }

        v26 = v25;
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v39 = v25;
        sub_100007908(&v37, &v39);

        ++v22;
        if (v27 == i)
        {
          v23 = v37;
          v22 = v38;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_14:

    v37 = v23;
    v38 = v22;
    v28 = v18;
    sub_100015CE4();
    sub_100013030();
    sub_100015E94();
    v29 = v36;
    v30 = v32;
    (*(v34 + 8))(v28, v33);
    (*(v30 + 8))(v14, v29);
  }
}

uint64_t sub_1000101C4(uint64_t a1)
{
  v1 = sub_100015CF4();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_100015BC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000156D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015A54();
  v15 = sub_100015844();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = v43;
  sub_100015B84();
  if (v16)
  {
    sub_1000132C0(v6, &qword_100020708, &qword_100016588);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v36 = v14;
    v37 = v12;
    v38 = v11;
    v43 = v3;
    sub_1000132C0(v6, &qword_100020708, &qword_100016588);
    (*(v8 + 8))(v10, v7);
    v18 = [objc_opt_self() sharedInstance];
    v19 = [v18 resourcesWithType:1 subType:1];

    sub_100015DF4();
    sub_100015D74();

    v42[0] = sub_10000EA3C(v20, sub_10000EC8C);
    sub_10000A004(v42, sub_10001370C, sub_10000A254);
    v21 = 0xED00000A0A3A7365;

    v22 = v42[0];
    strcpy(v42, "TTS Voices:\n\n");
    HIWORD(v42[1]) = -4864;
    object = v40;
    if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
    {
      goto LABEL_16;
    }

    for (i = *(v22 + 16); i; i = sub_100015F64())
    {
      v21 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = sub_100015F34();
        }

        else
        {
          if (v21 >= *(v22 + 16))
          {
            goto LABEL_15;
          }

          v25 = *(v22 + 8 * v21 + 32);
        }

        v26 = v25;
        v27 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v41._countAndFlagsBits = sub_100007E0C();
        v41._object = v28;
        v44._countAndFlagsBits = 10;
        v44._object = 0xE100000000000000;
        sub_100015D24(v44);
        object = v41._object;
        sub_100015D24(v41);

        ++v21;
        if (v27 == i)
        {
          v29 = v42[0];
          v21 = v42[1];
          v30 = v39;
          object = v40;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    v29 = 0x63696F5620535454;
    v30 = v39;
LABEL_18:

    v42[0] = v29;
    v42[1] = v21;
    v31 = v43;
    sub_100015CE4();
    sub_100013030();
    v32 = v36;
    sub_100015E94();
    v34 = v37;
    v33 = v38;
    (*(v30 + 8))(v31, object);
    (*(v34 + 8))(v32, v33);
  }
}

void sub_100010724(uint64_t a1)
{
  v2 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_100015BC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000156D4();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(NSUserDefaults);
  v13 = sub_100015C94();
  v14 = [v12 initWithSuiteName:v13];

  if (v14)
  {
    sub_100015A54();
    v15 = sub_100015844();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    sub_100015B84();
    if (v1)
    {

      sub_1000132C0(v4, &qword_100020708, &qword_100016588);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      sub_1000132C0(v4, &qword_100020708, &qword_100016588);
      (*(v6 + 8))(v8, v5);
      v16 = [v14 dictionaryRepresentation];
      if (v16)
      {
        v18 = v16;
        sub_100015674(v17);
        v20 = v19;
        v27 = 0;
        v21 = [v18 writeToURL:v19 error:&v27];

        if (v21)
        {
          v22 = *(v25 + 8);
          v23 = v27;
          v22(v11, v26);
        }

        else
        {
          v24 = v27;
          sub_100015614();

          swift_willThrow();
          (*(v25 + 8))(v11, v26);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100010ADC(uint64_t a1)
{
  v1 = sub_100015CF4();
  v37 = *(v1 - 8);
  __chkstk_darwin(v1);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_100015BC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000156D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015A54();
  v14 = sub_100015844();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v35 = v13;
  v15 = v40;
  sub_100015B84();
  if (v15)
  {
    sub_1000132C0(v5, &qword_100020708, &qword_100016588);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v33 = v11;
    v34 = v10;
    v40 = v1;
    sub_1000132C0(v5, &qword_100020708, &qword_100016588);
    (*(v7 + 8))(v9, v6);
    v17 = [objc_allocWithZone(sub_100015C14()) init];
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_100015F24(110);
    v41._countAndFlagsBits = 0xD00000000000001BLL;
    v41._object = 0x8000000100016DA0;
    sub_100015D24(v41);
    v18 = sub_100015C04();
    v19 = (v18 & 1) == 0;
    if (v18)
    {
      v20._countAndFlagsBits = 7562585;
    }

    else
    {
      v20._countAndFlagsBits = 28494;
    }

    if (v19)
    {
      v21 = 0xE200000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v20._object = v21;
    sub_100015D24(v20);

    v42._object = 0x8000000100016DC0;
    v42._countAndFlagsBits = 0xD00000000000001ALL;
    sub_100015D24(v42);
    sub_100015BF4();
    v43._countAndFlagsBits = sub_100015C24();
    sub_100015D24(v43);

    v44._object = 0x8000000100016DE0;
    v44._countAndFlagsBits = 0xD00000000000001ALL;
    sub_100015D24(v44);
    v22 = sub_100015BE4();
    v23 = (v22 & 1) == 0;
    if (v22)
    {
      v24._countAndFlagsBits = 1702195828;
    }

    else
    {
      v24._countAndFlagsBits = 0x65736C6166;
    }

    if (v23)
    {
      v25 = 0xE500000000000000;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    v24._object = v25;
    sub_100015D24(v24);

    v45._countAndFlagsBits = 0xD000000000000017;
    v45._object = 0x8000000100016E00;
    sub_100015D24(v45);
    v26 = sub_100015BD4();
    v27 = (v26 & 1) == 0;
    if (v26)
    {
      v28._countAndFlagsBits = 1702195828;
    }

    else
    {
      v28._countAndFlagsBits = 0x65736C6166;
    }

    if (v27)
    {
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    v28._object = v29;
    sub_100015D24(v28);

    v30 = v36;
    sub_100015CE4();
    sub_100013030();
    v31 = v35;
    sub_100015E94();

    (*(v37 + 8))(v30, v40);
    (*(v33 + 8))(v31, v34);
  }
}

void *sub_100010FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009860(&qword_100020790, &qword_1000165D0);
    v3 = sub_100015F04();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100015CC4();
      sub_100015FC4();
      v27 = v7;
      sub_100015D14();
      v8 = sub_100015FD4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_100015CC4();
        v18 = v17;
        if (v16 == sub_100015CC4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_100015FB4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000111B8(uint64_t a1)
{
  v99 = a1;
  v93 = sub_100015CF4();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v2 - 8);
  v4 = &v81 - v3;
  v5 = sub_100015BC4();
  v97 = *(v5 - 1);
  v98 = v5;
  __chkstk_darwin(v5);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000156D4();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = __chkstk_darwin(v8);
  v94 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v81 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v81 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v81 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v81 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v81 - v24;
  __chkstk_darwin(v23);
  v27 = &v81 - v26;
  sub_100015A54();
  v28 = sub_100015844();
  (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
  v29 = v100;
  sub_100015B84();
  if (v29)
  {
    sub_1000132C0(v4, &qword_100020708, &qword_100016588);
    return (*(v97 + 8))(v7, v98);
  }

  v99 = v16;
  v100 = v19;
  v89 = v22;
  v90 = v13;
  sub_1000132C0(v4, &qword_100020708, &qword_100016588);
  (*(v97 + 8))(v7, v98);
  sub_100013324(0, &qword_100020770, NSFileHandle_ptr);
  v31 = v95;
  v32 = v96;
  v33 = v95 + 16;
  v34 = *(v95 + 16);
  v34(v25, v27, v96);
  v35 = sub_1000084E0(v25);
  sub_100015DE4();
  v36 = v89;
  sub_100015C34();
  v87 = v33;
  v88 = v34;
  v84 = v35;
  v98 = [objc_opt_self() defaultManager];
  sub_100015674(v37);
  v39 = v38;
  sub_100009860(&qword_100020778, &qword_1000165C0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000164D0;
  *(v40 + 32) = NSURLCreationDateKey;
  type metadata accessor for URLResourceKey(0);
  v41 = NSURLCreationDateKey;
  isa = sub_100015D64().super.isa;

  v101 = 0;
  v43 = v98;
  v44 = [v98 contentsOfDirectoryAtURL:v39 includingPropertiesForKeys:isa options:0 error:&v101];

  v45 = v101;
  if (v44)
  {
    v82 = v27;
    v46 = sub_100015D74();
    v47 = v45;

    v48 = v46;
    v86 = *(v46 + 16);
    if (v86)
    {
      v49 = 0;
      v83 = (v31 + 8);
      v97 = v31 + 32;
      v50 = &_swiftEmptyArrayStorage;
      v51 = v99;
      v85 = v46;
      while (1)
      {
        if (v49 >= *(v48 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
        }

        v98 = ((*(v31 + 80) + 32) & ~*(v31 + 80));
        v53 = *(v31 + 72);
        v88(v100, &v98[v48 + v53 * v49], v32);
        if (sub_100015634() == 6778732 && v54 == 0xE300000000000000)
        {
          break;
        }

        v55 = sub_100015FB4();
        v51 = v99;

        if (v55)
        {
          goto LABEL_13;
        }

        (*v83)(v100, v32);
        v52 = v94;
LABEL_7:
        ++v49;
        v48 = v85;
        if (v86 == v49)
        {
          goto LABEL_20;
        }
      }

LABEL_13:
      v56 = *v97;
      (*v97)(v51, v100, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100014054(0, *(v50 + 16) + 1, 1);
        v50 = v101;
      }

      v59 = *(v50 + 16);
      v58 = *(v50 + 24);
      v52 = v94;
      if (v59 >= v58 >> 1)
      {
        sub_100014054((v58 > 1), v59 + 1, 1);
        v52 = v94;
        v50 = v101;
      }

      *(v50 + 16) = v59 + 1;
      v51 = v99;
      v60 = &v98[v50 + v59 * v53];
      v32 = v96;
      v56(v60, v99, v96);
      goto LABEL_7;
    }

    v50 = &_swiftEmptyArrayStorage;
    v52 = v94;
LABEL_20:

    v101 = v50;

    sub_10000A098(&v101);

    v64 = v101;
    v65 = v90;
    v96 = *(v101 + 16);
    if (v96)
    {
      v66 = v31;
      v67 = 0;
      v98 = (v101 + ((*(v66 + 80) + 32) & ~*(v66 + 80)));
      v99 = v101;
      v97 = v91 + 8;
      v100 = (v66 + 8);
      v91 = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      do
      {
        if (v67 >= *(v64 + 16))
        {
          goto LABEL_30;
        }

        v68 = v95;
        v88(v65, &v98[*(v95 + 72) * v67], v32);
        sub_100015684();
        v69 = sub_100015654();
        v71 = v70;
        v72 = *(v68 + 8);
        v72(v52, v32);
        v101 = 2570;
        v102 = 0xE200000000000000;
        v103._countAndFlagsBits = v69;
        v103._object = v71;
        sub_100015D24(v103);

        v104._countAndFlagsBits = 2570;
        v104._object = 0xE200000000000000;
        sub_100015D24(v104);

        v73 = v92;
        sub_100015CE4();
        v74 = sub_100015CD4();
        v76 = v75;

        (*v97)(v73, v93);
        if (v76 >> 60 != 15)
        {
          v101 = v74;
          v102 = v76;
          sub_1000131A8();
          sub_100015DD4();
          sub_100013250(v74, v76);
        }

        v65 = v90;
        v77 = sub_1000156E4();
        v79 = v78;
        v101 = v77;
        v102 = v78;
        sub_1000131A8();
        sub_100015DD4();
        ++v67;
        v72(v65, v32);
        sub_1000131FC(v77, v79);
        v52 = v94;
        v64 = v99;
      }

      while (v96 != v67);
    }

    else
    {

      v72 = *(v31 + 8);
    }

    v72(v89, v32);
    v80 = v84;
    [v84 closeFile];

    return (v72)(v82, v32);
  }

  else
  {
    v61 = v101;
    sub_100015614();

    swift_willThrow();
    v62 = *(v31 + 8);
    v62(v36, v32);
    v63 = v84;
    [v84 closeFile];

    return (v62)(v27, v32);
  }
}

id sub_100011D20(char *a1)
{
  v140 = a1;
  v1 = sub_100015CF4();
  v135 = *(v1 - 8);
  v136 = v1;
  __chkstk_darwin(v1);
  v131 = &v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100015C54();
  v133 = *(v3 - 8);
  v134 = v3;
  __chkstk_darwin(v3);
  v132 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009860(&qword_100020708, &qword_100016588);
  __chkstk_darwin(v5 - 8);
  v7 = &v122 - v6;
  v139 = sub_100015BC4();
  v8 = *(v139 - 1);
  __chkstk_darwin(v139);
  v10 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000156D4();
  v12 = *(v11 - 8);
  v137 = v11;
  v138 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v122 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v122 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v122 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v122 - v26;
  __chkstk_darwin(v25);
  v29 = &v122 - v28;
  sub_100015A54();
  v30 = sub_100015844();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  v31 = v141;
  sub_100015B84();
  v141 = v31;
  if (v31)
  {
    sub_1000132C0(v7, &qword_100020708, &qword_100016588);
    return (*(v8 + 8))(v10, v139);
  }

  else
  {
    v128 = v24;
    v126 = v15;
    v127 = v18;
    v129 = v21;
    v140 = v27;
    v130 = v29;
    v33 = v138;
    sub_1000132C0(v7, &qword_100020708, &qword_100016588);
    (*(v8 + 8))(v10, v139);
    v147._countAndFlagsBits = 0;
    v147._object = 0xE000000000000000;
    sub_100015934();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v36 = sub_100015C94();
    v37 = sub_100015C94();
    v38 = [v35 URLForResource:v36 withExtension:v37];

    if (v38)
    {
      v139 = v35;
      v39 = v128;
      sub_1000156B4();

      v40 = v33;
      v41 = v140;
      v42 = v137;
      (*(v33 + 32))(v140, v39, v137);
      v43 = objc_allocWithZone(NSManagedObjectModel);
      sub_100015674(v44);
      v46 = v45;
      v47 = [v43 initWithContentsOfURL:v45];

      v48 = v130;
      if (v47)
      {
        v49 = v141;
        sub_100015924();
        if (v49)
        {

          v50 = *(v40 + 8);
          v50(v41, v42);
          return (v50)(v48, v42);
        }

        else
        {
          v141 = 0;
          v52 = objc_allocWithZone(NSPersistentContainer);
          v53 = v47;
          v54 = sub_100015C94();
          v125 = [v52 initWithName:v54 managedObjectModel:v53];

          v124 = v53;
          v55 = v132;
          v56 = v133;
          v57 = v134;
          (*(v133 + 13))(v132, enum case for TTSVBPath.root(_:), v134);
          v58 = v126;
          sub_100015C44();
          (v56)[1](v55, v57);
          v59 = v127;
          sub_100015694();
          v61 = *(v40 + 8);
          v60 = v40 + 8;
          v61(v58, v42);
          sub_1000156A4();
          v134 = v61;
          v61(v59, v42);
          v62 = 0xE000000000000000;
          v146._countAndFlagsBits = 0;
          v146._object = 0xE000000000000000;
          sub_100015F24(27);

          v146._countAndFlagsBits = 0xD000000000000018;
          v146._object = 0x8000000100016CF0;
          v149._countAndFlagsBits = sub_1000156C4();
          sub_100015D24(v149);

          v150._countAndFlagsBits = 10;
          v150._object = 0xE100000000000000;
          sub_100015D24(v150);
          sub_100015D24(v146);

          v63 = objc_allocWithZone(NSPersistentStoreDescription);
          sub_100015674(v64);
          v66 = v65;
          v67 = [v63 initWithURL:v65];

          [v67 setOption:NSFileProtectionCompleteUntilFirstUserAuthentication forKey:NSPersistentStoreFileProtectionKey];
          [v67 setType:NSSQLiteStoreType];
          sub_100009860(&qword_100020758, &qword_1000165B8);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_1000164E0;
          *(v68 + 32) = v67;
          sub_100013324(0, &qword_100020760, NSPersistentStoreDescription_ptr);
          v69 = v67;
          v70 = v125;
          v71 = v69;
          isa = sub_100015D64().super.isa;

          [v70 setPersistentStoreDescriptions:isa];

          v146._countAndFlagsBits = 0;
          v73 = [v70 load:&v146];
          countAndFlagsBits = v146._countAndFlagsBits;
          if (v73)
          {
            v123 = v71;
            v75 = v146._countAndFlagsBits;
            v133 = [v70 viewContext];
            v76 = [v70 managedObjectModel];
            v151._object = 0x8000000100016D30;
            v151._countAndFlagsBits = 0xD000000000000014;
            sub_100015D24(v151);
            v122 = v76;
            v77 = [v76 entities];
            sub_100013324(0, &qword_100020768, NSEntityDescription_ptr);
            v78 = sub_100015D74();

            if (v78 >> 62)
            {
LABEL_34:
              v79 = sub_100015F64();
            }

            else
            {
              v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v80 = v129;
            v81 = v134;
            v82 = v135;
            v42 = v136;
            if (v79)
            {
              v41 = 0;
              v132 = (v78 & 0xC000000000000001);
              v128 = v78 & 0xFFFFFFFFFFFFFF8;
              v127 = v78;
              v126 = v79;
              v138 = v60;
              while (1)
              {
                if (v132)
                {
                  countAndFlagsBits = sub_100015F34();
                  v71 = 0xD000000000000014;
                  v62 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }
                }

                else
                {
                  v71 = 0xD000000000000014;
                  if (v41 >= *(v128 + 16))
                  {
                    __break(1u);
                    goto LABEL_34;
                  }

                  countAndFlagsBits = *(v78 + 8 * v41 + 32);
                  v62 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    goto LABEL_26;
                  }
                }

                result = [countAndFlagsBits name];
                if (!result)
                {
                  __break(1u);
LABEL_36:
                  __break(1u);
                  goto LABEL_37;
                }

                v83 = result;
                v84 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:result];

                [v84 setResultType:4];
                v146._countAndFlagsBits = 0;
                v85 = [v133 countForFetchRequest:v84 error:&v146];
                v86 = v146._countAndFlagsBits;
                if (v146._countAndFlagsBits)
                {
                  break;
                }

                v87 = v85;
                v88 = v84;
                v146._countAndFlagsBits = 0;
                v146._object = 0xE000000000000000;
                sub_100015F24(23);

                v146._countAndFlagsBits = 2108704;
                v146._object = 0xE300000000000000;
                result = [countAndFlagsBits name];
                if (!result)
                {
                  goto LABEL_36;
                }

                v89 = result;
                v90 = countAndFlagsBits;
                v91 = sub_100015CC4();
                v93 = v92;

                v144 = v91;
                v145 = v93;
                v142 = 32;
                v143 = 0xE100000000000000;
                sub_100013030();
                v94 = sub_100015EA4();
                v96 = v95;

                v152._countAndFlagsBits = v94;
                v152._object = v96;
                sub_100015D24(v152);

                v153._countAndFlagsBits = 10272;
                v153._object = 0xE200000000000000;
                sub_100015D24(v153);
                v144 = v87;
                v154._countAndFlagsBits = sub_100015FA4();
                sub_100015D24(v154);

                v155._countAndFlagsBits = 0x636E6174736E6920;
                v155._object = 0xEE000A2929732865;
                sub_100015D24(v155);
                sub_100015D24(v146);

                ++v41;
                v97 = v62 == v126;
                v60 = v138;
                v80 = v129;
                v81 = v134;
                v82 = v135;
                v42 = v136;
                v78 = v127;
                if (v97)
                {
                  goto LABEL_30;
                }
              }

              swift_willThrow();
              v146._countAndFlagsBits = 0;
              v146._object = 0xE000000000000000;
              v109 = countAndFlagsBits;
              v110 = v86;
              sub_100015F24(38);

              v146._countAndFlagsBits = 0xD000000000000020;
              v146._object = 0x8000000100016D50;
              result = [v109 name];
              if (result)
              {
                v111 = result;

                v112 = sub_100015CC4();
                v114 = v113;

                v157._countAndFlagsBits = v112;
                v157._object = v114;
                sub_100015D24(v157);

                v158._countAndFlagsBits = 8238;
                v158._object = 0xE200000000000000;
                sub_100015D24(v158);
                v115 = sub_100015604();
                v116 = [v115 debugDescription];

                v117 = sub_100015CC4();
                v119 = v118;

                v159._countAndFlagsBits = v117;
                v159._object = v119;
                sub_100015D24(v159);

                sub_100015854();
                sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
                swift_allocError();
                sub_100015864();
                swift_willThrow();

                v120 = v137;
                v121 = v134;
                v134(v129, v137);
                v121(v140, v120);
                return (v121)(v130, v120);
              }

LABEL_37:
              __break(1u);
            }

            else
            {
LABEL_30:

              v146 = v147;
              v106 = v131;
              sub_100015CE4();
              sub_100013030();
              v107 = v130;
              sub_100015E94();

              (*(v82 + 8))(v106, v42);

              v108 = v137;
              v81(v80, v137);
              v81(v140, v108);
              return (v81)(v107, v108);
            }
          }

          else
          {
LABEL_27:
            v98 = countAndFlagsBits;

            sub_100015614();

            swift_willThrow();
            v146._countAndFlagsBits = 0;
            v146._object = v62;
            sub_100015F24(28);

            v146._countAndFlagsBits = 0xD00000000000001ALL;
            v146._object = 0x8000000100016D10;
            v99 = sub_100015604();
            v100 = [v99 debugDescription];

            v101 = v71;
            v102 = sub_100015CC4();
            v104 = v103;

            v156._countAndFlagsBits = v102;
            v156._object = v104;
            sub_100015D24(v156);

            sub_100015854();
            sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
            swift_allocError();
            sub_100015864();
            swift_willThrow();

            v105 = v134;
            v134(v129, v42);
            v105(v41, v42);
            return (v105)(v130, v42);
          }
        }
      }

      else
      {
        v146._countAndFlagsBits = 0;
        v146._object = 0xE000000000000000;
        sub_100015F24(45);

        v146._countAndFlagsBits = 0xD00000000000002BLL;
        v146._object = 0x8000000100016CC0;
        v148._countAndFlagsBits = sub_1000156C4();
        sub_100015D24(v148);

        sub_100015854();
        sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
        swift_allocError();
        sub_100015864();
        swift_willThrow();

        v51 = *(v40 + 8);
        v51(v41, v42);
        return (v51)(v48, v42);
      }
    }

    else
    {
      sub_100015854();
      sub_1000130D4(&qword_100020748, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      sub_100015864();
      swift_willThrow();

      return (*(v33 + 8))(v130, v137);
    }
  }

  return result;
}

uint64_t sub_100012FE4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100013030()
{
  result = qword_100020720;
  if (!qword_100020720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020720);
  }

  return result;
}

uint64_t sub_100013084(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000130D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100013124(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009860(&qword_100020700, &qword_100016580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000131A8()
{
  result = qword_100020780;
  if (!qword_100020780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020780);
  }

  return result;
}

uint64_t sub_1000131FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100013250(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000131FC(result, a2);
  }

  return result;
}

uint64_t sub_100013264(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000132C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009860(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100013324(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10001338C()
{
  result = qword_1000207C8;
  if (!qword_1000207C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207C8);
  }

  return result;
}

unint64_t sub_1000133E0()
{
  result = qword_1000207D8;
  if (!qword_1000207D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207D8);
  }

  return result;
}

unint64_t sub_100013434()
{
  result = qword_1000207F0;
  if (!qword_1000207F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207F0);
  }

  return result;
}

uint64_t sub_100013488(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100013084(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000134F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009860(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_100013558(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1000135E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *sub_100013714(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100015F64();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100014074(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100015F34();
        sub_100013324(0, &qword_100020890, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100014074((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100015510(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100013324(0, &qword_100020890, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100014074((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100015510(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id VoiceBankingDiagnosticsExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceBankingDiagnosticsExtension.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id VoiceBankingDiagnosticsExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100013AAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100013B78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_1000154B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100012FE4(v11);
  return v7;
}

unint64_t sub_100013B78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100013C84(a5, a6);
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
    result = sub_100015F44();
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

char *sub_100013C84(uint64_t a1, unint64_t a2)
{
  v3 = sub_100013CD0(a1, a2);
  sub_100013E00(&off_10001CC10);
  return v3;
}

char *sub_100013CD0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100013EEC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100015F44();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100015D34();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100013EEC(v10, 0);
        result = sub_100015F14();
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

uint64_t sub_100013E00(uint64_t result)
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

  result = sub_100013F60(result, v11, 1, v3);
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

void *sub_100013EEC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100009860(&qword_100020888, "H\r");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100013F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009860(&qword_100020888, "H\r");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100014054(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014074(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001426C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014094(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009860(&qword_1000208A0, &unk_100016B40);
  v10 = *(sub_1000156D4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000156D4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10001426C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009860(&qword_100020898, &qword_100016B38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10001437C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100015ED4(*(v2 + 40));

  return sub_1000143C0(a1, v4);
}

unint64_t sub_1000143C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100015458(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100015EE4();
      sub_100015520(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *_s23VoiceBankingDiagnostics0abC9ExtensionC11attachments13forParametersSayypGSgSDys11AnyHashableVypGSg_tF_0(uint64_t a1)
{
  v134 = a1;
  v1 = sub_1000156D4();
  v125 = *(v1 - 8);
  v126 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v128 = &v121 - v6;
  __chkstk_darwin(v5);
  v8 = (&v121 - v7);
  v9 = sub_100015804();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v129 = &v121 - v14;
  v15 = __chkstk_darwin(v13);
  v122 = &v121 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v121 - v18;
  v20 = __chkstk_darwin(v17);
  v127 = &v121 - v21;
  v22 = __chkstk_darwin(v20);
  v140 = (&v121 - v23);
  v24 = __chkstk_darwin(v22);
  v26 = &v121 - v25;
  __chkstk_darwin(v24);
  v28 = &v121 - v27;
  if (qword_1000204B0 != -1)
  {
    swift_once();
  }

  v29 = sub_100009FC4(v9, qword_1000208A8);
  v30 = v10;
  v31 = *(v10 + 16);
  v138 = v10 + 16;
  v139 = v29;
  v137 = v31;
  (v31)(v28);
  v32 = sub_1000157E4();
  v33 = sub_100015E14();
  v34 = os_log_type_enabled(v32, v33);
  v135 = v4;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Will begin creating voicediagnose attachments", v35, 2u);
    v4 = v135;
  }

  v36 = *(v30 + 8);
  v133 = (v30 + 8);
  v136 = v36;
  v36(v28, v9);
  v137(v26, v139, v9);
  v37 = sub_1000157E4();
  v38 = sub_100015E14();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Attachment Parameters: ", v39, 2u);
  }

  v123 = v19;
  v130 = v8;

  v40 = v26;
  v41 = v133;
  v136(v40, v9);
  result = v134;
  if (!v134)
  {
    __break(1u);
    return result;
  }

  v43 = v134 + 64;
  v44 = 1 << *(v134 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v134 + 64);
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  *&v49 = 136315394;
  v131 = v49;
  v132 = v9;
  v50 = v140;
  while (1)
  {
    if (!v46)
    {
      if (v47 <= (v48 + 1))
      {
        v52 = v48 + 1;
      }

      else
      {
        v52 = v47;
      }

      v53 = v52 - 1;
      while (1)
      {
        v51 = (v48 + 1);
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v51 >= v47)
        {
          v46 = 0;
          v151 = 0;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          goto LABEL_23;
        }

        v46 = *(v43 + 8 * v51);
        ++v48;
        if (v46)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_49;
    }

    v51 = v48;
LABEL_22:
    v54 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v55 = v54 | (v51 << 6);
    v56 = v134;
    sub_100015458(*(v134 + 48) + 40 * v55, v145);
    sub_1000154B4(*(v56 + 56) + 32 * v55, v144);
    v147 = v145[0];
    v148 = v145[1];
    *&v149 = v146;
    sub_100015510(v144, (&v149 + 8));
    v53 = v51;
    v50 = v140;
LABEL_23:
    v154[0] = v149;
    v154[1] = v150;
    v155 = v151;
    v152 = v147;
    v153 = v148;
    if (!*(&v148 + 1))
    {
      break;
    }

    v141 = v53;
    sub_100015510((v154 + 8), v145);
    v137(v50, v139, v9);
    v147 = v152;
    v148 = v153;
    *&v149 = *&v154[0];
    sub_1000154B4(v145, v144);
    v57 = sub_1000157E4();
    v58 = sub_100015E14();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v143[0] = swift_slowAlloc();
      *v59 = v131;
      v60 = sub_100015EC4();
      v62 = v61;
      sub_100015520(&v147);
      v63 = sub_100013AAC(v60, v62, v143);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      sub_1000154B4(v144, &v142);
      v64 = sub_100015D04();
      v66 = v65;
      sub_100012FE4(v144);
      v67 = sub_100013AAC(v64, v66, v143);
      v9 = v132;

      *(v59 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "  %s --> %s", v59, 0x16u);
      swift_arrayDestroy();
      v41 = v133;

      v50 = v140;
    }

    else
    {

      sub_100012FE4(v144);
      sub_100015520(&v147);
    }

    v136(v50, v9);
    sub_100012FE4(v145);
    v48 = v141;
    v4 = v135;
  }

  v68 = v134;

  *&v147 = sub_100015CC4();
  *(&v147 + 1) = v69;
  sub_100015EF4();
  if (*(v68 + 16) && (v70 = sub_10001437C(&v152), (v71 & 1) != 0))
  {
    sub_1000154B4(*(v68 + 56) + 32 * v70, &v147);
    sub_100015520(&v152);
    v72 = swift_dynamicCast();
    v73 = v130;
    v75 = v127;
    v74 = v128;
    if (v72)
    {
      v76 = LOBYTE(v145[0]);
    }

    else
    {
      v76 = 0;
    }
  }

  else
  {
    sub_100015520(&v152);
    v76 = 0;
    v73 = v130;
    v75 = v127;
    v74 = v128;
  }

  v137(v75, v139, v9);
  v77 = sub_1000157E4();
  v78 = sub_100015E14();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 67109120;
    *(v79 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v77, v78, "userProvidedConsentForSensitiveLogs = %{BOOL}d", v79, 8u);
    v9 = v132;
  }

  v136(v75, v9);
  *&v152 = &_swiftEmptyArrayStorage;
  type metadata accessor for VoiceBankingDiagnosticHelper();
  *(swift_initStackObject() + 16) = 0;
  sub_1000016C0(v76, v73);
  v80 = objc_allocWithZone(DEAttachmentItem);
  sub_100015674(v81);
  v83 = v82;
  v84 = [v80 initWithPathURL:v82];

  if (!v84)
  {
    v41 = v122;
    v137(v122, v139, v9);
    v47 = v125;
    v102 = v73;
    v46 = v126;
    (*(v125 + 16))(v4, v102, v126);
    v50 = sub_1000157E4();
    v103 = sub_100015E04();
    if (os_log_type_enabled(v50, v103))
    {
      v104 = v46;
      v105 = v47;
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v147 = v107;
      *v106 = 136315138;
      v141 = sub_1000156C4();
      v108 = v4;
      v110 = v109;
      v111 = *(v105 + 8);
      v125 = v105 + 8;
      v111(v108, v104);
      v112 = v111;
      v113 = sub_100013AAC(v141, v110, &v147);

      *(v106 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v50, v103, "Could not create DEAttachmentItem from diagnoseURL: %s", v106, 0xCu);
      sub_100012FE4(v107);
      v9 = v132;

      v136(v122, v9);
      v112(v130, v126);
LABEL_37:
      v100 = &_swiftEmptyArrayStorage;
      v101 = v129;
      goto LABEL_45;
    }

LABEL_49:

    v120 = *(v47 + 8);
    v120(v4, v46);
    v136(v41, v9);
    v120(v130, v46);
    goto LABEL_37;
  }

  sub_100013324(0, &qword_100020880, NSNumber_ptr);
  isa = sub_100015E64(0).super.super.isa;
  [v84 setDeleteOnAttach:isa];

  v86 = sub_100015E64(1).super.super.isa;
  v141 = v84;
  [v84 setShouldCompress:v86];

  v137(v123, v139, v9);
  v87 = v125;
  (*(v125 + 16))(v74, v73, v126);
  v88 = sub_1000157E4();
  v89 = sub_100015E14();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = v87;
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v147 = v92;
    *v91 = 136315138;
    v93 = sub_1000156C4();
    v95 = v94;
    v96 = *(v90 + 8);
    v97 = v74;
    v98 = v126;
    v96(v97, v126);
    v99 = sub_100013AAC(v93, v95, &v147);
    v73 = v130;

    *(v91 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v88, v89, "Appending DEAttachmentItem: %s", v91, 0xCu);
    sub_100012FE4(v92);
    v9 = v132;
  }

  else
  {

    v96 = *(v87 + 8);
    v114 = v74;
    v98 = v126;
    v96(v114, v126);
  }

  v136(v123, v9);
  v101 = v129;
  v115 = v141;
  sub_100015D54();
  if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100015D84();
    v98 = v126;
  }

  sub_100015DA4();

  v96(v73, v98);
  v100 = v152;
LABEL_45:
  v137(v101, v139, v9);
  v116 = sub_1000157E4();
  v117 = sub_100015E14();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&_mh_execute_header, v116, v117, "Finished creating voicediagnose", v118, 2u);
    v9 = v132;
  }

  v136(v101, v9);
  v119 = sub_100013714(v100);

  swift_setDeallocating();

  return v119;
}

uint64_t sub_1000154B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100015510(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}