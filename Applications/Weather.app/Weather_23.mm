uint64_t sub_100272E34(uint64_t a1)
{
  v1 = MonthTemperatureStatistics.month.getter();
  v2 = v1 == DateComponents.month.getter();
  return v2 & ~v3;
}

uint64_t sub_100272EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100272F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100272FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100273040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v363 = a6;
  v358 = a4;
  v362 = a3;
  v357 = a2;
  v339 = a1;
  v320 = a7;
  v8 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v8 - 8);
  v299 = v296 - v9;
  v297 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v297);
  sub_100003848();
  v318 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v13 = v296 - v12;
  __chkstk_darwin(v14);
  v16 = v296 - v15;
  __chkstk_darwin(v17);
  sub_100003878();
  v315 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v314 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v312 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v310 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v308 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v306 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v304 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v302 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v300 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v296[0] = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = v296 - v38;
  v40 = *(a5 - 8);
  __chkstk_darwin(v41);
  sub_100003848();
  v319 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v337 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v336 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v335 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v334 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v333 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v332 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v331 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v330 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v329 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v316 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v328 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v313 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  v69 = v296 - v68;
  __chkstk_darwin(v70);
  sub_100003878();
  v311 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v353 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v309 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v352 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v307 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v351 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v305 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v350 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v303 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v349 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v301 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v348 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v298 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v347 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v296[3] = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v346 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v296[2] = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v345 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v296[1] = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v344 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  v112 = v296 - v111;
  __chkstk_darwin(v113);
  v115 = v296 - v114;
  v361 = type metadata accessor for Optional();
  v322 = *(v361 - 8);
  __chkstk_darwin(v361);
  sub_100003848();
  v326 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v325 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v324 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v343 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v342 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v341 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  v129 = v296 - v128;
  __chkstk_darwin(v130);
  v340 = v296 - v131;
  sub_100566A24(v357, v383);
  v327 = v40;
  v356 = v112;
  v360 = v115;
  v323 = v13;
  v321 = v39;
  v354 = v69;
  v317 = v16;
  if (v384)
  {
    v132 = 1;
  }

  else
  {
    v359 = v383[3];
    v133 = v383[2];
    v134 = v383[1];
    v135 = v383[0];
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_severeAlert, v39);
    v362(v39, v135, v134, v133, v359);
    sub_1001B4354(v39);
    v136 = sub_100007EE8();
    v137 = v363;
    sub_1000833D8(v136, v138, v363);
    v139 = *(v40 + 8);
    v140 = sub_100007EE8();
    v139(v140);
    v141 = sub_100005474();
    sub_1000833D8(v141, v142, v137);
    v143 = sub_100005474();
    v139(v143);
    (*(v40 + 32))(v129, v112, a5);
    v132 = 0;
  }

  v144 = v129;
  v145 = 1;
  sub_100017568(v129, v132);
  sub_100007F30();
  sub_1003E7FD4(v146, v147);
  v148 = v322 + 8;
  v359 = *(v322 + 8);
  v359(v129, v361);
  sub_100566A40(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v386 & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality, v321);
    v150 = v356;
    sub_10004E364();
    v151();
    sub_1001B4354(v149);
    v152 = sub_100007EE8();
    v153 = v363;
    sub_1000833D8(v152, v154, v363);
    v155 = v327;
    v156 = *(v327 + 8);
    v157 = sub_100007EE8();
    v156(v157);
    v158 = sub_100005480();
    sub_1000833D8(v158, v159, v153);
    v160 = sub_100005480();
    v156(v160);
    v144 = v355;
    (*(v155 + 32))(v355, v150, a5);
    v145 = 0;
  }

  v161 = 1;
  sub_100017568(v144, v145);
  sub_100007F30();
  sub_1003E7FD4(v162, v163);
  v164 = sub_100049604();
  v165(v164);
  v166 = v357;
  sub_100566BC8(v357, v387);
  v167 = v321;
  if ((v388 & 1) == 0)
  {
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_newsArticle, v321);
    v166 = v357;
    sub_10004E364();
    v168();
    sub_1001B4354(v167);
    v169 = sub_100003A80();
    v170 = v363;
    sub_1000833D8(v169, v171, v363);
    v144 = *(v327 + 8);
    v172 = sub_100003A80();
    (v144)(v172);
    v173 = sub_100005474();
    sub_1000833D8(v173, v174, v170);
    v175 = sub_100005474();
    (v144)(v175);
    v176 = sub_1000280F8();
    v177(v176);
    v161 = 0;
  }

  sub_100017568(v144, v161);
  sub_100007F30();
  sub_1003E7FD4(v178, v179);
  v180 = sub_100049604();
  v181(v180);
  v182 = OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_map;
  v183 = v339;
  swift_beginAccess();
  v184 = v183 + v182;
  v185 = v299;
  sub_10026E174(v184, v299);
  if (sub_100024D10(v185, 1, v297) == 1)
  {
    sub_10026E1E4(v185);
    v186 = 1;
    v187 = v327;
  }

  else
  {
    v188 = v185;
    v189 = v296[0];
    sub_10026E24C(v188, v296[0]);
    sub_100566A5C(v166, v389);
    v187 = v327;
    if (v390)
    {
      sub_1001B4354(v189);
      v186 = 1;
    }

    else
    {
      v362(v189, v389[0], v389[1], v389[2], v389[3]);
      sub_1001B4354(v189);
      v190 = sub_100003A80();
      v191 = v363;
      sub_1000833D8(v190, v192, v363);
      v144 = *(v187 + 8);
      v193 = sub_100003A80();
      (v144)(v193);
      sub_1000833D8(v360, a5, v191);
      (v144)(v360, a5);
      v194 = sub_1000280F8();
      v195(v194);
      v186 = 0;
    }
  }

  v196 = v300;
  sub_100017568(v144, v186);
  sub_100007F30();
  sub_1003E7FD4(v197, v198);
  v199 = sub_100049604();
  v200(v199);
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v196);
  sub_100566A78(v166, v391);
  if (v392)
  {
    goto LABEL_31;
  }

  v362(v196, v391[0], v391[1], v391[2], v391[3]);
  sub_1001B4354(v196);
  sub_100007F30();
  sub_1000833D8(v201, v202, v203);
  v204 = *(v187 + 8);
  v205 = sub_100003A80();
  v204(v205);
  v206 = v302;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v302);
  sub_100566A94(v166, v393);
  if (v394)
  {
    goto LABEL_31;
  }

  v207 = sub_100014130();
  v208(v207);
  sub_1001B4354(v206);
  v209 = sub_100005474();
  sub_1000833D8(v209, v210, v363);
  v211 = sub_100005474();
  v204(v211);
  v212 = v304;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v304);
  sub_100566AB0(v166, v395);
  if (v396)
  {
    goto LABEL_34;
  }

  v213 = sub_100014130();
  v214(v213);
  sub_1001B4354(v212);
  v215 = sub_100005474();
  sub_1000833D8(v215, v216, v363);
  v217 = sub_100005474();
  v204(v217);
  v218 = v306;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v306);
  sub_100566ACC(v166, v397);
  if (v398)
  {
    goto LABEL_31;
  }

  v219 = sub_10002279C();
  v220(v219);
  sub_1001B4354(v218);
  sub_100007F30();
  sub_1000833D8(v221, v222, v223);
  v224 = sub_100003A80();
  v204(v224);
  v225 = v308;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v308);
  sub_100566AE8(v166, v399);
  if (v400)
  {
    goto LABEL_34;
  }

  v226 = sub_10002279C();
  v227(v226);
  sub_1001B4354(v225);
  sub_100007F30();
  sub_1000833D8(v228, v229, v230);
  v231 = sub_100003A80();
  v204(v231);
  v232 = v310;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v310);
  sub_100566B04(v166, v401);
  if (v402)
  {
    goto LABEL_31;
  }

  v233 = sub_10002279C();
  v234(v233);
  sub_1001B4354(v232);
  sub_100007F30();
  sub_1000833D8(v235, v236, v237);
  v238 = sub_100003A80();
  v204(v238);
  v239 = v312;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v312);
  sub_100566B20(v166, v403);
  if (v404)
  {
    goto LABEL_31;
  }

  v240 = sub_100014130();
  v241(v240);
  sub_1001B4354(v239);
  v242 = sub_100005474();
  sub_1000833D8(v242, v243, v363);
  v244 = sub_100005474();
  v204(v244);
  v245 = v314;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v314);
  sub_100566B3C(v166, v405);
  if (v406)
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v246 = sub_100014130();
  v247(v246);
  sub_1001B4354(v245);
  v248 = sub_100005474();
  sub_1000833D8(v248, v249, v363);
  v250 = sub_100005474();
  v204(v250);
  v251 = v315;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v315);
  sub_100566B58(v166, &v407);
  if ((v408 & 1) == 0)
  {
    v252 = sub_10002279C();
    v253(v252);
    sub_1001B4354(v251);
    sub_100007F30();
    sub_1000833D8(v254, v255, v256);
    v257 = sub_100003A80();
    v204(v257);
    v258 = v317;
    sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v317);
    sub_100566B74(v166, &v409);
    if ((v410 & 1) == 0)
    {
      v259 = sub_100014130();
      v260(v259);
      sub_1001B4354(v258);
      v261 = sub_100005474();
      sub_1000833D8(v261, v262, v363);
      v263 = sub_100005474();
      v204(v263);
      sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v323);
      sub_100566B90(v166, v411);
      if ((v412 & 1) == 0)
      {
        v264 = v323;
        v362(v323, v411[0], v411[1], v411[2], v411[3]);
        sub_1001B4354(v264);
        v265 = sub_100005474();
        sub_1000833D8(v265, v266, v363);
        v267 = sub_100005474();
        v204(v267);
        v268 = v318;
        sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v318);
        sub_100566BAC(v166, v413);
        if ((v414 & 1) == 0)
        {
          v362(v268, v413[0], v413[1], v413[2], v413[3]);
          sub_1001B4354(v268);
          v269 = sub_100005480();
          v270 = v363;
          sub_1000833D8(v269, v271, v363);
          v272 = sub_100005480();
          v204(v272);
          v273 = *(v322 + 16);
          v274 = v355;
          v275 = v361;
          v273(v355, v340, v361);
          v382[0] = v274;
          v276 = v324;
          v273(v324, v341, v275);
          v382[1] = v276;
          v277 = v325;
          v273(v325, v342, v275);
          v382[2] = v277;
          v278 = v326;
          v273(v326, v343, v275);
          v382[3] = v278;
          v279 = *(v187 + 16);
          v280 = v360;
          v279(v360, v344, a5);
          v382[4] = v280;
          v281 = v356;
          v279(v356, v345, a5);
          v382[5] = v281;
          v282 = v329;
          v279(v329, v346, a5);
          v382[6] = v282;
          v283 = v330;
          v279(v330, v347, a5);
          v382[7] = v283;
          v284 = v331;
          v279(v331, v348, a5);
          v382[8] = v284;
          v285 = v332;
          v279(v332, v349, a5);
          v382[9] = v285;
          v286 = v333;
          v279(v333, v350, a5);
          v382[10] = v286;
          v287 = v334;
          v279(v334, v351, a5);
          v382[11] = v287;
          v288 = v335;
          v279(v335, v352, a5);
          v382[12] = v288;
          v289 = v336;
          v279(v336, v353, a5);
          v382[13] = v289;
          v290 = v337;
          v279(v337, v354, a5);
          v382[14] = v290;
          v291 = v319;
          v279(v319, v328, a5);
          v382[15] = v291;
          v381[0] = v275;
          v381[1] = v275;
          v381[2] = v275;
          v381[3] = v275;
          v381[4] = a5;
          v381[5] = a5;
          v381[6] = a5;
          v381[7] = a5;
          v381[8] = a5;
          v381[9] = a5;
          v381[10] = a5;
          v381[11] = a5;
          v381[12] = a5;
          v381[13] = a5;
          v381[14] = a5;
          v381[15] = a5;
          v364 = v270;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v275, &v364);
          v366 = WitnessTable;
          v367 = WitnessTable;
          v368 = WitnessTable;
          v369 = v270;
          v370 = v270;
          v371 = v270;
          v372 = v270;
          v373 = v270;
          v374 = v270;
          v375 = v270;
          v376 = v270;
          v377 = v270;
          v378 = v270;
          v379 = v270;
          v380 = v270;
          sub_10012E24C(v382, 16, v381);
          v292 = sub_100005480();
          v204(v292);
          (v204)(v354, a5);
          (v204)(v353, a5);
          (v204)(v352, a5);
          (v204)(v351, a5);
          (v204)(v350, a5);
          (v204)(v349, a5);
          (v204)(v348, a5);
          (v204)(v347, a5);
          (v204)(v346, a5);
          (v204)(v345, a5);
          (v204)(v344, a5);
          v293 = v359;
          v359(v343, v275);
          v293(v342, v275);
          v293(v341, v275);
          v293(v340, v275);
          v294 = sub_100007EE8();
          v204(v294);
          (v204)(v337, a5);
          (v204)(v336, a5);
          (v204)(v335, a5);
          (v204)(v334, a5);
          (v204)(v333, a5);
          (v204)(v332, a5);
          (v204)(v331, a5);
          (v204)(v330, a5);
          (v204)(v329, a5);
          (v204)(v356, a5);
          (v204)(v360, a5);
          v293(v326, v275);
          v293(v325, v275);
          v293(v324, v275);
          return (v293)(v355, v275);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002749B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100274A64(uint64_t a1, int a2)
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

uint64_t sub_100274AA4(uint64_t result, int a2, int a3)
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

uint64_t sub_100274B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49[2] = a1;
  v3 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA54A0, &qword_100A2F860);
  sub_1000037E8();
  __chkstk_darwin(v9);
  v11 = (v49 - v10);
  v12 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = (v15 - v14);
  v49[1] = sub_10022C350(&qword_100CA54A8, &qword_100A2F868);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = v49 - v18;
  v20 = type metadata accessor for HomeAndWorkRefinementViewModel(0);
  __chkstk_darwin(v20 - 8);
  sub_1000037D8();
  v23 = v22 - v21;
  sub_100988718();
  if (sub_100024D10(v23, 1, v12) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10001BB34();
    sub_100006F64(v24, v25, v26, v27);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_100275DE0(v23, v16);
    v29 = enum case for DetailType.homeAndWorkRefinement(_:);
    type metadata accessor for DetailType();
    sub_1000037E8();
    (*(v30 + 104))(v7, v29);
    v31 = *(v12 + 20);
    v32 = *(v3 + 20);
    type metadata accessor for Location();
    sub_1000037E8();
    (*(v33 + 16))(v7 + v32, &v16[v31]);
    v34 = *(v3 + 24);
    v35 = enum case for DetailViewOrigin.unknown(_:);
    type metadata accessor for DetailViewOrigin();
    sub_1000037E8();
    (*(v36 + 104))(v7 + v34, v35);
    v37 = v2[5];
    v38 = v2[6];
    v39 = sub_1000161C0(v2 + 2, v37);
    v50[3] = v37;
    v50[4] = *(v38 + 8);
    v40 = sub_100042FB0(v50);
    (*(*(v37 - 8) + 16))(v40, v39, v37);
    v42 = *v16;
    v41 = *(v16 + 1);
    *v11 = swift_getKeyPath();
    sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
    swift_storeEnumTagMultiPayload();
    sub_100275E44(v7, v11 + v8[9]);
    v43 = sub_100035B30(v50, v11 + v8[10]);
    v44 = (v11 + v8[11]);
    *v44 = v42;
    v44[1] = v41;
    v45 = (v11 + v8[12]);
    *v45 = 0;
    v45[1] = 0;
    *(v11 + v8[13]) = 0;
    v46 = (v11 + v8[14]);
    *v46 = 0;
    v46[1] = 0;
    *(v11 + v8[15]) = 1;
    __chkstk_darwin(v43);
    v49[-2] = v16;
    v49[-1] = v2;

    sub_10022C350(&qword_100CA54B8, &qword_100A2F8A8);
    sub_100275EB0();
    List<>.init(content:)();
    sub_1002760E4(v7, type metadata accessor for DetailViewVisibilityTrackerModel);
    sub_100006F14(v50);
    sub_100035AD0(v11, v19, &qword_100CA54A0, &qword_100A2F860);
    swift_storeEnumTagMultiPayload();
    sub_10001BB34();
    sub_100006F64(v47, &qword_100CA54A0, &qword_100A2F860, v48);
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v11, &qword_100CA54A0, &qword_100A2F860);
    return sub_1002760E4(v16, type metadata accessor for HomeAndWorkRefinementContentViewModel);
  }
}

uint64_t sub_100275010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA54F0, &unk_100A2F8C0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v32 = sub_10022C350(&qword_100CA54E0, &qword_100A2F8B8);
  __chkstk_darwin(v32);
  v13 = &v32 - v12;
  v34 = a1;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_10022C350(&qword_100CA5520, &qword_100A2F8D8);
  sub_100275528(a1, a2, &v13[*(v14 + 44)]);
  v15 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  (*(v6 + 16))(v8, a1 + *(v15 + 28), v5);
  v16 = Text.init(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  sub_100276144(a2, v35);
  v24 = swift_allocObject();
  v25 = v35[1];
  *(v24 + 16) = v35[0];
  *(v24 + 32) = v25;
  *(v24 + 48) = v35[2];
  *(v24 + 64) = v36;
  v26 = &v11[*(v9 + 36)];
  sub_10022C350(&qword_100CA5500, &qword_100A5C030);
  OpenURLAction.init(handler:)();
  *v26 = KeyPath;
  *v11 = v16;
  *(v11 + 1) = v18;
  v11[16] = v20 & 1;
  *(v11 + 3) = v22;
  sub_100006F64(&qword_100CA54D8, &qword_100CA54E0, &qword_100A2F8B8, &protocol conformance descriptor for HStack<A>);
  sub_10027602C();
  v27 = v33;
  Section<>.init(header:footer:content:)();
  v28 = (v27 + *(sub_10022C350(&qword_100CA54B8, &qword_100A2F8A8) + 36));
  v29 = *(sub_10022C350(&qword_100CA5510, &qword_100A2F8D0) + 28);
  v30 = type metadata accessor for Text.Case();
  sub_10001B350(v28 + v29, 1, 1, v30);
  result = swift_getKeyPath();
  *v28 = result;
  return result;
}

uint64_t sub_100275384@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Location();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  v6 = LocationOfInterest.fullAddress.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    LocationOfInterest.location.getter();
    v8 = Location.inlineName.getter();
    v9 = v10;
    (*(v3 + 8))(v5, v2);
  }

  v24[2] = v8;
  v24[3] = v9;
  sub_10002D5A4();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Color.secondary.getter();
  v16 = Text.foregroundColor(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_10010CD64(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_100275528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v57 = a3;
  v4 = type metadata accessor for BorderlessButtonStyle();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &v45 - v7;
  v59 = sub_10022C350(&qword_100CA5530, &qword_100A2F948);
  v48 = *(v59 - 8);
  __chkstk_darwin(v59);
  v47 = &v45 - v8;
  v9 = sub_10022C350(&qword_100CA5538, &qword_100A2F950);
  __chkstk_darwin(v9 - 8);
  v58 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for LocationOfInterestType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  LocationOfInterest.type.getter();
  v19 = LocationOfInterestType.title.getter();
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  *&v60[0] = v19;
  *(&v60[0] + 1) = v21;
  sub_10002D5A4();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v15) = v25;
  static Color.secondary.getter();
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  v55 = v29;
  v56 = v30;

  sub_10010CD64(v22, v24, v15 & 1);

  v31 = 1;
  if (*(a1 + *(v18 + 32)) == 1)
  {
    sub_100276144(v46, v60);
    v32 = swift_allocObject();
    v33 = v60[1];
    *(v32 + 16) = v60[0];
    *(v32 + 32) = v33;
    *(v32 + 48) = v60[2];
    *(v32 + 64) = v61;
    v34 = v49;
    Button.init(action:label:)();
    v35 = v52;
    BorderlessButtonStyle.init()();
    sub_100006F64(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    sub_100276188();
    v36 = v47;
    v37 = v51;
    v38 = v54;
    View.buttonStyle<A>(_:)();
    (*(v53 + 8))(v35, v38);
    (*(v50 + 8))(v34, v37);
    (*(v48 + 32))(v13, v36, v59);
    v31 = 0;
  }

  sub_10001B350(v13, v31, 1, v59);
  v39 = v58;
  sub_100035AD0(v13, v58, &qword_100CA5538, &qword_100A2F950);
  v41 = v56;
  v40 = v57;
  *v57 = v26;
  v40[1] = v28;
  v42 = v55 & 1;
  *(v40 + 16) = v55 & 1;
  v40[3] = v41;
  v40[4] = 0;
  *(v40 + 40) = 1;
  v43 = sub_10022C350(&qword_100CA5540, &unk_100A2F958);
  sub_100035AD0(v39, v40 + *(v43 + 64), &qword_100CA5538, &qword_100A2F950);
  sub_10010CD54(v26, v28, v42);

  sub_1000180EC(v13, &qword_100CA5538, &qword_100A2F950);
  sub_1000180EC(v39, &qword_100CA5538, &qword_100A2F950);
  sub_10010CD64(v26, v28, v42);
}

uint64_t sub_100275AE4@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v1 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v1 - 8);
  v3 = &v33 - v2;
  v35 = type metadata accessor for Font.TextStyle();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)(v7, v9, v8 & 1, v10, 0, 0, 0, "Button title that link to me card in contacts app", 49, 2);
  v13 = v12;
  v15 = v14;
  static Color.accentColor.getter();
  v16 = Text.foregroundColor(_:)();
  v33 = v17;
  v34 = v16;
  v19 = v18;
  v21 = v20;

  sub_10010CD64(v11, v13, v15 & 1);

  v22 = v35;
  (*(v4 + 104))(v6, enum case for Font.TextStyle.footnote(_:), v35);
  v23 = type metadata accessor for Font.Design();
  sub_10001B350(v3, 1, 1, v23);
  static Font.system(_:design:weight:)();
  sub_1002761E0(v3);
  (*(v4 + 8))(v6, v22);
  v24 = v34;
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v6) = v28;
  v30 = v29;

  sub_10010CD64(v24, v19, v21 & 1);

  v32 = v36;
  *v36 = v25;
  v32[1] = v27;
  *(v32 + 16) = v6 & 1;
  v32[3] = v30;
  return result;
}

uint64_t sub_100275D80(uint64_t a1, uint64_t a2)
{
  sub_1000161C0((a2 + 16), *(a2 + 40));
  sub_1008A5918();

  return static OpenURLAction.Result.systemAction.getter(v2);
}

uint64_t sub_100275DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100275E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100275EB0()
{
  result = qword_100CA54C0;
  if (!qword_100CA54C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA54B8, &qword_100A2F8A8);
    v4[0] = sub_100275F68();
    v4[1] = sub_100006F64(&qword_100CA5508, &qword_100CA5510, &qword_100A2F8D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA54C0);
  }

  return result;
}

unint64_t sub_100275F68()
{
  result = qword_100CA54C8;
  if (!qword_100CA54C8)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CA54D0, &qword_100A2F8B0);
    v4[0] = sub_100006F64(&qword_100CA54D8, &qword_100CA54E0, &qword_100A2F8B8, &protocol conformance descriptor for HStack<A>);
    v4[1] = &protocol witness table for Text;
    v4[2] = sub_10027602C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CA54C8);
  }

  return result;
}

unint64_t sub_10027602C()
{
  result = qword_100CA54E8;
  if (!qword_100CA54E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA54F0, &unk_100A2F8C0);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_100006F64(&qword_100CA54F8, &qword_100CA5500, &qword_100A5C030, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA54E8);
  }

  return result;
}

uint64_t sub_1002760E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100276188()
{
  result = qword_100CA5550;
  if (!qword_100CA5550)
  {
    v3 = type metadata accessor for BorderlessButtonStyle();
    result = swift_getWitnessTable(&protocol conformance descriptor for BorderlessButtonStyle, v3, v0, v1);
    atomic_store(result, &qword_100CA5550);
  }

  return result;
}

uint64_t sub_1002761E0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100276248()
{
  result = qword_100CA5558;
  if (!qword_100CA5558)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA5560, &qword_100A2F968);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = sub_100006F64(&qword_100CA5518, &qword_100CA54A0, &qword_100A2F860, byte_100A6E2E0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA5558);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for OptInTipViewViewModel(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OptInTipViewViewModel(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = v4 - 2;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for OptInTipViewViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100276424(char a1)
{
  sub_1003198A0(a1 & 1);
  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_10027646C(int a1)
{
  sub_100319B28(a1 & 0x1FF01);
  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_1002764B4(__int16 a1)
{
  v1 = sub_1003199B0(a1 & 0xFF01);
  v3 = v2;
  v5 = v4;
  v6 = sub_10030FB1C(v1, v2, v4);
  sub_1002773E8(v1, v3, v5);
  return v6;
}

uint64_t sub_10027650C(unsigned int a1)
{
  v2 = a1 >> 8;
  v3 = type metadata accessor for Tips.Action();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = swift_allocObject();
  v8[16] = a1 & 1;
  v8[17] = v2;
  v8[18] = BYTE2(a1) & 1;
  Tips.Action.init(id:perform:_:)();
  sub_10022C350(&qword_100CA55B0, &unk_100A416A0);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A2C3F0;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = static Tips.ActionBuilder.buildFinalResult(_:)();
  swift_setDeallocating();
  sub_1005C1E40();
  return v11;
}

uint64_t sub_1002766C0(__int16 a1)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = sub_100319A18(a1 & 0xFF01);
  v14[3] = v6;
  sub_10002D5A4();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v2);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  v12 = Text.font(_:)();

  sub_10010CD64(v7, v9, v11 & 1);

  return v12;
}

uint64_t sub_100276860()
{
  sub_10022C350(&qword_100CA5570, &unk_100A2FA70);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580, &unk_100A2FA80);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100276D14()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v0, qword_100D8F350);
  sub_10000703C(v0, qword_100D8F350);
  sub_10022C350(&qword_100CA55A8, &qword_100A2FAA0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100276E64()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA1E70 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D8F350);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_10027705C@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = sub_10022C350(&qword_100CA5590, &unk_100A41690);
  a2[4] = sub_100277374(&qword_100CA5598, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100042FB0(a2);
  sub_100277374(&qword_100CA55A0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t sub_100277108(unsigned int a1, unsigned int a2)
{
  if ((a1 ^ a2))
  {
    return 0;
  }

  v5 = a2 >> 8;
  v6 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE1(a1));
  v8 = v7;
  if (v6 == PredictedLocationsAuthorizationState.rawValue.getter(v5) && v8 == v9)
  {

    if (((a1 ^ a2) & 0x10000) != 0)
    {
      return 0;
    }
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (((a1 ^ a2) & 0x10000) != 0 || (v11 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100277218()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_10027646C(v1 | (v0[1] << 8) | *v0);
}

uint64_t sub_10027726C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (v3[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return (a3)(v4 | (v3[1] << 8) | *v3, a2);
}

uint64_t sub_10027729C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_100277108(v2 | (a1[1] << 8) | *a1, v3 | (a2[1] << 8) | *a2);
}

uint64_t sub_1002772DC@<X0>(uint64_t *a2@<X8>)
{
  sub_100235784();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100277320()
{
  result = qword_100CA5568;
  if (!qword_100CA5568)
  {
    result = swift_getWitnessTable(byte_100A2F9AC, &type metadata for NotificationsOptInListTip, v0, v1);
    atomic_store(result, &qword_100CA5568);
  }

  return result;
}

uint64_t sub_100277374(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10022E824(&qword_100CA5590, &unk_100A41690);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002773E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

Swift::Void __swiftcall WindowFocusManager.applicationActiveStatusChanged(to:)(Swift::Bool to)
{
  v3 = v1;
  if (qword_100CA27B8 != -1)
  {
    sub_10001E660(&qword_100CA27B8);
  }

  v5 = type metadata accessor for Logger();
  sub_10000703C(v5, qword_100D90D80);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315650;
    v10 = sub_100278694(*(v3 + 34));
    sub_100078694(v10, v11, &v20);
    sub_1000227AC();
    *(v8 + 4) = v2;
    *(v8 + 12) = 1024;
    *(v8 + 14) = to;
    *(v8 + 18) = 2082;
    if (*(v3 + 32))
    {
      v12 = 0x8000000100ABCAE0;
      v13 = 0xD000000000000014;
    }

    else
    {
      v14 = 0xE600000000000000;
      v15 = *(v3 + 24);
      v16 = 0x657669746361;
      v17 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E75;
      if (!v15)
      {
        v18 = 0x6576697463616E69;
        v17 = 0xE800000000000000;
      }

      if (v15 != 1)
      {
        v16 = v18;
        v14 = v17;
      }

      if (v15 == -1)
      {
        v13 = 0x6669636570736E75;
      }

      else
      {
        v13 = v16;
      }

      if (v15 == -1)
      {
        v12 = 0xEB00000000646569;
      }

      else
      {
        v12 = v14;
      }
    }

    sub_100078694(v13, v12, &v20);
    sub_1000227AC();
    *(v8 + 20) = v2;
    _os_log_impl(&_mh_execute_header, v6, v7, "Application's active status changed, will notify if needed; isFocused=%s, isApplicationActive=%{BOOL}d, activeAppearance=%{public}s", v8, 0x1Cu);
    swift_arrayDestroy();
    sub_100003884(v9);
    sub_100003884(v8);
  }

  if (*(v3 + 33) == 2)
  {
    v19 = *(v3 + 32);
  }

  else
  {
    v19 = 0;
  }

  *(v3 + 33) = to;

  sub_100277644(v19);
}

uint64_t sub_100277644(uint64_t result)
{
  v2 = (*(v1 + 33) == 2) | *(v1 + 33);
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = v2 & (*(v1 + 24) == 1);
  }

  v3 = *(v1 + 34);
  if (v3 == 2 || ((v2 ^ v3) & 1) != 0)
  {
    if (v2)
    {
      v4 = "Notifying window did become focused";
      v5 = &static WeatherWindowNotificationName.windowDidBecomeActiveMain.getter;
      v6 = sub_100277EB4;
      v7 = result & 1;
      v8 = 1;
    }

    else
    {
      v4 = "Notifying window did lose focus";
      v5 = &static WeatherWindowNotificationName.windowDidResignActiveMain.getter;
      v6 = sub_1002780C4;
      v7 = result & 1;
      v8 = 0;
    }

    return sub_100277D54(v7, v4, v8, v5, v6);
  }

  return result;
}

uint64_t WindowFocusManager.userInterfaceActiveAppearanceChanged(to:)(uint64_t a1)
{
  v3 = v1;
  if (qword_100CA27B8 != -1)
  {
    sub_10001E660(&qword_100CA27B8);
  }

  v5 = type metadata accessor for Logger();
  sub_10000703C(v5, qword_100D90D80);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315650;
    v10 = sub_100278694(*(v3 + 34));
    sub_100078694(v10, v11, &v22);
    sub_1000227AC();
    *(v8 + 4) = v2;
    *(v8 + 12) = 2080;
    v12 = sub_100278694(*(v3 + 33));
    sub_100078694(v12, v13, &v22);
    sub_1000227AC();
    v14 = 0xE600000000000000;
    *(v8 + 14) = v2;
    *(v8 + 22) = 2082;
    v15 = 0x657669746361;
    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E75;
    if (!a1)
    {
      v17 = 0x6576697463616E69;
      v16 = 0xE800000000000000;
    }

    if (a1 != 1)
    {
      v15 = v17;
      v14 = v16;
    }

    if (a1 == -1)
    {
      v18 = 0x6669636570736E75;
    }

    else
    {
      v18 = v15;
    }

    if (a1 == -1)
    {
      v19 = 0xEB00000000646569;
    }

    else
    {
      v19 = v14;
    }

    sub_100078694(v18, v19, &v22);
    sub_1000227AC();
    *(v8 + 24) = v2;
    _os_log_impl(&_mh_execute_header, v6, v7, "User interface's active appearance changed, will notify if needed; isFocused=%s, isApplicationActive=%s, activeAppearance=%{public}s", v8, 0x20u);
    swift_arrayDestroy();
    sub_100003884(v9);
    sub_100003884(v8);
  }

  if (*(v3 + 33) == 2)
  {
    v20 = *(v3 + 32);
  }

  else
  {
    v20 = 0;
  }

  *(v3 + 24) = a1;
  *(v3 + 32) = 0;

  return sub_100277644(v20);
}

uint64_t WindowFocusManager.add(monitor:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for DisposableMonitor();
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_1002783E0(v8, a2);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_100040664(*((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  a3[3] = v7;
  result = sub_100278DB8(&qword_100CA55B8, type metadata accessor for DisposableMonitor, byte_100A2FB44);
  a3[4] = result;
  *a3 = v9;
  return result;
}

void WindowFocusManager.remove(monitor:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_100073CE4(v3);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a1)
      {

        swift_beginAccess();
        sub_100277CB8(i, sub_1008FBEE0, sub_1006A9CCC);
        swift_endAccess();

        return;
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_100277BBC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1008FBAB8();
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for DetailChartDataElement();
    sub_100003A9C();
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    (*(v7 + 32))(a2, v9);
    sub_1006A0744(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_100277CB8(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

uint64_t sub_100277D54(char a1, const char *a2, char a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void))
{
  v9 = v5;
  if (qword_100CA27B8 != -1)
  {
    sub_10001E660(&qword_100CA27B8);
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90D80);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 2u);
    sub_100003884(v14);
  }

  *(v9 + 34) = a3;
  v15 = [objc_opt_self() defaultCenter];
  v16 = a4();
  [v15 postNotificationName:v16 object:0];

  return a5(v9, a1 & 1);
}

void sub_100277EB4(uint64_t a1, char a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = sub_100073CE4(v4);
  if (v5)
  {
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(a2 & 1, ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v11 = *(a1 + 16);
  v12 = sub_100073CE4(v11);

  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      *(a1 + 16) = _swiftEmptyArrayStorage;

      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1002780C4(uint64_t a1, char a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = sub_100073CE4(v4);
  if (v5)
  {
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          (*(v9 + 16))(a2 & 1, ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v11 = *(a1 + 16);
  v12 = sub_100073CE4(v11);

  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      *(a1 + 16) = _swiftEmptyArrayStorage;

      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t WindowFocusManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10027832C()
{
  result = v0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 33) = 514;
  return result;
}

uint64_t sub_1002783E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_10027845C()
{
  sub_1001D5A94(v0 + 16);
  sub_1001D5A94(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1002784C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == -1)
  {
    return 0xD000000000000026;
  }

  sub_10016D534();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100278530()
{
  type metadata accessor for Date();
  sub_10000548C();
  __chkstk_darwin(v0);
  sub_100005384();
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v1 - 8);
  sub_10001BB4C(v2, v9);
  sub_1000191D0();
  if (!v3)
  {
    v4 = sub_100007F3C();
    v5(v4);
    sub_100278DB8(&qword_100CA5720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_100014140();
    v7(v6);
  }

  return sub_100003A8C();
}

uint64_t sub_100278694(char a1)
{
  v1 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v1 = 0x65736C6166;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002786E8()
{
  type metadata accessor for URL();
  sub_10000548C();
  __chkstk_darwin(v0);
  sub_100005384();
  v1 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v1 - 8);
  sub_10001BB4C(v2, v9);
  sub_1000191D0();
  if (!v3)
  {
    v4 = sub_100007F3C();
    v5(v4);
    sub_100278DB8(&qword_100CA5728, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_100014140();
    v7(v6);
  }

  return sub_100003A8C();
}

uint64_t sub_10027884C()
{
  type metadata accessor for AttributedString();
  sub_10000548C();
  __chkstk_darwin(v0);
  sub_100005384();
  v1 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  __chkstk_darwin(v1 - 8);
  sub_10001BB4C(v2, v9);
  sub_1000191D0();
  if (!v3)
  {
    v4 = sub_100007F3C();
    v5(v4);
    sub_100278DB8(&qword_100CA5738, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_100014140();
    v7(v6);
  }

  return sub_100003A8C();
}

uint64_t sub_100278A78(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100278B14@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100278B44(_DWORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_100278B8C(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

_BYTE **sub_100278BD4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100278C0C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100078694(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100278C68(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CA3170, &qword_100A2D2F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100278D5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10022C350(a3, a4);
  sub_100003A9C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100278DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100278E04(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);

  return static Location.== infix(_:_:)();
}

uint64_t sub_100278E64()
{
  sub_100017580();
  type metadata accessor for Date();
  sub_10000F9FC();
  sub_10027ECBC(v0, v1, &protocol conformance descriptor for Date);
  sub_10001920C();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  type metadata accessor for Location();
  sub_10002058C();
  sub_10027ECBC(v2, v3, &protocol conformance descriptor for Location);
  sub_10001920C();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100278F10()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_10000F9FC();
  sub_10027ECBC(v0, v1, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  type metadata accessor for Location();
  sub_10002058C();
  sub_10027ECBC(v2, v3, &protocol conformance descriptor for Location);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100278FEC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_10027ECBC(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Location();
  sub_10027ECBC(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1002790D4()
{
  sub_10000C778();
  v53 = v0;
  v2 = v1;
  v50 = v3;
  v4 = sub_10022C350(&qword_100CA5898, &qword_100A2FCF8);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v52 = &v44 - v6;
  v7 = sub_1000038CC();
  v51 = type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(v7) - 8;
  __chkstk_darwin(v51);
  sub_1000037D8();
  v49 = v9 - v8;
  sub_1000038CC();
  v48 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v46 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v45 = type metadata accessor for Date();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v47 = type metadata accessor for Calendar();
  sub_1000037C4();
  v44 = v30;
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v25 + 8))(v29, v23);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v46 + 8))(v14, v48);
  Calendar.startOfDay(for:)();
  v35 = *(v16 + 8);
  v36 = v45;
  v35(v19, v45);
  v37 = v49;
  v38 = sub_10008650C();
  v39(v38);
  v40 = *(v51 + 28);
  type metadata accessor for Location();
  sub_100003A9C();
  (*(v41 + 16))(v37 + v40, v2);

  v42 = v52;
  Cache.subscript.getter();

  sub_10001BB78();
  sub_10027ED58();
  v35(v22, v36);
  (*(v44 + 8))(v34, v47);
  v43 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
  sub_100024D10(v42, 1, v43);
  sub_10002C4AC(v42, &qword_100CA5898, &qword_100A2FCF8);
  sub_10000536C();
}

void sub_1002794EC()
{
  sub_10000C778();
  v56 = v0;
  v57 = v1;
  v3 = v2;
  v53 = v4;
  v5 = sub_10022C350(&qword_100CA5898, &qword_100A2FCF8);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  v55 = &v46 - v7;
  v8 = sub_1000038CC();
  v54 = type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(v8) - 8;
  __chkstk_darwin(v54);
  sub_1000037D8();
  v52 = v10 - v9;
  sub_1000038CC();
  v51 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v49 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v48 = type metadata accessor for Date();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  v50 = type metadata accessor for Calendar();
  sub_1000037C4();
  v47 = v31;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = v34 - v33;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v26 + 8))(v30, v24);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v49 + 8))(v15, v51);
  Calendar.startOfDay(for:)();
  v36 = *(v17 + 8);
  v37 = v48;
  v36(v20, v48);
  v38 = v52;
  (*(v17 + 16))(v52, v23, v37);
  v39 = *(v54 + 28);
  type metadata accessor for Location();
  sub_100003A9C();
  (*(v40 + 16))(v38 + v39, v3);

  v41 = v55;
  Cache.subscript.getter();

  sub_10001BB78();
  sub_10027ED58();
  v36(v23, v37);
  (*(v47 + 8))(v35, v50);
  v42 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
  if (sub_100024D10(v41, 1, v42) == 1)
  {
    sub_10002C4AC(v41, &qword_100CA5898, &qword_100A2FCF8);
    v43 = 1;
    v44 = v57;
  }

  else
  {
    v45 = v57;
    sub_10027F0B0(v41, v57);
    v43 = 0;
    v44 = v45;
  }

  sub_10001B350(v44, v43, 1, v42);
  sub_10000536C();
}

uint64_t sub_10027994C()
{
  sub_100003B08();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Location();
  v1[5] = v4;
  sub_100003AE8(v4);
  v1[6] = v5;
  v1[7] = sub_1000134B0();
  v6 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
  v1[8] = v6;
  sub_100003810(v6);
  v1[9] = sub_1000134B0();
  v7 = sub_10022C350(&qword_100CA5898, &qword_100A2FCF8);
  sub_100003810(v7);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  v1[12] = v8;
  sub_100003810(v8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = type metadata accessor for CurrentWeather();
  v1[15] = v9;
  sub_100003AE8(v9);
  v1[16] = v10;
  v1[17] = sub_1000134B0();
  v11 = type metadata accessor for Date();
  v1[18] = v11;
  sub_100003AE8(v11);
  v1[19] = v12;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v13 = type metadata accessor for TimeZone();
  v1[23] = v13;
  sub_100003AE8(v13);
  v1[24] = v14;
  v1[25] = sub_1000134B0();
  v15 = type metadata accessor for Calendar();
  v1[26] = v15;
  sub_100003AE8(v15);
  v1[27] = v16;
  v1[28] = sub_1000134B0();
  v17 = sub_100013484();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100279BE0(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[25];
  v4 = v1[21];
  v5 = v1[19];
  v50 = v1[22];
  v51 = v1[18];
  v7 = v1[16];
  v6 = v1[17];
  v48 = v1[23];
  v49 = v1[15];
  v53 = v1[14];
  v55 = v1[12];
  v59 = v1[11];
  v61 = v1[8];
  v8 = v1[6];
  v57 = v1[5];
  v52 = v1[3];
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v2 + 8))(v3, v48);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v7 + 8))(v6, v49);
  Calendar.startOfDay(for:)();
  v9 = *(v5 + 8);
  v1[29] = v9;
  v1[30] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v51);
  v10 = *(v5 + 16);
  v10(v53, v50, v51);
  v11 = *(v8 + 16);
  v11(v53 + *(v55 + 20), v52, v57);

  Cache.subscript.getter();

  v12 = sub_100024D10(v59, 1, v61);
  sub_10002C4AC(v59, &qword_100CA5898, &qword_100A2FCF8);
  if (v12 != 1)
  {
    v60 = v9;
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0(&qword_100CA2700);
    }

    v19 = v1[7];
    v20 = v1[5];
    v21 = v1[3];
    v22 = type metadata accessor for Logger();
    sub_10000703C(v22, qword_100D90B68);
    v23 = sub_100003940();
    (v10)(v23);
    v11(v19, v21, v20);
    v24 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v24, v56);
    v27 = v1[27];
    v26 = v1[28];
    v28 = v1[26];
    v29 = v1[20];
    v30 = v1[18];
    v58 = v1[22];
    v32 = v1[6];
    v31 = v1[7];
    v33 = v1[5];
    if (v25)
    {
      v54 = v1[26];
      v34 = swift_slowAlloc();
      swift_slowAlloc();
      *v34 = 141558787;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      sub_10000F9FC();
      sub_10027ECBC(v35, v36, &protocol conformance descriptor for Date);
      dispatch thunk of CustomStringConvertible.description.getter();
      v60(v29, v30);
      v37 = sub_10008650C();
      v40 = sub_100078694(v37, v38, v39);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2160;
      *(v34 + 24) = 1752392040;
      *(v34 + 32) = 2081;
      Location.name.getter();
      (*(v32 + 8))(v31, v33);
      v41 = sub_100003B2C();
      v44 = sub_100078694(v41, v42, v43);

      *(v34 + 34) = v44;
      _os_log_impl(&_mh_execute_header, v24, v56, "Preprocessed data already exist for %{private,mask.hash}s %{private,mask.hash}s. Skip making data", v34, 0x2Au);
      swift_arrayDestroy();

      sub_10001BB78();
      sub_10027ED58();
      v60(v58, v30);
      (*(v27 + 8))(v26, v54);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
      v45 = sub_100003B2C();
      (v60)(v45);
      sub_10001BB78();
      sub_10027ED58();
      v60(v58, v30);
      (*(v27 + 8))(v26, v28);
    }

    sub_100031434();

    sub_100003B14();
    sub_10012CC1C();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  sub_10000C7D8();
  v1[31] = v13;
  *v13 = v14;
  v13[1] = sub_10027A1C8;
  sub_10012CC1C();

  return sub_10027A46C(v15, v16);
}

uint64_t sub_10027A1C8()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027A2AC()
{
  v9 = v0[29];
  v1 = v0[27];
  v10 = v0[26];
  v11 = v0[28];
  v2 = v0[22];
  v3 = v0[18];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  sub_10027ED04(v0[14], v0[13]);
  sub_10027ED04(v5, v4);
  sub_10001B350(v4, 0, 1, v6);

  sub_10008650C();
  Cache.subscript.setter();

  sub_10027ED58();
  sub_10001BB78();
  sub_10027ED58();
  v9(v2, v3);
  (*(v1 + 8))(v11, v10);
  sub_100031434();

  sub_100003B14();

  return v7();
}

uint64_t sub_10027A46C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = type metadata accessor for SunriseSunsetMonthlyViewModel(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_10022C350(&qword_100CA58A0, &qword_100A2FD10);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for TimeZone();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = type metadata accessor for Location();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10027A6DC, 0, 0);
}

uint64_t sub_10027A6DC()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v85 = *(v0 + 128);
  v86 = *(v0 + 120);
  v8 = *(v0 + 64);
  v9 = *(v0 + 56);
  v10 = type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  (*(v2 + 16))(v1, v9 + *(v10 + 20), v3);
  (*(v5 + 16))(v4, v9, v6);
  *(v0 + 224) = type metadata accessor for Elevation();
  sub_10000F9FC();
  *(v0 + 232) = sub_10027ECBC(v11, v12, &protocol conformance descriptor for Date);
  sub_1000053B8();
  v13 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 16) = v13;
  *(v0 + 240) = v13;
  *(v0 + 248) = sub_10027EFA0();
  v14 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = v14;
  *(v0 + 256) = v14;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v85 + 8))(v7, v86);
  Calendar.startOfDay(for:)();
  v15 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 32) = v15;
  v16 = v0 + 32;
  *(v0 + 264) = v15;
  sub_100003934();
  sub_10001B350(v17, v18, v19, v20);
  *(v0 + 40) = 0;
  sub_1000161C0((v8 + 96), *(v8 + 120));
  v21 = sub_10008650C();
  v23 = sub_100579164(v21, v22);
  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = v23;
  v25 = *(v0 + 216);
  v26 = *(v0 + 104);
  v27 = *(v0 + 72);
  sub_1000161C0((v8 + 96), *(v8 + 120));
  sub_100578FAC(v25);
  v28 = sub_100024D10(v26, 1, v27);
  v29 = *(v0 + 104);
  if (v28 == 1)
  {

    sub_10002C4AC(v29, &qword_100CA58A0, &qword_100A2FD10);
LABEL_4:
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0(&qword_100CA2700);
    }

    v30 = type metadata accessor for Logger();
    sub_10000703C(v30, qword_100D90B68);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (sub_1000054A4(v32))
    {
      v33 = sub_10000389C();
      sub_100025054(v33);
      sub_10000FA14(&_mh_execute_header, v34, v35, "SunriseSunsetDetailViewModelFactory calculates data");
      sub_100007E54();
    }

    v36 = *(v0 + 216);
    v37 = *(v0 + 112);
    v38 = *(v0 + 64);
    v89 = *(v0 + 184);

    type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
    v39 = swift_task_alloc();
    *(v0 + 272) = v39;
    *(v39 + 16) = v38;
    *(v39 + 24) = v36;
    *(v39 + 32) = v89;
    *(v39 + 48) = v0 + 40;
    *(v39 + 56) = v37;
    v40 = swift_task_alloc();
    *(v0 + 280) = v40;
    *v40 = v0;
    v40[1] = sub_10027AE8C;
    sub_10002FD58();
    sub_10012CC1C();

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  sub_10001E680();
  sub_10027F0B0(v29, v42);
  if (qword_100CA2700 != -1)
  {
    sub_100003AB0(&qword_100CA2700);
  }

  v43 = type metadata accessor for Logger();
  sub_10000703C(v43, qword_100D90B68);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (sub_1000054A4(v45))
  {
    v46 = sub_10000389C();
    sub_100025054(v46);
    sub_10000FA14(&_mh_execute_header, v47, v48, "SunriseSunsetDetailViewModelFactory gets data from cache");
    sub_100007E54();
  }

  v49 = *(v0 + 112);
  v50 = *(v0 + 72);

  *(v0 + 40) = v24;
  v51 = sub_100003940();
  sub_10002C4AC(v51, v52, &qword_100A2FD10);
  sub_10001E680();
  v53 = sub_1000053B8();
  sub_10027F0B0(v53, v54);
  sub_10001B350(v49, 0, 1, v50);
  v55 = *(v0 + 96);
  v56 = *(v0 + 72);
  sub_10018CF14(*(v0 + 112), v55, &qword_100CA58A0, &qword_100A2FD10);
  sub_100024D10(v55, 1, v56);
  v57 = sub_100020E04();
  if (v58)
  {
    sub_10002C4AC(v57, &qword_100CA58A0, &qword_100A2FD10);
LABEL_21:
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0(&qword_100CA2700);
    }

    sub_10000703C(v43, qword_100D90B68);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (sub_1000054A4(v74))
    {
      v75 = sub_10000389C();
      sub_100025054(v75);
      sub_10000FA14(&_mh_execute_header, v76, v77, "Failed to calculate sunrise sunset data");
      sub_100007E54();
    }

    v68 = *(v0 + 248);
    v16 = *(v0 + 168);
    v78 = *(v0 + 152);
    v88 = *(v0 + 144);
    v90 = *(v0 + 160);
    v63 = *(v0 + 72);
    v79 = *(v0 + 48);

    sub_10000E78C();
    v87 = Dictionary.init(dictionaryLiteral:)();
    Dictionary.init(dictionaryLiteral:)();
    v80 = sub_100017580();
    v65 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(v80);
    v61 = (v79 + *(v65 + 24));
    WeatherDescription.init(stringLiteral:)();
    *v61 = _swiftEmptyArrayStorage;
    sub_10000E78C();
    v70 = Dictionary.init(dictionaryLiteral:)();
    (*(v78 + 8))(v90, v88);
    *v79 = v87;
    v79[1] = v68;
    *(v79 + *(v65 + 28)) = v70;

    goto LABEL_26;
  }

  sub_10001E680();
  sub_10027F0B0(v59, v60);
  v61 = *(v0 + 40);
  if (!v61)
  {
    sub_1000191F4();
    sub_10027ED58();
    goto LABEL_21;
  }

  v62 = *(v0 + 152);
  v63 = *(v0 + 80);
  v64 = *(v0 + 48);
  sub_10027CE30(*(v0 + 40), v0 + 16, (v0 + 24), (v0 + 32));
  v65 = v62 + 8;
  v66 = sub_100003B2C();
  v67(v66);
  v69 = *(v0 + 16);
  v68 = *(v0 + 24);
  v70 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
  sub_10001E680();
  sub_10027F0B0(v63, v64 + v71);
  v72 = *(v0 + 32);

  *v64 = v69;
  v64[1] = v68;
  *(v64 + *(v70 + 28)) = v72;
LABEL_26:
  sub_100036C5C();
  sub_10002C4AC(*(v0 + 112), &qword_100CA58A0, &qword_100A2FD10);

  v81 = *(v70 + 8);
  v82 = sub_100003B2C();
  v81(v82);

  (v81)(v63, v68);
  (*(v65 + 8))(v61, v16);

  sub_100003B14();

  return v83();
}

uint64_t sub_10027AE8C()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027AF8C()
{
  v2 = v0[9];
  sub_10018CF14(v0[14], v0[12], &qword_100CA58A0, &qword_100A2FD10);
  v3 = sub_10000C7F0();
  sub_100024D10(v3, v4, v2);
  v5 = sub_100020E04();
  if (v6)
  {
    sub_10002C4AC(v5, &qword_100CA58A0, &qword_100A2FD10);
  }

  else
  {
    sub_10001E680();
    sub_10027F0B0(v7, v8);
    v9 = v0[5];
    if (v9)
    {
      v10 = v0[10];
      v11 = v0[6];
      sub_10027CE30(v0[5], (v0 + 2), v0 + 3, v0 + 4);
      v12 = sub_100003B2C();
      v13(v12);
      v15 = v0[2];
      v14 = v0[3];
      v16 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
      sub_10001E680();
      sub_10027F0B0(v10, v11 + v17);
      v18 = v0[4];

      *v11 = v15;
      v11[1] = v14;
      *(v11 + *(v16 + 28)) = v18;
      goto LABEL_12;
    }

    sub_1000191F4();
    sub_10027ED58();
  }

  if (qword_100CA2700 != -1)
  {
    sub_100003AB0(&qword_100CA2700);
  }

  v19 = type metadata accessor for Logger();
  sub_10000703C(v19, qword_100D90B68);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (sub_1000054A4(v21))
  {
    v22 = sub_10000389C();
    sub_100025054(v22);
    sub_10000FA14(&_mh_execute_header, v23, v24, "Failed to calculate sunrise sunset data");
    sub_100007E54();
  }

  v14 = v0[31];
  v16 = v0[29];
  v10 = v0[21];
  v25 = v0[19];
  v35 = v0[18];
  v36 = v0[20];
  v1 = v0[6];

  sub_10000E78C();
  v34 = Dictionary.init(dictionaryLiteral:)();
  Dictionary.init(dictionaryLiteral:)();
  v26 = sub_100017580();
  v27 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(v26);
  v9 = (v1 + *(v27 + 24));
  WeatherDescription.init(stringLiteral:)();
  *v9 = _swiftEmptyArrayStorage;
  sub_10000E78C();
  v28 = Dictionary.init(dictionaryLiteral:)();
  v29 = *(v25 + 8);
  v11 = (v25 + 8);
  v29(v36, v35);
  *v1 = v34;
  v1[1] = v14;
  *(v1 + *(v27 + 28)) = v28;

LABEL_12:
  sub_100036C5C();
  sub_10002C4AC(v0[14], &qword_100CA58A0, &qword_100A2FD10);

  v30 = *(v16 + 8);
  v31 = sub_100003B2C();
  v30(v31);

  (v30)(v11, v14);
  (v1[1])(v9, v10);

  sub_100003B14();

  return v32();
}

uint64_t sub_10027B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[9] = type metadata accessor for SunriseSunsetMonthlyViewModel(0);
  v8[10] = swift_task_alloc();
  v8[11] = type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
  v8[12] = swift_task_alloc();
  sub_10022C350(&qword_100CA58C0, &qword_100A2FD38);
  v8[13] = swift_task_alloc();
  v9 = sub_10022C350(&qword_100CA58C8, &unk_100A2FD40);
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v8[17] = v10;
  v11 = *(v10 - 8);
  v8[18] = v11;
  v8[19] = *(v11 + 64);
  v8[20] = swift_task_alloc();
  v12 = type metadata accessor for Location();
  v8[21] = v12;
  v13 = *(v12 - 8);
  v8[22] = v13;
  v8[23] = *(v13 + 64);
  v8[24] = swift_task_alloc();
  sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_10027B594, 0, 0);
}

uint64_t sub_10027B594()
{
  v1 = v0[24];
  v32 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v31 = v0[17];
  v30 = v0[6];
  v26 = v0[5];
  v8 = v0[3];
  v7 = v0[4];
  v29 = type metadata accessor for TaskPriority();
  sub_100003934();
  sub_10001B350(v9, v10, v11, v12);
  v28 = *(v3 + 16);
  v28(v1, v7, v5);
  v33 = v6;
  v27 = *(v6 + 16);
  v27(v4, v26, v31);
  v25 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = (v2 + *(v6 + 80) + v25) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v8;
  v24 = *(v3 + 32);
  v24(&v14[v25], v1, v5);
  v15 = *(v33 + 32);
  v15(&v14[v13], v4, v31);

  sub_10027C214(v32, &unk_100A2FD58, v14);
  sub_10002C4AC(v32, &qword_100CA3538, &qword_100A2D560);
  sub_100003934();
  sub_10001B350(v16, v17, v18, v29);
  v28(v1, v7, v5);
  v27(v4, v30, v31);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v8;
  v24(&v19[v25], v1, v5);
  v15(&v19[v13], v4, v31);

  sub_10027C214(v32, &unk_100A2FD68, v19);
  sub_10002C4AC(v32, &qword_100CA3538, &qword_100A2D560);
  TaskGroup.makeAsyncIterator()();
  swift_task_alloc();
  sub_10000C7D8();
  v0[26] = v20;
  *v20 = v21;
  v22 = sub_1000693BC(v20);

  return TaskGroup.Iterator.next(isolation:)(v22);
}

uint64_t sub_10027B8E0()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027B9C4()
{
  sub_10003A0D8();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = sub_10000C7F0();
  if (sub_100024D10(v3, v4, v2) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    sub_100003B14();
    sub_100044D14();

    __asm { BRAA            X1, X16 }
  }

  sub_10027F0B0(v1, *(v0 + 96));
  sub_1000053B8();
  swift_getEnumCaseMultiPayload();
  v7 = sub_100020E04();
  if (v8)
  {
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    sub_10001E680();
    sub_10027F0B0(v14, v9);
    sub_10002C4AC(v11, &qword_100CA58A0, &qword_100A2FD10);
    v15 = sub_10001920C();
    sub_10027ED04(v15, v16);
    sub_10001B350(v11, 0, 1, v10);
    sub_1000161C0((v13 + 96), *(v13 + 120));
    sub_100579004(v12, v9);
    sub_1000191F4();
    sub_10027ED58();
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = *(v0 + 40);
    v19 = *(v0 + 24);
    v20 = *v7;
    **(v0 + 56) = *v7;

    sub_1000161C0((v19 + 96), *(v19 + 120));
    sub_100579268(v17, v18, v20);
  }

  swift_task_alloc();
  sub_10000C7D8();
  *(v0 + 208) = v21;
  *v21 = v22;
  sub_1000693BC(v21);
  sub_100044D14();

  return TaskGroup.Iterator.next(isolation:)(v23);
}

uint64_t sub_10027BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for OSSignpostID();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10027BCC8, 0, 0);
}

uint64_t sub_10027BCC8()
{
  sub_100003B08();
  v1 = *(v0[3] + 136);
  v0[9] = v1;
  v2 = v1;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10027BDA4;
  v5 = v0[4];
  v4 = v0[5];

  return sub_10027BF68(v5, v4);
}

uint64_t sub_10027BDA4()
{
  sub_100003B08();
  sub_10000C7E4();
  *(v1 + 88) = v0;

  v2 = sub_100013484();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10027BE94(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 16);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v4 = sub_10001920C();
  v5(v4);
  *v3 = v2;
  type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
  swift_storeEnumTagMultiPayload();

  sub_100003B14();

  return v6();
}

uint64_t sub_10027BF68(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10027BF8C, 0, 0);
}

uint64_t sub_10027BF8C()
{
  v1 = v0[1].i64[1];
  type metadata accessor for Date();
  v2 = sub_1000038D8();
  type metadata accessor for ElevationData(v2);
  sub_10000F9FC();
  sub_10027ECBC(v3, v4, &protocol conformance descriptor for Date);
  v8 = v0[2];
  v0[1].i64[0] = Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CA58D8, &qword_100A2FDA0);
  v5 = swift_task_alloc();
  v0[3].i64[0] = v5;
  *(v5 + 16) = vextq_s8(v8, v8, 8uLL);
  *(v5 + 32) = v1;
  *(v5 + 40) = xmmword_100A2FBA0;
  *(v5 + 56) = v0 + 1;
  v6 = swift_task_alloc();
  v0[3].i64[1] = v6;
  *v6 = v0;
  v6[1] = sub_10027C0FC;
  sub_10002FD58();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10027C0FC()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027C214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  sub_10018CF14(a1, v19 - v9, &qword_100CA3538, &qword_100A2D560);
  v11 = type metadata accessor for TaskPriority();
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_10002C4AC(v10, &qword_100CA3538, &qword_100A2D560);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_10027C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  sub_10018CF14(a1, v23 - v10, &qword_100CA3538, &qword_100A2D560);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_10000C7F0();
  if (sub_100024D10(v13, v14, v12) == 1)
  {
    sub_10002C4AC(v11, &qword_100CA3538, &qword_100A2D560);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100003B20();
    (*(v15 + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *v4;
  sub_1000244CC();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  sub_10022C350(&qword_100CA58D0, &qword_100A2FD80);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_10027C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = type metadata accessor for OSSignpostID();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_10027C6C4, 0, 0);
}

uint64_t sub_10027C6C4()
{
  sub_100013494();
  v1 = v0[8];
  v2 = *(v1 + 136);
  v0[14] = v2;
  v3 = v2;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  sub_100035B30(v1 + 16, (v0 + 2));
  sub_1000161C0(v0 + 2, v0[5]);
  swift_task_alloc();
  sub_10000C7D8();
  v0[15] = v4;
  *v4 = v5;
  v4[1] = sub_10027C7C0;

  return sub_1006851D0();
}

uint64_t sub_10027C7C0()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027C8A4()
{
  sub_100006F14((v0 + 16));
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v1 = sub_10001920C();
  v2(v1);
  type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
  swift_storeEnumTagMultiPayload();

  sub_100003B14();

  return v3();
}

uint64_t sub_10027C978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a4;
  v37 = a3;
  v40 = a2;
  v5 = type metadata accessor for Elevation();
  v33 = *(v5 - 8);
  v6 = v33;
  __chkstk_darwin(v5);
  v36 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - v9;
  v11 = sub_10022C350(&qword_100CA58B0, &qword_100A2FD28) - 8;
  __chkstk_darwin(v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  v39 = a1;
  sub_10018CF14(a1, v30 - v15, &qword_100CA58B0, &qword_100A2FD28);
  v30[1] = *(v11 + 56);
  sub_10018CF14(a1, v13, &qword_100CA58B0, &qword_100A2FD28);
  v17 = *(v11 + 56);
  v18 = v11;
  v31 = *(v6 + 16);
  v19 = v5;
  v31(v10, &v13[v17], v5);
  sub_10027ED58();
  sub_10001B350(v10, 0, 1, v5);
  sub_10040344C();
  v35 = type metadata accessor for Date();
  v20 = *(v35 - 8);
  v34 = *(v20 + 8);
  v40 = v20 + 8;
  v34(v13, v35);
  sub_10027ED58();
  v21 = v39;
  sub_10018CF14(v39, v16, &qword_100CA58B0, &qword_100A2FD28);
  v22 = v36;
  v31(v36, &v16[*(v18 + 56)], v19);
  v32 = type metadata accessor for ElevationData;
  sub_10027ED58();
  Elevation.degrees.getter();
  (*(v33 + 8))(v22, v19);
  sub_10018CF14(v21, v13, &qword_100CA58B0, &qword_100A2FD28);
  v23 = v18;
  type metadata accessor for ElevationData(0);

  sub_10027ED58();
  v24 = v37;
  swift_isUniquelyReferenced_nonNull_native();
  v41 = *v24;
  sub_100238F80();
  *v24 = v41;
  v26 = v34;
  v25 = v35;
  v34(v13, v35);
  v26(v16, v25);
  v27 = v39;
  sub_10018CF14(v39, v16, &qword_100CA58B0, &qword_100A2FD28);
  v37 = *(v23 + 56);
  sub_10018CF14(v27, v13, &qword_100CA58B0, &qword_100A2FD28);

  sub_10027ED58();
  v28 = v38;
  swift_isUniquelyReferenced_nonNull_native();
  v41 = *v28;
  sub_100238DEC();
  *v28 = v41;
  v26(v16, v25);
  v26(v13, v25);
  return sub_10027ED58();
}

void sub_10027CE30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v24 = a4;
  v22 = a2;
  v23 = a3;
  v21 = sub_10022C350(&qword_100CA58B0, &qword_100A2FD28);
  __chkstk_darwin(v21);
  v7 = &v20 - v6;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(a1 + 48);
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 16))(v7, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(a1 + 56);
    v19 = type metadata accessor for ElevationData(0);
    sub_10027ED04(v18 + *(*(v19 - 8) + 72) * v15, &v7[*(v21 + 48)]);
    sub_10027C978(v7, v22, v23, v24);
    sub_10002C4AC(v7, &qword_100CA58B0, &qword_100A2FD28);
    if (v4)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10027D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[26] = a3;
  v8[27] = a4;
  v8[25] = a2;
  v8[32] = sub_10022C350(&qword_100CA58B0, &qword_100A2FD28);
  v8[33] = swift_task_alloc();
  v8[34] = *(type metadata accessor for ElevationData(0) - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  sub_10022C350(&qword_100CA58E0, &qword_100A2FDB8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  sub_10022C350(&qword_100CA58E8, &qword_100A2FDC0);
  v8[39] = swift_task_alloc();
  v9 = sub_10022C350(&qword_100CA58F0, &qword_100A2FDC8);
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  v10 = type metadata accessor for Location();
  v8[43] = v10;
  v11 = *(v10 - 8);
  v8[44] = v11;
  v8[45] = *(v11 + 64);
  v8[46] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v8[47] = v12;
  v13 = *(v12 - 8);
  v8[48] = v13;
  v8[49] = *(v13 + 64);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return _swift_task_switch(sub_10027D348, 0, 0);
}

uint64_t sub_10027D348(uint64_t a1)
{
  if (*(v1 + 232) < 1)
  {
LABEL_31:
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 384);
    v62 = v2 + 16;
    v63 = *(v1 + 360) + 7;
    v64 = v2 + 32;
    v65 = v2;
    v66 = *(v1 + 352);
    v3 = 1;
    while (1)
    {
      v4 = *(v1 + 240);
      if (((v3 - 1) * v4) >> 64 != ((v3 - 1) * v4) >> 63)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v5 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        goto LABEL_30;
      }

      v80 = (v3 - 1) * v4;
      if (v3 == *(v1 + 232))
      {
        break;
      }

      v78 = v3;
      v72 = *(v1 + 424);
      v74 = *(v1 + 416);
      v6 = *(v1 + 408);
      v68 = v6;
      v76 = *(v1 + 392);
      v8 = *(v1 + 368);
      v7 = *(v1 + 376);
      v9 = *(v1 + 344);
      v67 = v9;
      v10 = *(v1 + 216);
      v11 = *(v1 + 224);
      v70 = *(v1 + 208);
      v69 = type metadata accessor for TaskPriority();
      sub_100003934();
      sub_10001B350(v12, v13, v14, v15);
      (*(v65 + 16))(v6, v10, v7);
      (*(v66 + 16))(v8, v11, v9);
      v16 = (*(v65 + 80) + 40) & ~*(v65 + 80);
      v17 = (v76 + *(v66 + 80) + v16) & ~*(v66 + 80);
      v18 = (v17 + v63) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      *(v19 + 4) = v70;
      (*(v65 + 32))(&v19[v16], v68, v7);
      (*(v66 + 32))(&v19[v17], v8, v67);
      *&v19[v18] = v80;
      *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v5;
      sub_10018CF14(v72, v74, &qword_100CA3538, &qword_100A2D560);
      v20 = sub_10000C7F0();
      v22 = sub_100024D10(v20, v21, v69);

      v23 = *(v1 + 416);
      if (v22 == 1)
      {
        sub_10002C4AC(*(v1 + 416), &qword_100CA3538, &qword_100A2D560);
      }

      else
      {
        TaskPriority.rawValue.getter();
        sub_100003B20();
        (*(v24 + 8))(v23, v69);
      }

      if (*(v19 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1000053B8();
        v25 = dispatch thunk of Actor.unownedExecutor.getter();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = **(v1 + 200);
      sub_1000244CC();
      v29 = swift_allocObject();
      *(v29 + 16) = &unk_100A2FDD8;
      *(v29 + 24) = v19;

      sub_10022C350(&qword_100CA58D8, &qword_100A2FDA0);
      v30 = v27 | v25;
      if (v27 | v25)
      {
        v30 = v1 + 72;
        *(v1 + 72) = 0;
        *(v1 + 80) = 0;
        *(v1 + 88) = v25;
        *(v1 + 96) = v27;
      }

      v31 = *(v1 + 424);
      *(v1 + 136) = 1;
      *(v1 + 144) = v30;
      *(v1 + 152) = v28;
      swift_task_create();

      a1 = sub_10002C4AC(v31, &qword_100CA3538, &qword_100A2D560);
      v3 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        __break(1u);
        break;
      }
    }

    v77 = *(v1 + 440);
    v79 = *(v1 + 432);
    v32 = *(v1 + 408);
    v73 = *(v1 + 392);
    v33 = *(v1 + 368);
    v34 = *(v1 + 376);
    v71 = v33;
    v35 = *(v1 + 344);
    v37 = *(v1 + 216);
    v36 = *(v1 + 224);
    v38 = *(v1 + 208);
    v75 = type metadata accessor for TaskPriority();
    sub_100003934();
    sub_10001B350(v39, v40, v41, v42);
    v43 = *(v65 + 16);
    *(v1 + 448) = v43;
    *(v1 + 456) = v62 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43(v32, v37, v34);
    (*(v66 + 16))(v33, v36, v35);
    v44 = (*(v65 + 80) + 40) & ~*(v65 + 80);
    v45 = (v73 + *(v66 + 80) + v44) & ~*(v66 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = 0;
    *(v46 + 3) = 0;
    *(v46 + 4) = v38;
    v47 = *(v65 + 32);
    *(v1 + 464) = v47;
    *(v1 + 472) = v64 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v47(&v46[v44], v32, v34);
    (*(v66 + 32))(&v46[v45], v71, v35);
    *&v46[(v45 + v63) & 0xFFFFFFFFFFFFFFF8] = v80;
    sub_10018CF14(v77, v79, &qword_100CA3538, &qword_100A2D560);
    v48 = sub_10000C7F0();
    LODWORD(v45) = sub_100024D10(v48, v49, v75);

    v50 = *(v1 + 432);
    if (v45 == 1)
    {
      sub_10002C4AC(*(v1 + 432), &qword_100CA3538, &qword_100A2D560);
    }

    else
    {
      TaskPriority.rawValue.getter();
      sub_100003B20();
      (*(v51 + 8))(v50, v75);
    }

    if (*(v46 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v52 = dispatch thunk of Actor.unownedExecutor.getter();
      v54 = v53;
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = **(v1 + 200);
    sub_1000244CC();
    v56 = swift_allocObject();
    *(v56 + 16) = &unk_100A2FDF8;
    *(v56 + 24) = v46;

    sub_10022C350(&qword_100CA58D8, &qword_100A2FDA0);
    if (v54 | v52)
    {
      v57 = v1 + 104;
      *(v1 + 104) = 0;
      *(v1 + 112) = 0;
      *(v1 + 120) = v52;
      *(v1 + 128) = v54;
    }

    else
    {
      v57 = 0;
    }

    v58 = *(v1 + 440);
    *(v1 + 160) = 1;
    *(v1 + 168) = v57;
    *(v1 + 176) = v55;
    swift_task_create();

    sub_10002C4AC(v58, &qword_100CA3538, &qword_100A2D560);
    TaskGroup.makeAsyncIterator()();
    swift_task_alloc();
    sub_10000C7D8();
    *(v1 + 480) = v59;
    *v59 = v60;
    sub_10003C244(v59);
    a1 = v1 + 184;
  }

  return TaskGroup.Iterator.next(isolation:)(a1);
}

uint64_t sub_10027DA90()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027DB74()
{
  if (!*(v0 + 184))
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    sub_100003B14();
    sub_1000718DC();

    __asm { BRAA            X1, X16 }
  }

  v1 = **(v0 + 248);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 192) = v1;
  sub_10066E034((v0 + 16));
  v63 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v61 = *(v0 + 24);
  v62 = *(v0 + 56);
  v60 = (*(v0 + 32) + 64) >> 6;

  while (1)
  {
    v6 = v4;
    v7 = v3;
    v67 = isUniquelyReferenced_nonNull_native;
    if (!v4)
    {
      v8 = v3;
      while (1)
      {
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v7 >= v60)
        {
          v66 = 0;
          v17 = 1;
          goto LABEL_9;
        }

        v6 = *(v61 + 8 * v7);
        ++v8;
        if (v6)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v5);
    }

LABEL_8:
    v64 = *(v0 + 464);
    v9 = *(v0 + 408);
    v10 = *(v0 + 376);
    v11 = *(v0 + 304);
    v12 = *(v0 + 288);
    v13 = *(v0 + 272);
    v65 = v1;
    v14 = *(v0 + 256);
    v66 = (v6 - 1) & v6;
    v15 = __clz(__rbit64(v6)) | (v7 << 6);
    (*(v0 + 448))(v9, *(v63 + 48) + *(*(v0 + 384) + 72) * v15, v10);
    sub_10027ED04(*(v63 + 56) + *(v13 + 72) * v15, v12);
    v16 = *(v14 + 48);
    v1 = v65;
    v64(v11, v9, v10);
    sub_100003AD0();
    sub_10027F0B0(v12, v11 + v16);
    v17 = 0;
    v8 = v7;
LABEL_9:
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v20 = *(v0 + 256);
    v21 = 1;
    sub_10001B350(v18, v17, 1, v20);
    sub_10027FB54(v18, v19, &qword_100CA58E0, &qword_100A2FDB8);
    if (sub_100024D10(v19, 1, v20) != 1)
    {
      v22 = *(v0 + 264);
      sub_10027FB54(*(v0 + 296), v22, &qword_100CA58B0, &qword_100A2FD28);
      v62(v22);
      v23 = sub_1000053B8();
      sub_10002C4AC(v23, v24, &qword_100A2FD28);
      v21 = 0;
    }

    v25 = *(v0 + 312);
    v26 = sub_10022C350(&qword_100CA58F8, &qword_100A2FE08);
    sub_10001B350(v25, v21, 1, v26);
    v27 = sub_10022C350(&qword_100CA58F8, &qword_100A2FE08);
    if (sub_100024D10(v25, 1, v27) == 1)
    {
      v52 = *(v0 + 248);
      sub_10027FAE8();

      *v52 = v1;

      swift_task_alloc();
      sub_10000C7D8();
      *(v0 + 480) = v53;
      *v53 = v54;
      sub_10003C244(v53);
      sub_1000718DC();

      return TaskGroup.Iterator.next(isolation:)(v5);
    }

    v28 = *(v0 + 312);
    v29 = *(v0 + 280);
    v30 = *(v27 + 48);
    v31 = sub_10001920C();
    v32(v31);
    sub_100003AD0();
    sub_10027F0B0(v28 + v30, v29);
    sub_100237FB4();
    v35 = v34;
    v36 = v1[2];
    v37 = (v33 & 1) == 0;
    v5 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_35;
    }

    v38 = v33;
    if (v1[3] < v5)
    {
      break;
    }

    if (v67)
    {
      if (v33)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_10022C350(&qword_100CA5900, &unk_100A2FE10);
      _NativeDictionary.copy()();
      if (v38)
      {
LABEL_19:
        v42 = *(v0 + 272);
        v41 = *(v0 + 280);
        (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
        v1 = *(v0 + 192);
        v5 = sub_10027FAF0(v41, v1[7] + *(v42 + 72) * v35);
        goto LABEL_24;
      }
    }

LABEL_22:
    v43 = *(v0 + 464);
    v44 = *(v0 + 400);
    v45 = *(v0 + 376);
    v46 = *(v0 + 384);
    v47 = *(v0 + 280);
    v1 = *(v0 + 192);
    v1[(v35 >> 6) + 8] |= 1 << v35;
    v43(v1[6] + *(v46 + 72) * v35, v44, v45);
    sub_100003AD0();
    v5 = sub_10027F0B0(v47, v48);
    v49 = v1[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_36;
    }

    v1[2] = v51;
LABEL_24:
    isUniquelyReferenced_nonNull_native = 1;
    v3 = v8;
    v4 = v66;
  }

  sub_10060B464(v5, v67 & 1);
  sub_100237FB4();
  if ((v38 & 1) == (v40 & 1))
  {
    v35 = v39;
    if (v38)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  sub_1000718DC();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void *sub_10027E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a4;
  v82 = a5;
  v68 = a2;
  v7 = type metadata accessor for ElevationData(0);
  v71 = *(v7 - 8);
  __chkstk_darwin(v7);
  v87 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v78 = type metadata accessor for TimeZone();
  v85 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Elevation();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar();
  v84 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v88 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v86 = &v63 - v22;
  v66 = type metadata accessor for OSSignpostID();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a3;
  v25 = *(a3 + 136);
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v63 = v25;
  v64 = v24;
  os_signpost(_:dso:log:name:signpostID:)();
  sub_10027ECBC(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v79 = v7;
  v26 = Dictionary.init(dictionaryLiteral:)();
  v73 = (v85 + 1);
  v74 = (v84 + 8);
  v72 = (v14 + 16);
  v83 = (v19 + 16);
  v67 = v19;
  v69 = (v14 + 8);
  v70 = (v19 + 8);
  while (1)
  {
    v85 = v26;
    v27 = v75;
    static Calendar.current.getter();
    v28 = v86;
    v84 = a1;
    Date.wc_addMinutes(_:calendar:)();
    (*v74)(v27, v76);
    sub_1000161C0((v80 + 56), *(v80 + 80));
    dispatch thunk of SunElevationCalculatorType.getElevation(for:on:)();
    Elevation.degrees.getter();
    v89 = v29;
    sub_1001BB6FC();
    v30 = BinaryFloatingPoint.formatted()();
    v31 = v18;
    v32 = v16;
    v33 = v11;
    v34 = v13;
    v35 = v77;
    Location.timeZone.getter();
    v36 = Date.formattedHours(timeZone:forAccessibility:)();
    v38 = v37;
    v39 = v35;
    v13 = v34;
    v11 = v33;
    v16 = v32;
    v18 = v31;
    (*v73)(v39, v78);
    (*v72)(v11, v16, v13);
    v40 = v79;
    *&v11[*(v79 + 20)] = v30;
    v41 = &v11[*(v40 + 24)];
    *v41 = v36;
    v41[1] = v38;
    v42 = *v83;
    (*v83)(v88, v28, v31);
    sub_10027ED04(v11, v87);
    v43 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v43;
    sub_100237FB4();
    v47 = v43[2];
    v48 = (v46 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      break;
    }

    v50 = v45;
    v51 = v46;
    sub_10022C350(&qword_100CA5900, &unk_100A2FE10);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v49))
    {
      sub_100237FB4();
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_17;
      }

      v50 = v52;
    }

    v26 = v89;
    if (v51)
    {
      sub_10027FAF0(v87, v89[7] + *(v71 + 72) * v50);
      v54 = *v70;
      (*v70)(v88, v18);
      sub_10027ED58();
      (*v69)(v16, v13);
      v54(v86, v18);
    }

    else
    {
      v89[(v50 >> 6) + 8] |= 1 << v50;
      v55 = v67;
      v56 = v88;
      v42((v26[6] + *(v67 + 72) * v50), v88, v18);
      sub_10027F0B0(v87, v26[7] + *(v71 + 72) * v50);
      v57 = *(v55 + 8);
      v57(v56, v18);
      sub_10027ED58();
      (*v69)(v16, v13);
      v57(v86, v18);
      v58 = v26[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_16;
      }

      v26[2] = v60;
    }

    if (v68 == v84)
    {
      goto LABEL_14;
    }

    a1 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
LABEL_14:
      static os_signpost_type_t.end.getter();
      v61 = v64;
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v65 + 8))(v61, v66);
      return v26;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10027E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_10027EA04, 0, 0);
}

uint64_t sub_10027EA04()
{
  result = v0[6];
  if (result > 1440)
  {
    __break(1u);
  }

  else
  {
    sub_100003B08();
    v3 = v0[2];
    *v3 = sub_10027E160(v4, 1440, v0[3], v0[4], v0[5]);
    sub_100003B14();

    return v5();
  }

  return result;
}

uint64_t sub_10027EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_10027EAA0, 0, 0);
}

uint64_t sub_10027EAA0()
{
  result = v0[6];
  if (v0[7] < result)
  {
    __break(1u);
  }

  else
  {
    sub_100003B08();
    v3 = v0[2];
    *v3 = sub_10027E160(v4, v5, v0[3], v0[4], v0[5]);
    sub_100003B14();

    return v6();
  }

  return result;
}

uint64_t sub_10027EB10()
{
  sub_100006F14((v0 + 16));
  sub_100006F14((v0 + 56));
  sub_100006F14((v0 + 96));

  return v0;
}

uint64_t sub_10027EB50()
{
  sub_10027EB10();

  return swift_deallocClassInstance();
}

uint64_t sub_10027EBF0(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Location();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10027ECBC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10027ED04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10027ED58()
{
  v1 = sub_100017580();
  v2(v1);
  sub_100003B20();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_10027EDB0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10027FCBC;

  return v6(a1);
}

uint64_t sub_10027EEA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10006D190;

  return v6(a1);
}

unint64_t sub_10027EFA0()
{
  result = qword_100CA58A8;
  if (!qword_100CA58A8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for CGFloat, &type metadata for CGFloat, v0, v1);
    atomic_store(result, &qword_100CA58A8);
  }

  return result;
}

uint64_t sub_10027F014()
{
  sub_10003A0D8();
  sub_1000D3DF4();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000E760(v1);

  return sub_10027B324(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10027F0B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10027F104()
{
  sub_10003A0D8();
  sub_100018290();
  v0 = type metadata accessor for Location();
  sub_100003AE8(v0);
  v1 = type metadata accessor for Date();
  sub_100003810(v1);
  sub_100071C24();
  v2 = swift_task_alloc();
  v3 = sub_100011378(v2);
  *v3 = v4;
  v3[1] = sub_1000D8400;
  sub_10004E378();
  sub_100044D14();

  return sub_10027BC04(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10027F21C()
{
  sub_10003A0D8();
  sub_100018290();
  v0 = type metadata accessor for Location();
  sub_100003AE8(v0);
  v1 = type metadata accessor for Date();
  sub_100003810(v1);
  sub_100071C24();
  v2 = swift_task_alloc();
  v3 = sub_100011378(v2);
  *v3 = v4;
  v3[1] = sub_10006D0B0;
  sub_10004E378();
  sub_100044D14();

  return sub_10027C600(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10027F334()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_10027F3C4()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_10027F454()
{
  sub_10003A0D8();
  sub_1000D3DF4();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000E760(v1);

  return sub_10027D024(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10027F4F0()
{
  sub_100018290();
  v1 = type metadata accessor for Date();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003AE8(v6);
  v9 = (*(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);
  v11 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  v13 = sub_100011378(v12);
  *v13 = v14;
  v13[1] = sub_1000D8400;
  v15 = sub_10004E378();

  return sub_10027EA78(v15, v16, v17, v18, v19, v20, v10, v11);
}

uint64_t sub_10027F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10022C350(&qword_100CA58B0, &qword_100A2FD28) + 48);
  v5 = a2 + *(sub_10022C350(&qword_100CA58F8, &qword_100A2FE08) + 48);

  return sub_10066DC70(a2, v5, a1, a1 + v4);
}

uint64_t sub_10027F6E4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10027F7D8;

  return v5(v2 + 16);
}

uint64_t sub_10027F7D8()
{
  sub_100013494();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_100003AF8();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_10027F8FC()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_10027F98C()
{
  sub_10003A0D8();
  sub_100018290();
  v1 = type metadata accessor for Date();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003AE8(v6);
  v9 = *(v0 + ((*(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = sub_100011378(v10);
  *v11 = v12;
  v11[1] = sub_1000D8400;
  v13 = sub_10004E378();

  return sub_10027E9DC(v13, v14, v15, v16, v17, v18, v9);
}

uint64_t sub_10027FAF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027FB54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000399C(a1, a2, a3, a4);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return v4;
}

void sub_10027FB9C(uint64_t a1)
{
  sub_10027FC10(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SunriseSunsetMonthlyViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10027FC10(uint64_t a1)
{
  if (!qword_100CA5990)
  {
    type metadata accessor for Date();
    type metadata accessor for ElevationData(255);
    sub_10027ECBC(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA5990);
    }
  }
}

uint64_t type metadata accessor for MoonCalendarViewModel(uint64_t a1)
{
  result = qword_100CA5A18;
  if (!qword_100CA5A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10027FD34(uint64_t a1)
{
  result = type metadata accessor for CalendarViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OverviewTableViewModel();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10027FDB8(uint64_t a1, uint64_t a2)
{
  if ((sub_10026BF50(a1, a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MoonCalendarViewModel(0);

  return static OverviewTableViewModel.== infix(_:_:)();
}

uint64_t sub_10027FE1C@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CA5A58, &qword_100A2FED8);
  a1[4] = sub_10027FF70();
  sub_100042FB0(a1);
  type metadata accessor for MoonCalendarViewModel(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10027FEE4(uint64_t a1)
{
  sub_10027FFD4(&qword_100CA5A68, byte_100A2FE80);

  return ShortDescribable.description.getter();
}

unint64_t sub_10027FF70()
{
  result = qword_100CA5A60;
  if (!qword_100CA5A60)
  {
    v3 = sub_10022E824(&qword_100CA5A58, &qword_100A2FED8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CA5A60);
  }

  return result;
}

uint64_t sub_10027FFD4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MoonCalendarViewModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100280018(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10028006C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1002800C8(uint64_t a1)
{
  if (qword_100CA26A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90A48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Lazy: Appeared", v4, 2u);
  }

  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.setter();
  return State.wrappedValue.setter();
}

void sub_100280200(uint64_t a1, uint64_t a2)
{
  if (sub_1000A4E98())
  {
    if (qword_100CA26A0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000703C(v2, qword_100D90A48);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Lazy: Will dismiss presentation. Already loading.", v4, 2u);
    }
  }

  else
  {
    if (qword_100CA26A0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000703C(v5, qword_100D90A48);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Lazy: Will dismiss presentation. Starting to load.", v8, 2u);
    }

    sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
    State.wrappedValue.setter();
  }
}

uint64_t sub_100280400(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5A88, &qword_100A2FF98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100280468(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1002804A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1002804F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_10000C70C(0, &qword_100CA52E0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

uint64_t sub_1002805AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 0x74617265706D6574;
  *(inited + 40) = 0xEF74696E55657275;
  v9 = sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
  *(inited + 48) = a1;
  *(inited + 72) = v9;
  strcpy((inited + 80), "menuCategory");
  *(inited + 120) = &unk_100C632C0;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = a2;
  *(inited + 104) = a3 & 1;
  v10 = a1;
  Dictionary.init(dictionaryLiteral:)();
  a4[3] = sub_10022C350(&qword_100CA5AD0, &unk_100A30080);
  a4[4] = sub_1002807B4();
  sub_100042FB0(a4);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100280720(uint64_t a1)
{
  sub_100280818();

  return ShortDescribable.description.getter();
}

unint64_t sub_100280760()
{
  result = qword_100CA5AC8;
  if (!qword_100CA5AC8)
  {
    result = swift_getWitnessTable("ݷ ", &type metadata for ListMenuViewModel, v0, v1);
    atomic_store(result, &qword_100CA5AC8);
  }

  return result;
}

unint64_t sub_1002807B4()
{
  result = qword_100CA5AD8;
  if (!qword_100CA5AD8)
  {
    v3 = sub_10022E824(&qword_100CA5AD0, &unk_100A30080);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CA5AD8);
  }

  return result;
}

unint64_t sub_100280818()
{
  result = qword_100CA5AE0;
  if (!qword_100CA5AE0)
  {
    result = swift_getWitnessTable(asc_100A3001C, &type metadata for ListMenuViewModel, v0, v1);
    atomic_store(result, &qword_100CA5AE0);
  }

  return result;
}

uint64_t sub_10028086C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1002808AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100280900(uint64_t a1, uint64_t a2)
{
  if ((static DetailChartGradientModel.== infix(_:_:)() & 1) != 0 && ((v4 = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(0), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100280970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConditionDetailLegendForeground(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10022C350(&qword_100CA5AE8, &qword_100A30108);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v18 = *(v17 + 56);
  sub_100280DEC(a1, &v34 - v15);
  sub_100280DEC(a2, &v16[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100280DEC(v16, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100280EB8(&v16[v18], v7);
      if ((static DetailChartGradientModel.== infix(_:_:)() & 1) != 0 && ((v19 = *(v4 + 20), v20 = *&v10[v19], v21 = *&v10[v19 + 8], v22 = &v7[v19], v20 == *v22) ? (v23 = v21 == v22[1]) : (v23 = 0), v23))
      {
        v29 = *(v4 + 24);
        v30 = *&v10[v29];
        v31 = *&v7[v29];
        sub_10001E698();
        sub_100280F1C(v7, v32);
        if (v30 == v31)
        {
          sub_10001E698();
          sub_100280F1C(v10, v33);
          sub_10001BB90();
          v27 = 1;
          return v27 & 1;
        }
      }

      else
      {
        sub_10001E698();
        sub_100280F1C(v7, v24);
      }

      sub_10001E698();
      sub_100280F1C(v10, v25);
      sub_10001BB90();
      goto LABEL_14;
    }

    sub_10001E698();
    sub_100280F1C(v10, v26);
  }

  else
  {
    sub_100280DEC(v16, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = static Color.== infix(_:_:)();

      sub_10001BB90();
      return v27 & 1;
    }
  }

  sub_100280E50(v16);
LABEL_14:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_100280C18(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ConditionDetailLegend(0);
  if ((sub_100280970(a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 28);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100280CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_1009E9C0C();
  if (v14 & 1) != 0 && (a2 == a6 ? (v15 = a3 == a7) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v16 = a4 ^ a8 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100280DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailLegendForeground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100280E50(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5AE8, &qword_100A30108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100280EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100280F1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100280F94(uint64_t a1)
{
  result = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100281028(uint64_t a1)
{
  type metadata accessor for DetailChartGradientModel();
  if (v1 <= 0x3F)
  {
    sub_10026F418();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002810DC(uint64_t a1)
{
  result = type metadata accessor for ConditionDetailLegendForeground(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100281158@<X0>(void *a2@<X8>)
{
  LOBYTE(__src[0]) = 1;
  State.init(wrappedValue:)();
  v3 = v38;
  v4 = v39;

  sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
  sub_100006F64(&qword_100CA4BE0, &qword_100CA4BD8, &qword_100A2EE80, asc_100AA1480);
  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  static LinearGradient.fallback.getter();
  static LinearGradient.fallback.getter();
  v23 = v5;
  v24 = v7;
  v25 = v38;
  v26 = v39;
  *v27 = v13[16];
  *&v27[8] = v14;
  *&v27[24] = v15;
  v28 = 0;
  *v29 = v16;
  *&v29[8] = v17;
  *&v29[24] = v18;
  v30 = 0;
  v31 = 0;
  v35[0] = *v27;
  v35[1] = *&v27[16];
  v36 = *(&v15 + 1);
  v33 = *(&v18 + 1);
  v34 = 0;
  v32[0] = *v29;
  v32[1] = *&v29[16];
  sub_100281394(&v19);
  v9 = v19;
  v8 = v20;
  v10 = v21;
  v11 = v22;

  sub_10028164C(v35);
  sub_10003FDF4(&v34, &qword_100CA5CC8, &unk_100A30208);
  sub_10028164C(v32);
  sub_10003FDF4(&v31, &qword_100CA5CC8, &unk_100A30208);
  *&__src[0] = v5;
  *(&__src[0] + 1) = v7;
  LOBYTE(__src[1]) = v3;
  *(&__src[1] + 1) = v4;
  __src[2] = v9;
  *&__src[3] = v8;
  *(&__src[3] + 1) = v10;
  __src[4] = v11;
  __src[5] = v9;
  *&__src[6] = v8;
  *(&__src[6] + 1) = v10;
  __src[7] = v11;
  v38 = v5;
  v39 = v7;
  v40 = v3;
  v41 = v4;
  v42 = v9;
  v43 = v8;
  v44 = v10;
  v45 = v11;
  v46 = 0;
  v47 = v9;
  v48 = v8;
  v49 = v10;
  v50 = v11;
  v51 = 0;
  sub_1002816A0(__src, v13);
  sub_1002816D8(&v38);
  return memcpy(a2, __src, 0x80uLL);
}

double sub_100281394@<D0>(_OWORD *a1@<X8>)
{
  v19 = a1;
  v18 = type metadata accessor for CodableColor();
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SkyBackgroundGradient();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherConditionBackgroundModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA47E8, &qword_100A2EB20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2C3F0;
  sub_1001108E0();
  WeatherConditionBackgroundModel.gradient.getter();
  (*(v9 + 8))(v11, v8);
  SkyBackgroundGradient.topColor.getter();
  (*(v5 + 8))(v7, v4);
  v13 = CodableColor.color.getter();
  (*(v1 + 8))(v3, v18);
  *(v12 + 32) = v13;
  Gradient.init(colors:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v20;
  v15 = v21;
  v16 = v19;
  *v19 = v20;
  v16[1] = v15;
  *(v16 + 4) = v22;
  return result;
}

uint64_t sub_100281708@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v14[1] = a1;
  v3 = type metadata accessor for WeatherConditionBackgroundModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static Alignment.center.getter();
  v9 = v8;
  sub_100281A90(v15);
  memcpy(v17, v15, sizeof(v17));
  memcpy(__dst, v15, 0x58uLL);
  sub_100060DE0(v17, v16, &qword_100CA5CD0, &qword_100A302C8);
  sub_10003FDF4(__dst, &qword_100CA5CD0, &qword_100A302C8);
  memcpy(&v16[2], v17, 0x58uLL);
  v16[0] = v7;
  v16[1] = v9;
  sub_1001108E0();
  v10 = swift_allocObject();
  memcpy((v10 + 16), v2, 0x80uLL);
  sub_1002816A0(v2, v15);
  sub_10022C350(&qword_100CA5CD8, &unk_100A302D0);
  sub_10001E6B0();
  sub_100006F64(v11, &qword_100CA5CD8, &unk_100A302D0, v12);
  sub_100281D9C();
  View.onChange<A>(of:initial:_:)();

  (*(v4 + 8))(v6, v3);
  memcpy(v15, v16, 0x68uLL);
  return sub_10003FDF4(v15, &qword_100CA5CD8, &unk_100A302D0);
}

uint64_t sub_100281950()
{
  sub_100281394(&v2);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  sub_10022C350(&qword_100CA5CE8, &qword_100A302E0);
  State.wrappedValue.setter();
  static Animation.default.getter();
  Animation.delay(_:)();

  __chkstk_darwin(v0);
  withAnimation<A>(_:_:)();
}

void sub_100281A90(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CA5CE8, &qword_100A302E0);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v2 = 0.0;
  *a1 = v3;
  if (v3)
  {
    v2 = 1.0;
  }

  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v2;
}

uint64_t sub_100281B8C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_100060DE0(&v4, v2, &qword_100CA5CF0, &qword_100A302E8);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_10003FDF4(&v3, &qword_100CA5A80, &qword_100A2FF90);
}

uint64_t sub_100281CAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100281CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100281D9C()
{
  result = qword_100CA4BD0;
  if (!qword_100CA4BD0)
  {
    v3 = type metadata accessor for WeatherConditionBackgroundModel();
    result = swift_getWitnessTable(&protocol conformance descriptor for WeatherConditionBackgroundModel, v3, v0, v1);
    atomic_store(result, &qword_100CA4BD0);
  }

  return result;
}

uint64_t sub_100281E10@<X0>(_BYTE *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  if (*a1)
  {
    v22 = type metadata accessor for LocationViewMapPosition(0);

    return sub_10001B350(a2, 1, 1, v22);
  }

  else
  {
    v36 = v9;
    v37 = v6;
    v39 = a2;
    v24 = type metadata accessor for LocationViewMapPosition.LocationMapConfiguration(0);
    v38 = v10;
    v25 = v24;
    sub_1000161C0(&a1[*(v24 + 32)], *&a1[*(v24 + 32) + 24]);
    v26 = v4;
    v27 = *&a1[*(v25 + 24)];
    Location.identifier.getter();
    v28 = &a1[*(v25 + 28)];
    v29 = type metadata accessor for WeatherData(0);
    sub_1005249FC(v27, &v28[*(v29 + 24)], v21);
    (*(v12 + 8))(v15, v38);
    sub_100282180(v21, v18);
    if (sub_100024D10(v18, 1, v26) == 1)
    {
      sub_1002821F0(v18);
      v30 = v39;
      sub_10001B350(v39, 1, 1, v26);
      v31 = type metadata accessor for LocationViewMapPosition(0);
      v32 = v30;
    }

    else
    {
      v33 = v36;
      v34 = *(v37 + 32);
      v34(v36, v18, v26);
      v35 = v39;
      v34(v39, v33, v26);
      sub_10001B350(v35, 0, 1, v26);
      v31 = type metadata accessor for LocationViewMapPosition(0);
      v32 = v35;
    }

    return sub_10001B350(v32, 0, 1, v31);
  }
}

uint64_t sub_100282180(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002821F0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100282280(uint64_t a1)
{
  v1 = type metadata accessor for WeatherMapOverlayKind();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100282300(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v3 <= 0x3F)
    {
      result = sub_1002823B4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1002823B4()
{
  result = qword_100CA5E08;
  if (!qword_100CA5E08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA5E08);
  }

  return result;
}

uint64_t sub_100282410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10028244C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100282464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 49))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1002824B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

double sub_100282520(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 40) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10028256C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayKind();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  switch(sub_1004CA0C4(a1, a2))
  {
    case 1u:
      sub_100003B48();
      v26 = 29;
      goto LABEL_26;
    case 2u:
      sub_10001E6C8();
      v31 = 31;
      goto LABEL_49;
    case 3u:
      if (qword_100CA1E78 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D8F368;
      goto LABEL_22;
    case 4u:
      sub_100003B48();
      v27 = 37;
      goto LABEL_31;
    case 5u:
      sub_10001E6C8();
      v31 = 39;
      goto LABEL_49;
    case 6u:
      sub_100003B48();
      v27 = 41;
LABEL_31:
      v31 = v27;
      goto LABEL_49;
    case 7u:
      sub_10001E6C8();
      v28 = 35;
      goto LABEL_36;
    case 8u:
      sub_10001E6C8();
      v29 = 43;
      goto LABEL_39;
    case 9u:
      sub_10001E6C8();
      v31 = 45;
      goto LABEL_49;
    case 0xAu:
      sub_10001E6C8();
      v28 = 95;
LABEL_36:
      v31 = v28;
      goto LABEL_49;
    case 0xBu:
      sub_10001E6C8();
      v31 = 79;
      goto LABEL_49;
    case 0xCu:
      sub_10001E6C8();
      v29 = 81;
LABEL_39:
      v31 = v29;
      goto LABEL_49;
    case 0xDu:
      sub_10001E6C8();
      v31 = 85;
      goto LABEL_49;
    case 0xEu:
      sub_10001E6C8();
      v30 = 83;
      goto LABEL_48;
    case 0xFu:
      sub_10001E6C8();
      v31 = 47;
      goto LABEL_49;
    case 0x10u:
      sub_10001E6C8();
      v31 = 49;
      goto LABEL_49;
    case 0x11u:
      sub_10001E6C8();
      v31 = 51;
      goto LABEL_49;
    case 0x12u:
      sub_10001E6C8();
      v31 = 53;
      goto LABEL_49;
    case 0x13u:
      sub_10001E6C8();
      v31 = 55;
      goto LABEL_49;
    case 0x14u:
      v21 = sub_10000FA34();
      v22(v21);
      v20 = 20;
      goto LABEL_18;
    case 0x15u:
      v16 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
      v17 = type metadata accessor for WeatherMapPrecipitationOverlayKind();
      (*(*(v17 - 8) + 104))(v7, v16, v17);
      v18 = sub_10000FA34();
      v19(v18);
      v20 = 21;
      goto LABEL_18;
    case 0x16u:
    case 0x17u:
      v23 = sub_10000FA34();
      v24(v23);
      v20 = 22;
LABEL_18:
      v15 = sub_10099733C(v20, v7, 0);
      (*(v5 + 8))(v7, v4);
      goto LABEL_23;
    case 0x18u:
      sub_10001E6C8();
      v30 = 77;
LABEL_48:
      v31 = v30;
      goto LABEL_49;
    case 0x19u:
      if (qword_100CA1E80 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D8F378;
      goto LABEL_22;
    case 0x1Au:
      if (qword_100CA1E88 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D8F388;
LABEL_22:
      v15 = *v9;

      goto LABEL_23;
    case 0x1Bu:
      sub_100997704(v8);
      v15 = 27;
      goto LABEL_23;
    case 0x1Cu:
      sub_1009979E0(v8);
      v15 = 28;
      goto LABEL_23;
    case 0x1Du:
      if (qword_100CA2788 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000703C(v10, qword_100D90CF0);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v32 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_100078694(a1, a2, &v32);
        _os_log_impl(&_mh_execute_header, v11, v12, "Failed to find PerformanceTest with name: %s", v13, 0xCu);
        sub_100006F14(v14);
      }

      v15 = 0;
LABEL_23:
      result = v15;
      break;
    default:
      sub_100003B48();
      v26 = 27;
LABEL_26:
      v31 = v26;
LABEL_49:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_100282CCC()
{
  result = sub_100282CF8();
  byte_100D8F368 = 3;
  qword_100D8F370 = result;
  return result;
}

uint64_t sub_100282CF8()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v8[15];
  *v2 = 2;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v0 + 20)) = 0;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2D320;
  *(v4 + 56) = &type metadata for ChangeMacAppState;
  *(v4 + 64) = &off_100C78C70;
  *(v4 + 32) = 0;
  *(v4 + 96) = &type metadata for Delay;
  *(v4 + 104) = &off_100C500F8;
  *(v4 + 72) = 0x4008000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A30470;
  *(v5 + 56) = &type metadata for Mica;
  *(v5 + 64) = &off_100C63A98;
  *(v5 + 32) = 0;
  *(v5 + 96) = &type metadata for Delay;
  *(v5 + 104) = &off_100C500F8;
  *(v5 + 72) = 0x3FF0000000000000;
  *(v5 + 136) = &type metadata for UpdateWeather;
  *(v5 + 144) = &off_100C7B258;
  *(v5 + 112) = v3;
  *(v5 + 176) = &type metadata for Delay;
  *(v5 + 184) = &off_100C500F8;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 216) = v0;
  *(v5 + 224) = &off_100C5FB58;
  v6 = sub_100042FB0((v5 + 192));
  sub_100283528(v2, v6);
  *(v5 + 256) = &type metadata for Delay;
  *(v5 + 264) = &off_100C500F8;
  *(v5 + 232) = 0x3FF0000000000000;
  *(v5 + 296) = &type metadata for Sidebar;
  *(v5 + 304) = &off_100C700F0;
  *(v5 + 272) = 0;
  *(v5 + 336) = &type metadata for Delay;
  *(v5 + 344) = &off_100C500F8;
  *(v5 + 312) = 0x3FF0000000000000;
  *(v5 + 376) = &type metadata for Measure;
  *(v5 + 384) = &off_100C4E718;
  *(v5 + 352) = v4;
  *(v5 + 416) = &type metadata for Mica;
  *(v5 + 424) = &off_100C63A98;
  *(v5 + 392) = 1;
  sub_10028358C(v2);
  return v5;
}

uint64_t sub_100282F54()
{
  result = sub_100282F80();
  byte_100D8F378 = 25;
  qword_100D8F380 = result;
  return result;
}

uint64_t sub_100282F80()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v11[15];
  *v2 = 0;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v0 + 20)) = 0;
  if (qword_100CA2C30 != -1)
  {
    swift_once();
  }

  v4 = qword_100D91570;
  v5 = *&qword_100D91570 + 200.0;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  *(v6 + 56) = &type metadata for ResizeMacWindow;
  *(v6 + 64) = &off_100C4F848;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = 0x4084000000000000;
  *(v7 + 32) = v5;
  *(v7 + 40) = 0x4084000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A30470;
  *(v8 + 56) = &type metadata for Mica;
  *(v8 + 64) = &off_100C63A98;
  *(v8 + 32) = 0;
  *(v8 + 96) = &type metadata for Delay;
  *(v8 + 104) = &off_100C500F8;
  *(v8 + 72) = 0x3FF0000000000000;
  *(v8 + 136) = &type metadata for UpdateWeather;
  *(v8 + 144) = &off_100C7B258;
  *(v8 + 112) = v3;
  *(v8 + 176) = &type metadata for Delay;
  *(v8 + 184) = &off_100C500F8;
  *(v8 + 152) = 0x3FF0000000000000;
  *(v8 + 216) = v0;
  *(v8 + 224) = &off_100C5FB58;
  v9 = sub_100042FB0((v8 + 192));
  sub_100283528(v2, v9);
  *(v8 + 256) = &type metadata for Delay;
  *(v8 + 264) = &off_100C500F8;
  *(v8 + 232) = 0x3FF0000000000000;
  *(v8 + 296) = &type metadata for Sidebar;
  *(v8 + 304) = &off_100C700F0;
  *(v8 + 272) = 1;
  *(v8 + 336) = &type metadata for Delay;
  *(v8 + 344) = &off_100C500F8;
  *(v8 + 312) = 0x3FF0000000000000;
  *(v8 + 376) = &type metadata for Measure;
  *(v8 + 384) = &off_100C4E718;
  *(v8 + 352) = v6;
  *(v8 + 416) = &type metadata for Mica;
  *(v8 + 424) = &off_100C63A98;
  *(v8 + 392) = 1;
  sub_10028358C(v2);
  return v8;
}

uint64_t sub_100283240()
{
  result = sub_10028326C();
  byte_100D8F388 = 26;
  qword_100D8F390 = result;
  return result;
}

uint64_t sub_10028326C()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v10[15];
  *v2 = 0;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v0 + 20)) = 0;
  if (qword_100CA2C28 != -1)
  {
    swift_once();
  }

  v4 = qword_100D91568;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 56) = &type metadata for ResizeMacWindow;
  *(v5 + 64) = &off_100C4F848;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  v6[2] = v4;
  v6[3] = 0x4084000000000000;
  v6[4] = v4;
  v6[5] = 0x408A400000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A30470;
  *(v7 + 56) = &type metadata for Mica;
  *(v7 + 64) = &off_100C63A98;
  *(v7 + 32) = 0;
  *(v7 + 96) = &type metadata for Delay;
  *(v7 + 104) = &off_100C500F8;
  *(v7 + 72) = 0x3FF0000000000000;
  *(v7 + 136) = &type metadata for UpdateWeather;
  *(v7 + 144) = &off_100C7B258;
  *(v7 + 112) = v3;
  *(v7 + 176) = &type metadata for Delay;
  *(v7 + 184) = &off_100C500F8;
  *(v7 + 152) = 0x3FF0000000000000;
  *(v7 + 216) = v0;
  *(v7 + 224) = &off_100C5FB58;
  v8 = sub_100042FB0((v7 + 192));
  sub_100283528(v2, v8);
  *(v7 + 256) = &type metadata for Delay;
  *(v7 + 264) = &off_100C500F8;
  *(v7 + 232) = 0x3FF0000000000000;
  *(v7 + 296) = &type metadata for Sidebar;
  *(v7 + 304) = &off_100C700F0;
  *(v7 + 272) = 1;
  *(v7 + 336) = &type metadata for Delay;
  *(v7 + 344) = &off_100C500F8;
  *(v7 + 312) = 0x3FF0000000000000;
  *(v7 + 376) = &type metadata for Measure;
  *(v7 + 384) = &off_100C4E718;
  *(v7 + 352) = v5;
  *(v7 + 416) = &type metadata for Mica;
  *(v7 + 424) = &off_100C63A98;
  *(v7 + 392) = 1;
  sub_10028358C(v2);
  return v7;
}

uint64_t sub_100283528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Navigate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028358C(uint64_t a1)
{
  v2 = type metadata accessor for Navigate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100283648@<X0>(_BYTE *a1@<X8>)
{
  result = static VerticalSizingBehaviorKey.defaultValue.getter();
  *a1 = result & 1;
  return result;
}

void static MapTransitionNamespaceKey.defaultValue.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  static MapTransitionNamespaceKey.defaultValue = a1;
  byte_100CA6008 = a2 & 1;
}

uint64_t static WindowHorizontalSizeClassKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1EA8 != -1)
  {
    sub_100007F64(&qword_100CA1EA8);
  }

  v2 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  v3 = sub_10000703C(v2, static WindowHorizontalSizeClassKey.defaultValue);
  return sub_100060DE0(v3, a1, &qword_100CA6028, &qword_100A40610);
}

uint64_t sub_1002838A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100283B10(&qword_100CA6070, &qword_100CA6078, &unk_100A30870, &protocol witness table for String);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100283930()
{
  result = static Alignment.bottomLeading.getter();
  *&static TipAlignmentKey.defaultValue = result;
  *(&static TipAlignmentKey.defaultValue + 1) = v1;
  return result;
}

uint64_t static TipAlignmentKey.defaultValue.getter()
{
  if (qword_100CA1EB0 != -1)
  {
    sub_10000FA48(&qword_100CA1EB0);
  }

  return static TipAlignmentKey.defaultValue;
}

uint64_t sub_1002839A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100283B10(&qword_100CA6058, &qword_100CA6060, &unk_100A4C830, &protocol witness table for Int);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100283A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10013E1CC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100283B10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10 = a4;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100283B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100283D3C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_100283BE4()
{
  result = qword_100CA60D8;
  if (!qword_100CA60D8)
  {
    result = swift_getWitnessTable(byte_100A30B7C, &_s27__Key_isCompactLocationViewVN, v0, v1);
    atomic_store(result, &qword_100CA60D8);
  }

  return result;
}

uint64_t sub_100283C38(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003A24(a1, a2);
  v5 = sub_10022C350(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_100283D3C()
{
  result = qword_100CA6148;
  if (!qword_100CA6148)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA60E8, &unk_100A5A9F0);
    v4[0] = sub_1000F1F60(&qword_100CA6150, &type metadata accessor for ForegroundEffect, &protocol conformance descriptor for ForegroundEffect);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CA6148);
  }

  return result;
}

unint64_t sub_100283E18()
{
  result = qword_100CA6178;
  if (!qword_100CA6178)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchOverlayVisibilityKey, &type metadata for SearchOverlayVisibilityKey, v0, v1);
    atomic_store(result, &qword_100CA6178);
  }

  return result;
}

unint64_t sub_100283E6C()
{
  result = qword_100CA6180;
  if (!qword_100CA6180)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA6188, qword_100A53E20);
    v4[0] = sub_10013E1CC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CA6180);
  }

  return result;
}

uint64_t sub_100283F30@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = sub_10022C350(&qword_100CA6198, &qword_100A30F48);
  return sub_100283F74(a1 + *(v4 + 44));
}

uint64_t sub_100283F74@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_10022C350(&qword_100CA61A0, &qword_100A30F50);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v21 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = type metadata accessor for RoundedCornerStyle();
  v15 = *(*(v14 - 8) + 104);
  v15(v12, v13, v14);
  static Color.black.getter();
  v16 = Color.opacity(_:)();

  *&v12[*(v2 + 60)] = v16;
  *&v12[*(v2 + 64)] = 256;
  v15(v9, v13, v14);
  *&v9[*(v2 + 60)] = static Color.cyan.getter();
  *&v9[*(v2 + 64)] = 256;
  sub_100284198(v12, v6);
  v17 = v21;
  sub_100284198(v9, v21);
  v18 = v22;
  sub_100284198(v6, v22);
  v19 = sub_10022C350(&qword_100CA61A8, &qword_100A30F58);
  sub_100284198(v17, v18 + *(v19 + 48));
  sub_100284208(v9);
  sub_100284208(v12);
  sub_100284208(v17);
  return sub_100284208(v6);
}

uint64_t sub_100284198(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA61A0, &qword_100A30F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100284208(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA61A0, &qword_100A30F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100284280()
{
  result = qword_100CA61B0;
  if (!qword_100CA61B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6198, &qword_100A30F48);
    v4[0] = sub_100006F64(&qword_100CA61B8, &qword_100CA61C0, &qword_100A30F78, &protocol conformance descriptor for _LayoutRoot<A>);
    v4[1] = sub_100006F64(&qword_100CA61C8, &qword_100CA61D0, &qword_100A30F80, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v3, v4);
    atomic_store(result, &qword_100CA61B0);
  }

  return result;
}

double sub_100284364(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_100284384(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = type metadata accessor for LayoutSubview();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v21[-v17];
  LayoutSubviews.subscript.getter();
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  v21[24] = a2 & 1;
  v21[16] = a4 & 1;
  LayoutSubview.place(at:anchor:proposal:)();
  static UnitPoint.topLeading.getter();
  v21[8] = 0;
  v21[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  v19 = *(v13 + 8);
  v19(v15, v12);
  return (v19)(v18, v12);
}

void (*sub_1002845B4(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

unint64_t sub_10028462C()
{
  result = qword_100CA61D8;
  if (!qword_100CA61D8)
  {
    result = swift_getWitnessTable(asc_100A30F88, &type metadata for ComparisonBarViewLayout, v0, v1);
    atomic_store(result, &qword_100CA61D8);
  }

  return result;
}

unint64_t sub_100284708()
{
  result = qword_100CA6250;
  if (!qword_100CA6250)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA6250);
  }

  return result;
}

uint64_t sub_100284780@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v75 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  sub_1000037C4();
  v69 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v68 = v5;
  v77 = type metadata accessor for SearchResultsList(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  v8 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10022C350(&qword_100CA6288, &qword_100A310D8);
  sub_1000037C4();
  v70 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v76 = v12;
  v13 = sub_10022C350(&qword_100CA6290, &qword_100A310E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  v71 = sub_10022C350(&qword_100CA6298, &qword_100A310E8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v73 = v18;
  v19 = sub_10022C350(&qword_100CA62A0, &qword_100A310F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v74 = v21;
  v72 = type metadata accessor for RegularSearchResultsView(0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  v67 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v24 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v63 - v28;
  v30 = type metadata accessor for SearchResultsView(0);
  sub_10009D114();
  v31 = type metadata accessor for UserInterfaceSizeClass();
  v32 = sub_100024D10(v29, 1, v31);
  if (v32 == 1)
  {
    v85 = 0;
    sub_1000175A4(v32, &type metadata for EmptyView, v33, &protocol witness table for EmptyView);
    *v16 = v79;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA62A8, &qword_100A310F8);
    sub_100285180();
    sub_100285430();
  }

  else
  {
    v64 = v16;
    v65 = v13;
    v63 = v9;
    v66 = v19;
    sub_100095588();
    v34 = *(v31 - 8);
    v35 = (*(v34 + 88))(v26, v31);
    if (v35 == enum case for UserInterfaceSizeClass.compact(_:))
    {
      sub_100035B30(v2, v8 + *(v77 + 20));
      sub_10000FA68(*(v30 + 20));
      sub_1002873F4();
      *v8 = swift_getKeyPath();
      sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
      swift_storeEnumTagMultiPayload();
      Solarium.init()();
      v36 = v68;
      static ViewInputPredicate.! prefix(_:)();
      v67 = sub_10022C350(&qword_100CA62C0, &qword_100A31100);
      sub_1000054D8();
      v39 = sub_10028532C(v37, v38, "٠ ");
      v79 = &type metadata for Solarium;
      v80 = &protocol witness table for Solarium;
      v40 = sub_100014178();
      v62 = sub_100285374();
      v41 = v76;
      v42 = v75;
      View.staticIf<A, B>(_:then:)();
      (*(v69 + 8))(v36, v42);
      sub_10028744C(v8, type metadata accessor for SearchResultsList);
      v43 = v70;
      v44 = v63;
      (*(v70 + 16))(v73, v41, v63);
      swift_storeEnumTagMultiPayload();
      sub_100007F84();
      sub_10028532C(v45, v46, byte_100A311D8);
      v79 = v77;
      v80 = v42;
      v81 = v67;
      v82 = v39;
      v83 = v40;
      v84 = v62;
      sub_10001758C();
      swift_getOpaqueTypeConformance2();
      v47 = v74;
      _ConditionalContent<>.init(storage:)();
      sub_1001D6730();
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CA62A8, &qword_100A310F8);
      sub_100285180();
      sub_100285430();
      sub_100019218();
      _ConditionalContent<>.init(storage:)();
      sub_1001D6790(v47);
      (*(v43 + 8))(v76, v44);
      return sub_1000180EC(v29, &qword_100CA6028, &qword_100A40610);
    }

    v48 = v64;
    if (v35 == enum case for UserInterfaceSizeClass.regular(_:))
    {
      v49 = v67;
      sub_100035B30(v2, v67);
      sub_10000FA68(*(v30 + 20));
      sub_1002873F4();
      sub_1002873F4();
      swift_storeEnumTagMultiPayload();
      sub_100007F84();
      sub_10028532C(v50, v51, byte_100A311D8);
      v52 = sub_10022E824(&qword_100CA62C0, &qword_100A31100);
      sub_1000054D8();
      v55 = sub_10028532C(v53, v54, "٠ ");
      v79 = &type metadata for Solarium;
      v80 = &protocol witness table for Solarium;
      v56 = sub_100014178();
      v57 = sub_100285374();
      v79 = v77;
      v80 = v75;
      v81 = v52;
      v82 = v55;
      v83 = v56;
      v84 = v57;
      sub_10001758C();
      swift_getOpaqueTypeConformance2();
      v58 = v74;
      _ConditionalContent<>.init(storage:)();
      sub_1001D6730();
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CA62A8, &qword_100A310F8);
      sub_100285180();
      sub_100285430();
      sub_100019218();
      _ConditionalContent<>.init(storage:)();
      sub_1001D6790(v58);
      sub_10028744C(v49, type metadata accessor for RegularSearchResultsView);
      return sub_1000180EC(v29, &qword_100CA6028, &qword_100A40610);
    }

    v60 = (*(v34 + 8))(v26, v31);
    v85 = 1;
    sub_1000175A4(v60, &type metadata for EmptyView, v61, &protocol witness table for EmptyView);
    *v48 = v79;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA62A8, &qword_100A310F8);
    sub_100285180();
    sub_100285430();
    sub_100019218();
  }

  _ConditionalContent<>.init(storage:)();
  return sub_1000180EC(v29, &qword_100CA6028, &qword_100A40610);
}

uint64_t sub_100285094@<X0>(uint64_t a2@<X8>)
{
  v3 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1002873F4();
  result = sub_10022C350(&qword_100CA62C0, &qword_100A31100);
  v13 = a2 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

unint64_t sub_100285180()
{
  result = qword_100CA62B0;
  if (!qword_100CA62B0)
  {
    v5[16] = v0;
    v5[17] = v1;
    v3 = sub_10022E824(&qword_100CA62A0, &qword_100A310F0);
    v4 = sub_10028532C(&qword_100CA62B8, type metadata accessor for RegularSearchResultsView, byte_100A311D8);
    v5[2] = type metadata accessor for SearchResultsList(255);
    v5[3] = sub_10022E824(&unk_100CE0EB0, &qword_100A310D0);
    v5[4] = sub_10022E824(&qword_100CA62C0, &qword_100A31100);
    v5[5] = sub_10028532C(&qword_100CA62C8, type metadata accessor for SearchResultsList, "٠ ");
    v5[6] = swift_getOpaqueTypeConformance2();
    v5[7] = sub_100285374();
    v5[0] = v4;
    v5[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CA62B0);
  }

  return result;
}

uint64_t sub_10028532C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100285374()
{
  result = qword_100CA62D0;
  if (!qword_100CA62D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA62C0, &qword_100A31100);
    v4[0] = sub_10028532C(&qword_100CA62C8, type metadata accessor for SearchResultsList, "٠ ");
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA62D0);
  }

  return result;
}

unint64_t sub_100285430()
{
  result = qword_100CA62D8;
  if (!qword_100CA62D8)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CA62A8, &qword_100A310F8);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA62D8);
  }

  return result;
}

uint64_t sub_1002854AC@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CA6420, &qword_100A31228);
  return sub_1002854FC(v2, a2 + *(v4 + 44));
}

uint64_t sub_1002854FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v47 = a2;
  v45 = sub_10022C350(&qword_100CA6428, &unk_100A31230) - 8;
  __chkstk_darwin(v45);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = (&v37 - v5);
  v41 = sub_10022C350(&qword_100CA6430, &unk_100A81EF0) - 8;
  __chkstk_darwin(v41);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v37 - v8;
  v42 = a1 + *(type metadata accessor for RegularSearchResultsView(0) + 20);
  v9 = *(v42 + 40);
  __dst[0] = *(v42 + 32);
  __dst[1] = v9;
  sub_10002D5A4();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_10010CD64(v10, v12, v14 & 1);

  static Color.primary.getter();
  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  v24 = v23;
  v38 = v25;

  sub_10010CD64(v15, v17, v19 & 1);

  LOBYTE(v10) = static Edge.Set.leading.getter();
  LOBYTE(__dst[0]) = v24 & 1;
  LOBYTE(v54[0]) = 1;
  v26 = v39;
  Divider.init()();
  v27 = static Edge.Set.leading.getter();
  v28 = v26 + *(v41 + 44);
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  v29 = type metadata accessor for SearchResultsList(0);
  v30 = v43;
  sub_100035B30(v40, v43 + *(v29 + 20));
  sub_1002873F4();
  *v30 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  static Font.body.getter();
  static Font.Weight.bold.getter();
  v31 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v33 = (v30 + *(v45 + 44));
  *v33 = KeyPath;
  v33[1] = v31;
  v54[0] = v20;
  v54[1] = v22;
  LOBYTE(v54[2]) = v24 & 1;
  v54[3] = v38;
  LOBYTE(v54[4]) = v10;
  memset(&v54[5], 0, 32);
  LOBYTE(v54[9]) = 1;
  v52 = 0;
  v53 = 1;
  v54[10] = v54;
  v54[11] = &v52;
  v34 = v44;
  sub_100095588();
  v50 = 0;
  v51 = 1;
  v54[12] = v34;
  v54[13] = &v50;
  v48 = 0;
  v49 = 1;
  v54[14] = &v48;
  v35 = v46;
  sub_100095588();
  v54[15] = v35;
  sub_1003E80F0();
  sub_1000180EC(v30, &qword_100CA6428, &unk_100A31230);
  sub_1000180EC(v26, &qword_100CA6430, &unk_100A81EF0);
  sub_1000180EC(v35, &qword_100CA6428, &unk_100A31230);
  sub_1000180EC(v34, &qword_100CA6430, &unk_100A81EF0);
  memcpy(__dst, v54, 0x49uLL);
  return sub_1000180EC(__dst, &qword_100CA6438, &qword_100A31270);
}

double sub_100285968(double *a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  v9 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v9 - 8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v23[-v13];
  __chkstk_darwin(v15);
  v17 = &v23[-v16];
  if (a1[1])
  {
    sub_10009D114();
    v25 = v3;
    (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.compact(_:), v2);
    sub_10001B350(v14, 0, 1, v2);
    v18 = *(v6 + 48);
    sub_100095588();
    sub_100095588();
    if (sub_100024D10(v8, 1, v2) == 1)
    {
      sub_1000180EC(v14, &qword_100CA6028, &qword_100A40610);
      sub_1000180EC(v17, &qword_100CA6028, &qword_100A40610);
      if (sub_100024D10(&v8[v18], 1, v2) == 1)
      {
        sub_1000180EC(v8, &qword_100CA6028, &qword_100A40610);
        v19 = 20.0;
LABEL_12:
        swift_beginAccess();
        *a1 = v19;
        *(a1 + 8) = 0;
        return v19;
      }
    }

    else
    {
      sub_100095588();
      if (sub_100024D10(&v8[v18], 1, v2) != 1)
      {
        v20 = v25;
        (*(v25 + 32))(v5, &v8[v18], v2);
        sub_10028532C(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v21 = *(v20 + 8);
        v21(v5, v2);
        sub_1000180EC(v14, &qword_100CA6028, &qword_100A40610);
        sub_1000180EC(v17, &qword_100CA6028, &qword_100A40610);
        v21(v11, v2);
        sub_1000180EC(v8, &qword_100CA6028, &qword_100A40610);
        if (v24)
        {
          v19 = 20.0;
        }

        else
        {
          v19 = 16.0;
        }

        goto LABEL_12;
      }

      sub_1000180EC(v14, &qword_100CA6028, &qword_100A40610);
      sub_1000180EC(v17, &qword_100CA6028, &qword_100A40610);
      (*(v25 + 8))(v11, v2);
    }

    sub_1000180EC(v8, &qword_100CA64E8, &unk_100A46060);
    v19 = 16.0;
    goto LABEL_12;
  }

  return *a1;
}

uint64_t sub_100285DD0()
{
  v1 = sub_10022C350(&qword_100CA6440, &qword_100A31278);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v8 = v0;
  static Axis.Set.vertical.getter();
  sub_10022C350(&qword_100CA6448, &qword_100A31280);
  sub_100006F64(&qword_100CA6450, &qword_100CA6448, &qword_100A31280, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  Solarium.init()();
  sub_10022C350(&qword_100CA6458, &qword_100A31288);
  v5 = sub_100006F64(&qword_100CA6460, &qword_100CA6440, &qword_100A31278, &protocol conformance descriptor for ScrollView<A>);
  v9 = v1;
  v10 = v5;
  swift_getOpaqueTypeConformance2();
  View.staticIf<A, B>(_:then:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100285FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CA6468, &qword_100A31290);
  return sub_100286044(a1, a2 + *(v4 + 44));
}

uint64_t sub_100286044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_10022C350(&qword_100CA6470, &qword_100A31298);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v121 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v120 = v100 - v7;
  v8 = sub_10022C350(&qword_100CA6478, &unk_100A312A0);
  __chkstk_darwin(v8);
  v116 = v100 - v9;
  v111 = sub_10022C350(&qword_100CA6430, &unk_100A81EF0);
  __chkstk_darwin(v111);
  v106 = v100 - v10;
  v11 = sub_10022C350(&qword_100CA6480, &qword_100A9F970);
  __chkstk_darwin(v11 - 8);
  v115 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v114 = v100 - v14;
  v15 = type metadata accessor for SearchResultsList(0);
  v16 = v15 - 8;
  v126 = *(v15 - 8);
  __chkstk_darwin(v15);
  v127 = v17;
  v18 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10022C350(&qword_100CA6488, &qword_100A312B0);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = v100 - v21;
  v109 = type metadata accessor for AccessibilityTraits();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Font.TextStyle();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA6490, &qword_100A312B8);
  __chkstk_darwin(v27 - 8);
  v125 = v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v123 = v100 - v30;
  v31 = sub_10022C350(&qword_100CA6498, &qword_100A312C0);
  __chkstk_darwin(v31 - 8);
  v119 = v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v100 - v34;
  v36 = (a1 + *(v16 + 32));
  v37 = *v36;
  if (*(*v36 + 16))
  {
    v102 = v100 - v34;
    v103 = v8;
    v104 = v4;
    v105 = v3;
    v101 = v37;
    v38 = LocalizedStringKey.init(stringLiteral:)();
    v42 = Text.init(_:tableName:bundle:comment:)(v38, v40, v39 & 1, v41, 0, 0, 0, 0, 0, 256);
    v44 = v43;
    v46 = v45;
    (*(v24 + 104))(v26, enum case for Font.TextStyle.subheadline(_:), v23);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    v117 = v36;
    (*(v24 + 8))(v26, v23);
    Font.smallCaps()();
    v118 = v18;

    v47 = Text.font(_:)();
    v49 = v48;
    v51 = v50;

    sub_10010CD64(v42, v44, v46 & 1);

    v52 = [objc_opt_self() tertiaryLabelColor];
    *&__dst[0] = Color.init(_:)();
    v53 = Text.foregroundStyle<A>(_:)();
    v55 = v54;
    LOBYTE(v44) = v56;
    v58 = v57;
    sub_10010CD64(v47, v49, v51 & 1);

    v59 = static Edge.Set.horizontal.getter();
    __dst[0] = 0.0;
    LOBYTE(__dst[1]) = 1;
    sub_100285968(__dst);
    EdgeInsets.init(_all:)();
    v130 = v44 & 1;
    v129 = 0;
    *&__src[0] = v53;
    __src[1] = v55;
    LOBYTE(__src[2]) = v44 & 1;
    __src[3] = v58;
    LOBYTE(__src[4]) = v59;
    __src[5] = v60;
    __src[6] = v61;
    __src[7] = v62;
    __src[8] = v63;
    LOBYTE(__src[9]) = 0;
    v64 = v107;
    static AccessibilityTraits.isHeader.getter();
    sub_10022C350(&qword_100CA6438, &qword_100A31270);
    sub_100287740();
    View.accessibilityAddTraits(_:)();
    (*(v108 + 8))(v64, v109);
    memcpy(__dst, __src, 0x49uLL);
    sub_1000180EC(__dst, &qword_100CA6438, &qword_100A31270);
    __src[0] = v101;
    swift_getKeyPath();
    v65 = v118;
    sub_1002873F4();
    v66 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v67 = swift_allocObject();
    sub_1002877C4(v65, v67 + v66);

    sub_10022C350(&qword_100CA64A8, &unk_100A675E0);
    type metadata accessor for SuggestedSearchResultRowView(0);
    sub_100006F64(&qword_100CA64B0, &qword_100CA64A8, &unk_100A675E0, &protocol conformance descriptor for [A]);
    sub_10028532C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
    sub_10028532C(&qword_100CA64B8, type metadata accessor for SuggestedSearchResultRowView, byte_100A57A60);
    v68 = v124;
    ForEach<>.init(_:id:content:)();
    v69 = *(*(v117 + 1) + 16);
    v100[1] = a1;
    if (v69)
    {
      v70 = v106;
      Divider.init()();
      v71 = static Edge.Set.horizontal.getter();
      __src[0] = 0.0;
      LOBYTE(__src[1]) = 1;
      sub_100285968(__src);
      EdgeInsets.init(_all:)();
      v72 = v111;
      v73 = &v70[*(v111 + 36)];
      *v73 = v71;
      *(v73 + 1) = v74;
      *(v73 + 2) = v75;
      *(v73 + 3) = v76;
      *(v73 + 4) = v77;
      v73[40] = 0;
      v78 = v114;
      sub_100051BBC();
      v79 = 0;
    }

    else
    {
      v78 = v114;
      v72 = v111;
      v79 = 1;
    }

    sub_10001B350(v78, v79, 1, v72);
    sub_100095588();
    v80 = v112;
    v81 = *(v112 + 16);
    v82 = v110;
    v83 = v113;
    v81(v110, v68, v113);
    v84 = v115;
    sub_100095588();
    v85 = v116;
    sub_100095588();
    v86 = sub_10022C350(&qword_100CA64C0, &qword_100A31300);
    v81(&v85[*(v86 + 48)], v82, v83);
    sub_100095588();
    sub_1000180EC(v78, &qword_100CA6480, &qword_100A9F970);
    v87 = *(v80 + 8);
    v87(v124, v83);
    sub_1000180EC(v123, &qword_100CA6490, &qword_100A312B8);
    sub_1000180EC(v84, &qword_100CA6480, &qword_100A9F970);
    v87(v82, v83);
    sub_1000180EC(v125, &qword_100CA6490, &qword_100A312B8);
    v35 = v102;
    sub_100051BBC();
    sub_10001B350(v35, 0, 1, v103);
    v3 = v105;
    v4 = v104;
    v18 = v118;
    v36 = v117;
  }

  else
  {
    sub_10001B350(v100 - v34, 1, 1, v8);
  }

  __dst[0] = v36[1];
  swift_getKeyPath();
  sub_1002873F4();
  v88 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v89 = swift_allocObject();
  sub_1002877C4(v18, v89 + v88);

  sub_10022C350(&qword_100CA64C8, &qword_100A3FEF0);
  type metadata accessor for SearchResultRowView(0);
  sub_100006F64(&qword_100CA64D0, &qword_100CA64C8, &qword_100A3FEF0, &protocol conformance descriptor for [A]);
  sub_10028532C(&qword_100CA64D8, type metadata accessor for SearchResultRowView, byte_100A3D544);
  v90 = v120;
  ForEach<>.init(_:id:content:)();
  v91 = v119;
  sub_100095588();
  v92 = *(v4 + 16);
  v93 = v121;
  v92(v121, v90, v3);
  v94 = v35;
  v95 = v3;
  v96 = v122;
  sub_100095588();
  v97 = sub_10022C350(&qword_100CA64E0, &unk_100A31330);
  v92((v96 + *(v97 + 48)), v93, v95);
  v98 = *(v4 + 8);
  v98(v90, v95);
  sub_1000180EC(v94, &qword_100CA6498, &qword_100A312C0);
  v98(v93, v95);
  return sub_1000180EC(v91, &qword_100CA6498, &qword_100A312C0);
}

uint64_t sub_100286F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationOfInterest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SelectedSearchResult(0);
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchResultsList(0);
  sub_100035B30(a2 + *(v13 + 20), a3);
  v14 = type metadata accessor for SuggestedSearchResultRowView(0);
  (*(v7 + 16))(a3 + *(v14 + 20), a1, v6);
  type metadata accessor for SearchResultsViewModel(0);
  sub_1002873F4();
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    result = sub_10028744C(v12, type metadata accessor for SelectedSearchResult);
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  (*(v7 + 32))(v9, v12, v6);
  v16 = static LocationOfInterest.== infix(_:_:)();
  result = (*(v7 + 8))(v9, v6);
LABEL_6:
  *(a3 + *(v14 + 24)) = v16 & 1;
  return result;
}

void sub_10028715C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SelectedSearchResult(0);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SearchResultsList(0);
  sub_100035B30(a2 + *(v9 + 20), a3);
  v10 = type metadata accessor for SearchResultRowView(0);
  sub_1002873F4();
  v11 = a2 + *(v9 + 24);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  type metadata accessor for SearchResultsViewModel(0);
  sub_1002873F4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_10028744C(v8, type metadata accessor for SelectedSearchResult);
    }

    else
    {
    }

    v18 = 0;
  }

  else
  {
    v15 = *v8;
    v16 = v8[1];
    if (*(a1 + 40) == v15 && *(a1 + 48) == v16)
    {

      v18 = 1;
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v19 = (a3 + *(v10 + 24));
  *v19 = v13;
  v19[1] = v12;
  *(a3 + *(v10 + 28)) = v18 & 1;
}

uint64_t sub_100287324()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  sub_10022C350(&qword_100CA6440, &qword_100A31278);
  sub_100006F64(&qword_100CA6460, &qword_100CA6440, &qword_100A31278, &protocol conformance descriptor for ScrollView<A>);
  return View.scrollContentBackground(_:)();
}

uint64_t sub_1002873F4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10028744C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10028750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1002875EC(uint64_t a1)
{
  result = sub_100284708();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SearchResultsViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100287670()
{
  result = qword_100CA6410;
  if (!qword_100CA6410)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6418, &qword_100A31180);
    v4[0] = sub_100285180();
    v4[1] = sub_100285430();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6410);
  }

  return result;
}

unint64_t sub_100287740()
{
  result = qword_100CA64A0;
  if (!qword_100CA64A0)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CA6438, &qword_100A31270);
    v4[0] = &protocol witness table for Text;
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA64A0);
  }

  return result;
}

uint64_t sub_1002877C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100287858(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SearchResultsList(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1002878EC(uint64_t a1, void (*a2)(void))
{
  v2270 = a2;
  v1999 = type metadata accessor for NotificationsOptInInput(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v2000 = v4;
  sub_1000038CC();
  v2072 = type metadata accessor for Date();
  sub_1000037C4();
  v1998 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v2038 = v7;
  v8 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  v1985 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v1997 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v2035 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v1996 = v16;
  v17 = sub_1000038CC();
  v2098 = type metadata accessor for HomeAndWorkRefinementViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000038E4();
  v2070 = v19;
  sub_1000038CC();
  v2167 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v2166 = v20;
  __chkstk_darwin(v21);
  sub_100003848();
  v2037 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_10000E70C();
  v2127 = v24;
  v25 = sub_1000038CC();
  v26 = type metadata accessor for LocationFooterAction(v25);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  *(&v1995 + 1) = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v2036 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v2065 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v2125 = v34;
  v35 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  v2193 = &v1976 - v37;
  sub_1000038CC();
  v2229 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v2216 = v38;
  __chkstk_darwin(v39);
  v2170 = &v1976 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E1390();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v2074 = v42;
  sub_1000E1390();
  __chkstk_darwin(v43);
  sub_10000E70C();
  v2100 = v44;
  sub_1000E1390();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v2194 = v46;
  sub_1000E1390();
  __chkstk_darwin(v47);
  sub_10000E70C();
  v2130 = v48;
  v2168 = v49;
  __chkstk_darwin(v50);
  sub_10000E70C();
  v2217 = v51;
  v52 = sub_1000038CC();
  active = type metadata accessor for LocationViewerActiveLocationState(v52);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_100003848();
  *&v1995 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v1994 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_10000E70C();
  v2253 = v58;
  sub_1000038CC();
  v2230 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v2258 = v59;
  __chkstk_darwin(v60);
  sub_1000038E4();
  v2265 = v61;
  v62 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  v63 = sub_100003810(v62);
  __chkstk_darwin(v63);
  v2214 = &v1976 - v64;
  v65 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  v2215 = &v1976 - v67;
  v68 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  v69 = sub_100003810(v68);
  __chkstk_darwin(v69);
  sub_100003848();
  v2197 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v2213 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_10000E70C();
  v2181 = v74;
  v75 = sub_1000038CC();
  v2231 = type metadata accessor for LocationPreviewModalViewState(v75);
  sub_1000037E8();
  __chkstk_darwin(v76);
  sub_100003848();
  v2063 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v2062 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v2204 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_10000E70C();
  v2188 = v83;
  v84 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v85 = sub_100003810(v84);
  __chkstk_darwin(v85);
  sub_100003848();
  v2131 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v2259 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_10000E70C();
  v2228 = v90;
  sub_1000038CC();
  v2255 = type metadata accessor for Location();
  sub_1000037C4();
  v2247 = v91;
  v93 = *(v92 + 64);
  __chkstk_darwin(v94);
  v2033 = &v1976 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D3BB8();
  __chkstk_darwin(v95);
  sub_10000E70C();
  v2034 = v96;
  sub_1000D3BB8();
  __chkstk_darwin(v97);
  sub_10000E70C();
  v2120 = v98;
  sub_1000D3BB8();
  __chkstk_darwin(v99);
  sub_10000E70C();
  v2169 = v100;
  sub_1000D3BB8();
  __chkstk_darwin(v101);
  sub_10000E70C();
  v2073 = v102;
  sub_1000D3BB8();
  __chkstk_darwin(v103);
  sub_10000E70C();
  v2132 = v104;
  sub_1000D3BB8();
  __chkstk_darwin(v105);
  sub_10000E70C();
  v2227 = v106;
  sub_1000D3BB8();
  __chkstk_darwin(v107);
  sub_10000E70C();
  v2212 = v108;
  v109 = sub_1000038CC();
  v110 = type metadata accessor for LocationPreviewViewState(v109);
  v111 = sub_100003810(v110);
  __chkstk_darwin(v111);
  sub_100003848();
  v2235 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  sub_100003878();
  v1978 = v114;
  sub_10000386C();
  __chkstk_darwin(v115);
  sub_100003878();
  *&v1986 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v2233 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_10000E70C();
  v2234 = v120;
  v121 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  v122 = sub_100003810(v121);
  __chkstk_darwin(v122);
  sub_100003848();
  v2237 = v123;
  sub_10000386C();
  __chkstk_darwin(v124);
  sub_10000E70C();
  v2244 = v125;
  v126 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v127 = sub_100003810(v126);
  __chkstk_darwin(v127);
  sub_100003848();
  v2249 = v128;
  sub_10000386C();
  __chkstk_darwin(v129);
  sub_100003878();
  v1993 = v130;
  sub_10000386C();
  __chkstk_darwin(v131);
  sub_100003878();
  v2032 = v132;
  sub_10000386C();
  __chkstk_darwin(v133);
  sub_100003878();
  v2099 = v134;
  sub_10000386C();
  __chkstk_darwin(v135);
  sub_100003878();
  v2020 = v136;
  sub_10000386C();
  __chkstk_darwin(v137);
  sub_10000E70C();
  v2266 = v138;
  v139 = sub_1000038CC();
  v2242 = type metadata accessor for TimeState(v139);
  sub_1000037E8();
  __chkstk_darwin(v140);
  sub_100003848();
  v2129 = v141;
  sub_10000386C();
  __chkstk_darwin(v142);
  sub_100003878();
  v2071 = v143;
  sub_10000386C();
  __chkstk_darwin(v144);
  sub_100003878();
  v2203 = v145;
  sub_10000386C();
  __chkstk_darwin(v146);
  sub_100003878();
  v2187 = v147;
  sub_10000386C();
  __chkstk_darwin(v148);
  sub_10000E70C();
  v2150 = v149;
  v150 = sub_1000038CC();
  v2238 = type metadata accessor for NotificationsOptInState(v150);
  sub_1000037E8();
  __chkstk_darwin(v151);
  sub_100003848();
  v2248 = v152;
  sub_10000386C();
  __chkstk_darwin(v153);
  sub_100003878();
  v1992 = v154;
  sub_10000386C();
  __chkstk_darwin(v155);
  sub_100003878();
  v2128 = v156;
  sub_10000386C();
  __chkstk_darwin(v157);
  sub_100003878();
  v2069 = v158;
  sub_10000386C();
  __chkstk_darwin(v159);
  sub_100003878();
  v2202 = v160;
  sub_10000386C();
  __chkstk_darwin(v161);
  sub_100003878();
  v2186 = v162;
  sub_10000386C();
  __chkstk_darwin(v163);
  sub_10000E70C();
  v2149 = v164;
  v165 = sub_1000038CC();
  v2241 = type metadata accessor for NotificationsState(v165);
  sub_1000037E8();
  __chkstk_darwin(v166);
  sub_100003848();
  v2126 = v167;
  sub_10000386C();
  __chkstk_darwin(v168);
  sub_100003878();
  v2068 = v169;
  sub_10000386C();
  __chkstk_darwin(v170);
  sub_100003878();
  v2201 = v171;
  sub_10000386C();
  __chkstk_darwin(v172);
  sub_100003878();
  v2185 = v173;
  sub_10000386C();
  __chkstk_darwin(v174);
  sub_10000E70C();
  v2148 = v175;
  v176 = sub_1000038CC();
  v2240 = type metadata accessor for LocationsState(v176);
  sub_1000037E8();
  __chkstk_darwin(v177);
  sub_100003848();
  v2124 = v178;
  sub_10000386C();
  __chkstk_darwin(v179);
  sub_100003878();
  v2067 = v180;
  sub_10000386C();
  __chkstk_darwin(v181);
  sub_100003878();
  v2192 = v182;
  sub_10000386C();
  __chkstk_darwin(v183);
  sub_100003878();
  v2200 = v184;
  sub_10000386C();
  __chkstk_darwin(v185);
  sub_100003878();
  v2184 = v186;
  sub_10000386C();
  __chkstk_darwin(v187);
  sub_10000E70C();
  v2147 = v188;
  v189 = sub_1000038CC();
  v2239 = type metadata accessor for EnvironmentState(v189);
  sub_1000037E8();
  __chkstk_darwin(v190);
  sub_100003848();
  v2123 = v191;
  sub_10000386C();
  __chkstk_darwin(v192);
  sub_100003878();
  v2066 = v193;
  sub_10000386C();
  __chkstk_darwin(v194);
  sub_100003878();
  v2199 = v195;
  sub_10000386C();
  __chkstk_darwin(v196);
  sub_100003878();
  v2183 = v197;
  sub_10000386C();
  __chkstk_darwin(v198);
  sub_10000E70C();
  v2146 = v199;
  v200 = sub_1000038CC();
  v2236 = type metadata accessor for AppConfigurationState(v200);
  sub_1000037E8();
  __chkstk_darwin(v201);
  sub_100003848();
  v2122 = v202;
  sub_10000386C();
  __chkstk_darwin(v203);
  sub_100003878();
  v2064 = v204;
  sub_10000386C();
  __chkstk_darwin(v205);
  sub_100003878();
  v2198 = v206;
  sub_10000386C();
  __chkstk_darwin(v207);
  sub_100003878();
  v2182 = v208;
  sub_10000386C();
  __chkstk_darwin(v209);
  sub_10000E70C();
  v2145 = v210;
  v211 = sub_1000038CC();
  v2271 = type metadata accessor for ModalViewState(v211);
  sub_1000037E8();
  __chkstk_darwin(v212);
  sub_100003848();
  v2257 = v213;
  sub_10000386C();
  __chkstk_darwin(v214);
  sub_100003878();
  v2060 = v215;
  sub_10000386C();
  __chkstk_darwin(v216);
  sub_100003878();
  v2121 = v217;
  sub_10000386C();
  __chkstk_darwin(v218);
  sub_100003878();
  v2017 = v219;
  sub_10000386C();
  __chkstk_darwin(v220);
  sub_100003878();
  v2061 = v221;
  sub_10000386C();
  __chkstk_darwin(v222);
  sub_100003878();
  v2013 = v223;
  sub_10000386C();
  __chkstk_darwin(v224);
  sub_100003878();
  v2262 = v225;
  sub_10000386C();
  __chkstk_darwin(v226);
  sub_100003878();
  v2160 = v227;
  sub_10000386C();
  __chkstk_darwin(v228);
  sub_100003878();
  v2161 = v229;
  sub_10000386C();
  __chkstk_darwin(v230);
  sub_100003878();
  v2252 = v231;
  sub_10000386C();
  __chkstk_darwin(v232);
  sub_100003878();
  v2110 = v233;
  sub_10000386C();
  __chkstk_darwin(v234);
  sub_100003878();
  v2111 = v235;
  sub_10000386C();
  __chkstk_darwin(v236);
  sub_100003878();
  v2256 = v237;
  sub_10000386C();
  __chkstk_darwin(v238);
  sub_100003878();
  v2219 = v239;
  sub_10000386C();
  __chkstk_darwin(v240);
  sub_100003878();
  v2090 = v241;
  sub_10000386C();
  __chkstk_darwin(v242);
  sub_10000E70C();
  v2091 = v243;
  v244 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v245 = sub_100003810(v244);
  __chkstk_darwin(v245);
  sub_100003848();
  v2057 = v246;
  sub_10000386C();
  __chkstk_darwin(v247);
  sub_100003878();
  v2056 = v248;
  sub_10000386C();
  __chkstk_darwin(v249);
  sub_100003878();
  v2015 = v250;
  sub_10000386C();
  __chkstk_darwin(v251);
  sub_100003878();
  v2014 = v252;
  sub_10000386C();
  __chkstk_darwin(v253);
  sub_100003878();
  v2263 = v254;
  sub_10000386C();
  __chkstk_darwin(v255);
  sub_100003878();
  v2158 = v256;
  sub_10000386C();
  __chkstk_darwin(v257);
  sub_100003878();
  v2196 = v258;
  sub_10000386C();
  __chkstk_darwin(v259);
  sub_100003878();
  v2108 = v260;
  sub_10000386C();
  __chkstk_darwin(v261);
  sub_100003878();
  v2180 = v262;
  sub_10000386C();
  __chkstk_darwin(v263);
  sub_100003878();
  v2088 = v264;
  sub_10000386C();
  __chkstk_darwin(v265);
  sub_10000E70C();
  v2086 = v266;
  v267 = sub_1000038CC();
  v2268 = type metadata accessor for ViewState.SecondaryViewState(v267);
  sub_1000037E8();
  __chkstk_darwin(v268);
  sub_100003848();
  v2261 = v269;
  sub_10000386C();
  __chkstk_darwin(v270);
  sub_100003878();
  v2251 = v271;
  sub_10000386C();
  __chkstk_darwin(v272);
  sub_10000E70C();
  v2084 = v273;
  v274 = sub_1000038CC();
  v275 = type metadata accessor for WeatherMapTrackingState(v274);
  v276 = sub_100003810(v275);
  __chkstk_darwin(v276);
  sub_1000038E4();
  v2096 = v277;
  v278 = sub_1000038CC();
  v2175 = type metadata accessor for WeatherMapPresentationState(v278);
  sub_1000037E8();
  __chkstk_darwin(v279);
  sub_100003848();
  *(&v1986 + 1) = v280;
  sub_10000386C();
  __chkstk_darwin(v281);
  sub_100003878();
  v1976 = v282;
  sub_10000386C();
  __chkstk_darwin(v283);
  sub_100003878();
  v2083 = v284;
  sub_10000386C();
  __chkstk_darwin(v285);
  sub_10000E70C();
  v2097 = v286;
  v287 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v288 = sub_100003810(v287);
  __chkstk_darwin(v288);
  sub_100003848();
  v2093 = v289;
  sub_10000386C();
  __chkstk_darwin(v290);
  sub_100003878();
  v2082 = v291;
  sub_10000386C();
  __chkstk_darwin(v292);
  sub_10000E70C();
  v2141 = v293;
  v294 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v295 = sub_100003810(v294);
  __chkstk_darwin(v295);
  sub_100003848();
  v2094 = v296;
  sub_10000386C();
  __chkstk_darwin(v297);
  sub_100003878();
  v2080 = v298;
  sub_10000386C();
  __chkstk_darwin(v299);
  sub_10000E70C();
  v2139 = v300;
  v301 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v302 = sub_100003810(v301);
  __chkstk_darwin(v302);
  sub_100003848();
  v2095 = v303;
  sub_10000386C();
  __chkstk_darwin(v304);
  sub_100003878();
  v2079 = v305;
  sub_10000386C();
  __chkstk_darwin(v306);
  sub_100003878();
  v2142 = v307;
  sub_10000386C();
  __chkstk_darwin(v308);
  sub_10000E70C();
  v2138 = v309;
  v310 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v311 = sub_100003810(v310);
  __chkstk_darwin(v311);
  sub_100003848();
  v1984 = v312;
  sub_10000386C();
  __chkstk_darwin(v313);
  sub_100003878();
  v1991 = v314;
  sub_10000386C();
  __chkstk_darwin(v315);
  sub_100003878();
  v2019 = v316;
  sub_10000386C();
  __chkstk_darwin(v317);
  sub_100003878();
  v2076 = v318;
  sub_10000386C();
  __chkstk_darwin(v319);
  sub_10000E70C();
  v2172 = v320;
  v321 = sub_1000038CC();
  v322 = type metadata accessor for ViewState(v321);
  sub_1000037E8();
  __chkstk_darwin(v323);
  sub_100003848();
  v1983 = v324;
  sub_10000386C();
  __chkstk_darwin(v325);
  sub_100003878();
  v2031 = v326;
  sub_10000386C();
  __chkstk_darwin(v327);
  sub_100003878();
  v1988 = v328;
  sub_10000386C();
  __chkstk_darwin(v329);
  sub_100003878();
  v2018 = v330;
  sub_10000386C();
  __chkstk_darwin(v331);
  sub_100003878();
  v2260 = v332;
  sub_10000386C();
  __chkstk_darwin(v333);
  sub_100003878();
  v2119 = v334;
  sub_10000386C();
  __chkstk_darwin(v335);
  sub_100003878();
  v2059 = v336;
  sub_10000386C();
  __chkstk_darwin(v337);
  sub_100003878();
  v2250 = v338;
  sub_10000386C();
  __chkstk_darwin(v339);
  sub_100003878();
  v2195 = v340;
  sub_10000386C();
  __chkstk_darwin(v341);
  sub_100003878();
  v2179 = v342;
  sub_10000386C();
  __chkstk_darwin(v343);
  sub_100003878();
  v2144 = v344;
  sub_10000386C();
  __chkstk_darwin(v345);
  sub_10000E70C();
  v2173 = v346;
  v347 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v348 = sub_100003810(v347);
  __chkstk_darwin(v348);
  sub_100003848();
  v1982 = v349;
  sub_10000386C();
  __chkstk_darwin(v350);
  sub_100003878();
  v1990 = v351;
  sub_10000386C();
  __chkstk_darwin(v352);
  sub_100003878();
  v2058 = v353;
  sub_10000386C();
  __chkstk_darwin(v354);
  sub_100003878();
  v2118 = v355;
  sub_10000386C();
  __chkstk_darwin(v356);
  sub_100003878();
  v2016 = v357;
  sub_10000386C();
  __chkstk_darwin(v358);
  sub_100003878();
  v2055 = v359;
  sub_10000386C();
  __chkstk_darwin(v360);
  sub_100003878();
  v2151 = v361;
  sub_10000386C();
  __chkstk_darwin(v362);
  sub_100003878();
  v2159 = v363;
  sub_10000386C();
  __chkstk_darwin(v364);
  sub_100003878();
  v2226 = v365;
  sub_10000386C();
  __chkstk_darwin(v366);
  sub_100003878();
  v2109 = v367;
  sub_10000386C();
  __chkstk_darwin(v368);
  sub_100003878();
  v2211 = v369;
  sub_10000386C();
  __chkstk_darwin(v370);
  sub_100003878();
  v2089 = v371;
  sub_10000386C();
  __chkstk_darwin(v372);
  sub_10000E70C();
  v2087 = v373;
  v374 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v375 = sub_100003810(v374);
  __chkstk_darwin(v375);
  sub_100003848();
  v2006 = v376;
  sub_10000386C();
  __chkstk_darwin(v377);
  sub_100003878();
  v2030 = v378;
  sub_10000386C();
  __chkstk_darwin(v379);
  sub_100003878();
  v2054 = v380;
  sub_10000386C();
  __chkstk_darwin(v381);
  sub_100003878();
  v2117 = v382;
  sub_10000386C();
  __chkstk_darwin(v383);
  sub_100003878();
  v2012 = v384;
  sub_10000386C();
  __chkstk_darwin(v385);
  sub_100003878();
  v2053 = v386;
  sub_10000386C();
  __chkstk_darwin(v387);
  sub_100003878();
  v2163 = v388;
  sub_10000386C();
  __chkstk_darwin(v389);
  sub_100003878();
  v2157 = v390;
  sub_10000386C();
  __chkstk_darwin(v391);
  sub_100003878();
  v2225 = v392;
  sub_10000386C();
  __chkstk_darwin(v393);
  sub_100003878();
  v2107 = v394;
  sub_10000386C();
  __chkstk_darwin(v395);
  sub_100003878();
  v2210 = v396;
  sub_10000386C();
  __chkstk_darwin(v397);
  sub_100003878();
  v2085 = v398;
  sub_10000386C();
  __chkstk_darwin(v399);
  sub_10000E70C();
  v2143 = v400;
  v401 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v402 = sub_100003810(v401);
  __chkstk_darwin(v402);
  sub_100003848();
  v1981 = v403;
  sub_10000386C();
  __chkstk_darwin(v404);
  sub_100003878();
  v1989 = v405;
  sub_10000386C();
  __chkstk_darwin(v406);
  sub_100003878();
  v2029 = v407;
  sub_10000386C();
  __chkstk_darwin(v408);
  sub_100003878();
  v2052 = v409;
  sub_10000386C();
  __chkstk_darwin(v410);
  sub_100003878();
  v2116 = v411;
  sub_10000386C();
  __chkstk_darwin(v412);
  sub_100003878();
  v2011 = v413;
  sub_10000386C();
  __chkstk_darwin(v414);
  sub_100003878();
  v2051 = v415;
  sub_10000386C();
  __chkstk_darwin(v416);
  sub_100003878();
  v2162 = v417;
  sub_10000386C();
  __chkstk_darwin(v418);
  sub_100003878();
  v2156 = v419;
  sub_10000386C();
  __chkstk_darwin(v420);
  sub_100003878();
  v2224 = v421;
  sub_10000386C();
  __chkstk_darwin(v422);
  sub_100003878();
  v2106 = v423;
  sub_10000386C();
  __chkstk_darwin(v424);
  sub_100003878();
  v2209 = v425;
  sub_10000386C();
  __chkstk_darwin(v426);
  sub_100003878();
  v2081 = v427;
  sub_10000386C();
  __chkstk_darwin(v428);
  sub_10000E70C();
  v2140 = v429;
  v430 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v431 = sub_100003810(v430);
  __chkstk_darwin(v431);
  sub_100003848();
  v2005 = v432;
  sub_10000386C();
  __chkstk_darwin(v433);
  sub_100003878();
  v2027 = v434;
  sub_10000386C();
  __chkstk_darwin(v435);
  sub_100003878();
  v2028 = v436;
  sub_10000386C();
  __chkstk_darwin(v437);
  sub_100003878();
  v2050 = v438;
  sub_10000386C();
  __chkstk_darwin(v439);
  sub_100003878();
  v2115 = v440;
  sub_10000386C();
  __chkstk_darwin(v441);
  sub_100003878();
  v2010 = v442;
  sub_10000386C();
  __chkstk_darwin(v443);
  sub_100003878();
  v2049 = v444;
  sub_10000386C();
  __chkstk_darwin(v445);
  sub_100003878();
  v2174 = v446;
  sub_10000386C();
  __chkstk_darwin(v447);
  sub_100003878();
  v2155 = v448;
  sub_10000386C();
  __chkstk_darwin(v449);
  sub_100003878();
  v2223 = v450;
  sub_10000386C();
  __chkstk_darwin(v451);
  sub_100003878();
  v2105 = v452;
  sub_10000386C();
  __chkstk_darwin(v453);
  sub_100003878();
  v2208 = v454;
  sub_10000386C();
  __chkstk_darwin(v455);
  sub_100003878();
  v2078 = v456;
  sub_10000386C();
  __chkstk_darwin(v457);
  sub_10000E70C();
  v2137 = v458;
  v459 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v460 = sub_100003810(v459);
  __chkstk_darwin(v460);
  sub_100003848();
  v2004 = v461;
  sub_10000386C();
  __chkstk_darwin(v462);
  sub_100003878();
  v2025 = v463;
  sub_10000386C();
  __chkstk_darwin(v464);
  sub_100003878();
  v2026 = v465;
  sub_10000386C();
  __chkstk_darwin(v466);
  sub_100003878();
  v2048 = v467;
  sub_10000386C();
  __chkstk_darwin(v468);
  sub_100003878();
  v2114 = v469;
  sub_10000386C();
  __chkstk_darwin(v470);
  sub_100003878();
  v2009 = v471;
  sub_10000386C();
  __chkstk_darwin(v472);
  sub_100003878();
  v2047 = v473;
  sub_10000386C();
  __chkstk_darwin(v474);
  sub_100003878();
  v2177 = v475;
  sub_10000386C();
  __chkstk_darwin(v476);
  sub_100003878();
  v2154 = v477;
  sub_10000386C();
  __chkstk_darwin(v478);
  sub_100003878();
  v2222 = v479;
  sub_10000386C();
  __chkstk_darwin(v480);
  sub_100003878();
  v2104 = v481;
  sub_10000386C();
  __chkstk_darwin(v482);
  sub_100003878();
  v2207 = v483;
  sub_10000386C();
  __chkstk_darwin(v484);
  sub_100003878();
  v2077 = v485;
  sub_10000386C();
  __chkstk_darwin(v486);
  sub_10000E70C();
  v2136 = v487;
  v488 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v489 = sub_100003810(v488);
  __chkstk_darwin(v489);
  sub_100003848();
  v2003 = v490;
  sub_10000386C();
  __chkstk_darwin(v491);
  sub_100003878();
  v2023 = v492;
  sub_10000386C();
  __chkstk_darwin(v493);
  sub_100003878();
  v2024 = v494;
  sub_10000386C();
  __chkstk_darwin(v495);
  sub_100003878();
  v2046 = v496;
  sub_10000386C();
  __chkstk_darwin(v497);
  sub_100003878();
  v2113 = v498;
  sub_10000386C();
  __chkstk_darwin(v499);
  sub_100003878();
  v2008 = v500;
  sub_10000386C();
  __chkstk_darwin(v501);
  sub_100003878();
  v2045 = v502;
  sub_10000386C();
  __chkstk_darwin(v503);
  sub_100003878();
  v2190 = v504;
  sub_10000386C();
  __chkstk_darwin(v505);
  sub_100003878();
  v2153 = v506;
  sub_10000386C();
  __chkstk_darwin(v507);
  sub_100003878();
  v2221 = v508;
  sub_10000386C();
  __chkstk_darwin(v509);
  sub_100003878();
  v2103 = v510;
  sub_10000386C();
  __chkstk_darwin(v511);
  sub_100003878();
  v2206 = v512;
  sub_10000386C();
  __chkstk_darwin(v513);
  sub_100003878();
  v2101 = v514;
  sub_10000386C();
  __chkstk_darwin(v515);
  sub_10000E70C();
  v2135 = v516;
  v517 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v518 = sub_100003810(v517);
  __chkstk_darwin(v518);
  sub_100003848();
  v2002 = v519;
  sub_10000386C();
  __chkstk_darwin(v520);
  sub_100003878();
  v2021 = v521;
  sub_10000386C();
  __chkstk_darwin(v522);
  sub_100003878();
  v2022 = v523;
  sub_10000386C();
  __chkstk_darwin(v524);
  sub_100003878();
  v2044 = v525;
  sub_10000386C();
  __chkstk_darwin(v526);
  sub_100003878();
  v2112 = v527;
  sub_10000386C();
  __chkstk_darwin(v528);
  sub_100003878();
  v2007 = v529;
  sub_10000386C();
  __chkstk_darwin(v530);
  sub_100003878();
  v2043 = v531;
  sub_10000386C();
  __chkstk_darwin(v532);
  sub_100003878();
  v2191 = v533;
  sub_10000386C();
  __chkstk_darwin(v534);
  sub_100003878();
  v2152 = v535;
  sub_10000386C();
  __chkstk_darwin(v536);
  sub_100003878();
  v2220 = v537;
  sub_10000386C();
  __chkstk_darwin(v538);
  sub_100003878();
  v2102 = v539;
  sub_10000386C();
  __chkstk_darwin(v540);
  sub_100003878();
  v2205 = v541;
  sub_10000386C();
  __chkstk_darwin(v542);
  sub_100003878();
  v2075 = v543;
  sub_10000386C();
  __chkstk_darwin(v544);
  sub_10000E70C();
  v2134 = v545;
  sub_1000038CC();
  v2165 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v2164 = v546;
  __chkstk_darwin(v547);
  sub_100003848();
  v1977 = v548;
  sub_10000386C();
  __chkstk_darwin(v549);
  sub_100003878();
  v2246 = v550;
  sub_10000386C();
  __chkstk_darwin(v551);
  sub_10000E70C();
  v2171 = v552;
  v553 = sub_1000038CC();
  v2269 = type metadata accessor for LocationViewAction(v553);
  sub_1000037E8();
  __chkstk_darwin(v554);
  sub_100003848();
  v2178 = v555;
  sub_10000386C();
  __chkstk_darwin(v556);
  sub_100003878();
  v2218 = v557;
  sub_10000386C();
  __chkstk_darwin(v558);
  sub_100003878();
  v2176 = v559;
  sub_10000386C();
  __chkstk_darwin(v560);
  sub_100003878();
  v2245 = v561;
  sub_10000386C();
  __chkstk_darwin(v562);
  v564 = &v1976 - v563;
  __chkstk_darwin(v565);
  v567 = &v1976 - v566;
  v2189 = type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v568);
  sub_100003848();
  v1979 = v569;
  sub_10000386C();
  __chkstk_darwin(v570);
  sub_100003878();
  v1980 = v571;
  sub_10000386C();
  __chkstk_darwin(v572);
  sub_100003878();
  v1987 = v573;
  sub_10000386C();
  __chkstk_darwin(v574);
  sub_100003878();
  v2039 = v575;
  sub_10000386C();
  __chkstk_darwin(v576);
  sub_100003878();
  v2041 = v577;
  sub_10000386C();
  __chkstk_darwin(v578);
  sub_100003878();
  v2042 = v579;
  sub_10000386C();
  __chkstk_darwin(v580);
  sub_100003878();
  v2001 = v581;
  sub_10000386C();
  __chkstk_darwin(v582);
  sub_100003878();
  v2092 = v583;
  sub_10000386C();
  __chkstk_darwin(v584);
  sub_100003878();
  v2264 = v585;
  sub_10000386C();
  __chkstk_darwin(v586);
  v588 = &v1976 - v587;
  __chkstk_darwin(v589);
  v591 = &v1976 - v590;
  v2243 = type metadata accessor for DisplayMetrics(0);
  sub_1000037E8();
  __chkstk_darwin(v592);
  sub_100003848();
  v2133 = v593;
  sub_10000386C();
  __chkstk_darwin(v594);
  sub_100003878();
  v2254 = v595;
  sub_10000386C();
  __chkstk_darwin(v596);
  v598 = &v1976 - v597;
  v2273 = a1;
  v2272 = v322;
  sub_10004E390();
  v2267 = v599;
  sub_1000A3C70();
  if (qword_100CA24D0 != -1)
  {
    swift_once();
  }

  if (byte_100D90788 != 1 || *(v598 + 1) == 1 || (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0)
  {
    sub_1000227C4();
    sub_100154038(v598, v600);
    v601 = v2266;
    v602 = v2265;
    goto LABEL_7;
  }

  if (byte_100D90788 == 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v598) && v598[17] == 1)
  {
    sub_1000227C4();
    sub_100154038(v598, v628);
    v601 = v2266;
    v602 = v2265;
  }

  else
  {
    v634 = sub_1004B5750();
    sub_1000227C4();
    sub_100154038(v598, v635);
    v601 = v2266;
    v602 = v2265;
    if ((v634 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_10007465C();
  sub_1000A3C70();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v636 = *(sub_10022C350(&qword_100CA6658, &unk_100A31480) + 64);
    sub_100049614();
    sub_1000D37D4();
    sub_1000180EC(&v567[v636], &unk_100CB2CF0, &unk_100A2D7F0);
    sub_100011394();
    sub_1000A3C70();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v2164 + 32))(v2171, v588, v2165);
      sub_100003934();
      sub_10001B350(v637, v638, v639, v2236);
      sub_100003934();
      sub_10001B350(v640, v641, v642, v2239);
      sub_100003934();
      sub_10001B350(v643, v644, v645, v2240);
      sub_100003934();
      sub_10001B350(v646, v647, v648, v2241);
      sub_100003934();
      sub_10001B350(v649, v650, v651, v2238);
      sub_100003934();
      sub_10001B350(v652, v653, v654, v2242);
      sub_10000FA84();
      v655 = v2173;
      sub_1000A3C70();
      sub_100003934();
      v656 = v2268;
      v660 = sub_1000D3CF4(v657, v658, v659, v2268);
      type metadata accessor for SearchViewState(v660);
      sub_100003934();
      v2270 = v661;
      sub_10001B350(v662, v663, v664, v661);
      sub_100003934();
      sub_10001B350(v665, v666, v667, v2243);
      sub_1000182A0();
      v668 = v2097;
      sub_1000A3C70();
      sub_10004E390();
      v669 = v2254;
      sub_1000A3C70();
      sub_10022C350(&qword_100CA6660, &unk_100A41280);
      v670 = v2096;
      v671 = sub_1000175DC();
      sub_10001B350(v671, v672, 3, v673);
      sub_100999C34(v669, v2171, v670, v2141);
      sub_1000866EC();
      sub_100154038(v670, v674);
      sub_1000227C4();
      sub_100154038(v669, v675);
      sub_100024040();
      v676 = v668;
      v677 = v656;
      sub_100154038(v676, v678);
      v679 = sub_100007FB4();
      sub_10001B350(v679, v680, v681, v2175);
      v682 = *v655;
      v683 = v2076;
      sub_100095588();
      v684 = sub_1000162A4();
      sub_1000038B4(v684, v685, v677);
      if (v632)
      {
        sub_1000A7B5C();
        sub_1000A3C70();
        v686 = sub_1000162A4();
        v688 = sub_100024D10(v686, v687, v677);

        if (v688 != 1)
        {
          sub_1000180EC(v683, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_1000519BC();
        sub_1000D37D4();
      }

      v1097 = v2272;
      v1098 = *(v655 + SLODWORD(v2272[3].isa));
      v1099 = [objc_opt_self() currentDevice];
      v1100 = [v1099 userInterfaceIdiom];

      v1101 = v2270;
      if (v1100 && *(v655 + SHIDWORD(v1097[4].isa) + 8) == 2)
      {
        v1102 = 1;
      }

      else
      {
        v1102 = *(v655 + SHIDWORD(v1097[3].isa));
      }

      sub_1000180EC(v2172, &qword_100CA6608, &unk_100A31430);
      (*(v2164 + 8))(v2171, v2165);
      sub_10001E6E0();
      sub_100154038(v591, v1103);
      v1104 = v2079;
      sub_100051BBC();
      v1105 = sub_1000175DC();
      sub_1000038B4(v1105, v1106, v1101);
      if (v632)
      {
        v1112 = v2272;
        sub_100095588();
        v1107 = sub_1000175DC();
        sub_1000038B4(v1107, v1108, v1101);
        v1113 = v2082;
        v1114 = v2080;
        if (!v632)
        {
          sub_1000180EC(v1104, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_1000D37D4();
        sub_10000E7B0();
        sub_10001B350(v1109, v1110, v1111, v1101);
        v1112 = v2272;
        v1113 = v2082;
        v1114 = v2080;
      }

      sub_100051BBC();
      v1115 = sub_100007FC4();
      v1116 = v2243;
      sub_1000038B4(v1115, v1117, v2243);
      if (v632)
      {
        sub_10004E390();
        sub_1000A3C70();
        v1118 = sub_100007FC4();
        sub_1000038B4(v1118, v1119, v1116);
        v1120 = v2087;
        if (!v632)
        {
          sub_1000180EC(v1114, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_1000C8E00();
        sub_1000D37D4();
        v1120 = v2087;
      }

      sub_100051BBC();
      sub_100005404(v1113);
      if (v632)
      {
        sub_1000182A0();
        sub_1000A3C70();
        sub_100005404(v1113);
        if (!v632)
        {
          sub_1000180EC(v1113, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100020134();
        sub_1000D37D4();
      }

      v1121 = *(v2173 + v1112[11]);
      sub_1000054F0();
      sub_100154038(v1122, v1123);
      *v1120 = v682;
      sub_1000519BC();
      sub_1000D37D4();
      *(v1120 + v1112[6]) = v1098;
      *(v1120 + v1112[7]) = v1102;
      sub_100051BBC();
      sub_1000C8E00();
      sub_1000D37D4();
      sub_100020134();
      sub_1000D37D4();
      *(v1120 + v1112[11]) = v1121;
      sub_10000E7B0();
      sub_10001B350(v1124, v1125, v1126, v1112);
      v1127 = sub_100071C3C();
      sub_10001B350(v1127, v1128, v1129, v2271);
      sub_1000141A4();
      sub_1000C8930(v1130);
      v1131 = v2090;
      sub_1000A3C70();
      v1132 = v2088;
      sub_100051BBC();
      sub_100003A40(v1132);
      if (v632)
      {
        sub_1000180EC(v1132, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100003B54();
        sub_100154038(v1131, v1133);
        sub_10001BBB8();
        sub_1000D37D4();
      }

      v1134 = v2236;
      v1135 = v2081;
      v1136 = v2078;
      v1137 = v2077;
      sub_10001BBB8();
      sub_1000D37D4();
      v2272 = *(v2273 + 16);
      LODWORD(v2271) = *(v2273 + 24);
      v1138 = v2075;
      sub_100051BBC();
      sub_100003A40(v1138);
      if (v632)
      {
        sub_10003145C();
        sub_1000C8930(v1139);
        sub_1000A3C70();
        v1140 = sub_1000131C4();
        v1142 = sub_100024D10(v1140, v1141, v1134);

        if (v1142 != 1)
        {
          sub_1000180EC(v1138, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100051D04();
        sub_1000D37D4();
      }

      sub_100051BBC();
      v1143 = sub_1000131C4();
      sub_1000113D0(v1143, v1144);
      if (v632)
      {
        sub_1000887FC(v2273 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100037964();
        v1145 = v2101;
        sub_1000A3C70();
        sub_100003A40(v1145);
        v1146 = v2085;
        if (!v632)
        {
          sub_1000180EC(v1145, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10000E798();
        sub_1000D37D4();
        v1146 = v2085;
      }

      sub_100051BBC();
      sub_10001627C(v1137, 1);
      if (v632)
      {
        sub_100016724();
        sub_1000C8930(v1147);
        sub_1000A3C70();
        sub_100005404(v1137);
        v1148 = v2089;
        if (!v632)
        {
          sub_1000180EC(v1137, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10002C530();
        sub_1000D37D4();
        v1148 = v2089;
      }

      sub_100051BBC();
      v1149 = sub_100007FC4();
      v1150 = v2241;
      sub_1000038B4(v1149, v1151, v2241);
      if (v632)
      {
        sub_1000205A4();
        sub_1000C8930(v1152);
        sub_1000A3C70();
        v1153 = sub_100007FC4();
        sub_1000038B4(v1153, v1154, v1150);
        if (!v632)
        {
          sub_1000180EC(v1136, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10000C7FC();
        sub_1000D37D4();
      }

      sub_100051BBC();
      v1155 = sub_1000162B0();
      v1156 = v2238;
      sub_1000038B4(v1155, v1157, v2238);
      if (v632)
      {
        sub_10001922C();
        sub_1000C8930(v1158);
        sub_1000A3C70();
        v1159 = sub_1000162B0();
        sub_1000038B4(v1159, v1160, v1156);
        if (!v632)
        {
          sub_1000180EC(v1135, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000244D8();
        sub_1000D37D4();
      }

      sub_100051BBC();
      v1161 = sub_100016298();
      v1162 = v2242;
      sub_1000038B4(v1161, v1163, v2242);
      if (v632)
      {
        sub_10003C26C();
        sub_1000C8930(v1164);
        sub_1000A3C70();
        v1165 = sub_100016298();
        sub_1000038B4(v1165, v1166, v1162);
        if (!v632)
        {
          sub_1000180EC(v1146, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000175C4();
        sub_1000D37D4();
      }

      sub_100051BBC();
      v1167 = sub_1000131C4();
      sub_1000038B4(v1167, v1168, v1112);
      if (v632)
      {
        sub_10000FA84();
        sub_1000A3C70();
        v1169 = sub_1000131C4();
        sub_1000038B4(v1169, v1170, v1112);
        if (!v632)
        {
          sub_1000180EC(v1148, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000693F0();
        sub_100021CEC();
        sub_1000D37D4();
      }

      sub_10001BBB8();
      sub_10019236C();
      sub_1000C8308();
      sub_1000E1540();
      v1171 = sub_100040C78();
      sub_100003B6C(v1171);
      sub_1000113AC();
      v1976 = v2144;
      v1172 = v2272;
      v1173 = v2271;
      v1174 = v2145;
      v1175 = v2146;
      v1176 = v2147;
      v1177 = v2148;
      v1178 = v2149;
      v1179 = v2150;
LABEL_275:
      sub_10003E038(v1172, v1173, v1174, v1175, v1176, v1177, v1178, v1179, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986, *(&v1986 + 1), v1987, v1988, v1989, v1990, v1991, v1992, v1993, v1994, v1995, v1996, v1997, v1998, v1999, v2000, v2001);
      sub_1000A4020(v1307);

      return v2273;
    }

    sub_100154038(v591, type metadata accessor for LocationComponentAction);
    v796 = v588;
    v795 = type metadata accessor for LocationComponentAction;
  }

  else
  {
    sub_100037088();
    v796 = v567;
  }

  sub_100154038(v796, v795);
LABEL_7:
  sub_10007465C();
  sub_1000A3C70();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100037088();
    sub_100154038(v564, v609);
LABEL_50:
    v708 = v2263;
    v709 = v2268;
    v710 = v2262;
    goto LABEL_51;
  }

  v603 = &v564[*(sub_10022C350(&qword_100CA6658, &unk_100A31480) + 48)];
  v604 = *(v603 + 1);
  v2276[0] = *v603;
  v2276[1] = v604;
  v2277 = v603[32];
  sub_100049614();
  sub_1000D37D4();
  sub_100051BBC();
  sub_1000141A4();
  v605 = v2256;
  sub_1000A3C70();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v606 = v2244;
    sub_100051BBC();
    v607 = v2237;
    sub_100095588();
    v608 = type metadata accessor for ModalViewState.MapViewModal(0);
    sub_100005404(v607);
    if (v632)
    {
      sub_1000180EC(v606, &qword_100CA65E0, &unk_100A31400);
      sub_1000180EC(v607, &qword_100CA65E0, &unk_100A31400);
    }

    else
    {
      sub_100030330();
      v629 = v2234;
      sub_1000D37D4();
      v630 = v2228;
      sub_1006E6234(v2228);
      v631 = v2255;
      sub_1000038B4(v630, 1, v2255);
      if (!v632)
      {
        v737 = v2247;
        v738 = v630;
        v739 = v2212;
        (*(v2247 + 32))(v2212, v738, v631);
        v718 = v2181;
        v740 = v2264;
        sub_100290980(v739, v601, v2276, v2181);
        v741 = sub_1000175DC();
        v742 = v2231;
        sub_1000113D0(v741, v743);
        if (!v744)
        {
          sub_1000870DC();
          sub_1000D37D4();
          sub_100003934();
          sub_10001B350(v829, v830, v831, v2236);
          sub_100003934();
          sub_10001B350(v832, v833, v834, v2239);
          sub_100003934();
          sub_10001B350(v835, v836, v837, v2240);
          sub_100003934();
          sub_10001B350(v838, v839, v840, v2241);
          sub_100003934();
          sub_10001B350(v841, v842, v843, v2238);
          sub_100003934();
          sub_10001B350(v844, v845, v846, v2242);
          sub_100003934();
          v847 = v2272;
          v851 = sub_1000D3CF4(v848, v849, v850, v2272);
          type metadata accessor for PreviewLocation(v851);
          v852 = v2215;
          v853 = sub_100071C3C();
          sub_10001B350(v853, v854, v855, v856);
          sub_10002FD78();
          v857 = v2213;
          sub_1000A3C70();
          v858 = sub_100007FB4();
          v861 = sub_1000D3CF4(v858, v859, v860, v742);
          type metadata accessor for SelectedSearchResult(v861);
          v862 = v2214;
          v863 = sub_100071458();
          sub_10001B350(v863, v864, v865, v866);
          v867 = sub_1000E137C();
          sub_10043DB64(v867, v868, v869, v870);
          sub_1000180EC(v862, &qword_100CA65C0, &unk_100A313E0);
          sub_1000180EC(v857, &qword_100CA65D0, &unk_100A313F0);
          sub_1000180EC(v852, &qword_100CA65C8, &unk_100A31670);
          sub_10000E7B0();
          sub_10001B350(v871, v872, v873, v608);
          v874 = v2271;
          swift_storeEnumTagMultiPayload();
          sub_10000E7B0();
          sub_10001B350(v875, v876, v877, v874);
          sub_1000141A4();
          v878 = v2273;
          v879 = v2110;
          sub_1000A3C70();
          v880 = v2108;
          sub_100095588();
          sub_100003A40(v880);
          if (v881)
          {
            sub_1000180EC(v880, &qword_100CA65E8, &unk_100A31410);
          }

          else
          {
            sub_100003B54();
            sub_100154038(v879, v1051);
            sub_10001BBB8();
            sub_1000D37D4();
          }

          v1052 = v2106;
          v1053 = v2105;
          v1054 = v2102;
          sub_10001BBB8();
          sub_1000D37D4();
          v2271 = *(v878 + 16);
          LODWORD(v2270) = *(v878 + 24);
          sub_100095588();
          v1055 = sub_1000162A4();
          v1056 = v2236;
          sub_10001627C(v1055, v1057);
          v1058 = v2240;
          if (v632)
          {
            sub_10003145C();
            sub_1000A3C70();
            v1059 = sub_1000162A4();
            v1061 = sub_100024D10(v1059, v1060, v1056);

            if (v1061 != 1)
            {
              sub_1000180EC(v1054, &qword_100CA6640, qword_100A32640);
            }
          }

          else
          {
            sub_100051D04();
            sub_1000D37D4();
          }

          v1062 = v2103;
          sub_100095588();
          sub_100003A40(v1062);
          if (v632)
          {
            sub_1000887FC(v878 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
            sub_100037964();
            sub_1000A3C70();
            sub_100003A40(v1062);
            v1063 = v2179;
            v1064 = v2104;
            if (!v632)
            {
              sub_1000180EC(v1062, &qword_100CA6638, &unk_100A31460);
            }
          }

          else
          {
            sub_10000E798();
            sub_1000D37D4();
            v1063 = v2179;
            v1064 = v2104;
          }

          sub_100095588();
          v1065 = sub_1000131C4();
          sub_1000038B4(v1065, v1066, v1058);
          if (v632)
          {
            sub_100016724();
            sub_1000A3C70();
            v1067 = sub_1000131C4();
            sub_1000038B4(v1067, v1068, v1058);
            v1069 = v2107;
            if (!v632)
            {
              sub_1000180EC(v1064, &qword_100CA6630, &unk_100A32630);
            }
          }

          else
          {
            sub_10002C530();
            sub_1000D37D4();
            v1069 = v2107;
          }

          sub_100095588();
          sub_10001627C(v1053, 1);
          if (v632)
          {
            sub_1000205A4();
            sub_1000A3C70();
            sub_100005404(v1053);
            if (!v632)
            {
              sub_1000180EC(v1053, &qword_100CA6628, &unk_100A31450);
            }
          }

          else
          {
            sub_10000C7FC();
            sub_1000D37D4();
          }

          sub_100095588();
          v1070 = sub_1000162B0();
          sub_10001627C(v1070, v1071);
          if (v632)
          {
            sub_10001922C();
            sub_1000A3C70();
            sub_100005404(v1052);
            if (!v632)
            {
              sub_1000180EC(v1052, &qword_100CA6620, &unk_100A32620);
            }
          }

          else
          {
            sub_1000244D8();
            sub_1000D37D4();
          }

          sub_100095588();
          v1072 = sub_100016298();
          sub_10001627C(v1072, v1073);
          if (v632)
          {
            sub_10003C26C();
            sub_1000A3C70();
            sub_100005404(v1069);
            if (!v632)
            {
              sub_1000180EC(v1069, &qword_100CA6618, &unk_100A31440);
            }
          }

          else
          {
            sub_1000175C4();
            sub_1000D37D4();
          }

          v1074 = v2109;
          sub_100095588();
          v1075 = sub_1000131C4();
          sub_1000038B4(v1075, v1076, v847);
          if (v632)
          {
            sub_10000FA84();
            sub_1000A3C70();
            v1077 = sub_1000131C4();
            sub_1000038B4(v1077, v1078, v847);
            if (!v632)
            {
              sub_1000180EC(v1074, &qword_100CA6610, &unk_100A32610);
            }
          }

          else
          {
            sub_1000693F0();
            sub_100021CEC();
            sub_1000D37D4();
          }

          sub_10001BBB8();
          sub_10019236C();
          v1079 = v878;
          v1081 = *(v878 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
          v1080 = *(v878 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
          v1083 = *(v878 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
          v1082 = *(v878 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
          v1084 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
          v1086 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
          v1085 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
          v1087 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
          v1088 = type metadata accessor for MainState._Storage(0);
          sub_100003B6C(v1088);
          LOBYTE(v1975) = v1084;
          v1089 = sub_100021CDC();
          sub_10003E038(v1089, v1090, v2182, v2183, v2184, v2185, v2186, v2187, v1974, v1063, v1081, v1080, v1083, v1082, v1975, v1086, v1085, v1087, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986, v1987, v1988, v1989, v1990, v1991, v1992);
          sub_1000A4020(v1091);

          sub_1000180EC(v2180, &qword_100CA65E8, &unk_100A31410);
          sub_1000180EC(v2211, &qword_100CA6610, &unk_100A32610);
          sub_1000180EC(v2210, &qword_100CA6618, &unk_100A31440);
          sub_1000180EC(v2209, &qword_100CA6620, &unk_100A32620);
          sub_1000180EC(v2208, &qword_100CA6628, &unk_100A31450);
          sub_1000180EC(v2207, &qword_100CA6630, &unk_100A32630);
          sub_1000180EC(v2206, &qword_100CA6638, &unk_100A31460);
          sub_1000180EC(v2205, &qword_100CA6640, qword_100A32640);
          sub_100025070();
          sub_100154038(v2188, v1092);
          sub_1000B9110();
          v1093(v2212, v2255);
          sub_100007F9C();
          sub_100154038(v2234, v1094);
          sub_1000180EC(v2244, &qword_100CA65E0, &unk_100A31400);
LABEL_154:
          sub_1000180EC(v2266, &unk_100CB2CF0, &unk_100A2D7F0);
          sub_10001E6E0();
          v1096 = v2264;
LABEL_155:
          sub_100154038(v1096, v1095);
          return v2273;
        }

        (*(v737 + 8))(v739, v631);
        sub_100007F9C();
        sub_100154038(v2234, v745);
        sub_1000180EC(v2244, &qword_100CA65E0, &unk_100A31400);
        sub_1000180EC(v601, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_10001E6E0();
        v726 = v740;
LABEL_68:
        sub_100154038(v726, v725);
        sub_1000180EC(v718, &qword_100CA65D0, &unk_100A313F0);
        goto LABEL_50;
      }

      sub_100007F9C();
      sub_100154038(v629, v633);
      sub_1000180EC(v606, &qword_100CA65E0, &unk_100A31400);
      sub_1000180EC(v630, &qword_100CA65D8, &unk_100A3D9D0);
      v602 = v2265;
    }
  }

  else
  {
    sub_100003B54();
    sub_100154038(v605, v610);
  }

  v611 = v2252;
  sub_1000141A4();
  sub_1000A3C70();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v613 = v2258;
  v614 = v2253;
  v615 = v2259;
  if (EnumCaseMultiPayload)
  {
    sub_100003B54();
    sub_100154038(v611, v616);
  }

  else
  {
    sub_100030330();
    v617 = v2233;
    sub_1000D37D4();
    sub_1006E6234(v615);
    v618 = v2259;
    v619 = v2255;
    sub_10001627C(v2259, 1);
    if (!v632)
    {
      v716 = v2247;
      v717 = v2227;
      (*(v2247 + 32))(v2227, v618, v619);
      v718 = v2197;
      v719 = v2264;
      sub_100290980(v717, v601, v2276, v2197);
      v720 = sub_1000175DC();
      v721 = v2231;
      sub_1000113D0(v720, v722);
      if (!v723)
      {
        sub_1000870DC();
        sub_1000D37D4();
        sub_100003934();
        v746 = v2236;
        sub_10001B350(v747, v748, v749, v2236);
        sub_100003934();
        sub_10001B350(v750, v751, v752, v2239);
        sub_100003934();
        sub_10001B350(v753, v754, v755, v2240);
        sub_100003934();
        sub_10001B350(v756, v757, v758, v2241);
        sub_100003934();
        sub_10001B350(v759, v760, v761, v2238);
        sub_100003934();
        sub_10001B350(v762, v763, v764, v2242);
        sub_100003934();
        v768 = sub_1000D3CF4(v765, v766, v767, v2272);
        type metadata accessor for PreviewLocation(v768);
        v769 = v2215;
        v770 = sub_100071C3C();
        sub_10001B350(v770, v771, v772, v773);
        sub_10002FD78();
        v774 = v2213;
        sub_1000A3C70();
        v775 = sub_100007FB4();
        v778 = sub_1000D3CF4(v775, v776, v777, v721);
        type metadata accessor for SelectedSearchResult(v778);
        v779 = v2214;
        v780 = sub_100071458();
        sub_10001B350(v780, v781, v782, v783);
        v784 = sub_1000E137C();
        sub_10043DB64(v784, v785, v786, v787);
        sub_1000180EC(v779, &qword_100CA65C0, &unk_100A313E0);
        sub_1000180EC(v774, &qword_100CA65D0, &unk_100A313F0);
        sub_1000180EC(v769, &qword_100CA65C8, &unk_100A31670);
        v788 = v2271;
        swift_storeEnumTagMultiPayload();
        sub_10000E7B0();
        sub_10001B350(v789, v790, v791, v788);
        sub_1000141A4();
        v792 = v2160;
        sub_1000A3C70();
        v793 = v2158;
        sub_100095588();
        sub_100003A40(v793);
        if (v794)
        {
          sub_1000180EC(v793, &qword_100CA65E8, &unk_100A31410);
        }

        else
        {
          sub_100003B54();
          sub_100154038(v792, v882);
          sub_10001BBB8();
          sub_1000D37D4();
        }

        v883 = v2155;
        v884 = v2154;
        v885 = v2153;
        v886 = v2152;
        sub_10001BBB8();
        sub_1000D37D4();
        v2271 = *(v2273 + 16);
        LODWORD(v2270) = *(v2273 + 24);
        sub_100095588();
        sub_100005404(v886);
        if (v632)
        {
          sub_10003145C();
          sub_1000C8930(v887);
          sub_1000A3C70();
          v888 = sub_1000182B8();
          v890 = sub_100024D10(v888, v889, v746);

          if (v890 != 1)
          {
            sub_1000180EC(v886, &qword_100CA6640, qword_100A32640);
          }
        }

        else
        {
          sub_100051D04();
          sub_1000D37D4();
        }

        sub_100095588();
        sub_100003A40(v885);
        if (v632)
        {
          sub_1000887FC(v2273 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
          sub_100037964();
          sub_1000A3C70();
          sub_100003A40(v885);
          v891 = v2157;
          v892 = v2156;
          if (!v632)
          {
            sub_1000180EC(v885, &qword_100CA6638, &unk_100A31460);
          }
        }

        else
        {
          sub_10000E798();
          sub_1000D37D4();
          v891 = v2157;
          v892 = v2156;
        }

        sub_100095588();
        sub_100005404(v884);
        if (v632)
        {
          sub_100016724();
          sub_1000C8930(v893);
          sub_1000A3C70();
          sub_100005404(v884);
          if (!v632)
          {
            sub_1000180EC(v884, &qword_100CA6630, &unk_100A32630);
          }
        }

        else
        {
          sub_10002C530();
          sub_1000D37D4();
        }

        sub_100095588();
        v894 = sub_1000162B0();
        sub_10001627C(v894, v895);
        if (v632)
        {
          sub_1000205A4();
          sub_1000C8930(v896);
          sub_1000A3C70();
          sub_100005404(v883);
          if (!v632)
          {
            sub_1000180EC(v883, &qword_100CA6628, &unk_100A31450);
          }
        }

        else
        {
          sub_10000C7FC();
          sub_1000D37D4();
        }

        sub_100095588();
        v897 = sub_1000182B8();
        sub_10001627C(v897, v898);
        if (v632)
        {
          sub_10001922C();
          sub_1000C8930(v899);
          sub_1000A3C70();
          sub_100005404(v892);
          if (!v632)
          {
            sub_1000180EC(v892, &qword_100CA6620, &unk_100A32620);
          }
        }

        else
        {
          sub_1000244D8();
          sub_1000D37D4();
        }

        sub_100095588();
        v900 = sub_100016298();
        sub_10001627C(v900, v901);
        if (v632)
        {
          sub_10003C26C();
          sub_1000C8930(v902);
          sub_1000A3C70();
          sub_100005404(v891);
          if (!v632)
          {
            sub_1000180EC(v891, &qword_100CA6618, &unk_100A31440);
          }
        }

        else
        {
          sub_1000175C4();
          sub_1000D37D4();
        }

        v903 = v2159;
        sub_100095588();
        v904 = sub_1000131C4();
        sub_1000038B4(v904, v905, v2272);
        if (v632)
        {
          sub_10000FA84();
          sub_1000A3C70();
          v906 = sub_1000131C4();
          sub_1000038B4(v906, v907, v2272);
          if (!v632)
          {
            sub_1000180EC(v903, &qword_100CA6610, &unk_100A32610);
          }
        }

        else
        {
          sub_1000693F0();
          sub_100021CEC();
          sub_1000D37D4();
        }

        sub_10001BBB8();
        sub_10019236C();
        sub_1000C8308();
        sub_1000E1540();
        v908 = sub_100040C78();
        sub_100003B6C(v908);
        sub_1000113AC();
        v909 = sub_100021CDC();
        sub_10003E038(v909, v910, v2198, v2199, v2200, v2201, v2202, v2203, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986, *(&v1986 + 1), v1987, v1988, v1989, v1990, v1991, v1992, v1993, v1994, v1995, v1996, v1997, v1998, v1999, v2000, v2001);
        sub_1000A4020(v911);

        sub_1000180EC(v2196, &qword_100CA65E8, &unk_100A31410);
        sub_1000180EC(v2226, &qword_100CA6610, &unk_100A32610);
        sub_1000180EC(v2225, &qword_100CA6618, &unk_100A31440);
        sub_1000180EC(v2224, &qword_100CA6620, &unk_100A32620);
        sub_1000180EC(v2223, &qword_100CA6628, &unk_100A31450);
        sub_1000180EC(v2222, &qword_100CA6630, &unk_100A32630);
        sub_1000180EC(v2221, &qword_100CA6638, &unk_100A31460);
        sub_1000180EC(v2220, &qword_100CA6640, qword_100A32640);
        sub_100025070();
        sub_100154038(v2204, v912);
        sub_1000B9110();
        v913(v2227, v2255);
        sub_100007F9C();
        sub_100154038(v2233, v914);
        goto LABEL_154;
      }

      (*(v716 + 8))(v717, v619);
      sub_100007F9C();
      sub_100154038(v617, v724);
      sub_1000180EC(v601, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_10001E6E0();
      v726 = v719;
      goto LABEL_68;
    }

    sub_100007F9C();
    sub_100154038(v617, v620);
    sub_1000180EC(v618, &qword_100CA65D8, &unk_100A3D9D0);
    v613 = v2258;
  }

  sub_10000FA84();
  v621 = v2250;
  sub_1000A3C70();
  sub_1000A7B5C();
  v622 = v2251;
  sub_1000A3C70();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000054F0();
    sub_100154038(v621, v623);
    v624 = sub_1000AF4CC();
LABEL_43:
    sub_100154038(v624, v625);
    goto LABEL_44;
  }

  v2259 = *v622;
  sub_1000C8244();
  if (v632)
  {
    v626 = [objc_opt_self() currentDevice];
    [v626 userInterfaceIdiom];

    LOBYTE(v626) = *(v621 + SHIDWORD(v2272[3].isa));
    sub_1000054F0();
    sub_100154038(v621, v627);
    if ((v626 & 1) == 0)
    {

LABEL_44:
      v693 = v2245;
      if (qword_100CA26A8 != -1)
      {
        swift_once();
      }

      v694 = type metadata accessor for Logger();
      sub_10000703C(v694, qword_100D90A60);
      sub_10007465C();
      sub_1000A3C70();
      v695 = Logger.logObject.getter();
      v696 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v695, v696))
      {
        v697 = swift_slowAlloc();
        v698 = sub_1000205BC();
        *&__src[0] = v698;
        *v697 = 136315138;
        sub_10029C394(&qword_100CA6668, type metadata accessor for LocationViewAction, byte_100A4AFD8);
        v699 = dispatch thunk of CustomStringConvertible.description.getter();
        v701 = v693;
        v702 = v601;
        v703 = sub_100078694(v699, v700, __src);

        *(v697 + 4) = v703;
        sub_100037088();
        sub_100154038(v701, v704);
        _os_log_impl(&_mh_execute_header, v695, v696, "Invalid state for component tap; action=%s", v697, 0xCu);
        sub_100006F14(v698);
        sub_100003884(v698);
        sub_100003884(v697);

        v705 = v702;
      }

      else
      {

        sub_100037088();
        sub_100154038(v693, v706);
        v705 = v601;
      }

      sub_1000180EC(v705, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_10001E6E0();
      sub_100154038(v2264, v707);
      goto LABEL_50;
    }
  }

  else
  {
    sub_1000054F0();
    sub_100154038(v621, v689);
  }

  sub_100037774();
  sub_1000A3C70();
  v690 = sub_1000175DC();
  v691 = v2230;
  sub_1000113D0(v690, v692);
  if (v632)
  {

    v625 = type metadata accessor for LocationViewerActiveLocationState;
    v624 = v614;
    goto LABEL_43;
  }

  (*(v613 + 32))(v602, v614, v691);
  sub_100016724();
  v727 = v2192;
  sub_1000A3C70();
  v728 = v2193;
  v729 = v602;
  v730 = v602;
  v731 = v613;
  v732 = v691;
  sub_1007BC308(v729, v2193);
  sub_100154038(v727, type metadata accessor for LocationsState);
  v733 = sub_1000162A4();
  v734 = v2229;
  sub_1000113D0(v733, v735);
  if (v736)
  {
    (*(v731 + 8))(v730, v732);

    sub_1000180EC(v728, &unk_100CE2F20, &unk_100A2D7D0);
    goto LABEL_44;
  }

  v797 = v2216;
  v798 = v2216 + 32;
  v799 = *(v2216 + 32);
  v800 = v2217;
  v799(v2217, v728, v734);
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v801 = type metadata accessor for Logger();
  v802 = sub_10000703C(v801, qword_100D90B68);
  v804 = v797 + 16;
  v803 = *(v797 + 16);
  v805 = v2130;
  (v803)(v2130, v800, v734);
  v2251 = v803;
  (v803)(v2194, v805, v734);
  v2250 = v804;
  v806 = (*(v804 + 64) + 16) & ~*(v804 + 64);
  v2225 = *(v804 + 64);
  v807 = swift_allocObject();
  v2226 = v806;
  v808 = v807;
  v2253 = v807;
  v2228 = v798;
  v2227 = v799;
  v799(v807 + v806, v805, v734);
  v2244 = v802;
  v2256 = Logger.logObject.getter();
  LODWORD(v2252) = static os_log_type_t.default.getter();
  sub_100086518();
  v2234 = swift_allocObject();
  *(v2234 + 16) = 112;
  sub_100086518();
  v809 = swift_allocObject();
  *(v809 + 16) = 8;
  v810 = swift_allocObject();
  sub_1000182C4();
  *(v811 + 16) = v812;
  sub_1000244CC();
  v813 = swift_allocObject();
  *(v813 + 16) = sub_10029C2C0;
  *(v813 + 24) = v810;
  sub_100086518();
  v814 = swift_allocObject();
  *(v814 + 16) = 33;
  sub_100086518();
  v815 = swift_allocObject();
  *(v815 + 16) = 8;
  sub_1000244CC();
  v816 = swift_allocObject();
  *(v816 + 16) = sub_10029C464;
  *(v816 + 24) = v808;
  sub_1000244CC();
  v817 = swift_allocObject();
  v817[2] = sub_10029C2D4;
  v817[3] = v816;
  v2245 = sub_10022C350(&qword_100CA6670, &unk_100A31490);
  inited = swift_initStackObject();
  v2233 = sub_100309F24(inited, 6);
  v819 = v2234;
  *v820 = sub_10029C2B8;
  v820[1] = v819;
  v820[2] = sub_10029C470;
  v820[3] = v809;
  v820[4] = sub_10029C2CC;
  v820[5] = v813;
  v820[6] = sub_10029C470;
  v820[7] = v814;
  v820[8] = sub_10029C470;
  v820[9] = v815;
  v820[10] = sub_10029C2DC;
  v820[11] = v817;
  v2237 = v810;

  if (os_log_type_enabled(v2256, v2252))
  {
    v821 = swift_slowAlloc();
    v2233 = sub_1000205BC();
    sub_1000C848C(v2233);

    *(v821 + 3) = 8;

    sub_1000182C4();
    *(v821 + 4) = v822;

    *(v821 + 12) = 33;

    *(v821 + 13) = 8;

    v823 = v2194;
    v824 = v2229;
    (v2251)(v2100, v2194, v2229);
    v825 = String.init<A>(describing:)();
    v827 = sub_100078694(v825, v826, __src);

    *(v821 + 14) = v827;

    v2253 = *(v2216 + 8);
    v2253(v823, v824);
    sub_1000B7B40(&_mh_execute_header, "TappedComponent for locationModel=%{private,mask.hash}s", v2252);
    v828 = v2233;
    sub_100006F14(v2233);
    sub_100003884(v828);
    sub_100003884(v821);
  }

  else
  {

    v2253 = *(v2216 + 8);
    v2253(v2194, v2229);
  }

  v915 = v2131;
  v916 = v2217;
  LocationModel.coalesceLocation.getter();
  v917 = sub_1000162A4();
  v918 = v2255;
  sub_1000038B4(v917, v919, v2255);
  v920 = v2169;
  if (v632)
  {
    sub_1000180EC(v915, &qword_100CA65D8, &unk_100A3D9D0);
    v921 = v2074;
    v922 = v2229;
    v923 = v2251;
    (v2251)(v2074, v916, v2229);
    v924 = sub_100031474();
    (v923)(v924);
    v925 = v2226;
    v926 = swift_allocObject();
    v2227(&v926[v925], v921, v922);
    v2272 = Logger.logObject.getter();
    LODWORD(v2271) = static os_log_type_t.default.getter();
    sub_100086518();
    v927 = swift_allocObject();
    *(v927 + 16) = 112;
    sub_100086518();
    v928 = swift_allocObject();
    *(v928 + 16) = 8;
    v929 = swift_allocObject();
    sub_1000182C4();
    *(v930 + 16) = v931;
    sub_1000244CC();
    v932 = swift_allocObject();
    *(v932 + 16) = sub_10029C468;
    *(v932 + 24) = v929;
    sub_100086518();
    v933 = swift_allocObject();
    *(v933 + 16) = 33;
    sub_100086518();
    v934 = swift_allocObject();
    *(v934 + 16) = 8;
    sub_1000244CC();
    v935 = swift_allocObject();
    *(v935 + 16) = sub_10029C2E4;
    *(v935 + 24) = v926;
    sub_1000244CC();
    v936 = swift_allocObject();
    *(v936 + 16) = sub_10029C46C;
    *(v936 + 24) = v935;
    v937 = swift_initStackObject();
    v2268 = sub_100309F24(v937, 6);
    *v938 = sub_10029C470;
    v938[1] = v927;
    v938[2] = sub_10029C470;
    v938[3] = v928;
    v938[4] = sub_10029C45C;
    v938[5] = v932;
    v938[6] = sub_10029C470;
    v938[7] = v933;
    v938[8] = sub_10029C470;
    v938[9] = v934;
    v938[10] = sub_10029C460;
    v938[11] = v936;
    v2269 = v929;

    v2270 = v926;

    if (os_log_type_enabled(v2272, v2271))
    {
      v939 = swift_slowAlloc();
      v940 = sub_1000205BC();
      *&__src[0] = v940;
      *v939 = 515;
      *(v939 + 2) = 112;

      *(v939 + 3) = 8;

      sub_1000182C4();
      *(v939 + 4) = v941;

      *(v939 + 12) = 33;

      *(v939 + 13) = 8;

      v942 = v2170;
      v943 = v2229;
      (v2251)(v2100, v2170, v2229);
      v944 = String.init<A>(describing:)();
      v946 = sub_100078694(v944, v945, __src);

      *(v939 + 14) = v946;

      v947 = v2253;
      v2253(v942, v943);
      v948 = v2272;
      _os_log_impl(&_mh_execute_header, v2272, v2271, "Failed to find locationModel.coalesceLocation for locationModel=%{private,mask.hash}s", v939, 0x16u);
      sub_100006F14(v940);
      sub_100003884(v940);
      sub_100003884(v939);

      v949 = v2217;
      v950 = v943;
    }

    else
    {

      v1180 = v2229;
      v947 = v2253;
      v2253(v2170, v2229);

      v949 = v2217;
      v950 = v1180;
    }

    v947(v949, v950);
    v1181 = sub_100040E7C();
    v1182(v1181);
    sub_1000180EC(v2266, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_10001E6E0();
    v1184 = v2264;
    goto LABEL_290;
  }

  v951 = v2247;
  v952 = *(v2247 + 32);
  v953 = v2132;
  v952(v2132, v915, v918);
  v954 = *(v951 + 16);
  v955 = v2073;
  v954(v2073, v953, v918);
  v954(v920, v955, v918);
  v956 = (*(v951 + 80) + 16) & ~*(v951 + 80);
  v2252 = swift_allocObject();
  v952(v2252 + v956, v955, v918);
  v2256 = Logger.logObject.getter();
  LODWORD(v2251) = static os_log_type_t.default.getter();
  sub_100086518();
  v957 = swift_allocObject();
  *(v957 + 16) = 112;
  sub_100086518();
  v958 = swift_allocObject();
  *(v958 + 16) = 8;
  v959 = swift_allocObject();
  sub_1000182C4();
  *(v960 + 16) = v961;
  sub_1000244CC();
  v962 = swift_allocObject();
  *(v962 + 16) = sub_10029C468;
  *(v962 + 24) = v959;
  sub_100086518();
  v963 = swift_allocObject();
  *(v963 + 16) = 33;
  sub_100086518();
  v964 = swift_allocObject();
  *(v964 + 16) = 8;
  sub_1000244CC();
  v965 = swift_allocObject();
  v966 = v2252;
  *(v965 + 16) = sub_10029C338;
  *(v965 + 24) = v966;
  sub_1000244CC();
  v967 = swift_allocObject();
  *(v967 + 16) = sub_10029C46C;
  *(v967 + 24) = v965;
  v968 = swift_initStackObject();
  v2245 = sub_100309F24(v968, 6);
  *v969 = sub_10029C470;
  v969[1] = v957;
  v969[2] = sub_10029C470;
  v969[3] = v958;
  v969[4] = sub_10029C45C;
  v969[5] = v962;
  v969[6] = sub_10029C470;
  v969[7] = v963;
  v969[8] = sub_10029C470;
  v969[9] = v964;
  v969[10] = sub_10029C460;
  v969[11] = v967;
  v2250 = v959;

  if (os_log_type_enabled(v2256, v2251))
  {
    v971 = swift_slowAlloc();
    v972 = sub_1000205BC();
    sub_1000C848C(v972);

    *(v971 + 3) = 8;

    sub_1000182C4();
    *(v971 + 4) = v973;

    *(v971 + 12) = 33;

    *(v971 + 13) = 8;

    sub_10029C394(&qword_100CA6678, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v974 = v2169;
    v975 = v2255;
    v976 = dispatch thunk of CustomStringConvertible.description.getter();
    v978 = v977;
    v962 = sub_100078694(v976, v977, __src);

    *(v971 + 14) = v962;

    sub_10029C488();
    (v962)(v974, v975);
    sub_1000B7B40(&_mh_execute_header, "TappedComponent for location=%{private,mask.hash}s", v2251);
    sub_100006F14(v972);
    sub_100003884(v972);
    sub_100003884(v971);
  }

  else
  {

    sub_10029C488();
    v975 = v2255;
    (v962)(v2169, v2255);
  }

  v1185 = v2132;
  v1186 = v2264;
  v1187 = v2266;
  v1188 = sub_10029147C(v2273, v2132, v2264, v2266, v2276);

  (v962)(v1185, v975);
  v2253(v2217, v2229);
  v1189 = sub_100040E7C();
  v1190(v1189);
  sub_1000180EC(v1187, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_10001E6E0();
  sub_100154038(v1186, v1191);
  v708 = v2263;
  v709 = v2268;
  v710 = v2262;
  if (v1188)
  {
    return v1188;
  }

LABEL_51:
  sub_1000141A4();
  sub_1000E59BC();
  sub_1000A3C70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 6u:
    case 7u:
      goto LABEL_283;
    case 2u:
    case 3u:
    case 5u:
      sub_100003B54();
      v712 = v710;
LABEL_53:
      sub_100154038(v712, v711);
      goto LABEL_283;
    case 4u:
      v713 = type metadata accessor for ModalViewState.MapViewModal(0);
      sub_100005404(v710);
      if (v632)
      {
        goto LABEL_282;
      }

      break;
    default:
      sub_100030330();
      sub_1000D37D4();
      sub_10007465C();
      v715 = v2218;
      sub_1000A3C70();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_10022C350(&qword_100CA6658, &unk_100A31480);
          sub_100049614();
          v1046 = v2042;
          sub_1000D37D4();
          v1047 = v2099;
          sub_100051BBC();
          sub_100011394();
          v1048 = v2041;
          sub_1000A3C70();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1000180EC(v1047, &unk_100CB2CF0, &unk_100A2D7F0);
            sub_10001E6E0();
            sub_100154038(v1046, v1049);
            sub_100007F9C();
            sub_100154038(v2235, v1050);
            (*(v2164 + 8))(v1048, v2165);
LABEL_283:
            sub_10000FA84();
            v1310 = v2260;
            sub_1000A3C70();
            sub_1000A7B5C();
            v1311 = v2261;
            sub_1000A3C70();
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v1313 = *v1311;
              sub_1000C8244();
              if (v632)
              {
                v1314 = [objc_opt_self() currentDevice];
                [v1314 userInterfaceIdiom];

                LOBYTE(v1314) = *(v1310 + SHIDWORD(v2272[3].isa));
                sub_1000054F0();
                sub_100154038(v1310, v1315);
                v1317 = v2254;
                if ((v1314 & 1) == 0)
                {
LABEL_291:

                  goto LABEL_292;
                }
              }

              else
              {
                sub_1000054F0();
                sub_100154038(v1310, v1316);
                v1317 = v2254;
              }

              sub_1000141A4();
              sub_1000E59BC();
              sub_1000A3C70();
              v1318 = swift_getEnumCaseMultiPayload();
              v1319 = v2249;
              v1320 = v2248;
              v1321 = v2246;
              switch(v1318)
              {
                case 1:
                case 7:
                  goto LABEL_291;
                case 6:
                  sub_10007465C();
                  sub_1000A3C70();
                  switch(swift_getEnumCaseMultiPayload())
                  {
                    case 1u:
                      v1522 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
                      v2270 = (v2178 + *(v1522 + 64));
                      sub_100049614();
                      sub_1000D37D4();
                      sub_100011394();
                      v1523 = v1987;
                      sub_1000A3C70();
                      v1524 = swift_getEnumCaseMultiPayload();
                      sub_10001E6E0();
                      sub_100154038(v1523, v1525);
                      if (v1524 == 6)
                      {
                        sub_1000161C0(v2232 + 17, v2232[20]);
                        sub_1007381FC(v2273, 0, __src);
                        type metadata accessor for ReportWeatherViewState._Storage();
                        v1526 = swift_allocObject();
                        memcpy((v1526 + 16), __src, 0x60uLL);
                        v1527 = v2191;
                        sub_100021314(v2191);
                        v1528 = v2177;
                        sub_100003934();
                        sub_10001B350(v1529, v1530, v1531, v2240);
                        sub_100003934();
                        sub_10001B350(v1532, v1533, v1534, v2241);
                        v1535 = v2162;
                        v1536 = sub_100071C3C();
                        sub_10001B350(v1536, v1537, v1538, v2238);
                        v1539 = v2163;
                        v1540 = sub_100030348();
                        sub_10001B350(v1540, v1541, v1542, v2242);
                        v1543 = v2151;
                        v1544 = sub_100024058();
                        sub_10001B350(v1544, v1545, v1546, v2272);
                        *v708 = v1526;
                        v1547 = v2271;
                        swift_storeEnumTagMultiPayload();
                        sub_10000E7B0();
                        sub_10001B350(v1548, v1549, v1550, v1547);
                        sub_10029C25C(__src, v2274);

                        sub_100028128();
                        v1976 = v1543;
                        v1977 = v708;
                        v1551 = sub_100088338();
                        v1552 = v1527;
                        v1553 = v2190;
                        v1554 = v2174;
                        v1556 = sub_1000D2C20(v1551, v1555, v1552, v2190, v1528, v2174, v1535, v1539, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
                        sub_100032530(v1556);

                        sub_10026AD10(__src);
                        sub_1000180EC(v708, &qword_100CA65E8, &unk_100A31410);
                        sub_1000180EC(v1543, &qword_100CA6610, &unk_100A32610);
                        sub_1000180EC(v1539, &qword_100CA6618, &unk_100A31440);
                        sub_1000180EC(v1535, &qword_100CA6620, &unk_100A32620);
                        sub_1000180EC(v1554, &qword_100CA6628, &unk_100A31450);
                        sub_1000180EC(v1528, &qword_100CA6630, &unk_100A32630);
                        sub_1000180EC(v1553, &qword_100CA6638, &unk_100A31460);
                        sub_1000180EC(v2191, &qword_100CA6640, qword_100A32640);
                        goto LABEL_330;
                      }

                      sub_100011394();
                      v1673 = v1980;
                      sub_1000A3C70();
                      if (swift_getEnumCaseMultiPayload() == 1)
                      {
                        v1674 = v2164;
                        v1675 = v2165;
                        (*(v2164 + 32))(v1321, v1673, v2165);
                        sub_10004E390();
                        sub_1000A3C70();
                        v1676 = sub_1004B5684();
                        sub_1000227C4();
                        sub_100154038(v1317, v1677);
                        if ((v1676 & 1) == 0)
                        {
                          v1909 = v1317;
                          v1910 = v2272;
                          sub_1000182A0();
                          v2267 = v1911;
                          v1912 = v1321;
                          v1913 = v1976;
                          sub_1000A3C70();
                          sub_10004E390();
                          sub_1000A3C70();
                          sub_10022C350(&qword_100CA6660, &unk_100A41280);
                          v1914 = v2096;
                          v1915 = sub_100016298();
                          sub_10001B350(v1915, v1916, 3, v1917);
                          sub_100999C34(v1909, v1912, v1914, v2097);
                          sub_1000866EC();
                          sub_100154038(v1914, v1918);
                          sub_1000227C4();
                          sub_100154038(v1909, v1919);
                          sub_100024040();
                          v2269 = v1920;
                          sub_100154038(v1913, v1921);
                          sub_100041884(v2191);
                          sub_100003934();
                          sub_10001B350(v1922, v1923, v1924, v2241);
                          sub_100003934();
                          sub_10001B350(v1925, v1926, v1927, v2238);
                          v1928 = v2163;
                          sub_100003934();
                          sub_10001B350(v1929, v1930, v1931, v2242);
                          sub_10000FA84();
                          v1932 = v2018;
                          sub_1000A3C70();
                          v1933 = v2019;
                          v1934 = sub_100071458();
                          v1937 = sub_1000D3CF4(v1934, v1935, v1936, v2268);
                          type metadata accessor for SearchViewState(v1937);
                          v1938 = v2095;
                          v1939 = sub_100071C3C();
                          sub_10001B350(v1939, v1940, v1941, v1942);
                          v1943 = v2094;
                          v1944 = sub_100024058();
                          sub_10001B350(v1944, v1945, v1946, v2243);
                          v1947 = v2093;
                          sub_1000A3C70();
                          v1948 = sub_100007FB4();
                          sub_10001B350(v1948, v1949, v1950, v2175);
                          v1951 = v2151;
                          sub_1000519D4();
                          sub_10081B470();
                          sub_1000180EC(v1947, &qword_100CA65F0, &unk_100A5C3F0);
                          sub_1000180EC(v1943, &qword_100CA65F8, &dword_100A31420);
                          sub_1000180EC(v1938, &qword_100CA6600, &unk_100A5C400);
                          sub_1000180EC(v1933, &qword_100CA6608, &unk_100A31430);
                          sub_1000054F0();
                          sub_100154038(v1932, v1952);
                          sub_10000E7B0();
                          v1956 = sub_1000D3CF4(v1953, v1954, v1955, v1910);
                          type metadata accessor for ModalViewState.MapViewModal(v1956);
                          v1957 = v2263;
                          v1958 = sub_100071C3C();
                          sub_10001B350(v1958, v1959, v1960, v1961);
                          sub_1000BAE9C();
                          swift_storeEnumTagMultiPayload();
                          sub_10000E7B0();
                          sub_10001B350(v1962, v1963, v1964, v1932);
                          sub_100028128();
                          v1976 = v1951;
                          v1977 = v1957;
                          v1965 = sub_100088338();
                          v1966 = v2191;
                          v1967 = v2190;
                          v1968 = v2177;
                          v1969 = v2174;
                          v1970 = v2162;
                          v1972 = sub_1000D2C20(v1965, v1971, v2191, v2190, v2177, v2174, v2162, v1928, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
                          sub_100032530(v1972);

                          sub_1000180EC(v1957, &qword_100CA65E8, &unk_100A31410);
                          sub_1000180EC(v1951, &qword_100CA6610, &unk_100A32610);
                          sub_1000180EC(v1928, &qword_100CA6618, &unk_100A31440);
                          sub_1000180EC(v1970, &qword_100CA6620, &unk_100A32620);
                          sub_1000180EC(v1969, &qword_100CA6628, &unk_100A31450);
                          sub_1000180EC(v1968, &qword_100CA6630, &unk_100A32630);
                          sub_1000180EC(v1967, &qword_100CA6638, &unk_100A31460);
                          sub_1000180EC(v1966, &qword_100CA6640, qword_100A32640);
                          sub_100154038(v2097, v2269);
                          (*(v2164 + 8))(v2246, v2165);
                          goto LABEL_330;
                        }

                        (*(v1674 + 8))(v1321, v1675);
                        v1678 = v1675;
                        v1679 = v1674;
                      }

                      else
                      {
                        sub_10001E6E0();
                        sub_100154038(v1673, v1787);
                        v1678 = v2165;
                        v1679 = v2164;
                      }

                      sub_1000182A0();
                      v1788 = *(&v1986 + 1);
                      sub_1000A3C70();
                      sub_100011394();
                      v1789 = v1979;
                      sub_1000A3C70();
                      if (swift_getEnumCaseMultiPayload() == 1)
                      {
                        v1790 = v1977;
                        (*(v1679 + 32))(v1977, v1789, v1678);
                        sub_10004E390();
                        sub_1000A3C70();
                        sub_10022C350(&qword_100CA6660, &unk_100A41280);
                        v1791 = v1679;
                        v1792 = v2096;
                        v1793 = sub_1000162B0();
                        sub_10001B350(v1793, v1794, 3, v1795);
                        sub_100999C34(v1317, v1790, v1792, v2097);
                        sub_1000866EC();
                        sub_100154038(v1792, v1796);
                        sub_1000227C4();
                        sub_100154038(v1317, v1797);
                        (*(v1791 + 8))(v1790, v2165);
                        sub_100024040();
                        sub_100154038(v1788, v1798);
                        sub_100020134();
                        sub_100031474();
                        sub_1000D37D4();
                      }

                      else
                      {
                        sub_10001E6E0();
                        sub_100154038(v1789, v1799);
                      }

                      sub_100041884(v2191);
                      sub_100003934();
                      sub_10001B350(v1800, v1801, v1802, v2241);
                      sub_100003934();
                      sub_10001B350(v1803, v1804, v1805, v2238);
                      v1806 = v2163;
                      sub_100003934();
                      sub_10001B350(v1807, v1808, v1809, v2242);
                      sub_10000FA84();
                      v1810 = v2018;
                      sub_1000A3C70();
                      v1811 = v2019;
                      sub_100003934();
                      v1815 = sub_1000D3CF4(v1812, v1813, v1814, v2268);
                      type metadata accessor for SearchViewState(v1815);
                      v1816 = v2095;
                      v1817 = sub_100071C3C();
                      sub_10001B350(v1817, v1818, v1819, v1820);
                      v1821 = v2094;
                      v1822 = sub_100030348();
                      sub_10001B350(v1822, v1823, v1824, v2243);
                      sub_1000182A0();
                      v1825 = v2093;
                      sub_1000A3C70();
                      sub_10000E7B0();
                      sub_10001B350(v1826, v1827, v1828, v2175);
                      v1829 = v2151;
                      sub_1000519D4();
                      sub_10081B470();
                      sub_1000180EC(v1825, &qword_100CA65F0, &unk_100A5C3F0);
                      sub_1000180EC(v1821, &qword_100CA65F8, &dword_100A31420);
                      sub_1000180EC(v1816, &qword_100CA6600, &unk_100A5C400);
                      sub_1000180EC(v1811, &qword_100CA6608, &unk_100A31430);
                      sub_1000054F0();
                      sub_100154038(v1810, v1830);
                      sub_10000E7B0();
                      sub_10001B350(v1831, v1832, v1833, v2272);
                      v1834 = sub_100071458();
                      sub_10001B350(v1834, v1835, v1836, v2271);
                      sub_100028128();
                      v1976 = v1829;
                      v1977 = v708;
                      v1837 = sub_100088338();
                      v1838 = v2191;
                      v1839 = v2190;
                      v1840 = v2177;
                      v1841 = v2174;
                      v1842 = v2162;
                      v1844 = sub_1000D2C20(v1837, v1843, v2191, v2190, v2177, v2174, v2162, v1806, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
                      sub_100032530(v1844);

                      sub_1000180EC(v708, &qword_100CA65E8, &unk_100A31410);
                      sub_1000180EC(v1829, &qword_100CA6610, &unk_100A32610);
                      sub_1000180EC(v1806, &qword_100CA6618, &unk_100A31440);
                      sub_1000180EC(v1842, &qword_100CA6620, &unk_100A32620);
                      sub_1000180EC(v1841, &qword_100CA6628, &unk_100A31450);
                      sub_1000180EC(v1840, &qword_100CA6630, &unk_100A32630);
                      sub_1000180EC(v1839, &qword_100CA6638, &unk_100A31460);
                      sub_1000180EC(v1838, &qword_100CA6640, qword_100A32640);
                      sub_100024040();
                      sub_100154038(*(&v1986 + 1), v1845);
LABEL_330:
                      sub_10001E6E0();
                      sub_100154038(v2039, v1973);
                      v1784 = &unk_100CB2CF0;
                      v1785 = &unk_100A2D7F0;
                      v1786 = v2270;
                      break;
                    case 2u:
                      v1464 = sub_10022C350(&qword_100CA6648, &unk_100A31470);
                      sub_1000C8FA4(v2178 + *(v1464 + 48));
                      sub_1000D37D4();
                      sub_1001924A4();
                      v1465 = *(&v1995 + 1);
                      sub_1000A3C70();
                      v1466 = *(sub_10022C350(&qword_100CA6650, &unk_100A3FAB0) + 48);
                      v1467 = v708;
                      v1468 = v2247;
                      v1469 = v2033;
                      v1470 = v2255;
                      (*(v2247 + 32))(v2033, v1465, v2255);
                      v1471 = v2037;
                      (*(v2166 + 32))(v2037, v1465 + v1466, v2167);
                      sub_100041884(v2191);
                      sub_100003934();
                      sub_10001B350(v1472, v1473, v1474, v2241);
                      v1475 = v2162;
                      v1476 = sub_100024058();
                      sub_10001B350(v1476, v1477, v1478, v2238);
                      v1479 = v2163;
                      v1480 = sub_100005508();
                      sub_10001B350(v1480, v1481, v1482, v2242);
                      v1483 = v2151;
                      v1484 = sub_100071C3C();
                      sub_10001B350(v1484, v1485, v1486, v2272);
                      (*(v1468 + 16))(v1467, v1469, v1470);
                      v1487 = v2098;
                      (*(v2166 + 16))(v1467 + *(v2098 + 20), v1471, v2167);
                      sub_100171190(v1467 + *(v1487 + 24));
                      type metadata accessor for ModalViewState.LocationDetailModal(0);
                      swift_storeEnumTagMultiPayload();
                      v1488 = v2271;
                      swift_storeEnumTagMultiPayload();
                      v1489 = sub_100007FB4();
                      sub_10001B350(v1489, v1490, v1491, v1488);
                      sub_100028128();
                      v1976 = v1483;
                      v1977 = v1467;
                      v1492 = sub_100088338();
                      v1493 = v2191;
                      v1494 = v2190;
                      v1495 = v2177;
                      v1496 = v2174;
                      v1498 = sub_1000D2C20(v1492, v1497, v2191, v2190, v2177, v2174, v1475, v1479, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
                      sub_100032530(v1498);

                      sub_1000180EC(v1467, &qword_100CA65E8, &unk_100A31410);
                      sub_1000180EC(v1483, &qword_100CA6610, &unk_100A32610);
                      sub_1000180EC(v1479, &qword_100CA6618, &unk_100A31440);
                      sub_1000180EC(v1475, &qword_100CA6620, &unk_100A32620);
                      sub_1000180EC(v1496, &qword_100CA6628, &unk_100A31450);
                      sub_1000180EC(v1495, &qword_100CA6630, &unk_100A32630);
                      sub_1000180EC(v1494, &qword_100CA6638, &unk_100A31460);
                      sub_1000180EC(v1493, &qword_100CA6640, qword_100A32640);
                      (*(v2166 + 8))(v2037, v2167);
                      sub_1000B9110();
                      v1499(v2033, v2255);
                      sub_1000C86CC();
                      v1096 = v2036;
                      goto LABEL_155;
                    case 3u:
                      sub_100003934();
                      sub_10001B350(v1500, v1501, v1502, v2236);
                      sub_100003934();
                      sub_10001B350(v1503, v1504, v1505, v2239);
                      sub_100003934();
                      sub_10001B350(v1506, v1507, v1508, v2240);
                      sub_100003934();
                      sub_10001B350(v1509, v1510, v1511, v2241);
                      sub_100003934();
                      sub_10001B350(v1512, v1513, v1514, v2238);
                      sub_100003934();
                      sub_10001B350(v1515, v1516, v1517, v2242);
                      sub_10000FA84();
                      sub_1000A3C70();
                      v1518 = sub_100071C3C();
                      sub_10001B350(v1518, v1519, v1520, active);
                      v1521 = v1997;
                      sub_100095588();
                      sub_100003A40(v1521);
                      if (v632)
                      {
                        sub_100037774();
                        sub_1000A3C70();
                        sub_100003A40(v1521);
                        if (!v632)
                        {
                          sub_1000180EC(v1521, &qword_100CA65B8, &unk_100A313D0);
                        }
                      }

                      else
                      {
                        sub_100044D2C();
                        sub_1000D37D4();
                      }

                      sub_100044D2C();
                      v1596 = v1995;
                      sub_1000D37D4();
                      v1597 = *(v1313 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
                      v1598 = *(v1313 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
                      v1599 = *(v1313 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
                      v1600 = *(v1313 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
                      v1601 = type metadata accessor for LocationViewerViewState._Storage(0);
                      sub_100003B6C(v1601);
                      v1602 = sub_10003DDB8(v1596, 0, v1597, v1600, v1598, v1599);
                      sub_1000180EC(v2035, &qword_100CA65B8, &unk_100A313D0);
                      v1603 = v1991;
                      *v1991 = v1602;
                      swift_storeEnumTagMultiPayload();
                      sub_10000E7B0();
                      v1607 = sub_1000D3CF4(v1604, v1605, v1606, v709);
                      type metadata accessor for SearchViewState(v1607);
                      v1608 = v2095;
                      v1609 = sub_100030348();
                      sub_10001B350(v1609, v1610, v1611, v1612);
                      v1613 = v2094;
                      v1614 = sub_100024058();
                      sub_10001B350(v1614, v1615, v1616, v2243);
                      v1617 = v2093;
                      v1618 = sub_100071458();
                      sub_10001B350(v1618, v1619, v1620, v2175);
                      v1621 = v1990;
                      sub_1000519D4();
                      v1622 = v2031;
                      sub_10081B470();
                      sub_1000180EC(v1617, &qword_100CA65F0, &unk_100A5C3F0);
                      sub_1000180EC(v1613, &qword_100CA65F8, &dword_100A31420);
                      sub_1000180EC(v1608, &qword_100CA6600, &unk_100A5C400);
                      sub_1000180EC(v1603, &qword_100CA6608, &unk_100A31430);
                      sub_1000054F0();
                      sub_100154038(v1622, v1623);
                      sub_10000E7B0();
                      sub_10001B350(v1624, v1625, v1626, v2272);
                      v1627 = v2263;
                      v1628 = sub_100005508();
                      sub_10001B350(v1628, v1629, v1630, v2271);
                      sub_100028128();
                      v1976 = v1621;
                      v1977 = v1627;
                      v1631 = sub_100088338();
                      v1557 = v2022;
                      v1632 = v2024;
                      v1633 = v2026;
                      v1635 = v2028;
                      v1634 = v2029;
                      v1636 = v2030;
                      v1638 = sub_1000D2C20(v1631, v1637, v2022, v2024, v2026, v2028, v2029, v2030, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
                      sub_100032530(v1638);

                      sub_1000180EC(v1627, &qword_100CA65E8, &unk_100A31410);
                      sub_1000180EC(v1621, &qword_100CA6610, &unk_100A32610);
                      sub_1000180EC(v1636, &qword_100CA6618, &unk_100A31440);
                      sub_1000180EC(v1634, &qword_100CA6620, &unk_100A32620);
                      sub_1000180EC(v1635, &qword_100CA6628, &unk_100A31450);
                      sub_1000180EC(v1633, &qword_100CA6630, &unk_100A32630);
                      v1590 = v1632;
                      goto LABEL_315;
                    case 4u:
                      LODWORD(v2266) = 1;
                      sub_100021314(v2191);
                      v1351 = v2177;
                      sub_100003934();
                      sub_10001B350(v1352, v1353, v1354, v2240);
                      v1355 = v2174;
                      v1356 = sub_100024058();
                      sub_10001B350(v1356, v1357, v1358, v2241);
                      v1359 = v2273;
                      v2270 = (v2273 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
                      sub_10001922C();
                      sub_1000A3C70();
                      v1360 = sub_100071C3C();
                      sub_10001B350(v1360, v1361, v1362, v2072);
                      sub_10012CC38();
                      v1363 = v2162;
                      sub_1000D3CD0(2, 0, 2, v2162, v1976, BYTE1(v1976), BYTE2(v1976), BYTE3(v1976), BYTE4(v1976), BYTE5(v1976), BYTE6(v1976));
                      sub_1000180EC(v1319, &unk_100CB2CF0, &unk_100A2D7F0);
                      sub_10003A0E4();
                      sub_100154038(v1320, v1364);
                      sub_10000E7B0();
                      v1365 = v2238;
                      sub_10001B350(v1366, v1367, v1368, v2238);
                      v1369 = v2163;
                      v1370 = sub_100071C3C();
                      sub_10001B350(v1370, v1371, v1372, v2242);
                      v1373 = v2151;
                      v1374 = sub_100005508();
                      sub_10001B350(v1374, v1375, v1376, v2272);
                      v1377 = sub_100071458();
                      sub_10001B350(v1377, v1378, v1379, v2271);
                      v1976 = v1359;
                      v1380 = sub_100088338();
                      v1382 = sub_1000D2C20(v1380, v1381, v2191, v2190, v1351, v1355, v1363, v1369, v1373, v708, 0, 0, 0, 0, 0, 0, 0, 0, v1976);
                      v1383 = v708;
                      v1384 = v2270;
                      sub_1000180EC(v1383, &qword_100CA65E8, &unk_100A31410);
                      sub_1000180EC(v1373, &qword_100CA6610, &unk_100A32610);
                      sub_1000180EC(v1369, &qword_100CA6618, &unk_100A31440);
                      sub_1000180EC(v1363, &qword_100CA6620, &unk_100A32620);
                      sub_1000180EC(v1355, &qword_100CA6628, &unk_100A31450);
                      v1385 = v2268;
                      sub_1000180EC(v1351, &qword_100CA6630, &unk_100A32630);
                      sub_1000180EC(v2190, &qword_100CA6638, &unk_100A31460);
                      sub_1000180EC(v2191, &qword_100CA6640, qword_100A32640);
                      sub_1000161C0(v2232 + 12, v2232[15]);
                      sub_10000FA84();
                      v1386 = v2000;
                      sub_1000A3C70();
                      v1387 = v1382 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
                      swift_beginAccess();
                      v1388 = v1387[1];
                      v1389 = *(v1382 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
                      v1390 = v1365[16];
                      v1391 = *(v1384 + v1365[15]);
                      v2269 = v1382;
                      v1392 = *(v1382 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1365[18]);
                      v1393 = v1387[2];
                      LOBYTE(v1390) = *(v1382 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1390);
                      v1394 = *(v1382 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1365[17]);
                      v1395 = v1999;
                      *(v1386 + v1999[5]) = 0;
                      *(v1386 + v1395[6]) = v1388;
                      *(v1386 + v1395[7]) = v1389;
                      *(v1386 + v1395[8]) = v1393;
                      *(v1386 + v1395[9]) = v1391;
                      *(v1386 + v1395[10]) = v1392;
                      *(v1386 + v1395[11]) = v1390;
                      *(v1386 + v1395[12]) = v1394;
                      v1396 = sub_1007274D0(v1386);
                      sub_100154038(v1386, type metadata accessor for NotificationsOptInInput);
                      v1397 = v2243;
                      switch(v1396)
                      {
                        case 4u:
                          goto LABEL_303;
                        case 3u:
                          v1846 = v2191;
                          sub_100021314(v2191);
                          v1847 = v2177;
                          sub_100003934();
                          sub_10001B350(v1848, v1849, v1850, v2240);
                          v1851 = v2174;
                          v1852 = sub_100030348();
                          sub_10001B350(v1852, v1853, v1854, v2241);
                          v1855 = v2162;
                          sub_100003934();
                          sub_10001B350(v1856, v1857, v1858, v2238);
                          v1859 = v2163;
                          v1860 = sub_100071458();
                          sub_10001B350(v1860, v1861, v1862, v2242);
                          v1863 = v2151;
                          v1864 = sub_100024058();
                          sub_10001B350(v1864, v1865, v1866, v2272);
                          v1867 = v2263;
                          *v2263 = 0;
                          sub_1000BAE9C();
                          swift_storeEnumTagMultiPayload();
                          sub_10000E7B0();
                          sub_10001B350(v1868, v1869, v1870, v1396);
                          sub_100028128();
                          v1978 = v1863;
                          v1979 = v1867;
                          v1871 = sub_100088338();
                          v1872 = v2190;
                          v1874 = sub_1000D2C20(v1871, v1873, v1846, v2190, v1847, v1851, v1855, v1859, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986, *(&v1986 + 1), v1987);
                          sub_100032530(v1874);

                          sub_1000180EC(v1867, &qword_100CA65E8, &unk_100A31410);
                          sub_1000180EC(v1863, &qword_100CA6610, &unk_100A32610);
                          sub_1000180EC(v1859, &qword_100CA6618, &unk_100A31440);
                          sub_1000180EC(v1855, &qword_100CA6620, &unk_100A32620);
                          sub_1000180EC(v1851, &qword_100CA6628, &unk_100A31450);
                          sub_1000180EC(v1847, &qword_100CA6630, &unk_100A32630);
                          sub_1000180EC(v1872, &qword_100CA6638, &unk_100A31460);
                          v1784 = &qword_100CA6640;
                          v1785 = qword_100A32640;
                          v1786 = v1846;
                          break;
                        case 5u:
                          LODWORD(v2266) = 2;
                          v1365 = v2238;
LABEL_303:
                          sub_100003934();
                          sub_10001B350(v1398, v1399, v1400, v2236);
                          sub_100003934();
                          sub_10001B350(v1401, v1402, v1403, v2239);
                          sub_100003934();
                          sub_10001B350(v1404, v1405, v1406, v2240);
                          sub_100003934();
                          sub_10001B350(v1407, v1408, v1409, v2241);
                          sub_10001922C();
                          v1410 = v2248;
                          sub_1000A3C70();
                          v1411 = v2249;
                          v1412 = sub_100071C3C();
                          sub_10001B350(v1412, v1413, v1414, v2072);
                          sub_10012CC38();
                          v1415 = v1981;
                          sub_1000D3CD0(2, 0, 0, v1981, v1978, BYTE1(v1978), BYTE2(v1978), BYTE3(v1978), BYTE4(v1978), BYTE5(v1978), BYTE6(v1978));
                          sub_1000180EC(v1411, &unk_100CB2CF0, &unk_100A2D7F0);
                          sub_10003A0E4();
                          sub_100154038(v1410, v1416);
                          sub_10000E7B0();
                          sub_10001B350(v1417, v1418, v1419, v1365);
                          sub_100003934();
                          sub_10001B350(v1420, v1421, v1422, v2242);
                          sub_10000FA84();
                          v1423 = v1983;
                          sub_1000A3C70();
                          v1424 = v1985;
                          v1425 = sub_100071C3C();
                          sub_10001B350(v1425, v1426, v1427, active);
                          v1428 = sub_10089E844(v1424, v2266, 2, 4, 2, 3, v1313);
                          sub_1000180EC(v1424, &qword_100CA65B8, &unk_100A313D0);
                          v1429 = v1984;
                          *v1984 = v1428;
                          swift_storeEnumTagMultiPayload();
                          sub_10000E7B0();
                          v1433 = sub_1000D3CF4(v1430, v1431, v1432, v1385);
                          type metadata accessor for SearchViewState(v1433);
                          v1434 = v2095;
                          v1435 = sub_100071C3C();
                          sub_10001B350(v1435, v1436, v1437, v1438);
                          v1439 = v2094;
                          v1440 = sub_100024058();
                          sub_10001B350(v1440, v1441, v1442, v1397);
                          v1443 = v2093;
                          sub_100003934();
                          sub_10001B350(v1444, v1445, v1446, v2175);
                          v1447 = v1982;
                          sub_1000519D4();
                          sub_10081B470();
                          sub_1000180EC(v1443, &qword_100CA65F0, &unk_100A5C3F0);
                          sub_1000180EC(v1439, &qword_100CA65F8, &dword_100A31420);
                          sub_1000180EC(v1434, &qword_100CA6600, &unk_100A5C400);
                          sub_1000180EC(v1429, &qword_100CA6608, &unk_100A31430);
                          sub_1000054F0();
                          sub_100154038(v1423, v1448);
                          sub_10000E7B0();
                          sub_10001B350(v1449, v1450, v1451, v2272);
                          v1452 = v2263;
                          v1453 = sub_100005508();
                          sub_10001B350(v1453, v1454, v1455, v2271);
                          sub_100028128();
                          v1980 = v1447;
                          v1981 = v1452;
                          v1456 = sub_100088338();
                          v1457 = v2002;
                          v1458 = v2003;
                          v1459 = v2004;
                          v1460 = v2005;
                          v1461 = v2006;
                          v1463 = sub_1000D2C20(v1456, v1462, v2002, v2003, v2004, v2005, v1415, v2006, v1980, v1981, v1982, v1983, v1984, v1985, v1986, *(&v1986 + 1), v1987, v1988, v1989);
                          sub_100032530(v1463);

                          sub_1000180EC(v1452, &qword_100CA65E8, &unk_100A31410);
                          sub_1000180EC(v1447, &qword_100CA6610, &unk_100A32610);
                          sub_1000180EC(v1461, &qword_100CA6618, &unk_100A31440);
                          sub_1000180EC(v1415, &qword_100CA6620, &unk_100A32620);
                          sub_1000180EC(v1460, &qword_100CA6628, &unk_100A31450);
                          sub_1000180EC(v1459, &qword_100CA6630, &unk_100A32630);
                          sub_1000180EC(v1458, &qword_100CA6638, &unk_100A31460);
                          v1784 = &qword_100CA6640;
                          v1785 = qword_100A32640;
                          v1786 = v1457;
                          break;
                        default:
                          type metadata accessor for NotificationsOptInViewState._Storage();
                          v1875 = swift_allocObject();
                          *(v1875 + 16) = v1396;
                          *(v1875 + 18) = BYTE2(v1396) & 1;
                          *(v1875 + 21) = BYTE5(v1396);
                          *(v1875 + 19) = v1396 >> 24;
                          *(v1875 + 22) = BYTE6(v1396) & 1;
                          v1876 = v2191;
                          sub_100041884(v2191);
                          v1877 = v2174;
                          sub_100003934();
                          sub_10001B350(v1878, v1879, v1880, v2241);
                          sub_10001922C();
                          v1881 = v2248;
                          sub_1000A3C70();
                          v1882 = v2249;
                          v1883 = sub_100071C3C();
                          sub_10001B350(v1883, v1884, v1885, v2072);
                          sub_10012CC38();
                          v1886 = v2162;
                          sub_1000D3CD0(2, 0, 0, v2162, v1978, BYTE1(v1978), BYTE2(v1978), BYTE3(v1978), BYTE4(v1978), BYTE5(v1978), BYTE6(v1978));
                          sub_1000180EC(v1882, &unk_100CB2CF0, &unk_100A2D7F0);
                          sub_10003A0E4();
                          sub_100154038(v1881, v1887);
                          v1888 = sub_100007FB4();
                          sub_10001B350(v1888, v1889, v1890, v2238);
                          v1891 = v2163;
                          sub_100003934();
                          sub_10001B350(v1892, v1893, v1894, v2242);
                          v1895 = v2151;
                          v1896 = sub_100071458();
                          sub_10001B350(v1896, v1897, v1898, v2272);
                          v1899 = v2263;
                          *v2263 = v1875;
                          sub_1000BAE9C();
                          swift_storeEnumTagMultiPayload();
                          sub_10000E7B0();
                          sub_10001B350(v1900, v1901, v1902, v1881);

                          sub_100028128();
                          v1980 = v1895;
                          v1981 = v1899;
                          v1903 = sub_100088338();
                          v1904 = v1876;
                          v1905 = v2190;
                          v1906 = v2177;
                          v1908 = sub_1000D2C20(v1903, v1907, v1904, v2190, v2177, v1877, v1886, v1891, v1980, v1981, v1982, v1983, v1984, v1985, v1986, *(&v1986 + 1), v1987, v1988, v1989);
                          sub_100032530(v1908);

                          sub_1000180EC(v1899, &qword_100CA65E8, &unk_100A31410);
                          sub_1000180EC(v1895, &qword_100CA6610, &unk_100A32610);
                          sub_1000180EC(v1891, &qword_100CA6618, &unk_100A31440);
                          sub_1000180EC(v1886, &qword_100CA6620, &unk_100A32620);
                          sub_1000180EC(v1877, &qword_100CA6628, &unk_100A31450);
                          sub_1000180EC(v1906, &qword_100CA6630, &unk_100A32630);
                          sub_1000180EC(v1905, &qword_100CA6638, &unk_100A31460);
                          v1784 = &qword_100CA6640;
                          v1785 = qword_100A32640;
                          v1786 = v2191;
                          break;
                      }

                      goto LABEL_331;
                    case 5u:
                      v1557 = v2191;
                      sub_100003934();
                      sub_10001B350(v1558, v1559, v1560, v2236);
                      v1561 = v2190;
                      sub_1000B9858(v2190);
                      v1562 = v2174;
                      v1563 = sub_100030348();
                      sub_10001B350(v1563, v1564, v1565, v2241);
                      v1566 = v2162;
                      v1567 = sub_100024058();
                      sub_10001B350(v1567, v1568, v1569, v2238);
                      v1570 = v2163;
                      v1571 = sub_100071C3C();
                      sub_10001B350(v1571, v1572, v1573, v2242);
                      v1574 = v2151;
                      v1575 = sub_100005508();
                      sub_10001B350(v1575, v1576, v1577, v2272);
                      *v708 = 0;
                      v1578 = v2271;
                      swift_storeEnumTagMultiPayload();
                      sub_10000E7B0();
                      sub_10001B350(v1579, v1580, v1581, v1578);
                      sub_100028128();
                      v1976 = v1574;
                      v1977 = v708;
                      v1582 = sub_100088338();
                      v1589 = sub_1000301FC(v1582, v1583, v1557, v1584, v1585, v1586, v1587, v1588, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
                      sub_100032530(v1589);

                      sub_1000180EC(v708, &qword_100CA65E8, &unk_100A31410);
                      sub_1000180EC(v1574, &qword_100CA6610, &unk_100A32610);
                      sub_1000180EC(v1570, &qword_100CA6618, &unk_100A31440);
                      sub_1000180EC(v1566, &qword_100CA6620, &unk_100A32620);
                      sub_1000180EC(v1562, &qword_100CA6628, &unk_100A31450);
                      sub_1000180EC(v1578, &qword_100CA6630, &unk_100A32630);
                      v1590 = v1561;
LABEL_315:
                      sub_1000180EC(v1590, &qword_100CA6638, &unk_100A31460);
                      v1784 = &qword_100CA6640;
                      v1785 = qword_100A32640;
                      v1786 = v1557;
                      goto LABEL_331;
                    case 6u:
                      sub_10000FA84();
                      v1591 = v1988;
                      sub_1000A3C70();
                      v1592 = sub_10081B398();
                      sub_1000054F0();
                      sub_100154038(v1591, v1593);
                      if (v1592)
                      {
                        v1594 = *(v1592 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);

                        v1595 = v1594 ^ 1;
                      }

                      else
                      {
                        v1595 = 1;
                      }

                      sub_100041884(v2191);
                      sub_100003934();
                      sub_10001B350(v1680, v1681, v1682, v2241);
                      sub_100003934();
                      sub_10001B350(v1683, v1684, v1685, v2238);
                      sub_100003934();
                      sub_10001B350(v1686, v1687, v1688, v2242);
                      sub_10000FA84();
                      v1689 = v2018;
                      sub_1000A3C70();
                      v1690 = v1996;
                      v1691 = sub_100071C3C();
                      sub_10001B350(v1691, v1692, v1693, active);
                      v1694 = sub_10089E844(v1690, 3, 2, 4, v1595 & 1, 3, v1313);
                      sub_1000180EC(v1690, &qword_100CA65B8, &unk_100A313D0);
                      v1695 = v2019;
                      *v2019 = v1694;
                      v1696 = v2268;
                      swift_storeEnumTagMultiPayload();
                      sub_10000E7B0();
                      v1700 = sub_1000D3CF4(v1697, v1698, v1699, v1696);
                      type metadata accessor for SearchViewState(v1700);
                      v1701 = v2095;
                      sub_100003934();
                      sub_10001B350(v1702, v1703, v1704, v1705);
                      v1706 = v2094;
                      v1707 = sub_100030348();
                      sub_10001B350(v1707, v1708, v1709, v2243);
                      v1710 = v2093;
                      v1711 = sub_100071C3C();
                      sub_10001B350(v1711, v1712, v1713, v2175);
                      v1714 = v2151;
                      sub_1000519D4();
                      sub_10081B470();
                      sub_1000180EC(v1710, &qword_100CA65F0, &unk_100A5C3F0);
                      sub_1000180EC(v1706, &qword_100CA65F8, &dword_100A31420);
                      sub_1000180EC(v1701, &qword_100CA6600, &unk_100A5C400);
                      sub_1000180EC(v1695, &qword_100CA6608, &unk_100A31430);
                      sub_1000054F0();
                      sub_100154038(v1689, v1715);
                      sub_10000E7B0();
                      sub_10001B350(v1716, v1717, v1718, v2272);
                      v1719 = sub_100071458();
                      sub_10001B350(v1719, v1720, v1721, v2271);
                      sub_100028128();
                      v1976 = v1714;
                      v1977 = v708;
                      v1722 = sub_100088338();
                      v1723 = v2191;
                      v1724 = v2190;
                      v1725 = v2177;
                      v1726 = v2174;
                      v1727 = v2162;
                      v1728 = v2163;
                      v1730 = sub_1000D2C20(v1722, v1729, v2191, v2190, v2177, v2174, v2162, v2163, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
                      sub_100032530(v1730);

                      sub_1000180EC(v708, &qword_100CA65E8, &unk_100A31410);
                      sub_1000180EC(v1714, &qword_100CA6610, &unk_100A32610);
                      sub_1000180EC(v1728, &qword_100CA6618, &unk_100A31440);
                      sub_1000180EC(v1727, &qword_100CA6620, &unk_100A32620);
                      sub_1000180EC(v1726, &qword_100CA6628, &unk_100A31450);
                      sub_1000180EC(v1725, &qword_100CA6630, &unk_100A32630);
                      sub_1000180EC(v1724, &qword_100CA6638, &unk_100A31460);
                      v1784 = &qword_100CA6640;
                      v1785 = qword_100A32640;
                      v1786 = v1723;
                      goto LABEL_331;
                    default:
                      (*(v2247 + 32))(v2034, v2178, v2255);
                      v2274[0] = *(v2273 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 8);

                      v1323 = Location.id.getter();
                      sub_1006A0DC8(__src, v1323, v1324);

                      sub_100003934();
                      sub_10001B350(v1325, v1326, v1327, v2236);
                      sub_100003934();
                      sub_10001B350(v1328, v1329, v1330, v2239);
                      sub_100003934();
                      sub_10001B350(v1331, v1332, v1333, v2240);
                      sub_100003934();
                      sub_10001B350(v1334, v1335, v1336, v2241);
                      sub_10001922C();
                      v1337 = v1992;
                      sub_1000A3C70();
                      v1338 = v2274[0];
                      v1339 = sub_100005508();
                      v1340 = v2072;
                      sub_10001B350(v1339, v1341, v1342, v2072);
                      v1343 = *v1337;
                      LODWORD(v2270) = v1337[16];
                      LODWORD(v2269) = v1337[17];
                      LODWORD(v2268) = v1337[18];
                      LODWORD(v2267) = v1337[19];
                      LODWORD(v2266) = v1337[20];
                      v1344 = v1993;
                      sub_100095588();
                      v1345 = sub_1000162A4();
                      sub_1000038B4(v1345, v1346, v1340);
                      if (v632)
                      {
                        v1640 = v2238;
                        v1639 = v1998;
                        (*(v1998 + 16))(v2038, &v1337[v2238[11]], v1340);
                        v1347 = sub_1000162A4();
                        v1349 = v1340;
                        v1350 = sub_100024D10(v1347, v1348, v1340);

                        v1641 = v1349;
                        v1642 = v1338;
                        if (v1350 != 1)
                        {
                          sub_1000180EC(v1344, &unk_100CB2CF0, &unk_100A2D7F0);
                          v1642 = v1338;
                          v1641 = v1349;
                        }
                      }

                      else
                      {
                        v1639 = v1998;
                        (*(v1998 + 32))(v2038, v1344, v1340);

                        v1640 = v2238;
                        v1641 = v1340;
                        v1642 = v1338;
                      }

                      v1643 = v1640[11];
                      LODWORD(v2265) = v1337[v1640[12]];
                      v1644 = v1337[v1640[13]];
                      LODWORD(v2264) = v1337[v1640[14]];
                      v1645 = v1640[16];
                      LODWORD(v2261) = v1337[v1640[15]];
                      LODWORD(v2262) = v1337[v1645];
                      v1646 = v1989;
                      *v1989 = v1343;
                      v1647 = v1337[v1640[17]];
                      v1648 = v1337[v1640[18]];
                      *(v1646 + 1) = v1642;
                      v1646[16] = v2270;
                      v1646[17] = v2269;
                      v1646[18] = v2268;
                      v1646[19] = v2267;
                      v1646[20] = v2266;
                      (*(v1639 + 32))(&v1646[v1643], v2038, v1641);

                      v1646[v1640[12]] = v2265;
                      v1646[v1640[13]] = v1644;
                      v1646[v1640[14]] = v2264;
                      v1646[v1640[15]] = v2261;
                      v1646[v1640[16]] = v2262;
                      v1646[v1640[17]] = v1647;
                      v1646[v1640[18]] = v1648;
                      sub_1000180EC(v2032, &unk_100CB2CF0, &unk_100A2D7F0);
                      sub_10003A0E4();
                      sub_100154038(v1337, v1649);
                      v1650 = sub_100007FB4();
                      sub_10001B350(v1650, v1651, v1652, v1640);
                      v1653 = v2163;
                      v1654 = sub_100024058();
                      sub_10001B350(v1654, v1655, v1656, v2242);
                      v1657 = v2151;
                      v1658 = sub_100071C3C();
                      sub_10001B350(v1658, v1659, v1660, v2272);
                      v1661 = v2263;
                      v1662 = sub_100005508();
                      sub_10001B350(v1662, v1663, v1664, v2271);
                      sub_100028128();
                      v1976 = v1657;
                      v1977 = v1661;
                      v1665 = sub_100088338();
                      v1666 = v2021;
                      v1667 = v2023;
                      v1668 = v2025;
                      v1669 = v2027;
                      v1671 = sub_1000D2C20(v1665, v1670, v2021, v2023, v2025, v2027, v1646, v1653, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
                      sub_100032530(v1671);

                      sub_1000180EC(v1661, &qword_100CA65E8, &unk_100A31410);
                      sub_1000180EC(v1657, &qword_100CA6610, &unk_100A32610);
                      sub_1000180EC(v1653, &qword_100CA6618, &unk_100A31440);
                      sub_1000180EC(v1646, &qword_100CA6620, &unk_100A32620);
                      sub_1000180EC(v1669, &qword_100CA6628, &unk_100A31450);
                      sub_1000180EC(v1668, &qword_100CA6630, &unk_100A32630);
                      sub_1000180EC(v1667, &qword_100CA6638, &unk_100A31460);
                      sub_1000180EC(v1666, &qword_100CA6640, qword_100A32640);
                      sub_1000B9110();
                      v1672(v2034, v2255);
                      return v2273;
                  }

                  goto LABEL_331;
                default:

                  sub_100003B54();
                  v1184 = v2257;
                  goto LABEL_290;
              }
            }

            sub_1000054F0();
            sub_100154038(v1310, v1312);
            v1184 = sub_1000AF4CC();
LABEL_290:
            sub_100154038(v1184, v1183);
LABEL_292:

            return v2273;
          }

          sub_10001E6E0();
          v2270 = v1222;
          sub_100154038(v1048, v1223);
          v1224 = v2235;
          sub_100299588(v2062);
          sub_100003934();
          sub_10001B350(v1225, v1226, v1227, v2236);
          sub_100003934();
          sub_10001B350(v1228, v1229, v1230, v2239);
          sub_100003934();
          sub_10001B350(v1231, v1232, v1233, v2240);
          sub_100003934();
          sub_10001B350(v1234, v1235, v1236, v2241);
          sub_100003934();
          sub_10001B350(v1237, v1238, v1239, v2238);
          sub_100003934();
          sub_10001B350(v1240, v1241, v1242, v2242);
          sub_100003934();
          v1246 = sub_1000D3CF4(v1243, v1244, v1245, v2272);
          type metadata accessor for PreviewLocation(v1246);
          v1247 = v2215;
          v1248 = sub_100071458();
          sub_10001B350(v1248, v1249, v1250, v1251);
          sub_10002FD78();
          v1252 = v2213;
          sub_1000A3C70();
          sub_10000E7B0();
          v1256 = sub_1000D3CF4(v1253, v1254, v1255, v2231);
          type metadata accessor for SelectedSearchResult(v1256);
          v1257 = v2214;
          v1258 = sub_100030348();
          sub_10001B350(v1258, v1259, v1260, v1261);
          v1262 = v2014;
          sub_10043DB64(v1247, v1252, v1257, v2014);
          sub_1000180EC(v1257, &qword_100CA65C0, &unk_100A313E0);
          sub_1000180EC(v1252, &qword_100CA65D0, &unk_100A313F0);
          sub_1000180EC(v1247, &qword_100CA65C8, &unk_100A31670);
          sub_100025070();
          sub_100154038(v2062, v1263);
          sub_1000180EC(v2099, &unk_100CB2CF0, &unk_100A2D7F0);
          sub_100154038(v1046, v2270);
          sub_100007F9C();
          sub_100154038(v1224, v1264);
          sub_100040D78();
          sub_10000E7B0();
          sub_10001B350(v1265, v1266, v1267, v1247);
          sub_1000141A4();
          sub_1000E59BC();
          v1268 = v2017;
          sub_1000A3C70();
          v1269 = v2015;
          sub_100051BBC();
          v1270 = sub_1000131C4();
          sub_1000038B4(v1270, v1271, v1247);
          if (v632)
          {
            sub_1000180EC(v1269, &qword_100CA65E8, &unk_100A31410);
          }

          else
          {
            sub_100003B54();
            sub_100154038(v1268, v1276);
            sub_10001BBB8();
            sub_100021CEC();
            sub_1000D37D4();
          }

          v1278 = v2010;
          v1277 = v2011;
          v1279 = v2007;
          v1280 = v2008;
          sub_10001BBB8();
          sub_1000D37D4();
          sub_10029C474();
          sub_100051BBC();
          v1281 = sub_1000182B8();
          v1282 = v2236;
          sub_1000038B4(v1281, v1283, v2236);
          v2271 = v1262;
          if (v632)
          {
            sub_10003145C();
            sub_1000C8930(v1284);
            sub_1000A3C70();
            v1285 = sub_1000182B8();
            v1287 = sub_100024D10(v1285, v1286, v1282);

            if (v1287 != 1)
            {
              sub_1000180EC(v1279, &qword_100CA6640, qword_100A32640);
            }
          }

          else
          {
            sub_100051D04();
            sub_1000D37D4();
          }

          sub_100051BBC();
          sub_100003A40(v1280);
          if (v632)
          {
            v1288 = v1280;
            sub_1000887FC(v2273 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
            sub_100037964();
            sub_1000A3C70();
            sub_100003A40(v1280);
            v1289 = v2016;
            v1290 = v2009;
            if (!v632)
            {
              sub_1000180EC(v1288, &qword_100CA6638, &unk_100A31460);
            }
          }

          else
          {
            sub_10000E798();
            sub_1000D37D4();
            v1289 = v2016;
            v1290 = v2009;
          }

          sub_100051BBC();
          sub_100005404(v1290);
          if (v632)
          {
            sub_100016724();
            sub_1000C8930(v1291);
            sub_1000A3C70();
            sub_100005404(v1290);
            if (!v632)
            {
              sub_1000180EC(v1290, &qword_100CA6630, &unk_100A32630);
            }
          }

          else
          {
            sub_10002C530();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1292 = sub_1000162B0();
          sub_10001627C(v1292, v1293);
          if (v632)
          {
            sub_1000205A4();
            sub_1000C8930(v1294);
            sub_1000A3C70();
            sub_100005404(v1278);
            if (!v632)
            {
              sub_1000180EC(v1278, &qword_100CA6628, &unk_100A31450);
            }
          }

          else
          {
            sub_10000C7FC();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1295 = sub_1000175DC();
          sub_10001627C(v1295, v1296);
          if (v632)
          {
            sub_10001922C();
            sub_1000C8930(v1297);
            sub_1000A3C70();
            sub_100005404(v1277);
            v1298 = v2012;
            if (!v632)
            {
              sub_1000180EC(v1277, &qword_100CA6620, &unk_100A32620);
            }
          }

          else
          {
            sub_1000244D8();
            sub_1000D37D4();
            v1298 = v2012;
          }

          sub_100051BBC();
          v1299 = sub_1000162A4();
          sub_10001627C(v1299, v1300);
          if (v632)
          {
            sub_10003C26C();
            sub_1000C8930(v1301);
            sub_1000A3C70();
            sub_100005404(v1298);
            if (!v632)
            {
              sub_1000180EC(v1298, &qword_100CA6618, &unk_100A31440);
            }
          }

          else
          {
            sub_1000175C4();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1302 = sub_100016298();
          sub_1000038B4(v1302, v1303, v2272);
          if (v632)
          {
            sub_10000FA84();
            sub_1000A3C70();
            v1304 = sub_100016298();
            sub_1000038B4(v1304, v1305, v2272);
            if (!v632)
            {
              sub_1000180EC(v1289, &qword_100CA6610, &unk_100A32610);
            }
          }

          else
          {
            sub_1000693F0();
            sub_100031474();
            sub_1000D37D4();
          }

          sub_10001BBB8();
          sub_10019236C();
          sub_1000C8308();
          sub_1000E1540();
          v1306 = sub_100040C78();
          sub_100003B6C(v1306);
          sub_1000113AC();
          v1172 = sub_100021CDC();
          v1174 = v2064;
          v1175 = v2066;
          v1176 = v2067;
          v1177 = v2068;
          v1178 = v2069;
          v1179 = v2071;
          break;
        case 2u:
          v979 = sub_10022C350(&qword_100CA6648, &unk_100A31470);
          sub_1000C8FA4(v715 + *(v979 + 48));
          sub_1000D37D4();
          sub_1001924A4();
          v980 = v2065;
          sub_1000A3C70();
          v981 = *(sub_10022C350(&qword_100CA6650, &unk_100A3FAB0) + 48);
          v982 = v2247;
          v983 = v2120;
          v984 = v2255;
          (*(v2247 + 32))(v2120, v980, v2255);
          v985 = v2166;
          v986 = v980 + v981;
          v987 = v2127;
          v988 = v2167;
          (*(v2166 + 32))(v2127, v986, v2167);
          v989 = *(v982 + 16);
          v990 = v2070;
          v989(v2070, v983, v984);
          v991 = v2098;
          (*(v985 + 16))(v990 + *(v2098 + 20), v987, v988);
          sub_100171190(v990 + *(v991 + 24));
          v992 = v990;
          v993 = v2063;
          sub_1000A3C70();
          v994 = v2231;
          swift_storeEnumTagMultiPayload();
          sub_100003934();
          sub_10001B350(v995, v996, v997, v2236);
          sub_100003934();
          sub_10001B350(v998, v999, v1000, v2239);
          sub_100003934();
          sub_10001B350(v1001, v1002, v1003, v2240);
          sub_100003934();
          sub_10001B350(v1004, v1005, v1006, v2241);
          sub_100003934();
          sub_10001B350(v1007, v1008, v1009, v2238);
          sub_100003934();
          sub_10001B350(v1010, v1011, v1012, v2242);
          sub_100003934();
          v1016 = sub_1000D3CF4(v1013, v1014, v1015, v2272);
          type metadata accessor for PreviewLocation(v1016);
          v1017 = v2215;
          sub_100003934();
          sub_10001B350(v1018, v1019, v1020, v1021);
          sub_10002FD78();
          v1022 = v2213;
          sub_1000A3C70();
          sub_10000E7B0();
          v1026 = sub_1000D3CF4(v1023, v1024, v1025, v994);
          type metadata accessor for SelectedSearchResult(v1026);
          v1027 = v2214;
          v1028 = sub_100030348();
          sub_10001B350(v1028, v1029, v1030, v1031);
          v1032 = v2056;
          v1033 = v2235;
          sub_10043DB64(v1017, v1022, v1027, v2056);
          sub_1000180EC(v1027, &qword_100CA65C0, &unk_100A313E0);
          sub_1000180EC(v1022, &qword_100CA65D0, &unk_100A313F0);
          sub_1000180EC(v1017, &qword_100CA65C8, &unk_100A31670);
          sub_100025070();
          sub_100154038(v993, v1034);
          sub_100154038(v992, type metadata accessor for HomeAndWorkRefinementViewState);
          (*(v2166 + 8))(v2127, v2167);
          sub_1000B9110();
          v1035(v2120, v2255);
          sub_1000C86CC();
          sub_100154038(v2125, v1036);
          sub_100007F9C();
          sub_100154038(v1033, v1037);
          sub_100040D78();
          sub_10000E7B0();
          sub_10001B350(v1038, v1039, v1040, v1022);
          sub_1000141A4();
          sub_1000E59BC();
          v1041 = v2060;
          sub_1000A3C70();
          v1042 = v2057;
          sub_100051BBC();
          v1043 = sub_1000131C4();
          sub_1000038B4(v1043, v1044, v1022);
          if (v632)
          {
            sub_1000180EC(v1042, &qword_100CA65E8, &unk_100A31410);
          }

          else
          {
            sub_100003B54();
            sub_100154038(v1041, v1192);
            sub_10001BBB8();
            sub_100021CEC();
            sub_1000D37D4();
          }

          v1193 = v2052;
          v1194 = v2050;
          v1195 = v2044;
          v1196 = v2048;
          sub_10001BBB8();
          sub_1000D37D4();
          sub_10029C474();
          sub_100051BBC();
          v1197 = sub_1000182B8();
          v1198 = v2236;
          sub_1000038B4(v1197, v1199, v2236);
          if (v632)
          {
            sub_10003145C();
            sub_1000C8930(v1200);
            sub_1000A3C70();
            v1201 = sub_1000182B8();
            v1203 = sub_100024D10(v1201, v1202, v1198);

            if (v1203 != 1)
            {
              sub_1000180EC(v1195, &qword_100CA6640, qword_100A32640);
            }
          }

          else
          {
            sub_100051D04();
            sub_1000D37D4();
          }

          v1204 = v2046;
          sub_100051BBC();
          sub_100003A40(v1204);
          v2271 = v1032;
          if (v632)
          {
            sub_1000887FC(v2273 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
            sub_100037964();
            sub_1000A3C70();
            sub_100003A40(v1204);
            v1205 = v2058;
            if (!v632)
            {
              sub_1000180EC(v1204, &qword_100CA6638, &unk_100A31460);
            }
          }

          else
          {
            sub_10000E798();
            sub_1000D37D4();
            v1205 = v2058;
          }

          sub_100051BBC();
          sub_100005404(v1196);
          if (v632)
          {
            sub_100016724();
            sub_1000C8930(v1206);
            sub_1000A3C70();
            sub_100005404(v1196);
            v1207 = v2054;
            if (!v632)
            {
              sub_1000180EC(v1196, &qword_100CA6630, &unk_100A32630);
            }
          }

          else
          {
            sub_10002C530();
            sub_1000D37D4();
            v1207 = v2054;
          }

          sub_100051BBC();
          v1208 = sub_1000162B0();
          sub_10001627C(v1208, v1209);
          if (v632)
          {
            sub_1000205A4();
            sub_1000C8930(v1210);
            sub_1000A3C70();
            sub_100005404(v1194);
            if (!v632)
            {
              sub_1000180EC(v1194, &qword_100CA6628, &unk_100A31450);
            }
          }

          else
          {
            sub_10000C7FC();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1211 = sub_1000175DC();
          sub_10001627C(v1211, v1212);
          if (v632)
          {
            sub_10001922C();
            sub_1000C8930(v1213);
            sub_1000A3C70();
            sub_100005404(v1193);
            if (!v632)
            {
              sub_1000180EC(v1193, &qword_100CA6620, &unk_100A32620);
            }
          }

          else
          {
            sub_1000244D8();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1214 = sub_1000162A4();
          sub_10001627C(v1214, v1215);
          if (v632)
          {
            sub_10003C26C();
            sub_1000C8930(v1216);
            sub_1000A3C70();
            sub_100005404(v1207);
            if (!v632)
            {
              sub_1000180EC(v1207, &qword_100CA6618, &unk_100A31440);
            }
          }

          else
          {
            sub_1000175C4();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1217 = sub_100016298();
          sub_1000038B4(v1217, v1218, v2272);
          if (v632)
          {
            sub_10000FA84();
            sub_1000A3C70();
            v1219 = sub_100016298();
            sub_1000038B4(v1219, v1220, v2272);
            if (!v632)
            {
              sub_1000180EC(v1205, &qword_100CA6610, &unk_100A32610);
            }
          }

          else
          {
            sub_1000693F0();
            sub_100031474();
            sub_1000D37D4();
          }

          sub_10001BBB8();
          sub_10019236C();
          sub_1000C8308();
          sub_1000E1540();
          v1221 = sub_100040C78();
          sub_100003B6C(v1221);
          sub_1000113AC();
          v1172 = sub_100021CDC();
          v1174 = v2122;
          v1175 = v2123;
          v1176 = v2124;
          v1177 = v2126;
          v1178 = v2128;
          v1179 = v2129;
          goto LABEL_275;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
          sub_100007F9C();
          v712 = v2235;
          goto LABEL_53;
        default:
          sub_100007F9C();
          sub_100154038(v2235, v1045);
          (*(v2247 + 8))(v715, v2255);
          goto LABEL_283;
      }

      goto LABEL_275;
  }

  sub_10007465C();
  v714 = v2176;
  sub_1000A3C70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10022C350(&qword_100CA6658, &unk_100A31480);
      sub_100049614();
      sub_1000D37D4();
      v1272 = v2020;
      sub_100051BBC();
      sub_1000141A4();
      sub_1000E59BC();
      v1273 = v2013;
      sub_1000A3C70();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1000180EC(v1272, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_100003B54();
        sub_100154038(v1273, v1308);
        goto LABEL_277;
      }

      sub_100005404(v1273);
      if (v632)
      {
        sub_1000180EC(v1272, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_1000180EC(v1273, &qword_100CA65E0, &unk_100A31400);
LABEL_277:
        sub_100049614();
        v1309 = v2001;
        sub_1000D37D4();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*(v2164 + 8))(v1309, v2165);
        }

        else
        {
          sub_10001E6E0();
          v1275 = v1309;
LABEL_281:
          sub_100154038(v1275, v1274);
        }

LABEL_282:
        sub_1000180EC(v710, &qword_100CA65E0, &unk_100A31400);
        goto LABEL_283;
      }

      sub_100030330();
      sub_1000D37D4();
      type metadata accessor for PreviewLocation(0);
      v1731 = v2215;
      v1732 = sub_100071C3C();
      sub_10001B350(v1732, v1733, v1734, v1735);
      v1736 = v2213;
      sub_100299588(v2213);
      v1737 = sub_100007FB4();
      v1740 = sub_1000D3CF4(v1737, v1738, v1739, v2231);
      type metadata accessor for SelectedSearchResult(v1740);
      v1741 = v2271;
      v1742 = v2214;
      v1743 = sub_100024058();
      sub_10001B350(v1743, v1744, v1745, v1746);
      v1747 = v1978;
      sub_10043DB64(v1731, v1736, v1742, v1978);
      sub_1000180EC(v1742, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v1736, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v1731, &qword_100CA65C8, &unk_100A31670);
      sub_100003934();
      sub_10001B350(v1748, v1749, v1750, v2236);
      v1751 = v2190;
      sub_1000B9858(v2190);
      v1752 = v2174;
      v1753 = sub_100030348();
      sub_10001B350(v1753, v1754, v1755, v2241);
      v1756 = v2162;
      v1757 = sub_100024058();
      sub_10001B350(v1757, v1758, v1759, v2238);
      v1760 = v2163;
      v1761 = sub_100071C3C();
      sub_10001B350(v1761, v1762, v1763, v2242);
      v1764 = v2151;
      v1765 = sub_100005508();
      sub_10001B350(v1765, v1766, v1767, v2272);
      sub_1000A3C70();
      sub_10000E7B0();
      sub_10001B350(v1768, v1769, v1770, v713);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v1771, v1772, v1773, v1741);
      sub_100028128();
      v1976 = v1764;
      v1977 = v708;
      v1774 = sub_100088338();
      v1775 = v2191;
      v1782 = sub_1000301FC(v1774, v1776, v2191, v1777, v1778, v1779, v1780, v1781, v1976, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986);
      sub_100032530(v1782);
      sub_1000180EC(v708, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1764, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1760, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1756, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1752, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1741, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1751, &qword_100CA6638, &unk_100A31460);
      sub_1000180EC(v1775, &qword_100CA6640, qword_100A32640);
      sub_100154038(v1747, type metadata accessor for LocationPreviewViewState);
      sub_100154038(v1986, type metadata accessor for LocationPreviewViewState);
      sub_1000180EC(v2020, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_10001E6E0();
      sub_100154038(v2092, v1783);
      v1784 = &qword_100CA65E0;
      v1785 = &unk_100A31400;
      v1786 = v2262;
LABEL_331:
      sub_1000180EC(v1786, v1784, v1785);
      return v2273;
    case 2u:
      sub_1000C86CC();
      v1275 = v714;
      goto LABEL_281;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
      goto LABEL_282;
    default:
      (*(v2247 + 8))(v714, v2255);
      goto LABEL_282;
  }
}