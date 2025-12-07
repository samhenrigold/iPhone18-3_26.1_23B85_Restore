uint64_t sub_10069E26C(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100375520();
      }
    }

    else
    {
      sub_10036E074(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943820, &unk_1007A4100);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10069E4DC(unint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v572 = v548 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v570 = v548 - v13;
  v575 = type metadata accessor for UUID();
  *&v571 = *(v575 - 8);
  __chkstk_darwin(v575, v14);
  v574 = v548 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v573 = v548 - v18;
  v19 = a2[2];
  v20 = a2[3];
  v576 = a2;
  v569 = a2[4];
  if (qword_100936008 != -1)
  {
LABEL_158:
    swift_once();
  }

  v568 = type metadata accessor for Logger();
  v21 = sub_100006654(v568, qword_100945730);

  v579 = v21;
  v22 = Logger.logObject.getter();
  LOBYTE(v23) = static os_log_type_t.info.getter();
  v20, v24, v25, v26, v27, v28, v29, v30;
  v31 = os_log_type_enabled(v22, v23);
  v32 = a1 >> 62;
  v578 = v5;
  v581 = a1;
  v577 = (a1 >> 62);
  if (!v31)
  {

    a1, v55, v56, v57, v58, v59, v60, v61;
    goto LABEL_7;
  }

  v580 = v4;
  v33 = swift_slowAlloc();
  v582[0] = swift_slowAlloc();
  LODWORD(v33->super.isa) = 136446978;
  *(&v33->super.isa + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v582);
  *&v33->storeController[4] = 2048;
  if (v32)
  {
    goto LABEL_161;
  }

  v41 = v19;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *&v33->storeController[6] = i;
    a1, v34, v35, v36, v37, v38, v39, v40;
    *&v33->clientIdentity[6] = 2082;
    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    v43 = [swift_getObjCClassFromMetadata() description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v19 = sub_10000668C(v44, v46, v582);
    v47 = v46;
    a1 = v581;
    v47, v48, v49, v50, v51, v52, v53, v54;
    *&v33->clientIdentity[8] = v19;
    *&v33->clientIdentity[16] = 2082;
    *&v33->clientIdentity[18] = sub_10000668C(v41, v20, v582);
    _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v33, 0x2Au);
    swift_arrayDestroy();

    v4 = v580;
    v5 = v578;
    v32 = v577;
LABEL_7:
    v23 = v32 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = &_swiftEmptyArrayStorage;
    if (!v23)
    {
      break;
    }

    v582[0] = &_swiftEmptyArrayStorage;
    v22 = v582;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v5 = a1 & 0xC000000000000001;
      v580 = a1 & 0xFFFFFFFFFFFFFF8;
      v33 = off_1008D4188;
      while (1)
      {
        v62 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_156:

          v567, v532, v533, v534, v535, v536, v537, v538;
          v33, v539, v540, v541, v542, v543, v544, v545;

          return;
        }

        if (v5)
        {
          v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v580 + 16))
          {
            __break(1u);
            goto LABEL_158;
          }

          v63 = *(a1 + 8 * v20 + 32);
        }

        v64 = v63;
        sub_1005E3810([v63 remObjectID], &qword_100939DF0, off_1008D4188);
        if (v4)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v19 = *(v582[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v20;
        v4 = 0;
        a1 = v581;
        if (v62 == v23)
        {
          v33 = v582[0];
          v5 = v578;
          v32 = v577;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_161:
    v41 = v19;
  }

LABEL_20:
  v65 = *(v5 + 96);
  if (v65 <= 1)
  {
    if (v65)
    {
      if (v65 != 1)
      {
LABEL_166:
        v546 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        v547 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2, v546, v547);
        __break(1u);
        return;
      }

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v582[0] = v96;
        *v95 = 136315138;
        v97 = [objc_opt_self() cdEntityName];
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v33;
        v101 = v100;

        v102 = sub_10000668C(v98, v101, v582);
        v103 = v101;
        v33 = v99;
        v32 = v577;
        v103, v104, v105, v106, v107, v108, v109, v110;
        *(v95 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v93, v94, "Skipping fetch during upsert {CDType: %s}", v95, 0xCu);
        sub_10000607C(v96);
        a1 = v581;
      }

      v84 = sub_10038FA98(&_swiftEmptyArrayStorage);
      goto LABEL_35;
    }
  }

  else if ((v65 - 2) >= 3 && v65 != 4499 && v65 != 4599)
  {
    goto LABEL_166;
  }

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v582[0] = v69;
    *v68 = 136315138;
    v70 = [objc_opt_self() cdEntityName];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v33;
    v74 = v73;

    v75 = sub_10000668C(v71, v74, v582);
    v76 = v74;
    v33 = v72;
    v32 = v577;
    v76, v77, v78, v79, v80, v81, v82, v83;
    *(v68 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v66, v67, "Performing fetch during upsert {CDType: %s}", v68, 0xCu);
    sub_10000607C(v69);
    a1 = v581;
  }

  v84 = sub_1006654B4(v33, v576);
  if (v4)
  {
    v33, v85, v86, v87, v88, v89, v90, v91;
    return;
  }

LABEL_35:
  v567 = v84;
  if (v32)
  {
    v111 = _CocoaArrayWrapper.endIndex.getter();
    v580 = v4;
    if (!v111)
    {
LABEL_147:
      v567, v85, v86, v87, v88, v89, v90, v91;
      v33, v396, v397, v398, v399, v400, v401, v402;
      return;
    }
  }

  else
  {
    v111 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v580 = v4;
    if (!v111)
    {
      goto LABEL_147;
    }
  }

  v112 = 0;
  v113 = a1 & 0xC000000000000001;
  v114 = a1 & 0xFFFFFFFFFFFFFF8;
  v115 = (a1 + 32);
  v565 = (v571 + 8);
  v564 = 0x80000001007EA7D0;
  v556 = (v571 + 56);
  v555 = (v571 + 48);
  *&v92 = 136446978;
  v553 = v92;
  *&v92 = 136446210;
  v571 = v92;
  *&v92 = 136447490;
  v552 = v92;
  *&v92 = 136447234;
  v551 = v92;
  *&v92 = 136446466;
  v554 = v92;
  v563 = v33;
  v560 = v111;
  v559 = a1 & 0xC000000000000001;
  v558 = a1 & 0xFFFFFFFFFFFFFF8;
  v557 = (a1 + 32);
  while (1)
  {
    if (v113)
    {
      v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v112 >= *(v114 + 16))
      {
        goto LABEL_163;
      }

      v116 = *&v115[8 * v112];
    }

    v117 = __OFADD__(v112, 1);
    v118 = v112 + 1;
    v119 = v580;
    if (v117)
    {
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      swift_once();
LABEL_150:
      sub_100006654(v568, qword_100950D98);
      v419 = Logger.logObject.getter();
      v420 = static os_log_type_t.error.getter();
      v421 = os_log_type_enabled(v419, v420);
      v422 = v563;
      if (v421)
      {
        v423 = swift_slowAlloc();
        v582[0] = swift_slowAlloc();
        *v423 = v554;
        v431 = sub_100729CB0(1, v424, v425, v426, v427, v428, v429, v430);
        v433 = v432;
        v434 = sub_10000668C(v431, v432, v582);
        v433, v435, v436, v437, v438, v439, v440, v441;
        *(v423 + 4) = v434;
        *(v423 + 12) = 2082;
        v449 = sub_100729CB0(a1, v442, v443, v444, v445, v446, v447, v448);
        v451 = v450;
        v452 = sub_10000668C(v449, v450, v582);
        v451, v453, v454, v455, v456, v457, v458, v459;
        *(v423 + 14) = v452;
        _os_log_impl(&_mh_execute_header, v419, v420, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v423, 0x16u);
        swift_arrayDestroy();
      }

      v460 = objc_opt_self();
      v461 = String._bridgeToObjectiveC()();
      sub_100729CB0(1, v462, v463, v464, v465, v466, v467, v468);
      v470 = v469;
      v471 = String._bridgeToObjectiveC()();
      v470, v472, v473, v474, v475, v476, v477, v478;
      sub_100729CB0(a1, v479, v480, v481, v482, v483, v484, v485);
      v487 = v486;
      v488 = String._bridgeToObjectiveC()();
      v487, v489, v490, v491, v492, v493, v494, v495;
      [v460 unauthorizedErrorWithMissingEntitlement:v461 requestedAccessLevel:v471 currentAccesslevel:v488];

      swift_willThrow();
      v567, v496, v497, v498, v499, v500, v501, v502;

      v422, v503, v504, v505, v506, v507, v508, v509;
      v510 = v577;

      return;
    }

    v120 = v116;
    v577 = sub_1005E3810([v120 remObjectID], &qword_100939DF0, off_1008D4188);
    if (v119)
    {
      v567, v121, v122, v123, v124, v125, v126, v127;
      v563, v511, v512, v513, v514, v515, v516, v517;

      return;
    }

    v562 = v118;
    v580 = 0;

    v566 = v120;
    v128 = [v120 accountID];
    v129 = [v128 uuid];

    v130 = v573;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v131 = UUID.uuidString.getter();
    v133 = v132;
    v134 = *v565;
    v135 = v575;
    (*v565)(v130, v575);
    v136 = [objc_opt_self() localInternalAccountID];
    v137 = [v136 uuid];

    v138 = v574;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v139 = UUID.uuidString.getter();
    v141 = v140;
    v561 = v134;
    (v134)(v138, v135);
    v149 = v133;
    if (v131 == v139 && v133 == v141)
    {
      v141, v142, v143, v144, v145, v146, v147, v148;
      v150 = v564;
      v151 = v578;
    }

    else
    {
      v152 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v141, v153, v154, v155, v156, v157, v158, v159;
      v150 = v564;
      v151 = v578;
      if ((v152 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v160 = *(v151 + 68);
    if (v160 >> 14 >= 2)
    {
      if (v160 >> 14 == 2)
      {
        v161 = *(v151 + 64) | (*(v151 + 68) << 32);
      }

      else
      {
        v161 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v161 = 2147483519;
    }

    v162 = v580;
    sub_100009A40(2, v161);
    v580 = v162;
    if (v162)
    {
      v149, v163, v164, v165, v166, v167, v168, v169;

      v567, v518, v519, v520, v521, v522, v523, v524;
      v563, v525, v526, v527, v528, v529, v530, v531;

      return;
    }

LABEL_56:
    v170._rawValue = &off_1008E0B58;
    v178 = sub_1005F6904(v170, &qword_100939DF0, off_1008D4188);
    v179 = v567;
    if (!*v567->clientIdentity)
    {
      break;
    }

    v180 = sub_100393C74();
    if ((v171 & 1) == 0)
    {
      break;
    }

    v181 = v180;
    v149, v171, v172, v173, v174, v175, v176, v177;
    v182 = *(*&v179->clientIdentity[40] + 8 * v181);
    v183 = v577;
    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v582[0] = v188;
      *v186 = v554;
      *(v186 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v582);
      *(v186 + 12) = 2114;
      *(v186 + 14) = v183;
      *v187 = v183;
      v189 = v183;
      _os_log_impl(&_mh_execute_header, v184, v185, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v186, 0x16u);
      sub_1000050A4(v187, &unk_100938E70, &unk_100797230);

      sub_10000607C(v188);
    }

    else
    {
    }

    v33 = v563;
LABEL_144:
    v112 = v562;
    v113 = v559;
    v114 = v558;
    v115 = v557;
    LOWORD(a1) = v581;
    if (v562 == v560)
    {
      goto LABEL_147;
    }
  }

  if (v178 != 5)
  {
    v190 = 0;
    while (1)
    {
      if (v190 == 5)
      {
        goto LABEL_148;
      }

      v206 = *(&off_1008E3258 + v190 + 32);
      if (v206 <= 1)
      {
        if (*(&off_1008E3258 + v190 + 32))
        {
          v209 = 6911093;
        }

        else
        {
          v209 = 0x44497463656A626FLL;
        }

        if (*(&off_1008E3258 + v190 + 32))
        {
          v210 = 0xE300000000000000;
        }

        else
        {
          v210 = 0xE800000000000000;
        }

        v207 = 0x4C5255656C6966;
        v208 = 0xE700000000000000;
      }

      else
      {
        v207 = 0x4C5255656C6966;
        v208 = 0xE700000000000000;
        if (v206 == 2)
        {
          v210 = 0xE800000000000000;
          v209 = 0x657A6953656C6966;
        }

        else
        {
          if (v206 == 3)
          {
            v209 = 0x4C5255656C6966;
          }

          else
          {
            v209 = 0xD000000000000012;
          }

          if (v206 == 3)
          {
            v210 = 0xE700000000000000;
          }

          else
          {
            v210 = v150;
          }
        }
      }

      if (v178 != 3)
      {
        v207 = 0xD000000000000012;
        v208 = v150;
      }

      if (v178 == 2)
      {
        v207 = 0x657A6953656C6966;
        v208 = 0xE800000000000000;
      }

      v211 = v178 ? 6911093 : 0x44497463656A626FLL;
      v212 = v178 ? 0xE300000000000000 : 0xE800000000000000;
      v213 = (v178 <= 1u ? v211 : v207);
      v214 = (v178 <= 1u ? v212 : v208);
      if (v209 == v213 && v210 == v214)
      {
        break;
      }

      v191 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v210, v192, v193, v194, v195, v196, v197, v198;
      v214, v199, v200, v201, v202, v203, v204, v205;
      ++v190;
      if (v191)
      {
        v214 = v149;
        goto LABEL_100;
      }
    }

    v149, v171, v213, v173, v174, v175, v176, v177;
    v210, v215, v216, v217, v218, v219, v220, v221;
LABEL_100:
    v214, v171, v172, v173, v174, v175, v176, v177;
    v222 = *(v151 + 88);
    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v224 = [ObjCClassFromMetadata entity];
    v225 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v224 insertIntoManagedObjectContext:v222];
    v226 = v569;
    [v222 assignObject:v225 toPersistentStore:v226];

    v227 = v225;
    v228 = [v577 uuid];
    v229 = v570;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v230 = v575;
    (*v556)(v229, 0, 1, v575);
    v231 = v572;
    sub_10018E470(v229, v572);
    LODWORD(v230) = (*v555)(v231, 1, v230);
    v232 = v227;
    isa = 0;
    if (v230 != 1)
    {
      v234 = v572;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v561)(v234, v575);
    }

    [v232 setIdentifier:isa];

    sub_1000050A4(v229, &unk_100939D90, "8\n\r");
    v235 = v577;
    v236 = v578;

    v237 = v232;
    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.default.getter();

    v240 = os_log_type_enabled(v238, v239);
    v577 = v237;
    v561 = v235;
    if (v240)
    {
      v241 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v550 = swift_slowAlloc();
      v587 = v550;
      *v241 = v553;
      *(v241 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v587);
      *(v241 + 12) = 2082;
      v243 = *(v236 + 40);
      v585 = *(v236 + 24);
      *v586 = v243;
      *&v586[14] = *(v236 + 54);
      sub_100009DAC(&v585, v582);
      v244 = sub_1000063E8();
      v246 = v245;
      sub_1005812D4(&v585);
      v247 = sub_10000668C(v244, v246, &v587);
      v246, v248, v249, v250, v251, v252, v253, v254;
      *(v241 + 14) = v247;
      *(v241 + 22) = 2114;
      *(v241 + 24) = v235;
      *v242 = v235;
      *(v241 + 32) = 2112;
      v255 = v235;
      v256 = [v237 objectID];
      *(v241 + 34) = v256;
      v242[1] = v256;
      _os_log_impl(&_mh_execute_header, v238, v239, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v241, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v257 = v576;
    swift_beginAccess();
    v258 = v257[6];
    if ((v258 & 0xC000000000000001) != 0)
    {
      if (v258 < 0)
      {
        v259 = v257[6];
      }

      else
      {
        v259 = v258 & 0xFFFFFFFFFFFFFF8;
      }

      a1 = v561;
      v260 = v561;
      v261 = v577;
      v262 = v577;
      v263 = __CocoaDictionary.count.getter();
      if (__OFADD__(v263, 1))
      {
        goto LABEL_164;
      }

      v257[6] = sub_10021CDBC(v259, v263 + 1);
    }

    else
    {
      a1 = v561;
      v264 = v561;
      v261 = v577;
      v265 = v577;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v587 = v257[6];
    sub_1002C8398(v261, a1, isUniquelyReferenced_nonNull_native);
    v257[6] = v587;

    swift_endAccess();
    v267 = 0;
    v268 = *(v236 + 64) | (*(v236 + 68) << 32);
    do
    {
      if ((v268 & 0xC00000000001) == 0x800000000000)
      {
        v269 = *(&off_1008E3258 + v267 + 32);
        v270 = Logger.logObject.getter();
        v271 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v270, v271))
        {
          v272 = swift_slowAlloc();
          v273 = swift_slowAlloc();
          v582[0] = v273;
          *v272 = v571;
          LOBYTE(v587) = v269;
          v274 = String.init<A>(describing:)();
          v276 = v275;
          v277 = sub_10000668C(v274, v275, v582);
          v276, v278, v279, v280, v281, v282, v283, v284;
          *(v272 + 4) = v277;
          _os_log_impl(&_mh_execute_header, v270, v271, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v272, 0xCu);
          sub_10000607C(v273);
          v236 = v578;
        }
      }

      a1 = *(v236 + 64);
      if (*(v236 + 68) >> 14 == 2 && (*(v236 + 64) & 1) == 0)
      {
        if (qword_1009367A0 != -1)
        {
          goto LABEL_165;
        }

        goto LABEL_150;
      }

      ++v267;
      v268 = a1 & 0xFFFF0000FFFFFFFFLL | (*(v236 + 68) << 32);
    }

    while (v267 != 5);
    swift_retain_n();
    v23 = v561;
    v20 = v577;
    v286 = Logger.logObject.getter();
    v287 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v286, v287))
    {
      v561 = v286;
      v288 = swift_slowAlloc();
      v289 = swift_slowAlloc();
      v549 = swift_slowAlloc();
      v587 = v549;
      *v288 = v552;
      *(v288 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v587);
      *(v288 + 12) = 2082;
      v290 = *(v236 + 40);
      v583 = *(v236 + 24);
      *v584 = v290;
      *&v584[14] = *(v236 + 54);
      sub_100009DAC(&v583, v582);
      v291 = sub_1000063E8();
      v293 = v292;
      sub_1005812D4(&v583);
      v294 = sub_10000668C(v291, v293, &v587);
      v293, v295, v296, v297, v298, v299, v300, v301;
      *(v288 + 14) = v294;
      *(v288 + 22) = 2114;
      *(v288 + 24) = v23;
      *v289 = v23;
      *(v288 + 32) = 2112;
      v302 = v23;
      v303 = [v20 objectID];
      *(v288 + 34) = v303;
      v548[1] = v289;
      v289[1] = v303;
      *(v288 + 42) = 2082;
      v582[0] = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, 5, 0);
      v550 = v23;
      p_super = &v561->super;
      v306 = v582[0];
      v308 = *(v582[0] + 16);
      v307 = *(v582[0] + 24);
      v309 = v308 + 1;
      if (v308 >= v307 >> 1)
      {
        sub_100026EF4((v307 > 1), v308 + 1, 1);
        v306 = v582[0];
      }

      *(v306 + 16) = v309;
      v310 = v306 + 16 * v308;
      *(v310 + 32) = 0x44497463656A626FLL;
      *(v310 + 40) = 0xE800000000000000;
      LODWORD(v577) = v287;
      v582[0] = v306;
      v311 = *(v306 + 24);
      if (v309 >= v311 >> 1)
      {
        sub_100026EF4((v311 > 1), v308 + 2, 1);
        v306 = v582[0];
      }

      *(v306 + 16) = v308 + 2;
      v312 = v306 + 16 * v309;
      *(v312 + 32) = 6911093;
      *(v312 + 40) = 0xE300000000000000;
      v582[0] = v306;
      v314 = *(v306 + 16);
      v313 = *(v306 + 24);
      v315 = v314 + 1;
      if (v314 >= v313 >> 1)
      {
        sub_100026EF4((v313 > 1), v314 + 1, 1);
        v306 = v582[0];
      }

      *(v306 + 16) = v315;
      v316 = v306 + 16 * v314;
      *(v316 + 32) = 0x657A6953656C6966;
      *(v316 + 40) = 0xE800000000000000;
      v582[0] = v306;
      v317 = *(v306 + 24);
      if (v315 >= v317 >> 1)
      {
        sub_100026EF4((v317 > 1), v314 + 2, 1);
        v306 = v582[0];
      }

      *(v306 + 16) = v314 + 2;
      v318 = v306 + 16 * v315;
      *(v318 + 32) = 0x4C5255656C6966;
      *(v318 + 40) = 0xE700000000000000;
      v319 = v577;
      v320 = v564;
      v582[0] = v306;
      v322 = *(v306 + 16);
      v321 = *(v306 + 24);
      if (v322 >= v321 >> 1)
      {
        sub_100026EF4((v321 > 1), v322 + 1, 1);
        v306 = v582[0];
      }

      *(v306 + 16) = v322 + 1;
      v323 = v306 + 16 * v322;
      *(v323 + 32) = 0xD000000000000012;
      *(v323 + 40) = v320;
      v324 = Array.description.getter();
      v326 = v325;

      v327 = sub_10000668C(v324, v326, &v587);
      v326, v328, v329, v330, v331, v332, v333, v334;
      *(v288 + 44) = v327;
      *(v288 + 52) = 1024;
      v236 = v578;
      v335 = *(v578 + 104);

      *(v288 + 54) = v335;

      _os_log_impl(&_mh_execute_header, p_super, v319, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v288, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v304 = v580;
      v23 = v550;
    }

    else
    {

      v304 = v580;
    }

    v62 = v566;
    sub_1004BBAB8(v566, v20, &off_1008E3258);
    v33 = v563;
    if (v304)
    {
      goto LABEL_156;
    }

    v580 = 0;
    v336 = [v20 changedValues];

    v337 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v338 = v576;
    swift_beginAccess();
    v339 = v23;

    v340 = swift_isUniquelyReferenced_nonNull_native();
    v587 = v338[7];
    v338[7] = 0x8000000000000000;
    sub_1002C8688(v337, v339, v340);

    v338[7] = v587;
    swift_endAccess();
    if (*(v236 + 104))
    {
      v337, v341, v342, v343, v344, v345, v346, v347;
      [v20 updateChangeCount];

LABEL_142:
      goto LABEL_144;
    }

    v348 = v339;

    v349 = Logger.logObject.getter();
    v350 = v20;
    v351 = static os_log_type_t.default.getter();
    v337, v352, v353, v354, v355, v356, v357, v358;

    if (os_log_type_enabled(v349, v351))
    {
      v366 = swift_slowAlloc();
      v367 = swift_slowAlloc();
      v561 = swift_slowAlloc();
      v582[0] = v561;
      *v366 = v551;
      *(v366 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v582);
      v577 = v350;
      *(v366 + 12) = 1024;
      *(v366 + 14) = 0;

      *(v366 + 18) = 1024;
      *(v366 + 20) = 1;
      *(v366 + 24) = 2114;
      *(v366 + 26) = v348;
      *v367 = v348;
      *(v366 + 34) = 2082;
      v368 = v348;
      v369 = v580;
      sub_1005E2810(v337);
      v371 = v370;
      v580 = v369;
      v337, v372, v373, v374, v375, v376, v377, v378;
      v379 = Array.description.getter();
      v381 = v380;
      v371, v380, v382, v383, v384, v385, v386, v387;
      v388 = sub_10000668C(v379, v381, v582);
      v381, v389, v390, v391, v392, v393, v394, v395;
      *(v366 + 36) = v388;
      _os_log_impl(&_mh_execute_header, v349, v351, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v366, 0x2Cu);
      sub_1000050A4(v367, &unk_100938E70, &unk_100797230);
      v33 = v563;

      swift_arrayDestroy();

      goto LABEL_142;
    }

    v337, v359, v360, v361, v362, v363, v364, v365;

    goto LABEL_144;
  }

LABEL_148:
  v149, v171, v172, v173, v174, v175, v176, v177;
  v567, v403, v404, v405, v406, v407, v408, v409;
  v563, v410, v411, v412, v413, v414, v415, v416;
  v417 = objc_opt_self();
  v418 = v577;
  [v417 noSuchObjectErrorWithObjectID:v577];
  swift_willThrow();
}

uint64_t sub_1006A0738(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100375534();
      }
    }

    else
    {
      sub_10036E088(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1006A09A8(_TtC7remindd19RDXPCStorePerformer *a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v569 = v547 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v570 = v547 - v13;
  v573 = type metadata accessor for UUID();
  v14 = *(v573 - 8);
  __chkstk_darwin(v573, v15);
  v572 = v547 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v571 = v547 - v19;
  v20 = a2[2];
  v21 = a2[3];
  v574 = a2;
  v567 = a2[4];
  if (qword_100936008 != -1)
  {
LABEL_220:
    swift_once();
  }

  v566 = type metadata accessor for Logger();
  v22 = sub_100006654(v566, qword_100945730);

  v577 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v21, v25, v26, v27, v28, v29, v30, v31;
  v32 = os_log_type_enabled(v23, v24);
  v33 = a1 >> 62;
  v578 = v5;
  v580 = a1;
  v575 = (a1 >> 62);
  v568 = v14;
  if (!v32)
  {

    a1, v55, v56, v57, v58, v59, v60, v61;
    goto LABEL_7;
  }

  v579 = v20;
  v20 = swift_slowAlloc();
  v581[0] = swift_slowAlloc();
  *v20 = 136446978;
  *(v20 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v581);
  *(v20 + 12) = 2048;
  v576 = v4;
  if (v33)
  {
    goto LABEL_223;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v20 + 14) = i;
    a1, v34, v35, v36, v37, v38, v39, v40;
    *(v20 + 22) = 2082;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v581);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v20 + 24) = v46;
    v54 = v579;
    a1 = v580;
    *(v20 + 32) = 2082;
    *(v20 + 34) = sub_10000668C(v54, v21, v581);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v20, 0x2Au);
    swift_arrayDestroy();

    v4 = v576;
    v5 = v578;
    v33 = v575;
LABEL_7:
    v14 = v33 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = &_swiftEmptyArrayStorage;
    if (!v14)
    {
      break;
    }

    v581[0] = &_swiftEmptyArrayStorage;
    v23 = v581;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v63 = 0;
      v5 = a1 & 0xC000000000000001;
      v579 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = off_1008D41C8;
      while (1)
      {
        v64 = (v63 + 1);
        if (__OFADD__(v63, 1))
        {
          __break(1u);
LABEL_218:

          v564, v531, v532, v533, v534, v535, v536, v537;
          v64, v538, v539, v540, v541, v542, v543, v544;

          return;
        }

        if (v5)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v63 >= *(v579 + 16))
          {
            __break(1u);
            goto LABEL_220;
          }

          v65 = *&a1->clientIdentity[8 * v63 + 16];
        }

        v66 = v65;
        sub_1005E3810([v65 remObjectID], &qword_100940C50, off_1008D41C8);
        v20 = v4;
        if (v4)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v580;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v63;
        v4 = 0;
        if (v64 == v14)
        {
          v62 = v581[0];
          v5 = v578;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_223:
    ;
  }

LABEL_20:
  v67 = *(v5 + 96);
  if (v67 > 1)
  {
    if ((v67 - 2) >= 3 && v67 != 4499 && v67 != 4599)
    {
      goto LABEL_227;
    }

LABEL_27:
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v581[0] = v71;
      *v70 = 136315138;
      v72 = [objc_opt_self() cdEntityName];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = sub_10000668C(v73, v75, v581);
      v75, v77, v78, v79, v80, v81, v82, v83;
      *(v70 + 4) = v76;
      a1 = v580;
      _os_log_impl(&_mh_execute_header, v68, v69, "Performing fetch during upsert {CDType: %s}", v70, 0xCu);
      sub_10000607C(v71);
    }

    v84 = sub_100665DAC(v62, v574);
    if (v4)
    {
      goto LABEL_209;
    }

    goto LABEL_35;
  }

  if (!v67)
  {
    goto LABEL_27;
  }

  if (v67 != 1)
  {
LABEL_227:
    v545 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v546 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v545, v546);
    __break(1u);
    return;
  }

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v581[0] = v96;
    *v95 = 136315138;
    v97 = [objc_opt_self() cdEntityName];
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    v101 = sub_10000668C(v98, v100, v581);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v95 + 4) = v101;
    a1 = v580;
    _os_log_impl(&_mh_execute_header, v93, v94, "Skipping fetch during upsert {CDType: %s}", v95, 0xCu);
    sub_10000607C(v96);
  }

  v84 = sub_10038FAAC(&_swiftEmptyArrayStorage);
LABEL_35:
  v109 = v84;
  if (v575)
  {
    v110 = _CocoaArrayWrapper.endIndex.getter();
    if (!v110)
    {
LABEL_208:
      v109, v85, v86, v87, v88, v89, v90, v91;
LABEL_209:
      v62, v85, v86, v87, v88, v89, v90, v91;
      return;
    }
  }

  else
  {
    v110 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v110)
    {
      goto LABEL_208;
    }
  }

  v111 = 0;
  v112 = a1 & 0xC000000000000001;
  v113 = a1 & 0xFFFFFFFFFFFFFF8;
  v114 = &a1->clientIdentity[16];
  v562 = (v568 + 8);
  v579 = 0x80000001007EA820;
  v555 = v568 + 56;
  v554 = (v568 + 48);
  *&v92 = 136446978;
  v552 = v92;
  *&v92 = 136446210;
  v565 = v92;
  *&v92 = 136447490;
  v551 = v92;
  *&v92 = 136447234;
  v550 = v92;
  *&v92 = 136446466;
  v553 = v92;
  v563 = v62;
  v564 = v109;
  v559 = v110;
  v558 = a1 & 0xC000000000000001;
  v557 = a1 & 0xFFFFFFFFFFFFFF8;
  v556 = &a1->clientIdentity[16];
  while (1)
  {
    if (v112)
    {
      v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v116 = __OFADD__(v111, 1);
      v117 = v111 + 1;
      if (v116)
      {
LABEL_207:
        __break(1u);
        goto LABEL_208;
      }
    }

    else
    {
      if (v111 >= *(v113 + 16))
      {
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        swift_once();
LABEL_212:
        sub_100006654(v566, qword_100950D98);
        v418 = Logger.logObject.getter();
        v419 = static os_log_type_t.error.getter();
        v420 = os_log_type_enabled(v418, v419);
        v421 = v564;
        v422 = v575;
        if (v420)
        {
          v423 = swift_slowAlloc();
          v581[0] = swift_slowAlloc();
          *v423 = v553;
          v431 = sub_100729CB0(1, v424, v425, v426, v427, v428, v429, v430);
          v433 = v432;
          v434 = sub_10000668C(v431, v432, v581);
          v433, v435, v436, v437, v438, v439, v440, v441;
          *(v423 + 4) = v434;
          *(v423 + 12) = 2082;
          v449 = sub_100729CB0(v4, v442, v443, v444, v445, v446, v447, v448);
          v451 = v450;
          v452 = sub_10000668C(v449, v450, v581);
          v451, v453, v454, v455, v456, v457, v458, v459;
          *(v423 + 14) = v452;
          _os_log_impl(&_mh_execute_header, v418, v419, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v423, 0x16u);
          swift_arrayDestroy();
        }

        v460 = objc_opt_self();
        v461 = String._bridgeToObjectiveC()();
        sub_100729CB0(1, v462, v463, v464, v465, v466, v467, v468);
        v470 = v469;
        v471 = String._bridgeToObjectiveC()();
        v470, v472, v473, v474, v475, v476, v477, v478;
        sub_100729CB0(v4, v479, v480, v481, v482, v483, v484, v485);
        v487 = v486;
        v488 = String._bridgeToObjectiveC()();
        v487, v489, v490, v491, v492, v493, v494, v495;
        [v460 unauthorizedErrorWithMissingEntitlement:v461 requestedAccessLevel:v471 currentAccesslevel:v488];

        swift_willThrow();
        v421, v496, v497, v498, v499, v500, v501, v502;

        v563, v503, v504, v505, v506, v507, v508, v509;
        return;
      }

      v115 = *&v114[8 * v111];
      v116 = __OFADD__(v111, 1);
      v117 = v111 + 1;
      if (v116)
      {
        goto LABEL_207;
      }
    }

    v118 = v115;
    v575 = sub_1005E3810([v118 remObjectID], &qword_100940C50, off_1008D41C8);
    if (v4)
    {
      v109, v119, v120, v121, v122, v123, v124, v125;
      v62, v510, v511, v512, v513, v514, v515, v516;

      return;
    }

    v561 = v117;
    v576 = 0;

    v568 = v118;
    v126 = [v118 accountID];
    v127 = [v126 uuid];

    v128 = v571;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v129 = UUID.uuidString.getter();
    v131 = v130;
    v132 = *v562;
    v133 = v573;
    (*v562)(v128, v573);
    v134 = [objc_opt_self() localInternalAccountID];
    v135 = [v134 uuid];

    v136 = v572;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v137 = UUID.uuidString.getter();
    v139 = v138;
    v560 = v132;
    (v132)(v136, v133);
    v147 = v131;
    if (v129 == v137 && v131 == v139)
    {
      v139, v140, v141, v142, v143, v144, v145, v146;
      v62 = v563;
      v148 = v579;
      v149 = v578;
    }

    else
    {
      v150 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v139, v151, v152, v153, v154, v155, v156, v157;
      v62 = v563;
      v148 = v579;
      v149 = v578;
      if ((v150 & 1) == 0)
      {
        v159 = v564;
        goto LABEL_55;
      }
    }

    v158 = *(v149 + 68);
    v159 = v564;
    v160 = v568;
    if (v158 >> 14 >= 2)
    {
      if (v158 >> 14 == 2)
      {
        v161 = *(v149 + 64) | (*(v149 + 68) << 32);
      }

      else
      {
        v161 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v161 = 2147483519;
    }

    v162 = v576;
    sub_100009A40(2, v161);
    v576 = v162;
    if (v162)
    {
      v147, v163, v164, v165, v166, v167, v168, v169;

      v159, v517, v518, v519, v520, v521, v522, v523;
      v62, v524, v525, v526, v527, v528, v529, v530;

      return;
    }

LABEL_55:
    v175 = sub_1005F6AB0(sub_1003BF13C, &qword_100940C50, off_1008D41C8);
    if (!*v159->clientIdentity)
    {
      break;
    }

    v176 = sub_100393C74();
    if ((v177 & 1) == 0)
    {
      break;
    }

    v179 = v176;
    v147, v177, v178, v170, v171, v172, v173, v174;
    v180 = *(*&v159->clientIdentity[40] + 8 * v179);
    v181 = v575;
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v581[0] = v186;
      *v184 = v553;
      *(v184 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v581);
      *(v184 + 12) = 2114;
      *(v184 + 14) = v181;
      *v185 = v181;
      v187 = v181;
      _os_log_impl(&_mh_execute_header, v182, v183, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v184, 0x16u);
      sub_1000050A4(v185, &unk_100938E70, &unk_100797230);

      sub_10000607C(v186);
    }

    else
    {
    }

    v4 = v576;
LABEL_203:
    v111 = v561;
    v109 = v564;
    v112 = v558;
    v113 = v557;
    v114 = v556;
    if (v561 == v559)
    {
      goto LABEL_208;
    }
  }

  v188 = 0xED0000646E456563;
  if (v175 != 11)
  {
    v189 = 0;
    while (1)
    {
      if (v189 == 11)
      {
        goto LABEL_210;
      }

      v207 = *(&off_1008E1F50 + v189 + 32);
      if (v207 <= 4)
      {
        if (v207 == 3)
        {
          v210 = 0x6C61767265746E69;
        }

        else
        {
          v210 = 0xD000000000000011;
        }

        if (v207 == 3)
        {
          v211 = 0xE800000000000000;
        }

        else
        {
          v211 = v148;
        }

        if (v207 == 2)
        {
          v210 = 0x636E657571657266;
          v211 = 0xE900000000000079;
        }

        v212 = *(&off_1008E1F50 + v189 + 32) ? 0x6E65727275636572 : 0x44497463656A626FLL;
        v213 = *(&off_1008E1F50 + v189 + 32) ? 0xED0000646E456563 : 0xE800000000000000;
        v208 = *(&off_1008E1F50 + v189 + 32) <= 1u ? v212 : v210;
        v209 = (*(&off_1008E1F50 + v189 + 32) <= 1u ? v213 : v211);
      }

      else if (*(&off_1008E1F50 + v189 + 32) > 7u)
      {
        if (v207 == 8)
        {
          v208 = 0x54664F736B656577;
          v209 = 0xEE00726165596568;
        }

        else if (v207 == 9)
        {
          v208 = 0x664F7368746E6F6DLL;
          v209 = 0xEF72616559656854;
        }

        else
        {
          v208 = 0x7469736F50746573;
          v209 = 0xEC000000736E6F69;
        }
      }

      else
      {
        v208 = 0x6854664F73796164;
        if (v207 == 5)
        {
          v209 = 0xED00006B65655765;
        }

        else
        {
          v209 = (v207 == 6 ? 0xEE0068746E6F4D65 : 0xED00007261655965);
        }
      }

      v214 = 0x7469736F50746573;
      if (v175 == 9)
      {
        v214 = 0x664F7368746E6F6DLL;
      }

      v215 = 0xEF72616559656854;
      if (v175 != 9)
      {
        v215 = 0xEC000000736E6F69;
      }

      if (v175 == 8)
      {
        v214 = 0x54664F736B656577;
        v215 = 0xEE00726165596568;
      }

      v216 = 0xEE0068746E6F4D65;
      if (v175 != 6)
      {
        v216 = 0xED00007261655965;
      }

      if (v175 == 5)
      {
        v216 = 0xED00006B65655765;
      }

      if (v175 <= 7u)
      {
        v214 = 0x6854664F73796164;
        v215 = v216;
      }

      if (v175 == 3)
      {
        v217 = 0x6C61767265746E69;
      }

      else
      {
        v217 = 0xD000000000000011;
      }

      if (v175 == 3)
      {
        v218 = 0xE800000000000000;
      }

      else
      {
        v218 = v148;
      }

      if (v175 == 2)
      {
        v217 = 0x636E657571657266;
        v218 = 0xE900000000000079;
      }

      if (v175)
      {
        v219 = 0x6E65727275636572;
      }

      else
      {
        v219 = 0x44497463656A626FLL;
      }

      if (!v175)
      {
        v188 = 0xE800000000000000;
      }

      if (v175 <= 1u)
      {
        v217 = v219;
        v218 = v188;
      }

      v220 = (v175 <= 4u ? v217 : v214);
      v221 = (v175 <= 4u ? v218 : v215);
      if (v208 == v220 && v209 == v221)
      {
        break;
      }

      v190 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v209, v191, v192, v193, v194, v195, v196, v197;
      v221, v198, v199, v200, v201, v202, v203, v204;
      ++v189;
      v188 = 0xED0000646E456563;
      v205 = 0x44497463656A626FLL;
      v206 = 0xE800000000000000;
      if (v190)
      {
        v221 = v147;
        goto LABEL_132;
      }
    }

    v147, 0x44497463656A626FLL, v220, v170, v171, v172, v173, v174;
    v209, v222, v223, v224, v225, v226, v227, v228;
LABEL_132:
    v221, v205, v206, v170, v171, v172, v173, v174;
    v229 = *(v578 + 88);
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v231 = [ObjCClassFromMetadata entity];
    v232 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v231 insertIntoManagedObjectContext:v229];
    v233 = v567;
    [v229 assignObject:v232 toPersistentStore:v233];

    v234 = v232;
    v235 = [v575 uuid];
    v236 = v570;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v237 = v573;
    (*v555)(v236, 0, 1, v573);
    v238 = v236;
    v239 = v569;
    sub_10018E470(v238, v569);
    LODWORD(v237) = (*v554)(v239, 1, v237);
    v240 = v234;
    isa = 0;
    if (v237 != 1)
    {
      v242 = v569;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v560)(v242, v573);
    }

    [v240 setIdentifier:isa];

    sub_1000050A4(v570, &unk_100939D90, "8\n\r");
    v243 = v575;
    v244 = v578;

    v245 = v240;
    v4 = Logger.logObject.getter();
    v246 = static os_log_type_t.default.getter();

    v247 = os_log_type_enabled(v4, v246);
    v575 = v245;
    v560 = v243;
    if (v247)
    {
      v248 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      v250 = v243;
      v586 = swift_slowAlloc();
      *v248 = v552;
      *(v248 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v586);
      *(v248 + 12) = 2082;
      v251 = *(v244 + 40);
      v584 = *(v244 + 24);
      *v585 = v251;
      *&v585[14] = *(v244 + 54);
      sub_100009DAC(&v584, v581);
      v252 = sub_1000063E8();
      v254 = v253;
      sub_1005812D4(&v584);
      v255 = sub_10000668C(v252, v254, &v586);
      v254, v256, v257, v258, v259, v260, v261, v262;
      *(v248 + 14) = v255;
      *(v248 + 22) = 2114;
      *(v248 + 24) = v250;
      *v249 = v250;
      *(v248 + 32) = 2112;
      v263 = v250;
      v264 = [v575 objectID];
      *(v248 + 34) = v264;
      v249[1] = v264;
      _os_log_impl(&_mh_execute_header, v4, v246, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v248, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v265 = v574;
    swift_beginAccess();
    v266 = v265[6];
    if ((v266 & 0xC000000000000001) != 0)
    {
      if (v266 < 0)
      {
        v267 = v265[6];
      }

      else
      {
        v267 = v266 & 0xFFFFFFFFFFFFFF8;
      }

      v268 = v560;
      v269 = v560;
      v270 = v575;
      v271 = v575;
      v272 = __CocoaDictionary.count.getter();
      if (__OFADD__(v272, 1))
      {
        goto LABEL_225;
      }

      v265[6] = sub_10021CDBC(v267, v272 + 1);
    }

    else
    {
      v268 = v560;
      v273 = v560;
      v270 = v575;
      v274 = v575;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v586 = v265[6];
    sub_1002C8398(v270, v268, isUniquelyReferenced_nonNull_native);
    v265[6] = v586;

    swift_endAccess();
    v276 = 0;
    v277 = *(v244 + 64) | (*(v244 + 68) << 32);
    while (1)
    {
      if ((v277 & 0xC00000000001) == 0x800000000000)
      {
        v278 = *(&off_1008E1F50 + v276 + 32);
        v279 = Logger.logObject.getter();
        v280 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v279, v280))
        {
          v281 = swift_slowAlloc();
          v282 = swift_slowAlloc();
          v581[0] = v282;
          *v281 = v565;
          LOBYTE(v586) = v278;
          v283 = String.init<A>(describing:)();
          v285 = v284;
          v286 = sub_10000668C(v283, v284, v581);
          v285, v287, v288, v289, v290, v291, v292, v293;
          *(v281 + 4) = v286;
          _os_log_impl(&_mh_execute_header, v279, v280, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v281, 0xCu);
          sub_10000607C(v282);
          v244 = v578;
        }
      }

      v4 = *(v244 + 64);
      if (*(v244 + 68) >> 14 == 2 && (*(v244 + 64) & 1) == 0)
      {
        break;
      }

      ++v276;
      v277 = v4 & 0xFFFF0000FFFFFFFFLL | (*(v244 + 68) << 32);
      if (v276 == 11)
      {
        swift_retain_n();
        v14 = v560;
        v63 = v575;
        v295 = Logger.logObject.getter();
        v296 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v295, v296))
        {
          v549 = v296;
          v560 = v295;
          v297 = swift_slowAlloc();
          v298 = swift_slowAlloc();
          v548 = swift_slowAlloc();
          v586 = v548;
          *v297 = v551;
          *(v297 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v586);
          *(v297 + 12) = 2082;
          v299 = *(v244 + 40);
          v582 = *(v244 + 24);
          *v583 = v299;
          *&v583[14] = *(v244 + 54);
          sub_100009DAC(&v582, v581);
          v300 = sub_1000063E8();
          v302 = v301;
          sub_1005812D4(&v582);
          v303 = sub_10000668C(v300, v302, &v586);
          v302, v304, v305, v306, v307, v308, v309, v310;
          *(v297 + 14) = v303;
          *(v297 + 22) = 2114;
          *(v297 + 24) = v14;
          *v298 = v14;
          *(v297 + 32) = 2112;
          v575 = v14;
          v311 = v14;
          v312 = [v63 objectID];
          *(v297 + 34) = v312;
          v547[1] = v298;
          v298[1] = v312;
          *(v297 + 42) = 2082;
          v581[0] = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, 11, 0);
          v313 = 0;
          v314 = v581[0];
          v315 = v574;
          do
          {
            v316 = *(&off_1008E1F50 + v313 + 32);
            v317 = 0x7469736F50746573;
            if (v316 == 9)
            {
              v317 = 0x664F7368746E6F6DLL;
            }

            v318 = 0xEF72616559656854;
            if (v316 != 9)
            {
              v318 = 0xEC000000736E6F69;
            }

            if (v316 == 8)
            {
              v317 = 0x54664F736B656577;
              v318 = 0xEE00726165596568;
            }

            v319 = 0xEE0068746E6F4D65;
            if (v316 != 6)
            {
              v319 = 0xED00007261655965;
            }

            if (v316 == 5)
            {
              v319 = 0xED00006B65655765;
            }

            if (*(&off_1008E1F50 + v313 + 32) <= 7u)
            {
              v317 = 0x6854664F73796164;
              v318 = v319;
            }

            if (v316 == 3)
            {
              v320 = 0x6C61767265746E69;
            }

            else
            {
              v320 = 0xD000000000000011;
            }

            v321 = v579;
            if (v316 == 3)
            {
              v321 = 0xE800000000000000;
            }

            if (v316 == 2)
            {
              v320 = 0x636E657571657266;
              v321 = 0xE900000000000079;
            }

            if (*(&off_1008E1F50 + v313 + 32))
            {
              v322 = 0x6E65727275636572;
            }

            else
            {
              v322 = 0x44497463656A626FLL;
            }

            if (*(&off_1008E1F50 + v313 + 32))
            {
              v323 = 0xED0000646E456563;
            }

            else
            {
              v323 = 0xE800000000000000;
            }

            if (*(&off_1008E1F50 + v313 + 32) <= 1u)
            {
              v320 = v322;
              v321 = v323;
            }

            if (*(&off_1008E1F50 + v313 + 32) <= 4u)
            {
              v324 = v320;
            }

            else
            {
              v324 = v317;
            }

            if (*(&off_1008E1F50 + v313 + 32) <= 4u)
            {
              v325 = v321;
            }

            else
            {
              v325 = v318;
            }

            v581[0] = v314;
            v327 = *(v314 + 16);
            v326 = *(v314 + 24);
            if (v327 >= v326 >> 1)
            {
              sub_100026EF4((v326 > 1), v327 + 1, 1);
              v314 = v581[0];
            }

            ++v313;
            *(v314 + 16) = v327 + 1;
            v328 = v314 + 16 * v327;
            *(v328 + 32) = v324;
            *(v328 + 40) = v325;
          }

          while (v313 != 11);
          v329 = Array.description.getter();
          v331 = v330;

          v332 = sub_10000668C(v329, v331, &v586);
          v331, v333, v334, v335, v336, v337, v338, v339;
          *(v297 + 44) = v332;
          *(v297 + 52) = 1024;
          v244 = v578;
          v340 = *(v578 + 104);

          *(v297 + 54) = v340;

          v341 = v560;
          _os_log_impl(&_mh_execute_header, v560, v549, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v297, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v342 = v576;
          v64 = v563;
          v14 = v575;
        }

        else
        {

          v342 = v576;
          v315 = v574;
          v64 = v563;
        }

        sub_1003BF188(v568, v63, &off_1008E1F50);
        if (!v342)
        {
          v576 = 0;
          v343 = [v63 changedValues];

          v344 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          swift_beginAccess();
          v345 = v14;

          v346 = swift_isUniquelyReferenced_nonNull_native();
          v586 = v315[7];
          v315[7] = 0x8000000000000000;
          sub_1002C8688(v344, v345, v346);

          v315[7] = v586;
          swift_endAccess();
          if (*(v244 + 104))
          {
            v344, v347, v348, v349, v350, v351, v352, v353;
            [v63 updateChangeCount];

            goto LABEL_201;
          }

          v354 = v345;

          v355 = Logger.logObject.getter();
          v356 = static os_log_type_t.default.getter();
          v344, v357, v358, v359, v360, v361, v362, v363;

          if (os_log_type_enabled(v355, v356))
          {
            v371 = swift_slowAlloc();
            v372 = swift_slowAlloc();
            v560 = v372;
            v575 = swift_slowAlloc();
            v581[0] = v575;
            *v371 = v550;
            *(v371 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v581);
            *(v371 + 12) = 1024;
            *(v371 + 14) = 0;

            *(v371 + 18) = 1024;
            *(v371 + 20) = 1;
            *(v371 + 24) = 2114;
            *(v371 + 26) = v354;
            v372->isa = v354;
            *(v371 + 34) = 2082;
            v373 = v354;
            v374 = v576;
            sub_1005E2810(v344);
            v376 = v375;
            v344, v377, v378, v379, v380, v381, v382, v383;
            v384 = Array.description.getter();
            v386 = v385;
            v376, v385, v387, v388, v389, v390, v391, v392;
            v393 = sub_10000668C(v384, v386, v581);
            v394 = v386;
            v4 = v374;
            v394, v395, v396, v397, v398, v399, v400, v401;
            *(v371 + 36) = v393;
            _os_log_impl(&_mh_execute_header, v355, v356, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v371, 0x2Cu);
            sub_1000050A4(v560, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();
          }

          else
          {
            v344, v364, v365, v366, v367, v368, v369, v370;

LABEL_201:
            v4 = v576;
          }

          v62 = v563;
          goto LABEL_203;
        }

        goto LABEL_218;
      }
    }

    if (qword_1009367A0 != -1)
    {
      goto LABEL_226;
    }

    goto LABEL_212;
  }

LABEL_210:
  v62, 0x44497463656A626FLL, 0xE800000000000000, v170, v171, v172, v173, v174;
  v147, v402, v403, v404, v405, v406, v407, v408;
  v159, v409, v410, v411, v412, v413, v414, v415;
  v416 = objc_opt_self();
  v417 = v575;
  [v416 noSuchObjectErrorWithObjectID:v575];
  swift_willThrow();
}

uint64_t sub_1006A2C24(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100376298();
      }
    }

    else
    {
      sub_10036FA94(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943260, &qword_100797F38);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A2E94(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003762AC();
      }
    }

    else
    {
      sub_10036FAA8(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3104(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100377D18();
      }
    }

    else
    {
      sub_100372774(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100944000, &unk_100798010);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3374(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_10037812C();
      }
    }

    else
    {
      sub_100372BA0(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009433D0, &unk_100797F50);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A35E4(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100378140();
      }
    }

    else
    {
      sub_100372BB4(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3854(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100378154();
      }
    }

    else
    {
      sub_100372BC8(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943470, &unk_100797F60);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3AC4(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100378168();
      }
    }

    else
    {
      sub_100372BDC(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3D34(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_10037817C();
      }
    }

    else
    {
      sub_100372BF0(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10094F310, &qword_100797F78);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3FA4(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100378190();
      }
    }

    else
    {
      sub_100372C04(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_10094F390, &unk_100797F80);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A4214(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003781A4();
      }
    }

    else
    {
      sub_100372C18(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009436D0, &unk_100797F90);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A4484(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, void *a6)
{
  if (a1)
  {
    v9 = qword_1009366B0;
    v10 = a1;
    if (a3 >> 60 == 15)
    {
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_10094EE30);
      v12 = a6;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v16 = v12;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v13, v14, "mergeOrderedSet(): REMCDList.reminderIDsMergeableOrdering data is nil. Serializing from inutput orderedSet directly. {objectID: %@}", v15, 0xCu);
        sub_1000050A4(v16, &unk_100938E70, &unk_100797230);
      }

      v58 = 0;
      v18 = [objc_opt_self() reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v10 error:&v58];
      v19 = v58;
      if (!v18)
      {
        v30 = v19;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return v14;
      }

      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_17;
    }

    if (v9 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10094EE30);
    v10 = v10;
    v21 = a6;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2048;
      v26 = v21;
      v27 = [v10 count];

      *(v24 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "mergeOrderedSet(): Merge not supported for REMCDList.reminderIDsMergeableOrdering for now, directly serializing from input orderedSet. {objectID: %@, count: %ld}", v24, 0x16u);
      sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
    }

    else
    {

      v22 = v10;
    }

    v58 = 0;
    v28 = [objc_opt_self() reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v10 error:&v58];
    v29 = v58;
    if (v28)
    {
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_17:
      return v14;
    }

    v31 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = v21;

    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    a5, v35, v36, v37, v38, v39, v40, v41;

    if (os_log_type_enabled(v33, v34))
    {
      v42 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v42 = 138412802;
      *(v42 + 4) = v32;
      *v56 = v32;
      *(v42 + 12) = 2080;
      v43 = v32;
      *(v42 + 14) = sub_10000668C(a4, a5, &v58);
      *(v42 + 22) = 2080;
      swift_getErrorValue();
      v44 = Error.localizedDescription.getter();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, &v58);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v42 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v33, v34, "mergeOrderedSet(): Failed to merge ordered set for list {list.objectID: %@, key: %s}: %s", v42, 0x20u);
      sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v14 = a2;
    sub_1001CB4B8(a2, a3);
  }

  return v14;
}

void sub_1006A4A44(void *a1, void *a2)
{
  v4 = [a1 sharees];
  v110 = a1;
  if (!v4)
  {
    v30 = _swiftEmptySetSingleton;
    goto LABEL_15;
  }

  v5 = v4;
  sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 accountID];
  v8 = [a1 objectID];
  type metadata accessor for REMShareeCDIngestor();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  sub_1005FF6D4(v6, v9);

  if (v6 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_4:
      v114 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v17 < 0)
      {
        __break(1u);
      }

      v18 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(v6 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        v21 = [v19 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v17 != v18);
      v6, v22, v23, v24, v25, v26, v27, v28;
      v29 = v114;
      goto LABEL_14;
    }
  }

  v6, v10, v11, v12, v13, v14, v15, v16;
  v29 = &_swiftEmptyArrayStorage;
LABEL_14:
  v30 = sub_1001A577C(v29);
  v29, v31, v32, v33, v34, v35, v36, v37;
LABEL_15:
  v38 = [a2 sharees];
  if (v38)
  {
    v46 = v38;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v114 = v47;
    sub_1000F5104(&qword_10094F0E0, &qword_1007B4CD8);
    sub_10000CB48(&qword_10094F0E8, &qword_10094F0E0, &qword_1007B4CD8, &protocol conformance descriptor for Set<A>);
    v48 = Sequence.elements<A>(ofType:)();
    v47, v49, v50, v51, v52, v53, v54, v55;
    v113 = v30;
    v109 = v48;
    if (v48 >> 62)
    {
      goto LABEL_45;
    }

    v63 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v110;
    while (v63)
    {
      v65 = 0;
      v112 = v113 + 7;
      v111 = v63;
      while (1)
      {
        if ((v109 & 0xC000000000000001) != 0)
        {
          v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v65 >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v66 = *(v109 + 32 + 8 * v65);
        }

        v67 = v66;
        if (__OFADD__(v65++, 1))
        {
          break;
        }

        v114 = 0;
        v69 = [v66 remObjectIDWithError:&v114];
        v70 = v114;
        if (!v69)
        {
          v94 = v114;
          v113, v95, v96, v97, v98, v99, v100, v101;
          v109, v102, v103, v104, v105, v106, v107, v108;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v71 = v69;
        if ((v113 & 0xC000000000000001) == 0)
        {
          if (v113[2])
          {
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v75 = v113[5];
            v76 = v70;
            v77 = NSObject._rawHashValue(seed:)(v75);
            v78 = -1 << *(v113 + 32);
            v79 = v77 & ~v78;
            if ((*(v112 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
            {
              v80 = ~v78;
              do
              {
                v81 = *(v113[6] + 8 * v79);
                v82 = static NSObject.== infix(_:_:)();

                if (v82)
                {
                  goto LABEL_20;
                }

                v79 = (v79 + 1) & v80;
              }

              while (((*(v112 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) != 0);
            }
          }

          else
          {
            v83 = v114;
          }

LABEL_36:
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          sub_100006654(v84, qword_10094EE30);
          v85 = v71;
          v86 = v64;
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *v89 = 138412546;
            v91 = [v86 objectID];
            *(v89 + 4) = v91;
            *(v89 + 12) = 2112;
            *(v89 + 14) = v85;
            *v90 = v91;
            v90[1] = v71;
            v92 = v85;
            _os_log_impl(&_mh_execute_header, v87, v88, "Removing sharee from list {list.objectID: %@, shareeobjectID: %@}", v89, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v64 = v110;
          }

          [v67 setList:0];
          goto LABEL_20;
        }

        v72 = v114;
        v73 = v71;
        v74 = __CocoaSet.contains(_:)();

        if ((v74 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_20:

        if (v65 == v111)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v63 = _CocoaArrayWrapper.endIndex.getter();
      v64 = v110;
    }

LABEL_46:
    v113, v56, v57, v58, v59, v60, v61, v62;
    v93 = v109;
  }

  else
  {
    v93 = v30;
  }

  v93, v39, v40, v41, v42, v43, v44, v45;
}

void sub_1006A5110(void *a1, void *a2)
{
  v4 = [a1 calDAVNotifications];
  v110 = a1;
  if (!v4)
  {
    v30 = _swiftEmptySetSingleton;
    goto LABEL_15;
  }

  v5 = v4;
  sub_1000060C8(0, &qword_10094F170, REMCalDAVNotification_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 accountID];
  v8 = [a1 objectID];
  type metadata accessor for REMCalDAVNotificationCDIngestor();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  sub_1005FFEE0(v6, v9);

  if (v6 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_4:
      v114 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v17 < 0)
      {
        __break(1u);
      }

      v18 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(v6 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        v21 = [v19 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v17 != v18);
      v6, v22, v23, v24, v25, v26, v27, v28;
      v29 = v114;
      goto LABEL_14;
    }
  }

  v6, v10, v11, v12, v13, v14, v15, v16;
  v29 = &_swiftEmptyArrayStorage;
LABEL_14:
  v30 = sub_1001A577C(v29);
  v29, v31, v32, v33, v34, v35, v36, v37;
LABEL_15:
  v38 = [a2 calDAVNotifications];
  if (v38)
  {
    v46 = v38;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    sub_10000CE28(&qword_10094F158, &qword_10094F150, off_1008D4178);
    v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v114 = v47;
    sub_1000F5104(&qword_10094F160, &qword_1007B4D60);
    sub_10000CB48(&qword_10094F168, &qword_10094F160, &qword_1007B4D60, &protocol conformance descriptor for Set<A>);
    v48 = Sequence.elements<A>(ofType:)();
    v47, v49, v50, v51, v52, v53, v54, v55;
    v113 = v30;
    v109 = v48;
    if (v48 >> 62)
    {
      goto LABEL_45;
    }

    v63 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v110;
    while (v63)
    {
      v65 = 0;
      v112 = v113 + 7;
      v111 = v63;
      while (1)
      {
        if ((v109 & 0xC000000000000001) != 0)
        {
          v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v65 >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v66 = *(v109 + 32 + 8 * v65);
        }

        v67 = v66;
        if (__OFADD__(v65++, 1))
        {
          break;
        }

        v114 = 0;
        v69 = [v66 remObjectIDWithError:&v114];
        v70 = v114;
        if (!v69)
        {
          v94 = v114;
          v113, v95, v96, v97, v98, v99, v100, v101;
          v109, v102, v103, v104, v105, v106, v107, v108;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v71 = v69;
        if ((v113 & 0xC000000000000001) == 0)
        {
          if (v113[2])
          {
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v75 = v113[5];
            v76 = v70;
            v77 = NSObject._rawHashValue(seed:)(v75);
            v78 = -1 << *(v113 + 32);
            v79 = v77 & ~v78;
            if ((*(v112 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
            {
              v80 = ~v78;
              do
              {
                v81 = *(v113[6] + 8 * v79);
                v82 = static NSObject.== infix(_:_:)();

                if (v82)
                {
                  goto LABEL_20;
                }

                v79 = (v79 + 1) & v80;
              }

              while (((*(v112 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) != 0);
            }
          }

          else
          {
            v83 = v114;
          }

LABEL_36:
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          sub_100006654(v84, qword_10094EE30);
          v85 = v71;
          v86 = v64;
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *v89 = 138412546;
            v91 = [v86 objectID];
            *(v89 + 4) = v91;
            *(v89 + 12) = 2112;
            *(v89 + 14) = v85;
            *v90 = v91;
            v90[1] = v71;
            v92 = v85;
            _os_log_impl(&_mh_execute_header, v87, v88, "Removing calDAVNotification from list {list.objectID: %@, calDAVNotificationobjectID: %@}", v89, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v64 = v110;
          }

          [v67 setOwner:0];
          goto LABEL_20;
        }

        v72 = v114;
        v73 = v71;
        v74 = __CocoaSet.contains(_:)();

        if ((v74 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_20:

        if (v65 == v111)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v63 = _CocoaArrayWrapper.endIndex.getter();
      v64 = v110;
    }

LABEL_46:
    v113, v56, v57, v58, v59, v60, v61, v62;
    v93 = v109;
  }

  else
  {
    v93 = v30;
  }

  v93, v39, v40, v41, v42, v43, v44, v45;
}

void sub_1006A57DC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v136 = *(v13 - 8);
  v137 = v13;
  *&v15 = __chkstk_darwin(v13, v14).n128_u64[0];
  v17 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 storeControllerManagedObjectContext];
  if (v18)
  {
    v19 = v18;
    v134 = v9;
    v135 = a1;
    v132 = a3;
    v133 = v12;
    v140 = a2;
    v20 = [a2 entityName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = [objc_opt_self() cdEntityName];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == v21 && v27 == v23)
    {
      v23, v28, v29, v30, v31, v32, v33, v34;
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v27, v50, v51, v52, v53, v54, v55, v56;
      if ((v49 & 1) == 0)
      {
        v59 = 0x80000001007EC4F0;
        v60 = v135;
        if (v21 != 0xD000000000000013 || 0x80000001007EC4F0 != v23)
        {
          v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v23, v85, v86, v87, v88, v89, v90, v91;
          if ((v84 & 1) == 0)
          {
            v93 = objc_opt_self();
            v138 = 0;
            v139 = 0xE000000000000000;
            _StringGuts.grow(_:)(100);
            v94._countAndFlagsBits = 0xD000000000000061;
            v94._object = 0x80000001007FE500;
            String.append(_:)(v94);
            v95 = [v140 description];
            v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v98 = v97;

            v99._countAndFlagsBits = v96;
            v99._object = v98;
            String.append(_:)(v99);
            v98, v100, v101, v102, v103, v104, v105, v106;
            v107._countAndFlagsBits = 125;
            v107._object = 0xE100000000000000;
            String.append(_:)(v107);
            v108 = v139;
            v109 = String._bridgeToObjectiveC()();
            v108, v110, v111, v112, v113, v114, v115, v116;
            [v93 invalidParameterErrorWithDescription:v109];

            swift_willThrow();
            goto LABEL_10;
          }

          i = v8;
          v131 = v3;
          v83 = 2;
          v57 = v140;
          v92 = v137;
          goto LABEL_34;
        }

        i = v8;
        v83 = 2;
        v57 = v140;
LABEL_33:
        v92 = v137;
        v131 = v4;
        v23, v59, v36, v37, v38, v39, v40, v41;
LABEL_34:
        type metadata accessor for REMCDTemplateOperationQueueItem();
        v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v19];
        [v117 setAccount:v60];
        [v117 setOperationTypeRawValue:v83];
        [v117 setPriorityRawValue:20];
        Date.init()();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v136 + 8))(v17, v92);
        [v117 setCreationDate:isa];

        v119 = v57;
        v120 = [v119 uuid];
        v121 = v133;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v122 = UUID._bridgeToObjectiveC()().super.isa;
        v123 = *(v134 + 8);
        v124 = i;
        v123(v121, i);
        [v117 setTemplateIdentifier:v122];

        v125 = v132;
        v126 = [v125 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v127 = UUID._bridgeToObjectiveC()().super.isa;
        v123(v121, v124);
        [v117 setListIdentifier:v127];

        return;
      }

      v27 = v23;
    }

    v27, v35, v36, v37, v38, v39, v40, v41;
    v57 = v140;
    v58 = sub_100427754(&off_1008E3280, v140);
    if (v3)
    {
LABEL_10:

      return;
    }

    v23 = v58;
    v60 = v135;
    if (v58 >> 62)
    {
      goto LABEL_31;
    }

    v61 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v8; v61; i = v8)
    {
      v131 = v4;
      v129 = v19;
      v57 = 0;
      v60 = v23 & 0xC000000000000001;
      v19 = (v23 & 0xFFFFFFFFFFFFFF8);
      v4 = &selRef_setPublicLinkLastModifiedDate_;
      while (1)
      {
        if (v60)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v57 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v62 = *(v23 + 8 * v57 + 32);
        }

        v63 = v62;
        v8 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        [v62 setPriorityRawValue:30];

        ++v57;
        if (v8 == v61)
        {
          v83 = 1;
          v19 = v129;
          v4 = v131;
          v57 = v140;
          v60 = v135;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    v83 = 1;
    goto LABEL_33;
  }

  v138 = 0;
  v139 = 0xE000000000000000;
  _StringGuts.grow(_:)(137);
  v42._countAndFlagsBits = 0xD000000000000086;
  v42._object = 0x80000001007FE470;
  String.append(_:)(v42);
  v43 = [a1 remObjectID];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 description];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v48 = 0xE300000000000000;
    v46 = 7104878;
  }

  v64 = objc_opt_self();
  v65._countAndFlagsBits = v46;
  v65._object = v48;
  String.append(_:)(v65);
  v48, v66, v67, v68, v69, v70, v71, v72;
  v73._countAndFlagsBits = 125;
  v73._object = 0xE100000000000000;
  String.append(_:)(v73);
  v74 = v139;
  v75 = String._bridgeToObjectiveC()();
  v74, v76, v77, v78, v79, v80, v81, v82;
  [v64 invalidParameterErrorWithDescription:v75];

  swift_willThrow();
}

void sub_1006A5F00(void *a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 shouldCategorizeGroceryItems])
  {
    v9 = [a1 storeControllerManagedObjectContext];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 remObjectID];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = [a1 account];
      if (!v13)
      {

        return;
      }

      v168 = v13;
      v171 = v10;
      v14 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v15 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
      *v8 = v12;
      v16 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
      v17 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
      swift_storeEnumTagMultiPayload();
      v18 = qword_100936080;
      v167 = v12;
      if (v18 != -1)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v169 = qword_100974E30;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = swift_getKeyPath();
        v20 = sub_100043AA8();
        v21 = [objc_allocWithZone(NSFetchRequest) init];
        v22 = [swift_getObjCClassFromMetadata() entity];
        [v21 setEntity:v22];

        [v21 setAffectedStores:0];
        [v21 setPredicate:v20];

        [v21 setFetchLimit:0];
        v173 = v21;
        [v21 setFetchOffset:0];
        v23 = v14;
        v178 = &_swiftEmptyArrayStorage;
        sub_1000F5104(&qword_100949370, &unk_100797770);
        sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
        Predicate = Sequence<>.postFetchPredicateTypes.getter();
        v180 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, 1, 0);
        v25 = v180;
        v165 = a1;
        v172 = v23;
        v170 = inited;
        v175 = Predicate;
        if ((inited & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v26 = *(inited + 32);
        }

        v27 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v28)
        {
          goto LABEL_70;
        }

        v29 = v27;
        v30 = v28;

        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_100026EF4((v31 > 1), v32 + 1, 1);
          v25 = v180;
        }

        *(v25 + 16) = v32 + 1;
        v33 = v25 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        v181 = v25;
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        Array<A>.removeDuplicates()();
        inited = v181;
        v34 = sub_10003450C(v181);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v34, v36, v37, v38, v39, v40, v41, v42;
        a1 = v173;
        [v173 setPropertiesToFetch:isa];

        v178 = sub_1003EBAD0();
        v26 = &_swiftEmptyArrayStorage;
        sub_100271EA8(&_swiftEmptyArrayStorage);
        v180 = v178;
        v43 = v175;
        v44 = sub_100235FA0(v175);
        v43, v45, v46, v47, v48, v49, v50, v51;
        v52 = sub_100277CC0(v44);
        v44, v53, v54, v55, v56, v57, v58, v59;
        if ((v52 & 0x8000000000000000) != 0 || (v52 & 0x4000000000000000) != 0)
        {
          v67 = _CocoaArrayWrapper.endIndex.getter();
          v14 = v172;
          if (!v67)
          {
LABEL_34:
            inited, v60, v61, v62, v63, v64, v65, v66;

LABEL_35:
            sub_100271EA8(v26);
            sub_1000F5104(&unk_10093B300, &unk_100797780);
            Array<A>.removeDuplicates()();
            v81 = v180;
            v82 = Array._bridgeToObjectiveC()().super.isa;
            v81, v83, v84, v85, v86, v87, v88, v89;
            [a1 setRelationshipKeyPathsForPrefetching:v82];

            sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
            v90 = Array._bridgeToObjectiveC()().super.isa;
            [a1 setSortDescriptors:v90];

            v91 = v171;
            v92 = NSManagedObjectContext.fetch<A>(_:)();
            if (v2)
            {

              v170, v93, v94, v95, v96, v97, v98, v99;
              sub_1000513B4(v8);
              return;
            }

            v100 = v92;
            inited = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v92);
            v170, v101, v102, v103, v104, v105, v106, v107;
            v100, v108, v109, v110, v111, v112, v113, v114;

            sub_1000513B4(v8);
            v178 = &_swiftEmptyArrayStorage;
            v166 = 0;
            a1 = (inited & 0xFFFFFFFFFFFFFF8);
            if (!(inited >> 62))
            {
              v122 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_39;
            }

LABEL_63:
            v122 = _CocoaArrayWrapper.endIndex.getter();
LABEL_39:
            v123 = 0;
            v124 = &_swiftEmptyArrayStorage;
            while (v122 != v123)
            {
              if ((inited & 0xC000000000000001) != 0)
              {
                v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v123 >= a1[2])
                {
                  goto LABEL_60;
                }

                v125 = *(inited + 8 * v123 + 32);
              }

              v126 = v125;
              v127 = v123 + 1;
              if (__OFADD__(v123, 1))
              {
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v128 = [v125 remObjectID];

              ++v123;
              if (v128)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v124 = v178;
                v123 = v127;
              }
            }

            inited, v115, v116, v117, v118, v119, v120, v121;
            v129 = v165;
            v130 = [v165 shouldCategorizeGroceryItems];
            v131 = v166;
            if (v130)
            {
              v132 = [v129 storeControllerManagedObjectContext];
              if (v132)
              {
                v133 = v132;
                v134 = [v129 remObjectID];
                if (v134)
                {
                  v135 = v134;
                  if (v124 >> 62)
                  {
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
                      goto LABEL_55;
                    }
                  }

                  else if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
LABEL_55:
                    sub_1000F5104(&unk_100939E10, &qword_1007970D0);
                    v136 = v135;
                    v137 = v168;
                    v138 = sub_100015620(v135, v124, 1, v168, v133);
                    if (v131)
                    {

                      v124, v139, v140, v141, v142, v143, v144, v145;
                    }

                    else
                    {
                      v146 = v138;

                      v124, v147, v148, v149, v150, v151, v152, v153;
                    }

                    return;
                  }
                }

                else
                {
                }
              }
            }

            v124, v154, v155, v156, v157, v158, v159, v160;
            return;
          }
        }

        else
        {
          v67 = *v52->clientIdentity;
          v14 = v172;
          if (!v67)
          {
            goto LABEL_34;
          }
        }

        v163 = inited;
        v164 = v8;
        v166 = v2;
        v177 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v67 & ~(v67 >> 63), 0);
        if (v67 < 0)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v68 = 0;
        v26 = v177;
        v174 = v67;
        v175 = v52 & 0xC000000000000001;
        while (1)
        {
          v8 = (v68 + 1);
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v175)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v68 >= *v52->clientIdentity)
            {
              goto LABEL_31;
            }

            v69 = *&v52->clientIdentity[8 * v68 + 16];
          }

          v70 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v71)
          {
            v178 = 0;
            v179 = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v161._object = 0x80000001007EC120;
            v161._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v161);
            v176 = v69;
            sub_1000F5104(&unk_100939F10, &qword_100797F30);
            while (1)
            {
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_70:
              v178 = 0;
              v179 = 0xE000000000000000;
              _StringGuts.grow(_:)(46);
              v162._object = 0x80000001007EC120;
              v162._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v162);
              v177 = v26;
              sub_1000F5104(&unk_100939F10, &qword_100797F30);
            }
          }

          v14 = v70;
          a1 = v71;

          v177 = v26;
          v2 = *v26->clientIdentity;
          v79 = *&v26->clientIdentity[8];
          if (v2 >= v79 >> 1)
          {
            sub_100026EF4((v79 > 1), v2 + 1, 1);
            v26 = v177;
          }

          *v26->clientIdentity = v2 + 1;
          v80 = v26 + 16 * v2;
          *(v80 + 4) = v14;
          *(v80 + 5) = a1;
          ++v68;
          if (v8 == v174)
          {
            v163, v72, v73, v74, v75, v76, v77, v78;

            v2 = v166;
            v8 = v164;
            a1 = v173;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
      }
    }
  }
}

void sub_1006A69E0(void *a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 shouldAutoCategorizeItems])
  {
    v9 = [a1 storeControllerManagedObjectContext];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 remObjectID];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = [a1 account];
      if (!v13)
      {

        return;
      }

      v168 = v13;
      v171 = v10;
      v14 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v15 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
      *v8 = v12;
      v16 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
      v17 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
      swift_storeEnumTagMultiPayload();
      v18 = qword_100936080;
      v167 = v12;
      if (v18 != -1)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v169 = qword_100974E30;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = swift_getKeyPath();
        v20 = sub_100043AA8();
        v21 = [objc_allocWithZone(NSFetchRequest) init];
        v22 = [swift_getObjCClassFromMetadata() entity];
        [v21 setEntity:v22];

        [v21 setAffectedStores:0];
        [v21 setPredicate:v20];

        [v21 setFetchLimit:0];
        v173 = v21;
        [v21 setFetchOffset:0];
        v23 = v14;
        v178 = &_swiftEmptyArrayStorage;
        sub_1000F5104(&qword_100949370, &unk_100797770);
        sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
        Predicate = Sequence<>.postFetchPredicateTypes.getter();
        v180 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, 1, 0);
        v25 = v180;
        v165 = a1;
        v172 = v23;
        v170 = inited;
        v175 = Predicate;
        if ((inited & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v26 = *(inited + 32);
        }

        v27 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v28)
        {
          goto LABEL_70;
        }

        v29 = v27;
        v30 = v28;

        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_100026EF4((v31 > 1), v32 + 1, 1);
          v25 = v180;
        }

        *(v25 + 16) = v32 + 1;
        v33 = v25 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        v181 = v25;
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        Array<A>.removeDuplicates()();
        inited = v181;
        v34 = sub_10003450C(v181);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v34, v36, v37, v38, v39, v40, v41, v42;
        a1 = v173;
        [v173 setPropertiesToFetch:isa];

        v178 = sub_1003EBAD0();
        v26 = &_swiftEmptyArrayStorage;
        sub_100271EA8(&_swiftEmptyArrayStorage);
        v180 = v178;
        v43 = v175;
        v44 = sub_100235FA0(v175);
        v43, v45, v46, v47, v48, v49, v50, v51;
        v52 = sub_100277CC0(v44);
        v44, v53, v54, v55, v56, v57, v58, v59;
        if ((v52 & 0x8000000000000000) != 0 || (v52 & 0x4000000000000000) != 0)
        {
          v67 = _CocoaArrayWrapper.endIndex.getter();
          v14 = v172;
          if (!v67)
          {
LABEL_34:
            inited, v60, v61, v62, v63, v64, v65, v66;

LABEL_35:
            sub_100271EA8(v26);
            sub_1000F5104(&unk_10093B300, &unk_100797780);
            Array<A>.removeDuplicates()();
            v81 = v180;
            v82 = Array._bridgeToObjectiveC()().super.isa;
            v81, v83, v84, v85, v86, v87, v88, v89;
            [a1 setRelationshipKeyPathsForPrefetching:v82];

            sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
            v90 = Array._bridgeToObjectiveC()().super.isa;
            [a1 setSortDescriptors:v90];

            v91 = v171;
            v92 = NSManagedObjectContext.fetch<A>(_:)();
            if (v2)
            {

              v170, v93, v94, v95, v96, v97, v98, v99;
              sub_1000513B4(v8);
              return;
            }

            v100 = v92;
            inited = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v92);
            v170, v101, v102, v103, v104, v105, v106, v107;
            v100, v108, v109, v110, v111, v112, v113, v114;

            sub_1000513B4(v8);
            v178 = &_swiftEmptyArrayStorage;
            v166 = 0;
            a1 = (inited & 0xFFFFFFFFFFFFFF8);
            if (!(inited >> 62))
            {
              v122 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_39;
            }

LABEL_63:
            v122 = _CocoaArrayWrapper.endIndex.getter();
LABEL_39:
            v123 = 0;
            v124 = &_swiftEmptyArrayStorage;
            while (v122 != v123)
            {
              if ((inited & 0xC000000000000001) != 0)
              {
                v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v123 >= a1[2])
                {
                  goto LABEL_60;
                }

                v125 = *(inited + 8 * v123 + 32);
              }

              v126 = v125;
              v127 = v123 + 1;
              if (__OFADD__(v123, 1))
              {
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v128 = [v125 remObjectID];

              ++v123;
              if (v128)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v124 = v178;
                v123 = v127;
              }
            }

            inited, v115, v116, v117, v118, v119, v120, v121;
            v129 = v165;
            v130 = [v165 shouldAutoCategorizeItems];
            v131 = v166;
            if (v130)
            {
              v132 = [v129 storeControllerManagedObjectContext];
              if (v132)
              {
                v133 = v132;
                v134 = [v129 remObjectID];
                if (v134)
                {
                  v135 = v134;
                  if (v124 >> 62)
                  {
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
                      goto LABEL_55;
                    }
                  }

                  else if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
LABEL_55:
                    sub_1000F5104(&unk_100936F40, &unk_100791B30);
                    v136 = v135;
                    v137 = v168;
                    v138 = sub_10018F9D4(v136, v124, 1, v168, v133);
                    if (v131)
                    {

                      v124, v139, v140, v141, v142, v143, v144, v145;
                    }

                    else
                    {
                      v146 = v138;

                      v124, v147, v148, v149, v150, v151, v152, v153;
                    }

                    return;
                  }
                }

                else
                {
                }
              }
            }

            v124, v154, v155, v156, v157, v158, v159, v160;
            return;
          }
        }

        else
        {
          v67 = *v52->clientIdentity;
          v14 = v172;
          if (!v67)
          {
            goto LABEL_34;
          }
        }

        v163 = inited;
        v164 = v8;
        v166 = v2;
        v177 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v67 & ~(v67 >> 63), 0);
        if (v67 < 0)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v68 = 0;
        v26 = v177;
        v174 = v67;
        v175 = v52 & 0xC000000000000001;
        while (1)
        {
          v8 = (v68 + 1);
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v175)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v68 >= *v52->clientIdentity)
            {
              goto LABEL_31;
            }

            v69 = *&v52->clientIdentity[8 * v68 + 16];
          }

          v70 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v71)
          {
            v178 = 0;
            v179 = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v161._object = 0x80000001007EC120;
            v161._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v161);
            v176 = v69;
            sub_1000F5104(&unk_100939F10, &qword_100797F30);
            while (1)
            {
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_70:
              v178 = 0;
              v179 = 0xE000000000000000;
              _StringGuts.grow(_:)(46);
              v162._object = 0x80000001007EC120;
              v162._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v162);
              v177 = v26;
              sub_1000F5104(&unk_100939F10, &qword_100797F30);
            }
          }

          v14 = v70;
          a1 = v71;

          v177 = v26;
          v2 = *v26->clientIdentity;
          v79 = *&v26->clientIdentity[8];
          if (v2 >= v79 >> 1)
          {
            sub_100026EF4((v79 > 1), v2 + 1, 1);
            v26 = v177;
          }

          *v26->clientIdentity = v2 + 1;
          v80 = v26 + 16 * v2;
          *(v80 + 4) = v14;
          *(v80 + 5) = a1;
          ++v68;
          if (v8 == v174)
          {
            v163, v72, v73, v74, v75, v76, v77, v78;

            v2 = v166;
            v8 = v164;
            a1 = v173;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
      }
    }
  }
}

uint64_t sub_1006A74BC(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003781B8();
      }
    }

    else
    {
      sub_100372C2C(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_10094F300, &unk_100797FD0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1006A772C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return sub_10038F0E4(&_swiftEmptyArrayStorage);
  }

  sub_1006732C8(a1, 0, 1, 0);
  if (!v2)
  {
    v12 = v3;
    if (v3 >> 62)
    {
      goto LABEL_32;
    }

    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
LABEL_33:
      v1 = _swiftEmptyDictionarySingleton;
LABEL_34:
      v12, v4, v5, v6, v7, v8, v9, v10;
      return v1;
    }

LABEL_7:
    v14 = 0;
    v1 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v17 = *&v12->clientIdentity[8 * v14 + 16];
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v13 = _CocoaArrayWrapper.endIndex.getter();
          if (!v13)
          {
            goto LABEL_33;
          }

          goto LABEL_7;
        }
      }

      v51 = 0;
      v19 = v17;
      v20 = [v19 remObjectIDWithError:&v51];
      if (!v20)
      {
        v36 = v51;
        v12, v37, v38, v39, v40, v41, v42, v43;

        _convertNSErrorToError(_:)();
        swift_willThrow();
        v1, v44, v45, v46, v47, v48, v49, v50;

        return v1;
      }

      v21 = v20;
      v22 = v51;

      v23 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v1;
      v25 = sub_100393C74();
      v27 = *v1->clientIdentity;
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_30;
      }

      v31 = v26;
      if (*&v1->clientIdentity[8] < v30)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v35 = v25;
      sub_1003747A4();
      v25 = v35;
      v1 = v51;
      if (v31)
      {
LABEL_8:
        v15 = *&v1->clientIdentity[40];
        v16 = *(v15 + 8 * v25);
        *(v15 + 8 * v25) = v23;

        goto LABEL_9;
      }

LABEL_20:
      *&v1->storeProvider[8 * (v25 >> 6) + 2] |= 1 << v25;
      *(*&v1->clientIdentity[32] + 8 * v25) = v21;
      *(*&v1->clientIdentity[40] + 8 * v25) = v23;

      v33 = *v1->clientIdentity;
      v29 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v29)
      {
        goto LABEL_31;
      }

      *v1->clientIdentity = v34;
LABEL_9:
      ++v14;
      if (v18 == v13)
      {
        goto LABEL_34;
      }
    }

    sub_10036CAD0(v30, isUniquelyReferenced_nonNull_native);
    v25 = sub_100393C74();
    if ((v31 & 1) != (v32 & 1))
    {
      sub_1000F5104(&qword_10093A920, &unk_100797F40);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_19:
    v1 = v51;
    if (v31)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  return v1;
}

uint64_t sub_1006A7A4C(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003747A4();
      }
    }

    else
    {
      sub_10036CAD0(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093A920, &unk_100797F40);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006A7CBC(void *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (!a2)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v6 = swift_allocObject();
      *v6->clientIdentity = xmmword_1007953F0;
      *&v6->clientIdentity[16] = [a1 accountID];
      return v6;
    }

    if (a2 == 1)
    {
      v4 = [a1 childListIDsToUndelete];
    }

    else
    {
      v4 = [a1 childSmartListIDsToUndelete];
    }

LABEL_19:
    v8 = v4;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_100277EBC(v9);
    v9, v10, v11, v12, v13, v14, v15, v16;
    return v6;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v4 = [a1 reminderIDsToUndelete];
    }

    else
    {
      v4 = [a1 sectionIDsToUndelete];
    }

    goto LABEL_19;
  }

  if (a2 == 3)
  {
    v2 = &v18;
    v3 = [a1 parentAccountID];
    v19 = v3;
  }

  else
  {
    v2 = &v21;
    v3 = [a1 parentListID];
    v22 = v3;
  }

  v6 = &_swiftEmptyArrayStorage;
  v20 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v7 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v20;
  }

  sub_1000050A4((v2 + 32), &unk_10093AF40, &unk_100795790);
  return v6;
}

void sub_1006A7EF0(id a1, void *a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v34 = v4;
        v35 = [a1 childListIDsToUndelete];
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
        v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v36 & 0xC000000000000001) != 0)
        {
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v36 = v348;
          v37 = v349;
          v38 = v350;
          v39 = v351;
          v40 = v352;
        }

        else
        {
          v39 = 0;
          v128 = -1 << *(v36 + 32);
          v37 = v36 + 56;
          v38 = ~v128;
          v129 = -v128;
          if (v129 < 64)
          {
            v130 = ~(-1 << v129);
          }

          else
          {
            v130 = -1;
          }

          v40 = v130 & *(v36 + 56);
        }

        v131 = (v38 + 64) >> 6;
        v132 = v4;
        v324 = v36;
        v328 = v37;
        while (1)
        {
          if (v36 < 0)
          {
            if (!__CocoaSet.Iterator.next()())
            {
              goto LABEL_164;
            }

            swift_dynamicCast();
            v34 = v368;
            v43 = v39;
            v144 = v40;
            if (!v368)
            {
              goto LABEL_164;
            }
          }

          else
          {
            v142 = v39;
            v143 = v40;
            v43 = v39;
            if (!v40)
            {
              while (1)
              {
                v43 = v142 + 1;
                if (__OFADD__(v142, 1))
                {
                  __break(1u);
                  goto LABEL_202;
                }

                if (v43 >= v131)
                {
                  break;
                }

                v143 = *(v37 + 8 * v43);
                ++v142;
                if (v143)
                {
                  goto LABEL_58;
                }
              }

LABEL_164:
              v218 = v36;
              goto LABEL_165;
            }

LABEL_58:
            v144 = (v143 - 1) & v143;
            v34 = *(*(v36 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v143)))));
            if (!v34)
            {
              goto LABEL_164;
            }
          }

          sub_100689A98(1u, v34, a4, off_1008D41A8, &unk_100938880);
          if (v132)
          {
            sub_10001B860(v36);

            return;
          }

          v334 = v144;
          v146 = v145;
          [v146 setParentList:a2];
          v147 = [v146 createResolutionTokenMapIfNecessary];
          if (qword_1009366C8 != -1)
          {
            swift_once();
          }

          v148 = qword_1009752A0;
          if (*(qword_1009752A0 + 16) && (v149 = sub_100005F4C(0x694C746E65726170, 0xEC00000044497473), (v150 & 1) != 0))
          {
            v133 = *(*(v148 + 56) + 16 * v149 + 8);
          }

          else
          {
            if (qword_100936128 != -1)
            {
              swift_once();
            }

            v151 = type metadata accessor for Logger();
            sub_100006654(v151, qword_100946C50);
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v368 = v155;
              *v154 = 136315138;
              *(v154 + 4) = sub_10000668C(0x694C746E65726170, 0xEC00000044497473, &v368);
              _os_log_impl(&_mh_execute_header, v152, v153, "Unknown ingestable key {key: %s}", v154, 0xCu);
              sub_10000607C(v155);
            }

            v133 = 0xEC00000044497473;
            v132 = 0;
          }

          v134 = String._bridgeToObjectiveC()();
          v133, v135, v136, v137, v138, v139, v140, v141;
          [v147 updateForKey:v134];

          v39 = v43;
          v37 = v328;
          v40 = v334;
          v36 = v324;
        }
      }

      v48 = v4;
      v49 = [a1 childSmartListIDsToUndelete];
      v50 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
      v321 = v50;
      v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v51 & 0xC000000000000001) != 0)
      {
        v59 = __CocoaSet.count.getter();
      }

      else
      {
        v59 = *(v51 + 16);
      }

      v51, v52, v53, v54, v55, v56, v57, v58;
      if (!v59)
      {
        return;
      }

      v156 = [a1 childSmartListIDsToUndelete];
      v124 = v321;
      v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v43 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        v127 = Set.Iterator.init(_cocoa:)();
        v43 = v353;
        v157 = v354;
        v158 = v355;
        v159 = v356;
        v160 = v357;
      }

      else
      {
        v159 = 0;
        v221 = -1 << *(v43 + 32);
        v157 = v43 + 56;
        v158 = ~v221;
        v222 = -v221;
        if (v222 < 64)
        {
          v223 = ~(-1 << v222);
        }

        else
        {
          v223 = -1;
        }

        v160 = v223 & *(v43 + 56);
      }

      v224 = (v158 + 64) >> 6;
      v225 = v4;
      v327 = v43;
      v331 = v157;
      while (1)
      {
        if (v43 < 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
LABEL_163:
            v218 = v43;
            goto LABEL_165;
          }

          swift_dynamicCast();
          v239 = v368;
          v237 = v159;
          v238 = v160;
          if (!v368)
          {
LABEL_183:
            v218 = v327;
            goto LABEL_165;
          }
        }

        else
        {
          v235 = v159;
          v236 = v160;
          v237 = v159;
          if (!v160)
          {
            while (1)
            {
              v237 = v235 + 1;
              if (__OFADD__(v235, 1))
              {
                break;
              }

              if (v237 >= v224)
              {
                goto LABEL_163;
              }

              v236 = *(v157 + 8 * v237);
              ++v235;
              if (v236)
              {
                goto LABEL_149;
              }
            }

            __break(1u);
LABEL_206:
            v312 = v127;

            swift_bridgeObjectRelease_n();
            return;
          }

LABEL_149:
          v238 = (v236 - 1) & v236;
          v239 = *(*(v43 + 48) + ((v237 << 9) | (8 * __clz(__rbit64(v236)))));
          if (!v239)
          {
            goto LABEL_183;
          }
        }

        sub_100689A98(2u, v239, a4, off_1008D41E8, &unk_10093F770);
        if (v225)
        {
          sub_10001B860(v327);

          return;
        }

        v337 = v238;
        v48 = v240;
        [v48 setParentList:a2];
        v241 = [v48 createResolutionTokenMapIfNecessary];
        if (qword_100935C70 != -1)
        {
          swift_once();
        }

        v242 = qword_100974C80;
        if (*(qword_100974C80 + 16) && (v243 = sub_100005F4C(0x694C746E65726170, 0xEC00000044497473), (v244 & 1) != 0))
        {
          v226 = *(*(v242 + 56) + 16 * v243 + 8);
        }

        else
        {
          if (qword_100936128 != -1)
          {
            swift_once();
          }

          v245 = type metadata accessor for Logger();
          sub_100006654(v245, qword_100946C50);
          v246 = Logger.logObject.getter();
          v247 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v246, v247))
          {
            v248 = swift_slowAlloc();
            v249 = swift_slowAlloc();
            v368 = v249;
            *v248 = 136315138;
            *(v248 + 4) = sub_10000668C(0x694C746E65726170, 0xEC00000044497473, &v368);
            _os_log_impl(&_mh_execute_header, v246, v247, "Unknown ingestable key {key: %s}", v248, 0xCu);
            sub_10000607C(v249);
            v124 = v321;
          }

          v226 = 0xEC00000044497473;
          v225 = 0;
        }

        v227 = String._bridgeToObjectiveC()();
        v226, v228, v229, v230, v231, v232, v233, v234;
        [v241 updateForKey:v227];

        v159 = v237;
        v157 = v331;
        v160 = v337;
        v43 = v327;
      }
    }

    v46 = [a1 accountID];
    sub_100689A98(0, v46, a4, off_1008D4120, &qword_1009399F0);
    if (v4)
    {

      return;
    }

    v84 = v47;

    if (qword_1009366B0 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100006654(v85, qword_10094EE30);
    v43 = v84;
    v86 = a2;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v368 = swift_slowAlloc();
      *v89 = 136315394;
      v90 = [v86 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v91 = Optional.descriptionOrNil.getter();
      v342 = v86;
      v93 = v92;

      v94 = sub_10000668C(v91, v93, &v368);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v89 + 4) = v94;
      *(v89 + 12) = 2080;
      v345 = [v43 remObjectID];
      v102 = Optional.descriptionOrNil.getter();
      v104 = v103;

      v105 = sub_10000668C(v102, v104, &v368);
      v106 = v104;
      v86 = v342;
      v106, v107, v108, v109, v110, v111, v112, v113;
      *(v89 + 14) = v105;
      _os_log_impl(&_mh_execute_header, v87, v88, "Updating list.account {list: %s, account: %s}", v89, 0x16u);
      swift_arrayDestroy();
    }

    [v86 setAccount:v43];
    v114 = [a1 unsavedReminderIDsForCategorization];
    if (!v114)
    {

      return;
    }

    v115 = v114;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ([a1 shouldCategorizeGroceryItems])
    {
      if ([v86 shouldCategorizeGroceryItems])
      {
        v123 = [v86 storeControllerManagedObjectContext];
        if (v123)
        {
          v124 = v123;
          v125 = [v86 remObjectID];
          if (v125)
          {
            v126 = v125;
            if (v40 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_45;
              }
            }

            else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_45:
              sub_1000F5104(&unk_100939E10, &qword_1007970D0);
              v48 = v126;

              v127 = sub_100015620(v126, v40, 0, v43, v124);
              goto LABEL_206;
            }
          }

          else
          {
          }
        }
      }

LABEL_209:
      v40, v116, v117, v118, v119, v120, v121, v122;

      return;
    }

    if (![a1 shouldAutoCategorizeItems])
    {
      goto LABEL_209;
    }

    if (![v86 shouldAutoCategorizeItems])
    {
      goto LABEL_212;
    }

    v250 = [v86 storeControllerManagedObjectContext];
    if (!v250)
    {
      goto LABEL_212;
    }

    v34 = v250;
    v251 = [v86 remObjectID];
    if (!v251)
    {
      goto LABEL_204;
    }

    v252 = v251;
    if (v40 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_174;
      }
    }

    else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_174:
      sub_1000F5104(&unk_100936F40, &unk_100791B30);

      v253 = v252;
      v313 = sub_10018F9D4(v253, v40, 0, v43, v34);

      swift_bridgeObjectRelease_n();
      return;
    }

    goto LABEL_212;
  }

  if (a3 - 3 < 2)
  {
    v8 = [a2 createResolutionTokenMapIfNecessary];
    v9 = [a1 resolutionTokenMap];
    if (!v9)
    {
      if (qword_1009366B0 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_100006654(v63, qword_10094EE30);
      v64 = a1;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v368 = v69;
        *v67 = 138543618;
        v70 = [v64 objectID];
        *(v67 + 4) = v70;
        *v68 = v70;
        *(v67 + 12) = 2082;
        if (a3 == 4)
        {
          v71 = 0x694C746E65726170;
        }

        else
        {
          v71 = 0x6341746E65726170;
        }

        if (a3 == 4)
        {
          v72 = 0xEC00000044497473;
        }

        else
        {
          v72 = 0xEF4449746E756F63;
        }

        v73 = sub_10000668C(v71, v72, &v368);
        v72, v74, v75, v76, v77, v78, v79, v80;
        *(v67 + 14) = v73;
        _os_log_impl(&_mh_execute_header, v65, v66, "REMListStorageCDIngestor: establishRelationship(onStorage:into cdList:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v67, 0x16u);
        sub_1000050A4(v68, &unk_100938E70, &unk_100797230);

        sub_10000607C(v69);
      }

      v81 = objc_opt_self();
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v83 = String._bridgeToObjectiveC()();
      [v81 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v83];

      swift_willThrow();
      return;
    }

    v10 = v9;
    sub_1000F5104(&qword_10094F5E0, &qword_1007A41E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = a3;
    v12 = sub_1006963A0(v10, inited);
    swift_setDeallocating();
    sub_100693AB0(a3, v13, v14, v15, v16, v17, v18, v19);
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();
    v21, v23, v24, v25, v26, v27, v28, v29;
    LODWORD(v21) = [v8 mergeWithMap:v12 forKey:v22];

    if (!v21)
    {

      return;
    }

    if (a3 == 3)
    {
      v30 = [a1 parentAccountID];
      if (!v30)
      {
        v33 = 0;
        goto LABEL_176;
      }

      v31 = v30;
      sub_100689A98(3u, v31, a4, off_1008D4120, &qword_1009399F0);
      if (!v4)
      {
        v33 = v32;

LABEL_176:
        if (qword_1009366B0 != -1)
        {
          swift_once();
        }

        v254 = type metadata accessor for Logger();
        sub_100006654(v254, qword_10094EE30);
        v255 = v33;
        v256 = a2;
        v257 = Logger.logObject.getter();
        v258 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v257, v258))
        {
          v332 = v258;
          loga = v257;
          v259 = swift_slowAlloc();
          v368 = swift_slowAlloc();
          *v259 = 136315394;
          v343 = v256;
          v346 = [v256 remObjectID];
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          v260 = Optional.descriptionOrNil.getter();
          v262 = v261;

          v263 = sub_10000668C(v260, v262, &v368);
          v262, v264, v265, v266, v267, v268, v269, v270;
          *(v259 + 4) = v263;
          *(v259 + 12) = 2080;
          if (v33)
          {
            v271 = [v255 remObjectID];
          }

          else
          {
            v271 = 0;
          }

          v290 = Optional.descriptionOrNil.getter();
          v292 = v291;

          v293 = sub_10000668C(v290, v292, &v368);
          v292, v294, v295, v296, v297, v298, v299, v300;
          *(v259 + 14) = v293;
          _os_log_impl(&_mh_execute_header, loga, v332, "Updating list.parentAccount {list: %s, account: %s}", v259, 0x16u);
          swift_arrayDestroy();

          v256 = v343;
        }

        else
        {
        }

        [v256 setParentAccount:v255];
LABEL_199:

        return;
      }

LABEL_135:

      return;
    }

    v219 = [a1 parentListID];
    if (v219)
    {
      v31 = v219;
      sub_100689A98(4u, v31, a4, off_1008D41A8, &unk_100938880);
      if (v4)
      {
        goto LABEL_135;
      }

      v272 = v220;
    }

    else
    {
      v272 = 0;
    }

    if (qword_1009366B0 != -1)
    {
      swift_once();
    }

    v273 = type metadata accessor for Logger();
    sub_100006654(v273, qword_10094EE30);
    v255 = v272;
    v274 = a2;
    v275 = Logger.logObject.getter();
    v276 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v275, v276))
    {
      v333 = v276;
      logb = v275;
      v277 = swift_slowAlloc();
      v368 = swift_slowAlloc();
      *v277 = 136315394;
      v344 = v274;
      v347 = [v274 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v278 = Optional.descriptionOrNil.getter();
      v280 = v279;

      v281 = sub_10000668C(v278, v280, &v368);
      v280, v282, v283, v284, v285, v286, v287, v288;
      *(v277 + 4) = v281;
      *(v277 + 12) = 2080;
      if (v272)
      {
        v289 = [v255 remObjectID];
      }

      else
      {
        v289 = 0;
      }

      v301 = Optional.descriptionOrNil.getter();
      v303 = v302;

      v304 = sub_10000668C(v301, v303, &v368);
      v303, v305, v306, v307, v308, v309, v310, v311;
      *(v277 + 14) = v304;
      _os_log_impl(&_mh_execute_header, logb, v333, "Updating list.parentList {list: %s, parentList: %s}", v277, 0x16u);
      swift_arrayDestroy();

      v274 = v344;
    }

    else
    {
    }

    [v274 setParentList:v255];
    goto LABEL_199;
  }

  if (a3 != 5)
  {
    v60 = [a1 sectionIDsToUndelete];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v42 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v42 = v363;
      v43 = v364;
      v61 = v365;
      v62 = v366;
      v40 = v367;
    }

    else
    {
      v62 = 0;
      v190 = -1 << *(v42 + 32);
      v43 = v42 + 56;
      v191 = ~v190;
      v192 = -v190;
      if (v192 < 64)
      {
        v193 = ~(-1 << v192);
      }

      else
      {
        v193 = -1;
      }

      v40 = v193 & *(v42 + 56);
      v61 = v191;
    }

    v194 = (v61 + 64) >> 6;
    v323 = v194;
    v326 = v43;
    v330 = v42;
    while (1)
    {
      if (v42 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_132;
        }

        swift_dynamicCast();
        v178 = v368;
        v34 = v62;
        v206 = v40;
        if (!v368)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v204 = v62;
        v205 = v40;
        v34 = v62;
        if (!v40)
        {
          while (1)
          {
            v34 = v204 + 1;
            if (__OFADD__(v204, 1))
            {
              goto LABEL_203;
            }

            if (v34 >= v194)
            {
              break;
            }

            v205 = *(v43 + 8 * v34);
            ++v204;
            if (v205)
            {
              goto LABEL_118;
            }
          }

LABEL_132:
          v218 = v42;
LABEL_165:
          sub_10001B860(v218);
          return;
        }

LABEL_118:
        v206 = (v205 - 1) & v205;
        v178 = *(*(v42 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v205)))));
        if (!v178)
        {
          goto LABEL_132;
        }
      }

      sub_10068A364(6u, v178, a4);
      if (v5)
      {
LABEL_136:
        sub_10001B860(v42);

        return;
      }

      v336 = v206;
      v208 = v207;
      [v208 setList:a2];
      v209 = [v208 createResolutionTokenMapIfNecessary];
      if (qword_100935F90 != -1)
      {
        swift_once();
      }

      v210 = qword_100974D70;
      if (*(qword_100974D70 + 16) && (v211 = sub_100005F4C(0x4449746E65726170, 0xE800000000000000), (v212 & 1) != 0))
      {
        v195 = *(*(v210 + 56) + 16 * v211 + 8);
      }

      else
      {
        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v213 = type metadata accessor for Logger();
        sub_100006654(v213, qword_100946C50);
        v214 = Logger.logObject.getter();
        v215 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v214, v215))
        {
          v216 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          v368 = v217;
          *v216 = 136315138;
          v195 = 0xE800000000000000;
          *(v216 + 4) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v368);
          _os_log_impl(&_mh_execute_header, v214, v215, "Unknown ingestable key {key: %s}", v216, 0xCu);
          sub_10000607C(v217);
        }

        else
        {

          v195 = 0xE800000000000000;
        }

        v5 = 0;
      }

      v196 = String._bridgeToObjectiveC()();
      v195, v197, v198, v199, v200, v201, v202, v203;
      [v209 updateForKey:v196];

      v62 = v34;
      v42 = v330;
      v40 = v336;
      v194 = v323;
      v43 = v326;
    }
  }

  v41 = [a1 reminderIDsToUndelete];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v42 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v42 = v358;
    v43 = v359;
    v44 = v360;
    v45 = v361;
    v40 = v362;
  }

  else
  {
    v45 = 0;
    v161 = -1 << *(v42 + 32);
    v43 = v42 + 56;
    v162 = ~v161;
    v163 = -v161;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    else
    {
      v164 = -1;
    }

    v40 = v164 & *(v42 + 56);
    v44 = v162;
  }

  v165 = (v44 + 64) >> 6;
  v322 = v165;
  v325 = v43;
  v329 = v42;
  while (v42 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_132;
    }

    swift_dynamicCast();
    v178 = v368;
    v34 = v45;
    v177 = v40;
    if (!v368)
    {
      goto LABEL_132;
    }

LABEL_95:
    sub_100689A98(5u, v178, a4, off_1008D41D0, &qword_100939EE0);
    if (v5)
    {
      goto LABEL_136;
    }

    v335 = v177;
    v180 = v179;
    [v180 setList:a2];
    v181 = [v180 createResolutionTokenMapIfNecessary];
    if (qword_100935E28 != -1)
    {
      swift_once();
    }

    v182 = qword_100974D20;
    if (*(qword_100974D20 + 16) && (v183 = sub_100005F4C(0x44497473696CLL, 0xE600000000000000), (v184 & 1) != 0))
    {
      v166 = *(*(v182 + 56) + 16 * v183 + 8);
    }

    else
    {
      if (qword_100936128 != -1)
      {
        swift_once();
      }

      v185 = type metadata accessor for Logger();
      sub_100006654(v185, qword_100946C50);
      v186 = Logger.logObject.getter();
      v187 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v368 = v189;
        *v188 = 136315138;
        v166 = 0xE600000000000000;
        *(v188 + 4) = sub_10000668C(0x44497473696CLL, 0xE600000000000000, &v368);
        _os_log_impl(&_mh_execute_header, v186, v187, "Unknown ingestable key {key: %s}", v188, 0xCu);
        sub_10000607C(v189);
      }

      else
      {

        v166 = 0xE600000000000000;
      }

      v5 = 0;
    }

    v167 = String._bridgeToObjectiveC()();
    v166, v168, v169, v170, v171, v172, v173, v174;
    [v181 updateForKey:v167];

    v45 = v34;
    v42 = v329;
    v40 = v335;
    v165 = v322;
    v43 = v325;
  }

  v175 = v45;
  v176 = v40;
  v34 = v45;
  if (v40)
  {
LABEL_91:
    v177 = (v176 - 1) & v176;
    v178 = *(*(v42 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v176)))));
    if (!v178)
    {
      goto LABEL_132;
    }

    goto LABEL_95;
  }

  while (1)
  {
    v34 = v175 + 1;
    if (__OFADD__(v175, 1))
    {
      break;
    }

    if (v34 >= v165)
    {
      goto LABEL_132;
    }

    v176 = *(v43 + 8 * v34);
    ++v175;
    if (v176)
    {
      goto LABEL_91;
    }
  }

LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:

LABEL_212:
  v40, v314, v315, v316, v317, v318, v319, v320;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006AA1E0(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5104(v7, &off_1008DFE60, sub_10036644C, &unk_10094F2B0, &qword_1007B4E70);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006AA2B0(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5104(v7, &off_1008E0058, sub_100366488, &unk_10094F350, &qword_1007B4F00);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

uint64_t sub_1006AA380(void *a1, void *a2)
{
  v3 = v2;
  aBlock[4] = sub_1005E2234;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005E2238;
  aBlock[3] = &unk_1008FA0F8;
  v6 = _Block_copy(aBlock);

  v7 = [a2 sortedArrayWithOptions:16 usingComparator:v6];
  _Block_release(v6);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v50 = a1;
  aBlock[7] = v2;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[0] = v8;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
  sub_10000CB48(&qword_1009418B0, &qword_10093CB40, &qword_1007A4450, &protocol conformance descriptor for [A]);
  v6 = Sequence.elements<A>(ofType:)();
  v8, v9, v10, v11, v12, v13, v14, v15;
  aBlock[0] = &_swiftEmptyArrayStorage;
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_21:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_4;
  }

  v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v24 = 0;
  v25 = &_swiftEmptyArrayStorage;
  while (v23 != v24)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v3 + 16))
      {
        goto LABEL_19;
      }

      v26 = *(v6 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v29 = [v26 remObjectID];

    ++v24;
    if (v29)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v25 = aBlock[0];
      v24 = v28;
    }
  }

  v6, v16, v17, v18, v19, v20, v21, v22;
  v30 = sub_100270964(v25);
  v25, v31, v32, v33, v34, v35, v36, v37;
  v38 = objc_allocWithZone(NSOrderedSet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v30, v40, v41, v42, v43, v44, v45, v46;
  v47 = [v38 initWithArray:isa];

  v48 = [v50 isEqual:v47];
  if (v48)
  {
    v50;
  }

  return v48 ^ 1;
}

void sub_1006AA6EC()
{
  v250 = type metadata accessor for UUID();
  v247 = *(v250 - 8);
  __chkstk_darwin(v250, v0);
  v249 = &v246 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v255 = (&v246 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5, v6);
  v251 = &v246 - v7;
  *&v260 = type metadata accessor for Date();
  v258 = *(v260 - 8);
  __chkstk_darwin(v260, v8);
  v254 = &v246 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v10 - 8, v11);
  v259 = (&v246 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v14);
  v16 = &v246 - v15;
  v17 = type metadata accessor for NSFastEnumerationIterator();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v246 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = &_swiftEmptyArrayStorage;
  v271 = &_swiftEmptyArrayStorage;
  NSOrderedSet.makeIterator()();
  sub_1006ABE80(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v269)
  {
    v263 = &_swiftEmptyArrayStorage;
    do
    {
      sub_100005EE0(&v268, &v266);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      if ((swift_dynamicCast() & 1) != 0 && v267)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v270 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v270 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v265 = *((v270 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v263 = v270;
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v269);
  }

  else
  {
    v263 = &_swiftEmptyArrayStorage;
  }

  (*(v18 + 8))(v21, v17);
  v22 = v263;
  v248 = v263 >> 62;
  if (v263 >> 62)
  {
    goto LABEL_189;
  }

  v264 = (v263 & 0xFFFFFFFFFFFFFF8);
  v23 = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v23;
  while (2)
  {
    v25 = 0;
    v265 = v22 & 0xC000000000000001;
    v261 = &v22->clientIdentity[16];
    v262 = v24;
    v26 = v24 - v23;
    v27 = -1;
    v28 = &selRef_hack_willSaveHandled;
    while (1)
    {
      v29 = v25 + v23;
      if (!(v25 + v23))
      {
        break;
      }

      v30 = v29 - 1;
      if (__OFSUB__(v29, 1))
      {
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
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
LABEL_185:
        __break(1u);
        goto LABEL_186;
      }

      if (v265)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

        if (v30 >= *v264->clientIdentity)
        {
          goto LABEL_178;
        }

        v31 = v261[v30];
      }

      v32 = v31;
      v33 = [v31 displayOrder];
      v34 = [v32 icsDisplayOrder];

      v35 = v34 > 0 || v33 >= v27;
      if (v35)
      {
        v37 = v262;
        v26 = v25 + v262;
        goto LABEL_22;
      }

      v36 = v25 + v262;
      v25 = (v25 - 1);
      v27 = v33;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_179;
      }
    }

    v37 = v262;
LABEL_22:
    v38 = v255;
    if (v26 >= v37)
    {
      goto LABEL_30;
    }

    if (v265)
    {
      goto LABEL_196;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      return;
    }

    if (v26 >= *v264->clientIdentity)
    {
      goto LABEL_198;
    }

    for (i = v261[v26]; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v40 = i;
      v41 = [i displayOrder];

      if (v41)
      {
        if (v265)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_201;
          }

          if (v26 >= *v264->clientIdentity)
          {
            goto LABEL_202;
          }

          v42 = v261[v26];
        }

        v58 = v42;
        v59 = [v42 displayOrder];

        v57 = v59 - 1;
        if (!v59)
        {
          goto LABEL_199;
        }
      }

      else
      {
LABEL_30:
        if (v23)
        {
          v26 = 0;
          v43 = 0;
          v257 = (v258 + 56);
          v25 = (v258 + 48);
          v253 = (v258 + 16);
          v252 = (v258 + 8);
          v22 = v260;
          v44 = v259;
          v256 = v16;
          v258 = v23;
          v38 = qword_100795AE0;
          while (1)
          {
            if (v265)
            {
              v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v26 >= *v264->clientIdentity)
              {
                goto LABEL_181;
              }

              v45 = *&v263->clientIdentity[8 * v26 + 16];
            }

            v46 = v45;
            v28 = (v26 + 1);
            if (__OFADD__(v26, 1))
            {
              goto LABEL_180;
            }

            v47 = [v45 creationDate];
            if (v47)
            {
              v48 = v47;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v44 = v259;
              v22 = v260;
              v49 = 0;
            }

            else
            {
              v49 = 1;
            }

            (*v257)(v44, v49, 1, v22);
            v50 = v16;
            v51 = v16;
            v16 = &unk_100938850;
            sub_100031B58(v44, v50, &unk_100938850, qword_100795AE0);
            if ((v25->super.isa)(v51, 1, v22))
            {
              sub_1000050A4(v51, &unk_100938850, qword_100795AE0);

              v52 = 0.0;
            }

            else
            {
              v53 = v254;
              (*v253)(v254, v51, v22);
              sub_1000050A4(v51, &unk_100938850, qword_100795AE0);
              Date.timeIntervalSince1970.getter();
              v22 = v260;
              v55 = v54;
              v56 = v53;
              v44 = v259;
              (v252->isa)(v56, v260);

              v52 = 1.84467441e19;
              if (v55 <= 1.84467441e19)
              {
                v52 = v55;
              }

              if (v55 <= 0.0)
              {
                v52 = 0.0;
              }
            }

            v23 = v258;
            if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_182;
            }

            if (v52 <= -1.0)
            {
              goto LABEL_183;
            }

            if (v52 >= 1.84467441e19)
            {
              goto LABEL_184;
            }

            if (v43 <= v52)
            {
              v43 = v52;
            }

            ++v26;
            v16 = v256;
            if (v28 == v258)
            {
              goto LABEL_60;
            }
          }
        }

        v43 = 0;
LABEL_60:
        v35 = __CFADD__(v43, 1);
        v57 = (v43 + 1);
        v22 = v263;
        if (v35)
        {
          goto LABEL_191;
        }

        v26 = v262;
        v38 = v255;
      }

      if (qword_1009366B0 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      v61 = sub_100006654(v60, qword_10094EE30);

      *&v260 = v61;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v62, v63))
      {
        break;
      }

      v22, v72, v73, v74, v75, v76, v77, v78;
      if (!v23)
      {
        goto LABEL_134;
      }

LABEL_72:
      if (v265)
      {
        goto LABEL_192;
      }

      if (*v264->clientIdentity)
      {
        v86 = *v261;
        goto LABEL_75;
      }

      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      ;
    }

    v25 = swift_slowAlloc();
    LODWORD(v25->super.isa) = 134218496;
    if (v248)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v71 = *v264->clientIdentity;
    }

    *(&v25->super.isa + 4) = v71;
    v22, v64, v65, v66, v67, v68, v69, v70;
    *&v25->storeController[4] = 2048;
    *&v25->storeController[6] = v26;
    *&v25->clientIdentity[6] = 2048;
    *&v25->clientIdentity[8] = v57;
    _os_log_impl(&_mh_execute_header, v62, v63, "Going to back propagate ordering changes to CD reminders {remindersCount: %ld, startIndexToKeepUntouched: %ld, maxDisplayOrder: %lu}", v25, 0x20u);

    if (v23)
    {
      goto LABEL_72;
    }

LABEL_134:
    v88 = 0;
    v89 = v262;
    if ((v26 & 0x8000000000000000) != 0)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      v28, v79, v80, v81, v82, v83, v84, v85;
      v25, v149, v150, v151, v152, v153, v154, v155;
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        v148 = "backPropagateOrderingChangesToICSDisplayOrder: Failed to obtain an managedObjextContext from a changed reminder";
LABEL_138:
        _os_log_impl(&_mh_execute_header, v145, v146, v148, v147, 2u);
      }

      goto LABEL_139;
    }

LABEL_76:
    v25 = &_swiftEmptyArrayStorage;
    if (!v26)
    {
      v28 = &_swiftEmptyArrayStorage;
      goto LABEL_127;
    }

    v23 = v89 - 1;
    if (__OFSUB__(v89, 1))
    {
      goto LABEL_194;
    }

    if (!v265 && v26 > *v264->clientIdentity)
    {
      goto LABEL_195;
    }

    v261 = v57;
    v90 = 0;
    v22 = 0;
    v91 = &_swiftEmptyArrayStorage;
    while (2)
    {
      v16 = v90 + 1;
      if (!v265)
      {
        v57 = (&v263->super.isa + v90);
        v92 = *(v57 + 4);
        if (v90 >= v23)
        {
          goto LABEL_92;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_187;
        }

        if (v16 >= *v264->clientIdentity)
        {
          goto LABEL_188;
        }

        v93 = *(v57 + 5);
LABEL_90:
        v57 = v93;
        v94 = [v93 displayOrder];

        if (v22 >= v88)
        {
          goto LABEL_94;
        }

LABEL_93:
        if (v88 >= v94)
        {
          goto LABEL_94;
        }

        goto LABEL_81;
      }

      v57 = v263;
      v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v90 < v23)
      {
        v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_90;
      }

LABEL_92:
      v94 = -1;
      if (v22 < v88)
      {
        goto LABEL_93;
      }

LABEL_94:
      v35 = __CFADD__(v22, 1);
      v22 = (v22 + 1);
      if (v35)
      {
        goto LABEL_185;
      }

      if (v22 == v88)
      {
LABEL_81:

        v22 = v88;
        goto LABEL_82;
      }

      v95 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_100367E80(0, (*v91->clientIdentity + 1), 1, v91);
      }

      v97 = *v91->clientIdentity;
      v96 = *&v91->clientIdentity[8];
      if (v97 >= v96 >> 1)
      {
        v91 = sub_100367E80((v96 > 1), (v97 + 1), 1, v91);
      }

      *v91->clientIdentity = v97 + 1;
      v98 = &v91->super.isa + 3 * v97;
      v98[4] = v95;
      v98[5] = v88;
      v98[6] = v22;
      v57 = [(objc_class *)v95 objectID];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v271 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v271 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v25 = v271;
LABEL_82:
      v88 = v94;
      v90 = v16;
      if (v26 != v16)
      {
        continue;
      }

      break;
    }

    v99 = v261;
    if (v261 >= v22)
    {
      v22 = v263;
      goto LABEL_126;
    }

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v57 = swift_slowAlloc();
      *v57 = 134218240;
      *(v57 + 4) = v99;
      *(v57 + 6) = 2048;
      *(v57 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v100, v101, "Back propagating ordering changes: display order has gone too large in first try. Going to reset from 1 {maxDisplayOrder: %lu, largestDisplayOrder: %lu}", v57, 0x16u);
    }

    v91, v102, v103, v104, v105, v106, v107, v108;

    v25, v109, v110, v111, v112, v113, v114, v115;
    v271 = &_swiftEmptyArrayStorage;
    v116 = v262;
    if (!v265 && v26 > *v264->clientIdentity)
    {
      goto LABEL_203;
    }

    v117 = 0;
    v25 = &_swiftEmptyArrayStorage;
    v91 = &_swiftEmptyArrayStorage;
    v22 = v263;
    do
    {
      while (1)
      {
        v118 = v265 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *&v22->clientIdentity[8 * v117 + 16];
        v119 = v118;
        v117 = (v117 + 1);
        v120 = [v118 displayOrder];
        if (v117 != v120)
        {
          break;
        }

        if (v26 == v117)
        {
          goto LABEL_124;
        }
      }

      v121 = v120;
      v122 = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_100367E80(0, (*v91->clientIdentity + 1), 1, v91);
      }

      v124 = *v91->clientIdentity;
      v123 = *&v91->clientIdentity[8];
      if (v124 >= v123 >> 1)
      {
        v91 = sub_100367E80((v123 > 1), (v124 + 1), 1, v91);
      }

      *v91->clientIdentity = v124 + 1;
      v125 = &v91->super.isa + 3 * v124;
      v125[4] = v122;
      v125[5] = v121;
      v125[6] = v117;
      v57 = [(objc_class *)v122 objectID];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v271 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v271 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v25 = v271;
    }

    while (v26 != v117);
LABEL_124:
    if (v116 < v26)
    {
      goto LABEL_200;
    }

    if (v26 != v116)
    {
      v16 = 24;
      v28 = v91;
      v38 = v255;
      while (1)
      {
        if (v265)
        {
          v156 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *v264->clientIdentity)
          {
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_75:
            v87 = v86;
            v88 = [v86 displayOrder];

            v89 = v262;
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_135;
            }

            goto LABEL_76;
          }

          v156 = *&v22->clientIdentity[8 * v26 + 16];
        }

        v157 = v156;
        v158 = [v156 displayOrder];
        if (v158 > v26)
        {

          goto LABEL_127;
        }

        v159 = v158;
        v160 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_100367E80(0, (*v28->clientIdentity + 1), 1, v28);
        }

        v162 = *v28->clientIdentity;
        v161 = *&v28->clientIdentity[8];
        if (v162 >= v161 >> 1)
        {
          v28 = sub_100367E80((v161 > 1), (v162 + 1), 1, v28);
        }

        ++v26;
        *v28->clientIdentity = v162 + 1;
        v163 = &v28->super.isa + 3 * v162;
        v163[4] = v160;
        v163[5] = v159;
        v163[6] = v26;
        v57 = [(objc_class *)v160 objectID];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v271 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v271 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v25 = v271;
        if (v116 == v26)
        {
          goto LABEL_127;
        }
      }
    }

LABEL_126:
    v28 = v91;
    v38 = v255;
LABEL_127:
    v22, v79, v80, v81, v82, v83, v84, v85;
    if (!*v28->clientIdentity)
    {
      v28, v126, v127, v128, v129, v130, v131, v132;
      v25, v138, v139, v140, v141, v142, v143, v144;
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        v148 = "Produced empty change logs when trying to back propagated ordering changes to CD reminders, maybe a bug or should shortcut earlier.";
        goto LABEL_138;
      }

LABEL_139:

      return;
    }

    v133 = [*&v28->clientIdentity[16] managedObjectContext];
    if (!v133)
    {
      goto LABEL_136;
    }

    v134 = v133;
    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    v265 = sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_100791300;
    *(v135 + 56) = sub_1000F5104(&qword_100937028, &qword_100791C10);
    *(v135 + 64) = sub_10000CB48(&unk_10094F0D0, &qword_100937028, &qword_100791C10, &protocol conformance descriptor for [A]);
    *(v135 + 32) = v25;
    v136 = NSPredicate.init(format:_:)();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v16 = [objc_allocWithZone(NSFetchRequest) init];
    v137 = [swift_getObjCClassFromMetadata() entity];
    [v16 setEntity:v137];

    [v16 setAffectedStores:0];
    [v16 setPredicate:v136];
    v164 = NSManagedObjectContext.fetch<A>(_:)();

    v164, v165, v166, v167, v168, v169, v170, v171;
    v172 = *v28->clientIdentity;
    if (v172)
    {
      v173 = &v28->clientIdentity[32];
      do
      {
        v174 = *(v173 - 2);
        v175 = *v173;
        v173 += 24;
        [v174 setDisplayOrder:v175];
        --v172;
      }

      while (v172);
    }

    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.info.getter();
    v28, v178, v179, v180, v181, v182, v183, v184;
    if (os_log_type_enabled(v176, v177))
    {
      LODWORD(v256) = v177;
      v257 = v134;
      v192 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      *&v268 = v253;
      v254 = v192;
      *v192 = 136315138;
      v200 = *v28->clientIdentity;
      if (v200)
      {
        v252 = v176;
        *&v266 = &_swiftEmptyArrayStorage;
        sub_100253B24(0, v200, 0);
        v201 = 0;
        v202 = v266;
        v261 = (v247 + 48);
        v262 = (v247 + 56);
        v259 = (v247 + 16);
        v258 = v247 + 8;
        v203 = &v28->clientIdentity[32];
        v22 = &unk_100939D90;
        v260 = xmmword_100791340;
        v204 = v250;
        v263 = v200;
        v264 = v28;
        while (v201 < *v28->clientIdentity)
        {
          v205 = *(v203 - 1);
          v206 = *v203;
          v207 = [*(v203 - 2) identifier];
          if (v207)
          {
            v208 = v207;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v209 = 0;
          }

          else
          {
            v209 = 1;
          }

          (*v262)(v38, v209, 1, v204);
          v210 = v251;
          sub_100031B58(v38, v251, &unk_100939D90, "8\n\r");
          if ((*v261)(v210, 1, v204))
          {
            sub_1000050A4(v210, &unk_100939D90, "8\n\r");
            v211 = 0;
            v212 = 0;
          }

          else
          {
            v213 = v249;
            (*v259)(v249, v210, v204);
            sub_1000050A4(v210, &unk_100939D90, "8\n\r");
            v214 = UUID.uuidString.getter();
            v204 = v250;
            v211 = v214;
            v212 = v215;
            (*v258)(v213, v250);
          }

          v216 = swift_allocObject();
          *(v216 + 16) = v260;
          *(v216 + 56) = &type metadata for UInt;
          *(v216 + 64) = &protocol witness table for UInt;
          *(v216 + 72) = v206;
          *(v216 + 32) = v205;
          *(v216 + 96) = &type metadata for UInt;
          *(v216 + 104) = &protocol witness table for UInt;
          v16 = String.init(format:_:)();
          v224 = v217;
          *&v266 = v202;
          v226 = *v202->clientIdentity;
          v225 = *&v202->clientIdentity[8];
          if (v226 >= v225 >> 1)
          {
            sub_100253B24((v225 > 1), v226 + 1, 1);
            v204 = v250;
            v202 = v266;
          }

          v201 = (v201 + 1);
          *v202->clientIdentity = v226 + 1;
          v227 = &v202->super.isa + 4 * v226;
          v227[4] = v211;
          v227[5] = v212;
          v227[6] = v16;
          v227[7] = v224;
          v203 += 24;
          v28 = v264;
          v38 = v255;
          v22 = &unk_100939D90;
          if (v263 == v201)
          {
            v264, v217, v218, v219, v220, v221, v222, v223;
            v176 = v252;
            goto LABEL_174;
          }
        }

LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        v264 = (v22 & 0xFFFFFFFFFFFFFF8);
        v24 = _CocoaArrayWrapper.endIndex.getter();
        v23 = _CocoaArrayWrapper.endIndex.getter();
        continue;
      }

      v28, v193, v194, v195, v196, v197, v198, v199;
      v202 = &_swiftEmptyArrayStorage;
LABEL_174:
      sub_1000F5104(&qword_10093ECC8, &qword_1007B4CD0);
      v228 = Array.description.getter();
      v230 = v229;
      v202, v229, v231, v232, v233, v234, v235, v236;
      v237 = sub_10000668C(v228, v230, &v268);
      v230, v238, v239, v240, v241, v242, v243, v244;
      v245 = v254;
      *(v254 + 4) = v237;
      _os_log_impl(&_mh_execute_header, v176, v256, "Back propagated ordering changes to CD reminders - {changes: %s}", v245, 0xCu);
      sub_10000607C(v253);
    }

    else
    {
      v28, v185, v186, v187, v188, v189, v190, v191;
    }

    break;
  }
}

uint64_t sub_1006ABE80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006ABFBC()
{
  result = qword_10094F148;
  if (!qword_10094F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F148);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006ACAFC(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008DF688, sub_1003663E8, &qword_10094F640, &qword_1007B5130);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_1006ACBCC(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (qword_100936008 != -1)
  {
    goto LABEL_68;
  }

LABEL_2:
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100945730);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v7, v12, v13, v14, v15, v16, v17, v18;
  v19 = os_log_type_enabled(v10, v11);
  v167 = v5;
  v175 = a1;
  v162 = v4;
  v165 = a1 >> 62;
  if (v19)
  {
    v5 = swift_slowAlloc();
    v169[0] = swift_slowAlloc();
    *v5 = 136446978;
    *(v5 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v169);
    *(v5 + 12) = 2048;
    v168 = v8;
    if (!(a1 >> 62))
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_71;
  }

  a1, v40, v41, v42, v43, v44, v45, v46;
  while (1)
  {
    v7 = v165 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = &_swiftEmptyArrayStorage;
    if (!v7)
    {
      break;
    }

    v169[0] = &_swiftEmptyArrayStorage;
    v10 = v169;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      v5 = a1 & 0xC000000000000001;
      v168 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v48 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v5)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v168 + 16))
          {
            goto LABEL_66;
          }

          v49 = *&a1->clientIdentity[8 * v4 + 16];
        }

        v50 = v49;
        v8 = sub_1005E45B0([v49 remObjectID]);

        if (v3)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v175;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
        if (v48 == v7)
        {
          v47 = v169[0];
          v5 = v167;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_71:
    v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v5 + 14) = v27;
    a1, v20, v21, v22, v23, v24, v25, v26;
    *(v5 + 22) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v28 = [swift_getObjCClassFromMetadata() description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v30;

    v31 = v29;
    a1 = v175;
    v32 = sub_10000668C(v31, v8, v169);
    v8, v33, v34, v35, v36, v37, v38, v39;
    *(v5 + 24) = v32;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_10000668C(v168, v7, v169);
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
    swift_arrayDestroy();

    v5 = v167;
  }

LABEL_20:
  v51 = sub_10065E91C(v47, v5);
  v47, v52, v53, v54, v55, v56, v57, v58;
  if (!v3)
  {
    if (v165)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v161 = v51;
    swift_beginAccess();
    swift_beginAccess();
    if (v4)
    {
      v66 = 0;
      v164 = a1 & 0xFFFFFFFFFFFFFF8;
      v166 = a1 & 0xC000000000000001;
      v163 = v4;
      while (1)
      {
        if (v166)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v68 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v66 >= *(v164 + 16))
          {
            goto LABEL_67;
          }

          v67 = *&a1->clientIdentity[8 * v66 + 16];
          v68 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }
        }

        v69 = v67;
        v7 = sub_1005E45B0([v69 remObjectID]);
        v168 = v68;

        v70 = *(v5 + 48);
        if ((v70 & 0xC000000000000001) != 0)
        {
          if (v70 < 0)
          {
            v8 = *(v5 + 48);
          }

          else
          {
            v8 = (v70 & 0xFFFFFFFFFFFFFF8);
          }

          v71 = v7;

          v72 = __CocoaDictionary.lookup(_:)();
          if (!v72)
          {
            goto LABEL_48;
          }

          v170 = v72;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v8 = v169[0];
        }

        else
        {
          if (!*(v70 + 16))
          {
            goto LABEL_49;
          }

          v71 = v7;

          v73 = sub_10002B924(v71);
          if ((v74 & 1) == 0)
          {
LABEL_48:

            v70, v96, v97, v98, v99, v100, v101, v102;
LABEL_49:
            v7 = v7;
            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v103, v104))
            {
              v8 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              *v8 = 138543362;
              *(v8 + 4) = v7;
              *v105 = v7;
              v7 = v7;
              _os_log_impl(&_mh_execute_header, v103, v104, "Skipping afterSaveAction() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v8, 0xCu);
              sub_1000050A4(v105, &unk_100938E70, &unk_100797230);
              v5 = v167;
            }

            else
            {
            }

            goto LABEL_29;
          }

          v8 = *(*(v70 + 56) + 8 * v73);
        }

        v70, v75, v76, v77, v78, v79, v80, v81;
        if (!v8)
        {
          goto LABEL_49;
        }

        if (!*(v161 + 16) || (v82 = sub_100393C74(), (v83 & 1) == 0))
        {
          v106 = v7;
          v7 = v162;

          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            *v109 = 136446466;
            v110 = *(v162 + 40);
            v171 = *(v162 + 24);
            v172[0] = v110;
            *(v172 + 14) = *(v162 + 54);
            sub_100009DAC(&v171, v169);
            v159 = v108;
            v111 = sub_1000063E8();
            v113 = v112;
            sub_1005812D4(&v171);
            v114 = sub_10000668C(v111, v113, &v170);
            v113, v115, v116, v117, v118, v119, v120, v121;
            *(v109 + 4) = v114;
            *(v109 + 12) = 2080;
            v122 = [v106 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v7 = v123;

            v124 = sub_10000668C(v8, v7, &v170);
            v7, v125, v126, v127, v128, v129, v130, v131;
            *(v109 + 14) = v124;
            _os_log_impl(&_mh_execute_header, v107, v159, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v109, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v5 = v167;
          goto LABEL_29;
        }

        v84 = *(*(v161 + 56) + 8 * v82);
        v85 = *(v5 + 56);
        v160 = v84;
        if (!*(v85 + 16))
        {
          break;
        }

        v8 = v7;
        v86 = v84;

        sub_10002B924(v8);
        v88 = v87;

        v85, v89, v90, v91, v92, v93, v94, v95;
        if ((v88 & 1) == 0)
        {
          goto LABEL_56;
        }

        v5 = v167;
LABEL_29:
        v4 = v163;
        ++v66;
        a1 = v175;
        if (v168 == v163)
        {
          goto LABEL_63;
        }
      }

      v132 = v84;
LABEL_56:
      v8 = v7;

      v7 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v133))
      {
        v134 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *v134 = 136446466;
        v135 = *(v162 + 40);
        v173 = *(v162 + 24);
        v174[0] = v135;
        *(v174 + 14) = *(v162 + 54);
        sub_100009DAC(&v173, v169);
        v136 = sub_1000063E8();
        v138 = v137;
        sub_1005812D4(&v173);
        v139 = sub_10000668C(v136, v138, &v170);
        v138, v140, v141, v142, v143, v144, v145, v146;
        *(v134 + 4) = v139;
        *(v134 + 12) = 2080;
        v147 = [v8 description];
        v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = v8;
        v8 = v149;

        v150 = sub_10000668C(v148, v8, &v170);
        v8, v151, v152, v153, v154, v155, v156, v157;
        *(v134 + 14) = v150;
        _os_log_impl(&_mh_execute_header, v7, v133, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v134, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v5 = v167;
      goto LABEL_29;
    }

LABEL_63:
    v161, v59, v60, v61, v62, v63, v64, v65;
  }
}

id sub_1006AD658@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E46A0;
  return v2;
}

void sub_1006AD894(unint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = v6;
  v9 = a2;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (qword_100936008 != -1)
  {
    goto LABEL_69;
  }

LABEL_2:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  LOBYTE(v15) = static os_log_type_t.info.getter();
  v11, v16, v17, v18, v19, v20, v21, v22;
  v23 = os_log_type_enabled(v14, v15);
  v24 = a1 >> 62;
  v171 = v9;
  v181 = a1;
  v169 = a1 >> 62;
  v167 = v8;
  if (v23)
  {
    v172 = v12;
    v12 = swift_slowAlloc();
    v175[0] = swift_slowAlloc();
    *v12 = 136446978;
    *(v12 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v175);
    *(v12 + 6) = 2048;
    if (!v24)
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_72;
  }

  a1, v46, v47, v48, v49, v50, v51, v52;
  v11 = v8;
  while (1)
  {
    v15 = v24 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &_swiftEmptyArrayStorage;
    if (!v15)
    {
      break;
    }

    v175[0] = &_swiftEmptyArrayStorage;
    v14 = v175;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = (a1 & 0xC000000000000001);
      v172 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        a1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v172 + 16))
          {
            goto LABEL_67;
          }

          v53 = *(v181 + 8 * v11 + 32);
        }

        v54 = v53;
        v8 = sub_1005E3810([v53 remObjectID], a3, a4);

        if (v7)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = *(v175[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v11;
        if (a1 == v15)
        {
          v8 = v175[0];
          v55 = a5;
          v9 = v171;
          v24 = v169;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_72:
    v32 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v12 + 14) = v32;
    a1, v25, v26, v27, v28, v29, v30, v31;
    *(v12 + 11) = 2082;
    sub_1000060C8(0, a3, a4);
    v33 = [swift_getObjCClassFromMetadata() description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_10000668C(v34, v36, v175);
    v38 = v36;
    a1 = v181;
    v38, v39, v40, v41, v42, v43, v44, v45;
    *(v12 + 3) = v37;
    *(v12 + 16) = 2082;
    *(v12 + 34) = sub_10000668C(v172, v11, v175);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v12, 0x2Au);
    swift_arrayDestroy();

    v11 = v167;
    v9 = v171;
    v24 = v169;
  }

  v55 = a5;
LABEL_21:
  v56 = v55(v8, v9);
  v8, v57, v58, v59, v60, v61, v62, v63;
  if (!v7)
  {
    v64 = v181;
    if (v24)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v65 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v165 = v56;
    swift_beginAccess();
    swift_beginAccess();
    if (v65)
    {
      v11 = 0;
      a5 = v64 & 0xFFFFFFFFFFFFFF8;
      v170 = v64 & 0xC000000000000001;
      do
      {
        if (v170)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v74 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v11 >= *(a5 + 16))
          {
            goto LABEL_68;
          }

          v73 = *(v64 + 8 * v11 + 32);
          v74 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
LABEL_63:
            __break(1u);
            break;
          }
        }

        v75 = v73;
        a1 = sub_1005E3810([v75 remObjectID], a3, a4);
        v172 = v74;

        v76 = *(v9 + 48);
        if ((v76 & 0xC000000000000001) != 0)
        {
          if (v76 < 0)
          {
            v8 = *(v9 + 48);
          }

          else
          {
            v8 = v76 & 0xFFFFFFFFFFFFFF8;
          }

          v77 = a1;

          v78 = __CocoaDictionary.lookup(_:)();
          if (!v78)
          {
            goto LABEL_46;
          }

          v176 = v78;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v8 = v175[0];
        }

        else
        {
          if (!*(v76 + 16))
          {
            goto LABEL_47;
          }

          v77 = a1;

          v79 = sub_10002B924(v77);
          if ((v80 & 1) == 0)
          {
LABEL_46:

            v76, v100, v101, v102, v103, v104, v105, v106;
LABEL_47:
            v12 = a1;
            v107 = Logger.logObject.getter();
            a1 = static os_log_type_t.info.getter();

            if (!os_log_type_enabled(v107, a1))
            {

LABEL_54:
              goto LABEL_55;
            }

            v8 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *v8 = 138543362;
            *(v8 + 4) = v12;
            *v108 = v12;
            v12 = v12;
            _os_log_impl(&_mh_execute_header, v107, a1, "Skipping afterSaveAction() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v8, 0xCu);
            sub_1000050A4(v108, &unk_100938E70, &unk_100797230);

LABEL_53:
            goto LABEL_54;
          }

          v8 = *(*(v76 + 56) + 8 * v79);
        }

        v76, v81, v82, v83, v84, v85, v86, v87;
        if (!v8)
        {
          goto LABEL_47;
        }

        if (!*(v165 + 16) || (v88 = a6(a1), (v89 & 1) == 0))
        {
          v109 = a1;
          v8 = v167;

          v12 = Logger.logObject.getter();
          v110 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v12, v110))
          {
            a1 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            *a1 = 136446466;
            v111 = *(v167 + 40);
            v177 = *(v167 + 24);
            v178[0] = v111;
            *(v178 + 14) = *(v167 + 54);
            sub_100009DAC(&v177, v175);
            v162 = v110;
            v112 = sub_1000063E8();
            v114 = v113;
            sub_1005812D4(&v177);
            v115 = sub_10000668C(v112, v114, &v176);
            v114, v116, v117, v118, v119, v120, v121, v122;
            *(a1 + 4) = v115;
            *(a1 + 12) = 2080;
            v123 = [v109 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v160 = v109;
            v125 = v124;

            v126 = sub_10000668C(v8, v125, &v176);
            v125, v127, v128, v129, v130, v131, v132, v133;
            *(a1 + 14) = v126;
            _os_log_impl(&_mh_execute_header, v12, v162, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", a1, 0x16u);
            swift_arrayDestroy();

            goto LABEL_54;
          }

          goto LABEL_53;
        }

        v90 = *(*(v165 + 56) + 8 * v88);
        v91 = *(v171 + 56);
        if (!*(v91 + 16))
        {
          v134 = v90;
LABEL_58:
          v12 = a1;
          v8 = v167;

          a1 = Logger.logObject.getter();
          v135 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(a1, v135))
          {
            v164 = v12;
            v12 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            *v12 = 136446466;
            v136 = *(v167 + 40);
            v179 = *(v167 + 24);
            v180[0] = v136;
            *(v180 + 14) = *(v167 + 54);
            sub_100009DAC(&v179, v175);
            v159 = v135;
            v137 = sub_1000063E8();
            v139 = v138;
            sub_1005812D4(&v179);
            v140 = sub_10000668C(v137, v139, &v176);
            v139, v141, v142, v143, v144, v145, v146, v147;
            *(v12 + 4) = v140;
            *(v12 + 6) = 2080;
            v148 = [v164 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v161 = v90;
            v150 = v149;

            v151 = sub_10000668C(v8, v150, &v176);
            v150, v152, v153, v154, v155, v156, v157, v158;
            *(v12 + 14) = v151;
            _os_log_impl(&_mh_execute_header, a1, v159, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v12, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_55;
        }

        v12 = a1;
        v163 = v90;

        sub_10002B924(v12);
        v8 = v92;

        v91, v93, v94, v95, v96, v97, v98, v99;
        if ((v8 & 1) == 0)
        {
          goto LABEL_58;
        }

LABEL_55:
        v9 = v171;
        v64 = v181;
        ++v11;
      }

      while (v172 != v65);
    }

    v165, v66, v67, v68, v69, v70, v71, v72;
  }
}

void sub_1006AE350(unint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = v6;
  v9 = a2;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (qword_100936008 != -1)
  {
    goto LABEL_72;
  }

LABEL_2:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  LOBYTE(v15) = static os_log_type_t.info.getter();
  v11, v16, v17, v18, v19, v20, v21, v22;
  v23 = os_log_type_enabled(v14, v15);
  v24 = a1 >> 62;
  v179 = v9;
  v189 = a1;
  v177 = a1 >> 62;
  v175 = v8;
  if (v23)
  {
    v180 = v12;
    v12 = swift_slowAlloc();
    v183[0] = swift_slowAlloc();
    *v12 = 136446978;
    *(v12 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v183);
    *(v12 + 6) = 2048;
    if (!v24)
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_75;
  }

  a1, v46, v47, v48, v49, v50, v51, v52;
  v11 = v8;
  while (1)
  {
    v15 = v24 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &_swiftEmptyArrayStorage;
    if (!v15)
    {
      break;
    }

    v183[0] = &_swiftEmptyArrayStorage;
    v14 = v183;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = (a1 & 0xC000000000000001);
      v180 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        a1 = &v11->super.isa + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v180 + 16))
          {
            goto LABEL_70;
          }

          v53 = *(v189 + 8 * v11 + 32);
        }

        v54 = v53;
        v8 = sub_1005E3810([v53 remObjectID], a3, a4);

        if (v7)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = *(v183[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 = (v11 + 1);
        if (a1 == v15)
        {
          v8 = v183[0];
          v55 = a5;
          v9 = v179;
          v24 = v177;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_75:
    v32 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v12 + 14) = v32;
    a1, v25, v26, v27, v28, v29, v30, v31;
    *(v12 + 11) = 2082;
    sub_1000060C8(0, a3, a4);
    v33 = [swift_getObjCClassFromMetadata() description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_10000668C(v34, v36, v183);
    v38 = v36;
    a1 = v189;
    v38, v39, v40, v41, v42, v43, v44, v45;
    *(v12 + 3) = v37;
    *(v12 + 16) = 2082;
    *(v12 + 34) = sub_10000668C(v180, v11, v183);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v12, 0x2Au);
    swift_arrayDestroy();

    v11 = v175;
    v9 = v179;
    v24 = v177;
  }

  v55 = a5;
LABEL_21:
  v56 = v55(v8, v9);
  v8, v57, v58, v59, v60, v61, v62, v63;
  if (!v7)
  {
    v64 = v189;
    if (v24)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v65 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v173 = v56;
    swift_beginAccess();
    swift_beginAccess();
    if (v65)
    {
      v11 = 0;
      a5 = v64 & 0xFFFFFFFFFFFFFF8;
      v178 = v64 & 0xC000000000000001;
      do
      {
        if (v178)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v74 = &v11->super.isa + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v11 >= *(a5 + 16))
          {
            goto LABEL_71;
          }

          v73 = *(v64 + 8 * v11 + 32);
          v74 = &v11->super.isa + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_66:
            __break(1u);
            break;
          }
        }

        v75 = v73;
        a1 = sub_1005E3810([v75 remObjectID], a3, a4);
        v180 = v74;

        v76 = *(v9 + 48);
        if ((v76 & 0xC000000000000001) != 0)
        {
          if (v76 < 0)
          {
            v8 = *(v9 + 48);
          }

          else
          {
            v8 = (v76 & 0xFFFFFFFFFFFFFF8);
          }

          v77 = a1;

          v78 = __CocoaDictionary.lookup(_:)();
          if (!v78)
          {
            goto LABEL_46;
          }

          v184 = v78;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v8 = v183[0];
        }

        else
        {
          if (!*(v76 + 16))
          {
            goto LABEL_47;
          }

          v77 = a1;

          v79 = sub_10002B924(v77);
          if ((v80 & 1) == 0)
          {
LABEL_46:

            v76, v108, v109, v110, v111, v112, v113, v114;
LABEL_47:
            v12 = a1;
            v115 = Logger.logObject.getter();
            a1 = static os_log_type_t.info.getter();

            if (!os_log_type_enabled(v115, a1))
            {

LABEL_54:
              goto LABEL_55;
            }

            v8 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            LODWORD(v8->super.isa) = 138543362;
            *(&v8->super.isa + 4) = v12;
            *v116 = v12;
            v12 = v12;
            _os_log_impl(&_mh_execute_header, v115, a1, "Skipping afterSaveAction() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v8, 0xCu);
            sub_1000050A4(v116, &unk_100938E70, &unk_100797230);

LABEL_53:
            goto LABEL_54;
          }

          v8 = *(*(v76 + 56) + 8 * v79);
        }

        v76, v81, v82, v83, v84, v85, v86, v87;
        if (!v8)
        {
          goto LABEL_47;
        }

        if (!*(v173 + 16) || (v88 = a6(a1), (v89 & 1) == 0))
        {
          v117 = a1;
          v8 = v175;

          v12 = Logger.logObject.getter();
          v118 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v12, v118))
          {
            a1 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            *a1 = 136446466;
            v119 = *&v175->clientIdentity[24];
            v185 = *&v175->clientIdentity[8];
            v186[0] = v119;
            *(v186 + 14) = *&v175->clientIdentity[38];
            sub_100009DAC(&v185, v183);
            v171 = v118;
            v120 = sub_1000063E8();
            v122 = v121;
            sub_1005812D4(&v185);
            v123 = sub_10000668C(v120, v122, &v184);
            v122, v124, v125, v126, v127, v128, v129, v130;
            *(a1 + 4) = v123;
            *(a1 + 12) = 2080;
            v131 = [v117 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v169 = v117;
            v133 = v132;

            v134 = sub_10000668C(v8, v133, &v184);
            v133, v135, v136, v137, v138, v139, v140, v141;
            *(a1 + 14) = v134;
            _os_log_impl(&_mh_execute_header, v12, v171, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", a1, 0x16u);
            swift_arrayDestroy();

            goto LABEL_54;
          }

          goto LABEL_53;
        }

        v90 = *(*(v173 + 56) + 8 * v88);
        v9 = v179;
        v91 = *(v179 + 56);
        v172 = v90;
        if (!*(v91 + 16))
        {
          v142 = v90;
LABEL_60:
          v12 = a1;
          v8 = v175;

          a1 = Logger.logObject.getter();
          v143 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(a1, v143))
          {
            v144 = v12;
            v170 = v12;
            v12 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            *v12 = 136446466;
            v145 = *&v175->clientIdentity[24];
            v187 = *&v175->clientIdentity[8];
            v188[0] = v145;
            *(v188 + 14) = *&v175->clientIdentity[38];
            sub_100009DAC(&v187, v183);
            v168 = v143;
            v146 = sub_1000063E8();
            v148 = v147;
            sub_1005812D4(&v187);
            v149 = sub_10000668C(v146, v148, &v184);
            v148, v150, v151, v152, v153, v154, v155, v156;
            *(v12 + 4) = v149;
            *(v12 + 6) = 2080;
            v157 = [v144 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = v158;

            v160 = sub_10000668C(v8, v159, &v184);
            v159, v161, v162, v163, v164, v165, v166, v167;
            *(v12 + 14) = v160;
            _os_log_impl(&_mh_execute_header, a1, v168, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v12, 0x16u);
            swift_arrayDestroy();

            v9 = v179;
          }

          else
          {
          }

          goto LABEL_56;
        }

        v12 = a1;
        v8 = v90;

        sub_10002B924(v12);
        v93 = v92;

        if ((v93 & 1) == 0)
        {
          v91, v94, v95, v96, v97, v98, v99, v100;
          v9 = v179;
          goto LABEL_60;
        }

        v91, v101, v102, v103, v104, v105, v106, v107;
LABEL_55:
        v9 = v179;
LABEL_56:
        v64 = v189;
        v11 = (v11 + 1);
      }

      while (v180 != v65);
    }

    v173, v66, v67, v68, v69, v70, v71, v72;
  }
}

id sub_1006AEE1C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4790;
  return v2;
}

id sub_1006AEF24@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E47B8;
  return v2;
}

id sub_1006AF018@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E47E0;
  return v2;
}

id sub_1006AF10C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4808;
  return v2;
}

id sub_1006AF200@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4830;
  return v2;
}

id sub_1006AF308@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E46C8;
  return v2;
}

id sub_1006AF410@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4858;
  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006AF588(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F4B38(v7, &off_1008DF1C0, sub_1003663AC, &qword_10094F5D8, &unk_1007B50F0);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

uint64_t sub_1006AF85C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1006AF958@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4768;
  return v2;
}

id sub_1006AFA4C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4740;
  return v2;
}

id sub_1006AFB40@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4718;
  return v2;
}

id sub_1006AFC34@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E46F0;
  return v2;
}

uint64_t sub_1006AFC88()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006AFD60()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for REMListStorageCDIngestor.ValueKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD7)
  {
    goto LABEL_17;
  }

  if (a2 + 41 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 41) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 41;
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

      return (*a1 | (v4 << 8)) - 41;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 41;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v8 = v6 - 42;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMListStorageCDIngestor.ValueKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD7)
  {
    v4 = 0;
  }

  if (a2 > 0xD6)
  {
    v5 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
    *result = a2 + 41;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1006AFFF4()
{
  result = qword_10094F868;
  if (!qword_10094F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F868);
  }

  return result;
}

unint64_t sub_1006B0090()
{
  result = qword_10094F880;
  if (!qword_10094F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F880);
  }

  return result;
}

unint64_t sub_1006B012C()
{
  result = qword_10094F898;
  if (!qword_10094F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F898);
  }

  return result;
}

unint64_t sub_1006B01C8()
{
  result = qword_10094F8B0;
  if (!qword_10094F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F8B0);
  }

  return result;
}

double sub_1006B038C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v25 - v14;
  v16 = [v1 identifier];
  if (v16)
  {
    v17 = v16;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v10, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
  }

  sub_100100FB4(v10, v15);
  if ((*(v3 + 48))(v15, 1, v2))
  {
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v3 + 16))(v6, v15, v2);
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    v18 = UUID.uuidString.getter();
    v19 = v20;
    (*(v3 + 8))(v6, v2);
  }

  v21 = [v1 accountTypeHost];
  sub_10059EB10(v26);
  type metadata accessor for RDManualSortIDPersistenceHost();
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  result = *v26;
  v24 = v26[1];
  *(v22 + 40) = v26[0];
  *(v22 + 56) = v24;
  *(v22 + 72) = v27;
  return result;
}