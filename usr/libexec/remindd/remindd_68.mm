void sub_10062F878(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v660 = &v627 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v627 - v12;
  v14 = type metadata accessor for UUID();
  v661 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = &v627 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v627 - v20;
  v22 = a3[3];
  v662 = a3[2];
  v664 = v22;
  v23 = a3[4];
  v665 = v3;
  v24 = *(v3 + 72);
  v659 = a2;
  *&v667.clientIdentity[8] = v24;
  *&v667.clientIdentity[16] = a2;
  *v667.clientIdentity = &v667.clientIdentity[16];

  v25 = v666;
  v31 = sub_100759CB4(sub_1006B02C4, &v667, a1, v26, v27, v28, v29, v30);
  if (v25)
  {
    return;
  }

  v32 = v31;
  v653 = v24;
  v654 = v23;
  v655 = v21;
  v657 = v17;
  v656 = v14;
  v651 = v13;
  v658 = a3;
  v33 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_188;
  }

LABEL_3:
  v34 = type metadata accessor for Logger();
  v35 = sub_100006654(v34, qword_100945730);
  v36 = v32;

  v37 = v664;

  v663 = v35;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  v37, v40, v41, v42, v43, v44, v45, v46;
  v47 = os_log_type_enabled(v38, v39);
  v48 = (v32 >> 62);
  v666 = v32;
  if (v47)
  {
    v32 = swift_slowAlloc();
    v652 = swift_slowAlloc();
    *&v667.clientIdentity[16] = v652;
    *v32 = 136446978;
    *(v32 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v667.clientIdentity[16]);
    *(v32 + 12) = 2048;
    if (!v48)
    {
      v56 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_191;
  }

  v32, v76, v77, v78, v79, v80, v81, v82;
  while (1)
  {
    v662 = v48;
    v83 = v48 ? _CocoaArrayWrapper.endIndex.getter() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v650 = v34;
    if (!v83)
    {
      break;
    }

    *&v667.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v38 = &v667.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v83 & 0x8000000000000000) == 0)
    {
      v84 = 0;
      v85 = v36;
      v86 = v36 & 0xC000000000000001;
      v664 = (v85 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v32 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v86)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v84 >= *v664->clientIdentity)
          {
            goto LABEL_185;
          }

          v87 = *(v666 + 8 * v84 + 32);
        }

        v88 = v87;
        sub_1005E3810([v87 remObjectID], &unk_10093F770, off_1008D41E8);
        if (v33)
        {

          v666, v91, v92, v93, v94, v95, v96, v97;

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v84;
        if (v32 == v83)
        {
          v89 = *&v667.clientIdentity[16];
          v36 = v666;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_191:
    v56 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v32 + 14) = v56;
    v36, v49, v50, v51, v52, v53, v54, v55;
    *(v32 + 22) = 2082;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v57 = [swift_getObjCClassFromMetadata() description];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v36 = v666;
    v61 = sub_10000668C(v58, v60, &v667.clientIdentity[16]);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v32 + 24) = v61;
    *(v32 + 32) = 2082;
    *(v32 + 34) = sub_10000668C(v662, v664, &v667.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v38, v39, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v32, 0x2Au);
    swift_arrayDestroy();
  }

  v89 = &_swiftEmptyArrayStorage;
LABEL_22:
  v90 = *(v665 + 96);
  if (v90 <= 1)
  {
    if (v90)
    {
      if (v90 != 1)
      {
LABEL_195:
        v625 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        v626 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2, v625, v626);
        __break(1u);
        return;
      }

      v89, v69, v70, v71, v72, v73, v74, v75;
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v667.clientIdentity[16] = v140;
        *v139 = 136315138;
        v141 = [objc_opt_self() cdEntityName];
        v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = v143;

        v145 = sub_10000668C(v142, v144, &v667.clientIdentity[16]);
        v144, v146, v147, v148, v149, v150, v151, v152;
        *(v139 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v137, v138, "Skipping fetch during upsert {CDType: %s}", v139, 0xCu);
        sub_10000607C(v140);
      }

      v118 = v33;
      v115 = v657;
      v135 = v655;
      v153 = v662;
      v117 = sub_100390D34(&_swiftEmptyArrayStorage);
      if (!v153)
      {
        goto LABEL_34;
      }

LABEL_39:
      v136 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_40;
    }
  }

  else if ((v90 - 2) >= 3 && v90 != 4499 && v90 != 4599)
  {
    goto LABEL_195;
  }

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v667.clientIdentity[16] = v101;
    *v100 = 136315138;
    v102 = [objc_opt_self() cdEntityName];
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;

    v106 = v103;
    v36 = v666;
    v107 = sub_10000668C(v106, v105, &v667.clientIdentity[16]);
    v105, v108, v109, v110, v111, v112, v113, v114;
    *(v100 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v98, v99, "Performing fetch during upsert {CDType: %s}", v100, 0xCu);
    sub_10000607C(v101);
  }

  v115 = v657;
  v116 = v662;
  v117 = sub_10066AE78(v89, v658);
  v118 = v33;
  v89, v119, v120, v121, v122, v123, v124, v125;
  if (v33)
  {
    v134 = v36;
    goto LABEL_176;
  }

  v135 = v655;
  if (v116)
  {
    goto LABEL_39;
  }

LABEL_34:
  v136 = *((v666 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
  if (!v136)
  {
    goto LABEL_171;
  }

  v154 = 0;
  v155 = v666 & 0xC000000000000001;
  v156 = v666 & 0xFFFFFFFFFFFFFF8;
  v157 = (v666 + 32);
  v641 = (v661 + 8);
  v647 = 0x80000001007EA260;
  v646 = 0x80000001007EA240;
  v645 = 0x80000001007EA010;
  v644 = 0x80000001007E8D40;
  v643 = 0x80000001007E8C60;
  v635 = v661 + 56;
  v634 = (v661 + 48);
  *&v133 = 136446978;
  v632 = v133;
  *&v133 = 136446210;
  v648 = v133;
  *&v133 = 136447490;
  v633 = v133;
  *&v133 = 136447234;
  v631 = v133;
  v649 = v117;
  v639 = v136;
  v638 = v666 & 0xC000000000000001;
  v637 = v666 & 0xFFFFFFFFFFFFFF8;
  v636 = (v666 + 32);
  while (1)
  {
    if (v155)
    {
      v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v159 = __OFADD__(v154, 1);
      v160 = (&v154->isa + 1);
      if (v159)
      {
        goto LABEL_170;
      }
    }

    else
    {
      if (v154 >= *(v156 + 16))
      {
        __break(1u);
        goto LABEL_193;
      }

      v158 = *&v157[8 * v154];
      v159 = __OFADD__(v154, 1);
      v160 = (&v154->isa + 1);
      if (v159)
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }
    }

    v161 = v158;
    v652 = sub_1005E3810([v161 remObjectID], &unk_10093F770, off_1008D41E8);
    v662 = v118;
    if (v118)
    {
      v666, v162, v163, v164, v165, v166, v167, v168;
      v117, v583, v584, v585, v586, v587, v588, v589;

      return;
    }

    v640 = v160;

    v661 = v161;
    v169 = [v161 accountID];
    v170 = [v169 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = UUID.uuidString.getter();
    v173 = v172;
    v174 = v115;
    v175 = *v641;
    v176 = v135;
    v177 = v656;
    (*v641)(v176, v656);
    v178 = [objc_opt_self() localInternalAccountID];
    v179 = [v178 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v180 = UUID.uuidString.getter();
    v182 = v181;
    v664 = v175;
    (v175)(v174, v177);
    if (v171 == v180 && v173 == v182)
    {
      v182, v183, v184, v185, v186, v187, v188, v189;
      v173, v190, v191, v192, v193, v194, v195, v196;
      v197 = v666;
    }

    else
    {
      v198 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v182, v199, v200, v201, v202, v203, v204, v205;
      v173, v206, v207, v208, v209, v210, v211, v212;
      v197 = v666;
      if ((v198 & 1) == 0)
      {
        v214 = v662;
        v33 = v665;
        v32 = v654;
        v216 = v653;
        goto LABEL_58;
      }
    }

    v33 = v665;
    v213 = *(v665 + 68);
    v214 = v662;
    if (v213 >> 14 >= 2)
    {
      v32 = v654;
      if (v213 >> 14 == 2)
      {
        v215 = *(v665 + 64) | (*(v665 + 68) << 32);
      }

      else
      {
        v215 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v215 = 2147483519;
      v32 = v654;
    }

    sub_100009A40(2, v215);
    if (v214)
    {
      v197, v217, v218, v219, v220, v221, v222, v223;

      v134 = v649;
      goto LABEL_176;
    }

    v216 = v653;
LABEL_58:
    v224 = sub_100692848(v661, v216, &type metadata for REMSmartListStorageCDIngestor.ValueKey, sub_1005F53DC);
    v662 = v214;
    if (v214)
    {
      v197, v225, v226, v227, v228, v229, v230, v231;

      v649, v590, v591, v592, v593, v594, v595, v596;
      return;
    }

    v232 = v224;
    v240 = sub_1005F731C();
    v241 = v649;
    if (!*v649->clientIdentity)
    {
      break;
    }

    v242 = sub_100393C74();
    if ((v233 & 1) == 0)
    {
      break;
    }

    v642 = *(*&v241->clientIdentity[40] + 8 * v242);
LABEL_120:
    v316 = *(v232 + 16);
    v664 = v316;
    if (!v316)
    {
      goto LABEL_133;
    }

    for (i = 0; i != v316; i = (i + 1))
    {
      if (i >= *(v232 + 16))
      {
        goto LABEL_186;
      }

      if (((*(v33 + 64) | (*(v33 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v32 = i->clientIdentity[v232 + 16];
        v325 = Logger.logObject.getter();
        v326 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v325, v326))
        {
          v327 = swift_slowAlloc();
          v328 = swift_slowAlloc();
          *&v667.clientIdentity[16] = v328;
          *v327 = v648;
          LOBYTE(v668) = v32;
          v329 = String.init<A>(describing:)();
          v331 = v330;
          v332 = sub_10000668C(v329, v330, &v667.clientIdentity[16]);
          v331, v333, v334, v335, v336, v337, v338, v339;
          *(v327 + 4) = v332;
          v33 = v665;
          _os_log_impl(&_mh_execute_header, v325, v326, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v327, 0xCu);
          sub_10000607C(v328);
          v197 = v666;
        }

        v316 = v664;
      }

      LODWORD(v136) = *(v33 + 64);
      if (*(v33 + 68) >> 14 == 2 && (*(v33 + 64) & 1) == 0)
      {
        if (qword_1009367A0 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_173;
      }
    }

    v232, v317, v318, v319, v320, v321, v322, v323;
LABEL_133:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v341 = v652;
    v342 = v642;
    v343 = Logger.logObject.getter();
    v344 = static os_log_type_t.default.getter();

    v345 = os_log_type_enabled(v343, v344);
    v652 = v342;
    if (v345)
    {
      v629 = v344;
      v630 = v343;
      v346 = v33;
      v347 = swift_slowAlloc();
      v348 = swift_slowAlloc();
      v628 = swift_slowAlloc();
      v668 = v628;
      *v347 = v633;
      *(v347 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v668);
      *(v347 + 12) = 2082;
      v349 = *(v346 + 40);
      *&v667.dataAccessRequestsWriter[2] = *(v346 + 24);
      *&v667.coreSuggestionsHandler[2] = v349;
      *&v667.coreSuggestionsHandler[16] = *(v346 + 54);
      sub_100009DAC(&v667.dataAccessRequestsWriter[2], &v667.clientIdentity[16]);
      v350 = sub_1000063E8();
      v352 = v351;
      sub_1005812D4(&v667.dataAccessRequestsWriter[2]);
      v353 = sub_10000668C(v350, v352, &v668);
      v352, v354, v355, v356, v357, v358, v359, v360;
      *(v347 + 14) = v353;
      *(v347 + 22) = 2114;
      *(v347 + 24) = v341;
      *v348 = v341;
      *(v347 + 32) = 2112;
      v642 = v341;
      v361 = v341;
      v362 = [v342 objectID];
      *(v347 + 34) = v362;
      v627 = v348;
      v348[1] = v362;
      *(v347 + 42) = 2082;
      v370 = *(v232 + 16);
      if (v370)
      {
        *&v667.clientIdentity[16] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v370, 0);
        v378 = *&v667.clientIdentity[16];
        v379 = 32;
        do
        {
          v380 = 0xE800000000000000;
          v381 = 0x44497463656A626FLL;
          switch(*(v232 + v379))
          {
            case 1:
              v381 = 0xD000000000000017;
              v382 = &v667.clientIdentity[40];
              goto LABEL_149;
            case 2:
              v381 = 0x73694C7472616D73;
              v380 = 0xED00006570795474;
              break;
            case 3:
              v381 = 0x53676E6974726F73;
              v380 = 0xEC000000656C7974;
              break;
            case 4:
              v380 = 0xEA00000000006574;
              v381 = 0x614464656E6E6970;
              break;
            case 5:
              v381 = 0x724F6C61756E616DLL;
              v380 = 0xEE00676E69726564;
              break;
            case 6:
              v380 = 0xE400000000000000;
              v381 = 1701667182;
              break;
            case 7:
              v380 = 0xE500000000000000;
              v381 = 0x726F6C6F63;
              break;
            case 8:
              v381 = 0x626D456567646162;
              v380 = 0xEB000000006D656CLL;
              break;
            case 9:
              v381 = 0x61447265746C6966;
              v380 = 0xEA00000000006174;
              break;
            case 0xA:
              v381 = 0xD000000000000017;
              v382 = &v667.storeProvider[2];
              goto LABEL_149;
            case 0xB:
              v381 = 0xD00000000000001CLL;
              v382 = &v667.storeProvider[10];
              goto LABEL_149;
            case 0xC:
              v381 = 0xD000000000000019;
              v382 = &v667.dataAccessRequestsWriter[2];
              goto LABEL_149;
            case 0xD:
              v381 = 0xD000000000000027;
              v382 = &v667.contactInteractionWriter[2];
LABEL_149:
              v380 = *(v382 - 32);
              break;
            default:
              break;
          }

          *&v667.clientIdentity[16] = v378;
          v384 = *v378->clientIdentity;
          v383 = *&v378->clientIdentity[8];
          if (v384 >= v383 >> 1)
          {
            sub_100026EF4((v383 > 1), v384 + 1, 1);
            v378 = *&v667.clientIdentity[16];
          }

          *v378->clientIdentity = v384 + 1;
          v385 = v378 + 16 * v384;
          *(v385 + 4) = v381;
          *(v385 + 5) = v380;
          ++v379;
          --v370;
        }

        while (v370);
        v232, v371, v372, v373, v374, v375, v376, v377;
      }

      else
      {
        v232, v363, v364, v365, v366, v367, v368, v369;
        v378 = &_swiftEmptyArrayStorage;
      }

      v386 = Array.description.getter();
      v388 = v387;
      v378, v387, v389, v390, v391, v392, v393, v394;
      v232, v395, v396, v397, v398, v399, v400, v401;
      v402 = sub_10000668C(v386, v388, &v668);
      v388, v403, v404, v405, v406, v407, v408, v409;
      *(v347 + 44) = v402;
      *(v347 + 52) = 1024;
      v410 = v665;
      LODWORD(v402) = *(v665 + 104);

      *(v347 + 54) = v402;

      v411 = v630;
      _os_log_impl(&_mh_execute_header, v630, v629, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v347, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v33 = v410;

      v197 = v666;
      v342 = v652;
      v341 = v642;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v412 = v662;
    sub_10022C398(v661, v342, v232, v33);
    if (v412)
    {

      v197, v604, v605, v606, v607, v608, v609, v610;
      v232, v611, v612, v613, v614, v615, v616, v617;
      v649, v618, v619, v620, v621, v622, v623, v624;
      return;
    }

    v232, v413, v414, v415, v416, v417, v418, v419;
    v420 = [v342 changedValues];
    v421 = v341;
    v422 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v423 = v658;
    swift_beginAccess();
    v424 = v421;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v668 = v423[7];
    v423[7] = 0x8000000000000000;
    sub_1002C8688(v422, v424, isUniquelyReferenced_nonNull_native);

    v423[7] = v668;
    swift_endAccess();
    v433 = *(v33 + 104);
    if (v664 && (v433 & 1) != 0)
    {
      v422, v426, v427, v428, v429, v430, v431, v432;
      v434 = v652;
      [v652 updateChangeCount];
    }

    else
    {

      v435 = v424;

      v436 = Logger.logObject.getter();
      v437 = static os_log_type_t.default.getter();
      v422, v438, v439, v440, v441, v442, v443, v444;

      if (os_log_type_enabled(v436, v437))
      {
        v445 = swift_slowAlloc();
        v446 = swift_slowAlloc();
        v662 = v436;
        v447 = v446;
        v664 = swift_slowAlloc();
        *&v667.clientIdentity[16] = v664;
        *v445 = v631;
        *(v445 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v667.clientIdentity[16]);
        *(v445 + 12) = 1024;
        *(v445 + 14) = v433;

        *(v445 + 18) = 1024;
        *(v445 + 20) = 0;
        *(v445 + 24) = 2114;
        *(v445 + 26) = v435;
        *v447 = v435;
        *(v445 + 34) = 2082;
        v448 = v435;
        sub_1005E2810(v422);
        v450 = v449;
        v422, v451, v452, v453, v454, v455, v456, v457;
        v458 = Array.description.getter();
        v460 = v459;
        v450, v459, v461, v462, v463, v464, v465, v466;
        v467 = sub_10000668C(v458, v460, &v667.clientIdentity[16]);
        v460, v468, v469, v470, v471, v472, v473, v474;
        *(v445 + 36) = v467;
        v475 = v662;
        _os_log_impl(&_mh_execute_header, v662, v437, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v445, 0x2Cu);
        sub_1000050A4(v447, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v476 = &v667.publicCloudDatabaseController[2];
      }

      else
      {

        v422, v477, v478, v479, v480, v481, v482, v483;

        v476 = &v669;
      }
    }

    v118 = 0;
    v155 = v638;
    v156 = v637;
    LOWORD(v136) = v639;
    v154 = v640;
    v115 = v657;
    v135 = v655;
    v117 = v649;
    v157 = v636;
    if (v640 == v639)
    {
LABEL_171:
      v666, v126, v127, v128, v129, v130, v131, v132;
      v134 = v117;
      goto LABEL_176;
    }
  }

  v243 = v240;
  v244 = 0;
  v245 = *(v232 + 16);
  while (2)
  {
    if (v245 == v244)
    {
      v232, v233, v234, v235, v236, v237, v238, v239;
      v649, v567, v568, v569, v570, v571, v572, v573;
      v244 = v666;
LABEL_178:
      v244, v574, v575, v576, v577, v578, v579, v580;
      v581 = objc_opt_self();
      v582 = v652;
      [v581 noSuchObjectErrorWithObjectID:v652];
      swift_willThrow();

      return;
    }

    v261 = v243;
    if (v244 >= *(v232 + 16))
    {
      goto LABEL_187;
    }

    v262 = 0xE800000000000000;
    v263 = 0x44497463656A626FLL;
    v264 = 0x44497463656A626FLL;
    switch(v244->clientIdentity[v232 + 16])
    {
      case 1u:
        v264 = 0xD000000000000017;
        v265 = &v667.clientIdentity[40];
        goto LABEL_80;
      case 2u:
        v264 = 0x73694C7472616D73;
        v262 = 0xED00006570795474;
        break;
      case 3u:
        v264 = 0x53676E6974726F73;
        v262 = 0xEC000000656C7974;
        break;
      case 4u:
        v262 = 0xEA00000000006574;
        v264 = 0x614464656E6E6970;
        break;
      case 5u:
        v264 = 0x724F6C61756E616DLL;
        v262 = 0xEE00676E69726564;
        break;
      case 6u:
        v262 = 0xE400000000000000;
        v264 = 1701667182;
        break;
      case 7u:
        v262 = 0xE500000000000000;
        v264 = 0x726F6C6F63;
        break;
      case 8u:
        v264 = 0x626D456567646162;
        v262 = 0xEB000000006D656CLL;
        break;
      case 9u:
        v264 = 0x61447265746C6966;
        v262 = 0xEA00000000006174;
        break;
      case 0xAu:
        v264 = 0xD000000000000017;
        v265 = &v667.storeProvider[2];
        goto LABEL_80;
      case 0xBu:
        v264 = 0xD00000000000001CLL;
        v265 = &v667.storeProvider[10];
        goto LABEL_80;
      case 0xCu:
        v264 = 0xD000000000000019;
        v265 = &v667.dataAccessRequestsWriter[2];
        goto LABEL_80;
      case 0xDu:
        v264 = 0xD000000000000027;
        v265 = &v667.contactInteractionWriter[2];
LABEL_80:
        v262 = *(v265 - 32);
        break;
      default:
        break;
    }

    v266 = 0xE800000000000000;
    switch(v261)
    {
      case 0:
        goto LABEL_102;
      case 1:
        v263 = 0xD000000000000017;
        v267 = &v667.clientIdentity[40];
        goto LABEL_101;
      case 2:
        v263 = 0x73694C7472616D73;
        v266 = 0xED00006570795474;
        if (v264 != 0x73694C7472616D73)
        {
          goto LABEL_63;
        }

        goto LABEL_103;
      case 3:
        v263 = 0x53676E6974726F73;
        v266 = 0xEC000000656C7974;
        if (v264 != 0x53676E6974726F73)
        {
          goto LABEL_63;
        }

        goto LABEL_103;
      case 4:
        v266 = 0xEA00000000006574;
        v263 = 0x614464656E6E6970;
        if (v264 != 0x614464656E6E6970)
        {
          goto LABEL_63;
        }

        goto LABEL_103;
      case 5:
        v263 = 0x724F6C61756E616DLL;
        v266 = 0xEE00676E69726564;
        if (v264 != 0x724F6C61756E616DLL)
        {
          goto LABEL_63;
        }

        goto LABEL_103;
      case 6:
        v266 = 0xE400000000000000;
        v263 = 1701667182;
        if (v264 != 1701667182)
        {
          goto LABEL_63;
        }

        goto LABEL_103;
      case 7:
        v266 = 0xE500000000000000;
        v263 = 0x726F6C6F63;
        if (v264 != 0x726F6C6F63)
        {
          goto LABEL_63;
        }

        goto LABEL_103;
      case 8:
        v263 = 0x626D456567646162;
        v266 = 0xEB000000006D656CLL;
        if (v264 != 0x626D456567646162)
        {
          goto LABEL_63;
        }

        goto LABEL_103;
      case 9:
        v263 = 0x61447265746C6966;
        v266 = 0xEA00000000006174;
        if (v264 != 0x61447265746C6966)
        {
          goto LABEL_63;
        }

        goto LABEL_103;
      case 10:
        v263 = 0xD000000000000017;
        v267 = &v667.storeProvider[2];
        goto LABEL_101;
      case 11:
        v263 = 0xD00000000000001CLL;
        v267 = &v667.storeProvider[10];
        goto LABEL_101;
      case 12:
        v263 = 0xD000000000000019;
        v267 = &v667.dataAccessRequestsWriter[2];
        goto LABEL_101;
      case 13:
        v263 = 0xD000000000000027;
        v267 = &v667.contactInteractionWriter[2];
LABEL_101:
        v266 = *(v267 - 32);
LABEL_102:
        if (v264 != v263)
        {
          goto LABEL_63;
        }

LABEL_103:
        if (v262 != v266)
        {
LABEL_63:
          v246 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v262, v247, v248, v249, v250, v251, v252, v253;
          v266, v254, v255, v256, v257, v258, v259, v260;
          v244 = (v244 + 1);
          if (v246)
          {
            goto LABEL_108;
          }

          continue;
        }

        v262, v233, v263, v235, v236, v237, v238, v239;
        v266, v268, v269, v270, v271, v272, v273, v274;
LABEL_108:
        v275 = *(v33 + 88);
        sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v277 = [ObjCClassFromMetadata entity];
        v278 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v277 insertIntoManagedObjectContext:v275];
        v279 = v32;
        v280 = v278;
        [v275 assignObject:v280 toPersistentStore:v279];

        v281 = v280;
        v282 = [v652 uuid];
        v283 = v651;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v284 = v656;
        (*v635)(v283, 0, 1, v656);
        v285 = v660;
        sub_10018E470(v283, v660);
        isa = 0;
        if ((*v634)(v285, 1, v284) != 1)
        {
          v287 = v660;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (v664)(v287, v284);
        }

        [v281 setIdentifier:{isa, v627}];

        sub_1000050A4(v283, &unk_100939D90, "8\n\r");

        v288 = v652;
        v32 = v281;
        v136 = Logger.logObject.getter();
        v289 = static os_log_type_t.default.getter();

        v290 = os_log_type_enabled(v136, v289);
        v197 = v666;
        v642 = v32;
        if (v290)
        {
          v291 = swift_slowAlloc();
          v292 = swift_slowAlloc();
          v664 = swift_slowAlloc();
          v668 = v664;
          *v291 = v632;
          *(v291 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v668);
          *(v291 + 12) = 2082;
          v293 = *(v665 + 40);
          *&v667.coreSuggestionsHandler[34] = *(v665 + 24);
          *&v667.publicCloudDatabaseController[10] = v293;
          *&v667.publicCloudDatabaseController[24] = *(v665 + 54);
          sub_100009DAC(&v667.coreSuggestionsHandler[34], &v667.clientIdentity[16]);
          LODWORD(v630) = v289;
          v294 = sub_1000063E8();
          v296 = v295;
          sub_1005812D4(&v667.coreSuggestionsHandler[34]);
          v297 = sub_10000668C(v294, v296, &v668);
          v296, v298, v299, v300, v301, v302, v303, v304;
          *(v291 + 14) = v297;
          *(v291 + 22) = 2114;
          *(v291 + 24) = v288;
          *v292 = v288;
          *(v291 + 32) = 2112;
          v305 = v288;
          v306 = [v32 objectID];
          *(v291 + 34) = v306;
          v292[1] = v306;
          _os_log_impl(&_mh_execute_header, v136, v630, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v291, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
          v33 = v665;

          swift_arrayDestroy();
        }

        v307 = v658;
        swift_beginAccess();
        v308 = v307[6];
        if ((v308 & 0xC000000000000001) == 0)
        {
          v314 = v288;
          v313 = v658;
LABEL_119:
          v315 = swift_isUniquelyReferenced_nonNull_native();
          v668 = v313[6];
          sub_1002C8398(v642, v288, v315);
          v313[6] = v668;

          swift_endAccess();
          goto LABEL_120;
        }

        if (v308 < 0)
        {
          v309 = v307[6];
        }

        else
        {
          v309 = v308 & 0xFFFFFFFFFFFFFF8;
        }

        v310 = v288;
        v311 = __CocoaDictionary.count.getter();
        if (!__OFADD__(v311, 1))
        {
          v312 = sub_10021CDBC(v309, v311 + 1);
          v313 = v658;
          v658[6] = v312;
          goto LABEL_119;
        }

LABEL_193:
        __break(1u);
LABEL_194:
        swift_once();
LABEL_173:
        sub_100006654(v650, qword_100950D98);
        v484 = Logger.logObject.getter();
        v485 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v484, v485))
        {
          v486 = swift_slowAlloc();
          *&v667.clientIdentity[16] = swift_slowAlloc();
          *v486 = 136446466;
          v494 = sub_100729CB0(1, v487, v488, v489, v490, v491, v492, v493);
          v496 = v495;
          v497 = sub_10000668C(v494, v495, &v667.clientIdentity[16]);
          v496, v498, v499, v500, v501, v502, v503, v504;
          *(v486 + 4) = v497;
          *(v486 + 12) = 2082;
          v512 = sub_100729CB0(v136, v505, v506, v507, v508, v509, v510, v511);
          v514 = v513;
          v515 = sub_10000668C(v512, v513, &v667.clientIdentity[16]);
          v514, v516, v517, v518, v519, v520, v521, v522;
          *(v486 + 14) = v515;
          _os_log_impl(&_mh_execute_header, v484, v485, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v486, 0x16u);
          swift_arrayDestroy();
        }

        v523 = v649;
        v524 = objc_opt_self();
        v525 = String._bridgeToObjectiveC()();
        sub_100729CB0(1, v526, v527, v528, v529, v530, v531, v532);
        v534 = v533;
        v535 = String._bridgeToObjectiveC()();
        v534, v536, v537, v538, v539, v540, v541, v542;
        sub_100729CB0(v136, v543, v544, v545, v546, v547, v548, v549);
        v551 = v550;
        v552 = String._bridgeToObjectiveC()();
        v551, v553, v554, v555, v556, v557, v558, v559;
        [v524 unauthorizedErrorWithMissingEntitlement:v525 requestedAccessLevel:v535 currentAccesslevel:v552];

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        v666, v560, v561, v562, v563, v564, v565, v566;
        v134 = v523;
LABEL_176:
        v134, v126, v127, v128, v129, v130, v131, v132;
        return;
      default:
        v232, v233, 0x44497463656A626FLL, v235, v236, v237, v238, v239;
        v649, v597, v598, v599, v600, v601, v602, v603;
        goto LABEL_178;
    }
  }
}

void sub_100631BBC(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v642 = &v606 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v606 - v12;
  v14 = type metadata accessor for UUID();
  v643 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = &v606 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v606 - v20;
  v22 = a3[3];
  v644 = a3[2];
  v647 = v22;
  v23 = a3[4];
  v648 = v3;
  v24 = *(v3 + 72);
  v646 = a2;
  *&v650.clientIdentity[8] = v24;
  *&v650.clientIdentity[16] = a2;
  *v650.clientIdentity = &v650.clientIdentity[16];

  v25 = v649;
  v31 = sub_100759CB4(sub_1006B02E0, &v650, a1, v26, v27, v28, v29, v30);
  if (v25)
  {
    return;
  }

  v32 = v31;
  v636 = v24;
  v637 = v23;
  v639 = v21;
  v638 = v17;
  v640 = v14;
  v635 = v13;
  v641 = a3;
  v33 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_195;
  }

LABEL_3:
  v34 = type metadata accessor for Logger();
  v35 = sub_100006654(v34, qword_100945730);

  v36 = v647;

  v645 = v35;
  v37 = Logger.logObject.getter();
  LOBYTE(v38) = static os_log_type_t.info.getter();
  v36, v39, v40, v41, v42, v43, v44, v45;
  v46 = os_log_type_enabled(v37, v38);
  v47 = (v32 >> 62);
  v649 = v32;
  if (v46)
  {
    v23 = swift_slowAlloc();
    v634 = swift_slowAlloc();
    *&v650.clientIdentity[16] = v634;
    *v23 = 136446978;
    *(v23 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v650.clientIdentity[16]);
    *(v23 + 12) = 2048;
    if (!v47)
    {
      v55 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_198;
  }

  v32, v75, v76, v77, v78, v79, v80, v81;
  while (1)
  {
    v82 = v648;
    v83 = v47 ? _CocoaArrayWrapper.endIndex.getter() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = &_swiftEmptyArrayStorage;
    v633 = v34;
    if (!v83)
    {
      break;
    }

    v644 = v47;
    *&v650.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v37 = &v650.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v83 & 0x8000000000000000) == 0)
    {
      v84 = 0;
      v85 = v32;
      v32 &= 0xC000000000000001;
      v647 = (v85 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v86 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v32)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v84 >= *v647->clientIdentity)
          {
            goto LABEL_192;
          }

          v87 = *(v649 + 8 * v84 + 32);
        }

        v88 = v87;
        v89 = sub_1005EA438([v87 remObjectID]);
        if (v33)
        {

          v649, v91, v92, v93, v94, v95, v96, v97;

          return;
        }

        v23 = v89;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v84;
        if (v86 == v83)
        {
          v38 = *&v650.clientIdentity[16];
          v32 = v649;
          v82 = v648;
          v47 = v644;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_198:
    v55 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v23 + 14) = v55;
    v32, v48, v49, v50, v51, v52, v53, v54;
    *(v23 + 22) = 2082;
    type metadata accessor for REMCDSavedReminder();
    v56 = [swift_getObjCClassFromMetadata() description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v32 = v649;
    v60 = sub_10000668C(v57, v59, &v650.clientIdentity[16]);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v23 + 24) = v60;
    *(v23 + 32) = 2082;
    *(v23 + 34) = sub_10000668C(v644, v647, &v650.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v23, 0x2Au);
    swift_arrayDestroy();
  }

LABEL_21:
  v90 = *(v82 + 96);
  if (v90 > 1)
  {
    if ((v90 - 2) >= 3 && v90 != 4499 && v90 != 4599)
    {
      goto LABEL_201;
    }

    goto LABEL_28;
  }

  if (!v90)
  {
LABEL_28:
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v647 = v38;
      v102 = v101;
      *&v650.clientIdentity[16] = v101;
      *v100 = 136315138;
      v103 = [type metadata accessor for REMCDSavedReminder() cdEntityName];
      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v47;
      v107 = v106;

      v108 = v104;
      v32 = v649;
      v109 = sub_10000668C(v108, v107, &v650.clientIdentity[16]);
      v110 = v107;
      v47 = v105;
      v110, v111, v112, v113, v114, v115, v116, v117;
      *(v100 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v98, v99, "Performing fetch during upsert {CDType: %s}", v100, 0xCu);
      sub_10000607C(v102);
      v38 = v647;
    }

    v118 = v33;
    v119 = sub_10066B748(v38, v641);
    v120 = v118;
    v38, v121, v122, v123, v124, v125, v126, v127;
    if (v118)
    {
      v32, v128, v129, v130, v131, v132, v133, v134;
      return;
    }

    v136 = v639;
    v137 = v643;
    goto LABEL_37;
  }

  if (v90 != 1)
  {
LABEL_201:
    v604 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v605 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v604, v605);
    __break(1u);
    return;
  }

  v38, v68, v69, v70, v71, v72, v73, v74;
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *&v650.clientIdentity[16] = v141;
    *v140 = 136315138;
    v142 = [type metadata accessor for REMCDSavedReminder() cdEntityName];
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v144;

    v146 = sub_10000668C(v143, v145, &v650.clientIdentity[16]);
    v145, v147, v148, v149, v150, v151, v152, v153;
    *(v140 + 4) = v146;
    _os_log_impl(&_mh_execute_header, v138, v139, "Skipping fetch during upsert {CDType: %s}", v140, 0xCu);
    sub_10000607C(v141);
  }

  v120 = v33;
  v136 = v639;
  v137 = v643;
  v119 = sub_100390D48(&_swiftEmptyArrayStorage);
LABEL_37:
  v154 = v120;
  if (v47)
  {
    v155 = _CocoaArrayWrapper.endIndex.getter();
    if (!v155)
    {
      goto LABEL_181;
    }

    goto LABEL_41;
  }

  v155 = *((v649 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v155)
  {
LABEL_41:
    v156 = 0;
    v631 = (v137 + 8);
    v627 = 0x80000001007EA630;
    v626 = 0x80000001007EA610;
    v625 = 0x80000001007E8FD0;
    v624 = 0x80000001007EA5E0;
    v623 = 0x80000001007EA5C0;
    v622 = 0x80000001007EA5A0;
    v621 = 0x80000001007EA570;
    v620 = 0x80000001007E8C60;
    v619 = 0x80000001007EA4D0;
    *&v135 = 136446978;
    v611 = v135;
    *&v135 = 136446210;
    v632 = v135;
    *&v135 = 136447490;
    v612 = v135;
    *&v135 = 136447234;
    v610 = v135;
    v614 = (v137 + 56);
    v613 = (v137 + 48);
    v157 = v649 & 0xC000000000000001;
    v158 = v649 & 0xFFFFFFFFFFFFFF8;
    v159 = (v649 + 32);
    v634 = v119;
    v618 = v155;
    v617 = v649 & 0xC000000000000001;
    v616 = v649 & 0xFFFFFFFFFFFFFF8;
    v615 = (v649 + 32);
    do
    {
      if (v157)
      {
        v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v161 = __OFADD__(v156, 1);
        v162 = v156 + 1;
        if (v161)
        {
LABEL_180:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v156 >= *(v158 + 16))
        {
          __break(1u);
LABEL_200:
          swift_once();
LABEL_184:
          sub_100006654(v633, qword_100950D98);
          v473 = Logger.logObject.getter();
          v474 = static os_log_type_t.error.getter();
          v475 = os_log_type_enabled(v473, v474);
          v476 = v634;
          if (v475)
          {
            v477 = swift_slowAlloc();
            *&v650.clientIdentity[16] = swift_slowAlloc();
            *v477 = 136446466;
            v485 = sub_100729CB0(1, v478, v479, v480, v481, v482, v483, v484);
            v487 = v486;
            v488 = sub_10000668C(v485, v486, &v650.clientIdentity[16]);
            v487, v489, v490, v491, v492, v493, v494, v495;
            *(v477 + 4) = v488;
            *(v477 + 12) = 2082;
            v503 = sub_100729CB0(v157, v496, v497, v498, v499, v500, v501, v502);
            v505 = v504;
            v506 = sub_10000668C(v503, v504, &v650.clientIdentity[16]);
            v505, v507, v508, v509, v510, v511, v512, v513;
            *(v477 + 14) = v506;
            _os_log_impl(&_mh_execute_header, v473, v474, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v477, 0x16u);
            swift_arrayDestroy();
          }

          v514 = v628;
          v515 = objc_opt_self();
          v516 = String._bridgeToObjectiveC()();
          sub_100729CB0(1, v517, v518, v519, v520, v521, v522, v523);
          v525 = v524;
          v526 = String._bridgeToObjectiveC()();
          v525, v527, v528, v529, v530, v531, v532, v533;
          sub_100729CB0(v157, v534, v535, v536, v537, v538, v539, v540);
          v542 = v541;
          v543 = String._bridgeToObjectiveC()();
          v542, v544, v545, v546, v547, v548, v549, v550;
          [v515 unauthorizedErrorWithMissingEntitlement:v516 requestedAccessLevel:v526 currentAccesslevel:v543];

          swift_willThrow();
          swift_bridgeObjectRelease_n();
          v649, v551, v552, v553, v554, v555, v556, v557;
          v472 = v476;
          goto LABEL_182;
        }

        v160 = *&v159[8 * v156];
        v161 = __OFADD__(v156, 1);
        v162 = v156 + 1;
        if (v161)
        {
          goto LABEL_180;
        }
      }

      v163 = v160;
      v644 = sub_1005EA438([v163 remObjectID]);
      if (v154)
      {
        v649, v164, v165, v166, v167, v168, v169, v170;
        v119, v576, v577, v578, v579, v580, v581, v582;

        return;
      }

      v629 = v162;

      v643 = v163;
      v171 = [v163 accountID];
      v172 = [v171 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = UUID.uuidString.getter();
      v175 = v174;
      v176 = *v631;
      v177 = v136;
      v178 = v640;
      (*v631)(v177, v640);
      v179 = [objc_opt_self() localInternalAccountID];
      v180 = [v179 uuid];

      v181 = v638;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v182 = UUID.uuidString.getter();
      v184 = v183;
      v647 = v176;
      (v176)(v181, v178);
      if (v173 == v182 && v175 == v184)
      {
        v184, v185, v186, v187, v188, v189, v190, v191;
        v175, v192, v193, v194, v195, v196, v197, v198;
        v23 = v637;
        v32 = v648;
      }

      else
      {
        v199 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v184, v200, v201, v202, v203, v204, v205, v206;
        v175, v207, v208, v209, v210, v211, v212, v213;
        v23 = v637;
        v32 = v648;
        if ((v199 & 1) == 0)
        {
          v217 = v636;
          v215 = v643;
          goto LABEL_57;
        }
      }

      v214 = *(v32 + 68);
      v215 = v643;
      if (v214 >> 14 >= 2)
      {
        if (v214 >> 14 == 2)
        {
          v216 = *(v32 + 64) | (*(v32 + 68) << 32);
        }

        else
        {
          v216 = 0x7FFFFFFFLL;
        }
      }

      else
      {
        v216 = 2147483519;
      }

      sub_100009A40(2, v216);
      v217 = v636;
LABEL_57:
      v218 = sub_100692848(v215, v217, &type metadata for REMSavedReminderStorageCDIngestor.ValueKey, sub_1005F5C88);
      v630 = 0;
      v33 = v218;
      v219 = sub_1005F7B78();
      v227 = v634;
      v228 = v219;
      if (!*v634->clientIdentity || (v229 = sub_100393C74(), (v220 & 1) == 0))
      {
        v230 = v228;
        v32 = 0;
        v231 = *(v33 + 16);
        while (v231 != v32)
        {
          v247 = v230;
          if (v32 >= *(v33 + 16))
          {
            goto LABEL_194;
          }

          v248 = 0xE600000000000000;
          v249 = 0x7961446C6C61;
          v250 = 0x7961446C6C61;
          switch(*(v33 + v32 + 32))
          {
            case 1:
              v250 = 0xD000000000000010;
              storeController = &v649;
              goto LABEL_88;
            case 2:
              v250 = 0xD000000000000017;
              storeController = &v650;
              goto LABEL_88;
            case 3:
              v250 = 0xD000000000000011;
              storeController = v650.storeController;
              goto LABEL_88;
            case 4:
              v251 = 0x44656C746974;
              goto LABEL_80;
            case 5:
              v248 = 0xE800000000000000;
              v250 = 0x797469726F697270;
              break;
            case 6:
              v248 = 0xE700000000000000;
              v250 = 0x64656767616C66;
              break;
            case 7:
              v250 = 0x6E6F697461657263;
              v248 = 0xEC00000065746144;
              break;
            case 8:
              v250 = 0x6E65727275636572;
              v248 = 0xEF73656C75526563;
              break;
            case 9:
              v250 = 0xD000000000000013;
              storeController = v650.clientIdentity;
              goto LABEL_88;
            case 0xA:
              v250 = 0xD000000000000011;
              storeController = &v650.clientIdentity[8];
              goto LABEL_88;
            case 0xB:
              v248 = 0xE800000000000000;
              v250 = 0x656E6F5A656D6974;
              break;
            case 0xC:
              break;
            case 0xD:
              v250 = 0xD000000000000011;
              storeController = &v650.clientIdentity[16];
              goto LABEL_88;
            case 0xE:
              v251 = 0x447365746F6ELL;
LABEL_80:
              v250 = v251 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
              v248 = 0xED0000746E656D75;
              break;
            case 0xF:
              v250 = 0x656D686361747461;
              v248 = 0xEB0000000073746ELL;
              break;
            case 0x10:
              v250 = 0x736D72616C61;
              break;
            case 0x11:
              v250 = 0xD000000000000016;
              storeController = &v650.clientIdentity[24];
              goto LABEL_88;
            case 0x12:
              v250 = 0xD00000000000001ALL;
              storeController = &v650.clientIdentity[32];
              goto LABEL_88;
            case 0x13:
              v250 = 0xD000000000000024;
              storeController = &v650.clientIdentity[40];
LABEL_88:
              v248 = *(storeController - 32);
              break;
            case 0x14:
              v248 = 0xE800000000000000;
              v250 = 0x7367617468736168;
              break;
            case 0x15:
              v250 = 0x48746361746E6F63;
              v248 = 0xEE0073656C646E61;
              break;
            default:
              v248 = 0xE800000000000000;
              v250 = 0x44497463656A626FLL;
              break;
          }

          v253 = 0xE600000000000000;
          switch(v247)
          {
            case 0:
              v253 = 0xE800000000000000;
              v249 = 0x44497463656A626FLL;
              break;
            case 1:
              v249 = 0xD000000000000010;
              clientIdentity = &v649;
              goto LABEL_112;
            case 2:
              v249 = 0xD000000000000017;
              clientIdentity = &v650;
              goto LABEL_112;
            case 3:
              v249 = 0xD000000000000011;
              clientIdentity = v650.storeController;
              goto LABEL_112;
            case 4:
              v254 = 0x44656C746974;
              goto LABEL_104;
            case 5:
              v253 = 0xE800000000000000;
              v249 = 0x797469726F697270;
              break;
            case 6:
              v253 = 0xE700000000000000;
              v249 = 0x64656767616C66;
              break;
            case 7:
              v249 = 0x6E6F697461657263;
              v253 = 0xEC00000065746144;
              break;
            case 8:
              v249 = 0x6E65727275636572;
              v253 = 0xEF73656C75526563;
              break;
            case 9:
              v249 = 0xD000000000000013;
              clientIdentity = v650.clientIdentity;
              goto LABEL_112;
            case 10:
              v249 = 0xD000000000000011;
              clientIdentity = &v650.clientIdentity[8];
              goto LABEL_112;
            case 11:
              v253 = 0xE800000000000000;
              v249 = 0x656E6F5A656D6974;
              break;
            case 12:
              break;
            case 13:
              v249 = 0xD000000000000011;
              clientIdentity = &v650.clientIdentity[16];
              goto LABEL_112;
            case 14:
              v254 = 0x447365746F6ELL;
LABEL_104:
              v249 = v254 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
              v253 = 0xED0000746E656D75;
              break;
            case 15:
              v249 = 0x656D686361747461;
              v253 = 0xEB0000000073746ELL;
              break;
            case 16:
              v249 = 0x736D72616C61;
              break;
            case 17:
              v249 = 0xD000000000000016;
              clientIdentity = &v650.clientIdentity[24];
              goto LABEL_112;
            case 18:
              v249 = 0xD00000000000001ALL;
              clientIdentity = &v650.clientIdentity[32];
              goto LABEL_112;
            case 19:
              v249 = 0xD000000000000024;
              clientIdentity = &v650.clientIdentity[40];
LABEL_112:
              v253 = *(clientIdentity - 32);
              break;
            case 20:
              v253 = 0xE800000000000000;
              v249 = 0x7367617468736168;
              break;
            case 21:
              v249 = 0x48746361746E6F63;
              v253 = 0xEE0073656C646E61;
              break;
            default:
              v33, v220, 0x7961446C6C61, v222, v223, v224, v225, v226;
              v634, v583, v584, v585, v586, v587, v588, v589;
              v573 = v643;
              v572 = v649;
              goto LABEL_187;
          }

          if (v250 == v249 && v248 == v253)
          {
            v248, v220, v249, v222, v223, v224, v225, v226;
            v253, v256, v257, v258, v259, v260, v261, v262;
LABEL_116:
            v263 = *(v648 + 88);
            type metadata accessor for REMCDSavedReminder();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v265 = [ObjCClassFromMetadata entity];
            v266 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v265 insertIntoManagedObjectContext:v263];
            v267 = v23;
            v268 = v266;
            [v263 assignObject:v268 toPersistentStore:v267];

            v269 = v268;
            v270 = [v644 uuid];
            v271 = v635;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v272 = v640;
            (*v614)(v271, 0, 1, v640);
            v273 = v642;
            sub_10018E470(v271, v642);
            isa = 0;
            if ((*v613)(v273, 1, v272) != 1)
            {
              isa = UUID._bridgeToObjectiveC()().super.isa;
              (v647)(v273, v272);
            }

            [v269 setIdentifier:{isa, v606}];

            sub_1000050A4(v271, &unk_100939D90, "8\n\r");
            v32 = v648;

            v275 = v644;
            v276 = v269;
            v277 = Logger.logObject.getter();
            v278 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v277, v278))
            {
              v279 = swift_slowAlloc();
              v280 = swift_slowAlloc();
              v647 = swift_slowAlloc();
              v651 = v647;
              *v279 = v611;
              *(v279 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v651);
              *(v279 + 12) = 2082;
              v281 = *(v32 + 40);
              *&v650.coreSuggestionsHandler[34] = *(v32 + 24);
              *&v650.publicCloudDatabaseController[10] = v281;
              *&v650.publicCloudDatabaseController[24] = *(v32 + 54);
              sub_100009DAC(&v650.coreSuggestionsHandler[34], &v650.clientIdentity[16]);
              v282 = sub_1000063E8();
              LODWORD(v628) = v278;
              v283 = v282;
              v285 = v284;
              sub_1005812D4(&v650.coreSuggestionsHandler[34]);
              v286 = sub_10000668C(v283, v285, &v651);
              v285, v287, v288, v289, v290, v291, v292, v293;
              *(v279 + 14) = v286;
              *(v279 + 22) = 2114;
              *(v279 + 24) = v275;
              *v280 = v275;
              *(v279 + 32) = 2112;
              v294 = v275;
              v295 = [v276 objectID];
              *(v279 + 34) = v295;
              v280[1] = v295;
              _os_log_impl(&_mh_execute_header, v277, v628, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v279, 0x2Au);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              swift_arrayDestroy();
            }

            v23 = 0x800000000000;
            swift_beginAccess();
            v296 = v275;
            v628 = v276;
            sub_10067AD6C(v276, v296);
            swift_endAccess();

            goto LABEL_121;
          }

          v232 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v248, v233, v234, v235, v236, v237, v238, v239;
          v253, v240, v241, v242, v243, v244, v245, v246;
          ++v32;
          if (v232)
          {
            goto LABEL_116;
          }
        }

        v33, v220, v221, v222, v223, v224, v225, v226;
        v634, v558, v559, v560, v561, v562, v563, v564;
        v572 = v649;
        v573 = v643;
LABEL_187:
        v572, v565, v566, v567, v568, v569, v570, v571;
        v574 = objc_opt_self();
        v575 = v644;
        [v574 noSuchObjectErrorWithObjectID:v644];
        swift_willThrow();

        return;
      }

      v628 = *(*&v227->clientIdentity[40] + 8 * v229);
      v23 = 0x800000000000;
LABEL_121:
      v297 = *(v33 + 16);
      v647 = v297;
      if (v297)
      {

        v305 = 0;
        while (v305 < *(v33 + 16))
        {
          if (((*(v32 + 64) | (*(v32 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
          {
            v306 = *(v33 + v305 + 32);
            v307 = Logger.logObject.getter();
            v308 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v307, v308))
            {
              v309 = swift_slowAlloc();
              v310 = swift_slowAlloc();
              *&v650.clientIdentity[16] = v310;
              *v309 = v632;
              LOBYTE(v651) = v306;
              v311 = String.init<A>(describing:)();
              v313 = v312;
              v314 = sub_10000668C(v311, v312, &v650.clientIdentity[16]);
              v313, v315, v316, v317, v318, v319, v320, v321;
              *(v309 + 4) = v314;
              v23 = 0x800000000000;
              _os_log_impl(&_mh_execute_header, v307, v308, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v309, 0xCu);
              sub_10000607C(v310);
            }

            v32 = v648;
            v297 = v647;
          }

          LODWORD(v157) = *(v32 + 64);
          if (*(v32 + 68) >> 14 == 2 && (*(v32 + 64) & 1) == 0)
          {
            if (qword_1009367A0 != -1)
            {
              goto LABEL_200;
            }

            goto LABEL_184;
          }

          if (v297 == ++v305)
          {
            v33, v298, v299, v300, v301, v302, v303, v304;
            goto LABEL_134;
          }
        }

        goto LABEL_193;
      }

LABEL_134:
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v323 = v644;
      v324 = v628;
      v325 = Logger.logObject.getter();
      v326 = static os_log_type_t.default.getter();

      v327 = os_log_type_enabled(v325, v326);
      v644 = v324;
      if (v327)
      {
        v608 = v326;
        v609 = v325;
        v328 = swift_slowAlloc();
        v329 = swift_slowAlloc();
        v607 = swift_slowAlloc();
        v651 = v607;
        *v328 = v612;
        *(v328 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v651);
        *(v328 + 12) = 2082;
        v330 = *(v32 + 40);
        *&v650.dataAccessRequestsWriter[2] = *(v32 + 24);
        *&v650.coreSuggestionsHandler[2] = v330;
        *&v650.coreSuggestionsHandler[16] = *(v32 + 54);
        sub_100009DAC(&v650.dataAccessRequestsWriter[2], &v650.clientIdentity[16]);
        v331 = sub_1000063E8();
        v333 = v332;
        sub_1005812D4(&v650.dataAccessRequestsWriter[2]);
        v334 = sub_10000668C(v331, v333, &v651);
        v333, v335, v336, v337, v338, v339, v340, v341;
        *(v328 + 14) = v334;
        *(v328 + 22) = 2114;
        *(v328 + 24) = v323;
        *v329 = v323;
        *(v328 + 32) = 2112;
        v628 = v323;
        v342 = v323;
        v343 = [v324 objectID];
        *(v328 + 34) = v343;
        v606 = v329;
        v329[1] = v343;
        *(v328 + 42) = 2082;
        v351 = *(v33 + 16);
        if (v351)
        {
          *&v650.clientIdentity[16] = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, v351, 0);
          v359 = *&v650.clientIdentity[16];
          v360 = 32;
          do
          {
            v361 = 0xE600000000000000;
            v362 = 0x7961446C6C61;
            switch(*(v33 + v360))
            {
              case 1:
                v362 = 0xD000000000000010;
                v364 = &v649;
                goto LABEL_160;
              case 2:
                v362 = 0xD000000000000017;
                v364 = &v650;
                goto LABEL_160;
              case 3:
                v362 = 0xD000000000000011;
                v364 = v650.storeController;
                goto LABEL_160;
              case 4:
                v363 = 0x44656C746974;
                goto LABEL_152;
              case 5:
                v361 = 0xE800000000000000;
                v362 = 0x797469726F697270;
                break;
              case 6:
                v361 = 0xE700000000000000;
                v362 = 0x64656767616C66;
                break;
              case 7:
                v362 = 0x6E6F697461657263;
                v361 = 0xEC00000065746144;
                break;
              case 8:
                v362 = 0x6E65727275636572;
                v361 = 0xEF73656C75526563;
                break;
              case 9:
                v362 = 0xD000000000000013;
                v364 = v650.clientIdentity;
                goto LABEL_160;
              case 0xA:
                v362 = 0xD000000000000011;
                v364 = &v650.clientIdentity[8];
                goto LABEL_160;
              case 0xB:
                v361 = 0xE800000000000000;
                v362 = 0x656E6F5A656D6974;
                break;
              case 0xC:
                break;
              case 0xD:
                v362 = 0xD000000000000011;
                v364 = &v650.clientIdentity[16];
                goto LABEL_160;
              case 0xE:
                v363 = 0x447365746F6ELL;
LABEL_152:
                v362 = v363 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
                v361 = 0xED0000746E656D75;
                break;
              case 0xF:
                v362 = 0x656D686361747461;
                v361 = 0xEB0000000073746ELL;
                break;
              case 0x10:
                v362 = 0x736D72616C61;
                break;
              case 0x11:
                v362 = 0xD000000000000016;
                v364 = &v650.clientIdentity[24];
                goto LABEL_160;
              case 0x12:
                v362 = 0xD00000000000001ALL;
                v364 = &v650.clientIdentity[32];
                goto LABEL_160;
              case 0x13:
                v362 = 0xD000000000000024;
                v364 = &v650.clientIdentity[40];
LABEL_160:
                v361 = *(v364 - 32);
                break;
              case 0x14:
                v361 = 0xE800000000000000;
                v362 = 0x7367617468736168;
                break;
              case 0x15:
                v362 = 0x48746361746E6F63;
                v361 = 0xEE0073656C646E61;
                break;
              default:
                v361 = 0xE800000000000000;
                v362 = 0x44497463656A626FLL;
                break;
            }

            *&v650.clientIdentity[16] = v359;
            v366 = *v359->clientIdentity;
            v365 = *&v359->clientIdentity[8];
            if (v366 >= v365 >> 1)
            {
              sub_100026EF4((v365 > 1), v366 + 1, 1);
              v359 = *&v650.clientIdentity[16];
            }

            *v359->clientIdentity = v366 + 1;
            v367 = v359 + 16 * v366;
            *(v367 + 4) = v362;
            *(v367 + 5) = v361;
            ++v360;
            --v351;
            v368 = v648;
          }

          while (v351);
          v33, v352, v353, v354, v355, v356, v357, v358;
        }

        else
        {
          v368 = v32;
          v33, v344, v345, v346, v347, v348, v349, v350;
          v359 = &_swiftEmptyArrayStorage;
        }

        v369 = Array.description.getter();
        v371 = v370;
        v359, v370, v372, v373, v374, v375, v376, v377;
        v33, v378, v379, v380, v381, v382, v383, v384;
        v385 = sub_10000668C(v369, v371, &v651);
        v371, v386, v387, v388, v389, v390, v391, v392;
        *(v328 + 44) = v385;
        *(v328 + 52) = 1024;
        v32 = v368;
        LODWORD(v385) = *(v368 + 104);

        *(v328 + 54) = v385;

        v393 = v609;
        _os_log_impl(&_mh_execute_header, v609, v608, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v328, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v324 = v644;
        v323 = v628;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v394 = v630;
      sub_100510538(v643, v324, v33, 0, v32);
      v154 = v394;
      if (v394)
      {

        v649, v590, v591, v592, v593, v594, v595, v596;
        v33, v597, v598, v599, v600, v601, v602, v603;
        v472 = v634;
        goto LABEL_182;
      }

      v33, v395, v396, v397, v398, v399, v400, v401;
      v402 = [v324 changedValues];
      v403 = v323;
      v404 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v405 = v641;
      swift_beginAccess();
      v406 = v403;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v651 = v405[7];
      v405[7] = 0x8000000000000000;
      sub_1002C8688(v404, v406, isUniquelyReferenced_nonNull_native);

      v405[7] = v651;
      swift_endAccess();
      v415 = *(v32 + 104);
      if (v647 && (v415 & 1) != 0)
      {
        v404, v408, v409, v410, v411, v412, v413, v414;
        v416 = v644;
        [v644 updateChangeCount];

        v417 = v618;
        v156 = v629;
        v119 = v634;
      }

      else
      {

        v418 = v406;

        v419 = Logger.logObject.getter();
        v420 = static os_log_type_t.default.getter();
        v404, v421, v422, v423, v424, v425, v426, v427;

        if (os_log_type_enabled(v419, v420))
        {
          v428 = swift_slowAlloc();
          v630 = swift_slowAlloc();
          v647 = swift_slowAlloc();
          *&v650.clientIdentity[16] = v647;
          *v428 = v610;
          *(v428 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v650.clientIdentity[16]);
          *(v428 + 12) = 1024;
          *(v428 + 14) = v415;

          *(v428 + 18) = 1024;
          *(v428 + 20) = 0;
          *(v428 + 24) = 2114;
          *(v428 + 26) = v418;
          v429 = v630;
          *v630 = v418;
          *(v428 + 34) = 2082;
          v430 = v418;
          sub_1005E2810(v404);
          v432 = v431;
          v404, v433, v434, v435, v436, v437, v438, v439;
          v440 = Array.description.getter();
          v442 = v441;
          v432, v441, v443, v444, v445, v446, v447, v448;
          v449 = sub_10000668C(v440, v442, &v650.clientIdentity[16]);
          v442, v450, v451, v452, v453, v454, v455, v456;
          *(v428 + 36) = v449;
          _os_log_impl(&_mh_execute_header, v419, v420, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v428, 0x2Cu);
          sub_1000050A4(v429, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v457 = &v652;
        }

        else
        {

          v404, v458, v459, v460, v461, v462, v463, v464;

          v457 = &v651;
        }

        v119 = v634;
        v417 = v618;
        v156 = v629;
      }

      v136 = v639;
      v157 = v617;
      v158 = v616;
      v159 = v615;
    }

    while (v156 != v417);
  }

LABEL_181:
  v649, v128, v129, v130, v131, v132, v133, v134;
  v472 = v119;
LABEL_182:
  v472, v465, v466, v467, v468, v469, v470, v471;
}

void sub_10063407C(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  p_isa = &a2->super.isa;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v614 = v589 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = v589 - v11;
  v13 = type metadata accessor for UUID();
  v615 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = v589 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = v589 - v19;
  v21 = a3[3];
  v616 = a3[2];
  v618 = v21;
  v22 = a3[4];
  v620 = v3;
  v23 = *(v3 + 72);
  *&v622.clientIdentity[8] = v23;
  *&v622.clientIdentity[16] = p_isa;
  *v622.clientIdentity = &v622.clientIdentity[16];

  v24 = v621;
  v30 = sub_100759CB4(sub_1006B02FC, &v622, a1, v25, v26, v27, v28, v29);
  if (v24)
  {
    return;
  }

  v31 = v30;
  v609 = v23;
  v608 = v22;
  v611 = v20;
  v612 = v16;
  v610 = v13;
  v606 = v12;
  v613 = a3;
  v32 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_136;
  }

LABEL_3:
  v605 = type metadata accessor for Logger();
  v33 = sub_100006654(v605, qword_100945730);

  v34 = v618;

  v617 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  v34, v37, v38, v39, v40, v41, v42, v43;
  v44 = os_log_type_enabled(v35, v36);
  v45 = v31 >> 62;
  v621 = v31;
  v46 = v620;
  if (v44)
  {
    v23 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    *&v622.clientIdentity[16] = p_isa;
    *v23 = 136446978;
    *(v23 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v622.clientIdentity[16]);
    *(v23 + 12) = 2048;
    if (!v45)
    {
      v54 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_139;
  }

  v31, v74, v75, v76, v77, v78, v79, v80;
  while (1)
  {
    v81 = v45 ? _CocoaArrayWrapper.endIndex.getter() : *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = &_swiftEmptyArrayStorage;
    v607 = v45;
    if (!v81)
    {
      break;
    }

    *&v622.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v35 = &v622.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v81 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v83 = v31 & 0xC000000000000001;
      p_isa = (v31 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v84 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v83)
        {
          v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= p_isa[2])
          {
            goto LABEL_133;
          }

          v85 = *(v31 + 8 * v23 + 32);
        }

        v86 = v85;
        sub_1005E2A38([v85 remObjectID]);
        if (v32)
        {

          v31, v88, v89, v90, v91, v92, v93, v94;

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v31 = v621;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v23;
        if (v84 == v81)
        {
          v82 = *&v622.clientIdentity[16];
          v46 = v620;
          goto LABEL_21;
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
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_139:
    v54 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v23 + 14) = v54;
    v31, v47, v48, v49, v50, v51, v52, v53;
    *(v23 + 22) = 2082;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v55 = [swift_getObjCClassFromMetadata() description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = sub_10000668C(v56, v58, &v622.clientIdentity[16]);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v23 + 24) = v59;
    v31 = v621;
    *(v23 + 32) = 2082;
    *(v23 + 34) = sub_10000668C(v616, v618, &v622.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v23, 0x2Au);
    swift_arrayDestroy();

    v46 = v620;
  }

LABEL_21:
  v87 = *(v46 + 96);
  if (v87 > 1)
  {
    if ((v87 - 2) >= 3 && v87 != 4499 && v87 != 4599)
    {
      goto LABEL_143;
    }

LABEL_28:
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v622.clientIdentity[16] = v98;
      *v97 = 136315138;
      v99 = [objc_opt_self() cdEntityName];
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;

      v103 = sub_10000668C(v100, v102, &v622.clientIdentity[16]);
      v102, v104, v105, v106, v107, v108, v109, v110;
      *(v97 + 4) = v103;
      v31 = v621;
      _os_log_impl(&_mh_execute_header, v95, v96, "Performing fetch during upsert {CDType: %s}", v97, 0xCu);
      sub_10000607C(v98);
    }

    v111 = v612;
    v112 = v611;
    v113 = sub_10066C018(v82, v613);
    v114 = v32;
    v82, v115, v116, v117, v118, v119, v120, v121;
    if (v32)
    {
      v130 = v31;
LABEL_121:
      v130, v122, v123, v124, v125, v126, v127, v128;
      return;
    }

    goto LABEL_36;
  }

  if (!v87)
  {
    goto LABEL_28;
  }

  if (v87 != 1)
  {
LABEL_143:
    v587 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v588 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v587, v588);
    __break(1u);
    return;
  }

  v82, v67, v68, v69, v70, v71, v72, v73;
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    *&v622.clientIdentity[16] = v134;
    *v133 = 136315138;
    v135 = [objc_opt_self() cdEntityName];
    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v137;

    v139 = sub_10000668C(v136, v138, &v622.clientIdentity[16]);
    v138, v140, v141, v142, v143, v144, v145, v146;
    *(v133 + 4) = v139;
    v31 = v621;
    _os_log_impl(&_mh_execute_header, v131, v132, "Skipping fetch during upsert {CDType: %s}", v133, 0xCu);
    sub_10000607C(v134);
  }

  v114 = v32;
  v111 = v612;
  v112 = v611;
  v113 = sub_100390D5C(&_swiftEmptyArrayStorage);
LABEL_36:
  v147 = v615;
  if (v607)
  {
    v148 = _CocoaArrayWrapper.endIndex.getter();
    if (!v148)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v148 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v148)
    {
LABEL_119:
      v465 = v31;
LABEL_120:
      v465, v122, v123, v124, v125, v126, v127, v128;
      v130 = v113;
      goto LABEL_121;
    }
  }

  v149 = 0;
  v150 = v31 & 0xC000000000000001;
  v151 = v31 & 0xFFFFFFFFFFFFFF8;
  v152 = (v31 + 32);
  storeController = v147->storeController;
  v597 = &v147->clientIdentity[40];
  v596 = &v147->clientIdentity[32];
  *&v129 = 136446978;
  v593 = v129;
  *&v129 = 136446210;
  v604 = v129;
  *&v129 = 136447490;
  v594 = v129;
  *&v129 = 136447234;
  v592 = v129;
  v615 = v113;
  v601 = v148;
  v600 = v31 & 0xC000000000000001;
  v599 = v31 & 0xFFFFFFFFFFFFFF8;
  v598 = (v31 + 32);
  while (1)
  {
    if (v150)
    {
      v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v154 = __OFADD__(v149, 1);
      v155 = v149 + 1;
      if (v154)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }

    else
    {
      if (v149 >= *(v151 + 16))
      {
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        swift_once();
LABEL_124:
        sub_100006654(v605, qword_100950D98);
        v466 = Logger.logObject.getter();
        v467 = static os_log_type_t.error.getter();
        v468 = os_log_type_enabled(v466, v467);
        v469 = v615;
        if (v468)
        {
          v470 = swift_slowAlloc();
          *&v622.clientIdentity[16] = swift_slowAlloc();
          *v470 = 136446466;
          v478 = sub_100729CB0(1, v471, v472, v473, v474, v475, v476, v477);
          v480 = v479;
          v481 = sub_10000668C(v478, v479, &v622.clientIdentity[16]);
          v480, v482, v483, v484, v485, v486, v487, v488;
          *(v470 + 4) = v481;
          *(v470 + 12) = 2082;
          v496 = sub_100729CB0(v32, v489, v490, v491, v492, v493, v494, v495);
          v498 = v497;
          v499 = sub_10000668C(v496, v497, &v622.clientIdentity[16]);
          v498, v500, v501, v502, v503, v504, v505, v506;
          *(v470 + 14) = v499;
          _os_log_impl(&_mh_execute_header, v466, v467, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v470, 0x16u);
          swift_arrayDestroy();
        }

        v507 = objc_opt_self();
        v508 = String._bridgeToObjectiveC()();
        sub_100729CB0(1, v509, v510, v511, v512, v513, v514, v515);
        v517 = v516;
        v518 = String._bridgeToObjectiveC()();
        v517, v519, v520, v521, v522, v523, v524, v525;
        sub_100729CB0(v32, v526, v527, v528, v529, v530, v531, v532);
        v534 = v533;
        v535 = String._bridgeToObjectiveC()();
        v534, v536, v537, v538, v539, v540, v541, v542;
        [v507 unauthorizedErrorWithMissingEntitlement:v508 requestedAccessLevel:v518 currentAccesslevel:v535];

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        v621, v543, v544, v545, v546, v547, v548, v549;
        v130 = v469;
        goto LABEL_121;
      }

      v153 = *&v152[8 * v149];
      v154 = __OFADD__(v149, 1);
      v155 = v149 + 1;
      if (v154)
      {
        goto LABEL_118;
      }
    }

    v156 = v153;
    v618 = sub_1005E2A38([v156 remObjectID]);
    if (v114)
    {
      v31, v157, v158, v159, v160, v161, v162, v163;
      v113, v566, v567, v568, v569, v570, v571, v572;

      return;
    }

    v602 = v155;

    p_isa = v156;
    v164 = [v156 accountID];
    v165 = [v164 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = UUID.uuidString.getter();
    v167 = v166;
    v168 = *storeController;
    v169 = v112;
    v170 = v610;
    (*storeController)(v169, v610);
    v171 = [objc_opt_self() localInternalAccountID];
    v32 = v168;
    v172 = [v171 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = UUID.uuidString.getter();
    v174 = v111;
    v175 = v173;
    v177 = v176;
    (v32)(v174, v170);
    if (v23 == v175 && v167 == v177)
    {
      v177, v178, v179, v180, v181, v182, v183, v184;
      v167, v185, v186, v187, v188, v189, v190, v191;
      v192 = v608;
      v193 = v620;
    }

    else
    {
      v194 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v177, v195, v196, v197, v198, v199, v200, v201;
      v167, v202, v203, v204, v205, v206, v207, v208;
      v192 = v608;
      v193 = v620;
      if ((v194 & 1) == 0)
      {
        v31 = v621;
        v210 = v609;
        v211 = p_isa;
        goto LABEL_56;
      }
    }

    v209 = *(v193 + 68);
    v210 = v609;
    v211 = p_isa;
    if (v209 >> 14 >= 2)
    {
      v31 = v621;
      v212 = v209 >> 14 == 2 ? *(v193 + 64) | (*(v193 + 68) << 32) : 0x7FFFFFFFLL;
    }

    else
    {
      v212 = 2147483519;
      v31 = v621;
    }

    sub_100009A40(2, v212);
LABEL_56:
    v213 = sub_100692848(v211, v210, &type metadata for REMReminderStorageCDIngestor.ValueKey, sub_1005F4870);
    v607 = 0;
    v221 = sub_1005F6C6C();
    v222 = v615;
    if (!*v615->clientIdentity)
    {
      break;
    }

    v223 = sub_100393C74();
    if ((v214 & 1) == 0)
    {
      break;
    }

    v224 = *(*&v222->clientIdentity[40] + 8 * v223);
    v113 = v222;
LABEL_83:
    v616 = *(v213 + 16);
    if (v616)
    {
      v595 = v224;

      v310 = 0;
      v23 = v616;
      while (v310 < *(v213 + 16))
      {
        if (((*(v193 + 64) | (*(v193 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v311 = *(v213 + v310 + 32);
          v312 = Logger.logObject.getter();
          v313 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v312, v313))
          {
            v314 = swift_slowAlloc();
            v315 = swift_slowAlloc();
            *&v622.clientIdentity[16] = v315;
            *v314 = v604;
            LOBYTE(v623) = v311;
            v316 = String.init<A>(describing:)();
            v318 = v317;
            v319 = sub_10000668C(v316, v317, &v622.clientIdentity[16]);
            v320 = v318;
            v23 = v616;
            v320, v321, v322, v323, v324, v325, v326, v327;
            *(v314 + 4) = v319;
            _os_log_impl(&_mh_execute_header, v312, v313, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v314, 0xCu);
            sub_10000607C(v315);
            v193 = v620;

            v31 = v621;
          }
        }

        v32 = *(v193 + 64);
        if (*(v193 + 68) >> 14 == 2 && (*(v193 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_142;
          }

          goto LABEL_124;
        }

        if (v23 == ++v310)
        {
          v213, v303, v304, v305, v306, v307, v308, v309;
          v113 = v615;
          v224 = v595;
          goto LABEL_96;
        }
      }

      goto LABEL_134;
    }

LABEL_96:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v329 = v618;
    v330 = v224;
    v331 = Logger.logObject.getter();
    v332 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v331, v332))
    {
      v591 = v332;
      v595 = v331;
      v32 = swift_slowAlloc();
      v333 = swift_slowAlloc();
      v590 = swift_slowAlloc();
      v623 = v590;
      *v32 = v594;
      *(v32 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v623);
      *(v32 + 12) = 2082;
      v334 = *(v193 + 40);
      *&v622.dataAccessRequestsWriter[2] = *(v193 + 24);
      *&v622.coreSuggestionsHandler[2] = v334;
      *&v622.coreSuggestionsHandler[16] = *(v193 + 54);
      sub_100009DAC(&v622.dataAccessRequestsWriter[2], &v622.clientIdentity[16]);
      v335 = sub_1000063E8();
      v337 = v336;
      sub_1005812D4(&v622.dataAccessRequestsWriter[2]);
      v338 = sub_10000668C(v335, v337, &v623);
      v337, v339, v340, v341, v342, v343, v344, v345;
      *(v32 + 14) = v338;
      *(v32 + 22) = 2114;
      *(v32 + 24) = v329;
      *v333 = v329;
      *(v32 + 32) = 2112;
      v618 = v329;
      v346 = v329;
      v347 = [(RDXPCStorePerformer *)v330 objectID];
      *(v32 + 34) = v347;
      v589[1] = v333;
      v333[1] = v347;
      *(v32 + 42) = 2082;
      v355 = *(v213 + 16);
      if (v355)
      {
        v356 = v330;
        v357 = v615;
        *&v622.clientIdentity[16] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v355, 0);
        v358 = *&v622.clientIdentity[16];
        v359 = 32;
        do
        {
          v360 = sub_1002ADDBC(*(v213 + v359));
          *&v622.clientIdentity[16] = v358;
          v369 = *v358->clientIdentity;
          v368 = *&v358->clientIdentity[8];
          if (v369 >= v368 >> 1)
          {
            v589[0] = v360;
            v371 = v361;
            sub_100026EF4((v368 > 1), v369 + 1, 1);
            v361 = v371;
            v357 = v615;
            v360 = v589[0];
            v358 = *&v622.clientIdentity[16];
          }

          *v358->clientIdentity = v369 + 1;
          v370 = v358 + 16 * v369;
          *(v370 + 4) = v360;
          *(v370 + 5) = v361;
          ++v359;
          --v355;
        }

        while (v355);
        v213, v361, v362, v363, v364, v365, v366, v367;
        v113 = v357;
        v330 = v356;
      }

      else
      {
        v213, v348, v349, v350, v351, v352, v353, v354;
        v358 = &_swiftEmptyArrayStorage;
        v113 = v615;
      }

      v373 = Array.description.getter();
      v375 = v374;
      v358, v374, v376, v377, v378, v379, v380, v381;
      v213, v382, v383, v384, v385, v386, v387, v388;
      v389 = sub_10000668C(v373, v375, &v623);
      v375, v390, v391, v392, v393, v394, v395, v396;
      *(v32 + 44) = v389;
      *(v32 + 52) = 1024;
      v193 = v620;
      LODWORD(v389) = *(v620 + 104);

      *(v32 + 54) = v389;

      v397 = v595;
      _os_log_impl(&_mh_execute_header, v595, v591, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v32, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v31 = v621;
      v372 = v607;
      v329 = v618;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v372 = v607;
    }

    sub_1002B96C4(p_isa, v330, v213, v193);
    if (v372)
    {

      v31, v580, v581, v582, v583, v584, v585, v586;
      v465 = v213;
      goto LABEL_120;
    }

    v607 = 0;
    v213, v398, v399, v400, v401, v402, v403, v404;
    v405 = [(RDXPCStorePerformer *)v330 changedValues];
    v406 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v407 = v613;
    swift_beginAccess();
    v408 = v329;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v623 = v407[7];
    v407[7] = 0x8000000000000000;
    sub_1002C8688(v406, v408, isUniquelyReferenced_nonNull_native);

    v407[7] = v623;
    swift_endAccess();
    v417 = *(v193 + 104);
    if (v616 && (v417 & 1) != 0)
    {
      v406, v410, v411, v412, v413, v414, v415, v416;
      [(RDXPCStorePerformer *)v330 updateChangeCount];

      v112 = v611;
    }

    else
    {
      v618 = v330;

      v418 = v408;

      v419 = Logger.logObject.getter();
      v420 = static os_log_type_t.default.getter();
      v406, v421, v422, v423, v424, v425, v426, v427;

      if (os_log_type_enabled(v419, v420))
      {
        v428 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v616 = swift_slowAlloc();
        *&v622.clientIdentity[16] = v616;
        *v428 = v592;
        *(v428 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v622.clientIdentity[16]);
        *(v428 + 12) = 1024;
        *(v428 + 14) = v417;

        *(v428 + 18) = 1024;
        *(v428 + 20) = 0;
        *(v428 + 24) = 2114;
        *(v428 + 26) = v418;
        *v32 = v418;
        *(v428 + 34) = 2082;
        v429 = v418;
        v430 = v607;
        sub_1005E2810(v406);
        v432 = v431;
        v607 = v430;
        v406, v433, v434, v435, v436, v437, v438, v439;
        v440 = Array.description.getter();
        v442 = v441;
        v432, v441, v443, v444, v445, v446, v447, v448;
        v449 = sub_10000668C(v440, v442, &v622.clientIdentity[16]);
        v442, v450, v451, v452, v453, v454, v455, v456;
        *(v428 + 36) = v449;
        _os_log_impl(&_mh_execute_header, v419, v420, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v428, 0x2Cu);
        sub_1000050A4(v32, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v457 = &v624;
      }

      else
      {

        v406, v458, v459, v460, v461, v462, v463, v464;

        v457 = &v625;
      }

      v112 = v611;
      v113 = v615;
    }

    v149 = v602;
    v31 = v621;
    v114 = v607;
    v111 = v612;
    v150 = v600;
    v151 = v599;
    v152 = v598;
    if (v602 == v601)
    {
      goto LABEL_119;
    }
  }

  if (v221 != 40)
  {
    v225 = 0;
    v226 = *(v213 + 16);
    while (1)
    {
      if (v226 == v225)
      {
        v213, v214, v215, v216, v217, v218, v219, v220;
        v615, v550, v551, v552, v553, v554, v555, v556;
        v31 = v621;
        goto LABEL_128;
      }

      if (v225 >= *(v213 + 16))
      {
        goto LABEL_135;
      }

      v227 = sub_1002ADDBC(*(v213 + v225 + 32));
      v23 = v228;
      v229 = sub_1002ADDBC(v221);
      v237 = v230;
      if (v227 == v229 && v23 == v230)
      {
        break;
      }

      ++v225;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23, v239, v240, v241, v242, v243, v244, v245;
      v237, v246, v247, v248, v249, v250, v251, v252;
      if (v31)
      {
        goto LABEL_70;
      }
    }

    v23, v230, v231, v232, v233, v234, v235, v236;
    v237, v253, v254, v255, v256, v257, v258, v259;
LABEL_70:
    v260 = *(v620 + 88);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v262 = [ObjCClassFromMetadata entity];
    v263 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v262 insertIntoManagedObjectContext:v260];
    v264 = v192;
    v265 = v263;
    [v260 assignObject:v265 toPersistentStore:v264];

    v266 = v265;
    v267 = [(RDXPCStorePerformer *)v618 uuid];
    v268 = v606;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v269 = v610;
    (*v597)(v268, 0, 1, v610);
    v270 = v614;
    sub_10018E470(v268, v614);
    isa = 0;
    if ((*v596)(v270, 1, v269) != 1)
    {
      v272 = v614;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v32)(v272, v610);
    }

    [v266 setIdentifier:isa];

    sub_1000050A4(v606, &unk_100939D90, "8\n\r");
    v193 = v620;

    v32 = v618;
    v273 = v266;
    v274 = Logger.logObject.getter();
    v275 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v274, v275))
    {
      v276 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      v616 = swift_slowAlloc();
      v623 = v616;
      *v276 = v593;
      *(v276 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v623);
      *(v276 + 12) = 2082;
      v278 = *(v193 + 40);
      *&v622.coreSuggestionsHandler[34] = *(v193 + 24);
      *&v622.publicCloudDatabaseController[10] = v278;
      *&v622.publicCloudDatabaseController[24] = *(v193 + 54);
      sub_100009DAC(&v622.coreSuggestionsHandler[34], &v622.clientIdentity[16]);
      v279 = sub_1000063E8();
      LODWORD(v595) = v275;
      v280 = v279;
      v282 = v281;
      sub_1005812D4(&v622.coreSuggestionsHandler[34]);
      v283 = sub_10000668C(v280, v282, &v623);
      v282, v284, v285, v286, v287, v288, v289, v290;
      *(v276 + 14) = v283;
      *(v276 + 22) = 2114;
      *(v276 + 24) = v32;
      *v277 = v32;
      *(v276 + 32) = 2112;
      v291 = v32;
      v292 = v273;
      v293 = [v273 objectID];
      *(v276 + 34) = v293;
      v277[1] = v293;
      _os_log_impl(&_mh_execute_header, v274, v595, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v276, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    else
    {
      v292 = v273;
    }

    v294 = v613;
    swift_beginAccess();
    v295 = v294[6];
    v113 = v615;
    v224 = v292;
    if ((v295 & 0xC000000000000001) == 0)
    {
      v301 = v32;
      v31 = v621;
      v300 = v613;
      goto LABEL_82;
    }

    if (v295 < 0)
    {
      v296 = v294[6];
    }

    else
    {
      v296 = v295 & 0xFFFFFFFFFFFFFF8;
    }

    v297 = v32;
    v298 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v298, 1))
    {
      v299 = sub_10021CDBC(v296, v298 + 1);
      v300 = v613;
      v613[6] = v299;
      v31 = v621;
LABEL_82:
      v302 = swift_isUniquelyReferenced_nonNull_native();
      v623 = v300[6];
      sub_1002C8398(v224, v32, v302);
      v300[6] = v623;

      swift_endAccess();
      goto LABEL_83;
    }

    goto LABEL_141;
  }

  v213, v214, v215, v216, v217, v218, v219, v220;
  v615, v573, v574, v575, v576, v577, v578, v579;
LABEL_128:
  v31, v557, v558, v559, v560, v561, v562, v563;
  v564 = objc_opt_self();
  v565 = v618;
  [v564 noSuchObjectErrorWithObjectID:v618];
  swift_willThrow();
}

void sub_100635E7C(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v625 = v599 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v599 - v12;
  v14 = type metadata accessor for UUID();
  v626 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = v599 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = v599 - v20;
  v22 = a3[3];
  v628 = a3[2];
  v629 = v22;
  v631 = a3[4];
  v630 = v3;
  v23 = *(v3 + 72);
  v24 = a2;
  *&v633.clientIdentity[8] = v23;
  *&v633.clientIdentity[16] = a2;
  *v633.clientIdentity = &v633.clientIdentity[16];

  v25 = v632;
  v31 = sub_100759CB4(sub_1006B0318, &v633, a1, v26, v27, v28, v29, v30);
  if (v25)
  {
    return;
  }

  v32 = v31;
  v33 = v629;
  v619 = v23;
  v620 = v21;
  v622 = v17;
  v621 = v14;
  v618 = v13;
  v617 = v24;
  v623 = a3;
  v34 = 0;
  if (qword_100936008 != -1)
  {
LABEL_127:
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_100006654(v35, qword_100945730);

  v37 = v33;

  v627 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  v33, v40, v41, v42, v43, v44, v45, v46;
  v47 = os_log_type_enabled(v38, v39);
  v48 = v32 >> 62;
  v632 = v32;
  v624 = (v32 >> 62);
  if (!v47)
  {

    v32, v69, v70, v71, v72, v73, v74, v75;
    goto LABEL_8;
  }

  v33 = swift_slowAlloc();
  v615 = swift_slowAlloc();
  *&v633.clientIdentity[16] = v615;
  *v33 = 136446978;
  *(v33 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v633.clientIdentity[16]);
  *(v33 + 12) = 2048;
  if (v48)
  {
    goto LABEL_130;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v33 + 14) = i;
    v32, v49, v50, v51, v52, v53, v54, v55;
    *(v33 + 22) = 2082;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v57 = [swift_getObjCClassFromMetadata() description];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = sub_10000668C(v58, v60, &v633.clientIdentity[16]);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v33 + 24) = v61;
    v32 = v632;
    *(v33 + 32) = 2082;
    *(v33 + 34) = sub_10000668C(v628, v37, &v633.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v38, v39, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v33, 0x2Au);
    swift_arrayDestroy();

    v48 = v624;
LABEL_8:
    v76 = v48 ? _CocoaArrayWrapper.endIndex.getter() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v616 = v35;
    if (!v76)
    {
      break;
    }

    *&v633.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v38 = &v633.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v76 & 0x8000000000000000) == 0)
    {
      v77 = 0;
      v78 = (v32 & 0xC000000000000001);
      v629 = v32 & 0xFFFFFFFFFFFFFF8;
      v79 = off_1008D41A8;
      while (1)
      {
        v33 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          __break(1u);
LABEL_123:

          v32, v578, v579, v580, v581, v582, v583, v584;
          v79, v585, v586, v587, v588, v589, v590, v591;
          v615, v592, v593, v594, v595, v596, v597, v598;
          return;
        }

        if (v78)
        {
          v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v77 >= *(v629 + 16))
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v80 = *(v32 + 8 * v77 + 32);
        }

        v81 = v80;
        v82 = sub_1005E3810([v80 remObjectID], &unk_100938880, off_1008D41A8);
        if (v34)
        {

          v32, v118, v119, v120, v121, v122, v123, v124;

          return;
        }

        v37 = v82;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v32 = v632;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v77;
        if (v33 == v76)
        {
          v83 = *&v633.clientIdentity[16];
          v48 = v624;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_130:
    ;
  }

  v83 = &_swiftEmptyArrayStorage;
LABEL_22:
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *&v633.clientIdentity[16] = v87;
    *v86 = 136315138;
    v88 = [objc_opt_self() cdEntityName];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92 = v89;
    v48 = v624;
    v93 = sub_10000668C(v92, v91, &v633.clientIdentity[16]);
    v91, v94, v95, v96, v97, v98, v99, v100;
    *(v86 + 4) = v93;
    v32 = v632;
    _os_log_impl(&_mh_execute_header, v84, v85, "Performing fetch during upsert {CDType: %s}", v86, 0xCu);
    sub_10000607C(v87);
  }

  v101 = v622;
  v102 = sub_10066C8E8(v83, v623);
  if (v34)
  {
    v83, v103, v104, v105, v106, v107, v108, v109;
    v117 = v32;
LABEL_26:
    v117, v110, v111, v112, v113, v114, v115, v116;
    return;
  }

  v615 = v102;
  v83, v103, v104, v105, v106, v107, v108, v109;
  if (v48)
  {
    v133 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v133 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v134 = v620;
  if (!v133)
  {
LABEL_111:
    v32, v125, v126, v127, v128, v129, v130, v131;
    v117 = v615;
    goto LABEL_26;
  }

  v135 = 0;
  v136 = v32 & 0xC000000000000001;
  v137 = v32 & 0xFFFFFFFFFFFFFF8;
  v138 = (v32 + 32);
  v612 = v626 + 8;
  v606 = v626 + 56;
  v605 = (v626 + 48);
  *&v132 = 136446978;
  v603 = v132;
  *&v132 = 136446210;
  v614 = v132;
  *&v132 = 136447490;
  v604 = v132;
  *&v132 = 136447234;
  v602 = v132;
  v608 = v133;
  v607 = v32 & 0xC000000000000001;
  v610 = v32 & 0xFFFFFFFFFFFFFF8;
  v609 = (v32 + 32);
  while (1)
  {
    if (v136)
    {
      v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v140 = __OFADD__(v135, 1);
      v141 = (&v135->isa + 1);
      if (v140)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }
    }

    else
    {
      if (v135 >= *(v137 + 16))
      {
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        swift_once();
LABEL_113:
        sub_100006654(v616, qword_100950D98);
        v457 = Logger.logObject.getter();
        v458 = static os_log_type_t.error.getter();
        v459 = os_log_type_enabled(v457, v458);
        v460 = v624;
        if (v459)
        {
          v461 = swift_slowAlloc();
          *&v633.clientIdentity[16] = swift_slowAlloc();
          *v461 = 136446466;
          v469 = sub_100729CB0(1, v462, v463, v464, v465, v466, v467, v468);
          v471 = v470;
          v472 = sub_10000668C(v469, v470, &v633.clientIdentity[16]);
          v471, v473, v474, v475, v476, v477, v478, v479;
          *(v461 + 4) = v472;
          *(v461 + 12) = 2082;
          v487 = sub_100729CB0(v133, v480, v481, v482, v483, v484, v485, v486);
          v489 = v488;
          v490 = sub_10000668C(v487, v488, &v633.clientIdentity[16]);
          v489, v491, v492, v493, v494, v495, v496, v497;
          *(v461 + 14) = v490;
          _os_log_impl(&_mh_execute_header, v457, v458, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v461, 0x16u);
          swift_arrayDestroy();
        }

        v498 = objc_opt_self();
        v499 = String._bridgeToObjectiveC()();
        sub_100729CB0(1, v500, v501, v502, v503, v504, v505, v506);
        v508 = v507;
        v509 = String._bridgeToObjectiveC()();
        v508, v510, v511, v512, v513, v514, v515, v516;
        sub_100729CB0(v133, v517, v518, v519, v520, v521, v522, v523);
        v525 = v524;
        v526 = String._bridgeToObjectiveC()();
        v525, v527, v528, v529, v530, v531, v532, v533;
        [v498 unauthorizedErrorWithMissingEntitlement:v499 requestedAccessLevel:v509 currentAccesslevel:v526];

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        v632, v534, v535, v536, v537, v538, v539, v540;
        goto LABEL_116;
      }

      v139 = *&v138[8 * v135];
      v140 = __OFADD__(v135, 1);
      v141 = (&v135->isa + 1);
      if (v140)
      {
        goto LABEL_110;
      }
    }

    v142 = v139;
    v626 = sub_1005E3810([(RDXPCStorePerformer *)v142 remObjectID], &unk_100938880, off_1008D41A8);
    v628 = 0;
    v611 = v141;

    v624 = v142;
    v143 = [(RDXPCStorePerformer *)v142 accountID];
    v144 = [v143 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = UUID.uuidString.getter();
    v147 = v146;
    v33 = v101;
    v148 = *v612;
    v149 = v134;
    v150 = v621;
    (*v612)(v149, v621);
    v151 = [objc_opt_self() localInternalAccountID];
    v152 = [v151 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = UUID.uuidString.getter();
    v155 = v154;
    v148(v101, v150);
    if (v145 == v153 && v147 == v155)
    {
      v155, v156, v157, v158, v159, v160, v161, v162;
      v147, v163, v164, v165, v166, v167, v168, v169;
    }

    else
    {
      v170 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v155, v171, v172, v173, v174, v175, v176, v177;
      v147, v178, v179, v180, v181, v182, v183, v184;
      if ((v170 & 1) == 0)
      {
        v32 = v632;
        v186 = v628;
        v34 = v630;
        v187 = v619;
        goto LABEL_48;
      }
    }

    v34 = v630;
    v185 = *(v630 + 68);
    v186 = v628;
    v187 = v619;
    if (v185 >> 14 >= 2)
    {
      v32 = v632;
      if (v185 >> 14 == 2)
      {
        v188 = *(v630 + 64) | (*(v630 + 68) << 32);
      }

      else
      {
        v188 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v188 = 2147483519;
      v32 = v632;
    }

    sub_100009A40(2, v188);
    if (v186)
    {
      v32, v189, v190, v191, v192, v193, v194, v195;

LABEL_116:
      v615, v541, v542, v543, v544, v545, v546, v547;
      return;
    }

LABEL_48:
    v196 = sub_100692848(v624, v187, &type metadata for REMListStorageCDIngestor.ValueKey, sub_1005F3FF0);
    v628 = v186;
    if (v186)
    {
      v32, v197, v198, v199, v200, v201, v202, v203;

      v615, v564, v565, v566, v567, v568, v569, v570;
      return;
    }

    v79 = v196;
    v212 = sub_1005F63F0(v204);
    v213 = v615;
    if (!*v615->clientIdentity)
    {
      break;
    }

    v214 = sub_100393C74();
    if ((v205 & 1) == 0)
    {
      break;
    }

    v613 = *(*&v213->clientIdentity[40] + 8 * v214);
LABEL_75:
    v292 = v79[2];
    v629 = v292;
    if (v292)
    {

      v300 = 0;
      while (v300 < v79[2])
      {
        if (((*(v34 + 64) | (*(v34 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v33 = *(v79 + v300 + 32);
          v301 = Logger.logObject.getter();
          v302 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v301, v302))
          {
            v303 = swift_slowAlloc();
            v304 = swift_slowAlloc();
            *&v633.clientIdentity[16] = v304;
            *v303 = v614;
            LOBYTE(v634) = v33;
            v305 = String.init<A>(describing:)();
            v307 = v306;
            v308 = sub_10000668C(v305, v306, &v633.clientIdentity[16]);
            v307, v309, v310, v311, v312, v313, v314, v315;
            *(v303 + 4) = v308;
            v34 = v630;
            _os_log_impl(&_mh_execute_header, v301, v302, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v303, 0xCu);
            sub_10000607C(v304);

            v32 = v632;
          }

          v292 = v629;
        }

        LODWORD(v133) = *(v34 + 64);
        if (*(v34 + 68) >> 14 == 2 && (*(v34 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_133;
          }

          goto LABEL_113;
        }

        if (v292 == ++v300)
        {
          v79, v293, v294, v295, v296, v297, v298, v299;
          goto LABEL_88;
        }
      }

      goto LABEL_125;
    }

LABEL_88:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v76 = v626;
    v78 = v613;
    v317 = Logger.logObject.getter();
    v318 = static os_log_type_t.default.getter();

    v319 = os_log_type_enabled(v317, v318);
    v626 = v78;
    if (v319)
    {
      v601 = v318;
      v320 = v34;
      v321 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v600 = swift_slowAlloc();
      v634 = v600;
      *v321 = v604;
      *(v321 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v634);
      *(v321 + 12) = 2082;
      v323 = *(v320 + 40);
      *&v633.dataAccessRequestsWriter[2] = *(v320 + 24);
      *&v633.coreSuggestionsHandler[2] = v323;
      *&v633.coreSuggestionsHandler[16] = *(v320 + 54);
      sub_100009DAC(&v633.dataAccessRequestsWriter[2], &v633.clientIdentity[16]);
      v324 = sub_1000063E8();
      v326 = v325;
      sub_1005812D4(&v633.dataAccessRequestsWriter[2]);
      v327 = sub_10000668C(v324, v326, &v634);
      v326, v328, v329, v330, v331, v332, v333, v334;
      *(v321 + 14) = v327;
      *(v321 + 22) = 2114;
      *(v321 + 24) = v76;
      *v322 = v76;
      *(v321 + 32) = 2112;
      v613 = v76;
      v335 = v76;
      v336 = [v78 objectID];
      *(v321 + 34) = v336;
      v599[1] = v322;
      v322[1] = v336;
      *(v321 + 42) = 2082;
      v344 = v79[2];
      v37 = v624;
      if (v344)
      {
        v599[0] = v317;
        *&v633.clientIdentity[16] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v344, 0);
        v345 = *&v633.clientIdentity[16];
        v346 = *(*&v633.clientIdentity[16] + 16);
        v347 = 16 * v346;
        v348 = 32;
        do
        {
          v349 = sub_100672E54(*(v79 + v348));
          *&v633.clientIdentity[16] = v345;
          v357 = *&v345->clientIdentity[8];
          v358 = v346 + 1;
          if (v346 >= v357 >> 1)
          {
            v360 = v349;
            v361 = v350;
            sub_100026EF4((v357 > 1), v358, 1);
            v350 = v361;
            v37 = v624;
            v349 = v360;
            v345 = *&v633.clientIdentity[16];
          }

          *v345->clientIdentity = v358;
          v359 = v345 + v347;
          *(v359 + 4) = v349;
          *(v359 + 5) = v350;
          v347 += 16;
          ++v348;
          v346 = v358;
          --v344;
        }

        while (v344);
        v79, v350, v351, v352, v353, v354, v355, v356;
        v317 = v599[0];
      }

      else
      {
        v79, v337, v338, v339, v340, v341, v342, v343;
        v345 = &_swiftEmptyArrayStorage;
      }

      v362 = Array.description.getter();
      v364 = v363;
      v345, v363, v365, v366, v367, v368, v369, v370;
      v79, v371, v372, v373, v374, v375, v376, v377;
      v378 = sub_10000668C(v362, v364, &v634);
      v364, v379, v380, v381, v382, v383, v384, v385;
      *(v321 + 44) = v378;
      *(v321 + 52) = 1024;
      v386 = v630;
      LODWORD(v378) = *(v630 + 104);

      *(v321 + 54) = v378;

      _os_log_impl(&_mh_execute_header, v317, v601, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v321, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v34 = v386;

      v32 = v632;
      v78 = v626;
      v76 = v613;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v37 = v624;
    }

    v387 = v628;
    sub_100674D80(&v37->super, v78, v79, v34);
    if (v387)
    {
      goto LABEL_123;
    }

    v79, v388, v389, v390, v391, v392, v393, v394;
    v395 = [v78 changedValues];
    v396 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v397 = v623;
    swift_beginAccess();
    v398 = v76;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v634 = v397[7];
    v397[7] = 0x8000000000000000;
    sub_1002C8688(v396, v398, isUniquelyReferenced_nonNull_native);

    v397[7] = v634;
    swift_endAccess();
    v407 = *(v34 + 104);
    if (v629 && (v407 & 1) != 0)
    {
      v396, v400, v401, v402, v403, v404, v405, v406;
      [v78 updateChangeCount];
    }

    else
    {

      v408 = v398;

      v409 = Logger.logObject.getter();
      v410 = static os_log_type_t.default.getter();
      v396, v411, v412, v413, v414, v415, v416, v417;

      if (os_log_type_enabled(v409, v410))
      {
        v418 = swift_slowAlloc();
        v419 = swift_slowAlloc();
        v628 = v409;
        v420 = v419;
        v629 = swift_slowAlloc();
        *&v633.clientIdentity[16] = v629;
        *v418 = v602;
        *(v418 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v633.clientIdentity[16]);
        *(v418 + 12) = 1024;
        *(v418 + 14) = v407;

        *(v418 + 18) = 1024;
        *(v418 + 20) = 0;
        *(v418 + 24) = 2114;
        *(v418 + 26) = v408;
        *v420 = v408;
        *(v418 + 34) = 2082;
        v421 = v408;
        sub_1005E2810(v396);
        v423 = v422;
        v396, v424, v425, v426, v427, v428, v429, v430;
        v431 = Array.description.getter();
        v433 = v432;
        v423, v432, v434, v435, v436, v437, v438, v439;
        v440 = sub_10000668C(v431, v433, &v633.clientIdentity[16]);
        v433, v441, v442, v443, v444, v445, v446, v447;
        *(v418 + 36) = v440;
        v448 = v628;
        _os_log_impl(&_mh_execute_header, v628, v410, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v418, 0x2Cu);
        sub_1000050A4(v420, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v449 = &v634;
      }

      else
      {

        v396, v450, v451, v452, v453, v454, v455, v456;

        v449 = &v633.shareRecordIDToRootRecordID[2];
      }
    }

    v101 = v622;
    v137 = v610;
    v138 = v609;
    LOWORD(v133) = v608;
    v135 = v611;
    v32 = v632;
    v134 = v620;
    v136 = v607;
    if (v611 == v608)
    {
      goto LABEL_111;
    }
  }

  if (v212 != 42)
  {
    v33 = 0;
    v215 = v79[2];
    while (1)
    {
      if (v215 == v33)
      {
        v79, v205, v206, v207, v208, v209, v210, v211;
        v615, v548, v549, v550, v551, v552, v553, v554;
        v32 = v632;
        goto LABEL_118;
      }

      if (v33 >= v79[2])
      {
        goto LABEL_126;
      }

      v216 = sub_100672E54(*(v79 + v33 + 32));
      v218 = v217;
      v219 = sub_100672E54(v212);
      v227 = v220;
      if (v216 == v219 && v218 == v220)
      {
        break;
      }

      ++v33;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v218, v229, v230, v231, v232, v233, v234, v235;
      v227, v236, v237, v238, v239, v240, v241, v242;
      v243 = v631;
      if (v32)
      {
        goto LABEL_63;
      }
    }

    v218, v220, v221, v222, v223, v224, v225, v226;
    v227, v244, v245, v246, v247, v248, v249, v250;
    v243 = v631;
LABEL_63:
    v251 = *(v34 + 88);
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v253 = [ObjCClassFromMetadata entity];
    v254 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v253 insertIntoManagedObjectContext:v251];
    v255 = v243;
    v256 = v254;
    [v251 assignObject:v256 toPersistentStore:v255];

    v257 = v256;
    v258 = [v626 uuid];
    v259 = v618;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v260 = v621;
    (*v606)(v259, 0, 1, v621);
    v261 = v625;
    sub_10018E470(v259, v625);
    isa = 0;
    if ((*v605)(v261, 1, v260) != 1)
    {
      v263 = v625;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v148(v263, v260);
    }

    [v257 setIdentifier:isa];

    sub_1000050A4(v618, &unk_100939D90, "8\n\r");

    v264 = v626;
    v265 = v257;
    v133 = Logger.logObject.getter();
    v266 = static os_log_type_t.default.getter();

    v267 = os_log_type_enabled(v133, v266);
    v613 = v265;
    if (v267)
    {
      v268 = swift_slowAlloc();
      v269 = swift_slowAlloc();
      v629 = swift_slowAlloc();
      v634 = v629;
      *v268 = v603;
      *(v268 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v634);
      *(v268 + 12) = 2082;
      v270 = *(v630 + 40);
      *&v633.coreSuggestionsHandler[34] = *(v630 + 24);
      *&v633.publicCloudDatabaseController[10] = v270;
      *&v633.publicCloudDatabaseController[24] = *(v630 + 54);
      sub_100009DAC(&v633.coreSuggestionsHandler[34], &v633.clientIdentity[16]);
      v601 = v266;
      v271 = sub_1000063E8();
      v273 = v272;
      sub_1005812D4(&v633.coreSuggestionsHandler[34]);
      v274 = sub_10000668C(v271, v273, &v634);
      v273, v275, v276, v277, v278, v279, v280, v281;
      *(v268 + 14) = v274;
      *(v268 + 22) = 2114;
      *(v268 + 24) = v264;
      *v269 = v264;
      *(v268 + 32) = 2112;
      v282 = v264;
      v283 = [v265 objectID];
      *(v268 + 34) = v283;
      v269[1] = v283;
      _os_log_impl(&_mh_execute_header, v133, v601, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v268, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v34 = v630;

      swift_arrayDestroy();
    }

    v284 = v623;
    swift_beginAccess();
    v285 = v284[6];
    if ((v285 & 0xC000000000000001) == 0)
    {
      v290 = v264;
      v32 = v632;
      v33 = v623;
      goto LABEL_74;
    }

    if (v285 < 0)
    {
      v286 = v284[6];
    }

    else
    {
      v286 = v285 & 0xFFFFFFFFFFFFFF8;
    }

    v287 = v264;
    v288 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v288, 1))
    {
      v289 = sub_10021CDBC(v286, v288 + 1);
      v33 = v623;
      v623[6] = v289;
      v32 = v632;
LABEL_74:
      v291 = swift_isUniquelyReferenced_nonNull_native();
      v634 = *(v33 + 48);
      sub_1002C8398(v613, v264, v291);
      *(v33 + 48) = v634;

      swift_endAccess();
      goto LABEL_75;
    }

    goto LABEL_132;
  }

  v79, v205, v206, v207, v208, v209, v210, v211;
  v615, v571, v572, v573, v574, v575, v576, v577;
LABEL_118:
  v32, v555, v556, v557, v558, v559, v560, v561;
  v562 = objc_opt_self();
  v563 = v626;
  [v562 noSuchObjectErrorWithObjectID:v626];
  swift_willThrow();
}

void sub_100637AEC(unint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v618 = a2;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v612 = &v584 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v584 - v11;
  v13 = type metadata accessor for UUID();
  v613 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = &v584 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v584 - v19;
  v21 = a3[3];
  v615 = a3[2];
  v617 = v21;
  v22 = a3[4];
  v619 = v3;
  v23 = *(v3 + 72);
  *&v621.clientIdentity[8] = v23;
  *&v621.clientIdentity[16] = v618;
  *v621.clientIdentity = &v621.clientIdentity[16];

  v24 = v620;
  v30 = sub_100759CB4(sub_1006B0334, &v621, a1, v25, v26, v27, v28, v29);
  if (v24)
  {
    return;
  }

  v620 = v30;
  v607 = v23;
  v616 = v22;
  v609 = v20;
  v610 = v16;
  v608 = v13;
  v606 = v12;
  v611 = a3;
  v31 = 0;
  if (qword_100936008 != -1)
  {
LABEL_134:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_100006654(v32, qword_100945730);
  v34 = v620;

  v35 = v617;

  v614 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  v35, v38, v39, v40, v41, v42, v43, v44;
  v45 = (v34 >> 62);
  if (!os_log_type_enabled(v36, v37))
  {

    v34, v66, v67, v68, v69, v70, v71, v72;
    goto LABEL_8;
  }

  a1 = swift_slowAlloc();
  v618 = swift_slowAlloc();
  *&v621.clientIdentity[16] = v618;
  *a1 = 136446978;
  *(a1 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v621.clientIdentity[16]);
  *(a1 + 12) = 2048;
  if (v45)
  {
    goto LABEL_137;
  }

  for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(a1 + 14) = i;
    v34, v46, v47, v48, v49, v50, v51, v52;
    *(a1 + 22) = 2082;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v54 = [swift_getObjCClassFromMetadata() description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_10000668C(v55, v57, &v621.clientIdentity[16]);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(a1 + 24) = v58;
    *(a1 + 32) = 2082;
    v34 = v620;
    *(a1 + 34) = sub_10000668C(v615, v617, &v621.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v36, v37, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", a1, 0x2Au);
    v37 = v618;
    swift_arrayDestroy();

LABEL_8:
    v617 = v45;
    v73 = v45 ? _CocoaArrayWrapper.endIndex.getter() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v605 = v32;
    if (!v73)
    {
      break;
    }

    *&v621.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v36 = &v621.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v73 & 0x8000000000000000) == 0)
    {
      a1 = 0;
      v618 = (v34 & 0xFFFFFFFFFFFFFF8);
      v74 = off_1008D4120;
      while (1)
      {
        v75 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          break;
        }

        if ((v34 & 0xC000000000000001) != 0)
        {
          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 >= *v618->clientIdentity)
          {
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          v76 = *&v620->clientIdentity[8 * a1 + 16];
        }

        v77 = v76;
        sub_1005E3810([v76 remObjectID], &qword_1009399F0, off_1008D4120);
        if (v31)
        {

          v620, v116, v117, v118, v119, v120, v121, v122;

          return;
        }

        v36 = &v621.clientIdentity[16];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++a1;
        if (v75 == v73)
        {
          v78 = *&v621.clientIdentity[16];
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_130:

      v620, v577, v578, v579, v580, v581, v582, v583;
      v537 = v74;
LABEL_119:
      v537, v123, v124, v125, v126, v127, v128, v129;
LABEL_120:
      v115 = &v621.coreSuggestionsHandler[26];
LABEL_121:
      *(v115 - 32), v108, v109, v110, v111, v112, v113, v114;
      return;
    }

    __break(1u);
LABEL_137:
    ;
  }

  v78 = &_swiftEmptyArrayStorage;
LABEL_22:
  v74 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v74, v79))
  {
    v80 = swift_slowAlloc();
    v618 = v78;
    v81 = v80;
    v82 = swift_slowAlloc();
    *&v621.clientIdentity[16] = v82;
    *v81 = 136315138;
    v83 = [objc_opt_self() cdEntityName];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = sub_10000668C(v84, v86, &v621.clientIdentity[16]);
    v86, v88, v89, v90, v91, v92, v93, v94;
    *(v81 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v74, v79, "Performing fetch during upsert {CDType: %s}", v81, 0xCu);
    sub_10000607C(v82);

    v78 = v618;
  }

  v95 = v609;
  v96 = v616;
  v97 = v617;
  v98 = sub_1006666A4(v78, v611);
  v106 = v31;
  v107 = v610;
  if (v106)
  {
    v78, v99, v100, v101, v102, v103, v104, v105;
    v115 = &v624;
    goto LABEL_121;
  }

  v604 = v98;
  v78, v99, v100, v101, v102, v103, v104, v105;
  if (v97)
  {
    v131 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v131 = *((v620 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v131)
  {
LABEL_118:
    v537 = v620;
    goto LABEL_119;
  }

  v132 = 0;
  v133 = v620 & 0xC000000000000001;
  v134 = v620 & 0xFFFFFFFFFFFFFF8;
  v135 = &v620->clientIdentity[16];
  v600 = v613 + 8;
  v594 = v613 + 56;
  v593 = (v613 + 48);
  *&v130 = 136446978;
  v591 = v130;
  *&v130 = 136446210;
  v602 = v130;
  *&v130 = 136447490;
  v592 = v130;
  *&v130 = 136447234;
  v590 = v130;
  v598 = v131;
  v597 = v620 & 0xC000000000000001;
  v596 = v620 & 0xFFFFFFFFFFFFFF8;
  v595 = &v620->clientIdentity[16];
  while (1)
  {
    if (v133)
    {
      v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v137 = __OFADD__(v132, 1);
      v138 = v132 + 1;
      if (v137)
      {
LABEL_113:
        __break(1u);
LABEL_114:
        if (qword_1009367A0 != -1)
        {
          goto LABEL_140;
        }

        goto LABEL_115;
      }
    }

    else
    {
      if (v132 >= *(v134 + 16))
      {
        __break(1u);
        goto LABEL_139;
      }

      v136 = *&v135[8 * v132];
      v137 = __OFADD__(v132, 1);
      v138 = v132 + 1;
      if (v137)
      {
        goto LABEL_113;
      }
    }

    v139 = v136;
    v615 = sub_1005E3810([v139 remObjectID], &qword_1009399F0, off_1008D4120);
    if (v106)
    {
      v620, v140, v141, v142, v143, v144, v145, v146;
      v604, v556, v557, v558, v559, v560, v561, v562;

      return;
    }

    v599 = v138;
    v617 = 0;

    v613 = v139;
    v147 = [v139 objectID];
    v148 = [v147 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = UUID.uuidString.getter();
    v150 = v149;
    v151 = *v600;
    v152 = v95;
    v153 = v608;
    (*v600)(v152, v608);
    v154 = [objc_opt_self() localInternalAccountID];
    v155 = [v154 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v156 = UUID.uuidString.getter();
    v157 = v107;
    v158 = v156;
    v160 = v159;
    v603 = v151;
    v151(v157, v153);
    if (a1 == v158 && v150 == v160)
    {
      v160, v161, v162, v163, v164, v165, v166, v167;
      v150, v168, v169, v170, v171, v172, v173, v174;
      v175 = v619;
    }

    else
    {
      v176 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v160, v177, v178, v179, v180, v181, v182, v183;
      v150, v184, v185, v186, v187, v188, v189, v190;
      v175 = v619;
      if ((v176 & 1) == 0)
      {
        v193 = v617;
        v194 = v607;
        v195 = v613;
        goto LABEL_46;
      }
    }

    v191 = *(v175 + 68);
    v192 = 2147483519;
    v193 = v617;
    v194 = v607;
    v195 = v613;
    if (v191 >> 14 >= 2)
    {
      if (v191 >> 14 == 2)
      {
        v192 = *(v175 + 64) | (*(v175 + 68) << 32);
      }

      else
      {
        v192 = 0x7FFFFFFFLL;
      }
    }

    sub_100009A40(2, v192);
    if (v193)
    {
      v620, v196, v197, v198, v199, v200, v201, v202;

      goto LABEL_120;
    }

LABEL_46:
    v203 = sub_100692848(v195, v194, &type metadata for REMAccountStorageCDIngestor.ValueKey, sub_1005F45A8);
    v31 = v193;
    if (v193)
    {
      v620, v204, v205, v206, v207, v208, v209, v210;

      v604, v563, v564, v565, v566, v567, v568, v569;
      return;
    }

    v74 = v203;
    v218 = sub_1005F6750();
    v219 = v604;
    v220 = *v604->clientIdentity;
    v618 = v74;
    if (!v220)
    {
      break;
    }

    v221 = sub_100393C74();
    if ((v211 & 1) == 0)
    {
      break;
    }

    v601 = *(*&v219->clientIdentity[40] + 8 * v221);
LABEL_73:
    a1 = v74[2];
    v603 = a1;
    v617 = 0;
    if (a1)
    {

      v31 = 0;
      while (v31 < v74[2])
      {
        v308 = v31->clientIdentity[v74 + 16];
        LODWORD(v74) = dword_1007B562C[v308];
        if (*(v175 + 68) >> 14 == 2 && (v74 & *(v175 + 64)) == 0)
        {
          v310 = Logger.logObject.getter();
          v311 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v310, v311))
          {
            v312 = v308;
            v313 = swift_slowAlloc();
            v314 = swift_slowAlloc();
            *&v621.clientIdentity[16] = v314;
            *v313 = v602;
            LOBYTE(v622) = v312;
            v315 = String.init<A>(describing:)();
            v317 = v316;
            v318 = sub_10000668C(v315, v316, &v621.clientIdentity[16]);
            v319 = v317;
            a1 = v603;
            v319, v320, v321, v322, v323, v324, v325, v326;
            *(v313 + 4) = v318;
            _os_log_impl(&_mh_execute_header, v310, v311, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v313, 0xCu);
            sub_10000607C(v314);
            v175 = v619;
          }
        }

        v327 = *(v175 + 68) >> 14;
        LODWORD(v96) = 2147483519;
        if (v327 >= 2)
        {
          if (v327 == 3)
          {
            LODWORD(v96) = 0x7FFFFFFF;
          }

          else
          {
            LODWORD(v96) = *(v175 + 64);
          }
        }

        if ((v96 & v74) == 0)
        {
          goto LABEL_114;
        }

        v31 = (v31 + 1);
        v96 = v616;
        v74 = v618;
        if (a1 == v31)
        {
          v618, v301, v302, v303, v304, v305, v306, v307;
          goto LABEL_91;
        }
      }

      goto LABEL_132;
    }

LABEL_91:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v73 = v615;
    v75 = v601;
    v328 = Logger.logObject.getter();
    v329 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v328, v329))
    {
      v588 = v329;
      v589 = v328;
      v330 = v74;
      v331 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      v587 = swift_slowAlloc();
      v622 = v587;
      *v331 = v592;
      *(v331 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v622);
      *(v331 + 12) = 2082;
      v333 = *(v175 + 40);
      *&v621.dataAccessRequestsWriter[2] = *(v175 + 24);
      *&v621.coreSuggestionsHandler[2] = v333;
      *&v621.coreSuggestionsHandler[16] = *(v175 + 54);
      sub_100009DAC(&v621.dataAccessRequestsWriter[2], &v621.clientIdentity[16]);
      v334 = sub_1000063E8();
      v336 = v335;
      sub_1005812D4(&v621.dataAccessRequestsWriter[2]);
      v337 = sub_10000668C(v334, v336, &v622);
      v336, v338, v339, v340, v341, v342, v343, v344;
      *(v331 + 14) = v337;
      *(v331 + 22) = 2114;
      *(v331 + 24) = v73;
      *v332 = v73;
      *(v331 + 32) = 2112;
      v601 = v73;
      v345 = v73;
      v615 = v75;
      v346 = [v75 objectID];
      *(v331 + 34) = v346;
      v586 = v332;
      v332[1] = v346;
      *(v331 + 42) = 2082;
      v354 = v330[2];
      if (v354)
      {
        *&v621.clientIdentity[16] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v354, 0);
        v355 = *&v621.clientIdentity[16];
        v356 = 32;
        do
        {
          v357 = sub_1002F6E68(*(v330 + v356));
          *&v621.clientIdentity[16] = v355;
          v366 = *v355->clientIdentity;
          v365 = *&v355->clientIdentity[8];
          if (v366 >= v365 >> 1)
          {
            v585 = v357;
            v368 = v358;
            sub_100026EF4((v365 > 1), v366 + 1, 1);
            v358 = v368;
            v96 = v616;
            v357 = v585;
            v355 = *&v621.clientIdentity[16];
          }

          *v355->clientIdentity = v366 + 1;
          v367 = v355 + 16 * v366;
          *(v367 + 4) = v357;
          *(v367 + 5) = v358;
          ++v356;
          --v354;
        }

        while (v354);
        v330, v358, v359, v360, v361, v362, v363, v364;
      }

      else
      {
        v330, v347, v348, v349, v350, v351, v352, v353;
        v355 = &_swiftEmptyArrayStorage;
      }

      v369 = Array.description.getter();
      v371 = v370;
      v355, v370, v372, v373, v374, v375, v376, v377;
      v330, v378, v379, v380, v381, v382, v383, v384;
      v385 = sub_10000668C(v369, v371, &v622);
      v371, v386, v387, v388, v389, v390, v391, v392;
      *(v331 + 44) = v385;
      *(v331 + 52) = 1024;
      v175 = v619;
      LODWORD(v385) = *(v619 + 104);

      *(v331 + 54) = v385;

      v393 = v589;
      _os_log_impl(&_mh_execute_header, v589, v588, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v331, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v74 = v330;
      v75 = v615;
      a1 = v603;
      v73 = v601;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v36 = v613;
    v394 = v617;
    sub_1002F9D20(v613, v75, v74, v175);
    if (v394)
    {
      goto LABEL_130;
    }

    v617 = 0;
    v74, v395, v396, v397, v398, v399, v400, v401;
    v402 = [v75 changedValues];
    v403 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v404 = v611;
    swift_beginAccess();
    v405 = v73;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v622 = v404[7];
    v404[7] = 0x8000000000000000;
    sub_1002C8688(v403, v405, isUniquelyReferenced_nonNull_native);

    v404[7] = v622;
    swift_endAccess();
    v414 = *(v175 + 104);
    if (a1 && (v414 & 1) != 0)
    {
      v403, v407, v408, v409, v410, v411, v412, v413;
      [v75 updateChangeCount];

      v95 = v609;
    }

    else
    {

      v415 = v405;

      v416 = Logger.logObject.getter();
      v417 = static os_log_type_t.default.getter();
      v403, v418, v419, v420, v421, v422, v423, v424;

      if (os_log_type_enabled(v416, v417))
      {
        v425 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v618 = swift_slowAlloc();
        *&v621.clientIdentity[16] = v618;
        *v425 = v590;
        *(v425 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v621.clientIdentity[16]);
        v615 = v75;
        *(v425 + 12) = 1024;
        *(v425 + 14) = v414;

        *(v425 + 18) = 1024;
        *(v425 + 20) = 0;
        *(v425 + 24) = 2114;
        *(v425 + 26) = v415;
        *v74 = v415;
        *(v425 + 34) = 2082;
        v426 = v415;
        v427 = v617;
        sub_1005E2810(v403);
        v429 = v428;
        v617 = v427;
        v403, v430, v431, v432, v433, v434, v435, v436;
        v437 = Array.description.getter();
        v439 = v438;
        v429, v438, v440, v441, v442, v443, v444, v445;
        v446 = sub_10000668C(v437, v439, &v621.clientIdentity[16]);
        v439, v447, v448, v449, v450, v451, v452, v453;
        *(v425 + 36) = v446;
        _os_log_impl(&_mh_execute_header, v416, v417, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v425, 0x2Cu);
        sub_1000050A4(v74, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v454 = &v623;
      }

      else
      {

        v403, v455, v456, v457, v458, v459, v460, v461;

        v454 = &v621.shareRecordIDToRootRecordIDLock[2];
      }

      v95 = v609;
      v96 = v616;
    }

    v132 = v599;
    v106 = v617;
    v107 = v610;
    v133 = v597;
    v134 = v596;
    v135 = v595;
    if (v599 == v598)
    {
      goto LABEL_118;
    }
  }

  if (v218 != 26)
  {
    v222 = 0;
    v223 = v74[2];
    while (1)
    {
      if (v223 == v222)
      {
        v74, v211, v212, v213, v214, v215, v216, v217;
        v604, v538, v539, v540, v541, v542, v543, v544;
        v552 = v620;
        v553 = v613;
        goto LABEL_124;
      }

      if (v222 >= v74[2])
      {
        goto LABEL_133;
      }

      v224 = sub_1002F6E68(*(v74 + v222 + 32));
      a1 = v225;
      v226 = sub_1002F6E68(v218);
      v234 = v227;
      if (v224 == v226 && a1 == v227)
      {
        break;
      }

      ++v222;
      v236 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a1, v237, v238, v239, v240, v241, v242, v243;
      v234, v244, v245, v246, v247, v248, v249, v250;
      if (v236)
      {
        goto LABEL_61;
      }
    }

    a1, v227, v228, v229, v230, v231, v232, v233;
    v234, v251, v252, v253, v254, v255, v256, v257;
LABEL_61:
    v258 = *(v619 + 88);
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v260 = [ObjCClassFromMetadata entity];
    v261 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v260 insertIntoManagedObjectContext:v258];
    v262 = v96;
    v263 = v261;
    [v258 assignObject:v263 toPersistentStore:v262];

    v264 = v263;
    v265 = [v615 uuid];
    v266 = v606;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v267 = v608;
    (*v594)(v266, 0, 1, v608);
    v268 = v612;
    sub_10018E470(v266, v612);
    isa = 0;
    if ((*v593)(v268, 1, v267) != 1)
    {
      v270 = v612;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v603(v270, v267);
    }

    [v264 setIdentifier:isa];

    sub_1000050A4(v606, &unk_100939D90, "8\n\r");
    v175 = v619;

    v74 = v615;
    v271 = v264;
    v272 = Logger.logObject.getter();
    v273 = static os_log_type_t.default.getter();

    v274 = os_log_type_enabled(v272, v273);
    v601 = v271;
    if (v274)
    {
      v275 = swift_slowAlloc();
      v276 = swift_slowAlloc();
      v603 = swift_slowAlloc();
      v622 = v603;
      *v275 = v591;
      *(v275 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v622);
      *(v275 + 12) = 2082;
      v277 = *(v175 + 40);
      *&v621.coreSuggestionsHandler[34] = *(v175 + 24);
      *&v621.publicCloudDatabaseController[10] = v277;
      *&v621.publicCloudDatabaseController[24] = *(v175 + 54);
      sub_100009DAC(&v621.coreSuggestionsHandler[34], &v621.clientIdentity[16]);
      v278 = sub_1000063E8();
      LODWORD(v589) = v273;
      v279 = v278;
      v281 = v280;
      sub_1005812D4(&v621.coreSuggestionsHandler[34]);
      v282 = sub_10000668C(v279, v281, &v622);
      v281, v283, v284, v285, v286, v287, v288, v289;
      *(v275 + 14) = v282;
      *(v275 + 22) = 2114;
      *(v275 + 24) = v74;
      *v276 = v74;
      *(v275 + 32) = 2112;
      v290 = v74;
      v291 = [v271 objectID];
      *(v275 + 34) = v291;
      v276[1] = v291;
      _os_log_impl(&_mh_execute_header, v272, v589, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v275, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v292 = v611;
    swift_beginAccess();
    v293 = v292[6];
    v96 = v616;
    if ((v293 & 0xC000000000000001) == 0)
    {
      v299 = v74;
      v298 = v611;
      goto LABEL_72;
    }

    if (v293 < 0)
    {
      v294 = v292[6];
    }

    else
    {
      v294 = v293 & 0xFFFFFFFFFFFFFF8;
    }

    v295 = v74;
    v296 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v296, 1))
    {
      v297 = sub_10021CDBC(v294, v296 + 1);
      v298 = v611;
      v611[6] = v297;
LABEL_72:
      v300 = swift_isUniquelyReferenced_nonNull_native();
      v622 = v298[6];
      sub_1002C8398(v601, v74, v300);
      v298[6] = v622;

      swift_endAccess();
      v74 = v618;
      goto LABEL_73;
    }

LABEL_139:
    __break(1u);
LABEL_140:
    swift_once();
LABEL_115:
    sub_100006654(v605, qword_100950D98);
    v462 = Logger.logObject.getter();
    v463 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v462, v463))
    {
      v464 = swift_slowAlloc();
      *&v621.clientIdentity[16] = swift_slowAlloc();
      *v464 = 136446466;
      v472 = sub_100729CB0(v74, v465, v466, v467, v468, v469, v470, v471);
      v474 = v473;
      v475 = sub_10000668C(v472, v473, &v621.clientIdentity[16]);
      v474, v476, v477, v478, v479, v480, v481, v482;
      *(v464 + 4) = v475;
      *(v464 + 12) = 2082;
      v490 = sub_100729CB0(v96, v483, v484, v485, v486, v487, v488, v489);
      v492 = v491;
      v493 = sub_10000668C(v490, v491, &v621.clientIdentity[16]);
      v492, v494, v495, v496, v497, v498, v499, v500;
      *(v464 + 14) = v493;
      _os_log_impl(&_mh_execute_header, v462, v463, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v464, 0x16u);
      swift_arrayDestroy();
    }

    v501 = objc_opt_self();
    v502 = String._bridgeToObjectiveC()();
    sub_100729CB0(v74, v503, v504, v505, v506, v507, v508, v509);
    v511 = v510;
    v512 = String._bridgeToObjectiveC()();
    v511, v513, v514, v515, v516, v517, v518, v519;
    sub_100729CB0(v96, v520, v521, v522, v523, v524, v525, v526);
    v528 = v527;
    v529 = String._bridgeToObjectiveC()();
    v528, v530, v531, v532, v533, v534, v535, v536;
    [v501 unauthorizedErrorWithMissingEntitlement:v502 requestedAccessLevel:v512 currentAccesslevel:v529];

    swift_willThrow();
    swift_bridgeObjectRelease_n();
    goto LABEL_118;
  }

  v74, v211, v212, v213, v214, v215, v216, v217;
  v604, v570, v571, v572, v573, v574, v575, v576;
  v553 = v613;
  v552 = v620;
LABEL_124:
  v552, v545, v546, v547, v548, v549, v550, v551;
  v554 = objc_opt_self();
  v555 = v615;
  [v554 noSuchObjectErrorWithObjectID:v615];
  swift_willThrow();
}

void sub_1006397B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v566 = a2;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v562 = &v566;
  v9 = sub_1003DF88C(sub_1006AD658, v561, a1);
  if (v4)
  {
    return;
  }

  v10 = v9;
  log = a1;
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
  v553 = v11;
  v552 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v560 = v8;
    v22 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v563[0] = v11;
    *v22 = 136446978;
    *(v22 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v563);
    *(v22 + 12) = 2048;
    *(v22 + 14) = *v10->clientIdentity;
    v10, v23, v24, v25, v26, v27, v28, v29;
    *(v22 + 22) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v30 = [swift_getObjCClassFromMetadata() description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = sub_10000668C(v31, v33, v563);
    v33, v35, v36, v37, v38, v39, v40, v41;
    *(v22 + 24) = v34;
    *(v22 + 32) = 2082;
    *(v22 + 34) = sub_10000668C(v560, v7, v563);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v10, v49, v50, v51, v52, v53, v54, v55;
  }

  v559 = *v10->clientIdentity;
  if (!v559)
  {
    v10, v42, v43, v44, v45, v46, v47, v48;
    return;
  }

  v56 = 0;
  v565 = _swiftEmptySetSingleton;
  v558 = &v10->clientIdentity[16];
  v57 = &unk_100939D60;
  v557 = v10;
  do
  {
    if (v56 >= *v10->clientIdentity)
    {
      __break(1u);
LABEL_126:
      __break(1u);
      v10, v42, v43, v44, v45, v46, v47, v48;
      v545, v415, v416, v417, v418, v419, v420, v421;
      v542, v422, v423, v424, v425, v426, v427, v428;
      v573, v429, v430, v431, v432, v433, v434, v435;

      return;
    }

    v58 = &v558[16 * v56];
    v59 = *(v58 + 1);
    v60 = *(v59 + 16);
    if (v60)
    {
      v573 = v56;
      v61 = *v58;

      v11 = 32;
      do
      {
        v62 = *(v59 + v11);
        sub_1000F5104(v57, &unk_1007959E0);
        v63 = v57;
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1007953F0;
        v65 = &selRef_reminderID;
        if (!v62)
        {
          v65 = &selRef_accountID;
        }

        *(v64 + 32) = [v61 *v65];
        sub_100392144(v64);
        v66 = v64;
        v57 = v63;
        v66, v67, v68, v69, v70, v71, v72, v73;
        ++v11;
        --v60;
      }

      while (v60);

      v59, v74, v75, v76, v77, v78, v79, v80;
      v10 = v557;
      v56 = v573;
    }

    ++v56;
  }

  while (v56 != v559);
  if (log >> 62)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((log & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  if (!v81)
  {
    v85 = &_swiftEmptyArrayStorage;
LABEL_31:
    v86 = v565;
    sub_1005E2514(v565);
    v88 = v87;
    v86, v89, v90, v91, v92, v93, v94, v95;
    v96 = v552;
    v573 = sub_10065F214(v88, v552);
    v88, v97, v98, v99, v100, v101, v102, v103;
    v543 = sub_10065E91C(v85, v552);
    v85, v104, v105, v106, v107, v108, v109, v110;
    swift_beginAccess();
    v111 = 0;
    while (1)
    {
      if (v111 >= *v10->clientIdentity)
      {
        goto LABEL_138;
      }

      v123 = &v558[16 * v111];
      v124 = *(v123 + 1);
      v125 = *v123;
      v546 = v124;

      v126 = sub_1005E45B0([v125 remObjectID]);
      v544 = v111;

      v134 = v96[6];
      if ((v134 & 0xC000000000000001) != 0)
      {
        v135 = v126;

        v136 = __CocoaDictionary.lookup(_:)();
        if (!v136)
        {
          goto LABEL_58;
        }

        v564 = v136;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v137 = v563[0];

        v134, v138, v139, v140, v141, v142, v143, v144;
        v145 = v573;
        if (v137)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v145 = v573;
        if (!*(v134 + 16))
        {
          goto LABEL_59;
        }

        v135 = v126;

        v146 = sub_10002B924(v135);
        if ((v147 & 1) == 0)
        {
LABEL_58:

          v134, v202, v203, v204, v205, v206, v207, v208;
          goto LABEL_59;
        }

        v137 = *(*(v134 + 56) + 8 * v146);

        v134, v148, v149, v150, v151, v152, v153, v154;
        if (v137)
        {
LABEL_43:

          v162 = v543;
          v541 = v125;
          if (!*(v543 + 16) || (v163 = sub_100393C74(), v162 = v543, (v155 & 1) == 0))
          {
            v145, v155, v156, v157, v158, v159, v160, v161;
            v10, v451, v452, v453, v454, v455, v456, v457;
            v546, v458, v459, v460, v461, v462, v463, v464;
            v162, v465, v466, v467, v468, v469, v470, v471;
            v472 = v126;

            v473 = Logger.logObject.getter();
            v474 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v473, v474))
            {
              v475 = swift_slowAlloc();
              v564 = swift_slowAlloc();
              *v475 = 136446722;
              *(v475 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v564);
              *(v475 + 12) = 2082;
              v476 = *(v553 + 40);
              v567 = *(v553 + 24);
              v568[0] = v476;
              *(v568 + 14) = *(v553 + 54);
              sub_100009DAC(&v567, v563);
              v477 = sub_1000063E8();
              v479 = v478;
              sub_1005812D4(&v567);
              v480 = sub_10000668C(v477, v479, &v564);
              v479, v481, v482, v483, v484, v485, v486, v487;
              *(v475 + 14) = v480;
              *(v475 + 22) = 2080;
              v488 = [v472 description];
              v489 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v491 = v490;

              v492 = sub_10000668C(v489, v491, &v564);
              v491, v493, v494, v495, v496, v497, v498, v499;
              *(v475 + 24) = v492;
              _os_log_impl(&_mh_execute_header, v473, v474, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v475, 0x20u);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v472];
            swift_willThrow();

            return;
          }

          v164 = *(*(v543 + 56) + 8 * v163);
          v165 = v546;
          swift_bridgeObjectRetain_n();
          v166 = v126;
          v539 = v164;
          v167 = v553;

          v168 = Logger.logObject.getter();
          v169 = static os_log_type_t.default.getter();

          v534 = v166;
          if (os_log_type_enabled(v168, v169))
          {
            v550 = v169;
            loga = v168;
            v170 = swift_slowAlloc();
            v171 = swift_slowAlloc();
            v564 = swift_slowAlloc();
            *v170 = 136446978;
            *(v170 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v564);
            *(v170 + 12) = 2082;
            v172 = *(v553 + 40);
            v571 = *(v553 + 24);
            v572[0] = v172;
            *(v572 + 14) = *(v553 + 54);
            sub_100009DAC(&v571, v563);
            v173 = sub_1000063E8();
            v175 = v174;
            sub_1005812D4(&v571);
            v176 = sub_10000668C(v173, v175, &v564);
            v175, v177, v178, v179, v180, v181, v182, v183;
            *(v170 + 14) = v176;
            *(v170 + 22) = 2114;
            *(v170 + 24) = v166;
            v547 = v171;
            *v171 = v166;
            *(v170 + 32) = 2082;
            v184 = *(v546 + 16);
            if (v184)
            {
              v563[0] = &_swiftEmptyArrayStorage;
              v185 = v166;
              sub_100026EF4(0, v184, 0);
              v193 = v563[0];
              v194 = *(v563[0] + 16);
              v195 = 16 * v194;
              v196 = 32;
              do
              {
                if (*(v165 + v196))
                {
                  v197 = 0x7265646E696D6572;
                }

                else
                {
                  v197 = 0x49746E756F636361;
                }

                if (*(v165 + v196))
                {
                  v198 = 0xEA00000000004449;
                }

                else
                {
                  v198 = 0xE900000000000044;
                }

                v563[0] = v193;
                v199 = *&v193->clientIdentity[8];
                v200 = v194 + 1;
                if (v194 >= v199 >> 1)
                {
                  sub_100026EF4((v199 > 1), v194 + 1, 1);
                  v165 = v546;
                  v193 = v563[0];
                }

                *v193->clientIdentity = v200;
                v201 = v193 + v195;
                *(v201 + 4) = v197;
                *(v201 + 5) = v198;
                v195 += 16;
                ++v196;
                v194 = v200;
                --v184;
              }

              while (v184);
              v165, v186, v187, v188, v189, v190, v191, v192;
              v167 = v553;
              v125 = v541;
            }

            else
            {
              v219 = v166;
              v546, v220, v221, v222, v223, v224, v225, v226;
              v193 = &_swiftEmptyArrayStorage;
            }

            v227 = Array.description.getter();
            v229 = v228;
            v193, v228, v230, v231, v232, v233, v234, v235;
            v165, v236, v237, v238, v239, v240, v241, v242;
            v243 = sub_10000668C(v227, v229, &v564);
            v229, v244, v245, v246, v247, v248, v249, v250;
            *(v170 + 34) = v243;
            _os_log_impl(&_mh_execute_header, loga, v550, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v170, 0x2Au);
            sub_1000050A4(v547, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v10 = v557;
            v145 = v573;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v251 = v165;
          v531 = *(v165 + 16);
          if (v531)
          {
            v252 = 0;
            v532 = v165 + 32;
            while (1)
            {
              if (v252 >= *(v251 + 16))
              {
                goto LABEL_139;
              }

              v535 = v252;
              v253 = *(v532 + v252);
              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v254 = swift_allocObject();
              *(v254 + 16) = xmmword_1007953F0;
              v536 = v253;
              v255 = &selRef_accountID;
              if (v253)
              {
                v255 = &selRef_reminderID;
              }

              *(v254 + 32) = [v125 *v255];
              v551 = v254 + 32;
              logb = (v254 & 0xFFFFFFFFFFFFFF8);
              v548 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v537 = v254;
              if (v548)
              {
                break;
              }

              v264 = _swiftEmptyDictionarySingleton;
LABEL_114:
              v537, v256, v257, v258, v259, v260, v261, v262;
              sub_10045BDE8(v264);
              v319 = v318;
              v264, v320, v321, v322, v323, v324, v325, v326;
              if (v536)
              {
                v327 = [v125 reminderID];
                sub_100683CB0(1, v327, v319);
                v329 = v535;
                v330 = &selRef_setReminder_;
              }

              else
              {
                v327 = [v125 accountID];
                sub_1006843F8(0, v327, v319, off_1008D4120, &qword_1009399F0, &type metadata for REMSavedAttachmentCDIngestor.RelationshipKey);
                v329 = v535;
                v330 = &selRef_setAccount_;
              }

              v252 = v329 + 1;
              v331 = v328;

              v319, v332, v333, v334, v335, v336, v337, v338;
              [v539 *v330];

              v125 = v541;
              v145 = v573;
              v251 = v546;
              if (v252 == v531)
              {
                goto LABEL_118;
              }
            }

            v263 = 0;
            v549 = v254 & 0xC000000000000001;
            v264 = _swiftEmptyDictionarySingleton;
            while (2)
            {
              if (v549)
              {
                v267 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v263 >= logb[2].isa)
                {
                  goto LABEL_134;
                }

                v267 = *(v551 + 8 * v263);
              }

              v268 = *v145->clientIdentity;
              v276 = v267;
              if (!v268 || (v277 = sub_100393C74(), (v269 & 1) == 0))
              {
                v546, v269, v270, v271, v272, v273, v274, v275;
                v537, v339, v340, v341, v342, v343, v344, v345;
                v264, v346, v347, v348, v349, v350, v351, v352;
                v543, v353, v354, v355, v356, v357, v358, v359;
                v145, v360, v361, v362, v363, v364, v365, v366;
                v557, v367, v368, v369, v370, v371, v372, v373;

                v374 = v276;
                v375 = Logger.logObject.getter();
                v376 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v375, v376))
                {
                  v377 = v167;
                  v378 = swift_slowAlloc();
                  v564 = swift_slowAlloc();
                  *v378 = 136446978;
                  *(v378 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v564);
                  *(v378 + 12) = 2082;
                  v379 = *(v377 + 40);
                  v569 = *(v377 + 24);
                  v570[0] = v379;
                  *(v570 + 14) = *(v377 + 54);
                  sub_100009DAC(&v569, v563);
                  v380 = sub_1000063E8();
                  v382 = v381;
                  sub_1005812D4(&v569);
                  v383 = sub_10000668C(v380, v382, &v564);
                  v382, v384, v385, v386, v387, v388, v389, v390;
                  *(v378 + 14) = v383;
                  *(v378 + 22) = 2080;
                  v391 = [v374 description];
                  v392 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v394 = v393;

                  v395 = sub_10000668C(v392, v394, &v564);
                  v394, v396, v397, v398, v399, v400, v401, v402;
                  *(v378 + 24) = v395;
                  *(v378 + 32) = 2080;
                  v403 = [v374 description];
                  v404 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v406 = v405;

                  v407 = sub_10000668C(v404, v406, &v564);
                  v406, v408, v409, v410, v411, v412, v413, v414;
                  *(v378 + 34) = v407;
                  _os_log_impl(&_mh_execute_header, v375, v376, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v378, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v374];
                swift_willThrow();

                return;
              }

              v278 = *(*&v145->clientIdentity[40] + 8 * v277);
              if ((v264 & 0xC000000000000001) != 0)
              {
                if (v264 < 0)
                {
                  v279 = v264;
                }

                else
                {
                  v279 = v264 & 0xFFFFFFFFFFFFFF8;
                }

                v280 = v278;
                v281 = __CocoaDictionary.count.getter();
                if (__OFADD__(v281, 1))
                {
                  goto LABEL_136;
                }

                v282 = v278;
                v283 = sub_10021D008(v279, v281 + 1);
              }

              else
              {
                v282 = *(*&v145->clientIdentity[40] + 8 * v277);
                v284 = v278;
                v283 = v264;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v563[0] = v283;
              v287 = sub_10002B924(v276);
              v288 = *(v283 + 16);
              v289 = (v286 & 1) == 0;
              v290 = v288 + v289;
              if (__OFADD__(v288, v289))
              {
                goto LABEL_135;
              }

              v291 = v286;
              if (*(v283 + 24) >= v290)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v264 = v283;
                  v145 = v573;
                  if ((v286 & 1) == 0)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_71;
                }

                sub_1000F5104(&qword_10093D598, &unk_10079B210);
                v297 = static _DictionaryStorage.copy(original:)();
                v264 = v297;
                if (*(v283 + 16))
                {
                  v305 = (v297 + 64);
                  __src = (v283 + 64);
                  v306 = ((1 << *(v264 + 32)) + 63) >> 6;
                  if (v264 != v283 || v305 >= &__src[8 * v306])
                  {
                    memmove(v305, __src, 8 * v306);
                  }

                  v307 = 0;
                  *(v264 + 16) = *(v283 + 16);
                  v308 = 1 << *(v283 + 32);
                  if (v308 < 64)
                  {
                    v309 = ~(-1 << v308);
                  }

                  else
                  {
                    v309 = -1;
                  }

                  v530 = v309 & *(v283 + 64);
                  for (i = (v308 + 63) >> 6; v530; v317 = v315)
                  {
                    v310 = __clz(__rbit64(v530));
                    v530 &= v530 - 1;
LABEL_109:
                    v313 = v310 | (v307 << 6);
                    v314 = *(*(v283 + 48) + 8 * v313);
                    v315 = *(*(v283 + 56) + 8 * v313);
                    *(*(v264 + 48) + 8 * v313) = v314;
                    *(*(v264 + 56) + 8 * v313) = v315;
                    v316 = v314;
                  }

                  v311 = v307;
                  while (1)
                  {
                    v307 = v311 + 1;
                    if (__OFADD__(v311, 1))
                    {
                      goto LABEL_140;
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
                      v530 = (v312 - 1) & v312;
                      goto LABEL_109;
                    }
                  }
                }

                v283, v298, v299, v300, v301, v302, v303, v304;
                v125 = v541;
                v145 = v573;
                if (v291)
                {
                  goto LABEL_71;
                }

LABEL_92:
                *(v264 + 8 * (v287 >> 6) + 64) |= 1 << v287;
                *(*(v264 + 48) + 8 * v287) = v276;
                *(*(v264 + 56) + 8 * v287) = v282;

                v294 = *(v264 + 16);
                v295 = __OFADD__(v294, 1);
                v296 = v294 + 1;
                if (v295)
                {
                  goto LABEL_137;
                }

                *(v264 + 16) = v296;
              }

              else
              {
                sub_10036CABC(v290, isUniquelyReferenced_nonNull_native);
                v264 = v563[0];
                v292 = sub_10002B924(v276);
                if ((v291 & 1) != (v293 & 1))
                {
                  goto LABEL_141;
                }

                v287 = v292;
                v145 = v573;
                if ((v291 & 1) == 0)
                {
                  goto LABEL_92;
                }

LABEL_71:

                v265 = *(v264 + 56);
                v266 = *(v265 + 8 * v287);
                *(v265 + 8 * v287) = v282;
              }

              v167 = v553;
              v10 = v557;
              v263 = (v263 + 1);
              if (v263 == v548)
              {
                goto LABEL_114;
              }

              continue;
            }
          }

LABEL_118:
          v251, v212, v213, v214, v215, v216, v217, v218;
          if (*(v167 + 104))
          {
            [v539 updateChangeCount];
          }

          goto LABEL_121;
        }
      }

LABEL_59:
      v546, v127, v128, v129, v130, v131, v132, v133;
      v209 = v126;
      v210 = Logger.logObject.getter();
      v211 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v210, v211))
      {

LABEL_121:
        goto LABEL_34;
      }

      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v563[0] = v114;
      *v112 = 136446466;
      *(v112 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v563);
      *(v112 + 12) = 2114;
      *(v112 + 14) = v209;
      *v113 = v209;
      v115 = v209;
      _os_log_impl(&_mh_execute_header, v210, v211, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v112, 0x16u);
      sub_1000050A4(v113, &unk_100938E70, &unk_100797230);

      sub_10000607C(v114);

LABEL_34:
      v96 = v552;
      v111 = v544 + 1;
      if ((v544 + 1) == v559)
      {
        v10, v116, v117, v118, v119, v120, v121, v122;
        v543, v436, v437, v438, v439, v440, v441, v442;
        v450 = v573;
        goto LABEL_32;
      }
    }
  }

  v563[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v81 < 0)
  {
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
    return;
  }

  v82 = 0;
  v573 = (log & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    v10 = (v82 + 1);
    if (__OFADD__(v82, 1))
    {
      goto LABEL_126;
    }

    if ((log & 0xC000000000000001) == 0)
    {
      break;
    }

    v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_27:
    v84 = v83;
    sub_1005E45B0([(objc_class *)v83 remObjectID]);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v57 = *(v563[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    ++v82;
    if (v10 == v81)
    {
      v85 = v563[0];
      v10 = v557;
      goto LABEL_31;
    }
  }

  if (v82 < *v573->clientIdentity)
  {
    v83 = *(log + 8 * v82 + 32);
    goto LABEL_27;
  }

  __break(1u);

  v10, v500, v501, v502, v503, v504, v505, v506;
  v545, v507, v508, v509, v510, v511, v512, v513;

  v542, v514, v515, v516, v517, v518, v519, v520;
  v57, v521, v522, v523, v524, v525, v526, v527;

  v450 = v81;
LABEL_32:
  v450, v443, v444, v445, v446, v447, v448, v449;
}

void sub_10063AE84(unint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v602 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v576 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v617 = a2;
  v11 = a3[2];
  v12 = a3[3];
  v612[2] = &v617;
  v613 = v3;
  v13 = v624;
  v14 = sub_1003DF8B8(sub_1006AF308, v612, a1);
  if (v13)
  {
    return;
  }

  v599 = a3;
  v610 = v11;
  *&v611 = v12;
  v15 = v14;
  v624 = a2;
  v603 = a1;
  v600 = v10;
  v596 = v7;
  v16 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v606 = 0;
  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_100945730);
  v19 = v15;

  v20 = v611;

  v598 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v20, v23, v24, v25, v26, v27, v28, v29;
  v30 = os_log_type_enabled(&v21->super, v22);
  v601 = v16;
  v605 = v19;
  v31 = v610;
  v597 = "mutateRelationshipOrdering";
  if (v30)
  {
    v32 = swift_slowAlloc();
    v609 = swift_slowAlloc();
    v614[0] = v609;
    *v32 = 136446978;
    *(v32 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v614);
    *(v32 + 12) = 2048;
    *(v32 + 14) = *v605->clientIdentity;
    v605, v33, v34, v35, v36, v37, v38, v39;
    *(v32 + 22) = 2082;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v40 = [swift_getObjCClassFromMetadata() description];
    v41 = v22;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    p_super = &v21->super;
    v45 = v44;

    v46 = sub_10000668C(v42, v45, v614);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v32 + 24) = v46;
    *(v32 + 32) = 2082;
    *(v32 + 34) = sub_10000668C(v31, v20, v614);
    _os_log_impl(&_mh_execute_header, p_super, v41, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v32, 0x2Au);
    v21 = v609;
    swift_arrayDestroy();

    v19 = v605;
  }

  else
  {

    v19, v61, v62, v63, v64, v65, v66, v67;
  }

  v68 = v624;
  v608 = *v19->clientIdentity;
  if (!v608)
  {
    v155 = v19;
LABEL_35:
    v155, v54, v55, v56, v57, v58, v59, v60;
    return;
  }

  v69 = 0;
  v616 = _swiftEmptySetSingleton;
  v607 = &v19->clientIdentity[16];
  v604 = &v624->clientIdentity[8];
  v70 = &unk_100939D60;
  v624 = (v624 + 16);
  v611 = xmmword_1007953F0;
  v71 = &v68->clientIdentity[8];
  do
  {
    if (v69 >= *v19->clientIdentity)
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      v19, v54, v55, v56, v57, v58, v59, v60;
      v594, v482, v483, v484, v485, v486, v487, v488;
      v591, v489, v490, v491, v492, v493, v494, v495;
      v71, v496, v497, v498, v499, v500, v501, v502;

      return;
    }

    v72 = &v607[16 * v69];
    v73 = *(v72 + 1);
    v74 = *(v73 + 16);
    if (v74)
    {
      v610 = v69;
      v609 = *v72;

      v75 = 32;
      do
      {
        v76 = *(v73 + v75);
        sub_1000F5104(v70, &unk_1007959E0);
        v77 = swift_allocObject();
        v78 = v70;
        v79 = v77;
        *(v77 + 16) = v611;
        p_isa = &v624->super.isa;
        if (v76)
        {
          p_isa = v71;
        }

        v81 = *p_isa;
        *(v77 + 32) = v81;
        v82 = v81;
        v21 = &v616;
        sub_100392144(v79);
        v83 = v79;
        v70 = v78;
        v83, v84, v85, v86, v87, v88, v89, v90;
        ++v75;
        --v74;
      }

      while (v74);

      v73, v91, v92, v93, v94, v95, v96, v97;
      v19 = v605;
      v69 = v610;
    }

    ++v69;
  }

  while (v69 != v608);
  v98 = v602;
  if (v603 >> 62)
  {
    v99 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v99 = *((v603 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v606;
  v101 = &_swiftEmptyArrayStorage;
  if (!v99)
  {
LABEL_30:
    v108 = v616;
    sub_1005E2514(v616);
    if (v100)
    {
      v108, v110, v111, v112, v113, v114, v115, v116;
      v101, v133, v134, v135, v136, v137, v138, v139;
      v19, v140, v141, v142, v143, v144, v145, v146;
      return;
    }

    v131 = v109;
    v108, v110, v111, v112, v113, v114, v115, v116;
    v132 = v599;
    v71 = sub_10065F214(v131, v599);
    v131, v147, v148, v149, v150, v151, v152, v153;
    v154 = sub_10065FB04(v101, v132);
    v606 = 0;
    v591 = v154;
    v101, v156, v157, v158, v159, v160, v161, v162;
    swift_beginAccess();
    v163 = 0;
    v581 = (v98 + 8);
    *&v164 = 136446466;
    v586 = v164;
    *&v164 = 136446978;
    v582 = v164;
    v595 = v71;
    while (1)
    {
      if (v163 >= *v19->clientIdentity)
      {
        goto LABEL_147;
      }

      v172 = &v607[16 * v163];
      v173 = *(v172 + 1);
      v21 = *v172;
      v594 = v173;

      v174 = [(RDXPCStorePerformer *)v21 remObjectID];
      v175 = v606;
      v176 = sub_1005E3810(v174, &qword_10093CFE0, off_1008D4190);
      v606 = v175;
      if (v175)
      {
        goto LABEL_133;
      }

      v177 = v176;
      v592 = v163;
      v593 = v21;

      v185 = v132[6];
      if ((v185 & 0xC000000000000001) != 0)
      {
        v186 = v177;

        v187 = __CocoaDictionary.lookup(_:)();
        if (!v187)
        {
          goto LABEL_62;
        }

        v615[0] = v187;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v188 = v614[0];
      }

      else
      {
        if (!*(v185 + 16))
        {
          goto LABEL_63;
        }

        v186 = v177;

        v189 = sub_10002B924(v186);
        if ((v190 & 1) == 0)
        {
LABEL_62:

          v185, v247, v248, v249, v250, v251, v252, v253;
LABEL_63:
          v594, v178, v179, v180, v181, v182, v183, v184;
          v254 = v177;
          v255 = Logger.logObject.getter();
          v256 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v255, v256))
          {
            v257 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v614[0] = v259;
            *v257 = v586;
            *(v257 + 4) = sub_10000668C(0xD000000000000016, (v597 | 0x8000000000000000), v614);
            *(v257 + 12) = 2114;
            *(v257 + 14) = v254;
            *v258 = v254;
            v260 = v254;
            _os_log_impl(&_mh_execute_header, v255, v256, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v257, 0x16u);
            sub_1000050A4(v258, &unk_100938E70, &unk_100797230);

            sub_10000607C(v259);

            v19 = v605;
          }

          else
          {
          }

          goto LABEL_37;
        }

        v188 = *(*(v185 + 56) + 8 * v189);
      }

      v185, v191, v192, v193, v194, v195, v196, v197;
      if (!v188)
      {
        goto LABEL_63;
      }

      v205 = v591;
      if (!*v591->clientIdentity || (v206 = sub_100393C74(), v205 = v591, (v198 & 1) == 0))
      {
        v71, v198, v199, v200, v201, v202, v203, v204;
        v19, v504, v505, v506, v507, v508, v509, v510;
        v594, v511, v512, v513, v514, v515, v516, v517;
        v205, v518, v519, v520, v521, v522, v523, v524;
        v525 = v177;
        v526 = v601;

        v527 = Logger.logObject.getter();
        v528 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v527, v528))
        {
          v529 = swift_slowAlloc();
          v615[0] = swift_slowAlloc();
          *v529 = 136446722;
          *(v529 + 4) = sub_10000668C(0xD000000000000016, (v597 | 0x8000000000000000), v615);
          *(v529 + 12) = 2082;
          v530 = *(v526 + 40);
          v618 = *(v526 + 24);
          v619[0] = v530;
          *(v619 + 14) = *(v526 + 54);
          sub_100009DAC(&v618, v614);
          v531 = sub_1000063E8();
          v533 = v532;
          sub_1005812D4(&v618);
          v534 = sub_10000668C(v531, v533, v615);
          v533, v535, v536, v537, v538, v539, v540, v541;
          *(v529 + 14) = v534;
          *(v529 + 22) = 2080;
          v542 = [v525 description];
          v543 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v545 = v544;

          v546 = sub_10000668C(v543, v545, v615);
          v545, v547, v548, v549, v550, v551, v552, v553;
          *(v529 + 24) = v546;
          _os_log_impl(&_mh_execute_header, v527, v528, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v529, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v525];
        swift_willThrow();

        return;
      }

      v207 = *(*&v591->clientIdentity[40] + 8 * v206);
      v208 = v594;
      swift_bridgeObjectRetain_n();
      v209 = v177;
      v590 = v207;
      v210 = v601;

      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.default.getter();

      v213 = os_log_type_enabled(v211, v212);
      v585 = v209;
      if (v213)
      {
        LODWORD(v602) = v212;
        v609 = v211;
        v214 = swift_slowAlloc();
        v610 = swift_slowAlloc();
        v589 = swift_slowAlloc();
        v615[0] = v589;
        *v214 = v582;
        *(v214 + 4) = sub_10000668C(0xD000000000000016, (v597 | 0x8000000000000000), v615);
        *(v214 + 12) = 2082;
        v215 = *(v210 + 40);
        v622 = *(v210 + 24);
        v623[0] = v215;
        *(v623 + 14) = *(v210 + 54);
        sub_100009DAC(&v622, v614);
        v216 = sub_1000063E8();
        v217 = v208;
        v219 = v218;
        sub_1005812D4(&v622);
        v220 = sub_10000668C(v216, v219, v615);
        v219, v221, v222, v223, v224, v225, v226, v227;
        *(v214 + 14) = v220;
        *(v214 + 22) = 2114;
        *(v214 + 24) = v209;
        *v610 = v209;
        v603 = v214;
        *(v214 + 32) = 2082;
        v228 = *v217->clientIdentity;
        if (v228)
        {
          v614[0] = &_swiftEmptyArrayStorage;
          v229 = v209;
          sub_100026EF4(0, v228, 0);
          v237 = v614[0];
          v238 = *(v614[0] + 16);
          v239 = 16 * v238;
          v240 = v217;
          v241 = 32;
          do
          {
            if (*(&v240->super.isa + v241))
            {
              v242 = 0x7265646E696D6572;
            }

            else
            {
              v242 = 0x49746E756F636361;
            }

            if (*(&v240->super.isa + v241))
            {
              v243 = 0xEA00000000004449;
            }

            else
            {
              v243 = 0xE900000000000044;
            }

            v614[0] = v237;
            v244 = *&v237->clientIdentity[8];
            v245 = v238 + 1;
            if (v238 >= v244 >> 1)
            {
              sub_100026EF4((v244 > 1), v238 + 1, 1);
              v240 = v594;
              v237 = v614[0];
            }

            *v237->clientIdentity = v245;
            v246 = v237 + v239;
            *(v246 + 4) = v242;
            *(v246 + 5) = v243;
            v239 += 16;
            ++v241;
            v238 = v245;
            --v228;
          }

          while (v228);
          v217 = v240;
          v240, v230, v231, v232, v233, v234, v235, v236;
          v19 = v605;
          v71 = v595;
        }

        else
        {
          v268 = v209;
          v217, v269, v270, v271, v272, v273, v274, v275;
          v237 = &_swiftEmptyArrayStorage;
        }

        v276 = Array.description.getter();
        v278 = v277;
        v237, v277, v279, v280, v281, v282, v283, v284;
        v217, v285, v286, v287, v288, v289, v290, v291;
        v292 = v276;
        v208 = v217;
        v293 = sub_10000668C(v292, v278, v615);
        v278, v294, v295, v296, v297, v298, v299, v300;
        v301 = v603;
        *(v603 + 34) = v293;
        v302 = v609;
        _os_log_impl(&_mh_execute_header, v609, v602, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v301, 0x2Au);
        sub_1000050A4(v610, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v210 = v601;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v303 = v600;
      v304 = v604;
      v583 = *v208->clientIdentity;
      if (v583)
      {
        v305 = 0;
        v584 = &v208->clientIdentity[16];
        while (1)
        {
          if (v305 >= *v208->clientIdentity)
          {
            goto LABEL_148;
          }

          v587 = v305;
          v306 = v584[v305];
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v307 = swift_allocObject();
          v308 = v307;
          *(v307 + 16) = v611;
          v588 = v306;
          v309 = &v624->super.isa;
          if (v306)
          {
            v309 = v304;
          }

          v310 = *v309;
          *(v307 + 32) = v310;
          v609 = (v307 + 32);
          v311 = v310;
          v610 = (v308 & 0xFFFFFFFFFFFFFF8);
          v602 = *((v308 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v589 = v308;
          if (v602)
          {
            break;
          }

          v320 = _swiftEmptyDictionarySingleton;
          v321 = v606;
LABEL_118:
          v589, v312, v313, v314, v315, v316, v317, v318;
          sub_10045BDE8(v320);
          v21 = v376;
          v320, v377, v378, v379, v380, v381, v382, v383;
          if (v588)
          {
            v384 = *v304;
            sub_1006843F8(1, *v304, v21, off_1008D41D0, &qword_100939EE0, &type metadata for REMHashtagCDIngestor.RelationshipKey);
            v606 = v321;
            v19 = v605;
            if (v321)
            {
              goto LABEL_139;
            }

            v386 = v385;
            v21, v387, v388, v389, v390, v391, v392, v393;
            v394 = v590;
            [v590 setReminder:v386];
            v395 = [v384 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v396.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v581)(v303, v596);
            [v394 setReminderIdentifier:v396.super.isa];
          }

          else
          {
            sub_1006843F8(0, v624->super.isa, v21, off_1008D4120, &qword_1009399F0, &type metadata for REMHashtagCDIngestor.RelationshipKey);
            v606 = v321;
            v19 = v605;
            if (v321)
            {
              goto LABEL_139;
            }

            v396.super.isa = v397;
            v21, v398, v399, v400, v401, v402, v403, v404;
            [v590 setAccount:v396.super.isa];
          }

          v305 = v587 + 1;

          v210 = v601;
          v208 = v594;
          if (v305 == v583)
          {
            goto LABEL_124;
          }
        }

        v319 = 0;
        v603 = v308 & 0xC000000000000001;
        v320 = _swiftEmptyDictionarySingleton;
        v321 = v606;
        while (2)
        {
          if (v603)
          {
            v324 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v319 >= v610[2])
            {
              goto LABEL_143;
            }

            v324 = v609[v319].isa;
          }

          v325 = *(v71 + 16);
          v333 = v324;
          if (!v325 || (v334 = sub_100393C74(), (v326 & 1) == 0))
          {
            v594, v326, v327, v328, v329, v330, v331, v332;
            v589, v406, v407, v408, v409, v410, v411, v412;
            v320, v413, v414, v415, v416, v417, v418, v419;
            v591, v420, v421, v422, v423, v424, v425, v426;
            v71, v427, v428, v429, v430, v431, v432, v433;
            v605, v434, v435, v436, v437, v438, v439, v440;

            v441 = v333;
            v442 = Logger.logObject.getter();
            v443 = v210;
            v444 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v442, v444))
            {
              v445 = swift_slowAlloc();
              v624 = swift_slowAlloc();
              v615[0] = v624;
              *v445 = v582;
              *(v445 + 4) = sub_10000668C(0xD000000000000016, (v597 | 0x8000000000000000), v615);
              *(v445 + 12) = 2082;
              v446 = *(v443 + 40);
              v620 = *(v443 + 24);
              v621[0] = v446;
              *(v621 + 14) = *(v443 + 54);
              sub_100009DAC(&v620, v614);
              v447 = sub_1000063E8();
              v449 = v448;
              sub_1005812D4(&v620);
              v450 = sub_10000668C(v447, v449, v615);
              v449, v451, v452, v453, v454, v455, v456, v457;
              *(v445 + 14) = v450;
              *(v445 + 22) = 2080;
              v458 = [(objc_class *)v441 description];
              v459 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v461 = v460;

              v462 = sub_10000668C(v459, v461, v615);
              v461, v463, v464, v465, v466, v467, v468, v469;
              *(v445 + 24) = v462;
              *(v445 + 32) = 2080;
              v470 = [(objc_class *)v441 description];
              v471 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v473 = v472;

              v474 = sub_10000668C(v471, v473, v615);
              v473, v475, v476, v477, v478, v479, v480, v481;
              *(v445 + 34) = v474;
              _os_log_impl(&_mh_execute_header, v442, v444, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v445, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v441];
            swift_willThrow();

            return;
          }

          v335 = *(*(v71 + 56) + 8 * v334);
          v606 = v321;
          if ((v320 & 0xC000000000000001) != 0)
          {
            if (v320 < 0)
            {
              v336 = v320;
            }

            else
            {
              v336 = v320 & 0xFFFFFFFFFFFFFF8;
            }

            v337 = v335;
            v338 = __CocoaDictionary.count.getter();
            if (__OFADD__(v338, 1))
            {
              goto LABEL_145;
            }

            v339 = sub_10021D008(v336, v338 + 1);
          }

          else
          {
            v340 = v335;
            v339 = v320;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v614[0] = v339;
          v342 = v333;
          v344 = sub_10002B924(v333);
          v345 = *(v339 + 16);
          v346 = (v343 & 1) == 0;
          v347 = v345 + v346;
          if (__OFADD__(v345, v346))
          {
            goto LABEL_144;
          }

          v348 = v343;
          if (*(v339 + 24) >= v347)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v320 = v339;
              v304 = v604;
              if ((v343 & 1) == 0)
              {
                goto LABEL_96;
              }

              goto LABEL_75;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v354 = static _DictionaryStorage.copy(original:)();
            v320 = v354;
            if (*(v339 + 16))
            {
              v362 = (v354 + 64);
              v363 = 1 << *(v320 + 32);
              v578 = (v339 + 64);
              v364 = (v363 + 63) >> 6;
              if (v320 != v339 || v362 >= &v578[8 * v364])
              {
                memmove(v362, v578, 8 * v364);
              }

              v365 = 0;
              *(v320 + 16) = *(v339 + 16);
              v366 = 1 << *(v339 + 32);
              if (v366 < 64)
              {
                v367 = ~(-1 << v366);
              }

              else
              {
                v367 = -1;
              }

              v580 = v367 & *(v339 + 64);
              for (i = (v366 + 63) >> 6; v580; v375 = v579)
              {
                v368 = __clz(__rbit64(v580));
                v580 &= v580 - 1;
LABEL_113:
                v371 = v368 | (v365 << 6);
                v372 = *(*(v339 + 48) + 8 * v371);
                v579 = *(*(v339 + 56) + 8 * v371);
                v373 = v579;
                *(*(v320 + 48) + 8 * v371) = v372;
                *(*(v320 + 56) + 8 * v371) = v373;
                v374 = v372;
              }

              v369 = v365;
              while (1)
              {
                v365 = v369 + 1;
                if (__OFADD__(v369, 1))
                {
                  goto LABEL_149;
                }

                if (v365 >= i)
                {
                  break;
                }

                v370 = *&v578[8 * v365];
                ++v369;
                if (v370)
                {
                  v368 = __clz(__rbit64(v370));
                  v580 = (v370 - 1) & v370;
                  goto LABEL_113;
                }
              }
            }

            v339, v355, v356, v357, v358, v359, v360, v361;
            v304 = v604;
            if (v348)
            {
              goto LABEL_75;
            }

LABEL_96:
            *(v320 + 8 * (v344 >> 6) + 64) |= 1 << v344;
            *(*(v320 + 48) + 8 * v344) = v342;
            *(*(v320 + 56) + 8 * v344) = v335;

            v351 = *(v320 + 16);
            v352 = __OFADD__(v351, 1);
            v353 = v351 + 1;
            if (v352)
            {
              goto LABEL_146;
            }

            *(v320 + 16) = v353;
          }

          else
          {
            sub_10036CABC(v347, isUniquelyReferenced_nonNull_native);
            v320 = v614[0];
            v349 = sub_10002B924(v342);
            if ((v348 & 1) != (v350 & 1))
            {
              goto LABEL_150;
            }

            v344 = v349;
            v304 = v604;
            if ((v348 & 1) == 0)
            {
              goto LABEL_96;
            }

LABEL_75:

            v322 = *(v320 + 56);
            v323 = *(v322 + 8 * v344);
            *(v322 + 8 * v344) = v335;
          }

          v303 = v600;
          v210 = v601;
          v321 = v606;
          v71 = v595;
          if (++v319 == v602)
          {
            goto LABEL_118;
          }

          continue;
        }
      }

LABEL_124:
      v208, v261, v262, v263, v264, v265, v266, v267;
      if (*(v210 + 104))
      {
        v405 = v590;
        [v590 updateChangeCount];
      }

      else
      {
      }

LABEL_37:
      v132 = v599;
      v163 = v592 + 1;
      if ((v592 + 1) == v608)
      {
        v503 = v19;
        goto LABEL_140;
      }
    }
  }

  v614[0] = &_swiftEmptyArrayStorage;
  v21 = v614;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v99 & 0x8000000000000000) == 0)
  {
    v102 = 0;
    v103 = v603 & 0xC000000000000001;
    v610 = (v603 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v19 = (v102 + 1);
      if (__OFADD__(v102, 1))
      {
        goto LABEL_132;
      }

      v104 = v606;
      if (v103)
      {
        v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v102 >= v610[2])
        {
          __break(1u);
LABEL_139:
          v554 = v593;

          v21, v555, v556, v557, v558, v559, v560, v561;
          v19, v562, v563, v564, v565, v566, v567, v568;

          v503 = v594;
LABEL_140:
          v503, v165, v166, v167, v168, v169, v170, v171;
          v591, v569, v570, v571, v572, v573, v574, v575;
          v155 = v71;
          goto LABEL_35;
        }

        v105 = *(v603 + 8 * v102 + 32);
      }

      v106 = v105;
      v107 = sub_1005E3810([v105 remObjectID], &qword_10093CFE0, off_1008D4190);
      v606 = v104;
      if (v104)
      {

        v605, v117, v118, v119, v120, v121, v122, v123;
        v616, v124, v125, v126, v127, v128, v129, v130;

        return;
      }

      v71 = v107;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v614;
      specialized ContiguousArray._endMutation()();
      ++v102;
      if (v19 == v99)
      {
        v101 = v614[0];
        v19 = v605;
        v100 = v606;
        v98 = v602;
        goto LABEL_30;
      }
    }
  }

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
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10063C664(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v497 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v493 = &v497;
  v10 = sub_1003DF8E4(sub_1006AC73C, v492, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v484 = a1;
  v485 = a2;
  v482 = a3;
  v12 = v3;
  v13 = "establishRelationships";
  if (qword_100936008 != -1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    v14 = &v13[-1].publicCloudDatabaseController[34];
    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100945730);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v8, v18, v19, v20, v21, v22, v23, v24;
    v483 = v12;
    v486 = v11;
    v481 = v14;
    if (os_log_type_enabled(v16, v17))
    {
      v491 = v9;
      v9 = swift_slowAlloc();
      v494[0] = swift_slowAlloc();
      *v9 = 136446978;
      *(v9 + 4) = sub_10000668C(0xD000000000000016, (v14 | 0x8000000000000000), v494);
      *(v9 + 6) = 2048;
      *(v9 + 14) = *(v11 + 16);
      v11, v25, v26, v27, v28, v29, v30, v31;
      *(v9 + 11) = 2082;
      type metadata accessor for REMCDManualSortHint();
      v32 = [swift_getObjCClassFromMetadata() description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v11 = v486;
      v36 = sub_10000668C(v33, v35, v494);
      v35, v37, v38, v39, v40, v41, v42, v43;
      v9[3] = v36;
      *(v9 + 16) = 2082;
      *(v9 + 34) = sub_10000668C(v491, v8, v494);
      _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v9, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v11, v51, v52, v53, v54, v55, v56, v57;
    }

    v489 = *(v11 + 16);
    if (!v489)
    {
      v11, v44, v45, v46, v47, v48, v49, v50;
      return;
    }

    v58 = 0;
    v496 = _swiftEmptySetSingleton;
    v488 = v11 + 32;
    do
    {
      if (v58 >= *(v11 + 16))
      {
        __break(1u);
        v486, v44, v45, v46, v47, v48, v49, v50;

        &type metadata for Swift.AnyObject, v396, v397, v398, v399, v400, v401, v402;
        v474, v403, v404, v405, v406, v407, v408, v409;
        v9, v410, v411, v412, v413, v414, v415, v416;

        v320 = &unk_100939D60;
        goto LABEL_29;
      }

      v59 = v488 + 16 * v58;
      v60 = *(v59 + 8);
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = *(v485 + 16);
        v490 = *v59;
        v504 = v60;

        do
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007953F0;
          *(inited + 32) = v62;
          v9 = (inited + 32);
          v64 = v62;
          sub_100392144(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          --v61;
        }

        while (v61);

        v504, v65, v66, v67, v68, v69, v70, v71;
        v11 = v486;
      }

      ++v58;
    }

    while (v58 != v489);
    if (v484 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v484 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = &_swiftEmptyArrayStorage;
    if (!v8)
    {
      v83 = &_swiftEmptyArrayStorage;
      goto LABEL_28;
    }

    v494[0] = &_swiftEmptyArrayStorage;
    v13 = v494;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v8 < 0)
    {
      break;
    }

    v79 = 0;
    v11 = v484 & 0xC000000000000001;
    v504 = (v484 & 0xFFFFFFFFFFFFFF8);
    v9 = &selRef_persistentStoreForIdentifier_;
    while (1)
    {
      v80 = (v79 + 1);
      if (__OFADD__(v79, 1))
      {
        __break(1u);
LABEL_106:
        v9, v72, v73, v74, v75, v76, v77, v78;
        v11, v417, v418, v419, v420, v421, v422, v423;
        v484, v424, v425, v426, v427, v428, v429, v430;
        v13, v431, v432, v433, v434, v435, v436, v437;
        v438 = v79;

        v439 = Logger.logObject.getter();
        v440 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v439, v440))
        {
          v441 = swift_slowAlloc();
          v495 = swift_slowAlloc();
          *v441 = 136446722;
          *(v441 + 4) = sub_10000668C(0xD000000000000016, (v481 | 0x8000000000000000), &v495);
          *(v441 + 12) = 2082;
          v442 = *&v483->clientIdentity[24];
          v498 = *&v483->clientIdentity[8];
          v499[0] = v442;
          *(v499 + 14) = *&v483->clientIdentity[38];
          sub_100009DAC(&v498, v494);
          v443 = sub_1000063E8();
          v445 = v444;
          sub_1005812D4(&v498);
          v446 = sub_10000668C(v443, v445, &v495);
          v445, v447, v448, v449, v450, v451, v452, v453;
          *(v441 + 14) = v446;
          *(v441 + 22) = 2080;
          v454 = [v438 description];
          v455 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v457 = v456;

          v458 = sub_10000668C(v455, v457, &v495);
          v457, v459, v460, v461, v462, v463, v464, v465;
          *(v441 + 24) = v458;
          _os_log_impl(&_mh_execute_header, v439, v440, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v441, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v438];
        swift_willThrow();

        return;
      }

      if (!v11)
      {
        break;
      }

      v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
      v82 = v81;
      sub_1005E5350([v81 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v494;
      specialized ContiguousArray._endMutation()();
      ++v79;
      if (v80 == v8)
      {
        v83 = v494[0];
        v11 = v486;
LABEL_28:
        v84 = v496;
        sub_1005E2514(v496);
        v86 = v85;
        v84, v87, v88, v89, v90, v91, v92, v93;
        v94 = v482;
        v9 = sub_10065F214(v86, v482);
        v86, v95, v96, v97, v98, v99, v100, v101;
        v475 = sub_1006603FC(v83, v482);
        v83, v102, v103, v104, v105, v106, v107, v108;
        swift_beginAccess();
        v109 = 0;
        v110 = (_swiftEmptyDictionarySingleton & 0xFFFFFFFFFFFFFF8);
        if (_swiftEmptyDictionarySingleton < 0)
        {
          v110 = _swiftEmptyDictionarySingleton;
        }

        v476 = v110;
        v111 = &selRef_persistentStoreForIdentifier_;
        v478 = v9;
        while (2)
        {
          if (v109 >= *(v11 + 16))
          {
            goto LABEL_118;
          }

          v470 = v109;
          v112 = v488 + 16 * v109;
          v113 = *(v112 + 8);
          v114 = *v112;

          v79 = sub_1005E5350([v114 v111[106]]);

          v115 = v94[6];
          v484 = v113;
          v473 = v114;
          if ((v115 & 0xC000000000000001) != 0)
          {
            v116 = v79;

            v117 = __CocoaDictionary.lookup(_:)();
            if (v117)
            {
              v495 = v117;
              sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
              swift_dynamicCast();
              v118 = v494[0];
              goto LABEL_40;
            }

LABEL_41:

            v115, v128, v129, v130, v131, v132, v133, v134;
LABEL_42:
            v118 = 0;
          }

          else
          {
            if (!*(v115 + 16))
            {
              goto LABEL_42;
            }

            v116 = v79;

            v119 = sub_10002B924(v116);
            if ((v120 & 1) == 0)
            {
              goto LABEL_41;
            }

            v118 = *(*(v115 + 56) + 8 * v119);
LABEL_40:

            v115, v121, v122, v123, v124, v125, v126, v127;
          }

          v13 = v475;
          if (!*(v475 + 16))
          {
            goto LABEL_106;
          }

          v135 = sub_100393C74();
          if ((v72 & 1) == 0)
          {
            goto LABEL_106;
          }

          v136 = *(*(v475 + 56) + 8 * v135);
          v137 = v484;
          swift_bridgeObjectRetain_n();
          v138 = v79;
          v480 = v136;

          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.default.getter();

          v472 = v138;
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v504 = swift_slowAlloc();
            v495 = v504;
            *v141 = 136446978;
            *(v141 + 4) = sub_10000668C(0xD000000000000016, (v481 | 0x8000000000000000), &v495);
            *(v141 + 12) = 2082;
            v143 = *&v483->clientIdentity[24];
            v502 = *&v483->clientIdentity[8];
            v503[0] = v143;
            *(v503 + 14) = *&v483->clientIdentity[38];
            sub_100009DAC(&v502, v494);
            v144 = sub_1000063E8();
            v146 = v145;
            sub_1005812D4(&v502);
            v147 = sub_10000668C(v144, v146, &v495);
            v146, v148, v149, v150, v151, v152, v153, v154;
            *(v141 + 14) = v147;
            *(v141 + 22) = 2114;
            *(v141 + 24) = v138;
            *v142 = v138;
            *(v141 + 32) = 2082;
            v137 = v484;
            v155 = *(v484 + 16);
            if (v155)
            {
              v494[0] = &_swiftEmptyArrayStorage;
              v156 = v138;
              sub_100026EF4(0, v155, 0);
              v164 = v494[0];
              v165 = *(v494[0] + 16);
              v166 = 16 * v165;
              do
              {
                v494[0] = v164;
                v167 = *&v164->clientIdentity[8];
                v168 = v165 + 1;
                if (v165 >= v167 >> 1)
                {
                  sub_100026EF4((v167 > 1), v165 + 1, 1);
                  v164 = v494[0];
                }

                *v164->clientIdentity = v168;
                v169 = v164 + v166;
                *(v169 + 4) = 0x49746E756F636361;
                *(v169 + 5) = 0xE900000000000044;
                v166 += 16;
                v165 = v168;
                --v155;
              }

              while (v155);
              v137 = v484;
              v484, v157, v158, v159, v160, v161, v162, v163;
            }

            else
            {
              v177 = v138;
              v484, v178, v179, v180, v181, v182, v183, v184;
              v164 = &_swiftEmptyArrayStorage;
            }

            v185 = Array.description.getter();
            v187 = v186;
            v164, v186, v188, v189, v190, v191, v192, v193;
            v137, v194, v195, v196, v197, v198, v199, v200;
            v201 = sub_10000668C(v185, v187, &v495);
            v187, v202, v203, v204, v205, v206, v207, v208;
            *(v141 + 34) = v201;
            _os_log_impl(&_mh_execute_header, v139, v140, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v141, 0x2Au);
            sub_1000050A4(v142, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v11 = v486;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v209 = v483;
          v9 = v478;
          v477 = *(v137 + 16);
          if (v477)
          {
            v210 = 0;
            v487 = *(v485 + 16);
            while (1)
            {
              if (v210 >= *(v137 + 16))
              {
                goto LABEL_113;
              }

              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v211 = swift_initStackObject();
              *(v211 + 16) = xmmword_1007953F0;
              *(v211 + 32) = v487;
              v212 = v487;
              v213 = v212;
              if ((v211 & 0xC000000000000001) != 0)
              {
                v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_114;
                }

                v214 = v212;
              }

              v215 = v9[2];
              v223 = v214;
              if (!v215 || (v224 = sub_100393C74(), (v216 & 1) == 0))
              {
                v137, v216, v217, v218, v219, v220, v221, v222;
                v211, v321, v322, v323, v324, v325, v326, v327;
                _swiftEmptyDictionarySingleton, v328, v329, v330, v331, v332, v333, v334;
                v475, v335, v336, v337, v338, v339, v340, v341;
                v9, v342, v343, v344, v345, v346, v347, v348;
                v486, v349, v350, v351, v352, v353, v354, v355;

                v356 = v223;
                v357 = Logger.logObject.getter();
                v358 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v357, v358))
                {
                  v359 = swift_slowAlloc();
                  v495 = swift_slowAlloc();
                  *v359 = 136446978;
                  *(v359 + 4) = sub_10000668C(0xD000000000000016, (v481 | 0x8000000000000000), &v495);
                  *(v359 + 12) = 2082;
                  v360 = *&v483->clientIdentity[24];
                  v500 = *&v483->clientIdentity[8];
                  v501[0] = v360;
                  *(v501 + 14) = *&v483->clientIdentity[38];
                  sub_100009DAC(&v500, v494);
                  v361 = sub_1000063E8();
                  v363 = v362;
                  sub_1005812D4(&v500);
                  v364 = sub_10000668C(v361, v363, &v495);
                  v363, v365, v366, v367, v368, v369, v370, v371;
                  *(v359 + 14) = v364;
                  *(v359 + 22) = 2080;
                  v372 = [v356 description];
                  v373 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v375 = v374;

                  v376 = sub_10000668C(v373, v375, &v495);
                  v375, v377, v378, v379, v380, v381, v382, v383;
                  *(v359 + 24) = v376;
                  *(v359 + 32) = 2080;
                  v384 = [v356 description];
                  v385 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v387 = v386;

                  v388 = sub_10000668C(v385, v387, &v495);
                  v387, v389, v390, v391, v392, v393, v394, v395;
                  *(v359 + 34) = v388;
                  _os_log_impl(&_mh_execute_header, v357, v358, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v359, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v356];
                swift_willThrow();

                return;
              }

              v225 = *&v9[7][8 * v224];
              v226 = _swiftEmptyDictionarySingleton;
              if (_swiftEmptyDictionarySingleton >> 62)
              {
                v227 = __CocoaDictionary.count.getter();
                if (__OFADD__(v227, 1))
                {
                  goto LABEL_116;
                }

                v226 = sub_10021D008(v476, v227 + 1);
              }

              v504 = v225;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v494[0] = v226;
              v230 = sub_10002B924(v223);
              v231 = v226[2];
              v232 = (v229 & 1) == 0;
              v233 = v231 + v232;
              if (__OFADD__(v231, v232))
              {
                goto LABEL_115;
              }

              v234 = v229;
              if (v226[3] >= v233)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v235 = v226;
                  v137 = v484;
                  if ((v229 & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  v467 = v211;
                  sub_1000F5104(&qword_10093D598, &unk_10079B210);
                  v249 = static _DictionaryStorage.copy(original:)();
                  v235 = v249;
                  if (v226[2])
                  {
                    v257 = (v249 + 64);
                    __src = (v226 + 8);
                    v258 = ((1 << *(v235 + 32)) + 63) >> 6;
                    if (v235 != v226 || v257 >= &__src[8 * v258])
                    {
                      memmove(v257, __src, 8 * v258);
                    }

                    v259 = 0;
                    *(v235 + 16) = v226[2];
                    v260 = 1 << *(v226 + 32);
                    if (v260 < 64)
                    {
                      v261 = ~(-1 << v260);
                    }

                    else
                    {
                      v261 = -1;
                    }

                    v469 = v261 & v226[8];
                    for (i = (v260 + 63) >> 6; v469; v269 = v267)
                    {
                      v262 = __clz(__rbit64(v469));
                      v469 &= v469 - 1;
LABEL_89:
                      v265 = v262 | (v259 << 6);
                      v266 = *(v226[6] + 8 * v265);
                      v267 = *(v226[7] + 8 * v265);
                      *(*(v235 + 48) + 8 * v265) = v266;
                      *(*(v235 + 56) + 8 * v265) = v267;
                      v268 = v266;
                    }

                    v263 = v259;
                    while (1)
                    {
                      v259 = v263 + 1;
                      if (__OFADD__(v263, 1))
                      {
                        goto LABEL_119;
                      }

                      if (v259 >= i)
                      {
                        break;
                      }

                      v264 = *&__src[8 * v259];
                      ++v263;
                      if (v264)
                      {
                        v262 = __clz(__rbit64(v264));
                        v469 = (v264 - 1) & v264;
                        goto LABEL_89;
                      }
                    }
                  }

                  v226, v250, v251, v252, v253, v254, v255, v256;
                  v137 = v484;
                  v211 = v467;
                  if ((v234 & 1) == 0)
                  {
LABEL_92:
                    v238 = v211;
                    *(v235 + 8 * (v230 >> 6) + 64) |= 1 << v230;
                    *(*(v235 + 48) + 8 * v230) = v223;
                    v270 = v504;
                    *(*(v235 + 56) + 8 * v230) = v504;

                    v271 = *(v235 + 16);
                    v272 = __OFADD__(v271, 1);
                    v273 = v271 + 1;
                    if (v272)
                    {
                      goto LABEL_117;
                    }

                    *(v235 + 16) = v273;
                    goto LABEL_94;
                  }
                }
              }

              else
              {
                sub_10036CABC(v233, isUniquelyReferenced_nonNull_native);
                v235 = v494[0];
                v236 = sub_10002B924(v223);
                if ((v234 & 1) != (v237 & 1))
                {
                  goto LABEL_120;
                }

                v230 = v236;
                v137 = v484;
                if ((v234 & 1) == 0)
                {
                  goto LABEL_92;
                }
              }

              v238 = v211;

              v239 = *(v235 + 56);
              v240 = *(v239 + 8 * v230);
              v241 = v504;
              *(v239 + 8 * v230) = v504;

LABEL_94:
              v209 = v483;
              v9 = v478;
              v238, v242, v243, v244, v245, v246, v247, v248;
              sub_10045BDE8(v235);
              v275 = v274;
              v235, v276, v277, v278, v279, v280, v281, v282;
              sub_10068AC14(v213, v275, &type metadata for REMManualOrderingCDIngestor.RelationshipKey);
              ++v210;
              v284 = v283;
              v275, v285, v286, v287, v288, v289, v290, v291;
              [v480 setAccount:v284];

              if (v210 == v477)
              {
                v137, v292, v293, v294, v295, v296, v297, v298;
                v11 = v486;
                goto LABEL_97;
              }
            }
          }

          v137, v170, v171, v172, v173, v174, v175, v176;
LABEL_97:
          if (v209->coreSuggestionsHandler[10])
          {
            [v480 updateChangeCount];
          }

          v109 = v470 + 1;
          v94 = v482;
          v111 = &selRef_persistentStoreForIdentifier_;
          if (v470 + 1 != v489)
          {
            continue;
          }

          break;
        }

        v11, v299, v300, v301, v302, v303, v304, v305;
        v475, v306, v307, v308, v309, v310, v311, v312;
        v320 = v9;
LABEL_29:
        v320, v313, v314, v315, v316, v317, v318, v319;
        return;
      }
    }

    if (v79 < *v504->clientIdentity)
    {
      v81 = *(v484 + 8 * v79 + 32);
      goto LABEL_24;
    }

    __break(1u);
LABEL_110:
    swift_once();
  }

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
  __break(1u);
LABEL_120:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10063DA3C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), unint64_t *a6, void *a7, uint64_t (*a8)(_TtC7remindd19RDXPCStorePerformer *, uint64_t), uint64_t (*a9)(id), void (*a10)(id, void, _TtC7remindd19RDXPCStorePerformer *, unint64_t *, void *))
{
  v16 = a2;
  v600 = a2;
  v19 = a3[2];
  v18 = a3[3];
  v596 = &v600;
  v20 = a5(a4, v595, a1);
  if (v11)
  {
    return;
  }

  v584 = a1;
  v586 = a6;
  v581 = a8;
  v583 = a7;
  v589 = v20;
  v579 = v10;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100945730);
  v22 = v589;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v18, v25, v26, v27, v28, v29, v30, v31;
  v578 = a3;
  v580 = v16;
  if (os_log_type_enabled(v23, v24))
  {
    v32 = swift_slowAlloc();
    v597[0] = swift_slowAlloc();
    *v32 = 136446978;
    *(v32 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v597);
    *(v32 + 12) = 2048;
    *(v32 + 14) = *(v589 + 16);
    v589, v33, v34, v35, v36, v37, v38, v39;
    *(v32 + 22) = 2082;
    sub_1000060C8(0, v586, a7);
    v40 = [swift_getObjCClassFromMetadata() description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v19;
    v44 = v43;

    v45 = sub_10000668C(v41, v44, v597);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v32 + 24) = v45;
    *(v32 + 32) = 2082;
    *(v32 + 34) = sub_10000668C(v42, v18, v597);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v32, 0x2Au);
    swift_arrayDestroy();

    v16 = v580;
  }

  else
  {

    v589, v60, v61, v62, v63, v64, v65, v66;
  }

  v591 = *(v589 + 16);
  if (!v591)
  {
    v589, v53, v54, v55, v56, v57, v58, v59;
    return;
  }

  v67 = 0;
  v599 = _swiftEmptySetSingleton;
  v590 = v589 + 32;
  v587 = v16 + 24;
  v588 = v16 + 16;
  do
  {
    if (v67 >= v22[2])
    {
      __break(1u);
LABEL_125:
      __break(1u);
      v589, v53, v54, v55, v56, v57, v58, v59;
      v576, v445, v446, v447, v448, v449, v450, v451;
      v569, v452, v453, v454, v455, v456, v457, v458;
      v18, v459, v460, v461, v462, v463, v464, v465;

      return;
    }

    v68 = v590 + 16 * v67;
    v69 = *(v68 + 8);
    v70 = *(v69 + 16);
    if (v70)
    {
      v607 = v67;
      v592 = *v68;

      v71 = 32;
      v18 = v16 + 16;
      do
      {
        v72 = *(v69 + v71);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v73 = swift_allocObject();
        v74 = v73;
        *(v73 + 16) = xmmword_1007953F0;
        if (v72)
        {
          v75 = (v16 + 24);
        }

        else
        {
          v75 = (v16 + 16);
        }

        v76 = *v75;
        *(v73 + 32) = v76;
        v77 = v76;
        sub_100392144(v74);
        v74, v78, v79, v80, v81, v82, v83, v84;
        ++v71;
        --v70;
      }

      while (v70);

      v69, v85, v86, v87, v88, v89, v90, v91;
      v22 = v589;
      v67 = v607;
    }

    ++v67;
  }

  while (v67 != v591);
  if (v584 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v584 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = v586;
  v93 = v581;
  v94 = &_swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_30;
  }

  v597[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v95 = 0;
    do
    {
      v96 = (v95 + 1);
      if (__OFADD__(v95, 1))
      {
        goto LABEL_125;
      }

      v22 = 0;
      if ((v584 & 0xC000000000000001) != 0)
      {
        v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v95 >= *((v584 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          v589, v522, v523, v524, v525, v526, v527, v528;
          v576, v529, v530, v531, v532, v533, v534, v535;

          v95, v536, v537, v538, v539, v540, v541, v542;
          v569, v543, v544, v545, v546, v547, v548, v549;
          v18, v550, v551, v552, v553, v554, v555, v556;
          return;
        }

        v97 = *(v584 + 8 * v95 + 32);
      }

      v98 = v97;
      sub_1005E3810([v97 remObjectID], v92, v583);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v95;
      v92 = v586;
      v93 = v581;
    }

    while (v96 != v18);
    v94 = v597[0];
LABEL_30:
    v99 = v599;
    sub_1005E2514(v599);
    v101 = v100;
    v99, v102, v103, v104, v105, v106, v107, v108;
    v109 = sub_10065F214(v101, v578);
    v101, v110, v111, v112, v113, v114, v115, v116;
    v570 = v93(v94, v578);
    v94, v124, v125, v126, v127, v128, v129, v130;
    swift_beginAccess();
    v131 = 0;
    v132 = v589;
    v133 = v583;
    v582 = v109;
    while (1)
    {
      if (v131 >= *(v132 + 16))
      {
        goto LABEL_136;
      }

      v134 = v590 + 16 * v131;
      v135 = *(v134 + 8);
      v136 = *v134;
      v577 = v135;

      v137 = sub_1005E3810([v136 remObjectID], v92, v133);

      v145 = v578[6];
      v575 = v131;
      if ((v145 & 0xC000000000000001) != 0)
      {
        v146 = v137;

        v147 = __CocoaDictionary.lookup(_:)();
        if (!v147)
        {
          goto LABEL_55;
        }

        v598 = v147;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v148 = v597[0];

        v145, v149, v150, v151, v152, v153, v154, v155;
        if (!v148)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (!*(v145 + 16))
        {
          goto LABEL_56;
        }

        v146 = v137;

        v156 = sub_10002B924(v146);
        if ((v157 & 1) == 0)
        {
LABEL_55:

          v145, v212, v213, v214, v215, v216, v217, v218;
LABEL_56:
          v577, v138, v139, v140, v141, v142, v143, v144;
          v219 = v137;
          v220 = Logger.logObject.getter();
          v221 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v220, v221))
          {
            v222 = swift_slowAlloc();
            v223 = swift_slowAlloc();
            v224 = swift_slowAlloc();
            v597[0] = v224;
            *v222 = 136446466;
            *(v222 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v597);
            *(v222 + 12) = 2114;
            *(v222 + 14) = v219;
            *v223 = v219;
            v225 = v219;
            _os_log_impl(&_mh_execute_header, v220, v221, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v222, 0x16u);
            sub_1000050A4(v223, &unk_100938E70, &unk_100797230);

            sub_10000607C(v224);
          }

          else
          {
          }

          v133 = v583;
          v92 = v586;
          v233 = v575;
          goto LABEL_60;
        }

        v148 = *(*(v145 + 56) + 8 * v156);

        v145, v158, v159, v160, v161, v162, v163, v164;
        if (!v148)
        {
          goto LABEL_56;
        }
      }

      v572 = v136;

      if (!*(v570 + 16) || (v172 = a9(v137), (v165 & 1) == 0))
      {
        v109, v165, v166, v167, v168, v169, v170, v171;
        v589, v473, v474, v475, v476, v477, v478, v479;
        v577, v480, v481, v482, v483, v484, v485, v486;
        v570, v487, v488, v489, v490, v491, v492, v493;
        v494 = v137;

        v495 = Logger.logObject.getter();
        v496 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v495, v496))
        {
          v497 = swift_slowAlloc();
          v598 = swift_slowAlloc();
          *v497 = 136446722;
          *(v497 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v598);
          *(v497 + 12) = 2082;
          v498 = *(v579 + 40);
          v601 = *(v579 + 24);
          v602[0] = v498;
          *(v602 + 14) = *(v579 + 54);
          sub_100009DAC(&v601, v597);
          v499 = sub_1000063E8();
          v501 = v500;
          sub_1005812D4(&v601);
          v502 = sub_10000668C(v499, v501, &v598);
          v501, v503, v504, v505, v506, v507, v508, v509;
          *(v497 + 14) = v502;
          *(v497 + 22) = 2080;
          v510 = [v494 description];
          v511 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v513 = v512;

          v514 = sub_10000668C(v511, v513, &v598);
          v513, v515, v516, v517, v518, v519, v520, v521;
          *(v497 + 24) = v514;
          _os_log_impl(&_mh_execute_header, v495, v496, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v497, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v494];
        swift_willThrow();

        return;
      }

      v173 = *(*(v570 + 56) + 8 * v172);
      swift_bridgeObjectRetain_n();
      v174 = v137;
      v574 = v173;

      v175 = Logger.logObject.getter();
      v176 = static os_log_type_t.default.getter();

      v564 = v174;
      if (os_log_type_enabled(v175, v176))
      {
        v593 = v176;
        v607 = v175;
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v598 = swift_slowAlloc();
        *v177 = 136446978;
        *(v177 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v598);
        *(v177 + 12) = 2082;
        v179 = *(v579 + 40);
        v605 = *(v579 + 24);
        v606[0] = v179;
        *(v606 + 14) = *(v579 + 54);
        sub_100009DAC(&v605, v597);
        v180 = sub_1000063E8();
        v182 = v181;
        sub_1005812D4(&v605);
        v183 = sub_10000668C(v180, v182, &v598);
        v182, v184, v185, v186, v187, v188, v189, v190;
        *(v177 + 14) = v183;
        *(v177 + 22) = 2114;
        *(v177 + 24) = v174;
        v567 = v178;
        *v178 = v174;
        *(v177 + 32) = 2082;
        v191 = v577;
        v192 = *(v577 + 16);
        if (v192)
        {
          v597[0] = &_swiftEmptyArrayStorage;
          v193 = v174;
          sub_100026EF4(0, v192, 0);
          v201 = v597[0];
          v202 = *(v597[0] + 16);
          v203 = 16 * v202;
          v204 = 32;
          v205 = v577;
          v206 = v607;
          do
          {
            if (*(&v205->super.isa + v204))
            {
              v207 = 0x44496D72616C61;
            }

            else
            {
              v207 = 0x49746E756F636361;
            }

            if (*(&v205->super.isa + v204))
            {
              v208 = 0xE700000000000000;
            }

            else
            {
              v208 = 0xE900000000000044;
            }

            v597[0] = v201;
            v209 = *&v201->clientIdentity[8];
            v210 = v202 + 1;
            if (v202 >= v209 >> 1)
            {
              sub_100026EF4((v209 > 1), v202 + 1, 1);
              v205 = v577;
              v201 = v597[0];
            }

            *v201->clientIdentity = v210;
            v211 = v201 + v203;
            *(v211 + 4) = v207;
            *(v211 + 5) = v208;
            v203 += 16;
            ++v204;
            v202 = v210;
            --v192;
          }

          while (v192);
          v191 = v205;
          v205, v194, v195, v196, v197, v198, v199, v200;
          v109 = v582;
        }

        else
        {
          v241 = v174;
          v577, v242, v243, v244, v245, v246, v247, v248;
          v201 = &_swiftEmptyArrayStorage;
          v206 = v607;
        }

        v249 = Array.description.getter();
        v251 = v250;
        v201, v250, v252, v253, v254, v255, v256, v257;
        v191, v258, v259, v260, v261, v262, v263, v264;
        v265 = sub_10000668C(v249, v251, &v598);
        v251, v266, v267, v268, v269, v270, v271, v272;
        *(v177 + 34) = v265;
        _os_log_impl(&_mh_execute_header, v206, v593, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v177, 0x2Au);
        sub_1000050A4(v567, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        v191 = v577;
        swift_bridgeObjectRelease_n();
      }

      v273 = v572;
      v274 = v579;
      v275 = v588;
      v92 = v586;
      v276 = v587;
      v277 = v191;
      v561 = *v191->clientIdentity;
      if (v561)
      {
        v278 = 0;
        v562 = &v191->clientIdentity[16];
        while (1)
        {
          if (v278 >= *v277->clientIdentity)
          {
            goto LABEL_137;
          }

          v565 = v278;
          v279 = v562[v278];
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v280 = swift_allocObject();
          *(v280 + 16) = xmmword_1007953F0;
          v566 = v279;
          v281 = v279 == 0;
          v282 = v280;
          v283 = (v281 ? v275 : v276);
          v284 = *v283;
          *(v280 + 32) = v284;
          v285 = v280 + 32;
          v286 = v284;
          v607 = v282 & 0xFFFFFFFFFFFFFF8;
          v585 = *((v282 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v568 = v282;
          if (v585)
          {
            break;
          }

          v295 = _swiftEmptyDictionarySingleton;
LABEL_115:
          v568, v287, v288, v289, v290, v291, v292, v293;
          sub_10045BDE8(v295);
          v348 = v347;
          v295, v349, v350, v351, v352, v353, v354, v355;
          v92 = v586;
          a10(v574, v566, v348, v586, v583);
          v278 = v565 + 1;
          v348, v356, v357, v358, v359, v360, v361, v362;
          v274 = v579;
          v276 = v587;
          v275 = v588;
          v277 = v577;
          if (v565 + 1 == v561)
          {
            v577, v363, v364, v365, v366, v367, v368, v369;
            v273 = v572;
            goto LABEL_118;
          }
        }

        v294 = 0;
        v594 = v282 & 0xC000000000000001;
        v295 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v594)
          {
            v298 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v294 >= *(v607 + 16))
            {
              goto LABEL_132;
            }

            v298 = *(v285 + 8 * v294);
          }

          v299 = *(v109 + 16);
          v307 = v298;
          if (!v299 || (v308 = sub_100393C74(), (v300 & 1) == 0))
          {
            v577, v300, v301, v302, v303, v304, v305, v306;
            v568, v370, v371, v372, v373, v374, v375, v376;
            v295, v377, v378, v379, v380, v381, v382, v383;
            v570, v384, v385, v386, v387, v388, v389, v390;
            v109, v391, v392, v393, v394, v395, v396, v397;
            v589, v398, v399, v400, v401, v402, v403, v404;

            v405 = v307;
            v406 = Logger.logObject.getter();
            v407 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v406, v407))
            {
              v408 = swift_slowAlloc();
              v598 = swift_slowAlloc();
              *v408 = 136446978;
              *(v408 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v598);
              *(v408 + 12) = 2082;
              v409 = *(v579 + 40);
              v603 = *(v579 + 24);
              v604[0] = v409;
              *(v604 + 14) = *(v579 + 54);
              sub_100009DAC(&v603, v597);
              v410 = sub_1000063E8();
              v412 = v411;
              sub_1005812D4(&v603);
              v413 = sub_10000668C(v410, v412, &v598);
              v412, v414, v415, v416, v417, v418, v419, v420;
              *(v408 + 14) = v413;
              *(v408 + 22) = 2080;
              v421 = [v405 description];
              v422 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v424 = v423;

              v425 = sub_10000668C(v422, v424, &v598);
              v424, v426, v427, v428, v429, v430, v431, v432;
              *(v408 + 24) = v425;
              *(v408 + 32) = 2080;
              v433 = [v405 description];
              v434 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v436 = v435;

              v437 = sub_10000668C(v434, v436, &v598);
              v436, v438, v439, v440, v441, v442, v443, v444;
              *(v408 + 34) = v437;
              _os_log_impl(&_mh_execute_header, v406, v407, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v408, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v405];
            swift_willThrow();

            return;
          }

          v309 = *(*(v109 + 56) + 8 * v308);
          if ((v295 & 0xC000000000000001) != 0)
          {
            if (v295 >= 0)
            {
              v295 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v310 = v309;
            v311 = __CocoaDictionary.count.getter();
            if (__OFADD__(v311, 1))
            {
              goto LABEL_134;
            }

            v312 = sub_10021D008(v295, v311 + 1);
          }

          else
          {
            v313 = v309;
            v312 = v295;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v597[0] = v312;
          v315 = v307;
          v317 = sub_10002B924(v307);
          v318 = *(v312 + 16);
          v319 = (v316 & 1) == 0;
          v320 = v318 + v319;
          if (__OFADD__(v318, v319))
          {
            goto LABEL_133;
          }

          v321 = v316;
          if (*(v312 + 24) >= v320)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v295 = v312;
              if ((v316 & 1) == 0)
              {
                goto LABEL_93;
              }

              goto LABEL_73;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v327 = static _DictionaryStorage.copy(original:)();
            v295 = v327;
            if (*(v312 + 16))
            {
              v335 = (v327 + 64);
              __src = (v312 + 64);
              v336 = ((1 << *(v295 + 32)) + 63) >> 6;
              if (v295 != v312 || v335 >= &__src[8 * v336])
              {
                memmove(v335, __src, 8 * v336);
              }

              v337 = 0;
              *(v295 + 16) = *(v312 + 16);
              v338 = 1 << *(v312 + 32);
              if (v338 < 64)
              {
                v339 = ~(-1 << v338);
              }

              else
              {
                v339 = -1;
              }

              v560 = v339 & *(v312 + 64);
              for (i = (v338 + 63) >> 6; v560; v346 = v559)
              {
                v340 = __clz(__rbit64(v560));
                v560 &= v560 - 1;
LABEL_110:
                v343 = v340 | (v337 << 6);
                v344 = *(*(v312 + 48) + 8 * v343);
                v559 = *(*(v312 + 56) + 8 * v343);
                *(*(v295 + 48) + 8 * v343) = v344;
                *(*(v295 + 56) + 8 * v343) = v559;
                v345 = v344;
              }

              v341 = v337;
              while (1)
              {
                v337 = v341 + 1;
                if (__OFADD__(v341, 1))
                {
                  goto LABEL_138;
                }

                if (v337 >= i)
                {
                  break;
                }

                v342 = *&__src[8 * v337];
                ++v341;
                if (v342)
                {
                  v340 = __clz(__rbit64(v342));
                  v560 = (v342 - 1) & v342;
                  goto LABEL_110;
                }
              }
            }

            v312, v328, v329, v330, v331, v332, v333, v334;
            if (v321)
            {
              goto LABEL_73;
            }

LABEL_93:
            *(v295 + 8 * (v317 >> 6) + 64) |= 1 << v317;
            *(*(v295 + 48) + 8 * v317) = v315;
            *(*(v295 + 56) + 8 * v317) = v309;

            v324 = *(v295 + 16);
            v325 = __OFADD__(v324, 1);
            v326 = v324 + 1;
            if (v325)
            {
              goto LABEL_135;
            }

            *(v295 + 16) = v326;
          }

          else
          {
            sub_10036CABC(v320, isUniquelyReferenced_nonNull_native);
            v295 = v597[0];
            v322 = sub_10002B924(v315);
            if ((v321 & 1) != (v323 & 1))
            {
              goto LABEL_139;
            }

            v317 = v322;
            if ((v321 & 1) == 0)
            {
              goto LABEL_93;
            }

LABEL_73:

            v296 = *(v295 + 56);
            v297 = *(v296 + 8 * v317);
            *(v296 + 8 * v317) = v309;
          }

          v109 = v582;
          if (++v294 == v585)
          {
            goto LABEL_115;
          }

          continue;
        }
      }

      v191, v234, v235, v236, v237, v238, v239, v240;
LABEL_118:
      v233 = v575;
      if (*(v274 + 104))
      {
        [v574 updateChangeCount];
      }

      v133 = v583;
LABEL_60:
      v131 = v233 + 1;
      v132 = v589;
      if (v131 == v591)
      {
        v589, v226, v227, v228, v229, v230, v231, v232;
        v570, v466, v467, v468, v469, v470, v471, v472;
        v109, v117, v118, v119, v120, v121, v122, v123;
        return;
      }
    }
  }

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
}

void sub_10063F08C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v566 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v562 = &v566;
  v10 = sub_1003DF9C0(sub_1006AEE1C, v561, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v550 = a3;
  v551 = a1;
  v12 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v8, v16, v17, v18, v19, v20, v21, v22;
  v549 = v12;
  if (os_log_type_enabled(v14, v15))
  {
    v23 = swift_slowAlloc();
    LODWORD(v573) = v15;
    v15 = v23;
    v563[0] = swift_slowAlloc();
    *v15 = 136446978;
    *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v563);
    *(v15 + 12) = 2048;
    *(v15 + 14) = *v11->clientIdentity;
    v11, v24, v25, v26, v27, v28, v29, v30;
    *(v15 + 22) = 2082;
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    v31 = [swift_getObjCClassFromMetadata() description];
    v32 = v9;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_10000668C(v33, v35, v563);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v15 + 24) = v36;
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_10000668C(v32, v8, v563);
    _os_log_impl(&_mh_execute_header, v14, v573, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v11, v51, v52, v53, v54, v55, v56, v57;
  }

  v558 = *v11->clientIdentity;
  if (!v558)
  {
    v11, v44, v45, v46, v47, v48, v49, v50;
    return;
  }

  v58 = 0;
  v565 = _swiftEmptySetSingleton;
  v557 = &v11->clientIdentity[16];
  v555 = (a2 + 24);
  v553 = (a2 + 16);
  v554 = v11;
  v59 = a2 + 16;
  do
  {
    if (v58 >= *v11->clientIdentity)
    {
      __break(1u);
LABEL_127:
      __break(1u);
      v554, v44, v45, v46, v47, v48, v49, v50;
      v543, v428, v429, v430, v431, v432, v433, v434;
      v538, v435, v436, v437, v438, v439, v440, v441;
      v59, v442, v443, v444, v445, v446, v447, v448;

      return;
    }

    v60 = &v557[16 * v58];
    v61 = *(v60 + 1);
    v62 = *(v61 + 16);
    if (v62)
    {
      v573 = v58;
      v559 = *v60;

      v63 = 32;
      v15 = v555;
      do
      {
        v64 = *(v61 + v63);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v65 = swift_allocObject();
        v66 = v65;
        *(v65 + 16) = xmmword_1007953F0;
        if (v64)
        {
          v67 = v555;
        }

        else
        {
          v67 = v59;
        }

        v68 = *v67;
        *(v65 + 32) = v68;
        v69 = v68;
        sub_100392144(v66);
        v66, v70, v71, v72, v73, v74, v75, v76;
        ++v63;
        --v62;
      }

      while (v62);

      v61, v77, v78, v79, v80, v81, v82, v83;
      v11 = v554;
      v58 = v573;
    }

    ++v58;
  }

  while (v58 != v558);
  if (v551 >> 62)
  {
    v84 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v84 = *((v551 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v84)
  {
    v87 = &_swiftEmptyArrayStorage;
LABEL_32:
    v88 = v565;
    sub_1005E2514(v565);
    v90 = v89;
    v88, v91, v92, v93, v94, v95, v96, v97;
    v59 = sub_10065F214(v90, v550);
    v90, v98, v99, v100, v101, v102, v103, v104;
    v539 = sub_1006630D4(v87, v550);
    v87, v112, v113, v114, v115, v116, v117, v118;
    swift_beginAccess();
    v119 = 0;
    v560 = v59;
    while (1)
    {
      if (v119 >= *v554->clientIdentity)
      {
        goto LABEL_140;
      }

      v127 = &v557[16 * v119];
      v128 = *(v127 + 1);
      v129 = *v127;
      v544 = v128;

      v130 = sub_1005E3810([v129 remObjectID], &unk_100938870, off_1008D4128);

      v138 = v550[6];
      if ((v138 & 0xC000000000000001) != 0)
      {
        v139 = v130;

        v140 = __CocoaDictionary.lookup(_:)();
        if (!v140)
        {
          goto LABEL_58;
        }

        v564 = v140;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v141 = v563[0];
      }

      else
      {
        if (!*(v138 + 16))
        {
          goto LABEL_59;
        }

        v139 = v130;

        v142 = sub_10002B924(v139);
        if ((v143 & 1) == 0)
        {
LABEL_58:

          v138, v196, v197, v198, v199, v200, v201, v202;
LABEL_59:
          v544, v131, v132, v133, v134, v135, v136, v137;
          v203 = v130;
          v204 = Logger.logObject.getter();
          v205 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v204, v205))
          {
            v206 = swift_slowAlloc();
            v207 = v129;
            v208 = swift_slowAlloc();
            v209 = v119;
            v210 = swift_slowAlloc();
            v563[0] = v210;
            *v206 = 136446466;
            *(v206 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v563);
            *(v206 + 12) = 2114;
            *(v206 + 14) = v203;
            *v208 = v203;
            v211 = v203;
            _os_log_impl(&_mh_execute_header, v204, v205, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v206, 0x16u);
            sub_1000050A4(v208, &unk_100938E70, &unk_100797230);

            sub_10000607C(v210);
            v119 = v209;

            v59 = v560;
          }

          else
          {
          }

          goto LABEL_34;
        }

        v141 = *(*(v138 + 56) + 8 * v142);
      }

      v138, v144, v145, v146, v147, v148, v149, v150;
      if (!v141)
      {
        goto LABEL_59;
      }

      v542 = v129;
      if (!*(v539 + 16) || (v158 = sub_100393C74(), (v151 & 1) == 0))
      {
        v59, v151, v152, v153, v154, v155, v156, v157;
        v554, v457, v458, v459, v460, v461, v462, v463;
        v544, v464, v465, v466, v467, v468, v469, v470;
        v539, v471, v472, v473, v474, v475, v476, v477;
        v478 = v130;

        v479 = Logger.logObject.getter();
        v480 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v479, v480))
        {
          v481 = swift_slowAlloc();
          v564 = swift_slowAlloc();
          *v481 = 136446722;
          *(v481 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v564);
          *(v481 + 12) = 2082;
          v482 = *(v549 + 40);
          v567 = *(v549 + 24);
          v568[0] = v482;
          *(v568 + 14) = *(v549 + 54);
          sub_100009DAC(&v567, v563);
          v483 = sub_1000063E8();
          v485 = v484;
          sub_1005812D4(&v567);
          v486 = sub_10000668C(v483, v485, &v564);
          v485, v487, v488, v489, v490, v491, v492, v493;
          *(v481 + 14) = v486;
          *(v481 + 22) = 2080;
          v494 = [v478 description];
          v495 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v497 = v496;

          v498 = sub_10000668C(v495, v497, &v564);
          v497, v499, v500, v501, v502, v503, v504, v505;
          *(v481 + 24) = v498;
          _os_log_impl(&_mh_execute_header, v479, v480, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v481, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v478];
        swift_willThrow();

        return;
      }

      v159 = *(*(v539 + 56) + 8 * v158);
      swift_bridgeObjectRetain_n();
      v160 = v130;
      v541 = v159;

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();

      v536 = v119;
      v533 = v160;
      if (os_log_type_enabled(v161, v162))
      {
        LODWORD(v573) = v162;
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v564 = swift_slowAlloc();
        *v163 = 136446978;
        *(v163 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v564);
        *(v163 + 12) = 2082;
        v165 = *(v549 + 40);
        v571 = *(v549 + 24);
        v572[0] = v165;
        *(v572 + 14) = *(v549 + 54);
        sub_100009DAC(&v571, v563);
        v166 = sub_1000063E8();
        v168 = v167;
        sub_1005812D4(&v571);
        v169 = sub_10000668C(v166, v168, &v564);
        v168, v170, v171, v172, v173, v174, v175, v176;
        *(v163 + 14) = v169;
        *(v163 + 22) = 2114;
        *(v163 + 24) = v160;
        v547 = v164;
        *v164 = v160;
        *(v163 + 32) = 2082;
        v177 = *(v544 + 16);
        if (v177)
        {
          v545 = v161;
          v563[0] = &_swiftEmptyArrayStorage;
          v178 = v160;
          sub_100026EF4(0, v177, 0);
          v186 = v563[0];
          v187 = *(v563[0] + 16);
          v188 = 16 * v187;
          v189 = 32;
          v190 = v544;
          do
          {
            if (*(v190 + v189))
            {
              v191 = 0x7265646E696D6572;
            }

            else
            {
              v191 = 0x49746E756F636361;
            }

            if (*(v190 + v189))
            {
              v192 = 0xEA00000000004449;
            }

            else
            {
              v192 = 0xE900000000000044;
            }

            v563[0] = v186;
            v193 = *&v186->clientIdentity[8];
            v194 = v187 + 1;
            if (v187 >= v193 >> 1)
            {
              sub_100026EF4((v193 > 1), v187 + 1, 1);
              v190 = v544;
              v186 = v563[0];
            }

            *v186->clientIdentity = v194;
            v195 = v186 + v188;
            *(v195 + 4) = v191;
            *(v195 + 5) = v192;
            v188 += 16;
            ++v189;
            v187 = v194;
            --v177;
          }

          while (v177);
          v190, v179, v180, v181, v182, v183, v184, v185;
          v129 = v542;
          v59 = v560;
          v161 = v545;
        }

        else
        {
          v219 = v160;
          v190 = v544;
          v544, v220, v221, v222, v223, v224, v225, v226;
          v186 = &_swiftEmptyArrayStorage;
        }

        v227 = Array.description.getter();
        v229 = v228;
        v186, v228, v230, v231, v232, v233, v234, v235;
        v190, v236, v237, v238, v239, v240, v241, v242;
        v243 = sub_10000668C(v227, v229, &v564);
        v229, v244, v245, v246, v247, v248, v249, v250;
        *(v163 + 34) = v243;
        _os_log_impl(&_mh_execute_header, v161, v573, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v163, 0x2Au);
        sub_1000050A4(v547, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v119 = v536;
      }

      else
      {

        v190 = v544;
        swift_bridgeObjectRelease_n();
      }

      v251 = v555;
      v252 = v553;
      v530 = *(v190 + 16);
      if (v530)
      {
        v253 = 0;
        v531 = v190 + 32;
        while (1)
        {
          if (v253 >= *(v190 + 16))
          {
            goto LABEL_141;
          }

          v534 = v253;
          v254 = *(v531 + v253);
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v255 = swift_allocObject();
          v256 = v255;
          *(v255 + 16) = xmmword_1007953F0;
          v535 = v254;
          if (v254)
          {
            v257 = v251;
          }

          else
          {
            v257 = v252;
          }

          v258 = *v257;
          *(v255 + 32) = v258;
          v552 = v255 + 32;
          v259 = v258;
          v556 = v256 & 0xFFFFFFFFFFFFFF8;
          v546 = *((v256 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v537 = v256;
          if (v546)
          {
            v267 = 0;
            v548 = v256 & 0xC000000000000001;
            v268 = _swiftEmptyDictionarySingleton;
            while (1)
            {
              if (v548)
              {
                v272 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v267 >= *(v556 + 16))
                {
                  goto LABEL_136;
                }

                v272 = *(v552 + 8 * v267);
              }

              v273 = *(v59 + 16);
              v281 = v272;
              if (!v273 || (v282 = sub_100393C74(), (v274 & 1) == 0))
              {
                v544, v274, v275, v276, v277, v278, v279, v280;
                v537, v353, v354, v355, v356, v357, v358, v359;
                v268, v360, v361, v362, v363, v364, v365, v366;
                v539, v367, v368, v369, v370, v371, v372, v373;
                v59, v374, v375, v376, v377, v378, v379, v380;
                v554, v381, v382, v383, v384, v385, v386, v387;

                v388 = v281;
                v389 = Logger.logObject.getter();
                v390 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v389, v390))
                {
                  v391 = swift_slowAlloc();
                  v564 = swift_slowAlloc();
                  *v391 = 136446978;
                  *(v391 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v564);
                  *(v391 + 12) = 2082;
                  v392 = *(v549 + 40);
                  v569 = *(v549 + 24);
                  v570[0] = v392;
                  *(v570 + 14) = *(v549 + 54);
                  sub_100009DAC(&v569, v563);
                  v393 = sub_1000063E8();
                  v395 = v394;
                  sub_1005812D4(&v569);
                  v396 = sub_10000668C(v393, v395, &v564);
                  v395, v397, v398, v399, v400, v401, v402, v403;
                  *(v391 + 14) = v396;
                  *(v391 + 22) = 2080;
                  v404 = [v388 description];
                  v405 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v407 = v406;

                  v408 = sub_10000668C(v405, v407, &v564);
                  v407, v409, v410, v411, v412, v413, v414, v415;
                  *(v391 + 24) = v408;
                  *(v391 + 32) = 2080;
                  v416 = [v388 description];
                  v417 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v419 = v418;

                  v420 = sub_10000668C(v417, v419, &v564);
                  v419, v421, v422, v423, v424, v425, v426, v427;
                  *(v391 + 34) = v420;
                  _os_log_impl(&_mh_execute_header, v389, v390, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v391, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v388];
                swift_willThrow();

                return;
              }

              v283 = *(*(v59 + 56) + 8 * v282);
              v573 = v283;
              if ((v268 & 0xC000000000000001) != 0)
              {
                if (v268 < 0)
                {
                  v284 = v268;
                }

                else
                {
                  v284 = v268 & 0xFFFFFFFFFFFFFF8;
                }

                v285 = v283;
                v286 = __CocoaDictionary.count.getter();
                if (__OFADD__(v286, 1))
                {
                  goto LABEL_138;
                }

                v287 = sub_10021D008(v284, v286 + 1);
              }

              else
              {
                v288 = v283;
                v287 = v268;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v563[0] = v287;
              v290 = v281;
              v292 = sub_10002B924(v281);
              v293 = *(v287 + 16);
              v294 = (v291 & 1) == 0;
              v295 = v293 + v294;
              if (__OFADD__(v293, v294))
              {
                goto LABEL_137;
              }

              v296 = v291;
              if (*(v287 + 24) >= v295)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v268 = v287;
                }

                else
                {
                  sub_1000F5104(&qword_10093D598, &unk_10079B210);
                  v303 = static _DictionaryStorage.copy(original:)();
                  v268 = v303;
                  if (*(v287 + 16))
                  {
                    v311 = (v303 + 64);
                    __src = (v287 + 64);
                    v312 = ((1 << *(v268 + 32)) + 63) >> 6;
                    if (v268 != v287 || v311 >= &__src[8 * v312])
                    {
                      memmove(v311, __src, 8 * v312);
                    }

                    v313 = 0;
                    *(v268 + 16) = *(v287 + 16);
                    v314 = 1 << *(v287 + 32);
                    if (v314 < 64)
                    {
                      v315 = ~(-1 << v314);
                    }

                    else
                    {
                      v315 = -1;
                    }

                    v529 = v315 & *(v287 + 64);
                    for (i = (v314 + 63) >> 6; v529; v323 = v321)
                    {
                      v316 = __clz(__rbit64(v529));
                      v529 &= v529 - 1;
LABEL_110:
                      v319 = v316 | (v313 << 6);
                      v320 = *(*(v287 + 48) + 8 * v319);
                      v321 = *(*(v287 + 56) + 8 * v319);
                      *(*(v268 + 48) + 8 * v319) = v320;
                      *(*(v268 + 56) + 8 * v319) = v321;
                      v322 = v320;
                    }

                    v317 = v313;
                    while (1)
                    {
                      v313 = v317 + 1;
                      if (__OFADD__(v317, 1))
                      {
                        goto LABEL_142;
                      }

                      if (v313 >= i)
                      {
                        break;
                      }

                      v318 = *&__src[8 * v313];
                      ++v317;
                      if (v318)
                      {
                        v316 = __clz(__rbit64(v318));
                        v529 = (v318 - 1) & v318;
                        goto LABEL_110;
                      }
                    }
                  }

                  v287, v304, v305, v306, v307, v308, v309, v310;
                }
              }

              else
              {
                sub_10036CABC(v295, isUniquelyReferenced_nonNull_native);
                v268 = v563[0];
                v297 = sub_10002B924(v290);
                if ((v296 & 1) != (v298 & 1))
                {
                  goto LABEL_143;
                }

                v292 = v297;
              }

              v251 = v555;
              v59 = v560;
              if (v296)
              {

                v269 = *(v268 + 56);
                v270 = *(v269 + 8 * v292);
                v271 = v573;
                *(v269 + 8 * v292) = v573;
              }

              else
              {
                *(v268 + 8 * (v292 >> 6) + 64) |= 1 << v292;
                *(*(v268 + 48) + 8 * v292) = v290;
                v299 = v573;
                *(*(v268 + 56) + 8 * v292) = v573;

                v300 = *(v268 + 16);
                v301 = __OFADD__(v300, 1);
                v302 = v300 + 1;
                if (v301)
                {
                  goto LABEL_139;
                }

                *(v268 + 16) = v302;
              }

              if (++v267 == v546)
              {
                goto LABEL_114;
              }
            }
          }

          v268 = _swiftEmptyDictionarySingleton;
LABEL_114:
          v537, v260, v261, v262, v263, v264, v265, v266;
          sub_10045BDE8(v268);
          v325 = v324;
          v268, v326, v327, v328, v329, v330, v331, v332;
          if (v535)
          {
            break;
          }

          sub_100685AD4(0, *v553, v325, &type metadata for REMAlarmCDIngestor.RelationshipKey, off_1008D4120, &qword_1009399F0);
          v129 = v542;
          v119 = v536;
          v343 = v342;
          v325, v344, v345, v346, v347, v348, v349, v350;
          [v541 setAccount:v343];

          v351 = [v541 trigger];
          if (v351)
          {
            v334 = v351;
            v352 = [v541 account];
            [v334 setAccount:v352];

            goto LABEL_118;
          }

LABEL_119:
          v252 = v553;
          v253 = v534 + 1;
          v190 = v544;
          if (v534 + 1 == v530)
          {
            goto LABEL_120;
          }
        }

        sub_100685AD4(1, *v251, v325, &type metadata for REMAlarmCDIngestor.RelationshipKey, off_1008D41D0, &qword_100939EE0);
        v129 = v542;
        v119 = v536;
        v334 = v333;
        v325, v335, v336, v337, v338, v339, v340, v341;
        [v541 setReminder:v334];
LABEL_118:

        goto LABEL_119;
      }

LABEL_120:
      v190, v212, v213, v214, v215, v216, v217, v218;
      if (*(v549 + 104))
      {
        [v541 updateChangeCount];
      }

LABEL_34:
      if (++v119 == v558)
      {
        v554, v120, v121, v122, v123, v124, v125, v126;
        v456 = v539;
        goto LABEL_133;
      }
    }
  }

  v563[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v84 < 0)
  {
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
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v85 = 0;
  v573 = v551 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v15 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      goto LABEL_127;
    }

    if ((v551 & 0xC000000000000001) == 0)
    {
      break;
    }

    v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_28:
    sub_1005E3810([v86 remObjectID], &unk_100938870, off_1008D4128);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v59 = *(v563[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    ++v85;
    if (v15 == v84)
    {
      v87 = v563[0];
      goto LABEL_32;
    }
  }

  if (v85 < *(v573 + 16))
  {
    v86 = *(v551 + 8 * v85 + 32);
    goto LABEL_28;
  }

  __break(1u);

  v84, v506, v507, v508, v509, v510, v511, v512;
  v554, v513, v514, v515, v516, v517, v518, v519;

  v543, v520, v521, v522, v523, v524, v525, v526;
  v456 = v538;
LABEL_133:
  v456, v449, v450, v451, v452, v453, v454, v455;
  v59, v105, v106, v107, v108, v109, v110, v111;
}

void sub_1006407AC(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v662 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &i - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v655 = a2;
  v12 = a3[2];
  v11 = a3[3];
  v650[2] = &v655;
  v651 = v3;
  v13 = v649;
  v14 = sub_1003DF9EC(sub_1006AEF24, v650, a1);
  if (!v13)
  {
    v640 = a3;
    v641 = v3;
    v648 = v11;
    v649 = v12;
    v15 = v14;
    v645 = a1;
    v642 = v10;
    v638 = v7;
    v647 = 0;
    v16 = "establishRelationships";
    if (qword_100936008 != -1)
    {
      goto LABEL_159;
    }

    while (1)
    {
      v17 = v16 - 4;
      v18 = type metadata accessor for Logger();
      v19 = sub_100006654(v18, qword_100945730);
      v20 = v15;

      v21 = v648;

      v639 = v19;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      v21, v24, v25, v26, v27, v28, v29, v30;
      v31 = os_log_type_enabled(v22, v23);
      v646 = v20;
      v32 = v649;
      v643 = v17;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v644 = swift_slowAlloc();
        v652[0] = v644;
        *v33 = 136446978;
        *(v33 + 4) = sub_10000668C(0xD000000000000016, (v17 | 0x8000000000000000), v652);
        *(v33 + 12) = 2048;
        *(v33 + 14) = *v20->clientIdentity;
        v20, v34, v35, v36, v37, v38, v39, v40;
        *(v33 + 22) = 2082;
        sub_1000060C8(0, &unk_10093F790, off_1008D4158);
        v41 = [swift_getObjCClassFromMetadata() description];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = v42;
        v20 = v646;
        v46 = sub_10000668C(v45, v44, v652);
        v44, v47, v48, v49, v50, v51, v52, v53;
        *(v33 + 24) = v46;
        *(v33 + 32) = 2082;
        *(v33 + 34) = sub_10000668C(v32, v648, v652);
        _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v33, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        v20, v61, v62, v63, v64, v65, v66, v67;
      }

      v649 = *v20->clientIdentity;
      if (!v649)
      {
        v144 = v20;
LABEL_32:
        v144, v54, v55, v56, v57, v58, v59, v60;
        return;
      }

      v68 = 0;
      v654 = _swiftEmptySetSingleton;
      v648 = &v20->clientIdentity[16];
      do
      {
        if (v68 >= *v20->clientIdentity)
        {
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          v20, v54, v55, v56, v57, v58, v59, v60;
          v633, v514, v515, v516, v517, v518, v519, v520;
          v630, v521, v522, v523, v524, v525, v526, v527;
          v644, v528, v529, v530, v531, v532, v533, v534;

          return;
        }

        v69 = v648 + 16 * v68;
        v70 = *(v69 + 1);
        v71 = *(v70 + 16);
        if (v71)
        {
          v72 = *v69;

          v73 = 32;
          do
          {
            v74 = sub_1003114A0(v72, *(v70 + v73));
            sub_100392144(v74);
            v74, v75, v76, v77, v78, v79, v80, v81;
            ++v73;
            --v71;
          }

          while (v71);

          v70, v82, v83, v84, v85, v86, v87, v88;
          v20 = v646;
        }

        ++v68;
        v23 = v662;
      }

      while (v68 != v649);
      v89 = v645 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v645 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v90 = &_swiftEmptyArrayStorage;
      if (!v89)
      {
        break;
      }

      v652[0] = &_swiftEmptyArrayStorage;
      v16 = v652;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v89 < 0)
      {
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:

LABEL_165:
        v594 = v644;
        v595 = v623;
        v20, v376, v377, v378, v379, v380, v381, v382;

        v633, v596, v597, v598, v599, v600, v601, v602;
        v630, v603, v604, v605, v606, v607, v608, v609;
        v594, v610, v611, v612, v613, v614, v615, v616;

        v144 = v16;
        goto LABEL_32;
      }

      v15 = 0;
      v91 = v645 & 0xC000000000000001;
      v644 = (v645 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v20 = (&v15->super.isa + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_152;
        }

        if (v91)
        {
          v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_24;
        }

        if (v15 >= *v644->clientIdentity)
        {
          break;
        }

        v92 = *(v645 + 8 * v15 + 32);
LABEL_24:
        v93 = v92;
        v94 = [v92 remObjectID];
        v95 = v647;
        sub_1005E3810(v94, &unk_10093F790, off_1008D4158);
        v647 = v95;
        if (v95)
        {

          v646, v106, v107, v108, v109, v110, v111, v112;
          v654, v113, v114, v115, v116, v117, v118, v119;

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v23 = v662;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v652;
        specialized ContiguousArray._endMutation()();
        v15 = (v15 + 1);
        if (v20 == v89)
        {
          v90 = v652[0];
          v20 = v646;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_159:
      swift_once();
    }

LABEL_27:
    v96 = v654;
    v97 = v647;
    sub_1005E2514(v654);
    if (v97)
    {
      v96, v99, v100, v101, v102, v103, v104, v105;
      v90, v122, v123, v124, v125, v126, v127, v128;
      v20, v129, v130, v131, v132, v133, v134, v135;
      return;
    }

    v120 = v98;
    v96, v99, v100, v101, v102, v103, v104, v105;
    v121 = v640;
    v644 = sub_10065F214(v120, v640);
    v120, v136, v137, v138, v139, v140, v141, v142;
    v143 = sub_1006639CC(v90, v121);
    v647 = 0;
    v630 = v143;
    v90, v145, v146, v147, v148, v149, v150, v151;
    swift_beginAccess();
    v152 = 0;
    v620 = (v23 + 8);
    *&v153 = 136446466;
    v625 = v153;
    *&v153 = 136446978;
    v621 = v153;
    while (2)
    {
      if (v152 >= *v20->clientIdentity)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      else
      {
        v166 = v648 + 16 * v152;
        v167 = *(v166 + 1);
        v23 = *v166;
        v633 = v167;

        v168 = [v23 remObjectID];
        v169 = v647;
        v170 = sub_1005E3810(v168, &unk_10093F790, off_1008D4158);
        v647 = v169;
        if (v169)
        {
          goto LABEL_153;
        }

        v171 = v170;
        v632 = v152;

        v179 = v121[6];
        if ((v179 & 0xC000000000000001) != 0)
        {
          v180 = v171;

          v181 = __CocoaDictionary.lookup(_:)();
          if (v181)
          {
            v653[0] = v181;
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            swift_dynamicCast();
            v182 = v652[0];
            goto LABEL_43;
          }

LABEL_71:

          v179, v245, v246, v247, v248, v249, v250, v251;
          goto LABEL_72;
        }

        if (!*(v179 + 16))
        {
          goto LABEL_72;
        }

        v180 = v171;

        v183 = sub_10002B924(v180);
        if ((v184 & 1) == 0)
        {
          goto LABEL_71;
        }

        v182 = *(*(v179 + 56) + 8 * v183);
LABEL_43:

        v179, v185, v186, v187, v188, v189, v190, v191;
        if (!v182)
        {
LABEL_72:
          v633, v172, v173, v174, v175, v176, v177, v178;
          v252 = v171;
          v253 = Logger.logObject.getter();
          v254 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v253, v254))
          {

            goto LABEL_74;
          }

          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          v631 = v23;
          v157 = v156;
          v652[0] = v156;
          *v154 = v625;
          *(v154 + 4) = sub_10000668C(0xD000000000000016, (v643 | 0x8000000000000000), v652);
          *(v154 + 12) = 2114;
          *(v154 + 14) = v252;
          *v155 = v252;
          v158 = v252;
          _os_log_impl(&_mh_execute_header, v253, v254, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v154, 0x16u);
          sub_1000050A4(v155, &unk_100938E70, &unk_100797230);

          sub_10000607C(v157);

LABEL_34:
          v121 = v640;
          v152 = v632 + 1;
          if (v632 + 1 != v649)
          {
            continue;
          }

          v20, v159, v160, v161, v162, v163, v164, v165;
          v630, v535, v536, v537, v538, v539, v540, v541;
          v144 = v644;
          goto LABEL_32;
        }

        v199 = v630;
        v200 = *v630->clientIdentity;
        v631 = v23;
        if (v200)
        {
          v201 = sub_100393C74();
          v199 = v630;
          if (v192)
          {
            v202 = *(*&v630->clientIdentity[40] + 8 * v201);
            swift_bridgeObjectRetain_n();
            v203 = v171;
            v628 = v202;
            v204 = v641;

            v205 = v204;
            v206 = Logger.logObject.getter();
            v207 = static os_log_type_t.default.getter();

            v208 = os_log_type_enabled(v206, v207);
            v623 = v203;
            if (v208)
            {
              LODWORD(v637) = v207;
              v662 = v206;
              v209 = swift_slowAlloc();
              v210 = swift_slowAlloc();
              v636 = swift_slowAlloc();
              v653[0] = v636;
              *v209 = v621;
              *(v209 + 4) = sub_10000668C(0xD000000000000016, (v643 | 0x8000000000000000), v653);
              *(v209 + 12) = 2082;
              v211 = *(v205 + 40);
              v660 = *(v205 + 24);
              v661[0] = v211;
              *(v661 + 14) = *(v205 + 54);
              sub_100009DAC(&v660, v652);
              v212 = sub_1000063E8();
              v214 = v213;
              sub_1005812D4(&v660);
              v215 = sub_10000668C(v212, v214, v653);
              v214, v216, v217, v218, v219, v220, v221, v222;
              *(v209 + 14) = v215;
              *(v209 + 22) = 2114;
              *(v209 + 24) = v203;
              v635 = v210;
              *v210 = v203;
              v645 = v209;
              *(v209 + 32) = 2082;
              v223 = v633;
              v224 = *v633->clientIdentity;
              if (v224)
              {
                v652[0] = &_swiftEmptyArrayStorage;
                v225 = v203;
                sub_100026EF4(0, v224, 0);
                v232 = v652[0];
                v233 = 32;
                v234 = v223;
                do
                {
                  v235 = *(&v234->super.isa + v233);
                  if (v235 == 2)
                  {
                    v236 = 0x65656E6769737361;
                  }

                  else
                  {
                    v236 = 0x74616E696769726FLL;
                  }

                  if (v235 == 2)
                  {
                    v237 = 0xEA00000000004449;
                  }

                  else
                  {
                    v237 = 0xEC0000004449726FLL;
                  }

                  if (*(&v234->super.isa + v233))
                  {
                    v238 = 0x7265646E696D6572;
                  }

                  else
                  {
                    v238 = 0x49746E756F636361;
                  }

                  if (*(&v234->super.isa + v233))
                  {
                    v239 = 0xEA00000000004449;
                  }

                  else
                  {
                    v239 = 0xE900000000000044;
                  }

                  if (*(&v234->super.isa + v233) <= 1u)
                  {
                    v240 = v238;
                  }

                  else
                  {
                    v240 = v236;
                  }

                  if (*(&v234->super.isa + v233) <= 1u)
                  {
                    v241 = v239;
                  }

                  else
                  {
                    v241 = v237;
                  }

                  v652[0] = v232;
                  v243 = *v232->clientIdentity;
                  v242 = *&v232->clientIdentity[8];
                  if (v243 >= v242 >> 1)
                  {
                    sub_100026EF4((v242 > 1), v243 + 1, 1);
                    v234 = v633;
                    v232 = v652[0];
                  }

                  *v232->clientIdentity = v243 + 1;
                  v244 = v232 + 16 * v243;
                  *(v244 + 4) = v240;
                  *(v244 + 5) = v241;
                  ++v233;
                  --v224;
                }

                while (v224);
                v223 = v234;
                v234, v234, v226, v227, v228, v229, v230, v231;
                v20 = v646;
                v23 = v631;
              }

              else
              {
                v262 = v203;
                v223, v263, v264, v265, v266, v267, v268, v269;
                v232 = &_swiftEmptyArrayStorage;
              }

              v270 = Array.description.getter();
              v272 = v271;
              v232, v271, v273, v274, v275, v276, v277, v278;
              v223, v279, v280, v281, v282, v283, v284, v285;
              v286 = sub_10000668C(v270, v272, v653);
              v272, v287, v288, v289, v290, v291, v292, v293;
              v294 = v645;
              *(v645 + 34) = v286;
              p_super = &v662->super;
              _os_log_impl(&_mh_execute_header, &v662->super, v637, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v294, 0x2Au);
              sub_1000050A4(v635, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v205 = v641;
            }

            else
            {

              v223 = v633;
              swift_bridgeObjectRelease_n();
            }

            v297 = v642;
            v296 = v643;
            v622 = *v223->clientIdentity;
            if (v622)
            {
              v298 = 0;
              v624 = &v223->clientIdentity[16];
              do
              {
                if (v298 >= *v223->clientIdentity)
                {
                  goto LABEL_170;
                }

                v626 = v298;
                v299 = v624[v298];
                v627 = v299;
                v300 = sub_1003114A0(v23, v299);
                if (v300 >> 62)
                {
                  v365 = v300;
                  v308 = _CocoaArrayWrapper.endIndex.getter();
                  v300 = v365;
                  v629 = v365;
                  if (v308)
                  {
LABEL_83:
                    v90 = 0;
                    v636 = v300 & 0xFFFFFFFFFFFFFF8;
                    v637 = v300 & 0xC000000000000001;
                    v635 = &v300->clientIdentity[16];
                    v23 = _swiftEmptyDictionarySingleton;
                    v634 = v308;
                    while (1)
                    {
                      if (v637)
                      {
                        v312 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v16 = v644;
                      }

                      else
                      {
                        v16 = v644;
                        if (v90 >= *(v636 + 16))
                        {
                          goto LABEL_163;
                        }

                        v312 = *&v635[8 * v90];
                      }

                      v313 = __OFADD__(v90++, 1);
                      v662 = v90;
                      if (v313)
                      {
                        goto LABEL_162;
                      }

                      v314 = v16[2];
                      v322 = v312;
                      if (!v314 || (v323 = sub_100393C74(), (v315 & 1) == 0))
                      {
                        v434 = v296;
                        v633, v315, v316, v317, v318, v319, v320, v321;
                        v629, v435, v436, v437, v438, v439, v440, v441;
                        v23, v442, v443, v444, v445, v446, v447, v448;
                        v630, v449, v450, v451, v452, v453, v454, v455;
                        v16, v456, v457, v458, v459, v460, v461, v462;
                        v20, v463, v464, v465, v466, v467, v468, v469;
                        v470 = v641;

                        v471 = v322;
                        v472 = v470;
                        v473 = Logger.logObject.getter();
                        v474 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v473, v474))
                        {
                          v475 = swift_slowAlloc();
                          v662 = swift_slowAlloc();
                          v653[0] = v662;
                          *v475 = v621;
                          *(v475 + 4) = sub_10000668C(0xD000000000000016, (v434 | 0x8000000000000000), v653);
                          *(v475 + 12) = 2082;
                          v476 = *(v472 + 40);
                          v658 = *(v472 + 24);
                          v659[0] = v476;
                          *(v659 + 14) = *(v472 + 54);
                          sub_100009DAC(&v658, v652);
                          v477 = sub_1000063E8();
                          v479 = v478;
                          sub_1005812D4(&v658);
                          v480 = sub_10000668C(v477, v479, v653);
                          v479, v481, v482, v483, v484, v485, v486, v487;
                          *(v475 + 14) = v480;
                          *(v475 + 22) = 2080;
                          v488 = [v471 description];
                          v489 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v491 = v490;

                          v492 = sub_10000668C(v489, v491, v653);
                          v491, v493, v494, v495, v496, v497, v498, v499;
                          *(v475 + 24) = v492;
                          *(v475 + 32) = 2080;
                          v500 = [v471 description];
                          v501 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v503 = v502;

                          v504 = sub_10000668C(v501, v503, v653);
                          v503, v505, v506, v507, v508, v509, v510, v511;
                          *(v475 + 34) = v504;
                          _os_log_impl(&_mh_execute_header, v473, v474, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v475, 0x2Au);
                          swift_arrayDestroy();
                        }

                        v512 = v631;
                        v513 = v623;
                        [objc_opt_self() noSuchObjectErrorWithObjectID:v471];

                        swift_willThrow();
                        return;
                      }

                      v324 = *(v16[7] + 8 * v323);
                      v645 = v324;
                      if ((v23 & 0xC000000000000001) != 0)
                      {
                        if (v23 < 0)
                        {
                          v325 = v23;
                        }

                        else
                        {
                          v325 = v23 & 0xFFFFFFFFFFFFFF8;
                        }

                        v326 = v324;
                        v327 = __CocoaDictionary.count.getter();
                        if (__OFADD__(v327, 1))
                        {
                          goto LABEL_167;
                        }

                        v328 = sub_10021D008(v325, v327 + 1);
                      }

                      else
                      {
                        v329 = v324;
                        v328 = v23;
                      }

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v652[0] = v328;
                      v331 = v322;
                      v333 = sub_10002B924(v322);
                      v334 = *(v328 + 16);
                      v335 = (v332 & 1) == 0;
                      v336 = v334 + v335;
                      if (__OFADD__(v334, v335))
                      {
                        __break(1u);
LABEL_167:
                        __break(1u);
LABEL_168:
                        __break(1u);
                        goto LABEL_169;
                      }

                      v337 = v332;
                      if (*(v328 + 24) >= v336)
                      {
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          v23 = v328;
                        }

                        else
                        {
                          sub_1000F5104(&qword_10093D598, &unk_10079B210);
                          v343 = static _DictionaryStorage.copy(original:)();
                          v23 = v343;
                          if (*(v328 + 16))
                          {
                            v351 = (v343 + 64);
                            v352 = 1 << *(v23 + 32);
                            v618 = (v328 + 64);
                            v353 = (v352 + 63) >> 6;
                            if (v23 != v328 || v351 >= &v618[8 * v353])
                            {
                              memmove(v351, v618, 8 * v353);
                            }

                            v354 = 0;
                            *(v23 + 16) = *(v328 + 16);
                            v355 = 1 << *(v328 + 32);
                            if (v355 < 64)
                            {
                              v356 = ~(-1 << v355);
                            }

                            else
                            {
                              v356 = -1;
                            }

                            v619 = v356 & *(v328 + 64);
                            for (i = (v355 + 63) >> 6; v619; v364 = v362)
                            {
                              v357 = __clz(__rbit64(v619));
                              v619 &= v619 - 1;
LABEL_123:
                              v360 = v357 | (v354 << 6);
                              v361 = *(*(v328 + 48) + 8 * v360);
                              v362 = *(*(v328 + 56) + 8 * v360);
                              *(*(v23 + 48) + 8 * v360) = v361;
                              *(*(v23 + 56) + 8 * v360) = v362;
                              v363 = v361;
                            }

                            v358 = v354;
                            while (1)
                            {
                              v354 = v358 + 1;
                              if (__OFADD__(v358, 1))
                              {
                                goto LABEL_171;
                              }

                              if (v354 >= i)
                              {
                                break;
                              }

                              v359 = *&v618[8 * v354];
                              ++v358;
                              if (v359)
                              {
                                v357 = __clz(__rbit64(v359));
                                v619 = (v359 - 1) & v359;
                                goto LABEL_123;
                              }
                            }
                          }

                          v328, v344, v345, v346, v347, v348, v349, v350;
                        }
                      }

                      else
                      {
                        sub_10036CABC(v336, isUniquelyReferenced_nonNull_native);
                        v23 = v652[0];
                        v338 = sub_10002B924(v331);
                        if ((v337 & 1) != (v339 & 1))
                        {
                          goto LABEL_172;
                        }

                        v333 = v338;
                      }

                      v296 = v643;
                      v20 = v646;
                      if (v337)
                      {

                        v309 = *(v23 + 56);
                        v310 = *(v309 + 8 * v333);
                        v311 = v645;
                        *(v309 + 8 * v333) = v645;
                      }

                      else
                      {
                        *(v23 + 8 * (v333 >> 6) + 64) |= 1 << v333;
                        *(*(v23 + 48) + 8 * v333) = v331;
                        v340 = v645;
                        *(*(v23 + 56) + 8 * v333) = v645;

                        v341 = *(v23 + 16);
                        v313 = __OFADD__(v341, 1);
                        v342 = v341 + 1;
                        if (v313)
                        {
                          goto LABEL_168;
                        }

                        *(v23 + 16) = v342;
                      }

                      v297 = v642;
                      v90 = v662;
                      if (v662 == v634)
                      {
                        goto LABEL_128;
                      }
                    }
                  }
                }

                else
                {
                  v308 = *((v300 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v629 = v300;
                  if (v308)
                  {
                    goto LABEL_83;
                  }
                }

                v23 = _swiftEmptyDictionarySingleton;
LABEL_128:
                v629, v301, v302, v303, v304, v305, v306, v307;
                sub_10045BDE8(v23);
                v16 = v366;
                v23, v367, v368, v369, v370, v371, v372, v373;
                if (v627 <= 1)
                {
                  v23 = v631;
                  if (v627)
                  {
                    v409 = *(a2 + 24);
                    v410 = v647;
                    sub_1006872B0(1u, v409, v16, off_1008D41D0, &qword_100939EE0);
                    v647 = v410;
                    if (v410)
                    {
                      goto LABEL_165;
                    }

                    v412 = v411;
                    v16, v413, v414, v415, v416, v417, v418, v419;
                    v420 = v628;
                    [v628 setReminder:v412];
                    v421 = [v409 uuid];
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    isa = UUID._bridgeToObjectiveC()().super.isa;
                    (*v620)(v297, v638);
                    [v420 setOwningReminderIdentifier:isa];

                    v296 = v643;
                  }

                  else
                  {
                    v374 = v647;
                    sub_1006872B0(0, *(a2 + 16), v16, off_1008D4120, &qword_1009399F0);
                    v647 = v374;
                    if (v374)
                    {
                      goto LABEL_165;
                    }

                    v383 = v375;
                    v16, v384, v385, v386, v387, v388, v389, v390;
                    [v628 setAccount:v383];
                  }

                  goto LABEL_144;
                }

                v23 = v631;
                if (v627 == 2)
                {
                  if (([v631 _debug_cdAssigneeLinked] & 1) == 0)
                  {
                    goto LABEL_143;
                  }

                  v398 = v296;
                  v90 = [v23 assigneeID];
                  v399 = v647;
                  sub_1006872B0(2u, v90, v16, off_1008D41E0, &qword_100942E50);
                  v647 = v399;
                  if (v399)
                  {
                    goto LABEL_164;
                  }

                  v401 = v400;

                  v16, v402, v403, v404, v405, v406, v407, v408;
                  [v628 setAssignee:{v401, i}];
                }

                else
                {
                  if (([v631 isOriginatorNullified] & 1) != 0 || (objc_msgSend(v23, "_debug_cdOriginatorLinked") & 1) == 0)
                  {
LABEL_143:
                    v16, v391, v392, v393, v394, v395, v396, v397;
                    goto LABEL_144;
                  }

                  v398 = v296;
                  v90 = [v23 originatorID];
                  v423 = v647;
                  sub_1006872B0(3u, v90, v16, off_1008D41E0, &qword_100942E50);
                  v647 = v423;
                  if (v423)
                  {
                    goto LABEL_164;
                  }

                  v401 = v424;

                  v16, v425, v426, v427, v428, v429, v430, v431;
                  [v628 setOriginator:{v401, i}];
                }

                v296 = v398;
LABEL_144:
                v298 = v626 + 1;
                v205 = v641;
                v223 = v633;
              }

              while (v626 + 1 != v622);
            }

            v223, v255, v256, v257, v258, v259, v260, v261;
            v432 = *(v205 + 104);
            v253 = v623;
            if (v432)
            {
              v433 = v628;
              [v628 updateChangeCount];
            }

            else
            {
            }

LABEL_74:

            goto LABEL_34;
          }
        }

        v644, v192, v193, v194, v195, v196, v197, v198;
        v20, v542, v543, v544, v545, v546, v547, v548;
        v633, v549, v550, v551, v552, v553, v554, v555;
        v199, v556, v557, v558, v559, v560, v561, v562;
        v563 = v171;
        v564 = v641;

        v565 = v564;
        v566 = Logger.logObject.getter();
        v567 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v566, v567))
        {
          v568 = swift_slowAlloc();
          v653[0] = swift_slowAlloc();
          *v568 = 136446722;
          *(v568 + 4) = sub_10000668C(0xD000000000000016, (v643 | 0x8000000000000000), v653);
          *(v568 + 12) = 2082;
          v569 = *(v565 + 40);
          v656 = *(v565 + 24);
          v657[0] = v569;
          *(v657 + 14) = *(v565 + 54);
          sub_100009DAC(&v656, v652);
          v570 = sub_1000063E8();
          v572 = v571;
          sub_1005812D4(&v656);
          v573 = sub_10000668C(v570, v572, v653);
          v572, v574, v575, v576, v577, v578, v579, v580;
          *(v568 + 14) = v573;
          *(v568 + 22) = 2080;
          v581 = [v563 description];
          v582 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v584 = v583;

          v585 = v582;
          v23 = v631;
          v586 = sub_10000668C(v585, v584, v653);
          v584, v587, v588, v589, v590, v591, v592, v593;
          *(v568 + 24) = v586;
          _os_log_impl(&_mh_execute_header, v566, v567, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v568, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v563];
        swift_willThrow();
      }

      break;
    }
  }
}