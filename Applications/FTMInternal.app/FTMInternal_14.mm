uint64_t sub_1001E9088(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = a2;
  if (!a1 || a2)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v11 = qword_1003824C0;
    v12 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002EED40;
    if (v4)
    {
      swift_getErrorValue();
      v4 = Error.localizedDescription.getter();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1001A76E8();
    if (v15)
    {
      v16 = v4;
    }

    else
    {
      v16 = 0;
    }

    v17 = 0xE000000000000000;
    if (v15)
    {
      v17 = v15;
    }

    *(v13 + 32) = v16;
    *(v13 + 40) = v17;
    os_log(_:dso:log:type:_:)("CT - getCurrentCellInfo error: %{private}s", 42, 2, &_mh_execute_header, v11, v12, v13);

    v10 = 0;
  }

  else
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v6 = qword_1003824C0;
    v7 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002EED40;
    *(v8 + 56) = sub_1001E1BB4(0, &qword_100377030, CTCellInfo_ptr);
    *(v8 + 64) = sub_10020346C(&qword_100377038, &qword_100377030, CTCellInfo_ptr);
    *(v8 + 32) = a1;
    v9 = a1;
    os_log(_:dso:log:type:_:)("CT - getCurrentCellInfo : %{private}@", 37, 2, &_mh_execute_header, v6, v7, v8);

    v10 = a1;
  }

  return a3(v10);
}

void sub_1001E92CC(void *a1, uint64_t a2)
{
  v279 = a2;
  v267 = a1;
  v287 = type metadata accessor for Metric(0);
  v289 = *(v287 - 8);
  __chkstk_darwin(v287);
  v286 = v257 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v257 - v4;
  __chkstk_darwin(v6);
  v270 = v257 - v7;
  __chkstk_darwin(v8);
  v268 = v257 - v9;
  __chkstk_darwin(v10);
  v269 = v257 - v11;
  __chkstk_darwin(v12);
  v14 = v257 - v13;
  if (qword_100375020 != -1)
  {
    goto LABEL_191;
  }

LABEL_2:
  v15 = sub_10021AF50();
  v16 = v15[2];
  if (v16)
  {
    v261 = v14;
    v17 = 0;
    v14 = 0x666E4920646E6142;
    while (1)
    {
      if (v17 >= v15[2])
      {
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        swift_once();
        goto LABEL_2;
      }

      if (*(v15 + v17 + 32) && *(v15 + v17 + 32) != 1)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_13;
      }

      if (v16 == ++v17)
      {
        goto LABEL_9;
      }
    }

LABEL_13:

    v21 = [v267 legacyInfo];
    if (!v21)
    {
      goto LABEL_10;
    }

    v22 = v21;
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = sub_1001EB62C(v14);

    if (!v23)
    {
      goto LABEL_10;
    }

    v24 = v23[2];
    v264 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v282 = v24;
    if (v24)
    {
      v278 = 0;
      v281 = v23 + 4;
      v25 = kCTCellMonitorCellTypeNeighbor;
      v277 = kCTCellMonitorRadioAccessTechnologyLTE;
      v290 = kCTRegistrationRadioAccessTechnologyLTE;
      v262 = xmmword_1002EED50;
      v260 = _swiftEmptyArrayStorage;
      v285 = v5;
      v5 = 0;
      v274 = v23;
      v263 = kCTCellMonitorCellTypeNeighbor;
      v271 = kCTCellMonitorRadioAccessTechnologyNR;
      v265 = kCTRegistrationRadioAccessTechnologyNR;
      while (1)
      {
        if (v5 >= v23[2])
        {
          goto LABEL_189;
        }

        v26 = v281[v5];

        sub_100226314(v27);
        v29 = v28;
        v14 = v30;
        v284 = v26;
        sub_1002265B8(v26);
        if (!v25)
        {
          goto LABEL_193;
        }

        v32 = v31;
        ++v5;
        if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v33)
        {
          break;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v35)
        {
LABEL_28:
          v36 = v271;
          if (v32 != 3)
          {
            goto LABEL_17;
          }

          v37 = v284;
          sub_100225CF4(v284);
          v39 = v38;
          v41 = v40;
          LOBYTE(v321) = 1;
          LOBYTE(v294) = 1;
          LOBYTE(v292) = 1;
          LOBYTE(v291) = 1;
          v337 = 1;
          v336 = 1;
          v335 = 1;
          v334 = 1;
          v333 = 1;
          v332 = 1;
          v331 = 1;
          v330 = 1;
          v356 = 0;
          v357 = 1;
          v359 = 0;
          v360 = 1;
          v363 = 0;
          v364 = 0;
          v362 = 0;
          v365 = 1;
          v367 = 0;
          v368 = 1;
          *(&v369 + 7) = 0;
          HIBYTE(v369) = 1;
          *(&v370 + 7) = 0;
          HIBYTE(v370) = 1;
          *(&v371 + 7) = 0;
          HIBYTE(v371) = 1;
          *&v372[7] = 0;
          v372[15] = 1;
          v373 = 0;
          v374 = 1;
          v375 = 1539;
          v378 = 0;
          v379 = 1;
          v381 = 0;
          v382 = 1;
          *(&v383 + 7) = 0;
          HIBYTE(v383) = 1;
          v355 = 1;
          *(v354 + 3) = *&v358[3];
          v354[0] = *v358;
          v353 = 1;
          *(v352 + 3) = *&v361[3];
          v352[0] = *v361;
          v351 = 1;
          *(v350 + 3) = *&v366[3];
          v350[0] = *v366;
          v349 = 1;
          *(v348 + 15) = *&v372[15];
          v347 = v371;
          v348[0] = *v372;
          v345 = v369;
          v346 = v370;
          v344 = 1;
          v343 = v377;
          v342 = v376;
          v341 = 1;
          *(v340 + 3) = *&v380[3];
          v340[0] = *v380;
          v339 = 1;
          v338 = v383;
          sub_100226854(v37);
          v43 = v42;
          v45 = 0.0;
          if (v44)
          {
            v43 = 0.0;
          }

          if (v43 <= 1000000.0)
          {
            v46 = v43;
          }

          else
          {
            v46 = v43 / 1000000.0;
          }

          v47 = v277;
          if (v46 > 0.0)
          {
            v48 = v39;
            if (!v277 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v321 = 0uLL, static String._conditionallyBridgeFromObjectiveC(_:result:)(), !*(&v321 + 1)))
            {
LABEL_45:
              v351 = 0;
              v45 = v46;
              v39 = v48;
              goto LABEL_46;
            }

            if (v321 == __PAIR128__(v41, v39))
            {

              if (v46 > 100.0)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v46 > 100.0 || (v49 & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            if (v46 == 6.0)
            {
              v45 = 1.4;
              v39 = v48;
            }

            else
            {
              v45 = 3.0;
              v39 = v48;
              if (v46 != 15.0)
              {
                v45 = 5.0;
                if (v46 != 25.0)
                {
                  v45 = 10.0;
                  if (v46 != 50.0)
                  {
                    v45 = 15.0;
                    if (v46 != 75.0)
                    {
                      if (v46 == 100.0)
                      {
                        v45 = 20.0;
                      }

                      else
                      {
                        v45 = v46;
                      }
                    }
                  }
                }
              }
            }

            v351 = 0;
          }

LABEL_46:
          v280 = v5;
          v266 = v363;
          if (v36 && (objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            v321 = 0uLL;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();
            v50 = v290;
            if (*(&v321 + 1))
            {
              v259 = v39;
              if (v321 == __PAIR128__(v41, v39))
              {

                goto LABEL_54;
              }

              v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v52)
              {
LABEL_54:
                sub_100226B04(v284);
                v275 = v53;
                if (v54)
                {
                  goto LABEL_55;
                }

                v341 = 0;
                *&v321 = sub_1001FDC20(v267);
                *(&v321 + 1) = v124;
                v294 = 32;
                v295 = 0xE100000000000000;
                sub_1001A56A0();
                v125 = StringProtocol.components<A>(separatedBy:)();

                if (v125[2])
                {
                  v126 = v125[4];
                  v127 = v125[5];

                  v128 = sub_1001E248C(v126, v127);
                  if (v129)
                  {
                    v130 = 0;
                  }

                  else
                  {
                    v130 = v128;
                  }

                  v273 = v130;
                }

                else
                {

                  v273 = 0;
                }

                v258 = v41;
                v14 = *(v276 + v264);
                v131 = *(v14 + 16);

                if (v131)
                {
                  v5 = 0;
                  v132 = _swiftEmptyArrayStorage;
                  v133 = v279;
                  v50 = v290;
LABEL_109:
                  v134 = (v14 + 32 + 224 * v5);
                  v135 = v5;
                  while (v135 < *(v14 + 16))
                  {
                    v136 = v134[1];
                    v321 = *v134;
                    v322 = v136;
                    v137 = v134[2];
                    v138 = v134[3];
                    v139 = v134[5];
                    v325[0] = v134[4];
                    v325[1] = v139;
                    v323 = v137;
                    v324 = v138;
                    v140 = v134[6];
                    v141 = v134[7];
                    v142 = v134[9];
                    v325[4] = v134[8];
                    v326 = v142;
                    v325[2] = v140;
                    v325[3] = v141;
                    v143 = v134[10];
                    v144 = v134[11];
                    v145 = v134[13];
                    v328[1] = v134[12];
                    v329 = v145;
                    v327 = v143;
                    v328[0] = v144;
                    v5 = v135 + 1;
                    if (v322 == v133)
                    {
                      sub_100203618(&v321, &v294);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v292 = v132;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_1001F5504(0, v132[2] + 1, 1);
                        v132 = v292;
                      }

                      v148 = v132[2];
                      v147 = v132[3];
                      v133 = v279;
                      if (v148 >= v147 >> 1)
                      {
                        sub_1001F5504((v147 > 1), v148 + 1, 1);
                        v133 = v279;
                        v132 = v292;
                      }

                      v132[2] = v148 + 1;
                      v149 = &v132[28 * v148];
                      v150 = v322;
                      v149[2] = v321;
                      v149[3] = v150;
                      v151 = v323;
                      v152 = v324;
                      v153 = v325[1];
                      v149[6] = v325[0];
                      v149[7] = v153;
                      v149[4] = v151;
                      v149[5] = v152;
                      v154 = v325[2];
                      v155 = v325[3];
                      v156 = v326;
                      v149[10] = v325[4];
                      v149[11] = v156;
                      v149[8] = v154;
                      v149[9] = v155;
                      v157 = v327;
                      v158 = v328[0];
                      v159 = v329;
                      v149[14] = v328[1];
                      v149[15] = v159;
                      v149[12] = v157;
                      v149[13] = v158;
                      v50 = v290;
                      if (v131 - 1 != v135)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_121;
                    }

                    v134 += 14;
                    ++v135;
                    if (v131 == v5)
                    {
                      goto LABEL_121;
                    }
                  }

                  goto LABEL_190;
                }

                v132 = _swiftEmptyArrayStorage;
                v50 = v290;
LABEL_121:

                if (v132[2])
                {
                  v160 = *(v132 + 13);
                  v327 = *(v132 + 12);
                  v328[0] = v160;
                  v161 = *(v132 + 15);
                  v328[1] = *(v132 + 14);
                  v329 = v161;
                  v162 = *(v132 + 9);
                  v325[2] = *(v132 + 8);
                  v325[3] = v162;
                  v163 = *(v132 + 11);
                  v325[4] = *(v132 + 10);
                  v326 = v163;
                  v164 = *(v132 + 5);
                  v323 = *(v132 + 4);
                  v324 = v164;
                  v165 = *(v132 + 7);
                  v325[0] = *(v132 + 6);
                  v325[1] = v165;
                  v166 = *(v132 + 3);
                  v321 = *(v132 + 2);
                  v322 = v166;
                  sub_100203618(&v321, &v294);

                  v167 = v329;
                  v168 = v269;
                  v23 = v274;
                  v5 = v280;
                  v47 = v277;
                  v288 = *(v329 + 16);
                  if (v288)
                  {
                    v169 = 0;
                    v170 = _swiftEmptyArrayStorage;
                    v283 = v329;
                    while (v169 < *(v167 + 16))
                    {
                      v171 = (*(v289 + 80) + 32) & ~*(v289 + 80);
                      v172 = *(v289 + 72);
                      sub_100204DB0(v167 + v171 + v172 * v169, v168, type metadata accessor for Metric);
                      v173 = v265;
                      if (v265 && (type metadata accessor for CFString(0), sub_10020169C(&unk_1003770F0, type metadata accessor for CFString, &unk_1002EECD0), v174 = v173, v50 = v290, v175 = static _CFObject.== infix(_:_:)(), v174, v5 = v280, v168 = v269, (v175 & 1) != 0))
                      {
                        sub_100204E18(v269, v268, type metadata accessor for Metric);
                        v176 = swift_isUniquelyReferenced_nonNull_native();
                        v294 = v170;
                        if ((v176 & 1) == 0)
                        {
                          sub_1001F54C0(0, v170[2] + 1, 1);
                          v170 = v294;
                        }

                        v178 = v170[2];
                        v177 = v170[3];
                        if (v178 >= v177 >> 1)
                        {
                          sub_1001F54C0((v177 > 1), v178 + 1, 1);
                          v170 = v294;
                        }

                        v170[2] = v178 + 1;
                        sub_100204E18(v268, v170 + v171 + v178 * v172, type metadata accessor for Metric);
                        v50 = v290;
                      }

                      else
                      {
                        sub_1002034BC(v168, type metadata accessor for Metric);
                      }

                      ++v169;
                      v23 = v274;
                      v47 = v277;
                      v167 = v283;
                      if (v288 == v169)
                      {
                        goto LABEL_160;
                      }
                    }

                    __break(1u);
LABEL_193:
                    __break(1u);
                    return;
                  }

                  v170 = _swiftEmptyArrayStorage;
LABEL_160:
                  sub_100203650(&v321);
                  if (v170[2])
                  {
                    v210 = v261;
                    sub_100204DB0(v170 + ((*(v289 + 80) + 32) & ~*(v289 + 80)), v261, type metadata accessor for Metric);

                    v211 = *(v210 + *(v287 + 36));
                    sub_1002034BC(v210, type metadata accessor for Metric);
                    v212 = String._bridgeToObjectiveC()();
                    v213 = [v211 componentsSeparatedByString:v212];

                    v214 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
                    v41 = v258;
                    if (*(v214 + 16))
                    {
                      sub_1001A73BC(v275, v273);
                      v216 = *(v215 + 16);
                      v273 = v215;
                      if (v216)
                      {
                        v217 = (v215 + 32);
                        v288 = _swiftEmptyArrayStorage;
                        v218 = &type metadata for Int;
                        v283 = v214;
                        do
                        {
                          v220 = *v217++;
                          v219 = v220;
                          v294 = v220;
                          v221 = v218;
                          v294 = dispatch thunk of CustomStringConvertible.description.getter();
                          v295 = v222;
                          __chkstk_darwin(v294);
                          v257[-2] = &v294;
                          v223 = v214;
                          v224 = v278;
                          v225 = sub_1001E2ED0(sub_1002050FC, &v257[-4], v223);
                          v278 = v224;

                          if (v225)
                          {
                            v294 = v219;
                            v226 = dispatch thunk of CustomStringConvertible.description.getter();
                            v228 = v227;
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v288 = sub_100224D30(0, *(v288 + 2) + 1, 1, v288);
                            }

                            v230 = *(v288 + 2);
                            v229 = *(v288 + 3);
                            if (v230 >= v229 >> 1)
                            {
                              v288 = sub_100224D30((v229 > 1), v230 + 1, 1, v288);
                            }

                            v231 = v288;
                            *(v288 + 2) = v230 + 1;
                            v232 = &v231[16 * v230];
                            *(v232 + 4) = v226;
                            *(v232 + 5) = v228;
                            v218 = &type metadata for Int;
                          }

                          else
                          {
                            v218 = v221;
                          }

                          --v216;
                          v214 = v283;
                        }

                        while (v216);
                      }

                      else
                      {
                        v288 = _swiftEmptyArrayStorage;
                      }

                      if (!*(v288 + 2))
                      {

                        v23 = v274;
                        if (qword_100374FD8 != -1)
                        {
                          swift_once();
                        }

                        v245 = qword_1003824C0;
                        LODWORD(v284) = static os_log_type_t.default.getter();
                        sub_1001A551C(&unk_100377020, &unk_1002EF770);
                        v246 = swift_allocObject();
                        *(v246 + 16) = v262;
                        v292 = v214;
                        sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                        sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
                        v247 = BidirectionalCollection<>.joined(separator:)();
                        v249 = v248;

                        *(v246 + 56) = &type metadata for String;
                        v14 = sub_1001A76E8();
                        *(v246 + 64) = v14;
                        *(v246 + 32) = v247;
                        *(v246 + 40) = v249;
                        v292 = 0x6E20646E6142;
                        v293 = 0xE600000000000000;
                        v250 = Array.description.getter();
                        v252 = v251;

                        v253._countAndFlagsBits = v250;
                        v253._object = v252;
                        String.append(_:)(v253);

                        v254 = v292;
                        v255 = v293;
                        *(v246 + 96) = &type metadata for String;
                        *(v246 + 104) = v14;
                        *(v246 + 72) = v254;
                        *(v246 + 80) = v255;
                        os_log(_:dso:log:type:_:)("SCell Band not matched - %{public}s Calculated Band - %{public}s", 64, 2, &_mh_execute_header, v245, v284, v246);

                        v301 = v45;
                        v307 = v346;
                        v308 = v347;
                        *v309 = v348[0];
                        v294 = 0;
                        LOBYTE(v295) = v355;
                        *(&v295 + 1) = v354[0];
                        HIDWORD(v295) = *(v354 + 3);
                        v296 = 0;
                        v297 = v353;
                        *v298 = v352[0];
                        *&v298[3] = *(v352 + 3);
                        v299 = 0;
                        v300 = 0;
                        v302 = v351;
                        *v303 = v350[0];
                        *&v303[3] = *(v350 + 3);
                        v304 = 0;
                        v305 = v349;
                        *&v309[15] = *(v348 + 15);
                        v306 = v345;
                        v310 = 0;
                        v311 = v344;
                        v312 = 259;
                        v314 = v343;
                        v313 = v342;
                        v315 = v275;
                        v316 = v341;
                        *&v317[3] = *(v340 + 3);
                        *v317 = v340[0];
                        v318 = 0;
                        goto LABEL_98;
                      }

                      v23 = v274;
                      v41 = v258;
                      if (qword_100374FD8 != -1)
                      {
                        swift_once();
                      }

                      v273 = qword_1003824C0;
                      LODWORD(v272) = static os_log_type_t.default.getter();
                      sub_1001A551C(&unk_100377020, &unk_1002EF770);
                      v233 = swift_allocObject();
                      *(v233 + 16) = v262;
                      v294 = v214;
                      v266 = sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                      v257[1] = sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
                      v234 = BidirectionalCollection<>.joined(separator:)();
                      v236 = v235;

                      *(v233 + 56) = &type metadata for String;
                      v237 = sub_1001A76E8();
                      *(v233 + 64) = v237;
                      *(v233 + 32) = v234;
                      *(v233 + 40) = v236;
                      v294 = 0x6E20646E6142;
                      v295 = 0xE600000000000000;
                      v238 = v288;

                      v239._countAndFlagsBits = Array.description.getter();
                      String.append(_:)(v239);

                      v240 = v294;
                      v241 = v295;
                      *(v233 + 96) = &type metadata for String;
                      *(v233 + 104) = v237;
                      *(v233 + 72) = v240;
                      *(v233 + 80) = v241;
                      os_log(_:dso:log:type:_:)("SCell Band - %{public}s Calculated Band - %{public}s", 52, 2, &_mh_execute_header, v273, v272, v233);

                      v294 = 0x6E20646E6142;
                      v295 = 0xE600000000000000;
                      v292 = v238;
                      v242 = BidirectionalCollection<>.joined(separator:)();
                      v51 = v243;

                      v244._countAndFlagsBits = v242;
                      v244._object = v51;
                      String.append(_:)(v244);

                      sub_1002014CC(&v356);
                      v272 = v295;
                      v273 = v294;
                      LOBYTE(v51) = 1;
                      v266 = v295;
                      v5 = v280;
                      v47 = v277;
                    }

                    else
                    {

                      v272 = 0;
                      v273 = 0;
                      LOBYTE(v51) = 1;
                    }

                    v50 = v290;
                  }

                  else
                  {

                    v272 = 0;
                    v273 = 0;
                    LOBYTE(v51) = 1;
                    v41 = v258;
                  }
                }

                else
                {

                  v272 = 0;
                  v273 = 0;
                  LOBYTE(v51) = 1;
                  v23 = v274;
                  v5 = v280;
                  v47 = v277;
                  v41 = v258;
                }
              }

              else
              {
LABEL_55:
                v272 = 0;
                v273 = 0;
                v275 = 0;
                LOBYTE(v51) = 6;
              }

              v39 = v259;
              goto LABEL_57;
            }

            v272 = 0;
            v273 = 0;
            v275 = 0;
            LOBYTE(v51) = 6;
          }

          else
          {
            v272 = 0;
            v273 = 0;
            v275 = 0;
            LOBYTE(v51) = 6;
            v50 = v290;
          }

LABEL_57:
          if (!v47 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v321 = 0uLL, static String._conditionallyBridgeFromObjectiveC(_:result:)(), !*(&v321 + 1)))
          {

LABEL_105:
            v283 = 0;
            goto LABEL_141;
          }

          if (v321 == __PAIR128__(v41, v39))
          {
          }

          else
          {
            v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v55 & 1) == 0)
            {
              goto LABEL_105;
            }
          }

          sub_100226B10(v284);
          v283 = v56;
          if (v57)
          {
            goto LABEL_105;
          }

          v339 = 0;
          v58 = *(v276 + v264);
          v59 = *(v58 + 16);

          if (v59)
          {
            v60 = 0;
            v51 = v58 + 32;
            v61 = _swiftEmptyArrayStorage;
            v62 = v279;
            do
            {
              v63 = (v51 + 224 * v60);
              v64 = v60;
              while (1)
              {
                if (v64 >= *(v58 + 16))
                {
                  __break(1u);
                  goto LABEL_186;
                }

                v65 = v63[1];
                v321 = *v63;
                v322 = v65;
                v66 = v63[2];
                v67 = v63[3];
                v68 = v63[5];
                v325[0] = v63[4];
                v325[1] = v68;
                v323 = v66;
                v324 = v67;
                v69 = v63[6];
                v70 = v63[7];
                v71 = v63[9];
                v325[4] = v63[8];
                v326 = v71;
                v325[2] = v69;
                v325[3] = v70;
                v72 = v63[10];
                v73 = v63[11];
                v74 = v63[13];
                v328[1] = v63[12];
                v329 = v74;
                v327 = v72;
                v328[0] = v73;
                v60 = v64 + 1;
                if (v322 == v62)
                {
                  break;
                }

                v63 += 14;
                ++v64;
                if (v59 == v60)
                {
                  goto LABEL_78;
                }
              }

              sub_100203618(&v321, &v294);
              v75 = swift_isUniquelyReferenced_nonNull_native();
              v292 = v61;
              if ((v75 & 1) == 0)
              {
                sub_1001F5504(0, v61[2] + 1, 1);
                v61 = v292;
              }

              v77 = v61[2];
              v76 = v61[3];
              v62 = v279;
              if (v77 >= v76 >> 1)
              {
                sub_1001F5504((v76 > 1), v77 + 1, 1);
                v62 = v279;
                v61 = v292;
              }

              v61[2] = v77 + 1;
              v78 = &v61[28 * v77];
              v79 = v322;
              v78[2] = v321;
              v78[3] = v79;
              v80 = v323;
              v81 = v324;
              v82 = v325[1];
              v78[6] = v325[0];
              v78[7] = v82;
              v78[4] = v80;
              v78[5] = v81;
              v83 = v325[2];
              v84 = v325[3];
              v85 = v326;
              v78[10] = v325[4];
              v78[11] = v85;
              v78[8] = v83;
              v78[9] = v84;
              v86 = v327;
              v87 = v328[0];
              v88 = v329;
              v78[14] = v328[1];
              v78[15] = v88;
              v78[12] = v86;
              v78[13] = v87;
              v50 = v290;
            }

            while (v59 - 1 != v64);
          }

          else
          {
            v61 = _swiftEmptyArrayStorage;
          }

LABEL_78:

          if (!v61[2])
          {
            goto LABEL_135;
          }

          v89 = *(v61 + 13);
          v327 = *(v61 + 12);
          v328[0] = v89;
          v90 = *(v61 + 15);
          v328[1] = *(v61 + 14);
          v329 = v90;
          v91 = *(v61 + 9);
          v325[2] = *(v61 + 8);
          v325[3] = v91;
          v92 = *(v61 + 11);
          v325[4] = *(v61 + 10);
          v326 = v92;
          v93 = *(v61 + 5);
          v323 = *(v61 + 4);
          v324 = v93;
          v94 = *(v61 + 7);
          v325[0] = *(v61 + 6);
          v325[1] = v94;
          v95 = *(v61 + 3);
          v321 = *(v61 + 2);
          v322 = v95;
          sub_100203618(&v321, &v294);

          v96 = v329;
          v97 = v285;
          v288 = *(v329 + 16);
          if (v288)
          {
            v98 = 0;
            v99 = _swiftEmptyArrayStorage;
            while (v98 < *(v96 + 16))
            {
              v100 = (*(v289 + 80) + 32) & ~*(v289 + 80);
              v101 = *(v289 + 72);
              sub_100204DB0(v96 + v100 + v101 * v98, v97, type metadata accessor for Metric);
              if (v50 && (type metadata accessor for CFString(0), LOBYTE(v51) = sub_10020169C(&unk_1003770F0, type metadata accessor for CFString, &unk_1002EECD0), v102 = v290, v50 = v290, v103 = static _CFObject.== infix(_:_:)(), v102, v97 = v285, (v103 & 1) != 0))
              {
                sub_100204E18(v285, v286, type metadata accessor for Metric);
                v104 = swift_isUniquelyReferenced_nonNull_native();
                v294 = v99;
                if ((v104 & 1) == 0)
                {
                  sub_1001F54C0(0, v99[2] + 1, 1);
                  v99 = v294;
                }

                v51 = v99[2];
                v105 = v99[3];
                if (v51 >= v105 >> 1)
                {
                  sub_1001F54C0((v105 > 1), v51 + 1, 1);
                  v99 = v294;
                }

                v99[2] = v51 + 1;
                sub_100204E18(v286, v99 + v100 + v51 * v101, type metadata accessor for Metric);
                v50 = v290;
              }

              else
              {
                sub_1002034BC(v97, type metadata accessor for Metric);
              }

              if (v288 == ++v98)
              {
                goto LABEL_92;
              }
            }

LABEL_186:
            __break(1u);
LABEL_187:

            *&v324 = v45;
            *(&v325[1] + 9) = v346;
            *(&v325[2] + 9) = v347;
            *(&v325[3] + 9) = v348[0];
            *&v321 = 0;
            BYTE8(v321) = v355;
            *(&v321 + 9) = v354[0];
            HIDWORD(v321) = *(v354 + 3);
            *&v322 = 0;
            BYTE8(v322) = v353;
            *(&v322 + 9) = v352[0];
            HIDWORD(v322) = *(v352 + 3);
            *&v323 = v273;
            *(&v323 + 1) = v272;
            BYTE8(v324) = v351;
            *(&v324 + 9) = v350[0];
            HIDWORD(v324) = *(v350 + 3);
            *&v325[0] = 0;
            BYTE8(v325[0]) = v349;
            *(v325 + 9) = v345;
            *(&v325[4] + 1) = *(v348 + 15);
            *&v326 = 0;
            BYTE8(v326) = v344;
            BYTE9(v326) = 3;
            BYTE10(v326) = v51;
            HIBYTE(v326) = v343;
            *(&v326 + 11) = v342;
            *&v327 = v275;
            BYTE8(v327) = v341;
            HIDWORD(v327) = *(v340 + 3);
            *(&v327 + 9) = v340[0];
            *&v328[0] = v283;
            BYTE8(v328[0]) = v339;
            *(v328 + 9) = v338;
            sub_1002014CC(&v321);
            return;
          }

          v99 = _swiftEmptyArrayStorage;
LABEL_92:
          sub_100203650(&v321);
          if (v99[2])
          {
            v106 = v270;
            sub_100204DB0(v99 + ((*(v289 + 80) + 32) & ~*(v289 + 80)), v270, type metadata accessor for Metric);

            v107 = *(v106 + *(v287 + 36));
            sub_1002034BC(v106, type metadata accessor for Metric);
            v108 = String._bridgeToObjectiveC()();
            v109 = [v107 componentsSeparatedByString:v108];

            v110 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v274;
            if (*(v110 + 16))
            {
              v111 = sub_1001A7150(v283);
              v294 = v111;
              v294 = dispatch thunk of CustomStringConvertible.description.getter();
              v295 = v112;
              __chkstk_darwin(v294);
              v257[-2] = &v294;
              v113 = v278;
              v114 = sub_1001E2ED0(sub_1002050FC, &v257[-4], v110);
              v278 = v113;

              if ((v114 & 1) == 0)
              {

                if (qword_100374FD8 != -1)
                {
                  swift_once();
                }

                v14 = qword_1003824C0;
                v115 = static os_log_type_t.default.getter();
                sub_1001A551C(&unk_100377020, &unk_1002EF770);
                v116 = swift_allocObject();
                *(v116 + 16) = v262;
                v292 = v110;
                sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
                v117 = BidirectionalCollection<>.joined(separator:)();
                v119 = v118;

                *(v116 + 56) = &type metadata for String;
                v120 = sub_1001A76E8();
                *(v116 + 64) = v120;
                *(v116 + 32) = v117;
                *(v116 + 40) = v119;
                v291 = v111;
                v292 = 0x4220646E6142;
                v293 = 0xE600000000000000;
                v121._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v121);

                v122 = v292;
                v123 = v293;
                *(v116 + 96) = &type metadata for String;
                *(v116 + 104) = v120;
                *(v116 + 72) = v122;
                *(v116 + 80) = v123;
                os_log(_:dso:log:type:_:)("SCell Band not matched - %{public}s Calculated Band - %{public}s", 64, 2, &_mh_execute_header, v14, v115, v116);

                v301 = v45;
                v307 = v346;
                v308 = v347;
                *v309 = v348[0];
                v294 = 0;
                LOBYTE(v295) = v355;
                *(&v295 + 1) = v354[0];
                HIDWORD(v295) = *(v354 + 3);
                v296 = 0;
                v297 = v353;
                *v298 = v352[0];
                *&v298[3] = *(v352 + 3);
                v299 = v273;
                v300 = v272;
                v302 = v351;
                *v303 = v350[0];
                *&v303[3] = *(v350 + 3);
                v304 = 0;
                v305 = v349;
                *&v309[15] = *(v348 + 15);
                v306 = v345;
                v310 = 0;
                v311 = v344;
                v312 = 515;
                v314 = v343;
                v313 = v342;
                v315 = v275;
                v316 = v341;
                *&v317[3] = *(v340 + 3);
                *v317 = v340[0];
                v318 = v283;
LABEL_98:
                v319 = v339;
                v320 = v338;
                sub_1002014CC(&v294);
                v5 = v280;
                v25 = v263;
                goto LABEL_18;
              }

              if (qword_100374FD8 != -1)
              {
                swift_once();
              }

              v288 = qword_1003824C0;
              LODWORD(v273) = static os_log_type_t.default.getter();
              sub_1001A551C(&unk_100377020, &unk_1002EF770);
              v179 = swift_allocObject();
              *(v179 + 16) = v262;
              v294 = v110;
              sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
              sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
              v180 = BidirectionalCollection<>.joined(separator:)();
              v182 = v181;

              *(v179 + 56) = &type metadata for String;
              v51 = sub_1001A76E8();
              *(v179 + 64) = v51;
              *(v179 + 32) = v180;
              *(v179 + 40) = v182;
              v294 = 0x4220646E6142;
              v295 = 0xE600000000000000;
              v292 = v111;
              v183._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v183);

              v184 = v294;
              v185 = v295;
              *(v179 + 96) = &type metadata for String;
              *(v179 + 104) = v51;
              *(v179 + 72) = v184;
              *(v179 + 80) = v185;
              LOBYTE(v51) = 2;
              os_log(_:dso:log:type:_:)("SCell Band - %{public}s Calculated Band - %{public}s", 52, 2, &_mh_execute_header, v288, v273, v179);

              v294 = 0x4220646E6142;
              v295 = 0xE600000000000000;
              v292 = v111;
              v186._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v186);

              v272 = v295;
              v273 = v294;
              v266 = v295;
            }

            else
            {

              LOBYTE(v51) = 2;
            }
          }

          else
          {
LABEL_135:

            LOBYTE(v51) = 2;
            v23 = v274;
          }

          v5 = v280;
LABEL_141:
          v187 = sub_1001A6478(3uLL);
          if (v187 == 4)
          {
            goto LABEL_187;
          }

          v188 = v187;
          v344 = 0;
          sub_100226B1C(v284);
          v14 = v189;

          v349 = 0;
          v190 = v266;
          if (v266)
          {
            v355 = 0;
            v191 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
            v192 = v279;
            v193 = [v191 initWithSlot:v279];
            v194 = [v193 slotID];

            *(&v325[1] + 9) = v346;
            *(&v325[2] + 9) = v347;
            *(&v325[3] + 9) = v348[0];
            v195 = v194 != 1;
            v353 = 0;
            *&v321 = v192;
            BYTE8(v321) = v355;
            *(&v321 + 9) = v354[0];
            HIDWORD(v321) = *(v354 + 3);
            *&v322 = v195;
            BYTE8(v322) = 0;
            *(&v322 + 9) = v352[0];
            HIDWORD(v322) = *(v352 + 3);
            *&v323 = v273;
            *(&v323 + 1) = v272;
            *&v324 = v45;
            BYTE8(v324) = v351;
            *(&v324 + 9) = v350[0];
            HIDWORD(v324) = *(v350 + 3);
            *&v325[0] = v14;
            BYTE8(v325[0]) = v349;
            *(&v325[4] + 1) = *(v348 + 15);
            *(v325 + 9) = v345;
            *&v326 = 3;
            BYTE8(v326) = v344;
            BYTE9(v326) = v188;
            BYTE10(v326) = v51;
            HIBYTE(v326) = v343;
            *(&v326 + 11) = v342;
            *&v327 = v275;
            BYTE8(v327) = v341;
            HIDWORD(v327) = *(v340 + 3);
            *(&v327 + 9) = v340[0];
            *&v328[0] = v283;
            BYTE8(v328[0]) = v339;
            *(v328 + 9) = v338;
            sub_100201470(&v321, &v294);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v260 = sub_100224C0C(0, *(v260 + 2) + 1, 1, v260);
            }

            v197 = *(v260 + 2);
            v196 = *(v260 + 3);
            v198 = v279;
            if (v197 >= v196 >> 1)
            {
              v256 = sub_100224C0C((v196 > 1), v197 + 1, 1, v260);
              v198 = v279;
              v260 = v256;
            }

            v199 = v260;
            *(v260 + 2) = v197 + 1;
            v200 = &v199[208 * v197];
            *(v200 + 2) = v321;
            v201 = v322;
            v202 = v323;
            v203 = v325[0];
            *(v200 + 5) = v324;
            *(v200 + 6) = v203;
            *(v200 + 3) = v201;
            *(v200 + 4) = v202;
            v204 = v325[1];
            v205 = v325[2];
            v206 = v325[4];
            *(v200 + 9) = v325[3];
            *(v200 + 10) = v206;
            *(v200 + 7) = v204;
            *(v200 + 8) = v205;
            v207 = v326;
            v208 = v327;
            v209 = v328[0];
            *(v200 + 217) = *(v328 + 9);
            *(v200 + 12) = v208;
            *(v200 + 13) = v209;
            *(v200 + 11) = v207;
            v190 = v198;
          }

          else
          {
            v195 = 0;
          }

          *&v324 = v45;
          *(&v325[1] + 9) = v346;
          *(&v325[2] + 9) = v347;
          *(&v325[3] + 9) = v348[0];
          *&v321 = v190;
          BYTE8(v321) = v355;
          *(&v321 + 9) = v354[0];
          HIDWORD(v321) = *(v354 + 3);
          *&v322 = v195;
          BYTE8(v322) = v353;
          *(&v322 + 9) = v352[0];
          HIDWORD(v322) = *(v352 + 3);
          *&v323 = v273;
          *(&v323 + 1) = v272;
          BYTE8(v324) = v351;
          *(&v324 + 9) = v350[0];
          HIDWORD(v324) = *(v350 + 3);
          *&v325[0] = v14;
          BYTE8(v325[0]) = v349;
          *(&v325[4] + 1) = *(v348 + 15);
          *(v325 + 9) = v345;
          *&v326 = 3;
          BYTE8(v326) = v344;
          BYTE9(v326) = v188;
          BYTE10(v326) = v51;
          HIBYTE(v326) = v343;
          *(&v326 + 11) = v342;
          *&v327 = v275;
          BYTE8(v327) = v341;
          HIDWORD(v327) = *(v340 + 3);
          *(&v327 + 9) = v340[0];
          *&v328[0] = v283;
          BYTE8(v328[0]) = v339;
          *(v328 + 9) = v338;
          sub_1002014CC(&v321);
          v25 = v263;
          if (v5 == v282)
          {
            goto LABEL_184;
          }
        }

        else
        {
LABEL_17:

LABEL_18:
          if (v5 == v282)
          {
            goto LABEL_184;
          }
        }
      }

      goto LABEL_28;
    }

    v260 = _swiftEmptyArrayStorage;
LABEL_184:

    v19 = v260;
  }

  else
  {
LABEL_9:

LABEL_10:
    v19 = _swiftEmptyArrayStorage;
  }

  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002EED50;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = 0xD00000000000001BLL;
  *(v20 + 40) = 0x80000001002BBE80;
  *(v20 + 88) = sub_1001A551C(&qword_100377138, &qword_1002F22F8);
  *(v20 + 64) = v19;

  print(_:separator:terminator:)();
}

void *sub_1001EB62C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_1001F5524(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1001A773C(i, v9);
      sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001F5524((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1001EB754(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1001A773C(i, v5);
    sub_1001E1BB4(0, &qword_100377140, CellularLoggingFileInformation_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_1001EB860(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1001F53D8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1001A773C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001F53D8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1001EB974(void *a1, uint64_t a2)
{
  v247 = a1;
  v268 = type metadata accessor for Metric(0);
  v272 = *(v268 - 8);
  __chkstk_darwin(v268);
  v266 = &v236 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  object = &v236 - v5;
  __chkstk_darwin(v7);
  v252 = &v236 - v8;
  __chkstk_darwin(v9);
  v249 = &v236 - v10;
  __chkstk_darwin(v11);
  v13 = &v236 - v12;
  __chkstk_darwin(v14);
  v241 = &v236 - v15;
  v254 = type metadata accessor for FTMBandInfoDataModel(0);
  v242 = *(v254 - 8);
  __chkstk_darwin(v254);
  v244 = &v236 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v236 - v18;
  v256 = a2;
  v253 = a2 != 1;
  if (qword_100375020 != -1)
  {
    goto LABEL_193;
  }

LABEL_2:
  v20 = sub_10021AF50();
  v21 = v20[2];
  if (v21)
  {
    v262 = v19;
    v248 = v13;
    v267 = object;
    v22 = 0;
    object = 0x666E4920646E6142;
    while (1)
    {
      if (v22 >= v20[2])
      {
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        swift_once();
        goto LABEL_2;
      }

      if (!*(v20 + v22 + 32))
      {
        v13 = 0xE600000000000000;
        goto LABEL_9;
      }

      if (*(v20 + v22 + 32) != 1)
      {
        break;
      }

      v13 = 0xE700000000000000;
LABEL_9:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_15;
      }

      if (v21 == ++v22)
      {
        goto LABEL_11;
      }
    }

LABEL_15:

    v26 = [v247 legacyInfo];
    v27 = v262;
    if (!v26)
    {
      goto LABEL_12;
    }

    v28 = v26;
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = sub_1001EB62C(v29);

    if (!v30)
    {
      goto LABEL_12;
    }

    object = v30[2];
    v243 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v260 = object;
    if (object)
    {
      v13 = 0;
      v261 = 0;
      v259 = v30 + 4;
      v258 = kCTCellMonitorCellTypeNeighbor;
      v31 = kCTCellMonitorRadioAccessTechnologyLTE;
      v240 = xmmword_1002EED50;
      v239 = _swiftEmptyArrayStorage;
      v263 = kCTCellMonitorRadioAccessTechnologyLTE;
      v257 = v30;
      v250 = kCTCellMonitorRadioAccessTechnologyNR;
      v245 = kCTRegistrationRadioAccessTechnologyNR;
      v270 = kCTRegistrationRadioAccessTechnologyLTE;
      while (1)
      {
        if (v13 >= v30[2])
        {
          goto LABEL_190;
        }

        v32 = v259[v13];

        sub_100226314(v33);
        v19 = v34;
        object = v35;
        v265 = v32;
        sub_1002265B8(v32);
        v37 = v36;
        result = v258;
        if (!v258)
        {
          __break(1u);
          return result;
        }

        ++v13;
        if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && object == v38)
        {
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v19 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v40 = v250;
        if (v37 == 1)
        {
          v41 = 2;
LABEL_34:
          v42 = v265;
          sub_100225CF4(v265);
          v19 = v43;
          v45 = v44;
          object = *(v254 + 92);
          v46 = type metadata accessor for Date();
          (*(*(v46 - 8) + 56))(v27 + object, 1, 1, v46);
          *v27 = v253;
          *(v27 + 8) = 0;
          *(v27 + 9) = v41;
          *(v27 + 16) = 0;
          *(v27 + 24) = 1793;
          *(v27 + 40) = 0;
          *(v27 + 48) = 0;
          *(v27 + 32) = 0;
          *(v27 + 56) = 1;
          *(v27 + 64) = 0;
          *(v27 + 72) = 1;
          *(v27 + 80) = 0;
          *(v27 + 88) = 1;
          *(v27 + 96) = 0;
          *(v27 + 104) = 1;
          *(v27 + 112) = 0;
          *(v27 + 120) = 1;
          *(v27 + 128) = 0;
          *(v27 + 136) = 1;
          *(v27 + 144) = 0;
          *(v27 + 152) = 1;
          *(v27 + 160) = 0;
          *(v27 + 168) = 1;
          *(v27 + 176) = 0;
          *(v27 + 184) = 1;
          *(v27 + 192) = 0;
          *(v27 + 200) = 1;
          *(v27 + 208) = 0;
          *(v27 + 216) = 1;
          *(v27 + 224) = 0;
          *(v27 + 232) = 1;
          *(v27 + 240) = 0;
          *(v27 + 248) = 1;
          *(v27 + 256) = 0;
          *(v27 + 264) = 1;
          v47 = v42;
          v48 = v19;
          sub_100226854(v47);
          v50 = v49;
          if (v51)
          {
            v50 = 0.0;
          }

          if (v50 <= 1000000.0)
          {
            v52 = v50;
          }

          else
          {
            v52 = v50 / 1000000.0;
          }

          if (v52 <= 0.0)
          {
            goto LABEL_52;
          }

          if (v31)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v275 = 0uLL;
              static String._conditionallyBridgeFromObjectiveC(_:result:)();
              if (*(&v275 + 1))
              {
                if (v275 == __PAIR128__(v45, v19))
                {

                  if (v52 <= 100.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  object = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v52 <= 100.0 && (object & 1) != 0)
                  {
LABEL_48:
                    if (v52 == 6.0)
                    {
                      v53 = 1.4;
                    }

                    else
                    {
                      v53 = 3.0;
                      if (v52 != 15.0)
                      {
                        v53 = 5.0;
                        if (v52 != 25.0)
                        {
                          v53 = 10.0;
                          if (v52 != 50.0)
                          {
                            v53 = 15.0;
                            if (v52 != 75.0)
                            {
                              if (v52 == 100.0)
                              {
                                v53 = 20.0;
                              }

                              else
                              {
                                v53 = v52;
                              }
                            }
                          }
                        }
                      }
                    }

                    goto LABEL_51;
                  }
                }
              }
            }
          }

          v53 = v52;
LABEL_51:
          *(v27 + 48) = v53;
          *(v27 + 56) = 0;
LABEL_52:
          v264 = v13;
          if (!v40)
          {
            goto LABEL_59;
          }

          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            goto LABEL_59;
          }

          v275 = 0uLL;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
          if (!*(&v275 + 1))
          {
            goto LABEL_59;
          }

          if (v275 == __PAIR128__(v45, v19))
          {
          }

          else
          {
            object = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((object & 1) == 0)
            {
              goto LABEL_59;
            }
          }

          sub_100226B04(v265);
          if (v55)
          {
            goto LABEL_59;
          }

          *(v27 + 25) = 1;
          v246 = v54;
          *(v27 + 80) = v54;
          *(v27 + 88) = 0;
          v121 = sub_1001FDC20(v247);
          object = v122;
          *&v275 = v121;
          *(&v275 + 1) = v122;
          v273 = 32;
          v274 = 0xE100000000000000;
          sub_1001A56A0();
          v123 = StringProtocol.components<A>(separatedBy:)();

          if (v123[2])
          {
            object = v123[4];
            v19 = v123[5];

            v124 = sub_1001E248C(object, v19);
            if (v125)
            {
              v126 = 0;
            }

            else
            {
              v126 = v124;
            }

            v236 = v126;
          }

          else
          {

            v236 = 0;
          }

          v238 = v45;
          v127 = *(v255 + v243);
          v13 = *(v127 + 16);

          v237 = v48;
          if (v13)
          {
            v128 = 0;
            v19 = v127 + 32;
            v129 = _swiftEmptyArrayStorage;
            v130 = v256;
LABEL_111:
            v131 = (v19 + 224 * v128);
            v132 = v128;
            while (v132 < *(v127 + 16))
            {
              v133 = v131[1];
              v275 = *v131;
              v276 = v133;
              v134 = v131[2];
              v135 = v131[3];
              v136 = v131[5];
              v279 = v131[4];
              v280 = v136;
              v277 = v134;
              v278 = v135;
              v137 = v131[6];
              v138 = v131[7];
              v139 = v131[9];
              v283 = v131[8];
              v284 = v139;
              v281 = v137;
              v282 = v138;
              v140 = v131[10];
              v141 = v131[11];
              v142 = v131[13];
              v287 = v131[12];
              v288 = v142;
              v285 = v140;
              v286 = v141;
              v128 = v132 + 1;
              if (v276 == v130)
              {
                sub_100203618(&v275, &v273);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v289 = v129;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1001F5504(0, v129[2] + 1, 1);
                  v129 = v289;
                }

                v145 = v129[2];
                v144 = v129[3];
                object = v145 + 1;
                v130 = v256;
                if (v145 >= v144 >> 1)
                {
                  sub_1001F5504((v144 > 1), v145 + 1, 1);
                  v130 = v256;
                  v129 = v289;
                }

                v129[2] = object;
                v146 = &v129[28 * v145];
                v147 = v276;
                v146[2] = v275;
                v146[3] = v147;
                v148 = v277;
                v149 = v278;
                v150 = v280;
                v146[6] = v279;
                v146[7] = v150;
                v146[4] = v148;
                v146[5] = v149;
                v151 = v281;
                v152 = v282;
                v153 = v284;
                v146[10] = v283;
                v146[11] = v153;
                v146[8] = v151;
                v146[9] = v152;
                v154 = v285;
                v155 = v286;
                v156 = v288;
                v146[14] = v287;
                v146[15] = v156;
                v146[12] = v154;
                v146[13] = v155;
                v48 = v237;
                if (v13 - 1 != v132)
                {
                  goto LABEL_111;
                }

                goto LABEL_123;
              }

              v131 += 14;
              ++v132;
              if (v13 == v128)
              {
                goto LABEL_123;
              }
            }

            goto LABEL_191;
          }

          v129 = _swiftEmptyArrayStorage;
LABEL_123:

          if (!v129[2])
          {

            v246 = 0;
            v27 = v262;
            v31 = v263;
            v13 = v264;
            v45 = v238;
            goto LABEL_60;
          }

          v157 = *(v129 + 13);
          v285 = *(v129 + 12);
          v286 = v157;
          v158 = *(v129 + 15);
          v287 = *(v129 + 14);
          v288 = v158;
          v159 = *(v129 + 9);
          v281 = *(v129 + 8);
          v282 = v159;
          v160 = *(v129 + 11);
          v283 = *(v129 + 10);
          v284 = v160;
          v161 = *(v129 + 5);
          v277 = *(v129 + 4);
          v278 = v161;
          v162 = *(v129 + 7);
          v279 = *(v129 + 6);
          v280 = v162;
          v163 = *(v129 + 3);
          v275 = *(v129 + 2);
          v276 = v163;
          sub_100203618(&v275, &v273);

          object = v288;
          v164 = v248;
          v27 = v262;
          v31 = v263;
          v13 = v264;
          v271 = *(v288 + 16);
          if (v271)
          {
            v165 = 0;
            v251 = _swiftEmptyArrayStorage;
            v269 = v288;
            while (v165 < *(object + 16))
            {
              v166 = (*(v272 + 80) + 32) & ~*(v272 + 80);
              v167 = *(v272 + 72);
              sub_100204DB0(object + v166 + v167 * v165, v164, type metadata accessor for Metric);
              v168 = v245;
              if (v245 && (type metadata accessor for CFString(0), v19 = sub_10020169C(&unk_1003770F0, type metadata accessor for CFString, &unk_1002EECD0), v169 = v168, object = v269, v170 = static _CFObject.== infix(_:_:)(), v169, v27 = v262, v164 = v248, (v170 & 1) != 0))
              {
                sub_100204E18(v248, v249, type metadata accessor for Metric);
                v171 = v251;
                v172 = swift_isUniquelyReferenced_nonNull_native();
                v273 = v171;
                if ((v172 & 1) == 0)
                {
                  sub_1001F54C0(0, v171[2] + 1, 1);
                  v171 = v273;
                }

                v19 = v171[2];
                v173 = v171[3];
                if (v19 >= v173 >> 1)
                {
                  sub_1001F54C0((v173 > 1), v19 + 1, 1);
                  v171 = v273;
                }

                v171[2] = v19 + 1;
                v251 = v171;
                sub_100204E18(v249, v171 + v166 + v19 * v167, type metadata accessor for Metric);
                object = v269;
              }

              else
              {
                sub_1002034BC(v164, type metadata accessor for Metric);
              }

              ++v165;
              v31 = v263;
              v13 = v264;
              if (v271 == v165)
              {
                goto LABEL_163;
              }
            }

            goto LABEL_192;
          }

          v251 = _swiftEmptyArrayStorage;
LABEL_163:
          sub_100203650(&v275);
          if (!v251[2])
          {

            v246 = 0;
            v48 = v237;
            v45 = v238;
            goto LABEL_60;
          }

          v192 = v241;
          sub_100204DB0(v251 + ((*(v272 + 80) + 32) & ~*(v272 + 80)), v241, type metadata accessor for Metric);

          v193 = *(v192 + *(v268 + 36));
          sub_1002034BC(v192, type metadata accessor for Metric);
          v194 = String._bridgeToObjectiveC()();
          v19 = [v193 componentsSeparatedByString:v194];

          object = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v237;
          v45 = v238;
          if (!*(object + 16))
          {

LABEL_59:
            v246 = 0;
            goto LABEL_60;
          }

          sub_1001A73BC(v246, v236);
          v196 = v195[2];
          v251 = v195;
          if (v196)
          {
            v197 = v195 + 4;
            v269 = _swiftEmptyArrayStorage;
            v198 = &type metadata for Int;
            do
            {
              v199 = *v197;
              v271 = (v197 + 1);
              v273 = v199;
              v200 = v198;
              v273 = dispatch thunk of CustomStringConvertible.description.getter();
              v274 = v201;
              __chkstk_darwin(v273);
              *(&v236 - 2) = &v273;
              v202 = object;
              v203 = object;
              v204 = v261;
              v205 = sub_1001E2ED0(sub_1002050FC, (&v236 - 4), v203);
              v261 = v204;

              if (v205)
              {
                v273 = v199;
                v206 = dispatch thunk of CustomStringConvertible.description.getter();
                v208 = v207;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v269 = sub_100224D30(0, *(v269 + 2) + 1, 1, v269);
                }

                v45 = v238;
                v210 = *(v269 + 2);
                v209 = *(v269 + 3);
                if (v210 >= v209 >> 1)
                {
                  v269 = sub_100224D30((v209 > 1), v210 + 1, 1, v269);
                }

                v211 = v269;
                *(v269 + 2) = v210 + 1;
                v212 = &v211[16 * v210];
                *(v212 + 4) = v206;
                *(v212 + 5) = v208;
                v198 = &type metadata for Int;
              }

              else
              {
                v198 = v200;
                v45 = v238;
              }

              --v196;
              object = v202;
              v197 = v271;
            }

            while (v196);
          }

          else
          {
            v269 = _swiftEmptyArrayStorage;
          }

          v31 = v263;
          if (!*(v269 + 2))
          {

            if (qword_100374FD8 != -1)
            {
              swift_once();
            }

            v225 = qword_1003824C0;
            v226 = static os_log_type_t.default.getter();
            sub_1001A551C(&unk_100377020, &unk_1002EF770);
            v19 = swift_allocObject();
            *(v19 + 16) = v240;
            v273 = object;
            sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
            sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
            v227 = BidirectionalCollection<>.joined(separator:)();
            v229 = v228;

            *(v19 + 56) = &type metadata for String;
            v230 = sub_1001A76E8();
            *(v19 + 64) = v230;
            *(v19 + 32) = v227;
            *(v19 + 40) = v229;
            v273 = 0x6E20646E6142;
            v274 = 0xE600000000000000;
            object = Array.description.getter();
            v232 = v231;

            v233._countAndFlagsBits = object;
            v233._object = v232;
            String.append(_:)(v233);

            v234 = v273;
            v235 = v274;
            *(v19 + 96) = &type metadata for String;
            *(v19 + 104) = v230;
            *(v19 + 72) = v234;
            *(v19 + 80) = v235;
            os_log(_:dso:log:type:_:)("SCell Band not matched - %{public}s Calculated Band - %{public}s", 64, 2, &_mh_execute_header, v225, v226, v19);
            goto LABEL_101;
          }

          if (qword_100374FD8 != -1)
          {
            swift_once();
          }

          v271 = qword_1003824C0;
          LODWORD(v251) = static os_log_type_t.default.getter();
          sub_1001A551C(&unk_100377020, &unk_1002EF770);
          v213 = swift_allocObject();
          *(v213 + 16) = v240;
          v273 = object;
          v246 = sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
          v238 = sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
          v214 = BidirectionalCollection<>.joined(separator:)();
          v216 = v215;

          *(v213 + 56) = &type metadata for String;
          v217 = sub_1001A76E8();
          *(v213 + 64) = v217;
          *(v213 + 32) = v214;
          *(v213 + 40) = v216;
          v273 = 0x6E20646E6142;
          v274 = 0xE600000000000000;
          v218 = v269;

          v219._countAndFlagsBits = Array.description.getter();
          String.append(_:)(v219);

          v220 = v273;
          v221 = v274;
          *(v213 + 96) = &type metadata for String;
          *(v213 + 104) = v217;
          *(v213 + 72) = v220;
          *(v213 + 80) = v221;
          os_log(_:dso:log:type:_:)("SCell Band - %{public}s Calculated Band - %{public}s", 52, 2, &_mh_execute_header, v271, v251, v213);

          v273 = 0x6E20646E6142;
          v274 = 0xE600000000000000;
          v289 = v218;
          object = BidirectionalCollection<>.joined(separator:)();
          v19 = v222;

          v223._countAndFlagsBits = object;
          v223._object = v19;
          String.append(_:)(v223);

          v224 = v274;
          v27 = v262;
          *(v262 + 32) = v273;
          *(v27 + 40) = v224;
          v246 = v224;
          v13 = v264;
          v48 = v237;
LABEL_60:
          if (!v31 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v275 = 0uLL, static String._conditionallyBridgeFromObjectiveC(_:result:)(), !*(&v275 + 1)))
          {

            goto LABEL_143;
          }

          if (v275 == __PAIR128__(v45, v48))
          {
          }

          else
          {
            object = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((object & 1) == 0)
            {
              goto LABEL_143;
            }
          }

          sub_100226B10(v265);
          if ((v57 & 1) == 0)
          {
            *(v27 + 25) = 2;
            v251 = v56;
            *(v27 + 96) = v56;
            *(v27 + 104) = 0;
            v58 = *(v255 + v243);
            v13 = *(v58 + 16);

            if (v13)
            {
              v59 = 0;
              v19 = v58 + 32;
              v60 = _swiftEmptyArrayStorage;
              v61 = v256;
              do
              {
                v62 = (v19 + 224 * v59);
                v63 = v59;
                while (1)
                {
                  if (v63 >= *(v58 + 16))
                  {
                    __break(1u);
                    goto LABEL_188;
                  }

                  v64 = v62[1];
                  v275 = *v62;
                  v276 = v64;
                  v65 = v62[2];
                  v66 = v62[3];
                  v67 = v62[5];
                  v279 = v62[4];
                  v280 = v67;
                  v277 = v65;
                  v278 = v66;
                  v68 = v62[6];
                  v69 = v62[7];
                  v70 = v62[9];
                  v283 = v62[8];
                  v284 = v70;
                  v281 = v68;
                  v282 = v69;
                  v71 = v62[10];
                  v72 = v62[11];
                  v73 = v62[13];
                  v287 = v62[12];
                  v288 = v73;
                  v285 = v71;
                  v286 = v72;
                  v59 = v63 + 1;
                  if (v276 == v61)
                  {
                    break;
                  }

                  v62 += 14;
                  ++v63;
                  if (v13 == v59)
                  {
                    goto LABEL_81;
                  }
                }

                sub_100203618(&v275, &v273);
                v74 = swift_isUniquelyReferenced_nonNull_native();
                v289 = v60;
                if ((v74 & 1) == 0)
                {
                  sub_1001F5504(0, v60[2] + 1, 1);
                  v60 = v289;
                }

                v76 = v60[2];
                v75 = v60[3];
                object = v76 + 1;
                v61 = v256;
                if (v76 >= v75 >> 1)
                {
                  sub_1001F5504((v75 > 1), v76 + 1, 1);
                  v61 = v256;
                  v60 = v289;
                }

                v60[2] = object;
                v77 = &v60[28 * v76];
                v78 = v276;
                v77[2] = v275;
                v77[3] = v78;
                v79 = v277;
                v80 = v278;
                v81 = v280;
                v77[6] = v279;
                v77[7] = v81;
                v77[4] = v79;
                v77[5] = v80;
                v82 = v281;
                v83 = v282;
                v84 = v284;
                v77[10] = v283;
                v77[11] = v84;
                v77[8] = v82;
                v77[9] = v83;
                v85 = v285;
                v86 = v286;
                v87 = v288;
                v77[14] = v287;
                v77[15] = v87;
                v77[12] = v85;
                v77[13] = v86;
              }

              while (v13 - 1 != v63);
            }

            else
            {
              v60 = _swiftEmptyArrayStorage;
            }

LABEL_81:

            if (!v60[2])
            {
              goto LABEL_137;
            }

            v88 = *(v60 + 13);
            v285 = *(v60 + 12);
            v286 = v88;
            v89 = *(v60 + 15);
            v287 = *(v60 + 14);
            v288 = v89;
            v90 = *(v60 + 9);
            v281 = *(v60 + 8);
            v282 = v90;
            v91 = *(v60 + 11);
            v283 = *(v60 + 10);
            v284 = v91;
            v92 = *(v60 + 5);
            v277 = *(v60 + 4);
            v278 = v92;
            v93 = *(v60 + 7);
            v279 = *(v60 + 6);
            v280 = v93;
            v94 = *(v60 + 3);
            v275 = *(v60 + 2);
            v276 = v94;
            sub_100203618(&v275, &v273);

            object = v288;
            v95 = v267;
            v271 = *(v288 + 16);
            if (v271)
            {
              v96 = 0;
              v97 = _swiftEmptyArrayStorage;
              v269 = v288;
              while (v96 < *(object + 16))
              {
                v98 = (*(v272 + 80) + 32) & ~*(v272 + 80);
                v99 = *(v272 + 72);
                sub_100204DB0(object + v98 + v99 * v96, v95, type metadata accessor for Metric);
                v13 = v270;
                if (v270 && (type metadata accessor for CFString(0), v19 = sub_10020169C(&unk_1003770F0, type metadata accessor for CFString, &unk_1002EECD0), v100 = v13, object = v269, v101 = static _CFObject.== infix(_:_:)(), v100, v95 = v267, (v101 & 1) != 0))
                {
                  sub_100204E18(v267, v266, type metadata accessor for Metric);
                  v102 = swift_isUniquelyReferenced_nonNull_native();
                  v273 = v97;
                  if ((v102 & 1) == 0)
                  {
                    sub_1001F54C0(0, v97[2] + 1, 1);
                    v97 = v273;
                  }

                  v19 = v97[2];
                  v103 = v97[3];
                  if (v19 >= v103 >> 1)
                  {
                    sub_1001F54C0((v103 > 1), v19 + 1, 1);
                    v97 = v273;
                  }

                  v97[2] = v19 + 1;
                  sub_100204E18(v266, v97 + v98 + v19 * v99, type metadata accessor for Metric);
                  object = v269;
                }

                else
                {
                  sub_1002034BC(v95, type metadata accessor for Metric);
                }

                if (v271 == ++v96)
                {
                  goto LABEL_95;
                }
              }

LABEL_188:
              __break(1u);
              goto LABEL_189;
            }

            v97 = _swiftEmptyArrayStorage;
LABEL_95:
            sub_100203650(&v275);
            if (v97[2])
            {
              v104 = v252;
              sub_100204DB0(v97 + ((*(v272 + 80) + 32) & ~*(v272 + 80)), v252, type metadata accessor for Metric);

              v105 = *(v104 + *(v268 + 36));
              sub_1002034BC(v104, type metadata accessor for Metric);
              v106 = String._bridgeToObjectiveC()();
              v19 = [v105 componentsSeparatedByString:v106];

              v107 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v31 = v263;
              if (*(v107 + 16))
              {
                v108 = sub_1001A7150(v251);
                v273 = v108;
                v273 = dispatch thunk of CustomStringConvertible.description.getter();
                v274 = v109;
                __chkstk_darwin(v273);
                *(&v236 - 2) = &v273;
                v110 = v261;
                v111 = sub_1001E2ED0(sub_100203680, (&v236 - 4), v107);
                v261 = v110;

                if ((v111 & 1) == 0)
                {

                  if (qword_100374FD8 != -1)
                  {
                    swift_once();
                  }

                  v112 = qword_1003824C0;
                  v19 = static os_log_type_t.default.getter();
                  sub_1001A551C(&unk_100377020, &unk_1002EF770);
                  v113 = swift_allocObject();
                  *(v113 + 16) = v240;
                  v273 = v107;
                  sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                  sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
                  v114 = BidirectionalCollection<>.joined(separator:)();
                  v116 = v115;

                  *(v113 + 56) = &type metadata for String;
                  v117 = sub_1001A76E8();
                  *(v113 + 64) = v117;
                  *(v113 + 32) = v114;
                  *(v113 + 40) = v116;
                  v273 = 0x4220646E6142;
                  v274 = 0xE600000000000000;
                  v289 = v108;
                  v118._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  object = v118._object;
                  String.append(_:)(v118);

                  v119 = v273;
                  v120 = v274;
                  *(v113 + 96) = &type metadata for String;
                  *(v113 + 104) = v117;
                  *(v113 + 72) = v119;
                  *(v113 + 80) = v120;
                  os_log(_:dso:log:type:_:)("SCell Band not matched - %{public}s Calculated Band - %{public}s", 64, 2, &_mh_execute_header, v112, v19, v113);
LABEL_101:

                  v27 = v262;
                  sub_1002034BC(v262, type metadata accessor for FTMBandInfoDataModel);
                  v31 = v263;
                  v13 = v264;
                  goto LABEL_20;
                }

                if (qword_100374FD8 != -1)
                {
                  swift_once();
                }

                v271 = qword_1003824C0;
                LODWORD(v269) = static os_log_type_t.default.getter();
                sub_1001A551C(&unk_100377020, &unk_1002EF770);
                v174 = swift_allocObject();
                *(v174 + 16) = v240;
                v273 = v107;
                sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
                v175 = BidirectionalCollection<>.joined(separator:)();
                v177 = v176;

                *(v174 + 56) = &type metadata for String;
                v178 = sub_1001A76E8();
                *(v174 + 64) = v178;
                *(v174 + 32) = v175;
                *(v174 + 40) = v177;
                v273 = 0x4220646E6142;
                v274 = 0xE600000000000000;
                v289 = v108;
                v179._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                v19 = v179._object;
                String.append(_:)(v179);

                v180 = v273;
                v181 = v274;
                *(v174 + 96) = &type metadata for String;
                *(v174 + 104) = v178;
                *(v174 + 72) = v180;
                *(v174 + 80) = v181;
                os_log(_:dso:log:type:_:)("SCell Band - %{public}s Calculated Band - %{public}s", 52, 2, &_mh_execute_header, v271, v269, v174);

                v273 = 66;
                v274 = 0xE100000000000000;
                v289 = v108;
                v182._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v182);

                v183 = v274;
                v27 = v262;
                *(v262 + 32) = v273;
                *(v27 + 40) = v183;
                v246 = v183;
              }

              else
              {

                v27 = v262;
              }
            }

            else
            {
LABEL_137:

              v27 = v262;
              v31 = v263;
            }

            v13 = v264;
          }

LABEL_143:
          sub_100226B28(v265);
          if ((v185 & 1) == 0)
          {
            *(v27 + 176) = v184;
            *(v27 + 184) = 0;
          }

          sub_100226DD4(v265);
          if ((v187 & 1) == 0)
          {
            *(v27 + 192) = v186;
            *(v27 + 200) = 0;
          }

          object = v265;
          sub_100226B1C(v265);
          v189 = v188;

          *(v27 + 128) = v189;
          *(v27 + 136) = 0;
          if (v246)
          {
            sub_100204DB0(v27, v244, type metadata accessor for FTMBandInfoDataModel);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v239 = sub_100224E3C(0, v239[2] + 1, 1, v239);
            }

            object = v239[2];
            v190 = v239[3];
            if (object >= v190 >> 1)
            {
              v239 = sub_100224E3C((v190 > 1), object + 1, 1, v239);
            }

            v191 = v239;
            v239[2] = object + 1;
            sub_100204E18(v244, v191 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * object, type metadata accessor for FTMBandInfoDataModel);
          }

          v30 = v257;
          sub_1002034BC(v27, type metadata accessor for FTMBandInfoDataModel);
          if (v13 == v260)
          {
            goto LABEL_186;
          }
        }

        else
        {
          if (v37 == 2)
          {
            v41 = 3;
            goto LABEL_34;
          }

LABEL_19:

LABEL_20:
          v30 = v257;
          if (v13 == v260)
          {
            goto LABEL_186;
          }
        }
      }
    }

    v239 = _swiftEmptyArrayStorage;
LABEL_186:

    v23 = v239;
  }

  else
  {
LABEL_11:

LABEL_12:
    v23 = _swiftEmptyArrayStorage;
  }

  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002EED50;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 32) = 0xD00000000000001FLL;
  *(v24 + 40) = 0x80000001002BBDD0;
  *(v24 + 88) = sub_1001A551C(&qword_1003770E8, &unk_1002F22C0);
  *(v24 + 64) = v23;

  print(_:separator:terminator:)();

  return v23;
}

uint64_t sub_1001ED800(void *a1, uint64_t a2, void *a3, const void *a4, void *a5, void *a6)
{
  v33 = a6;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v34 = *(v12 - 8);
  v35 = v12;
  __chkstk_darwin(v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002EED40;
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v37 = 0x636F20726F727265;
    v38 = 0xEF20646572727563;
    swift_getErrorValue();
    aBlock = Error.localizedDescription.getter();
    v40 = v16;
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v17._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v17);

    v18 = v37;
    v19 = v38;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = v18;
    *(v15 + 40) = v19;
    print(_:separator:terminator:)();
  }

  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v21[2] = a3;
  memcpy(v21 + 3, a4, 0x121uLL);
  v21[40] = a1;
  v21[41] = a5;
  v22 = v33;
  v21[42] = v33;
  v43 = sub_100201790;
  v44 = v21;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10020C96C;
  v42 = &unk_10031EAB8;
  v23 = _Block_copy(&aBlock);
  v24 = a3;
  sub_1001AC934(a4, &v37, &unk_100377060, &qword_1002F2200);
  v25 = a1;
  v26 = a5;
  v27 = v22;

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
  v29 = v31;
  v28 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v36 + 8))(v29, v28);
  return (*(v34 + 8))(v14, v35);
}

void sub_1001EDC54(void *a1, char *a2, void *a3, uint64_t a4, void *a5)
{
  v354 = a2;
  v355 = a3;
  memcpy(v384, a2, sizeof(v384));
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v331[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v352 = type metadata accessor for Metric(0);
  __chkstk_darwin(v352);
  v13 = &v331[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v353 = &v331[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v331[-v19];
  v21 = [a1 legacyInfo];
  if (!v21)
  {
    goto LABEL_15;
  }

  v350 = v11;
  v351 = v13;
  v22 = v21;
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v23 + 16))
  {
    goto LABEL_14;
  }

  sub_1001A773C(v23 + 32, v383);

  v24 = sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v39 = qword_1003824C0;
    v40 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("CT - unable to update. CT Data unavailable", 42, 2, &_mh_execute_header, v39, v40, _swiftEmptyArrayStorage);
    return;
  }

  v347 = v24;
  v25 = v360[0];
  v26 = *(v360[0] + 16);
  if (!v26)
  {
LABEL_14:

    goto LABEL_15;
  }

  v342 = v9;
  v343 = v8;
  v345 = v15;
  v346 = a5;
  v348 = v20;
  v27 = sub_100225A48(v26, 0);
  v28 = sub_1001FC2A4(v383, v27 + 4, v26, v25);
  v29 = v383[0];
  v30 = v383[1];
  v349 = v25;
  swift_bridgeObjectRetain_n();
  sub_1001DD8F0(v29);
  if (v28 != v26)
  {
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  v344 = v14;
  v383[0] = v27;
  sub_1001DBCA0(v383);

  v31 = v383[0];
  v32 = kCTCellMonitorBandInfo;
  v33 = v383[0] + 40;
  v34 = -*(v383[0] + 2);
  v35 = -1;
  do
  {
    if (v34 + v35 == -1)
    {

      if (qword_100374FD8 == -1)
      {
LABEL_19:
        v41 = qword_1003824C0;
        v42 = static os_log_type_t.default.getter();
        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1002EED40;
        *(v43 + 56) = v347;
        *(v43 + 64) = sub_1001AD0C8(&qword_1003770D0, &qword_1003751A8, &unk_1002EED70, &protocol conformance descriptor for [A : B]);
        *(v43 + 32) = v349;
        os_log(_:dso:log:type:_:)("CT band not available %{private}@", 33, 2, &_mh_execute_header, v41, v42, v43);

        return;
      }

LABEL_211:
      swift_once();
      goto LABEL_19;
    }

    if (++v35 >= *(v31 + 2))
    {
      __break(1u);
LABEL_168:
      v45 = v349;
LABEL_174:

      v50 = v345;
      v48 = v348;
      if (kCTCellMonitorRadioAccessTechnologyLTE)
      {
        if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v269)
        {
        }

        else
        {
          v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v271 & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        v272 = [v346 slotID] != 1;
        if (qword_100374FD8 != -1)
        {
          swift_once();
        }

        v273 = qword_1003824C0;
        v274 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("CT - 1", 6, 2, &_mh_execute_header, v273, v274, _swiftEmptyArrayStorage);
        v275 = qword_100382508;
        sub_100213B74(v45, v272);

        v264 = [objc_opt_self() defaultCenter];
        if (qword_100374FE0 != -1)
        {
          swift_once();
        }

        v265 = static NSNotificationName.NewABMMetric;
        sub_1001A551C(&qword_100377050, &qword_1002F21F0);
        v266 = swift_allocObject();
        *(v266 + 16) = xmmword_1002EED40;
        strcpy(v360, "metricObject");
        BYTE5(v360[1]) = 0;
        HIWORD(v360[1]) = -5120;
        AnyHashable.init<A>(_:)();
        *(v266 + 96) = &type metadata for MetricNotificationObject;
        v267 = swift_allocObject();
        *(v266 + 72) = v267;
        *(v267 + 16) = 4543564;
        *(v267 + 24) = 0xE300000000000000;
        *(v267 + 32) = 5521746;
        *(v267 + 40) = 0xE300000000000000;
        goto LABEL_187;
      }

      goto LABEL_221;
    }

    if (!v32)
    {
      goto LABEL_218;
    }

    v30 = *(v33 - 1);
    v37 = *v33;
    if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
    {

      goto LABEL_21;
    }

    v33 += 16;
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v36 & 1) == 0);

LABEL_21:
  memcpy(v383, v354, 0x121uLL);
  v44 = sub_1002004E8(v383);
  v45 = v349;
  if (v44 == 1)
  {
    goto LABEL_78;
  }

  v354 = v383[0];
  LODWORD(v347) = LOBYTE(v383[1]);
  v380 = *(&v383[17] + 1);
  v381 = *(&v383[19] + 1);
  v382[0] = *(&v383[21] + 1);
  *(v382 + 15) = *&v383[23];
  v376 = *(&v383[9] + 1);
  v377 = *(&v383[11] + 1);
  v378 = *(&v383[13] + 1);
  v379 = *(&v383[15] + 1);
  v372 = *(&v383[1] + 1);
  v373 = *(&v383[3] + 1);
  v374 = *(&v383[5] + 1);
  v375 = *(&v383[7] + 1);
  v370[0] = *(&v383[26] + 1);
  *(v370 + 3) = HIDWORD(v383[26]);
  v337 = v383[25];
  v338 = v383[27];
  v46 = v383[28];
  v368[0] = *(&v383[28] + 1);
  *(v368 + 3) = HIDWORD(v383[28]);
  *(v366 + 3) = HIDWORD(v383[30]);
  v366[0] = *(&v383[30] + 1);
  v341 = v383[31];
  *(v364 + 3) = HIDWORD(v383[32]);
  v364[0] = *(&v383[32] + 1);
  v339 = v383[29];
  v340 = v383[33];
  *(v362 + 3) = HIDWORD(v383[34]);
  v362[0] = *(&v383[34] + 1);
  v5 = v383[35];
  LODWORD(v334) = LOBYTE(v383[26]);
  v371 = v383[26];
  v369 = v383[28];
  v332 = LOBYTE(v383[32]);
  LODWORD(v333) = LOBYTE(v383[30]);
  v367 = v383[30];
  v365 = v383[32];
  LODWORD(v336) = LOBYTE(v383[34]);
  v363 = v383[34];
  LODWORD(v335) = LOBYTE(v383[36]);
  v361 = v383[36];
  memcpy(v360, v384, 0x121uLL);
  sub_1001DFAB0(v360, v359);
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v47 = sub_10021AF50();
  v48 = v47[2];
  if (!v48)
  {
LABEL_31:

    *(&v359[17] + 1) = v380;
    *(&v359[19] + 1) = v381;
    *(&v359[21] + 1) = v382[0];
    *&v359[23] = *(v382 + 15);
    *(&v359[9] + 1) = v376;
    *(&v359[11] + 1) = v377;
    *(&v359[13] + 1) = v378;
    *(&v359[15] + 1) = v379;
    *(&v359[1] + 1) = v372;
    *(&v359[3] + 1) = v373;
    *(&v359[5] + 1) = v374;
    v359[0] = v354;
    LOBYTE(v359[1]) = v347;
    *(&v359[7] + 1) = v375;
    v359[25] = v337;
    LOBYTE(v359[26]) = v334;
    *(&v359[26] + 1) = v370[0];
    HIDWORD(v359[26]) = *(v370 + 3);
    v359[27] = v338;
    LOBYTE(v359[28]) = v46;
    *(&v359[28] + 1) = v368[0];
    HIDWORD(v359[28]) = *(v368 + 3);
    v359[29] = v339;
    LOBYTE(v359[30]) = v333;
    *(&v359[30] + 1) = v366[0];
    HIDWORD(v359[30]) = *(v366 + 3);
    v359[31] = v341;
    LOBYTE(v359[32]) = v332;
    *(&v359[32] + 1) = v364[0];
    HIDWORD(v359[32]) = *(v364 + 3);
    v359[33] = v340;
    LOBYTE(v359[34]) = v336;
    *(&v359[34] + 1) = v362[0];
    HIDWORD(v359[34]) = *(v362 + 3);
    v359[35] = v5;
    LOBYTE(v359[36]) = v335;
    v52 = v359;
    goto LABEL_77;
  }

  v49 = 0;
  v50 = 0x79636167654CLL;
  while (2)
  {
    if (v49 >= v47[2])
    {
      __break(1u);
LABEL_208:
      (*(v50 + 8))(v48, v344);
      goto LABEL_88;
    }

    if (!*(v47 + v49 + 32) || *(v47 + v49 + 32) == 2)
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_33;
      }

      if (v48 == ++v49)
      {
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

LABEL_33:

  v30 = v340;
  v53 = v341;
  if (v355)
  {
    v54 = [v355 rsrp];
    if (v54)
    {
      v55 = v54;
      v56 = Int.init(truncating:)();
      v371 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      v57 = qword_100382480;
      v58 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1002EED40;
      v337 = v56;
      v359[0] = v56;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_1001A76E8();
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      os_log(_:dso:log:type:_:)("Primary Cell RSRP %{private}s", 29, 2, &_mh_execute_header, v57, v58, v59);
    }

    v63 = [v355 rsrq];
    if (v63)
    {
      v64 = v63;
      v65 = Int.init(truncating:)();
      v369 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      v66 = qword_100382480;
      v67 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1002EED40;
      v338 = v65;
      v359[0] = v65;
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      *(v68 + 56) = &type metadata for String;
      *(v68 + 64) = sub_1001A76E8();
      *(v68 + 32) = v69;
      *(v68 + 40) = v71;
      os_log(_:dso:log:type:_:)("Primary Cell RSRQ %{private}s", 29, 2, &_mh_execute_header, v66, v67, v68);
    }

    v72 = [v355 rssi];
    if (v72)
    {
      v73 = v72;
      v74 = Int.init(truncating:)();
      v367 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      v75 = qword_100382480;
      v76 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1002EED40;
      v339 = v74;
      v359[0] = v74;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_1001A76E8();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      os_log(_:dso:log:type:_:)("Primary Cell RSSI %{private}s", 29, 2, &_mh_execute_header, v75, v76, v77);
    }

    v81 = v355;
    v82 = [v355 snr];
    if (v82)
    {
      v83 = v82;
      Double.init(truncating:)();
      v5 = v84;
      v361 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      v85 = qword_100382480;
      v86 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1002EED40;
      v359[0] = 0;
      v359[1] = 0xE000000000000000;
      Double.write<A>(to:)();
      v88 = v359[0];
      v89 = v359[1];
      *(v87 + 56) = &type metadata for String;
      *(v87 + 64) = sub_1001A76E8();
      *(v87 + 32) = v88;
      *(v87 + 40) = v89;
      os_log(_:dso:log:type:_:)("Primary Cell SNR %{private}s", 28, 2, &_mh_execute_header, v85, v86, v87);

      v81 = v355;
    }

    v90 = [v81 rscp];
    if (v90)
    {
      v91 = v90;
      v53 = Int.init(truncating:)();
      v365 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      v92 = qword_100382480;
      v93 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_1002EED40;
      v359[0] = v53;
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      *(v94 + 56) = &type metadata for String;
      *(v94 + 64) = sub_1001A76E8();
      *(v94 + 32) = v95;
      *(v94 + 40) = v97;
      os_log(_:dso:log:type:_:)("Primary Cell RSCP %{private}s", 29, 2, &_mh_execute_header, v92, v93, v94);
    }

    v98 = [v355 ecn0];
    if (v98)
    {
      v99 = v98;
      v30 = Int.init(truncating:)();
      v363 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      v100 = qword_100382480;
      v101 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1002EED40;
      v359[0] = v30;
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      *(v102 + 56) = &type metadata for String;
      *(v102 + 64) = sub_1001A76E8();
      *(v102 + 32) = v103;
      *(v102 + 40) = v105;
      os_log(_:dso:log:type:_:)("Primary Cell ECN0 %{private}s", 29, 2, &_mh_execute_header, v100, v101, v102);
    }
  }

  v341 = v53;
  if (qword_100374F98 != -1)
  {
LABEL_216:
    swift_once();
  }

  v106 = qword_100382480;
  v107 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1002EED40;
  *(&v359[17] + 1) = v380;
  *(&v359[19] + 1) = v381;
  *(&v359[21] + 1) = v382[0];
  *&v359[23] = *(v382 + 15);
  *(&v359[9] + 1) = v376;
  *(&v359[11] + 1) = v377;
  *(&v359[13] + 1) = v378;
  *(&v359[15] + 1) = v379;
  *(&v359[1] + 1) = v372;
  *(&v359[3] + 1) = v373;
  *(&v359[5] + 1) = v374;
  v358[0] = 0;
  v358[1] = 0xE000000000000000;
  v359[0] = v354;
  v109 = v347;
  LOBYTE(v359[1]) = v347;
  *(&v359[7] + 1) = v375;
  v359[25] = v337;
  LOBYTE(v359[26]) = v371;
  *(&v359[26] + 1) = v370[0];
  HIDWORD(v359[26]) = *(v370 + 3);
  v359[27] = v338;
  LOBYTE(v359[28]) = v369;
  *(&v359[28] + 1) = v368[0];
  HIDWORD(v359[28]) = *(v368 + 3);
  v359[29] = v339;
  LOBYTE(v359[30]) = v367;
  *(&v359[30] + 1) = v366[0];
  HIDWORD(v359[30]) = *(v366 + 3);
  v359[31] = v341;
  LOBYTE(v359[32]) = v365;
  *(&v359[32] + 1) = v364[0];
  HIDWORD(v359[32]) = *(v364 + 3);
  v340 = v30;
  v359[33] = v30;
  LOBYTE(v359[34]) = v363;
  *(&v359[34] + 1) = v362[0];
  HIDWORD(v359[34]) = *(v362 + 3);
  v359[35] = v5;
  LOBYTE(v359[36]) = v361;
  _print_unlocked<A, B>(_:_:)();
  v110 = v358[0];
  v111 = v358[1];
  *(v108 + 56) = &type metadata for String;
  *(v108 + 64) = sub_1001A76E8();
  *(v108 + 32) = v110;
  *(v108 + 40) = v111;
  os_log(_:dso:log:type:_:)("Primary Cell %{private}s", 24, 2, &_mh_execute_header, v106, v107, v108);

  v112 = qword_100382508;
  v113 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
  swift_beginAccess();
  v35 = *&v112[v113];
  v114 = *(v35 + 16);
  if (!v114)
  {
    goto LABEL_71;
  }

  v115 = v109;
  v30 = 0;
  v116 = 328;
  while (2)
  {
    if (*(v35 + v116 - 288))
    {
      if (v115)
      {
        goto LABEL_66;
      }

LABEL_62:
      ++v30;
      v116 += 296;
      if (v114 == v30)
      {
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

  if ((v115 & 1) != 0 || *(v35 + v116 - 296) != v354)
  {
    goto LABEL_62;
  }

LABEL_66:
  v117 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    swift_once();
LABEL_93:
    v140 = qword_1003824C0;
    v141 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1002EED50;
    v143 = [v346 *(v30 + 3592)];
    v144 = sub_1001A76E8();
    v145 = 48;
    if (v143 != 1)
    {
      v145 = 49;
    }

    *(v142 + 56) = &type metadata for String;
    *(v142 + 64) = v144;
    *(v142 + 32) = v145;
    *(v142 + 40) = 0xE100000000000000;
    *(v142 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
    *(v142 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
    *(v142 + 72) = v35;
    v146 = v35;
    os_log(_:dso:log:type:_:)("RSRP11~CT %{private}@ - %{private}@", 35, 2, &_mh_execute_header, v140, v141, v142);

    v147 = v345;
    v148 = v348;
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v149 = qword_100382508;
    v150 = *(v147 + 16);
    v340 = (v147 + 16);
    v341 = v150;
    v151 = v353;
    (v150)(v353, v148, v344);
    v347 = v149;
    v339 = String._bridgeToObjectiveC()();
    v337 = String._bridgeToObjectiveC()();
    sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
    v336 = NSString.init(stringLiteral:)("rsrp_ct", 7, 2);
    v335 = NSString.init(stringLiteral:)("rsrp_ct", 7, 2);
    v152 = [v146 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v338 = v146;

    v153 = String._bridgeToObjectiveC()();

    v154 = NSString.init(stringLiteral:)("INT", 3, 2);
    v155 = v350;
    Date.init()();
    UUID.uuidString.getter();
    v333 = String._bridgeToObjectiveC()();

    v156 = v351;
    v157 = v352;
    v158 = v352[14];
    v159 = v352[15];
    v334 = v352[16];
    v160 = v344;
    (v341)(v351, v151, v344);
    *(v156 + v157[5]) = v339;
    v161 = v336;
    *(v156 + v157[6]) = v337;
    *(v156 + v157[7]) = v161;
    *(v156 + v157[8]) = v335;
    *(v156 + v157[9]) = v153;
    *(v156 + v157[10]) = v154;
    v163 = v342;
    v162 = v343;
    (*(v342 + 16))(v156 + v157[11], v155, v343);
    *(v156 + v157[12]) = v333;
    *(v156 + v157[13]) = v354;
    *(v156 + v158) = 0;
    *(v156 + v159) = 0;
    (*(v163 + 8))(v155, v162);
    (*(v345 + 8))(v151, v160);
    *(v334 + v156) = xmmword_1002F2090;
    v164 = v347;
    sub_100215264(v156);

    sub_1002034BC(v156, type metadata accessor for Metric);
    v138 = v355;
LABEL_98:
    v165 = [v138 snr];
    if (v165)
    {
      v166 = v165;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      v167 = qword_1003824C0;
      v168 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v169 = swift_allocObject();
      *(v169 + 16) = xmmword_1002EED50;
      v170 = [v346 slotID];
      v171 = sub_1001A76E8();
      v172 = 48;
      if (v170 != 1)
      {
        v172 = 49;
      }

      *(v169 + 56) = &type metadata for String;
      *(v169 + 64) = v171;
      *(v169 + 32) = v172;
      *(v169 + 40) = 0xE100000000000000;
      *(v169 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v169 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v169 + 72) = v166;
      v173 = v166;
      os_log(_:dso:log:type:_:)("SNR11~CT %{private}@ - %{private}@", 34, 2, &_mh_execute_header, v167, v168, v169);

      v174 = v345;
      v175 = v348;
      if (qword_100375020 != -1)
      {
        swift_once();
      }

      v176 = qword_100382508;
      v177 = *(v174 + 16);
      v341 = (v174 + 16);
      v347 = v177;
      v178 = v353;
      (v177)(v353, v175, v344);
      v355 = v176;
      v340 = String._bridgeToObjectiveC()();
      v338 = String._bridgeToObjectiveC()();
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v337 = NSString.init(stringLiteral:)("snr_ct", 6, 2);
      v336 = NSString.init(stringLiteral:)("snr_ct", 6, 2);
      v179 = [v173 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v339 = v173;

      v180 = String._bridgeToObjectiveC()();

      v181 = NSString.init(stringLiteral:)("INT", 3, 2);
      v182 = v350;
      Date.init()();
      UUID.uuidString.getter();
      v334 = String._bridgeToObjectiveC()();

      v183 = v351;
      v184 = v352;
      v185 = v352[14];
      v186 = v352[15];
      v335 = v352[16];
      v187 = v344;
      (v347)(v351, v178, v344);
      *(v183 + v184[5]) = v340;
      v188 = v337;
      *(v183 + v184[6]) = v338;
      *(v183 + v184[7]) = v188;
      *(v183 + v184[8]) = v336;
      *(v183 + v184[9]) = v180;
      *(v183 + v184[10]) = v181;
      v190 = v342;
      v189 = v343;
      (*(v342 + 16))(v183 + v184[11], v182, v343);
      *(v183 + v184[12]) = v334;
      *(v183 + v184[13]) = v354;
      *(v183 + v185) = 0;
      *(v183 + v186) = 0;
      (*(v190 + 8))(v182, v189);
      (*(v345 + 8))(v178, v187);
      *(v183 + v335) = xmmword_1002F2090;
      v191 = v355;
      sub_100215264(v183);

      sub_1002034BC(v183, type metadata accessor for Metric);
    }

LABEL_106:
    v192 = [v346 slotID] != 1;
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v193 = qword_1003824C0;
    v194 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("CT - 1", 6, 2, &_mh_execute_header, v193, v194, _swiftEmptyArrayStorage);
    v195 = v345;
    v196 = v348;
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v197 = qword_100382508;
    sub_100213B74(v349, v192);

    v198 = [objc_opt_self() defaultCenter];
    if (qword_100374FE0 != -1)
    {
      swift_once();
    }

    v199 = static NSNotificationName.NewABMMetric;
    sub_1001A551C(&qword_100377050, &qword_1002F21F0);
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_1002EED40;
    strcpy(v360, "metricObject");
    BYTE5(v360[1]) = 0;
    HIWORD(v360[1]) = -5120;
    AnyHashable.init<A>(_:)();
    *(v200 + 96) = &type metadata for MetricNotificationObject;
    v201 = swift_allocObject();
    *(v200 + 72) = v201;
    *(v201 + 16) = 18229;
    *(v201 + 24) = 0xE200000000000000;
    *(v201 + 32) = 5521746;
    *(v201 + 40) = 0xE300000000000000;
    *(v201 + 48) = v354;
    sub_1001FD020(v200);
    swift_setDeallocating();
    sub_1001AC99C(v200 + 32, &qword_100377058, &qword_1002F21F8);
    swift_deallocClassInstance();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v198 postNotificationName:v199 object:0 userInfo:isa];

    (*(v195 + 8))(v196, v344);
    return;
  }

  v118 = v112;
  if (v117 != v114)
  {
    v203 = v347;
    while (1)
    {
      if (v117 >= v114)
      {
        goto LABEL_210;
      }

      if (*(v35 + v116 + 8))
      {
        if (v203)
        {
          goto LABEL_116;
        }
      }

      else if ((v203 & 1) == 0 && *(v35 + v116) == v354)
      {
        goto LABEL_116;
      }

      if (v117 != v30)
      {
        if (v30 >= v114)
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
          goto LABEL_215;
        }

        memcpy(v358, (v35 + 32 + 296 * v30), 0x121uLL);
        memcpy(v359, (v35 + v116), 0x121uLL);
        sub_1001DFAB0(v358, v357);
        sub_1001DFAB0(v359, v357);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1001FA730(v35);
        }

        if (v30 >= *(v35 + 16))
        {
          goto LABEL_213;
        }

        v204 = v35 + 296 * v30;
        memcpy(v356, (v204 + 32), 0x121uLL);
        memcpy((v204 + 32), v359, 0x121uLL);
        sub_1001DFB0C(v356);
        if (v117 >= *(v35 + 16))
        {
          goto LABEL_214;
        }

        memcpy(v357, (v35 + v116), 0x121uLL);
        memcpy((v35 + v116), v358, 0x121uLL);
        sub_1001DFB0C(v357);
        *&v112[v113] = v35;
        v203 = v347;
      }

      ++v30;
LABEL_116:
      ++v117;
      v114 = *(v35 + 16);
      v116 += 296;
      if (v117 == v114)
      {
        goto LABEL_69;
      }
    }
  }

  v117 = v114;
LABEL_69:
  v114 = v30;
  if (v117 < v30)
  {
    __break(1u);
LABEL_71:
    v119 = v112;
    v117 = v114;
  }

  sub_1001FCC58(v114, v117, sub_100224F8C, sub_1001FCB58);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v120 = v358[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v358[0]) = (v120 & 1) == 0;

  static Published.subscript.setter();

  *(&v359[17] + 1) = v380;
  *(&v359[19] + 1) = v381;
  *(&v359[21] + 1) = v382[0];
  *&v359[23] = *(v382 + 15);
  *(&v359[9] + 1) = v376;
  *(&v359[11] + 1) = v377;
  *(&v359[13] + 1) = v378;
  *(&v359[15] + 1) = v379;
  *(&v359[1] + 1) = v372;
  *(&v359[3] + 1) = v373;
  *(&v359[5] + 1) = v374;
  v121 = qword_100382508;
  v359[0] = v354;
  LOBYTE(v359[1]) = v347;
  *(&v359[7] + 1) = v375;
  v359[25] = v337;
  LODWORD(v336) = v371;
  LOBYTE(v359[26]) = v371;
  *(&v359[26] + 1) = v370[0];
  HIDWORD(v359[26]) = *(v370 + 3);
  v359[27] = v338;
  LODWORD(v335) = v369;
  LOBYTE(v359[28]) = v369;
  *(&v359[28] + 1) = v368[0];
  HIDWORD(v359[28]) = *(v368 + 3);
  v359[29] = v339;
  LODWORD(v334) = v367;
  LOBYTE(v359[30]) = v367;
  HIDWORD(v359[30]) = *(v366 + 3);
  *(&v359[30] + 1) = v366[0];
  v122 = v341;
  v359[31] = v341;
  LODWORD(v333) = v365;
  LOBYTE(v359[32]) = v365;
  *(&v359[32] + 1) = v364[0];
  HIDWORD(v359[32]) = *(v364 + 3);
  v359[33] = v340;
  v123 = v363;
  LOBYTE(v359[34]) = v363;
  *(&v359[34] + 1) = v362[0];
  HIDWORD(v359[34]) = *(v362 + 3);
  v359[35] = v5;
  v124 = v361;
  LOBYTE(v359[36]) = v361;
  v125 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
  swift_beginAccess();
  v126 = *&v121[v125];
  v127 = v121;
  sub_1001DFAB0(v359, v358);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v121[v125] = v126;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v126 = sub_100224F8C(0, *(v126 + 2) + 1, 1, v126);
    *&v121[v125] = v126;
  }

  v130 = *(v126 + 2);
  v129 = *(v126 + 3);
  if (v130 >= v129 >> 1)
  {
    v126 = sub_100224F8C((v129 > 1), v130 + 1, 1, v126);
  }

  *(v126 + 2) = v130 + 1;
  memcpy(&v126[296 * v130 + 32], v359, 0x121uLL);
  *&v121[v125] = v126;
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v131 = v358[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v358[0]) = (v131 & 1) == 0;

  static Published.subscript.setter();

  *(&v358[17] + 1) = v380;
  *(&v358[19] + 1) = v381;
  *(&v358[21] + 1) = v382[0];
  *&v358[23] = *(v382 + 15);
  *(&v358[9] + 1) = v376;
  *(&v358[11] + 1) = v377;
  *(&v358[13] + 1) = v378;
  *(&v358[15] + 1) = v379;
  *(&v358[1] + 1) = v372;
  *(&v358[3] + 1) = v373;
  *(&v358[5] + 1) = v374;
  v358[0] = v354;
  LOBYTE(v358[1]) = v347;
  *(&v358[7] + 1) = v375;
  v358[25] = v337;
  LOBYTE(v358[26]) = v336;
  *(&v358[26] + 1) = v370[0];
  HIDWORD(v358[26]) = *(v370 + 3);
  v358[27] = v338;
  LOBYTE(v358[28]) = v335;
  *(&v358[28] + 1) = v368[0];
  HIDWORD(v358[28]) = *(v368 + 3);
  v358[29] = v339;
  LOBYTE(v358[30]) = v334;
  *(&v358[30] + 1) = v366[0];
  HIDWORD(v358[30]) = *(v366 + 3);
  v358[31] = v122;
  LOBYTE(v358[32]) = v333;
  *(&v358[32] + 1) = v364[0];
  HIDWORD(v358[32]) = *(v364 + 3);
  v358[33] = v340;
  LOBYTE(v358[34]) = v123;
  *(&v358[34] + 1) = v362[0];
  HIDWORD(v358[34]) = *(v362 + 3);
  v358[35] = v5;
  LOBYTE(v358[36]) = v124;
  v52 = v358;
LABEL_77:
  sub_1001DFB0C(v52);
  v45 = v349;
LABEL_78:
  sub_1002017A4(v346, v355);
  if (!*(v45 + 16))
  {
    goto LABEL_88;
  }

  v132 = sub_1001F66B8(0xD000000000000027, 0x80000001002B9780);
  if ((v133 & 1) == 0)
  {
    goto LABEL_88;
  }

  sub_1001A773C(*(v45 + 56) + 32 * v132, v360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_88;
  }

  v31 = v359[0];
  v35 = v359[1];
  v134 = HIBYTE(v359[1]) & 0xFLL;
  if ((v359[1] & 0x2000000000000000) == 0)
  {
    v134 = v359[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v134)
  {

LABEL_88:

    return;
  }

  UUID.init()();
  v30 = &selRef_clearRlfCauses;
  LODWORD(v354) = [v346 slotID] != 1;
  v135 = String.lowercased()();
  v136 = String.lowercased()();
  if (v135._countAndFlagsBits == v136._countAndFlagsBits && v135._object == v136._object)
  {

    goto LABEL_90;
  }

  v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v137)
  {
LABEL_90:

    v138 = v355;
    if (v355)
    {
      v139 = [v355 rsrp];
      if (v139)
      {
        v35 = v139;
        if (qword_100374FD8 == -1)
        {
          goto LABEL_93;
        }

        goto LABEL_219;
      }

      goto LABEL_98;
    }

    goto LABEL_106;
  }

  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v205 = sub_10021AF50();
  v206 = v205[2];
  if (v206)
  {
    v30 = 0;
    while (v30 < v205[2])
    {
      if (*(v205 + v30 + 32) && *(v205 + v30 + 32) != 1)
      {

        goto LABEL_174;
      }

      v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v207)
      {
        goto LABEL_168;
      }

      ++v30;
      v45 = v349;
      if (v206 == v30)
      {
        goto LABEL_139;
      }
    }

LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

LABEL_139:

  v50 = v345;
  v48 = v348;
LABEL_140:
  if (!kCTCellMonitorRadioAccessTechnologyGSM)
  {
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);

    __break(1u);
    return;
  }

  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v208)
  {

    goto LABEL_148;
  }

  v210 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v210)
  {
LABEL_148:

    v211 = v355;
    if (v355)
    {
      v212 = [v355 rscp];
      if (v212)
      {
        v213 = v212;
        if (qword_100374FD8 != -1)
        {
          swift_once();
        }

        v214 = qword_1003824C0;
        v215 = static os_log_type_t.default.getter();
        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v216 = swift_allocObject();
        *(v216 + 16) = xmmword_1002EED50;
        v217 = [v346 slotID];
        v218 = sub_1001A76E8();
        v219 = 48;
        if (v217 != 1)
        {
          v219 = 49;
        }

        *(v216 + 56) = &type metadata for String;
        *(v216 + 64) = v218;
        *(v216 + 32) = v219;
        *(v216 + 40) = 0xE100000000000000;
        *(v216 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
        *(v216 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
        *(v216 + 72) = v213;
        v220 = v213;
        v341 = v220;
        os_log(_:dso:log:type:_:)("RSCP11~CT %{private}@ - %{private}@", 35, 2, &_mh_execute_header, v214, v215, v216);

        v221 = qword_100382508;
        v340 = *(v50 + 16);
        (v340)(v353, v48, v344);
        v347 = v221;
        v339 = String._bridgeToObjectiveC()();
        v338 = String._bridgeToObjectiveC()();
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v337 = NSString.init(stringLiteral:)("rscp_ct", 7, 2);
        v336 = NSString.init(stringLiteral:)("rscp_ct", 7, 2);
        v222 = [v220 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v223 = String._bridgeToObjectiveC()();

        v224 = NSString.init(stringLiteral:)("INT", 3, 2);
        v225 = v350;
        Date.init()();
        UUID.uuidString.getter();
        v334 = String._bridgeToObjectiveC()();

        v227 = v351;
        v226 = v352;
        v228 = v352[15];
        v333 = v352[14];
        v335 = v352[16];
        v229 = v353;
        v230 = v344;
        (v340)(v351, v353, v344);
        v231 = v338;
        *(v227 + v226[5]) = v339;
        *(v227 + v226[6]) = v231;
        v232 = v336;
        *(v227 + v226[7]) = v337;
        *(v227 + v226[8]) = v232;
        *(v227 + v226[9]) = v223;
        *(v227 + v226[10]) = v224;
        v234 = v342;
        v233 = v343;
        (*(v342 + 16))(v227 + v226[11], v225, v343);
        *(v227 + v226[12]) = v334;
        *(v227 + v226[13]) = v354;
        *(v333 + v227) = 0;
        *(v227 + v228) = 0;
        v48 = v348;
        (*(v234 + 8))(v225, v233);
        v50 = v345;
        (*(v345 + 8))(v229, v230);
        *(v227 + v335) = xmmword_1002F2090;
        v235 = v347;
        sub_100215264(v227);

        sub_1002034BC(v227, type metadata accessor for Metric);
        v45 = v349;
        v211 = v355;
      }

      v236 = [v211 ecn0];
      if (v236)
      {
        v237 = v236;
        if (qword_100374FD8 != -1)
        {
          swift_once();
        }

        v238 = qword_1003824C0;
        v239 = static os_log_type_t.default.getter();
        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v240 = swift_allocObject();
        *(v240 + 16) = xmmword_1002EED50;
        v241 = [v346 slotID];
        v242 = sub_1001A76E8();
        v243 = 48;
        if (v241 != 1)
        {
          v243 = 49;
        }

        *(v240 + 56) = &type metadata for String;
        *(v240 + 64) = v242;
        *(v240 + 32) = v243;
        *(v240 + 40) = 0xE100000000000000;
        *(v240 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
        *(v240 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
        *(v240 + 72) = v237;
        v244 = v237;
        v347 = v244;
        os_log(_:dso:log:type:_:)("ECN011~CT %{private}@ - %{private}@", 35, 2, &_mh_execute_header, v238, v239, v240);

        v245 = qword_100382508;
        v341 = *(v50 + 16);
        (v341)(v353, v48, v344);
        v355 = v245;
        v340 = String._bridgeToObjectiveC()();
        v339 = String._bridgeToObjectiveC()();
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v338 = NSString.init(stringLiteral:)("ecn0_ct", 7, 2);
        v337 = NSString.init(stringLiteral:)("ecn0_ct", 7, 2);
        v246 = [v244 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v247 = String._bridgeToObjectiveC()();

        v248 = NSString.init(stringLiteral:)("INT", 3, 2);
        v249 = v350;
        Date.init()();
        UUID.uuidString.getter();
        v335 = String._bridgeToObjectiveC()();

        v251 = v351;
        v250 = v352;
        v252 = v352[15];
        v334 = v352[14];
        v336 = v352[16];
        v253 = v353;
        v254 = v344;
        (v341)(v351, v353, v344);
        v255 = v339;
        *(v251 + v250[5]) = v340;
        *(v251 + v250[6]) = v255;
        v256 = v337;
        *(v251 + v250[7]) = v338;
        *(v251 + v250[8]) = v256;
        *(v251 + v250[9]) = v247;
        *(v251 + v250[10]) = v248;
        v258 = v342;
        v257 = v343;
        (*(v342 + 16))(v251 + v250[11], v249, v343);
        *(v251 + v250[12]) = v335;
        *(v251 + v250[13]) = v354;
        *(v334 + v251) = 0;
        *(v251 + v252) = 0;
        v48 = v348;
        (*(v258 + 8))(v249, v257);
        v50 = v345;
        (*(v345 + 8))(v253, v254);
        *(v251 + v336) = xmmword_1002F2090;
        v259 = v355;
        sub_100215264(v251);

        sub_1002034BC(v251, type metadata accessor for Metric);
        v45 = v349;
      }
    }

    v260 = [v346 slotID] != 1;
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v261 = qword_1003824C0;
    v262 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("CT - 1", 6, 2, &_mh_execute_header, v261, v262, _swiftEmptyArrayStorage);
    v263 = qword_100382508;
    sub_100213B74(v45, v260);

    v264 = [objc_opt_self() defaultCenter];
    if (qword_100374FE0 != -1)
    {
      swift_once();
    }

    v265 = static NSNotificationName.NewABMMetric;
    sub_1001A551C(&qword_100377050, &qword_1002F21F0);
    v266 = swift_allocObject();
    *(v266 + 16) = xmmword_1002EED40;
    strcpy(v360, "metricObject");
    BYTE5(v360[1]) = 0;
    HIWORD(v360[1]) = -5120;
    AnyHashable.init<A>(_:)();
    *(v266 + 96) = &type metadata for MetricNotificationObject;
    v267 = swift_allocObject();
    *(v266 + 72) = v267;
    *(v267 + 16) = 5067591;
    *(v267 + 24) = 0xE300000000000000;
    goto LABEL_166;
  }

  if (!kCTCellMonitorRadioAccessTechnologyUMTS)
  {
    goto LABEL_222;
  }

  if (v31 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v35 != v268)
  {
    v277 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v277)
    {
      goto LABEL_189;
    }

    goto LABEL_208;
  }

LABEL_189:
  v278 = v355;
  if (v355)
  {
    v279 = [v355 rscp];
    if (v279)
    {
      v280 = v279;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      v281 = qword_1003824C0;
      v282 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v283 = swift_allocObject();
      *(v283 + 16) = xmmword_1002EED50;
      v284 = [v346 slotID];
      v285 = sub_1001A76E8();
      v286 = 48;
      if (v284 != 1)
      {
        v286 = 49;
      }

      *(v283 + 56) = &type metadata for String;
      *(v283 + 64) = v285;
      *(v283 + 32) = v286;
      *(v283 + 40) = 0xE100000000000000;
      *(v283 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v283 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v283 + 72) = v280;
      v287 = v280;
      v341 = v287;
      os_log(_:dso:log:type:_:)("RSCP11~CT %{private}@ - %{private}@", 35, 2, &_mh_execute_header, v281, v282, v283);

      v288 = qword_100382508;
      v340 = *(v50 + 16);
      (v340)(v353, v48, v344);
      v347 = v288;
      v339 = String._bridgeToObjectiveC()();
      v338 = String._bridgeToObjectiveC()();
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v337 = NSString.init(stringLiteral:)("rscp_ct", 7, 2);
      v336 = NSString.init(stringLiteral:)("rscp_ct", 7, 2);
      v289 = [v287 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v290 = String._bridgeToObjectiveC()();

      v291 = NSString.init(stringLiteral:)("INT", 3, 2);
      v292 = v350;
      Date.init()();
      UUID.uuidString.getter();
      v334 = String._bridgeToObjectiveC()();

      v293 = v351;
      v294 = v352;
      v295 = v352[15];
      v333 = v352[14];
      v335 = v352[16];
      v296 = v353;
      v297 = v344;
      (v340)(v351, v353, v344);
      v298 = v338;
      *(v293 + v294[5]) = v339;
      *(v293 + v294[6]) = v298;
      v299 = v336;
      *(v293 + v294[7]) = v337;
      *(v293 + v294[8]) = v299;
      *(v293 + v294[9]) = v290;
      *(v293 + v294[10]) = v291;
      v301 = v342;
      v300 = v343;
      (*(v342 + 16))(v293 + v294[11], v292, v343);
      *(v293 + v294[12]) = v334;
      *(v293 + v294[13]) = v354;
      *(v333 + v293) = 0;
      *(v293 + v295) = 0;
      v48 = v348;
      (*(v301 + 8))(v292, v300);
      v50 = v345;
      (*(v345 + 8))(v296, v297);
      *(v293 + v335) = xmmword_1002F2090;
      v302 = v347;
      sub_100215264(v293);

      sub_1002034BC(v293, type metadata accessor for Metric);
      v45 = v349;
      v278 = v355;
    }

    v303 = [v278 ecn0];
    if (v303)
    {
      v304 = v303;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      v305 = qword_1003824C0;
      v306 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v307 = swift_allocObject();
      *(v307 + 16) = xmmword_1002EED50;
      v308 = [v346 slotID];
      v309 = sub_1001A76E8();
      v310 = 48;
      if (v308 != 1)
      {
        v310 = 49;
      }

      *(v307 + 56) = &type metadata for String;
      *(v307 + 64) = v309;
      *(v307 + 32) = v310;
      *(v307 + 40) = 0xE100000000000000;
      *(v307 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v307 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v307 + 72) = v304;
      v311 = v304;
      v347 = v311;
      os_log(_:dso:log:type:_:)("ECN011~CT %{private}@ - %{private}@", 35, 2, &_mh_execute_header, v305, v306, v307);

      v312 = qword_100382508;
      v341 = *(v50 + 16);
      (v341)(v353, v48, v344);
      v355 = v312;
      v340 = String._bridgeToObjectiveC()();
      v339 = String._bridgeToObjectiveC()();
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v338 = NSString.init(stringLiteral:)("ecn0_ct", 7, 2);
      v337 = NSString.init(stringLiteral:)("ecn0_ct", 7, 2);
      v313 = [v311 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v314 = String._bridgeToObjectiveC()();

      v315 = NSString.init(stringLiteral:)("INT", 3, 2);
      v316 = v350;
      Date.init()();
      UUID.uuidString.getter();
      v335 = String._bridgeToObjectiveC()();

      v317 = v351;
      v318 = v352;
      v319 = v352[15];
      v334 = v352[14];
      v336 = v352[16];
      v320 = v353;
      v321 = v344;
      (v341)(v351, v353, v344);
      v322 = v339;
      *(v317 + v318[5]) = v340;
      *(v317 + v318[6]) = v322;
      v323 = v337;
      *(v317 + v318[7]) = v338;
      *(v317 + v318[8]) = v323;
      *(v317 + v318[9]) = v314;
      *(v317 + v318[10]) = v315;
      v325 = v342;
      v324 = v343;
      (*(v342 + 16))(v317 + v318[11], v316, v343);
      *(v317 + v318[12]) = v335;
      *(v317 + v318[13]) = v354;
      *(v334 + v317) = 0;
      *(v317 + v319) = 0;
      v48 = v348;
      (*(v325 + 8))(v316, v324);
      v50 = v345;
      (*(v345 + 8))(v320, v321);
      *(v317 + v336) = xmmword_1002F2090;
      v326 = v355;
      sub_100215264(v317);

      sub_1002034BC(v317, type metadata accessor for Metric);
      v45 = v349;
    }
  }

  v327 = [v346 slotID] != 1;
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v328 = qword_1003824C0;
  v329 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CT - 1", 6, 2, &_mh_execute_header, v328, v329, _swiftEmptyArrayStorage);
  v330 = qword_100382508;
  sub_100213B74(v45, v327);

  v264 = [objc_opt_self() defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  v265 = static NSNotificationName.NewABMMetric;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_1002EED40;
  strcpy(v360, "metricObject");
  BYTE5(v360[1]) = 0;
  HIWORD(v360[1]) = -5120;
  AnyHashable.init<A>(_:)();
  *(v266 + 96) = &type metadata for MetricNotificationObject;
  v267 = swift_allocObject();
  *(v266 + 72) = v267;
  *(v267 + 16) = 1398033749;
  *(v267 + 24) = 0xE400000000000000;
LABEL_166:
  *(v267 + 32) = 5521746;
  *(v267 + 40) = 0xE300000000000000;
LABEL_187:
  *(v267 + 48) = v354;
  sub_1001FD020(v266);
  swift_setDeallocating();
  sub_1001AC99C(v266 + 32, &qword_100377058, &qword_1002F21F8);
  swift_deallocClassInstance();
  v276 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v264 postNotificationName:v265 object:0 userInfo:v276];

  (*(v50 + 8))(v48, v344);
}

void sub_1001F1774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  Date.init()();
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  swift_beginAccess();
  sub_1001E29F4(v10, a1);
  swift_endAccess();
  v12 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a1];
  v13 = [objc_opt_self() descriptorWithSubscriptionContext:v12];
  v14 = *(v4 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_100201630;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002050F8;
  aBlock[3] = &unk_10031E9C8;
  v16 = _Block_copy(aBlock);

  [v14 getSignalStrengthMeasurements:v13 completion:v16];
  _Block_release(v16);
}

void sub_1001F1994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v15;
  if (a2)
  {
    sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
    v30 = v8;
    v28 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    v37 = sub_100201724;
    v38 = v16;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_10020C96C;
    v36 = &unk_10031EA68;
    v17 = _Block_copy(&aBlock);
    v29 = a3;
    v18 = v17;
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v28;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v20 = v32;
    v21 = v18;
    a3 = v29;
    v8 = v30;
    _Block_release(v21);

    (*(v8 + 1))(v10, v7);
    (*(v12 + 8))(v14, v20);
  }

  v22 = v31;
  if (v31)
  {
    sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
    v23 = v22;
    v31 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a3;
    v24[4] = a4;
    v37 = sub_100201690;
    v38 = v24;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_10020C96C;
    v36 = &unk_10031EA18;
    v25 = _Block_copy(&aBlock);

    v30 = v23;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v31;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v8 + 1))(v10, v7);
    (*(v12 + 8))(v14, v32);
  }
}

uint64_t sub_1001F1E9C(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002EED40;
  _StringGuts.grow(_:)(17);

  if (a1)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
  }

  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0x636F20726F727265;
  *(v4 + 40) = 0xEF20646572727563;
  print(_:separator:terminator:)();

  if (a1)
  {
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v9 = qword_1003824C0;
    v10 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002EED40;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1001A76E8();
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;
    os_log(_:dso:log:type:_:)("CT - signalStrengthMeasurements error: %{public}s", 49, 2, &_mh_execute_header, v9, v10, v11);
  }

  return a2(0, a1);
}

uint64_t sub_1001F20E0(void *a1, uint64_t (*a2)(id, void))
{
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002EED40;
  strcpy(v14, "measurements");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  v5 = a1;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11 = v14[0];
  v12 = v14[1];
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = v11;
  *(v4 + 40) = v12;
  print(_:separator:terminator:)();

  return a2(v5, 0);
}

void sub_1001F2210(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001F229C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v11 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002EED40;
    aBlock = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    aBlock = 0xD000000000000021;
    v31 = 0x80000001002BBC90;
    swift_getErrorValue();
    v28 = Error.localizedDescription.getter();
    v29 = v15;
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    v17 = aBlock;
    v18 = v31;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = v17;
    *(v14 + 40) = v18;
    print(_:separator:terminator:)();
  }

  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v34 = sub_100203610;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10020C96C;
  v33 = &unk_10031EBF8;
  v21 = _Block_copy(&aBlock);
  v22 = a1;
  v23 = a3;
  v24 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v27 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v26);
}

void sub_1001F269C(void *a1, uint64_t a2, unint64_t a3, char *a4)
{
  if (!a1)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v148 = a4;
  v9 = a1;
  v10 = sub_1001FD848(v9);
  v156 = sub_1001FDC20(v9);
  v173 = v11;
  v155 = sub_1001FDD84(v9, sub_100225FB8);
  v172 = v12;
  v154 = sub_1001FDD84(v9, sub_100225FC4);
  v171 = v13;
  v169 = v10;
  if (v10 == 5)
  {
    goto LABEL_6;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    if (v10 == 3)
    {
LABEL_6:

      goto LABEL_8;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      v152 = 0;
      v153 = 0;
      v170 = 0xE000000000000000;
      v17 = 0xE000000000000000;
      goto LABEL_9;
    }
  }

LABEL_8:
  v153 = sub_1001FDEAC(v9, sub_100225FD0);
  v17 = v16;
  v152 = sub_1001FDEAC(v9, sub_100225FDC);
  v170 = v18;
LABEL_9:
  v19 = sub_1001FDFB8(v9);
  v21 = v20;
  sub_1001E92CC(v9, a3);
  v175 = v22;
  v150 = v9;
  v149 = sub_1001EB974(v9, a3);
  v168 = sub_1001E76C4(a3);
  v23 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
  swift_beginAccess();
  v176 = a3;
  v174 = *(*&v8[v23] + 16);
  if (!v174)
  {
    goto LABEL_92;
  }

  if ((v173 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v173) & 0xF;
  }

  else
  {
    v24 = v156 & 0xFFFFFFFFFFFFLL;
  }

  v25 = HIBYTE(v172) & 0xF;
  if ((v172 & 0x2000000000000000) == 0)
  {
    v25 = v155 & 0xFFFFFFFFFFFFLL;
  }

  v166 = v25;
  v167 = v24;
  if ((v171 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v171) & 0xF;
  }

  else
  {
    v26 = v154 & 0xFFFFFFFFFFFFLL;
  }

  v27 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v27 = v153 & 0xFFFFFFFFFFFFLL;
  }

  v164 = v27;
  v165 = v26;
  if ((v170 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v170) & 0xF;
  }

  else
  {
    v28 = v152 & 0xFFFFFFFFFFFFLL;
  }

  v29 = HIBYTE(v21) & 0xF;
  v151 = v19;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v29 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v162 = v29;
  v163 = v28;
  v161 = a3 != 1;
  v147 = *&v8[v23];

  v30 = 0;
  v159 = v23;
  v160 = v8;
  v157 = v21;
  v158 = v17;
  while (1)
  {
    v36 = *&v8[v23];
    if (v30 >= *(v36 + 2))
    {
      goto LABEL_124;
    }

    if (*&v36[224 * v30 + 48] != a3)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8[v23] = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1001FA71C(v36);
    }

    if (v30 >= *(v36 + 2))
    {
      goto LABEL_128;
    }

    v38 = &v36[224 * v30];
    v38[97] = v169;
    *&v8[v23] = v36;
    if (v30 >= *(v36 + 2))
    {
      goto LABEL_129;
    }

    v38[96] = v168;
    *&v8[v23] = v36;
    swift_endAccess();
    if (v167)
    {
      swift_beginAccess();

      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v23] = v36;
      if ((v39 & 1) == 0)
      {
        v36 = sub_1001FA71C(v36);
        *&v8[v23] = v36;
      }

      if (v30 >= *(v36 + 2))
      {
        goto LABEL_133;
      }

      v40 = &v36[224 * v30];
      *(v40 + 23) = v156;
      *(v40 + 24) = v173;
      *&v8[v23] = v36;
      swift_endAccess();
    }

    if (v166)
    {
      swift_beginAccess();

      v41 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v23] = v36;
      if ((v41 & 1) == 0)
      {
        v36 = sub_1001FA71C(v36);
        *&v8[v23] = v36;
      }

      if (v30 >= *(v36 + 2))
      {
        goto LABEL_134;
      }

      v42 = &v36[224 * v30];
      *(v42 + 21) = v155;
      *(v42 + 22) = v172;
      *&v8[v23] = v36;
      swift_endAccess();
    }

    if (v165)
    {
      swift_beginAccess();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v23] = v36;
      if ((v43 & 1) == 0)
      {
        v36 = sub_1001FA71C(v36);
        *&v8[v23] = v36;
      }

      if (v30 >= *(v36 + 2))
      {
        goto LABEL_135;
      }

      v44 = &v36[224 * v30];
      *(v44 + 13) = v154;
      *(v44 + 14) = v171;
      *&v8[v23] = v36;
      swift_endAccess();
    }

    if (v164)
    {
      swift_beginAccess();

      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v23] = v36;
      if ((v45 & 1) == 0)
      {
        v36 = sub_1001FA71C(v36);
        *&v8[v23] = v36;
      }

      if (v30 >= *(v36 + 2))
      {
        goto LABEL_136;
      }

      v46 = &v36[224 * v30];
      *(v46 + 15) = v153;
      *(v46 + 16) = v17;
      *&v8[v23] = v36;
      swift_endAccess();
    }

    if (v163)
    {
      swift_beginAccess();

      v47 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v23] = v36;
      if ((v47 & 1) == 0)
      {
        v36 = sub_1001FA71C(v36);
        *&v8[v23] = v36;
      }

      if (v30 >= *(v36 + 2))
      {
        goto LABEL_137;
      }

      v48 = &v36[224 * v30];
      *(v48 + 17) = v152;
      *(v48 + 18) = v170;
      *&v8[v23] = v36;
      swift_endAccess();
    }

    if (v162)
    {
      swift_beginAccess();

      v49 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v23] = v36;
      if ((v49 & 1) == 0)
      {
        v36 = sub_1001FA71C(v36);
        *&v8[v23] = v36;
      }

      if (v30 >= *(v36 + 2))
      {
        goto LABEL_138;
      }

      v50 = &v36[224 * v30];
      *(v50 + 19) = v151;
      *(v50 + 20) = v21;
      *&v8[v23] = v36;
      swift_endAccess();
    }

    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1002EED50;
    *(v51 + 56) = &type metadata for Int;
    *(v51 + 64) = &protocol witness table for Int;
    *(v51 + 32) = v161;
    v52 = Array.description.getter();
    v54 = v53;
    *(v51 + 96) = &type metadata for String;
    *(v51 + 104) = sub_1001A76E8();
    *(v51 + 72) = v52;
    *(v51 + 80) = v54;
    os_log(_:dso:log:type:_:)("SCell Info val %d %s", v147, v148);

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v8 = qword_100382508;
    v23 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
    swift_beginAccess();
    v55 = *&v8[v23];
    v56 = *(v55 + 2);
    if (v56)
    {
      break;
    }

LABEL_26:
    v31 = v8;
    a3 = v56;
LABEL_27:
    sub_1001FCC58(v56, a3, sub_100224C0C, sub_1001FC954);
    swift_endAccess();
    sub_10020D3C0(1);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = v182[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v182[0]) = (v32 & 1) == 0;

    static Published.subscript.setter();

    v33 = qword_100382508;
    swift_beginAccess();
    v34 = v33;

    sub_1001E2FA8(v35);
    swift_endAccess();
    sub_10020D3C0(1);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LOBYTE(v33) = v182[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v182[0]) = (v33 & 1) == 0;

    static Published.subscript.setter();

    v23 = v159;
    v8 = v160;
    a3 = v176;
    v21 = v157;
    v17 = v158;
LABEL_28:
    if (++v30 == v174)
    {

      v19 = v151;
LABEL_92:

      sub_1001FE268(a3, v169, v19, v21);

      if (qword_100375020 == -1)
      {
        goto LABEL_93;
      }

      goto LABEL_140;
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = v55 + 40;
  while ((*v59 & 1) != 0 || *(v59 - 1) != a3)
  {
    ++v58;
    v59 += 208;
    v57 += 208;
    if (v56 == v58)
    {
      goto LABEL_26;
    }
  }

  a3 = v58 + 1;
  if (__OFADD__(v58, 1))
  {
    goto LABEL_139;
  }

  v60 = v8;
  if (a3 != v56)
  {
    while (a3 < v56)
    {
      v61 = &v55[v57 + 240];
      if ((v55[v57 + 248] & 1) != 0 || *v61 != v176)
      {
        if (a3 != v58)
        {
          if (v58 >= v56)
          {
            goto LABEL_125;
          }

          v62 = 208 * v58;
          v63 = &v55[208 * v58 + 32];
          __dst[0] = *v63;
          v64 = *(v63 + 1);
          v65 = *(v63 + 2);
          v66 = *(v63 + 4);
          __dst[3] = *(v63 + 3);
          __dst[4] = v66;
          __dst[1] = v64;
          __dst[2] = v65;
          v67 = *(v63 + 5);
          v68 = *(v63 + 6);
          v69 = *(v63 + 8);
          __dst[7] = *(v63 + 7);
          __dst[8] = v69;
          __dst[5] = v67;
          __dst[6] = v68;
          v70 = *(v63 + 9);
          v71 = *(v63 + 10);
          v72 = *(v63 + 11);
          *(&__dst[11] + 9) = *(v63 + 185);
          __dst[10] = v71;
          __dst[11] = v72;
          __dst[9] = v70;
          v182[0] = *v61;
          v73 = *&v55[v57 + 256];
          v74 = *&v55[v57 + 272];
          v75 = *&v55[v57 + 304];
          v182[3] = *&v55[v57 + 288];
          v182[4] = v75;
          v182[1] = v73;
          v182[2] = v74;
          v76 = *&v55[v57 + 320];
          v77 = *&v55[v57 + 336];
          v78 = *&v55[v57 + 368];
          v182[7] = *&v55[v57 + 352];
          v182[8] = v78;
          v182[5] = v76;
          v182[6] = v77;
          v79 = *&v55[v57 + 384];
          v80 = *&v55[v57 + 400];
          v81 = *&v55[v57 + 416];
          *(&v182[11] + 9) = *&v55[v57 + 425];
          v182[10] = v80;
          v182[11] = v81;
          v182[9] = v79;
          sub_100201470(__dst, __src);
          sub_100201470(v182, __src);
          v82 = swift_isUniquelyReferenced_nonNull_native();
          *&v8[v23] = v55;
          if ((v82 & 1) == 0)
          {
            v55 = sub_1001FA708(v55);
            *&v8[v23] = v55;
          }

          if (v58 >= *(v55 + 2))
          {
            goto LABEL_126;
          }

          v83 = &v55[v62];
          v178[0] = *&v55[v62 + 32];
          v84 = *&v55[v62 + 48];
          v85 = *&v55[v62 + 64];
          v86 = *&v55[v62 + 96];
          v178[3] = *&v55[v62 + 80];
          v178[4] = v86;
          v178[1] = v84;
          v178[2] = v85;
          v87 = *&v55[v62 + 112];
          v88 = *&v55[v62 + 128];
          v89 = *&v55[v62 + 160];
          v178[7] = *&v55[v62 + 144];
          v178[8] = v89;
          v178[5] = v87;
          v178[6] = v88;
          v90 = *&v55[v62 + 176];
          v91 = *&v55[v62 + 192];
          v92 = *&v55[v62 + 208];
          *(v179 + 9) = *&v55[v62 + 217];
          v178[10] = v91;
          v179[0] = v92;
          v178[9] = v90;
          *(v83 + 2) = v182[0];
          v93 = v182[1];
          v94 = v182[2];
          v95 = v182[4];
          *(v83 + 5) = v182[3];
          *(v83 + 6) = v95;
          *(v83 + 3) = v93;
          *(v83 + 4) = v94;
          v96 = v182[5];
          v97 = v182[6];
          v98 = v182[8];
          *(v83 + 9) = v182[7];
          *(v83 + 10) = v98;
          *(v83 + 7) = v96;
          *(v83 + 8) = v97;
          v99 = v182[9];
          v100 = v182[10];
          v101 = v182[11];
          *(v83 + 217) = *(&v182[11] + 9);
          *(v83 + 12) = v100;
          *(v83 + 13) = v101;
          *(v83 + 11) = v99;
          sub_1002014CC(v178);
          *&v8[v23] = v55;
          if (a3 >= *(v55 + 2))
          {
            goto LABEL_127;
          }

          v102 = &v55[v57];
          __src[0] = *&v55[v57 + 240];
          v103 = *&v55[v57 + 256];
          v104 = *&v55[v57 + 272];
          v105 = *&v55[v57 + 304];
          __src[3] = *&v55[v57 + 288];
          __src[4] = v105;
          __src[1] = v103;
          __src[2] = v104;
          v106 = *&v55[v57 + 320];
          v107 = *&v55[v57 + 336];
          v108 = *&v55[v57 + 368];
          __src[7] = *&v55[v57 + 352];
          __src[8] = v108;
          __src[5] = v106;
          __src[6] = v107;
          v109 = *&v55[v57 + 384];
          v110 = *&v55[v57 + 400];
          v111 = *&v55[v57 + 416];
          *(&__src[11] + 9) = *&v55[v57 + 425];
          __src[10] = v110;
          __src[11] = v111;
          __src[9] = v109;
          *(v102 + 15) = __dst[0];
          v112 = __dst[1];
          v113 = __dst[2];
          v114 = __dst[4];
          *(v102 + 18) = __dst[3];
          *(v102 + 19) = v114;
          *(v102 + 16) = v112;
          *(v102 + 17) = v113;
          v115 = __dst[5];
          v116 = __dst[6];
          v117 = __dst[8];
          *(v102 + 22) = __dst[7];
          *(v102 + 23) = v117;
          *(v102 + 20) = v115;
          *(v102 + 21) = v116;
          v118 = __dst[9];
          v119 = __dst[10];
          v120 = __dst[11];
          *(v102 + 425) = *(&__dst[11] + 9);
          *(v102 + 25) = v119;
          *(v102 + 26) = v120;
          *(v102 + 24) = v118;
          sub_1002014CC(__src);
          *&v8[v23] = v55;
        }

        ++v58;
      }

      ++a3;
      v56 = *(v55 + 2);
      v57 += 208;
      if (a3 == v56)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_124:
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
    goto LABEL_131;
  }

  a3 = v56;
LABEL_77:
  v56 = v58;
  if (a3 >= v58)
  {
    goto LABEL_27;
  }

  while (1)
  {
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
    swift_once();
LABEL_93:
    v121 = sub_10021AF50();
    v122 = v121[2];
    if (v122)
    {
      v123 = 0;
      while (1)
      {
        if (v123 >= v121[2])
        {
          goto LABEL_130;
        }

        if (*(v121 + v123 + 32) && *(v121 + v123 + 32) != 1)
        {
          break;
        }

        v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v124)
        {
          a3 = v176;
LABEL_104:

          sub_1001FFA94(v150, v169, a3, v178);
          sub_100200658(a3, v178, v175, v149);

          sub_1001AC99C(v178, &unk_100377060, &qword_1002F2200);
          goto LABEL_105;
        }

        ++v123;
        a3 = v176;
        if (v122 == v123)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_104;
    }

LABEL_100:

LABEL_105:
    v125 = sub_10021AF50();
    v126 = v125[2];
    if (!v126)
    {
      break;
    }

    a3 = 0;
    while (a3 < v125[2])
    {
      if (*(v125 + a3 + 32) && *(v125 + a3 + 32) != 2)
      {

LABEL_114:

        v128 = v150;
        sub_1001FFA94(v150, v169, v176, __src);
        memcpy(__dst, __src, 0x121uLL);
        v129 = v148;
        if (sub_1002004E8(__dst) == 1)
        {
          goto LABEL_115;
        }

        sub_1001E4158();
        v130 = [v148 slotID];
        v131 = swift_allocObject();
        v131[2] = v150;
        memcpy(v131 + 3, __src, 0x121uLL);
        v131[40] = v8;
        v131[41] = v148;
        v145 = v150;
        v8;
        v146 = v148;
        v134 = sub_1002050B0;
        goto LABEL_116;
      }

      v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v127)
      {
        goto LABEL_114;
      }

      if (v126 == ++a3)
      {
        goto LABEL_112;
      }
    }

LABEL_131:
    __break(1u);
  }

LABEL_112:

  v128 = v150;
  v129 = v148;
LABEL_115:
  sub_1001FFA48(v177);
  memcpy(v182, v177, 0x121uLL);
  sub_1001E4158();
  v130 = [v129 slotID];
  v131 = swift_allocObject();
  v131[2] = v128;
  memcpy(v131 + 3, v182, 0x121uLL);
  v131[40] = v8;
  v131[41] = v129;
  v132 = v128;
  v8;
  v133 = v129;
  v134 = sub_1001FFA84;
LABEL_116:
  sub_1001F1774(v130, v134, v131);

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v135 = qword_1003824C0;
  v136 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1002EED40;
  v138 = *&v8[v23];
  v139 = sub_1001A551C(&qword_100377040, &qword_1002F21E8);
  *(v137 + 56) = v139;
  *(v137 + 64) = sub_1001AD0C8(&qword_100377048, &qword_100377040, &qword_1002F21E8, &protocol conformance descriptor for [A]);
  *(v137 + 32) = v138;

  os_log(_:dso:log:type:_:)("CarrierInfoArray RAT data2 %{private}@", 38, 2, &_mh_execute_header, v135, v136, v137);

  v140 = [objc_opt_self() defaultCenter];
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  v141 = static NSNotificationName.carrierUpdate;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1002EED40;
  v177[0] = 0x7372656972726163;
  v177[1] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v143 = *&v8[v23];
  *(v142 + 96) = v139;
  *(v142 + 72) = v143;

  sub_1001FD020(v142);
  swift_setDeallocating();
  sub_1001AC99C(v142 + 32, &qword_100377058, &qword_1002F21F8);
  swift_deallocClassInstance();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v140 postNotificationName:v141 object:0 userInfo:isa];
}

void sub_1001F3B94(char *result, void *a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) != 1)
  {
    return;
  }

  if (qword_100374FD8 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002EED50;
    *&v107[0] = result;
    v6 = result;
    sub_1001A551C(&qword_100377238, &qword_1002F23D8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v5 + 56) = &type metadata for String;
    v10 = sub_1001A76E8();
    *(v5 + 64) = v10;
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    *&v107[0] = a2;
    v11 = a2;
    sub_1001A551C(&qword_100377250, &qword_1002F23F0);
    v12 = String.init<A>(describing:)();
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v10;
    *(v5 + 72) = v12;
    *(v5 + 80) = v13;
    os_log(_:dso:log:type:_:)("cellMonitorUpdate context  ---> %s and info ---> %s", v85, v86);

    if (!result)
    {
      __break(1u);
      return;
    }

    v14 = &selRef_clearRlfCauses;
    v15 = [v6 slotID];
    v16 = "CarrierInfoArray ";
    if (v15 == 1)
    {
      v16 = "0000000100000002";
    }

    result = (v16 | 0x8000000000000000);
    v17 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v18 = *(v3 + v17);
    v19 = *(v18 + 16);
    if (v19 == 1)
    {
      v26 = *(v18 + 48);
      if (v26 == [v6 slotID])
      {
LABEL_11:

        goto LABEL_22;
      }

      v27 = [v6 slotID];
      v28 = [v6 isSimPresent];
      v29 = [v6 phoneNumber];
      if (v29)
      {
        v30 = v29;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      *&v93 = v27;
      BYTE8(v93) = v28;
      *&v94 = 0xD000000000000010;
      *(&v94 + 1) = result;
      *&v95 = v31;
      *(&v95 + 1) = v33;
      LOWORD(v96) = 1541;
      *(&v96 + 1) = 0x6E776F6E6B6E55;
      v97 = 0xE700000000000000;
      v98 = 0xE000000000000000;
      *&v99 = 0xE000000000000000;
      *(&v99 + 1) = 0x2020202020202020;
      *&v100 = 0xEA00000000002020;
      *(&v100 + 1) = 0x2020202020202020;
      *&v101 = 0xEA00000000002020;
      *(&v101 + 1) = 0x2020202020202020;
      *&v102 = 0xEA00000000002020;
      *(&v102 + 1) = 0x2020202020202020;
      *&v103 = 0xEA00000000002020;
      *(&v103 + 1) = 0x2020202020202020;
      *&v104 = 0xEA00000000002020;
      *(&v104 + 1) = _swiftEmptyArrayStorage;
      *&v105 = _swiftEmptyArrayStorage;
      *(&v105 + 1) = _swiftEmptyArrayStorage;
      swift_beginAccess();
      v107[10] = v102;
      v107[11] = v103;
      v107[12] = v104;
      v107[13] = v105;
      v107[6] = v98;
      v107[7] = v99;
      v107[8] = v100;
      v107[9] = v101;
      v107[2] = v94;
      v107[3] = v95;
      v107[4] = v96;
      v107[5] = v97;
      v107[0] = v92;
      v107[1] = v93;
      result = (v3 + v17);
      sub_100204650(0, 0, v107);
      swift_endAccess();
      sub_100203650(&v92);
      v14 = &selRef_clearRlfCauses;
    }

    else
    {
      if (v19)
      {
        goto LABEL_11;
      }

      v87 = [v6 slotID];
      v20 = [v6 isSimPresent];
      v21 = [v6 phoneNumber];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      swift_beginAccess();
      v34 = *(v3 + v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v17) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_100224E64(0, *(v34 + 2) + 1, 1, v34);
        *(v3 + v17) = v34;
      }

      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v86 = (v37 + 1);
        v84 = sub_100224E64((v36 > 1), v37 + 1, 1, v34);
        v38 = v37 + 1;
        v34 = v84;
      }

      *(v34 + 2) = v38;
      v39 = &v34[224 * v37];
      *(v39 + 4) = 0;
      *(v39 + 5) = 0xE000000000000000;
      *(v39 + 6) = v87;
      v39[56] = v20;
      v40 = *(&v92 + 3);
      *(v39 + 57) = v92;
      *(v39 + 15) = v40;
      *(v39 + 8) = 0xD000000000000010;
      *(v39 + 9) = result;
      *(v39 + 10) = v23;
      *(v39 + 11) = v25;
      *(v39 + 48) = 1541;
      v41 = v90;
      *(v39 + 51) = v91;
      *(v39 + 98) = v41;
      *(v39 + 13) = 0x6E776F6E6B6E55;
      *(v39 + 14) = 0xE700000000000000;
      *(v39 + 15) = 0;
      *(v39 + 16) = 0xE000000000000000;
      *(v39 + 17) = 0;
      *(v39 + 18) = 0xE000000000000000;
      *(v39 + 19) = 0x2020202020202020;
      *(v39 + 20) = 0xEA00000000002020;
      *(v39 + 21) = 0x2020202020202020;
      *(v39 + 22) = 0xEA00000000002020;
      *(v39 + 23) = 0x2020202020202020;
      *(v39 + 24) = 0xEA00000000002020;
      *(v39 + 25) = 0x2020202020202020;
      *(v39 + 26) = 0xEA00000000002020;
      *(v39 + 27) = 0x2020202020202020;
      *(v39 + 28) = 0xEA00000000002020;
      *(v39 + 29) = _swiftEmptyArrayStorage;
      *(v39 + 30) = _swiftEmptyArrayStorage;
      *(v39 + 31) = _swiftEmptyArrayStorage;
      *(v3 + v17) = v34;
      swift_endAccess();
      v14 = &selRef_clearRlfCauses;
    }

LABEL_22:
    v42 = *(*(v3 + v17) + 16);
    if (!v42)
    {
      break;
    }

    v43 = 0;
    for (i = 0; i != v42; ++i)
    {
      v45 = *(v3 + v17);
      if (i >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      result = *(v45 + v43 + 48);
      if (result == [v6 slotID])
      {
        result = [v6 isSimPresent];
        swift_beginAccess();
        v46 = *(v3 + v17);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v17) = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_1001FA71C(v46);
        }

        if (i >= *(v46 + 2))
        {
          goto LABEL_53;
        }

        v46[v43 + 56] = result;
        *(v3 + v17) = v46;
        swift_endAccess();
      }

      v43 += 224;
    }

    v48 = *(v3 + v17);
    v49 = *(v48 + 16);

    if (!v49)
    {
      goto LABEL_45;
    }

    v50 = 0;
    result = v49 - 1;
    v51 = _swiftEmptyArrayStorage;
    v52 = 32;
LABEL_33:
    v53 = *(v48 + 16);
    v54 = v52 + 224 * v50;
    v55 = v50;
    while (v55 < v53)
    {
      v56 = *(v48 + v54 + 16);
      v92 = *(v48 + v54);
      v93 = v56;
      v57 = *(v48 + v54 + 32);
      v58 = *(v48 + v54 + 48);
      v59 = *(v48 + v54 + 80);
      v96 = *(v48 + v54 + 64);
      v97 = v59;
      v94 = v57;
      v95 = v58;
      v60 = *(v48 + v54 + 96);
      v61 = *(v48 + v54 + 112);
      v62 = *(v48 + v54 + 144);
      v100 = *(v48 + v54 + 128);
      v101 = v62;
      v98 = v60;
      v99 = v61;
      v63 = *(v48 + v54 + 160);
      v64 = *(v48 + v54 + 176);
      v65 = *(v48 + v54 + 208);
      v104 = *(v48 + v54 + 192);
      v105 = v65;
      v102 = v63;
      v103 = v64;
      v50 = v55 + 1;
      if (BYTE8(v93))
      {
        sub_100203618(&v92, &v90);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v51;
        v88 = v52;
        if ((v66 & 1) == 0)
        {
          sub_1001F5504(0, v51[2] + 1, 1);
          v51 = v106;
        }

        v68 = v51[2];
        v67 = v51[3];
        v69 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          v86 = v49 - 1;
          sub_1001F5504((v67 > 1), v68 + 1, 1);
          v69 = v68 + 1;
          v51 = v106;
        }

        v51[2] = v69;
        v70 = &v51[28 * v68];
        v71 = v93;
        v70[2] = v92;
        v70[3] = v71;
        v72 = v94;
        v73 = v95;
        v74 = v97;
        v70[6] = v96;
        v70[7] = v74;
        v70[4] = v72;
        v70[5] = v73;
        v75 = v98;
        v76 = v99;
        v77 = v101;
        v70[10] = v100;
        v70[11] = v77;
        v70[8] = v75;
        v70[9] = v76;
        v78 = v102;
        v79 = v103;
        v80 = v105;
        v70[14] = v104;
        v70[15] = v80;
        v70[12] = v78;
        v70[13] = v79;
        v52 = v88;
        if (result == v55)
        {
LABEL_43:
          v14 = &selRef_clearRlfCauses;
          goto LABEL_46;
        }

        goto LABEL_33;
      }

      v54 += 224;
      ++v55;
      if (v49 == v50)
      {
        goto LABEL_43;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

LABEL_45:
  v51 = _swiftEmptyArrayStorage;
LABEL_46:

  *(v3 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isSimAdded) = v51[2] == 2;
  swift_beginAccess();
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(v3 + v17);
  if (v81)
  {
    sub_1001FCC58(0, *(v82 + 16), sub_100224E64, sub_100204724);
  }

  else
  {
    *(v3 + v17) = sub_100225ACC(0, *(v82 + 24) >> 1);
  }

  sub_1001E3210(v51);
  swift_endAccess();
  sub_1001E571C([v6 v14[449]]);
  v83 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:{objc_msgSend(v6, v14[449])}];
  sub_1001E79A8(v83, a2);

  sub_10020BEF4();
}

void sub_1001F449C(id a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) == 1)
  {
    if (a1)
    {
      v5 = [a1 slotID];
      v6 = "CarrierInfoArray ";
      if (v5 == 1)
      {
        v6 = "0000000100000002";
      }

      v22 = v6 | 0x8000000000000000;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      v21 = qword_1003824C0;
      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1002EED50;
      v8 = a1;
      sub_1001A551C(&qword_100377238, &qword_1002F23D8);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      *(v7 + 56) = &type metadata for String;
      v12 = sub_1001A76E8();
      *(v7 + 64) = v12;
      *(v7 + 32) = v9;
      *(v7 + 40) = v11;
      v13 = a2;
      sub_1001A551C(&qword_100377248, &qword_1002F23E8);
      v14 = String.init<A>(describing:)();
      *(v7 + 96) = &type metadata for String;
      *(v7 + 104) = v12;
      *(v7 + 72) = v14;
      *(v7 + 80) = v15;
      os_log(_:dso:log:type:_:)("signalStrengthChanged context  ---> %s and info ---> %s", v20, v21);

      v16 = [v8 slotID];
      v17 = swift_allocObject();
      v17[2] = v2;
      v17[3] = a1;
      v17[4] = 0xD000000000000010;
      v17[5] = v22;
      v18 = v8;
      v19 = v2;
      sub_1001F1774(v16, sub_100204F30, v17);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001F46D8(void *a1, void *a2, char *a3, void *a4, unint64_t a5, unint64_t a6)
{
  v95 = a1;
  v96 = a4;
  v100 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v101 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_100374FD8 != -1)
    {
LABEL_30:
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    *&v103 = Error.localizedDescription.getter();
    *(&v103 + 1) = v13;
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1001A76E8();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    os_log(_:dso:log:type:_:)("error signalStrengthChanged error  ---> %s", v84);
  }

  v90 = sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v93 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v19 = v95;
  v18 = v96;
  v17[2] = a3;
  v17[3] = v18;
  v17[4] = v19;
  *&v105 = sub_100204F40;
  *(&v105 + 1) = v17;
  *&v103 = _NSConcreteStackBlock;
  *(&v103 + 1) = 1107296256;
  *&v104 = sub_10020C96C;
  *(&v104 + 1) = &unk_10031EE28;
  v92 = _Block_copy(&v103);
  v91 = v19;
  v20 = a3;
  v89 = v18;

  v21 = v97;
  static DispatchQoS.unspecified.getter();
  *&v103 = _swiftEmptyArrayStorage;
  v22 = sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v23 = sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  v24 = sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
  v26 = v99;
  v25 = v100;
  v86 = v24;
  v87 = v23;
  v88 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v92;
  v27 = v93;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  v85 = *(v94 + 8);
  v85(v26, v25);
  v29 = *(v101 + 8);
  v101 += 8;
  v84 = v29;
  (v29)(v21, v98);
  v30 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
  swift_beginAccess();
  v92 = v20;
  v31 = *&v20[v30];
  v32 = *(v31 + 16);

  if (v32)
  {
    v33 = 0;
    v34 = v31 + 32;
    v93 = v32 - 1;
    v35 = _swiftEmptyArrayStorage;
    v94 = v31 + 32;
    do
    {
      v36 = (v34 + 224 * v33);
      a3 = v33;
      while (1)
      {
        if (a3 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v37 = v36[1];
        v103 = *v36;
        v104 = v37;
        v38 = v36[2];
        v39 = v36[3];
        v40 = v36[5];
        v107 = v36[4];
        v108 = v40;
        v105 = v38;
        v106 = v39;
        v41 = v36[6];
        v42 = v36[7];
        v43 = v36[9];
        v111 = v36[8];
        v112 = v43;
        v109 = v41;
        v110 = v42;
        v44 = v36[10];
        v45 = v36[11];
        v46 = v36[13];
        v115 = v36[12];
        v116 = v46;
        v113 = v44;
        v114 = v45;
        if (v105 == __PAIR128__(a6, a5) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++a3;
        v36 += 14;
        if (v32 == a3)
        {
          goto LABEL_19;
        }
      }

      sub_100203618(&v103, v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001F5504(0, v35[2] + 1, 1);
        v35 = v117;
      }

      v49 = v35[2];
      v48 = v35[3];
      if (v49 >= v48 >> 1)
      {
        sub_1001F5504((v48 > 1), v49 + 1, 1);
        v35 = v117;
      }

      v33 = a3 + 1;
      v35[2] = v49 + 1;
      v50 = &v35[28 * v49];
      v51 = v104;
      v50[2] = v103;
      v50[3] = v51;
      v52 = v105;
      v53 = v106;
      v54 = v108;
      v50[6] = v107;
      v50[7] = v54;
      v50[4] = v52;
      v50[5] = v53;
      v55 = v109;
      v56 = v110;
      v57 = v112;
      v50[10] = v111;
      v50[11] = v57;
      v50[8] = v55;
      v50[9] = v56;
      v58 = v113;
      v59 = v114;
      v60 = v116;
      v50[14] = v115;
      v50[15] = v60;
      v50[12] = v58;
      v50[13] = v59;
      v34 = v94;
    }

    while (v93 != a3);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

LABEL_19:

  if (!v35[2])
  {

    return;
  }

  v61 = *(v35 + 13);
  v113 = *(v35 + 12);
  v114 = v61;
  v62 = *(v35 + 15);
  v115 = *(v35 + 14);
  v116 = v62;
  v63 = *(v35 + 9);
  v109 = *(v35 + 8);
  v110 = v63;
  v64 = *(v35 + 11);
  v111 = *(v35 + 10);
  v112 = v64;
  v65 = *(v35 + 5);
  v105 = *(v35 + 4);
  v106 = v65;
  v66 = *(v35 + 7);
  v107 = *(v35 + 6);
  v108 = v66;
  v67 = *(v35 + 3);
  v103 = *(v35 + 2);
  v104 = v67;
  v68 = BYTE1(v107);
  sub_100203618(&v103, v102);

  if (v68 == 1)
  {

    sub_100203650(&v103);
  }

  else
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_100203650(&v103);
    if ((v69 & 1) == 0)
    {
      return;
    }
  }

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v70 = qword_1003824C0;
  v71 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("signalStrengthChanged 5G Data", 29, 2, &_mh_execute_header, v70, v71, _swiftEmptyArrayStorage);
  v72 = static OS_dispatch_queue.main.getter();
  v73 = swift_allocObject();
  v74 = v92;
  v75 = v95;
  v76 = v96;
  v73[2] = v92;
  v73[3] = v76;
  v73[4] = v75;
  v102[4] = sub_100204FA0;
  v102[5] = v73;
  v102[0] = _NSConcreteStackBlock;
  v102[1] = 1107296256;
  v102[2] = sub_10020C96C;
  v102[3] = &unk_10031EE78;
  v77 = _Block_copy(v102);
  v78 = v74;
  v79 = v89;
  v80 = v91;

  v81 = v97;
  static DispatchQoS.unspecified.getter();
  v102[0] = _swiftEmptyArrayStorage;
  v83 = v99;
  v82 = v100;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v77);

  v85(v83, v82);
  (v84)(v81, v98);
}

__n128 sub_1001F5168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1001F51A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F51EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001F52B0(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_1001F5340(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

char *sub_1001F53B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F5688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F53D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F577C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F53F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F5888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F5418(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F598C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001F5438(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F64DC(a1, a2, a3, *v3, &qword_100377270, &qword_1002F2450, type metadata accessor for FTMBandInfoDataModel);
  *v3 = result;
  return result;
}

void *sub_1001F547C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F64DC(a1, a2, a3, *v3, &qword_1003772A8, &unk_1002F2488, type metadata accessor for STransferMetrics);
  *v3 = result;
  return result;
}

void *sub_1001F54C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F64DC(a1, a2, a3, *v3, &qword_100377120, &qword_1002F22E0, type metadata accessor for Metric);
  *v3 = result;
  return result;
}

char *sub_1001F5504(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F5A8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001F5524(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F5BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F5544(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F5CE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001F5564(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F62F4(a1, a2, a3, *v3, &qword_100377280, &unk_1002F2460, &qword_100377288, &qword_1002F3B20);
  *v3 = result;
  return result;
}

void *sub_1001F55A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F5E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001F55C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F60A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F55E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F61D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001F5604(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F62F4(a1, a2, a3, *v3, &qword_100377160, &unk_1002F2310, &qword_100377168, &unk_1002F5C70);
  *v3 = result;
  return result;
}

void *sub_1001F5644(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001F64DC(a1, a2, a3, *v3, &qword_100377170, &qword_1002F2320, type metadata accessor for DashboardViewModelObject);
  *v3 = result;
  return result;
}

char *sub_1001F5688(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377290, &qword_1002F2470);
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

char *sub_1001F577C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001F5888(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377110, &qword_1002F22D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1001F598C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377118, &qword_1002F22D8);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1001F5A8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377128, &qword_1002F22E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F5BB4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1001A551C(&qword_100377130, &qword_1002F22F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001F5CE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377278, &qword_1002F2458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F5E0C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1001A551C(&qword_100377200, &qword_1002F23A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_100379B70, &qword_1002F2380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F5F54(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1001A551C(&qword_1003771E0, &qword_1002F2388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003771E8, &qword_1002F2390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F60A4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1001A551C(&unk_1003771C0, &qword_1002F2368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001F61D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_1003771A8, &qword_1002F2350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F62F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001A551C(a5, a6);
  v16 = *(sub_1001A551C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
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
  v21 = *(sub_1001A551C(a7, a8) - 8);
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

void *sub_1001F64DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001A551C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1001F66B8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1001F67B8(a1, a2, v4);
}

unint64_t sub_1001F6730(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1001F6870(a1, v2);
}

unint64_t sub_1001F6774(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1001F68DC(a1, v4);
}

unint64_t sub_1001F67B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1001F6870(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1001F68DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100201580(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1002015DC(v8);
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

double sub_1001F69A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1001F6774(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001F9BB0();
      v9 = v11;
    }

    sub_1002015DC(*(v9 + 48) + 40 * v7);
    sub_100201570((*(v9 + 56) + 32 * v7), a2);
    sub_1001F843C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1001F6A48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1001F66B8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001F9D54();
      v10 = v12;
    }

    sub_100201570((*(v10 + 56) + 32 * v8), a3);
    sub_1001F85E0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1001F6AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for STransferMetrics(0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1001A551C(&qword_100377208, &unk_1002F23B0);
  v38 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_100204E18(v25, v7, type metadata accessor for STransferMetrics);
      }

      else
      {
        sub_100204DB0(v25, v7, type metadata accessor for STransferMetrics);
      }

      v26 = static Hasher._hash(seed:_:)();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_100204E18(v7, *(v10 + 56) + v24 * v18, type metadata accessor for STransferMetrics);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1001F6E34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = type metadata accessor for Date();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1001A551C(&unk_1003770B0, &qword_1002F2260);
  v38 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
      }

      v26 = static Hasher._hash(seed:_:)();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      (*v16)((*(v9 + 56) + v24 * v18), v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1001F7180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001A551C(&unk_100377220, &unk_1002F23C8);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
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

void sub_1001F7428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001A551C(&unk_100377070, &qword_1002F2258);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_100201570((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_100201580(v23, &v37);
        sub_1001A773C(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_100201570(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1001F76E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_100201570(v24, v35);
      }

      else
      {
        sub_1001A773C(v24, v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_100201570(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1001F7998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001A551C(&qword_1003771B0, &qword_1002F2358);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
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

void sub_1001F7C38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001A551C(&qword_1003771A0, &qword_1002F2348);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1001F7EF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DashboardViewModelObject(0);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1001A551C(&qword_100377158, &qword_1002F2308);
  v41 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_100204E18(v28, v42, type metadata accessor for DashboardViewModelObject);
      }

      else
      {
        sub_100204DB0(v28, v42, type metadata accessor for DashboardViewModelObject);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_100204E18(v42, *(v9 + 56) + v27 * v17, type metadata accessor for DashboardViewModelObject);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

unint64_t sub_1001F8288(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = static Hasher._hash(seed:_:)();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F843C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_100201580(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_1002015DC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F85E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F8790(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1001F8940(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for DashboardViewModelObject(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F8B2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1001F6730(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for STransferMetrics(0);
      return sub_100204E80(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for STransferMetrics);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1001F95A0();
    goto LABEL_7;
  }

  sub_1001F6AEC(v13, a3 & 1);
  v20 = sub_1001F6730(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1001F9364(v10, a2, a1, v16);
}

uint64_t sub_1001F8C80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1001F6730(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1001F97D8();
      goto LABEL_7;
    }

    sub_1001F6E34(v13, a3 & 1);
    v24 = sub_1001F6730(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for Date();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1001F940C(v10, a2, a1, v16);
}

void sub_1001F8DE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001F66B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1001F7180(v16, a4 & 1);
      v11 = sub_1001F66B8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1001F9A40();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_1001F8F64(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1001F6774(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1001F9BB0();
      goto LABEL_7;
    }

    sub_1001F7428(v13, a3 & 1);
    v19 = sub_1001F6774(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100201580(a2, v21);
      return sub_1001F94B8(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1001A5654(v17);

  return sub_100201570(a1, v17);
}

void sub_1001F90B0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001F66B8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1001F9D54();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1001F76E0(v16, a4 & 1);
    v11 = sub_1001F66B8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1001A5654(v22);

    sub_100201570(a1, v22);
  }

  else
  {
    sub_1001F9534(v11, a2, a3, a1, v21);
  }
}

void sub_1001F9200(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001F66B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1001F7998(v16, a4 & 1);
      v11 = sub_1001F66B8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1001F9EF8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1001F9364(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for STransferMetrics(0);
  result = sub_100204E18(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for STransferMetrics);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1001F940C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Date();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}