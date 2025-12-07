void sub_100642088(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), unint64_t *a6, void *a7, uint64_t (*a8)(_TtC7remindd19RDXPCStorePerformer *, uint64_t), uint64_t (*a9)(id), uint64_t a10)
{
  v592 = a2;
  v18 = *(a3 + 16);
  v17 = *(a3 + 24);
  v588 = &v592;
  v19 = a5(a4, v587, a1);
  if (v11)
  {
    return;
  }

  v20 = v19;
  v586 = v18;
  v580 = a6;
  v581 = a1;
  v575 = a8;
  v577 = a3;
  v578 = v10;
  v579 = a7;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100945730);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v17, v24, v25, v26, v27, v28, v29, v30;
  v583 = v20;
  if (os_log_type_enabled(v22, v23))
  {
    v31 = swift_slowAlloc();
    v589[0] = swift_slowAlloc();
    *v31 = 136446978;
    *(v31 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v589);
    *(v31 + 12) = 2048;
    *(v31 + 14) = *(v583 + 16);
    v583, v32, v33, v34, v35, v36, v37, v38;
    *(v31 + 22) = 2082;
    sub_1000060C8(0, a6, a7);
    v39 = [swift_getObjCClassFromMetadata() description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_10000668C(v40, v42, v589);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v31 + 24) = v43;
    *(v31 + 32) = 2082;
    *(v31 + 34) = sub_10000668C(v586, v17, v589);
    _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v31, 0x2Au);
    swift_arrayDestroy();

    v20 = v583;
  }

  else
  {

    v20, v58, v59, v60, v61, v62, v63, v64;
  }

  v585 = *(v20 + 16);
  if (!v585)
  {
    v20, v51, v52, v53, v54, v55, v56, v57;
    return;
  }

  v65 = 0;
  v591 = _swiftEmptySetSingleton;
  v584 = v20 + 32;
  v66 = &unk_100939D60;
  v67 = &unk_1007959E0;
  do
  {
    if (v65 >= *(v20 + 16))
    {
      __break(1u);
LABEL_127:
      __break(1u);
      v20, v51, v52, v53, v54, v55, v56, v57;
      v568, v441, v442, v443, v444, v445, v446, v447;
      v563, v448, v449, v450, v451, v452, v453, v454;
      v570, v455, v456, v457, v458, v459, v460, v461;

      return;
    }

    v68 = v584 + 16 * v65;
    v69 = *(v68 + 8);
    v70 = *(v69 + 16);
    if (v70)
    {
      v599 = v65;
      v71 = *v68;

      v72 = 32;
      do
      {
        v73 = *(v69 + v72);
        sub_1000F5104(v66, &unk_1007959E0);
        v74 = v66;
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1007953F0;
        v76 = &selRef_reminderID;
        if (!v73)
        {
          v76 = &selRef_accountID;
        }

        *(v75 + 32) = [v71 *v76];
        sub_100392144(v75);
        v77 = v75;
        v66 = v74;
        v77, v78, v79, v80, v81, v82, v83, v84;
        ++v72;
        --v70;
      }

      while (v70);

      v69, v85, v86, v87, v88, v89, v90, v91;
      v20 = v583;
      v65 = v599;
    }

    ++v65;
  }

  while (v65 != v585);
  v92 = v579;
  if (v581 >> 62)
  {
    v93 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v93 = *((v581 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v93)
  {
    v97 = &_swiftEmptyArrayStorage;
LABEL_31:
    v98 = v591;
    sub_1005E2514(v591);
    v100 = v99;
    v98, v101, v102, v103, v104, v105, v106, v107;
    v108 = v577;
    v571 = sub_10065F214(v100, v577);
    v100, v116, v117, v118, v119, v120, v121, v122;
    v564 = v575(v97, v577);
    v97, v123, v124, v125, v126, v127, v128, v129;
    swift_beginAccess();
    v130 = 0;
    v131 = v580;
    while (1)
    {
      if (v130 >= *(v20 + 16))
      {
        goto LABEL_138;
      }

      v132 = v584 + 16 * v130;
      v133 = *(v132 + 8);
      v134 = *v132;
      v569 = v133;

      v135 = sub_1005E3810([v134 remObjectID], v131, v92);

      v143 = v108[6];
      v572 = v134;
      v567 = v130;
      if ((v143 & 0xC000000000000001) != 0)
      {
        v144 = v135;

        v145 = __CocoaDictionary.lookup(_:)();
        if (!v145)
        {

          v143, v212, v213, v214, v215, v216, v217, v218;
          v154 = v571;
LABEL_58:
          v569, v136, v137, v138, v139, v140, v141, v142;
          v233 = v135;
          v234 = Logger.logObject.getter();
          v235 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v234, v235))
          {
            v236 = swift_slowAlloc();
            v237 = swift_slowAlloc();
            v238 = swift_slowAlloc();
            v589[0] = v238;
            *v236 = 136446466;
            *(v236 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v589);
            *(v236 + 12) = 2114;
            *(v236 + 14) = v233;
            *v237 = v233;
            v239 = v233;
            _os_log_impl(&_mh_execute_header, v234, v235, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v236, 0x16u);
            sub_1000050A4(v237, &unk_100938E70, &unk_100797230);

            sub_10000607C(v238);
          }

          else
          {
          }

          goto LABEL_62;
        }

        v590 = v145;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v146 = v589[0];

        v143, v147, v148, v149, v150, v151, v152, v153;
        v154 = v571;
        if (!v146)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v154 = v571;
        if (!*(v143 + 16))
        {
          goto LABEL_58;
        }

        v155 = v135;

        v156 = sub_10002B924(v155);
        if ((v157 & 1) == 0)
        {

          v143, v226, v227, v228, v229, v230, v231, v232;
          goto LABEL_58;
        }

        v146 = *(*(v143 + 56) + 8 * v156);

        v143, v158, v159, v160, v161, v162, v163, v164;
        if (!v146)
        {
          goto LABEL_58;
        }
      }

      if (!*(v564 + 16) || (v172 = a9(v135), (v165 & 1) == 0))
      {
        v154, v165, v166, v167, v168, v169, v170, v171;
        v20, v476, v477, v478, v479, v480, v481, v482;
        v569, v483, v484, v485, v486, v487, v488, v489;
        v564, v490, v491, v492, v493, v494, v495, v496;
        v497 = v135;

        v498 = Logger.logObject.getter();
        v499 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v498, v499))
        {
          v500 = swift_slowAlloc();
          v590 = swift_slowAlloc();
          *v500 = 136446722;
          *(v500 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v590);
          *(v500 + 12) = 2082;
          v501 = *(v578 + 40);
          v593 = *(v578 + 24);
          v594[0] = v501;
          *(v594 + 14) = *(v578 + 54);
          sub_100009DAC(&v593, v589);
          v502 = sub_1000063E8();
          v504 = v503;
          sub_1005812D4(&v593);
          v505 = sub_10000668C(v502, v504, &v590);
          v504, v506, v507, v508, v509, v510, v511, v512;
          *(v500 + 14) = v505;
          *(v500 + 22) = 2080;
          v513 = [v497 description];
          v514 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v516 = v515;

          v517 = sub_10000668C(v514, v516, &v590);
          v516, v518, v519, v520, v521, v522, v523, v524;
          *(v500 + 24) = v517;
          _os_log_impl(&_mh_execute_header, v498, v499, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v500, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v497];
        swift_willThrow();

        return;
      }

      v173 = *(*(v564 + 56) + 8 * v172);
      v174 = v569;
      swift_bridgeObjectRetain_n();
      v175 = v135;
      v566 = v173;
      v176 = v578;

      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.default.getter();

      v559 = v175;
      if (os_log_type_enabled(v177, v178))
      {
        log = v177;
        LODWORD(v599) = v178;
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v590 = swift_slowAlloc();
        *v179 = 136446978;
        *(v179 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v590);
        *(v179 + 12) = 2082;
        v181 = *(v578 + 40);
        v597 = *(v578 + 24);
        v598[0] = v181;
        *(v598 + 14) = *(v578 + 54);
        sub_100009DAC(&v597, v589);
        v182 = sub_1000063E8();
        v184 = v183;
        sub_1005812D4(&v597);
        v185 = sub_10000668C(v182, v184, &v590);
        v184, v186, v187, v188, v189, v190, v191, v192;
        *(v179 + 14) = v185;
        *(v179 + 22) = 2114;
        *(v179 + 24) = v175;
        *v180 = v175;
        *(v179 + 32) = 2082;
        v193 = *(v569 + 16);
        if (v193)
        {
          v589[0] = &_swiftEmptyArrayStorage;
          v194 = v175;
          sub_100026EF4(0, v193, 0);
          v202 = v589[0];
          v203 = *(v589[0] + 16);
          v204 = 16 * v203;
          v205 = v569;
          v206 = 32;
          do
          {
            if (*(&v205->super.isa + v206))
            {
              v207 = 0x7265646E696D6572;
            }

            else
            {
              v207 = 0x49746E756F636361;
            }

            if (*(&v205->super.isa + v206))
            {
              v208 = 0xEA00000000004449;
            }

            else
            {
              v208 = 0xE900000000000044;
            }

            v589[0] = v202;
            v209 = *&v202->clientIdentity[8];
            v210 = v203 + 1;
            if (v203 >= v209 >> 1)
            {
              sub_100026EF4((v209 > 1), v203 + 1, 1);
              v205 = v569;
              v202 = v589[0];
            }

            *v202->clientIdentity = v210;
            v211 = v202 + v204;
            *(v211 + 4) = v207;
            *(v211 + 5) = v208;
            v204 += 16;
            ++v206;
            v203 = v210;
            --v193;
          }

          while (v193);
          v174 = v205;
          v205, v195, v196, v197, v198, v199, v200, v201;
          v20 = v583;
          v154 = v571;
        }

        else
        {
          v247 = v175;
          v569, v248, v249, v250, v251, v252, v253, v254;
          v202 = &_swiftEmptyArrayStorage;
        }

        v255 = Array.description.getter();
        v257 = v256;
        v202, v256, v258, v259, v260, v261, v262, v263;
        v174, v264, v265, v266, v267, v268, v269, v270;
        v271 = sub_10000668C(v255, v257, &v590);
        v257, v272, v273, v274, v275, v276, v277, v278;
        *(v179 + 34) = v271;
        _os_log_impl(&_mh_execute_header, log, v599, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v179, 0x2Au);
        sub_1000050A4(v180, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v176 = v578;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v279 = v174;
      v556 = *v174->clientIdentity;
      if (v556)
      {
        v280 = 0;
        v557 = &v174->clientIdentity[16];
        while (1)
        {
          if (v280 >= *v279->clientIdentity)
          {
            goto LABEL_139;
          }

          v560 = v280;
          v281 = v557[v280];
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v282 = swift_allocObject();
          *(v282 + 16) = xmmword_1007953F0;
          v561 = v281;
          v283 = &selRef_accountID;
          if (v281)
          {
            v283 = &selRef_reminderID;
          }

          *(v282 + 32) = [v572 *v283];
          v582 = v282 + 32;
          v599 = v282 & 0xFFFFFFFFFFFFFF8;
          loga = *((v282 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v562 = v282;
          if (loga)
          {
            break;
          }

          v292 = _swiftEmptyDictionarySingleton;
LABEL_116:
          v562, v284, v285, v286, v287, v288, v289, v290;
          sub_10045BDE8(v292);
          v347 = v346;
          v292, v348, v349, v350, v351, v352, v353, v354;
          if (v561)
          {
            v355 = [v572 reminderID];
            sub_100685AD4(1, v355, v347, a10, off_1008D41D0, &qword_100939EE0);
            v176 = v578;
            v357 = &selRef_setReminder_;
          }

          else
          {
            v355 = [v572 accountID];
            sub_100685AD4(0, v355, v347, a10, off_1008D4120, &qword_1009399F0);
            v176 = v578;
            v357 = &selRef_setAccount_;
          }

          v358 = v356;

          v347, v359, v360, v361, v362, v363, v364, v365;
          [v566 *v357];

          v280 = v560 + 1;
          v279 = v569;
          v154 = v571;
          if (v560 + 1 == v556)
          {
            goto LABEL_120;
          }
        }

        v291 = 0;
        v576 = v282 & 0xC000000000000001;
        v292 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v576)
          {
            v295 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v291 >= *(v599 + 16))
            {
              goto LABEL_134;
            }

            v295 = *(v582 + 8 * v291);
          }

          v296 = *(v154 + 16);
          v304 = v295;
          if (!v296 || (v305 = sub_100393C74(), (v297 & 1) == 0))
          {
            v569, v297, v298, v299, v300, v301, v302, v303;
            v562, v366, v367, v368, v369, v370, v371, v372;
            v292, v373, v374, v375, v376, v377, v378, v379;
            v564, v380, v381, v382, v383, v384, v385, v386;
            v154, v387, v388, v389, v390, v391, v392, v393;
            v20, v394, v395, v396, v397, v398, v399, v400;

            v401 = v304;
            v402 = Logger.logObject.getter();
            v403 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v402, v403))
            {
              v404 = swift_slowAlloc();
              v590 = swift_slowAlloc();
              *v404 = 136446978;
              *(v404 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v590);
              *(v404 + 12) = 2082;
              v405 = *(v578 + 40);
              v595 = *(v578 + 24);
              v596[0] = v405;
              *(v596 + 14) = *(v578 + 54);
              sub_100009DAC(&v595, v589);
              v406 = sub_1000063E8();
              v408 = v407;
              sub_1005812D4(&v595);
              v409 = sub_10000668C(v406, v408, &v590);
              v408, v410, v411, v412, v413, v414, v415, v416;
              *(v404 + 14) = v409;
              *(v404 + 22) = 2080;
              v417 = [v401 description];
              v418 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v420 = v419;

              v421 = sub_10000668C(v418, v420, &v590);
              v420, v422, v423, v424, v425, v426, v427, v428;
              *(v404 + 24) = v421;
              *(v404 + 32) = 2080;
              v429 = [v401 description];
              v430 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v432 = v431;

              v433 = sub_10000668C(v430, v432, &v590);
              v432, v434, v435, v436, v437, v438, v439, v440;
              *(v404 + 34) = v433;
              _os_log_impl(&_mh_execute_header, v402, v403, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v404, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v401];
            swift_willThrow();

            return;
          }

          v306 = *(*(v154 + 56) + 8 * v305);
          if ((v292 & 0xC000000000000001) != 0)
          {
            if (v292 < 0)
            {
              v307 = v292;
            }

            else
            {
              v307 = v292 & 0xFFFFFFFFFFFFFF8;
            }

            v308 = v306;
            v309 = __CocoaDictionary.count.getter();
            if (__OFADD__(v309, 1))
            {
              goto LABEL_136;
            }

            v310 = sub_10021D008(v307, v309 + 1);
          }

          else
          {
            v311 = v306;
            v310 = v292;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v589[0] = v310;
          v313 = v304;
          v315 = sub_10002B924(v304);
          v316 = *(v310 + 16);
          v317 = (v314 & 1) == 0;
          v318 = v316 + v317;
          if (__OFADD__(v316, v317))
          {
            goto LABEL_135;
          }

          v319 = v314;
          if (*(v310 + 24) >= v318)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v292 = v310;
              if ((v314 & 1) == 0)
              {
                goto LABEL_94;
              }

              goto LABEL_73;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v325 = static _DictionaryStorage.copy(original:)();
            v292 = v325;
            if (*(v310 + 16))
            {
              v333 = (v325 + 64);
              __src = (v310 + 64);
              v334 = ((1 << *(v292 + 32)) + 63) >> 6;
              if (v292 != v310 || v333 >= &__src[8 * v334])
              {
                memmove(v333, __src, 8 * v334);
              }

              v335 = 0;
              *(v292 + 16) = *(v310 + 16);
              v336 = 1 << *(v310 + 32);
              if (v336 < 64)
              {
                v337 = ~(-1 << v336);
              }

              else
              {
                v337 = -1;
              }

              v555 = v337 & *(v310 + 64);
              for (i = (v336 + 63) >> 6; v555; v345 = v343)
              {
                v338 = __clz(__rbit64(v555));
                v555 &= v555 - 1;
LABEL_111:
                v341 = v338 | (v335 << 6);
                v342 = *(*(v310 + 48) + 8 * v341);
                v343 = *(*(v310 + 56) + 8 * v341);
                *(*(v292 + 48) + 8 * v341) = v342;
                *(*(v292 + 56) + 8 * v341) = v343;
                v344 = v342;
              }

              v339 = v335;
              while (1)
              {
                v335 = v339 + 1;
                if (__OFADD__(v339, 1))
                {
                  goto LABEL_140;
                }

                if (v335 >= i)
                {
                  break;
                }

                v340 = *&__src[8 * v335];
                ++v339;
                if (v340)
                {
                  v338 = __clz(__rbit64(v340));
                  v555 = (v340 - 1) & v340;
                  goto LABEL_111;
                }
              }
            }

            v310, v326, v327, v328, v329, v330, v331, v332;
            v154 = v571;
            if (v319)
            {
              goto LABEL_73;
            }

LABEL_94:
            *(v292 + 8 * (v315 >> 6) + 64) |= 1 << v315;
            *(*(v292 + 48) + 8 * v315) = v313;
            *(*(v292 + 56) + 8 * v315) = v306;

            v322 = *(v292 + 16);
            v323 = __OFADD__(v322, 1);
            v324 = v322 + 1;
            if (v323)
            {
              goto LABEL_137;
            }

            *(v292 + 16) = v324;
          }

          else
          {
            sub_10036CABC(v318, isUniquelyReferenced_nonNull_native);
            v292 = v589[0];
            v320 = sub_10002B924(v313);
            if ((v319 & 1) != (v321 & 1))
            {
              goto LABEL_141;
            }

            v315 = v320;
            if ((v319 & 1) == 0)
            {
              goto LABEL_94;
            }

LABEL_73:

            v293 = *(v292 + 56);
            v294 = *(v293 + 8 * v315);
            *(v293 + 8 * v315) = v306;
          }

          v20 = v583;
          if (++v291 == loga)
          {
            goto LABEL_116;
          }

          continue;
        }
      }

LABEL_120:
      v279, v219, v220, v221, v222, v223, v224, v225;
      v92 = v579;
      if (*(v176 + 104))
      {
        [v566 updateChangeCount];
      }

LABEL_62:
      v131 = v580;
      v108 = v577;
      v130 = v567 + 1;
      if (v567 + 1 == v585)
      {
        v20, v240, v241, v242, v243, v244, v245, v246;
        v564, v462, v463, v464, v465, v466, v467, v468;
        v154, v469, v470, v471, v472, v473, v474, v475;
        return;
      }
    }
  }

  v589[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v93 & 0x8000000000000000) == 0)
  {
    v94 = 0;
    v67 = (v581 & 0xC000000000000001);
    do
    {
      v20 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_127;
      }

      if (v67)
      {
        v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v94 >= *((v581 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          v20, v525, v526, v527, v528, v529, v530, v531;
          v568, v532, v533, v534, v535, v536, v537, v538;
          v563, v539, v540, v541, v542, v543, v544, v545;
          v570, v546, v547, v548, v549, v550, v551, v552;

          v93, v109, v110, v111, v112, v113, v114, v115;
          return;
        }

        v95 = *(v581 + 8 * v94 + 32);
      }

      v96 = v95;
      sub_1005E3810([v95 remObjectID], v580, v579);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v66 = *(v589[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v94;
    }

    while (v20 != v93);
    v97 = v589[0];
    v20 = v583;
    goto LABEL_31;
  }

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
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1006437C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v564 = a2;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v560 = &v564;
  v9 = sub_1003DFA9C(sub_1006AF410, v559, a1);
  if (v4)
  {
    return;
  }

  v10 = v9;
  v551 = a1;
  v11 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945730);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  v7, v15, v16, v17, v18, v19, v20, v21;
  v549 = a3;
  v550 = v11;
  if (os_log_type_enabled(v13, v14))
  {
    v558 = v8;
    v22 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v561[0] = v11;
    *v22 = 136446978;
    *(v22 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v561);
    *(v22 + 12) = 2048;
    *(v22 + 14) = *v10->clientIdentity;
    v10, v23, v24, v25, v26, v27, v28, v29;
    *(v22 + 22) = 2082;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v30 = [swift_getObjCClassFromMetadata() description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = sub_10000668C(v31, v33, v561);
    v33, v35, v36, v37, v38, v39, v40, v41;
    *(v22 + 24) = v34;
    *(v22 + 32) = 2082;
    *(v22 + 34) = sub_10000668C(v558, v7, v561);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v10, v49, v50, v51, v52, v53, v54, v55;
  }

  v557 = *v10->clientIdentity;
  if (!v557)
  {
    v10, v42, v43, v44, v45, v46, v47, v48;
    return;
  }

  v56 = 0;
  v563 = _swiftEmptySetSingleton;
  v556 = &v10->clientIdentity[16];
  v57 = &unk_100939D60;
  v58 = &unk_1007959E0;
  v554 = v10;
  do
  {
    if (v56 >= *v10->clientIdentity)
    {
      __break(1u);
LABEL_126:
      __break(1u);
      v554, v42, v43, v44, v45, v46, v47, v48;
      v543, v414, v415, v416, v417, v418, v419, v420;
      v539, v421, v422, v423, v424, v425, v426, v427;
      v58, v428, v429, v430, v431, v432, v433, v434;

      return;
    }

    v59 = &v556[16 * v56];
    v60 = *(v59 + 1);
    v11 = *(v60 + 16);
    if (v11)
    {
      v571 = v56;
      v61 = *v59;

      v62 = 32;
      do
      {
        v63 = *(v60 + v62);
        sub_1000F5104(v57, &unk_1007959E0);
        v64 = v57;
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_1007953F0;
        v66 = &selRef_reminderID;
        if (!v63)
        {
          v66 = &selRef_accountID;
        }

        *(v65 + 32) = [v61 *v66];
        sub_100392144(v65);
        v67 = v65;
        v57 = v64;
        v67, v68, v69, v70, v71, v72, v73, v74;
        ++v62;
        --v11;
      }

      while (v11);

      v60, v75, v76, v77, v78, v79, v80, v81;
      v10 = v554;
      v56 = v571;
    }

    ++v56;
  }

  while (v56 != v557);
  if (v551 >> 62)
  {
    v82 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v82 = *((v551 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v82)
  {
    v87 = &_swiftEmptyArrayStorage;
LABEL_31:
    v88 = v563;
    sub_1005E2514(v563);
    v90 = v89;
    v88, v91, v92, v93, v94, v95, v96, v97;
    v98 = v549;
    v99 = sub_10065F214(v90, v549);
    v90, v100, v101, v102, v103, v104, v105, v106;
    v107 = 0;
    v540 = sub_100665DAC(v87, v549);
    v87, v108, v109, v110, v111, v112, v113, v114;
    swift_beginAccess();
    v115 = 0;
    v545 = v99;
    while (1)
    {
      if (v115 >= *v554->clientIdentity)
      {
        goto LABEL_137;
      }

      v116 = &v556[16 * v115];
      v117 = *(v116 + 1);
      v118 = *v116;
      v544 = v117;

      v119 = sub_1005E3810([v118 remObjectID], &qword_100940C50, off_1008D41C8);
      v541 = v115;

      v127 = v98[6];
      v542 = v118;
      if ((v127 & 0xC000000000000001) != 0)
      {
        v128 = v119;

        v129 = __CocoaDictionary.lookup(_:)();
        if (!v129)
        {
          goto LABEL_56;
        }

        v562 = v129;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v130 = v561[0];
      }

      else
      {
        if (!*(v127 + 16))
        {
          goto LABEL_57;
        }

        v128 = v119;

        v131 = sub_10002B924(v128);
        if ((v132 & 1) == 0)
        {
LABEL_56:

          v127, v187, v188, v189, v190, v191, v192, v193;
LABEL_57:
          v544, v120, v121, v122, v123, v124, v125, v126;
          v194 = v119;
          v195 = Logger.logObject.getter();
          v196 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v195, v196))
          {
            v197 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            v561[0] = v199;
            *v197 = 136446466;
            *(v197 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v561);
            *(v197 + 12) = 2114;
            *(v197 + 14) = v194;
            *v198 = v194;
            v200 = v194;
            _os_log_impl(&_mh_execute_header, v195, v196, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v197, 0x16u);
            sub_1000050A4(v198, &unk_100938E70, &unk_100797230);

            sub_10000607C(v199);
          }

          else
          {
          }

          goto LABEL_61;
        }

        v130 = *(*(v127 + 56) + 8 * v131);
      }

      v127, v133, v134, v135, v136, v137, v138, v139;
      if (!v130)
      {
        goto LABEL_57;
      }

      v147 = v540;
      if (!*(v540 + 16) || (v148 = sub_100393C74(), v147 = v540, (v140 & 1) == 0))
      {
        v99, v140, v141, v142, v143, v144, v145, v146;
        v554, v450, v451, v452, v453, v454, v455, v456;
        v544, v457, v458, v459, v460, v461, v462, v463;
        v147, v464, v465, v466, v467, v468, v469, v470;
        v471 = v119;

        v472 = Logger.logObject.getter();
        v473 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v472, v473))
        {
          v474 = swift_slowAlloc();
          v562 = swift_slowAlloc();
          *v474 = 136446722;
          *(v474 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v562);
          *(v474 + 12) = 2082;
          v475 = *(v550 + 40);
          v565 = *(v550 + 24);
          v566[0] = v475;
          *(v566 + 14) = *(v550 + 54);
          sub_100009DAC(&v565, v561);
          v476 = sub_1000063E8();
          v478 = v477;
          sub_1005812D4(&v565);
          v479 = sub_10000668C(v476, v478, &v562);
          v478, v480, v481, v482, v483, v484, v485, v486;
          *(v474 + 14) = v479;
          *(v474 + 22) = 2080;
          v487 = [v471 description];
          v488 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v490 = v489;

          v491 = sub_10000668C(v488, v490, &v562);
          v490, v492, v493, v494, v495, v496, v497, v498;
          *(v474 + 24) = v491;
          _os_log_impl(&_mh_execute_header, v472, v473, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v474, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v471];
        swift_willThrow();

        return;
      }

      v149 = *(*(v540 + 56) + 8 * v148);
      v150 = v544;
      swift_bridgeObjectRetain_n();
      v151 = v119;
      v538 = v149;
      v152 = v550;

      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.default.getter();

      v533 = v151;
      if (os_log_type_enabled(v153, v154))
      {
        v552 = v154;
        v571 = v153;
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v562 = swift_slowAlloc();
        *v155 = 136446978;
        *(v155 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v562);
        *(v155 + 12) = 2082;
        v157 = *(v550 + 40);
        v569 = *(v550 + 24);
        v570[0] = v157;
        *(v570 + 14) = *(v550 + 54);
        sub_100009DAC(&v569, v561);
        v158 = sub_1000063E8();
        v160 = v159;
        sub_1005812D4(&v569);
        v161 = sub_10000668C(v158, v160, &v562);
        v160, v162, v163, v164, v165, v166, v167, v168;
        *(v155 + 14) = v161;
        *(v155 + 22) = 2114;
        *(v155 + 24) = v151;
        v546 = v156;
        *v156 = v151;
        *(v155 + 32) = 2082;
        v169 = *v544->clientIdentity;
        if (v169)
        {
          v561[0] = &_swiftEmptyArrayStorage;
          v170 = v151;
          sub_100026EF4(0, v169, 0);
          v178 = v561[0];
          v179 = *(v561[0] + 16);
          v180 = 16 * v179;
          v181 = 32;
          do
          {
            if (*(&v150->super.isa + v181))
            {
              v182 = 0x7265646E696D6572;
            }

            else
            {
              v182 = 0x49746E756F636361;
            }

            if (*(&v150->super.isa + v181))
            {
              v183 = 0xEA00000000004449;
            }

            else
            {
              v183 = 0xE900000000000044;
            }

            v561[0] = v178;
            v184 = *&v178->clientIdentity[8];
            v185 = v179 + 1;
            if (v179 >= v184 >> 1)
            {
              sub_100026EF4((v184 > 1), v179 + 1, 1);
              v150 = v544;
              v178 = v561[0];
            }

            *v178->clientIdentity = v185;
            v186 = v178 + v180;
            *(v186 + 4) = v182;
            *(v186 + 5) = v183;
            v180 += 16;
            ++v181;
            v179 = v185;
            --v169;
          }

          while (v169);
          v150, v171, v172, v173, v174, v175, v176, v177;
          v152 = v550;
          v107 = 0;
          v99 = v545;
        }

        else
        {
          v215 = v151;
          v544, v216, v217, v218, v219, v220, v221, v222;
          v178 = &_swiftEmptyArrayStorage;
        }

        v223 = Array.description.getter();
        v225 = v224;
        v178, v224, v226, v227, v228, v229, v230, v231;
        v150, v232, v233, v234, v235, v236, v237, v238;
        v239 = sub_10000668C(v223, v225, &v562);
        v225, v240, v241, v242, v243, v244, v245, v246;
        *(v155 + 34) = v239;
        v247 = v571;
        _os_log_impl(&_mh_execute_header, v571, v552, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v155, 0x2Au);
        sub_1000050A4(v546, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v248 = v542;
      v530 = *v150->clientIdentity;
      if (v530)
      {
        v249 = 0;
        v531 = &v150->clientIdentity[16];
        while (v249 < *v150->clientIdentity)
        {
          v534 = v249;
          v250 = v531[v249];
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v251 = swift_allocObject();
          *(v251 + 16) = xmmword_1007953F0;
          v535 = v250;
          v252 = &selRef_accountID;
          if (v250)
          {
            v252 = &selRef_reminderID;
          }

          v253 = v251;
          *(v251 + 32) = [v248 *v252];
          v553 = v253 + 32;
          v555 = v253 & 0xFFFFFFFFFFFFFF8;
          v547 = *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v536 = v253;
          if (v547)
          {
            v261 = 0;
            v548 = v253 & 0xC000000000000001;
            v262 = _swiftEmptyDictionarySingleton;
            while (1)
            {
              if (v548)
              {
                v266 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v261 >= *(v555 + 16))
                {
                  goto LABEL_133;
                }

                v266 = *(v553 + 8 * v261);
              }

              v267 = *(v99 + 16);
              v275 = v266;
              if (!v267 || (v276 = sub_100393C74(), (v268 & 1) == 0))
              {
                v544, v268, v269, v270, v271, v272, v273, v274;
                v536, v338, v339, v340, v341, v342, v343, v344;
                v262, v345, v346, v347, v348, v349, v350, v351;
                v540, v352, v353, v354, v355, v356, v357, v358;
                v99, v359, v360, v361, v362, v363, v364, v365;
                v554, v366, v367, v368, v369, v370, v371, v372;

                v373 = v275;
                v374 = Logger.logObject.getter();
                v375 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v374, v375))
                {
                  v376 = v152;
                  v377 = swift_slowAlloc();
                  v562 = swift_slowAlloc();
                  *v377 = 136446978;
                  *(v377 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v562);
                  *(v377 + 12) = 2082;
                  v378 = *(v376 + 40);
                  v567 = *(v376 + 24);
                  v568[0] = v378;
                  *(v568 + 14) = *(v376 + 54);
                  sub_100009DAC(&v567, v561);
                  v379 = sub_1000063E8();
                  v381 = v380;
                  sub_1005812D4(&v567);
                  v382 = sub_10000668C(v379, v381, &v562);
                  v381, v383, v384, v385, v386, v387, v388, v389;
                  *(v377 + 14) = v382;
                  *(v377 + 22) = 2080;
                  v390 = [v373 description];
                  v391 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v393 = v392;

                  v394 = sub_10000668C(v391, v393, &v562);
                  v393, v395, v396, v397, v398, v399, v400, v401;
                  *(v377 + 24) = v394;
                  *(v377 + 32) = 2080;
                  v402 = [v373 description];
                  v403 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v405 = v404;

                  v406 = sub_10000668C(v403, v405, &v562);
                  v405, v407, v408, v409, v410, v411, v412, v413;
                  *(v377 + 34) = v406;
                  _os_log_impl(&_mh_execute_header, v374, v375, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v377, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v373];
                swift_willThrow();

                return;
              }

              v277 = *(*(v99 + 56) + 8 * v276);
              v571 = v277;
              v278 = v107;
              if ((v262 & 0xC000000000000001) != 0)
              {
                if (v262 < 0)
                {
                  v279 = v262;
                }

                else
                {
                  v279 = v262 & 0xFFFFFFFFFFFFFF8;
                }

                v280 = v277;
                v281 = __CocoaDictionary.count.getter();
                if (__OFADD__(v281, 1))
                {
                  goto LABEL_135;
                }

                v282 = sub_10021D008(v279, v281 + 1);
              }

              else
              {
                v283 = v277;
                v282 = v262;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v561[0] = v282;
              v286 = sub_10002B924(v275);
              v287 = *(v282 + 16);
              v288 = (v285 & 1) == 0;
              v289 = v287 + v288;
              if (__OFADD__(v287, v288))
              {
                goto LABEL_134;
              }

              v290 = v285;
              if (*(v282 + 24) >= v289)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v262 = v282;
                }

                else
                {
                  sub_1000F5104(&qword_10093D598, &unk_10079B210);
                  v297 = static _DictionaryStorage.copy(original:)();
                  v262 = v297;
                  if (*(v282 + 16))
                  {
                    v305 = (v297 + 64);
                    __src = (v282 + 64);
                    v306 = ((1 << *(v262 + 32)) + 63) >> 6;
                    if (v262 != v282 || v305 >= &__src[8 * v306])
                    {
                      memmove(v305, __src, 8 * v306);
                    }

                    v307 = 0;
                    *(v262 + 16) = *(v282 + 16);
                    v308 = 1 << *(v282 + 32);
                    if (v308 < 64)
                    {
                      v309 = ~(-1 << v308);
                    }

                    else
                    {
                      v309 = -1;
                    }

                    v529 = v309 & *(v282 + 64);
                    for (i = (v308 + 63) >> 6; v529; v317 = v315)
                    {
                      v310 = __clz(__rbit64(v529));
                      v529 &= v529 - 1;
LABEL_111:
                      v313 = v310 | (v307 << 6);
                      v314 = *(*(v282 + 48) + 8 * v313);
                      v315 = *(*(v282 + 56) + 8 * v313);
                      *(*(v262 + 48) + 8 * v313) = v314;
                      *(*(v262 + 56) + 8 * v313) = v315;
                      v316 = v314;
                    }

                    v311 = v307;
                    while (1)
                    {
                      v307 = v311 + 1;
                      if (__OFADD__(v311, 1))
                      {
                        goto LABEL_139;
                      }

                      if (v307 >= i)
                      {
                        break;
                      }

                      v312 = *&__src[8 * v307];
                      ++v311;
                      if (v312)
                      {
                        v310 = __clz(__rbit64(v312));
                        v529 = (v312 - 1) & v312;
                        goto LABEL_111;
                      }
                    }
                  }

                  v282, v298, v299, v300, v301, v302, v303, v304;
                }
              }

              else
              {
                sub_10036CABC(v289, isUniquelyReferenced_nonNull_native);
                v262 = v561[0];
                v291 = sub_10002B924(v275);
                if ((v290 & 1) != (v292 & 1))
                {
                  goto LABEL_140;
                }

                v286 = v291;
              }

              v99 = v545;
              v107 = v278;
              if (v290)
              {

                v263 = *(v262 + 56);
                v264 = *(v263 + 8 * v286);
                v265 = v571;
                *(v263 + 8 * v286) = v571;
              }

              else
              {
                *(v262 + 8 * (v286 >> 6) + 64) |= 1 << v286;
                *(*(v262 + 48) + 8 * v286) = v275;
                v293 = v571;
                *(*(v262 + 56) + 8 * v286) = v571;

                v294 = *(v262 + 16);
                v295 = __OFADD__(v294, 1);
                v296 = v294 + 1;
                if (v295)
                {
                  goto LABEL_136;
                }

                *(v262 + 16) = v296;
              }

              v152 = v550;
              if (++v261 == v547)
              {
                goto LABEL_115;
              }
            }
          }

          v262 = _swiftEmptyDictionarySingleton;
LABEL_115:
          v536, v254, v255, v256, v257, v258, v259, v260;
          sub_10045BDE8(v262);
          v319 = v318;
          v262, v320, v321, v322, v323, v324, v325, v326;
          v248 = v542;
          if (v535)
          {
            v327 = [v542 reminderID];
            sub_100685AD4(1, v327, v319, &type metadata for REMRecurrenceRuleCDIngestor.RelationshipKey, off_1008D41D0, &qword_100939EE0);
            v107 = 0;
            v329 = &selRef_setReminder_;
          }

          else
          {
            v327 = [v542 accountID];
            sub_100685AD4(0, v327, v319, &type metadata for REMRecurrenceRuleCDIngestor.RelationshipKey, off_1008D4120, &qword_1009399F0);
            v107 = 0;
            v329 = &selRef_setAccount_;
          }

          v330 = v328;

          v319, v331, v332, v333, v334, v335, v336, v337;
          [v538 *v329];

          v249 = v534 + 1;
          v150 = v544;
          if (v534 + 1 == v530)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_138;
      }

LABEL_119:
      v150, v208, v209, v210, v211, v212, v213, v214;
      if (v152[104])
      {
        [v538 updateChangeCount];
      }

LABEL_61:
      v98 = v549;
      v115 = v541 + 1;
      if ((v541 + 1) == v557)
      {
        v554, v201, v202, v203, v204, v205, v206, v207;
        v540, v435, v436, v437, v438, v439, v440, v441;
        v449 = v99;
        goto LABEL_32;
      }
    }
  }

  v561[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v82 & 0x8000000000000000) == 0)
  {
    v83 = 0;
    v571 = (v551 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v84 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_126;
      }

      v11 = 0;
      if ((v551 & 0xC000000000000001) != 0)
      {
        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v83 >= v571[2].isa)
        {
          __break(1u);

          v554, v499, v500, v501, v502, v503, v504, v505;
          v543, v506, v507, v508, v509, v510, v511, v512;

          v539, v513, v514, v515, v516, v517, v518, v519;
          v58, v520, v521, v522, v523, v524, v525, v526;

          v449 = v82;
LABEL_32:
          v449, v442, v443, v444, v445, v446, v447, v448;
          return;
        }

        v85 = *(v551 + 8 * v83 + 32);
      }

      v86 = v85;
      v58 = sub_1005E3810([v85 remObjectID], &qword_100940C50, off_1008D41C8);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v83 = (v83 + 1);
      if (v84 == v82)
      {
        v87 = v561[0];
        goto LABEL_31;
      }
    }
  }

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
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100644EAC(unint64_t a1, void **a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v587 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v563 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v602 = a2;
  v11 = a3[2];
  v12 = a3[3];
  v597[2] = &v602;
  v598 = v3;
  v13 = v609;
  v14 = sub_1003DFDAC(sub_1006ABF98, v597, a1);
  if (v13)
  {
    return;
  }

  v584 = a3;
  v595 = v11;
  *&v596 = v12;
  v15 = v14;
  v609 = a2;
  v588 = a1;
  v585 = v10;
  v581 = v7;
  v16 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v591 = 0;
  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_100945730);
  v19 = v15;

  v20 = v596;

  v583 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v20, v23, v24, v25, v26, v27, v28, v29;
  v30 = os_log_type_enabled(&v21->super, v22);
  v586 = v16;
  v590 = v19;
  v31 = v595;
  v582 = "mutateRelationshipOrdering";
  if (v30)
  {
    v32 = swift_slowAlloc();
    v594 = swift_slowAlloc();
    v599[0] = v594;
    *v32 = 136446978;
    *(v32 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v599);
    *(v32 + 12) = 2048;
    *(v32 + 14) = *v590->clientIdentity;
    v590, v33, v34, v35, v36, v37, v38, v39;
    *(v32 + 22) = 2082;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    v40 = [swift_getObjCClassFromMetadata() description];
    v41 = v22;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    p_super = &v21->super;
    v45 = v44;

    v22 = sub_10000668C(v42, v45, v599);
    v45, v46, v47, v48, v49, v50, v51, v52;
    *(v32 + 24) = v22;
    *(v32 + 32) = 2082;
    *(v32 + 34) = sub_10000668C(v31, v20, v599);
    _os_log_impl(&_mh_execute_header, p_super, v41, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v32, 0x2Au);
    v21 = v594;
    swift_arrayDestroy();

    v19 = v590;
  }

  else
  {

    v19, v60, v61, v62, v63, v64, v65, v66;
  }

  v67 = v609;
  v593 = *v19->clientIdentity;
  if (!v593)
  {
    v138 = v19;
    goto LABEL_34;
  }

  v68 = 0;
  v601 = _swiftEmptySetSingleton;
  v592 = &v19->clientIdentity[16];
  v589 = v609 + 3;
  v69 = &unk_100939D60;
  v70 = &unk_1007959E0;
  v609 += 2;
  v596 = xmmword_1007953F0;
  v71 = (v67 + 3);
  do
  {
    if (v68 >= *v19->clientIdentity)
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      v71, v53, v54, v55, v56, v57, v58, v59;
      v19, v456, v457, v458, v459, v460, v461, v462;
      v579, v463, v464, v465, v466, v467, v468, v469;
      v21, v470, v471, v472, v473, v474, v475, v476;
      v477 = v70;

      v478 = Logger.logObject.getter();
      v479 = v22;
      v480 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v478, v480))
      {
        v481 = swift_slowAlloc();
        v600[0] = swift_slowAlloc();
        *v481 = 136446722;
        *(v481 + 4) = sub_10000668C(0xD000000000000016, (v582 | 0x8000000000000000), v600);
        *(v481 + 12) = 2082;
        v482 = *(v479 + 40);
        v603 = *(v479 + 24);
        v604[0] = v482;
        *(v604 + 14) = *(v479 + 54);
        sub_100009DAC(&v603, v599);
        v483 = sub_1000063E8();
        v485 = v484;
        sub_1005812D4(&v603);
        v486 = sub_10000668C(v483, v485, v600);
        v485, v487, v488, v489, v490, v491, v492, v493;
        *(v481 + 14) = v486;
        *(v481 + 22) = 2080;
        v494 = [v477 description];
        v495 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v497 = v496;

        v498 = sub_10000668C(v495, v497, v600);
        v497, v499, v500, v501, v502, v503, v504, v505;
        *(v481 + 24) = v498;
        _os_log_impl(&_mh_execute_header, v478, v480, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v481, 0x20u);
        swift_arrayDestroy();
      }

      v506 = v574;
      [objc_opt_self() noSuchObjectErrorWithObjectID:v477];
      swift_willThrow();

      return;
    }

    v72 = &v592[16 * v68];
    v22 = *(v72 + 1);
    v73 = *(v22 + 16);
    if (v73)
    {
      v595 = v68;
      v594 = *v72;

      v74 = 32;
      do
      {
        v75 = *(v22 + v74);
        sub_1000F5104(v69, &unk_1007959E0);
        v76 = swift_allocObject();
        v77 = v69;
        v78 = v76;
        *(v76 + 16) = v596;
        v79 = v609;
        if (v75)
        {
          v79 = v71;
        }

        v80 = *v79;
        *(v76 + 32) = v80;
        v81 = v80;
        v21 = &v601;
        sub_100392144(v78);
        v82 = v78;
        v69 = v77;
        v82, v83, v84, v85, v86, v87, v88, v89;
        ++v74;
        --v73;
      }

      while (v73);

      v22, v90, v91, v92, v93, v94, v95, v96;
      v19 = v590;
      v68 = v595;
    }

    ++v68;
  }

  while (v68 != v593);
  v97 = v587;
  if (v588 >> 62)
  {
    v98 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v98 = *((v588 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = v591;
  v100 = &_swiftEmptyArrayStorage;
  if (v98)
  {
    v599[0] = &_swiftEmptyArrayStorage;
    v21 = v599;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v98 < 0)
    {
      __break(1u);
LABEL_139:
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
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v22 = 0;
    v70 = (v588 & 0xC000000000000001);
    v595 = (v588 & 0xFFFFFFFFFFFFFF8);
    do
    {
      v19 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_130;
      }

      v101 = v591;
      if (v70)
      {
        v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= v595[2])
        {
          __break(1u);
LABEL_135:
          v19, v53, v54, v55, v56, v57, v58, v59;
          v579, v507, v508, v509, v510, v511, v512, v513;
          v578, v514, v515, v516, v517, v518, v519, v520;
          v71, v521, v522, v523, v524, v525, v526, v527;

          return;
        }

        v102 = *(v588 + 8 * v22 + 32);
      }

      v103 = v102;
      v104 = sub_1005E3810([v102 remObjectID], &qword_100942E50, off_1008D41E0);
      v591 = v101;
      if (v101)
      {

        v590, v114, v115, v116, v117, v118, v119, v120;
        v601, v121, v122, v123, v124, v125, v126, v127;

        return;
      }

      v71 = v104;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v100 = *(v599[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v599;
      specialized ContiguousArray._endMutation()();
      ++v22;
    }

    while (v19 != v98);
    v100 = v599[0];
    v19 = v590;
    v99 = v591;
    v97 = v587;
  }

  v105 = v601;
  sub_1005E2514(v601);
  if (v99)
  {
    v105, v107, v108, v109, v110, v111, v112, v113;
    v100, v131, v132, v133, v134, v135, v136, v137;
    v138 = v19;
    goto LABEL_34;
  }

  v128 = v106;
  v105, v107, v108, v109, v110, v111, v112, v113;
  v129 = v584;
  v130 = v586;
  v71 = sub_10065F214(v128, v584);
  v128, v139, v140, v141, v142, v143, v144, v145;
  v146 = sub_1006670C8(v100, v129);
  v591 = 0;
  v22 = v130;
  v578 = v146;
  v100, v147, v148, v149, v150, v151, v152, v153;
  swift_beginAccess();
  v154 = 0;
  v567 = (v97 + 8);
  v155 = &selRef_persistentStoreForIdentifier_;
  *&v156 = 136446978;
  v569 = v156;
  v580 = v71;
  while (1)
  {
    if (v154 >= *v19->clientIdentity)
    {
      goto LABEL_144;
    }

    v157 = &v592[16 * v154];
    v158 = *(v157 + 1);
    v100 = *v157;
    v579 = v158;

    v159 = [v100 v155[106]];
    v160 = v591;
    v161 = sub_1005E3810(v159, &qword_100942E50, off_1008D41E0);
    v591 = v160;
    if (v160)
    {
      goto LABEL_135;
    }

    v70 = v161;

    v162 = v584[6];
    v574 = v100;
    v568 = v154;
    if ((v162 & 0xC000000000000001) != 0)
    {
      v163 = v70;

      v164 = __CocoaDictionary.lookup(_:)();
      if (!v164)
      {
        goto LABEL_45;
      }

      v600[0] = v164;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v165 = v599[0];
    }

    else
    {
      if (!*(v162 + 16))
      {
        v165 = 0;
        goto LABEL_47;
      }

      v163 = v70;

      v166 = sub_10002B924(v163);
      if ((v167 & 1) == 0)
      {
LABEL_45:

        v162, v175, v176, v177, v178, v179, v180, v181;
        v165 = 0;
        goto LABEL_46;
      }

      v165 = *(*(v162 + 56) + 8 * v166);
    }

    v162, v168, v169, v170, v171, v172, v173, v174;
LABEL_46:
    v22 = v586;
LABEL_47:

    v21 = v578;
    if (!*v578->clientIdentity)
    {
      goto LABEL_131;
    }

    v182 = sub_100393C74();
    v21 = v578;
    if ((v53 & 1) == 0)
    {
      goto LABEL_131;
    }

    v183 = *(*&v578->clientIdentity[40] + 8 * v182);
    v184 = v579;
    swift_bridgeObjectRetain_n();
    v185 = v70;
    v577 = v183;

    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.default.getter();

    v188 = os_log_type_enabled(v186, v187);
    v572 = v185;
    if (v188)
    {
      LODWORD(v588) = v187;
      v594 = v186;
      v189 = swift_slowAlloc();
      v595 = swift_slowAlloc();
      v587 = swift_slowAlloc();
      v600[0] = v587;
      *v189 = v569;
      *(v189 + 4) = sub_10000668C(0xD000000000000016, (v582 | 0x8000000000000000), v600);
      *(v189 + 12) = 2082;
      v190 = *(v22 + 40);
      v607 = *(v22 + 24);
      v608[0] = v190;
      *(v608 + 14) = *(v22 + 54);
      sub_100009DAC(&v607, v599);
      v191 = sub_1000063E8();
      v193 = v192;
      sub_1005812D4(&v607);
      v194 = sub_10000668C(v191, v193, v600);
      v193, v195, v196, v197, v198, v199, v200, v201;
      *(v189 + 14) = v194;
      *(v189 + 22) = 2114;
      *(v189 + 24) = v185;
      *v595 = v185;
      *(v189 + 32) = 2082;
      v202 = *v184->clientIdentity;
      if (v202)
      {
        v599[0] = &_swiftEmptyArrayStorage;
        v203 = v185;
        sub_100026EF4(0, v202, 0);
        v211 = v599[0];
        v212 = *(v599[0] + 16);
        v213 = v184;
        v214 = 16 * v212;
        v215 = 32;
        do
        {
          if (*(&v213->super.isa + v215))
          {
            v216 = 0x44497473696CLL;
          }

          else
          {
            v216 = 0x49746E756F636361;
          }

          if (*(&v213->super.isa + v215))
          {
            v217 = 0xE600000000000000;
          }

          else
          {
            v217 = 0xE900000000000044;
          }

          v599[0] = v211;
          v218 = *&v211->clientIdentity[8];
          v219 = v212 + 1;
          if (v212 >= v218 >> 1)
          {
            sub_100026EF4((v218 > 1), v212 + 1, 1);
            v213 = v579;
            v211 = v599[0];
          }

          *v211->clientIdentity = v219;
          v220 = v211 + v214;
          *(v220 + 4) = v216;
          *(v220 + 5) = v217;
          v214 += 16;
          ++v215;
          v212 = v219;
          --v202;
        }

        while (v202);
        v184 = v213;
        v213, v204, v205, v206, v207, v208, v209, v210;
        v19 = v590;
        v71 = v580;
      }

      else
      {
        v228 = v185;
        v184, v229, v230, v231, v232, v233, v234, v235;
        v211 = &_swiftEmptyArrayStorage;
      }

      v236 = Array.description.getter();
      v238 = v237;
      v211, v237, v239, v240, v241, v242, v243, v244;
      v184, v245, v246, v247, v248, v249, v250, v251;
      v252 = sub_10000668C(v236, v238, v600);
      v238, v253, v254, v255, v256, v257, v258, v259;
      *(v189 + 34) = v252;
      v260 = v594;
      _os_log_impl(&_mh_execute_header, v594, v588, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v189, 0x2Au);
      sub_1000050A4(v595, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v22 = v586;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v261 = v585;
    v262 = v589;
    v570 = *v184->clientIdentity;
    if (v570)
    {
      break;
    }

LABEL_121:
    v184, v221, v222, v223, v224, v225, v226, v227;
    v366 = v577;
    v367 = v574;
    v368 = v572;
    v369 = v568;
    if (*(v22 + 104))
    {
      [v577 updateChangeCount];
    }

    v154 = v369 + 1;

    v155 = &selRef_persistentStoreForIdentifier_;
    if (v154 == v593)
    {
      v19, v370, v371, v372, v373, v374, v375, v376;
      v578, v556, v557, v558, v559, v560, v561, v562;
      v138 = v71;
      goto LABEL_34;
    }
  }

  v263 = 0;
  v571 = &v184->clientIdentity[16];
  while (1)
  {
    if (v263 >= *v184->clientIdentity)
    {
      goto LABEL_143;
    }

    v573 = v263;
    v264 = v571[v263];
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v265 = swift_allocObject();
    v266 = v265;
    *(v265 + 16) = v596;
    v575 = v264;
    v267 = v609;
    if (v264)
    {
      v267 = v262;
    }

    v268 = *v267;
    *(v265 + 32) = v268;
    v594 = (v265 + 32);
    v269 = v268;
    v595 = (v266 & 0xFFFFFFFFFFFFFF8);
    v587 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v576 = v266;
    if (v587)
    {
      v277 = 0;
      v588 = v266 & 0xC000000000000001;
      v278 = _swiftEmptyDictionarySingleton;
      v279 = v591;
      while (1)
      {
        if (v588)
        {
          v282 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v277 >= v595[2])
          {
            goto LABEL_139;
          }

          v282 = v594[v277].isa;
        }

        v283 = *(v71 + 16);
        v291 = v282;
        if (!v283 || (v292 = sub_100393C74(), (v284 & 1) == 0))
        {
          v579, v284, v285, v286, v287, v288, v289, v290;
          v576, v377, v378, v379, v380, v381, v382, v383;
          v278, v384, v385, v386, v387, v388, v389, v390;
          v578, v391, v392, v393, v394, v395, v396, v397;
          v71, v398, v399, v400, v401, v402, v403, v404;
          v590, v405, v406, v407, v408, v409, v410, v411;

          v412 = v291;
          v413 = Logger.logObject.getter();
          v414 = v22;
          v415 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v413, v415))
          {
            v416 = swift_slowAlloc();
            v609 = swift_slowAlloc();
            v600[0] = v609;
            *v416 = v569;
            *(v416 + 4) = sub_10000668C(0xD000000000000016, (v582 | 0x8000000000000000), v600);
            *(v416 + 12) = 2082;
            v417 = *(v414 + 40);
            v605 = *(v414 + 24);
            v606[0] = v417;
            *(v606 + 14) = *(v414 + 54);
            sub_100009DAC(&v605, v599);
            v418 = sub_1000063E8();
            v420 = v419;
            sub_1005812D4(&v605);
            v421 = sub_10000668C(v418, v420, v600);
            v420, v422, v423, v424, v425, v426, v427, v428;
            *(v416 + 14) = v421;
            *(v416 + 22) = 2080;
            v429 = [(objc_class *)v412 description];
            v430 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v432 = v431;

            v433 = sub_10000668C(v430, v432, v600);
            v432, v434, v435, v436, v437, v438, v439, v440;
            *(v416 + 24) = v433;
            *(v416 + 32) = 2080;
            v441 = [(objc_class *)v412 description];
            v442 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v444 = v443;

            v445 = sub_10000668C(v442, v444, v600);
            v444, v446, v447, v448, v449, v450, v451, v452;
            *(v416 + 34) = v445;
            _os_log_impl(&_mh_execute_header, v413, v415, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v416, 0x2Au);
            swift_arrayDestroy();
          }

          v453 = v574;
          v454 = v572;
          v455 = v577;
          [objc_opt_self() noSuchObjectErrorWithObjectID:v412];

          swift_willThrow();
          return;
        }

        v293 = *(*(v71 + 56) + 8 * v292);
        v591 = v279;
        if ((v278 & 0xC000000000000001) != 0)
        {
          if (v278 < 0)
          {
            v294 = v278;
          }

          else
          {
            v294 = v278 & 0xFFFFFFFFFFFFFF8;
          }

          v295 = v293;
          v296 = __CocoaDictionary.count.getter();
          if (__OFADD__(v296, 1))
          {
            goto LABEL_141;
          }

          v297 = sub_10021D008(v294, v296 + 1);
        }

        else
        {
          v298 = v293;
          v297 = v278;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v599[0] = v297;
        v300 = v291;
        v302 = sub_10002B924(v291);
        v303 = *(v297 + 16);
        v304 = (v301 & 1) == 0;
        v305 = v303 + v304;
        if (__OFADD__(v303, v304))
        {
          goto LABEL_140;
        }

        v306 = v301;
        if (*(v297 + 24) >= v305)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v278 = v297;
            v262 = v589;
            if (v301)
            {
              goto LABEL_72;
            }
          }

          else
          {
            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v312 = static _DictionaryStorage.copy(original:)();
            v278 = v312;
            if (*(v297 + 16))
            {
              v320 = (v312 + 64);
              v321 = 1 << *(v278 + 32);
              v564 = (v297 + 64);
              v322 = (v321 + 63) >> 6;
              if (v278 != v297 || v320 >= &v564[8 * v322])
              {
                memmove(v320, v564, 8 * v322);
              }

              v323 = 0;
              *(v278 + 16) = *(v297 + 16);
              v324 = 1 << *(v297 + 32);
              if (v324 < 64)
              {
                v325 = ~(-1 << v324);
              }

              else
              {
                v325 = -1;
              }

              v566 = v325 & *(v297 + 64);
              v563 = (v324 + 63) >> 6;
              for (i = v566; v566; i = v566)
              {
                v327 = __clz(__rbit64(i));
                v566 = (i - 1) & i;
LABEL_110:
                v330 = v327 | (v323 << 6);
                v331 = *(*(v297 + 48) + 8 * v330);
                v565 = *(*(v297 + 56) + 8 * v330);
                v332 = v565;
                *(*(v278 + 48) + 8 * v330) = v331;
                *(*(v278 + 56) + 8 * v330) = v332;
                v333 = v331;
                v334 = v565;
              }

              v328 = v323;
              while (1)
              {
                v323 = v328 + 1;
                if (__OFADD__(v328, 1))
                {
                  goto LABEL_145;
                }

                if (v323 >= v563)
                {
                  break;
                }

                v329 = *&v564[8 * v323];
                ++v328;
                if (v329)
                {
                  v327 = __clz(__rbit64(v329));
                  v566 = (v329 - 1) & v329;
                  goto LABEL_110;
                }
              }
            }

            v297, v313, v314, v315, v316, v317, v318, v319;
            v262 = v589;
            if (v306)
            {
LABEL_72:

              v280 = *(v278 + 56);
              v281 = *(v280 + 8 * v302);
              *(v280 + 8 * v302) = v293;

              goto LABEL_73;
            }
          }
        }

        else
        {
          sub_10036CABC(v305, isUniquelyReferenced_nonNull_native);
          v278 = v599[0];
          v307 = sub_10002B924(v300);
          if ((v306 & 1) != (v308 & 1))
          {
            goto LABEL_146;
          }

          v302 = v307;
          v262 = v589;
          if (v306)
          {
            goto LABEL_72;
          }
        }

        *(v278 + 8 * (v302 >> 6) + 64) |= 1 << v302;
        *(*(v278 + 48) + 8 * v302) = v300;
        *(*(v278 + 56) + 8 * v302) = v293;

        v309 = *(v278 + 16);
        v310 = __OFADD__(v309, 1);
        v311 = v309 + 1;
        if (v310)
        {
          goto LABEL_142;
        }

        *(v278 + 16) = v311;
LABEL_73:
        v261 = v585;
        v22 = v586;
        v279 = v591;
        v71 = v580;
        if (++v277 == v587)
        {
          goto LABEL_115;
        }
      }
    }

    v278 = _swiftEmptyDictionarySingleton;
    v279 = v591;
LABEL_115:
    v576, v270, v271, v272, v273, v274, v275, v276;
    sub_10045BDE8(v278);
    v336 = v335;
    v278, v337, v338, v339, v340, v341, v342, v343;
    if (v575)
    {
      v344 = *v262;
      sub_10068932C(1, *v262, v336, &type metadata for REMShareeCDIngestor.RelationshipKey, off_1008D41A8, &unk_100938880);
      v19 = v590;
      if (v279)
      {
        break;
      }

      v591 = 0;
      v346 = v345;
      v336, v347, v348, v349, v350, v351, v352, v353;
      v354 = v577;
      [v577 setList:v346];

      v355 = [v344 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v356.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v567)(v261, v581);
      v357 = &selRef_setOwningListIdentifier_;
      v22 = v586;
      goto LABEL_120;
    }

    sub_10068932C(0, *v609, v336, &type metadata for REMShareeCDIngestor.RelationshipKey, off_1008D4120, &qword_1009399F0);
    v19 = v590;
    if (v279)
    {
      break;
    }

    v591 = 0;
    v356.super.isa = v358;
    v336, v359, v360, v361, v362, v363, v364, v365;
    v357 = &selRef_setAccount_;
    v354 = v577;
LABEL_120:
    v263 = v573 + 1;
    [v354 *v357];

    v184 = v579;
    if (v263 == v570)
    {
      goto LABEL_121;
    }
  }

  v336, v528, v529, v530, v531, v532, v533, v534;
  v19, v535, v536, v537, v538, v539, v540, v541;

  v579, v542, v543, v544, v545, v546, v547, v548;
  v578, v549, v550, v551, v552, v553, v554, v555;
  v138 = v71;
LABEL_34:
  v138, v53, v54, v55, v56, v57, v58, v59;
}

void sub_100646548(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v501 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v497 = &v501;
  v10 = sub_1003DFDD8(sub_1006AC110, v496, a1);
  if (v4)
  {
    return;
  }

  v489 = v10;
  v485 = a1;
  v11 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = "mutateRelationshipOrdering";
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);
  p_isa = &v489->super.isa;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v8, v17, v18, v19, v20, v21, v22, v23;
  v495 = v16;
  v483 = a3;
  v484 = v11;
  if (os_log_type_enabled(&v15->super, v16))
  {
    v24 = swift_slowAlloc();
    v508 = v9;
    v25 = v24;
    v11 = swift_slowAlloc();
    v498[0] = v11;
    *v25 = 136446978;
    *(v25 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v498);
    *(v25 + 12) = 2048;
    *(v25 + 14) = *v489->clientIdentity;
    v489, v26, v27, v28, v29, v30, v31, v32;
    *(v25 + 22) = 2082;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    v33 = [swift_getObjCClassFromMetadata() description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v12 = sub_10000668C(v34, v36, v498);
    v36, v37, v38, v39, v40, v41, v42, v43;
    *(v25 + 24) = v12;
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_10000668C(v508, v8, v498);
    _os_log_impl(&_mh_execute_header, &v15->super, v495, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v25, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v489, v51, v52, v53, v54, v55, v56, v57;
  }

  v491 = *v489->clientIdentity;
  if (!v491)
  {
    v87 = v489;
    goto LABEL_31;
  }

  v58 = 0;
  v500 = _swiftEmptySetSingleton;
  v490 = &v489->clientIdentity[16];
  v487 = (a2 + 16);
  v488 = (a2 + 24);
  v59 = &unk_100939D60;
  v60 = &unk_1007959E0;
  do
  {
    if (v58 >= p_isa[2])
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      v11, v44, v45, v46, v47, v48, v49, v50;
      v489, v386, v387, v388, v389, v390, v391, v392;
      v479, v393, v394, v395, v396, v397, v398, v399;
      v15, v400, v401, v402, v403, v404, v405, v406;
      v407 = v59;

      v408 = Logger.logObject.getter();
      v409 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v408, v409))
      {
        v410 = v60;
        v411 = swift_slowAlloc();
        v499 = swift_slowAlloc();
        *v411 = 136446722;
        *(v411 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v499);
        *(v411 + 12) = 2082;
        v412 = *(v410 + 40);
        v502 = *(v410 + 24);
        v503[0] = v412;
        *(v503 + 14) = *(v410 + 54);
        sub_100009DAC(&v502, v498);
        v413 = sub_1000063E8();
        v415 = v414;
        sub_1005812D4(&v502);
        v416 = sub_10000668C(v413, v415, &v499);
        v415, v417, v418, v419, v420, v421, v422, v423;
        *(v411 + 14) = v416;
        *(v411 + 22) = 2080;
        v424 = [v407 description];
        v425 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v427 = v426;

        v428 = v425;
        p_isa = v475;
        v429 = sub_10000668C(v428, v427, &v499);
        v427, v430, v431, v432, v433, v434, v435, v436;
        *(v411 + 24) = v429;
        _os_log_impl(&_mh_execute_header, v408, v409, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v411, 0x20u);
        swift_arrayDestroy();
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v407];
      swift_willThrow();

      return;
    }

    v61 = &v490[16 * v58];
    v62 = *(v61 + 1);
    v11 = *(v62 + 16);
    if (v11)
    {
      v508 = v58;
      v492 = *v61;

      v63 = 32;
      do
      {
        v64 = *(v62 + v63);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v65 = swift_allocObject();
        v12 = v65;
        *(v65 + 16) = xmmword_1007953F0;
        if (v64)
        {
          v66 = (a2 + 24);
        }

        else
        {
          v66 = (a2 + 16);
        }

        v67 = *v66;
        *(v65 + 32) = v67;
        v68 = v67;
        v15 = &v500;
        sub_100392144(v12);
        v12, v69, v70, v71, v72, v73, v74, v75;
        ++v63;
        --v11;
      }

      while (v11);

      v62, v76, v77, v78, v79, v80, v81, v82;
      p_isa = &v489->super.isa;
      v58 = v508;
    }

    ++v58;
  }

  while (v58 != v491);
  if (v485 >> 62)
  {
    v59 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v59 = *((v485 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v59)
  {
    v498[0] = &_swiftEmptyArrayStorage;
    v15 = v498;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v59 < 0)
    {
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
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v60 = 0;
    p_isa = (v485 & 0xFFFFFFFFFFFFFF8);
    do
    {
      v83 = (v60 + 1);
      if (__OFADD__(v60, 1))
      {
        goto LABEL_125;
      }

      v11 = 0;
      if ((v485 & 0xC000000000000001) != 0)
      {
        v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v60 >= *((v485 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          v489, v44, v45, v46, v47, v48, v49, v50;
          v12, v437, v438, v439, v440, v441, v442, v443;
          v477, v444, v445, v446, v447, v448, v449, v450;
          0, v451, v452, v453, v454, v455, v456, v457;

          return;
        }

        v84 = *(v485 + 8 * v60 + 32);
      }

      v85 = v84;
      sub_1005E3810([v84 remObjectID], &qword_10094F150, off_1008D4178);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v498[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v498;
      specialized ContiguousArray._endMutation()();
      ++v60;
    }

    while (v83 != v59);
    v86 = v498[0];
  }

  else
  {
    v86 = &_swiftEmptyArrayStorage;
  }

  v88 = v500;
  sub_1005E2514(v500);
  v90 = v89;
  v88, v91, v92, v93, v94, v95, v96, v97;
  v480 = sub_10065F214(v90, v483);
  v90, v98, v99, v100, v101, v102, v103, v104;
  v60 = v484;
  v478 = sub_100667998(v86, v483);
  v86, v105, v106, v107, v108, v109, v110, v111;
  swift_beginAccess();
  v112 = 0;
  v11 = v480;
  do
  {
    if (v112 >= *v489->clientIdentity)
    {
      goto LABEL_137;
    }

    v468 = v112;
    v113 = &v490[16 * v112];
    v114 = *(v113 + 1);
    p_isa = *v113;

    v59 = sub_1005E3810([p_isa remObjectID], &qword_10094F150, off_1008D4178);

    v115 = v483[6];
    v479 = v114;
    if ((v115 & 0xC000000000000001) != 0)
    {
      v116 = v59;

      v117 = __CocoaDictionary.lookup(_:)();
      if (!v117)
      {
        goto LABEL_42;
      }

      v499 = v117;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v118 = v498[0];
    }

    else
    {
      if (!*(v115 + 16))
      {
        v118 = 0;
        goto LABEL_44;
      }

      v116 = v59;

      v119 = sub_10002B924(v116);
      if ((v120 & 1) == 0)
      {
LABEL_42:

        v115, v128, v129, v130, v131, v132, v133, v134;
        v118 = 0;
        goto LABEL_43;
      }

      v118 = *(*(v115 + 56) + 8 * v119);
    }

    v115, v121, v122, v123, v124, v125, v126, v127;
LABEL_43:
    v60 = v484;
LABEL_44:

    v15 = v478;
    v475 = p_isa;
    if (!*(v478 + 16))
    {
      goto LABEL_126;
    }

    v135 = sub_100393C74();
    v15 = v478;
    if ((v44 & 1) == 0)
    {
      goto LABEL_126;
    }

    v136 = *(*(v478 + 56) + 8 * v135);
    v137 = v114;
    swift_bridgeObjectRetain_n();
    v138 = v59;
    v476 = v136;

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();

    v471 = v138;
    if (os_log_type_enabled(v139, v140))
    {
      v493 = v140;
      v508 = v139;
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v499 = swift_slowAlloc();
      *v141 = 136446978;
      *(v141 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v499);
      *(v141 + 12) = 2082;
      v143 = *(v60 + 40);
      v506 = *(v60 + 24);
      v507[0] = v143;
      *(v507 + 14) = *(v60 + 54);
      sub_100009DAC(&v506, v498);
      v144 = sub_1000063E8();
      v146 = v145;
      sub_1005812D4(&v506);
      v147 = sub_10000668C(v144, v146, &v499);
      v146, v148, v149, v150, v151, v152, v153, v154;
      *(v141 + 14) = v147;
      *(v141 + 22) = 2114;
      *(v141 + 24) = v138;
      v481 = v142;
      *v142 = v138;
      *(v141 + 32) = 2082;
      v137 = v479;
      v155 = *(v479 + 16);
      if (v155)
      {
        v498[0] = &_swiftEmptyArrayStorage;
        v156 = v138;
        sub_100026EF4(0, v155, 0);
        v164 = v498[0];
        v165 = *(v498[0] + 16);
        v166 = 16 * v165;
        v167 = 32;
        do
        {
          if (*(v479 + v167))
          {
            v168 = 0x44497473696CLL;
          }

          else
          {
            v168 = 0x49746E756F636361;
          }

          if (*(v479 + v167))
          {
            v169 = 0xE600000000000000;
          }

          else
          {
            v169 = 0xE900000000000044;
          }

          v498[0] = v164;
          v170 = *&v164->clientIdentity[8];
          v171 = v165 + 1;
          if (v165 >= v170 >> 1)
          {
            sub_100026EF4((v170 > 1), v165 + 1, 1);
            v164 = v498[0];
          }

          *v164->clientIdentity = v171;
          v172 = v164 + v166;
          *(v172 + 4) = v168;
          *(v172 + 5) = v169;
          v166 += 16;
          ++v167;
          v165 = v171;
          --v155;
        }

        while (v155);
        v479, v157, v158, v159, v160, v161, v162, v163;
        v60 = v484;
        p_isa = v475;
        v11 = v480;
      }

      else
      {
        v180 = v138;
        v479, v181, v182, v183, v184, v185, v186, v187;
        v164 = &_swiftEmptyArrayStorage;
      }

      v188 = Array.description.getter();
      v190 = v189;
      v164, v189, v191, v192, v193, v194, v195, v196;
      v479, v197, v198, v199, v200, v201, v202, v203;
      v204 = sub_10000668C(v188, v190, &v499);
      v190, v205, v206, v207, v208, v209, v210, v211;
      *(v141 + 34) = v204;
      v212 = v508;
      _os_log_impl(&_mh_execute_header, v508, v493, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v141, 0x2Au);
      sub_1000050A4(v481, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v213 = v488;
    v469 = *(v137 + 16);
    if (v469)
    {
      v214 = 0;
      v470 = v137 + 32;
      while (1)
      {
        if (v214 >= *(v137 + 16))
        {
          goto LABEL_136;
        }

        v472 = v214;
        v215 = *(v470 + v214);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v216 = swift_allocObject();
        v217 = v216;
        *(v216 + 16) = xmmword_1007953F0;
        v473 = v215;
        v218 = v487;
        if (v215)
        {
          v218 = v213;
        }

        v219 = *v218;
        *(v216 + 32) = v219;
        v494 = v216 + 32;
        v220 = v219;
        v508 = (v217 & 0xFFFFFFFFFFFFFF8);
        v482 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v474 = v217;
        if (v482)
        {
          break;
        }

        v229 = _swiftEmptyDictionarySingleton;
LABEL_112:
        v474, v221, v222, v223, v224, v225, v226, v227;
        sub_10045BDE8(v229);
        v285 = v284;
        v229, v286, v287, v288, v289, v290, v291, v292;
        if (v473)
        {
          sub_10068932C(1, *v488, v285, &type metadata for REMCalDAVNotificationCDIngestor.RelationshipKey, off_1008D41A8, &unk_100938880);
          v137 = v479;
          v294 = &selRef_setOwner_;
        }

        else
        {
          sub_10068932C(0, *v487, v285, &type metadata for REMCalDAVNotificationCDIngestor.RelationshipKey, off_1008D4120, &qword_1009399F0);
          v137 = v479;
          v294 = &selRef_setAccount_;
        }

        v295 = v293;
        v285, v296, v297, v298, v299, v300, v301, v302;
        [v476 *v294];

        v214 = v472 + 1;
        p_isa = v475;
        v213 = v488;
        v11 = v480;
        if (v472 + 1 == v469)
        {
          goto LABEL_116;
        }
      }

      v228 = 0;
      v486 = v217 & 0xC000000000000001;
      v229 = _swiftEmptyDictionarySingleton;
      while (2)
      {
        if (v486)
        {
          v232 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v228 >= v508[2].isa)
          {
            goto LABEL_132;
          }

          v232 = *(v494 + 8 * v228);
        }

        v233 = *(v11 + 16);
        v241 = v232;
        if (!v233 || (v242 = sub_100393C74(), (v234 & 1) == 0))
        {
          v479, v234, v235, v236, v237, v238, v239, v240;
          v474, v310, v311, v312, v313, v314, v315, v316;
          v229, v317, v318, v319, v320, v321, v322, v323;
          v478, v324, v325, v326, v327, v328, v329, v330;
          v11, v331, v332, v333, v334, v335, v336, v337;
          v489, v338, v339, v340, v341, v342, v343, v344;

          v345 = v241;
          v346 = Logger.logObject.getter();
          v347 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v346, v347))
          {
            v348 = v60;
            v349 = swift_slowAlloc();
            v499 = swift_slowAlloc();
            *v349 = 136446978;
            *(v349 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v499);
            *(v349 + 12) = 2082;
            v350 = *(v348 + 40);
            v504 = *(v348 + 24);
            v505[0] = v350;
            *(v505 + 14) = *(v348 + 54);
            sub_100009DAC(&v504, v498);
            v351 = sub_1000063E8();
            v353 = v352;
            sub_1005812D4(&v504);
            v354 = sub_10000668C(v351, v353, &v499);
            v353, v355, v356, v357, v358, v359, v360, v361;
            *(v349 + 14) = v354;
            *(v349 + 22) = 2080;
            v362 = [v345 description];
            v363 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v365 = v364;

            v366 = sub_10000668C(v363, v365, &v499);
            v365, v367, v368, v369, v370, v371, v372, v373;
            *(v349 + 24) = v366;
            *(v349 + 32) = 2080;
            v374 = [v345 description];
            v375 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v377 = v376;

            v378 = sub_10000668C(v375, v377, &v499);
            v377, v379, v380, v381, v382, v383, v384, v385;
            *(v349 + 34) = v378;
            _os_log_impl(&_mh_execute_header, v346, v347, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v349, 0x2Au);
            swift_arrayDestroy();
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v345];
          swift_willThrow();

          return;
        }

        v243 = *(*(v11 + 56) + 8 * v242);
        if ((v229 & 0xC000000000000001) != 0)
        {
          if (v229 < 0)
          {
            v244 = v229;
          }

          else
          {
            v244 = v229 & 0xFFFFFFFFFFFFFF8;
          }

          v245 = v243;
          v246 = __CocoaDictionary.count.getter();
          if (__OFADD__(v246, 1))
          {
            goto LABEL_134;
          }

          v247 = v243;
          v248 = sub_10021D008(v244, v246 + 1);
        }

        else
        {
          v247 = *(*(v11 + 56) + 8 * v242);
          v249 = v243;
          v248 = v229;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v498[0] = v248;
        v252 = sub_10002B924(v241);
        v253 = *(v248 + 16);
        v254 = (v251 & 1) == 0;
        v255 = v253 + v254;
        if (__OFADD__(v253, v254))
        {
          goto LABEL_133;
        }

        v256 = v251;
        if (*(v248 + 24) >= v255)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v229 = v248;
            if ((v251 & 1) == 0)
            {
              goto LABEL_90;
            }

            goto LABEL_69;
          }

          sub_1000F5104(&qword_10093D598, &unk_10079B210);
          v262 = static _DictionaryStorage.copy(original:)();
          v229 = v262;
          if (*(v248 + 16))
          {
            v270 = (v262 + 64);
            __src = (v248 + 64);
            v271 = ((1 << *(v229 + 32)) + 63) >> 6;
            if (v229 != v248 || v270 >= &__src[8 * v271])
            {
              memmove(v270, __src, 8 * v271);
            }

            v272 = 0;
            *(v229 + 16) = *(v248 + 16);
            v273 = 1 << *(v248 + 32);
            if (v273 < 64)
            {
              v274 = ~(-1 << v273);
            }

            else
            {
              v274 = -1;
            }

            v465 = (v273 + 63) >> 6;
            v275 = v274 & *(v248 + 64);
            if (v275)
            {
              do
              {
                v276 = __clz(__rbit64(v275));
                v467 = (v275 - 1) & v275;
LABEL_107:
                v279 = v276 | (v272 << 6);
                v280 = *(*(v248 + 48) + 8 * v279);
                v281 = *(*(v248 + 56) + 8 * v279);
                *(*(v229 + 48) + 8 * v279) = v280;
                *(*(v229 + 56) + 8 * v279) = v281;
                v282 = v280;
                v283 = v281;
                v275 = v467;
              }

              while (v467);
            }

            v277 = v272;
            while (1)
            {
              v272 = v277 + 1;
              if (__OFADD__(v277, 1))
              {
                goto LABEL_138;
              }

              if (v272 >= v465)
              {
                break;
              }

              v278 = *&__src[8 * v272];
              ++v277;
              if (v278)
              {
                v276 = __clz(__rbit64(v278));
                v467 = (v278 - 1) & v278;
                goto LABEL_107;
              }
            }
          }

          v248, v263, v264, v265, v266, v267, v268, v269;
          v11 = v480;
          if (v256)
          {
            goto LABEL_69;
          }

LABEL_90:
          *(v229 + 8 * (v252 >> 6) + 64) |= 1 << v252;
          *(*(v229 + 48) + 8 * v252) = v241;
          *(*(v229 + 56) + 8 * v252) = v247;

          v259 = *(v229 + 16);
          v260 = __OFADD__(v259, 1);
          v261 = v259 + 1;
          if (v260)
          {
            goto LABEL_135;
          }

          *(v229 + 16) = v261;
        }

        else
        {
          sub_10036CABC(v255, isUniquelyReferenced_nonNull_native);
          v229 = v498[0];
          v257 = sub_10002B924(v241);
          if ((v256 & 1) != (v258 & 1))
          {
            goto LABEL_139;
          }

          v252 = v257;
          if ((v256 & 1) == 0)
          {
            goto LABEL_90;
          }

LABEL_69:

          v230 = *(v229 + 56);
          v231 = *(v230 + 8 * v252);
          *(v230 + 8 * v252) = v247;
        }

        v60 = v484;
        v228 = (v228 + 1);
        if (v228 == v482)
        {
          goto LABEL_112;
        }

        continue;
      }
    }

LABEL_116:
    v137, v173, v174, v175, v176, v177, v178, v179;
    if (*(v60 + 104))
    {
      [v476 updateChangeCount];
    }

    v112 = v468 + 1;
  }

  while ((v468 + 1) != v491);
  v489, v303, v304, v305, v306, v307, v308, v309;
  v478, v458, v459, v460, v461, v462, v463, v464;
  v87 = v11;
LABEL_31:
  v87, v44, v45, v46, v47, v48, v49, v50;
}

void sub_100647A80(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = a2;
  v498 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v494 = &v498;
  v10 = sub_1003E054C(sub_1006AFDFC, v493, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v484 = a1;
  v482 = a3;
  v12 = v3;
  v13 = "establishRelationships";
  if (qword_100936008 != -1)
  {
    goto LABEL_109;
  }

LABEL_3:
  v14 = &v13[-1].publicCloudDatabaseController[34];
  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100945730);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v8, v18, v19, v20, v21, v22, v23, v24;
  v483 = v12;
  v485 = v6;
  v486 = v11;
  v481 = v14;
  if (os_log_type_enabled(v16, v17))
  {
    v492 = v9;
    v25 = swift_slowAlloc();
    v495[0] = swift_slowAlloc();
    *v25 = 136446978;
    *(v25 + 4) = sub_10000668C(0xD000000000000016, (v14 | 0x8000000000000000), v495);
    *(v25 + 12) = 2048;
    *(v25 + 14) = *(v11 + 16);
    v11, v26, v27, v28, v29, v30, v31, v32;
    *(v25 + 22) = 2082;
    type metadata accessor for REMCDDueDateDeltaAlert();
    v33 = [swift_getObjCClassFromMetadata() description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v11 = v486;
    v37 = sub_10000668C(v34, v36, v495);
    v36, v38, v39, v40, v41, v42, v43, v44;
    *(v25 + 24) = v37;
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_10000668C(v492, v8, v495);
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v25, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v11, v52, v53, v54, v55, v56, v57, v58;
  }

  v489 = *(v11 + 16);
  if (!v489)
  {
    v108 = v11;
    goto LABEL_29;
  }

  v497 = _swiftEmptySetSingleton;
  v488 = v11 + 32;

  for (i = 0; i != v489; ++i)
  {
    if (i >= *(v11 + 16))
    {
      __break(1u);

      v486, v389, v390, v391, v392, v393, v394, v395;
      &type metadata for Swift.AnyObject, v396, v397, v398, v399, v400, v401, v402;

      i, v403, v404, v405, v406, v407, v408, v409;
      &unk_100939D60, v410, v411, v412, v413, v414, v415, v416;

      v108 = v473;
      goto LABEL_29;
    }

    v67 = v488 + 16 * i;
    v68 = *(v67 + 8);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = *(v485 + 16);
      v490 = *v67;
      v505 = v68;

      do
      {
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = v70;
        v72 = v70;
        sub_100392144(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        --v69;
      }

      while (v69);
      v505, v73, v74, v75, v76, v77, v78, v79;

      v11 = v486;
    }
  }

  v11, v59, v60, v61, v62, v63, v64, v65;
  if (v484 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v484 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    v90 = &_swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v495[0] = &_swiftEmptyArrayStorage;
  v13 = v495;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v11 = v484 & 0xC000000000000001;
    v12 = v484 & 0xFFFFFFFFFFFFFF8;
    v87 = &selRef_persistentStoreForIdentifier_;
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_105:
        v87, v80, v81, v82, v83, v84, v85, v86;
        v11, v417, v418, v419, v420, v421, v422, v423;
        v484, v424, v425, v426, v427, v428, v429, v430;
        v13, v431, v432, v433, v434, v435, v436, v437;
        v438 = v6;

        v439 = Logger.logObject.getter();
        v440 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v439, v440))
        {
          v441 = swift_slowAlloc();
          v496 = swift_slowAlloc();
          *v441 = 136446722;
          *(v441 + 4) = sub_10000668C(0xD000000000000016, (v481 | 0x8000000000000000), &v496);
          *(v441 + 12) = 2082;
          v442 = *(v483 + 40);
          v499 = *(v483 + 24);
          v500[0] = v442;
          *(v500 + 14) = *(v483 + 54);
          sub_100009DAC(&v499, v495);
          v443 = sub_1000063E8();
          v445 = v444;
          sub_1005812D4(&v499);
          v446 = sub_10000668C(v443, v445, &v496);
          v445, v447, v448, v449, v450, v451, v452, v453;
          *(v441 + 14) = v446;
          *(v441 + 22) = 2080;
          v454 = [v438 description];
          v455 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v457 = v456;

          v458 = sub_10000668C(v455, v457, &v496);
          v457, v459, v460, v461, v462, v463, v464, v465;
          *(v441 + 24) = v458;
          _os_log_impl(&_mh_execute_header, v439, v440, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v441, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v438];
        swift_willThrow();

        return;
      }

      if (v11)
      {
        v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v484 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_109:
          swift_once();
          goto LABEL_3;
        }

        v88 = *(v484 + 8 * v6 + 32);
      }

      v89 = v88;
      sub_1005E60F0([v88 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v495;
      specialized ContiguousArray._endMutation()();
      ++v6;
      if (v9 == v8)
      {
        v90 = v495[0];
        v11 = v486;
LABEL_27:
        v91 = v497;
        sub_1005E2514(v497);
        v93 = v92;
        v91, v94, v95, v96, v97, v98, v99, v100;
        v87 = sub_10065F214(v93, v482);
        v93, v101, v102, v103, v104, v105, v106, v107;
        v474 = sub_100668268(v90, v482);
        v90, v109, v110, v111, v112, v113, v114, v115;
        swift_beginAccess();
        v116 = 0;
        v117 = _swiftEmptyDictionarySingleton;
        if (_swiftEmptyDictionarySingleton >= 0)
        {
          v117 = (_swiftEmptyDictionarySingleton & 0xFFFFFFFFFFFFFF8);
        }

        v478 = v87;
        v475 = v117;
        while (2)
        {
          if (v116 >= *(v11 + 16))
          {
            goto LABEL_117;
          }

          v469 = v116;
          v118 = v488 + 16 * v116;
          v119 = *(v118 + 8);
          v120 = *v118;

          v6 = sub_1005E60F0([v120 remObjectID]);

          v121 = v482[6];
          v484 = v119;
          v472 = v120;
          if ((v121 & 0xC000000000000001) != 0)
          {
            v122 = v6;

            v123 = __CocoaDictionary.lookup(_:)();
            if (v123)
            {
              v496 = v123;
              sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
              swift_dynamicCast();
              v124 = v495[0];
              goto LABEL_41;
            }

LABEL_42:

            v121, v134, v135, v136, v137, v138, v139, v140;
LABEL_43:
            v124 = 0;
          }

          else
          {
            if (!*(v121 + 16))
            {
              goto LABEL_43;
            }

            v122 = v6;

            v125 = sub_10002B924(v122);
            if ((v126 & 1) == 0)
            {
              goto LABEL_42;
            }

            v124 = *(*(v121 + 56) + 8 * v125);
LABEL_41:

            v121, v127, v128, v129, v130, v131, v132, v133;
          }

          v13 = v474;
          if (!*(v474 + 16))
          {
            goto LABEL_105;
          }

          v141 = sub_100393C74();
          if ((v80 & 1) == 0)
          {
            goto LABEL_105;
          }

          v142 = *(*(v474 + 56) + 8 * v141);
          v143 = v119;
          swift_bridgeObjectRetain_n();
          v144 = v6;
          v480 = v142;

          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.default.getter();

          v471 = v144;
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v496 = swift_slowAlloc();
            *v147 = 136446978;
            *(v147 + 4) = sub_10000668C(0xD000000000000016, (v481 | 0x8000000000000000), &v496);
            *(v147 + 12) = 2082;
            v149 = *(v483 + 40);
            v503 = *(v483 + 24);
            v504[0] = v149;
            *(v504 + 14) = *(v483 + 54);
            sub_100009DAC(&v503, v495);
            v150 = sub_1000063E8();
            v152 = v151;
            sub_1005812D4(&v503);
            v153 = sub_10000668C(v150, v152, &v496);
            v152, v154, v155, v156, v157, v158, v159, v160;
            *(v147 + 14) = v153;
            *(v147 + 22) = 2114;
            *(v147 + 24) = v144;
            v505 = v148;
            v148->super.isa = v144;
            *(v147 + 32) = 2082;
            v161 = *(v484 + 16);
            if (v161)
            {
              v495[0] = &_swiftEmptyArrayStorage;
              v162 = v144;
              sub_100026EF4(0, v161, 0);
              v170 = v495[0];
              v171 = *(v495[0] + 16);
              v172 = 16 * v171;
              do
              {
                v495[0] = v170;
                v173 = *&v170->clientIdentity[8];
                v174 = v171 + 1;
                if (v171 >= v173 >> 1)
                {
                  sub_100026EF4((v173 > 1), v171 + 1, 1);
                  v170 = v495[0];
                }

                *v170->clientIdentity = v174;
                v175 = v170 + v172;
                *(v175 + 4) = 0x49746E756F636361;
                *(v175 + 5) = 0xE900000000000044;
                v172 += 16;
                v171 = v174;
                --v161;
              }

              while (v161);
              v143 = v484;
              v484, v163, v164, v165, v166, v167, v168, v169;
            }

            else
            {
              v176 = v144;
              v484, v177, v178, v179, v180, v181, v182, v183;
              v170 = &_swiftEmptyArrayStorage;
            }

            v184 = Array.description.getter();
            v186 = v185;
            v170, v185, v187, v188, v189, v190, v191, v192;
            v143, v193, v194, v195, v196, v197, v198, v199;
            v200 = sub_10000668C(v184, v186, &v496);
            v186, v201, v202, v203, v204, v205, v206, v207;
            *(v147 + 34) = v200;
            _os_log_impl(&_mh_execute_header, v145, v146, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v147, 0x2Au);
            sub_1000050A4(v505, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v11 = v486;
            v87 = v478;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v476 = *(v143 + 16);
          if (v476)
          {
            v208 = 0;
            v477 = *(v485 + 16);
            while (1)
            {
              if (v208 >= *(v143 + 16))
              {
                goto LABEL_112;
              }

              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v209 = swift_initStackObject();
              *(v209 + 16) = xmmword_1007953F0;
              *(v209 + 32) = v477;
              v210 = v477;
              v211 = v210;
              if ((v209 & 0xC000000000000001) != 0)
              {
                v212 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_113;
                }

                v212 = v210;
              }

              v213 = v87[2];
              v221 = v212;
              if (!v213 || (v222 = sub_100393C74(), (v214 & 1) == 0))
              {
                v486, v214, v215, v216, v217, v218, v219, v220;
                v143, v314, v315, v316, v317, v318, v319, v320;
                _swiftEmptyDictionarySingleton, v321, v322, v323, v324, v325, v326, v327;
                v87, v328, v329, v330, v331, v332, v333, v334;
                v474, v335, v336, v337, v338, v339, v340, v341;
                v209, v342, v343, v344, v345, v346, v347, v348;

                v349 = v221;
                v350 = Logger.logObject.getter();
                v351 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v350, v351))
                {
                  v352 = swift_slowAlloc();
                  v496 = swift_slowAlloc();
                  *v352 = 136446978;
                  *(v352 + 4) = sub_10000668C(0xD000000000000016, (v481 | 0x8000000000000000), &v496);
                  *(v352 + 12) = 2082;
                  v353 = *(v483 + 40);
                  v501 = *(v483 + 24);
                  v502[0] = v353;
                  *(v502 + 14) = *(v483 + 54);
                  sub_100009DAC(&v501, v495);
                  v354 = sub_1000063E8();
                  v356 = v355;
                  sub_1005812D4(&v501);
                  v357 = sub_10000668C(v354, v356, &v496);
                  v356, v358, v359, v360, v361, v362, v363, v364;
                  *(v352 + 14) = v357;
                  *(v352 + 22) = 2080;
                  v365 = [v349 description];
                  v366 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v368 = v367;

                  v369 = sub_10000668C(v366, v368, &v496);
                  v368, v370, v371, v372, v373, v374, v375, v376;
                  *(v352 + 24) = v369;
                  *(v352 + 32) = 2080;
                  v377 = [v349 description];
                  v378 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v380 = v379;

                  v381 = sub_10000668C(v378, v380, &v496);
                  v380, v382, v383, v384, v385, v386, v387, v388;
                  *(v352 + 34) = v381;
                  _os_log_impl(&_mh_execute_header, v350, v351, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v352, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v349];
                swift_willThrow();

                return;
              }

              v223 = *&v87[7][8 * v222];
              v224 = _swiftEmptyDictionarySingleton;
              if (_swiftEmptyDictionarySingleton >> 62)
              {
                v225 = __CocoaDictionary.count.getter();
                if (__OFADD__(v225, 1))
                {
                  goto LABEL_115;
                }

                v224 = sub_10021D008(v475, v225 + 1);
              }

              v491 = v211;
              v505 = v209;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v495[0] = v224;
              v228 = sub_10002B924(v221);
              v229 = v224[2];
              v230 = (v227 & 1) == 0;
              v231 = v229 + v230;
              if (__OFADD__(v229, v230))
              {
                goto LABEL_114;
              }

              v232 = v227;
              if (v224[3] >= v231)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v233 = v224;
                  v143 = v484;
                  if ((v227 & 1) == 0)
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
                  sub_1000F5104(&qword_10093D598, &unk_10079B210);
                  v245 = static _DictionaryStorage.copy(original:)();
                  v233 = v245;
                  if (v224[2])
                  {
                    v253 = (v245 + 64);
                    __src = (v224 + 8);
                    v254 = ((1 << *(v233 + 32)) + 63) >> 6;
                    if (v233 != v224 || v253 >= &__src[8 * v254])
                    {
                      memmove(v253, __src, 8 * v254);
                    }

                    v255 = 0;
                    *(v233 + 16) = v224[2];
                    v256 = 1 << *(v224 + 32);
                    if (v256 < 64)
                    {
                      v257 = ~(-1 << v256);
                    }

                    else
                    {
                      v257 = -1;
                    }

                    v468 = v257 & v224[8];
                    for (j = (v256 + 63) >> 6; v468; v264 = v487)
                    {
                      v258 = __clz(__rbit64(v468));
                      v468 &= v468 - 1;
LABEL_90:
                      v261 = v258 | (v255 << 6);
                      v262 = *(v224[6] + 8 * v261);
                      v487 = *(v224[7] + 8 * v261);
                      *(*(v233 + 48) + 8 * v261) = v262;
                      *(*(v233 + 56) + 8 * v261) = v487;
                      v263 = v262;
                    }

                    v259 = v255;
                    while (1)
                    {
                      v255 = v259 + 1;
                      if (__OFADD__(v259, 1))
                      {
                        goto LABEL_118;
                      }

                      if (v255 >= j)
                      {
                        break;
                      }

                      v260 = *&__src[8 * v255];
                      ++v259;
                      if (v260)
                      {
                        v258 = __clz(__rbit64(v260));
                        v468 = (v260 - 1) & v260;
                        goto LABEL_90;
                      }
                    }
                  }

                  v224, v246, v247, v248, v249, v250, v251, v252;
                  v143 = v484;
                  if ((v232 & 1) == 0)
                  {
LABEL_93:
                    *(v233 + 8 * (v228 >> 6) + 64) |= 1 << v228;
                    *(*(v233 + 48) + 8 * v228) = v221;
                    *(*(v233 + 56) + 8 * v228) = v223;

                    v265 = *(v233 + 16);
                    v266 = __OFADD__(v265, 1);
                    v267 = v265 + 1;
                    if (v266)
                    {
                      goto LABEL_116;
                    }

                    *(v233 + 16) = v267;
                    goto LABEL_95;
                  }
                }
              }

              else
              {
                sub_10036CABC(v231, isUniquelyReferenced_nonNull_native);
                v233 = v495[0];
                v234 = sub_10002B924(v221);
                if ((v232 & 1) != (v235 & 1))
                {
                  goto LABEL_119;
                }

                v228 = v234;
                v143 = v484;
                if ((v232 & 1) == 0)
                {
                  goto LABEL_93;
                }
              }

              v236 = *(v233 + 56);
              v237 = *(v236 + 8 * v228);
              *(v236 + 8 * v228) = v223;

LABEL_95:
              v87 = v478;
              v505, v238, v239, v240, v241, v242, v243, v244;
              sub_10045BDE8(v233);
              v269 = v268;
              v233, v270, v271, v272, v273, v274, v275, v276;
              sub_10068AC14(v491, v269, &type metadata for REMDueDateDeltaAlertCDIngestor.RelationshipKey);
              ++v208;
              v278 = v277;
              v269, v279, v280, v281, v282, v283, v284, v285;
              [v480 setAccount:v278];

              if (v208 == v476)
              {

                v143, v286, v287, v288, v289, v290, v291, v292;
                v11 = v486;
                goto LABEL_98;
              }
            }
          }

          v143, v300, v301, v302, v303, v304, v305, v306;
LABEL_98:
          v116 = v469 + 1;
          if ((v469 + 1) != v489)
          {
            continue;
          }

          break;
        }

        v11, v293, v294, v295, v296, v297, v298, v299;
        v87, v307, v308, v309, v310, v311, v312, v313;
        v108 = v474;
LABEL_29:
        v108, v45, v46, v47, v48, v49, v50, v51;
        return;
      }
    }
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100648E30(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, NSObject *), _TtC7remindd19RDXPCStorePerformer *a6, uint64_t (*a7)(id), uint64_t (*a8)(_TtC7remindd19RDXPCStorePerformer *, uint64_t), uint64_t (*a9)(uint64_t), uint64_t (*a10)(void), void (*a11)(id, id, void, _TtC7remindd19RDXPCStorePerformer *))
{
  v529 = a2;
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v525 = &v529;
  v19 = a5(a4, v524, a1);
  if (v12)
  {
    return;
  }

  v20 = v19;
  v518 = a7;
  v536 = v17;
  log = a1;
  v513 = a3;
  v21 = v11;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);

  v23 = v18;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v18, v26, v27, v28, v29, v30, v31, v32;
  v512 = v21;
  v522 = v20;
  if (os_log_type_enabled(v24, v25))
  {
    v33 = swift_slowAlloc();
    v526[0] = swift_slowAlloc();
    *v33 = 136446978;
    *(v33 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v526);
    *(v33 + 12) = 2048;
    *(v33 + 14) = *(v20 + 16);
    v20, v34, v35, v36, v37, v38, v39, v40;
    *(v33 + 22) = 2082;
    (a6)(0);
    a6 = v23;
    v41 = [swift_getObjCClassFromMetadata() description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = sub_10000668C(v42, v44, v526);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v33 + 24) = v45;
    v20 = v522;
    *(v33 + 32) = 2082;
    *(v33 + 34) = sub_10000668C(v536, a6, v526);
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v33, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v20, v60, v61, v62, v63, v64, v65, v66;
  }

  v536 = *(v20 + 16);
  if (!v536)
  {
    v20, v53, v54, v55, v56, v57, v58, v59;
    return;
  }

  v528 = _swiftEmptySetSingleton;
  v523 = v20 + 32;

  v74 = 0;
  do
  {
    if (v74 >= *(v20 + 16))
    {
      __break(1u);
LABEL_123:

      v403 = v507;
LABEL_124:
      [objc_opt_self() noSuchObjectErrorWithObjectID:a6];

      swift_willThrow();
      return;
    }

    v75 = v523 + 16 * v74;
    a6 = *(v75 + 8);
    v76 = *a6->clientIdentity;
    if (v76)
    {
      v77 = *v75;

      v78 = 32;
      do
      {
        v79 = (a10)(v77, *(&a6->super.isa + v78));
        sub_100392144(v79);
        v79, v80, v81, v82, v83, v84, v85, v86;
        ++v78;
        --v76;
      }

      while (v76);
      a6, v87, v88, v89, v90, v91, v92, v93;

      v20 = v522;
    }

    ++v74;
  }

  while (v74 != v536);
  v20, v67, v68, v69, v70, v71, v72, v73;
  if (log >> 62)
  {
    v94 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v94 = *((log & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v94)
  {
    v108 = &_swiftEmptyArrayStorage;
LABEL_29:
    v109 = v528;
    sub_1005E2514(v528);
    v111 = v110;
    v109, v112, v113, v114, v115, v116, v117, v118;
    v119 = v513;
    v76 = sub_10065F214(v111, v513);
    v111, v120, v121, v122, v123, v124, v125, v126;
    v504 = a8(v108, v513);
    v108, v134, v135, v136, v137, v138, v139, v140;
    swift_beginAccess();
    v141 = 0;
    v142 = &selRef_persistentStoreForIdentifier_;
    v511 = v76;
    while (1)
    {
      if (v141 >= *(v20 + 16))
      {
        goto LABEL_138;
      }

      v497 = v141;
      v143 = v523 + 16 * v141;
      v144 = *(v143 + 8);
      v104 = *v143;
      v508 = v144;

      v94 = v518([v104 v142[106]]);

      v145 = v119[6];
      if ((v145 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v145 + 16))
      {
        v146 = v94;

        v149 = sub_10002B924(v146);
        if (v150)
        {
          v148 = *(*(v145 + 56) + 8 * v149);
LABEL_38:

          v145, v151, v152, v153, v154, v155, v156, v157;
LABEL_40:
          v119 = v513;
          goto LABEL_41;
        }

LABEL_39:

        v145, v158, v159, v160, v161, v162, v163, v164;
        v148 = 0;
        goto LABEL_40;
      }

      v148 = 0;
LABEL_41:

      v95 = v504;
      if (!*(v504 + 16))
      {
        goto LABEL_126;
      }

      v165 = a9(v94);
      if ((v96 & 1) == 0)
      {
        goto LABEL_126;
      }

      v507 = v104;
      v166 = *(*(v504 + 56) + 8 * v165);
      v167 = v508;
      swift_bridgeObjectRetain_n();
      v168 = v94;
      v506 = v166;

      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.default.getter();

      v500 = v168;
      if (os_log_type_enabled(v169, v170))
      {
        v516 = v170;
        loga = v169;
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v527 = swift_slowAlloc();
        *v171 = 136446978;
        *(v171 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v527);
        *(v171 + 12) = 2082;
        v173 = *(v512 + 40);
        v534 = *(v512 + 24);
        v535[0] = v173;
        *(v535 + 14) = *(v512 + 54);
        sub_100009DAC(&v534, v526);
        v174 = sub_1000063E8();
        v176 = v175;
        sub_1005812D4(&v534);
        v177 = sub_10000668C(v174, v176, &v527);
        v176, v178, v179, v180, v181, v182, v183, v184;
        *(v171 + 14) = v177;
        *(v171 + 22) = 2114;
        *(v171 + 24) = v168;
        v509 = v172;
        *v172 = v168;
        *(v171 + 32) = 2082;
        v185 = v168;
        v186 = *(v508 + 16);
        if (v186)
        {
          v526[0] = &_swiftEmptyArrayStorage;
          v187 = v185;
          sub_100026EF4(0, v186, 0);
          v195 = v526[0];
          v196 = *(v526[0] + 16);
          v197 = 16 * v196;
          v198 = 32;
          v199 = v508;
          do
          {
            if (*(&v199->super.isa + v198))
            {
              v200 = 0x4449746E65726170;
            }

            else
            {
              v200 = 0x49746E756F636361;
            }

            if (*(&v199->super.isa + v198))
            {
              v201 = 0xE800000000000000;
            }

            else
            {
              v201 = 0xE900000000000044;
            }

            v526[0] = v195;
            v202 = *&v195->clientIdentity[8];
            v203 = v196 + 1;
            if (v196 >= v202 >> 1)
            {
              sub_100026EF4((v202 > 1), v196 + 1, 1);
              v199 = v508;
              v195 = v526[0];
            }

            *v195->clientIdentity = v203;
            v204 = v195 + v197;
            *(v204 + 4) = v200;
            *(v204 + 5) = v201;
            v197 += 16;
            ++v198;
            v196 = v203;
            --v186;
          }

          while (v186);
          v167 = v199;
          v199, v188, v189, v190, v191, v192, v193, v194;
          v76 = v511;
        }

        else
        {
          v212 = v185;
          v508, v213, v214, v215, v216, v217, v218, v219;
          v195 = &_swiftEmptyArrayStorage;
        }

        v220 = Array.description.getter();
        v222 = v221;
        v195, v221, v223, v224, v225, v226, v227, v228;
        v167, v229, v230, v231, v232, v233, v234, v235;
        v236 = sub_10000668C(v220, v222, &v527);
        v222, v237, v238, v239, v240, v241, v242, v243;
        *(v171 + 34) = v236;
        _os_log_impl(&_mh_execute_header, loga, v516, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v171, 0x2Au);
        sub_1000050A4(v509, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v20 = v522;
        v119 = v513;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v20 = v522;
      }

      v498 = *v167->clientIdentity;
      if (v498)
      {
        v244 = 0;
        v499 = &v167->clientIdentity[16];
        v245 = v507;
        while (1)
        {
          if (v244 >= *v167->clientIdentity)
          {
            goto LABEL_137;
          }

          v502 = v499[v244];
          v246 = a10(v245);
          if (v246 >> 62)
          {
            v334 = v246;
            v254 = _CocoaArrayWrapper.endIndex.getter();
            v246 = v334;
          }

          else
          {
            v254 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v501 = v244;
          v505 = v246;
          if (v254)
          {
            break;
          }

          v256 = _swiftEmptyDictionarySingleton;
LABEL_111:
          v505, v247, v248, v249, v250, v251, v252, v253;
          sub_10045BDE8(v256);
          v312 = v311;
          v256, v313, v314, v315, v316, v317, v318, v319;
          v245 = v507;
          a11(v507, v506, v502, v312);
          v244 = v501 + 1;
          v312, v320, v321, v322, v323, v324, v325, v326;
          v20 = v522;
          v119 = v513;
          v167 = v508;
          if (v501 + 1 == v498)
          {
            v508, v327, v328, v329, v330, v331, v332, v333;
            goto LABEL_115;
          }
        }

        v255 = 0;
        logb = (v246 & 0xC000000000000001);
        v514 = v246 + 32;
        v517 = v246 & 0xFFFFFFFFFFFFFF8;
        v256 = _swiftEmptyDictionarySingleton;
        v510 = v254;
        while (2)
        {
          if (logb)
          {
            v259 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v260 = __OFADD__(v255++, 1);
            if (v260)
            {
              goto LABEL_132;
            }
          }

          else
          {
            if (v255 >= *(v517 + 16))
            {
              goto LABEL_133;
            }

            v259 = *(v514 + 8 * v255);
            v260 = __OFADD__(v255++, 1);
            if (v260)
            {
              goto LABEL_132;
            }
          }

          v261 = *(v76 + 16);
          v269 = v259;
          if (!v261 || (v270 = sub_100393C74(), (v262 & 1) == 0))
          {
            v522, v262, v263, v264, v265, v266, v267, v268;
            v508, v342, v343, v344, v345, v346, v347, v348;
            v256, v349, v350, v351, v352, v353, v354, v355;
            v76, v356, v357, v358, v359, v360, v361, v362;
            v504, v363, v364, v365, v366, v367, v368, v369;
            v505, v370, v371, v372, v373, v374, v375, v376;

            a6 = v269;
            v74 = Logger.logObject.getter();
            v377 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v74, v377))
            {
              goto LABEL_123;
            }

            v378 = swift_slowAlloc();
            v536 = swift_slowAlloc();
            v527 = v536;
            *v378 = 136446978;
            *(v378 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v527);
            *(v378 + 12) = 2082;
            v379 = *(v512 + 40);
            v532 = *(v512 + 24);
            v533[0] = v379;
            *(v533 + 14) = *(v512 + 54);
            sub_100009DAC(&v532, v526);
            v380 = sub_1000063E8();
            v382 = v381;
            sub_1005812D4(&v532);
            v383 = sub_10000668C(v380, v382, &v527);
            v382, v384, v385, v386, v387, v388, v389, v390;
            *(v378 + 14) = v383;
            *(v378 + 22) = 2080;
            v391 = [(RDXPCStorePerformer *)a6 description];
            v392 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v394 = v393;

            v395 = sub_10000668C(v392, v394, &v527);
            v394, v396, v397, v398, v399, v400, v401, v402;
            *(v378 + 24) = v395;
            *(v378 + 32) = 2080;
            v403 = v507;
            v404 = [(RDXPCStorePerformer *)a6 description];
            v405 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v407 = v406;

            v408 = sub_10000668C(v405, v407, &v527);
            v407, v409, v410, v411, v412, v413, v414, v415;
            *(v378 + 34) = v408;
            _os_log_impl(&_mh_execute_header, v74, v377, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v378, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_124;
          }

          v271 = *(*(v76 + 56) + 8 * v270);
          if ((v256 & 0xC000000000000001) != 0)
          {
            if (v256 < 0)
            {
              v272 = v256;
            }

            else
            {
              v272 = v256 & 0xFFFFFFFFFFFFFF8;
            }

            v273 = v271;
            v274 = __CocoaDictionary.count.getter();
            if (__OFADD__(v274, 1))
            {
              goto LABEL_135;
            }

            v275 = v271;
            v276 = sub_10021D008(v272, v274 + 1);
          }

          else
          {
            v275 = *(*(v76 + 56) + 8 * v270);
            v277 = v271;
            v276 = v256;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v526[0] = v276;
          v279 = v269;
          v281 = sub_10002B924(v269);
          v282 = *(v276 + 16);
          v283 = (v280 & 1) == 0;
          v284 = v282 + v283;
          if (__OFADD__(v282, v283))
          {
            goto LABEL_134;
          }

          v285 = v280;
          if (*(v276 + 24) >= v284)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v256 = v276;
              if ((v280 & 1) == 0)
              {
                goto LABEL_87;
              }

              goto LABEL_66;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v290 = static _DictionaryStorage.copy(original:)();
            v256 = v290;
            if (*(v276 + 16))
            {
              v298 = (v290 + 64);
              __src = (v276 + 64);
              v299 = ((1 << *(v256 + 32)) + 63) >> 6;
              if (v256 != v276 || v298 >= &__src[8 * v299])
              {
                memmove(v298, __src, 8 * v299);
              }

              v300 = 0;
              *(v256 + 16) = *(v276 + 16);
              v301 = 1 << *(v276 + 32);
              if (v301 < 64)
              {
                v302 = ~(-1 << v301);
              }

              else
              {
                v302 = -1;
              }

              v493 = (v301 + 63) >> 6;
              v303 = v302 & *(v276 + 64);
              if (v303)
              {
                do
                {
                  v304 = __clz(__rbit64(v303));
                  v496 = (v303 - 1) & v303;
LABEL_106:
                  v307 = v304 | (v300 << 6);
                  v308 = *(*(v276 + 48) + 8 * v307);
                  v495 = *(*(v276 + 56) + 8 * v307);
                  *(*(v256 + 48) + 8 * v307) = v308;
                  *(*(v256 + 56) + 8 * v307) = v495;
                  v309 = v308;
                  v310 = v495;
                  v303 = v496;
                }

                while (v496);
              }

              v305 = v300;
              while (1)
              {
                v300 = v305 + 1;
                if (__OFADD__(v305, 1))
                {
                  goto LABEL_139;
                }

                if (v300 >= v493)
                {
                  break;
                }

                v306 = *&__src[8 * v300];
                ++v305;
                if (v306)
                {
                  v304 = __clz(__rbit64(v306));
                  v496 = (v306 - 1) & v306;
                  goto LABEL_106;
                }
              }
            }

            v276, v291, v292, v293, v294, v295, v296, v297;
            if (v285)
            {
              goto LABEL_66;
            }

LABEL_87:
            *(v256 + 8 * (v281 >> 6) + 64) |= 1 << v281;
            *(*(v256 + 48) + 8 * v281) = v279;
            *(*(v256 + 56) + 8 * v281) = v275;

            v288 = *(v256 + 16);
            v260 = __OFADD__(v288, 1);
            v289 = v288 + 1;
            if (v260)
            {
              goto LABEL_136;
            }

            *(v256 + 16) = v289;
          }

          else
          {
            sub_10036CABC(v284, isUniquelyReferenced_nonNull_native);
            v256 = v526[0];
            v286 = sub_10002B924(v279);
            if ((v285 & 1) != (v287 & 1))
            {
              goto LABEL_140;
            }

            v281 = v286;
            if ((v285 & 1) == 0)
            {
              goto LABEL_87;
            }

LABEL_66:

            v257 = *(v256 + 56);
            v258 = *(v257 + 8 * v281);
            *(v257 + 8 * v281) = v275;
          }

          v76 = v511;
          if (v255 == v510)
          {
            goto LABEL_111;
          }

          continue;
        }
      }

      v167, v205, v206, v207, v208, v209, v210, v211;
      v245 = v507;
LABEL_115:
      if (*(v512 + 104) == 1)
      {
        [v506 updateChangeCount];
      }

      v141 = v497 + 1;
      v142 = &selRef_persistentStoreForIdentifier_;
      if ((v497 + 1) == v536)
      {
        v20, v335, v336, v337, v338, v339, v340, v341;
        v76, v486, v487, v488, v489, v490, v491, v492;
        v504, v127, v128, v129, v130, v131, v132, v133;
        return;
      }
    }

    v146 = v94;

    v147 = __CocoaDictionary.lookup(_:)();
    if (v147)
    {
      v527 = v147;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v148 = v526[0];
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v526[0] = &_swiftEmptyArrayStorage;
  v95 = v526;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v94 < 0)
  {
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
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v103 = 0;
    v104 = (log & 0xC000000000000001);
    while (1)
    {
      v105 = (v103 + 1);
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v104)
      {
        v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v103 >= *((log & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          v103, v96, v97, v98, v99, v100, v101, v102;
          v508, v465, v466, v467, v468, v469, v470, v471;
          v76, v472, v473, v474, v475, v476, v477, v478;
          v503, v479, v480, v481, v482, v483, v484, v485;

          return;
        }

        v106 = log[v103 + 4].isa;
      }

      v107 = v106;
      v76 = a7([(objc_class *)v106 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v95 = v526;
      specialized ContiguousArray._endMutation()();
      ++v103;
      if (v105 == v94)
      {
        v108 = v526[0];
        v20 = v522;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_126:
    v76, v96, v97, v98, v99, v100, v101, v102;
    v522, v416, v417, v418, v419, v420, v421, v422;
    v508, v423, v424, v425, v426, v427, v428, v429;
    v95, v430, v431, v432, v433, v434, v435, v436;
    v437 = v94;

    v438 = Logger.logObject.getter();
    v439 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v438, v439))
    {
      v440 = swift_slowAlloc();
      v527 = swift_slowAlloc();
      *v440 = 136446722;
      *(v440 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v527);
      *(v440 + 12) = 2082;
      v441 = *(v512 + 40);
      v530 = *(v512 + 24);
      v531[0] = v441;
      *(v531 + 14) = *(v512 + 54);
      sub_100009DAC(&v530, v526);
      v442 = sub_1000063E8();
      v444 = v443;
      sub_1005812D4(&v530);
      v445 = sub_10000668C(v442, v444, &v527);
      v444, v446, v447, v448, v449, v450, v451, v452;
      *(v440 + 14) = v445;
      *(v440 + 22) = 2080;
      v453 = [v437 description];
      v454 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v456 = v455;

      v457 = sub_10000668C(v454, v456, &v527);
      v456, v458, v459, v460, v461, v462, v463, v464;
      *(v440 + 24) = v457;
      _os_log_impl(&_mh_execute_header, v438, v439, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v440, 0x20u);
      swift_arrayDestroy();
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v437];
    swift_willThrow();
  }
}

void sub_10064A2B0(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v535 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v530 = &v535;
  v531 = v3;
  v10 = sub_1003E0D2C(sub_1006AC5F4, v529, a1);
  if (!v4)
  {
    v11 = v10;
    v524 = a1;
    if (qword_100936008 != -1)
    {
      swift_once();
    }

    v12 = 0;
    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100945730);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v8, v16, v17, v18, v19, v20, v21, v22;
    v526 = v11;
    v522 = a3;
    if (os_log_type_enabled(v14, v15))
    {
      v527 = v9;
      v23 = swift_slowAlloc();
      v542 = swift_slowAlloc();
      v532[0] = v542;
      *v23 = 136446978;
      *(v23 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v532);
      *(v23 + 12) = 2048;
      *(v23 + 14) = *(v11 + 2);
      v11, v24, v25, v26, v27, v28, v29, v30;
      *(v23 + 22) = 2082;
      type metadata accessor for REMCDTemplate();
      v31 = v5;
      v32 = [swift_getObjCClassFromMetadata() description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v5 = v31;
      v36 = sub_10000668C(v33, v35, v532);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v23 + 24) = v36;
      v11 = v526;
      *(v23 + 32) = 2082;
      *(v23 + 34) = sub_10000668C(v527, v8, v532);
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v23, 0x2Au);
      v8 = v542;
      swift_arrayDestroy();
    }

    else
    {

      v11, v51, v52, v53, v54, v55, v56, v57;
    }

    v542 = *(v11 + 2);
    if (!v542)
    {
      v11, v44, v45, v46, v47, v48, v49, v50;
      return;
    }

    v534 = _swiftEmptySetSingleton;
    v528 = v11 + 32;

    v65 = 0;
    do
    {
      if (v65 >= *(v11 + 2))
      {
        __break(1u);
LABEL_127:

        v413 = v512;
LABEL_128:
        [objc_opt_self() noSuchObjectErrorWithObjectID:v11];

        swift_willThrow();
        return;
      }

      v66 = &v528[16 * v65];
      v8 = *(v66 + 1);
      v67 = *(v8 + 16);
      if (v67)
      {
        v68 = *v66;

        v69 = 32;
        do
        {
          v70 = sub_1001DB6FC(v68, *(v8 + v69));
          sub_100392144(v70);
          v70, v71, v72, v73, v74, v75, v76, v77;
          ++v69;
          --v67;
        }

        while (v67);
        v8, v78, v79, v80, v81, v82, v83, v84;

        v11 = v526;
      }

      ++v65;
    }

    while (v65 != v542);
    v11, v58, v59, v60, v61, v62, v63, v64;
    if (v524 >> 62)
    {
      v85 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v85 = *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v85)
    {
      v97 = &_swiftEmptyArrayStorage;
      goto LABEL_29;
    }

    v519 = v5;
    v532[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v85 < 0)
    {
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
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {
      v93 = 0;
      v5 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v94 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          break;
        }

        if ((v524 & 0xC000000000000001) != 0)
        {
          v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v93 >= *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            v93, v86, v87, v88, v89, v90, v91, v92;
            v513, v472, v473, v474, v475, v476, v477, v478;
            v11, v479, v480, v481, v482, v483, v484, v485;
            0, v486, v487, v488, v489, v490, v491, v492;

            return;
          }

          v95 = *(v524 + 8 * v93 + 32);
        }

        v96 = v95;
        v67 = sub_1005E96B8([v95 remObjectID]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = *(v532[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v93 = v93 + 1;
        if (v94 == v85)
        {
          v97 = v532[0];
          v5 = v519;
LABEL_29:
          v98 = v534;
          sub_1005E2514(v534);
          v100 = v99;
          v98, v101, v102, v103, v104, v105, v106, v107;
          v523 = sub_10065F214(v100, v522);
          v100, v108, v109, v110, v111, v112, v113, v114;
          v12 = sub_10066A5A8(v97, v522);
          v97, v122, v123, v124, v125, v126, v127, v128;
          swift_beginAccess();
          v129 = 0;
          v130 = &selRef_persistentStoreForIdentifier_;
          v93 = v526;
          v509 = v12;
          v11 = v523;
          while (1)
          {
            if (v129 >= *(v93 + 2))
            {
              goto LABEL_143;
            }

            v503 = v129;
            v131 = &v528[16 * v129];
            v132 = *(v131 + 1);
            v133 = *v131;
            v513 = v132;

            v85 = sub_1005E96B8([v133 v130[106]]);

            v134 = v522[6];
            v512 = v133;
            if ((v134 & 0xC000000000000001) != 0)
            {
              v135 = v85;

              v136 = __CocoaDictionary.lookup(_:)();
              if (v136)
              {
                v533 = v136;
                sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
                swift_dynamicCast();
                v137 = v532[0];

                v134, v138, v139, v140, v141, v142, v143, v144;
              }

              else
              {

                v134, v155, v156, v157, v158, v159, v160, v161;
                v137 = 0;
              }

              v93 = v526;
              v11 = v523;
            }

            else if (*(v134 + 16))
            {
              v145 = v85;

              v146 = sub_10002B924(v145);
              if (v147)
              {
                v137 = *(*(v134 + 56) + 8 * v146);

                v134, v148, v149, v150, v151, v152, v153, v154;
              }

              else
              {

                v134, v162, v163, v164, v165, v166, v167, v168;
                v137 = 0;
              }

              v93 = v526;
            }

            else
            {
              v137 = 0;
            }

            if (!*(v12 + 16))
            {
              goto LABEL_130;
            }

            v169 = sub_100393C74();
            if ((v86 & 1) == 0)
            {
              goto LABEL_130;
            }

            v170 = *(*(v12 + 56) + 8 * v169);
            v171 = v513;
            swift_bridgeObjectRetain_n();
            v172 = v85;
            v511 = v170;

            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.default.getter();

            v506 = v172;
            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              v176 = swift_slowAlloc();
              v533 = swift_slowAlloc();
              *v175 = 136446978;
              *(v175 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v533);
              *(v175 + 12) = 2082;
              v177 = *(v5 + 5);
              v540 = *(v5 + 3);
              v541[0] = v177;
              *(v541 + 14) = *(v5 + 54);
              sub_100009DAC(&v540, v532);
              v178 = sub_1000063E8();
              v180 = v179;
              sub_1005812D4(&v540);
              v181 = sub_10000668C(v178, v180, &v533);
              v180, v182, v183, v184, v185, v186, v187, v188;
              *(v175 + 14) = v181;
              *(v175 + 22) = 2114;
              *(v175 + 24) = v172;
              v517 = v176;
              *v176 = v172;
              *(v175 + 32) = 2082;
              v189 = *(v513 + 16);
              if (v189)
              {
                v515 = v174;
                v520 = v5;
                v532[0] = &_swiftEmptyArrayStorage;
                v190 = v172;
                sub_100026EF4(0, v189, 0);
                v198 = v532[0];
                v199 = 32;
                v200 = v513;
                do
                {
                  v201 = 0xD000000000000014;
                  if (*(&v200->super.isa + v199) == 1)
                  {
                    v201 = 0x6341746E65726170;
                    v202 = 0xEF4449746E756F63;
                  }

                  else
                  {
                    v202 = 0x80000001007E9FD0;
                  }

                  if (*(&v200->super.isa + v199))
                  {
                    v203 = v201;
                  }

                  else
                  {
                    v203 = 0x49746E756F636361;
                  }

                  if (*(&v200->super.isa + v199))
                  {
                    v204 = v202;
                  }

                  else
                  {
                    v204 = 0xE900000000000044;
                  }

                  v532[0] = v198;
                  v206 = *v198->clientIdentity;
                  v205 = *&v198->clientIdentity[8];
                  if (v206 >= v205 >> 1)
                  {
                    sub_100026EF4((v205 > 1), v206 + 1, 1);
                    v200 = v513;
                    v198 = v532[0];
                  }

                  *v198->clientIdentity = v206 + 1;
                  v207 = v198 + 16 * v206;
                  *(v207 + 4) = v203;
                  *(v207 + 5) = v204;
                  ++v199;
                  --v189;
                }

                while (v189);
                v171 = v200;
                v200, v191, v192, v193, v194, v195, v196, v197;
                v5 = v520;
                v174 = v515;
              }

              else
              {
                v215 = v172;
                v513, v216, v217, v218, v219, v220, v221, v222;
                v198 = &_swiftEmptyArrayStorage;
              }

              v223 = Array.description.getter();
              v225 = v224;
              v198, v224, v226, v227, v228, v229, v230, v231;
              v171, v232, v233, v234, v235, v236, v237, v238;
              v239 = sub_10000668C(v223, v225, &v533);
              v225, v240, v241, v242, v243, v244, v245, v246;
              *(v175 + 34) = v239;
              _os_log_impl(&_mh_execute_header, v173, v174, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v175, 0x2Au);
              sub_1000050A4(v517, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v12 = v509;
              v11 = v523;
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v93 = v526;
            v504 = *v171->clientIdentity;
            if (v504)
            {
              break;
            }

            v171, v208, v209, v210, v211, v212, v213, v214;
            v248 = v512;
LABEL_120:
            if (*(v5 + 104) == 1)
            {
              [v511 updateChangeCount];
            }

            v129 = v503 + 1;
            v130 = &selRef_persistentStoreForIdentifier_;
            if (v503 + 1 == v542)
            {
              v93, v341, v342, v343, v344, v345, v346, v347;
              v11, v493, v494, v495, v496, v497, v498, v499;
              v12, v115, v116, v117, v118, v119, v120, v121;
              return;
            }
          }

          v247 = 0;
          v505 = &v171->clientIdentity[16];
          v248 = v512;
          while (1)
          {
            if (v247 >= *v171->clientIdentity)
            {
              goto LABEL_142;
            }

            v508 = v505[v247];
            v249 = sub_1001DB6FC(v248, v508);
            if (v249 >> 62)
            {
              v340 = v249;
              v257 = _CocoaArrayWrapper.endIndex.getter();
              v249 = v340;
            }

            else
            {
              v257 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v507 = v247;
            v510 = v249;
            if (v257)
            {
              break;
            }

            v259 = _swiftEmptyDictionarySingleton;
LABEL_116:
            v510, v250, v251, v252, v253, v254, v255, v256;
            sub_10045BDE8(v259);
            v318 = v317;
            v259, v319, v320, v321, v322, v323, v324, v325;
            v248 = v512;
            sub_1001DBF70(v512, v511, v508, v318);
            v247 = v507 + 1;
            v318, v326, v327, v328, v329, v330, v331, v332;
            v12 = v509;
            v171 = v513;
            if (v507 + 1 == v504)
            {
              v513, v333, v334, v335, v336, v337, v338, v339;
              goto LABEL_120;
            }
          }

          v258 = 0;
          v516 = v249 & 0xFFFFFFFFFFFFFF8;
          v518 = v249 & 0xC000000000000001;
          v514 = &v249->clientIdentity[16];
          v259 = _swiftEmptyDictionarySingleton;
          while (2)
          {
            if (v518)
            {
              v263 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v264 = __OFADD__(v258++, 1);
              if (v264)
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v258 >= *(v516 + 16))
              {
                goto LABEL_138;
              }

              v263 = *&v514[8 * v258];
              v264 = __OFADD__(v258++, 1);
              if (v264)
              {
                goto LABEL_137;
              }
            }

            v265 = *(v11 + 2);
            v266 = v263;
            v274 = v266;
            if (!v265 || (v275 = v266, v276 = sub_100393C74(), v274 = v275, (v267 & 1) == 0))
            {
              v93, v267, v268, v269, v270, v271, v272, v273;
              v513, v348, v349, v350, v351, v352, v353, v354;
              v259, v355, v356, v357, v358, v359, v360, v361;
              v11, v362, v363, v364, v365, v366, v367, v368;
              v509, v369, v370, v371, v372, v373, v374, v375;
              v510, v376, v377, v378, v379, v380, v381, v382;

              v11 = v274;
              v8 = Logger.logObject.getter();
              v383 = static os_log_type_t.error.getter();

              if (!os_log_type_enabled(v8, v383))
              {
                goto LABEL_127;
              }

              v384 = swift_slowAlloc();
              v542 = swift_slowAlloc();
              v533 = v542;
              *v384 = 136446978;
              *(v384 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v533);
              *(v384 + 12) = 2082;
              v385 = *(v5 + 5);
              v538 = *(v5 + 3);
              v539[0] = v385;
              *(v539 + 14) = *(v5 + 54);
              sub_100009DAC(&v538, v532);
              v386 = sub_1000063E8();
              v388 = v387;
              sub_1005812D4(&v538);
              v389 = sub_10000668C(v386, v388, &v533);
              v388, v390, v391, v392, v393, v394, v395, v396;
              *(v384 + 14) = v389;
              *(v384 + 22) = 2080;
              v397 = [v11 description];
              v398 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v400 = v399;

              v401 = sub_10000668C(v398, v400, &v533);
              v400, v402, v403, v404, v405, v406, v407, v408;
              *(v384 + 24) = v401;
              *(v384 + 32) = 2080;
              v409 = [v11 description];
              v410 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v412 = v411;

              v413 = v512;
              v414 = sub_10000668C(v410, v412, &v533);
              v412, v415, v416, v417, v418, v419, v420, v421;
              *(v384 + 34) = v414;
              _os_log_impl(&_mh_execute_header, v8, v383, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v384, 0x2Au);
              swift_arrayDestroy();

              goto LABEL_128;
            }

            v277 = *(*(v11 + 7) + 8 * v276);
            v525 = v277;
            if ((v259 & 0xC000000000000001) != 0)
            {
              if (v259 < 0)
              {
                v278 = v259;
              }

              else
              {
                v278 = v259 & 0xFFFFFFFFFFFFFF8;
              }

              v279 = v277;
              v280 = __CocoaDictionary.count.getter();
              if (__OFADD__(v280, 1))
              {
                goto LABEL_140;
              }

              v281 = sub_10021D008(v278, v280 + 1);
            }

            else
            {
              v282 = v277;
              v281 = v259;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v532[0] = v281;
            v285 = sub_10002B924(v275);
            v286 = *(v281 + 16);
            v287 = (v284 & 1) == 0;
            v288 = v286 + v287;
            if (__OFADD__(v286, v287))
            {
              goto LABEL_139;
            }

            v289 = v284;
            if (*(v281 + 24) < v288)
            {
              sub_10036CABC(v288, isUniquelyReferenced_nonNull_native);
              v259 = v532[0];
              v290 = sub_10002B924(v275);
              if ((v289 & 1) != (v291 & 1))
              {
                goto LABEL_145;
              }

              v285 = v290;
              goto LABEL_89;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v292 = v275;
              v259 = v281;
              v93 = v526;
              if ((v284 & 1) == 0)
              {
                goto LABEL_93;
              }

LABEL_71:

              v260 = *(v259 + 56);
              v261 = v292;
              v262 = *(v260 + 8 * v285);
              *(v260 + 8 * v285) = v525;
            }

            else
            {
              v521 = v5;
              sub_1000F5104(&qword_10093D598, &unk_10079B210);
              v295 = static _DictionaryStorage.copy(original:)();
              v259 = v295;
              if (*(v281 + 16))
              {
                v303 = (v295 + 64);
                __src = (v281 + 64);
                v304 = ((1 << *(v259 + 32)) + 63) >> 6;
                if (v259 != v281 || v303 >= &__src[8 * v304])
                {
                  memmove(v303, __src, 8 * v304);
                }

                v305 = 0;
                *(v259 + 16) = *(v281 + 16);
                v306 = 1 << *(v281 + 32);
                if (v306 < 64)
                {
                  v307 = ~(-1 << v306);
                }

                else
                {
                  v307 = -1;
                }

                v500 = (v306 + 63) >> 6;
                v308 = v307 & *(v281 + 64);
                if (v308)
                {
                  do
                  {
                    v309 = __clz(__rbit64(v308));
                    v502 = (v308 - 1) & v308;
LABEL_112:
                    v312 = v309 | (v305 << 6);
                    v313 = *(*(v281 + 48) + 8 * v312);
                    v314 = *(*(v281 + 56) + 8 * v312);
                    *(*(v259 + 48) + 8 * v312) = v313;
                    *(*(v259 + 56) + 8 * v312) = v314;
                    v315 = v313;
                    v316 = v314;
                    v308 = v502;
                  }

                  while (v502);
                }

                v310 = v305;
                while (1)
                {
                  v305 = v310 + 1;
                  if (__OFADD__(v310, 1))
                  {
                    goto LABEL_144;
                  }

                  if (v305 >= v500)
                  {
                    break;
                  }

                  v311 = *&__src[8 * v305];
                  ++v310;
                  if (v311)
                  {
                    v309 = __clz(__rbit64(v311));
                    v502 = (v311 - 1) & v311;
                    goto LABEL_112;
                  }
                }
              }

              v281, v296, v297, v298, v299, v300, v301, v302;
              v5 = v521;
LABEL_89:
              v93 = v526;
              v292 = v275;
              if (v289)
              {
                goto LABEL_71;
              }

LABEL_93:
              *(v259 + 8 * (v285 >> 6) + 64) |= 1 << v285;
              *(*(v259 + 48) + 8 * v285) = v292;
              *(*(v259 + 56) + 8 * v285) = v525;

              v293 = *(v259 + 16);
              v264 = __OFADD__(v293, 1);
              v294 = v293 + 1;
              if (v264)
              {
                goto LABEL_141;
              }

              *(v259 + 16) = v294;
            }

            v11 = v523;
            if (v258 == v257)
            {
              goto LABEL_116;
            }

            continue;
          }
        }
      }

      __break(1u);
LABEL_130:
      v11, v86, v87, v88, v89, v90, v91, v92;
      v93, v422, v423, v424, v425, v426, v427, v428;
      v513, v429, v430, v431, v432, v433, v434, v435;
      v12, v436, v437, v438, v439, v440, v441, v442;
      v443 = v85;

      v444 = Logger.logObject.getter();
      v445 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v444, v445))
      {
        v446 = swift_slowAlloc();
        v533 = swift_slowAlloc();
        *v446 = 136446722;
        *(v446 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v533);
        *(v446 + 12) = 2082;
        v447 = *(v5 + 5);
        v536 = *(v5 + 3);
        v537[0] = v447;
        *(v537 + 14) = *(v5 + 54);
        sub_100009DAC(&v536, v532);
        v448 = sub_1000063E8();
        v450 = v449;
        sub_1005812D4(&v536);
        v451 = sub_10000668C(v448, v450, &v533);
        v450, v452, v453, v454, v455, v456, v457, v458;
        *(v446 + 14) = v451;
        *(v446 + 22) = 2080;
        v459 = [v443 description];
        v460 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v462 = v461;

        v463 = v512;
        v464 = sub_10000668C(v460, v462, &v533);
        v462, v465, v466, v467, v468, v469, v470, v471;
        *(v446 + 24) = v464;
        _os_log_impl(&_mh_execute_header, v444, v445, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v446, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v463 = v512;
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v443];
      swift_willThrow();
    }
  }
}

void sub_10064B780(unint64_t a1, uint64_t a2, void *a3)
{
  v493 = a2;
  v8 = a3[2];
  v7 = a3[3];
  v489 = &v493;
  v9 = sub_1003E0D58(sub_1006AC8A0, v488, a1);
  if (v4)
  {
    return;
  }

  v10 = v9;
  v481 = a3;
  v11 = 0;
  v12 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v7, v16, v17, v18, v19, v20, v21, v22;
  v482 = v12;
  v485 = v10;
  if (os_log_type_enabled(v14, v15))
  {
    v486 = v8;
    v8 = swift_slowAlloc();
    v500 = swift_slowAlloc();
    v490[0] = v500;
    *v8 = 136446978;
    *(v8 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v490);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *v10->clientIdentity;
    v10, v23, v24, v25, v26, v27, v28, v29;
    *(v8 + 22) = 2082;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v30 = [swift_getObjCClassFromMetadata() description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v11 = 0;
    v34 = sub_10000668C(v31, v33, v490);
    v33, v35, v36, v37, v38, v39, v40, v41;
    *(v8 + 24) = v34;
    v10 = v485;
    *(v8 + 32) = 2082;
    *(v8 + 34) = sub_10000668C(v486, v7, v490);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v8, 0x2Au);
    v7 = v500;
    swift_arrayDestroy();
  }

  else
  {

    v10, v49, v50, v51, v52, v53, v54, v55;
  }

  v500 = *v10->clientIdentity;
  if (!v500)
  {
    v10, v42, v43, v44, v45, v46, v47, v48;
    return;
  }

  v492 = _swiftEmptySetSingleton;
  v487 = &v10->clientIdentity[16];

  v63 = 0;
  do
  {
    if (v63 >= *v10->clientIdentity)
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      v11, v56, v57, v58, v59, v60, v61, v62;
      v485, v381, v382, v383, v384, v385, v386, v387;
      v474, v388, v389, v390, v391, v392, v393, v394;
      v8, v395, v396, v397, v398, v399, v400, v401;
      v402 = v7;

      v403 = Logger.logObject.getter();
      v404 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v403, v404))
      {
        v405 = v10;
        v406 = swift_slowAlloc();
        v491 = swift_slowAlloc();
        *v406 = 136446722;
        *(v406 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v491);
        *(v406 + 12) = 2082;
        v407 = *&v405->clientIdentity[24];
        v494 = *&v405->clientIdentity[8];
        v495[0] = v407;
        *(v495 + 14) = *&v405->clientIdentity[38];
        sub_100009DAC(&v494, v490);
        v408 = sub_1000063E8();
        v410 = v409;
        sub_1005812D4(&v494);
        v411 = sub_10000668C(v408, v410, &v491);
        v410, v412, v413, v414, v415, v416, v417, v418;
        *(v406 + 14) = v411;
        *(v406 + 22) = 2080;
        v419 = [v402 description];
        v420 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v422 = v421;

        v423 = sub_10000668C(v420, v422, &v491);
        v424 = v422;
        v15 = v471;
        v424, v425, v426, v427, v428, v429, v430, v431;
        *(v406 + 24) = v423;
        _os_log_impl(&_mh_execute_header, v403, v404, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v406, 0x20u);
        swift_arrayDestroy();
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v402];
      swift_willThrow();

      return;
    }

    v64 = &v487[16 * v63];
    v7 = *(v64 + 1);
    v8 = *(v7 + 16);
    if (v8)
    {
      v65 = *v64;

      v15 = 32;
      do
      {
        v66 = sub_10022FDD4(v65, *(v7 + v15));
        sub_100392144(v66);
        v66, v67, v68, v69, v70, v71, v72, v73;
        ++v15;
        --v8;
      }

      while (v8);
      v7, v74, v75, v76, v77, v78, v79, v80;

      v10 = v485;
    }

    ++v63;
  }

  while (v63 != v500);
  v10, v56, v57, v58, v59, v60, v61, v62;
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  if (!v7)
  {
    v83 = &_swiftEmptyArrayStorage;
LABEL_29:
    v84 = v492;
    sub_1005E2514(v492);
    v86 = v85;
    v84, v87, v88, v89, v90, v91, v92, v93;
    v11 = sub_10065F214(v86, v481);
    v86, v101, v102, v103, v104, v105, v106, v107;
    v108 = sub_10066AE78(v83, v481);
    v10 = v482;
    v83, v109, v110, v111, v112, v113, v114, v115;
    swift_beginAccess();
    v116 = 0;
    v117 = &selRef_persistentStoreForIdentifier_;
    v473 = v108;
    v476 = v11;
    while (1)
    {
      if (v116 >= *v485->clientIdentity)
      {
        goto LABEL_142;
      }

      v464 = v116;
      v118 = &v487[16 * v116];
      v119 = *(v118 + 1);
      v15 = *v118;
      v474 = v119;

      v7 = sub_1005E3810([v15 v117[106]], &unk_10093F770, off_1008D41E8);

      v120 = v481[6];
      if ((v120 & 0xC000000000000001) != 0)
      {
        v121 = v7;

        v122 = __CocoaDictionary.lookup(_:)();
        if (!v122)
        {
          goto LABEL_38;
        }

        v491 = v122;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v123 = v490[0];
      }

      else
      {
        if (!*(v120 + 16))
        {
          v123 = 0;
          goto LABEL_40;
        }

        v121 = v7;

        v124 = sub_10002B924(v121);
        if ((v125 & 1) == 0)
        {
LABEL_38:

          v120, v133, v134, v135, v136, v137, v138, v139;
          v123 = 0;
          goto LABEL_39;
        }

        v123 = *(*(v120 + 56) + 8 * v124);
      }

      v120, v126, v127, v128, v129, v130, v131, v132;
LABEL_39:
      v10 = v482;
LABEL_40:

      v8 = v473;
      v471 = v15;
      if (!*(v473 + 16))
      {
        goto LABEL_130;
      }

      v140 = sub_100393C74();
      if ((v56 & 1) == 0)
      {
        goto LABEL_130;
      }

      v141 = *(*(v473 + 56) + 8 * v140);
      v142 = v474;
      swift_bridgeObjectRetain_n();
      v143 = v7;
      v472 = v141;

      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.default.getter();

      v467 = v143;
      if (os_log_type_enabled(v144, v145))
      {
        v477 = v145;
        log = v144;
        v146 = swift_slowAlloc();
        v483 = swift_slowAlloc();
        v491 = swift_slowAlloc();
        *v146 = 136446978;
        *(v146 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v491);
        *(v146 + 12) = 2082;
        v147 = *&v10->clientIdentity[24];
        v498 = *&v10->clientIdentity[8];
        v499[0] = v147;
        *(v499 + 14) = *&v10->clientIdentity[38];
        sub_100009DAC(&v498, v490);
        v148 = sub_1000063E8();
        v150 = v149;
        sub_1005812D4(&v498);
        v151 = sub_10000668C(v148, v150, &v491);
        v150, v152, v153, v154, v155, v156, v157, v158;
        *(v146 + 14) = v151;
        *(v146 + 22) = 2114;
        *(v146 + 24) = v143;
        *v483 = v143;
        *(v146 + 32) = 2082;
        v159 = *(v474 + 16);
        if (v159)
        {
          v490[0] = &_swiftEmptyArrayStorage;
          v160 = v143;
          sub_100026EF4(0, v159, 0);
          v167 = v490[0];
          v168 = 32;
          do
          {
            v169 = 0xD000000000000014;
            if (*(v142 + v168) == 2)
            {
              v169 = 0x694C746E65726170;
              v170 = 0xEC00000044497473;
            }

            else
            {
              v170 = 0x80000001007E9FD0;
            }

            if (*(v142 + v168))
            {
              v171 = 0x6341746E65726170;
            }

            else
            {
              v171 = 0x49746E756F636361;
            }

            if (*(v142 + v168))
            {
              v172 = 0xEF4449746E756F63;
            }

            else
            {
              v172 = 0xE900000000000044;
            }

            if (*(v142 + v168) <= 1u)
            {
              v173 = v171;
            }

            else
            {
              v173 = v169;
            }

            if (*(v142 + v168) <= 1u)
            {
              v174 = v172;
            }

            else
            {
              v174 = v170;
            }

            v490[0] = v167;
            v176 = *v167->clientIdentity;
            v175 = *&v167->clientIdentity[8];
            if (v176 >= v175 >> 1)
            {
              sub_100026EF4((v175 > 1), v176 + 1, 1);
              v142 = v474;
              v167 = v490[0];
            }

            *v167->clientIdentity = v176 + 1;
            v177 = v167 + 16 * v176;
            *(v177 + 4) = v173;
            *(v177 + 5) = v174;
            ++v168;
            --v159;
          }

          while (v159);
          v142, 0x6341746E65726170, v161, v162, v163, v164, v165, v166;
          v10 = v482;
          v8 = v473;
          v11 = v476;
        }

        else
        {
          v185 = v143;
          v474, v186, v187, v188, v189, v190, v191, v192;
          v167 = &_swiftEmptyArrayStorage;
        }

        v193 = Array.description.getter();
        v195 = v194;
        v167, v194, v196, v197, v198, v199, v200, v201;
        v142, v202, v203, v204, v205, v206, v207, v208;
        v209 = sub_10000668C(v193, v195, &v491);
        v195, v210, v211, v212, v213, v214, v215, v216;
        *(v146 + 34) = v209;
        _os_log_impl(&_mh_execute_header, log, v477, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v146, 0x2Au);
        sub_1000050A4(v483, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v15 = v471;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v465 = *(v142 + 16);
      if (v465)
      {
        v217 = 0;
        v466 = v142 + 32;
        while (1)
        {
          if (v217 >= *(v142 + 16))
          {
            goto LABEL_141;
          }

          v468 = v217;
          v469 = *(v466 + v217);
          v218 = sub_10022FDD4(v15, *(v466 + v217));
          if (!(v218 >> 62))
          {
            v226 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v470 = v218;
            if (v226)
            {
              break;
            }

            goto LABEL_118;
          }

          v281 = v218;
          v226 = _CocoaArrayWrapper.endIndex.getter();
          v218 = v281;
          v470 = v281;
          if (v226)
          {
            break;
          }

LABEL_118:
          v228 = _swiftEmptyDictionarySingleton;
LABEL_119:
          v470, v219, v220, v221, v222, v223, v224, v225;
          sub_10045BDE8(v228);
          v283 = v282;
          v228, v284, v285, v286, v287, v288, v289, v290;
          v15 = v471;
          sub_1002300BC(v471, v472, v469, v283);
          v283, v291, v292, v293, v294, v295, v296, v297;
          v217 = v468 + 1;
          v8 = v473;
          v142 = v474;
          if (v468 + 1 == v465)
          {
            goto LABEL_120;
          }
        }

        v227 = 0;
        v484 = v218 & 0xC000000000000001;
        v478 = &v218->clientIdentity[16];
        loga = (v218 & 0xFFFFFFFFFFFFFF8);
        v228 = _swiftEmptyDictionarySingleton;
        v475 = v226;
        while (2)
        {
          if (v484)
          {
            v231 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v232 = __OFADD__(v227, 1);
            v227 = (v227 + 1);
            if (v232)
            {
              goto LABEL_136;
            }
          }

          else
          {
            if (v227 >= loga[2].isa)
            {
              goto LABEL_137;
            }

            v231 = *&v478[8 * v227];
            v232 = __OFADD__(v227, 1);
            v227 = (v227 + 1);
            if (v232)
            {
              goto LABEL_136;
            }
          }

          v233 = *(v11 + 16);
          v241 = v231;
          if (!v233 || (v242 = sub_100393C74(), (v234 & 1) == 0))
          {
            v485, v234, v235, v236, v237, v238, v239, v240;
            v474, v305, v306, v307, v308, v309, v310, v311;
            v228, v312, v313, v314, v315, v316, v317, v318;
            v11, v319, v320, v321, v322, v323, v324, v325;
            v473, v326, v327, v328, v329, v330, v331, v332;
            v470, v333, v334, v335, v336, v337, v338, v339;

            v340 = v241;
            v341 = Logger.logObject.getter();
            v342 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v341, v342))
            {
              v343 = v10;
              v344 = swift_slowAlloc();
              v500 = swift_slowAlloc();
              v491 = v500;
              *v344 = 136446978;
              *(v344 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v491);
              *(v344 + 12) = 2082;
              v345 = *&v343->clientIdentity[24];
              v496 = *&v343->clientIdentity[8];
              v497[0] = v345;
              *(v497 + 14) = *&v343->clientIdentity[38];
              sub_100009DAC(&v496, v490);
              v346 = sub_1000063E8();
              v348 = v347;
              sub_1005812D4(&v496);
              v349 = sub_10000668C(v346, v348, &v491);
              v348, v350, v351, v352, v353, v354, v355, v356;
              *(v344 + 14) = v349;
              *(v344 + 22) = 2080;
              v357 = [v340 description];
              v358 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v360 = v359;

              v361 = sub_10000668C(v358, v360, &v491);
              v360, v362, v363, v364, v365, v366, v367, v368;
              *(v344 + 24) = v361;
              *(v344 + 32) = 2080;
              v369 = [v340 description];
              v370 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v372 = v371;

              v373 = sub_10000668C(v370, v372, &v491);
              v372, v374, v375, v376, v377, v378, v379, v380;
              *(v344 + 34) = v373;
              _os_log_impl(&_mh_execute_header, v341, v342, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v344, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v340];
            swift_willThrow();

            return;
          }

          v243 = *(*(v11 + 56) + 8 * v242);
          if ((v228 & 0xC000000000000001) != 0)
          {
            if (v228 < 0)
            {
              v244 = v228;
            }

            else
            {
              v244 = v228 & 0xFFFFFFFFFFFFFF8;
            }

            v245 = v243;
            v246 = __CocoaDictionary.count.getter();
            if (__OFADD__(v246, 1))
            {
              goto LABEL_139;
            }

            v247 = sub_10021D008(v244, v246 + 1);
          }

          else
          {
            v248 = v243;
            v247 = v228;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v490[0] = v247;
          v251 = sub_10002B924(v241);
          v252 = *(v247 + 16);
          v253 = (v250 & 1) == 0;
          v254 = v252 + v253;
          if (__OFADD__(v252, v253))
          {
            goto LABEL_138;
          }

          v255 = v250;
          if (*(v247 + 24) >= v254)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v228 = v247;
              v11 = v476;
              if ((v250 & 1) == 0)
              {
                goto LABEL_94;
              }

              goto LABEL_73;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v260 = static _DictionaryStorage.copy(original:)();
            v228 = v260;
            if (*(v247 + 16))
            {
              v268 = (v260 + 64);
              __src = (v247 + 64);
              v269 = ((1 << *(v228 + 32)) + 63) >> 6;
              if (v228 != v247 || v268 >= &__src[8 * v269])
              {
                memmove(v268, __src, 8 * v269);
              }

              v270 = 0;
              *(v228 + 16) = *(v247 + 16);
              v271 = 1 << *(v247 + 32);
              if (v271 < 64)
              {
                v272 = ~(-1 << v271);
              }

              else
              {
                v272 = -1;
              }

              v460 = (v271 + 63) >> 6;
              v273 = v272 & *(v247 + 64);
              if (v273)
              {
                do
                {
                  v274 = __clz(__rbit64(v273));
                  v463 = (v273 - 1) & v273;
LABEL_113:
                  v277 = v274 | (v270 << 6);
                  v278 = *(*(v247 + 48) + 8 * v277);
                  v462 = *(*(v247 + 56) + 8 * v277);
                  *(*(v228 + 48) + 8 * v277) = v278;
                  *(*(v228 + 56) + 8 * v277) = v462;
                  v279 = v278;
                  v280 = v462;
                  v273 = v463;
                }

                while (v463);
              }

              v275 = v270;
              while (1)
              {
                v270 = v275 + 1;
                if (__OFADD__(v275, 1))
                {
                  goto LABEL_143;
                }

                if (v270 >= v460)
                {
                  break;
                }

                v276 = *&__src[8 * v270];
                ++v275;
                if (v276)
                {
                  v274 = __clz(__rbit64(v276));
                  v463 = (v276 - 1) & v276;
                  goto LABEL_113;
                }
              }
            }

            v247, v261, v262, v263, v264, v265, v266, v267;
            v11 = v476;
            if (v255)
            {
              goto LABEL_73;
            }

LABEL_94:
            *(v228 + 8 * (v251 >> 6) + 64) |= 1 << v251;
            *(*(v228 + 48) + 8 * v251) = v241;
            *(*(v228 + 56) + 8 * v251) = v243;

            v258 = *(v228 + 16);
            v232 = __OFADD__(v258, 1);
            v259 = v258 + 1;
            if (v232)
            {
              goto LABEL_140;
            }

            *(v228 + 16) = v259;
          }

          else
          {
            sub_10036CABC(v254, isUniquelyReferenced_nonNull_native);
            v228 = v490[0];
            v256 = sub_10002B924(v241);
            if ((v255 & 1) != (v257 & 1))
            {
              goto LABEL_144;
            }

            v251 = v256;
            v11 = v476;
            if ((v255 & 1) == 0)
            {
              goto LABEL_94;
            }

LABEL_73:

            v229 = *(v228 + 56);
            v230 = *(v229 + 8 * v251);
            *(v229 + 8 * v251) = v243;
          }

          v10 = v482;
          if (v227 == v475)
          {
            goto LABEL_119;
          }

          continue;
        }
      }

LABEL_120:
      v142, v178, v179, v180, v181, v182, v183, v184;
      if (v10->coreSuggestionsHandler[10] == 1)
      {
        [v472 updateChangeCount];
      }

      v116 = v464 + 1;
      v117 = &selRef_persistentStoreForIdentifier_;
      if (v464 + 1 == v500)
      {
        v485, v298, v299, v300, v301, v302, v303, v304;
        v11, v453, v454, v455, v456, v457, v458, v459;
        v8, v94, v95, v96, v97, v98, v99, v100;
        return;
      }
    }
  }

  v490[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v8 = &v10->super.isa + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_129;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          v485, v56, v57, v58, v59, v60, v61, v62;
          v474, v432, v433, v434, v435, v436, v437, v438;
          v11, v439, v440, v441, v442, v443, v444, v445;
          v8, v446, v447, v448, v449, v450, v451, v452;

          return;
        }

        v81 = *(a1 + 8 * v10 + 32);
      }

      v82 = v81;
      v11 = sub_1005E3810([v81 remObjectID], &unk_10093F770, off_1008D41E8);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 = (v10 + 1);
      if (v8 == v7)
      {
        v83 = v490[0];
        goto LABEL_29;
      }
    }
  }

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
LABEL_143:
  __break(1u);
LABEL_144:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10064CC40(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v513 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v508 = &v513;
  v509 = v5;
  v10 = sub_1003E0D84(sub_1006AC9E8, v507, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v501 = a1;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = 0;
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v8, v16, v17, v18, v19, v20, v21, v22;
  v504 = v11;
  v499 = a3;
  if (os_log_type_enabled(v14, v15))
  {
    v505 = v9;
    v23 = swift_slowAlloc();
    v520 = swift_slowAlloc();
    v510[0] = v520;
    *v23 = 136446978;
    *(v23 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v510);
    *(v23 + 12) = 2048;
    *(v23 + 14) = *v11->clientIdentity;
    v11, v24, v25, v26, v27, v28, v29, v30;
    *(v23 + 22) = 2082;
    type metadata accessor for REMCDSavedReminder();
    v31 = v5;
    v32 = [swift_getObjCClassFromMetadata() description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v5 = v31;
    v36 = sub_10000668C(v33, v35, v510);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v23 + 24) = v36;
    v11 = v504;
    *(v23 + 32) = 2082;
    *(v23 + 34) = sub_10000668C(v505, v8, v510);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v23, 0x2Au);
    v8 = v520;
    swift_arrayDestroy();
  }

  else
  {

    v11, v51, v52, v53, v54, v55, v56, v57;
  }

  v520 = *v11->clientIdentity;
  if (!v520)
  {
    v11, v44, v45, v46, v47, v48, v49, v50;
    return;
  }

  v512 = _swiftEmptySetSingleton;
  v506 = &v11->clientIdentity[16];

  v65 = 0;
  do
  {
    if (v65 >= *v11->clientIdentity)
    {
      __break(1u);
LABEL_122:

      v376 = v15;
LABEL_123:
      [objc_opt_self() noSuchObjectErrorWithObjectID:v11];

      swift_willThrow();
      return;
    }

    v66 = &v506[16 * v65];
    v8 = *(v66 + 1);
    v67 = *(v8 + 16);
    if (v67)
    {
      v68 = *v66;

      v15 = 32;
      do
      {
        v69 = sub_1005139DC(v68, *(v8 + v15));
        sub_100392144(v69);
        v69, v70, v71, v72, v73, v74, v75, v76;
        ++v15;
        --v67;
      }

      while (v67);
      v8, v77, v78, v79, v80, v81, v82, v83;

      v11 = v504;
    }

    ++v65;
  }

  while (v65 != v520);
  v11, v58, v59, v60, v61, v62, v63, v64;
  if (v501 >> 62)
  {
    v84 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v84 = *((v501 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v84)
  {
    v97 = &_swiftEmptyArrayStorage;
LABEL_29:
    v98 = v512;
    sub_1005E2514(v512);
    v100 = v99;
    v98, v101, v102, v103, v104, v105, v106, v107;
    v12 = sub_10065F214(v100, v499);
    v100, v108, v109, v110, v111, v112, v113, v114;
    v489 = sub_10066B748(v97, v499);
    v97, v122, v123, v124, v125, v126, v127, v128;
    swift_beginAccess();
    v129 = 0;
    v130 = &selRef_persistentStoreForIdentifier_;
    v93 = v504;
    v500 = v12;
    while (1)
    {
      if (v129 >= *v93->clientIdentity)
      {
        goto LABEL_138;
      }

      v480 = v129;
      v131 = &v506[16 * v129];
      v132 = *(v131 + 1);
      v133 = *v131;
      v491 = v132;

      v84 = sub_1005EA438([v133 v130[106]]);

      v134 = v499[6];
      v490 = v133;
      if ((v134 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v134 + 16))
      {
        v135 = v84;

        v138 = sub_10002B924(v135);
        if (v139)
        {
          v137 = *(*(v134 + 56) + 8 * v138);
LABEL_38:

          v134, v140, v141, v142, v143, v144, v145, v146;
LABEL_40:
          v93 = v504;
          goto LABEL_41;
        }

LABEL_39:

        v134, v147, v148, v149, v150, v151, v152, v153;
        v137 = 0;
        goto LABEL_40;
      }

      v137 = 0;
LABEL_41:

      v85 = v489;
      if (!*(v489 + 16))
      {
        goto LABEL_125;
      }

      v154 = sub_100393C74();
      v85 = v489;
      if ((v86 & 1) == 0)
      {
        goto LABEL_125;
      }

      v155 = *(*(v489 + 56) + 8 * v154);
      v156 = v491;
      swift_bridgeObjectRetain_n();
      v157 = v84;
      v487 = v155;

      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.default.getter();

      v483 = v157;
      if (os_log_type_enabled(v158, v159))
      {
        log = v158;
        v502 = v159;
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v511 = swift_slowAlloc();
        *v160 = 136446978;
        *(v160 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v511);
        *(v160 + 12) = 2082;
        v162 = *(v5 + 40);
        v518 = *(v5 + 24);
        v519[0] = v162;
        *(v519 + 14) = *(v5 + 54);
        sub_100009DAC(&v518, v510);
        v163 = sub_1000063E8();
        v165 = v164;
        sub_1005812D4(&v518);
        v166 = sub_10000668C(v163, v165, &v511);
        v165, v167, v168, v169, v170, v171, v172, v173;
        *(v160 + 14) = v166;
        *(v160 + 22) = 2114;
        *(v160 + 24) = v157;
        *v161 = v157;
        *(v160 + 32) = 2082;
        v174 = *(v491 + 16);
        if (v174)
        {
          v497 = v5;
          v510[0] = &_swiftEmptyArrayStorage;
          v175 = v157;
          sub_100026EF4(0, v174, 0);
          v183 = v510[0];
          v184 = *(v510[0] + 16);
          v185 = 16 * v184;
          v186 = 32;
          v187 = v491;
          do
          {
            if (*(&v187->super.isa + v186))
            {
              v188 = 0x44497473696CLL;
            }

            else
            {
              v188 = 0x49746E756F636361;
            }

            if (*(&v187->super.isa + v186))
            {
              v189 = 0xE600000000000000;
            }

            else
            {
              v189 = 0xE900000000000044;
            }

            v510[0] = v183;
            v190 = *&v183->clientIdentity[8];
            v191 = v184 + 1;
            if (v184 >= v190 >> 1)
            {
              sub_100026EF4((v190 > 1), v184 + 1, 1);
              v187 = v491;
              v183 = v510[0];
            }

            *v183->clientIdentity = v191;
            v192 = v183 + v185;
            *(v192 + 4) = v188;
            *(v192 + 5) = v189;
            v185 += 16;
            ++v186;
            v184 = v191;
            --v174;
          }

          while (v174);
          v156 = v187;
          v187, v176, v177, v178, v179, v180, v181, v182;
          v5 = v497;
          v93 = v504;
        }

        else
        {
          v201 = v157;
          v491, v202, v203, v204, v205, v206, v207, v208;
          v183 = &_swiftEmptyArrayStorage;
        }

        v200 = v490;
        v209 = Array.description.getter();
        v211 = v210;
        v183, v210, v212, v213, v214, v215, v216, v217;
        v156, v218, v219, v220, v221, v222, v223, v224;
        v225 = sub_10000668C(v209, v211, &v511);
        v211, v226, v227, v228, v229, v230, v231, v232;
        *(v160 + 34) = v225;
        _os_log_impl(&_mh_execute_header, log, v502, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v160, 0x2Au);
        sub_1000050A4(v161, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v200 = v490;
      }

      v12 = v500;
      v481 = *v156->clientIdentity;
      if (v481)
      {
        v233 = 0;
        v482 = &v156->clientIdentity[16];
        while (1)
        {
          if (v233 >= *v156->clientIdentity)
          {
            goto LABEL_137;
          }

          v485 = v482[v233];
          v234 = sub_1005139DC(v200, v485);
          if (v234 >> 62)
          {
            v317 = v234;
            v242 = _CocoaArrayWrapper.endIndex.getter();
            v234 = v317;
          }

          else
          {
            v242 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v484 = v233;
          v486 = v234;
          if (v242)
          {
            break;
          }

          v244 = _swiftEmptyDictionarySingleton;
LABEL_111:
          v486, v235, v236, v237, v238, v239, v240, v241;
          sub_10045BDE8(v244);
          v302 = v301;
          v244, v303, v304, v305, v306, v307, v308, v309;
          v200 = v490;
          sub_100513B08(v490, v487, v485, v302);
          v233 = v484 + 1;
          v302, v310, v311, v312, v313, v314, v315, v316;
          v156 = v491;
          if (v484 + 1 == v481)
          {
            goto LABEL_114;
          }
        }

        v243 = 0;
        v494 = v234 & 0xFFFFFFFFFFFFFF8;
        v495 = v234 & 0xC000000000000001;
        loga = &v234->clientIdentity[16];
        v244 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v495)
          {
            v247 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v248 = __OFADD__(v243++, 1);
            if (v248)
            {
              goto LABEL_132;
            }
          }

          else
          {
            if (v243 >= *(v494 + 16))
            {
              goto LABEL_133;
            }

            v247 = loga[v243].isa;
            v248 = __OFADD__(v243++, 1);
            if (v248)
            {
              goto LABEL_132;
            }
          }

          v249 = *(v12 + 16);
          v250 = v247;
          v258 = v250;
          if (!v249 || (v259 = v250, v260 = sub_100393C74(), v258 = v259, (v251 & 1) == 0))
          {
            v15 = v490;
            v93, v251, v252, v253, v254, v255, v256, v257;
            v491, v325, v326, v327, v328, v329, v330, v331;
            v244, v332, v333, v334, v335, v336, v337, v338;
            v12, v339, v340, v341, v342, v343, v344, v345;
            v489, v346, v347, v348, v349, v350, v351, v352;
            v486, v353, v354, v355, v356, v357, v358, v359;

            v11 = v258;
            v8 = Logger.logObject.getter();
            v360 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v8, v360))
            {
              goto LABEL_122;
            }

            v361 = swift_slowAlloc();
            v520 = swift_slowAlloc();
            v511 = v520;
            *v361 = 136446978;
            *(v361 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v511);
            *(v361 + 12) = 2082;
            v362 = *(v5 + 40);
            v516 = *(v5 + 24);
            v517[0] = v362;
            *(v517 + 14) = *(v5 + 54);
            sub_100009DAC(&v516, v510);
            v363 = sub_1000063E8();
            v365 = v364;
            sub_1005812D4(&v516);
            v366 = sub_10000668C(v363, v365, &v511);
            v365, v367, v368, v369, v370, v371, v372, v373;
            *(v361 + 14) = v366;
            *(v361 + 22) = 2080;
            v374 = [(RDXPCStorePerformer *)v11 description];
            v375 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v376 = v490;
            v378 = v377;

            v379 = sub_10000668C(v375, v378, &v511);
            v378, v380, v381, v382, v383, v384, v385, v386;
            *(v361 + 24) = v379;
            *(v361 + 32) = 2080;
            v387 = [(RDXPCStorePerformer *)v11 description];
            v388 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v390 = v389;

            v391 = sub_10000668C(v388, v390, &v511);
            v390, v392, v393, v394, v395, v396, v397, v398;
            *(v361 + 34) = v391;
            _os_log_impl(&_mh_execute_header, v8, v360, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v361, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_123;
          }

          v261 = *(*(v12 + 56) + 8 * v260);
          v503 = v261;
          if ((v244 & 0xC000000000000001) != 0)
          {
            if (v244 < 0)
            {
              v262 = v244;
            }

            else
            {
              v262 = v244 & 0xFFFFFFFFFFFFFF8;
            }

            v263 = v261;
            v264 = __CocoaDictionary.count.getter();
            if (__OFADD__(v264, 1))
            {
              goto LABEL_135;
            }

            v265 = sub_10021D008(v262, v264 + 1);
          }

          else
          {
            v266 = v261;
            v265 = v244;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v510[0] = v265;
          v269 = sub_10002B924(v259);
          v270 = *(v265 + 16);
          v271 = (v268 & 1) == 0;
          v272 = v270 + v271;
          if (__OFADD__(v270, v271))
          {
            goto LABEL_134;
          }

          v273 = v268;
          if (*(v265 + 24) < v272)
          {
            sub_10036CABC(v272, isUniquelyReferenced_nonNull_native);
            v244 = v510[0];
            v274 = sub_10002B924(v259);
            if ((v273 & 1) != (v275 & 1))
            {
              goto LABEL_140;
            }

            v269 = v274;
            goto LABEL_84;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v276 = v259;
            v244 = v265;
            v12 = v500;
            if ((v268 & 1) == 0)
            {
              goto LABEL_88;
            }

LABEL_66:

            v245 = *(v244 + 56);
            v246 = *(v245 + 8 * v269);
            *(v245 + 8 * v269) = v503;
          }

          else
          {
            v498 = v5;
            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v279 = static _DictionaryStorage.copy(original:)();
            v244 = v279;
            if (*(v265 + 16))
            {
              v287 = (v279 + 64);
              __src = (v265 + 64);
              v288 = ((1 << *(v244 + 32)) + 63) >> 6;
              if (v244 != v265 || v287 >= &__src[8 * v288])
              {
                memmove(v287, __src, 8 * v288);
              }

              v289 = 0;
              *(v244 + 16) = *(v265 + 16);
              v290 = 1 << *(v265 + 32);
              if (v290 < 64)
              {
                v291 = ~(-1 << v290);
              }

              else
              {
                v291 = -1;
              }

              v477 = (v290 + 63) >> 6;
              v292 = v291 & *(v265 + 64);
              if (v292)
              {
                do
                {
                  v293 = __clz(__rbit64(v292));
                  v479 = (v292 - 1) & v292;
LABEL_107:
                  v296 = v293 | (v289 << 6);
                  v297 = *(*(v265 + 48) + 8 * v296);
                  v298 = *(*(v265 + 56) + 8 * v296);
                  *(*(v244 + 48) + 8 * v296) = v297;
                  *(*(v244 + 56) + 8 * v296) = v298;
                  v299 = v297;
                  v300 = v298;
                  v292 = v479;
                }

                while (v479);
              }

              v294 = v289;
              while (1)
              {
                v289 = v294 + 1;
                if (__OFADD__(v294, 1))
                {
                  goto LABEL_139;
                }

                if (v289 >= v477)
                {
                  break;
                }

                v295 = *&__src[8 * v289];
                ++v294;
                if (v295)
                {
                  v293 = __clz(__rbit64(v295));
                  v479 = (v295 - 1) & v295;
                  goto LABEL_107;
                }
              }
            }

            v265, v280, v281, v282, v283, v284, v285, v286;
            v5 = v498;
LABEL_84:
            v12 = v500;
            v276 = v259;
            if (v273)
            {
              goto LABEL_66;
            }

LABEL_88:
            *(v244 + 8 * (v269 >> 6) + 64) |= 1 << v269;
            *(*(v244 + 48) + 8 * v269) = v276;
            *(*(v244 + 56) + 8 * v269) = v503;

            v277 = *(v244 + 16);
            v248 = __OFADD__(v277, 1);
            v278 = v277 + 1;
            if (v248)
            {
              goto LABEL_136;
            }

            *(v244 + 16) = v278;
          }

          v93 = v504;
          if (v243 == v242)
          {
            goto LABEL_111;
          }

          continue;
        }
      }

LABEL_114:
      v156, v193, v194, v195, v196, v197, v198, v199;
      if (*(v5 + 104) == 1)
      {
        [v487 updateChangeCount];
      }

      v129 = v480 + 1;
      v130 = &selRef_persistentStoreForIdentifier_;
      if (v480 + 1 == v520)
      {
        v93, v318, v319, v320, v321, v322, v323, v324;
        v12, v470, v471, v472, v473, v474, v475, v476;
        v489, v115, v116, v117, v118, v119, v120, v121;
        return;
      }
    }

    v135 = v84;

    v136 = __CocoaDictionary.lookup(_:)();
    if (v136)
    {
      v511 = v136;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v137 = v510[0];
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v496 = v5;
  v510[0] = &_swiftEmptyArrayStorage;
  v85 = v510;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v84 < 0)
  {
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
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v93 = 0;
    v5 = v501 & 0xC000000000000001;
    while (1)
    {
      v94 = &v93->super.isa + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v5)
      {
        v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v93 >= *((v501 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          v93, v86, v87, v88, v89, v90, v91, v92;
          v491, v449, v450, v451, v452, v453, v454, v455;
          0, v456, v457, v458, v459, v460, v461, v462;
          v488, v463, v464, v465, v466, v467, v468, v469;

          return;
        }

        v95 = *(v501 + 8 * v93 + 32);
      }

      v96 = v95;
      v67 = sub_1005EA438([v95 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v85 = v510;
      specialized ContiguousArray._endMutation()();
      v93 = (v93 + 1);
      if (v94 == v84)
      {
        v97 = v510[0];
        v5 = v496;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_125:
    v12, v86, v87, v88, v89, v90, v91, v92;
    v93, v399, v400, v401, v402, v403, v404, v405;
    v491, v406, v407, v408, v409, v410, v411, v412;
    v85, v413, v414, v415, v416, v417, v418, v419;
    v420 = v84;

    v421 = Logger.logObject.getter();
    v422 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v421, v422))
    {
      v423 = swift_slowAlloc();
      v511 = swift_slowAlloc();
      *v423 = 136446722;
      *(v423 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v511);
      *(v423 + 12) = 2082;
      v424 = *(v5 + 40);
      v514 = *(v5 + 24);
      v515[0] = v424;
      *(v515 + 14) = *(v5 + 54);
      sub_100009DAC(&v514, v510);
      v425 = sub_1000063E8();
      v427 = v426;
      sub_1005812D4(&v514);
      v428 = sub_10000668C(v425, v427, &v511);
      v427, v429, v430, v431, v432, v433, v434, v435;
      *(v423 + 14) = v428;
      *(v423 + 22) = 2080;
      v436 = [v420 description];
      v437 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v439 = v438;

      v440 = sub_10000668C(v437, v439, &v511);
      v441 = v490;
      v439, v442, v443, v444, v445, v446, v447, v448;
      *(v423 + 24) = v440;
      _os_log_impl(&_mh_execute_header, v421, v422, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v423, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v441 = v490;
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v420];
    swift_willThrow();
  }
}

void sub_10064E084(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v515 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v510 = &v515;
  v511 = v5;
  v10 = sub_1003E0DB0(sub_1006AD794, v509, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v503 = a1;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = 0;
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v8, v16, v17, v18, v19, v20, v21, v22;
  v506 = v11;
  v501 = a3;
  if (os_log_type_enabled(v14, v15))
  {
    v507 = v9;
    v23 = swift_slowAlloc();
    v522 = swift_slowAlloc();
    v512[0] = v522;
    *v23 = 136446978;
    *(v23 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v512);
    *(v23 + 12) = 2048;
    *(v23 + 14) = *v11->clientIdentity;
    v11, v24, v25, v26, v27, v28, v29, v30;
    *(v23 + 22) = 2082;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v31 = v5;
    v32 = [swift_getObjCClassFromMetadata() description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v5 = v31;
    v36 = sub_10000668C(v33, v35, v512);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v23 + 24) = v36;
    v11 = v506;
    *(v23 + 32) = 2082;
    *(v23 + 34) = sub_10000668C(v507, v8, v512);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v23, 0x2Au);
    v8 = v522;
    swift_arrayDestroy();
  }

  else
  {

    v11, v51, v52, v53, v54, v55, v56, v57;
  }

  v522 = *v11->clientIdentity;
  if (!v522)
  {
    v11, v44, v45, v46, v47, v48, v49, v50;
    return;
  }

  v514 = _swiftEmptySetSingleton;
  v508 = &v11->clientIdentity[16];

  v65 = 0;
  do
  {
    if (v65 >= *v11->clientIdentity)
    {
      __break(1u);
LABEL_133:

      v378 = v15;
LABEL_134:
      [objc_opt_self() noSuchObjectErrorWithObjectID:v11];

      swift_willThrow();
      return;
    }

    v66 = &v508[16 * v65];
    v8 = *(v66 + 1);
    v67 = *(v8 + 16);
    if (v67)
    {
      v68 = *v66;

      v15 = 32;
      do
      {
        v69 = sub_1002BB620(v68, *(v8 + v15));
        sub_100392144(v69);
        v69, v70, v71, v72, v73, v74, v75, v76;
        ++v15;
        --v67;
      }

      while (v67);
      v8, v77, v78, v79, v80, v81, v82, v83;

      v11 = v506;
    }

    ++v65;
  }

  while (v65 != v522);
  v11, v58, v59, v60, v61, v62, v63, v64;
  if (v503 >> 62)
  {
    v84 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v84 = *((v503 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v84)
  {
    v97 = &_swiftEmptyArrayStorage;
LABEL_29:
    v98 = v514;
    sub_1005E2514(v514);
    v100 = v99;
    v98, v101, v102, v103, v104, v105, v106, v107;
    v12 = sub_10065F214(v100, v501);
    v100, v108, v109, v110, v111, v112, v113, v114;
    v491 = sub_10066C018(v97, v501);
    v97, v122, v123, v124, v125, v126, v127, v128;
    swift_beginAccess();
    v129 = 0;
    v130 = &selRef_persistentStoreForIdentifier_;
    v93 = v506;
    v502 = v12;
    while (1)
    {
      if (v129 >= *v93->clientIdentity)
      {
        goto LABEL_149;
      }

      v482 = v129;
      v131 = &v508[16 * v129];
      v132 = *(v131 + 1);
      v133 = *v131;
      v493 = v132;

      v84 = sub_1005E2A38([v133 v130[106]]);

      v134 = v501[6];
      v492 = v133;
      if ((v134 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v134 + 16))
      {
        v135 = v84;

        v138 = sub_10002B924(v135);
        if (v139)
        {
          v137 = *(*(v134 + 56) + 8 * v138);
LABEL_38:

          v134, v140, v141, v142, v143, v144, v145, v146;
LABEL_40:
          v93 = v506;
          goto LABEL_41;
        }

LABEL_39:

        v134, v147, v148, v149, v150, v151, v152, v153;
        v137 = 0;
        goto LABEL_40;
      }

      v137 = 0;
LABEL_41:

      v85 = v491;
      if (!*(v491 + 16))
      {
        goto LABEL_136;
      }

      v154 = sub_100393C74();
      v85 = v491;
      if ((v86 & 1) == 0)
      {
        goto LABEL_136;
      }

      v155 = *(*(v491 + 56) + 8 * v154);
      v156 = v493;
      swift_bridgeObjectRetain_n();
      v157 = v84;
      v489 = v155;

      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.default.getter();

      v485 = v157;
      if (os_log_type_enabled(v158, v159))
      {
        log = v158;
        v504 = v159;
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v513 = swift_slowAlloc();
        *v160 = 136446978;
        *(v160 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v513);
        *(v160 + 12) = 2082;
        v162 = *(v5 + 40);
        v520 = *(v5 + 24);
        v521[0] = v162;
        *(v521 + 14) = *(v5 + 54);
        sub_100009DAC(&v520, v512);
        v163 = sub_1000063E8();
        v165 = v164;
        sub_1005812D4(&v520);
        v166 = sub_10000668C(v163, v165, &v513);
        v165, v167, v168, v169, v170, v171, v172, v173;
        *(v160 + 14) = v166;
        *(v160 + 22) = 2114;
        *(v160 + 24) = v157;
        *v161 = v157;
        *(v160 + 32) = 2082;
        v174 = *(v493 + 16);
        if (v174)
        {
          v499 = v5;
          v512[0] = &_swiftEmptyArrayStorage;
          v175 = v157;
          sub_100026EF4(0, v174, 0);
          v180 = v512[0];
          v181 = 32;
          v182 = v493;
          do
          {
            v183 = *(&v182->super.isa + v181);
            v184 = 0xD000000000000014;
            v185 = 0xD00000000000001FLL;
            if (v183 == 4)
            {
              v185 = 0xD000000000000014;
              v186 = 0x80000001007EA510;
            }

            else
            {
              v186 = 0x80000001007EA530;
            }

            if (v183 == 3)
            {
              v187 = 0x80000001007EA4F0;
            }

            else
            {
              v184 = v185;
              v187 = v186;
            }

            v188 = 0xD000000000000010;
            if (v183 == 1)
            {
              v188 = 0x44497473696CLL;
              v189 = 0xE600000000000000;
            }

            else
            {
              v189 = 0x80000001007EA4D0;
            }

            if (!*(&v182->super.isa + v181))
            {
              v188 = 0x49746E756F636361;
              v189 = 0xE900000000000044;
            }

            if (*(&v182->super.isa + v181) <= 2u)
            {
              v190 = v188;
            }

            else
            {
              v190 = v184;
            }

            if (*(&v182->super.isa + v181) <= 2u)
            {
              v191 = v189;
            }

            else
            {
              v191 = v187;
            }

            v512[0] = v180;
            v193 = *v180->clientIdentity;
            v192 = *&v180->clientIdentity[8];
            if (v193 >= v192 >> 1)
            {
              sub_100026EF4((v192 > 1), v193 + 1, 1);
              v182 = v493;
              v180 = v512[0];
            }

            *v180->clientIdentity = v193 + 1;
            v194 = v180 + 16 * v193;
            *(v194 + 4) = v190;
            *(v194 + 5) = v191;
            ++v181;
            --v174;
          }

          while (v174);
          v156 = v182;
          v182, 0xE600000000000000, 0x44497473696CLL, v182, v176, v177, v178, v179;
          v5 = v499;
          v93 = v506;
        }

        else
        {
          v203 = v157;
          v493, v204, v205, v206, v207, v208, v209, v210;
          v180 = &_swiftEmptyArrayStorage;
        }

        v202 = v492;
        v211 = Array.description.getter();
        v213 = v212;
        v180, v212, v214, v215, v216, v217, v218, v219;
        v156, v220, v221, v222, v223, v224, v225, v226;
        v227 = sub_10000668C(v211, v213, &v513);
        v213, v228, v229, v230, v231, v232, v233, v234;
        *(v160 + 34) = v227;
        _os_log_impl(&_mh_execute_header, log, v504, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v160, 0x2Au);
        sub_1000050A4(v161, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v202 = v492;
      }

      v12 = v502;
      v483 = *v156->clientIdentity;
      if (v483)
      {
        v235 = 0;
        v484 = &v156->clientIdentity[16];
        while (1)
        {
          if (v235 >= *v156->clientIdentity)
          {
            goto LABEL_148;
          }

          v487 = v484[v235];
          v236 = sub_1002BB620(v202, v487);
          if (v236 >> 62)
          {
            v319 = v236;
            v244 = _CocoaArrayWrapper.endIndex.getter();
            v236 = v319;
          }

          else
          {
            v244 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v486 = v235;
          v488 = v236;
          if (v244)
          {
            break;
          }

          v246 = _swiftEmptyDictionarySingleton;
LABEL_122:
          v488, v237, v238, v239, v240, v241, v242, v243;
          sub_10045BDE8(v246);
          v304 = v303;
          v246, v305, v306, v307, v308, v309, v310, v311;
          v202 = v492;
          sub_1002BB888(v492, v489, v487, v304);
          v235 = v486 + 1;
          v304, v312, v313, v314, v315, v316, v317, v318;
          v156 = v493;
          if (v486 + 1 == v483)
          {
            goto LABEL_125;
          }
        }

        v245 = 0;
        v496 = v236 & 0xFFFFFFFFFFFFFF8;
        v497 = v236 & 0xC000000000000001;
        loga = &v236->clientIdentity[16];
        v246 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v497)
          {
            v249 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v250 = __OFADD__(v245++, 1);
            if (v250)
            {
              goto LABEL_143;
            }
          }

          else
          {
            if (v245 >= *(v496 + 16))
            {
              goto LABEL_144;
            }

            v249 = loga[v245].isa;
            v250 = __OFADD__(v245++, 1);
            if (v250)
            {
              goto LABEL_143;
            }
          }

          v251 = *(v12 + 16);
          v252 = v249;
          v260 = v252;
          if (!v251 || (v261 = v252, v262 = sub_100393C74(), v260 = v261, (v253 & 1) == 0))
          {
            v15 = v492;
            v93, v253, v254, v255, v256, v257, v258, v259;
            v493, v327, v328, v329, v330, v331, v332, v333;
            v246, v334, v335, v336, v337, v338, v339, v340;
            v12, v341, v342, v343, v344, v345, v346, v347;
            v491, v348, v349, v350, v351, v352, v353, v354;
            v488, v355, v356, v357, v358, v359, v360, v361;

            v11 = v260;
            v8 = Logger.logObject.getter();
            v362 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v8, v362))
            {
              goto LABEL_133;
            }

            v363 = swift_slowAlloc();
            v522 = swift_slowAlloc();
            v513 = v522;
            *v363 = 136446978;
            *(v363 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v513);
            *(v363 + 12) = 2082;
            v364 = *(v5 + 40);
            v518 = *(v5 + 24);
            v519[0] = v364;
            *(v519 + 14) = *(v5 + 54);
            sub_100009DAC(&v518, v512);
            v365 = sub_1000063E8();
            v367 = v366;
            sub_1005812D4(&v518);
            v368 = sub_10000668C(v365, v367, &v513);
            v367, v369, v370, v371, v372, v373, v374, v375;
            *(v363 + 14) = v368;
            *(v363 + 22) = 2080;
            v376 = [(RDXPCStorePerformer *)v11 description];
            v377 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v378 = v492;
            v380 = v379;

            v381 = sub_10000668C(v377, v380, &v513);
            v380, v382, v383, v384, v385, v386, v387, v388;
            *(v363 + 24) = v381;
            *(v363 + 32) = 2080;
            v389 = [(RDXPCStorePerformer *)v11 description];
            v390 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v392 = v391;

            v393 = sub_10000668C(v390, v392, &v513);
            v392, v394, v395, v396, v397, v398, v399, v400;
            *(v363 + 34) = v393;
            _os_log_impl(&_mh_execute_header, v8, v362, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v363, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_134;
          }

          v263 = *(*(v12 + 56) + 8 * v262);
          v505 = v263;
          if ((v246 & 0xC000000000000001) != 0)
          {
            if (v246 < 0)
            {
              v264 = v246;
            }

            else
            {
              v264 = v246 & 0xFFFFFFFFFFFFFF8;
            }

            v265 = v263;
            v266 = __CocoaDictionary.count.getter();
            if (__OFADD__(v266, 1))
            {
              goto LABEL_146;
            }

            v267 = sub_10021D008(v264, v266 + 1);
          }

          else
          {
            v268 = v263;
            v267 = v246;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v512[0] = v267;
          v271 = sub_10002B924(v261);
          v272 = *(v267 + 16);
          v273 = (v270 & 1) == 0;
          v274 = v272 + v273;
          if (__OFADD__(v272, v273))
          {
            goto LABEL_145;
          }

          v275 = v270;
          if (*(v267 + 24) < v274)
          {
            sub_10036CABC(v274, isUniquelyReferenced_nonNull_native);
            v246 = v512[0];
            v276 = sub_10002B924(v261);
            if ((v275 & 1) != (v277 & 1))
            {
              goto LABEL_151;
            }

            v271 = v276;
            goto LABEL_95;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v278 = v261;
            v246 = v267;
            v12 = v502;
            if ((v270 & 1) == 0)
            {
              goto LABEL_99;
            }

LABEL_77:

            v247 = *(v246 + 56);
            v248 = *(v247 + 8 * v271);
            *(v247 + 8 * v271) = v505;
          }

          else
          {
            v500 = v5;
            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v281 = static _DictionaryStorage.copy(original:)();
            v246 = v281;
            if (*(v267 + 16))
            {
              v289 = (v281 + 64);
              __src = (v267 + 64);
              v290 = ((1 << *(v246 + 32)) + 63) >> 6;
              if (v246 != v267 || v289 >= &__src[8 * v290])
              {
                memmove(v289, __src, 8 * v290);
              }

              v291 = 0;
              *(v246 + 16) = *(v267 + 16);
              v292 = 1 << *(v267 + 32);
              if (v292 < 64)
              {
                v293 = ~(-1 << v292);
              }

              else
              {
                v293 = -1;
              }

              v479 = (v292 + 63) >> 6;
              v294 = v293 & *(v267 + 64);
              if (v294)
              {
                do
                {
                  v295 = __clz(__rbit64(v294));
                  v481 = (v294 - 1) & v294;
LABEL_118:
                  v298 = v295 | (v291 << 6);
                  v299 = *(*(v267 + 48) + 8 * v298);
                  v300 = *(*(v267 + 56) + 8 * v298);
                  *(*(v246 + 48) + 8 * v298) = v299;
                  *(*(v246 + 56) + 8 * v298) = v300;
                  v301 = v299;
                  v302 = v300;
                  v294 = v481;
                }

                while (v481);
              }

              v296 = v291;
              while (1)
              {
                v291 = v296 + 1;
                if (__OFADD__(v296, 1))
                {
                  goto LABEL_150;
                }

                if (v291 >= v479)
                {
                  break;
                }

                v297 = *&__src[8 * v291];
                ++v296;
                if (v297)
                {
                  v295 = __clz(__rbit64(v297));
                  v481 = (v297 - 1) & v297;
                  goto LABEL_118;
                }
              }
            }

            v267, v282, v283, v284, v285, v286, v287, v288;
            v5 = v500;
LABEL_95:
            v12 = v502;
            v278 = v261;
            if (v275)
            {
              goto LABEL_77;
            }

LABEL_99:
            *(v246 + 8 * (v271 >> 6) + 64) |= 1 << v271;
            *(*(v246 + 48) + 8 * v271) = v278;
            *(*(v246 + 56) + 8 * v271) = v505;

            v279 = *(v246 + 16);
            v250 = __OFADD__(v279, 1);
            v280 = v279 + 1;
            if (v250)
            {
              goto LABEL_147;
            }

            *(v246 + 16) = v280;
          }

          v93 = v506;
          if (v245 == v244)
          {
            goto LABEL_122;
          }

          continue;
        }
      }

LABEL_125:
      v156, v195, v196, v197, v198, v199, v200, v201;
      if (*(v5 + 104) == 1)
      {
        [v489 updateChangeCount];
      }

      v129 = v482 + 1;
      v130 = &selRef_persistentStoreForIdentifier_;
      if (v482 + 1 == v522)
      {
        v93, v320, v321, v322, v323, v324, v325, v326;
        v12, v472, v473, v474, v475, v476, v477, v478;
        v491, v115, v116, v117, v118, v119, v120, v121;
        return;
      }
    }

    v135 = v84;

    v136 = __CocoaDictionary.lookup(_:)();
    if (v136)
    {
      v513 = v136;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v137 = v512[0];
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v498 = v5;
  v512[0] = &_swiftEmptyArrayStorage;
  v85 = v512;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v84 < 0)
  {
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
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v93 = 0;
    v5 = v503 & 0xC000000000000001;
    while (1)
    {
      v94 = &v93->super.isa + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v5)
      {
        v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v93 >= *((v503 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          v93, v86, v87, v88, v89, v90, v91, v92;
          v493, v451, v452, v453, v454, v455, v456, v457;
          0, v458, v459, v460, v461, v462, v463, v464;
          v490, v465, v466, v467, v468, v469, v470, v471;

          return;
        }

        v95 = *(v503 + 8 * v93 + 32);
      }

      v96 = v95;
      v67 = sub_1005E2A38([v95 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v85 = v512;
      specialized ContiguousArray._endMutation()();
      v93 = (v93 + 1);
      if (v94 == v84)
      {
        v97 = v512[0];
        v5 = v498;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_136:
    v12, v86, v87, v88, v89, v90, v91, v92;
    v93, v401, v402, v403, v404, v405, v406, v407;
    v493, v408, v409, v410, v411, v412, v413, v414;
    v85, v415, v416, v417, v418, v419, v420, v421;
    v422 = v84;

    v423 = Logger.logObject.getter();
    v424 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v423, v424))
    {
      v425 = swift_slowAlloc();
      v513 = swift_slowAlloc();
      *v425 = 136446722;
      *(v425 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v513);
      *(v425 + 12) = 2082;
      v426 = *(v5 + 40);
      v516 = *(v5 + 24);
      v517[0] = v426;
      *(v517 + 14) = *(v5 + 54);
      sub_100009DAC(&v516, v512);
      v427 = sub_1000063E8();
      v429 = v428;
      sub_1005812D4(&v516);
      v430 = sub_10000668C(v427, v429, &v513);
      v429, v431, v432, v433, v434, v435, v436, v437;
      *(v425 + 14) = v430;
      *(v425 + 22) = 2080;
      v438 = [v422 description];
      v439 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v441 = v440;

      v442 = sub_10000668C(v439, v441, &v513);
      v443 = v492;
      v441, v444, v445, v446, v447, v448, v449, v450;
      *(v425 + 24) = v442;
      _os_log_impl(&_mh_execute_header, v423, v424, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v425, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v443 = v492;
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v422];
    swift_willThrow();
  }
}

void sub_10064F56C(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = a1;
  v513 = a2;
  v8 = a3[2];
  v7 = a3[3];
  v509 = &v513;
  v9 = sub_1003E0DDC(sub_1006AF658, v508, a1);
  if (!v4)
  {
    v10 = v9;
    v502 = a3;
    v11 = v3;
    if (qword_100936008 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100945730);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    v7, v15, v16, v17, v18, v19, v20, v21;
    v503 = v11;
    v505 = v10;
    if (os_log_type_enabled(v13, v14))
    {
      v506 = v8;
      v22 = swift_slowAlloc();
      v520 = swift_slowAlloc();
      v510[0] = v520;
      *v22 = 136446978;
      *(v22 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v510);
      *(v22 + 12) = 2048;
      *(v22 + 14) = *v10->clientIdentity;
      v10, v23, v24, v25, v26, v27, v28, v29;
      *(v22 + 22) = 2082;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v30 = [swift_getObjCClassFromMetadata() description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_10000668C(v31, v33, v510);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v22 + 24) = v34;
      v10 = v505;
      *(v22 + 32) = 2082;
      *(v22 + 34) = sub_10000668C(v506, v7, v510);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v22, 0x2Au);
      v7 = v520;
      swift_arrayDestroy();
    }

    else
    {

      v10, v49, v50, v51, v52, v53, v54, v55;
    }

    v520 = *v10->clientIdentity;
    if (!v520)
    {
      v10, v42, v43, v44, v45, v46, v47, v48;
      return;
    }

    v512 = _swiftEmptySetSingleton;
    v507 = &v10->clientIdentity[16];

    v63 = 0;
    do
    {
      if (v63 >= *v10->clientIdentity)
      {
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        v504, v56, v57, v58, v59, v60, v61, v62;
        v505, v409, v410, v411, v412, v413, v414, v415;
        v494, v416, v417, v418, v419, v420, v421, v422;
        v6, v423, v424, v425, v426, v427, v428, v429;
        v430 = v7;

        v431 = Logger.logObject.getter();
        v432 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v431, v432))
        {
          v433 = v10;
          v434 = swift_slowAlloc();
          v511 = swift_slowAlloc();
          *v434 = 136446722;
          *(v434 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v511);
          *(v434 + 12) = 2082;
          v435 = *&v433->clientIdentity[24];
          v514 = *&v433->clientIdentity[8];
          v515[0] = v435;
          *(v515 + 14) = *&v433->clientIdentity[38];
          sub_100009DAC(&v514, v510);
          v436 = sub_1000063E8();
          v438 = v437;
          sub_1005812D4(&v514);
          v439 = sub_10000668C(v436, v438, &v511);
          v438, v440, v441, v442, v443, v444, v445, v446;
          *(v434 + 14) = v439;
          *(v434 + 22) = 2080;
          v447 = [v430 description];
          v448 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v450 = v449;

          v451 = sub_10000668C(v448, v450, &v511);
          v14 = v492;
          v450, v452, v453, v454, v455, v456, v457, v458;
          *(v434 + 24) = v451;
          _os_log_impl(&_mh_execute_header, v431, v432, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v434, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v430];
        swift_willThrow();

        return;
      }

      v64 = &v507[16 * v63];
      v7 = *(v64 + 1);
      v65 = *(v7 + 16);
      if (v65)
      {
        v66 = *v64;

        v14 = 32;
        do
        {
          v67 = sub_1006A7CBC(v66, *(v7 + v14));
          sub_100392144(v67);
          v67, v68, v69, v70, v71, v72, v73, v74;
          ++v14;
          --v65;
        }

        while (v65);
        v7, v75, v76, v77, v78, v79, v80, v81;

        v10 = v505;
      }

      ++v63;
    }

    while (v63 != v520);
    v10, v56, v57, v58, v59, v60, v61, v62;
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    if (!v7)
    {
      v85 = &_swiftEmptyArrayStorage;
      goto LABEL_29;
    }

    v510[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v504 = (v6 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v82 = &v10->super.isa + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_139;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            v505, v56, v57, v58, v59, v60, v61, v62;
            v494, v459, v460, v461, v462, v463, v464, v465;
            v504, v466, v467, v468, v469, v470, v471, v472;
            v6, v473, v474, v475, v476, v477, v478, v479;

            return;
          }

          v83 = *(v6 + 8 * v10 + 32);
        }

        v84 = v83;
        sub_1005E3810([v83 remObjectID], &unk_100938880, off_1008D41A8);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 = (v10 + 1);
        if (v82 == v7)
        {
          v85 = v510[0];
LABEL_29:
          v86 = v512;
          sub_1005E2514(v512);
          v88 = v87;
          v86, v89, v90, v91, v92, v93, v94, v95;
          v103 = sub_10065F214(v88, v502);
          v88, v104, v105, v106, v107, v108, v109, v110;
          v6 = sub_10066C8E8(v85, v502);
          v10 = v503;
          v85, v111, v112, v113, v114, v115, v116, v117;
          swift_beginAccess();
          v118 = 0;
          v119 = &selRef_persistentStoreForIdentifier_;
          v490 = v6;
          v504 = v103;
          while (1)
          {
            if (v118 >= *v505->clientIdentity)
            {
              goto LABEL_152;
            }

            v484 = v118;
            v120 = &v507[16 * v118];
            v121 = *(v120 + 1);
            v14 = *v120;
            v494 = v121;

            v7 = sub_1005E3810([v14 v119[106]], &unk_100938880, off_1008D41A8);

            v122 = v502[6];
            if ((v122 & 0xC000000000000001) != 0)
            {
              v123 = v7;

              v124 = __CocoaDictionary.lookup(_:)();
              if (v124)
              {
                v511 = v124;
                sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
                swift_dynamicCast();
                v125 = v510[0];

                v122, v126, v127, v128, v129, v130, v131, v132;
              }

              else
              {

                v122, v143, v144, v145, v146, v147, v148, v149;
                v125 = 0;
              }

              v10 = v503;
            }

            else if (*(v122 + 16))
            {
              v133 = v7;

              v134 = sub_10002B924(v133);
              if (v135)
              {
                v125 = *(*(v122 + 56) + 8 * v134);

                v122, v136, v137, v138, v139, v140, v141, v142;
              }

              else
              {

                v122, v150, v151, v152, v153, v154, v155, v156;
                v125 = 0;
              }

              v10 = v503;
            }

            else
            {
              v125 = 0;
            }

            v492 = v14;
            if (!*(v6 + 16))
            {
              goto LABEL_140;
            }

            v157 = sub_100393C74();
            if ((v56 & 1) == 0)
            {
              goto LABEL_140;
            }

            v158 = *(*(v6 + 56) + 8 * v157);
            v159 = v494;
            swift_bridgeObjectRetain_n();
            v160 = v7;
            v493 = v158;

            v161 = v10;
            v162 = Logger.logObject.getter();
            v163 = static os_log_type_t.default.getter();

            v487 = v160;
            if (os_log_type_enabled(v162, v163))
            {
              v496 = v162;
              v500 = v163;
              v164 = swift_slowAlloc();
              v165 = swift_slowAlloc();
              v511 = swift_slowAlloc();
              *v164 = 136446978;
              *(v164 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v511);
              *(v164 + 12) = 2082;
              v166 = *&v161->clientIdentity[24];
              v518 = *&v161->clientIdentity[8];
              v519[0] = v166;
              *(v519 + 14) = *&v161->clientIdentity[38];
              sub_100009DAC(&v518, v510);
              v167 = sub_1000063E8();
              v169 = v168;
              sub_1005812D4(&v518);
              v170 = sub_10000668C(v167, v169, &v511);
              v169, v171, v172, v173, v174, v175, v176, v177;
              *(v164 + 14) = v170;
              *(v164 + 22) = 2114;
              *(v164 + 24) = v160;
              v498 = v165;
              *v165 = v160;
              *(v164 + 32) = 2082;
              v178 = *(v494 + 16);
              if (v178)
              {
                v510[0] = &_swiftEmptyArrayStorage;
                v179 = v160;
                sub_100026EF4(0, v178, 0);
                v182 = v510[0];
                v183 = 32;
                v184 = v494;
                v185 = v496;
                do
                {
                  v186 = *(&v184->super.isa + v183);
                  v187 = 0xD000000000000015;
                  if (v186 == 5)
                  {
                    v188 = 0x80000001007E9FB0;
                  }

                  else
                  {
                    v187 = 0xD000000000000014;
                    v188 = 0x80000001007E9FD0;
                  }

                  if (v186 == 3)
                  {
                    v189 = 0x6341746E65726170;
                  }

                  else
                  {
                    v189 = 0x694C746E65726170;
                  }

                  if (v186 == 3)
                  {
                    v190 = 0xEF4449746E756F63;
                  }

                  else
                  {
                    v190 = 0xEC00000044497473;
                  }

                  if (*(&v184->super.isa + v183) <= 4u)
                  {
                    v187 = v189;
                    v188 = v190;
                  }

                  v191 = 0xD00000000000001BLL;
                  if (v186 == 1)
                  {
                    v191 = 0xD000000000000016;
                    v192 = 0x80000001007E9F50;
                  }

                  else
                  {
                    v192 = 0x80000001007E9F70;
                  }

                  if (!*(&v184->super.isa + v183))
                  {
                    v191 = 0x49746E756F636361;
                    v192 = 0xE900000000000044;
                  }

                  if (*(&v184->super.isa + v183) <= 2u)
                  {
                    v193 = v191;
                  }

                  else
                  {
                    v193 = v187;
                  }

                  if (*(&v184->super.isa + v183) <= 2u)
                  {
                    v194 = v192;
                  }

                  else
                  {
                    v194 = v188;
                  }

                  v510[0] = v182;
                  v196 = *v182->clientIdentity;
                  v195 = *&v182->clientIdentity[8];
                  if (v196 >= v195 >> 1)
                  {
                    sub_100026EF4((v195 > 1), v196 + 1, 1);
                    v184 = v494;
                    v182 = v510[0];
                  }

                  *v182->clientIdentity = v196 + 1;
                  v197 = v182 + 16 * v196;
                  *(v197 + 4) = v193;
                  *(v197 + 5) = v194;
                  ++v183;
                  --v178;
                }

                while (v178);
                v159 = v184;
                v184, 0xEF4449746E756F63, 0x6341746E65726170, 0xEC00000044497473, 0x694C746E65726170, v184, v180, v181;
              }

              else
              {
                v205 = v160;
                v494, v206, v207, v208, v209, v210, v211, v212;
                v182 = &_swiftEmptyArrayStorage;
                v185 = v496;
              }

              v213 = Array.description.getter();
              v215 = v214;
              v182, v214, v216, v217, v218, v219, v220, v221;
              v159, v222, v223, v224, v225, v226, v227, v228;
              v229 = sub_10000668C(v213, v215, &v511);
              v215, v230, v231, v232, v233, v234, v235, v236;
              *(v164 + 34) = v229;
              _os_log_impl(&_mh_execute_header, v185, v500, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v164, 0x2Au);
              sub_1000050A4(v498, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v14 = v492;
              v6 = v490;
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v10 = v503;
            v485 = *v159->clientIdentity;
            if (v485)
            {
              break;
            }

LABEL_131:
            v159, v198, v199, v200, v201, v202, v203, v204;
            if (v10->coreSuggestionsHandler[10] == 1)
            {
              [v493 updateChangeCount];
            }

            v118 = v484 + 1;
            v119 = &selRef_persistentStoreForIdentifier_;
            if (v484 + 1 == v520)
            {
              v505, v319, v320, v321, v322, v323, v324, v325;
              v504, v326, v327, v328, v329, v330, v331, v332;
              v6, v96, v97, v98, v99, v100, v101, v102;
              return;
            }
          }

          v237 = 0;
          v486 = &v159->clientIdentity[16];
          while (1)
          {
            if (v237 >= *v159->clientIdentity)
            {
              goto LABEL_151;
            }

            v488 = v237;
            v489 = v486[v237];
            v238 = sub_1006A7CBC(v14, v489);
            if (v238 >> 62)
            {
              v318 = v238;
              v246 = _CocoaArrayWrapper.endIndex.getter();
              v238 = v318;
            }

            else
            {
              v246 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v247 = v504;
            v491 = v238;
            if (v246)
            {
              break;
            }

            v249 = _swiftEmptyDictionarySingleton;
LABEL_128:
            v491, v239, v240, v241, v242, v243, v244, v245;
            sub_10045BDE8(v249);
            v303 = v302;
            v249, v304, v305, v306, v307, v308, v309, v310;
            v14 = v492;
            sub_1006A7EF0(v492, v493, v489, v303);
            v237 = v488 + 1;
            v303, v311, v312, v313, v314, v315, v316, v317;
            v6 = v490;
            v159 = v494;
            if (v488 + 1 == v485)
            {
              goto LABEL_131;
            }
          }

          v248 = 0;
          v499 = v238 & 0xFFFFFFFFFFFFFF8;
          v501 = v238 & 0xC000000000000001;
          v497 = &v238->clientIdentity[16];
          v249 = _swiftEmptyDictionarySingleton;
          v495 = v246;
          while (2)
          {
            if (v501)
            {
              v252 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v253 = __OFADD__(v248++, 1);
              if (v253)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (v248 >= *(v499 + 16))
              {
                goto LABEL_147;
              }

              v252 = *&v497[8 * v248];
              v253 = __OFADD__(v248++, 1);
              if (v253)
              {
                goto LABEL_146;
              }
            }

            v254 = *v247->clientIdentity;
            v262 = v252;
            if (!v254 || (v263 = sub_100393C74(), (v255 & 1) == 0))
            {
              v505, v255, v256, v257, v258, v259, v260, v261;
              v494, v333, v334, v335, v336, v337, v338, v339;
              v249, v340, v341, v342, v343, v344, v345, v346;
              v247, v347, v348, v349, v350, v351, v352, v353;
              v490, v354, v355, v356, v357, v358, v359, v360;
              v491, v361, v362, v363, v364, v365, v366, v367;

              v368 = v262;
              v369 = Logger.logObject.getter();
              v370 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v369, v370))
              {
                v371 = v10;
                v372 = swift_slowAlloc();
                v520 = swift_slowAlloc();
                v511 = v520;
                *v372 = 136446978;
                *(v372 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v511);
                *(v372 + 12) = 2082;
                v373 = *&v371->clientIdentity[24];
                v516 = *&v371->clientIdentity[8];
                v517[0] = v373;
                *(v517 + 14) = *&v371->clientIdentity[38];
                sub_100009DAC(&v516, v510);
                v374 = sub_1000063E8();
                v376 = v375;
                sub_1005812D4(&v516);
                v377 = sub_10000668C(v374, v376, &v511);
                v376, v378, v379, v380, v381, v382, v383, v384;
                *(v372 + 14) = v377;
                *(v372 + 22) = 2080;
                v385 = [v368 description];
                v386 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v388 = v387;

                v389 = sub_10000668C(v386, v388, &v511);
                v388, v390, v391, v392, v393, v394, v395, v396;
                *(v372 + 24) = v389;
                *(v372 + 32) = 2080;
                v397 = [v368 description];
                v398 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v400 = v399;

                v401 = sub_10000668C(v398, v400, &v511);
                v400, v402, v403, v404, v405, v406, v407, v408;
                *(v372 + 34) = v401;
                _os_log_impl(&_mh_execute_header, v369, v370, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v372, 0x2Au);
                swift_arrayDestroy();
              }

              [objc_opt_self() noSuchObjectErrorWithObjectID:v368];
              swift_willThrow();

              return;
            }

            v264 = *(*&v247->clientIdentity[40] + 8 * v263);
            if ((v249 & 0xC000000000000001) != 0)
            {
              if (v249 < 0)
              {
                v265 = v249;
              }

              else
              {
                v265 = v249 & 0xFFFFFFFFFFFFFF8;
              }

              v266 = v264;
              v267 = __CocoaDictionary.count.getter();
              if (__OFADD__(v267, 1))
              {
                goto LABEL_149;
              }

              v268 = sub_10021D008(v265, v267 + 1);
            }

            else
            {
              v269 = v264;
              v268 = v249;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v510[0] = v268;
            v272 = sub_10002B924(v262);
            v273 = *(v268 + 16);
            v274 = (v271 & 1) == 0;
            v275 = v273 + v274;
            if (__OFADD__(v273, v274))
            {
              goto LABEL_148;
            }

            v276 = v271;
            if (*(v268 + 24) >= v275)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v249 = v268;
                v10 = v503;
                if ((v271 & 1) == 0)
                {
                  goto LABEL_104;
                }

                goto LABEL_83;
              }

              sub_1000F5104(&qword_10093D598, &unk_10079B210);
              v281 = static _DictionaryStorage.copy(original:)();
              v249 = v281;
              if (*(v268 + 16))
              {
                v289 = (v281 + 64);
                __src = (v268 + 64);
                v290 = ((1 << *(v249 + 32)) + 63) >> 6;
                if (v249 != v268 || v289 >= &__src[8 * v290])
                {
                  memmove(v289, __src, 8 * v290);
                }

                v291 = 0;
                *(v249 + 16) = *(v268 + 16);
                v292 = 1 << *(v268 + 32);
                if (v292 < 64)
                {
                  v293 = ~(-1 << v292);
                }

                else
                {
                  v293 = -1;
                }

                v480 = (v292 + 63) >> 6;
                v294 = v293 & *(v268 + 64);
                if (v294)
                {
                  do
                  {
                    v295 = __clz(__rbit64(v294));
                    v483 = (v294 - 1) & v294;
LABEL_123:
                    v298 = v295 | (v291 << 6);
                    v299 = *(*(v268 + 48) + 8 * v298);
                    v482 = *(*(v268 + 56) + 8 * v298);
                    *(*(v249 + 48) + 8 * v298) = v299;
                    *(*(v249 + 56) + 8 * v298) = v482;
                    v300 = v299;
                    v301 = v482;
                    v294 = v483;
                  }

                  while (v483);
                }

                v296 = v291;
                while (1)
                {
                  v291 = v296 + 1;
                  if (__OFADD__(v296, 1))
                  {
                    goto LABEL_153;
                  }

                  if (v291 >= v480)
                  {
                    break;
                  }

                  v297 = *&__src[8 * v291];
                  ++v296;
                  if (v297)
                  {
                    v295 = __clz(__rbit64(v297));
                    v483 = (v297 - 1) & v297;
                    goto LABEL_123;
                  }
                }
              }

              v268, v282, v283, v284, v285, v286, v287, v288;
              v10 = v503;
              if (v276)
              {
                goto LABEL_83;
              }

LABEL_104:
              *(v249 + 8 * (v272 >> 6) + 64) |= 1 << v272;
              *(*(v249 + 48) + 8 * v272) = v262;
              *(*(v249 + 56) + 8 * v272) = v264;

              v279 = *(v249 + 16);
              v253 = __OFADD__(v279, 1);
              v280 = v279 + 1;
              if (v253)
              {
                goto LABEL_150;
              }

              *(v249 + 16) = v280;
            }

            else
            {
              sub_10036CABC(v275, isUniquelyReferenced_nonNull_native);
              v249 = v510[0];
              v277 = sub_10002B924(v262);
              if ((v276 & 1) != (v278 & 1))
              {
                goto LABEL_154;
              }

              v272 = v277;
              v10 = v503;
              if ((v276 & 1) == 0)
              {
                goto LABEL_104;
              }

LABEL_83:

              v250 = *(v249 + 56);
              v251 = *(v250 + 8 * v272);
              *(v250 + 8 * v272) = v264;
            }

            v247 = v504;
            if (v248 == v495)
            {
              goto LABEL_128;
            }

            continue;
          }
        }
      }
    }

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
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_100650AD8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v515 = a2;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v509 = &v515;
  v9 = sub_1003E0E08(sub_1006AF7C8, v508, a1);
  if (v4)
  {
    return;
  }

  v10 = v9;
  v502 = a1;
  v11 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945730);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  v7, v15, v16, v17, v18, v19, v20, v21;
  v504 = v11;
  v505 = v10;
  v501 = v5;
  if (os_log_type_enabled(&v13->super, v14))
  {
    v22 = swift_slowAlloc();
    v522 = swift_slowAlloc();
    v511[0] = v522;
    *v22 = 136446978;
    *(v22 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v511);
    *(v22 + 12) = 2048;
    *(v22 + 14) = *v505->clientIdentity;
    v505, v23, v24, v25, v26, v27, v28, v29;
    *(v22 + 22) = 2082;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v30 = [swift_getObjCClassFromMetadata() description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_10000668C(v5, v32, v511);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v22 + 24) = v33;
    *(v22 + 32) = 2082;
    *(v22 + 34) = sub_10000668C(v8, v7, v511);
    _os_log_impl(&_mh_execute_header, &v13->super, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v22, 0x2Au);
    swift_arrayDestroy();

    v10 = v505;
  }

  else
  {

    v10, v48, v49, v50, v51, v52, v53, v54;
  }

  v507 = *v10->clientIdentity;
  if (!v507)
  {
    v106 = v10;
    goto LABEL_29;
  }

  v514 = _swiftEmptySetSingleton;
  v506 = &v10->clientIdentity[16];

  for (i = 0; i != v507; ++i)
  {
    if (i >= *v10->clientIdentity)
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      v14, v55, v56, v57, v58, v59, v60, v61;
      v10, v409, v410, v411, v412, v413, v414, v415;
      v495, v416, v417, v418, v419, v420, v421, v422;
      v13, v423, v424, v425, v426, v427, v428, v429;
      v430 = v5;
      v431 = v7;

      v432 = Logger.logObject.getter();
      v433 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v432, v433))
      {
        v434 = swift_slowAlloc();
        v512 = swift_slowAlloc();
        *v434 = 136446722;
        *(v434 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v512);
        *(v434 + 12) = 2082;
        v435 = *(v430 + 40);
        v516 = *(v430 + 24);
        v517[0] = v435;
        *(v517 + 14) = *(v430 + 54);
        sub_100009DAC(&v516, v511);
        v436 = sub_1000063E8();
        v438 = v437;
        sub_1005812D4(&v516);
        v439 = sub_10000668C(v436, v438, &v512);
        v438, v440, v441, v442, v443, v444, v445, v446;
        *(v434 + 14) = v439;
        *(v434 + 22) = 2080;
        v447 = [(RDXPCStorePerformer *)v431 description];
        v448 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v450 = v449;

        v451 = sub_10000668C(v448, v450, &v512);
        v450, v452, v453, v454, v455, v456, v457, v458;
        *(v434 + 24) = v451;
        _os_log_impl(&_mh_execute_header, v432, v433, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v434, 0x20u);
        swift_arrayDestroy();
        v8 = v491;
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v431];
      swift_willThrow();

      return;
    }

    v63 = &v506[16 * i];
    v5 = *(v63 + 1);
    v14 = *(v5 + 16);
    if (v14)
    {
      v522 = i;
      v64 = *v63;
      v65 = off_100941868;
      type metadata accessor for REMAccountStorageCDIngestor();
      v7 = v64;

      v66 = 32;
      v8 = v504;
      do
      {
        v513[0] = *(v5 + v66);
        v511[0] = v7;
        v67 = (v65)(v511, v513);
        v13 = &v514;
        sub_100392144(v67);
        v67, v68, v69, v70, v71, v72, v73, v74;
        ++v66;
        --v14;
      }

      while (v14);
      v5, v75, v76, v77, v78, v79, v80, v81;

      v10 = v505;
      i = v522;
    }
  }

  v10, v55, v56, v57, v58, v59, v60, v61;
  v82 = v502;
  if (v502 >> 62)
  {
    v480 = _CocoaArrayWrapper.endIndex.getter();
    v82 = v502;
    v7 = v480;
  }

  else
  {
    v7 = *((v502 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v84 = v82;
    v511[0] = &_swiftEmptyArrayStorage;
    v13 = v511;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v7 & 0x8000000000000000) != 0)
    {
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
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v85 = 0;
    v55 = v84;
    v14 = v84 & 0xC000000000000001;
    v86 = v84 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v5 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_122;
      }

      if (v14)
      {
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v85 >= *(v86 + 16))
        {
          __break(1u);
          v10, v55, v56, v57, v58, v59, v60, v61;
          v495, v459, v460, v461, v462, v463, v464, v465;
          0, v466, v467, v468, v469, v470, v471, v472;
          v493, v473, v474, v475, v476, v477, v478, v479;

          return;
        }

        v87 = *&v55[8 * v85 + 32];
      }

      v88 = v87;
      sub_1005E3810([v87 remObjectID], &qword_1009399F0, off_1008D4120);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(v511[0] + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v511;
      specialized ContiguousArray._endMutation()();
      ++v85;
      v55 = v502;
    }

    while (v5 != v7);
    v83 = v511[0];
  }

  v89 = v514;
  sub_1005E2514(v514);
  v91 = v90;
  v89, v92, v93, v94, v95, v96, v97, v98;
  v14 = sub_10065F214(v91, v501);
  v91, v99, v100, v101, v102, v103, v104, v105;
  v494 = sub_1006666A4(v83, v501);
  v83, v107, v108, v109, v110, v111, v112, v113;
  swift_beginAccess();
  v114 = 0;
  v115 = &selRef_persistentStoreForIdentifier_;
  v5 = v504;
  v497 = v14;
  do
  {
    if (v114 >= *v10->clientIdentity)
    {
      goto LABEL_135;
    }

    v483 = v114;
    v116 = &v506[16 * v114];
    v117 = *(v116 + 1);
    v8 = *v116;
    v495 = v117;

    v7 = sub_1005E3810([v8 v115[106]], &qword_1009399F0, off_1008D4120);

    v118 = v501[6];
    if ((v118 & 0xC000000000000001) != 0)
    {
      v119 = v7;

      v120 = __CocoaDictionary.lookup(_:)();
      if (v120)
      {
        v512 = v120;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v121 = v511[0];

        v118, v122, v123, v124, v125, v126, v127, v128;
      }

      else
      {

        v118, v139, v140, v141, v142, v143, v144, v145;
        v121 = 0;
      }

      v5 = v504;
    }

    else if (*(v118 + 16))
    {
      v129 = v7;

      v130 = sub_10002B924(v129);
      if (v131)
      {
        v121 = *(*(v118 + 56) + 8 * v130);

        v118, v132, v133, v134, v135, v136, v137, v138;
      }

      else
      {

        v118, v146, v147, v148, v149, v150, v151, v152;
        v121 = 0;
      }

      v5 = v504;
    }

    else
    {
      v121 = 0;
    }

    v13 = v494;
    v491 = v8;
    if (!*(v494 + 16))
    {
      goto LABEL_123;
    }

    v153 = sub_100393C74();
    v13 = v494;
    if ((v55 & 1) == 0)
    {
      goto LABEL_123;
    }

    v154 = *(*(v494 + 56) + 8 * v153);
    swift_bridgeObjectRetain_n();
    v155 = v7;
    v492 = v154;

    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();

    v487 = v155;
    if (os_log_type_enabled(v156, v157))
    {
      log = v156;
      LODWORD(v522) = v157;
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v512 = swift_slowAlloc();
      *v158 = 136446978;
      *(v158 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v512);
      *(v158 + 12) = 2082;
      v160 = *(v5 + 40);
      v520 = *(v5 + 24);
      v521[0] = v160;
      *(v521 + 14) = *(v5 + 54);
      sub_100009DAC(&v520, v511);
      v161 = sub_1000063E8();
      v163 = v162;
      sub_1005812D4(&v520);
      v164 = sub_10000668C(v161, v163, &v512);
      v163, v165, v166, v167, v168, v169, v170, v171;
      *(v158 + 14) = v164;
      *(v158 + 22) = 2114;
      *(v158 + 24) = v155;
      *v159 = v155;
      *(v158 + 32) = 2082;
      v172 = v495;
      v173 = *(v495 + 16);
      if (v173)
      {
        v511[0] = &_swiftEmptyArrayStorage;
        v174 = v155;
        sub_100026EF4(0, v173, 0);
        v182 = v511[0];
        v183 = *(v511[0] + 2);
        v184 = 16 * v183;
        v185 = 32;
        v186 = v495;
        do
        {
          if (*(&v186->super.isa + v185))
          {
            v187 = 0xD000000000000016;
          }

          else
          {
            v187 = 0xD000000000000011;
          }

          if (*(&v186->super.isa + v185))
          {
            v188 = "listIDsToUndelete";
          }

          else
          {
            v188 = "urrentAppVersion";
          }

          v511[0] = v182;
          v189 = *&v182->clientIdentity[8];
          v190 = v183 + 1;
          if (v183 >= v189 >> 1)
          {
            sub_100026EF4((v189 > 1), v183 + 1, 1);
            v186 = v495;
            v182 = v511[0];
          }

          *v182->clientIdentity = v190;
          v191 = v182 + v184;
          *(v191 + 4) = v187;
          *(v191 + 5) = v188 | 0x8000000000000000;
          v184 += 16;
          ++v185;
          v183 = v190;
          --v173;
        }

        while (v173);
        v172 = v186;
        v186, v175, v176, v177, v178, v179, v180, v181;
        v10 = v505;
        v14 = v497;
      }

      else
      {
        v199 = v155;
        v495, v200, v201, v202, v203, v204, v205, v206;
        v182 = &_swiftEmptyArrayStorage;
      }

      v207 = Array.description.getter();
      v209 = v208;
      v182, v208, v210, v211, v212, v213, v214, v215;
      v172, v216, v217, v218, v219, v220, v221, v222;
      v223 = sub_10000668C(v207, v209, &v512);
      v209, v224, v225, v226, v227, v228, v229, v230;
      *(v158 + 34) = v223;
      _os_log_impl(&_mh_execute_header, log, v522, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v158, 0x2Au);
      sub_1000050A4(v159, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v5 = v504;
      v8 = v491;
    }

    else
    {

      v172 = v495;
      swift_bridgeObjectRelease_n();
    }

    v231 = v172;
    v484 = *v172->clientIdentity;
    if (v484)
    {
      v232 = 0;
      v485 = &v231->clientIdentity[16];
      v486 = off_100941868;
      while (1)
      {
        if (v232 >= *v231->clientIdentity)
        {
          goto LABEL_134;
        }

        v488 = v232;
        v489 = v485[v232];
        v510 = v489;
        v511[0] = v8;
        v233 = type metadata accessor for REMAccountStorageCDIngestor();
        v234 = (v486)(v511, &v510, v5, v233, &off_1009417A8);
        if (!(v234 >> 62))
        {
          v242 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v490 = v234;
          if (v242)
          {
            break;
          }

          goto LABEL_112;
        }

        v302 = v234;
        v242 = _CocoaArrayWrapper.endIndex.getter();
        v234 = v302;
        v490 = v302;
        if (v242)
        {
          break;
        }

LABEL_112:
        v244 = _swiftEmptyDictionarySingleton;
LABEL_113:
        v490, v235, v236, v237, v238, v239, v240, v241;
        sub_10045BDE8(v244);
        v304 = v303;
        v244, v305, v306, v307, v308, v309, v310, v311;
        v8 = v491;
        sub_1002FB558(v491, v492, v489, v304);
        v232 = v488 + 1;
        v304, v312, v313, v314, v315, v316, v317, v318;
        v231 = v495;
        if (v488 + 1 == v484)
        {
          goto LABEL_114;
        }
      }

      v243 = 0;
      v503 = v234 & 0xC000000000000001;
      loga = (v234 + 32);
      v500 = v234 & 0xFFFFFFFFFFFFFF8;
      v244 = _swiftEmptyDictionarySingleton;
      v496 = v242;
      while (1)
      {
        if (v503)
        {
          v248 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v249 = __OFADD__(v243, 1);
          v250 = (v243 + 1);
          if (v249)
          {
            goto LABEL_129;
          }
        }

        else
        {
          if (v243 >= *(v500 + 16))
          {
            goto LABEL_130;
          }

          v248 = loga[v243].isa;
          v249 = __OFADD__(v243, 1);
          v250 = (v243 + 1);
          if (v249)
          {
            goto LABEL_129;
          }
        }

        v251 = *(v14 + 16);
        v259 = v248;
        if (!v251 || (v260 = sub_100393C74(), (v252 & 1) == 0))
        {
          v10, v252, v253, v254, v255, v256, v257, v258;
          v495, v333, v334, v335, v336, v337, v338, v339;
          v244, v340, v341, v342, v343, v344, v345, v346;
          v14, v347, v348, v349, v350, v351, v352, v353;
          v494, v354, v355, v356, v357, v358, v359, v360;
          v490, v361, v362, v363, v364, v365, v366, v367;

          v368 = v5;
          v369 = v259;
          v370 = Logger.logObject.getter();
          v371 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v370, v371))
          {
            v372 = swift_slowAlloc();
            v522 = swift_slowAlloc();
            v512 = v522;
            *v372 = 136446978;
            *(v372 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v512);
            *(v372 + 12) = 2082;
            v373 = *(v368 + 40);
            v518 = *(v368 + 24);
            v519[0] = v373;
            *(v519 + 14) = *(v368 + 54);
            sub_100009DAC(&v518, v511);
            v374 = sub_1000063E8();
            v376 = v375;
            sub_1005812D4(&v518);
            v377 = sub_10000668C(v374, v376, &v512);
            v376, v378, v379, v380, v381, v382, v383, v384;
            *(v372 + 14) = v377;
            *(v372 + 22) = 2080;
            v385 = [(objc_class *)v369 description];
            v386 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v388 = v387;

            v389 = sub_10000668C(v386, v388, &v512);
            v388, v390, v391, v392, v393, v394, v395, v396;
            *(v372 + 24) = v389;
            *(v372 + 32) = 2080;
            v397 = [(objc_class *)v369 description];
            v398 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v400 = v399;

            v401 = sub_10000668C(v398, v400, &v512);
            v400, v402, v403, v404, v405, v406, v407, v408;
            *(v372 + 34) = v401;
            _os_log_impl(&_mh_execute_header, v370, v371, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v372, 0x2Au);
            swift_arrayDestroy();
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v369];
          swift_willThrow();

          return;
        }

        v261 = *(*(v14 + 56) + 8 * v260);
        v522 = v250;
        if ((v244 & 0xC000000000000001) != 0)
        {
          if (v244 < 0)
          {
            v262 = v244;
          }

          else
          {
            v262 = v244 & 0xFFFFFFFFFFFFFF8;
          }

          v263 = v261;
          v264 = __CocoaDictionary.count.getter();
          if (__OFADD__(v264, 1))
          {
            goto LABEL_132;
          }

          v265 = sub_10021D008(v262, v264 + 1);
        }

        else
        {
          v266 = v261;
          v265 = v244;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v511[0] = v265;
        v268 = v259;
        v270 = sub_10002B924(v259);
        v271 = *(v265 + 16);
        v272 = (v269 & 1) == 0;
        v273 = v271 + v272;
        if (__OFADD__(v271, v272))
        {
          goto LABEL_131;
        }

        v274 = v269;
        if (*(v265 + 24) >= v273)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v244 = v265;
            v5 = v504;
            if (v269)
            {
              goto LABEL_67;
            }
          }

          else
          {
            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v279 = static _DictionaryStorage.copy(original:)();
            v244 = v279;
            if (*(v265 + 16))
            {
              v287 = (v279 + 64);
              __src = (v265 + 64);
              v288 = ((1 << *(v244 + 32)) + 63) >> 6;
              if (v244 != v265 || v287 >= &__src[8 * v288])
              {
                memmove(v287, __src, 8 * v288);
              }

              v289 = 0;
              *(v244 + 16) = *(v265 + 16);
              v290 = 1 << *(v265 + 32);
              if (v290 < 64)
              {
                v291 = ~(-1 << v290);
              }

              else
              {
                v291 = -1;
              }

              v292 = (v290 + 63) >> 6;
              v293 = v291 & *(v265 + 64);
              if (v293)
              {
                do
                {
                  v294 = __clz(__rbit64(v293));
                  v482 = (v293 - 1) & v293;
LABEL_107:
                  v297 = v294 | (v289 << 6);
                  v298 = *(*(v265 + 48) + 8 * v297);
                  v299 = *(*(v265 + 56) + 8 * v297);
                  *(*(v244 + 48) + 8 * v297) = v298;
                  *(*(v244 + 56) + 8 * v297) = v299;
                  v300 = v298;
                  v301 = v299;
                  v293 = v482;
                }

                while (v482);
              }

              v295 = v289;
              while (1)
              {
                v289 = v295 + 1;
                if (__OFADD__(v295, 1))
                {
                  goto LABEL_136;
                }

                if (v289 >= v292)
                {
                  break;
                }

                v296 = *&__src[8 * v289];
                ++v295;
                if (v296)
                {
                  v294 = __clz(__rbit64(v296));
                  v482 = (v296 - 1) & v296;
                  goto LABEL_107;
                }
              }
            }

            v265, v280, v281, v282, v283, v284, v285, v286;
            v5 = v504;
            v10 = v505;
            if (v274)
            {
LABEL_67:
              v245 = v268;

              v246 = *(v244 + 56);
              v247 = *(v246 + 8 * v270);
              *(v246 + 8 * v270) = v261;

              goto LABEL_68;
            }
          }
        }

        else
        {
          sub_10036CABC(v273, isUniquelyReferenced_nonNull_native);
          v244 = v511[0];
          v275 = sub_10002B924(v268);
          if ((v274 & 1) != (v276 & 1))
          {
            goto LABEL_137;
          }

          v270 = v275;
          v5 = v504;
          if (v274)
          {
            goto LABEL_67;
          }
        }

        *(v244 + 8 * (v270 >> 6) + 64) |= 1 << v270;
        *(*(v244 + 48) + 8 * v270) = v268;
        *(*(v244 + 56) + 8 * v270) = v261;

        v277 = *(v244 + 16);
        v249 = __OFADD__(v277, 1);
        v278 = v277 + 1;
        if (v249)
        {
          goto LABEL_133;
        }

        *(v244 + 16) = v278;
LABEL_68:
        v14 = v497;
        v243 = v522;
        if (v522 == v496)
        {
          goto LABEL_113;
        }
      }
    }

LABEL_114:
    v231, v192, v193, v194, v195, v196, v197, v198;
    if (*(v5 + 104) == 1)
    {
      [v492 updateChangeCount];
    }

    v114 = v483 + 1;
    v115 = &selRef_persistentStoreForIdentifier_;
  }

  while ((v483 + 1) != v507);
  v10, v319, v320, v321, v322, v323, v324, v325;
  v14, v326, v327, v328, v329, v330, v331, v332;
  v106 = v494;
LABEL_29:
  v106, v41, v42, v43, v44, v45, v46, v47;
}