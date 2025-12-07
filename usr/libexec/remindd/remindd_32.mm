uint64_t sub_100321830()
{
  v470 = v0;
  (*(v0[101] + 8))(v0[102], v0[100]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[80];
    v4 = swift_slowAlloc();
    v469[0] = swift_slowAlloc();
    *v4 = 136446466;
    v0[72] = v3;
    sub_1000F5104(&qword_100942108, &unk_1007A2520);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    v8 = sub_10000668C(v5, v6, v469);
    v7, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    swift_getErrorValue();
    v16 = Error.rem_errorDescription.getter();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, v469);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v4 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s: Failed to predict categories of reminder titles {error: %{public}s}", v4, 0x16u);
    swift_arrayDestroy();
  }

  v27 = v0[76];
  v28 = v0[75];
  sub_10033251C(v27, (v0 + 26));

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  sub_100332478(v27);
  v28, v31, v32, v33, v34, v35, v36, v37;
  v435 = v0;
  if (os_log_type_enabled(v29, v30))
  {
    v38 = v0[80];
    v39 = v0[76];
    v40 = v0[75];
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v468 = swift_slowAlloc();
    *v41 = 136446722;
    v0[69] = v38;
    sub_1000F5104(&qword_100942108, &unk_1007A2520);
    v43 = String.init<A>(describing:)();
    v45 = v44;
    v46 = sub_10000668C(v43, v44, &v468);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v41 + 4) = v46;
    *(v41 + 12) = 2114;
    v54 = *(v39 + 8);
    v0[74] = v54;
    *(v41 + 14) = v54;
    *v42 = v54;
    *(v41 + 22) = 2082;
    v55 = *(v40 + 16);
    v56 = v0;
    if (v55)
    {
      v57 = v0[75];
      v469[0] = &_swiftEmptyArrayStorage;
      sub_100010364((v56 + 74), (v56 + 70), &unk_10093AF40, &unk_100795790);
      specialized ContiguousArray.reserveCapacity(_:)();
      v58 = (v57 + 32);
      do
      {
        v59 = *v58;
        v58 += 3;
        v60 = v59;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v55;
      }

      while (v55);
      v61 = v469[0];
    }

    else
    {
      sub_100010364((v0 + 74), (v0 + 71), &unk_10093AF40, &unk_100795790);
      v61 = &_swiftEmptyArrayStorage;
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v62 = Array.description.getter();
    v64 = v63;
    v61, v63, v65, v66, v67, v68, v69, v70;
    v71 = sub_10000668C(v62, v64, &v468);
    v64, v72, v73, v74, v75, v76, v77, v78;
    *(v41 + 24) = v71;
    _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: Failed to predict categories of reminder titles {listObjectID: %{public}@, reminderIDs: %{public}s}", v41, 0x20u);
    sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {
  }

  v79 = v435;
  v80 = sub_10038E004(&_swiftEmptyArrayStorage);

  v81 = *(v435[117] + 16);
  v82 = *(v81 + 16);

  swift_beginAccess();
  v83 = swift_beginAccess();
  v450 = v81;
  v452 = v82;
  v448 = v80;
  if (v82)
  {
    v91 = 0;
    v92 = v435[93];
    v429 = (v92 + 32);
    v454 = (v92 + 8);
    v428 = (v92 + 56);
    v425 = (v435[82] + 8);
    v426 = (v92 + 48);
    v432 = v435[76];
    v430 = v92;
    v456 = (v92 + 16);
    v93 = (v81 + 48);
    v94 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v91 >= *(v81 + 16))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v83, v84, v85, v86, v87);
      }

      v466 = v91;
      v462 = v94;
      v103 = v79[114];
      v104 = *(v93 - 1);
      v458 = v93;
      v105 = *v93;
      v106 = *(v93 - 2);

      v460 = v106;
      v107 = [(RDXPCStorePerformer *)v106 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v108 = *(v103 + 16);
      v464 = v105;
      if (!v108)
      {
        break;
      }

      v109 = [v108 membershipByMemberIdentifier];
      sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v110 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v110 + 16) || (v118 = sub_100363F20(v79[99]), (v111 & 1) == 0))
      {
        v110, v111, v112, v113, v114, v115, v116, v117;
LABEL_27:
        v136 = 0;
        goto LABEL_28;
      }

      v119 = v79[115];
      v120 = *(*(v110 + 56) + 8 * v118);
      v110, v121, v122, v123, v124, v125, v126, v127;
      if (v120)
      {
        v135 = *(v119 + 16);

        v136 = v120;
        v137 = [v136 groupIdentifier];
        if (v137)
        {
          v138 = v79[98];
          v139 = v79[97];
          v140 = v79[92];
          v141 = v137;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v429)(v138, v139, v140);
          if (*(v135 + 16))
          {
            v142 = sub_100363F20(v79[98]);
            if (v143)
            {
              v144 = v142;
              v437 = v79[92];
              v441 = v79[98];
              v145 = v79[91];
              v146 = v136;
              v147 = *(v135 + 56);
              v148 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
              v149 = v105;
              v150 = *(v148 - 8);
              sub_100193AB0(v147 + *(v150 + 72) * v144, v145);

              (*v454)(v441, v437);
              v151 = v148;
              v79 = v435;
              (*(v150 + 56))(v145, 0, 1, v151);
              v105 = v149;
              sub_1000050A4(v145, &qword_1009420F8, &unk_1007A2508);
              v135, v152, v153, v154, v155, v156, v157, v158;
              v80 = v448;
LABEL_49:
              v270 = [v146 groupIdentifier];
              v446 = v146;
              if (v270)
              {
                v271 = v270;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v272 = 0;
              }

              else
              {
                v272 = 1;
              }

              v273 = v79[116];
              v274 = v79[115];
              v275 = v79[113];
              v276 = v79[90];
              v277 = v79[89];
              (*v428)(v277, v272, 1, v79[92]);
              sub_100031B58(v277, v276, &unk_100939D90, "8\n\r");
              v278 = *(v273 + 16);
              v279 = *(v274 + 16);
              v280 = v278;

              LOBYTE(v275) = sub_100192E28(v278, v80, v120, v279, v275, v104, v105);
              v279, v281, v282, v283, v284, v285, v286, v287;

              v295 = v105;
              v427 = v275;
              if (v275)
              {
                v296 = v79[92];
                v297 = v79[90];
                v298 = v79[88];
                v79[60] = v104;
                v79[61] = v295;
                sub_10013BCF4();
                v299 = StringProtocol.lowercased(with:)();
                v438 = v300;
                v443 = v299;
                sub_100010364(v297, v298, &unk_100939D90, "8\n\r");
                static Date.now.getter();
                if ((*v426)(v298, 1, v296) == 1)
                {
                  isa = 0;
                }

                else
                {
                  v302 = v79[92];
                  v303 = v79[88];
                  isa = UUID._bridgeToObjectiveC()().super.isa;
                  (*v454)(v303, v302);
                }

                v422 = v79[120];
                v423 = v79[122];
                v304 = v79[115];
                v305 = v435[90];
                v306 = v435[85];
                v307 = v435[81];
                v308 = objc_allocWithZone(REMTimestampedUUID);
                v309 = Date._bridgeToObjectiveC()().super.isa;
                v310 = [v308 initWithIdentifier:isa modifiedOn:v309];

                (*v425)(v306, v307);
                swift_beginAccess();
                sub_10031DEEC(v310, v443, v438, sub_1002C8FA0, sub_10037572C);
                swift_endAccess();
                v311 = *(v304 + 16);

                v312 = v305;
                v79 = v435;
                sub_1003348C0(v104, v464, v120, v311, v312, v422, v423);
                v311, v313, v314, v315, v316, v317, v318, v319;
                v295 = v464;
                v80 = v448;
              }

              v320 = v79[99];
              v321 = v79[94];
              v322 = v79[92];
              v323 = v79[90];
              v324 = v79[87];
              v325 = v79[76];
              v295, v288, v289, v290, v291, v292, v293, v294;
              (*v456)(v321, v320, v322);
              sub_100010364(v323, v324, &unk_100939D90, "8\n\r");
              sub_10033251C(v325, (v79 + 18));
              v326 = Logger.logObject.getter();
              LOBYTE(v320) = static os_log_type_t.default.getter();
              sub_100332478(v325);
              v327 = v320;
              v328 = os_log_type_enabled(v326, v320);
              v329 = v79[99];
              v330 = v79[94];
              v439 = v79[90];
              v444 = v79[92];
              v331 = v79[87];
              if (v328)
              {
                v332 = v79[80];
                v333 = swift_slowAlloc();
                v420 = swift_slowAlloc();
                v469[0] = swift_slowAlloc();
                *v333 = 136447234;
                v79[65] = v332;
                sub_1000F5104(&qword_100942108, &unk_1007A2520);
                v334 = String.init<A>(describing:)();
                log = v326;
                v336 = v335;
                v424 = v329;
                v337 = sub_10000668C(v334, v335, v469);
                v336, v338, v339, v340, v341, v342, v343, v344;
                *(v333 + 4) = v337;
                *(v333 + 12) = 2114;
                v345 = *(v432 + 8);
                v79[68] = v345;
                *(v333 + 14) = v345;
                *v420 = v345;
                type = v327;
                *(v333 + 22) = 2082;
                sub_100010364((v79 + 68), (v79 + 66), &unk_10093AF40, &unk_100795790);
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v346 = dispatch thunk of CustomStringConvertible.description.getter();
                v348 = v347;
                v349 = *v454;
                (*v454)(v330, v444);
                v350 = sub_10000668C(v346, v348, v469);
                v348, v351, v352, v353, v354, v355, v356, v357;
                *(v333 + 24) = v350;
                *(v333 + 32) = 2082;
                v358 = Optional.descriptionOrNil.getter();
                v360 = v359;
                sub_1000050A4(v331, &unk_100939D90, "8\n\r");
                v361 = sub_10000668C(v358, v360, v469);
                v360, v362, v363, v364, v365, v366, v367, v368;
                *(v333 + 34) = v361;
                *(v333 + 42) = 1026;
                *(v333 + 44) = v427 & 1;
                _os_log_impl(&_mh_execute_header, log, type, "%{public}s: Skipped auto-categorizing reminder while checking local correction  {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v333, 0x30u);
                sub_1000050A4(v420, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                v464, v369, v370, v371, v372, v373, v374, v375;
                sub_1000050A4(v439, &unk_100939D90, "8\n\r");
                v83 = (v349)(v424, v444);
                v80 = v448;
              }

              else
              {

                v464, v376, v377, v378, v379, v380, v381, v382;
                sub_1000050A4(v331, &unk_100939D90, "8\n\r");
                v383 = *v454;
                (*v454)(v330, v444);
                sub_1000050A4(v439, &unk_100939D90, "8\n\r");
                v83 = (v383)(v329, v444);
              }

              v94 = v462;
              goto LABEL_44;
            }
          }

          v251 = v79[98];
          v252 = v79[92];
          v253 = v79[91];

          (*v454)(v251, v252);
          v254 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
          (*(*(v254 - 8) + 56))(v253, 1, 1, v254);
          sub_1000050A4(v253, &qword_1009420F8, &unk_1007A2508);
          v135, v255, v256, v257, v258, v259, v260, v261;
          v80 = v448;
          v81 = v450;
        }

        else
        {
          v146 = v136;
          v262 = *(v79 + 73);

          v135, v263, v264, v265, v266, v267, v268, v269;
          if ((v262 & 1) == 0)
          {
            goto LABEL_49;
          }

          v81 = v450;
          v136 = v146;
        }
      }

      else
      {
        v136 = 0;
        v81 = v450;
      }

LABEL_28:
      if (!*(v80 + 16))
      {
        v105, v128, v129, v130, v131, v132, v133, v134;
        v168 = *v456;
LABEL_35:
        v183 = v79[76];
        v168(v79[95], v79[99], v79[92]);
        sub_10033251C(v183, (v79 + 34));
        v184 = Logger.logObject.getter();
        v185 = static os_log_type_t.default.getter();
        sub_100332478(v183);
        v186 = os_log_type_enabled(v184, v185);
        v187 = v79[99];
        v188 = v79[95];
        v189 = v79[92];
        if (v186)
        {
          v190 = v79[80];
          v442 = v79[99];
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v469[0] = swift_slowAlloc();
          *v191 = 136446978;
          v79[62] = v190;
          sub_1000F5104(&qword_100942108, &unk_1007A2520);
          v193 = String.init<A>(describing:)();
          v195 = v194;
          v196 = sub_10000668C(v193, v194, v469);
          v195, v197, v198, v199, v200, v201, v202, v203;
          *(v191 + 4) = v196;
          *(v191 + 12) = 2048;
          *(v191 + 14) = v466;
          *(v191 + 22) = 2114;
          v204 = *(v432 + 8);
          v79[67] = v204;
          *(v191 + 24) = v204;
          *v192 = v204;
          *(v191 + 32) = 2082;
          sub_100010364((v79 + 67), (v79 + 63), &unk_10093AF40, &unk_100795790);
          sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v205 = dispatch thunk of CustomStringConvertible.description.getter();
          v207 = v206;
          v208 = *v454;
          (*v454)(v188, v189);
          v209 = v205;
          v81 = v450;
          v210 = sub_10000668C(v209, v207, v469);
          v207, v211, v212, v213, v214, v215, v216, v217;
          *(v191 + 34) = v210;
          _os_log_impl(&_mh_execute_header, v184, v185, "%{public}s: Did not auto-categorize reminder due to auto-categorizer having 0 predication for reminder title {index: %ld, listObjectID: %{public}@, reminderIdentifier: %{public}s}", v191, 0x2Au);
          sub_1000050A4(v192, &unk_100938E70, &unk_100797230);
          v80 = v448;

          swift_arrayDestroy();

          v464, v218, v219, v220, v221, v222, v223, v224;
          v83 = (v208)(v442, v189);
          v79 = v435;
        }

        else
        {

          v464, v95, v96, v97, v98, v99, v100, v101;
          v102 = *v454;
          (*v454)(v188, v189);
          v83 = (v102)(v187, v189);
        }

        v94 = v462;
        goto LABEL_15;
      }

      v159 = sub_100005F4C(v104, v105);
      v161 = v160;
      v105, v160, v162, v163, v164, v165, v166, v167;
      v168 = *v456;
      if ((v161 & 1) == 0)
      {
        goto LABEL_35;
      }

      v169 = v79[96];
      v170 = (*(v80 + 56) + 16 * v159);
      v172 = *v170;
      v171 = v170[1];
      v168(v169, v79[99], v79[92]);

      v94 = v462;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v469[0] = v462;
      v83 = sub_100363F20(v169);
      v177 = *(v462 + 16);
      v178 = (v84 & 1) == 0;
      v179 = __OFADD__(v177, v178);
      v180 = v177 + v178;
      if (v179)
      {
        goto LABEL_69;
      }

      v181 = v84;
      if (*(v462 + 24) >= v180)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v384 = v136;
          v385 = v83;
          sub_100375740();
          v83 = v385;
          v136 = v384;
          v94 = v469[0];
        }
      }

      else
      {
        v182 = v79[96];
        sub_10036E938(v180, isUniquelyReferenced_nonNull_native);
        v94 = v469[0];
        v83 = sub_100363F20(v182);
        if ((v181 & 1) != (v84 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v225 = v79[99];
      v226 = v79[96];
      v227 = v79[92];
      if (v181)
      {
        v228 = (v94[7] + 16 * v83);
        v229 = v228[1];
        *v228 = v172;
        v228[1] = v171;
        v229, v84, v85, v86, v87, v174, v175, v176;

        v464, v230, v231, v232, v233, v234, v235, v236;
        v237 = *v454;
        (*v454)(v226, v227);
        v83 = (v237)(v225, v227);
      }

      else
      {
        v94[(v83 >> 6) + 8] |= 1 << v83;
        v463 = v225;
        v238 = v136;
        v239 = v83;
        v168(v94[6] + *(v430 + 72) * v83, v226, v227);
        v240 = (v94[7] + 16 * v239);
        *v240 = v172;
        v240[1] = v171;

        v464, v241, v242, v243, v244, v245, v246, v247;
        v248 = *(v430 + 8);
        v248(v226, v227);
        v83 = (v248)(v463, v227);
        v249 = v94[2];
        v179 = __OFADD__(v249, 1);
        v250 = v249 + 1;
        if (v179)
        {
          goto LABEL_70;
        }

        v94[2] = v250;
      }

      v80 = v448;
LABEL_44:
      v81 = v450;
LABEL_15:
      v91 = v466 + 1;
      v93 = v458 + 3;
      if (v452 == v466 + 1)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_27;
  }

  v94 = _swiftEmptyDictionarySingleton;
LABEL_62:
  v386 = v79[130];
  v81, v84, v85, v86, v87, v88, v89, v90;
  v386, v387, v388, v389, v390, v391, v392, v393;
  v80, v394, v395, v396, v397, v398, v399, v400;
  v461 = v79[124];
  v459 = *(v79 + 35);
  v440 = *(v79 + 76);
  v465 = v79[119];
  v467 = v79[118];
  v451 = v79[114];
  v453 = v79[116];
  v401 = v79;
  v402 = v79[113];
  v403 = v401[112];
  v445 = v403;
  v433 = v401[111];
  v455 = v401[108];
  v457 = v401[106];
  v404 = v401[84];
  v405 = v401[82];
  v406 = v401[81];
  v447 = v406;
  v449 = v401[78];
  v407 = v401[77];
  v408 = v401[76];
  v436 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v402, v403, &unk_10093F420, &unk_100797AE0);
  (*(v405 + 16))(v404, v407, v406);
  v409 = (v440 + 104) & ~v440;
  v434 = (v409 + v433 + 7) & 0xFFFFFFFFFFFFFFF8;
  v431 = (v434 + 15) & 0xFFFFFFFFFFFFFFF8;
  v410 = (v431 + 15) & 0xFFFFFFFFFFFFFFF8;
  v411 = (v410 + 15) & 0xFFFFFFFFFFFFFFF8;
  v412 = (v411 + *(v405 + 80) + 8) & ~*(v405 + 80);
  v413 = swift_allocObject();
  v401[136] = v413;
  *(v413 + 16) = v436;
  *(v413 + 24) = v449;
  v414 = *v408;
  v415 = v408[1];
  v416 = v408[2];
  *(v413 + 73) = *(v408 + 41);
  *(v413 + 48) = v415;
  *(v413 + 64) = v416;
  *(v413 + 32) = v414;
  *(v413 + 96) = v94;
  sub_100031B58(v445, v413 + v409, &unk_10093F420, &unk_100797AE0);
  *(v413 + v434) = v467;
  *(v413 + v431) = v451;
  *(v413 + v410) = v465;
  *(v413 + v411) = v453;
  (*(v405 + 32))(v413 + v412, v404, v447);
  v461(v455, v459, v457);
  v417 = v449;
  sub_10033251C(v408, (v401 + 10));

  v83 = swift_task_alloc();
  v401[137] = v83;
  *v83 = v401;
  *(v83 + 8) = sub_100322FDC;
  v84 = v401[108];
  v85 = sub_100332578;
  v87 = &type metadata for () + 1;
  v86 = v413;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v83, v84, v85, v86, v87);
}

uint64_t sub_100322FDC()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  (*(v2 + 1024))(*(v2 + 864), *(v2 + 848));

  if (v0)
  {
    v3 = sub_10032334C;
  }

  else
  {
    v3 = sub_100323168;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100323168()
{
  sub_1000050A4(*(v0 + 904), &unk_10093F420, &unk_100797AE0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032334C()
{
  sub_1000050A4(*(v0 + 904), &unk_10093F420, &unk_100797AE0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100323524(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 632) = v5;
  *(v6 + 624) = a5;
  *(v6 + 616) = a4;
  *(v6 + 73) = a3;
  *(v6 + 608) = a2;
  *(v6 + 600) = a1;
  *(v6 + 640) = *v5;
  v7 = type metadata accessor for Date();
  *(v6 + 648) = v7;
  v8 = *(v7 - 8);
  *(v6 + 656) = v8;
  *(v6 + 664) = *(v8 + 64);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = sub_1000F5104(&unk_100939D90, "8\n\r");
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  sub_1000F5104(&qword_1009420F8, &unk_1007A2508);
  *(v6 + 728) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v6 + 736) = v9;
  *(v6 + 744) = *(v9 - 8);
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  v10 = type metadata accessor for REMAnalyticsEvent();
  *(v6 + 800) = v10;
  *(v6 + 808) = *(v10 - 8);
  *(v6 + 816) = swift_task_alloc();
  v11 = type metadata accessor for AutoCategorizeSessionType();
  *(v6 + 824) = v11;
  *(v6 + 832) = *(v11 - 8);
  *(v6 + 840) = swift_task_alloc();
  v12 = type metadata accessor for DispatchTime();
  *(v6 + 848) = v12;
  *(v6 + 856) = *(v12 - 8);
  *(v6 + 864) = swift_task_alloc();
  v13 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 872) = v13;
  *(v6 + 880) = *(v13 - 8);
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  v14 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  *(v6 + 904) = v14;
  *(v6 + 912) = *(v14 + 64);
  *(v6 + 920) = swift_task_alloc();
  *(v6 + 928) = swift_task_alloc();

  return _swift_task_switch(sub_100323958, 0, 0);
}

uint64_t sub_100323958()
{
  v1 = *(v0 + 608);
  v2 = swift_allocObject();
  *(v0 + 936) = v2;
  v44 = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 944) = v3;
  v46 = v3;
  *(v3 + 16) = _swiftEmptyDictionarySingleton;
  v4 = swift_allocObject();
  *(v0 + 952) = v4;
  v47 = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v0 + 960) = v5;
  v43 = v5;
  *(v5 + 16) = &_swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  *(v0 + 968) = v6;
  v42 = v6;
  *(v6 + 16) = &_swiftEmptyArrayStorage;
  v7 = swift_allocObject();
  *(v0 + 976) = v7;
  v41 = v7;
  *(v7 + 16) = _swiftEmptyDictionarySingleton;
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  *(v0 + 984) = v8;
  v37 = v9;
  v38 = v8;
  if (v8)
  {

    Locale.init(identifier:)();
    v10 = 0;
    v40 = *(v0 + 608);
  }

  else
  {
    v40 = v1;
    v10 = 1;
  }

  v11 = *(v0 + 928);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  v14 = *(v0 + 904);
  v36 = *(v0 + 880);
  v39 = *(v0 + 896);
  v15 = *(v0 + 624);
  v34 = v12;
  v35 = *(v0 + 73);
  v45 = *(v0 + 600);
  v16 = type metadata accessor for Locale();
  (*(*(v16 - 8) + 56))(v11, v10, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v11, v12, &unk_10093F420, &unk_100797AE0);
  v18 = *(v14 + 80);
  *(v0 + 76) = v18;
  v19 = (v18 + 128) & ~v18;
  v20 = v19 + v13;
  v21 = (v19 + v13) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v0 + 992) = v24;
  *(v24 + 16) = v17;
  *(v24 + 24) = v15;
  v25 = *v40;
  v26 = v40[1];
  v27 = v40[2];
  *(v24 + 73) = *(v40 + 41);
  *(v24 + 48) = v26;
  *(v24 + 64) = v27;
  *(v24 + 32) = v25;
  *(v24 + 96) = v44;
  *(v24 + 104) = v46;
  *(v24 + 112) = v47;
  *(v24 + 120) = v45;
  sub_100031B58(v34, v24 + v19, &unk_10093F420, &unk_100797AE0);
  *(v24 + v20) = v35;
  *(v24 + v21 + 8) = v42;
  *(v24 + v22) = v41;
  v28 = (v24 + v23);
  *v28 = v37;
  v28[1] = v38;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v43;
  *(v0 + 140) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v29 = *(v36 + 104);
  *(v0 + 1000) = v29;
  *(v0 + 1008) = (v36 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v29(v39);

  v30 = v15;
  sub_10033251C(v40, v0 + 16);

  v31 = swift_task_alloc();
  *(v0 + 1016) = v31;
  *v31 = v0;
  v31[1] = sub_100323D68;
  v32 = *(v0 + 896);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v31, v32, sub_1003362DC, v24, &type metadata for () + 1);
}

uint64_t sub_100323D68()
{
  v2 = *v1;
  v2[128] = v0;

  v3 = v2[112];
  v4 = v2[110];
  v5 = v2[109];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100324438;
  }

  else
  {
    v7 = *(v4 + 8);
    v2[129] = v7;
    v2[130] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v6 = sub_100323F34;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100323F34()
{
  v62 = v0;
  if (!*(v0 + 984))
  {
    v56 = *(v0 + 1000);
    v55 = *(v0 + 140);
    v24 = *(v0 + 76);
    v58 = *(v0 + 976);
    v60 = *(v0 + 968);
    v51 = *(v0 + 936);
    v52 = *(v0 + 952);
    v25 = *(v0 + 928);
    v26 = *(v0 + 920);
    v46 = *(v0 + 912);
    v53 = *(v0 + 888);
    v54 = *(v0 + 872);
    v27 = *(v0 + 672);
    v50 = v27;
    v28 = *(v0 + 656);
    v29 = *(v0 + 648);
    v48 = v26;
    v49 = v29;
    v57 = *(v0 + 624);
    v30 = *(v0 + 616);
    v31 = *(v0 + 608);
    v47 = swift_allocObject();
    swift_weakInit();
    sub_100010364(v25, v26, &unk_10093F420, &unk_100797AE0);
    (*(v28 + 16))(v27, v30, v29);
    v32 = (v24 + 104) & ~v24;
    v33 = (v32 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + *(v28 + 80) + 8) & ~*(v28 + 80);
    v38 = swift_allocObject();
    *(v0 + 1088) = v38;
    *(v38 + 16) = v47;
    *(v38 + 24) = v57;
    v39 = *v31;
    v40 = v31[1];
    v41 = v31[2];
    *(v38 + 73) = *(v31 + 41);
    *(v38 + 48) = v40;
    *(v38 + 64) = v41;
    *(v38 + 32) = v39;
    *(v38 + 96) = _swiftEmptyDictionarySingleton;
    sub_100031B58(v48, v38 + v32, &unk_10093F420, &unk_100797AE0);
    *(v38 + v33) = v60;
    *(v38 + v34) = v51;
    *(v38 + v35) = v58;
    *(v38 + v36) = v52;
    (*(v28 + 32))(v38 + v37, v50, v49);
    v56(v53, v55, v54);
    v42 = v57;
    sub_10033251C(v31, v0 + 80);

    v19 = swift_task_alloc();
    *(v0 + 1096) = v19;
    *v19 = v0;
    v19[1] = sub_100327384;
    v20 = *(v0 + 888);
    v21 = sub_100336410;
    v23 = &type metadata for () + 1;
    v22 = v38;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v19, v20, v21, v22, v23);
  }

  v1 = *(v0 + 960);
  v2 = *(v0 + 944);
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v0 + 512) = v3;

  sub_1000F5104(&qword_1009420F0, &qword_1007A24F0);
  sub_10000CB48(&qword_100942100, &qword_1009420F0, &qword_1007A24F0, &protocol conformance descriptor for [A]);
  v4 = Sequence.mapToSet<A>(_:)();
  *(v0 + 1048) = v4;
  v3, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v2 + 16);
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v59 = v4;
  v14 = sub_100368C88(v13, 0);
  v15 = *(_s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0) - 8);
  sub_100279EBC(v61, v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v13, v12);
  v17 = v16;
  v18 = v61[0];

  v19 = sub_10001B860(v18);
  if (v17 != v13)
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(schedule:_:)(v19, v20, v21, v22, v23);
  }

  v4 = v59;
LABEL_9:
  *(v0 + 1056) = v14;
  static DispatchTime.now()();
  v43 = swift_task_alloc();
  *(v0 + 1064) = v43;
  *v43 = v0;
  v43[1] = sub_100324620;
  v44 = *(v0 + 608);

  return sub_100480978(v4, v44, v14);
}

uint64_t sub_100324438()
{
  sub_1000050A4(*(v0 + 928), &unk_10093F420, &unk_100797AE0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100324620(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1072) = a1;
  *(v3 + 1080) = v1;

  if (v1)
  {
    *(v3 + 1048), v4, v5, v6, v7, v8, v9, v10;

    v11 = sub_100325C38;
  }

  else
  {

    v11 = sub_100324774;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100324774()
{
  v408 = v0;
  v1 = *(v0 + 1072);
  if (!v1)
  {
    v1 = sub_10038E004(&_swiftEmptyArrayStorage);
  }

  v2 = *(v0 + 1048);
  v398 = *(v0 + 864);
  v400 = *(v0 + 856);
  v404 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  v391 = *(v0 + 808);
  v395 = *(v0 + 800);
  v7 = *(v0 + 73);
  static DispatchTime.secondsElapsed(since:)();
  v9 = v8;
  v10 = *(v2 + 16);
  v381 = v10;
  v2, v11, v12, v13, v14, v15, v16, v17;
  v18 = *(v1 + 16);

  v379 = v1;
  sub_1001A5080(v19);
  v388 = *(v20 + 16);
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = &enum case for AutoCategorizeSessionType.initial(_:);
  v384 = v10 - v18;
  if (!v7)
  {
    v28 = &enum case for AutoCategorizeSessionType.postEnablement(_:);
  }

  v29 = v3;
  (*(v4 + 104))(v3, *v28, v5);
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v30 = sub_1000F5104(&qword_100942140, &qword_1007A25C0);
  v31 = v30[12];
  v32 = v30[16];
  v33 = v30[20];
  v34 = v30[24];
  (*(v4 + 16))(v6, v29, v5);
  *(v6 + v31) = v9;
  *(v6 + v32) = v381;
  *(v6 + v33) = v388;
  *(v6 + v34) = v384;
  (*(v391 + 104))(v6, enum case for REMAnalyticsEvent.autoCategorizeSession(_:), v395);
  REMAnalyticsManager.post(event:)();

  (*(v391 + 8))(v6, v395);
  (*(v4 + 8))(v29, v5);
  (*(v400 + 8))(v398, v404);
  v35 = *(*(v0 + 960) + 16);
  v36 = *(v35 + 16);

  swift_beginAccess();
  v37 = swift_beginAccess();
  v377 = v36;
  if (v36)
  {
    v45 = 0;
    v46 = *(v0 + 744);
    v361 = (v46 + 32);
    v362 = v46;
    v47 = (v46 + 8);
    v359 = (v46 + 56);
    v356 = (*(v0 + 656) + 8);
    v357 = (v46 + 48);
    v365 = *(v0 + 608);
    v382 = (v46 + 16);
    v48 = (v35 + 48);
    v49 = _swiftEmptyDictionarySingleton;
    v376 = v35;
    v389 = v47;
    while (1)
    {
      if (v45 >= *(v35 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v37, v38, v39, v40, v41);
      }

      v401 = v49;
      v58 = *(v0 + 936);
      v59 = *(v48 - 1);
      v396 = v48;
      v60 = *v48;
      v61 = *(v48 - 2);

      v399 = v61;
      v62 = [(RDXPCStorePerformer *)v61 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = *(v58 + 16);
      v405 = v60;
      if (v63)
      {

        v64 = [v63 membershipByMemberIdentifier];
        sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
        sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v65 + 16) && (v73 = sub_100363F20(*(v0 + 792)), (v66 & 1) != 0))
        {
          v392 = v45;
          v74 = *(v0 + 944);
          v75 = *(*(v65 + 56) + 8 * v73);
          v65, v76, v77, v78, v79, v80, v81, v82;
          if (v75)
          {
            v90 = *(v74 + 16);

            v91 = v75;
            v92 = [v91 groupIdentifier];
            v385 = v91;
            if (v92)
            {
              v93 = *(v0 + 784);
              v94 = *(v0 + 776);
              v95 = *(v0 + 736);
              v96 = v92;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              (*v361)(v93, v94, v95);
              if (*(v90 + 16))
              {
                v97 = sub_100363F20(*(v0 + 784));
                if (v98)
                {
                  v99 = v97;
                  v368 = *(v0 + 736);
                  v371 = *(v0 + 784);
                  v100 = *(v0 + 728);
                  v101 = *(v90 + 56);
                  v102 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
                  v103 = *(v102 - 8);
                  sub_100193AB0(v101 + *(v103 + 72) * v99, v100);
                  v91 = v385;

                  (*v389)(v371, v368);
                  v104 = v102;
                  v47 = v389;
                  (*(v103 + 56))(v100, 0, 1, v104);
                  sub_1000050A4(v100, &qword_1009420F8, &unk_1007A2508);
                  v90, v105, v106, v107, v108, v109, v110, v111;
                  v35 = v376;
LABEL_43:
                  v223 = [v91 groupIdentifier];
                  if (v223)
                  {
                    v224 = v223;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v225 = 0;
                  }

                  else
                  {
                    v225 = 1;
                  }

                  v226 = *(v0 + 952);
                  v227 = *(v0 + 944);
                  v228 = *(v0 + 928);
                  v229 = *(v0 + 720);
                  v230 = *(v0 + 712);
                  (*v359)(v230, v225, 1, *(v0 + 736));
                  sub_100031B58(v230, v229, &unk_100939D90, "8\n\r");
                  v231 = *(v226 + 16);
                  v232 = *(v227 + 16);
                  v233 = v231;

                  v234 = v405;
                  LOBYTE(v228) = sub_100192E28(v231, v379, v75, v232, v228, v59, v405);
                  v232, v235, v236, v237, v238, v239, v240, v241;

                  v358 = v228;
                  if (v228)
                  {
                    v249 = *(v0 + 736);
                    v250 = *(v0 + 720);
                    v251 = *(v0 + 704);
                    *(v0 + 480) = v59;
                    *(v0 + 488) = v405;
                    sub_10013BCF4();
                    v252 = StringProtocol.lowercased(with:)();
                    v254 = v253;
                    v405, v253, v255, v256, v257, v258, v259, v260;
                    sub_100010364(v250, v251, &unk_100939D90, "8\n\r");
                    static Date.now.getter();
                    if ((*v357)(v251, 1, v249) == 1)
                    {
                      isa = 0;
                    }

                    else
                    {
                      v262 = *(v0 + 736);
                      v263 = *(v0 + 704);
                      isa = UUID._bridgeToObjectiveC()().super.isa;
                      (*v47)(v263, v262);
                    }

                    v264 = *(v0 + 680);
                    v265 = *(v0 + 648);
                    v266 = objc_allocWithZone(REMTimestampedUUID);
                    v267 = Date._bridgeToObjectiveC()().super.isa;
                    v268 = [v266 initWithIdentifier:isa modifiedOn:v267];

                    (*v356)(v264, v265);
                    swift_beginAccess();
                    sub_10031DEEC(v268, v252, v254, sub_1002C8FA0, sub_10037572C);
                    swift_endAccess();
                    v35 = v376;
                    v47 = v389;
                    v234 = v405;
                  }

                  else
                  {
                    v405, v242, v243, v244, v245, v246, v247, v248;
                  }

                  v269 = *(v0 + 720);
                  v270 = *(v0 + 696);
                  v271 = *(v0 + 608);
                  (*v382)(*(v0 + 752), *(v0 + 792), *(v0 + 736));
                  sub_100010364(v269, v270, &unk_100939D90, "8\n\r");
                  sub_10033251C(v271, v0 + 144);
                  v272 = Logger.logObject.getter();
                  LOBYTE(v269) = static os_log_type_t.default.getter();
                  sub_100332478(v271);
                  v273 = v269;
                  v274 = os_log_type_enabled(v272, v269);
                  v275 = *(v0 + 752);
                  v369 = *(v0 + 736);
                  v373 = *(v0 + 792);
                  v360 = *(v0 + 720);
                  v276 = *(v0 + 696);
                  if (v274)
                  {
                    type = v273;
                    v277 = *(v0 + 640);
                    v278 = swift_slowAlloc();
                    v353 = swift_slowAlloc();
                    v407[0] = swift_slowAlloc();
                    *v278 = 136447234;
                    *(v0 + 520) = v277;
                    sub_1000F5104(&qword_100942138, &qword_1007A25B8);
                    v279 = String.init<A>(describing:)();
                    v281 = v280;
                    v282 = sub_10000668C(v279, v280, v407);
                    v281, v283, v284, v285, v286, v287, v288, v289;
                    *(v278 + 4) = v282;
                    *(v278 + 12) = 2114;
                    v290 = *(v365 + 8);
                    *(v0 + 544) = v290;
                    *(v278 + 14) = v290;
                    *v353 = v290;
                    *(v278 + 22) = 2082;
                    sub_100010364(v0 + 544, v0 + 528, &unk_10093AF40, &unk_100795790);
                    sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                    v291 = dispatch thunk of CustomStringConvertible.description.getter();
                    v293 = v292;
                    v354 = *v47;
                    (*v47)(v275, v369);
                    v294 = sub_10000668C(v291, v293, v407);
                    v293, v295, v296, v297, v298, v299, v300, v301;
                    *(v278 + 24) = v294;
                    *(v278 + 32) = 2082;
                    v302 = Optional.descriptionOrNil.getter();
                    v304 = v303;
                    sub_1000050A4(v276, &unk_100939D90, "8\n\r");
                    v305 = sub_10000668C(v302, v304, v407);
                    v304, v306, v307, v308, v309, v310, v311, v312;
                    *(v278 + 34) = v305;
                    *(v278 + 42) = 1026;
                    *(v278 + 44) = v358 & 1;
                    _os_log_impl(&_mh_execute_header, v272, type, "%{public}s: Skipped auto-categorizing reminder while checking local correction  {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v278, 0x30u);
                    sub_1000050A4(v353, &unk_100938E70, &unk_100797230);

                    swift_arrayDestroy();

                    v405, v313, v314, v315, v316, v317, v318, v319;
                    sub_1000050A4(v360, &unk_100939D90, "8\n\r");
                    v37 = (v354)(v373, v369);
                    v35 = v376;
                  }

                  else
                  {

                    v234, v320, v321, v322, v323, v324, v325, v326;
                    sub_1000050A4(v276, &unk_100939D90, "8\n\r");
                    v327 = *v47;
                    (*v47)(v275, v369);
                    sub_1000050A4(v360, &unk_100939D90, "8\n\r");
                    v37 = (v327)(v373, v369);
                  }

                  v49 = v401;
                  goto LABEL_42;
                }
              }

              v112 = *(v0 + 784);
              v113 = *(v0 + 736);
              v114 = *(v0 + 728);

              (*v47)(v112, v113);
              v115 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
              (*(*(v115 - 8) + 56))(v114, 1, 1, v115);
              v116 = v114;
              v91 = v385;
              sub_1000050A4(v116, &qword_1009420F8, &unk_1007A2508);
              v90, v117, v118, v119, v120, v121, v122, v123;
              v35 = v376;
            }

            else
            {
              v124 = *(v0 + 73);

              v90, v125, v126, v127, v128, v129, v130, v131;
              if ((v124 & 1) == 0)
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
            v91 = 0;
          }

          v45 = v392;
        }

        else
        {
          v65, v66, v67, v68, v69, v70, v71, v72;
          v91 = 0;
        }
      }

      else
      {

        v91 = 0;
      }

      if (!*(v379 + 16))
      {
        v386 = v91;
        v60, v83, v84, v85, v86, v87, v88, v89;
        v141 = *v382;
LABEL_33:
        v157 = *(v0 + 608);
        v141(*(v0 + 760), *(v0 + 792), *(v0 + 736));
        sub_10033251C(v157, v0 + 272);
        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.default.getter();
        sub_100332478(v157);
        v160 = os_log_type_enabled(v158, v159);
        v161 = *(v0 + 792);
        v162 = *(v0 + 760);
        v163 = *(v0 + 736);
        if (v160)
        {
          v393 = v45;
          v164 = *(v0 + 640);
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v407[0] = swift_slowAlloc();
          *v165 = 136446978;
          *(v0 + 496) = v164;
          sub_1000F5104(&qword_100942138, &qword_1007A25B8);
          v167 = String.init<A>(describing:)();
          v372 = v161;
          v169 = v168;
          v170 = sub_10000668C(v167, v168, v407);
          v169, v171, v172, v173, v174, v175, v176, v177;
          *(v165 + 4) = v170;
          *(v165 + 12) = 2048;
          *(v165 + 14) = v393;
          *(v165 + 22) = 2114;
          v178 = *(v365 + 8);
          *(v0 + 536) = v178;
          *(v165 + 24) = v178;
          *v166 = v178;
          *(v165 + 32) = 2082;
          sub_100010364(v0 + 536, v0 + 504, &unk_10093AF40, &unk_100795790);
          sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v179 = dispatch thunk of CustomStringConvertible.description.getter();
          v181 = v180;
          v182 = *v389;
          (*v389)(v162, v163);
          v183 = v179;
          v45 = v393;
          v184 = sub_10000668C(v183, v181, v407);
          v181, v185, v186, v187, v188, v189, v190, v191;
          *(v165 + 34) = v184;
          _os_log_impl(&_mh_execute_header, v158, v159, "%{public}s: Did not auto-categorize reminder due to auto-categorizer having 0 predication for reminder title {index: %ld, listObjectID: %{public}@, reminderIdentifier: %{public}s}", v165, 0x2Au);
          sub_1000050A4(v166, &unk_100938E70, &unk_100797230);
          v35 = v376;

          swift_arrayDestroy();

          v405, v192, v193, v194, v195, v196, v197, v198;
          v37 = (v182)(v372, v163);
          v47 = v389;
        }

        else
        {

          v405, v50, v51, v52, v53, v54, v55, v56;
          v57 = *v47;
          (*v47)(v162, v163);
          v37 = (v57)(v161, v163);
        }

        v49 = v401;
        goto LABEL_9;
      }

      v132 = sub_100005F4C(v59, v60);
      v134 = v133;
      v60, v133, v135, v136, v137, v138, v139, v140;
      v141 = *v382;
      if ((v134 & 1) == 0)
      {
        v386 = v91;
        goto LABEL_33;
      }

      v142 = v91;
      v143 = *(v0 + 768);
      v144 = (*(v379 + 56) + 16 * v132);
      v146 = *v144;
      v145 = v144[1];
      v141(v143, *(v0 + 792), *(v0 + 736));

      v49 = v401;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v407[0] = v401;
      v37 = sub_100363F20(v143);
      v151 = *(v401 + 16);
      v152 = (v38 & 1) == 0;
      v153 = __OFADD__(v151, v152);
      v154 = v151 + v152;
      if (v153)
      {
        goto LABEL_64;
      }

      v155 = v38;
      v392 = v45;
      if (*(v401 + 24) >= v154)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v328 = v37;
          sub_100375740();
          v37 = v328;
          v49 = v407[0];
        }
      }

      else
      {
        v156 = *(v0 + 768);
        sub_10036E938(v154, isUniquelyReferenced_nonNull_native);
        v49 = v407[0];
        v37 = sub_100363F20(v156);
        if ((v155 & 1) != (v38 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v402 = *(v0 + 792);
      v199 = *(v0 + 768);
      v200 = *(v0 + 736);
      if (v155)
      {
        v201 = (v49[7] + 16 * v37);
        v202 = v201[1];
        *v201 = v146;
        v201[1] = v145;
        v202, v38, v39, v40, v41, v148, v149, v150;

        v405, v203, v204, v205, v206, v207, v208, v209;
        v210 = *v47;
        (*v47)(v199, v200);
        v37 = (v210)(v402, v200);
      }

      else
      {
        v49[(v37 >> 6) + 8] |= 1 << v37;
        v211 = v37;
        v141(v49[6] + *(v362 + 72) * v37, v199, v200);
        v212 = (v49[7] + 16 * v211);
        *v212 = v146;
        v212[1] = v145;

        v405, v213, v214, v215, v216, v217, v218, v219;
        v220 = *(v362 + 8);
        v47 = v389;
        v220(v199, v200);
        v37 = (v220)(v402, v200);
        v221 = v49[2];
        v153 = __OFADD__(v221, 1);
        v222 = v221 + 1;
        if (v153)
        {
          goto LABEL_65;
        }

        v49[2] = v222;
      }

      v35 = v376;
LABEL_42:
      v45 = v392;
LABEL_9:
      ++v45;
      v48 = v396 + 3;
      if (v377 == v45)
      {
        goto LABEL_57;
      }
    }
  }

  v49 = _swiftEmptyDictionarySingleton;
LABEL_57:
  v35, v38, v39, v40, v41, v42, v43, v44;
  v379, v329, v330, v331, v332, v333, v334, v335;
  v397 = *(v0 + 1000);
  v394 = *(v0 + 140);
  v336 = *(v0 + 76);
  v403 = *(v0 + 976);
  v406 = *(v0 + 968);
  v380 = *(v0 + 936);
  v383 = *(v0 + 952);
  v363 = *(v0 + 928);
  v337 = *(v0 + 920);
  v374 = v337;
  v366 = *(v0 + 912);
  v387 = *(v0 + 888);
  v390 = *(v0 + 872);
  v338 = *(v0 + 672);
  v339 = *(v0 + 656);
  v340 = *(v0 + 648);
  v375 = v340;
  v378 = *(v0 + 624);
  v341 = *(v0 + 616);
  v342 = *(v0 + 608);
  v370 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v363, v337, &unk_10093F420, &unk_100797AE0);
  (*(v339 + 16))(v338, v341, v340);
  v343 = (v336 + 104) & ~v336;
  v367 = (v343 + v366 + 7) & 0xFFFFFFFFFFFFFFF8;
  v364 = (v367 + 15) & 0xFFFFFFFFFFFFFFF8;
  v344 = (v364 + 15) & 0xFFFFFFFFFFFFFFF8;
  v345 = (v344 + 15) & 0xFFFFFFFFFFFFFFF8;
  v346 = (v345 + *(v339 + 80) + 8) & ~*(v339 + 80);
  v347 = swift_allocObject();
  *(v0 + 1088) = v347;
  *(v347 + 16) = v370;
  *(v347 + 24) = v378;
  v348 = *v342;
  v349 = v342[1];
  v350 = v342[2];
  *(v347 + 73) = *(v342 + 41);
  *(v347 + 48) = v349;
  *(v347 + 64) = v350;
  *(v347 + 32) = v348;
  *(v347 + 96) = v49;
  sub_100031B58(v374, v347 + v343, &unk_10093F420, &unk_100797AE0);
  *(v347 + v367) = v406;
  *(v347 + v364) = v380;
  *(v347 + v344) = v403;
  *(v347 + v345) = v383;
  (*(v339 + 32))(v347 + v346, v338, v375);
  v397(v387, v394, v390);
  v351 = v378;
  sub_10033251C(v342, v0 + 80);

  v37 = swift_task_alloc();
  *(v0 + 1096) = v37;
  *v37 = v0;
  *(v37 + 8) = sub_100327384;
  v38 = *(v0 + 888);
  v39 = sub_100336410;
  v41 = &type metadata for () + 1;
  v40 = v347;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v37, v38, v39, v40, v41);
}

uint64_t sub_100325C38()
{
  v449 = v0;
  (*(v0[107] + 8))(v0[108], v0[106]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[80];
    v4 = swift_slowAlloc();
    v448[0] = swift_slowAlloc();
    *v4 = 136446466;
    v0[72] = v3;
    sub_1000F5104(&qword_100942138, &qword_1007A25B8);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    v8 = sub_10000668C(v5, v6, v448);
    v7, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    swift_getErrorValue();
    v16 = Error.rem_errorDescription.getter();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, v448);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v4 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s: Failed to predict categories of reminder titles {error: %{public}s}", v4, 0x16u);
    swift_arrayDestroy();
  }

  v27 = v0[76];
  v28 = v0[75];
  sub_10033251C(v27, (v0 + 26));

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  sub_100332478(v27);
  v28, v31, v32, v33, v34, v35, v36, v37;
  v416 = v0;
  if (os_log_type_enabled(v29, v30))
  {
    v38 = v0[80];
    v39 = v0[76];
    v40 = v0[75];
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v447 = swift_slowAlloc();
    *v41 = 136446722;
    v0[69] = v38;
    sub_1000F5104(&qword_100942138, &qword_1007A25B8);
    v43 = String.init<A>(describing:)();
    v45 = v44;
    v46 = sub_10000668C(v43, v44, &v447);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v41 + 4) = v46;
    *(v41 + 12) = 2114;
    v54 = *(v39 + 8);
    v0[74] = v54;
    *(v41 + 14) = v54;
    *v42 = v54;
    *(v41 + 22) = 2082;
    v55 = *(v40 + 16);
    v56 = v0;
    if (v55)
    {
      v57 = v0[75];
      v448[0] = &_swiftEmptyArrayStorage;
      sub_100010364((v56 + 74), (v56 + 70), &unk_10093AF40, &unk_100795790);
      specialized ContiguousArray.reserveCapacity(_:)();
      v58 = (v57 + 32);
      do
      {
        v59 = *v58;
        v58 += 3;
        v60 = v59;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v55;
      }

      while (v55);
      v61 = v448[0];
    }

    else
    {
      sub_100010364((v0 + 74), (v0 + 71), &unk_10093AF40, &unk_100795790);
      v61 = &_swiftEmptyArrayStorage;
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v62 = Array.description.getter();
    v64 = v63;
    v61, v63, v65, v66, v67, v68, v69, v70;
    v71 = sub_10000668C(v62, v64, &v447);
    v64, v72, v73, v74, v75, v76, v77, v78;
    *(v41 + 24) = v71;
    _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: Failed to predict categories of reminder titles {listObjectID: %{public}@, reminderIDs: %{public}s}", v41, 0x20u);
    sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {
  }

  v79 = v416;
  v80 = sub_10038E004(&_swiftEmptyArrayStorage);

  v81 = *(v416[120] + 16);
  v82 = *(v81 + 16);

  swift_beginAccess();
  v83 = swift_beginAccess();
  v429 = v81;
  v431 = v82;
  v427 = v80;
  if (v82)
  {
    v91 = 0;
    v92 = v416[93];
    v410 = (v92 + 32);
    v433 = (v92 + 8);
    v408 = (v92 + 56);
    v405 = (v416[82] + 8);
    v406 = (v92 + 48);
    v413 = v416[76];
    v411 = v92;
    v435 = (v92 + 16);
    v93 = (v81 + 48);
    v94 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v91 >= *(v81 + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v83, v84, v85, v86, v87);
      }

      v442 = v94;
      v445 = v91;
      v103 = v79[117];
      v104 = *(v93 - 1);
      v439 = v93;
      v105 = *v93;
      v106 = *(v93 - 2);

      v441 = v106;
      v107 = [(RDXPCStorePerformer *)v106 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v108 = *(v103 + 16);
      v437 = v105;
      if (!v108)
      {
        break;
      }

      v109 = [v108 membershipByMemberIdentifier];
      sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v110 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v110 + 16) || (v118 = sub_100363F20(v79[99]), (v111 & 1) == 0))
      {
        v110, v111, v112, v113, v114, v115, v116, v117;
LABEL_27:
        v136 = 0;
        goto LABEL_28;
      }

      v119 = v79[118];
      v120 = *(*(v110 + 56) + 8 * v118);
      v110, v121, v122, v123, v124, v125, v126, v127;
      if (v120)
      {
        v135 = *(v119 + 16);

        v136 = v120;
        v137 = [v136 groupIdentifier];
        if (v137)
        {
          v138 = v79[98];
          v139 = v79[97];
          v140 = v79[92];
          v141 = v137;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v410)(v138, v139, v140);
          if (*(v135 + 16))
          {
            v142 = sub_100363F20(v79[98]);
            if (v143)
            {
              v144 = v142;
              v418 = v79[92];
              v421 = v79[98];
              v145 = v79[91];
              v146 = v136;
              v147 = *(v135 + 56);
              v148 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
              v149 = v105;
              v150 = *(v148 - 8);
              sub_100193AB0(v147 + *(v150 + 72) * v144, v145);

              (*v433)(v421, v418);
              v151 = v148;
              v79 = v416;
              (*(v150 + 56))(v145, 0, 1, v151);
              v105 = v149;
              sub_1000050A4(v145, &qword_1009420F8, &unk_1007A2508);
              v135, v152, v153, v154, v155, v156, v157, v158;
              v80 = v427;
LABEL_49:
              v270 = [v146 groupIdentifier];
              v425 = v146;
              if (v270)
              {
                v271 = v270;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v272 = 0;
              }

              else
              {
                v272 = 1;
              }

              v273 = v79[119];
              v274 = v79[118];
              v275 = v79[116];
              v276 = v79[90];
              v277 = v79[89];
              (*v408)(v277, v272, 1, v79[92]);
              sub_100031B58(v277, v276, &unk_100939D90, "8\n\r");
              v278 = *(v273 + 16);
              v279 = *(v274 + 16);
              v280 = v278;

              LOBYTE(v275) = sub_100192E28(v278, v80, v120, v279, v275, v104, v105);
              v279, v281, v282, v283, v284, v285, v286, v287;

              v407 = v275;
              if (v275)
              {
                v295 = v79[92];
                v296 = v79[90];
                v297 = v105;
                v298 = v79[88];
                v79[60] = v104;
                v79[61] = v297;
                sub_10013BCF4();
                v299 = StringProtocol.lowercased(with:)();
                v301 = v300;
                v297, v300, v302, v303, v304, v305, v306, v307;
                sub_100010364(v296, v298, &unk_100939D90, "8\n\r");
                static Date.now.getter();
                if ((*v406)(v298, 1, v295) == 1)
                {
                  isa = 0;
                }

                else
                {
                  v309 = v79[92];
                  v310 = v79[88];
                  isa = UUID._bridgeToObjectiveC()().super.isa;
                  (*v433)(v310, v309);
                }

                v311 = v79[85];
                v312 = v79[81];
                v313 = objc_allocWithZone(REMTimestampedUUID);
                v314 = Date._bridgeToObjectiveC()().super.isa;
                v315 = [v313 initWithIdentifier:isa modifiedOn:v314];

                (*v405)(v311, v312);
                swift_beginAccess();
                sub_10031DEEC(v315, v299, v301, sub_1002C8FA0, sub_10037572C);
                swift_endAccess();
                v80 = v427;
                v105 = v297;
              }

              else
              {
                v105, v288, v289, v290, v291, v292, v293, v294;
              }

              v316 = v79[90];
              v317 = v79[87];
              v318 = v79[76];
              (*v435)(v79[94], v79[99], v79[92]);
              sub_100010364(v316, v317, &unk_100939D90, "8\n\r");
              sub_10033251C(v318, (v79 + 18));
              v319 = Logger.logObject.getter();
              LOBYTE(v316) = static os_log_type_t.default.getter();
              sub_100332478(v318);
              v320 = v316;
              v321 = os_log_type_enabled(v319, v316);
              v322 = v79[94];
              v419 = v79[92];
              v423 = v79[99];
              v409 = v79[90];
              v323 = v79[87];
              if (v321)
              {
                v324 = v79[80];
                v325 = swift_slowAlloc();
                v404 = swift_slowAlloc();
                v448[0] = swift_slowAlloc();
                *v325 = 136447234;
                v79[65] = v324;
                sub_1000F5104(&qword_100942138, &qword_1007A25B8);
                v326 = String.init<A>(describing:)();
                v328 = v327;
                v329 = sub_10000668C(v326, v327, v448);
                v328, v330, v331, v332, v333, v334, v335, v336;
                *(v325 + 4) = v329;
                *(v325 + 12) = 2114;
                v337 = *(v413 + 8);
                v79[68] = v337;
                *(v325 + 14) = v337;
                *v404 = v337;
                type = v320;
                *(v325 + 22) = 2082;
                sub_100010364((v79 + 68), (v79 + 66), &unk_10093AF40, &unk_100795790);
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v338 = dispatch thunk of CustomStringConvertible.description.getter();
                v340 = v339;
                v341 = *v433;
                (*v433)(v322, v419);
                v342 = sub_10000668C(v338, v340, v448);
                v340, v343, v344, v345, v346, v347, v348, v349;
                *(v325 + 24) = v342;
                *(v325 + 32) = 2082;
                v350 = Optional.descriptionOrNil.getter();
                v352 = v351;
                sub_1000050A4(v323, &unk_100939D90, "8\n\r");
                v353 = sub_10000668C(v350, v352, v448);
                v352, v354, v355, v356, v357, v358, v359, v360;
                *(v325 + 34) = v353;
                *(v325 + 42) = 1026;
                *(v325 + 44) = v407 & 1;
                _os_log_impl(&_mh_execute_header, v319, type, "%{public}s: Skipped auto-categorizing reminder while checking local correction  {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v325, 0x30u);
                sub_1000050A4(v404, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                v437, v361, v362, v363, v364, v365, v366, v367;
                sub_1000050A4(v409, &unk_100939D90, "8\n\r");
                v83 = (v341)(v423, v419);
                v80 = v427;
              }

              else
              {

                v105, v368, v369, v370, v371, v372, v373, v374;
                sub_1000050A4(v323, &unk_100939D90, "8\n\r");
                v375 = *v433;
                (*v433)(v322, v419);
                sub_1000050A4(v409, &unk_100939D90, "8\n\r");
                v83 = (v375)(v423, v419);
              }

              v94 = v442;
              goto LABEL_44;
            }
          }

          v251 = v79[98];
          v252 = v79[92];
          v253 = v79[91];

          (*v433)(v251, v252);
          v254 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
          (*(*(v254 - 8) + 56))(v253, 1, 1, v254);
          sub_1000050A4(v253, &qword_1009420F8, &unk_1007A2508);
          v135, v255, v256, v257, v258, v259, v260, v261;
          v80 = v427;
          v81 = v429;
        }

        else
        {
          v146 = v136;
          v262 = *(v79 + 73);

          v135, v263, v264, v265, v266, v267, v268, v269;
          if ((v262 & 1) == 0)
          {
            goto LABEL_49;
          }

          v81 = v429;
          v136 = v146;
        }
      }

      else
      {
        v136 = 0;
        v81 = v429;
      }

LABEL_28:
      if (!*(v80 + 16))
      {
        v105, v128, v129, v130, v131, v132, v133, v134;
        v168 = *v435;
LABEL_35:
        v183 = v79[76];
        v168(v79[95], v79[99], v79[92]);
        sub_10033251C(v183, (v79 + 34));
        v184 = Logger.logObject.getter();
        v185 = static os_log_type_t.default.getter();
        sub_100332478(v183);
        v186 = os_log_type_enabled(v184, v185);
        v187 = v79[99];
        v188 = v79[95];
        v189 = v79[92];
        if (v186)
        {
          v190 = v79[80];
          v422 = v79[99];
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v448[0] = swift_slowAlloc();
          *v191 = 136446978;
          v79[62] = v190;
          sub_1000F5104(&qword_100942138, &qword_1007A25B8);
          v193 = String.init<A>(describing:)();
          v195 = v194;
          v196 = sub_10000668C(v193, v194, v448);
          v195, v197, v198, v199, v200, v201, v202, v203;
          *(v191 + 4) = v196;
          *(v191 + 12) = 2048;
          *(v191 + 14) = v445;
          *(v191 + 22) = 2114;
          v204 = *(v413 + 8);
          v79[67] = v204;
          *(v191 + 24) = v204;
          *v192 = v204;
          *(v191 + 32) = 2082;
          sub_100010364((v79 + 67), (v79 + 63), &unk_10093AF40, &unk_100795790);
          sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v205 = dispatch thunk of CustomStringConvertible.description.getter();
          v207 = v206;
          v208 = *v433;
          (*v433)(v188, v189);
          v209 = v205;
          v81 = v429;
          v210 = sub_10000668C(v209, v207, v448);
          v207, v211, v212, v213, v214, v215, v216, v217;
          *(v191 + 34) = v210;
          _os_log_impl(&_mh_execute_header, v184, v185, "%{public}s: Did not auto-categorize reminder due to auto-categorizer having 0 predication for reminder title {index: %ld, listObjectID: %{public}@, reminderIdentifier: %{public}s}", v191, 0x2Au);
          sub_1000050A4(v192, &unk_100938E70, &unk_100797230);
          v80 = v427;

          swift_arrayDestroy();

          v437, v218, v219, v220, v221, v222, v223, v224;
          v83 = (v208)(v422, v189);
          v79 = v416;
        }

        else
        {

          v437, v95, v96, v97, v98, v99, v100, v101;
          v102 = *v433;
          (*v433)(v188, v189);
          v83 = (v102)(v187, v189);
        }

        v94 = v442;
        goto LABEL_15;
      }

      v159 = sub_100005F4C(v104, v105);
      v161 = v160;
      v105, v160, v162, v163, v164, v165, v166, v167;
      v168 = *v435;
      if ((v161 & 1) == 0)
      {
        goto LABEL_35;
      }

      v169 = v79[96];
      v170 = (*(v80 + 56) + 16 * v159);
      v172 = *v170;
      v171 = v170[1];
      v168(v169, v79[99], v79[92]);

      v94 = v442;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v448[0] = v442;
      v83 = sub_100363F20(v169);
      v177 = *(v442 + 16);
      v178 = (v84 & 1) == 0;
      v179 = __OFADD__(v177, v178);
      v180 = v177 + v178;
      if (v179)
      {
        goto LABEL_70;
      }

      v181 = v84;
      if (*(v442 + 24) >= v180)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v376 = v136;
          v377 = v83;
          sub_100375740();
          v83 = v377;
          v136 = v376;
          v94 = v448[0];
        }
      }

      else
      {
        v182 = v79[96];
        sub_10036E938(v180, isUniquelyReferenced_nonNull_native);
        v94 = v448[0];
        v83 = sub_100363F20(v182);
        if ((v181 & 1) != (v84 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v225 = v79[99];
      v226 = v79[96];
      v227 = v79[92];
      if (v181)
      {
        v228 = (v94[7] + 16 * v83);
        v229 = v228[1];
        *v228 = v172;
        v228[1] = v171;
        v229, v84, v85, v86, v87, v174, v175, v176;

        v437, v230, v231, v232, v233, v234, v235, v236;
        v237 = *v433;
        (*v433)(v226, v227);
        v83 = (v237)(v225, v227);
      }

      else
      {
        v94[(v83 >> 6) + 8] |= 1 << v83;
        v443 = v225;
        v238 = v136;
        v239 = v83;
        v168(v94[6] + *(v411 + 72) * v83, v226, v227);
        v240 = (v94[7] + 16 * v239);
        *v240 = v172;
        v240[1] = v171;

        v437, v241, v242, v243, v244, v245, v246, v247;
        v248 = *(v411 + 8);
        v248(v226, v227);
        v83 = (v248)(v443, v227);
        v249 = v94[2];
        v179 = __OFADD__(v249, 1);
        v250 = v249 + 1;
        if (v179)
        {
          goto LABEL_71;
        }

        v94[2] = v250;
      }

      v80 = v427;
LABEL_44:
      v81 = v429;
LABEL_15:
      v91 = v445 + 1;
      v93 = v439 + 3;
      if (v431 == v445 + 1)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_27;
  }

  v94 = _swiftEmptyDictionarySingleton;
LABEL_63:
  v81, v84, v85, v86, v87, v88, v89, v90;
  v80, v378, v379, v380, v381, v382, v383, v384;
  v440 = v79[125];
  v438 = *(v79 + 35);
  v420 = *(v79 + 76);
  v444 = v79[122];
  v446 = v79[121];
  v430 = v79[117];
  v432 = v79[119];
  v385 = v79;
  v386 = v79[116];
  v387 = v385[115];
  v424 = v387;
  v414 = v385[114];
  v434 = v385[111];
  v436 = v385[109];
  v388 = v385[84];
  v389 = v385[82];
  v390 = v385[81];
  v426 = v390;
  v428 = v385[78];
  v391 = v385[77];
  v392 = v385[76];
  v417 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v386, v387, &unk_10093F420, &unk_100797AE0);
  (*(v389 + 16))(v388, v391, v390);
  v393 = (v420 + 104) & ~v420;
  v415 = (v393 + v414 + 7) & 0xFFFFFFFFFFFFFFF8;
  v412 = (v415 + 15) & 0xFFFFFFFFFFFFFFF8;
  v394 = (v412 + 15) & 0xFFFFFFFFFFFFFFF8;
  v395 = (v394 + 15) & 0xFFFFFFFFFFFFFFF8;
  v396 = (v395 + *(v389 + 80) + 8) & ~*(v389 + 80);
  v397 = swift_allocObject();
  v385[136] = v397;
  *(v397 + 16) = v417;
  *(v397 + 24) = v428;
  v398 = *v392;
  v399 = v392[1];
  v400 = v392[2];
  *(v397 + 73) = *(v392 + 41);
  *(v397 + 48) = v399;
  *(v397 + 64) = v400;
  *(v397 + 32) = v398;
  *(v397 + 96) = v94;
  sub_100031B58(v424, v397 + v393, &unk_10093F420, &unk_100797AE0);
  *(v397 + v415) = v446;
  *(v397 + v412) = v430;
  *(v397 + v394) = v444;
  *(v397 + v395) = v432;
  (*(v389 + 32))(v397 + v396, v388, v426);
  v440(v434, v438, v436);
  v401 = v428;
  sub_10033251C(v392, (v385 + 10));

  v83 = swift_task_alloc();
  v385[137] = v83;
  *v83 = v385;
  *(v83 + 8) = sub_100327384;
  v84 = v385[111];
  v85 = sub_100336410;
  v87 = &type metadata for () + 1;
  v86 = v397;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v83, v84, v85, v86, v87);
}

uint64_t sub_100327384()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  (*(v2 + 1032))(*(v2 + 888), *(v2 + 872));

  if (v0)
  {
    v3 = sub_100327700;
  }

  else
  {
    v3 = sub_100327510;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100327510()
{
  sub_1000050A4(*(v0 + 928), &unk_10093F420, &unk_100797AE0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100327700()
{
  sub_1000050A4(*(v0 + 928), &unk_10093F420, &unk_100797AE0);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003278E8(uint64_t a1, NSObject **a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v609 = a6;
  v630 = a4;
  v593 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v593, v20);
  v595 = &v551 - v21;
  v622 = type metadata accessor for REMAnalyticsEvent();
  v22 = *(v622 - 8);
  __chkstk_darwin(v622, v23);
  v621 = (&v551 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v615 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  v608 = *(v615 - 8);
  __chkstk_darwin(v615, v25);
  v607 = &v551 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v619 = type metadata accessor for Date();
  v604 = *(v619 - 8);
  __chkstk_darwin(v619, v27);
  v594 = &v551 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v627 = &v551 - v31;
  v32 = sub_1000F5104(&qword_1009420F8, &unk_1007A2508);
  __chkstk_darwin(v32 - 8, v33);
  v613 = &v551 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v36);
  v598 = &v551 - v37;
  v628 = type metadata accessor for Logger();
  v603 = *(v628 - 8);
  __chkstk_darwin(v628, v38);
  v596 = &v551 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v41);
  v623 = &v551 - v42;
  __chkstk_darwin(v43, v44);
  v614 = &v551 - v45;
  v616 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v616, v46);
  v606 = &v551 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48, v49);
  v592 = &v551 - v50;
  __chkstk_darwin(v51, v52);
  v590 = &v551 - v53;
  __chkstk_darwin(v54, v55);
  v625 = &v551 - v56;
  __chkstk_darwin(v57, v58);
  v599 = &v551 - v59;
  __chkstk_darwin(v60, v61);
  v591 = &v551 - v62;
  __chkstk_darwin(v63, v64);
  v605 = &v551 - v65;
  __chkstk_darwin(v66, v67);
  v611 = &v551 - v68;
  __chkstk_darwin(v69, v70);
  v618 = &v551 - v71;
  __chkstk_darwin(v72, v73);
  v624 = &v551 - v74;
  v632 = type metadata accessor for UUID();
  v602 = *(v632 - 8);
  __chkstk_darwin(v632, v75);
  v601 = &v551 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77, v78);
  v589 = &v551 - v79;
  __chkstk_darwin(v80, v81);
  v620 = &v551 - v82;
  __chkstk_darwin(v83, v84);
  v626 = &v551 - v85;
  __chkstk_darwin(v86, v87);
  v629 = &v551 - v88;
  __chkstk_darwin(v89, v90);
  v597 = &v551 - v91;
  __chkstk_darwin(v92, v93);
  v600 = &v551 - v94;
  __chkstk_darwin(v95, v96);
  v610 = &v551 - v97;
  __chkstk_darwin(v98, v99);
  v617 = &v551 - v100;
  __chkstk_darwin(v101, v102);
  v633 = &v551 - v103;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v612 = a8;
    v587 = v22;
    storeController = a2;
    v105 = a7;
    v631 = Strong;
    v106 = *a3;
    v635 = 0;
    v107 = [a2 existingObjectWithID:v106 error:&v635];
    v108 = v635;
    if (v107)
    {
      v109 = v107;
      v586 = a5;
      objc_opt_self();
      v110 = swift_dynamicCastObjCClass();
      v111 = v108;
      if (!v110)
      {

        return;
      }

      v585 = v109;
      v112 = [v110 membershipsOfRemindersInSectionsAsData];
      v583 = a3;
      if (v112)
      {
        v113 = v112;
        v114 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v115;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v14)
        {

          sub_10001BBA0(v114, v116);

          return;
        }

        v119 = v105;
        sub_10001BBA0(v114, v116);
        v118 = v635;
      }

      else
      {
        v118 = 0;
        v119 = v105;
      }

      v120 = v630;
      swift_beginAccess();
      v121 = *(v120 + 16);
      *(v120 + 16) = v118;

      v122 = [v110 remObjectID];
      v123 = sub_100335590(v122, storeController);
      if (v14)
      {

        return;
      }

      v124 = v123;

      v125 = v586;
      swift_beginAccess();
      v126 = *(v125 + 16);
      *(v125 + 16) = v124;
      v126, v127, v128, v129, v130, v131, v132, v133;
      v134 = [v110 autoCategorizationLocalCorrectionsAsData];
      if (v134)
      {
        v135 = v134;
        v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v138 = v137;

        sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        sub_10001BBA0(v136, v138);
        v139 = v635;
      }

      else
      {
        v139 = 0;
      }

      v140 = v609;
      swift_beginAccess();
      v141 = *(v140 + 16);
      *(v140 + 16) = v139;

      if (!v139)
      {

        swift_beginAccess();
        v543 = *(a14 + 16);
        *(a14 + 16) = v119;

        v543, v544, v545, v546, v547, v548, v549, v550;
        return;
      }

      v582 = a14;
      v142 = *(v119 + 16);
      if (v142)
      {
        v555 = 0;
        v569 = a13;
        v568 = a12;
        v553 = a9;
        v552 = a11;
        v562 = a10;
        v574 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog;
        v584 = v139;
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        v581 = &v602->clientIdentity[40];
        clientIdentity = v602->clientIdentity;
        v572 = (v603 + 8);
        v573 = (v603 + 16);
        v554 = &v602->clientIdentity[16];
        v570 = &v602->clientIdentity[32];
        v563 = (v604 + 8);
        v556 = (v608 + 48);
        v557 = (v608 + 56);
        v567 = 0x80000001007F5220;
        v566 = enum case for REMAnalyticsEvent.groceryPrediction(_:);
        v564 = v587 + 8;
        v565 = v587 + 104;
        v143 = (v119 + 48);
        *&v144 = 136446978;
        v558 = v144;
        *&v144 = 136447234;
        v551 = v144;
        storeController = v602->storeController;
        while (1)
        {
          v609 = v142;
          v158 = *(v143 - 1);
          v159 = *v143;
          v160 = *(v143 - 2);

          v604 = v160;
          v161 = [(RDXPCStorePerformer *)v160 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v635 = v158;
          v636 = v159;
          sub_10013BCF4();

          v162 = StringProtocol.lowercased(with:)();
          v164 = v163;
          v165 = [v584 memberships];
          sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
          v166 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v166 + 16) || (v174 = sub_100005F4C(v162, v164), (v167 & 1) == 0))
          {
            v159, v167, v168, v169, v170, v171, v172, v173;
            v164, v214, v215, v216, v217, v218, v219, v220;
            v166, v221, v222, v223, v224, v225, v226, v227;
            v228 = v582;
            swift_beginAccess();
            v229 = *(v228 + 16);
            v230 = v604;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v228 + 16) = v229;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v229 = sub_100367C4C(0, *v229->clientIdentity + 1, 1, v229, v232, v233, v234, v235);
              *(v228 + 16) = v229;
            }

            v237 = *v229->clientIdentity;
            v236 = *&v229->clientIdentity[8];
            if (v237 >= v236 >> 1)
            {
              v229 = sub_100367C4C((v236 > 1), v237 + 1, 1, v229, v232, v233, v234, v235);
            }

            *v229->clientIdentity = v237 + 1;
            v238 = &v229->super.isa + 3 * v237;
            v238[4] = v230;
            v238[5] = v158;
            v238[6] = v159;
            *(v228 + 16) = v229;
            swift_endAccess();
            v159, v239, v240, v241, v242, v243, v244, v245;

            (*storeController)(v633, v632);
            goto LABEL_23;
          }

          v602 = v159;
          v175 = *(*(v166 + 56) + 8 * v174);
          v166, v176, v177, v178, v179, v180, v181, v182;
          v183 = [v175 identifier];
          v603 = v175;
          if (v183)
          {
            v191 = v624;
            v192 = v183;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v580 = *v581;
            v580(v191, 0, 1, v632);
            sub_1000050A4(v191, &unk_100939D90, "8\n\r");
            v193 = *(v586 + 16);

            v194 = [v175 identifier];
            if (!v194)
            {
              __break(1u);
              return;
            }

            v202 = v194;
            v164, v195, v196, v197, v198, v199, v200, v201;
            v602, v203, v204, v205, v206, v207, v208, v209;
            v210 = v617;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v193 + 16))
            {
              sub_100363F20(v210);
              v211 = v210;
              v213 = v212;
            }

            else
            {
              v211 = v210;
              v213 = 0;
            }

            v254 = v625;
            v255 = v632;
            v587 = *storeController;
            (v587)(v211, v632);
            v193, v256, v257, v258, v259, v260, v261, v262;
            if ((v213 & 1) == 0)
            {
              v578 = v158;
              v305 = v614;
              (*v573)(v614, v631 + v574, v628);
              v306 = v610;
              (*clientIdentity)(v610, v633, v255);
              v307 = v603;
              v308 = v583;
              sub_10033251C(v583, &v635);
              v309 = Logger.logObject.getter();
              v310 = static os_log_type_t.default.getter();
              sub_100332478(v308);
              v603 = v307;

              LODWORD(v577) = v310;
              if (os_log_type_enabled(v309, v310))
              {
                v575 = v309;
                v311 = v306;
                v312 = swift_slowAlloc();
                v313 = swift_slowAlloc();
                v571 = swift_slowAlloc();
                v635 = v571;
                *v312 = v558;
                v634 = type metadata accessor for RDGroceryOperationCategorizeRemindersInList(0);
                sub_1000F5104(&qword_100942108, &unk_1007A2520);
                v314 = String.init<A>(describing:)();
                v316 = v315;
                v317 = sub_10000668C(v314, v315, &v635);
                v316, v318, v319, v320, v321, v322, v323, v324;
                *(v312 + 4) = v317;
                *(v312 + 12) = 2114;
                v325 = v308[1];
                *(v312 + 14) = v325;
                v561 = v313;
                v313->isa = v325;
                *(v312 + 22) = 2082;
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v326 = v325;
                v327 = dispatch thunk of CustomStringConvertible.description.getter();
                v329 = v328;
                (v587)(v311, v255);
                v330 = sub_10000668C(v327, v329, &v635);
                v329, v331, v332, v333, v334, v335, v336, v337;
                *(v312 + 24) = v330;
                *(v312 + 32) = 2082;
                v338 = [v603 identifier];
                if (v338)
                {
                  v339 = v606;
                  v340 = v338;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v341 = 0;
                }

                else
                {
                  v341 = 1;
                  v339 = v606;
                }

                v406 = v582;
                v407 = v602;
                v408 = v578;
                v580(v339, v341, 1, v632);
                v433 = Optional.descriptionOrNil.getter();
                v435 = v434;
                sub_1000050A4(v339, &unk_100939D90, "8\n\r");
                v436 = sub_10000668C(v433, v435, &v635);
                v435, v437, v438, v439, v440, v441, v442, v443;
                *(v312 + 34) = v436;
                v444 = v575;
                _os_log_impl(&_mh_execute_header, v575, v577, "%{public}s: The section in local correction does not exist on the device {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s", v312, 0x2Au);
                sub_1000050A4(v561, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                (*v572)(v614, v628);
              }

              else
              {

                (v587)(v306, v255);
                (*v572)(v305, v628);
                v406 = v582;
                v407 = v602;
                v408 = v578;
              }

              swift_beginAccess();
              v445 = *(v406 + 16);
              v446 = v604;

              v447 = swift_isUniquelyReferenced_nonNull_native();
              *(v406 + 16) = v445;
              if ((v447 & 1) == 0)
              {
                v445 = sub_100367C4C(0, *v445->clientIdentity + 1, 1, v445, v448, v449, v450, v451);
                *(v406 + 16) = v445;
              }

              v453 = *v445->clientIdentity;
              v452 = *&v445->clientIdentity[8];
              if (v453 >= v452 >> 1)
              {
                v445 = sub_100367C4C((v452 > 1), v453 + 1, 1, v445, v448, v449, v450, v451);
              }

              *v445->clientIdentity = v453 + 1;
              v454 = &v445->super.isa + 3 * v453;
              v454[4] = v446;
              v454[5] = v408;
              v454[6] = v407;
              *(v406 + 16) = v445;
              swift_endAccess();
              v407, v455, v456, v457, v458, v459, v460, v461;

              (v587)(v633, v632);
              goto LABEL_23;
            }

            v175 = v603;
          }

          else
          {
            v164, v184, v185, v186, v187, v188, v189, v190;
            v602, v246, v247, v248, v249, v250, v251, v252;
            v253 = v624;
            v580 = *v581;
            v580(v624, 1, 1, v632);
            sub_1000050A4(v253, &unk_100939D90, "8\n\r");
            v254 = v625;
          }

          v263 = *(v630 + 16);
          if (!v263)
          {
LABEL_50:
            v578 = 0;
            goto LABEL_53;
          }

          v264 = [v263 membershipByMemberIdentifier];
          sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
          sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v265 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v265 + 16) || (v273 = sub_100363F20(v633), (v266 & 1) == 0))
          {
            v578 = 0;
            goto LABEL_52;
          }

          v274 = *(*(v265 + 56) + 8 * v273);
          v265, v275, v276, v277, v278, v279, v280, v281;
          if (!v274)
          {
            goto LABEL_50;
          }

          v265 = *(v586 + 16);

          v578 = v274;
          v282 = v274;
          v283 = [(objc_class *)v282 groupIdentifier];
          if (v283)
          {
            v291 = v597;
            v292 = v283;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v293 = v600;
            (*v554)(v600, v291, v632);
            if (!*(v265 + 16) || (v294 = sub_100363F20(v293), (v295 & 1) == 0))
            {

              (*storeController)(v293, v632);
              v462 = v598;
              (*v557)(v598, 1, 1, v615);
              sub_1000050A4(v462, &qword_1009420F8, &unk_1007A2508);
              v175 = v603;
LABEL_52:
              v265, v266, v267, v268, v269, v270, v271, v272;
LABEL_53:
              v342 = *clientIdentity;
              v343 = v632;
              (*clientIdentity)(v629, v633, v632);
              v344 = [v175 identifier];
              v575 = v342;
              if (v344)
              {
                v345 = v618;
                v346 = v344;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v347 = 0;
              }

              else
              {
                v347 = 1;
                v345 = v618;
              }

              v348 = v570;
              v580(v345, v347, 1, v343);
              static Date.now.getter();
              v349.super.isa = UUID._bridgeToObjectiveC()().super.isa;
              v350 = (*v348)(v345, 1, v343);
              v576 = v143;
              if (v350 == 1)
              {
                isa = 0;
                v352 = v343;
                v353 = storeController;
              }

              else
              {
                isa = UUID._bridgeToObjectiveC()().super.isa;
                v353 = storeController;
                (*storeController)(v345, v343);
                v352 = v343;
              }

              v354 = objc_allocWithZone(REMMembership);
              v355 = v627;
              v356 = Date._bridgeToObjectiveC()().super.isa;
              v357 = [v354 initWithMemberIdentifier:v349.super.isa groupIdentifier:isa isObsolete:0 modifiedOn:v356];

              (*v563)(v355, v619);
              v587 = *v353;
              (v587)(v629, v352);
              v358 = v562;
              swift_beginAccess();
              v359 = v357;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*(v358 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v358 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              v360 = *v573;
              v361 = v623;
              v577 = v359;
              v362 = v628;
              v360(v623, v631 + v574, v628);
              (v575)(v626, v633, v352);
              v363 = v603;
              v364 = v603;
              v365 = v583;
              sub_10033251C(v583, &v635);
              v366 = Logger.logObject.getter();
              v367 = static os_log_type_t.default.getter();
              sub_100332478(v365);
              v571 = v364;

              LODWORD(v575) = v367;
              v368 = os_log_type_enabled(v366, v367);
              v369 = &selRef_hack_willSaveHandled;
              if (v368)
              {
                v561 = v366;
                v370 = swift_slowAlloc();
                v371 = swift_slowAlloc();
                v560 = swift_slowAlloc();
                v635 = v560;
                *v370 = v558;
                v634 = type metadata accessor for RDGroceryOperationCategorizeRemindersInList(0);
                sub_1000F5104(&qword_100942108, &unk_1007A2520);
                v372 = String.init<A>(describing:)();
                v374 = v373;
                v375 = sub_10000668C(v372, v373, &v635);
                v376 = v626;
                v377 = v375;
                v374, v378, v379, v380, v381, v382, v383, v384;
                *(v370 + 4) = v377;
                *(v370 + 12) = 2114;
                v385 = v365[1];
                *(v370 + 14) = v385;
                v559 = v371;
                *v371 = v385;
                *(v370 + 22) = 2082;
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v386 = v385;
                v387 = dispatch thunk of CustomStringConvertible.description.getter();
                v389 = v388;
                (v587)(v376, v352);
                v390 = sub_10000668C(v387, v389, &v635);
                v389, v391, v392, v393, v394, v395, v396, v397;
                *(v370 + 24) = v390;
                *(v370 + 32) = 2082;
                v398 = [v571 identifier];
                if (v398)
                {
                  v399 = v611;
                  v400 = v398;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v401 = 0;
                  v402 = v623;
                }

                else
                {
                  v401 = 1;
                  v402 = v623;
                  v399 = v611;
                }

                v404 = v620;
                v409 = v561;
                v143 = v576;
                v405 = v632;
                v580(v399, v401, 1, v632);
                v410 = Optional.descriptionOrNil.getter();
                v411 = v399;
                v413 = v412;
                sub_1000050A4(v411, &unk_100939D90, "8\n\r");
                v414 = sub_10000668C(v410, v413, &v635);
                v413, v415, v416, v417, v418, v419, v420, v421;
                *(v370 + 34) = v414;
                _os_log_impl(&_mh_execute_header, v409, v575, "%{public}s: Auto-categorized reminder based on local corrections {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s}", v370, 0x2Au);
                sub_1000050A4(v559, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                (*v572)(v402, v628);
                v363 = v603;
                v403 = v587;
                v369 = &selRef_hack_willSaveHandled;
              }

              else
              {

                v403 = v587;
                (v587)(v626, v352);
                (*v572)(v361, v362);
                v404 = v620;
                v405 = v352;
                v143 = v576;
              }

              goto LABEL_68;
            }

            v296 = v608;
            v297 = v598;
            sub_100193AB0(*(v265 + 56) + *(v608 + 72) * v294, v598);

            (*storeController)(v600, v632);
            (*(v296 + 56))(v297, 0, 1, v615);
            sub_1000050A4(v297, &qword_1009420F8, &unk_1007A2508);
            v265, v298, v299, v300, v301, v302, v303, v304;
            v254 = v625;
          }

          else
          {
            v265, v284, v285, v286, v287, v288, v289, v290;

            if (v553)
            {
              goto LABEL_53;
            }
          }

          v463 = [(objc_class *)v282 groupIdentifier];
          if (v463)
          {
            v464 = v591;
            v465 = v463;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v466 = 0;
          }

          else
          {
            v466 = 1;
            v464 = v591;
          }

          v467 = 1;
          v580(v464, v466, 1, v632);
          sub_100031B58(v464, v605, &unk_100939D90, "8\n\r");
          v468 = [v603 identifier];
          v469 = v599;
          if (v468)
          {
            v470 = v468;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v467 = 0;
          }

          v471 = v632;
          v580(v469, v467, 1, v632);
          v472 = *(v593 + 48);
          v473 = v595;
          sub_100010364(v605, v595, &unk_100939D90, "8\n\r");
          v587 = v472;
          sub_100010364(v469, &v472[v473], &unk_100939D90, "8\n\r");
          v474 = *v570;
          if ((*v570)(v473, 1, v471) == 1)
          {
            sub_1000050A4(v599, &unk_100939D90, "8\n\r");
            v475 = v474(&v587[v473], 1, v632);
            v476 = v601;
            v369 = &selRef_hack_willSaveHandled;
            if (v475 != 1)
            {
              goto LABEL_96;
            }

            sub_1000050A4(v473, &unk_100939D90, "8\n\r");
          }

          else
          {
            sub_100010364(v473, v254, &unk_100939D90, "8\n\r");
            v477 = v587;
            if (v474(&v587[v473], 1, v632) == 1)
            {
              sub_1000050A4(v599, &unk_100939D90, "8\n\r");
              (*storeController)(v254, v632);
              v369 = &selRef_hack_willSaveHandled;
LABEL_96:
              sub_1000050A4(v473, &unk_10093A3D0, &qword_100795770);
LABEL_97:
              v635 = v158;
              v636 = v602;
              v587 = StringProtocol.lowercased(with:)();
              v479 = v478;
              v480 = v590;
              sub_100010364(v605, v590, &unk_100939D90, "8\n\r");
              static Date.now.getter();
              v481 = v632;
              if (v474(v480, 1, v632) == 1)
              {
                v482 = 0;
              }

              else
              {
                v482 = UUID._bridgeToObjectiveC()().super.isa;
                (*storeController)(v480, v481);
              }

              v483 = v583;
              v484 = objc_allocWithZone(REMTimestampedUUID);
              v485 = v594;
              v486 = Date._bridgeToObjectiveC()().super.isa;
              v487 = [v484 initWithIdentifier:v482 modifiedOn:v486];

              (*v563)(v485, v619);
              swift_beginAccess();
              sub_10031DEEC(v487, v587, v479, sub_1002C8FA0, sub_10037572C);
              swift_endAccess();
              LODWORD(v580) = 1;
              v488 = v605;
              v476 = v601;
              goto LABEL_103;
            }

            v489 = *v554;
            v490 = &v477[v473];
            v587 = v474;
            v491 = v589;
            v492 = v632;
            v489(v589, v490, v632);
            sub_100334878(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            LODWORD(v580) = dispatch thunk of static Equatable.== infix(_:_:)();
            v493 = *storeController;
            v494 = v491;
            v474 = v587;
            (*storeController)(v494, v492);
            sub_1000050A4(v599, &unk_100939D90, "8\n\r");
            v493(v254, v492);
            sub_1000050A4(v595, &unk_100939D90, "8\n\r");
            v476 = v601;
            v369 = &selRef_hack_willSaveHandled;
            if ((v580 & 1) == 0)
            {
              goto LABEL_97;
            }
          }

          LODWORD(v580) = 0;
          v483 = v583;
          v488 = v605;
LABEL_103:
          v495 = v596;
          (*v573)(v596, v631 + v574, v628);
          v496 = v632;
          (*clientIdentity)(v476, v633, v632);
          v497 = v592;
          sub_100010364(v488, v592, &unk_100939D90, "8\n\r");
          sub_10033251C(v483, &v635);
          v498 = Logger.logObject.getter();
          v499 = static os_log_type_t.default.getter();
          sub_100332478(v483);
          v587 = v498;
          if (os_log_type_enabled(v498, v499))
          {
            v500 = swift_slowAlloc();
            v501 = swift_slowAlloc();
            v571 = v501;
            v577 = swift_slowAlloc();
            v635 = v577;
            *v500 = v551;
            v634 = type metadata accessor for RDGroceryOperationCategorizeRemindersInList(0);
            sub_1000F5104(&qword_100942108, &unk_1007A2520);
            v502 = String.init<A>(describing:)();
            LODWORD(v575) = v499;
            v504 = v503;
            v505 = v497;
            v506 = sub_10000668C(v502, v503, &v635);
            v504, v507, v508, v509, v510, v511, v512, v513;
            *(v500 + 4) = v506;
            *(v500 + 12) = 2114;
            v514 = v583[1];
            v637 = v514;
            *(v500 + 14) = v514;
            *v501 = v514;
            *(v500 + 22) = 2082;
            sub_100010364(&v637, &v634, &unk_10093AF40, &unk_100795790);
            sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v515 = v601;
            v516 = dispatch thunk of CustomStringConvertible.description.getter();
            v517 = v496;
            v518 = v516;
            v520 = v519;
            v521 = *storeController;
            (*storeController)(v515, v517);
            v522 = sub_10000668C(v518, v520, &v635);
            v520, v523, v524, v525, v526, v527, v528, v529;
            *(v500 + 24) = v522;
            *(v500 + 32) = 2082;
            v530 = Optional.descriptionOrNil.getter();
            v532 = v531;
            sub_1000050A4(v505, &unk_100939D90, "8\n\r");
            v533 = sub_10000668C(v530, v532, &v635);
            v534 = v532;
            v403 = v521;
            v534, v535, v536, v537, v538, v539, v540, v541;
            *(v500 + 34) = v533;
            *(v500 + 42) = 1026;
            *(v500 + 44) = v580;
            v542 = v587;
            _os_log_impl(&_mh_execute_header, v587, v575, "%{public}s: Skipped auto-categorizing reminder {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v500, 0x30u);
            sub_1000050A4(v571, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            (*v572)(v596, v628);
            sub_1000050A4(v605, &unk_100939D90, "8\n\r");
            v405 = v632;
          }

          else
          {

            sub_1000050A4(v497, &unk_100939D90, "8\n\r");
            v403 = *storeController;
            (*storeController)(v601, v496);
            (*v572)(v495, v628);
            sub_1000050A4(v605, &unk_100939D90, "8\n\r");
            v405 = v496;
          }

          v404 = v620;
          v363 = v603;
LABEL_68:
          v422 = [v363 v369[64]];
          v587 = v403;
          if (v422)
          {
            v423 = v422;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v424 = v586;
            swift_beginAccess();
            v425 = *(v424 + 16);
            v147 = v602;
            if (*(v425 + 16))
            {
              v426 = sub_100363F20(v404);
              v427 = v613;
              if (v428)
              {
                sub_100193AB0(*(v425 + 56) + *(v608 + 72) * v426, v613);
                v429 = 0;
              }

              else
              {
                v429 = 1;
              }
            }

            else
            {
              v429 = 1;
              v427 = v613;
            }

            v430 = v615;
            (*v557)(v427, v429, 1, v615);
            if ((*v556)(v427, 1, v430))
            {
              sub_1000050A4(v427, &qword_1009420F8, &unk_1007A2508);
              swift_endAccess();
              v403(v404, v405);
              v145 = 0;
              v146 = 0;
            }

            else
            {
              v431 = v607;
              sub_100193AB0(v427, v607);
              sub_1000050A4(v427, &qword_1009420F8, &unk_1007A2508);
              swift_endAccess();
              v403(v404, v405);
              v432 = (v431 + *(v430 + 20));
              v145 = *v432;
              v146 = v432[1];

              sub_10033529C(v431);
            }
          }

          else
          {
            v145 = 0;
            v146 = 0;
            v147 = v602;
          }

          type metadata accessor for REMAnalyticsManager();
          static REMAnalyticsManager.shared.getter();
          v148 = v621;
          *v621 = 0x726F436C61636F6CLL;
          v148[1] = 0xEF6E6F6974636572;
          *(v148 + 16) = 0;
          *(v148 + 17) = v635;
          *(v148 + 5) = *(&v635 + 3);
          v149 = v569;
          v148[3] = v568;
          v148[4] = v149;
          v148[5] = 0;
          v148[6] = 0;
          v148[7] = 0xD000000000000019;
          v148[8] = v567;
          v148[9] = v145;
          v148[10] = v146;
          v148[11] = 0;
          v148[12] = 0;
          v150 = v622;
          (*v565)(v148, v566, v622);

          REMAnalyticsManager.post(event:)();
          v147, v151, v152, v153, v154, v155, v156, v157;

          (*v564)(v148, v150);
          (v587)(v633, v632);
LABEL_23:
          v143 += 3;
          v142 = v609 - 1;
          if (v609 == 1)
          {

            return;
          }
        }
      }
    }

    else
    {
      v117 = v635;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_100329FAC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6, NSObject *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v623 = a8;
  v605 = a7;
  v606 = a6;
  v592 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v592, v20);
  v594 = &v555 - v21;
  v613 = type metadata accessor for Date();
  v601 = *(v613 - 8);
  __chkstk_darwin(v613, v22);
  v593 = &v555 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v27 = &v555 - v26;
  v28 = sub_1000F5104(&qword_1009420F8, &unk_1007A2508);
  __chkstk_darwin(v28 - 8, v29);
  v615 = &v555 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v597 = &v555 - v33;
  v620 = type metadata accessor for Logger();
  v600 = *(v620 - 8);
  __chkstk_darwin(v620, v34);
  v595 = &v555 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v616 = &v555 - v38;
  __chkstk_darwin(v39, v40);
  v608 = &v555 - v41;
  v609 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v609, v42);
  v604 = &v555 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v45);
  v591 = &v555 - v46;
  __chkstk_darwin(v47, v48);
  v587 = &v555 - v49;
  __chkstk_darwin(v50, v51);
  v589 = &v555 - v52;
  __chkstk_darwin(v53, v54);
  v598 = &v555 - v55;
  __chkstk_darwin(v56, v57);
  v588 = &v555 - v58;
  __chkstk_darwin(v59, v60);
  v603 = &v555 - v61;
  __chkstk_darwin(v62, v63);
  v607 = &v555 - v64;
  __chkstk_darwin(v65, v66);
  v614 = &v555 - v67;
  __chkstk_darwin(v68, v69);
  v617 = &v555 - v70;
  v624 = type metadata accessor for UUID();
  v599 = *(v624 - 8);
  __chkstk_darwin(v624, v71);
  v590 = &v555 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73, v74);
  v586 = &v555 - v75;
  __chkstk_darwin(v76, v77);
  v618 = &v555 - v78;
  __chkstk_darwin(v79, v80);
  v612 = &v555 - v81;
  __chkstk_darwin(v82, v83);
  v621 = &v555 - v84;
  __chkstk_darwin(v85, v86);
  v596 = &v555 - v87;
  __chkstk_darwin(v88, v89);
  v602 = &v555 - v90;
  __chkstk_darwin(v91, v92);
  v610 = &v555 - v93;
  __chkstk_darwin(v94, v95);
  v611 = &v555 - v96;
  __chkstk_darwin(v97, v98);
  v100 = &v555 - v99;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v622 = Strong;
    v102 = *a3;
    v626 = 0;
    v103 = [a2 existingObjectWithID:v102 error:&v626];
    v104 = v626;
    if (v103)
    {
      v619 = v100;
      v584 = a3;
      v105 = v103;
      objc_opt_self();
      v106 = swift_dynamicCastObjCClass();
      v107 = v104;
      if (!v106)
      {

        return;
      }

      v583 = v105;
      v108 = [v106 membershipsOfRemindersInSectionsAsData];
      v580 = v27;
      if (v108)
      {
        v579 = a4;
        v109 = v108;
        v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v14)
        {

          sub_10001BBA0(v110, v112);

          return;
        }

        sub_10001BBA0(v110, v112);
        v114 = v626;
        v15 = 0;
        a4 = v579;
      }

      else
      {
        v114 = 0;
      }

      swift_beginAccess();
      v115 = *(a4 + 16);
      *(a4 + 16) = v114;

      v116 = [v106 remObjectID];
      v117 = sub_100335590(v116, a2);
      if (v15)
      {

        return;
      }

      v118 = v117;

      swift_beginAccess();
      v119 = *(a5 + 16);
      *(a5 + 16) = v118;
      v119, v120, v121, v122, v123, v124, v125, v126;
      v127 = [v106 autoCategorizationLocalCorrectionsAsData];
      if (v127)
      {
        v128 = v127;
        v129 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v131 = v130;

        sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        sub_10001BBA0(v129, v131);
        v132 = v626;
      }

      else
      {
        v132 = 0;
      }

      v133 = v606;
      swift_beginAccess();
      v134 = *v133->clientIdentity;
      *v133->clientIdentity = v132;

      if (!v132)
      {

        swift_beginAccess();
        v547 = *(a14 + 16);
        *(a14 + 16) = v605;

        v547, v548, v549, v550, v551, v552, v553, v554;
        return;
      }

      isa = v605[2].isa;
      if (isa)
      {
        v559 = 0;
        v557 = a9;
        v556 = a11;
        v565 = a10;
        v571 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog;
        v136 = v605;
        v582 = v132;
        swift_beginAccess();
        swift_beginAccess();
        v572 = a5;
        swift_beginAccess();
        v578 = v599 + 7;
        v576 = &v599[2];
        v569 = (v600 + 8);
        v570 = (v600 + 16);
        v558 = v599 + 4;
        v566 = (v601 + 8);
        v567 = &v599[6];
        v137 = v136 + 6;
        *&v138 = 136446978;
        v560 = v138;
        *&v138 = 136447234;
        v555 = v138;
        v579 = a4;
        v581 = a14;
        v585 = &v599[1];
        while (1)
        {
          v605 = isa;
          v147 = v137[-1].isa;
          v148 = v137->isa;
          v149 = v137[-2].isa;

          v601 = v149;
          v150 = [(objc_class *)v149 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v626 = v147;
          v627 = v148;
          sub_10013BCF4();
          v606 = v148;

          v151 = StringProtocol.lowercased(with:)();
          v153 = v152;
          v154 = [(objc_class *)v582 memberships];
          sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
          v155 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v155 + 16) || (v163 = sub_100005F4C(v151, v153), (v156 & 1) == 0))
          {
            v205 = v606;
            v606, v156, v157, v158, v159, v160, v161, v162;
            v153, v206, v207, v208, v209, v210, v211, v212;
            v155, v213, v214, v215, v216, v217, v218, v219;
            v220 = v581;
            swift_beginAccess();
            v221 = *(v220 + 16);
            v222 = v601;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v220 + 16) = v221;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v221 = sub_100367C4C(0, *v221->clientIdentity + 1, 1, v221, v224, v225, v226, v227);
              *(v220 + 16) = v221;
            }

            v229 = *v221->clientIdentity;
            v228 = *&v221->clientIdentity[8];
            if (v229 >= v228 >> 1)
            {
              v221 = sub_100367C4C((v228 > 1), v229 + 1, 1, v221, v224, v225, v226, v227);
            }

            *v221->clientIdentity = v229 + 1;
            v230 = &v221->super.isa + 3 * v229;
            v230[4] = v222;
            v230[5] = v147;
            v230[6] = v205;
            *(v220 + 16) = v221;
            swift_endAccess();
            v205, v231, v232, v233, v234, v235, v236, v237;

            (*v585)(v619, v624);
            goto LABEL_23;
          }

          v574 = v147;
          v164 = *(*(v155 + 56) + 8 * v163);
          v155, v165, v166, v167, v168, v169, v170, v171;
          v172 = [v164 identifier];
          v180 = v584;
          v600 = v164;
          if (v172)
          {
            v181 = v617;
            v182 = v172;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v577 = v578->isa;
            (v577)(v181, 0, 1, v624);
            sub_1000050A4(v181, &unk_100939D90, "8\n\r");
            v183 = *(v572 + 16);

            v184 = [v164 identifier];
            if (!v184)
            {
              __break(1u);
              return;
            }

            v192 = v184;
            v153, v185, v186, v187, v188, v189, v190, v191;
            v193 = v606;
            v606, v194, v195, v196, v197, v198, v199, v200;
            v201 = v611;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v183 + 16))
            {
              sub_100363F20(v201);
              v202 = v201;
              v204 = v203;
            }

            else
            {
              v202 = v201;
              v204 = 0;
            }

            v246 = v624;
            v599 = *v585;
            (v599)(v202, v624);
            v183, v247, v248, v249, v250, v251, v252, v253;
            if ((v204 & 1) == 0)
            {
              v303 = v608;
              v304 = v620;
              (*v570)(v608, v622 + v571, v620);
              (*v576)(v610, v619, v246);
              v305 = v600;
              sub_10033251C(v180, &v626);
              v306 = Logger.logObject.getter();
              v307 = static os_log_type_t.default.getter();
              sub_100332478(v180);

              LODWORD(v575) = v307;
              v308 = os_log_type_enabled(v306, v307);
              v600 = v305;
              if (v308)
              {
                v573 = v306;
                v309 = swift_slowAlloc();
                v310 = swift_slowAlloc();
                v568 = swift_slowAlloc();
                v626 = v568;
                *v309 = v560;
                v625 = type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList(0);
                sub_1000F5104(&qword_100942138, &qword_1007A25B8);
                v311 = String.init<A>(describing:)();
                v313 = v312;
                v314 = v180;
                v315 = sub_10000668C(v311, v312, &v626);
                v313, v316, v317, v318, v319, v320, v321, v322;
                *(v309 + 4) = v315;
                *(v309 + 12) = 2114;
                v323 = v314[1];
                *(v309 + 14) = v323;
                v564 = v310;
                *v310 = v323;
                *(v309 + 22) = 2082;
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v324 = v323;
                v325 = v610;
                v326 = dispatch thunk of CustomStringConvertible.description.getter();
                v328 = v327;
                (v599)(v325, v246);
                v329 = sub_10000668C(v326, v328, &v626);
                v328, v330, v331, v332, v333, v334, v335, v336;
                *(v309 + 24) = v329;
                *(v309 + 32) = 2082;
                v337 = [v305 identifier];
                if (v337)
                {
                  v338 = v604;
                  v339 = v337;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v340 = 0;
                }

                else
                {
                  v340 = 1;
                  v338 = v604;
                }

                v397 = v581;
                v400 = v606;
                v398 = v601;
                v399 = v574;
                (v577)(v338, v340, 1, v624);
                v435 = Optional.descriptionOrNil.getter();
                v436 = v338;
                v438 = v437;
                sub_1000050A4(v436, &unk_100939D90, "8\n\r");
                v439 = sub_10000668C(v435, v438, &v626);
                v438, v440, v441, v442, v443, v444, v445, v446;
                *(v309 + 34) = v439;
                v447 = v573;
                _os_log_impl(&_mh_execute_header, v573, v575, "%{public}s: The section in local correction does not exist on the device {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s", v309, 0x2Au);
                sub_1000050A4(v564, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                (*v569)(v608, v620);
              }

              else
              {

                (v599)(v610, v246);
                (*v569)(v303, v304);
                v397 = v581;
                v398 = v601;
                v399 = v574;
                v400 = v606;
              }

              swift_beginAccess();
              v448 = *(v397 + 16);
              v449 = v398;

              v450 = swift_isUniquelyReferenced_nonNull_native();
              *(v397 + 16) = v448;
              if ((v450 & 1) == 0)
              {
                v448 = sub_100367C4C(0, *v448->clientIdentity + 1, 1, v448, v451, v452, v453, v454);
                *(v397 + 16) = v448;
              }

              v456 = *v448->clientIdentity;
              v455 = *&v448->clientIdentity[8];
              if (v456 >= v455 >> 1)
              {
                v448 = sub_100367C4C((v455 > 1), v456 + 1, 1, v448, v451, v452, v453, v454);
              }

              *v448->clientIdentity = v456 + 1;
              v457 = &v448->super.isa + 3 * v456;
              v457[4] = v449;
              v457[5] = v399;
              v457[6] = v400;
              *(v397 + 16) = v448;
              swift_endAccess();
              v400, v458, v459, v460, v461, v462, v463, v464;

              (v599)(v619, v624);
              goto LABEL_23;
            }
          }

          else
          {
            v153, v173, v174, v175, v176, v177, v178, v179;
            v193 = v606;
            v606, v238, v239, v240, v241, v242, v243, v244;
            v245 = v617;
            v577 = v578->isa;
            (v577)(v617, 1, 1, v624);
            sub_1000050A4(v245, &unk_100939D90, "8\n\r");
          }

          v254 = *(v579 + 16);
          v255 = v614;
          v256 = v619;
          if (!v254)
          {
            v267 = 0;
            goto LABEL_52;
          }

          v257 = [v254 membershipByMemberIdentifier];
          sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
          sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v258 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v258 + 16) || (v266 = sub_100363F20(v256), (v259 & 1) == 0))
          {
            v267 = 0;
            goto LABEL_50;
          }

          v267 = *(*(v258 + 56) + 8 * v266);
          v258, v268, v269, v270, v271, v272, v273, v274;
          if (!v267)
          {
            goto LABEL_52;
          }

          v258 = *(v572 + 16);

          v275 = v267;
          v276 = [v275 groupIdentifier];
          if (v276)
          {
            v599 = v275;
            v284 = v596;
            v285 = v276;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v286 = v284;
            v287 = v602;
            (v558->isa)(v602, v286, v624);
            if (!*(v258 + 16) || (v288 = sub_100363F20(v287), (v289 & 1) == 0))
            {

              (*v585)(v287, v624);
              v465 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
              v466 = v597;
              (*(*(v465 - 8) + 56))(v597, 1, 1, v465);
              sub_1000050A4(v466, &qword_1009420F8, &unk_1007A2508);
              v256 = v619;
LABEL_50:
              v258, v259, v260, v261, v262, v263, v264, v265;
LABEL_52:
              v575 = v267;
              v341 = *v576;
              v342 = v624;
              (*v576)(v621, v256, v624);
              v343 = [v600 identifier];
              v574 = v341;
              if (v343)
              {
                v344 = v343;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v345 = 0;
              }

              else
              {
                v345 = 1;
              }

              v346 = v580;
              (v577)(v255, v345, 1, v342);
              static Date.now.getter();
              v347.super.isa = UUID._bridgeToObjectiveC()().super.isa;
              if ((*v567)(v255, 1, v342) == 1)
              {
                v348 = 0;
                v349 = v585;
              }

              else
              {
                v348 = UUID._bridgeToObjectiveC()().super.isa;
                v349 = v585;
                (*v585)(v255, v342);
              }

              v573 = v137;
              v350 = objc_allocWithZone(REMMembership);
              v351 = Date._bridgeToObjectiveC()().super.isa;
              v352 = [v350 initWithMemberIdentifier:v347.super.isa groupIdentifier:v348 isObsolete:0 modifiedOn:v351];

              (*v566)(v346, v613);
              v599 = *v349;
              (v599)(v621, v342);
              v353 = v565;
              swift_beginAccess();
              v354 = v352;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*(v353 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v353 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              v355 = v616;
              v356 = v620;
              (*v570)(v616, v622 + v571, v620);
              v357 = v612;
              (v574)(v612, v619, v342);
              v358 = v600;
              v359 = v584;
              sub_10033251C(v584, &v626);
              v360 = Logger.logObject.getter();
              v361 = static os_log_type_t.default.getter();
              sub_100332478(v359);
              v568 = v358;

              LODWORD(v574) = v361;
              if (os_log_type_enabled(v360, v361))
              {
                v563 = v360;
                v564 = v354;
                v362 = swift_slowAlloc();
                v363 = swift_slowAlloc();
                v562 = swift_slowAlloc();
                v626 = v562;
                *v362 = v560;
                v625 = type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList(0);
                sub_1000F5104(&qword_100942138, &qword_1007A25B8);
                v364 = String.init<A>(describing:)();
                v366 = v365;
                v367 = sub_10000668C(v364, v365, &v626);
                v366, v368, v369, v370, v371, v372, v373, v374;
                *(v362 + 4) = v367;
                *(v362 + 12) = 2114;
                v375 = v359[1];
                *(v362 + 14) = v375;
                v561 = v363;
                *v363 = v375;
                *(v362 + 22) = 2082;
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v376 = v375;
                v377 = v624;
                v378 = dispatch thunk of CustomStringConvertible.description.getter();
                v380 = v379;
                v381 = v599;
                (v599)(v357, v377);
                v382 = sub_10000668C(v378, v380, &v626);
                v380, v383, v384, v385, v386, v387, v388, v389;
                *(v362 + 24) = v382;
                *(v362 + 32) = 2082;
                v390 = [(objc_class *)v568 identifier];
                if (v390)
                {
                  v391 = v607;
                  v392 = v390;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v393 = 0;
                  v394 = v620;
                }

                else
                {
                  v393 = 1;
                  v394 = v620;
                  v391 = v607;
                }

                v396 = v618;
                v137 = v573;
                (v577)(v391, v393, 1, v624);
                v401 = Optional.descriptionOrNil.getter();
                v402 = v391;
                v404 = v403;
                sub_1000050A4(v402, &unk_100939D90, "8\n\r");
                v405 = sub_10000668C(v401, v404, &v626);
                v404, v406, v407, v408, v409, v410, v411, v412;
                *(v362 + 34) = v405;
                v413 = v563;
                _os_log_impl(&_mh_execute_header, v563, v574, "%{public}s: Auto-categorized reminder based on local corrections {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s}", v362, 0x2Au);
                sub_1000050A4(v561, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                (*v569)(v616, v394);
                v395 = v615;
              }

              else
              {

                v381 = v599;
                (v599)(v357, v624);
                (*v569)(v355, v356);
                v395 = v615;
                v396 = v618;
                v137 = v573;
              }

              goto LABEL_67;
            }

            v290 = v288;
            v291 = *(v258 + 56);
            v573 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
            v568 = v573[-1].isa;
            v292 = v291 + *(v568 + 9) * v290;
            v293 = v597;
            sub_100193AB0(v292, v597);
            v294 = v599;

            v295 = v287;
            v275 = v294;
            (*v585)(v295, v624);
            (*(v568 + 7))(v293, 0, 1, v573);
            sub_1000050A4(v293, &qword_1009420F8, &unk_1007A2508);
            v258, v296, v297, v298, v299, v300, v301, v302;
          }

          else
          {
            v258, v277, v278, v279, v280, v281, v282, v283;

            if (v557)
            {
              goto LABEL_52;
            }
          }

          v467 = [v275 groupIdentifier];
          if (v467)
          {
            v468 = v588;
            v469 = v467;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v470 = 0;
            v471 = v594;
          }

          else
          {
            v470 = 1;
            v471 = v594;
            v468 = v588;
          }

          v472 = 1;
          (v577)(v468, v470, 1, v624);
          sub_100031B58(v468, v603, &unk_100939D90, "8\n\r");
          v473 = [v600 identifier];
          if (v473)
          {
            v474 = v598;
            v475 = v473;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v476 = v474;
            v472 = 0;
          }

          else
          {
            v476 = v598;
          }

          v477 = v624;
          (v577)(v476, v472, 1, v624);
          v478 = *(v592 + 48);
          sub_100010364(v603, v471, &unk_100939D90, "8\n\r");
          v599 = v478;
          sub_100010364(v598, v478 + v471, &unk_100939D90, "8\n\r");
          v479 = *v567;
          v480 = (*v567)(v471, 1, v477);
          v575 = v267;
          v577 = v479;
          if (v480 != 1)
          {
            break;
          }

          sub_1000050A4(v598, &unk_100939D90, "8\n\r");
          v481 = v471;
          if (v479(v599 + v471, 1, v624) != 1)
          {
            goto LABEL_94;
          }

          sub_1000050A4(v471, &unk_100939D90, "8\n\r");
          LODWORD(v577) = 0;
          v482 = v595;
LABEL_100:
          (*v570)(v482, v622 + v571, v620);
          v493 = v590;
          (*v576)(v590, v619, v624);
          v494 = v603;
          v495 = v591;
          sub_100010364(v603, v591, &unk_100939D90, "8\n\r");
          v496 = v584;
          sub_10033251C(v584, &v626);
          v497 = Logger.logObject.getter();
          v498 = static os_log_type_t.default.getter();
          sub_100332478(v496);
          v599 = v497;
          if (os_log_type_enabled(v497, v498))
          {
            v499 = v493;
            v500 = swift_slowAlloc();
            v501 = swift_slowAlloc();
            v568 = v501;
            v574 = swift_slowAlloc();
            v626 = v574;
            *v500 = v555;
            v625 = type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList(0);
            sub_1000F5104(&qword_100942138, &qword_1007A25B8);
            v502 = String.init<A>(describing:)();
            LODWORD(v573) = v498;
            v504 = v503;
            v505 = v495;
            v506 = sub_10000668C(v502, v503, &v626);
            v504, v507, v508, v509, v510, v511, v512, v513;
            *(v500 + 4) = v506;
            *(v500 + 12) = 2114;
            v514 = v496[1];
            v628 = v514;
            *(v500 + 14) = v514;
            *v501 = v514;
            *(v500 + 22) = 2082;
            sub_100010364(&v628, &v625, &unk_10093AF40, &unk_100795790);
            sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v515 = v499;
            v516 = v624;
            v517 = dispatch thunk of CustomStringConvertible.description.getter();
            v519 = v518;
            v520 = *v585;
            (*v585)(v515, v516);
            v521 = sub_10000668C(v517, v519, &v626);
            v519, v522, v523, v524, v525, v526, v527, v528;
            *(v500 + 24) = v521;
            *(v500 + 32) = 2082;
            v529 = Optional.descriptionOrNil.getter();
            v531 = v530;
            sub_1000050A4(v505, &unk_100939D90, "8\n\r");
            v532 = sub_10000668C(v529, v531, &v626);
            v531, v533, v534, v535, v536, v537, v538, v539;
            *(v500 + 34) = v532;
            *(v500 + 42) = 1026;
            *(v500 + 44) = v577;
            v540 = v599;
            _os_log_impl(&_mh_execute_header, v599, v573, "%{public}s: Skipped auto-categorizing reminder {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v500, 0x30u);
            sub_1000050A4(v568, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            (*v569)(v595, v620);
            v541 = v603;
            v381 = v520;
          }

          else
          {

            sub_1000050A4(v495, &unk_100939D90, "8\n\r");
            v381 = *v585;
            (*v585)(v493, v624);
            (*v569)(v482, v620);
            v541 = v494;
          }

          sub_1000050A4(v541, &unk_100939D90, "8\n\r");
          v395 = v615;
          v396 = v618;
LABEL_67:
          v414 = v600;
          v415 = [v600 identifier];
          if (v415)
          {
            v416 = v415;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v417 = v572;
            swift_beginAccess();
            v418 = *(v417 + 16);
            if (*(v418 + 16))
            {
              v419 = sub_100363F20(v396);
              if (v420)
              {
                v421 = v419;
                v599 = v381;
                v422 = v414;
                v423 = *(v418 + 56);
                v424 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
                v425 = *(v424 - 8);
                v426 = v423 + *(v425 + 72) * v421;
                v414 = v422;
                v381 = v599;
                v395 = v615;
                sub_100193AB0(v426, v615);
                (*(v425 + 56))(v395, 0, 1, v424);
              }

              else
              {
                v424 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
                v395 = v615;
                (*(*(v424 - 8) + 56))(v615, 1, 1, v424);
              }
            }

            else
            {
              v424 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
              (*(*(v424 - 8) + 56))(v395, 1, 1, v424);
            }

            _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
            (*(*(v424 - 8) + 48))(v395, 1, v424);
            sub_1000050A4(v395, &qword_1009420F8, &unk_1007A2508);
            swift_endAccess();

            v606, v427, v428, v429, v430, v431, v432, v433;
            v434 = v624;
            (v381)(v618, v624);
            v146 = v434;
          }

          else
          {

            v606, v139, v140, v141, v142, v143, v144, v145;
            v146 = v624;
          }

          (v381)(v619, v146);
LABEL_23:
          v137 += 3;
          isa = (v605 - 1);
          if (v605 == 1)
          {

            return;
          }
        }

        sub_100010364(v471, v589, &unk_100939D90, "8\n\r");
        v481 = v471;
        if (v479(v599 + v471, 1, v624) == 1)
        {
          sub_1000050A4(v598, &unk_100939D90, "8\n\r");
          (*v585)(v589, v624);
LABEL_94:
          sub_1000050A4(v481, &unk_10093A3D0, &qword_100795770);
        }

        else
        {
          v542 = v599 + v471;
          v543 = v586;
          v544 = v624;
          (v558->isa)(v586, v542, v624);
          sub_100334878(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v545 = v589;
          LODWORD(v599) = dispatch thunk of static Equatable.== infix(_:_:)();
          v546 = *v585;
          (*v585)(v543, v544);
          sub_1000050A4(v598, &unk_100939D90, "8\n\r");
          v546(v545, v544);
          v193 = v606;
          sub_1000050A4(v594, &unk_100939D90, "8\n\r");
          if (v599)
          {
            LODWORD(v577) = 0;
LABEL_99:
            v482 = v595;
            goto LABEL_100;
          }
        }

        v626 = v574;
        v627 = v193;
        v483 = StringProtocol.lowercased(with:)();
        v485 = v484;
        v486 = v587;
        sub_100010364(v603, v587, &unk_100939D90, "8\n\r");
        static Date.now.getter();
        v487 = v624;
        if (v577(v486, 1, v624) == 1)
        {
          v488 = 0;
        }

        else
        {
          v488 = UUID._bridgeToObjectiveC()().super.isa;
          (*v585)(v486, v487);
        }

        v489 = objc_allocWithZone(REMTimestampedUUID);
        v490 = v593;
        v491 = Date._bridgeToObjectiveC()().super.isa;
        v492 = [v489 initWithIdentifier:v488 modifiedOn:v491];

        (*v566)(v490, v613);
        swift_beginAccess();
        sub_10031DEEC(v492, v483, v485, sub_1002C8FA0, sub_10037572C);
        swift_endAccess();
        LODWORD(v577) = 1;
        goto LABEL_99;
      }
    }

    else
    {
      v113 = v626;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_10032C528(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10, void (*a11)(NSObject *, _TtC7remindd19RDXPCStorePerformer *, uint64_t, NSObject *), void (*a12)(id *, id *), uint64_t *a13, uint64_t (*a14)(void), uint64_t *a15, uint64_t *a16)
{
  v17 = v16;
  v257 = a7;
  v258 = type metadata accessor for Logger();
  v253 = *(v258 - 8);
  __chkstk_darwin(v258, v24);
  v260 = &v221[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v256 = type metadata accessor for Date();
  v26 = *(v256 - 8);
  __chkstk_darwin(v256, v27);
  v259 = &v221[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v29 - 8, v30);
  v255 = &v221[-v31];
  v268 = type metadata accessor for UUID();
  v265 = *(v268 - 8);
  __chkstk_darwin(v268, v32);
  v254 = &v221[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34, v35);
  v267 = &v221[-v36];
  v264 = sub_1000F5104(&qword_100942120, &qword_1007A2598);
  __chkstk_darwin(v264, v37);
  v263 = &v221[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39, v40);
  v261 = &v221[-v41];
  __chkstk_darwin(v42, v43);
  v262 = &v221[-v44];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v266 = Strong;
    v252 = a3;
    v46 = *a3;
    v270 = 0;
    v47 = [(RDXPCStorePerformer *)a2 existingObjectWithID:v46 error:&v270];
    v48 = v270;
    if (!v47)
    {
      v60 = v270;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_54:

      return;
    }

    v250 = a8;
    v49 = v47;
    objc_opt_self();
    v251 = swift_dynamicCastObjCClass();
    if (!v251)
    {
      v61 = v48;

      return;
    }

    v248 = v49;
    v50 = *(a4 + 16);
    v245 = a6;
    if (v50)
    {
      p_super = &a2->super;
      v270 = a4;
      v51 = v48;
      sub_1000F5104(&qword_100942128, &unk_1007A25A0);
      sub_10000CB48(&qword_100942130, &qword_100942128, &unk_1007A25A0, &protocol conformance descriptor for [A : B].Values);
      v52 = Sequence<>.unique()();
      v270 = v52;

      sub_1004C7D34(&v270);
      if (v16)
      {

        __break(1u);
        return;
      }

      v52, v53, v54, v55, v56, v57, v58, v59;
      a6 = p_super;
      v17 = 0;
      a2 = sub_100336A10(v270, v251, a5, p_super, a12);
      v229 = 0;
      v228 = a16;
      v227 = a15;
      v226 = a14;

      v243 = a4;
      v64 = a4 + 64;
      v65 = 1 << *(a4 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v67 = v66 & *(a4 + 64);
      v235 = *a13;
      v68 = (v65 + 63) >> 6;
      v244 = v265 + 16;
      v239 = v265 + 32;
      v241 = (v265 + 8);
      v234 = (v265 + 56);
      v233 = (v265 + 48);
      v232 = (v26 + 8);
      v231 = v253 + 16;
      v230 = v253 + 8;

      v69 = 0;
      *&v70 = 136446978;
      v225 = v70;
      v71 = a6;
      v63 = v261;
      v242 = &a2->super;
      v238 = a4 + 64;
      v237 = v68;
      while (v67)
      {
        v72 = v69;
LABEL_20:
        v246 = (v67 - 1) & v67;
        v73 = __clz(__rbit64(v67)) | (v72 << 6);
        v74 = v243;
        v75 = v265;
        v76 = *(v243 + 48) + *(v265 + 72) * v73;
        v77 = v262;
        v78 = v268;
        v240 = *(v265 + 16);
        (v240)(v262, v76, v268);
        v79 = *(v74 + 56) + 16 * v73;
        v80 = *(v79 + 8);
        v247 = *v79;
        v253 = v80;
        v81 = v264;
        v82 = (&v63->isa + *(v264 + 48));
        v83 = *(v75 + 32);
        v83(v63, v77, v78);
        *v82 = v247;
        v82[1] = v80;
        v84 = v263;
        sub_100010364(v63, v263, &qword_100942120, &qword_1007A2598);
        v85 = &v84[*(v81 + 48)];
        v17 = *v85;
        v86 = v85[1];
        a6 = v267;
        v83(v267, v84, v78);
        a2 = v242;
        isa = v242[2].isa;

        if (isa)
        {
          v95 = a6;
          v96 = sub_100005F4C(v17, v86);
          v98 = v97;
          v86, v97, v99, v100, v101, v102, v103, v104;
          if (v98)
          {
            v105 = *(*&a2->clientIdentity[40] + 8 * v96);
            v270 = 0;
            v106 = v105;
            v107 = [v106 remObjectIDWithError:&v270];
            if (!v107)
            {
              v213 = v270;
              a2, v214, v215, v216, v217, v218, v219, v220;
              _convertNSErrorToError(_:)();

              swift_willThrow();

              (*v241)(v95, v268);
              sub_1000050A4(v261, &qword_100942120, &qword_1007A2598);
              return;
            }

            v108 = v107;
            v247 = v106;
            v109 = v270;
            v253 = v108;
            v110 = [v108 uuid];
            v111 = v255;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v112 = v268;
            (*v234)(v111, 0, 1, v268);
            static Date.now.getter();
            v113.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            if ((*v233)(v111, 1, v112) == 1)
            {
              v114 = 0;
            }

            else
            {
              v114 = UUID._bridgeToObjectiveC()().super.isa;
              (*v241)(v111, v268);
            }

            v115 = objc_allocWithZone(REMMembership);
            v116 = v259;
            v117 = Date._bridgeToObjectiveC()().super.isa;
            v118 = [v115 initWithMemberIdentifier:v113.super.isa groupIdentifier:v114 isObsolete:0 modifiedOn:v117];

            (*v232)(v116, v256);
            v119 = v245;
            swift_beginAccess();
            v120 = v118;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v119[2].isa & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119[2].isa & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            v121 = *v231;
            v236 = v120;
            v17 = v258;
            v121(v260, v266 + v235, v258);
            v122 = v254;
            (v240)(v254, v267, v268);
            v123 = v252;
            sub_10033251C(v252, &v270);
            v124 = v253;
            a6 = Logger.logObject.getter();
            v125 = static os_log_type_t.default.getter();
            sub_100332478(v123);

            v240 = a6;
            if (os_log_type_enabled(a6, v125))
            {
              v126 = v123;
              v127 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              v224 = swift_slowAlloc();
              v270 = v224;
              *v127 = v225;
              v269 = v226(0);
              sub_1000F5104(v227, v228);
              v129 = String.init<A>(describing:)();
              v222 = v125;
              v131 = v130;
              v132 = sub_10000668C(v129, v130, &v270);
              v131, v133, v134, v135, v136, v137, v138, v139;
              *(v127 + 4) = v132;
              *(v127 + 12) = 2114;
              v140 = v126[1];
              v271 = v140;
              *(v127 + 14) = v140;
              *v128 = v140;
              *(v127 + 22) = 2082;
              sub_100010364(&v271, &v269, &unk_10093AF40, &unk_100795790);
              sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v141 = v268;
              v142 = dispatch thunk of CustomStringConvertible.description.getter();
              v144 = v143;
              v17 = v241;
              v223 = *v241;
              v223(v122, v141);
              v145 = sub_10000668C(v142, v144, &v270);
              v144, v146, v147, v148, v149, v150, v151, v152;
              *(v127 + 24) = v145;
              *(v127 + 32) = 2114;
              *(v127 + 34) = v124;
              v128[1] = v253;
              v153 = v124;
              v154 = v240;
              _os_log_impl(&_mh_execute_header, v240, v222, "%{public}s: Auto-categorized reminder based on prediction from auto-categorizer {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionObjectID: %{public}@}", v127, 0x2Au);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              a6 = &v224->super;
              swift_arrayDestroy();

              (*v230)(v260, v258);
              v155 = v141;
              a2 = v242;
              v223(v267, v155);
            }

            else
            {

              v156 = *v241;
              v157 = v268;
              (*v241)(v122, v268);
              (*v230)(v260, v17);
              v156(v267, v157);
            }
          }

          else
          {
            (*v241)(a6, v268);
          }

          v63 = v261;
        }

        else
        {
          v86, v88, v89, v90, v91, v92, v93, v94;
          (*v241)(a6, v268);
        }

        sub_1000050A4(v63, &qword_100942120, &qword_1007A2598);
        v69 = v72;
        v71 = p_super;
        v64 = v238;
        v68 = v237;
        v67 = v246;
      }

      while (1)
      {
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v72 >= v68)
        {

          a2, v158, v159, v160, v161, v162, v163, v164;
          v17 = v229;
          a6 = v245;
          v63 = v250;
          a2 = v71;
          goto LABEL_34;
        }

        v67 = *(v64 + 8 * v72);
        ++v69;
        if (v67)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v62 = v48;
      v63 = v250;
LABEL_34:
      swift_beginAccess();
      v165 = a6[2].isa;
      v67 = v251;
      if (!(v165 >> 62))
      {
        v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v167 = &a2->super;
        if (!v166)
        {
          goto LABEL_41;
        }

LABEL_36:
        swift_beginAccess();
        v168 = a6[2].isa;
        v169 = objc_allocWithZone(REMMemberships);
        sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);

        v170 = Array._bridgeToObjectiveC()().super.isa;
        v168, v171, v172, v173, v174, v175, v176, v177;
        v178 = [v169 initWithMemberships:v170];

        v179 = v257;
        swift_beginAccess();
        v180 = *(v179 + 16);
        if (v180)
        {
          v181 = [v178 mergingWith:v180 mergePolicy:0];

          v178 = v181;
        }

        sub_10032D8D4(v178, 1, sub_10043A70C);
        v63 = v250;
        if (v17)
        {

LABEL_53:
          goto LABEL_54;
        }

        a6 = v245;
LABEL_41:
        swift_beginAccess();
        v182 = v63[2].isa;
        if (*(v182 + 16))
        {
          swift_beginAccess();
          v183 = *(a9 + 16);
          v184 = objc_allocWithZone(REMTextMemberships);
          sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
          if (v183)
          {
            v185 = v183;

            v186 = Dictionary._bridgeToObjectiveC()().super.isa;
            v182, v187, v188, v189, v190, v191, v192, v193;
            v194 = [v184 initWithMemberships:v186];

            v195 = [(objc_class *)v185 mergingWith:v194];
          }

          else
          {

            v185 = Dictionary._bridgeToObjectiveC()().super.isa;
            v182, v196, v197, v198, v199, v200, v201, v202;
            v195 = [v184 initWithMemberships:v185];
          }

          v203 = v195;
          sub_10032DB64(v195, 1);
          a6 = v245;
          if (v17)
          {

            return;
          }
        }

        else if (!v166)
        {
LABEL_51:
          if ([v167 hasChanges])
          {
            swift_beginAccess();
            v204 = a6[2].isa;
            v205 = v167;

            a11(v205, v204, a10, v205);
            v204, v206, v207, v208, v209, v210, v211, v212;

            return;
          }

          goto LABEL_53;
        }

        [v67 updateChangeCount];
        goto LABEL_51;
      }
    }

    v166 = _CocoaArrayWrapper.endIndex.getter();
    v167 = &a2->super;
    if (!v166)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }
}

void sub_10032D8D4(void *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  if (a1)
  {
    sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
    v8 = a1;
    v9 = REMChecksumRepresentable.rem_checksum.getter();
    if (v4)
    {
LABEL_3:

      return;
    }

    v14 = v10;
    v63 = v9;
    v15 = [v5 membershipsOfRemindersInSectionsChecksum];
    if (!v15)
    {
LABEL_15:
      v43 = REMJSONRepresentable.toJSONData()();
      v51 = a2 & 1;
      v52 = v43;
      v54 = v53;
      a3(v63, v14, v51);
      v14, v55, v56, v57, v58, v59, v60, v61;
      sub_100029344(v52, v54);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v52, v54);
      [v5 setMembershipsOfRemindersInSectionsAsData:isa];

      sub_10001BBA0(v52, v54);
      goto LABEL_3;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v63 != v17 || v14 != v19)
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v19, v29, v30, v31, v32, v33, v34, v35;
      if (v28)
      {
        v14, v36, v37, v38, v39, v40, v41, v42;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v14, v20, v21, v22, v23, v24, v25, v26;

    v19, v44, v45, v46, v47, v48, v49, v50;
  }

  else
  {
    v11 = [v3 membershipsOfRemindersInSectionsChecksum];
    if (v11)
    {

      [v3 setMembershipsOfRemindersInSectionsChecksum:0];
      if (a2)
      {
        v12 = [v3 createResolutionTokenMapIfNecessary];
        v13 = String._bridgeToObjectiveC()();
        [v12 updateForKey:v13];
      }
    }

    [v5 setMembershipsOfRemindersInSectionsAsData:0];
  }
}

void sub_10032DB64(void *a1, char a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
    v7 = a1;
    v8 = REMChecksumRepresentable.rem_checksum.getter();
    if (v3)
    {
LABEL_3:

      return;
    }

    v13 = v9;
    v62 = v8;
    v14 = [v4 autoCategorizationLocalCorrectionsChecksum];
    if (!v14)
    {
LABEL_15:
      v42 = REMJSONRepresentable.toJSONData()();
      v50 = a2 & 1;
      v51 = v42;
      v53 = v52;
      sub_10047D104(v62, v13, v50);
      v13, v54, v55, v56, v57, v58, v59, v60;
      sub_100029344(v51, v53);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v51, v53);
      [v4 setAutoCategorizationLocalCorrectionsAsData:isa];

      sub_10001BBA0(v51, v53);
      goto LABEL_3;
    }

    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v62 != v16 || v13 != v18)
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18, v28, v29, v30, v31, v32, v33, v34;
      if (v27)
      {
        v13, v35, v36, v37, v38, v39, v40, v41;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v13, v19, v20, v21, v22, v23, v24, v25;

    v18, v43, v44, v45, v46, v47, v48, v49;
  }

  else
  {
    v10 = [v2 autoCategorizationLocalCorrectionsChecksum];
    if (v10)
    {

      [v2 setAutoCategorizationLocalCorrectionsChecksum:0];
      if (a2)
      {
        v11 = [v2 createResolutionTokenMapIfNecessary];
        v12 = String._bridgeToObjectiveC()();
        [v11 updateForKey:v12];
      }
    }

    [v4 setAutoCategorizationLocalCorrectionsAsData:0];
  }
}

uint64_t sub_10032DDEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    result = sub_10031EC48(a2);
    if (v6)
    {
      if (*(a1 + 16))
      {
        v13 = v6;
        sub_100005F4C(result, v6);
        v4 = v14;
        v13, v14, v15, v16, v17, v18, v19, v20;
      }

      else
      {
        v6, v6, v7, v8, v9, v10, v11, v12;
        v4 = 0;
      }

      return v4 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      v4 = 1;
      return v4 & 1;
    }

    return sub_100333EE8(a1, a2);
  }

  return result;
}

uint64_t sub_10032DE90(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10032DFB8(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_10032E05C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_10032E104(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_1002F1430();
    Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v27 = v17;
        v18 = a1(&v27);

        if (v4)
        {
          v19 = v21;
          goto LABEL_24;
        }

        v5 = v21;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        swift_dynamicCast();
        v17 = v27;
        v15 = v8;
        v16 = v9;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v19 = v21;
LABEL_24:
      sub_10001B860(v19);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_10001B860(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_10032E350()
{
  result = [objc_opt_self() intelligentGrocery];
  qword_100941FB0 = result;
  return result;
}

uint64_t sub_10032E38C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100942158, &qword_1007A2638);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v12[-v9];
  sub_10000F61C(a1, a1[3]);
  sub_1003373C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[15] = 0;
  sub_1000F5104(&qword_10093F598, &qword_1007A2640);
  sub_100337628(&qword_100942168, &qword_100942170, &protocol conformance descriptor for REMObjectID_Codable, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_10032E578()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_10032E5B4(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v12 = 0x80000001007F5240;
  if (a1 == 0xD000000000000011 && 0x80000001007F5240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001007F51A0 == a2)
  {
    a2, 0x80000001007F51A0, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_10032E698(uint64_t a1)
{
  v2 = sub_1003373C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032E6D4(uint64_t a1)
{
  v2 = sub_1003373C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032E710@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100337418(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_10032E760(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10032E90C, 0, 0);
}

uint64_t sub_10032E90C(uint64_t a1)
{
  v48 = v1;
  static os_signpost_type_t.begin.getter();
  if (qword_100935ED0 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 256);
  v2 = *(v1 + 264);
  v4 = *(v1 + 248);
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v2, v4);
  *(v1 + 272) = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v1 + 176);
    v7 = *(v1 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v9 = 136446722;
    *(v1 + 152) = v7;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v14 = sub_10000668C(v11, v12, &v47);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v22 = *(v8 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID);
    *(v9 + 14) = v22;
    *v10 = v22;
    *(v9 + 22) = 2082;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v23 = v22;
    v24 = Array.description.getter();
    v26 = v25;
    v27 = sub_10000668C(v24, v25, &v47);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v9 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: Start execution {listObjectID: %{public}@, reminderIDs: %{public}s}", v9, 0x20u);
    sub_1000050A4(v10, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  v35 = *(v1 + 216);
  v36 = *(v1 + 200);
  v38 = *(v1 + 168);
  v37 = *(v1 + 176);
  Date.init()();
  v39 = *(v37 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID);
  *(v1 + 280) = v39;
  v40 = swift_allocObject();
  *(v1 + 288) = v40;
  *(v40 + 16) = v39;
  *(v40 + 24) = v38;
  *(v1 + 76) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v41 = *(v36 + 104);
  *(v1 + 296) = v41;
  *(v1 + 304) = (v36 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v41(v35);
  v42 = v39;
  v43 = v38;
  v44 = swift_task_alloc();
  *(v1 + 312) = v44;
  *v44 = v1;
  v44[1] = sub_10032ECBC;
  v45 = *(v1 + 216);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 80, v45, sub_10033245C, v40, &_s9UtilitiesO40REMCDListThreadSafePartialRepresentationVN);
}

uint64_t sub_10032ECBC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v2[40] = v0;

  v6 = *(v4 + 8);
  v2[41] = v6;
  v2[42] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  if (v0)
  {
    v7 = sub_10032F224;
  }

  else
  {
    v7 = sub_10032EE5C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10032EE5C()
{
  v48 = v0;
  v1 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v1;
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 57) = *(v0 + 121);
  if (*(v0 + 49))
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 76);
    v4 = *(v0 + 208);
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);
    v7 = *(*(v0 + 176) + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs);
    v8 = swift_allocObject();
    *(v0 + 344) = v8;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = v7;
    *(v8 + 40) = v6;
    v2(v4, v3, v5);
    v9 = v6;

    v10 = swift_task_alloc();
    *(v0 + 352) = v10;
    v11 = sub_1000F5104(&qword_1009420F0, &qword_1007A24F0);
    *v10 = v0;
    v10[1] = sub_10032F2EC;
    v12 = *(v0 + 208);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 160, v12, sub_1003324CC, v8, v11);
  }

  else
  {

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 280);
      v16 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v17 = 136446722;
      *(v0 + 144) = v16;
      swift_getMetatypeMetadata();
      v19 = String.init<A>(describing:)();
      v21 = v20;
      v22 = sub_10000668C(v19, v20, &v47);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      *(v17 + 14) = v15;
      *v18 = v15;
      *(v17 + 22) = 2082;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v30 = v15;
      v31 = Array.description.getter();
      v33 = v32;
      v34 = sub_10000668C(v31, v32, &v47);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v17 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: Skipped auto-categorizing reminders because list should no longer categorize grocery items {listObjectID: %{public}@, reminderIDs: %{public}s}", v17, 0x20u);
      sub_1000050A4(v18, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    sub_100332478(v0 + 16);
    v43 = *(v0 + 232);
    v42 = *(v0 + 240);
    v44 = *(v0 + 224);
    sub_10032FC34(*(v0 + 176), v42, *(v0 + 184));
    (*(v43 + 8))(v42, v44);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_10032F224()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_10032FC34(v0[22], v1, v0[23]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10032F2EC()
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 192);
  *(*v1 + 360) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_10032F61C;
  }

  else
  {
    v5 = sub_10032F488;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10032F488(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8[20];
  v8[46] = v9;
  if (*(v9 + 16))
  {
    v10 = v8[22];
    v11 = *(v10 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_isListCategorization);
    v12 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_queuedAt;
    v13 = swift_task_alloc();
    v8[47] = v13;
    *v13 = v8;
    v13[1] = sub_10032F6EC;
    v14 = v8[21];

    return sub_10031F1B8(v9, (v8 + 2), v11, v10 + v12, v14);
  }

  else
  {
    v9, a2, a3, a4, a5, a6, a7, a8;
    sub_100332478((v8 + 2));
    v17 = v8[29];
    v16 = v8[30];
    v18 = v8[28];
    sub_10032FC34(v8[22], v16, v8[23]);
    (*(v17 + 8))(v16, v18);

    v19 = v8[1];

    return v19();
  }
}

uint64_t sub_10032F61C()
{
  sub_100332478((v0 + 2));
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_10032FC34(v0[22], v1, v0[23]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10032F6EC()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v10 = sub_10032FA8C;
  }

  else
  {
    *(v2 + 368), v3, v4, v5, v6, v7, v8, v9;
    v10 = sub_10032F808;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10032F808()
{
  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_10032F8B0;
  v2 = v0[35];
  v3 = v0[21];

  return sub_10012AE18(v2, v3);
}

uint64_t sub_10032F8B0()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_10032FB64;
  }

  else
  {
    v2 = sub_10032F9C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032F9C4()
{
  sub_100332478((v0 + 2));
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_10032FC34(v0[22], v1, v0[23]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10032FA8C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 368), a2, a3, a4, a5, a6, a7, a8;
  sub_100332478(v8 + 16);
  v10 = *(v8 + 232);
  v9 = *(v8 + 240);
  v11 = *(v8 + 224);
  sub_10032FC34(*(v8 + 176), v9, *(v8 + 184));
  (*(v10 + 8))(v9, v11);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_10032FB64()
{
  sub_100332478((v0 + 2));
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_10032FC34(v0[22], v1, v0[23]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10032FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v53 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v15, a2, v10, v13);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v52 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v50 = v17;
    v21 = v20;
    v51 = swift_slowAlloc();
    v54[0] = v51;
    v54[1] = a3;
    *v19 = 136446978;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = sub_10000668C(v22, v23, v54);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v19 + 4) = v25;
    *(v19 + 12) = 2114;
    v33 = *(a1 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID);
    *(v19 + 14) = v33;
    *v21 = v33;
    *(v19 + 22) = 2082;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v34 = v33;
    v35 = Array.description.getter();
    v37 = v36;
    v38 = sub_10000668C(v35, v36, v54);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v19 + 24) = v38;
    *(v19 + 32) = 2050;
    Date.rem_elapsedInMilliseconds.getter();
    v47 = v46;
    (*(v11 + 8))(v15, v10);
    *(v19 + 34) = v47;
    _os_log_impl(&_mh_execute_header, v16, v50, "%{public}s: Finished execution {listObjectID: %{public}@, reminderIDs: %{public}s, elapsedSeconds: %{public}f}", v19, 0x2Au);
    sub_1000050A4(v21, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v6 = v52;
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  static os_signpost_type_t.end.getter();
  if (qword_100935ED0 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v53 + 8))(v9, v6);
}

_TtC7remindd19RDXPCStorePerformer *sub_100330038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v56 - v12;
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 56))
  {
    v56[1] = a2;
    v57 = v2;
    static Locale.current.getter();
    v19 = Locale.identifier.getter();
    v21 = v20;
    (*(v15 + 8))(v18, v14);
    v30 = sub_100365788(0, 1, 1, &_swiftEmptyArrayStorage, v22, v23, v24, v25);
    v32 = *v30->clientIdentity;
    v31 = *&v30->clientIdentity[8];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_100365788((v31 > 1), v32 + 1, 1, v30, v26, v27, v28, v29);
    }

    *v30->clientIdentity = v32 + 1;
    v33 = v30 + 16 * v32;
    *(v33 + 4) = v19;
    *(v33 + 5) = v21;
    v3 = v57;
  }

  else
  {
    v30 = &_swiftEmptyArrayStorage;
  }

  type metadata accessor for REMGroceryDataView();
  v34 = static REMGroceryDataView.fetchSecondaryGroceryLocale(store:modelBaseLocaleConversion:)();
  if (v3)
  {
    v30, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    v42 = v34;
    v43 = [v34 locale];

    if (v43)
    {
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    (*(v15 + 56))(v9, v44, 1, v14);
    sub_100031B58(v9, v13, &unk_10093F420, &unk_100797AE0);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1000050A4(v13, &unk_10093F420, &unk_100797AE0);
    }

    else
    {
      v45 = Locale.identifier.getter();
      v47 = v46;
      (*(v15 + 8))(v13, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100365788(0, *v30->clientIdentity + 1, 1, v30, v48, v49, v50, v51);
      }

      v53 = *v30->clientIdentity;
      v52 = *&v30->clientIdentity[8];
      if (v53 >= v52 >> 1)
      {
        v30 = sub_100365788((v52 > 1), v53 + 1, 1, v30, v48, v49, v50, v51);
      }

      *v30->clientIdentity = v53 + 1;
      v54 = v30 + 16 * v53;
      *(v54 + 4) = v45;
      *(v54 + 5) = v47;
    }
  }

  return v30;
}

uint64_t sub_1003303B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v10;
  v8[15] = v11;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  return _swift_task_switch(sub_1003303EC, 0, 0);
}

uint64_t sub_1003303EC()
{
  *(v0 + 24) = *(v0 + 72);
  *(v0 + 32) = _swiftEmptyDictionarySingleton;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  v3 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  v4 = sub_1000F5104(&qword_100942118, &qword_1007A2570);
  v5 = sub_10000CB48(&unk_100945250, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  *v2 = v0;
  v2[1] = sub_100330558;

  return Sequence.asyncReduce<A>(_:_:)(v0 + 16, v0 + 32, &unk_1007A2560, v1, v3, v4, v5);
}

uint64_t sub_100330558()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100330B44;
  }

  else
  {
    v2 = sub_100330688;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100330688(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v41 = v8;
  v9 = v8[2];
  v8[19] = v9;
  if (*(v9 + 16) && (v10 = sub_100005F4C(v8[12], v8[13]), (a2 & 1) != 0))
  {
    v12 = v8[14];
    v11 = v8[15];
    v13 = v8[9];
    v14 = (*(*(v9 + 56) + 8 * v10) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
    v16 = *v14;
    v15 = v14[1];
    v8[20] = v15;
    v8[6] = v11;

    v17 = sub_10038E004(&_swiftEmptyArrayStorage);
    v8[21] = v17;
    v8[7] = v17;
    v18 = swift_task_alloc();
    v8[22] = v18;
    v18[2] = v13;
    v18[3] = v12;
    v18[4] = v9;
    v18[5] = v16;
    v18[6] = v15;
    v19 = swift_task_alloc();
    v8[23] = v19;
    v20 = sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    v21 = sub_1000F5104(&unk_100945230, &qword_1007A2590);
    v22 = sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70, &protocol conformance descriptor for Set<A>);
    *v19 = v8;
    v19[1] = sub_10033098C;

    return Sequence.asyncReduce<A>(_:_:)(v8 + 5, v8 + 7, &unk_1007A2580, v18, v20, v21, v22);
  }

  else
  {
    v23 = v8[13];
    v9, a2, a3, a4, a5, a6, a7, a8;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v23, v26, v27, v28, v29, v30, v31, v32;
    if (os_log_type_enabled(v24, v25))
    {
      v34 = v8[12];
      v33 = v8[13];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_10000668C(v34, v33, &v40);
      _os_log_impl(&_mh_execute_header, v24, v25, "RDGroceryOperationCategorizeRemindersInList: cannot find primary grocery classifier for %s", v35, 0xCu);
      sub_10000607C(v36);
    }

    v37 = v8[8];
    *v37 = sub_10038E004(&_swiftEmptyArrayStorage);
    v38 = v8[1];

    return v38();
  }
}

uint64_t sub_10033098C()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 192) = v0;

  v2, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v3, v19, v20, v21, v22, v23, v24, v25;

  if (v0)
  {
    v26 = sub_100330B5C;
  }

  else
  {
    v26 = sub_100330B20;
  }

  return _swift_task_switch(v26, 0, 0);
}

uint64_t sub_100330B74(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  v6 = *a2;
  v4[2] = a1;
  v4[3] = v6;
  v7 = *a3;
  v8 = a3[1];
  v4[4] = *a3;
  v4[5] = v8;

  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100330C94;

  return v11(v7, v8);
}

uint64_t sub_100330C94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v12 = *(v4 + 40);
    *(v4 + 24), v5, v6, v7, v8, v9, v10, v11;
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = sub_100330E7C;
  }

  else
  {
    *(v4 + 64) = a1;
    v20 = sub_100330DD0;
  }

  return _swift_task_switch(v20, 0, 0);
}

uint64_t sub_100330DD0()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002C8FCC(v1, v3, v2, isUniquelyReferenced_nonNull_native);
  v2, v7, v8, v9, v10, v11, v12, v13;
  *v5 = v4;
  v14 = v0[1];

  return v14();
}

uint64_t sub_100330E94(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a1;
  v8[4] = a4;
  v9 = *a3;
  v10 = a3[1];
  v8[9] = *a2;
  v8[10] = v9;
  v8[11] = v10;
  return _swift_task_switch(sub_100330ECC, 0, 0);
}

void sub_100330ECC()
{
  sub_100124864(*(v0 + 80), *(v0 + 88), *(v0 + 32), (*(v0 + 40) + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_classifierConfiguration), *(v0 + 48));
  *(v0 + 96) = v1;
  v9 = *(v1 + 16);
  *(v0 + 104) = v9;
  if (v9)
  {
    *(v0 + 112) = 0;
    if (*(v1 + 16))
    {
      v10 = *(v1 + 40);
      *(v0 + 120) = v10;
      *(v0 + 16) = *(v1 + 32);
      v10;
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      *(v0 + 128) = v12;
      v14 = swift_task_alloc();
      *(v0 + 136) = v14;
      *(v0 + 224) = 1;
      *v14 = v0;
      v14[1] = sub_1003310D4;
      v16 = *(v0 + 80);
      v15 = *(v0 + 88);

      REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v16, v15, 0x100000000, 1, 0, v11, v13, 0xD000000000000019);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v1, v2, v3, v4, v5, v6, v7, v8;
    **(v0 + 24) = *(v0 + 72);
    v17 = *(v0 + 8);

    v17();
  }
}

uint64_t sub_1003310D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v12 = *(v3 + 128);
  if (v1)
  {
    v13 = *(v4 + 120);
    *(v4 + 208) = v1;
    *(v4 + 216) = v13;
    *(v4 + 96), v5, v6, v7, v8, v9, v10, v11;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v21 = sub_100331B0C;
  }

  else
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v21 = sub_10033122C;
  }

  return _swift_task_switch(v21, 0, 0);
}

void sub_10033122C()
{
  v1 = *(v0 + 144);
  if (!*(v1 + 16))
  {
    v26 = *(v0 + 112);
    v27 = *(v0 + 104);

    v1, v28, v29, v30, v31, v32, v33, v34;
    if (v26 + 1 == v27)
    {
      *(v0 + 96), v35, v36, v37, v38, v39, v40, v41;
LABEL_7:
      **(v0 + 24) = *(v0 + 72);

      goto LABEL_16;
    }

    v60 = *(v0 + 112) + 1;
    *(v0 + 160) = v60;
    v61 = *(v0 + 96);
    if (v60 < *(v61 + 16))
    {
      v62 = v61 + 16 * v60;
      v63 = *(v62 + 40);
      *(v0 + 168) = v63;
      *(v0 + 16) = *(v62 + 32);
      v63;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      *(v0 + 176) = v65;
      v67 = swift_task_alloc();
      *(v0 + 184) = v67;
      *(v0 + 224) = 1;
      *v67 = v0;
      v68 = sub_1003315F0;
      goto LABEL_21;
    }

LABEL_24:
    __break(1u);
    return;
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112) + 1;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  v1, v10, v11, v12, v13, v14, v15, v16;
  v18 = *&v3[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale];
  v17 = *&v3[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8];

  if (v5 == v4)
  {
    *(v0 + 96), v19, v20, v21, v22, v23, v24, v25;
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_100124E18(v6, v7, v8, v18, v17, *(v0 + 56), *(v0 + 64), v9);
    if (v2)
    {
      v8, v45, v46, v47, v48, v49, v50, v51;
      v17, v52, v53, v54, v55, v56, v57, v58;
      v59 = *(v0 + 8);
LABEL_17:

      v59();
      return;
    }

    v69 = v45;
    v70 = v46;
    v72 = *(v0 + 80);
    v71 = *(v0 + 88);
    v73 = *(v0 + 72);
    v74 = *(v0 + 24);
    v17, v45, v46, v47, v48, v49, v50, v51;
    v8, v75, v76, v77, v78, v79, v80, v81;
    *v74 = v73;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C72CC(v69, v70, v72, v71, isUniquelyReferenced_nonNull_native);
    v71, v83, v84, v85, v86, v87, v88, v89;
    *v74 = v73;
LABEL_16:
    v59 = *(v0 + 8);
    goto LABEL_17;
  }

  *(v0 + 112) = v5;
  v42 = *(v0 + 96);
  if (v5 >= *(v42 + 16))
  {
    goto LABEL_24;
  }

  v43 = v42 + 16 * v5;
  v44 = *(v43 + 40);
  *(v0 + 120) = v44;
  if (v8)
  {
    v42, v19, v20, v21, v22, v23, v24, v25;
    goto LABEL_11;
  }

  *(v0 + 16) = *(v43 + 32);
  v44;
  v64 = dispatch thunk of CustomStringConvertible.description.getter();
  v66 = v90;
  *(v0 + 128) = v90;
  v67 = swift_task_alloc();
  *(v0 + 136) = v67;
  *(v0 + 224) = 1;
  *v67 = v0;
  v68 = sub_1003310D4;
LABEL_21:
  v67[1] = v68;
  v92 = *(v0 + 80);
  v91 = *(v0 + 88);

  REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v92, v91, 0x100000000, 1, 0, v64, v66, 0xD000000000000019);
}

uint64_t sub_1003315F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v12 = *(v3 + 176);
  if (v1)
  {
    v13 = *(v4 + 168);
    *(v4 + 208) = v1;
    *(v4 + 216) = v13;
    *(v4 + 96), v5, v6, v7, v8, v9, v10, v11;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v21 = sub_100331B0C;
  }

  else
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v21 = sub_100331748;
  }

  return _swift_task_switch(v21, 0, 0);
}

void sub_100331748()
{
  v1 = *(v0 + 192);
  if (!*(v1 + 16))
  {
    v26 = *(v0 + 160);
    v27 = *(v0 + 104);

    v1, v28, v29, v30, v31, v32, v33, v34;
    if (v26 + 1 == v27)
    {
      *(v0 + 96), v35, v36, v37, v38, v39, v40, v41;
LABEL_7:
      **(v0 + 24) = *(v0 + 72);

      goto LABEL_16;
    }

    v60 = *(v0 + 160) + 1;
    *(v0 + 160) = v60;
    v61 = *(v0 + 96);
    if (v60 < *(v61 + 16))
    {
      v62 = v61 + 16 * v60;
      v63 = *(v62 + 40);
      *(v0 + 168) = v63;
      *(v0 + 16) = *(v62 + 32);
      v63;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      *(v0 + 176) = v65;
      v67 = swift_task_alloc();
      *(v0 + 184) = v67;
      *(v0 + 224) = 1;
      *v67 = v0;
      v68 = sub_1003315F0;
      goto LABEL_21;
    }

LABEL_24:
    __break(1u);
    return;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160) + 1;
  v5 = *(v0 + 104);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  v1, v10, v11, v12, v13, v14, v15, v16;
  v18 = *&v3[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale];
  v17 = *&v3[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8];

  if (v4 == v5)
  {
    *(v0 + 96), v19, v20, v21, v22, v23, v24, v25;
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_100124E18(v6, v7, v8, v18, v17, *(v0 + 56), *(v0 + 64), v9);
    if (v2)
    {
      v8, v45, v46, v47, v48, v49, v50, v51;
      v17, v52, v53, v54, v55, v56, v57, v58;
      v59 = *(v0 + 8);
LABEL_17:

      v59();
      return;
    }

    v69 = v45;
    v70 = v46;
    v72 = *(v0 + 80);
    v71 = *(v0 + 88);
    v73 = *(v0 + 72);
    v74 = *(v0 + 24);
    v17, v45, v46, v47, v48, v49, v50, v51;
    v8, v75, v76, v77, v78, v79, v80, v81;
    *v74 = v73;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C72CC(v69, v70, v72, v71, isUniquelyReferenced_nonNull_native);
    v71, v83, v84, v85, v86, v87, v88, v89;
    *v74 = v73;
LABEL_16:
    v59 = *(v0 + 8);
    goto LABEL_17;
  }

  *(v0 + 112) = v4;
  v42 = *(v0 + 96);
  if (v4 >= *(v42 + 16))
  {
    goto LABEL_24;
  }

  v43 = v42 + 16 * v4;
  v44 = *(v43 + 40);
  *(v0 + 120) = v44;
  if (v8)
  {
    v42, v19, v20, v21, v22, v23, v24, v25;
    goto LABEL_11;
  }

  *(v0 + 16) = *(v43 + 32);
  v44;
  v64 = dispatch thunk of CustomStringConvertible.description.getter();
  v66 = v90;
  *(v0 + 128) = v90;
  v67 = swift_task_alloc();
  *(v0 + 136) = v67;
  *(v0 + 224) = 1;
  *v67 = v0;
  v68 = sub_1003310D4;
LABEL_21:
  v67[1] = v68;
  v92 = *(v0 + 80);
  v91 = *(v0 + 88);

  REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v92, v91, 0x100000000, 1, 0, v64, v66, 0xD000000000000019);
}

uint64_t sub_100331B0C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100331B70(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v30 - v10;
  sub_100010364(a3, v30 - v10, &qword_100936FA8, &qword_100791B70);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000050A4(v11, &qword_100936FA8, &qword_100791B70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      sub_1000F5104(&qword_100942110, &unk_1007A2548);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v31[0] = 0;
        v31[1] = 0;
        v20 = v31;
        v31[2] = v16;
        v31[3] = v18;
      }

      v30[1] = 7;
      v30[2] = v20;
      v30[3] = v19;
      v21 = swift_task_create();

      sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
      a2, v22, v23, v24, v25, v26, v27, v28;
      return v21;
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

  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
  sub_1000F5104(&qword_100942110, &unk_1007A2548);
  if (v18 | v16)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v16;
    v31[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100331E48(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v31 - v11;
  sub_100010364(a3, v31 - v11, &qword_100936FA8, &qword_100791B70);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000050A4(v12, &qword_100936FA8, &qword_100791B70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v31[0] = a2;
      v20 = (String.utf8CString.getter() + 32);

      if (v19 | v17)
      {
        v32[0] = 0;
        v32[1] = 0;
        v21 = v32;
        v32[2] = v17;
        v32[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v31[1] = 7;
      v31[2] = v21;
      v31[3] = v20;
      v22 = swift_task_create();

      sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
      v31[0], v23, v24, v25, v26, v27, v28, v29;

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
  if (v19 | v17)
  {
    v32[4] = 0;
    v32[5] = 0;
    v32[6] = v17;
    v32[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1003320F4()
{
  v1 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  *(v0 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs), v3, v4, v5, v6, v7, v8, v9;

  v10 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_queuedAt;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  sub_10000607C((v0 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_classifierConfiguration));
  return v0;
}

uint64_t sub_1003321F8()
{
  sub_1003320F4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDGroceryOperationCategorizeRemindersInList(uint64_t a1)
{
  result = qword_100942020;
  if (!qword_100942020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003322A4(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1003323C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FCBFC;

  return sub_10032E760(a1);
}

void sub_100332578()
{
  v1 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for Date() - 8);
  sub_10032C528(*(v0 + 16), *(v0 + 24), (v0 + 32), *(v0 + 96), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((*(v5 + 80) + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80)), sub_100195574, sub_100336074, &OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog, type metadata accessor for RDGroceryOperationCategorizeRemindersInList, &qword_100942108, &unk_1007A2520);
}

void sub_100332708(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_1003328B8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_100332A68(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v39 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = v16;
    do
    {
      v17 = v9;
      v18 = v40 * v11;
      v19 = v14;
      v20 = v15;
      v38(v8, *(a2 + 48) + v40 * v11, v4);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v39)
      {
        if (v22 >= v39 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v40 * a1;
          v27 = v25 + v18 + v40;
          v28 = v40 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v29 = v40 * a1 == v18;
            v9 = v17;
            if (!v29)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v30 = *(a2 + 56);
          v31 = (v30 + 32 * a1);
          v32 = (v30 + 32 * v11);
          if (a1 != v11 || v31 >= v32 + 2)
          {
            v33 = v32[1];
            *v31 = *v32;
            v31[1] = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v39 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_100332D1C(uint64_t result, uint64_t a2)
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
      sub_10001B270(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10001B2CC(v25);
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

void sub_100332EC0(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v32 = (v13 + 1) & v12;
    v33 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v30 = (v15 - 8);
    v31 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v31(v8, *(a2 + 48) + v17 * v11, v4);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v30)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v32)
      {
        if (v22 >= v32 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v25 < v18 || *(a2 + 56) + v25 >= (*(a2 + 56) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v26 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v32 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v33;
    }

    while (((*(v33 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void sub_1003331C0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_100333370(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v18 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v3);
      v21 = (v19 + 16 * v6);
      if (v3 != v6 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(type metadata accessor for Date() - 8) + 72);
      v24 = v23 * v3;
      v25 = v22 + v23 * v3;
      v26 = v23 * v6;
      v27 = v22 + v23 * v6 + v23;
      if (v24 < v26 || v25 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v24 == v26)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

void sub_10033355C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();
      v11, v13, v14, v15, v16, v17, v18, v19;
      v20 = v12 & v7;
      if (v3 >= v8)
      {
        if (v20 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v20 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v20)
      {
LABEL_10:
        v21 = *(a2 + 48);
        v22 = (v21 + 16 * v3);
        v23 = (v21 + 16 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
        }

        v24 = *(a2 + 56);
        v25 = v24 + 40 * v3;
        v26 = (v24 + 40 * v6);
        if (v3 != v6 || v25 >= v26 + 40)
        {
          v9 = *v26;
          v10 = v26[1];
          *(v25 + 32) = *(v26 + 4);
          *v25 = v9;
          *(v25 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void sub_100333718(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1003338A4(int64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for UUID();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39, v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v40 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v39;
    v6 = v40;
    v14 = v11;
    v37 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v35 = a2 + 64;
    v36 = v16;
    v17 = *(v15 + 56);
    v34 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v38;
      v21 = v14;
      v22 = v15;
      v36(v38, *(v6 + 48) + v17 * v10, v13);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v34)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v37)
      {
        if (v24 >= v37 && a1 >= v24)
        {
LABEL_15:
          v6 = v40;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v40 + 48) + v18 * a1 >= (*(v40 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v40;
            v17 = v18;
            v14 = v21;
            v8 = v35;
          }

          else
          {
            v8 = v35;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v40;
              v17 = v18;
              v14 = v21;
            }
          }

          v27 = *(v6 + 56);
          v28 = (v27 + 8 * a1);
          v29 = (v27 + 8 * v10);
          if (a1 != v10 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v37 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v35;
      v17 = v18;
      v6 = v40;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v6 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v32;
    ++*(v6 + 36);
  }
}

void sub_100333BC4(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41, v5);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = (v12 + 1) & v11;
    v39 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v39(v40, *(v6 + 48) + v17 * v10, v13);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v27 = *(v6 + 56);
          v28 = v27 + 40 * a1;
          v29 = (v27 + 40 * v10);
          if (a1 != v10 || v28 >= v29 + 40)
          {
            v30 = *v29;
            v31 = v29[1];
            *(v28 + 32) = *(v29 + 4);
            *v28 = v30;
            *(v28 + 16) = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

uint64_t sub_100333EE8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  v7 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v7 = v12, (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe, v7);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_100335E34(v9, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_100336090(v13, &v17);
    v14 = v17;

    v10 = v14;
  }

  return v10 & 1;
}

uint64_t sub_100334068(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1003340B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100334108(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100334204, 0, 0);
}

uint64_t sub_100334204()
{
  v1 = v0[12];
  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
  }

  else
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    static Locale.current.getter();
    v2 = Locale.identifier.getter();
    v3 = v7;
    (*(v5 + 8))(v4, v6);
    v1 = v0[12];
  }

  v8 = v0[13];

  v9 = sub_100330038(v1, v8);
  v10 = (v0[13] + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_groceryClassifierProvider);
  v12 = *v10;
  v11 = v10[1];
  v13 = v9;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  v54 = inited;

  sub_100271EA8(v13);
  v15 = sub_1001E12E8(v54);
  v54, v16, v17, v18, v19, v20, v21, v22;
  v0[8] = v2;
  v0[9] = v3;
  v23 = swift_task_alloc();
  *(v23 + 16) = v0 + 8;
  v24 = sub_100040A74(sub_100040B40, v23, v15);

  if (v24)
  {
    v33 = v0[13];
    v32 = v0[14];
    v34 = v0[11];
    static TaskPriority.high.getter();
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v32, 0, 1, v35);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v15;
    v36[5] = v12;
    v36[6] = v11;
    v36[7] = v2;
    v36[8] = v3;
    v36[9] = v33;
    v36[10] = v34;

    v37 = sub_100331B70(0, 0, v32, &unk_1007A2540, v36);
    v0[18] = v37;
    v38 = swift_task_alloc();
    v0[19] = v38;
    v39 = sub_1000F5104(&qword_100942110, &unk_1007A2548);
    v40 = sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    *v38 = v0;
    v38[1] = sub_10033465C;

    return Task.value.getter(v0 + 10, v37, v39, v40, &protocol self-conformance witness table for Error);
  }

  else
  {
    v15, v25, v26, v27, v28, v29, v30, v31;
    v3, v41, v42, v43, v44, v45, v46, v47;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "RDGroceryOperationCategorizeRemindersInList: primary locale is not a grocery locale in this device", v50, 2u);
    }

    v51 = sub_10038E004(&_swiftEmptyArrayStorage);

    v52 = v0[1];

    return v52(v51);
  }
}

uint64_t sub_10033465C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100334808;
  }

  else
  {
    v2 = sub_100334790;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100334790()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100334808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100334878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003348C0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _TtC7remindd19RDXPCStorePerformer *a7)
{
  v134 = a1;
  v136 = a6;
  v137 = a7;
  v141 = a5;
  v142 = a2;
  v131 = a4;
  v8 = sub_1000F5104(&qword_100946C30, &qword_1007A2530);
  v139 = *(v8 - 8);
  v140 = v8;
  __chkstk_darwin(v8, v9);
  v138 = &v128 - v10;
  v11 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  v129 = *(v11 - 8);
  v130 = v11;
  __chkstk_darwin(v11, v12);
  v128 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v128 - v16;
  __chkstk_darwin(v18, v19);
  v21 = &v128 - v20;
  v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v29 = &v128 - v28;
  __chkstk_darwin(v30, v31);
  v33 = &v128 - v32;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34, v36);
  v132 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38, v39);
  v42 = &v128 - v41;
  if (!a3)
  {
    (*(v35 + 56))(v33, 1, 1, v34, v40);
LABEL_7:
    sub_1000050A4(v33, &unk_100939D90, "8\n\r");
    v45 = 0x6C6E6F6974636573;
    v135 = 0x6C6E6F6974636573;
    v46 = 0xEB00000000737365;
    goto LABEL_14;
  }

  v43 = [a3 groupIdentifier];
  if (v43)
  {
    v44 = v43;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v35 + 56))(v29, 0, 1, v34);
  }

  else
  {
    (*(v35 + 56))(v29, 1, 1, v34);
  }

  sub_100031B58(v29, v33, &unk_100939D90, "8\n\r");
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    goto LABEL_7;
  }

  v47 = v17;
  (*(v35 + 32))(v42, v33, v34);
  v48 = v131;
  v46 = 0xEB00000000737365;
  if (*(v131 + 16) && (v49 = sub_100363F20(v42), (v50 & 1) != 0))
  {
    sub_100193AB0(*(v48 + 56) + *(v129 + 72) * v49, v47);
    (*(v35 + 8))(v42, v34);
    sub_100193B14(v47, v21);
    v51 = &v21[*(v130 + 20)];
    v52 = *v51;
    v53 = v51[1];

    sub_10033529C(v21);
    if (v53)
    {
      v135 = v52;

      v45 = 0x6C6E6F6974636573;
      goto LABEL_15;
    }
  }

  else
  {
    (*(v35 + 8))(v42, v34);
  }

  v45 = 0x6C6E6F6974636573;
  v135 = 0x6C6E6F6974636573;
LABEL_14:
  v53 = 0xEB00000000737365;
LABEL_15:
  sub_100010364(v141, v25, &unk_100939D90, "8\n\r");
  v54 = (*(v35 + 48))(v25, 1, v34);
  v55 = v132;
  if (v54 == 1)
  {
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
LABEL_23:
    v64 = v137;
    v63 = v142;
    goto LABEL_24;
  }

  (*(v35 + 32))(v132, v25, v34);
  v56 = v131;
  if (!*(v131 + 16) || (v57 = sub_100363F20(v55), (v58 & 1) == 0))
  {
    (*(v35 + 8))(v55, v34);
    goto LABEL_23;
  }

  v59 = v128;
  sub_100193AB0(*(v56 + 56) + *(v129 + 72) * v57, v128);
  (*(v35 + 8))(v55, v34);
  v60 = (v59 + *(v130 + 20));
  v62 = *v60;
  v61 = v60[1];

  sub_10033529C(v59);
  v63 = v142;
  if (v61)
  {

    v45 = v62;
    v46 = v61;
  }

  v64 = v137;
LABEL_24:
  if (qword_100935E40 != -1)
  {
    swift_once();
  }

  v132 = qword_100974D28;
  v65 = *(&v133->super.isa + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID);
  (*(v139 + 104))(v138, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v140);
  if (qword_100935E38 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100006654(v66, qword_100940E70);

  v67 = v65;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  v64, v70, v71, v72, v73, v74, v75, v76;
  v46, v77, v78, v79, v80, v81, v82, v83;
  v53, v84, v85, v86, v87, v88, v89, v90;
  v63, v91, v92, v93, v94, v95, v96, v97;
  v98 = os_log_type_enabled(v68, v69);
  v141 = v45;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v133 = v46;
    v101 = v100;
    v131 = swift_slowAlloc();
    v143 = v131;
    *v99 = 136316162;
    v102 = v134;
    *(v99 + 4) = sub_10000668C(v134, v142, &v143);
    *(v99 + 12) = 2080;
    *(v99 + 14) = sub_10000668C(v135, v53, &v143);
    *(v99 + 22) = 2080;
    *(v99 + 24) = sub_10000668C(v141, v133, &v143);
    *(v99 + 32) = 2080;
    v103 = v53;
    v104 = v137;
    *(v99 + 34) = sub_10000668C(v136, v137, &v143);
    *(v99 + 42) = 2112;
    *(v99 + 44) = v67;
    *v101 = v67;
    v105 = v67;
    _os_log_impl(&_mh_execute_header, v68, v69, "RDGroceryCorrectionCache: Recording {%s: (from: %s, to: %s, locale: %s} in list: %@", v99, 0x34u);
    sub_1000050A4(v101, &unk_100938E70, &unk_100797230);
    v106 = v133;
    v63 = v142;

    swift_arrayDestroy();

    v107 = v141;
  }

  else
  {

    v103 = v53;
    v102 = v134;
    v108 = v46;
    v104 = v64;
    v106 = v108;
    v107 = v45;
  }

  v109 = swift_allocObject();
  v109[2] = v67;
  v109[3] = v102;
  v110 = v135;
  v109[4] = v63;
  v109[5] = v110;
  v109[6] = v103;
  v109[7] = v107;
  v109[8] = v106;
  v109[9] = v136;
  v109[10] = v104;
  v109[11] = v132;
  v109[12] = REMCDList.cleanUpAfterLocalObjectMerge();
  v109[13] = 0;

  v111 = v67;

  v112 = v138;
  dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

  (*(v139 + 8))(v112, v140);
  type metadata accessor for Analytics();
  static Analytics.postBiomeEventForCorrectedGroceryItem(item:originalCategory:destinationCategory:locale:)();
  v103, v113, v114, v115, v116, v117, v118, v119;
  v106, v120, v121, v122, v123, v124, v125, v126;
  return result;
}

uint64_t sub_10033529C(uint64_t a1)
{
  v2 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003352F8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FDA74;

  return sub_1003303B8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1003353EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000FDA74;

  return sub_100330B74(a1, a2, a3, v8);
}

uint64_t sub_1003354B0(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1000FCBFC;

  return sub_100330E94(a1, a2, a3, v8, v9, v10, v11, v12);
}

unint64_t sub_100335590(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v3 = v2;
  v120 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120, v6);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v119 = &v111 - v11;
  __chkstk_darwin(v12, v13);
  v127 = &v111 - v14;
  v135 = type metadata accessor for UUID();
  v117 = *(v135 - 8);
  __chkstk_darwin(v135, v15);
  v134 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v129 = &v111 - v19;
  __chkstk_darwin(v20, v21);
  v128 = &v111 - v22;
  __chkstk_darwin(v23, v24);
  v26 = &v111 - v25;
  if (!a1)
  {
    return sub_10038FD34(&_swiftEmptyArrayStorage);
  }

  v133 = a2;
  v124 = v8;
  v27 = qword_1009365A8;
  v28 = a1;
  if (v27 != -1)
  {
LABEL_44:
    swift_once();
  }

  type metadata accessor for REMCDListSection();
  v29 = sub_100597524();
  v30 = sub_100596AB8(a1, 1u);
  v31 = [objc_allocWithZone(NSFetchRequest) init];
  v32 = [swift_getObjCClassFromMetadata() entity];
  [v31 setEntity:v32];

  [v31 setAffectedStores:0];
  [v31 setPredicate:v30];

  v33 = sub_10003450C(v29);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v33, v35, v36, v37, v38, v39, v40, v41;
  [v31 setPropertiesToFetch:isa];

  [v31 setRelationshipKeyPathsForPrefetching:0];
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v42 = Array._bridgeToObjectiveC()().super.isa;
  [v31 setSortDescriptors:v42];

  v43 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v29, v51, v52, v53, v54, v55, v56, v57;
    return v28;
  }

  v29, v44, v45, v46, v47, v48, v49, v50;

  a1 = v43;
  if (v43 >> 62)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v58 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v28;
  v113 = 0;
  if (!v58)
  {
    v28 = _swiftEmptyDictionarySingleton;
LABEL_38:

    a1, v103, v104, v105, v106, v107, v108, v109;
    return v28;
  }

  v3 = v58;
  v59 = 0;
  v131 = v43 & 0xFFFFFFFFFFFFFF8;
  v132 = v43 & 0xC000000000000001;
  v130 = (v117 + 16);
  v133 = (v117 + 8);
  v116 = (v117 + 32);
  v28 = _swiftEmptyDictionarySingleton;
  v60 = &selRef_hack_willSaveHandled;
  v114 = v58;
  v123 = v26;
  v115 = v43;
  while (1)
  {
    if (v132)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v59 >= *(v131 + 16))
      {
        goto LABEL_41;
      }

      v61 = *(a1 + 8 * v59 + 32);
    }

    v62 = v61;
    v63 = (v59 + 1);
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v64 = [v61 v60[64]];
    if (!v64)
    {

      goto LABEL_11;
    }

    v65 = v64;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = &selRef_hack_willSaveHandled;
    v66 = [v62 identifier];
    if (!v66)
    {

      (*v133)(v26, v135);
      goto LABEL_11;
    }

    v67 = v128;
    v68 = v66;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = *v130;
    v126(v129, v67, v135);
    v69 = [v62 canonicalName];
    if (v69)
    {
      v70 = v69;
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v72;
      v122 = v71;
    }

    else
    {
      v121 = 0;
      v122 = 0;
    }

    v73 = [v62 displayName];
    v125 = (v59 + 1);
    if (v73)
    {
      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    v78 = *v133;
    v3 = v135;
    (*v133)(v128, v135);
    v79 = v119;
    (*v116)(v119, v129, v3);
    v80 = v120;
    v81 = &v79[*(v120 + 20)];
    v82 = v121;
    *v81 = v122;
    v81[1] = v82;
    v83 = &v79[*(v80 + 24)];
    *v83 = v75;
    v83[1] = v77;
    v84 = v79;
    a1 = v127;
    sub_100193B14(v84, v127);
    v26 = v134;
    v126(v134, v123, v3);
    sub_100193AB0(a1, v124);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v28;
    v86 = sub_100363F20(v26);
    v88 = v28[2];
    v89 = (v87 & 1) == 0;
    v90 = __OFADD__(v88, v89);
    v91 = v88 + v89;
    if (v90)
    {
      goto LABEL_42;
    }

    v92 = v87;
    if (v28[3] >= v91)
    {
      v26 = v123;
      v63 = v125;
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v136;
        if (v87)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v95 = v86;
        sub_1003759CC();
        v63 = v125;
        v86 = v95;
        v28 = v136;
        if (v92)
        {
LABEL_32:
          sub_1003360C8(v124, v28[7] + *(v118 + 72) * v86);

          v94 = v135;
          v78(v134, v135);
          sub_10033529C(v127);
          v78(v26, v94);
          a1 = v115;
          v3 = v114;
          v60 = &selRef_hack_willSaveHandled;
          goto LABEL_11;
        }
      }

      goto LABEL_35;
    }

    sub_10036ED20(v91, isUniquelyReferenced_nonNull_native);
    v86 = sub_100363F20(v134);
    v26 = v123;
    if ((v92 & 1) != (v93 & 1))
    {
      break;
    }

    v63 = v125;
    v28 = v136;
    if (v92)
    {
      goto LABEL_32;
    }

LABEL_35:
    v28[(v86 >> 6) + 8] |= 1 << v86;
    a1 = v86;
    v96 = v28[6] + *(v117 + 72) * v86;
    v97 = v134;
    v3 = v28;
    v98 = v26;
    v26 = v135;
    v126(v96, v134, v135);
    sub_100193B14(v124, v3[7] + *(v118 + 72) * a1);

    v78(v97, v26);
    sub_10033529C(v127);
    v99 = v98;
    v100 = v98;
    v28 = v3;
    v78(v100, v26);
    v101 = v3[2];
    v90 = __OFADD__(v101, 1);
    v102 = v101 + 1;
    if (v90)
    {
      goto LABEL_43;
    }

    v3[2] = v102;
    a1 = v115;
    v3 = v114;
    v60 = &selRef_hack_willSaveHandled;
    v26 = v99;
    v63 = v125;
LABEL_11:
    ++v59;
    if (v63 == v3)
    {
      goto LABEL_38;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100335E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  v40 = a3 + 56;

  v10 = 0;
  v11 = 0;
  v38 = v5;
  v39 = v3;
  v37 = v4;
  while (2)
  {
    v35 = v10;
    if (v8)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v13 >= v9)
      {
        goto LABEL_29;
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
    }

    while (!v8);
    v11 = v13;
    while (1)
    {
LABEL_13:
      while (1)
      {
        v14 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v15 = (*(v4 + 48) + ((v11 << 10) | (16 * v14)));
        v17 = *v15;
        v16 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v18 = Hasher._finalize()();
        v26 = -1 << *(v3 + 32);
        v27 = v3;
        v28 = v18 & ~v26;
        v29 = v28 >> 6;
        v30 = 1 << v28;
        if (((1 << v28) & *(v40 + 8 * (v28 >> 6))) != 0)
        {
          break;
        }

LABEL_25:
        v16, v19, v20, v21, v22, v23, v24, v25;
        v5 = v38;
        v3 = v39;
        if (!v8)
        {
          goto LABEL_9;
        }
      }

      v31 = (*(v27 + 48) + 16 * v28);
      v19 = v31[1];
      if (*v31 != v17 || v19 != v16)
      {
        v33 = ~v26;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = 1 << v28;
          if (((1 << v28) & *(v40 + 8 * (v28 >> 6))) == 0)
          {
            v4 = v37;
            goto LABEL_25;
          }

          v34 = (*(v39 + 48) + 16 * v28);
          v19 = v34[1];
          if (*v34 == v17 && v19 == v16)
          {
            break;
          }
        }
      }

      v16, v19, v20, v21, v22, v23, v24, v25;
      v4 = v37;
      v12 = *(a1 + 8 * v29);
      *(a1 + 8 * v29) = v12 | v30;
      v5 = v38;
      v3 = v39;
      if ((v12 & v30) == 0)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v10 = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
      if (v10 != *(v39 + 16))
      {
        continue;
      }

LABEL_29:

      return;
    }

    break;
  }

LABEL_31:
  __break(1u);
}

void sub_100336090(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100335E34(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = v5 & 1;
  }
}

uint64_t sub_1003360C8(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033612C()
{
  v1 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 128) & ~v2;
  v4 = *(v1 + 64);

  *(v0 + 56), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + 80), v12, v13, v14, v15, v16, v17, v18;

  *(v0 + 120), v19, v20, v21, v22, v23, v24, v25;
  v26 = type metadata accessor for Locale();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v3, 1, v26))
  {
    (*(v27 + 8))(v0 + v3, v26);
  }

  v28 = (((((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + v28 + 8), v29, v30, v31, v32, v33, v34, v35;

  return _swift_deallocObject(v0, ((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100336308(uint64_t (*a1)(void, void, void *, void, void, void, void, char *, char, void, void, void, void, void))
{
  v3 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v4 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  return a1(v1[2], v1[3], v1 + 4, v1[12], v1[13], v1[14], v1[15], v1 + v4, v8, *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_100336410()
{
  v1 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for Date() - 8);
  sub_10032C528(*(v0 + 16), *(v0 + 24), (v0 + 32), *(v0 + 96), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((*(v5 + 80) + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80)), sub_100195574, sub_1003377F8, &OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog, type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList, &qword_100942138, &qword_1007A25B8);
}

id sub_1003365A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Date();
  v11 = *(v34 - 8);
  __chkstk_darwin(v34, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093CC18, REMListSection_ptr);
  v15 = [swift_getObjCClassFromMetadata() newObjectID];
  v33 = v15;
  static Date.now.getter();
  v32 = kREMSupportedVersionUnset;
  type metadata accessor for REMCDListSection();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a4];
  v17 = [v15 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);
  [v16 setIdentifier:isa];

  v19 = [a3 account];
  [v16 setAccount:v19];

  v20 = [v16 createResolutionTokenMapIfNecessary];
  [v16 setList:a3];
  v21 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v21];

  v22 = v16;
  v23 = Date._bridgeToObjectiveC()().super.isa;
  [v22 setCreationDate:v23];

  v24 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v24];

  v25 = String._bridgeToObjectiveC()();
  [v22 setDisplayName:v25];

  v26 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v26];

  v27 = String._bridgeToObjectiveC()();
  [v22 setCanonicalName:v27];

  v28 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v28];

  [v22 setMinimumSupportedVersion:v32];
  v29 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v29];

  [v22 updateChangeCount];
  (*(v11 + 8))(v14, v34);
  [v22 updateChangeCount];
  return v22;
}

_TtC7remindd19RDXPCStorePerformer *sub_100336A10(_TtC7remindd19RDXPCStorePerformer *a1, id a2, uint64_t a3, unint64_t a4, void (*a5)(id *, id *))
{
  v8 = v5;
  v211 = a3;
  v10 = a2;
  v212[0] = 0;
  v12 = [a2 remObjectIDWithError:v212];
  if (!v12)
  {
    v21 = v212[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v6;
  }

  v13 = v12;
  v206 = a5;
  v209 = a1;
  v14 = qword_1009365A8;
  v15 = v212[0];
  v16 = v13;
  if (v14 != -1)
  {
LABEL_33:
    swift_once();
  }

  v17 = sub_100596AB8(v13, 1u);
  type metadata accessor for REMCDListSection();
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v18 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v6 setEntity:v18];

  [(RDXPCStorePerformer *)v6 setAffectedStores:0];
  [(RDXPCStorePerformer *)v6 setPredicate:v17];

  [(RDXPCStorePerformer *)v6 setPropertiesToFetch:0];
  [(RDXPCStorePerformer *)v6 setRelationshipKeyPathsForPrefetching:0];
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v6 setSortDescriptors:isa];

  v20 = v8;
  v8 = NSManagedObjectContext.fetch<A>(_:)();

  if (v20)
  {

    return v6;
  }

  v210 = 0;
  v205 = v16;

  v6 = sub_10038F564(&_swiftEmptyArrayStorage);
  if (v8 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v207 = v10;
    v208 = a4;
    if (v16)
    {
LABEL_9:
      v10 = 0;
      a4 = v8 & 0xC000000000000001;
      v23 = &selRef_setPublicLinkLastModifiedDate_;
      while (2)
      {
        v13 = v10;
        while (1)
        {
          if (a4)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v24 = *(v8 + 8 * v13 + 32);
          }

          v25 = v24;
          v10 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v26 = [v24 v23[205]];
          if (v26)
          {
            break;
          }

          ++v13;
          if (v10 == v16)
          {
            goto LABEL_35;
          }
        }

        v27 = v26;
        v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v203 = v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v212[0] = &v6->super.isa;
        v202 = v29;
        v37 = sub_100005F4C(v204, v29);
        v38 = *v6->clientIdentity;
        v39 = (v30 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_72;
        }

        if (*&v6->clientIdentity[8] >= v40)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = v30;
            sub_1003747CC();
            v30 = v53;
          }

          v42 = v202;
          if ((v30 & 1) == 0)
          {
LABEL_23:
            v6 = v212[0];
            v212[0][(v37 >> 6) + 8] |= 1 << v37;
            v45 = (*&v6->clientIdentity[32] + 16 * v37);
            v46 = v203;
            *v45 = v204;
            v45[1] = v42;
            *(*&v6->clientIdentity[40] + 8 * v37) = v46;

            v47 = *v6->clientIdentity;
            v48 = __OFADD__(v47, 1);
            v49 = v47 + 1;
            if (v48)
            {
              goto LABEL_73;
            }

            *v6->clientIdentity = v49;
LABEL_29:
            v23 = &selRef_setPublicLinkLastModifiedDate_;
            if (v10 != v16)
            {
              continue;
            }

            goto LABEL_35;
          }
        }

        else
        {
          v41 = v30;
          sub_10036CAF8(v40, isUniquelyReferenced_nonNull_native);
          v42 = v202;
          v43 = sub_100005F4C(v204, v202);
          if ((v41 & 1) != (v44 & 1))
          {
LABEL_74:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v37 = v43;
          v30 = v41;
          if ((v41 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        break;
      }

      v42, v30, v31, v32, v33, v34, v35, v36;
      v6 = v212[0];
      v50 = v212[0][7];
      v51 = *(v50 + 8 * v37);
      v52 = v203;
      *(v50 + 8 * v37) = v203;

      goto LABEL_29;
    }
  }

  else
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v207 = v10;
    v208 = a4;
    if (v16)
    {
      goto LABEL_9;
    }
  }

LABEL_35:
  v54 = v209;

  v56 = sub_1001A5660(v55);
  v209, v57, v58, v59, v60, v61, v62, v63;

  v65 = sub_10032DDEC(v64, v56);
  v6, v66, v67, v68, v69, v70, v71, v72;
  v56, v73, v74, v75, v76, v77, v78, v79;
  if (v65)
  {
    v8, v80, v81, v82, v83, v84, v85, v86;

    return v6;
  }

  v87 = sub_10038F564(&_swiftEmptyArrayStorage);
  __chkstk_darwin(v87, v88);
  v89 = v210;
  v200[2] = v211;
  sub_10031F090(v90, v206, v200, v8);
  v92 = v91;
  v8, v93, v94, v95, v96, v97, v98, v99;
  v100 = *v54->clientIdentity;
  if (!v100)
  {
LABEL_66:

    v92, v179, v180, v181, v182, v183, v184, v185;
    return v6;
  }

  v209 = v92;
  v210 = v89;
  v101 = &v54->clientIdentity[24];
  while (1)
  {
    v103 = *(v101 - 1);
    v102 = *v101;
    v104 = *v6->clientIdentity;

    if (v104)
    {
      sub_100005F4C(v103, v102);
      if (v105)
      {
        v102, v105, v106, v107, v108, v109, v110, v111;
        goto LABEL_40;
      }
    }

    v212[0] = v103;
    v212[1] = &v102->super.isa;
    sub_10013BCF4();
    v112 = StringProtocol.lowercased(with:)();
    if (*v92->clientIdentity)
    {
      v120 = v113;
      v121 = sub_100005F4C(v112, v113);
      v123 = v122;
      v120, v122, v124, v125, v126, v127, v128, v129;
      if (v123)
      {
        v130 = *(*&v92->clientIdentity[40] + 8 * v121);
        v131 = String._bridgeToObjectiveC()();
        [v130 setCanonicalName:v131];

        [v130 updateChangeCount];
        v132 = v130;
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v212[0] = &v6->super.isa;
        v134 = sub_100005F4C(v103, v102);
        v142 = *v6->clientIdentity;
        v143 = (v135 & 1) == 0;
        v48 = __OFADD__(v142, v143);
        v144 = v142 + v143;
        if (v48)
        {
          goto LABEL_70;
        }

        v145 = v135;
        if (*&v6->clientIdentity[8] >= v144)
        {
          if ((v133 & 1) == 0)
          {
            v175 = v134;
            sub_1003747CC();
            v134 = v175;
            v92 = v209;
            if (v145)
            {
LABEL_62:
              v171 = v134;
              v102, v135, v136, v137, v138, v139, v140, v141;
              v6 = v212[0];
              v172 = v212[0][7];
              v173 = *(v172 + 8 * v171);
              *(v172 + 8 * v171) = v132;

              goto LABEL_40;
            }

            goto LABEL_64;
          }
        }

        else
        {
          sub_10036CAF8(v144, v133);
          v134 = sub_100005F4C(v103, v102);
          if ((v145 & 1) != (v135 & 1))
          {
            goto LABEL_74;
          }
        }

        v92 = v209;
        if (v145)
        {
          goto LABEL_62;
        }

LABEL_64:
        v6 = v212[0];
        v212[0][(v134 >> 6) + 8] |= 1 << v134;
        v176 = (*&v6->clientIdentity[32] + 16 * v134);
        *v176 = v103;
        v176[1] = v102;
        *(*&v6->clientIdentity[40] + 8 * v134) = v132;

        v177 = *v6->clientIdentity;
        v48 = __OFADD__(v177, 1);
        v178 = v177 + 1;
        if (v48)
        {
          goto LABEL_71;
        }

        *v6->clientIdentity = v178;
        goto LABEL_40;
      }
    }

    else
    {
      v113, v113, v114, v115, v116, v117, v118, v119;
    }

    v146 = v210;
    v147 = sub_1003365A0(v103, v102, v207, v208);
    v210 = v146;
    if (v146)
    {
      break;
    }

    v155 = v147;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = &v6->super.isa;
    v157 = sub_100005F4C(v103, v102);
    v165 = *v6->clientIdentity;
    v166 = (v158 & 1) == 0;
    v48 = __OFADD__(v165, v166);
    v167 = v165 + v166;
    if (v48)
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

    v168 = v158;
    if (*&v6->clientIdentity[8] >= v167)
    {
      if ((v156 & 1) == 0)
      {
        v174 = v157;
        sub_1003747CC();
        v157 = v174;
      }
    }

    else
    {
      sub_10036CAF8(v167, v156);
      v157 = sub_100005F4C(v103, v102);
      if ((v168 & 1) != (v158 & 1))
      {
        goto LABEL_74;
      }
    }

    v92 = v209;
    v6 = v212[0];
    if (v168)
    {
      v169 = v212[0][7];
      v170 = *(v169 + 8 * v157);
      *(v169 + 8 * v157) = v155;
      v102, v158, v159, v160, v161, v162, v163, v164;
    }

    else
    {
      sub_1002CB9B4(v157, v103, v102, v155, v212[0]);
    }

LABEL_40:
    v101 += 2;
    if (!--v100)
    {
      goto LABEL_66;
    }
  }

  v6, v148, v149, v150, v151, v152, v153, v154;
  v92, v186, v187, v188, v189, v190, v191, v192;

  v102, v193, v194, v195, v196, v197, v198, v199;
  return v6;
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDGroceryOperationCategorizeRemindersInList.Configuration(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithTake for RDGroceryOperationCategorizeRemindersInList.Configuration(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *a1;
  *a1 = *a2;
  v10, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 8) = a2[8];
  return a1;
}

uint64_t getEnumTagSinglePayload for RDGroceryOperationCategorizeRemindersInList.Configuration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for RDGroceryOperationCategorizeRemindersInList.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003373C4()
{
  result = qword_100942160;
  if (!qword_100942160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942160);
  }

  return result;
}

uint64_t sub_100337418(void *a1)
{
  v3 = sub_1000F5104(&qword_100942178, &qword_1007A2648);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_1003373C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000F5104(&qword_10093F598, &qword_1007A2640);
    v10[7] = 0;
    sub_100337628(&qword_100942180, &qword_100942188, &protocol conformance descriptor for REMObjectID_Codable, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

uint64_t sub_100337628(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093F598, &qword_1007A2640);
    sub_100334878(a2, &type metadata accessor for REMObjectID_Codable, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003376D8()
{
  result = qword_100942190;
  if (!qword_100942190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942190);
  }

  return result;
}

unint64_t sub_100337730()
{
  result = qword_100942198;
  if (!qword_100942198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942198);
  }

  return result;
}

unint64_t sub_100337788()
{
  result = qword_1009421A0;
  if (!qword_1009421A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009421A0);
  }

  return result;
}

void sub_100337838(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setActivityDate:isa];
}

void sub_100337974(__n128 a1)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v3 = v1 + *(updated + 24);
  v4 = *(v3 + 8);
  v89 = *v3;

  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  Optional.tryUnwrap(_:file:line:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = v92;
  v88 = [*(v1 + *(updated + 28)) list];
  sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();

  v13 = [v89 sharees];
  if (v13)
  {
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0, &protocol conformance descriptor for NSObject);
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = 0;
  }

  v90 = v14;
  sub_1000F5104(&qword_1009423E8, &qword_1007A29C8);
  Optional.tryUnwrap(_:file:line:)();
  v14, v15, v16, v17, v18, v19, v20, v21;
  v22 = v91;
  if ((v91 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v22 = v91;
    v30 = v92;
    v31 = v93;
    v32 = v94;
    v33 = v95;
  }

  else
  {
    v34 = -1 << *(v91 + 32);
    v30 = (v91 + 56);
    v31 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v91 + 56);

    v32 = 0;
  }

  v87 = v31;
  v37 = (v31 + 64) >> 6;
  while (v22 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000060C8(0, &qword_100942E50, off_1008D41E0), swift_dynamicCast(), v42 = v90, v40 = v32, v41 = v33, !v90))
    {
LABEL_28:
      v12, v23, v24, v25, v26, v27, v28, v29;
      sub_10001B860(v22);
      v91, v66, v67, v68, v69, v70, v71, v72;
      return;
    }

LABEL_21:
    v43 = v42;
    v44 = [(RDXPCStorePerformer *)v42 ckIdentifier];
    if (v44)
    {
      v45 = v44;
      v46 = v22;
      v47 = v12;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      if (v48 == v91 && v50 == v47)
      {
        v50, v51, v91, v52, v53, v54, v55, v56;
        v12 = v47;
        v22 = v46;
LABEL_30:
        sub_10001B860(v22);
        v12, v73, v74, v75, v76, v77, v78, v79;
        v91, v80, v81, v82, v83, v84, v85, v86;
        return;
      }

      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v50, v59, v60, v61, v62, v63, v64, v65;
      v12 = v47;
      v22 = v46;
      if (v58)
      {
        goto LABEL_30;
      }
    }

    v32 = v40;
    v33 = v41;
  }

  v38 = v32;
  v39 = v33;
  v40 = v32;
  if (v33)
  {
LABEL_17:
    v41 = (v39 - 1) & v39;
    v42 = *(*(v22 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
    if (!v42)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v40 >= v37)
    {
      goto LABEL_28;
    }

    v39 = *(&v30->super.isa + v40);
    ++v38;
    if (v39)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_100337E80(__n128 a1)
{
  v2 = [*(v1 + *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) + 28)) account];
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  Optional.tryUnwrap(_:file:line:)();
}

uint64_t sub_100337F58()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009421A8);
  v1 = sub_100006654(v0, qword_1009421A8);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100338020()
{
  v1 = [v0 syncActivityNotificationEngine_accountSignInTime];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for Date();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100338094(_TtC7remindd19RDXPCStorePerformer *a1, double a2)
{
  if (a1)
  {
    type metadata accessor for Date();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a1, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    isa = 0;
  }

  [v2 setSyncActivityNotificationEngine_accountSignInTime:isa];
}

id sub_100338120()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 muteNotificationOptionsForSharedList:v1];

  return v2;
}

uint64_t sub_100338164()
{
  _StringGuts.grow(_:)(106);
  v1._object = 0x80000001007F53A0;
  v1._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v1);
  if (*v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);
  v3, v5, v6, v7, v8, v9, v10, v11;
  v12._countAndFlagsBits = 0xD000000000000017;
  v12._object = 0x80000001007F53C0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v13._object;
  String.append(_:)(v13);
  object, v15, v16, v17, v18, v19, v20, v21;
  v22._countAndFlagsBits = 0xD00000000000001BLL;
  v22._object = 0x80000001007F53E0;
  String.append(_:)(v22);
  if (v0[16])
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v0[16])
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);
  v24, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = 0xD000000000000020;
  v33._object = 0x80000001007F5400;
  String.append(_:)(v33);
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v34._object;
  String.append(_:)(v34);
  v35, v36, v37, v38, v39, v40, v41, v42;
  return 0;
}

Swift::Int sub_100338318()
{
  v1 = v0;
  v2 = *v0;
  Hasher.init(_seed:)();
  v3 = *(v1 + 1);
  v4 = v1[16];
  Hasher._combine(_:)(v2 & 1);
  Hasher._combine(_:)(v3);
  v5 = *(v1 + 3);
  LOBYTE(v1) = v1[32];
  Hasher._combine(_:)(v4 & 1);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

void sub_1003383B0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_10033841C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}