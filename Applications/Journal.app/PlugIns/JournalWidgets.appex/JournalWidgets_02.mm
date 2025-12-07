unint64_t sub_10003BB54()
{
  result = qword_1000863B8;
  if (!qword_1000863B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000863B8);
  }

  return result;
}

unint64_t sub_10003BBA8()
{
  result = qword_1000863C0;
  if (!qword_1000863C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000863C0);
  }

  return result;
}

unint64_t sub_10003BBFC()
{
  result = qword_1000863C8;
  if (!qword_1000863C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000863C8);
  }

  return result;
}

uint64_t sub_10003BCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v329 = a7;
  v330 = a6;
  v342 = a5;
  v343 = a3;
  v339 = a1;
  v340 = a4;
  v307 = a2;
  v331 = a8;
  v333 = 0;
  v316 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  v8 = __chkstk_darwin(v316);
  v315 = &v294 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v314 = &v294 - v10;
  v11 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v326 = *(v11 - 8);
  v327 = v11;
  __chkstk_darwin(v11);
  v317 = &v294 - v12;
  v13 = sub_1000021D4(&qword_1000864C0, &qword_1000699F8);
  v14 = __chkstk_darwin(v13 - 8);
  v324 = &v294 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v323 = &v294 - v16;
  v17 = sub_1000021D4(&qword_1000864C8, &qword_100069A00);
  __chkstk_darwin(v17 - 8);
  v328 = &v294 - v18;
  v19 = sub_100063644();
  v309 = *(v19 - 8);
  v310 = v19;
  v20 = __chkstk_darwin(v19);
  v302 = &v294 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v306 = &v294 - v22;
  v332 = sub_100063574();
  v318 = *(v332 - 8);
  v23 = __chkstk_darwin(v332);
  v325 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v301 = &v294 - v26;
  __chkstk_darwin(v25);
  v305 = &v294 - v27;
  v308 = sub_1000635E4();
  v311 = *(v308 - 8);
  __chkstk_darwin(v308);
  v313 = &v294 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  v322 = *(v334 - 8);
  v29 = __chkstk_darwin(v334);
  v335 = &v294 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v336 = &v294 - v32;
  v33 = __chkstk_darwin(v31);
  v300 = &v294 - v34;
  v35 = __chkstk_darwin(v33);
  v304 = &v294 - v36;
  __chkstk_darwin(v35);
  v38 = &v294 - v37;
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  v40 = *(started - 8);
  v41 = __chkstk_darwin(started);
  v299 = &v294 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v296 = &v294 - v44;
  v45 = __chkstk_darwin(v43);
  v303 = &v294 - v46;
  v47 = __chkstk_darwin(v45);
  v297 = &v294 - v48;
  v49 = __chkstk_darwin(v47);
  v298 = &v294 - v50;
  v51 = __chkstk_darwin(v49);
  v312 = &v294 - v52;
  __chkstk_darwin(v51);
  v54 = &v294 - v53;
  v55 = sub_1000021D4(&qword_100084E70, &unk_100065B90);
  v56 = __chkstk_darwin(v55 - 8);
  v319 = &v294 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v320 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v321 = &v294 - v61;
  v62 = __chkstk_darwin(v60);
  v64 = &v294 - v63;
  v65 = __chkstk_darwin(v62);
  v67 = &v294 - v66;
  (v342)(v65);
  v341 = v67;
  sub_100016718(v67, v64, &qword_100084E70, &unk_100065B90);
  v68 = *(v40 + 48);
  v342 = started;
  v69 = v340;
  v337 = v68;
  v338 = v40 + 48;
  if (v68(v64, 1, started) == 1)
  {
    sub_10000494C(v64, &qword_100084E70, &unk_100065B90);
    v70 = v332;
    goto LABEL_9;
  }

  sub_1000481A0(v64, v54);
  sub_100016718(v54, v38, &qword_100084E60, &unk_100065B80);
  sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
  v70 = v332;
  if (sub_100064264())
  {
    v71 = sub_100064254();
    sub_10000494C(v38, &qword_100084E60, &unk_100065B80);
    if (v71)
    {
      v72 = v308;
      (*(v311 + 16))(v313, v307, v308);
      v73 = v342;
      v74 = &v54[*(v342 + 28)];
      v75 = *(v74 + 2);
      v385 = *(v74 + 1);
      v386 = v75;
      v387 = v74[48];
      v384 = *v74;
      sub_100048204(&v384, &v380);
      sub_100041194(&v384, v339, &v355);
      sub_100048260(&v384);
      v76 = v357;
      if (v357)
      {
        v77 = v359;
        v78 = v312;
        sub_10000C8CC(v54, v312);
        sub_100048100(v54);
        sub_100016718(v78, v54, &qword_100084E60, &unk_100065B80);
        v79 = v78 + v73[5];
        v80 = *(v79 + 16);
        v378 = *(v79 + 32);
        v379 = *(v79 + 48);
        v81 = *v79;
        v377 = v80;
        v376 = v81;
        v82 = v78 + v73[6];
        v83 = *(v82 + 32);
        v381 = *(v82 + 16);
        v382 = v83;
        v383 = *(v82 + 48);
        v380 = *v82;
        sub_100048204(&v376, &v368);
        sub_100048204(&v380, &v368);
        sub_100048100(v78);
        v84 = &v54[v73[5]];
        v85 = v377;
        *v84 = v376;
        *(v84 + 1) = v85;
        *(v84 + 2) = v378;
        v84[48] = v379;
        v86 = &v54[v73[6]];
        v87 = v381;
        *v86 = v380;
        *(v86 + 1) = v87;
        *(v86 + 2) = v382;
        v86[48] = v383;
        *v74 = v355;
        *(v74 + 2) = v356;
        *(v74 + 3) = v76;
        *(v74 + 2) = v358;
        v88 = v77;
        v74[48] = v77;
      }

      else
      {
        v88 = v387;
        v78 = v312;
      }

      v194 = &v54[v73[5]];
      v195 = *(v194 + 1);
      v380 = *v194;
      v381 = v195;
      v382 = *(v194 + 2);
      v383 = v194[48];
      sub_100048204(&v380, &v376);
      sub_100041194(&v380, v339, &v360);
      sub_100048260(&v380);
      v196 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        sub_1000481A0(v54, v78);
        sub_100016718(v78, v54, &qword_100084E60, &unk_100065B80);
        v197 = v78 + v73[6];
        v198 = *(v197 + 32);
        v369 = *(v197 + 16);
        v370 = v198;
        v371 = *(v197 + 48);
        v368 = *v197;
        v199 = v78 + v73[7];
        v200 = *(v199 + 16);
        v378 = *(v199 + 32);
        v379 = *(v199 + 48);
        v201 = *v199;
        v377 = v200;
        v376 = v201;
        sub_100048204(&v368, &v364);
        sub_100048204(&v376, &v364);
        sub_100048100(v78);
        *v194 = v360;
        *(v194 + 2) = v361;
        *(v194 + 3) = v196;
        *(v194 + 2) = v362;
        v194[48] = v363;
        v202 = &v54[v73[6]];
        v203 = v369;
        *v202 = v368;
        *(v202 + 1) = v203;
        *(v202 + 2) = v370;
        v202[48] = v371;
        v88 = v379;
        v204 = v377;
        *v74 = v376;
        *(v74 + 1) = v204;
        *(v74 + 2) = v378;
        v74[48] = v379;
      }

      v205 = &v54[v73[6]];
      v206 = *(v205 + 1);
      v376 = *v205;
      v377 = v206;
      v378 = *(v205 + 2);
      v379 = v205[48];
      sub_100048204(&v376, &v368);
      v207 = v313;
      sub_100041194(&v376, v339, &v364);
      sub_100048260(&v376);
      (*(v311 + 8))(v207, v72);
      v208 = *(&v365 + 1);
      if (*(&v365 + 1))
      {
        v209 = v312;
        sub_1000481A0(v54, v312);
        sub_100016718(v209, v54, &qword_100084E60, &unk_100065B80);
        v210 = v209 + v73[5];
        v211 = *(v210 + 32);
        v351 = *(v210 + 16);
        v352 = v211;
        v353 = *(v210 + 48);
        v350 = *v210;
        v212 = v209 + v73[7];
        v213 = *(v212 + 32);
        v369 = *(v212 + 16);
        v370 = v213;
        v371 = *(v212 + 48);
        v368 = *v212;
        sub_100048204(&v350, &v346);
        sub_100048204(&v368, &v346);
        sub_100048100(v209);
        v214 = v351;
        *v194 = v350;
        *(v194 + 1) = v214;
        *(v194 + 2) = v352;
        v194[48] = v353;
        v215 = v365;
        *v205 = v364;
        *(v205 + 2) = v215;
        *(v205 + 3) = v208;
        *(v205 + 2) = v366;
        v205[48] = v367;
        LOBYTE(v215) = v371;
        v74[48] = v371;
        v216 = v370;
        *(v74 + 1) = v369;
        *(v74 + 2) = v216;
        *v74 = v368;
        v218 = v309;
        v217 = v310;
        if ((v215 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v218 = v309;
        v217 = v310;
        v209 = v312;
        if ((v88 & 1) == 0)
        {
LABEL_57:
          swift_beginAccess();
          v231 = v54[v73[5] + 48];
          v295 = v54;
          if (v231 == 1)
          {
            v232 = v303;
            sub_10000C8CC(v54, v303);
            v233 = v305;
            (*(v318 + 16))(v305, v340, v70);
            v234 = v306;
            v235 = v217;
            (*(v218 + 16))(v306, v343, v217);
            sub_100016718(v232, v304, &qword_100084E60, &unk_100065B80);
            v236 = &v54[v73[5]];
            v237 = *(v236 + 1);
            v375[2] = *(v236 + 2);
            v375[0] = *v236;
            v375[1] = v237;
            v238 = v339;
            swift_bridgeObjectRetain_n();
            sub_10000B264(v375, &v350);
            v239 = sub_1000471A0(v238, v233, v234, 1);
            sub_10000B264(v375, &v350);
            v240 = v333;
            v241 = sub_10004686C(v239, v375);
            v333 = v240;
            sub_1000480AC(v375);
            if (!*(v241 + 16))
            {
              goto LABEL_75;
            }

            v242 = sub_1000643E4();
            v243 = *(v241 + 16);
            if (!v243)
            {
LABEL_73:
              __break(1u);
              goto LABEL_74;
            }

            v244 = *(v241 + 36);
            v245 = sub_100040DB8(v243);
            v246 = sub_10003DE30(v242, v244, 0, v245, v241);
            v248 = v247;
            v250 = v249;
            sub_10003DF68(v246, v247, v241, &v372);
            sub_1000480AC(v375);
            sub_1000480A0(v246, v248, v250 & 1);

            v251 = v303;
            v252 = (v303 + v73[6]);
            v253 = v252[1];
            v346 = *v252;
            v347 = v253;
            v348 = v252[2];
            v349 = *(v252 + 48);
            sub_100048204(&v346, &v350);
            swift_bridgeObjectRelease_n();
            (*(v318 + 8))(v305, v70);
            (*(v218 + 8))(v306, v235);
            v254 = v251 + v73[7];
            v255 = *(v254 + 16);
            v350 = *v254;
            v351 = v255;
            v352 = *(v254 + 32);
            v353 = *(v254 + 48);
            sub_100048204(&v350, v344);
            sub_100048100(v251);
            v256 = v297;
            sub_100015F0C(v304, v297, &qword_100084E60, &unk_100065B80);
            v257 = v256 + v73[5];
            v258 = v373;
            *v257 = v372;
            *(v257 + 16) = v258;
            *(v257 + 32) = v374;
            *(v257 + 48) = 0;
            v259 = v256 + v73[6];
            *(v259 + 48) = v349;
            v260 = v348;
            *(v259 + 16) = v347;
            *(v259 + 32) = v260;
            *v259 = v346;
            v261 = v256 + v73[7];
            *(v261 + 48) = v353;
            v262 = v352;
            *(v261 + 16) = v351;
            *(v261 + 32) = v262;
            *v261 = v350;
            v54 = v295;
            sub_1000482B4(v256, v295);
            v263 = v340;
          }

          else
          {
            v263 = v340;
            v235 = v217;
          }

          if (v54[v73[6] + 48] == 1)
          {
            v264 = v299;
            sub_10000C8CC(v54, v299);
            v265 = v301;
            (*(v318 + 16))(v301, v263, v70);
            v266 = v302;
            (*(v218 + 16))(v302, v343, v235);
            sub_100016718(v264, v300, &qword_100084E60, &unk_100065B80);
            v267 = v264 + v73[5];
            v268 = *(v267 + 32);
            v351 = *(v267 + 16);
            v352 = v268;
            v353 = *(v267 + 48);
            v350 = *v267;
            v269 = &v54[v73[6]];
            v270 = *(v269 + 2);
            v373 = *(v269 + 1);
            v374 = v270;
            v372 = *v269;
            v271 = v339;
            swift_bridgeObjectRetain_n();
            sub_100048204(&v350, &v346);
            sub_10000B264(&v372, &v346);
            v272 = sub_1000471A0(v271, v265, v266, 0);
            sub_10000B264(&v372, &v346);
            v273 = sub_10004686C(v272, &v372);
            sub_1000480AC(&v372);
            if (!*(v273 + 16))
            {
              goto LABEL_75;
            }

            v274 = sub_1000643E4();
            v275 = *(v273 + 16);
            if (!v275)
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

            v276 = *(v273 + 36);
            v277 = sub_100040DB8(v275);
            v278 = sub_10003DE30(v274, v276, 0, v277, v273);
            v280 = v279;
            v282 = v281;
            sub_10003DF68(v278, v279, v273, v345);
            sub_1000480AC(&v372);
            sub_1000480A0(v278, v280, v282 & 1);
            swift_bridgeObjectRelease_n();

            (*(v318 + 8))(v301, v70);
            (*(v218 + 8))(v302, v235);
            v283 = v299;
            v284 = (v299 + v73[7]);
            v285 = v284[1];
            v346 = *v284;
            v347 = v285;
            v348 = v284[2];
            v349 = *(v284 + 48);
            sub_100048204(&v346, v344);
            sub_100048100(v283);
            v286 = v296;
            sub_100015F0C(v300, v296, &qword_100084E60, &unk_100065B80);
            v287 = v286 + v73[5];
            v288 = v351;
            *v287 = v350;
            *(v287 + 16) = v288;
            *(v287 + 32) = v352;
            *(v287 + 48) = v353;
            v289 = v286 + v73[6];
            v290 = v345[1];
            *v289 = v345[0];
            *(v289 + 16) = v290;
            v291 = v346;
            *(v289 + 32) = v345[2];
            *(v289 + 48) = 0;
            v292 = v286 + v73[7];
            v293 = v347;
            *v292 = v291;
            *(v292 + 16) = v293;
            *(v292 + 32) = v348;
            *(v292 + 48) = v349;
            v54 = v295;
            sub_1000482B4(v286, v295);
          }

          v330(v54);
          sub_10000494C(v341, &qword_100084E70, &unk_100065B90);
          sub_10000C8CC(v54, v331);
          return sub_100048100(v54);
        }
      }

      v219 = v298;
      sub_10000C8CC(v54, v298);
      sub_100016718(v219, v209, &qword_100084E60, &unk_100065B80);
      v220 = v219 + v73[5];
      v221 = *(v220 + 32);
      v347 = *(v220 + 16);
      v348 = v221;
      v349 = *(v220 + 48);
      v346 = *v220;
      v222 = v219 + v73[6];
      v223 = *(v222 + 32);
      v351 = *(v222 + 16);
      v352 = v223;
      v353 = *(v222 + 48);
      v350 = *v222;
      v224 = v339;
      swift_bridgeObjectRetain_n();
      sub_100048204(&v346, &v368);
      sub_100048204(&v350, &v368);
      sub_100046F40(v224, v340, v343, v54, &v368);
      swift_bridgeObjectRelease_n();
      sub_100048100(v219);
      v225 = v209 + v73[5];
      v226 = v347;
      *v225 = v346;
      *(v225 + 16) = v226;
      *(v225 + 32) = v348;
      *(v225 + 48) = v349;
      v227 = v209 + v73[6];
      v228 = v351;
      *v227 = v350;
      *(v227 + 16) = v228;
      *(v227 + 32) = v352;
      *(v227 + 48) = v353;
      v229 = v209 + v73[7];
      *(v229 + 48) = v371;
      v230 = v370;
      *(v229 + 16) = v369;
      *(v229 + 32) = v230;
      *v229 = v368;
      swift_beginAccess();
      sub_1000482B4(v209, v54);
      goto LABEL_57;
    }
  }

  else
  {
    sub_10000494C(v38, &qword_100084E60, &unk_100065B80);
  }

  sub_100048100(v54);
LABEL_9:
  v89 = sub_100041388(v343, v69);
  __chkstk_darwin(v89);
  v90 = v323;
  v91 = v333;
  sub_10003DBE4(sub_10004840C, v89, v323);
  v333 = v91;

  v92 = v324;
  sub_100015F0C(v90, v324, &qword_1000864C0, &qword_1000699F8);
  v93 = 1;
  v94 = (*(v326 + 48))(v92, 1, v327);
  v95 = v328;
  if (v94 != 1)
  {
    v96 = v317;
    sub_100015F0C(v92, v317, &qword_1000864B8, &qword_1000699F0);
    sub_100015F0C(v96, v95, &qword_100084E60, &unk_100065B80);
    v93 = 0;
  }

  v97 = v322;
  v98 = v93;
  v99 = v334;
  (*(v322 + 56))(v95, v98, 1, v334);
  v100 = (*(v97 + 48))(v95, 1, v99);
  v101 = v325;
  if (v100 == 1)
  {
    sub_10000494C(v95, &qword_1000864C8, &qword_100069A00);
    sub_100063544();
    sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
    if ((sub_100064264() & 1) == 0)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v102 = v318;
    v103 = v314;
    (*(v318 + 16))(v314, v69, v70);
    v104 = v316;
    v105 = *(v102 + 32);
    v105(v103 + *(v316 + 48), v101, v70);
    v106 = v315;
    sub_100016718(v103, v315, &qword_1000864B0, &unk_10006A390);
    v332 = *(v104 + 48);
    v107 = v336;
    v105(v336, v106, v70);
    v108 = *(v102 + 8);
    v108(v106 + v332, v70);
    sub_100015F0C(v103, v106, &qword_1000864B0, &unk_10006A390);
    v105(v107 + *(v334 + 36), (v106 + *(v104 + 48)), v70);
    v69 = v340;
    v108(v106, v70);
  }

  else
  {
    v107 = v336;
    sub_100015F0C(v95, v336, &qword_100084E60, &unk_100065B80);
  }

  sub_100016718(v107, v335, &qword_100084E60, &unk_100065B80);
  v109 = v321;
  sub_100016718(v341, v321, &qword_100084E70, &unk_100065B90);
  v110 = v342;
  if (v337(v109, 1, v342) == 1)
  {
    sub_10000494C(v109, &qword_100084E70, &unk_100065B90);
    v111 = sub_1000471A0(v339, v69, v343, 1);
    v334 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
  }

  else
  {
    v117 = (v109 + *(v110 + 20));
    v118 = v117[1];
    v384 = *v117;
    v385 = v118;
    v386 = v117[2];
    sub_10000B264(&v384, &v380);
    sub_100048100(v109);
    v115 = *(&v384 + 1);
    v116 = v384;
    v113 = *(&v385 + 1);
    v114 = v385;
    v334 = *(&v386 + 1);
    v112 = v386;
    v111 = sub_1000471A0(v339, v69, v343, 1);
    if (v113)
    {
      LOBYTE(v380) = v115 & 1;
      *&v384 = v116;
      WORD4(v384) = v115 & 0xFF01;
      BYTE10(v384) = BYTE2(v115);
      BYTE11(v384) = BYTE3(v115);
      v385 = __PAIR128__(v113, v114);
      v119 = v334;
      *&v386 = v112;
      *(&v386 + 1) = v334;
      sub_10004815C(v116, v115, v114, v113, v112, v334);
      v120 = v333;
      v111 = sub_10004686C(v111, &v384);
      v333 = v120;
      sub_10004805C(v116, v115, v114, v113, v112, v119);
    }
  }

  if (!*(v111 + 16))
  {
    goto LABEL_75;
  }

  v121 = sub_1000643E4();
  v122 = *(v111 + 16);
  if (!v122)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v123 = *(v111 + 36);
  v124 = sub_100040DB8(v122);
  v125 = sub_10003DE30(v121, v123, 0, v124, v111);
  v127 = v126;
  v128 = v112;
  v130 = v129;
  sub_10003DF68(v125, v126, v111, &v368);
  sub_10004805C(v116, v115, v114, v113, v128, v334);
  sub_1000480A0(v125, v127, v130 & 1);

  v131 = v320;
  sub_100016718(v341, v320, &qword_100084E70, &unk_100065B90);
  v132 = v342;
  if (v337(v131, 1, v342) == 1)
  {
    sub_10000494C(v131, &qword_100084E70, &unk_100065B90);
    v133 = sub_1000471A0(v339, v340, v343, 0);
    v334 = 0;
    v134 = 0;
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
  }

  else
  {
    v139 = (v131 + *(v132 + 24));
    v140 = v139[1];
    v380 = *v139;
    v381 = v140;
    v382 = v139[2];
    sub_10000B264(&v380, &v376);
    sub_100048100(v131);
    v137 = *(&v380 + 1);
    v138 = v380;
    v135 = *(&v381 + 1);
    v136 = v381;
    v334 = *(&v382 + 1);
    v134 = v382;
    v133 = sub_1000471A0(v339, v340, v343, 0);
    if (v135)
    {
      LOBYTE(v376) = v137 & 1;
      *&v380 = v138;
      WORD4(v380) = v137 & 0xFF01;
      BYTE10(v380) = BYTE2(v137);
      BYTE11(v380) = BYTE3(v137);
      v381 = __PAIR128__(v135, v136);
      v141 = v334;
      *&v382 = v134;
      *(&v382 + 1) = v334;
      sub_10004815C(v138, v137, v136, v135, v134, v334);
      v142 = v333;
      v133 = sub_10004686C(v133, &v380);
      v333 = v142;
      sub_10004805C(v138, v137, v136, v135, v134, v141);
    }
  }

  if (!*(v133 + 16))
  {
    goto LABEL_75;
  }

  v143 = sub_1000643E4();
  v144 = *(v133 + 16);
  if (!v144)
  {
    goto LABEL_70;
  }

  v145 = *(v133 + 36);
  v146 = sub_100040DB8(v144);
  v147 = sub_10003DE30(v143, v145, 0, v146, v133);
  v149 = v148;
  v150 = v134;
  v152 = v151;
  sub_10003DF68(v147, v148, v133, &v364);
  sub_10004805C(v138, v137, v136, v135, v150, v334);
  sub_1000480A0(v147, v149, v152 & 1);

  v153 = v319;
  sub_100016718(v341, v319, &qword_100084E70, &unk_100065B90);
  v154 = v342;
  if (v337(v153, 1, v342) == 1)
  {
    sub_10000494C(v153, &qword_100084E70, &unk_100065B90);
    v155 = sub_10004561C(v339, v340, v343);
    v157 = v156;
    v158 = 0;
    v159 = 0;
    v343 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
LABEL_34:
    v169 = 1;
LABEL_35:
    if (!sub_100040DB8(0xAuLL))
    {
      v157 = v155;
    }

    if (v169)
    {
      v170 = v162;
      v171 = v158;
      v172 = v159;
      goto LABEL_47;
    }

    v173 = v161 >> 16;
    goto LABEL_45;
  }

  v163 = (v153 + *(v154 + 28));
  v164 = v163[1];
  v376 = *v163;
  v377 = v164;
  v378 = v163[2];
  sub_10000B264(&v376, &v360);
  sub_100048100(v153);
  v161 = *(&v376 + 1);
  v162 = v376;
  v165 = *(&v377 + 1);
  v160 = v377;
  v158 = *(&v378 + 1);
  v159 = v378;
  v155 = sub_10004561C(v339, v340, v343);
  v157 = v166;
  v343 = v165;
  if (!v165)
  {
    v343 = 0;
    goto LABEL_34;
  }

  if (BYTE2(v161))
  {
    if (BYTE2(v161) != 1)
    {

      LOBYTE(v173) = 2;
LABEL_45:
      v171 = v158;
      goto LABEL_46;
    }

    v167 = v162;
    v168 = v160;
  }

  else
  {
    v167 = v162;
    v168 = v160;
  }

  v174 = sub_100064594();

  if ((v174 & 1) == 0)
  {
    v169 = 0;
    v160 = v168;
    v162 = v167;
    goto LABEL_35;
  }

  v173 = v161 >> 16;

  v171 = v158;
  v160 = v168;
  v162 = v167;
LABEL_46:
  v170 = v162;
  *&v360 = v162;
  WORD4(v360) = v161 & 0xFF01;
  BYTE10(v360) = v173;
  BYTE11(v360) = BYTE3(v161);
  *&v361 = v160;
  *(&v361 + 1) = v343;
  v172 = v159;
  *&v362 = v159;
  *(&v362 + 1) = v171;
  v378 = v362;
  v377 = v361;
  v376 = v360;
  sub_10000B264(&v360, &v355);
  v157 = sub_10004686C(v157, &v376);
  sub_1000480AC(&v360);
LABEL_47:
  if (!*(v157 + 16))
  {
LABEL_75:
    result = sub_100064474();
    __break(1u);
    return result;
  }

  v175 = sub_1000643E4();
  v176 = *(v157 + 16);
  if (!v176)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v177 = *(v157 + 36);
  v178 = sub_100040DB8(v176);
  v179 = sub_10003DE30(v175, v177, 0, v178, v157);
  v181 = v180;
  v182 = v160;
  v184 = v183;
  sub_10003DF68(v179, v180, v157, v354);
  sub_10004805C(v170, v161, v182, v343, v172, v171);
  sub_1000480A0(v179, v181, v184 & 1);

  v185 = v331;
  sub_100015F0C(v335, v331, &qword_100084E60, &unk_100065B80);
  v186 = v342;
  v187 = v185 + *(v342 + 20);
  v188 = v369;
  *v187 = v368;
  *(v187 + 16) = v188;
  *(v187 + 32) = v370;
  *(v187 + 48) = 0;
  v189 = v185 + *(v186 + 24);
  v190 = v366;
  *(v189 + 16) = v365;
  *(v189 + 32) = v190;
  *v189 = v364;
  *(v189 + 48) = 0;
  v191 = v185 + *(v186 + 28);
  v192 = v354[1];
  *v191 = v354[0];
  *(v191 + 16) = v192;
  *(v191 + 32) = v354[2];
  *(v191 + 48) = 0;
  v330(v185);
  sub_10000494C(v336, &qword_100084E60, &unk_100065B80);
  return sub_10000494C(v341, &qword_100084E70, &unk_100065B90);
}

uint64_t sub_10003DBE4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_100016718(v13, v11, &qword_1000864B8, &qword_1000699F0);
      v15 = a1(v11);
      if (v3)
      {
        return sub_10000494C(v11, &qword_1000864B8, &qword_1000699F0);
      }

      if (v15)
      {
        break;
      }

      sub_10000494C(v11, &qword_1000864B8, &qword_1000699F0);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    sub_100015F0C(v11, v20, &qword_1000864B8, &qword_1000699F0);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t sub_10003DDB0()
{
  v0 = sub_100063704();
  sub_100009DBC(v0, qword_100086400);
  sub_1000049B4(v0, qword_100086400);
  return sub_1000636F4();
}

uint64_t sub_10003DE30(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_100048394(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if (result < 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003DF68@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v12 = v4;
    v13 = v5;
    v6 = (*(a3 + 48) + 48 * result);
    v8 = v6[1];
    v7 = v6[2];
    v11[0] = *v6;
    v11[1] = v8;
    v11[2] = v7;
    v9 = v6[1];
    *a4 = *v6;
    a4[1] = v9;
    a4[2] = v6[2];
    return sub_10000B264(v11, &v10);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10003E000@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if ((v2[1] & 1) == 0)
  {
    v7 = result;
    v41 = a2;
    v40 = *v2;
    v8 = result + 56;
    v9 = 1 << *(result + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(result + 56);
    v12 = (v9 + 63) >> 6;
    v13 = *(v2 + 11);
    v42 = *(v2 + 9);

    for (i = 0; ; i = v15)
    {
      if (!v11)
      {
        while (1)
        {
          v15 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v15 >= v12)
          {

            v4 = 0;
            v5 = 0;
            v6 = 0uLL;
            a2 = v41;
            v3 = 0uLL;
            goto LABEL_79;
          }

          v11 = *(v8 + 8 * v15);
          ++i;
          if (v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v15 = i;
LABEL_12:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = (*(v7 + 48) + 48 * (v16 | (v15 << 6)));
      v19 = v17[1];
      v18 = v17[2];
      *v46 = *v17;
      *&v46[16] = v19;
      *&v46[32] = v18;
      v20 = 0xD000000000000010;
      if (v46[11] != 2)
      {
        v20 = 0x446C616963657073;
      }

      v21 = 0xEB00000000737961;
      if (v46[11] == 2)
      {
        v21 = 0x800000010006B460;
      }

      v22 = 0x6D6F4D6568546E69;
      if (!v46[11])
      {
        v22 = 0x616568416B6F6F6CLL;
      }

      v23 = 0xEB00000000746E65;
      if (!v46[11])
      {
        v23 = 0xE900000000000064;
      }

      if (v46[11] <= 1u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (v46[11] <= 1u)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v26 = 0xD000000000000010;
        }

        else
        {
          v26 = 0x446C616963657073;
        }

        if (v13 == 2)
        {
          v27 = 0x800000010006B460;
        }

        else
        {
          v27 = 0xEB00000000737961;
        }
      }

      else
      {
        v26 = 0x616568416B6F6F6CLL;
        v27 = 0xE900000000000064;
        if (v13)
        {
          v26 = 0x6D6F4D6568546E69;
          v27 = 0xEB00000000746E65;
        }
      }

      if (v24 == v26 && v25 == v27)
      {
        sub_10000B264(v46, v45);
      }

      else
      {
        v28 = sub_100064594();
        sub_10000B264(v46, v45);

        if ((v28 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v46[9])
      {
        if (v46[9] == 1)
        {
          v29 = 0x746365526B636F6CLL;
        }

        else
        {
          v29 = 1701670760;
        }

        if (v46[9] == 1)
        {
          v30 = 0xEF72616C75676E61;
        }

        else
        {
          v30 = 0xE400000000000000;
        }

        v31 = v42;
        if (v42)
        {
LABEL_47:
          if (v31 == 1)
          {
            v32 = 0x746365526B636F6CLL;
          }

          else
          {
            v32 = 1701670760;
          }

          if (v31 == 1)
          {
            v33 = 0xEF72616C75676E61;
          }

          else
          {
            v33 = 0xE400000000000000;
          }

          if (v29 != v32)
          {
            goto LABEL_59;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v29 = 0x696C6E496B636F6CLL;
        v30 = 0xEA0000000000656ELL;
        v31 = v42;
        if (v42)
        {
          goto LABEL_47;
        }
      }

      v33 = 0xEA0000000000656ELL;
      if (v29 != 0x696C6E496B636F6CLL)
      {
        goto LABEL_59;
      }

LABEL_57:
      if (v30 == v33)
      {

        goto LABEL_60;
      }

LABEL_59:
      v34 = sub_100064594();

      if ((v34 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_60:
      v35 = 0xE900000000000079;
      if (v46[10])
      {
        if (v46[10] == 1)
        {
          v36 = 0xEA00000000006B65;
          v37 = 0x6557664F656D6974;
          v38 = *(v2 + 10);
          if (*(v2 + 10))
          {
            goto LABEL_65;
          }
        }

        else
        {
          v36 = 0xE700000000000000;
          v37 = 0x656D6974796E61;
          v38 = *(v2 + 10);
          if (*(v2 + 10))
          {
LABEL_65:
            if (v38 == 1)
            {
              v35 = 0xEA00000000006B65;
              if (v37 != 0x6557664F656D6974)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v35 = 0xE700000000000000;
              if (v37 != 0x656D6974796E61)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_72;
          }
        }
      }

      else
      {
        v37 = 0x6144664F656D6974;
        v36 = 0xE900000000000079;
        v38 = *(v2 + 10);
        if (*(v2 + 10))
        {
          goto LABEL_65;
        }
      }

      if (v37 != 0x6144664F656D6974)
      {
        goto LABEL_74;
      }

LABEL_72:
      if (v36 != v35)
      {
LABEL_74:
        v39 = sub_100064594();

        if ((v39 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_75;
      }

LABEL_75:
      if ((v46[8] & 1) == 0 && *v46 == v40)
      {
        v5 = *&v46[40];
        v43 = *&v46[8];
        v44 = *&v46[24];

        v3 = v43;
        v6 = v44;
        v4 = v40;
        a2 = v41;
        goto LABEL_79;
      }

LABEL_6:
      result = sub_1000480AC(v46);
    }
  }

  v4 = 0;
  v5 = 0;
  v6 = 0uLL;
LABEL_79:
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 24) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_10003E534(uint64_t a1, uint64_t a2)
{
  sub_100063574();
  sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
  if ((sub_100064264() & 1) == 0)
  {
    return 0;
  }

  sub_1000021D4(&qword_100084E60, &unk_100065B80);
  return sub_100064254() & 1;
}

void *sub_10003E5F0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_100016718(a3 + v15 + v16 * v13, v12, &qword_1000864B8, &qword_1000699F0);
      v17 = a1(v12);
      if (v3)
      {
        sub_10000494C(v12, &qword_1000864B8, &qword_1000699F0);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_100015F0C(v12, v24, &qword_1000864B8, &qword_1000699F0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100040E64(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100040E64((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_100015F0C(v24, v14 + v15 + v20 * v16, &qword_1000864B8, &qword_1000699F0);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_10000494C(v12, &qword_1000864B8, &qword_1000699F0);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_10003E874(_BYTE *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1[10];
  v7 = a1[11];
  if (a1[9])
  {
    if (a1[9] != 1)
    {
      goto LABEL_14;
    }

    v8 = 0x746365526B636F6CLL;
    v9 = 0xEF72616C75676E61;
  }

  else
  {
    v8 = 0x696C6E496B636F6CLL;
    v9 = 0xEA0000000000656ELL;
  }

  if (a2)
  {
    v10 = 0x696C6E496B636F6CLL;
  }

  else
  {
    v10 = 0x746365526B636F6CLL;
  }

  if (a2)
  {
    v11 = 0xEA0000000000656ELL;
  }

  else
  {
    v11 = 0xEF72616C75676E61;
  }

  if (v8 == v10 && v9 == v11)
  {

    goto LABEL_15;
  }

LABEL_14:
  v12 = sub_100064594();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v6 > 1)
  {

    return 1;
  }

  v13 = sub_100064594();

  if (v13)
  {
    return 1;
  }

  if (v5 == 4)
  {
    goto LABEL_25;
  }

  if (!v6)
  {

LABEL_24:
    if ((sub_10005D06C(v7, v5) & 1) == 0)
    {
      goto LABEL_25;
    }

    return 1;
  }

  v14 = sub_100064594();

  if (v14)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (v4 == 4)
  {
    return 0;
  }

  if (v6)
  {
  }

  else
  {
    v16 = sub_100064594();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_10005D06C(v7, v4) & 1;
}

unint64_t sub_10003EB20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003EBEC(v11, 0, 0, 1, a1, a2);
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
    sub_100048338(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000226EC(v11);
  return v7;
}

unint64_t sub_10003EBEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003ECF8(a5, a6);
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
    result = sub_100064464();
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

void *sub_10003ECF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10003ED44(a1, a2);
  sub_10003EE74(&off_100082418);
  return v3;
}

void *sub_10003ED44(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10003EF60(v5, 0);
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

  result = sub_100064464();
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
        v10 = sub_1000642E4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003EF60(v10, 0);
        result = sub_100064424();
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

uint64_t sub_10003EE74(uint64_t result)
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

  result = sub_10003EFD4(result, v11, 1, v3);
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

void *sub_10003EF60(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000021D4(&qword_1000864E8, &qword_100069A10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003EFD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021D4(&qword_1000864E8, &qword_100069A10);
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

uint64_t sub_10003F0C8(__int128 *a1, uint64_t *a2)
{
  v4 = *v2;
  sub_1000645B4();
  sub_10005DCAC(&v47);
  v5 = sub_1000645E4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_78:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = *v43;
    sub_10000B264(a2, &v47);
    sub_10003FB14(a2, v7, isUniquelyReferenced_nonNull_native);
    *v43 = *&v46[0];
    v37 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v37;
    a1[2] = *(a2 + 2);
    return 1;
  }

  v8 = ~v6;
  v9 = *a2;
  v10 = *(a2 + 8);
  while (1)
  {
    v11 = (*(v4 + 48) + 48 * v7);
    v13 = v11[1];
    v12 = v11[2];
    v47 = *v11;
    v48 = v13;
    v49 = v12;
    if (BYTE8(v47))
    {
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v47 == v9)
      {
        v14 = v10;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_4;
      }
    }

    if (BYTE9(v47))
    {
      if (BYTE9(v47) == 1)
      {
        v15 = 0x746365526B636F6CLL;
      }

      else
      {
        v15 = 1701670760;
      }

      if (BYTE9(v47) == 1)
      {
        v16 = 0xEF72616C75676E61;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      v17 = *(a2 + 9);
      if (*(a2 + 9))
      {
LABEL_20:
        if (v17 == 1)
        {
          v18 = 0x746365526B636F6CLL;
        }

        else
        {
          v18 = 1701670760;
        }

        if (v17 == 1)
        {
          v19 = 0xEF72616C75676E61;
        }

        else
        {
          v19 = 0xE400000000000000;
        }

        if (v15 != v18)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v15 = 0x696C6E496B636F6CLL;
      v16 = 0xEA0000000000656ELL;
      v17 = *(a2 + 9);
      if (*(a2 + 9))
      {
        goto LABEL_20;
      }
    }

    v19 = 0xEA0000000000656ELL;
    if (v15 != 0x696C6E496B636F6CLL)
    {
      goto LABEL_32;
    }

LABEL_30:
    if (v16 == v19)
    {
      sub_10000B264(&v47, v46);

      goto LABEL_33;
    }

LABEL_32:
    v20 = sub_100064594();
    sub_10000B264(&v47, v46);

    if ((v20 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v21 = 0xE900000000000079;
    if (BYTE10(v47))
    {
      if (BYTE10(v47) == 1)
      {
        v22 = 0x6557664F656D6974;
      }

      else
      {
        v22 = 0x656D6974796E61;
      }

      if (BYTE10(v47) == 1)
      {
        v23 = 0xEA00000000006B65;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      v24 = *(a2 + 10);
      if (*(a2 + 10))
      {
LABEL_41:
        if (v24 == 1)
        {
          v25 = 0x6557664F656D6974;
        }

        else
        {
          v25 = 0x656D6974796E61;
        }

        if (v24 == 1)
        {
          v21 = 0xEA00000000006B65;
        }

        else
        {
          v21 = 0xE700000000000000;
        }

        if (v22 != v25)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v22 = 0x6144664F656D6974;
      v23 = 0xE900000000000079;
      v24 = *(a2 + 10);
      if (*(a2 + 10))
      {
        goto LABEL_41;
      }
    }

    if (v22 != 0x6144664F656D6974)
    {
      goto LABEL_53;
    }

LABEL_51:
    if (v23 == v21)
    {

      goto LABEL_54;
    }

LABEL_53:
    v26 = sub_100064594();

    if ((v26 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_54:
    if (BYTE11(v47) > 1u)
    {
      if (BYTE11(v47) == 2)
      {
        v27 = 0xD000000000000010;
        v28 = 0x800000010006B460;
        goto LABEL_61;
      }

      v27 = 0x446C616963657073;
      v29 = 7567713;
    }

    else
    {
      v27 = 0x616568416B6F6F6CLL;
      v28 = 0xE900000000000064;
      if (!BYTE11(v47))
      {
        goto LABEL_61;
      }

      v27 = 0x6D6F4D6568546E69;
      v29 = 7630437;
    }

    v28 = v29 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_61:
    if (*(a2 + 11) > 1u)
    {
      if (*(a2 + 11) == 2)
      {
        v30 = 0xD000000000000010;
        v31 = 0x800000010006B460;
LABEL_66:
        if (v27 != v30)
        {
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      v32 = 0x446C616963657073;
      v33 = 7567713;
    }

    else
    {
      v30 = 0x616568416B6F6F6CLL;
      v31 = 0xE900000000000064;
      if (!*(a2 + 11))
      {
        goto LABEL_66;
      }

      v32 = 0x6D6F4D6568546E69;
      v33 = 7630437;
    }

    v31 = v33 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v27 != v32)
    {
      goto LABEL_72;
    }

LABEL_70:
    if (v28 == v31)
    {

      goto LABEL_73;
    }

LABEL_72:
    v34 = sub_100064594();

    if ((v34 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_73:
    if (v48 != *(a2 + 1) && (sub_100064594() & 1) == 0)
    {
LABEL_3:
      sub_1000480AC(&v47);
      goto LABEL_4;
    }

    if (v49 == *(a2 + 2))
    {
      break;
    }

    v35 = sub_100064594();
    sub_1000480AC(&v47);
    if (v35)
    {
      goto LABEL_80;
    }

LABEL_4:
    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  sub_1000480AC(&v47);
LABEL_80:
  sub_1000480AC(a2);
  v39 = (*(v4 + 48) + 48 * v7);
  v40 = *v39;
  v41 = v39[2];
  v46[1] = v39[1];
  v46[2] = v41;
  v46[0] = v40;
  v42 = v39[1];
  *a1 = *v39;
  a1[1] = v42;
  a1[2] = v39[2];
  sub_10000B264(v46, v45);
  return 0;
}

uint64_t sub_10003F674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000021D4(&qword_1000864D8, &qword_100069A08);
  result = sub_100064404();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v34 = result;
    v12 = result + 56;
    v33 = v3;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 9);
      v22 = *(v18 + 10);
      v23 = *(v18 + 11);
      v35 = *(v18 + 12);
      v37 = *(v18 + 16);
      v39 = *(v18 + 32);
      v40 = *(v18 + 24);
      v38 = *(v18 + 40);
      sub_1000645B4();
      if (v20)
      {
        sub_1000645D4(0);
      }

      else
      {
        sub_1000645D4(1u);
        sub_1000645C4(v19);
      }

      sub_1000642C4();

      sub_1000642C4();

      v5 = v34;
      sub_1000642C4();

      sub_1000642C4();
      sub_1000642C4();
      result = sub_1000645E4();
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v34 + 48) + 48 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 9) = v21;
      *(v14 + 10) = v22;
      *(v14 + 11) = v23;
      *(v14 + 12) = v35;
      *(v14 + 16) = v37;
      *(v14 + 24) = v40;
      *(v14 + 32) = v39;
      *(v14 + 40) = v38;
      ++*(v34 + 16);
      v3 = v33;
      v10 = v36;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10003FB14(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10003F674(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1000400CC();
        goto LABEL_85;
      }

      sub_100040254(v6 + 1);
    }

    v8 = *v3;
    sub_1000645B4();
    sub_10005DCAC(&v47);
    result = sub_1000645E4();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      v45 = *v5;
      v11 = *(v5 + 8);
      v12 = *(v5 + 9);
      v44 = *(v5 + 11);
      do
      {
        v13 = (*(v8 + 48) + 48 * a2);
        v15 = v13[1];
        v14 = v13[2];
        v47 = *v13;
        v48 = v15;
        v49 = v14;
        if (BYTE8(v47))
        {
          if (!v11)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (v47 == v45)
          {
            v16 = v11;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            goto LABEL_11;
          }
        }

        if (BYTE9(v47))
        {
          if (BYTE9(v47) == 1)
          {
            v17 = 0x746365526B636F6CLL;
          }

          else
          {
            v17 = 1701670760;
          }

          if (BYTE9(v47) == 1)
          {
            v18 = 0xEF72616C75676E61;
          }

          else
          {
            v18 = 0xE400000000000000;
          }

          if (v12)
          {
LABEL_27:
            if (v12 == 1)
            {
              v19 = 0x746365526B636F6CLL;
            }

            else
            {
              v19 = 1701670760;
            }

            if (v12 == 1)
            {
              v20 = 0xEF72616C75676E61;
            }

            else
            {
              v20 = 0xE400000000000000;
            }

            if (v17 != v19)
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v17 = 0x696C6E496B636F6CLL;
          v18 = 0xEA0000000000656ELL;
          if (v12)
          {
            goto LABEL_27;
          }
        }

        v20 = 0xEA0000000000656ELL;
        if (v17 != 0x696C6E496B636F6CLL)
        {
          goto LABEL_39;
        }

LABEL_37:
        if (v18 == v20)
        {
          sub_10000B264(&v47, v46);

          goto LABEL_40;
        }

LABEL_39:
        v21 = sub_100064594();
        sub_10000B264(&v47, v46);

        if ((v21 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_40:
        v22 = 0xE900000000000079;
        if (BYTE10(v47))
        {
          if (BYTE10(v47) == 1)
          {
            v23 = 0x6557664F656D6974;
          }

          else
          {
            v23 = 0x656D6974796E61;
          }

          if (BYTE10(v47) == 1)
          {
            v24 = 0xEA00000000006B65;
          }

          else
          {
            v24 = 0xE700000000000000;
          }

          v25 = *(v5 + 10);
          if (*(v5 + 10))
          {
LABEL_48:
            if (v25 == 1)
            {
              v26 = 0x6557664F656D6974;
            }

            else
            {
              v26 = 0x656D6974796E61;
            }

            if (v25 == 1)
            {
              v22 = 0xEA00000000006B65;
            }

            else
            {
              v22 = 0xE700000000000000;
            }

            if (v23 != v26)
            {
              goto LABEL_60;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v23 = 0x6144664F656D6974;
          v24 = 0xE900000000000079;
          v25 = *(v5 + 10);
          if (*(v5 + 10))
          {
            goto LABEL_48;
          }
        }

        if (v23 != 0x6144664F656D6974)
        {
          goto LABEL_60;
        }

LABEL_58:
        if (v24 == v22)
        {

          goto LABEL_61;
        }

LABEL_60:
        v27 = sub_100064594();

        if ((v27 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_61:
        if (BYTE11(v47) > 1u)
        {
          if (BYTE11(v47) == 2)
          {
            v28 = 0xD000000000000010;
            v29 = 0x800000010006B460;
            goto LABEL_68;
          }

          v28 = 0x446C616963657073;
          v30 = 7567713;
        }

        else
        {
          v28 = 0x616568416B6F6F6CLL;
          v29 = 0xE900000000000064;
          if (!BYTE11(v47))
          {
            goto LABEL_68;
          }

          v28 = 0x6D6F4D6568546E69;
          v30 = 7630437;
        }

        v29 = v30 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_68:
        if (v44 > 1)
        {
          if (v44 == 2)
          {
            v31 = 0xD000000000000010;
            v32 = 0x800000010006B460;
LABEL_73:
            if (v28 != v31)
            {
              goto LABEL_79;
            }

            goto LABEL_77;
          }

          v33 = 0x446C616963657073;
          v34 = 7567713;
        }

        else
        {
          v31 = 0x616568416B6F6F6CLL;
          v32 = 0xE900000000000064;
          if (!v44)
          {
            goto LABEL_73;
          }

          v33 = 0x6D6F4D6568546E69;
          v34 = 7630437;
        }

        v32 = v34 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v28 != v33)
        {
          goto LABEL_79;
        }

LABEL_77:
        if (v29 == v32)
        {

          goto LABEL_80;
        }

LABEL_79:
        v35 = sub_100064594();

        if ((v35 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_80:
        if (v48 != *(v5 + 16) && (sub_100064594() & 1) == 0)
        {
LABEL_10:
          result = sub_1000480AC(&v47);
          goto LABEL_11;
        }

        if (v49 == *(v5 + 32))
        {
          goto LABEL_88;
        }

        v36 = sub_100064594();
        result = sub_1000480AC(&v47);
        if (v36)
        {
          goto LABEL_89;
        }

LABEL_11:
        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_85:
  v37 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v38 = (*(v37 + 48) + 48 * a2);
  v39 = *(v5 + 16);
  *v38 = *v5;
  v38[1] = v39;
  v38[2] = *(v5 + 32);
  v40 = *(v37 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_88:
    sub_1000480AC(&v47);
LABEL_89:
    result = sub_1000645A4();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v42;
  }

  return result;
}

void *sub_1000400CC()
{
  v1 = v0;
  sub_1000021D4(&qword_1000864D8, &qword_100069A08);
  v2 = *v0;
  v3 = sub_1000643F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v25[0] = *v18;
        v25[1] = v20;
        v25[2] = v19;
        v21 = (*(v4 + 48) + v17);
        v22 = *v18;
        v23 = v18[2];
        v21[1] = v18[1];
        v21[2] = v23;
        *v21 = v22;
        result = sub_10000B264(v25, &v24);
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_100040254(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000021D4(&qword_1000864D8, &qword_100069A08);
  result = sub_100064404();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v19 = (*(v3 + 48) + 48 * (v16 | (v6 << 6)));
      v20 = v19[1];
      v21 = v19[2];
      v31 = *v19;
      v32 = v20;
      v33 = v21;
      sub_1000645B4();
      if (BYTE8(v31) == 1)
      {
        sub_1000645D4(0);
      }

      else
      {
        v22 = v31;
        sub_1000645D4(1u);
        sub_1000645C4(v22);
      }

      sub_10000B264(&v31, v30);
      sub_1000642C4();

      sub_1000642C4();

      sub_1000642C4();

      sub_1000642C4();
      sub_1000642C4();
      result = sub_1000645E4();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      v14 = v31;
      v15 = v33;
      v13[1] = v32;
      v13[2] = v15;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

unint64_t *sub_10004068C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v33 = a4;
  v24 = result;
  v25 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 48 * v15);
    v18 = v16[1];
    v17 = v16[2];
    v32[0] = *v16;
    v32[1] = v18;
    v32[2] = v17;
    v19 = v16[1];
    v29 = *v16;
    v30 = v19;
    v31 = v16[2];
    sub_10000B264(v32, &v26);
    v20 = v33(&v29);
    if (v4)
    {
      v26 = v29;
      v27 = v30;
      v28 = v31;
      return sub_1000480AC(&v26);
    }

    v21 = v20;
    v26 = v29;
    v27 = v30;
    v28 = v31;
    result = sub_1000480AC(&v26);
    if (v21)
    {
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_100040988(v24, a2, v25, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10004084C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10000B264(a4, &v9);
    v8 = sub_1000462C8(v7, a2, a3, a4);

    sub_1000480AC(a4);
    sub_1000480AC(a4);
    return v8;
  }

  return result;
}

unint64_t *sub_1000408F8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10004068C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100040988(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000021D4(&qword_1000864D8, &qword_100069A08);
  result = sub_100064414();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = (*(a4 + 48) + 48 * (v13 | (v11 << 6)));
    v17 = v16[1];
    v18 = v16[2];
    v33 = *v16;
    v34 = v17;
    v35 = v18;
    sub_1000645B4();
    if (BYTE8(v33) == 1)
    {
      sub_1000645D4(0);
    }

    else
    {
      v19 = v33;
      sub_1000645D4(1u);
      sub_1000645C4(v19);
    }

    sub_10000B264(&v33, v32);
    sub_1000642C4();

    sub_1000642C4();

    sub_1000642C4();

    sub_1000642C4();
    sub_1000642C4();
    result = sub_1000645E4();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v6 + 48) + 48 * v23);
    v29 = v33;
    v30 = v35;
    v28[1] = v34;
    v28[2] = v30;
    *v28 = v29;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    if (!v5)
    {
LABEL_31:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_31;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_100040DB8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100040E44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100040E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100040E64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100040FA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100040E84(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100040FA4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000021D4(&qword_100086508, &qword_100069A38);
  v10 = *(sub_1000021D4(&qword_1000864B8, &qword_1000699F0) - 8);
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
  v15 = *(sub_1000021D4(&qword_1000864B8, &qword_1000699F0) - 8);
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

void sub_100041194(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v25 = *a1;
  v26 = v4;
  v27 = a1[2];
  v5 = 0uLL;
  if ((a1[3] & 1) == 0)
  {
    if (v27 == sub_1000635B4() && *(&v27 + 1) == v11)
    {
    }

    else
    {
      v13 = sub_100064594();

      if ((v13 & 1) == 0)
      {
        sub_10003E000(a2, &v21);
        v7 = v23;
        if (v23)
        {
          v8 = v24;
          v6 = v22;
          v5 = v21;
          goto LABEL_12;
        }

        if (qword_1000849B0 != -1)
        {
          swift_once();
        }

        v14 = sub_100063704();
        sub_1000049B4(v14, qword_100086400);
        sub_100048204(a1, v20);
        v15 = sub_1000636E4();
        v16 = sub_100064374();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = v17;
          *v17 = 134217984;
          v19 = v25;
          if (BYTE8(v25))
          {
            v19 = -1;
          }

          *(v17 + 4) = v19;
          sub_100048260(a1);
          _os_log_impl(&_mh_execute_header, v15, v16, "providePersistedPrompts: Failed to find localized counterpart for prompt with key, %ld.", v18, 0xCu);
        }

        else
        {
          sub_100048260(a1);
        }
      }
    }

    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v5 = 0uLL;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0uLL;
LABEL_12:
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 48) = 0;
}

void *sub_100041388(char *a1, uint64_t a2)
{
  v326 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  v4 = __chkstk_darwin(v326);
  v325 = &v282 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v324 = &v282 - v6;
  v7 = sub_1000021D4(&qword_1000864F0, &qword_100069A18);
  __chkstk_darwin(v7 - 8);
  v323 = &v282 - v8;
  v9 = sub_1000021D4(&qword_1000864F8, &unk_100069A20);
  __chkstk_darwin(v9 - 8);
  v320 = &v282 - v10;
  v11 = sub_100063364();
  v321 = *(v11 - 8);
  v322 = v11;
  __chkstk_darwin(v11);
  v319 = &v282 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000021D4(&qword_100084E50, &qword_100065B70);
  v14 = __chkstk_darwin(v13 - 8);
  v290 = &v282 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v298 = &v282 - v17;
  v18 = __chkstk_darwin(v16);
  v306 = &v282 - v19;
  __chkstk_darwin(v18);
  v311 = &v282 - v20;
  v21 = sub_1000021D4(&qword_1000864C0, &qword_1000699F8);
  v22 = __chkstk_darwin(v21 - 8);
  v294 = &v282 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v302 = &v282 - v25;
  v26 = __chkstk_darwin(v24);
  v309 = &v282 - v27;
  __chkstk_darwin(v26);
  v315 = &v282 - v28;
  v333 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v318 = *(v333 - 8);
  v29 = __chkstk_darwin(v333);
  v295 = &v282 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v293 = &v282 - v32;
  v33 = __chkstk_darwin(v31);
  v303 = &v282 - v34;
  v35 = __chkstk_darwin(v33);
  v301 = &v282 - v36;
  v37 = __chkstk_darwin(v35);
  v310 = &v282 - v38;
  v39 = __chkstk_darwin(v37);
  v308 = &v282 - v40;
  __chkstk_darwin(v39);
  v314 = &v282 - v41;
  v42 = sub_100063644();
  v330 = *(v42 - 8);
  v331 = v42;
  __chkstk_darwin(v42);
  v332 = &v282 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100063574();
  v334 = *(v44 - 8);
  v335 = v44;
  v45 = __chkstk_darwin(v44);
  v316 = &v282 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v289 = &v282 - v48;
  v49 = __chkstk_darwin(v47);
  v291 = &v282 - v50;
  v51 = __chkstk_darwin(v49);
  v296 = &v282 - v52;
  v53 = __chkstk_darwin(v51);
  v292 = &v282 - v54;
  v55 = __chkstk_darwin(v53);
  v297 = &v282 - v56;
  v57 = __chkstk_darwin(v55);
  v307 = &v282 - v58;
  v59 = __chkstk_darwin(v57);
  v299 = &v282 - v60;
  v61 = __chkstk_darwin(v59);
  v305 = &v282 - v62;
  v63 = __chkstk_darwin(v61);
  v313 = &v282 - v64;
  v65 = __chkstk_darwin(v63);
  v304 = &v282 - v66;
  v67 = __chkstk_darwin(v65);
  v312 = &v282 - v68;
  v69 = __chkstk_darwin(v67);
  v328 = &v282 - v70;
  v71 = __chkstk_darwin(v69);
  v329 = &v282 - v72;
  v73 = __chkstk_darwin(v71);
  v327 = &v282 - v74;
  __chkstk_darwin(v73);
  v76 = &v282 - v75;
  v77 = sub_100063634();
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v80 = &v282 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1000021D4(&qword_100086500, &qword_100069A30);
  __chkstk_darwin(v81 - 8);
  v83 = &v282 - v82;
  v84 = sub_1000632B4();
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v87 = &v282 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v78 + 104))(v80, enum case for Calendar.Component.day(_:), v77);
  v317 = a1;
  sub_1000635F4();
  v88 = v80;
  v89 = v334;
  (*(v78 + 8))(v88, v77);
  if ((*(v85 + 48))(v83, 1, v84) == 1)
  {
    v90 = v335;
    sub_10000494C(v83, &qword_100086500, &qword_100069A30);
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v91 = sub_100063704();
    sub_1000049B4(v91, qword_100086400);
    v92 = v334;
    v93 = v316;
    v334[2](v316, a2, v90);
    v94 = sub_1000636E4();
    v95 = sub_100064374();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v336 = v97;
      *v96 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v98 = sub_100064584();
      v100 = v99;
      (v92[1])(v93, v90);
      v101 = sub_10003EB20(v98, v100, &v336);

      *(v96 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v94, v95, "calculateTimeOfDayRanges: Failed to calculate day interval for %s.", v96, 0xCu);
      sub_1000226EC(v97);
    }

    else
    {

      (v92[1])(v93, v90);
    }

    return _swiftEmptyArrayStorage;
  }

  v287 = v85;
  v102 = *(v85 + 32);
  v288 = v84;
  v102(v87, v83, v84);
  v103 = v76;
  sub_1000632A4();
  v104 = v327;
  v286 = v87;
  sub_100063294();
  v105 = v89[2];
  v106 = v335;
  (v105)(v329, v76, v335);
  v107 = v328;
  (v105)(v328, v104, v106);
  v109 = v330;
  v108 = v331;
  (*(v330 + 16))(v332, v317, v331);
  v285 = sub_1000483C8(&qword_100085458, &protocol conformance descriptor for Date);
  v110 = sub_100064274();
  v111 = v334;
  v316 = (v89 + 2);
  v317 = v105;
  v300 = v76;
  if ((v110 & 1) == 0)
  {
    v133 = v312;
    (v105)(v312, v107, v335);
    v115 = v111;
LABEL_14:
    v134 = *(v333 + 48);
    sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
    if ((sub_100064264() & 1) == 0)
    {
      __break(1u);
      goto LABEL_67;
    }

    v312 = v134;
    v135 = v324;
    v136 = v335;
    (v105)(v324, v103, v335);
    v137 = v326;
    v138 = *(v115 + 4);
    v138(v135 + *(v326 + 48), v133, v136);
    v139 = v136;
    v140 = v325;
    sub_100016718(v135, v325, &qword_1000864B0, &unk_10006A390);
    v141 = *(v137 + 48);
    v142 = v315;
    v138(v315, v140, v139);
    v131 = *(v115 + 1);
    (v131)(v140 + v141, v139);
    sub_100015F0C(v135, v140, &qword_1000864B0, &unk_10006A390);
    v143 = *(v137 + 48);
    v144 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
    v138(v142 + *(v144 + 36), (v140 + v143), v139);
    v145 = v142;
    v103 = v300;
    (v131)(v140, v139);
    v146 = 0;
    v312[v142] = 2;
    goto LABEL_18;
  }

  (*(v109 + 56))(v320, 1, 1, v108);
  v112 = sub_100063664();
  (*(*(v112 - 8) + 56))(v323, 1, 1, v112);
  v113 = v319;
  sub_100063354();
  v114 = v311;
  sub_100063614();
  (*(v321 + 8))(v113, v322);
  v115 = v111;
  if ((*(v111 + 6))(v114, 1, v335) != 1)
  {
    v133 = v312;
    (*(v111 + 4))(v312, v114, v335);
    v105 = v317;
    goto LABEL_14;
  }

  sub_10000494C(v114, &qword_100084E50, &qword_100065B70);
  v111 = v317;
  if (qword_1000849B0 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v116 = sub_100063704();
    sub_1000049B4(v116, qword_100086400);
    v117 = v304;
    (v111)(v304, v103, v335);
    v118 = sub_1000636E4();
    v119 = sub_100064374();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122 = v335;
      v123 = v103;
      v124 = v115;
      v125 = v121;
      v336 = v121;
      *v120 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v126 = sub_100064584();
      v128 = v127;
      v129 = v124;
      v130 = v123;
      v131 = *(v129 + 1);
      (v131)(v117, v122);
      v132 = sub_10003EB20(v126, v128, &v336);

      *(v120 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v118, v119, "calculateTimeOfDayRanges: Failed to calculate range end using %s.", v120, 0xCu);
      sub_1000226EC(v125);
      v103 = v130;
    }

    else
    {

      v131 = *(v115 + 1);
      (v131)(v117, v335);
    }

    v146 = 1;
    v145 = v315;
LABEL_18:
    v147 = v318;
    v148 = (v318 + 56);
    v149 = *(v318 + 56);
    v150 = v333;
    v149(v145, v146, 1, v333);
    v153 = *(v147 + 48);
    v152 = v147 + 48;
    v151 = v153;
    if (v153(v145, 1, v150) == 1)
    {
      (*(v330 + 8))(v332, v331);
      v154 = v335;
      (v131)(v328, v335);
      (v131)(v329, v154);
      v155 = v286;
      goto LABEL_50;
    }

    v283 = v151;
    v284 = v152;
    v304 = v149;
    v311 = v148;
    v156 = v314;
    sub_100015F0C(v145, v314, &qword_1000864B8, &qword_1000699F0);
    v157 = v310;
    sub_100016718(v156, v310, &qword_1000864B8, &qword_1000699F0);
    v312 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
    v158 = v313;
    (v317)(v313, &v157[*(v312 + 9)], v335);
    sub_10000494C(v157, &qword_100084E60, &unk_100065B80);
    v310 = "a";
    v159 = sub_100064594();
    v103 = v334;
    v115 = v329;
    v315 = v131;
    if (v159 & 1) == 0 || (sub_100064274())
    {
      break;
    }

    v111 = v305;
    (v317)(v305, v328, v335);
LABEL_29:
    v306 = *(v333 + 48);
    sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
    if (sub_100064264())
    {
      v175 = *(v103 + 4);
      v176 = v324;
      v177 = v335;
      v175(v324, v158, v335);
      v178 = v326;
      v175((v176 + *(v326 + 48)), v111, v177);
      v179 = v325;
      sub_100016718(v176, v325, &qword_1000864B0, &unk_10006A390);
      v180 = *(v178 + 48);
      v181 = v309;
      v175(v309, v179, v177);
      v182 = v179 + v180;
      v131 = v315;
      (v315)(v182, v177);
      sub_100015F0C(v176, v179, &qword_1000864B0, &unk_10006A390);
      v175((v181 + *(v312 + 9)), (v179 + *(v178 + 48)), v177);
      (v131)(v179, v177);
      v183 = 0;
      *(v181 + v306) = 0;
      v115 = v329;
      v184 = v304;
      v185 = v283;
      goto LABEL_33;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  (*(v330 + 56))(v320, 1, 1, v331);
  v160 = sub_100063664();
  (*(*(v160 - 8) + 56))(v323, 1, 1, v160);
  v161 = v319;
  sub_100063354();
  v162 = v306;
  sub_100063614();
  (*(v321 + 8))(v161, v322);
  if ((*(v103 + 6))(v162, 1, v335) != 1)
  {
    v111 = v305;
    (*(v103 + 4))(v305, v162, v335);
    v158 = v313;
    goto LABEL_29;
  }

  sub_10000494C(v162, &qword_100084E50, &qword_100065B70);
  if (qword_1000849B0 != -1)
  {
    swift_once();
  }

  v163 = sub_100063704();
  sub_1000049B4(v163, qword_100086400);
  v164 = v299;
  v165 = v313;
  (v317)(v299, v313, v335);
  v166 = sub_1000636E4();
  v167 = sub_100064374();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v336 = v169;
    *v168 = 136315138;
    sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
    v170 = v335;
    v171 = sub_100064584();
    v173 = v172;
    (v315)(v164, v170);
    v174 = sub_10003EB20(v171, v173, &v336);
    v131 = v315;

    *(v168 + 4) = v174;
    _os_log_impl(&_mh_execute_header, v166, v167, "calculateTimeOfDayRanges: Failed to calculate range end using %s.", v168, 0xCu);
    sub_1000226EC(v169);

    (v131)(v313, v170);
  }

  else
  {

    v186 = v335;
    (v131)(v164, v335);
    (v131)(v165, v186);
  }

  v183 = 1;
  v184 = v304;
  v185 = v283;
  v181 = v309;
LABEL_33:
  v187 = v333;
  v184(v181, v183, 1, v333);
  v188 = v185(v181, 1, v187);
  v189 = v332;
  if (v188 == 1)
  {
    sub_10000494C(v314, &qword_1000864B8, &qword_1000699F0);
    (*(v330 + 8))(v189, v331);
    v190 = v335;
    (v131)(v328, v335);
    (v131)(v115, v190);
    v145 = v181;
    goto LABEL_49;
  }

  v191 = v181;
  v192 = v308;
  sub_100015F0C(v191, v308, &qword_1000864B8, &qword_1000699F0);
  v193 = v303;
  sub_100016718(v192, v303, &qword_1000864B8, &qword_1000699F0);
  v194 = v307;
  (v317)(v307, v193 + *(v312 + 9), v335);
  sub_10000494C(v193, &qword_100084E60, &unk_100065B80);
  v195 = sub_100064594();
  v196 = v334;
  if ((v195 & 1) != 0 && (sub_100064274() & 1) == 0)
  {
    v131 = v297;
    (v317)(v297, v328, v335);
  }

  else
  {
    (*(v330 + 56))(v320, 1, 1, v331);
    v197 = sub_100063664();
    (*(*(v197 - 8) + 56))(v323, 1, 1, v197);
    v198 = v319;
    v194 = v307;
    sub_100063354();
    v199 = v298;
    sub_100063614();
    (*(v321 + 8))(v198, v322);
    if ((v196[6])(v199, 1, v335) == 1)
    {
      sub_10000494C(v199, &qword_100084E50, &qword_100065B70);
      if (qword_1000849B0 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_70;
    }

    v131 = v297;
    v196[4](v297, v199, v335);
  }

  v313 = *(v333 + 48);
  sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
  if (sub_100064264())
  {
    v211 = v196[4];
    v212 = v324;
    v213 = v194;
    v214 = v335;
    v211(v324, v213, v335);
    v215 = v326;
    v211((v212 + *(v326 + 48)), v131, v214);
    v216 = v325;
    sub_100016718(v212, v325, &qword_1000864B0, &unk_10006A390);
    v217 = *(v215 + 48);
    v218 = v302;
    v211(v302, v216, v214);
    v219 = v216 + v217;
    v131 = v315;
    (v315)(v219, v214);
    sub_100015F0C(v212, v216, &qword_1000864B0, &unk_10006A390);
    v220 = v218;
    v211((v218 + *(v312 + 9)), v216 + *(v215 + 48), v214);
    (v131)(v216, v214);
    v221 = 0;
    v313[v218] = 1;
    v115 = v329;
  }

  else
  {
    __break(1u);
LABEL_70:
    swift_once();
LABEL_39:
    v200 = sub_100063704();
    sub_1000049B4(v200, qword_100086400);
    v201 = v292;
    (v317)(v292, v194, v335);
    v202 = sub_1000636E4();
    v203 = sub_100064374();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v336 = v205;
      *v204 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v206 = v335;
      v207 = sub_100064584();
      v209 = v208;
      (v315)(v201, v206);
      v210 = sub_10003EB20(v207, v209, &v336);
      v131 = v315;

      *(v204 + 4) = v210;
      _os_log_impl(&_mh_execute_header, v202, v203, "calculateTimeOfDayRanges: Failed to calculate range end using %s.", v204, 0xCu);
      sub_1000226EC(v205);

      (v131)(v307, v206);
    }

    else
    {

      v222 = v335;
      (v131)(v201, v335);
      (v131)(v194, v222);
    }

    v221 = 1;
    v220 = v302;
  }

  v223 = v283;
  v224 = v333;
  (v304)(v220, v221, 1, v333);
  v225 = v223(v220, 1, v224);
  v226 = v332;
  if (v225 == 1)
  {
    sub_10000494C(v308, &qword_1000864B8, &qword_1000699F0);
    sub_10000494C(v314, &qword_1000864B8, &qword_1000699F0);
    (*(v330 + 8))(v226, v331);
    v227 = v335;
    (v131)(v328, v335);
    (v131)(v115, v227);
    v145 = v220;
LABEL_49:
    v155 = v286;
    v103 = v300;
LABEL_50:
    sub_10000494C(v145, &qword_1000864C0, &qword_1000699F8);
    v228 = v335;
    (v131)(v327, v335);
    (v131)(v103, v228);
    (*(v287 + 8))(v155, v288);
    return _swiftEmptyArrayStorage;
  }

  v230 = v301;
  sub_100015F0C(v220, v301, &qword_1000864B8, &qword_1000699F0);
  v231 = v295;
  sub_100016718(v230, v295, &qword_1000864B8, &qword_1000699F0);
  v232 = v296;
  v233 = v317;
  (v317)(v296, v231 + *(v312 + 9), v335);
  sub_10000494C(v231, &qword_100084E60, &unk_100065B80);
  v234 = sub_100064274();
  v235 = v334;
  if (v234)
  {
    (*(v330 + 56))(v320, 1, 1, v331);
    v236 = sub_100063664();
    (*(*(v236 - 8) + 56))(v323, 1, 1, v236);
    v237 = v319;
    sub_100063354();
    v238 = v290;
    sub_100063614();
    (*(v321 + 8))(v237, v322);
    if ((v235[6])(v238, 1, v335) == 1)
    {
      sub_10000494C(v238, &qword_100084E50, &qword_100065B70);
      if (qword_1000849B0 == -1)
      {
        goto LABEL_55;
      }

      goto LABEL_72;
    }

    v254 = v291;
    v235[4](v291, v238, v335);
    v255 = v328;
  }

  else
  {
    v254 = v291;
    v255 = v328;
    (v233)(v291, v328, v335);
  }

  v256 = v330;
  v330 = *(v333 + 48);
  sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
  v257 = v335;
  v258 = sub_100064264();
  (*(v256 + 8))(v226, v331);
  v259 = v255;
  v260 = v315;
  (v315)(v259, v257);
  v260(v115, v257);
  if (v258)
  {
    v261 = v235[4];
    v262 = v324;
    v263 = v335;
    v261(v324, v232, v335);
    v264 = v326;
    v261((v262 + *(v326 + 48)), v254, v263);
    v265 = v325;
    sub_100016718(v262, v325, &qword_1000864B0, &unk_10006A390);
    v266 = *(v264 + 48);
    v267 = v294;
    v261(v294, v265, v263);
    v260((v265 + v266), v263);
    sub_100015F0C(v262, v265, &qword_1000864B0, &unk_10006A390);
    v261((v267 + *(v312 + 9)), v265 + *(v264 + 48), v263);
    v260(v265, v263);
    v268 = 0;
    *(v267 + v330) = 2;
  }

  else
  {
    __break(1u);
LABEL_72:
    swift_once();
LABEL_55:
    v239 = sub_100063704();
    sub_1000049B4(v239, qword_100086400);
    v240 = v289;
    (v317)(v289, v232, v335);
    v241 = sub_1000636E4();
    v242 = sub_100064374();
    if (os_log_type_enabled(v241, v242))
    {
      v243 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      v245 = v330;
      v246 = v244;
      v336 = v244;
      *v243 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v247 = v335;
      v248 = sub_100064584();
      v250 = v249;
      v251 = v240;
      v252 = v315;
      (v315)(v251, v247);
      v253 = sub_10003EB20(v248, v250, &v336);

      *(v243 + 4) = v253;
      _os_log_impl(&_mh_execute_header, v241, v242, "calculateTimeOfDayRanges: Failed to calculate range end using %s.", v243, 0xCu);
      sub_1000226EC(v246);

      v252(v296, v247);
      (*(v245 + 8))(v332, v331);
      v252(v328, v247);
      v252(v329, v247);
    }

    else
    {

      v269 = v240;
      v270 = v335;
      v271 = v315;
      (v315)(v269, v335);
      v271(v232, v270);
      (*(v330 + 8))(v332, v331);
      v271(v328, v270);
      v271(v115, v270);
    }

    v268 = 1;
    v267 = v294;
  }

  v272 = v333;
  (v304)(v267, v268, 1, v333);
  if (v283(v267, 1, v272) == 1)
  {
    sub_10000494C(v301, &qword_1000864B8, &qword_1000699F0);
    sub_10000494C(v308, &qword_1000864B8, &qword_1000699F0);
    sub_10000494C(v314, &qword_1000864B8, &qword_1000699F0);
    v145 = v267;
    v103 = v300;
    v155 = v286;
    v131 = v315;
    goto LABEL_50;
  }

  sub_100015F0C(v267, v293, &qword_1000864B8, &qword_1000699F0);
  sub_1000021D4(&qword_100086508, &qword_100069A38);
  v273 = *(v318 + 72);
  v274 = (*(v318 + 80) + 32) & ~*(v318 + 80);
  v275 = swift_allocObject();
  *(v275 + 16) = xmmword_100066C60;
  v276 = v275 + v274;
  v277 = v314;
  sub_100016718(v314, v276, &qword_1000864B8, &qword_1000699F0);
  v278 = v335;
  v279 = v308;
  sub_100016718(v308, v276 + v273, &qword_1000864B8, &qword_1000699F0);
  v280 = v301;
  sub_100016718(v301, v276 + 2 * v273, &qword_1000864B8, &qword_1000699F0);
  sub_100015F0C(v293, v276 + 3 * v273, &qword_1000864B8, &qword_1000699F0);
  sub_10000494C(v280, &qword_1000864B8, &qword_1000699F0);
  sub_10000494C(v279, &qword_1000864B8, &qword_1000699F0);
  sub_10000494C(v277, &qword_1000864B8, &qword_1000699F0);
  v281 = v315;
  (v315)(v327, v278);
  v281(v300, v278);
  (*(v287 + 8))(v286, v288);
  return v275;
}

uint64_t sub_100043DB8(uint64_t a1, uint64_t a2)
{
  v186 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  v4 = __chkstk_darwin(v186);
  v185 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v184 = &v177 - v6;
  v7 = sub_1000021D4(&qword_1000864F0, &qword_100069A18);
  __chkstk_darwin(v7 - 8);
  v201 = &v177 - v8;
  v9 = sub_1000021D4(&qword_1000864F8, &unk_100069A20);
  __chkstk_darwin(v9 - 8);
  v199 = &v177 - v10;
  v200 = sub_100063364();
  v204 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000021D4(&qword_100084E50, &qword_100065B70);
  v13 = __chkstk_darwin(v12 - 8);
  v194 = (&v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v196 = &v177 - v15;
  v203 = sub_100063574();
  v206 = *(v203 - 8);
  v16 = __chkstk_darwin(v203);
  v195 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v193 = &v177 - v19;
  v20 = __chkstk_darwin(v18);
  v189 = &v177 - v21;
  v22 = __chkstk_darwin(v20);
  v191 = &v177 - v23;
  v24 = __chkstk_darwin(v22);
  v190 = &v177 - v25;
  v26 = __chkstk_darwin(v24);
  v188 = &v177 - v27;
  v28 = __chkstk_darwin(v26);
  v187 = &v177 - v29;
  v30 = __chkstk_darwin(v28);
  v192 = &v177 - v31;
  v32 = __chkstk_darwin(v30);
  v197 = &v177 - v33;
  v34 = __chkstk_darwin(v32);
  v205 = &v177 - v35;
  __chkstk_darwin(v34);
  v37 = &v177 - v36;
  v38 = sub_100063634();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v177 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000021D4(&qword_100086500, &qword_100069A30);
  __chkstk_darwin(v42 - 8);
  v44 = &v177 - v43;
  v45 = sub_1000632B4();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = &v177 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 104))(v41, enum case for Calendar.Component.weekOfYear(_:), v38);
  v202 = a1;
  sub_1000635F4();
  (*(v39 + 8))(v41, v38);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    v49 = v203;
    v50 = v206;
    sub_10000494C(v44, &qword_100086500, &qword_100069A30);
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v51 = sub_100063704();
    sub_1000049B4(v51, qword_100086400);
    v52 = v50;
    v53 = v195;
    (*(v50 + 16))(v195, a2, v49);
    v54 = sub_1000636E4();
    v55 = sub_100064374();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v207[0] = v57;
      *v56 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v58 = sub_100064584();
      v60 = v59;
      (*(v52 + 8))(v53, v49);
      v61 = sub_10003EB20(v58, v60, v207);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "calculateTimeOfWeekRanges: Failed to calculate week interval from %s.", v56, 0xCu);
      sub_1000226EC(v57);
    }

    else
    {

      (*(v50 + 8))(v53, v49);
    }

    return _swiftEmptyArrayStorage;
  }

  v182 = v46;
  v62 = *(v46 + 32);
  v183 = v45;
  v62(v48, v44, v45);
  sub_1000632A4();
  v181 = v48;
  sub_100063294();
  v63 = sub_100063644();
  v64 = *(v63 - 8);
  v180 = *(v64 + 56);
  v179 = v64 + 56;
  v180(v199, 1, 1, v63);
  v65 = sub_100063664();
  v178 = *(*(v65 - 8) + 56);
  v178(v201, 1, 1, v65);
  v66 = v198;
  sub_100063354();
  v67 = v196;
  v195 = v37;
  sub_100063614();
  v68 = v203;
  v69 = v204 + 8;
  v70 = *(v204 + 8);
  v70(v66, v200);
  v71 = v206;
  v72 = *(v206 + 48);
  if (v72(v67, 1, v68) == 1)
  {
    sub_10000494C(v67, &qword_100084E50, &qword_100065B70);
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v73 = sub_100063704();
    sub_1000049B4(v73, qword_100086400);
    v74 = v193;
    (*(v71 + 16))(v193, v195, v68);
    v75 = sub_1000636E4();
    v76 = sub_100064374();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v207[0] = v78;
      *v77 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v79 = sub_100064584();
      v80 = v74;
      v82 = v81;
      v83 = *(v71 + 8);
      v83(v80, v68);
      v84 = sub_10003EB20(v79, v82, v207);

      *(v77 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v75, v76, "calculateTimeOfWeekRanges: Failed to calculate inTheMoment start from %s.", v77, 0xCu);
      sub_1000226EC(v78);
    }

    else
    {

      v83 = *(v71 + 8);
      v83(v74, v68);
    }

    v102 = v205;
    v103 = v183;
    v104 = v182;
    v105 = v181;
LABEL_32:
    v83(v102, v68);
    v83(v195, v68);
LABEL_35:
    (*(v104 + 8))(v105, v103);
    return _swiftEmptyArrayStorage;
  }

  v86 = *(v71 + 32);
  v85 = v71 + 32;
  v193 = v86;
  (v86)(v197, v67, v68);
  v204 = v69;
  v180(v199, 1, 1, v63);
  v178(v201, 1, 1, v65);
  v87 = v198;
  sub_100063354();
  v88 = v194;
  v89 = v205;
  sub_100063614();
  v70(v87, v200);
  if (v72(v88, 1, v68) == 1)
  {
    sub_10000494C(v88, &qword_100084E50, &qword_100065B70);
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v90 = sub_100063704();
    sub_1000049B4(v90, qword_100086400);
    v91 = v206;
    v92 = v189;
    (*(v206 + 16))(v189, v89, v68);
    v93 = sub_1000636E4();
    v94 = sub_100064374();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v207[0] = v96;
      *v95 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v97 = sub_100064584();
      v98 = v92;
      v100 = v99;
      v83 = *(v91 + 8);
      v83(v98, v68);
      v101 = sub_10003EB20(v97, v100, v207);

      *(v95 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v93, v94, "calculateTimeOfWeekRanges: Failed to calculate recentPast start from %s.", v95, 0xCu);
      sub_1000226EC(v96);
      v89 = v205;
    }

    else
    {

      v83 = *(v91 + 8);
      v83(v92, v68);
    }

    v103 = v183;
    v104 = v182;
    v105 = v181;
    v83(v197, v68);
    v102 = v89;
    goto LABEL_32;
  }

  v106 = v192;
  (v193)(v192, v88, v68);
  v107 = v195;
  v108 = v197;
  if ((sub_100063554() & 1) == 0 || (v109 = v85, (sub_100063554() & 1) == 0) || (sub_100063554() & 1) == 0)
  {
    v148 = v206;
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v149 = sub_100063704();
    sub_1000049B4(v149, qword_100086400);
    v150 = *(v148 + 16);
    v151 = v187;
    v150(v187, v107, v68);
    v152 = v188;
    v150(v188, v108, v68);
    v150(v190, v106, v68);
    v150(v191, v89, v68);
    v153 = sub_1000636E4();
    v154 = sub_100064374();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v207[0] = v204;
      *v155 = 136315906;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      LODWORD(v202) = v154;
      v156 = sub_100064584();
      v158 = v157;
      v159 = v151;
      v160 = *(v148 + 8);
      v160(v159, v68);
      v161 = sub_10003EB20(v156, v158, v207);

      *(v155 + 4) = v161;
      *(v155 + 12) = 2080;
      v162 = sub_100064584();
      v164 = v163;
      v160(v152, v68);
      v165 = sub_10003EB20(v162, v164, v207);

      *(v155 + 14) = v165;
      *(v155 + 22) = 2080;
      v166 = v190;
      v167 = sub_100064584();
      v169 = v168;
      v160(v166, v68);
      v170 = sub_10003EB20(v167, v169, v207);
      v108 = v197;

      *(v155 + 24) = v170;
      *(v155 + 32) = 2080;
      v171 = v191;
      v172 = sub_100064584();
      v174 = v173;
      v160(v171, v68);
      v175 = sub_10003EB20(v172, v174, v207);
      v106 = v192;

      *(v155 + 34) = v175;
      _os_log_impl(&_mh_execute_header, v153, v202, "calculateTimeOfWeekRanges: Invalid goalposts - %s, %s, %s, %s", v155, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v176 = v151;
      v160 = *(v148 + 8);
      v160(v191, v68);
      v160(v190, v68);
      v160(v152, v68);
      v160(v176, v68);
    }

    v103 = v183;
    v104 = v182;
    v105 = v181;
    v160(v106, v68);
    v160(v108, v68);
    v160(v205, v68);
    v160(v195, v68);
    goto LABEL_35;
  }

  sub_1000021D4(&qword_100086508, &qword_100069A38);
  v110 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v111 = (*(*(v110 - 8) + 80) + 32) & ~*(*(v110 - 8) + 80);
  v199 = *(*(v110 - 8) + 72);
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_100066C80;
  v202 = v110;
  v190 = *(v110 + 48);
  v201 = sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
  result = sub_100064264();
  v113 = v206;
  if (result)
  {
    v114 = v107;
    v115 = v200 + v111;
    v204 = v200 + v111;
    v116 = *(v206 + 16);
    v117 = v184;
    v116(v184, v114, v68);
    v118 = v186;
    v119 = v117 + *(v186 + 48);
    v196 = (v113 + 16);
    v194 = v116;
    v116(v119, v108, v68);
    v120 = v185;
    sub_100016718(v117, v185, &qword_1000864B0, &unk_10006A390);
    v121 = *(v118 + 48);
    v122 = v115;
    v123 = v193;
    (v193)(v122, v120, v68);
    v124 = *(v113 + 8);
    v125 = v120 + v121;
    v126 = v118;
    v124(v125, v68);
    v127 = v197;
    sub_100015F0C(v117, v120, &qword_1000864B0, &unk_10006A390);
    v128 = *(v126 + 48);
    v191 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
    v129 = v204;
    v130 = v204 + *(v191 + 9);
    v206 = v109;
    (v123)(v130, v120 + v128, v68);
    v198 = v124;
    v124(v120, v68);
    v190[v129] = 0;
    v190 = *(v202 + 48);
    v131 = v192;
    result = sub_100064264();
    if (result)
    {
      v132 = &v199[v204];
      v133 = v194;
      v194(v117, v127, v68);
      v134 = v186;
      v133(v117 + *(v186 + 48), v131, v68);
      sub_100016718(v117, v120, &qword_1000864B0, &unk_10006A390);
      v135 = v134;
      v136 = *(v134 + 48);
      v137 = v193;
      (v193)(v132, v120, v68);
      v138 = v198;
      (v198)(v120 + v136, v68);
      v139 = v68;
      sub_100015F0C(v117, v120, &qword_1000864B0, &unk_10006A390);
      (v137)(&v132[*(v191 + 9)], v120 + *(v135 + 48), v68);
      v140 = v192;
      v138(v120, v68);
      v190[v132] = 1;
      v202 = *(v202 + 48);
      v141 = v205;
      result = sub_100064264();
      if (result)
      {
        v142 = v204 + 2 * v199;
        v143 = v194;
        v194(v117, v140, v139);
        v143(v117 + *(v135 + 48), v141, v139);
        sub_100016718(v117, v120, &qword_1000864B0, &unk_10006A390);
        v144 = *(v135 + 48);
        v145 = v193;
        (v193)(v142, v120, v139);
        v146 = v120 + v144;
        v147 = v198;
        (v198)(v146, v139);
        sub_100015F0C(v117, v120, &qword_1000864B0, &unk_10006A390);
        (v145)(v142 + *(v191 + 9), v120 + *(v135 + 48), v139);
        v147(v120, v139);
        *(v142 + v202) = 2;
        v147(v192, v139);
        v147(v197, v139);
        v147(v141, v139);
        v147(v195, v139);
        (*(v182 + 8))(v181, v183);
        return v200;
      }

      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void *sub_10004561C(uint64_t a1, uint64_t a2, char *a3)
{
  v88 = a1;
  v5 = sub_100063574();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v85 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v81 - v9;
  v11 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = sub_100041388(a3, a2);
  v90 = a2;
  v19 = 0;
  v20 = sub_10003E5F0(sub_10004840C, v89, v18);
  v21 = v20[2];
  v86 = v12;
  if (!v21)
  {

    if (qword_1000849B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_85;
  }

  sub_100016718(v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v17, &qword_1000864B8, &qword_1000699F0);

  LODWORD(v87) = v17[*(v11 + 48)];
  sub_10000494C(v17, &qword_100084E60, &unk_100065B80);
  while (1)
  {
    v36 = sub_100043DB8(a3, a2);
    __chkstk_darwin(v36);
    *(&v81 - 2) = a2;
    v38 = sub_10003E5F0(sub_100048318, (&v81 - 4), v37);
    if (v38[2])
    {
      sub_100016718(v38 + ((*(v86 + 80) + 32) & ~*(v86 + 80)), v15, &qword_1000864B8, &qword_1000699F0);

      LODWORD(v86) = v15[*(v11 + 48)];
      sub_10000494C(v15, &qword_100084E60, &unk_100065B80);
    }

    else
    {

      if (qword_1000849B0 != -1)
      {
        swift_once();
      }

      v39 = sub_100063704();
      sub_1000049B4(v39, qword_100086400);
      v40 = v85;
      (*(v6 + 16))(v85, a2, v5);
      v41 = sub_1000636E4();
      v42 = v6;
      v43 = sub_100064374();
      if (os_log_type_enabled(v41, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v95[0] = v45;
        *v44 = 136315138;
        sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
        v46 = sub_100064584();
        v48 = v47;
        v49 = *(v42 + 8);
        v11 = v42 + 8;
        v49(v40, v5);
        v50 = sub_10003EB20(v46, v48, v95);

        *(v44 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v41, v43, "provideHomePrompts: Failed to identify time of week type for %s.", v44, 0xCu);
        sub_1000226EC(v45);
      }

      else
      {

        v51 = *(v42 + 8);
        v11 = v42 + 8;
        v51(v40, v5);
      }

      LODWORD(v86) = 4;
    }

    a2 = v88;
    v93 = &_swiftEmptySetSingleton;
    v94 = &_swiftEmptySetSingleton;
    v15 = (v88 + 56);
    v52 = 1 << *(v88 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v6 = v53 & *(v88 + 56);
    a3 = ((v52 + 63) >> 6);
    v85 = 0x800000010006B460;

    v10 = 0;
    v19 = 48;
    v5 = 0xEA0000000000656ELL;
    if (v6)
    {
LABEL_22:
      while (1)
      {
        v55 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v56 = (*(a2 + 48) + 48 * (v55 | (v10 << 6)));
        v58 = v56[1];
        v57 = v56[2];
        v95[0] = *v56;
        v95[1] = v58;
        v95[2] = v57;
        if (BYTE9(v95[0]))
        {
          if (BYTE9(v95[0]) != 1)
          {
            break;
          }
        }

        v59 = sub_100064594();
        sub_10000B264(v95, v92);

        if (v59)
        {
          v11 = BYTE10(v95[0]);
          if (!BYTE10(v95[0]))
          {
            goto LABEL_29;
          }

LABEL_26:
          if (v11 != 1)
          {

            goto LABEL_35;
          }

LABEL_29:
          v60 = sub_100064594();

          if (v60)
          {
            goto LABEL_35;
          }

          if (v87 != 4)
          {
            if (v11)
            {
              v61 = sub_100064594();

              if ((v61 & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            else
            {
            }

            v62 = 0xE900000000000064;
            if (BYTE11(v95[0]) > 1u)
            {
              if (BYTE11(v95[0]) == 2)
              {
                v63 = 0xD000000000000010;
                v64 = v85;
              }

              else
              {
                v63 = 0x446C616963657073;
                v65 = 7567713;
LABEL_44:
                v64 = v65 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              }
            }

            else
            {
              v63 = 0x616568416B6F6F6CLL;
              v64 = 0xE900000000000064;
              if (BYTE11(v95[0]))
              {
                v63 = 0x6D6F4D6568546E69;
                v65 = 7630437;
                goto LABEL_44;
              }
            }

            if (v87 > 1)
            {
              if (v87 == 2)
              {
                v66 = 0xD000000000000010;
                v62 = v85;
                goto LABEL_50;
              }

              v67 = 0x446C616963657073;
              v68 = 7567713;
LABEL_53:
              v62 = v68 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v63 != v67)
              {
LABEL_55:
                v69 = sub_100064594();

                a2 = v88;
                if (v69)
                {
                  goto LABEL_35;
                }

                goto LABEL_56;
              }
            }

            else
            {
              v66 = 0x616568416B6F6F6CLL;
              if (v87)
              {
                v67 = 0x6D6F4D6568546E69;
                v68 = 7630437;
                goto LABEL_53;
              }

LABEL_50:
              if (v63 != v66)
              {
                goto LABEL_55;
              }
            }

            if (v64 == v62)
            {
              goto LABEL_79;
            }

            goto LABEL_55;
          }

LABEL_56:
          if (v86 == 4)
          {
            goto LABEL_57;
          }

          if (v11)
          {
          }

          else
          {
            v70 = sub_100064594();

            if ((v70 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v71 = 0xE900000000000064;
          if (BYTE11(v95[0]) > 1u)
          {
            v74 = v86;
            if (BYTE11(v95[0]) == 2)
            {
              v72 = 0xD000000000000010;
              v73 = v85;
LABEL_68:
              if (v74 <= 1)
              {
                goto LABEL_69;
              }

              goto LABEL_72;
            }

            v72 = 0x446C616963657073;
            v75 = 7567713;
          }

          else
          {
            v72 = 0x616568416B6F6F6CLL;
            v73 = 0xE900000000000064;
            v74 = v86;
            if (!BYTE11(v95[0]))
            {
              goto LABEL_68;
            }

            v72 = 0x6D6F4D6568546E69;
            v75 = 7630437;
          }

          v73 = v75 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v74 <= 1)
          {
LABEL_69:
            v76 = 0x616568416B6F6F6CLL;
            if (!v74)
            {
              goto LABEL_74;
            }

            v77 = 0x6D6F4D6568546E69;
            v78 = 7630437;
            goto LABEL_77;
          }

LABEL_72:
          if (v74 == 2)
          {
            v76 = 0xD000000000000010;
            v71 = v85;
LABEL_74:
            if (v72 == v76)
            {
              goto LABEL_78;
            }

            goto LABEL_81;
          }

          v77 = 0x446C616963657073;
          v78 = 7567713;
LABEL_77:
          v71 = v78 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v72 == v77)
          {
LABEL_78:
            if (v73 == v71)
            {
LABEL_79:

              a2 = v88;
              goto LABEL_35;
            }
          }

LABEL_81:
          v79 = sub_100064594();

          a2 = v88;
          if ((v79 & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_35:
          sub_10003F0C8(v91, v95);
          v92[0] = v91[0];
          v92[1] = v91[1];
          v92[2] = v91[2];
          sub_1000480AC(v92);
          if (!v6)
          {
            goto LABEL_18;
          }
        }

        else
        {
LABEL_57:
          sub_1000480AC(v95);
          if (!v6)
          {
            goto LABEL_18;
          }
        }
      }

      sub_10000B264(v95, v92);

      v11 = BYTE10(v95[0]);
      if (!BYTE10(v95[0]))
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_18:
    v54 = (v10 + 1);
    if (!__OFADD__(v10, 1))
    {
      break;
    }

    __break(1u);
LABEL_85:
    swift_once();
LABEL_4:
    v22 = sub_100063704();
    sub_1000049B4(v22, qword_100086400);
    (*(v6 + 16))(v10, a2, v5);
    v23 = v5;
    v24 = sub_1000636E4();
    v25 = v6;
    v26 = sub_100064374();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      v83 = a3;
      v28 = v23;
      v29 = v27;
      v81 = v27;
      v87 = swift_slowAlloc();
      *&v95[0] = v87;
      *v29 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v30 = v25;
      v82 = v25;
      v31 = sub_100064584();
      v84 = v19;
      v33 = v32;
      (*(v30 + 8))(v10, v28);
      v34 = sub_10003EB20(v31, v33, v95);

      v35 = v81;
      *(v81 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v24, v26, "provideHomePrompts: Failed to identify time of day type for %s.", v35, 0xCu);
      sub_1000226EC(v87);

      LODWORD(v87) = 4;
      v5 = v28;
      a3 = v83;
      v6 = v82;
    }

    else
    {

      (*(v25 + 8))(v10, v23);
      LODWORD(v87) = 4;
      v5 = v23;
      v6 = v25;
    }
  }

  if (v54 < a3)
  {
    v6 = *&v15[8 * v54];
    ++v10;
    if (v6)
    {
      v10 = v54;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  return v94;
}

unint64_t *sub_1000462C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = result;
  v40 = 0;
  v5 = 0;
  v47 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = *(a4 + 9);
  v42 = *(a4 + 11);
  while (v9)
  {
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v41 = v13 | (v5 << 6);
    v16 = (*(v47 + 48) + 48 * v41);
    v18 = v16[1];
    v17 = v16[2];
    v44 = *v16;
    v45 = v18;
    v46 = v17;
    v19 = *(a4 + 8);
    if (BYTE8(v44))
    {
      if (!*(a4 + 8))
      {
        goto LABEL_72;
      }

LABEL_18:
      if (BYTE9(v44))
      {
        if (BYTE9(v44) == 1)
        {
          v20 = 0x746365526B636F6CLL;
          v21 = 0xEF72616C75676E61;
          if (!v11)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v21 = 0xE400000000000000;
          v20 = 1701670760;
          if (!v11)
          {
LABEL_25:
            v22 = 0xEA0000000000656ELL;
            if (v20 != 0x696C6E496B636F6CLL)
            {
              goto LABEL_32;
            }

            goto LABEL_30;
          }
        }
      }

      else
      {
        v20 = 0x696C6E496B636F6CLL;
        v21 = 0xEA0000000000656ELL;
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      if (v11 == 1)
      {
        v22 = 0xEF72616C75676E61;
        if (v20 != 0x746365526B636F6CLL)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = 0xE400000000000000;
        if (v20 != 1701670760)
        {
          goto LABEL_32;
        }
      }

LABEL_30:
      if (v21 == v22)
      {
        sub_10000B264(&v44, v43);

        goto LABEL_33;
      }

LABEL_32:
      v23 = sub_100064594();
      sub_10000B264(&v44, v43);

      if ((v23 & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_33:
      v24 = 0xE900000000000079;
      if (BYTE10(v44))
      {
        if (BYTE10(v44) == 1)
        {
          v25 = 0xEA00000000006B65;
          v26 = 0x6557664F656D6974;
          v27 = *(a4 + 10);
          if (!*(a4 + 10))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v25 = 0xE700000000000000;
          v26 = 0x656D6974796E61;
          v27 = *(a4 + 10);
          if (!*(a4 + 10))
          {
LABEL_40:
            if (v26 != 0x6144664F656D6974)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }
        }
      }

      else
      {
        v26 = 0x6144664F656D6974;
        v25 = 0xE900000000000079;
        v27 = *(a4 + 10);
        if (!*(a4 + 10))
        {
          goto LABEL_40;
        }
      }

      if (v27 == 1)
      {
        v24 = 0xEA00000000006B65;
        if (v26 != 0x6557664F656D6974)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v24 = 0xE700000000000000;
        if (v26 != 0x656D6974796E61)
        {
          goto LABEL_47;
        }
      }

LABEL_45:
      if (v25 == v24)
      {

        goto LABEL_48;
      }

LABEL_47:
      v28 = sub_100064594();

      if ((v28 & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_48:
      if (BYTE11(v44) > 1u)
      {
        if (BYTE11(v44) == 2)
        {
          v29 = 0xD000000000000010;
          v30 = 0x800000010006B460;
          goto LABEL_55;
        }

        v29 = 0x446C616963657073;
        v31 = 7567713;
      }

      else
      {
        v29 = 0x616568416B6F6F6CLL;
        v30 = 0xE900000000000064;
        if (!BYTE11(v44))
        {
          goto LABEL_55;
        }

        v29 = 0x6D6F4D6568546E69;
        v31 = 7630437;
      }

      v30 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_55:
      if (v42 > 1)
      {
        if (v42 == 2)
        {
          v32 = 0xD000000000000010;
          v33 = 0x800000010006B460;
LABEL_60:
          if (v29 != v32)
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        }

        v34 = 0x446C616963657073;
        v35 = 7567713;
      }

      else
      {
        v32 = 0x616568416B6F6F6CLL;
        v33 = 0xE900000000000064;
        if (!v42)
        {
          goto LABEL_60;
        }

        v34 = 0x6D6F4D6568546E69;
        v35 = 7630437;
      }

      v33 = v35 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v29 != v34)
      {
        goto LABEL_66;
      }

LABEL_64:
      if (v30 == v33)
      {

        goto LABEL_67;
      }

LABEL_66:
      v36 = sub_100064594();

      if ((v36 & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_67:
      if (v45 != *(a4 + 16) && (sub_100064594() & 1) == 0)
      {
LABEL_71:
        result = sub_1000480AC(&v44);
        goto LABEL_72;
      }

      if (v46 == *(a4 + 32))
      {
        result = sub_1000480AC(&v44);
      }

      else
      {
        v12 = sub_100064594();
        result = sub_1000480AC(&v44);
        if ((v12 & 1) == 0)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      if (v44 != *a4)
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_72:
      *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_76;
      }

      ++v40;
    }
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      v37 = v47;

      return sub_100040988(v39, a2, v40, v37);
    }

    v15 = *(v6 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v9 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_10004686C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_79;
  }

  v7 = sub_10000B264(a2, &v48);
  while (2)
  {
    v42[1] = v42;
    __chkstk_darwin(v7);
    v43 = v42 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v6);
    v8 = 0;
    v5 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    v6 = (v9 + 63) >> 6;
    v44 = 0;
    v45 = 0x800000010006B460;
    v46 = v3;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = v13 | (v8 << 6);
      v17 = (*(v3 + 48) + 48 * v16);
      v19 = v17[1];
      v18 = v17[2];
      v48 = *v17;
      v49 = v19;
      v50 = v18;
      v20 = *(a2 + 8);
      if (BYTE8(v48))
      {
        if (!*(a2 + 8))
        {
          goto LABEL_74;
        }

LABEL_20:
        if (BYTE9(v48))
        {
          if (BYTE9(v48) == 1)
          {
            v21 = 0x746365526B636F6CLL;
            v22 = 0xEF72616C75676E61;
            v23 = *(a2 + 9);
            if (!*(a2 + 9))
            {
              goto LABEL_27;
            }
          }

          else
          {
            v22 = 0xE400000000000000;
            v21 = 1701670760;
            v23 = *(a2 + 9);
            if (!*(a2 + 9))
            {
LABEL_27:
              v24 = 0xEA0000000000656ELL;
              if (v21 != 0x696C6E496B636F6CLL)
              {
                goto LABEL_34;
              }

              goto LABEL_32;
            }
          }
        }

        else
        {
          v21 = 0x696C6E496B636F6CLL;
          v22 = 0xEA0000000000656ELL;
          v23 = *(a2 + 9);
          if (!*(a2 + 9))
          {
            goto LABEL_27;
          }
        }

        if (v23 == 1)
        {
          v24 = 0xEF72616C75676E61;
          if (v21 != 0x746365526B636F6CLL)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v24 = 0xE400000000000000;
          if (v21 != 1701670760)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        if (v22 == v24)
        {
          sub_10000B264(&v48, v47);

          goto LABEL_35;
        }

LABEL_34:
        v25 = sub_100064594();
        sub_10000B264(&v48, v47);

        if ((v25 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_35:
        v26 = 0xE900000000000079;
        if (BYTE10(v48))
        {
          if (BYTE10(v48) == 1)
          {
            v27 = 0xEA00000000006B65;
            v28 = 0x6557664F656D6974;
            v29 = *(a2 + 10);
            if (!*(a2 + 10))
            {
              goto LABEL_42;
            }
          }

          else
          {
            v27 = 0xE700000000000000;
            v28 = 0x656D6974796E61;
            v29 = *(a2 + 10);
            if (!*(a2 + 10))
            {
LABEL_42:
              if (v28 != 0x6144664F656D6974)
              {
                goto LABEL_49;
              }

              goto LABEL_47;
            }
          }
        }

        else
        {
          v28 = 0x6144664F656D6974;
          v27 = 0xE900000000000079;
          v29 = *(a2 + 10);
          if (!*(a2 + 10))
          {
            goto LABEL_42;
          }
        }

        if (v29 == 1)
        {
          v26 = 0xEA00000000006B65;
          if (v28 != 0x6557664F656D6974)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v26 = 0xE700000000000000;
          if (v28 != 0x656D6974796E61)
          {
            goto LABEL_49;
          }
        }

LABEL_47:
        if (v27 == v26)
        {

          goto LABEL_50;
        }

LABEL_49:
        v30 = sub_100064594();

        if ((v30 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_50:
        if (BYTE11(v48) > 1u)
        {
          if (BYTE11(v48) == 2)
          {
            v31 = 0xD000000000000010;
            v32 = v45;
            goto LABEL_57;
          }

          v31 = 0x446C616963657073;
          v33 = 7567713;
        }

        else
        {
          v31 = 0x616568416B6F6F6CLL;
          v32 = 0xE900000000000064;
          if (!BYTE11(v48))
          {
            goto LABEL_57;
          }

          v31 = 0x6D6F4D6568546E69;
          v33 = 7630437;
        }

        v32 = v33 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_57:
        if (*(a2 + 11) > 1u)
        {
          if (*(a2 + 11) == 2)
          {
            v34 = 0xD000000000000010;
            v35 = v45;
LABEL_62:
            if (v31 != v34)
            {
              goto LABEL_68;
            }

            goto LABEL_66;
          }

          v36 = 0x446C616963657073;
          v37 = 7567713;
        }

        else
        {
          v34 = 0x616568416B6F6F6CLL;
          v35 = 0xE900000000000064;
          if (!*(a2 + 11))
          {
            goto LABEL_62;
          }

          v36 = 0x6D6F4D6568546E69;
          v37 = 7630437;
        }

        v35 = v37 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v31 != v36)
        {
          goto LABEL_68;
        }

LABEL_66:
        if (v32 == v35)
        {

          goto LABEL_69;
        }

LABEL_68:
        v38 = sub_100064594();

        if ((v38 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_69:
        if (v49 != *(a2 + 16) && (sub_100064594() & 1) == 0)
        {
LABEL_73:
          sub_1000480AC(&v48);
          v3 = v46;
          goto LABEL_74;
        }

        v3 = v46;
        if (v50 == *(a2 + 32))
        {
          sub_1000480AC(&v48);
        }

        else
        {
          v12 = sub_100064594();
          sub_1000480AC(&v48);
          if ((v12 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        if (v48 != *a2)
        {
          v20 = 1;
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_74:
        *&v43[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
        }

        ++v44;
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v6)
      {
        v39 = sub_100040988(v43, v42[2], v44, v3);
        goto LABEL_77;
      }

      v15 = *(v5 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_79:
    sub_10000B264(a2, &v48);

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v41 = swift_slowAlloc();
  sub_10000B264(a2, &v48);
  v39 = sub_10004084C(v41, v5, v3, a2);

LABEL_77:
  sub_1000480AC(a2);
  return v39;
}

uint64_t sub_100046F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = (a4 + *(type metadata accessor for StartWritingWidgetPersistedPrompts(0) + 28));
  v11 = v10[2];
  v30[1] = v10[1];
  v30[2] = v11;
  v30[0] = *v10;
  sub_10000B264(v30, v29);
  v12 = sub_10004561C(a1, a2, a3);
  v14 = v13;
  if (BYTE10(v30[0]))
  {
    if (BYTE10(v30[0]) != 1)
    {

LABEL_9:

      goto LABEL_10;
    }

    v15 = v12;
  }

  else
  {
    v15 = v12;
  }

  v16 = sub_100064594();

  if ((v16 & 1) != 0 || sub_100040DB8(0xAuLL))
  {
    goto LABEL_9;
  }

  v14 = v15;
LABEL_10:
  sub_10000B264(v30, v29);
  v17 = sub_10004686C(v14, v30);
  sub_1000480AC(v30);
  if (*(v17 + 16))
  {
    v18 = sub_1000643E4();
    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = *(v17 + 36);
      v21 = sub_100040DB8(v19);
      v22 = sub_10003DE30(v18, v20, 0, v21, v17);
      v24 = v23;
      v26 = v25;
      sub_10003DF68(v22, v23, v17, v29);
      sub_1000480AC(v30);
      sub_1000480A0(v22, v24, v26 & 1);

      v28 = v29[1];
      *a5 = v29[0];
      *(a5 + 16) = v28;
      *(a5 + 32) = v29[2];
      *(a5 + 48) = 0;
      return result;
    }

    __break(1u);
  }

  result = sub_100064474();
  __break(1u);
  return result;
}

unint64_t *sub_1000471A0(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  LODWORD(v108) = a4;
  v107 = a1;
  v6 = sub_100063574();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v104 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v97 - v10;
  v12 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v97 - v17;
  v19 = sub_100041388(a3, a2);
  v110 = a2;
  v20 = 0;
  v21 = sub_10003E5F0(sub_10004840C, v109, v19);
  v22 = v21[2];
  v105 = v13;
  if (v22)
  {
    sub_100016718(v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v18, &qword_1000864B8, &qword_1000699F0);

    LODWORD(v106) = v18[*(v12 + 48)];
    sub_10000494C(v18, &qword_100084E60, &unk_100065B80);
  }

  else
  {

    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v23 = sub_100063704();
    sub_1000049B4(v23, qword_100086400);
    v7[2](v11, a2, v6);
    v24 = v6;
    v25 = sub_1000636E4();
    v26 = v7;
    v27 = sub_100064374();
    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      v102 = a3;
      v29 = v24;
      v30 = v28;
      v100 = v28;
      v106 = swift_slowAlloc();
      *&v112[0] = v106;
      *v30 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v31 = v26;
      v101 = v26;
      v32 = sub_100064584();
      v103 = 0;
      v34 = v33;
      v31[1](v11, v29);
      v35 = sub_10003EB20(v32, v34, v112);
      v20 = v103;

      v36 = v100;
      *(v100 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v25, v27, "provideLockPrompts: Failed to identify time of day type for %s.", v36, 0xCu);
      sub_1000226EC(v106);

      LODWORD(v106) = 4;
      v6 = v29;
      a3 = v102;
      v7 = v101;
    }

    else
    {

      (v26[1])(v11, v24);
      LODWORD(v106) = 4;
      v6 = v24;
      v7 = v26;
    }
  }

  v37 = sub_100043DB8(a3, a2);
  __chkstk_darwin(v37);
  v97[-2] = a2;
  v39 = sub_10003E5F0(sub_10004840C, &v97[-4], v38);
  v103 = v20;
  if (v39[2])
  {
    sub_100016718(v39 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v16, &qword_1000864B8, &qword_1000699F0);

    v40 = sub_10000494C(v16, &qword_100084E60, &unk_100065B80);
    v41 = v107;
    v42 = v108;
  }

  else
  {

    v42 = v108;
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v43 = sub_100063704();
    sub_1000049B4(v43, qword_100086400);
    v44 = v104;
    v7[2](v104, a2, v6);
    v45 = v6;
    v46 = sub_1000636E4();
    v47 = v7;
    v48 = sub_100064374();
    v49 = os_log_type_enabled(v46, v48);
    v41 = v107;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v112[0] = v51;
      *v50 = 136315138;
      sub_1000483C8(&qword_1000864E0, &protocol conformance descriptor for Date);
      v52 = sub_100064584();
      v54 = v53;
      (v47[1])(v44, v45);
      v55 = sub_10003EB20(v52, v54, v112);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v46, v48, "provideLockPrompts: Failed to identify time of week type for %s.", v50, 0xCu);
      sub_1000226EC(v51);

      v42 = v108;
    }

    else
    {

      v40 = (v47[1])(v44, v45);
    }
  }

  v56 = v97;
  __chkstk_darwin(v40);
  LOBYTE(v97[-2]) = v42 & 1;
  BYTE1(v97[-2]) = v106;
  LODWORD(v104) = v57;
  BYTE2(v97[-2]) = v57;
  v58 = *(v41 + 32);
  v59 = v58 & 0x3F;
  v60 = ((1 << v58) + 63) >> 6;
  v61 = 8 * v60;

  if (v59 > 0xD)
  {
    goto LABEL_98;
  }

  do
  {
    v98 = v60;
    v99 = v56;
    v97[1] = v97;
    v63 = 0xEF72616C75676E61;
    __chkstk_darwin(isStackAllocationSafe);
    v101 = (v97 - ((v61 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v101, v61);
    v103 = 0;
    v64 = 0;
    v56 = (v41 + 56);
    v65 = 1 << *(v41 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v60 = v66 & *(v41 + 56);
    v67 = (v65 + 63) >> 6;
    if (v42)
    {
      v68 = 0x696C6E496B636F6CLL;
    }

    else
    {
      v68 = 0x746365526B636F6CLL;
    }

    v108 = v68;
    v102 = 0xEA0000000000656ELL;
    if (v42)
    {
      v63 = 0xEA0000000000656ELL;
    }

    v100 = 0x800000010006B460;
    v105 = v63;
    while (v60)
    {
      v69 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
LABEL_32:
      v72 = v69 | (v64 << 6);
      v73 = (*(v41 + 48) + 48 * v72);
      v75 = v73[1];
      v74 = v73[2];
      v112[0] = *v73;
      v112[1] = v75;
      v112[2] = v74;
      if (BYTE9(v112[0]))
      {
        if (BYTE9(v112[0]) != 1)
        {
          v61 = 0xE400000000000000;
LABEL_40:
          v77 = sub_100064594();
          sub_10000B264(v112, v111);

          if ((v77 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

        v76 = 0x746365526B636F6CLL;
        v61 = 0xEF72616C75676E61;
      }

      else
      {
        v76 = 0x696C6E496B636F6CLL;
        v61 = v102;
      }

      if (v76 != v108 || v61 != v63)
      {
        goto LABEL_40;
      }

      sub_10000B264(v112, v111);

LABEL_41:
      v78 = BYTE10(v112[0]);
      v61 = 0xE900000000000079;
      if (BYTE10(v112[0]))
      {
        if (BYTE10(v112[0]) != 1)
        {
          goto LABEL_92;
        }

        v61 = 0xEA00000000006B65;
      }

      v79 = sub_100064594();

      if (v79)
      {
        goto LABEL_93;
      }

      v80 = BYTE11(v112[0]);
      if (v106 == 4)
      {
        goto LABEL_68;
      }

      if (v78)
      {
        v61 = sub_100064594();

        if (v61)
        {
          goto LABEL_50;
        }

LABEL_68:
        if (v104 == 4)
        {
          goto LABEL_24;
        }

        if (v78)
        {

          goto LABEL_72;
        }

        v61 = sub_100064594();

        if ((v61 & 1) == 0)
        {
LABEL_24:
          sub_1000480AC(v112);
          v63 = v105;
          v41 = v107;
        }

        else
        {
LABEL_72:
          v88 = 0xE900000000000064;
          if (v80 > 1)
          {
            if (v80 == 2)
            {
              v89 = 0xD000000000000010;
              v61 = v100;
            }

            else
            {
              v89 = 0x446C616963657073;
              v61 = 0xEB00000000737961;
            }

            v90 = v104;
            if (v104 <= 1)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v89 = 0x616568416B6F6F6CLL;
            v61 = 0xE900000000000064;
            v90 = v104;
            if (v80)
            {
              v89 = 0x6D6F4D6568546E69;
              v61 = 0xEB00000000746E65;
            }

            if (v104 <= 1)
            {
LABEL_76:
              v91 = 0x616568416B6F6F6CLL;
              v63 = v105;
              if (v90)
              {
                v92 = 0x6D6F4D6568546E69;
                v93 = 7630437;
                goto LABEL_87;
              }

              goto LABEL_85;
            }
          }

          v63 = v105;
          if (v90 != 2)
          {
            v92 = 0x446C616963657073;
            v93 = 7567713;
LABEL_87:
            v88 = v93 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v89 != v92)
            {
              goto LABEL_89;
            }

LABEL_88:
            if (v61 != v88)
            {
              goto LABEL_89;
            }

LABEL_91:

LABEL_92:

            goto LABEL_93;
          }

          v91 = 0xD000000000000010;
          v88 = v100;
LABEL_85:
          if (v89 == v91)
          {
            goto LABEL_88;
          }

LABEL_89:
          v42 = sub_100064594();

          sub_1000480AC(v112);
          if (v42)
          {
            goto LABEL_94;
          }

          v41 = v107;
        }
      }

      else
      {

LABEL_50:
        v81 = 0xE900000000000064;
        if (v80 > 1)
        {
          v83 = v106;
          if (v80 == 2)
          {
            v82 = 0xD000000000000010;
            v61 = v100;
LABEL_55:
            if (v83 <= 1)
            {
              goto LABEL_56;
            }

            goto LABEL_60;
          }

          v82 = 0x446C616963657073;
          v84 = 7567713;
        }

        else
        {
          v82 = 0x616568416B6F6F6CLL;
          v61 = 0xE900000000000064;
          v83 = v106;
          if (!v80)
          {
            goto LABEL_55;
          }

          v82 = 0x6D6F4D6568546E69;
          v84 = 7630437;
        }

        v61 = v84 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v83 <= 1)
        {
LABEL_56:
          v85 = 0x616568416B6F6F6CLL;
          if (!v83)
          {
            goto LABEL_62;
          }

          v86 = 0x6D6F4D6568546E69;
          v87 = 7630437;
          goto LABEL_65;
        }

LABEL_60:
        if (v83 == 2)
        {
          v85 = 0xD000000000000010;
          v81 = v100;
LABEL_62:
          if (v82 != v85)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        v86 = 0x446C616963657073;
        v87 = 7567713;
LABEL_65:
        v81 = v87 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v82 != v86)
        {
          goto LABEL_67;
        }

LABEL_66:
        if (v61 == v81)
        {
          goto LABEL_91;
        }

LABEL_67:
        v42 = sub_100064594();

        if ((v42 & 1) == 0)
        {
          goto LABEL_68;
        }

LABEL_93:
        sub_1000480AC(v112);
        v63 = v105;
LABEL_94:
        *(v101 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(v101 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v72));
        v41 = v107;
        if (__OFADD__(v103, 1))
        {
          __break(1u);
        }

        ++v103;
      }
    }

    v70 = v64;
    while (1)
    {
      v64 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v64 >= v67)
      {
        return sub_100040988(v101, v98, v103, v41);
      }

      v71 = v56[v64];
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v60 = (v71 - 1) & v71;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_98:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v95 = swift_slowAlloc();
  v96 = sub_1000408F8(v95, v60, v41, sub_1000483A0);

  return v96;
}

void sub_10004805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

uint64_t sub_1000480A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100048100(uint64_t a1)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_10004815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

uint64_t sub_1000481A0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1000482B4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  (*(*(started - 8) + 40))(a2, a1, started);
  return a2;
}

uint64_t sub_100048338(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100048394(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000483C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100063574();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004842C()
{
  result = qword_100086510;
  if (!qword_100086510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086510);
  }

  return result;
}

unint64_t sub_100048484()
{
  result = qword_100086518;
  if (!qword_100086518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086518);
  }

  return result;
}

uint64_t sub_100048544@<X0>(uint64_t a3@<X8>)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  sub_100009E20();
  v5 = sub_100064394();
  v6 = sub_1000642A4();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    sub_1000643B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_10000494C(v16, &qword_100085060, &unk_100065F20);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v8 = sub_100064394();
    v9 = sub_1000642A4();
    [v8 removeObjectForKey:v9];

    v11 = 1;
    return (*(*(started - 8) + 56))(a3, v11, 1, started);
  }

  sub_1000633A4();
  swift_allocObject();
  sub_100063394();
  sub_10004A440(&qword_1000865D0, &unk_10006AF2C);
  sub_100063384();
  sub_10004A3EC(v12, v13);

  v11 = 0;
  return (*(*(started - 8) + 56))(a3, v11, 1, started);
}

uint64_t sub_1000487B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000021D4(&qword_100084E70, &unk_100065B90);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-v5];
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  v8 = *(started - 8);
  __chkstk_darwin(started);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100016718(a1, v6, &qword_100084E70, &unk_100065B90);
  if ((*(v8 + 48))(v6, 1, started) == 1)
  {
    sub_10000494C(v6, &qword_100084E70, &unk_100065B90);
    sub_100009E20();
    v11 = sub_100064394();
    v12 = sub_1000642A4();
    [v11 removeObjectForKey:v12];
  }

  else
  {
    sub_1000481A0(v6, v10);
    sub_1000633D4();
    swift_allocObject();
    sub_1000633C4();
    sub_10004A440(&qword_1000865C8, &unk_10006AF54);
    v13 = sub_1000633B4();
    v15 = v14;

    sub_100009E20();
    v16 = sub_100064394();
    isa = sub_100063464().super.isa;
    v18 = sub_1000642A4();
    [v16 setObject:isa forKey:v18];
    sub_10004A3EC(v13, v15);

    sub_100048100(v10);
  }

  return 1;
}

__n128 sub_100048A64@<Q0>(unsigned __int8 a1@<W0>, __n128 *a2@<X8>)
{
  v4 = sub_1000636A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100084A58 != -1)
      {
        swift_once();
      }

      v12 = sub_1000049B4(v4, qword_100090F58);
      v9 = *(v5 + 16);
      v9(v7, v12, v4);
      v10 = sub_100063F94();
      if (qword_100084A60 != -1)
      {
        swift_once();
      }

      v11 = qword_100090F70;
      goto LABEL_14;
    }

    if (qword_100084A80 != -1)
    {
      swift_once();
    }

    v27 = sub_1000049B4(v4, qword_100090FD0);
    v24 = *(v5 + 16);
    v24(v7, v27, v4);
    v25 = sub_100063F94();
    if (qword_100084A88 != -1)
    {
      swift_once();
    }

    v26 = qword_100090FE8;
LABEL_25:
    v28 = sub_1000049B4(v4, v26);
    v24(v7, v28, v4);
    v29 = sub_100063F94();
    sub_1000021D4(&qword_100085428, &unk_100069B90);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100065BA0;
    *(v30 + 32) = v25;
    *(v30 + 40) = v29;

    sub_1000640C4();
    sub_1000640D4();
    sub_100064054();
    sub_100063804();

    v31 = sub_1000021D4(&qword_100085408, &qword_100066C00);
    v32 = *(v31 + 36);
    v33 = enum case for BlendMode.plusDarker(_:);
    v19 = sub_100064094();
    v20 = *(*(v19 - 8) + 104);
    v20(a2 + v32, v33, v19);
    v22 = enum case for BlendMode.plusLighter(_:);
    v21 = a2 + *(v31 + 40);
    goto LABEL_26;
  }

  if (a1)
  {
    if (qword_100084A08 != -1)
    {
      swift_once();
    }

    v23 = sub_1000049B4(v4, qword_100090E68);
    v24 = *(v5 + 16);
    v24(v7, v23, v4);
    v25 = sub_100063F94();
    if (qword_100084A10 != -1)
    {
      swift_once();
    }

    v26 = qword_100090E80;
    goto LABEL_25;
  }

  if (qword_100084A30 != -1)
  {
    swift_once();
  }

  v8 = sub_1000049B4(v4, qword_100090EE0);
  v9 = *(v5 + 16);
  v9(v7, v8, v4);
  v10 = sub_100063F94();
  if (qword_100084A38 != -1)
  {
    swift_once();
  }

  v11 = qword_100090EF8;
LABEL_14:
  v13 = sub_1000049B4(v4, v11);
  v9(v7, v13, v4);
  v14 = sub_100063F94();
  sub_1000021D4(&qword_100085428, &unk_100069B90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100065BA0;
  *(v15 + 32) = v10;
  *(v15 + 40) = v14;

  sub_1000640C4();
  sub_1000640D4();
  sub_100064054();
  sub_100063804();

  v16 = sub_1000021D4(&qword_100085408, &qword_100066C00);
  v17 = *(v16 + 36);
  v18 = enum case for BlendMode.normal(_:);
  v19 = sub_100064094();
  v20 = *(*(v19 - 8) + 104);
  v20(a2 + v17, v18, v19);
  v21 = a2 + *(v16 + 40);
  v22 = v18;
LABEL_26:
  v20(v21, v22, v19);
  result = v37[0];
  v35 = v37[1];
  *a2 = v37[0];
  a2[1] = v35;
  a2[2].n128_u64[0] = v38;
  return result;
}

__n128 sub_10004905C@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000636A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100084A40 != -1)
      {
        swift_once();
      }

      v12 = sub_1000049B4(v4, qword_100090F10);
      v9 = *(v5 + 16);
      v9(v7, v12, v4);
      v10 = sub_100063F94();
      if (qword_100084A48 != -1)
      {
        swift_once();
      }

      v11 = qword_100090F28;
    }

    else
    {
      if (qword_100084A68 != -1)
      {
        swift_once();
      }

      v14 = sub_1000049B4(v4, qword_100090F88);
      v9 = *(v5 + 16);
      v9(v7, v14, v4);
      v10 = sub_100063F94();
      if (qword_100084A70 != -1)
      {
        swift_once();
      }

      v11 = qword_100090FA0;
    }
  }

  else if (a1)
  {
    if (qword_1000849F0 != -1)
    {
      swift_once();
    }

    v13 = sub_1000049B4(v4, qword_100090E20);
    v9 = *(v5 + 16);
    v9(v7, v13, v4);
    v10 = sub_100063F94();
    if (qword_1000849F8 != -1)
    {
      swift_once();
    }

    v11 = qword_100090E38;
  }

  else
  {
    if (qword_100084A18 != -1)
    {
      swift_once();
    }

    v8 = sub_1000049B4(v4, qword_100090E98);
    v9 = *(v5 + 16);
    v9(v7, v8, v4);
    v10 = sub_100063F94();
    if (qword_100084A20 != -1)
    {
      swift_once();
    }

    v11 = qword_100090EB0;
  }

  v15 = sub_1000049B4(v4, v11);
  v9(v7, v15, v4);
  v16 = sub_100063F94();
  sub_1000021D4(&qword_100085428, &unk_100069B90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100065BA0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v16;

  sub_1000640C4();
  sub_1000640D4();
  sub_100064054();
  sub_100063804();
  v18 = v22;
  v20 = v24;
  v21 = v23;

  *a2 = v18;
  result = v21;
  *(a2 + 24) = v20;
  *(a2 + 8) = result;
  return result;
}

__n128 sub_1000494A0@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000636A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100084A40 != -1)
      {
        swift_once();
      }

      v12 = sub_1000049B4(v4, qword_100090F10);
      v9 = *(v5 + 16);
      v9(v7, v12, v4);
      v10 = sub_100063F94();
      if (qword_100084A50 != -1)
      {
        swift_once();
      }

      v11 = qword_100090F40;
    }

    else
    {
      if (qword_100084A68 != -1)
      {
        swift_once();
      }

      v14 = sub_1000049B4(v4, qword_100090F88);
      v9 = *(v5 + 16);
      v9(v7, v14, v4);
      v10 = sub_100063F94();
      if (qword_100084A78 != -1)
      {
        swift_once();
      }

      v11 = qword_100090FB8;
    }
  }

  else if (a1)
  {
    if (qword_1000849F8 != -1)
    {
      swift_once();
    }

    v13 = sub_1000049B4(v4, qword_100090E38);
    v9 = *(v5 + 16);
    v9(v7, v13, v4);
    v10 = sub_100063F94();
    if (qword_100084A00 != -1)
    {
      swift_once();
    }

    v11 = qword_100090E50;
  }

  else
  {
    if (qword_100084A18 != -1)
    {
      swift_once();
    }

    v8 = sub_1000049B4(v4, qword_100090E98);
    v9 = *(v5 + 16);
    v9(v7, v8, v4);
    v10 = sub_100063F94();
    if (qword_100084A28 != -1)
    {
      swift_once();
    }

    v11 = qword_100090EC8;
  }

  v15 = sub_1000049B4(v4, v11);
  v9(v7, v15, v4);
  v16 = sub_100063F94();
  sub_1000021D4(&qword_100085428, &unk_100069B90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100065BA0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v16;

  sub_1000640C4();
  sub_1000640D4();
  sub_100064054();
  sub_100063804();
  v18 = v22;
  v20 = v24;
  v21 = v23;

  *a2 = v18;
  result = v21;
  *(a2 + 24) = v20;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000498E4()
{
  sub_1000021D4(&qword_100084BB8, &qword_100069BA0);
  v0 = sub_100064154();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100069A50;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for WidgetFamily.accessoryInline(_:), v0);
  v6(v5 + v2, enum case for WidgetFamily.accessoryCircular(_:), v0);
  v6(v5 + 2 * v2, enum case for WidgetFamily.accessoryRectangular(_:), v0);
  v6(v5 + 3 * v2, enum case for WidgetFamily.systemSmall(_:), v0);
  result = (v6)(v5 + 4 * v2, enum case for WidgetFamily.systemMedium(_:), v0);
  qword_100090DA0 = v4;
  return result;
}

double sub_100049A6C()
{
  v0 = sub_1000636A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000021D4(&qword_100085428, &unk_100069B90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100065BA0;
  if (qword_100084A98 != -1)
  {
    swift_once();
  }

  v5 = sub_1000049B4(v0, qword_100091018);
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_100063F94();
  if (qword_100084A90 != -1)
  {
    swift_once();
  }

  v7 = sub_1000049B4(v0, qword_100091000);
  v6(v3, v7, v0);
  *(v4 + 40) = sub_100063F94();
  sub_1000640A4();
  sub_1000640B4();
  sub_100064054();
  sub_100063804();
  result = *&v10;
  xmmword_100090DA8 = v10;
  unk_100090DB8 = v11;
  qword_100090DC8 = v12;
  return result;
}

uint64_t sub_100049C78()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090DD0);
  sub_1000049B4(v0, qword_100090DD0);
  return sub_1000633E4();
}

uint64_t sub_100049CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[42] = a1;
  sub_1000021D4(&qword_100084E70, &unk_100065B90);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  v3[45] = started;
  v3[46] = *(started - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_100064334();
  }

  else
  {
    v6 = 0;
  }

  return _swift_task_switch(sub_100049E20, v6);
}

uint64_t sub_100049E20()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_100048544(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000494C(*(v0 + 352), &qword_100084E70, &unk_100065B90);
  }

  else
  {
    v5 = *(v0 + 376);
    v4 = *(v0 + 384);
    v6 = *(v0 + 360);
    v7 = *(v0 + 368);
    v8 = *(v0 + 344);
    sub_1000481A0(*(v0 + 352), v4);
    sub_10000C8CC(v4, v5);
    sub_100016718(v4, v8, &qword_100084E60, &unk_100065B80);
    v9 = v4 + v6[5];
    v10 = *(v9 + 48);
    v12 = *(v9 + 16);
    v11 = *(v9 + 32);
    *(v0 + 72) = *v9;
    *(v0 + 88) = v12;
    *(v0 + 104) = v11;
    *(v0 + 120) = v10;
    v13 = v4 + v6[6];
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    *(v0 + 64) = *(v13 + 48);
    *(v0 + 32) = v15;
    *(v0 + 48) = v16;
    *(v0 + 16) = v14;
    v17 = (v5 + v6[7]);
    v19 = v17[1];
    v18 = v17[2];
    *(v0 + 240) = *v17;
    *(v0 + 256) = v19;
    *(v0 + 272) = v18;
    v32 = v17[1];
    v33 = v17[2];
    v31 = *v17;
    sub_100048204(v0 + 72, v0 + 128);
    sub_100048204(v0 + 16, v0 + 184);
    sub_10000B264(v0 + 240, v0 + 288);
    sub_100048100(v5);
    v20 = v8 + v6[5];
    v21 = *(v0 + 120);
    v22 = *(v0 + 104);
    v23 = *(v0 + 88);
    *v20 = *(v0 + 72);
    *(v20 + 16) = v23;
    *(v20 + 32) = v22;
    *(v20 + 48) = v21;
    v24 = v8 + v6[6];
    v25 = *(v0 + 16);
    v26 = *(v0 + 32);
    v27 = *(v0 + 48);
    *(v24 + 48) = *(v0 + 64);
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *v24 = v25;
    v28 = v8 + v6[7];
    *(v28 + 16) = v32;
    *(v28 + 32) = v33;
    *v28 = v31;
    *(v28 + 48) = 1;
    (*(v7 + 56))(v8, 0, 1, v6);
    sub_1000487B0(v8, 0xD000000000000021, 0x800000010006BFF0);
    sub_10000494C(v8, &qword_100084E70, &unk_100065B90);
    sub_100048100(v4);
  }

  sub_100062E54();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10004A0B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000849C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100063404();
  v3 = sub_1000049B4(v2, qword_100090DD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004A184()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10004A220;
  v2 = *(v0 + 16);

  return sub_100049CDC(v2, 0, 0);
}

uint64_t sub_10004A220()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004A314(uint64_t a1)
{
  v2 = sub_100015F74();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10004A388()
{
  result = qword_1000865B8;
  if (!qword_1000865B8)
  {
    sub_10000221C(&qword_1000865C0, &qword_100069B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000865B8);
  }

  return result;
}

uint64_t sub_10004A3EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10004A440(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StartWritingWidgetPersistedPrompts(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004A484(uint64_t result, char a2)
{
  if (a2 != 2 && (a2 & 1) == 0)
  {
    v2 = result;
    v3 = sub_100063864();
    (*(*(v3 - 8) + 8))(v2, v3);
    sub_1000021D4(&qword_1000865D8, &qword_100069BA8);
    *(swift_allocObject() + 16) = xmmword_100065BA0;
    sub_100063844();
    sub_100063854();
    sub_10004A5A8();
    sub_1000021D4(&qword_1000865E0, &unk_100069BB0);
    sub_10004A600();
    return sub_1000643D4();
  }

  return result;
}

unint64_t sub_10004A5A8()
{
  result = qword_100085340;
  if (!qword_100085340)
  {
    sub_100063864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085340);
  }

  return result;
}

unint64_t sub_10004A600()
{
  result = qword_1000865E8;
  if (!qword_1000865E8)
  {
    sub_10000221C(&qword_1000865E0, &unk_100069BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000865E8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WidgetLabelStyle.Appearance(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004A6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v23[0] = a2;
  v23[1] = a1;
  v26 = a5;
  v27 = sub_1000021D4(&qword_1000865F0, &qword_100069C30);
  __chkstk_darwin(v27);
  v8 = v23 - v7;
  v25 = sub_1000021D4(&qword_1000865F8, &qword_100069C38);
  __chkstk_darwin(v25);
  v10 = v23 - v9;
  v11 = sub_1000021D4(&qword_100086600, &qword_100069C40);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v24 = sub_1000021D4(&qword_100086608, &qword_100069C48);
  __chkstk_darwin(v24);
  v15 = v23 - v14;
  v16 = sub_100063BC4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    *v8 = v23[0];
    *(v8 + 1) = 0;
    v8[16] = 0;
    v21 = sub_1000021D4(&qword_100086610, &qword_100069C50);
    sub_10004ABD0(1, &v8[*(v21 + 44)], a3);
    sub_100016718(v8, v13, &qword_1000865F0, &qword_100069C30);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    sub_10004B630();
    sub_100063B44();
    sub_100016718(v15, v10, &qword_100086608, &qword_100069C48);
    swift_storeEnumTagMultiPayload();
    sub_10004B574();
    sub_100063B44();
    sub_10000494C(v15, &qword_100086608, &qword_100069C48);
    return sub_10000494C(v8, &qword_1000865F0, &qword_100069C30);
  }

  if (a4 == 1)
  {
    *v8 = v23[0];
    *(v8 + 1) = 0;
    v8[16] = 0;
    v20 = sub_1000021D4(&qword_100086610, &qword_100069C50);
    sub_10004ABD0(0, &v8[*(v20 + 44)], a3);
    sub_100016718(v8, v10, &qword_1000865F0, &qword_100069C30);
    swift_storeEnumTagMultiPayload();
    sub_10004B574();
    sub_10004B630();
    sub_100063B44();
    return sub_10000494C(v8, &qword_1000865F0, &qword_100069C30);
  }

  sub_100063BD4();
  (*(v17 + 16))(v13, v19, v16);
  swift_storeEnumTagMultiPayload();
  sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
  sub_10004B630();
  sub_100063B44();
  sub_100016718(v15, v10, &qword_100086608, &qword_100069C48);
  swift_storeEnumTagMultiPayload();
  sub_10004B574();
  sub_100063B44();
  sub_10000494C(v15, &qword_100086608, &qword_100069C48);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_10004ABD0@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v56 = a2;
  v52 = sub_1000021D4(&qword_100086630, &qword_100069C58);
  __chkstk_darwin(v52);
  v53 = &v43 - v5;
  v6 = sub_1000021D4(&qword_100086638, &qword_100069C60);
  v7 = __chkstk_darwin(v6 - 8);
  v55 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v43 - v9;
  v10 = sub_100063BE4();
  *&v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000021D4(&qword_100086640, &qword_100069C68);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_100063BC4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000021D4(&qword_100086648, &unk_100069C70);
  v21 = __chkstk_darwin(v20 - 8);
  v50 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v43 - v23;
  v51 = a1;
  v44 = v12;
  if (a1)
  {
    sub_100063BD4();
    (*(v17 + 16))(v15, v19, v16);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    sub_10004B694(&qword_100086650, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    v25 = v24;
    sub_100063B44();
    v26 = *(v17 + 8);
    v27 = v17;
    v28 = v19;
    v26(v19, v16);
    v29 = v49;
  }

  else
  {
    v48 = v17;
    v28 = v19;
    sub_100063BF4();
    v29 = v49;
    (*(v49 + 16))(v15, v12, v10);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    sub_10004B694(&qword_100086650, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    v30 = v12;
    v25 = v24;
    sub_100063B44();
    (*(v29 + 8))(v30, v10);
    v27 = v48;
  }

  v31 = v10;
  v32 = v16;
  if (a3 == INFINITY)
  {
    LOBYTE(v74) = 1;
    v73 = 0;
    v57 = 0;
    v58 = 1;
    v64 = 0;
LABEL_6:
    sub_1000021D4(&qword_100085470, &unk_100066C50);
    sub_10001698C();
    sub_100063B44();
    v47 = v66;
    v49 = v65;
    v45 = v68;
    v46 = v67;
    LODWORD(v48) = v69;
    goto LABEL_9;
  }

  if (a3 != 0.0)
  {
    sub_100064084();
    sub_1000637E4();
    v72 = 1;
    v71 = v75;
    v70 = v77;
    v73 = 1;
    v57 = 0;
    v58 = 1;
    v59 = v74;
    v60 = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    v64 = 1;
    goto LABEL_6;
  }

  v49 = 0u;
  LODWORD(v48) = 255;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
LABEL_9:
  if (v51)
  {
    v33 = v44;
    sub_100063BF4();
    (*(v29 + 16))(v53, v33, v31);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086650, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    v34 = v54;
    sub_100063B44();
    (*(v29 + 8))(v33, v31);
  }

  else
  {
    sub_100063BD4();
    (*(v27 + 16))(v53, v28, v16);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086650, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    v34 = v54;
    sub_100063B44();
    (*(v27 + 8))(v28, v32);
  }

  v35 = v50;
  sub_100016718(v25, v50, &qword_100086648, &unk_100069C70);
  v36 = v55;
  sub_100016718(v34, v55, &qword_100086638, &qword_100069C60);
  v37 = v56;
  sub_100016718(v35, v56, &qword_100086648, &unk_100069C70);
  v38 = sub_1000021D4(&qword_100086658, &qword_100069C80);
  v39 = v37 + *(v38 + 48);
  v40 = v47;
  *v39 = v49;
  *(v39 + 16) = v40;
  v41 = v45;
  *(v39 + 32) = v46;
  *(v39 + 48) = v41;
  *(v39 + 64) = v48;
  sub_100016718(v36, v37 + *(v38 + 64), &qword_100086638, &qword_100069C60);
  sub_10000494C(v34, &qword_100086638, &qword_100069C60);
  sub_10000494C(v25, &qword_100086648, &unk_100069C70);
  sub_10000494C(v36, &qword_100086638, &qword_100069C60);
  return sub_10000494C(v35, &qword_100086648, &unk_100069C70);
}

unint64_t sub_10004B574()
{
  result = qword_100086618;
  if (!qword_100086618)
  {
    sub_10000221C(&qword_100086608, &qword_100069C48);
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    sub_10004B630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086618);
  }

  return result;
}

unint64_t sub_10004B630()
{
  result = qword_100086628;
  if (!qword_100086628)
  {
    sub_10000221C(&qword_1000865F0, &qword_100069C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086628);
  }

  return result;
}

uint64_t sub_10004B694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004B6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004B72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10004B770(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10004B788(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10004B7B4()
{
  result = qword_100086660;
  if (!qword_100086660)
  {
    sub_10000221C(&qword_100086668, &qword_100069C98);
    sub_10004B574();
    sub_10004B630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086660);
  }

  return result;
}

uint64_t sub_10004B85C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000021D4(&qword_100085CE0, &unk_100067D90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10004B9F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000021D4(&qword_100085CE0, &unk_100067D90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000021D4(&qword_1000851D0, &qword_100066890);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for WidgetHeaderView(uint64_t a1)
{
  result = qword_1000866C8;
  if (!qword_1000866C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004BBBC(uint64_t a1)
{
  sub_10004BCB4(319, &qword_100085D50, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_10004BCB4(319, &qword_100085258, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_10004BCB4(319, &qword_100085250, &type metadata accessor for RedactionReasons);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004BCB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100063784();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004BD14(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10004BD2C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004BD38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004BD88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_10004BDE0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004BE14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v2)
    {
      return static Text.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16) & 1);
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_10004BE8C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = sub_1000021D4(&qword_100086708, &qword_100069DD8);
  v33 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v32 - v1;
  v37 = sub_1000021D4(&qword_100086710, &qword_100069DE0);
  __chkstk_darwin(v37);
  v35 = &v32 - v2;
  v3 = sub_1000021D4(&qword_100086718, &qword_100069DE8);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v36 = sub_1000021D4(&qword_100086720, &qword_100069DF0);
  __chkstk_darwin(v36);
  v7 = &v32 - v6;
  v34 = sub_1000021D4(&qword_100086728, &qword_100069DF8);
  __chkstk_darwin(v34);
  v9 = &v32 - v8;
  v10 = sub_100064154();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  sub_100030A08(&v32 - v15);
  v17 = (*(v11 + 88))(v16, v10);
  if (v17 == enum case for WidgetFamily.systemSmall(_:) || v17 == enum case for WidgetFamily.systemMedium(_:))
  {
    v24 = v32;
    sub_10004CB14(v32);
    v25 = v33;
    v26 = v38;
    (*(v33 + 16))(v5, v24, v38);
    swift_storeEnumTagMultiPayload();
    sub_10004E180();
    v27 = sub_10000221C(&qword_100086770, &qword_100069E20);
    v28 = sub_10000221C(&qword_100086778, &qword_100069E28);
    v29 = sub_100009F14(&qword_100086780, &qword_100086778, &qword_100069E28, &protocol conformance descriptor for Label<A, B>);
    v30 = sub_10004E3B0();
    v40 = v28;
    v41 = &type metadata for WidgetLabelStyle;
    v42 = v29;
    v43 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v27;
    v41 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_100063B44();
    sub_100016718(v7, v35, &qword_100086720, &qword_100069DF0);
    swift_storeEnumTagMultiPayload();
    sub_10004E404();
    sub_100063B44();
    sub_10000494C(v7, &qword_100086720, &qword_100069DF0);
    return (*(v25 + 8))(v24, v26);
  }

  else if (v17 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    sub_10004C5F4(v9);
    sub_100016718(v9, v5, &qword_100086728, &qword_100069DF8);
    swift_storeEnumTagMultiPayload();
    sub_10004E180();
    v18 = sub_10000221C(&qword_100086770, &qword_100069E20);
    v19 = sub_10000221C(&qword_100086778, &qword_100069E28);
    v20 = sub_100009F14(&qword_100086780, &qword_100086778, &qword_100069E28, &protocol conformance descriptor for Label<A, B>);
    v21 = sub_10004E3B0();
    v40 = v19;
    v41 = &type metadata for WidgetLabelStyle;
    v42 = v20;
    v43 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    v40 = v18;
    v41 = v22;
    swift_getOpaqueTypeConformance2();
    sub_100063B44();
    sub_100016718(v7, v35, &qword_100086720, &qword_100069DF0);
    swift_storeEnumTagMultiPayload();
    sub_10004E404();
    sub_100063B44();
    sub_10000494C(v7, &qword_100086720, &qword_100069DF0);
    return sub_10000494C(v9, &qword_100086728, &qword_100069DF8);
  }

  else
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_100064434(39);

    v40 = 0xD000000000000025;
    v41 = 0x8000000100073580;
    sub_100030A08(v14);
    sub_10004E9B0(&qword_100085E30, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v44._countAndFlagsBits = sub_100064584();
    sub_1000642D4(v44);

    (*(v11 + 8))(v14, v10);
    result = sub_100064474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C5F4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_100063D94();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000021D4(&qword_100086748, &unk_100069E08);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v26 - v6;
  v8 = sub_1000021D4(&qword_100086790, &qword_100069E30);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v27 = &v26 - v9;
  v31 = sub_1000021D4(&qword_100086738, &qword_100069E00);
  __chkstk_darwin(v31);
  v11 = &v26 - v10;
  v12 = sub_1000021D4(&qword_100086798, &qword_100069E38);
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v36 = v1;
  sub_1000021D4(&qword_1000867A0, &qword_100069E40);
  sub_1000021D4(&qword_1000867A8, &qword_100069E48);
  sub_10004E560();
  v37 = &type metadata for Image;
  v38 = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  sub_100064024();
  if (*(v1 + *(type metadata accessor for WidgetHeaderView(0) + 28) + 24))
  {
    v15 = 0x4010000000000000;
    v16 = sub_100063A04();
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = 2;
  }

  v37 = v16;
  v38 = v15;
  v39 = v17;
  sub_100009F14(&qword_100086750, &qword_100086748, &unk_100069E08, &protocol conformance descriptor for Label<A, B>);
  sub_10004E3B0();
  v19 = v27;
  v18 = v28;
  sub_100063E94();
  (*(v5 + 8))(v7, v18);
  sub_100063D14();
  v20 = v34;
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v34);
  v21 = sub_100063DA4();

  (*(v2 + 8))(v4, v20);
  KeyPath = swift_getKeyPath();
  (*(v32 + 32))(v11, v19, v33);
  v23 = &v11[*(v31 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_100063D54();
  sub_10004E274();
  sub_100063E84();
  sub_10000494C(v11, &qword_100086738, &qword_100069E00);
  LODWORD(KeyPath) = sub_100063BB4();
  v24 = v35;
  (*(v29 + 32))(v35, v14, v30);
  result = sub_1000021D4(&qword_100086728, &qword_100069DF8);
  *(v24 + *(result + 36)) = KeyPath;
  return result;
}

uint64_t sub_10004CB14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_100063814();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000021D4(&qword_100086778, &qword_100069E28);
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin(v5);
  v54 = &v48 - v6;
  v7 = sub_1000021D4(&qword_100086770, &qword_100069E20);
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v48 - v8;
  v9 = sub_100063864();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = (v1 + *(type metadata accessor for WidgetHeaderView(0) + 28));
  v17 = v16[3];
  if (v17)
  {
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[2];
    v64 = v20 & 1;
    sub_10004E5E4(v18, v19, v20 & 1);

    sub_1000307B8(v15);
    sub_100063844();
    sub_10004E9B0(&qword_100085340, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v21 = sub_1000643C4();
    v22 = *(v10 + 8);
    v22(v13, v9);
    v22(v15, v9);
    if (v21)
    {
      v52 = v19;
      v53 = v18;
      v65 = 0xD00000000000007CLL;
      v66 = 0x800000010006C620;
      sub_100002264();
      v23 = sub_100063E14();
      v19 = v24;
      v26 = v25 & 1;
      goto LABEL_7;
    }

    v26 = v64;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v26 = 0;
  }

  sub_10004E5F4(v18, v19, v26, v17);
  v52 = v19;
  v53 = v18;
  v23 = v18;
  v64 = v26;
LABEL_7:
  v27 = __chkstk_darwin(v23);
  v50 = v19;
  v51 = v27;
  *(&v48 - 6) = v27;
  *(&v48 - 5) = v19;
  v48 = v26;
  v49 = v28;
  *(&v48 - 4) = v26;
  *(&v48 - 3) = v28;
  *(&v48 - 2) = v2;
  __chkstk_darwin(v27);
  *(&v48 - 2) = v2;
  sub_1000021D4(&qword_1000867B8, &qword_100069E80);
  sub_1000021D4(&qword_1000867C0, &qword_100069E88);
  v29 = sub_10000221C(&qword_1000867C8, &qword_100069E90);
  v30 = sub_10004E650();
  v65 = v29;
  v66 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = sub_10000221C(&qword_100086818, &qword_100069EB8);
  v32 = sub_10000221C(&qword_100086820, &qword_100069EC0);
  v33 = sub_10004E8B4();
  v65 = v32;
  v66 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v31;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v54;
  sub_100064024();
  if (v17)
  {
    v36 = 1;
    v37 = 0x7FF0000000000000;
    v38 = sub_100063A14();
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v36 = 2;
  }

  v65 = v38;
  v66 = v37;
  LOBYTE(v67) = v36;
  v39 = sub_100009F14(&qword_100086780, &qword_100086778, &qword_100069E28, &protocol conformance descriptor for Label<A, B>);
  v40 = sub_10004E3B0();
  v42 = v56;
  v41 = v57;
  sub_100063E94();
  (*(v55 + 8))(v35, v42);
  v44 = v61;
  v43 = v62;
  v45 = v63;
  (*(v62 + 104))(v61, enum case for DynamicTypeSize.large(_:), v63);
  v65 = v42;
  v66 = &type metadata for WidgetLabelStyle;
  v67 = v39;
  v68 = v40;
  swift_getOpaqueTypeConformance2();
  v46 = v59;
  sub_100063ED4();
  sub_10004E96C(v51, v50, v48, v49);
  sub_10004E96C(v53, v52, v64, v17);
  (*(v43 + 8))(v44, v45);
  return (*(v58 + 8))(v41, v46);
}

uint64_t sub_10004D1BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WidgetHeaderView(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v6 & 1;
  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (!v7)
  {
    v8 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v8;
  a2[3] = v7;
  return sub_10004E5F4(v4, v5, v6, v7);
}

uint64_t sub_10004D218()
{
  sub_100063FC4();
  sub_100063EA4();
}

uint64_t sub_10004D298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v48 = a4;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v50 = a6;
  v41 = sub_1000021D4(&qword_100086898, &qword_100069F40);
  __chkstk_darwin(v41);
  v40 = &v39 - v6;
  v7 = sub_100064134();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = sub_100063D94();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000021D4(&qword_1000867E0, &qword_100069E98);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  v49 = sub_1000021D4(&qword_1000867C8, &qword_100069E90);
  __chkstk_darwin(v49);
  v22 = &v39 - v21;
  sub_100063DB4();
  (*(v14 + 104))(v16, enum case for Font.Leading.tight(_:), v13);
  v23 = sub_100063DA4();

  (*(v14 + 8))(v16, v13);
  KeyPath = swift_getKeyPath();
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v54 = v48;
  v55 = KeyPath;
  v56 = v23;
  sub_1000021D4(&qword_1000867E8, &unk_100069EA0);
  sub_10004E7FC();
  sub_100063F34();

  v25 = swift_getKeyPath();
  v26 = *(v18 + 44);
  v48 = v20;
  v27 = &v20[v26];
  *v27 = v25;
  *(v27 + 1) = 1;
  v27[16] = 0;
  type metadata accessor for WidgetHeaderView(0);
  sub_1000309E0(v12);
  sub_100064124();
  LOBYTE(v13) = sub_100064104();
  v28 = v46;
  v29 = *(v45 + 8);
  v29(v10, v46);
  v29(v12, v28);
  if (v13)
  {
    LODWORD(v51) = sub_100063BA4();
  }

  else
  {
    v30 = sub_100063BB4();
    v31 = v41;
    v32 = *(v41 + 36);
    v33 = enum case for BlendMode.plusDarker(_:);
    v34 = sub_100064094();
    v35 = *(*(v34 - 8) + 104);
    v36 = v40;
    v35(&v40[v32], v33, v34);
    v35(&v36[*(v31 + 40)], enum case for BlendMode.plusLighter(_:), v34);
    *v36 = v30;
    sub_100009F14(&qword_1000868A0, &qword_100086898, &qword_100069F40, &unk_1000670D0);
  }

  v37 = sub_1000637F4();
  sub_10004EDE8(v48, v22);
  *&v22[*(v49 + 36)] = v37;
  sub_10004E650();
  sub_100063E24();
  return sub_10000494C(v22, &qword_1000867C8, &qword_100069E90);
}

uint64_t sub_10004D784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v28 = sub_100063344();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100063454();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000021D4(&qword_100086838, &unk_100069EC8);
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = sub_1000021D4(&qword_100086820, &qword_100069EC0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = sub_1000021D4(&qword_100086818, &qword_100069EB8);
  v31 = *(v18 - 8);
  v32 = v18;
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  sub_100063334();
  sub_100063324();
  sub_100063304();
  result = (*(v9 + 48))(v4, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v28);
    v22 = (*(v9 + 32))(v11, v4, v8);
    __chkstk_darwin(v22);
    *(&v27 - 2) = v33;
    sub_1000021D4(&qword_100086840, &qword_100069ED8);
    sub_10004EA00();
    sub_100063DC4();
    sub_100064084();
    sub_1000637E4();
    (*(v29 + 32))(v17, v14, v30);
    v23 = &v17[*(v15 + 36)];
    v24 = v38;
    *v23 = v37;
    *(v23 + 1) = v24;
    *(v23 + 2) = v39;
    v25 = sub_10004E8B4();
    sub_100063E24();
    sub_10000494C(v17, &qword_100086820, &qword_100069EC0);
    v35 = v15;
    v36 = v25;
    swift_getOpaqueTypeConformance2();
    v26 = v32;
    sub_100063EA4();
    return (*(v31 + 8))(v20, v26);
  }

  return result;
}

uint64_t sub_10004DC3C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_100063FB4();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000021D4(&qword_100086890, &unk_100069F00);
  __chkstk_darwin(v35);
  v5 = &v32 - v4;
  v6 = sub_1000021D4(&qword_100084C30, &qword_100064EE8);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v36 = sub_1000021D4(&qword_100086858, &qword_100069EE0);
  __chkstk_darwin(v36);
  v10 = (&v32 - v9);
  v11 = sub_100064134();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  type metadata accessor for WidgetHeaderView(0);
  sub_1000309E0(v17);
  sub_100064124();
  v18 = sub_100064104();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  if (v18)
  {
    v20 = sub_100063FC4();
    v21 = sub_100063D34();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = sub_100063D74();
    sub_10000494C(v8, &qword_100084C30, &qword_100064EE8);
    KeyPath = swift_getKeyPath();
    v24 = (v10 + *(v36 + 36));
    v25 = *(sub_1000021D4(&qword_100086878, &qword_100069EF0) + 28);
    v26 = enum case for Image.Scale.large(_:);
    v27 = sub_100063FE4();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    *v10 = v20;
    v10[1] = KeyPath;
    v10[2] = v22;
    sub_10004ED70(v10, v5);
    swift_storeEnumTagMultiPayload();
    sub_1000021D4(&qword_100086888, &qword_100069EF8);
    sub_10004EA8C();
    sub_10004EBFC();
    sub_100063B44();
    return sub_10000494C(v10, &qword_100086858, &qword_100069EE0);
  }

  else
  {
    sub_100064004();
    v30 = v33;
    v29 = v34;
    (*(v33 + 104))(v3, enum case for Image.ResizingMode.stretch(_:), v34);
    v31 = sub_100063FF4();

    (*(v30 + 8))(v3, v29);
    *v5 = v31;
    *(v5 + 1) = 0;
    *(v5 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000021D4(&qword_100086888, &qword_100069EF8);
    sub_10004EA8C();
    sub_10004EBFC();
    return sub_100063B44();
  }
}

unint64_t sub_10004E180()
{
  result = qword_100086730;
  if (!qword_100086730)
  {
    sub_10000221C(&qword_100086728, &qword_100069DF8);
    sub_10000221C(&qword_100086738, &qword_100069E00);
    sub_10004E274();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_100086760, &qword_100086768, &qword_100069E18, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086730);
  }

  return result;
}

unint64_t sub_10004E274()
{
  result = qword_100086740;
  if (!qword_100086740)
  {
    sub_10000221C(&qword_100086738, &qword_100069E00);
    sub_10000221C(&qword_100086748, &unk_100069E08);
    sub_100009F14(&qword_100086750, &qword_100086748, &unk_100069E08, &protocol conformance descriptor for Label<A, B>);
    sub_10004E3B0();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086740);
  }

  return result;
}

unint64_t sub_10004E3B0()
{
  result = qword_100086758;
  if (!qword_100086758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086758);
  }

  return result;
}

unint64_t sub_10004E404()
{
  result = qword_100086788;
  if (!qword_100086788)
  {
    sub_10000221C(&qword_100086720, &qword_100069DF0);
    sub_10004E180();
    sub_10000221C(&qword_100086770, &qword_100069E20);
    sub_10000221C(&qword_100086778, &qword_100069E28);
    sub_100009F14(&qword_100086780, &qword_100086778, &qword_100069E28, &protocol conformance descriptor for Label<A, B>);
    sub_10004E3B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086788);
  }

  return result;
}

unint64_t sub_10004E560()
{
  result = qword_1000867B0;
  if (!qword_1000867B0)
  {
    sub_10000221C(&qword_1000867A0, &qword_100069E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000867B0);
  }

  return result;
}

uint64_t sub_10004E5E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004E5F4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10004E5E4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10004E650()
{
  result = qword_1000867D0;
  if (!qword_1000867D0)
  {
    sub_10000221C(&qword_1000867C8, &qword_100069E90);
    sub_10004E708();
    sub_100009F14(&qword_100086808, &qword_100086810, &qword_100069EB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000867D0);
  }

  return result;
}

unint64_t sub_10004E708()
{
  result = qword_1000867D8;
  if (!qword_1000867D8)
  {
    sub_10000221C(&qword_1000867E0, &qword_100069E98);
    sub_10000221C(&qword_1000867E8, &unk_100069EA0);
    sub_10004E7FC();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000867F8, &qword_100086800, &unk_10006A620, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000867D8);
  }

  return result;
}

unint64_t sub_10004E7FC()
{
  result = qword_1000867F0;
  if (!qword_1000867F0)
  {
    sub_10000221C(&qword_1000867E8, &unk_100069EA0);
    sub_10004E560();
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000867F0);
  }

  return result;
}

unint64_t sub_10004E8B4()
{
  result = qword_100086828;
  if (!qword_100086828)
  {
    sub_10000221C(&qword_100086820, &qword_100069EC0);
    sub_100009F14(&qword_100086830, &qword_100086838, &unk_100069EC8, &protocol conformance descriptor for Link<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086828);
  }

  return result;
}

uint64_t sub_10004E96C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100016708(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10004E9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004EA00()
{
  result = qword_100086848;
  if (!qword_100086848)
  {
    sub_10000221C(&qword_100086840, &qword_100069ED8);
    sub_10004EA8C();
    sub_10004EBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086848);
  }

  return result;
}

unint64_t sub_10004EA8C()
{
  result = qword_100086850;
  if (!qword_100086850)
  {
    sub_10000221C(&qword_100086858, &qword_100069EE0);
    sub_10004EB44();
    sub_100009F14(&qword_100086870, &qword_100086878, &qword_100069EF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086850);
  }

  return result;
}

unint64_t sub_10004EB44()
{
  result = qword_100086860;
  if (!qword_100086860)
  {
    sub_10000221C(&qword_100086868, &qword_100069EE8);
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086860);
  }

  return result;
}

unint64_t sub_10004EBFC()
{
  result = qword_100086880;
  if (!qword_100086880)
  {
    sub_10000221C(&qword_100086888, &qword_100069EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086880);
  }

  return result;
}

uint64_t sub_10004ECA4(uint64_t a1)
{
  v2 = sub_100063FE4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000638C4();
}

uint64_t sub_10004ED70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100086858, &qword_100069EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004EDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_1000867E0, &qword_100069E98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004EE5C()
{
  result = qword_1000868A8;
  if (!qword_1000868A8)
  {
    sub_10000221C(&qword_1000868B0, &qword_100069F78);
    sub_10004E404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000868A8);
  }

  return result;
}

uint64_t sub_10004EF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v15 = *(*(started - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, started);
}

uint64_t sub_10004F0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v17 = *(*(started - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, started);
}

uint64_t type metadata accessor for StartWritingWidgetSystemSmallView(uint64_t a1)
{
  result = qword_100086910;
  if (!qword_100086910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004F254(uint64_t a1)
{
  sub_10004F328(319, &qword_100085250, &type metadata accessor for RedactionReasons);
  if (v1 <= 0x3F)
  {
    sub_10004F328(319, &qword_100085258, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StartWritingWidgetTimelineEntry(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004F328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100063784();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000021D4(&qword_1000852C8, &qword_100066978);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v47 = sub_1000021D4(&qword_1000852D0, &qword_100066980);
  v6 = __chkstk_darwin(v47);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - v9;
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1000021D4(&qword_100086970, &qword_10006A0C8);
  v14 = __chkstk_darwin(v13 - 8);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = sub_1000021D4(&qword_100085448, &qword_10006A0D0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  sub_10004F8A8((&v46 - v22));
  v24 = v17;
  sub_10004FFC0(v17);
  *v5 = sub_100063A24();
  *(v5 + 1) = 0x4018000000000000;
  v5[16] = 0;
  v25 = sub_1000021D4(&qword_1000852E8, &qword_100066998);
  sub_100050DEC(a1, &v5[*(v25 + 44)]);
  sub_1000021D4(&qword_1000852F0, &qword_1000669A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065BA0;
  v27 = sub_100063CA4();
  *(inited + 32) = v27;
  v28 = sub_100063CD4();
  *(inited + 33) = v28;
  v29 = sub_100063CF4();
  sub_100063CF4();
  if (sub_100063CF4() != v27)
  {
    v29 = sub_100063CF4();
  }

  sub_100063CF4();
  if (sub_100063CF4() != v28)
  {
    v29 = sub_100063CF4();
  }

  sub_100063714();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100015F0C(v5, v10, &qword_1000852C8, &qword_100066978);
  v38 = &v10[*(v47 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_100015F0C(v10, v12, &qword_1000852D0, &qword_100066980);
  v39 = v23;
  sub_100016718(v23, v21, &qword_100085448, &qword_10006A0D0);
  v40 = v24;
  v41 = v48;
  sub_1000519AC(v24, v48);
  v42 = v49;
  sub_100016718(v12, v49, &qword_1000852D0, &qword_100066980);
  v43 = v50;
  sub_100016718(v21, v50, &qword_100085448, &qword_10006A0D0);
  v44 = sub_1000021D4(&qword_100086978, &unk_10006A0D8);
  sub_1000519AC(v41, v43 + *(v44 + 48));
  sub_100016718(v42, v43 + *(v44 + 64), &qword_1000852D0, &qword_100066980);
  sub_10000494C(v12, &qword_1000852D0, &qword_100066980);
  sub_10000494C(v40, &qword_100086970, &qword_10006A0C8);
  sub_10000494C(v39, &qword_100085448, &qword_10006A0D0);
  sub_10000494C(v42, &qword_1000852D0, &qword_100066980);
  sub_10000494C(v41, &qword_100086970, &qword_10006A0C8);
  return sub_10000494C(v21, &qword_100085448, &qword_10006A0D0);
}

uint64_t sub_10004F8A8@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = sub_100063514();
  v77 = *(v1 - 8);
  v78 = v1;
  __chkstk_darwin(v1);
  v76 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100063664();
  __chkstk_darwin(v3 - 8);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100063644();
  __chkstk_darwin(v5 - 8);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  __chkstk_darwin(v7 - 8);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100063434();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000021D4(&qword_100085438, &qword_100066C28);
  __chkstk_darwin(v10 - 8);
  v12 = &v69 - v11;
  v13 = sub_1000021D4(&qword_100085440, &unk_100066C30);
  __chkstk_darwin(v13 - 8);
  v15 = &v69 - v14;
  v70 = sub_100063534();
  v16 = *(v70 - 8);
  v17 = __chkstk_darwin(v70);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = sub_100063574();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetSystemSmallView(0);
  (*(v21 + 16))(v23, v74 + *(started + 24), v20);
  v25 = sub_100063484();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = sub_100063474();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  sub_100063424();
  sub_1000635C4();
  sub_100063604();
  sub_100063654();
  sub_1000634A4();
  v27 = v76;
  sub_100063504();
  sub_100063524();
  (*(v77 + 8))(v27, v78);
  (*(v16 + 8))(v19, v70);
  sub_100052100(&qword_100085450, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_100052100(&qword_100085458, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v28 = sub_100063DF4();
  v30 = v29;
  v32 = v31;
  v34 = v33 & 1;
  KeyPath = swift_getKeyPath();
  v36 = v72;
  *v72 = KeyPath;
  sub_1000021D4(&qword_100084C00, &qword_100066BB0);
  swift_storeEnumTagMultiPayload();
  v37 = type metadata accessor for WidgetHeaderView(0);
  v38 = v37[5];
  *(v36 + v38) = swift_getKeyPath();
  sub_1000021D4(&qword_100085318, &qword_100066A08);
  swift_storeEnumTagMultiPayload();
  v39 = v37[6];
  *(v36 + v39) = swift_getKeyPath();
  sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
  swift_storeEnumTagMultiPayload();
  v40 = (v36 + v37[7]);
  *v40 = v28;
  v40[1] = v30;
  v40[2] = v34;
  v40[3] = v32;
  LOBYTE(v28) = sub_100063CE4();
  sub_100063714();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v36 + *(sub_1000021D4(&qword_100085460, &unk_100066C40) + 36);
  *v49 = v28;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  LOBYTE(v28) = sub_100063CC4();
  sub_100063714();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v36 + *(sub_1000021D4(&qword_100085468, &unk_10006A2E0) + 36);
  *v58 = v28;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  LOBYTE(v28) = sub_100063D04();
  sub_100063714();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  result = sub_1000021D4(&qword_100085448, &qword_10006A0D0);
  v68 = v36 + *(result + 36);
  *v68 = v28;
  *(v68 + 1) = v60;
  *(v68 + 2) = v62;
  *(v68 + 3) = v64;
  *(v68 + 4) = v66;
  v68[40] = 0;
  return result;
}

uint64_t sub_10004FFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v63 = sub_100063D94();
  v3 = *(v63 - 8);
  __chkstk_darwin(v63);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000021D4(&qword_100086980, &qword_10006A118);
  __chkstk_darwin(v66);
  v7 = v62 - v6;
  v68 = sub_1000021D4(&qword_100086988, &qword_10006A120);
  __chkstk_darwin(v68);
  v65 = v62 - v8;
  v67 = sub_1000021D4(&qword_100086990, &qword_10006A128);
  __chkstk_darwin(v67);
  v70 = v62 - v9;
  v69 = sub_1000021D4(&qword_100086998, &qword_10006A130);
  __chkstk_darwin(v69);
  v72 = v62 - v10;
  v71 = sub_1000021D4(&qword_1000869A0, &qword_10006A138);
  __chkstk_darwin(v71);
  v73 = v62 - v11;
  v12 = sub_100063864();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v62 - v17;
  sub_1000307B8(v62 - v17);
  sub_100063844();
  v62[2] = sub_100052100(&qword_100085340, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v19 = sub_1000643C4();
  v20 = *(v13 + 8);
  v20(v16, v12);
  v64 = v20;
  v20(v18, v12);
  if (v19)
  {
    v21 = 0x800000010006C620;
    v22 = v2;
    v23 = 0xD00000000000007CLL;
  }

  else
  {
    v24 = v2 + *(type metadata accessor for StartWritingWidgetSystemSmallView(0) + 24);
    v25 = v24 + *(type metadata accessor for StartWritingWidgetTimelineEntry(0) + 20);
    v22 = v2;
    v23 = *(v25 + 16);
    v21 = *(v25 + 24);
  }

  v62[1] = v22;
  *v7 = sub_100064084();
  *(v7 + 1) = v26;
  v27 = sub_1000021D4(&qword_1000869A8, &qword_10006A140);
  sub_1000507B8(v23, v21, v22, &v7[*(v27 + 44)]);

  sub_100063D84();
  v28 = v63;
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v63);
  v29 = sub_100063DA4();

  (*(v3 + 8))(v5, v28);
  KeyPath = swift_getKeyPath();
  v31 = &v7[*(v66 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  sub_100063D44();
  sub_100051BF4();
  v32 = v65;
  sub_100063E84();
  sub_10000494C(v7, &qword_100086980, &qword_10006A118);
  v33 = swift_getKeyPath();
  v34 = (v32 + *(sub_1000021D4(&qword_1000869C8, &qword_10006A1B8) + 36));
  *v34 = v33;
  v34[1] = 0x3FB999999999999ALL;
  v35 = swift_getKeyPath();
  v36 = v32 + *(v68 + 36);
  *v36 = v35;
  *(v36 + 8) = 0;
  sub_100051E28();
  v37 = v70;
  sub_100063EF4();
  sub_10000494C(v32, &qword_100086988, &qword_10006A120);
  v38 = (v37 + *(v67 + 36));
  sub_1000021D4(&qword_1000853E0, &qword_100066B10);
  sub_1000638A4();
  *v38 = swift_getKeyPath();
  sub_1000307B8(v18);
  sub_100063844();
  v39 = sub_1000643C4();
  v40 = v64;
  v64(v16, v12);
  v40(v18, v12);
  if (v39)
  {
    v41 = 3;
  }

  else
  {
    v41 = 0;
  }

  v42 = swift_getKeyPath();
  v43 = v72;
  sub_100015F0C(v37, v72, &qword_100086990, &qword_10006A128);
  v44 = v43 + *(v69 + 36);
  *v44 = v42;
  *(v44 + 8) = v41;
  *(v44 + 16) = (v39 & 1) == 0;
  sub_100064074();
  sub_100063874();
  v45 = v73;
  sub_100015F0C(v43, v73, &qword_100086998, &qword_10006A130);
  v46 = (v45 + *(v71 + 36));
  v47 = v80;
  v46[4] = v79;
  v46[5] = v47;
  v46[6] = v81;
  v48 = v76;
  *v46 = v75;
  v46[1] = v48;
  v49 = v78;
  v46[2] = v77;
  v46[3] = v49;
  LOBYTE(v42) = sub_100063CA4();
  sub_100063714();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v45;
  v59 = v74;
  sub_100015F0C(v58, v74, &qword_1000869A0, &qword_10006A138);
  result = sub_1000021D4(&qword_100086970, &qword_10006A0C8);
  v61 = v59 + *(result + 36);
  *v61 = v42;
  *(v61 + 8) = v51;
  *(v61 + 16) = v53;
  *(v61 + 24) = v55;
  *(v61 + 32) = v57;
  *(v61 + 40) = 0;
  return result;
}

uint64_t sub_1000507B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v64 = a3;
  v72 = a4;
  v68 = sub_100064134();
  v67 = *(v68 - 8);
  v7 = __chkstk_darwin(v68);
  v66 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = v61 - v9;
  v10 = sub_1000021D4(&qword_100085408, &qword_100066C00);
  __chkstk_darwin(v10);
  v12 = v61 - v11;
  v13 = sub_1000021D4(&qword_100085400, &qword_10006A260);
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = __chkstk_darwin(v13);
  v69 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v61 - v16;
  *&v62 = a1;
  *&v77 = a1;
  *(&v77 + 1) = a2;
  v18 = sub_100002264();
  *(&v62 + 1) = a2;

  v61[1] = v18;
  v19 = sub_100063E14();
  v21 = v20;
  v23 = v22;
  started = type metadata accessor for StartWritingWidgetSystemSmallView(0);
  v24 = a3 + *(started + 24);
  v25 = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  sub_100048A64(*(v24 + *(v25 + 20) + 11), v12);
  sub_100009F14(&qword_100085418, &qword_100085408, &qword_100066C00, &unk_1000670D0);
  v26 = sub_100063DD4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100016708(v19, v21, v23 & 1);

  sub_10000494C(v12, &qword_100085408, &qword_100066C00);
  *&v77 = v26;
  *(&v77 + 1) = v28;
  LOBYTE(v78) = v30 & 1;
  *(&v78 + 1) = v32;
  v73 = v17;
  sub_100063E24();
  sub_100016708(v26, v28, v30 & 1);

  v33 = v65;
  sub_1000309E0(v65);
  v34 = v66;
  sub_100064124();
  v35 = v34;
  LOBYTE(v12) = sub_100064104();
  v36 = *(v67 + 8);
  v37 = v35;
  v38 = v68;
  v36(v37, v68);
  v36(v33, v38);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (v12)
  {
    v77 = v62;

    v43 = sub_100063E14();
    v45 = v44;
    v47 = v46;
    sub_1000021D4(&qword_100085428, &unk_100069B90);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100065BA0;
    *(v48 + 32) = sub_100063F74();
    sub_100063F74();
    v49 = sub_100063F84();

    *(v48 + 40) = v49;
    sub_1000640C4();
    sub_1000640D4();
    sub_100064054();
    sub_100063804();
    v74 = v77;
    v75 = v78;
    v76 = v79;
    v39 = sub_100063DD4();
    v40 = v50;
    LOBYTE(v48) = v51;
    v42 = v52;
    sub_100016708(v43, v45, v47 & 1);

    sub_100016780(&v77);
    v41 = v48 & 1;
    sub_10004E5E4(v39, v40, v48 & 1);
  }

  v54 = v69;
  v53 = v70;
  v55 = *(v70 + 16);
  v56 = v71;
  v55(v69, v73, v71);
  v57 = v72;
  v55(v72, v54, v56);
  v58 = &v57[*(sub_1000021D4(&qword_1000869E0, &unk_10006A268) + 48)];
  sub_10004E5F4(v39, v40, v41, v42);
  sub_10004E96C(v39, v40, v41, v42);
  *v58 = v39;
  v58[1] = v40;
  v58[2] = v41;
  v58[3] = v42;
  v59 = *(v53 + 8);
  v59(v73, v56);
  sub_10004E96C(v39, v40, v41, v42);
  return (v59)(v54, v56);
}

uint64_t sub_100050DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100063454();
  v67 = *(v3 - 8);
  *&v68 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v6 = __chkstk_darwin(v5 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v59 - v8;
  v64 = type metadata accessor for AppLaunchAction(0);
  __chkstk_darwin(v64);
  v10 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_1000021D4(&qword_100085300, &qword_1000669B8);
  __chkstk_darwin(v75);
  v12 = (&v59 - v11);
  v13 = sub_1000021D4(&qword_100085308, &qword_1000669C0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v59 - v17);
  v19 = sub_1000021D4(&qword_100085310, &qword_1000669C8);
  v20 = __chkstk_darwin(v19 - 8);
  v73 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v72 = &v59 - v23;
  v24 = __chkstk_darwin(v22);
  v71 = &v59 - v25;
  __chkstk_darwin(v24);
  v70 = &v59 - v26;
  v63 = sub_100063FA4();
  v27 = a1 + *(type metadata accessor for StartWritingWidgetSystemSmallView(0) + 24);
  v28 = v27 + *(type metadata accessor for StartWritingWidgetTimelineEntry(0) + 20);
  LODWORD(v69) = *(v28 + 11);
  sub_10004905C(v69, &v76);
  v60 = v76;
  v61 = v78;
  v62 = v77;
  v29 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 64);
  v32 = *(v28 + 24);
  *v10 = *(v28 + 16);
  v10[1] = v32;
  *(v10 + v30) = 1;
  v33 = type metadata accessor for CanvasContentInputType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v33 - 8) + 56))(v10 + v30, 0, 1, v33);
  v34 = enum case for WidgetFamily.systemSmall(_:);
  v35 = sub_100064154();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v10 + v31, v34, v35);
  v37 = v35;
  v38 = v65;
  (*(v36 + 56))(v10 + v31, 0, 1, v37);
  v39 = v67;
  swift_storeEnumTagMultiPayload();

  v40 = v66;
  sub_1000197E8(v66);
  v41 = v10;
  v42 = v68;
  sub_1000028E4(v41);
  sub_100015F0C(v40, v38, &qword_100084BC0, qword_100064C60);
  if ((*(v39 + 48))(v38, 1, v42) == 1)
  {
    sub_10000494C(v38, &qword_100084BC0, qword_100064C60);
    *v12 = nullsub_1;
    v12[1] = 0;
  }

  else
  {
    v43 = *(v39 + 32);
    v44 = v59;
    v43(v59, v38, v42);
    v43(v12, v44, v42);
  }

  swift_storeEnumTagMultiPayload();
  v45 = v18 + v13[10];
  *v45 = v60;
  *(v45 + 24) = v61;
  *(v45 + 8) = v62;
  *v18 = swift_getKeyPath();
  sub_1000021D4(&qword_100085318, &qword_100066A08);
  swift_storeEnumTagMultiPayload();
  *(v18 + v13[9]) = v63;
  sub_100015F0C(v12, v18 + v13[11], &qword_100085300, &qword_1000669B8);
  if (qword_1000844A8 != -1)
  {
    swift_once();
  }

  v76 = qword_100090360;
  *&v77 = *algn_100090368;
  sub_100009F14(&qword_100085320, &qword_100085308, &qword_1000669C0, &unk_100067180);
  sub_100002264();
  v46 = v70;
  sub_100063F04();
  sub_10000494C(v18, &qword_100085308, &qword_1000669C0);
  v47 = sub_100063FA4();
  sub_1000494A0(v69, &v76);
  v48 = v76;
  v49 = v16 + v13[11];
  *(v49 + 3) = &type metadata for StartWritingWidgetUtil.RefreshIntent;
  *(v49 + 4) = sub_100015F74();
  v68 = v78;
  v69 = v77;
  swift_storeEnumTagMultiPayload();
  v50 = v16 + v13[10];
  *v50 = v48;
  v51 = v69;
  *(v50 + 24) = v68;
  *(v50 + 8) = v51;
  *v16 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v16 + v13[9]) = v47;
  if (qword_1000844B0 != -1)
  {
    swift_once();
  }

  v76 = qword_100090370;
  *&v77 = *algn_100090378;
  v52 = v71;
  sub_100063F04();
  sub_10000494C(v16, &qword_100085308, &qword_1000669C0);
  v53 = v72;
  sub_100016718(v46, v72, &qword_100085310, &qword_1000669C8);
  v54 = v73;
  sub_100016718(v52, v73, &qword_100085310, &qword_1000669C8);
  v55 = v74;
  sub_100016718(v53, v74, &qword_100085310, &qword_1000669C8);
  v56 = sub_1000021D4(&qword_100085330, &qword_100066A10);
  v57 = v55 + *(v56 + 48);
  *v57 = 0;
  *(v57 + 8) = 1;
  sub_100016718(v54, v55 + *(v56 + 64), &qword_100085310, &qword_1000669C8);
  sub_10000494C(v52, &qword_100085310, &qword_1000669C8);
  sub_10000494C(v46, &qword_100085310, &qword_1000669C8);
  sub_10000494C(v54, &qword_100085310, &qword_1000669C8);
  return sub_10000494C(v53, &qword_100085310, &qword_1000669C8);
}