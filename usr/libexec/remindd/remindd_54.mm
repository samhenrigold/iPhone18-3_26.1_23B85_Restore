_TtC7remindd19RDXPCStorePerformer *sub_1004F60B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v46 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(a2 + 16);

      v11 = v9;
      v12 = v8;
      if (v10)
      {
        v13 = sub_100005F4C(v8, v9);
        v11 = v9;
        v12 = v8;
        if (v14)
        {
          v15 = (*(a2 + 56) + 16 * v13);
          v12 = *v15;
          v11 = v15[1];
        }
      }

      if (*(a2 + 16) && (v23 = sub_100005F4C(v8, v9), (v16 & 1) != 0) && ((v24 = (*(a2 + 56) + 16 * v23), v16 = v24[1], *v24 == v12) ? (v25 = v16 == v11) : (v25 = 0), (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v26 = *a3, *(*a3 + 16)) && (v27 = sub_100005F4C(v12, v11), (v16 & 1) != 0)))
      {
        v28 = (*(v26 + 56) + 16 * v27);
        v30 = *v28;
        v29 = v28[1];

        sub_100378434(v45, v30, v29);
        v31 = v45[1];
        v9, v32, v33, v34, v35, v36, v37, v38;
        v39 = v31;
      }

      else
      {
        v39 = v9;
      }

      v39, v16, v17, v18, v19, v20, v21, v22;
      v46 = v4;
      v41 = *v4->clientIdentity;
      v40 = *&v4->clientIdentity[8];
      if (v41 >= v40 >> 1)
      {
        sub_100026EF4((v40 > 1), v41 + 1, 1);
        v4 = v46;
      }

      *v4->clientIdentity = v41 + 1;
      v42 = v4 + 16 * v41;
      *(v42 + 4) = v12;
      *(v42 + 5) = v11;
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1004F628C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, __n128 a3)
{
  v6 = type metadata accessor for REMManualOrdering.ElementType();
  v7 = *&v6[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v6, v8);
  v1038 = &v1027 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v10 - 8, v11);
  i = (&v1027 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v14);
  v1045 = (&v1027 - v15);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v1027 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v1042 = &v1027 - v23;
  *&v26 = __chkstk_darwin(v24, v25).n128_u64[0];
  v1043 = &v1027 - v27;
  v1056 = 0;
  v28 = [(RDXPCStorePerformer *)a2 existingObjectWithID:a1 error:&v1056, v26];
  isa = v1056;
  if (!v28)
  {
    v55 = v1056;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v30 = v28;
  v1037 = a2;
  type metadata accessor for REMCDManualSortHint();
  v31 = swift_dynamicCastClass();
  v32 = isa;
  if (!v31)
  {

    return;
  }

  v33 = [v31 account];
  if (!v33)
  {
    if (qword_100936320 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_10094ABB8);
    v57 = v30;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v1056 = v61;
      *v60 = 136446210;
      v62 = [v31 remObjectID];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 description];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
      }

      else
      {
        v67 = 0xE300000000000000;
        v65 = 7104878;
      }

      v279 = sub_10000668C(v65, v67, &v1056);
      v67, v280, v281, v282, v283, v284, v285, v286;
      *(v60 + 4) = v279;
      _os_log_impl(&_mh_execute_header, v58, v59, "Cannot replaceLocalIDsInREMCDManualSortHint() against a manual sort hint without an associated account {remObjectID: %{public}s}", v60, 0xCu);
      sub_10000607C(v61);
    }

    else
    {
    }

    return;
  }

  v1029 = v33;
  v1034 = v30;
  v34 = [v31 concatenatedContainerIDsWithLocalContainerIDPrefix];
  v1035 = v31;
  v1047 = v16;
  v1036 = v3;
  v1028 = v20;
  v1031 = v6;
  v1030 = v7;
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v1056 = v36;
    v1057 = v38;
    v39 = *&v31[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix + 8];
    v1048 = *&v31[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix];
    v1049 = v39;
    sub_10013BCF4();
    isa = StringProtocol.components<A>(separatedBy:)();
    v38, v40, v41, v42, v43, v44, v45, v46;
    p_isa = sub_1001A5660(isa);
    isa, v48, v49, v50, v51, v52, v53, v54;
  }

  else
  {
    p_isa = _swiftEmptySetSingleton;
  }

  v1056 = &_swiftEmptyArrayStorage;
  v68 = (p_isa + 7);
  v69 = 1 << *(p_isa + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & p_isa[7];
  v72 = ((v69 + 63) >> 6);
  v1046 = v17 + 48;
  v1039 = (v17 + 32);
  v1040 = (v17 + 8);

  v80 = 0;
  v1032 = &_swiftEmptyArrayStorage;
  v1033 = &_swiftEmptyArrayStorage;
  v1041 = p_isa;
  while (v71)
  {
LABEL_23:
    v82 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v83 = (p_isa[6] + ((v80 << 10) | (16 * v82)));
    v84 = *v83;
    v6 = v83[1];

    v85 = String.count.getter();
    sub_10048A888(v85, v84, v6);
    v87 = v86;
    static String._fromSubstring(_:)();
    v89 = v88;
    v87, v88, v90, v91, v92, v93, v94, v95;
    isa = v1045;
    UUID.init(uuidString:)();
    v89, v96, v97, v98, v99, v100, v101, v102;
    v20 = v1047;
    if ((*v1046)(isa, 1, v1047) == 1)
    {
      v6, v103, v104, v105, v106, v107, v108, v109;
      sub_1000050A4(isa, &unk_100939D90, "8\n\r");
      p_isa = v1041;
    }

    else
    {
      v110 = v1043;
      (*v1039)(v1043, isa, v20);
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v112 = [ObjCClassFromMetadata objectIDWithUUID:isa];
      v6, v113, v114, v115, v116, v117, v118, v119;

      (*v1040)(v110, v20);
      p_isa = v1041;
      if (v112)
      {
        isa = &v1056;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v1056 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1056 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v1056 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1033 = v1056;
      }
    }
  }

  while (1)
  {
    v81 = (v80 + 1);
    if (__OFADD__(v80, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v81 >= v72)
    {
      break;
    }

    v71 = *(&v68->super.isa + v81);
    ++v80;
    if (v71)
    {
      v80 = v81;
      goto LABEL_23;
    }
  }

  p_isa, v120, v121, v122, v123, v124, v125, v126;
  v127 = v1033;
  v1043 = sub_1001A577C(v1033);
  v127, v128, v129, v130, v131, v132, v133, v134;
  v135 = v1035;
  v136 = [v1035 concatenatedElementIDsWithLocalElementIDPrefix];
  v68 = _swiftEmptySetSingleton;
  if (v136)
  {
    v137 = v136;
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v1056 = v138;
    v1057 = v140;
    v141 = *&v135[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix + 8];
    v1048 = *&v135[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix];
    v1049 = v141;
    sub_10013BCF4();
    isa = &v1056;
    v142 = StringProtocol.components<A>(separatedBy:)();
    v140, v143, v144, v145, v146, v147, v148, v149;
    v68 = sub_1001A5660(v142);
    v142, v150, v151, v152, v153, v154, v155, v156;
  }

  v1056 = &_swiftEmptyArrayStorage;
  v71 = &v68->clientIdentity[40];
  v157 = 1 << v68->clientIdentity[16];
  v158 = -1;
  if (v157 < 64)
  {
    v158 = ~(-1 << v157);
  }

  v20 = v158 & *&v68->clientIdentity[40];
  v72 = ((v157 + 63) >> 6);

  v80 = 0;
  v1045 = v68;
  while (v20)
  {
LABEL_39:
    v160 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v161 = (*&v68->clientIdentity[32] + ((v80 << 10) | (16 * v160)));
    v163 = *v161;
    v162 = v161[1];

    v164 = String.count.getter();
    sub_10048A888(v164, v163, v162);
    v166 = v165;
    p_isa = static String._fromSubstring(_:)();
    v6 = v167;
    v166, v167, v168, v169, v170, v171, v172, v173;
    isa = i;
    UUID.init(uuidString:)();
    v6, v174, v175, v176, v177, v178, v179, v180;
    v181 = v1047;
    if ((*v1046)(isa, 1, v1047) == 1)
    {
      v162, v182, v183, v184, v185, v186, v187, v188;
      sub_1000050A4(isa, &unk_100939D90, "8\n\r");
      v68 = v1045;
    }

    else
    {
      v6 = v1042;
      (*v1039)(v1042, isa, v181);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v189 = swift_getObjCClassFromMetadata();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      p_isa = [v189 objectIDWithUUID:isa];
      v162, v190, v191, v192, v193, v194, v195, v196;

      (*v1040)(v6, v181);
      v68 = v1045;
      if (p_isa)
      {
        isa = &v1056;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v1056 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1056 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1032 = v1056;
      }
    }
  }

  while (1)
  {
    v159 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      goto LABEL_138;
    }

    if (v159 >= v72)
    {
      break;
    }

    v20 = *(v71 + 8 * v159);
    ++v80;
    if (v20)
    {
      v80 = v159;
      goto LABEL_39;
    }
  }

  v68, v197, v198, v199, v200, v201, v202, v203;
  v204 = v1032;
  v205 = sub_1001A577C(v1032);
  v204, v206, v207, v208, v209, v210, v211, v212;
  v213 = v1029;
  sub_1006B038C();
  v215 = v214;
  v216 = type metadata accessor for RDManualSortIDCache();
  v218 = v216;
  if (qword_100936508 != -1)
  {
    v216 = swift_once();
  }

  v219 = qword_10094C220;
  __chkstk_darwin(v216, v217);
  *(&v1027 - 4) = v218;
  *(&v1027 - 3) = v215;
  *(&v1027 - 2) = v219;
  v220 = v1036;
  OS_dispatch_queue.sync<A>(execute:)();
  v221 = v1056;
  type metadata accessor for RDManualSortIDAdapter();
  swift_allocObject();
  v222 = sub_100214ECC(v221, v215, 0);

  v223 = v1043;
  v80 = v1037;
  v224 = sub_100217DB4(v1043);
  v231 = v1031;
  v232 = v1030;
  if (v220)
  {

    v223, v233, v234, v235, v236, v237, v238, v239;
    v205, v240, v241, v242, v243, v244, v245, v246;

    return;
  }

  v247 = v223;
  v248 = v224;
  v247, v247, v225, v226, v227, v228, v229, v230;
  v1043 = sub_1004F4C8C(v248);
  v248, v249, v250, v251, v252, v253, v254, v255;
  v256 = v1038;
  (*(v232 + 104))(v1038, enum case for REMManualOrdering.ElementType.reminders(_:), v231);
  v257 = sub_1002184FC(v205);
  v258 = v1034;
  v259 = *(v232 + 8);
  v6 = (v232 + 8);
  v260 = v256;
  v261 = v257;
  v259(v260, v231);
  v205, v262, v263, v264, v265, v266, v267, v268;
  v269 = sub_1004F501C(v261);
  v261, v270, v271, v272, v273, v274, v275, v276;
  v277 = v1043;
  if ((v1043 & 0xC000000000000001) != 0)
  {
    v278 = __CocoaDictionary.count.getter();
  }

  else
  {
    v278 = *(v1043 + 16);
  }

  if (!v278 && !((v269 & 0xC000000000000001) != 0 ? __CocoaDictionary.count.getter() : *(v269 + 16)))
  {

    v277, v550, v551, v552, v553, v554, v555, v556;
    v269, v557, v558, v559, v560, v561, v562, v563;
    return;
  }

  v1045 = sub_10038E004(&_swiftEmptyArrayStorage);
  v1042 = v269;
  v1036 = 0;
  v1039 = v213;
  v1033 = v222;
  if ((v277 & 0xC000000000000001) != 0)
  {
    v288 = 0;
    v289 = 0;
    v290 = 0;
    v291 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v292 = -1 << *(v277 + 32);
    v289 = ~v292;
    v293 = v277;
    v295 = *(v277 + 64);
    v288 = (v277 + 64);
    v294 = v295;
    v296 = -v292;
    if (v296 < 64)
    {
      v297 = ~(-1 << v296);
    }

    else
    {
      v297 = -1;
    }

    v290 = v297 & v294;
    v291 = v293;
  }

  v305 = 0;
  v1041 = v289;
  v306 = ((v289 + 64) >> 6);
  v1046 = v291;
  for (i = v288; ; v288 = i)
  {
    v307 = v305;
    v68 = v290;
    if ((v291 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v312 = __CocoaDictionary.Iterator.next()();
      if (!v312)
      {
        goto LABEL_96;
      }

      v314 = v313;
      v1048 = v312;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      v80 = v1056;
      v1048 = v314;
      type metadata accessor for RDAccountManualSortID(0);
      swift_dynamicCast();
      v6 = v1056;
      v305 = v307;
      v310 = v68;
      if (!v80)
      {
        goto LABEL_96;
      }

LABEL_76:

      v315._countAndFlagsBits = UUID.uuidString.getter();
      object = v315._object;
      v1056 = 0x7C6C61636F6CLL;
      v1057 = 0xE600000000000000;
      String.append(_:)(v315);
      object, v317, v318, v319, v320, v321, v322, v323;
      v324 = v1056;
      v325 = v1057;
      v326 = *&v6->clientIdentity[8];
      if (v326)
      {
        v1038 = *v6->clientIdentity;

        v336 = v1045;
        LODWORD(v1037) = swift_isUniquelyReferenced_nonNull_native();
        v1056 = v336;
        v344 = sub_100005F4C(v324, v325);
        v345 = *v336->clientIdentity;
        v346 = (v337 & 1) == 0;
        v347 = v345 + v346;
        if (!__OFADD__(v345, v346))
        {
          if (*&v336->clientIdentity[8] >= v347)
          {
            if (v1037)
            {
              v290 = v310;
              if ((v337 & 1) == 0)
              {
                goto LABEL_92;
              }
            }

            else
            {
              v1037 = v344;
              LODWORD(v1045) = v337;
              sub_100373664();
              v337 = v1045;
              v344 = v1037;
              v290 = v310;
              if ((v1045 & 1) == 0)
              {
                goto LABEL_92;
              }
            }
          }

          else
          {
            LODWORD(v1045) = v337;
            sub_10036A8F0(v347, v1037);
            v348 = sub_100005F4C(v324, v325);
            v350 = v349 & 1;
            v337 = v1045;
            if ((v1045 & 1) != v350)
            {
              goto LABEL_188;
            }

            v344 = v348;
            v290 = v310;
            if ((v1045 & 1) == 0)
            {
LABEL_92:
              v376 = v1056;
              *(v1056 + 8 * (v344 >> 6) + 64) |= 1 << v344;
              v377 = (*(v376 + 48) + 16 * v344);
              *v377 = v324;
              v377[1] = v325;
              v378 = (*(v376 + 56) + 16 * v344);
              *v378 = v1038;
              v378[1] = v326;
              v379 = v376;

              v380 = *(v379 + 16);
              v381 = __OFADD__(v380, 1);
              v382 = v380 + 1;
              if (v381)
              {
                goto LABEL_182;
              }

              v1045 = v379;
              *(v379 + 16) = v382;
              goto LABEL_94;
            }
          }

          v366 = v344;
          v325, v337, v338, v339, v340, v341, v342, v343;
          v1045 = v1056;
          v367 = (*(v1056 + 56) + 16 * v366);
          v368 = v367[1];
          *v367 = v1038;
          v367[1] = v326;

          v368, v369, v370, v371, v372, v373, v374, v375;
LABEL_94:
          v291 = v1046;
          goto LABEL_95;
        }

LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v290 = v1045;
      v327 = sub_100005F4C(v1056, v1057);
      v329 = v328;
      v325, v328, v330, v331, v332, v333, v334, v335;
      if (v329)
      {
        break;
      }

      v307 = v305;
      v68 = v310;
      v291 = v1046;
      v288 = i;
      if ((v1046 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1056 = v290;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100373664();
      v290 = v1056;
    }

    *(*(v290 + 48) + 16 * v327 + 8), v352, v353, v354, v355, v356, v357, v358;
    *(*(v290 + 56) + 16 * v327 + 8), v359, v360, v361, v362, v363, v364, v365;
    v1045 = v290;
    sub_1003328B8(v327, v290);

    v291 = v1046;
    v290 = v310;
LABEL_95:
    ;
  }

LABEL_68:
  v308 = v307;
  v309 = v68;
  v305 = v307;
  if (!v68)
  {
    while (1)
    {
      v305 = (&v308->super.isa + 1);
      if (__OFADD__(v308, 1))
      {
        break;
      }

      if (v305 >= v306)
      {
        goto LABEL_96;
      }

      v309 = *(&v288->super.isa + v305);
      v308 = (v308 + 1);
      if (v309)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v80, v298, v299, v300, v301, v302, v303, v304;
    v6, v773, v774, v775, v776, v777, v778, v779;
    v290, v780, v781, v782, v783, v784, v785, v786;
    v306, v787, v788, v789, v790, v791, v792, v793;
    v307, v794, v795, v796, v797, v798, v799, v800;
    v1054 = v1046;
    v737 = &v1054;
LABEL_151:
    sub_1000050A4(v737, &unk_100945240, &qword_1007A0A70);
    v693 = v1047;
    v694 = v1028;
    goto LABEL_152;
  }

LABEL_72:
  v310 = (v309 - 1) & v309;
  v311 = (v305 << 9) | (8 * __clz(__rbit64(v309)));
  v6 = *(*(v291 + 56) + v311);
  v80 = *(*(v291 + 48) + v311);

  if (v80)
  {
    goto LABEL_76;
  }

LABEL_96:
  sub_10001B860(v1046);
  v1043, v383, v384, v385, v386, v387, v388, v389;
  i = sub_10038E004(&_swiftEmptyArrayStorage);
  if ((v1042 & 0xC000000000000001) != 0)
  {
    v390 = 0;
    v391 = 0;
    v68 = 0;
    v290 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v392 = -1 << *(v1042 + 32);
    v391 = ~v392;
    v390 = (v1042 + 64);
    v393 = -v392;
    if (v393 < 64)
    {
      v394 = ~(-1 << v393);
    }

    else
    {
      v394 = -1;
    }

    v68 = (v394 & *(v1042 + 64));
    v290 = v1042;
  }

  v395 = 0;
  v1041 = v391;
  v306 = ((v391 + 64) >> 6);
  v1043 = v290;
  while (1)
  {
    v307 = v395;
    if ((v290 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v399 = __CocoaDictionary.Iterator.next()();
      if (!v399)
      {
        goto LABEL_131;
      }

      v401 = v400;
      v1048 = v399;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      v80 = v1056;
      v1048 = v401;
      type metadata accessor for RDElementManualSortID(0);
      swift_dynamicCast();
      v6 = v1056;
      v395 = v307;
      v1046 = v68;
      if (!v80)
      {
        goto LABEL_131;
      }

LABEL_112:

      v402._countAndFlagsBits = UUID.uuidString.getter();
      v403 = v402._object;
      v1056 = 0x7C6C61636F6CLL;
      v1057 = 0xE600000000000000;
      String.append(_:)(v402);
      v403, v404, v405, v406, v407, v408, v409, v410;
      v411 = v1056;
      v412 = v1057;
      v413 = *&v6->clientIdentity[8];
      if (v413)
      {
        v1038 = *v6->clientIdentity;

        v424 = i;
        LODWORD(v1037) = swift_isUniquelyReferenced_nonNull_native();
        v1056 = v424;
        v432 = sub_100005F4C(v411, v412);
        v433 = *v424->clientIdentity;
        v434 = (v425 & 1) == 0;
        v435 = v433 + v434;
        if (!__OFADD__(v433, v434))
        {
          if (*&v424->clientIdentity[8] < v435)
          {
            LODWORD(i) = v425;
            sub_10036A8F0(v435, v1037);
            v436 = sub_100005F4C(v411, v412);
            v438 = v437 & 1;
            v425 = i;
            if ((i & 1) == v438)
            {
              v432 = v436;
              if ((i & 1) == 0)
              {
                goto LABEL_128;
              }

LABEL_126:
              v454 = v432;
              v412, v425, v426, v427, v428, v429, v430, v431;
              i = v1056;
              v455 = (*(v1056 + 56) + 16 * v454);
              v456 = v455[1];
              *v455 = v1038;
              v455[1] = v413;

              v456, v457, v458, v459, v460, v461, v462, v463;
              goto LABEL_130;
            }

LABEL_188:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_189:
            v1045, v1019, v1020, v1021, v1022, v1023, v1024, v1025;

            __break(1u);
            return;
          }

          if (v1037)
          {
            if (v425)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v1037 = v432;
            LODWORD(i) = v425;
            sub_100373664();
            v425 = i;
            v432 = v1037;
            if (i)
            {
              goto LABEL_126;
            }
          }

LABEL_128:
          v464 = v1056;
          *(v1056 + 8 * (v432 >> 6) + 64) |= 1 << v432;
          v465 = (*(v464 + 48) + 16 * v432);
          *v465 = v411;
          v465[1] = v412;
          v466 = (*(v464 + 56) + 16 * v432);
          *v466 = v1038;
          v466[1] = v413;
          v467 = v464;

          v468 = *(v467 + 16);
          v381 = __OFADD__(v468, 1);
          v469 = v468 + 1;
          if (!v381)
          {
            i = v467;
            *(v467 + 16) = v469;
            goto LABEL_130;
          }

LABEL_183:
          __break(1u);
        }

LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v414 = i;
      v415 = sub_100005F4C(v1056, v1057);
      v417 = v416;
      v412, v416, v418, v419, v420, v421, v422, v423;
      if (v417)
      {
        break;
      }

      v307 = v395;
      v68 = v1046;
      v290 = v1043;
      if ((v1043 & 0x8000000000000000) == 0)
      {
        goto LABEL_104;
      }
    }

    v439 = swift_isUniquelyReferenced_nonNull_native();
    v1056 = v414;
    if (!v439)
    {
      sub_100373664();
      v414 = v1056;
    }

    *(*&v414->clientIdentity[32] + 16 * v415 + 8), v440, v441, v442, v443, v444, v445, v446;
    *(*&v414->clientIdentity[40] + 16 * v415 + 8), v447, v448, v449, v450, v451, v452, v453;
    i = v414;
    sub_1003328B8(v415, v414);

LABEL_130:
    v290 = v1043;
    v68 = v1046;
  }

LABEL_104:
  v396 = v307;
  v397 = v68;
  v395 = v307;
  if (!v68)
  {
    do
    {
      v395 = (&v396->super.isa + 1);
      if (__OFADD__(v396, 1))
      {
        goto LABEL_148;
      }

      if (v395 >= v306)
      {
        goto LABEL_131;
      }

      v397 = *&v390[8 * v395];
      v396 = (v396 + 1);
    }

    while (!v397);
  }

  v1046 = (v397 - 1) & v397;
  v398 = (v395 << 9) | (8 * __clz(__rbit64(v397)));
  v6 = *(*(v290 + 56) + v398);
  v80 = *(*(v290 + 48) + v398);

  if (v80)
  {
    goto LABEL_112;
  }

LABEL_131:
  sub_10001B860(v1043);
  v1042, v470, v471, v472, v473, v474, v475, v476;
  v477 = v1036;
  sub_100226C14(v1058);
  if (v477)
  {

    v1045, v478, v479, v480, v481, v482, v483, v484;
    i, v485, v486, v487, v488, v489, v490, v491;
    return;
  }

  v492 = v1058[0];
  v493 = v1045;
  if (!v1058[0])
  {

    v493, v564, v565, v566, v567, v568, v569, v570;
    i, v571, v572, v573, v574, v575, v576, v577;
    return;
  }

  v72 = v1058[1];
  v6 = v1058[2];
  v80 = v1058[3];
  v1046 = v1058[4];
  v1056 = _swiftEmptySetSingleton;
  v1048 = _swiftEmptyDictionarySingleton;
  v494 = i;

  sub_1004F53AC(v495, v494, v493, &v1056, &v1048);
  v6, v496, v497, v498, v499, v500, v501, v502;
  v494, v503, v504, v505, v506, v507, v508, v509;
  v493, v510, v511, v512, v513, v514, v515, v516;

  v518 = sub_1004F60B8(v517, v494, &v1048);
  v519 = v492;
  p_isa = &v518->super.isa;
  v1043 = v519;
  v519, v520, v521, v522, v523, v524, v525, v526;
  v494, v527, v528, v529, v530, v531, v532, v533;
  v1051 = _swiftEmptyDictionarySingleton;

  sub_1004F5954(v534, v494, &v1048, &v1056, &v1051);
  v72, v535, v536, v537, v538, v539, v540, v541;
  swift_bridgeObjectRelease_n();
  v1050 = _swiftEmptyDictionarySingleton;

  sub_1004F5CE4(v542, v493, &v1056, &v1050);
  v80, v543, v544, v545, v546, v547, v548, v549;
  swift_bridgeObjectRelease_n();
  isa = v1050;
  v20 = v1051;
  v68 = v1048;
  swift_bridgeObjectRetain_n();

  v71 = sub_1001A6DC0();

  sub_10015E0CC(p_isa, v68, v71);
  v1036 = 0;
LABEL_139:
  isa, v73, v74, v75, v76, v77, v78, v79;
  v1055[1] = p_isa;
  v1055[2] = v20;
  v1055[3] = v68;
  v1055[4] = isa;
  v1045 = v71;
  v1055[5] = v71;
  v68, v578, v579, v580, v581, v582, v583, v584;
  v20, v585, v586, v587, v588, v589, v590, v591;
  v1056, v592, v593, v594, v595, v596, v597, v598;
  v599 = v1043;
  v600 = sub_1003AD2E8(p_isa, v1043);
  i = p_isa;
  p_isa, v601, v602, v603, v604, v605, v606, v607;
  v1042 = v20;
  if ((v600 & 1) == 0)
  {
    v80, v608, v609, v610, v611, v612, v613, v614;
    v6, v695, v696, v697, v698, v699, v700, v701;
    v72, v702, v703, v704, v705, v706, v707, v708;
    v599, v709, v710, v711, v712, v713, v714, v715;
    v20, v716, v717, v718, v719, v720, v721, v722;
    v68, v723, v724, v725, v726, v727, v728, v729;
    isa, v730, v731, v732, v733, v734, v735, v736;
    v1052 = v1046;
    v737 = &v1052;
    v307 = isa;
    goto LABEL_151;
  }

  v306 = v599;
  v307 = isa;
  v290 = v72;
  sub_1004ADA04(v20, v72);
  v616 = v615;
  v20, v617, v618, v619, v620, v621, v622, v623;
  if ((v616 & 1) == 0)
  {
    v80, v624, v625, v626, v627, v628, v629, v630;
    v6, v738, v739, v740, v741, v742, v743, v744;
    v72, v745, v746, v747, v748, v749, v750, v751;
    v306, v752, v753, v754, v755, v756, v757, v758;
    v68, v759, v760, v761, v762, v763, v764, v765;
    v307, v766, v767, v768, v769, v770, v771, v772;
    v1053 = v1046;
    v737 = &v1053;
    goto LABEL_151;
  }

  v631 = sub_1004ADBAC(v68, v6);
  v68, v632, v633, v634, v635, v636, v637, v638;
  if ((v631 & 1) == 0)
  {
    goto LABEL_149;
  }

  sub_1004ADD50(v307, v80);
  v640 = v639;
  v307, v641, v642, v643, v644, v645, v646, v647;
  if ((v640 & 1) == 0)
  {
    v80, v648, v649, v650, v651, v652, v653, v654;
    v6, v801, v802, v803, v804, v805, v806, v807;
    v72, v808, v809, v810, v811, v812, v813, v814;
    v306, v815, v816, v817, v818, v819, v820, v821;
    v1055[0] = v1046;
    v737 = v1055;
    goto LABEL_151;
  }

  v655 = v1046;
  v656 = v306;
  v657 = sub_1005A544C(v1045, v1046);
  v655, v658, v659, v660, v661, v662, v663, v664;
  v80, v665, v666, v667, v668, v669, v670, v671;
  v6, v672, v673, v674, v675, v676, v677, v678;
  v290, v679, v680, v681, v682, v683, v684, v685;
  v656, v686, v687, v688, v689, v690, v691, v692;
  v693 = v1047;
  v694 = v1028;
  if (v657)
  {
LABEL_153:

    v307, v825, v826, v827, v828, v829, v830, v831;
    v68, v832, v833, v834, v835, v836, v837, v838;
    v1042, v839, v840, v841, v842, v843, v844, v845;
    i, v846, v847, v848, v849, v850, v851, v852;
    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_152:
  v822 = v1036;
  v823 = sub_10015D850();
  v1036 = v822;
  if (v822)
  {
    goto LABEL_153;
  }

  v853 = v823;
  v854 = v824;
  v855 = Data._bridgeToObjectiveC()().super.isa;
  sub_10001BBA0(v853, v854);
  v856 = v1035;
  [v1035 setHintData:v855];

  [v856 setSerializationVersion:1];
  UUID.init()();
  v857 = UUID._bridgeToObjectiveC()().super.isa;
  (*v1040)(v694, v693);
  [v856 setETag:v857];

  v859 = v1045;
  v860 = v1045->clientIdentity[16];
  v861 = v860 & 0x3F;
  v862 = ((1 << v860) + 63) >> 6;
  v1043 = v862;
  v863 = 8 * v862;
  if (v861 > 0xD)
  {
    v1008 = 8 * v862;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v1016 = swift_slowAlloc();
      v1017 = v1036;
      v1018 = sub_1004ADE8C(v1016, v1043, v1045, sub_1004FD8D0);
      v1036 = v1017;
      if (!v1017)
      {
        v1026 = v1018;
        v887 = v1045;
        v1045, v1019, v1020, v1021, v1022, v1023, v1024, v1025;

        v888 = v1026;
        v875 = i;
        goto LABEL_170;
      }

      goto LABEL_189;
    }

    v859 = v1045;
    v1045, v1009, v1010, v1011, v1012, v1013, v1014, v1015;
    v863 = v1008;
  }

  v1041 = &v1027;
  __chkstk_darwin(v858, v863);
  v1046 = &v1027 - ((v864 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v1046, v864);
  v1047 = 0;
  v865 = 0;
  v868 = *&v859->clientIdentity[40];
  v867 = &v859->clientIdentity[40];
  v866 = v868;
  v869 = 1 << *(v867 - 24);
  v870 = -1;
  if (v869 < 64)
  {
    v870 = ~(-1 << v869);
  }

  v871 = v870 & v866;
  v872 = (v869 + 63) >> 6;
  while (1)
  {
    if (!v871)
    {
      v874 = v865;
      v875 = i;
      while (1)
      {
        v865 = v874 + 1;
        if (__OFADD__(v874, 1))
        {
          break;
        }

        if (v865 >= v872)
        {
          goto LABEL_169;
        }

        v876 = *&v867[8 * v865];
        ++v874;
        if (v876)
        {
          v873 = __clz(__rbit64(v876));
          v871 = (v876 - 1) & v876;
          goto LABEL_165;
        }
      }

      __break(1u);
      goto LABEL_180;
    }

    v873 = __clz(__rbit64(v871));
    v871 &= v871 - 1;
LABEL_165:
    v875 = v873 | (v865 << 6);
    v877 = *(*&v1045->clientIdentity[32] + 16 * v875 + 8);

    v878._countAndFlagsBits = 0x7C6C61636F6CLL;
    v878._object = 0xE600000000000000;
    v879 = String.hasPrefix(_:)(v878);
    v877, v880, v881, v882, v883, v884, v885, v886;
    if (v879)
    {
      *(v1046 + ((v875 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v875;
      v381 = __OFADD__(v1047++, 1);
      if (v381)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_169:
  v887 = v1045;
  v888 = sub_1001A0BCC(v1046, v1043, v1047, v1045);
LABEL_170:
  v896 = v1035;
  sub_1002D6764(v888, v889, v890, v891, v892, v893, v894, v895);
  v897 = v1042;
  sub_1004FE558(1, v875, v1042, v68, v898, v899, v900, v901);
  v903 = v902;
  v887, v904, v905, v906, v907, v908, v909, v910;
  v911 = v896;
  v307, v912, v913, v914, v915, v916, v917, v918;
  v68, v919, v920, v921, v922, v923, v924, v925;
  v897, v926, v927, v928, v929, v930, v931, v932;
  v875, v933, v934, v935, v936, v937, v938, v939;
  sub_1002D6778(v903, v940, v941, v942, v943, v944, v945, v946);
  [v896 updateChangeCount];
  v947 = [v896 concatenatedContainerIDsWithLocalContainerIDPrefix];
  v955 = v1034;
  if (v947)
  {
    v956 = v947;
    v957 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v959 = v958;

    v1056 = v957;
    v1057 = v959;
    v960 = *&v911[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix + 8];
    v1048 = *&v911[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix];
    v1049 = v960;
    sub_10013BCF4();
    v961 = StringProtocol.components<A>(separatedBy:)();
    v959, v962, v963, v964, v965, v966, v967, v968;
    v969 = sub_1001A5660(v961);
    v961, v970, v971, v972, v973, v974, v975, v976;
  }

  else
  {
    v969 = _swiftEmptySetSingleton;
  }

  v977 = v1039;
  v978 = *v969->clientIdentity;
  v969, v948, v949, v950, v951, v952, v953, v954;
  if (v978)
  {
  }

  else
  {
    v979 = [v911 concatenatedElementIDsWithLocalElementIDPrefix];
    if (v979)
    {
      v980 = v979;
      v981 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v983 = v982;

      v1056 = v981;
      v1057 = v983;
      v984 = *&v911[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix + 8];
      v1048 = *&v911[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix];
      v1049 = v984;
      sub_10013BCF4();
      v985 = StringProtocol.components<A>(separatedBy:)();
      v983, v986, v987, v988, v989, v990, v991, v992;
      v993 = sub_1001A5660(v985);

      v985, v994, v995, v996, v997, v998, v999, v1000;
    }

    else
    {

      v993 = _swiftEmptySetSingleton;
    }

    v993, v1001, v1002, v1003, v1004, v1005, v1006, v1007;
  }
}

double destroy for RDSavedReminders(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  a1[1], v9, v10, v11, v12, v13, v14, v15;
  a1[2], v16, v17, v18, v19, v20, v21, v22;
  a1[3], v23, v24, v25, v26, v27, v28, v29;
  a1[4], v30, v31, v32, v33, v34, v35, v36;
  a1[5], v37, v38, v39, v40, v41, v42, v43;
  a1[6], v44, v45, v46, v47, v48, v49, v50;
  v58 = a1[7];

  v58, v51, v52, v53, v54, v55, v56, v57;
  return result;
}

uint64_t *initializeWithCopy for RDSavedReminders(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;

  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDSavedReminders(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = a1[1];
  a1[1] = a2[1];

  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = a1[2];
  a1[2] = a2[2];

  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = a1[3];
  a1[3] = a2[3];

  v28, v29, v30, v31, v32, v33, v34, v35;
  v36 = a1[4];
  a1[4] = a2[4];

  v36, v37, v38, v39, v40, v41, v42, v43;
  v44 = a1[5];
  a1[5] = a2[5];

  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = a1[6];
  a1[6] = a2[6];

  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = a2[7];
  v61 = a1[7];
  a1[7] = v60;

  v61, v62, v63, v64, v65, v66, v67, v68;
  return a1;
}

void *assignWithTake for RDSavedReminders(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = a1[1];
  *a1 = *a2;
  v10, v11, v12, v13, v14, v15, v16, v17;
  a1[2], v18, v19, v20, v21, v22, v23, v24;
  v25 = a1[3];
  *(a1 + 1) = *(a2 + 1);
  v25, v26, v27, v28, v29, v30, v31, v32;
  a1[4], v33, v34, v35, v36, v37, v38, v39;
  v40 = a1[5];
  *(a1 + 2) = *(a2 + 2);
  v40, v41, v42, v43, v44, v45, v46, v47;
  a1[6], v48, v49, v50, v51, v52, v53, v54;
  v55 = a1[7];
  *(a1 + 3) = *(a2 + 3);
  v55, v56, v57, v58, v59, v60, v61, v62;
  return a1;
}

double sub_1004F88D4(uint64_t a1)
{
  v2 = *v1;
  v3 = "alarm.reminder.completed";
  v4 = "sectionIdentifiers";
  if (v2 != 5)
  {
    v4 = "sectionByIdentifier";
  }

  v5 = "savedReminderByIdentifier";
  if (v2 != 3)
  {
    v5 = "ntsBySavedReminderIdentifier";
  }

  if (*v1 <= 4u)
  {
    v4 = v5;
  }

  v6 = "inderIdentifiers";
  if (v2 != 1)
  {
    v6 = "dReminderIdentifier";
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();

  (v7 | 0x8000000000000000), v8, v9, v10, v11, v12, v13, v14;
  return result;
}

unint64_t sub_1004F89D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004F920C(*a1);
  *a2 = result;
  return result;
}

void sub_1004F8A00(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "alarm.reminder.completed";
  v4 = "sectionIdentifiers";
  v5 = 0xD000000000000016;
  if (v2 == 5)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v4 = "sectionByIdentifier";
  }

  v6 = "savedReminderByIdentifier";
  v7 = 0xD00000000000002CLL;
  if (v2 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = "ntsBySavedReminderIdentifier";
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "inderIdentifiers";
  v9 = 0xD000000000000019;
  if (v2 == 1)
  {
    v9 = 0xD000000000000033;
  }

  else
  {
    v8 = "dReminderIdentifier";
  }

  if (*v1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v9 = v5;
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10 | 0x8000000000000000;
}

unint64_t sub_1004F8AC8()
{
  v1 = *v0;
  v2 = 0xD000000000000016;
  if (v1 == 5)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD00000000000002CLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000019;
  if (v1 == 1)
  {
    v4 = 0xD000000000000033;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000020;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1004F8B8C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004F920C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004F8BC0(uint64_t a1)
{
  v2 = sub_1004F9E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004F8BFC(uint64_t a1)
{
  v2 = sub_1004F9E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004F8C38(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_10094AD80, &qword_1007AED08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1004F9E10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  HIBYTE(v11) = 0;
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  sub_1004FA31C(&qword_10094AD88, &qword_10094AD90, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    HIBYTE(v11) = 1;
    sub_1000F5104(&qword_10094AD10, &qword_1007AECD8);
    sub_1004FA3B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[2];
    HIBYTE(v11) = 2;
    sub_1000F5104(&qword_10094AD20, &qword_1007AECE0);
    sub_1004FA4A8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[3];
    HIBYTE(v11) = 3;
    sub_1000F5104(&qword_10094AD30, &qword_1007AECE8);
    sub_1004FA594();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[4];
    HIBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[5];
    HIBYTE(v11) = 5;
    sub_1000F5104(&qword_10094AD58, &qword_1007AECF8);
    sub_1004FA76C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[6];
    HIBYTE(v11) = 6;
    sub_1000F5104(&qword_10094AD70, &qword_1007AED00);
    sub_1004FA87C(&qword_10094ADD8, &qword_10094AD90, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004F8FF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  sub_1004F9098(v8, v9);
  return v6 & 1;
}

double sub_1004F903C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1004F9258(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

void sub_1004F9098(uint64_t *a1, uint64_t *a2)
{
  if (sub_1003AE83C(*a1, *a2))
  {
    sub_1004ABFD0(a1[1], a2[1]);
    if (v4)
    {
      sub_1004AC5B0(a1[2], a2[2]);
      if (v5)
      {
        v6 = a1[3];
        v7 = a2[3];
        if (v6)
        {
          if (!v7)
          {
            return;
          }

          sub_1004ACB00(v6, v7);
          v9 = v8;
          v7, v10, v11, v12, v13, v14, v15, v16;
          if ((v9 & 1) == 0)
          {
            return;
          }
        }

        else if (v7)
        {
          return;
        }

        v17 = a1[4];
        v18 = a2[4];
        if (v17)
        {
          if (!v18)
          {
            return;
          }

          v19 = sub_1003AE83C(v17, v18);
          v18, v20, v21, v22, v23, v24, v25, v26;
          if ((v19 & 1) == 0)
          {
            return;
          }
        }

        else if (v18)
        {
          return;
        }

        v27 = a1[5];
        v28 = a2[5];
        if (v27)
        {
          if (!v28)
          {
            return;
          }

          sub_1004ACF8C(v27, v28);
          v30 = v29;
          v28, v31, v32, v33, v34, v35, v36, v37;
          if ((v30 & 1) == 0)
          {
            return;
          }
        }

        else if (v28)
        {
          return;
        }

        v38 = a1[6];
        v39 = a2[6];
        if (v38)
        {
          if (!v39)
          {
            return;
          }

          sub_1004AD468(v38, v39);
          v41 = v40;
          v39, v42, v43, v44, v45, v46, v47, v48;
          if ((v41 & 1) == 0)
          {
            return;
          }
        }

        else if (v39)
        {
          return;
        }

        v49 = a1[7];
        v50 = a2[7];

        sub_1004AD468(v49, v50);
      }
    }
  }
}

unint64_t sub_1004F920C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3A08, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004F9258@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v132 = a2;
  v3 = type metadata accessor for UUID();
  v133 = *(v3 - 8);
  v134 = v3;
  __chkstk_darwin(v3, v4);
  v135 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v137 = &v105 - v8;
  __chkstk_darwin(v9, v10);
  v136 = &v105 - v11;
  __chkstk_darwin(v12, v13);
  v15 = &v105 - v14;
  v16 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
  __chkstk_darwin(v16, v17);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v105 - v22;
  v24 = sub_1000F5104(&qword_10094ACF0, &unk_1007AECC8);
  v138 = *(v24 - 8);
  __chkstk_darwin(v24, v25);
  v27 = &v105 - v26;
  v28 = a1[3];
  v139 = a1;
  sub_10000F61C(a1, v28);
  sub_1004F9E10();
  v29 = v140;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    return sub_10000607C(v139);
  }

  v130 = v16;
  v131 = v23;
  v129 = v19;
  v140 = v15;
  v30 = v138;
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  v141 = 0;
  sub_1004FA31C(&qword_10094AD00, &qword_10094AD08, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v142;
  sub_1000F5104(&qword_10094AD10, &qword_1007AECD8);
  v141 = 1;
  sub_1004F9E64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v27;
  v33 = v30;
  v128 = v31;
  v34 = v142;
  sub_1000F5104(&qword_10094AD20, &qword_1007AECE0);
  v141 = 2;
  sub_1004F9F54();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v142;
  sub_1000F5104(&qword_10094AD30, &qword_1007AECE8);
  v141 = 3;
  sub_1004FA040();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37 = v142;
  v141 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v38 = v142;
  sub_1000F5104(&qword_10094AD58, &qword_1007AECF8);
  v141 = 5;
  sub_1004FA134();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v113 = v142;
  sub_1000F5104(&qword_10094AD70, &qword_1007AED00);
  v141 = 6;
  sub_1004FA87C(&qword_10094AD78, &qword_10094AD08, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <> [A : B]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v38;
  v107 = v35;
  v108 = v32;
  v109 = 0;
  v110 = v24;
  v105 = v142;

  v39 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v40 = v34 + 8;
  v41 = 1 << *(v34 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v34[8];
  v115 = (v41 + 63) >> 6;
  v125 = v133 + 16;
  v121 = v133 + 32;
  v122 = (v133 + 8);
  v119 = (v133 + 40);
  v114 = v34;

  v44 = 0;
  v45 = v134;
  v46 = v131;
  v112 = v37;
  v111 = v40;
  while (1)
  {
    v47 = v132;
    if (!v43)
    {
      break;
    }

LABEL_14:
    v118 = v43;
    v117 = v44;
    v49 = __clz(__rbit64(v43)) | (v44 << 6);
    v50 = v114;
    v51 = *&v114->clientIdentity[32];
    v52 = v133;
    v116 = *(v133 + 72);
    v124 = *(v133 + 16);
    v124(v46, v51 + v116 * v49, v45);
    v53 = *(*&v50->clientIdentity[40] + 8 * v49);
    v55 = v129;
    v54 = v130;
    *(v46 + *(v130 + 48)) = v53;
    sub_1004FA244(v46, v55);
    v56 = *(v55 + *(v54 + 48));
    v120 = *(v52 + 32);
    v120(v140, v55, v45);
    v123 = *(v56 + 16);
    if (v123)
    {
      v57 = (v56 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

      v58 = v57;
      v59 = 0;
      v60 = v136;
      v61 = v116;
      while (1)
      {
        v69 = *(v56 + 16);
        v127 = v59;
        if (v59 >= v69)
        {
          break;
        }

        v70 = v56;
        v71 = v60;
        v126 = v58;
        v72 = v124;
        (v124)(v60);
        v73 = v137;
        v72(v137, v71, v45);
        v72(v135, v140, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v142 = v39;
        v75 = sub_100363F20(v73);
        v77 = v39[2];
        v78 = (v76 & 1) == 0;
        v79 = __OFADD__(v77, v78);
        v80 = v77 + v78;
        if (v79)
        {
          goto LABEL_31;
        }

        v81 = v76;
        if (v39[3] >= v80)
        {
          v83 = v122;
          v56 = v70;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v88 = v75;
            sub_1003744A0();
            v75 = v88;
          }
        }

        else
        {
          sub_10036C648(v80, isUniquelyReferenced_nonNull_native);
          v75 = sub_100363F20(v137);
          v83 = v122;
          if ((v81 & 1) != (v82 & 1))
          {
            goto LABEL_34;
          }

          v56 = v70;
        }

        v45 = v134;
        v39 = v142;
        if (v81)
        {
          (*v119)(v142[7] + v75 * v61, v135, v134);
          v62 = *v83;
          (*v83)(v137, v45);
          v62(v136, v45);
        }

        else
        {
          v142[(v75 >> 6) + 8] |= 1 << v75;
          v84 = v75 * v61;
          v85 = v137;
          v124(v39[6] + v75 * v61, v137, v45);
          v120((v39[7] + v84), v135, v45);
          v62 = *v83;
          (*v83)(v85, v45);
          v62(v136, v45);
          v86 = v39[2];
          v79 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v79)
          {
            goto LABEL_32;
          }

          v39[2] = v87;
        }

        v59 = v127 + 1;
        v58 = &v126[v61];
        v60 = v136;
        if (v123 == v127 + 1)
        {
          v56, v58, v63, v64, v65, v66, v67, v68;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v56, v89, v90, v91, v92, v93, v94, v95;
    v62 = *v122;
LABEL_8:
    v46 = v131;
    v43 = (v118 - 1) & v118;
    v62(v140, v45);
    sub_1004FA2B4(v46);
    v40 = v111;
    v44 = v117;
    v37 = v112;
  }

  while (1)
  {
    v48 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v48 >= v115)
    {
      (*(v33 + 8))(v108, v110);
      v96 = v114;

      v96, v97, v98, v99, v100, v101, v102, v103;
      result = sub_10000607C(v139);
      *v47 = v128;
      v47[1] = v96;
      v47[2] = v107;
      v47[3] = v37;
      v104 = v113;
      v47[4] = v106;
      v47[5] = v104;
      v47[6] = v105;
      v47[7] = v39;
      return result;
    }

    v43 = v40[v48];
    ++v44;
    if (v43)
    {
      v44 = v48;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1004F9E10()
{
  result = qword_10094ACF8;
  if (!qword_10094ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ACF8);
  }

  return result;
}

unint64_t sub_1004F9E64()
{
  result = qword_10094AD18;
  if (!qword_10094AD18)
  {
    sub_1000F514C(&qword_10094AD10, &qword_1007AECD8);
    sub_1004FA724(&qword_10094AD08, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1004FA31C(&qword_10094AD00, &qword_10094AD08, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD18);
  }

  return result;
}

unint64_t sub_1004F9F54()
{
  result = qword_10094AD28;
  if (!qword_10094AD28)
  {
    sub_1000F514C(&qword_10094AD20, &qword_1007AECE0);
    sub_1004FA724(&qword_10094AD08, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1004FA724(&qword_100940528, type metadata accessor for RDSavedReminder, &unk_100798E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD28);
  }

  return result;
}

unint64_t sub_1004FA040()
{
  result = qword_10094AD38;
  if (!qword_10094AD38)
  {
    sub_1000F514C(&qword_10094AD30, &qword_1007AECE8);
    sub_1004FA724(&qword_10094AD08, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1004FA688(&qword_10094AD40, &qword_10094AD50, &unk_1007A6488, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD38);
  }

  return result;
}

unint64_t sub_1004FA134()
{
  result = qword_10094AD60;
  if (!qword_10094AD60)
  {
    sub_1000F514C(&qword_10094AD58, &qword_1007AECF8);
    sub_1004FA724(&qword_10094AD08, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1004FA1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD60);
  }

  return result;
}

unint64_t sub_1004FA1F0()
{
  result = qword_10094AD68;
  if (!qword_10094AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD68);
  }

  return result;
}

uint64_t sub_1004FA244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FA2B4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004FA31C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093D008, qword_10079AAC0);
    sub_1004FA724(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004FA3B8()
{
  result = qword_10094AD98;
  if (!qword_10094AD98)
  {
    sub_1000F514C(&qword_10094AD10, &qword_1007AECD8);
    sub_1004FA724(&qword_10094AD90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1004FA31C(&qword_10094AD88, &qword_10094AD90, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD98);
  }

  return result;
}

unint64_t sub_1004FA4A8()
{
  result = qword_10094ADA0;
  if (!qword_10094ADA0)
  {
    sub_1000F514C(&qword_10094AD20, &qword_1007AECE0);
    sub_1004FA724(&qword_10094AD90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1004FA724(&qword_10094ADA8, type metadata accessor for RDSavedReminder, &unk_100798E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADA0);
  }

  return result;
}

unint64_t sub_1004FA594()
{
  result = qword_10094ADB0;
  if (!qword_10094ADB0)
  {
    sub_1000F514C(&qword_10094AD30, &qword_1007AECE8);
    sub_1004FA724(&qword_10094AD90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1004FA688(&qword_10094ADB8, &qword_10094ADC0, &unk_1007A6460, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADB0);
  }

  return result;
}

uint64_t sub_1004FA688(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10094AD48, &qword_1007AECF0);
    sub_1004FA724(a2, type metadata accessor for RDSavedURLAttachment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004FA724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004FA76C()
{
  result = qword_10094ADC8;
  if (!qword_10094ADC8)
  {
    sub_1000F514C(&qword_10094AD58, &qword_1007AECF8);
    sub_1004FA724(&qword_10094AD90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1004FA828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADC8);
  }

  return result;
}

unint64_t sub_1004FA828()
{
  result = qword_10094ADD0;
  if (!qword_10094ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADD0);
  }

  return result;
}

uint64_t sub_1004FA87C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10094AD70, &qword_1007AED00);
    sub_1004FA724(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004FA92C()
{
  result = qword_10094ADE0;
  if (!qword_10094ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADE0);
  }

  return result;
}

unint64_t sub_1004FA984()
{
  result = qword_10094ADE8;
  if (!qword_10094ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADE8);
  }

  return result;
}

unint64_t sub_1004FA9DC()
{
  result = qword_10094ADF0;
  if (!qword_10094ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADF0);
  }

  return result;
}

uint64_t sub_1004FAA30()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094ADF8);
  v1 = sub_100006654(v0, qword_10094ADF8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004FAAF8()
{
  v0 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v0, v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v3 = sub_10001F6F4();
  result = sub_1004258C8(v2, _s10PredicatesOMa_1);
  qword_100974F20 = v3;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004FAB9C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v208 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v9 = objc_opt_self();
  v10 = [v9 database];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v11 = v13;
  v13(v8, v4);
  sub_1004FC6E8();
  if (v1)
  {
    return v2;
  }

  v15 = v14;
  v221 = v8;
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  v218 = a1;
  v219 = v15;
  v211 = v11;
  v215 = v4;
  if (qword_100936328 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v17 = type metadata accessor for Logger();
    v18 = sub_100006654(v17, qword_10094ADF8);
    v223 = &v208;
    v224 = v16;
    __chkstk_darwin(v18, v19);
    v217 = v20;
    *(&v208 - 2) = v20;
    v21 = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    v22 = sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v213 = sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v214 = v21;
    v216 = v22;
    v222 = Sequence.map<A>(skippingError:_:)();
    v30 = v16 >> 62;
    v31 = v16 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v210 = v9;
    v212 = v12;
    if (!v31)
    {
      break;
    }

    v209 = (v16 >> 62);
    v226 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v31 < 0)
    {
      __break(1u);
      goto LABEL_61;
    }

    v12 = 0;
    v223 = (v16 & 0xC000000000000001);
    v220 = (v16 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v32 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v223)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *v220->clientIdentity)
        {
          goto LABEL_57;
        }

        v33 = *(v16 + 8 * v12 + 32);
      }

      v9 = v33;
      v34 = [v33 account];
      if (!v34)
      {
        v222, v35, v36, v37, v38, v39, v40, v41;
        v16, v67, v68, v69, v70, v71, v72, v73;
        v2 = objc_opt_self();
        v224 = 0;
        v225 = 0xE000000000000000;
        _StringGuts.grow(_:)(32);
        v225, v74, v75, v76, v77, v78, v79, v80;
        v224 = 0xD00000000000001DLL;
        v225 = 0x80000001007FB460;
        v81 = [v9 description];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        v85._countAndFlagsBits = v82;
        v85._object = v84;
        String.append(_:)(v85);
        v84, v86, v87, v88, v89, v90, v91, v92;
        v93._countAndFlagsBits = 125;
        v93._object = 0xE100000000000000;
        String.append(_:)(v93);
        v94 = v225;
        v95 = String._bridgeToObjectiveC()();
        v94, v96, v97, v98, v99, v100, v101, v102;
        [(RDXPCStorePerformer *)v2 internalErrorWithDebugDescription:v95];

        swift_willThrow();
LABEL_40:

        return v2;
      }

      v42 = v34;
      v224 = 0;
      v43 = [v34 remObjectIDWithError:&v224];
      if (!v43)
      {
        v2 = v224;
        v222, v103, v104, v105, v106, v107, v108, v109;
        v16, v110, v111, v112, v113, v114, v115, v116;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_40;
      }

      v44 = v43;
      v45 = v224;
      sub_1005E37E8(v44);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v12;
      if (v32 == v31)
      {
        v220 = v226;
        v30 = v209;
        goto LABEL_18;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v220 = &_swiftEmptyArrayStorage;
LABEL_18:
  v224 = &_swiftEmptyArrayStorage;
  if (v30)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
LABEL_20:
      v46 = 0;
      v223 = &_swiftEmptyArrayStorage;
      do
      {
        v47 = v46;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v47 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v48 = *(v16 + 8 * v47 + 32);
          }

          v2 = v48;
          v46 = (v47 + 1);
          if (__OFADD__(v47, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v49 = [(RDXPCStorePerformer *)v48 parentList];
          if (v49)
          {
            break;
          }

          ++v47;
          if (v46 == v9)
          {
            goto LABEL_37;
          }
        }

        v226 = 0;
        v209 = v49;
        v50 = [v49 remObjectIDWithError:&v226];
        if (!v50)
        {
          v179 = v226;
          v220, v180, v181, v182, v183, v184, v185, v186;
          v222, v187, v188, v189, v190, v191, v192, v193;
          v16, v194, v195, v196, v197, v198, v199, v200;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v223, v201, v202, v203, v204, v205, v206, v207;

          return v2;
        }

        v51 = v50;
        v52 = v226;
        v12 = sub_1005E37C0(v51);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v224->clientIdentity >= *&v224->clientIdentity[8] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v223 = v224;
      }

      while (v46 != v9);
      goto LABEL_37;
    }
  }

  else
  {
    v9 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_20;
    }
  }

  v223 = &_swiftEmptyArrayStorage;
LABEL_37:
  v16, v23, v24, v25, v26, v27, v28, v29;
  v53 = v220;
  sub_1005ECAEC(v220, 0, 1, 0, 0);
  v55 = v54;
  v53, v56, v57, v58, v59, v60, v61, v62;
  v224 = v55;
  __chkstk_darwin(v63, v64);
  v65 = v217;
  *(&v208 - 2) = v217;
  sub_1000F5104(&qword_10094F630, qword_1007A3430);
  v66 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
  v220 = v66;
  v16 = Sequence.map<A>(skippingError:_:)();
  v22 = &selRef_accountStatusWithCompletionHandler_;
  v117 = v223;
  v55, v118, v119, v120, v121, v122, v123, v124;
  sub_1005EC5F0(v117, 0, 1, 0, 0);
  v127 = v126;
  v117, v128, v129, v130, v131, v132, v133, v134;
  v224 = v127;
  __chkstk_darwin(v135, v136);
  *(&v208 - 2) = v65;
  v223 = Sequence.map<A>(skippingError:_:)();
  v21 = v215;
  v127, v137, v138, v139, v140, v141, v142, v143;
  v31 = v222;
  if (!(v222 >> 62))
  {
    v144 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_44;
  }

LABEL_61:
  v144 = _CocoaArrayWrapper.endIndex.getter();
LABEL_44:
  v145 = &_swiftEmptyArrayStorage;
  if (v144)
  {
    v224 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v144 < 0)
    {
      __break(1u);
    }

    v146 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v147 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v147 = *(v222 + 8 * v146 + 32);
      }

      v148 = v147;
      ++v146;
      v149 = [v147 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 = &selRef_accountStatusWithCompletionHandler_;
    }

    while (v144 != v146);
    v145 = v224;
    v21 = v215;
    v31 = v222;
  }

  v224 = v31;
  sub_100271FB4(v223);
  v150 = v224;
  v151 = objc_allocWithZone(REMFetchResult);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16, v153, v154, v155, v156, v157, v158, v159;
  v160 = Array._bridgeToObjectiveC()().super.isa;
  v150, v161, v162, v163, v164, v165, v166, v167;
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  v168 = Array._bridgeToObjectiveC()().super.isa;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v169 = Array._bridgeToObjectiveC()().super.isa;
  v145, v170, v171, v172, v173, v174, v175, v176;
  v2 = [v151 initWithAccountStorages:isa listStorages:v160 reminderStorages:v168 requestedObjectIDs:v169 metadata:0];

  static os_signpost_type_t.end.getter();
  v177 = [v210 v22[274]];
  v178 = v221;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v211(v178, v21);
  return v2;
}

id sub_1004FB7FC()
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v7 = objc_opt_self();
  v8 = [v7 database];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_1004FC6E8();
  if (!v1)
  {
    v11 = v10;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v13 = NSManagedObjectContext.fetch<A>(_:)();
    v48 = 0;
    if (qword_100936328 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_100006654(v14, qword_10094ADF8);
    v47 = &v45;
    v49 = v13;
    __chkstk_darwin(v15, v16);
    *(&v45 - 2) = v17;
    v46 = v13;
    v45 = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v18 = v48;
    v19 = Sequence.map<A>(skippingError:_:)();
    if (v18)
    {

      v46, v27, v28, v29, v30, v31, v32, v33;
      v48 = 0;
      v34 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v34 = v19;
      v48 = 0;
      v46, v20, v21, v22, v23, v24, v25, v26;
    }

    v35 = objc_allocWithZone(REMFetchResult);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v34, v37, v38, v39, v40, v41, v42, v43;
    v0 = [v35 initWithListStorages:isa];

    static os_signpost_type_t.end.getter();
    v44 = [v7 database];
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    v9(v6, v2);
  }

  return v0;
}

void *sub_1004FBBA8()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v6 = objc_opt_self();
  v7 = [v6 database];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_1004FC6E8();
  if (!v0)
  {
    v10 = v9;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v12 = NSManagedObjectContext.count<A>(for:)();
    static os_signpost_type_t.end.getter();
    v13 = [v6 database];
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    v8(v5, v1);
    v1 = [objc_allocWithZone(REMFetchResult) initWithCount:v12];
  }

  return v1;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004FBDD4(uint64_t a1)
{
  v108 = a1;
  v2 = _s10PredicatesOMa(0);
  __chkstk_darwin(v2, v3);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v11 = objc_opt_self();
  v12 = [v11 database];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v15 = *(v7 + 8);
  v14 = (v7 + 8);
  v13 = v15;
  (v15)(v10, v6);
  v16 = v109;
  sub_1004FC6E8();
  if (!v16)
  {
    v18 = v17;
    v104 = v2;
    v105 = v5;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v19 = NSManagedObjectContext.fetch<A>(_:)();
    v109 = 0;
    v111 = _swiftEmptyDictionarySingleton;
    v103 = v19;
    if (v19 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v96 = v11;
      v97 = v10;
      v98 = v14;
      v99 = v6;
      v100 = v18;
      v95 = v13;
      if (!i)
      {
        break;
      }

      v6 = i;
      v11 = 0;
      v13 = v103;
      v10 = v104;
      v106 = v103 & 0xC000000000000001;
      v101 = v103 & 0xFFFFFFFFFFFFFF8;
      v102 = xmmword_100791320;
      v29 = &selRef_accountStatusWithCompletionHandler_;
      v18 = v105;
      while (1)
      {
        if (v106)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v101 + 16))
          {
            goto LABEL_35;
          }

          v30 = *&v13->clientIdentity[8 * v11 + 16];
        }

        v31 = v30;
        v32 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v33 = [v30 remObjectID];
        if (v33)
        {
          v14 = v33;
          KeyPath = swift_getKeyPath();
          v107 = v31;
          v35 = sub_100392240(KeyPath, v31);

          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
          inited = swift_initStackObject();
          *(inited + 16) = v102;
          if (qword_100935B68 != -1)
          {
            swift_once();
          }

          v37 = v6;
          v38 = qword_100974C28;
          *(inited + 32) = qword_100974C28;
          v39 = qword_100935B70;
          v40 = v38;
          if (v39 != -1)
          {
            swift_once();
          }

          v41 = qword_100974C30;
          *(inited + 40) = qword_100974C30;
          *(inited + 48) = v35;
          v13 = v35;
          v42 = v41;
          v43 = sub_10000C2B0();
          sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
          v10 = [objc_allocWithZone(NSFetchRequest) init];
          v44 = [swift_getObjCClassFromMetadata() entity];
          [v10 setEntity:v44];

          [v10 setAffectedStores:0];
          [v10 setPredicate:v43];

          v45 = v109;
          v46 = NSManagedObjectContext.count<A>(for:)();
          v109 = v45;
          if (v45)
          {
            v1 = v111;
            v103, v47, v48, v49, v50, v51, v52, v53;

            v1, v87, v88, v89, v90, v91, v92, v93;
            return v1;
          }

          v54 = [objc_allocWithZone(NSNumber) initWithInteger:v46];
          if (v54)
          {
            v18 = v54;
            v55 = v111;
            v6 = v37;
            if ((v111 & 0xC000000000000001) != 0)
            {
              if (v111 >= 0)
              {
                v55 = v111 & 0xFFFFFFFFFFFFFF8;
              }

              v56 = __CocoaDictionary.count.getter();
              if (__OFADD__(v56, 1))
              {
                goto LABEL_36;
              }

              v55 = sub_10021E048(v55, v56 + 1);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v110 = v55;
            sub_1002C9E6C(v18, v14, isUniquelyReferenced_nonNull_native);

            v111 = v110;
            v29 = &selRef_accountStatusWithCompletionHandler_;
            v10 = v104;
            v18 = v105;
            v13 = v103;
          }

          else
          {
            v58 = sub_100369908(v14);

            v10 = v104;
            v18 = v105;
            v13 = v103;
            v6 = v37;
            v29 = &selRef_accountStatusWithCompletionHandler_;
          }
        }

        else
        {
        }

        ++v11;
        if (v32 == v6)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

    v29 = &selRef_accountStatusWithCompletionHandler_;
    v18 = v105;
    v13 = v103;
LABEL_30:
    v13, v20, v21, v22, v23, v24, v25, v26;
    v59 = enum case for REMRemindersListDataView.ShowCompleted.off(_:);
    v60 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v60 - 8) + 104))(v18, v59, v60);
    swift_storeEnumTagMultiPayload();
    v61 = sub_100043AA8();
    sub_1004258C8(v18, _s10PredicatesOMa);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v62 = [objc_allocWithZone(NSFetchRequest) init];
    v63 = [swift_getObjCClassFromMetadata() entity];
    [v62 setEntity:v63];

    [v62 setAffectedStores:0];
    [v62 setPredicate:v61];

    v64 = v109;
    v65 = NSManagedObjectContext.count<A>(for:)();
    if (v64)
    {
      v1 = v111;

      v1, v66, v67, v68, v69, v70, v71, v72;
    }

    else
    {
      v73 = v65;
      static os_signpost_type_t.end.getter();
      v74 = [v96 v29[274]];
      v75 = v97;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      (v95)(v75, v99);
      v76 = v111;
      v77 = objc_allocWithZone(REMListFetchMetadata);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      sub_10018BA8C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v76, v79, v80, v81, v82, v83, v84, v85;
      v86 = [v77 initWithIncompleteReminderCounts:isa scheduledCount:v73];

      v1 = [objc_allocWithZone(REMFetchResult) initWithMetadata:v86];
    }
  }

  return v1;
}

void sub_1004FC6E8()
{
  v1 = [v0 predicateDescriptor];
  [v0 options];
  if ([v1 type])
  {
    goto LABEL_30;
  }

  if (qword_100936330 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v2 = qword_100974F20;

    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v3 = [objc_allocWithZone(NSFetchRequest) init];
    v4 = [swift_getObjCClassFromMetadata() entity];
    [v3 setEntity:v4];

    [v3 setAffectedStores:0];
    [v3 setPredicate:v2];
    v5 = [v0 sortDescriptors];
    sub_1000060C8(0, &qword_10094AE10, REMListSortDescriptor_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      break;
    }

    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_5:
    v48 = &_swiftEmptyArrayStorage;
    v0 = &v48;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v47 = v3;
    v15 = 0;
    v1 = (v6 & 0xC000000000000001);
    while (1)
    {
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v1)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v24 = *(v6 + 8 * v15 + 32);
      }

      v25 = v24;
      if ([v24 type] > 1)
      {
        goto LABEL_30;
      }

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      swift_getKeyPath();
      [v25 ascending];
      NSSortDescriptor.init<A, B>(keyPath:ascending:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v48;
      specialized ContiguousArray._endMutation()();
      ++v15;
      if (v23 == v14)
      {
        v6, v16, v17, v18, v19, v20, v21, v22;
        v26 = v48;
        v3 = v47;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_20:
  v6, v7, v8, v9, v10, v11, v12, v13;
  v26 = &_swiftEmptyArrayStorage;
LABEL_21:
  v48 = v26;
  v27 = [objc_opt_self() sortDescriptorSortingByOrderingInAccountAscending:1];
  if ([v27 type] <= 1)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    [v27 ascending];
    NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v28 = v48;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v28, v30, v31, v32, v33, v34, v35, v36;
    [v3 setSortDescriptors:isa];

    if (qword_100936328 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10094ADF8);
    v38 = v3;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "Created list fetchRequest {fetchRequest: %@}", v41, 0xCu);
      sub_100039860(v42);
    }

    return;
  }

LABEL_30:
  if (qword_100936328 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10094ADF8);
  v45 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v46 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown type", 12, 2, v45, v46);
  __break(1u);
}

void sub_1004FCCC8()
{
  sub_1004FC6E8();
  if (!v0)
  {
    v2 = v1;
    v4[3] = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
    v4[0] = v2;
    v3 = v2;
    throwingCast<A>(_:as:failureMessage:)();

    sub_10000607C(v4);
  }
}

unint64_t *sub_1004FCD88()
{
  v1 = v0;
  v2 = [(RDXPCStorePerformer *)v0 topLevelElementIDs];
  v3 = sub_10003980C();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = &_swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v58 = v4;
  if (v12)
  {
LABEL_3:
    v13 = 0;
    v14 = v58 & 0xC000000000000001;
    v15 = v58 & 0xFFFFFFFFFFFFFF8;
    v60 = v3;
    v61 = v1;
    v59 = v12;
    while (1)
    {
      while (1)
      {
        if (v14)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v24 = __OFADD__(v13++, 1);
          if (v24)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v13 >= *(v15 + 16))
          {
            goto LABEL_35;
          }

          v23 = *(v58 + 32 + 8 * v13);
          v24 = __OFADD__(v13++, 1);
          if (v24)
          {
            goto LABEL_34;
          }
        }

        v25 = v23;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v26 = v63;
        v27 = [(RDXPCStorePerformer *)v1 secondaryLevelElementIDsByTopLevelElementID];
        sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
        sub_10018BA8C();
        v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v4 + 16))
        {
          v28 = sub_10002B924(v25);
          if (v29)
          {
            break;
          }
        }

        v4, v16, v17, v18, v19, v20, v21, v22;
        if (v13 == v12)
        {
          goto LABEL_38;
        }
      }

      v62 = v25;
      v1 = *(*(v4 + 56) + 8 * v28);

      v4, v30, v31, v32, v33, v34, v35, v36;
      if (v1 >> 62)
      {
        break;
      }

      v44 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        goto LABEL_14;
      }

LABEL_25:
      v1, v37, v38, v39, v40, v41, v42, v43;

      v3 = v60;
      v1 = v61;
      v15 = v58 & 0xFFFFFFFFFFFFFF8;
      if (v13 == v12)
      {
        goto LABEL_38;
      }
    }

    v44 = _CocoaArrayWrapper.endIndex.getter();
    if (!v44)
    {
      goto LABEL_25;
    }

LABEL_14:
    v45 = 0;
    v3 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v45 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v46 = *&v1->clientIdentity[8 * v45 + 16];
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          v58 = v4;
          if (!v12)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      v48 = v46;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = &v63;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v26 = v63;

      ++v45;
      if (v47 == v44)
      {
        v14 = v58 & 0xC000000000000001;
        v12 = v59;
        goto LABEL_25;
      }
    }
  }

  v26 = &_swiftEmptyArrayStorage;
LABEL_38:
  v58, v5, v6, v7, v8, v9, v10, v11;
  v49 = sub_1001A577C(v26);
  v26, v50, v51, v52, v53, v54, v55, v56;
  return v49;
}

id sub_1004FD0EC(_TtC7remindd19RDXPCStorePerformer **a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, id *a5, id *a6, uint64_t *a7)
{
  v8 = v7;
  v149 = type metadata accessor for UUID();
  v16 = *(v149 - 8);
  __chkstk_darwin(v149, v17);
  v148 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v155 = a2;
  v20 = sub_100353598(v19, a2);
  v153 = a3;
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID);
  }

  else
  {
    result = [(RDXPCStorePerformer *)a3 uncommitedElementsAccountID];
    if (!result)
    {
      return result;
    }

    v22 = result;
    v24 = [(RDXPCStorePerformer *)v19 uuid];
    v154 = a5;
    v25 = v16;
    v26 = v148;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for RDElementManualSortID(0);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v27 = *(v25 + 4);
    v28 = v26;
    v16 = v25;
    v8 = v7;
    a5 = v154;
    v27(v21 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID, v28, v149);
    *(v21 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v22;
  }

  v29 = v22;
  v30 = sub_100353718(v29, a4);

  v150 = v30;
  if (!v30)
  {
  }

  v31 = *(v21 + 24);
  if (v31)
  {
    v151 = *(v21 + 16);
    v32 = v31;
  }

  else
  {
    v33._countAndFlagsBits = UUID.uuidString.getter();
    object = v33._object;
    v156 = 0x7C6C61636F6CLL;
    v157 = 0xE600000000000000;
    String.append(_:)(v33);
    object, v35, v36, v37, v38, v39, v40, v41;
    v32 = v157;
    v151 = v156;
  }

  v42 = *a5;

  v146 = v32;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v42;
  v144 = a7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_56:
    v42 = sub_100365788(0, *v42->clientIdentity + 1, 1, v42, v44, v45, v46, v47);
    *a5 = v42;
  }

  v49 = *v42->clientIdentity;
  v48 = *&v42->clientIdentity[8];
  if (v49 >= v48 >> 1)
  {
    v42 = sub_100365788((v48 > 1), v49 + 1, 1, v42, v44, v45, v46, v47);
    *a5 = v42;
  }

  v147 = v21;
  *v42->clientIdentity = v49 + 1;
  v50 = v42 + 16 * v49;
  v51 = v150;
  v52 = v146;
  *(v50 + 4) = v151;
  *(v50 + 5) = v52;
  if (*(v51 + 24))
  {
    v53 = *(v51 + 16);
    v54 = *(v51 + 24);
  }

  else
  {
    v55._countAndFlagsBits = UUID.uuidString.getter();
    v56 = v55._object;
    v156 = 0x7C6C61636F6CLL;
    v157 = 0xE600000000000000;
    String.append(_:)(v55);
    v56, v57, v58, v59, v60, v61, v62, v63;
    v53 = v156;
    v54 = v157;
  }

  v64 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *a6;
  *a6 = 0x8000000000000000;
  sub_1002C72CC(v53, v54, v151, v52, v64);
  v52, v65, v66, v67, v68, v69, v70, v71;
  *a6 = v156;
  v72 = [(RDXPCStorePerformer *)v153 secondaryLevelElementIDsByTopLevelElementID];
  sub_10003980C();
  sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
  sub_10018BA8C();
  v73 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v73 + 16) && (v81 = sub_10002B924(v19), (v74 & 1) != 0))
  {
    v19 = *(*(v73 + 56) + 8 * v81);

    v73, v82, v83, v84, v85, v86, v87, v88;
    v154 = (v19 & 0xFFFFFFFFFFFFFF8);
    if (v19 >> 62)
    {
      a6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      a6 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v153;
    v143 = v8;
    v92 = v155 & 0xFFFFFFFFFFFFFF8;
    if (v155 < 0)
    {
      v92 = v155;
    }

    v152 = v92;
    if (a6)
    {
      a5 = 0;
      v8 = v155 & 0xC000000000000001;
      v140 = (v16 + 32);
      v145 = &_swiftEmptyArrayStorage;
      do
      {
        v21 = a5;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= v154[2])
            {
              goto LABEL_55;
            }

            v93 = *&v19->clientIdentity[8 * v21 + 16];
          }

          v16 = v93;
          a5 = (v21 + 1);
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          if (v8)
          {
            v94 = __CocoaDictionary.lookup(_:)();
            if (v94)
            {
              v158 = v94;
              type metadata accessor for RDElementManualSortID(0);
              swift_dynamicCast();
              v95 = v156;
              if (v156)
              {
                goto LABEL_41;
              }
            }
          }

          else if (*(v155 + 16))
          {
            v96 = sub_10002B924(v93);
            v42 = v153;
            if (v97)
            {
              v95 = *(*(v155 + 56) + 8 * v96);

              if (v95)
              {
                goto LABEL_41;
              }
            }
          }

          v98 = [(RDXPCStorePerformer *)v42 uncommitedElementsAccountID];
          if (v98)
          {
            break;
          }

          ++v21;
          if (a5 == a6)
          {
            goto LABEL_52;
          }
        }

        v99 = v98;
        v100 = [v16 uuid];
        v101 = v148;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for RDElementManualSortID(0);
        v95 = swift_allocObject();
        *(v95 + 16) = 0;
        *(v95 + 24) = 0;
        (*v140)(v95 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID, v101, v149);
        *(v95 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v99;
LABEL_41:
        if (*(v95 + 24))
        {
          v102 = *(v95 + 16);
          v103 = *(v95 + 24);
        }

        else
        {
          v104._countAndFlagsBits = UUID.uuidString.getter();
          v105 = v104._object;
          v156 = 0x7C6C61636F6CLL;
          v157 = 0xE600000000000000;
          String.append(_:)(v104);
          v105, v106, v107, v108, v109, v110, v111, v112;
          v102 = v156;
          v103 = v157;
        }

        v113 = swift_isUniquelyReferenced_nonNull_native();
        v141 = v103;
        v142 = v102;
        if ((v113 & 1) == 0)
        {
          v145 = sub_100365788(0, *v145->clientIdentity + 1, 1, v145, v114, v115, v116, v117);
        }

        v119 = *v145->clientIdentity;
        v118 = *&v145->clientIdentity[8];
        if (v119 >= v118 >> 1)
        {
          v145 = sub_100365788((v118 > 1), v119 + 1, 1, v145, v114, v115, v116, v117);
        }

        v120 = v145;
        *v145->clientIdentity = v119 + 1;
        v121 = v120 + 16 * v119;
        v122 = v141;
        *(v121 + 4) = v142;
        *(v121 + 5) = v122;
        v42 = v153;
      }

      while (a5 != a6);
    }

    else
    {
      v145 = &_swiftEmptyArrayStorage;
    }

LABEL_52:
    v19, v89, v90, v91, v44, v45, v46, v47;
    v130 = v144;
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v156 = *v130;
    *v130 = 0x8000000000000000;
    v132 = v146;
    sub_1002C7F94(v145, v151, v146, v131);
    v132, v133, v134, v135, v136, v137, v138, v139;
    *v130 = v156;
  }

  else
  {
    v73, v74, v75, v76, v77, v78, v79, v80;
    v52, v123, v124, v125, v126, v127, v128, v129;
  }
}

BOOL sub_1004FD8D0()
{
  v0._countAndFlagsBits = 0x7C6C61636F6CLL;
  v0._object = 0xE600000000000000;
  return String.hasPrefix(_:)(v0);
}

void *sub_1004FD910(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000F5104(&qword_10094AE18, &unk_1007AEF30);
  __chkstk_darwin(v58, v6);
  v57 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8, v9);
  v11 = (&v51 - v10);
  v12 = sub_10038DA10(&_swiftEmptyArrayStorage);
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v55 = v3 + 32;
  v56 = v3 + 16;
  v59 = v3;
  v60 = a1;
  v52 = (v3 + 8);

  v18 = 0;
  v51 = a1 + 64;
  v53 = v11;
  v54 = v2;
  while (v16)
  {
    v19 = v18;
LABEL_11:
    v20 = __clz(__rbit64(v16)) | (v19 << 6);
    v21 = v59;
    v22 = (*(v60 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v58;
    (*(v59 + 16))(v11 + *(v58 + 48), *(v60 + 56) + *(v59 + 72) * v20, v2);
    *v11 = v24;
    v11[1] = v23;
    v26 = v57;
    sub_1004FE98C(v11, v57);
    v27 = *(v25 + 48);
    v28 = *v26;
    v29 = v26[1];
    (*(v21 + 32))(v61, v26 + v27, v2);

    Date.timeIntervalSinceReferenceDate.getter();
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v12;
    v40 = sub_100005F4C(v28, v29);
    v41 = v12[2];
    v42 = (v33 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_22;
    }

    v44 = v33;
    if (v12[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100373044();
      }
    }

    else
    {
      sub_100369F58(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_100005F4C(v28, v29);
      if ((v44 & 1) != (v33 & 1))
      {
        goto LABEL_24;
      }

      v40 = v45;
    }

    v16 &= v16 - 1;
    v12 = v62;
    if (v44)
    {
      *(v62[7] + 8 * v40) = v31;
      v29, v33, v34, v35, v36, v37, v38, v39;
      v2 = v54;
      (*v52)(v61, v54);
      v11 = v53;
      sub_1004FE9FC(v53);
    }

    else
    {
      v62[(v40 >> 6) + 8] |= 1 << v40;
      v46 = (v12[6] + 16 * v40);
      *v46 = v28;
      v46[1] = v29;
      *(v12[7] + 8 * v40) = v31;
      v2 = v54;
      (*v52)(v61, v54);
      v11 = v53;
      sub_1004FE9FC(v53);
      v47 = v12[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_23;
      }

      v12[2] = v49;
    }

    v18 = v19;
    v13 = v51;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return v12;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1004FDD00(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _TtC7remindd19RDXPCStorePerformer *a5@<X8>)
{
  v192 = a2;
  v181 = a3;
  v194 = a5;
  v7 = type metadata accessor for Date();
  v186 = *(v7 - 8);
  v187 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v177 - v13;
  v15 = type metadata accessor for REMManualOrdering.ElementType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004FCD88();
  v193 = a1;
  REMManualOrdering.elementType.getter();
  v21 = v191;
  v22 = sub_1002184FC(v20);
  v190 = v21;
  v191 = v22;
  if (v21)
  {
    (*(v16 + 8))(v19, v15);

    v192, v23, v24, v25, v26, v27, v28, v29;

    v20, v30, v31, v32, v33, v34, v35, v36;
    return;
  }

  v182 = a4;
  v180 = v14;
  v189 = v10;
  (*(v16 + 8))(v19, v15);
  v20, v37, v38, v39, v40, v41, v42, v43;
  v200 = &_swiftEmptyArrayStorage;
  v198 = _swiftEmptyDictionarySingleton;
  v199 = _swiftEmptyDictionarySingleton;
  v44 = v193;
  v45 = [(RDXPCStorePerformer *)v193 topLevelElementIDs];
  sub_10003980C();
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v46 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v48 = v190;

    v193 = v44;

    if (!i)
    {
      break;
    }

    v56 = 0;
    while (1)
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v56 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v57 = *(v46 + 8 * v56 + 32);
      }

      v44 = v57;
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      v196 = v57;
      sub_1004FD0EC(&v196, v191, v193, v192, &v200, &v198, &v199);

      ++v56;
      v44 = v194;
      if (v58 == i)
      {
        goto LABEL_15;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  v44 = v194;
LABEL_15:
  v46, v49, v50, v51, v52, v53, v54, v55;
  swift_bridgeObjectRelease_n();

  v59 = v192;
  v192, v60, v61, v62, v63, v64, v65, v66;
  v67 = sub_10038FF50(&_swiftEmptyArrayStorage);
  if ((v59 & 0xC000000000000001) != 0)
  {
    v68 = 0;
    v46 = 0;
    v183 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    v184 = 0;
  }

  else
  {
    v69 = -1 << *(v59 + 32);
    v68 = ~v69;
    v70 = *(v59 + 64);
    v183 = v59;
    v184 = (v59 + 64);
    v71 = -v69;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    else
    {
      v72 = -1;
    }

    v46 = v72 & v70;
  }

  v73 = v187;

  v74 = 0;
  v177 = v68;
  v75 = (v68 + 64) >> 6;
  v185 = (v186 + 32);
  v178 = v186 + 40;
  v76 = v182;
  v77 = v189;
  for (j = v75; ; v75 = j)
  {
    v78 = v183;
    if ((v183 & 0x8000000000000000) != 0)
    {
      break;
    }

    v79 = v74;
    v80 = v46;
    v81 = v74;
    if (!v46)
    {
      while (1)
      {
        v81 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          break;
        }

        if (v81 >= v75)
        {
          goto LABEL_50;
        }

        v80 = *&v184[8 * v81];
        ++v79;
        if (v80)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_29:
    v190 = v48;
    v82 = (v80 - 1) & v80;
    v83 = *(*(v183 + 56) + ((v81 << 9) | (8 * __clz(__rbit64(v80)))));

    if (!v83)
    {
      goto LABEL_47;
    }

LABEL_33:
    v86 = v67;
    v87 = *&v83->clientIdentity[8];
    v188 = v82;
    v191 = v83;
    if (v87)
    {
      v88 = v77;
      v89 = *v83->clientIdentity;
      v90 = v87;
    }

    else
    {
      v91._countAndFlagsBits = UUID.uuidString.getter();
      object = v91._object;
      v196 = 0x7C6C61636F6CLL;
      v197 = 0xE600000000000000;
      String.append(_:)(v91);
      v88 = v189;
      object, v93, v94, v95, v96, v97, v98, v99;
      v89 = v196;
      v90 = v197;
    }

    v100 = v180;

    v101 = [(RDXPCStorePerformer *)v193 modifiedDate:v177];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = *v185;
    (*v185)(v88, v100, v73);
    v44 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v196 = v86;
    v46 = v89;
    v104 = v89;
    v105 = v90;
    v106 = v44;
    v114 = sub_100005F4C(v104, v90);
    v115 = *v44->clientIdentity;
    v116 = (v107 & 1) == 0;
    v117 = v115 + v116;
    if (__OFADD__(v115, v116))
    {
      goto LABEL_56;
    }

    v44 = v107;
    if (*&v106->clientIdentity[8] >= v117)
    {
      v77 = v189;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100375A1C();
        v77 = v189;
      }

      v73 = v187;
      if (v44)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_10036ED70(v117, isUniquelyReferenced_nonNull_native);
      v118 = sub_100005F4C(v46, v90);
      if ((v44 & 1) != (v107 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v114 = v118;
      v73 = v187;
      v77 = v189;
      if (v44)
      {
LABEL_22:
        v90, v107, v108, v109, v110, v111, v112, v113;
        v67 = v196;
        (*(v186 + 40))(*(v196 + 56) + *(v186 + 72) * v114, v77, v73);

        goto LABEL_23;
      }
    }

    v67 = v196;
    *(v196 + 8 * (v114 >> 6) + 64) |= 1 << v114;
    v119 = (*&v67->clientIdentity[32] + 16 * v114);
    *v119 = v46;
    v119[1] = v105;
    v102((*&v67->clientIdentity[40] + *(v186 + 72) * v114), v77, v73);

    v120 = *v67->clientIdentity;
    v121 = __OFADD__(v120, 1);
    v122 = v120 + 1;
    if (v121)
    {
      goto LABEL_57;
    }

    *v67->clientIdentity = v122;
LABEL_23:
    v74 = v81;
    v46 = v188;
    v76 = v182;
    v44 = v194;
    v48 = v190;
  }

  if (__CocoaDictionary.Iterator.next()())
  {
    v85 = v84;
    v190 = v48;
    swift_unknownObjectRelease();
    v195 = v85;
    type metadata accessor for RDAccountManualSortID(0);
    swift_dynamicCast();
    v83 = v196;
    v81 = v74;
    v82 = v46;
    v44 = v194;
    v77 = v189;
    if (!v196)
    {
LABEL_47:
      v76 = v182;
      v48 = v190;
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  v44 = v194;
LABEL_49:
  v78 = v183;
LABEL_50:
  sub_10001B860(v78);
  v192, v123, v124, v125, v126, v127, v128, v129;
  v130 = v200;
  v132 = v198;
  v131 = v199;

  v133 = sub_1004FD910(v67);
  v67, v134, v135, v136, v137, v138, v139, v140;

  v141 = sub_1001A6DC0();
  sub_10015E0CC(v130, v132, v141);
  if (v48)
  {

    v141, v149, v150, v151, v152, v153, v154, v155;
    v133, v156, v157, v158, v159, v160, v161, v162;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v130, v142, v143, v144, v145, v146, v147, v148;
    v131, v163, v164, v165, v166, v167, v168, v169;
    v132, v170, v171, v172, v173, v174, v175, v176;

    v44->super.isa = v130;
    *v44->storeController = v131;
    *v44->clientIdentity = v132;
    *&v44->clientIdentity[8] = v133;
    *&v44->clientIdentity[16] = v141;
  }
}

void sub_1004FE558(char a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    v9 = &_swiftEmptyArrayStorage;
    v80 = &_swiftEmptyArrayStorage;
    v10 = *(a2 + 2);
    if (v10)
    {
      v12 = (a2 + 40);
      do
      {
        if (a4[2])
        {
          v14 = *(v12 - 1);
          v13 = *v12;

          v15 = sub_100005F4C(v14, v13);
          if (v16)
          {
            v23 = (a4[7] + 16 * v15);
            v16 = v23[1];
            v24 = *v23 == 0x6C61636F6CLL && v16 == 0xE500000000000000;
            if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v25 = v80;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_100365788(0, *v80->clientIdentity + 1, 1, v80, v19, v20, v21, v22);
              }

              v27 = *v25->clientIdentity;
              v26 = *&v25->clientIdentity[8];
              if (v27 >= v26 >> 1)
              {
                v25 = sub_100365788((v26 > 1), v27 + 1, 1, v25, v19, v20, v21, v22);
              }

              *v25->clientIdentity = v27 + 1;
              v28 = v25 + 16 * v27;
              *(v28 + 4) = v14;
              *(v28 + 5) = v13;
              v80 = v25;
              if (*(a3 + 16))
              {
                sub_100005F4C(v14, v13);
                if (v16)
                {

                  sub_100271EA8(v29);
                }
              }
            }
          }

          v13, v16, v17, v18, v19, v20, v21, v22;
        }

        v12 += 2;
        --v10;
      }

      while (v10);
LABEL_42:
      v9 = v80;
    }

    v60 = *v9->clientIdentity;
    if (v60)
    {
      v61 = 0;
      v62 = &v9->clientIdentity[24];
      do
      {
        v63 = &v62[16 * v61];
        v64 = v61;
        while (1)
        {
          if (v64 >= *v9->clientIdentity)
          {
            __break(1u);
            goto LABEL_57;
          }

          v66 = *(v63 - 1);
          v65 = *v63;
          v61 = v64 + 1;

          v67._countAndFlagsBits = 0x7C6C61636F6CLL;
          v67._object = 0xE600000000000000;
          if (String.hasPrefix(_:)(v67))
          {
            break;
          }

          v65, v68, v69, v70, v71, v72, v73, v74;
          v63 += 2;
          ++v64;
          if (v60 == v61)
          {
            goto LABEL_55;
          }
        }

        v78 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100026EF4(0, *_swiftEmptyArrayStorage.clientIdentity + 1, 1);
        }

        v76 = *_swiftEmptyArrayStorage.clientIdentity;
        v75 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v76 >= v75 >> 1)
        {
          sub_100026EF4((v75 > 1), v76 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v76 + 1;
        v77 = &_swiftEmptyArrayStorage + 16 * v76;
        *(v77 + 4) = v66;
        *(v77 + 5) = v65;
        v62 = v78;
      }

      while (v60 - 1 != v64);
    }

LABEL_55:
    v9, a2, a3, a4, a5, a6, a7, a8;
    sub_1001A5660(&_swiftEmptyArrayStorage);
  }

  else
  {
    v30 = 1 << *(a3 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a3 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    v35 = &_swiftEmptyArrayStorage;
    while (v32)
    {
LABEL_29:
      v37 = *(*(a3 + 56) + ((v34 << 9) | (8 * __clz(__rbit64(v32)))));
      v38 = *(v37 + 16);
      v39 = *v35->clientIdentity;
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_58;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v40 > *&v35->clientIdentity[8] >> 1)
      {
        if (v39 <= v40)
        {
          v49 = v39 + v38;
        }

        else
        {
          v49 = v39;
        }

        v35 = sub_100365788(isUniquelyReferenced_nonNull_native, v49, 1, v35, v45, v46, v47, v48);
      }

      v32 &= v32 - 1;
      if (*(v37 + 16))
      {
        if ((*&v35->clientIdentity[8] >> 1) - *v35->clientIdentity < v38)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();
        v37, v50, v51, v52, v53, v54, v55, v56;
        if (v38)
        {
          v57 = *v35->clientIdentity;
          v58 = __OFADD__(v57, v38);
          v59 = v57 + v38;
          if (v58)
          {
            goto LABEL_61;
          }

          *v35->clientIdentity = v59;
        }
      }

      else
      {
        v37, v42, v43, v44, v45, v46, v47, v48;
        if (v38)
        {
          goto LABEL_59;
        }
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {

        v80 = a2;

        sub_100271EA8(v35);
        goto LABEL_42;
      }

      v32 = *(a3 + 64 + 8 * v36);
      ++v34;
      if (v32)
      {
        v34 = v36;
        goto LABEL_29;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }
}

uint64_t sub_1004FE98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094AE18, &unk_1007AEF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FE9FC(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094AE18, &unk_1007AEF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004FEA64()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094AE20);
  v1 = sub_100006654(v0, qword_10094AE20);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004FEB2C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v44[0] = 0xD00000000000002ELL;
    v44[1] = 0x80000001007FB4E0;
    v44[3] = 0;
    v45[0] = 0;
    v44[2] = 0;
    *(v45 + 6) = 0;
    v10 = sub_100403B0C(v44, sub_1004FF128, 0);
    v27 = *(v1 + 72);
    if (v10)
    {
      if (v27 != 2 && (v27 & 1) != 0)
      {
        if (qword_100936338 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100006654(v28, qword_10094AE20);
        v12 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v12, v29))
        {
          goto LABEL_5;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "ENABLE significantTimeChageNotification XPC event. Skipping because values match";
        goto LABEL_30;
      }

      *(v1 + 72) = 1;
      if (qword_100936338 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100006654(v36, qword_10094AE20);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "ENABLE significantTimeChageNotification XPC event", v39, 2u);
      }

      v40 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v40, "Notification", "SignificantTimeChangeNotification");
      xpc_set_event();
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27 != 2 && (v27 & 1) == 0)
      {
        if (qword_100936338 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100006654(v41, qword_10094AE20);
        v12 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v12, v29))
        {
          goto LABEL_5;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "DISABLE significantTimeChageNotification XPC event. Skipping because values match";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v12, v29, v31, v30, 2u);

        goto LABEL_5;
      }

      *(v1 + 72) = 0;
      if (qword_100936338 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100006654(v32, qword_10094AE20);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "DISABLE significantTimeChageNotification XPC event", v35, 2u);
      }

      xpc_set_event();
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10094AE20);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42[1] = v7;
      v43 = v15;
      *v14 = 136446210;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      v19 = sub_10000668C(v16, v17, &v43);
      v18, v20, v21, v22, v23, v24, v25, v26;
      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error updating significantTimeChageNotification {error: %{public}s}", v14, 0xCu);
      sub_10000607C(v15);

LABEL_5:

      return;
    }
  }
}

void sub_1004FF128(BOOL *a1@<X8>)
{
  v3 = _s10PredicatesOMa(0);
  __chkstk_darwin(v3, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = sub_100043AA8();
  sub_1000513B4(v5);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setPredicate:v6];
  [v7 setResultType:1];

  [v7 setFetchLimit:1];
  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v9 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v10 = v9;
    if (v9 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10, v12, v13, v14, v15, v16, v17, v18;
    *a1 = v11 != 0;
  }
}

uint64_t sub_1004FF300()
{
  sub_10000607C((v0 + 32));

  return swift_deallocClassInstance();
}

id sub_1004FF37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 24))(a1, a2);
  if (!v4)
  {
    v6 = v5;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100791300;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = 0x696669746E656469;
    *(v7 + 40) = 0xEA00000000007265;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7, v9, v10, v11, v12, v13, v14, v15;
    [v6 setPropertiesToFetch:isa];

    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    v16 = NSManagedObjectContext.fetch<A>(_:)();
    v43[3] = sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
    v43[0] = v16;
    sub_1000F5104(&qword_10094AEF0, &qword_1007B3C30);
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v43);
    v25 = v44;
    v43[0] = &_swiftEmptyArrayStorage;
    v42 = v6;
    v26 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v44 >> 62)
    {
LABEL_21:
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = 0;
    v29 = &_swiftEmptyArrayStorage;
    while (v27 != v28)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_20;
        }

        v30 = *&v25->clientIdentity[8 * v28 + 16];
        swift_unknownObjectRetain();
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      v32 = [v30 remObjectID];
      swift_unknownObjectRelease();
      ++v28;
      if (v32)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = v43[0];
        v28 = v31;
      }
    }

    v25, v18, v19, v20, v21, v22, v23, v24;
    v33 = objc_allocWithZone(REMFetchResult);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v34 = Array._bridgeToObjectiveC()().super.isa;
    v29, v35, v36, v37, v38, v39, v40, v41;
    v3 = [v33 initWithRequestedObjectIDs:v34];
  }

  return v3;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004FF6DC(void *a1)
{
  v4 = *v1;
  v81 = 0;
  v5 = [a1 remObjectIDWithError:&v81];
  if (v5)
  {
    v6 = v5;
    v7 = v81;
    v8 = [a1 account];
    if (v8 && (v9 = v8, v10 = [v8 remObjectID], v9, v10))
    {
      v11 = [a1 displayName];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v14;

        v15 = sub_1005003E4(a1, v6, v10, v13, v4);
        if (v2)
        {

          v4, v23, v24, v25, v26, v27, v28, v29;
        }

        else
        {
          v73 = v15;
          v4, v16, v17, v18, v19, v20, v21, v22;
          v4 = v73;
          -[RDXPCStorePerformer setMinimumSupportedVersion:](v4, "setMinimumSupportedVersion:", [a1 minimumSupportedVersion]);
          -[RDXPCStorePerformer setEffectiveMinimumSupportedVersion:](v4, "setEffectiveMinimumSupportedVersion:", [a1 effectiveMinimumSupportedVersion]);
          [(RDXPCStorePerformer *)v4 setResolutionTokenMap:0];
          v74 = [a1 resolutionTokenMapData];
          if (v74)
          {
            v75 = v74;
            v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v78 = v77;

            v79.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v76, v78);
          }

          else
          {
            v79.super.isa = 0;
          }

          [(RDXPCStorePerformer *)v4 setResolutionTokenMapData:v79.super.isa];
        }
      }

      else
      {
        if (qword_100936348 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_10094AF10);
        v54 = v6;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v81 = v4;
          v82 = v80;
          *v57 = 136315394;
          swift_getMetatypeMetadata();
          v59 = String.init<A>(describing:)();
          v61 = v60;
          v62 = sub_10000668C(v59, v60, &v82);
          v61, v63, v64, v65, v66, v67, v68, v69;
          *(v57 + 4) = v62;
          *(v57 + 12) = 2112;
          *(v57 + 14) = v54;
          *v58 = v6;
          v70 = v54;
          _os_log_impl(&_mh_execute_header, v55, v56, "%s: cdSmartListSection.displayName is nil {cdSmartListSection.remObjectID: %@}", v57, 0x16u);
          sub_1000050A4(v58, &unk_100938E70, &unk_100797230);

          sub_10000607C(v80);
        }

        v71 = objc_opt_self();
        type metadata accessor for REMCDSmartListSection();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v4 = String._bridgeToObjectiveC()();
        [v71 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v4];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936348 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_10094AF10);
      v31 = v6;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v81 = v4;
        v82 = v36;
        *v34 = 136315394;
        swift_getMetatypeMetadata();
        v37 = String.init<A>(describing:)();
        v39 = v38;
        v40 = sub_10000668C(v37, v38, &v82);
        v39, v41, v42, v43, v44, v45, v46, v47;
        *(v34 + 4) = v40;
        *(v34 + 12) = 2112;
        *(v34 + 14) = v31;
        *v35 = v6;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s: cdSmartListSection.account is nil {cdSmartListSection.remObjectID: %@}", v34, 0x16u);
        sub_1000050A4(v35, &unk_100938E70, &unk_100797230);

        sub_10000607C(v36);
      }

      v49 = objc_opt_self();
      type metadata accessor for REMCDSmartListSection();
      v50 = swift_getObjCClassFromMetadata();
      v4 = String._bridgeToObjectiveC()();
      [v49 unexpectedNilPropertyWithClass:v50 property:v4];

      swift_willThrow();
    }
  }

  else
  {
    v51 = v81;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1004FFD94@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100500824(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1004FFDD4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100500824(a1);
  *a2 = result;
  return result;
}

void sub_1004FFDFC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1B98, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1004FFE6C(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1B98, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

unint64_t sub_1004FFED0()
{
  result = sub_1004FFEF0();
  qword_100974F28 = result;
  return result;
}

unint64_t sub_1004FFEF0()
{
  v1 = 0;
  v2 = 0x80000001007E8C60;
  v3 = 0x4E79616C70736964;
  v4 = 0xD000000000000017;
  do
  {
    while (1)
    {
      v14 = &off_1008E2150 + v1++;
      v15 = v14[32];
      v16 = 0x6E6F697461657263;
      if (v15 != 2)
      {
        v16 = 0x4E79616C70736964;
      }

      v17 = 0xEC00000065746144;
      if (v15 != 2)
      {
        v17 = 0xEB00000000656D61;
      }

      v18 = 0x44497463656A626FLL;
      if (v15)
      {
        v18 = 0xD000000000000017;
      }

      v19 = 0xE800000000000000;
      if (v15)
      {
        v19 = 0x80000001007E8C60;
      }

      if (v15 <= 1)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if (v15 <= 1)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(v20, v21);
      v31 = _swiftEmptyDictionarySingleton[2];
      v32 = (v24 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v0 = v24;
      if (_swiftEmptyDictionarySingleton[3] >= v34)
      {
        break;
      }

      sub_10036A8F0(v34, isUniquelyReferenced_nonNull_native);
      result = sub_100005F4C(v20, v21);
      if ((v0 & 1) != (v24 & 1))
      {
        goto LABEL_43;
      }

LABEL_22:
      if ((v0 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_2:
      v0 = result;
      v21, v24, v25, v26, v27, v28, v29, v30;
      v5 = (_swiftEmptyDictionarySingleton[7] + 16 * v0);
      v6 = v5[1];
      *v5 = v20;
      v5[1] = v21;
      v6, v7, v8, v9, v10, v11, v12, v13;
      if (v1 == 4)
      {
        goto LABEL_28;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = result;
    sub_100373664();
    result = isUniquelyReferenced_nonNull_native;
    if (v0)
    {
      goto LABEL_2;
    }

LABEL_23:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v35 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v35 = v20;
    v35[1] = v21;
    v36 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
    *v36 = v20;
    v36[1] = v21;
    v37 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v33)
    {
      goto LABEL_36;
    }

    _swiftEmptyDictionarySingleton[2] = v38;
  }

  while (v1 != 4);
LABEL_28:
  v21 = 0xE900000000000044;
  v20 = 0x49746E756F636361;
  v3 = 0xE700000000000000;
  v4 = 0x746E756F636361;
  v0 = 0x49746E756F636361;
  isUniquelyReferenced_nonNull_native = 0xE900000000000044;
  v1 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  v46 = _swiftEmptyDictionarySingleton[2];
  v47 = (v39 & 1) == 0;
  v33 = __OFADD__(v46, v47);
  v48 = v46 + v47;
  if (v33)
  {
    goto LABEL_47;
  }

  v2 = v39;
  if (_swiftEmptyDictionarySingleton[3] >= v48)
  {
    if (v1)
    {
LABEL_33:
      if (v2)
      {
LABEL_34:
        v0 = result;
        isUniquelyReferenced_nonNull_native, v39, v40, v41, v42, v43, v44, v45;
        v49 = (_swiftEmptyDictionarySingleton[7] + 16 * v0);
        v50 = v49[1];
        *v49 = v4;
        v49[1] = v3;
        v50, v51, v52, v53, v54, v55, v56, v57;
        goto LABEL_40;
      }

LABEL_38:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v59 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v59 = v0;
      v59[1] = isUniquelyReferenced_nonNull_native;
      v60 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
      *v60 = v4;
      v60[1] = v3;
      v61 = _swiftEmptyDictionarySingleton[2];
      v33 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v33)
      {
        goto LABEL_52;
      }

      _swiftEmptyDictionarySingleton[2] = v62;
LABEL_40:
      v20 = 0x4449746E65726170;
      v2 = &v21->clientIdentity[32];
      v1 = 0x73694C7472616D73;
      v21 = 0xE800000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
      v70 = _swiftEmptyDictionarySingleton[2];
      v71 = (v63 & 1) == 0;
      v33 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (!v33)
      {
        LOBYTE(v0) = v63;
        if (_swiftEmptyDictionarySingleton[3] >= v72)
        {
          goto LABEL_44;
        }

        sub_10036A8F0(v72, isUniquelyReferenced_nonNull_native);
        result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
        if ((v0 & 1) != (v63 & 1))
        {
          goto LABEL_43;
        }

LABEL_45:
        if ((v0 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_37:
    v58 = result;
    sub_100373664();
    result = v58;
    if (v2)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  sub_10036A8F0(v48, v1);
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  if ((v2 & 1) == (v39 & 1))
  {
    goto LABEL_33;
  }

LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_44:
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_45;
  }

LABEL_48:
  v83 = result;
  sub_100373664();
  result = v83;
  if (v0)
  {
LABEL_46:
    v73 = result;
    v21, v63, v64, v65, v66, v67, v68, v69;
    v74 = (_swiftEmptyDictionarySingleton[7] + 16 * v73);
    v75 = v74[1];
    *v74 = v1;
    v74[1] = v2;
    v75, v76, v77, v78, v79, v80, v81, v82;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_49:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v84 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v84 = v20;
  v84[1] = v21;
  v85 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v85 = v1;
  v85[1] = v2;
  v86 = _swiftEmptyDictionarySingleton[2];
  v33 = __OFADD__(v86, 1);
  v87 = v86 + 1;
  if (!v33)
  {
    _swiftEmptyDictionarySingleton[2] = v87;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_52:
  __break(1u);
  return result;
}

void *sub_1005003E4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v48 = a5;
  v49 = a3;
  v10 = *v7;
  v11 = type metadata accessor for Date();
  v47 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 smartList];
  if (v16 && (v17 = v16, v6 = [v16 remObjectID], v17, v6))
  {
    v18 = objc_allocWithZone(REMSmartListSectionStorage);
    v19 = v6;
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 initWithObjectID:a2 accountID:v49 parentID:v19 displayName:v20];

    v6 = v21;
    v22 = [a1 creationDate];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v47 + 8))(v15, v11);
    }

    else
    {
      v24.super.isa = 0;
    }

    [v6 setCreationDate:{v24.super.isa, v47, v48}];
  }

  else
  {
    if (qword_100936348 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094AF10);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50[0] = v30;
      *v29 = 136315394;
      v50[2] = v10;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = v32;
      v34 = sub_10000668C(v31, v32, v50);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v6 = v26;
      v42 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: cdSmartListSection.smartList is nil {cdSmartListSection.remObjectID: %@}", v29, 0x16u);
      sub_1000050A4(v6, &unk_100938E70, &unk_100797230);

      sub_10000607C(v30);
    }

    v43 = objc_opt_self();
    type metadata accessor for REMCDSmartListSection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v45 = String._bridgeToObjectiveC()();
    [v43 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v45];

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100500824(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E11C8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_100500870(void *a1, void *a2, uint64_t a3)
{
  v8 = *v3;
  v143 = type metadata accessor for Date();
  v9 = *(v143 - 8);
  __chkstk_darwin(v143, v10);
  v142 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for UUID();
  v12 = *(v144 - 1);
  *&v14 = __chkstk_darwin(v144, v13).n128_u64[0];
  v16 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = [a2 createResolutionTokenMapIfNecessary];
  v17 = [a1 resolutionTokenMap];
  if (v17)
  {
    v18 = v17;
    v26 = sub_100696170(v17, a3);
    v27 = a3;
    v28 = *(a3 + 16);
    if (!v28)
    {

      goto LABEL_49;
    }

    v139 = v18;
    v140 = v4;
    v29 = (v27 + 32);
    v141 = (v9 + 8);
    v30 = (v12 + 8);
    while (1)
    {
      v35 = *v29++;
      v34 = v35;
      if (v35 > 1)
      {
        if (v34 == 2)
        {
          sub_1006944C8(2, v19, v20, v21, v22, v23, v24, v25);
          v47 = v46;
          v48 = String._bridgeToObjectiveC()();
          v47, v49, v50, v51, v52, v53, v54, v55;
          LODWORD(v47) = [v145 mergeWithMap:v26 forKey:v48];

          if (!v47)
          {
            goto LABEL_6;
          }

          v56 = [a1 creationDate];
          if (v56)
          {
            v57 = v142;
            v58 = v56;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v33.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (*v141)(v57, v143);
          }

          else
          {
            v33.super.isa = 0;
          }

          [a2 setCreationDate:{v33.super.isa, v139}];
        }

        else
        {
          sub_1006944C8(3, v19, v20, v21, v22, v23, v24, v25);
          v60 = v59;
          v61 = String._bridgeToObjectiveC()();
          v60, v62, v63, v64, v65, v66, v67, v68;
          LODWORD(v60) = [v145 mergeWithMap:v26 forKey:{v61, v139}];

          if (!v60)
          {
            goto LABEL_6;
          }

          v33.super.isa = [a1 displayName];
          if (!v33.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;
            v33.super.isa = String._bridgeToObjectiveC()();
            v70, v71, v72, v73, v74, v75, v76, v77;
          }

          [a2 setDisplayName:{v33.super.isa, v139}];
        }
      }

      else
      {
        if (v34)
        {
          sub_1006944C8(1, v19, v20, v21, v22, v23, v24, v25);
          v37 = v36;
          v38 = String._bridgeToObjectiveC()();
          v37, v39, v40, v41, v42, v43, v44, v45;
          LODWORD(v37) = [v145 mergeWithMap:v26 forKey:v38];

          if (v37)
          {
            [a2 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          }

          goto LABEL_6;
        }

        v31 = [a1 objectID];
        v32 = [v31 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v33.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v30)(v16, v144);
        [a2 setIdentifier:{v33.super.isa, v139}];
      }

LABEL_6:
      if (!--v28)
      {

        goto LABEL_49;
      }
    }
  }

  if (qword_100936340 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  sub_100006654(v78, qword_10094AEF8);
  v79 = a1;

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.fault.getter();
  a3, v82, v83, v84, v85, v86, v87, v88;

  if (os_log_type_enabled(v80, v81))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v146 = v91;
    *v89 = 136315650;
    v147 = v8;
    swift_getMetatypeMetadata();
    v92 = String.init<A>(describing:)();
    v94 = v93;
    v95 = sub_10000668C(v92, v93, &v146);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v89 + 4) = v95;
    *(v89 + 12) = 2114;
    v103 = [v79 objectID];
    *(v89 + 14) = v103;
    v144 = v90;
    *v90 = v103;
    *(v89 + 22) = 2082;
    v104 = *(a3 + 16);
    v105 = &_swiftEmptyArrayStorage;
    if (v104)
    {
      v140 = v91;
      LODWORD(v141) = v81;
      v142 = v89;
      v143 = v80;
      v147 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v104, 0);
      v105 = v147;
      v106 = (a3 + 32);
      do
      {
        v108 = *v106++;
        v107 = v108;
        v109 = v108 == 2;
        if (v108 == 2)
        {
          v110 = 0x6E6F697461657263;
        }

        else
        {
          v110 = 0x4E79616C70736964;
        }

        if (v109)
        {
          v111 = 0xEC00000065746144;
        }

        else
        {
          v111 = 0xEB00000000656D61;
        }

        v112 = 0xD000000000000017;
        if (v107)
        {
          v113 = 0x80000001007E8C60;
        }

        else
        {
          v112 = 0x44497463656A626FLL;
          v113 = 0xE800000000000000;
        }

        if (v107 <= 1)
        {
          v114 = v112;
        }

        else
        {
          v114 = v110;
        }

        if (v107 <= 1)
        {
          v115 = v113;
        }

        else
        {
          v115 = v111;
        }

        v147 = v105;
        v117 = *v105->clientIdentity;
        v116 = *&v105->clientIdentity[8];
        if (v117 >= v116 >> 1)
        {
          sub_100026EF4((v116 > 1), v117 + 1, 1);
          v105 = v147;
        }

        *v105->clientIdentity = v117 + 1;
        v118 = v105 + 16 * v117;
        *(v118 + 4) = v114;
        *(v118 + 5) = v115;
        --v104;
      }

      while (v104);
      v89 = v142;
      v80 = v143;
      LOBYTE(v81) = v141;
    }

    v119 = Array.description.getter();
    v121 = v120;
    v105, v120, v122, v123, v124, v125, v126, v127;
    v128 = sub_10000668C(v119, v121, &v146);
    v121, v129, v130, v131, v132, v133, v134, v135;
    *(v89 + 24) = v128;
    _os_log_impl(&_mh_execute_header, v80, v81, "%s: merge(storage:into cdSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v89, 0x20u);
    sub_1000050A4(v144, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  v136 = objc_opt_self();
  sub_10050192C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v138 = String._bridgeToObjectiveC()();
  [v136 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v138];

  swift_willThrow();
LABEL_49:
}

void sub_100501084(id a1, id a2, char a3, uint64_t a4)
{
  v6 = v4;
  if ((a3 & 1) == 0)
  {
    v11 = [a1 accountID];
    sub_10068C1CC(0, v11, a4);
    if (!v5)
    {
      v37 = qword_100936340;
      v38 = v36;
      if (v37 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_10094AEF8);
      v40 = v38;
      v41 = a2;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v44 = 136446466;
        v45 = [v41 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v120 = v43;
        v46 = Optional.descriptionOrNil.getter();
        v123 = v41;
        v48 = v47;

        v49 = sub_10000668C(v46, v48, &v126);
        v48, v50, v51, v52, v53, v54, v55, v56;
        *(v44 + 4) = v49;
        *(v44 + 12) = 2082;
        v125 = [v40 remObjectID];
        v57 = Optional.descriptionOrNil.getter();
        v59 = v58;

        v41 = v123;
        v60 = sub_10000668C(v57, v59, &v126);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v44 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v42, v120, "Updating cdSmartListSection.account {cdSmartListSection: %{public}s, account: %{public}s}", v44, 0x16u);
        swift_arrayDestroy();
      }

      [v41 setAccount:v40];
      return;
    }

LABEL_18:

    return;
  }

  v10 = *v6;
  v11 = [a2 createResolutionTokenMapIfNecessary];
  v12 = [a1 resolutionTokenMap];
  if (!v12)
  {
    if (qword_100936340 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_10094AEF8);
    v69 = a1;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v72 = 136315650;
      v126 = v10;
      swift_getMetatypeMetadata();
      v74 = String.init<A>(describing:)();
      v76 = v75;
      v77 = sub_10000668C(v74, v75, &v125);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v72 + 4) = v77;
      *(v72 + 12) = 2114;
      v85 = [v69 objectID];
      *(v72 + 14) = v85;
      *v73 = v85;
      *(v72 + 22) = 2082;
      *(v72 + 24) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v125);
      _os_log_impl(&_mh_execute_header, v70, v71, "%s: establishRelationship(onStorage:into cdSmartListSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v72, 0x20u);
      sub_1000050A4(v73, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v86 = objc_opt_self();
    sub_10050192C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v88 = String._bridgeToObjectiveC()();
    [v86 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v88];

    swift_willThrow();
    goto LABEL_18;
  }

  v13 = v12;
  sub_1000F5104(&qword_100943458, &qword_1007AF070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 1;
  v15 = sub_1006967D0(v13, inited);
  swift_setDeallocating();
  v16 = [a1 smartListID];
  sub_1006934A4(1, v17, v18, v19, v20, v21, v22, v23);
  v25 = v24;
  v26 = String._bridgeToObjectiveC()();
  v25, v27, v28, v29, v30, v31, v32, v33;
  LODWORD(v25) = [v11 mergeWithMap:v15 forKey:v26];

  if (v25)
  {
    if (v16)
    {
      v34 = v16;
      sub_10068C1FC(1, v34, a4);
      if (v5)
      {

        return;
      }

      v89 = v35;
    }

    else
    {
      v89 = 0;
    }

    if (qword_100936340 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100006654(v90, qword_10094AEF8);
    v124 = v89;
    v91 = v89;
    v92 = a2;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v118 = v94;
      log = v93;
      v122 = v91;
      v95 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v95 = 136446466;
      v121 = v92;
      v125 = [v92 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v96 = Optional.descriptionOrNil.getter();
      v98 = v97;

      v99 = sub_10000668C(v96, v98, &v126);
      v98, v100, v101, v102, v103, v104, v105, v106;
      *(v95 + 4) = v99;
      *(v95 + 12) = 2082;
      if (v124)
      {
        v125 = [v91 remObjectID];
        v107 = Optional.descriptionOrNil.getter();
        v109 = v108;
      }

      else
      {
        v109 = 0xEE003E7473696C74;
        v107 = 0x72616D73206F6E3CLL;
      }

      v110 = sub_10000668C(v107, v109, &v126);
      v109, v111, v112, v113, v114, v115, v116, v117;
      *(v95 + 14) = v110;
      _os_log_impl(&_mh_execute_header, log, v118, "Updating cdSmartListSection.smartList {cdSmartListSection: %{public}s, smartList: %{public}s}", v95, 0x16u);
      swift_arrayDestroy();

      v92 = v121;
      v91 = v122;
    }

    else
    {
    }

    [v92 setSmartList:v91];
  }
}

unint64_t sub_10050192C()
{
  result = qword_1009405A0;
  if (!qword_1009405A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009405A0);
  }

  return result;
}

unint64_t sub_1005019CC()
{
  result = qword_10094B0D8;
  if (!qword_10094B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B0D8);
  }

  return result;
}

unint64_t sub_100501A54()
{
  result = qword_10094B0F0;
  if (!qword_10094B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B0F0);
  }

  return result;
}

uint64_t sub_100501AA8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B0F8);
  v1 = sub_100006654(v0, qword_10094B0F8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100501B70(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v178 = a3;
  v169 = a2;
  v180 = a1;
  v160 = a5;
  v6 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v6 - 8, v7);
  v170 = &v149 - v8;
  v9 = type metadata accessor for REMRemindersListDataView.FlatModel();
  __chkstk_darwin(v9 - 8, v10);
  v154 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for REMRemindersListDataView.TemplateModel();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159, v12);
  v156 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v167 = &v149 - v16;
  v157 = type metadata accessor for REMRemindersListDataView.Diff();
  v166 = *(v157 - 8);
  __chkstk_darwin(v157, v17);
  v155 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v161 = &v149 - v21;
  __chkstk_darwin(v22, v23);
  v165 = &v149 - v24;
  __chkstk_darwin(v25, v26);
  v171 = &v149 - v27;
  v28 = type metadata accessor for UUID();
  v163 = *(v28 - 8);
  v164 = v28;
  __chkstk_darwin(v28, v29);
  v162 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  __chkstk_darwin(v31 - 8, v32);
  v153 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v37 = &v149 - v36;
  v38 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v38 - 8, v39);
  v173 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v172, v41);
  v43 = &v149 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v45);
  v174 = (&v149 - v46);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v175 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v48);
  v50 = &v149 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration();
  v52 = *(Configuration - 8);
  v176 = Configuration;
  v177 = v52;
  __chkstk_darwin(Configuration, v53);
  v55 = &v149 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56, v57);
  v59 = &v149 - v58;
  v60 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
  v61 = v179;
  sub_100262C94(v60, v180, v178);
  if (v61)
  {
  }

  else
  {
    v152 = Subtasks;
    v179 = v62;
    v151 = v37;
    v178 = 0;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.fetchSubtasks.getter();
    v64 = (v177 + 8);
    v63 = *(v177 + 1);
    v65 = v59;
    v66 = v176;
    v63(v65, v176);
    v149 = a4;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
    v67 = v173;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.sortingStyle.getter();
    v177 = v64;
    v150 = v63;
    v63(v55, v66);
    v68 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v69 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v69 - 8) + 104))(v43, v68, v69);
    swift_storeEnumTagMultiPayload();
    v70 = v174;
    sub_1005368D8(v67, v43, v174);
    v71 = v180;
    v72 = v178;
    v73 = sub_100268564(v60, v180, v50, v70);
    v75 = v60;
    if (v72)
    {

      sub_1001EB4C4(v70, v76);
      (v175)[1](v50, v152);
    }

    else
    {
      v77 = v70;
      v78 = v73;
      sub_1001EB4C4(v77, v74);
      (v175)[1](v50, v152);
      v79 = [v179 accountID];
      REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
      ManualOrdering = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.shouldFetchManualOrderingID.getter();
      v150(v55, v176);
      v175 = v79;
      if (ManualOrdering)
      {
        v81 = v60;
        v82 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
        v83 = [v82 uuid];

        v84 = v162;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v85 = UUID.uuidString.getter();
        v87 = v86;
        (*(v163 + 8))(v84, v164);
        sub_10053F868(6, v85, v87, v79, v71);
        v89 = v171;
        v90 = v151;
        if (!v88)
        {
          v88 = [objc_opt_self() newObjectID];
        }

        v91 = v88;
        REMObjectID.codable.getter();
        REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

        v92 = 0;
        v75 = v81;
      }

      else
      {
        v92 = 1;
        v89 = v171;
        v90 = v151;
      }

      v93 = type metadata accessor for REMManualOrdering.ManualOrderingID();
      (*(*(v93 - 8) + 56))(v90, v92, 1, v93);
      type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation();
      v94 = [v168 fetchResultTokenToDiffAgainst];
      sub_100262FE8(v94, v89);
      v95 = v170;
      v180 = v75;
      v178 = 0;

      v96 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
      (*(*(v96 - 8) + 56))(v95, 1, 1, v96);
      v97 = v179;

      REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
      sub_100502988(v90, v153);
      v179 = v97;
      REMRemindersListDataView.TemplateModel.init(listRepresentationOfTemplate:model:manualOrderingID:)();
      if (qword_100936358 != -1)
      {
        swift_once();
      }

      v98 = type metadata accessor for Logger();
      sub_100006654(v98, qword_10094B0F8);
      v100 = v165;
      v99 = v166;
      v101 = *(v166 + 16);
      v102 = v157;
      v101(v165, v89, v157);
      v103 = v161;
      v177 = v101;
      v101(v161, v89, v102);

      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 134218496;
        v107 = *v78->clientIdentity;
        v78, v108, v109, v110, v111, v112, v113, v114;
        *(v106 + 4) = v107;
        v78, v115, v116, v117, v118, v119, v120, v121;
        *(v106 + 12) = 2048;
        v122 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
        if ((v122 & 0xC000000000000001) != 0)
        {
          v130 = v122;
          v131 = __CocoaSet.count.getter();
          v122 = v130;
        }

        else
        {
          v131 = *(v122 + 16);
        }

        v122, v123, v124, v125, v126, v127, v128, v129;
        v135 = *(v166 + 8);
        v176 = (v166 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v135(v165, v102);
        *(v106 + 14) = v131;
        *(v106 + 22) = 2048;
        v136 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
        if ((v136 & 0xC000000000000001) != 0)
        {
          v144 = v136;
          v145 = __CocoaSet.count.getter();
          v136 = v144;
          v103 = v161;
        }

        else
        {
          v145 = *(v136 + 16);
        }

        v136, v137, v138, v139, v140, v141, v142, v143;
        v135(v103, v102);
        *(v106 + 24) = v145;
        _os_log_impl(&_mh_execute_header, v104, v105, "REMRemindersListDataView.TemplateInvocation: reminders %ld updated %ld inserted %ld", v106, 0x20u);

        v134 = v159;
        v133 = v102;
        v174 = v135;
      }

      else
      {
        v132 = *(v99 + 8);
        v176 = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v132(v103, v102);
        v174 = v132;
        v132(v100, v102);

        swift_bridgeObjectRelease_n();
        v133 = v102;
        v134 = v159;
      }

      v146 = v158;
      v147 = v167;
      (*(v158 + 16))(v156, v167, v134);
      v148 = v171;
      v177(v155, v171, v133);
      sub_1005029F8(&qword_10094B138, &type metadata accessor for REMRemindersListDataView.TemplateModel, &protocol conformance descriptor for REMRemindersListDataView.TemplateModel);
      sub_1005029F8(&qword_10094B140, &type metadata accessor for REMRemindersListDataView.TemplateModel, &protocol conformance descriptor for REMRemindersListDataView.TemplateModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

      (*(v146 + 8))(v147, v134);
      v174(v148, v133);
      sub_100502920(v151);
    }
  }
}

uint64_t sub_1005028C8(uint64_t a1)
{
  result = sub_1005029F8(&qword_10094B130, &type metadata accessor for REMRemindersListDataView.TemplateInvocation, &protocol conformance descriptor for REMRemindersListDataView.TemplateInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100502920(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100502988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005029F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100502A40()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B148);
  v1 = sub_100006654(v0, qword_10094B148);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100502B08(char *a1)
{
  v84 = type metadata accessor for UUID();
  v87 = *(v84 - 8);
  __chkstk_darwin(v84, v3);
  v83 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5, v7);
  v9 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v78 - v12;
  __chkstk_darwin(v14, v15);
  v17 = (v78 - v16);
  Date.init()();
  v18 = objc_autoreleasePoolPush();
  sub_100506974();
  if (v1)
  {
    objc_autoreleasePoolPop(v18);
    return (*(v6 + 8))(v17, v5);
  }

  else
  {
    v21 = v19;
    v79 = v9;
    v81 = a1;
    v82 = v13;
    objc_autoreleasePoolPop(v18);
    if (qword_100936360 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094B148);
      v23 = v82;
      v24 = v5;
      (*(v6 + 16))(v82, v17, v5);
      swift_bridgeObjectRetain_n();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v85 = v17;
      v86 = v21;
      v28 = v83;
      v80 = v6;
      if (v27)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v78[1] = v30;
        *v29 = 136315906;
        v88 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
        v89 = v30;
        sub_1000F5104(&unk_10094B200, &unk_1007AF310);
        v31 = String.init<A>(describing:)();
        v78[0] = v25;
        v33 = v32;
        v34 = sub_10000668C(v31, v32, &v89);
        v33, v35, v36, v37, v38, v39, v40, v41;
        *(v29 + 4) = v34;
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_10000668C(0xD000000000000023, 0x80000001007FB800, &v89);
        *(v29 + 22) = 2050;
        v42 = *v86->clientIdentity;
        v86, v43, v44, v45, v46, v47, v48, v49;
        *(v29 + 24) = v42;
        v86, v50, v51, v52, v53, v54, v55, v56;
        *(v29 + 32) = 2048;
        v57 = v6;
        v58 = v26;
        v59 = v79;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v61 = v60;
        v62 = *(v57 + 8);
        v62(v59, v24);
        v79 = v62;
        v62(v23, v24);
        *(v29 + 34) = v61;
        v63 = v78[0];
        _os_log_impl(&_mh_execute_header, v78[0], v58, "[%s|%s] Did fetch identifier of all REMCDList {listIdentifiers.count: %{public}ld, cumulative elapsedSeconds: %f}", v29, 0x2Au);
        swift_arrayDestroy();

        v21 = v86;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v79 = *(v6 + 8);
        v79(v23, v24);
      }

      v17 = v81;
      v82 = v24;
      v89 = 0;
      v71 = *v21->clientIdentity;
      v6 = v84;
      if (!v71)
      {
        break;
      }

      v72 = 0;
      v5 = (v87 + 8);
      while (v72 < *v21->clientIdentity)
      {
        (*(v87 + 16))(v28, v21 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v72, v6);
        v73 = objc_autoreleasePoolPush();
        sub_100503134(v28, v17, v85, &v89, &v88);
        ++v72;
        (*v5)(v28, v6);
        objc_autoreleasePoolPop(v73);
        v21 = v86;
        if (v71 == v72)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      swift_once();
    }

LABEL_11:
    v21, v64, v65, v66, v67, v68, v69, v70;
    v74 = [(RDXPCStorePerformer *)v17 hasChanges];
    v75 = v82;
    if (v74)
    {
      v88 = 0;
      if ([(RDXPCStorePerformer *)v17 save:&v88])
      {
        v76 = v88;
        [(RDXPCStorePerformer *)v17 refreshAllObjects];
      }

      else
      {
        v77 = v88;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    return (v79)(v85, v75);
  }
}

void sub_100503134(char *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v511 = a5;
  v524 = a4;
  v532 = a3;
  v504 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v504, v7);
  *&v503 = &v482 - v8;
  v9 = sub_1000F5104(&qword_100947E50, &unk_1007AF320);
  __chkstk_darwin(v9 - 8, v10);
  v530 = &v482 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v513 = &v482 - v14;
  v508 = type metadata accessor for Date();
  v507 = *(v508 - 8);
  __chkstk_darwin(v508, v15);
  v497 = &v482 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v501 = &v482 - v19;
  __chkstk_darwin(v20, v21);
  v531 = &v482 - v22;
  v529 = type metadata accessor for UUID();
  v520 = *(v529 - 8);
  __chkstk_darwin(v529, v23);
  v505 = &v482 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v512 = &v482 - v27;
  __chkstk_darwin(v28, v29);
  v517 = &v482 - v30;
  __chkstk_darwin(v31, v32);
  v34 = (&v482 - v33);
  __chkstk_darwin(v35, v36);
  v38 = &v482 - v37;
  __chkstk_darwin(v39, v40);
  v42 = &v482 - v41;
  __chkstk_darwin(v43, v44);
  v46 = &v482 - v45;
  __chkstk_darwin(v47, v48);
  v50 = &v482 - v49;
  __chkstk_darwin(v51, v52);
  v54 = &v482 - v53;
  __chkstk_darwin(v55, v56);
  v58 = &v482 - v57;
  v59 = v534;
  v60 = sub_100507158(a1, a2);
  if (v59)
  {
    *v511 = v59;
    return;
  }

  v526 = v58;
  v514 = v34;
  v518 = v60;
  v510 = v54;
  v495 = v42;
  v496 = v38;
  v533 = v46;
  v534 = a2;
  v527 = v50;
  v516 = a1;
  v525 = 0;
  v536 = _swiftEmptyDictionarySingleton;
  v537 = _swiftEmptyDictionarySingleton;
  if (qword_100936360 != -1)
  {
    goto LABEL_136;
  }

LABEL_4:
  v61 = type metadata accessor for Logger();
  v62 = sub_100006654(v61, qword_10094B148);
  v63 = v520;
  v64 = *(v520 + 16);
  v65 = v526;
  v66 = v529;
  v522 = v520 + 16;
  v521 = v64;
  v64(v526, v516, v529);
  v67 = v507;
  v68 = *(v507 + 16);
  v69 = v531;
  v70 = v508;
  v492 = v507 + 16;
  v491 = v68;
  v68(v531, v532, v508);
  v71 = v518;
  swift_bridgeObjectRetain_n();
  v502 = v62;
  v72 = v67;
  v73 = Logger.logObject.getter();
  LODWORD(v523) = static os_log_type_t.default.getter();
  v74 = os_log_type_enabled(v73, v523);
  v75 = v527;
  v528 = (v71 >> 62);
  if (v74)
  {
    v509 = v73;
    v76 = v66;
    v77 = swift_slowAlloc();
    v78 = v63;
    v79 = v76;
    v519 = swift_slowAlloc();
    v540 = v519;
    *v77 = 136316162;
    v538 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
    sub_1000F5104(&unk_10094B200, &unk_1007AF310);
    v80 = String.init<A>(describing:)();
    v82 = v81;
    v83 = sub_10000668C(v80, v81, &v540);
    v82, v84, v85, v86, v87, v88, v89, v90;
    *(v77 + 4) = v83;
    *(v77 + 12) = 2080;
    *(v77 + 14) = sub_10000668C(0xD000000000000023, 0x80000001007FB800, &v540);
    *(v77 + 22) = 2082;
    sub_100507504(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    v515 = *(v78 + 8);
    v515(v65, v79);
    v94 = sub_10000668C(v91, v93, &v540);
    v93, v95, v96, v97, v98, v99, v100, v101;
    *(v77 + 24) = v94;
    *(v77 + 32) = 2050;
    v109 = &v541;
    if (v71 >> 62)
    {
      goto LABEL_139;
    }

    v110 = v518;
    v111 = *((v518 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v112 = v509;
    v110, v102, v103, v104, v105, v106, v107, v108;
    *(v77 + 34) = v111;
    v110, v113, v114, v115, v116, v117, v118, v119;
    *(v77 + 42) = 2048;
    v120 = v501;
    Date.init()();
    v121 = v531;
    Date.timeIntervalSince(_:)();
    v123 = v122;
    v124 = *(v507 + 8);
    v125 = v120;
    v126 = v508;
    v124(v125, v508);
    v490 = v124;
    v124(v121, v126);
    *(v77 + 44) = v123;
    _os_log_impl(&_mh_execute_header, v112, v523, "[%s|%s] Did fetch NSManagedObjectID of reminders in ZREMCDOBJECT SQL table {list.identifier: %{public}s, reminders.count: %{public}ld, cumulative elapsedSeconds: %f}", v77, 0x34u);
    swift_arrayDestroy();

    v66 = v529;
    v63 = v520;
    v135 = v110;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v490 = *(v72 + 8);
    v490(v69, v70);
    v515 = *(v63 + 8);
    v515(v65, v66);
    v135 = v71;
  }

  v136 = v532;
  v137 = v533;
  v138 = v534;
  v139 = v530;
  if (v528)
  {
    v140 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v140 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v140)
  {
    v509 = 0;
    v500 = 0;
    v494 = 0x80000001007FB800;
    goto LABEL_60;
  }

  v141 = v63;
  v142 = 0;
  v500 = 0;
  v509 = 0;
  v528 = (v135 & 0xC000000000000001);
  v526 = v135 & 0xFFFFFFFFFFFFFF8;
  v499 = (v141 + 8);
  v494 = 0x80000001007FB800;
  v489 = (v141 + 56);
  *&v134 = 136315906;
  v488 = v134;
  v498 = xmmword_1007953F0;
  v523 = v140;
  do
  {
    if (v528)
    {
      v144 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v142 >= *(v526 + 16))
      {
        goto LABEL_130;
      }

      v144 = *(v135 + 8 * v142 + 32);
    }

    v145 = v144;
    v77 = v142 + 1;
    if (__OFADD__(v142, 1))
    {
      goto LABEL_129;
    }

    v146 = objc_autoreleasePoolPush();
    v540 = 0;
    v147 = [v138 existingObjectWithID:v145 error:&v540];
    v148 = v540;
    if (!v147)
    {
      v247 = v540;
      v248 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v135, v249, v250, v251, v252, v253, v254, v255;
      goto LABEL_122;
    }

    v149 = v147;
    v531 = v145;
    type metadata accessor for REMCDReminderInZREMCDOBJECT();
    v75 = swift_dynamicCastClass();
    v150 = v148;
    if (!v75 || ([v75 markedForDeletion] & 1) != 0)
    {
      v138 = v534;
      v143 = v531;
      goto LABEL_14;
    }

    type metadata accessor for REMCDReminderInZREMCDREMINDER();
    v151 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v152 = [v151 initWithContext:v534];
    sub_1005055F0(v75);
    v153 = [v75 ckCloudState];
    if (v153)
    {
      v154 = v153;
      [v153 setObject:0];
      [v154 setSavedAttachment:0];
      [v154 setSavedReminder:0];
      [v154 setTemplate:0];
      [v154 setReminderInZREMCDREMINDER:v152];
    }

    v519 = v152;
    v155 = [v75 parentReminder];
    v156 = v516;
    if (!v155)
    {
      v170 = [v75 identifier];
      if (v170)
      {
        v171 = v170;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v172 = v510;
        v173 = v529;
        v521(v510, v517, v529);
        sub_10031E2B4([(RDXPCStorePerformer *)v519 ic_permanentObjectID], v172);
        v515(v517, v173);
      }

      v109 = (v500 + 1);
      if (__OFADD__(v500, 1))
      {
        __break(1u);
LABEL_139:
        v110 = *(v109 - 32);
        v111 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_7;
      }

      ++v500;
      v136 = v532;
      v135 = v518;
      goto LABEL_54;
    }

    v506 = v155;
    v157 = [v155 identifier];
    if (v157)
    {
      v158 = v157;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v159 = v537;
      if (*v537->clientIdentity)
      {
        v160 = sub_100363F20(v514);
        if (v161)
        {
          v162 = *(*&v159->clientIdentity[40] + 8 * v160);
          v540 = 0;
          *&v493 = v162;
          v163 = [v534 existingObjectWithID:? error:?];
          v164 = v540;
          if (!v163)
          {
            v474 = v540;
            v248 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v515(v514, v529);
            v518, v475, v476, v477, v478, v479, v480, v481;
LABEL_121:
            v145 = v531;
LABEL_122:
            v536, v256, v257, v258, v259, v260, v261, v262;
            v537, v459, v460, v461, v462, v463, v464, v465;
            objc_autoreleasePoolPop(v146);

            *v511 = v248;
            return;
          }

          v165 = v163;
          v166 = swift_dynamicCastClass();
          v167 = v164;
          if (v166)
          {
            v168 = v165;
            [(RDXPCStorePerformer *)v519 setParentReminder:v166];

            v169 = v514;
LABEL_47:
            v515(v169, v529);
LABEL_51:
            v135 = v518;
            goto LABEL_52;
          }
        }
      }

      v206 = [(RDXPCStorePerformer *)v519 ic_permanentObjectID];
      v207 = v536;
      v208 = v514;
      if (*v536->clientIdentity)
      {
        sub_100363F20(v514);
        if (v209)
        {
          v210 = v208;
          v211 = v505;
          v521(v505, v210, v529);
          v212 = sub_100261BCC(&v540);
          if (*v213)
          {
            v214 = v213;
            *&v493 = v212;
            v215 = v206;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (v493)(&v540, 0);

            v216 = v529;
            v217 = v515;
            v515(v505, v529);
            v217(v514, v216);
          }

          else
          {
            (v212)(&v540, 0);

            v236 = v211;
            v237 = v529;
            v238 = v515;
            v515(v236, v529);
            v238(v514, v237);
          }

          goto LABEL_51;
        }
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v218 = swift_allocObject();
      v219 = v206;
      v220 = v208;
      v221 = v218;
      *(v218 + 16) = v498;
      *(v218 + 32) = v219;
      *&v493 = v219;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v540 = v207;
      sub_1002CA1B0(v221, v220, isUniquelyReferenced_nonNull_native);

      v536 = v540;
      v169 = v220;
      goto LABEL_47;
    }

    v521(v512, v156, v529);
    v174 = v519;
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.error.getter();
    *&v493 = v174;

    v177 = os_log_type_enabled(v175, v176);
    v135 = v518;
    if (v177)
    {
      v485 = v176;
      v487 = v175;
      v178 = swift_slowAlloc();
      v484 = swift_slowAlloc();
      v540 = v484;
      *v178 = v488;
      v538 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
      sub_1000F5104(&unk_10094B200, &unk_1007AF310);
      v179 = String.init<A>(describing:)();
      v181 = v180;
      v182 = sub_10000668C(v179, v180, &v540);
      v181, v183, v184, v185, v186, v187, v188, v189;
      *(v178 + 4) = v182;
      *(v178 + 12) = 2080;
      *(v178 + 14) = sub_10000668C(0xD000000000000023, v494, &v540);
      *(v178 + 22) = 2082;
      sub_100507504(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v190 = v512;
      v191 = v529;
      v486 = dispatch thunk of CustomStringConvertible.description.getter();
      v483 = v192;
      v515(v190, v191);
      v193 = v483;
      v194 = sub_10000668C(v486, v483, &v540);
      v193, v195, v196, v197, v198, v199, v200, v201;
      *(v178 + 24) = v194;
      v486 = v178;
      *(v178 + 32) = 2082;
      v202 = [v493 identifier];
      if (v202)
      {
        v203 = v503;
        v204 = v202;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v205 = 0;
      }

      else
      {
        v205 = 1;
        v203 = v503;
      }

      (*v489)(v203, v205, 1, v529);
      v223 = Optional.descriptionOrNil.getter();
      v225 = v224;
      sub_1000050A4(v203, &unk_100939D90, "8\n\r");
      v226 = sub_10000668C(v223, v225, &v540);
      v225, v227, v228, v229, v230, v231, v232, v233;
      v234 = v486;
      *(v486 + 34) = v226;
      v235 = v487;
      _os_log_impl(&_mh_execute_header, v487, v485, "[%s|%s] Failed to set parentReminder because parentReminder.identifier is nil {list.identifier: %{public}s, reminder.identifier: %{public}s}", v234, 0x2Au);
      swift_arrayDestroy();

      goto LABEL_51;
    }

    v515(v512, v529);
LABEL_52:
    v136 = v532;
    if (__OFADD__(v509, 1))
    {
      goto LABEL_135;
    }

    v509 = (v509 + 1);
LABEL_54:
    v138 = v534;
    [v534 refreshObject:v75 mergeChanges:0];
    v239 = v525;
    sub_100507400(v524, v138);
    v525 = v239;
    if (v239)
    {
      v135, v240, v241, v242, v243, v244, v245, v246;

      v248 = v525;
      goto LABEL_121;
    }

    v143 = v531;
    v149 = v519;
LABEL_14:

    objc_autoreleasePoolPop(v146);
    ++v142;
    v75 = v527;
    v137 = v533;
    v139 = v530;
  }

  while (v77 != v523);
  v66 = v529;
  v63 = v520;
LABEL_60:
  v263 = v537;
  v135, v127, v128, v129, v130, v131, v132, v133;
  v263, v264, v265, v266, v267, v268, v269, v270;
  v271 = 0;
  v273 = &v536->storeProvider[2];
  v272 = *&v536->storeProvider[2];
  v506 = v536;
  v274 = 1 << v536->clientIdentity[16];
  v275 = -1;
  if (v274 < 64)
  {
    v275 = ~(-1 << v274);
  }

  v276 = v275 & v272;
  v277 = (v274 + 63) >> 6;
  v514 = (v63 + 32);
  v504 = "REMCDReminderInZREMCDOBJECT";
  v505 = (v63 + 8);
  *(&v278 + 1) = 4;
  v503 = xmmword_100791340;
  *&v278 = 136315906;
  v493 = v278;
  v499 = &v536->storeProvider[2];
  *&v498 = v277;
  while (2)
  {
    v280 = v510;
    if (v276)
    {
      v281 = v271;
      goto LABEL_75;
    }

    if (v277 <= v271 + 1)
    {
      v282 = v271 + 1;
    }

    else
    {
      v282 = v277;
    }

    v283 = v282 - 1;
    do
    {
      v281 = v271 + 1;
      if (__OFADD__(v271, 1))
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
        goto LABEL_134;
      }

      if (v281 >= v277)
      {
        v407 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
        (*(*(v407 - 8) + 56))(v139, 1, 1, v407);
        v512 = 0;
        v271 = v283;
        goto LABEL_76;
      }

      v276 = *&v273[8 * v281];
      ++v271;
    }

    while (!v276);
    v271 = v281;
LABEL_75:
    v512 = ((v276 - 1) & v276);
    v284 = __clz(__rbit64(v276)) | (v281 << 6);
    v285 = v506;
    v521(v510, (*(v506 + 6) + *(v63 + 72) * v284), v66);
    v286 = *(v285[7] + 8 * v284);
    v287 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    v288 = *(v287 + 48);
    v139 = v530;
    (*(v63 + 32))(v530, v280, v66);
    *(v139 + v288) = v286;
    (*(*(v287 - 8) + 56))(v139, 0, 1, v287);

    v136 = v532;
    v137 = v533;
    v75 = v527;
LABEL_76:
    v289 = v513;
    sub_100471B18(v139, v513);
    v290 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    if ((*(*(v290 - 8) + 48))(v289, 1, v290) != 1)
    {
      v523 = *(v289 + *(v290 + 48));
      v66 = v529;
      (*v514)(v137, v289, v529);
      v291 = objc_autoreleasePoolPush();
      v292 = objc_allocWithZone(NSFetchRequest);
      v293 = String._bridgeToObjectiveC()();
      v294 = [v292 initWithEntityName:v293];

      [v294 setResultType:0];
      sub_1000F5104(&unk_100938E80, &unk_1007959D0);
      v295 = swift_allocObject();
      *(v295 + 16) = v503;
      *(v295 + 56) = &type metadata for String;
      *(v295 + 32) = 0x696669746E656469;
      *(v295 + 40) = 0xEA00000000007265;
      *(v295 + 88) = v66;
      v296 = sub_1000103CC((v295 + 64));
      v521(v296, v137, v66);
      v297 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v295, v299, v300, v301, v302, v303, v304, v305;
      v306 = [objc_opt_self() predicateWithFormat:v297 argumentArray:isa];

      [v294 setPredicate:v306];
      [v294 setFetchLimit:1];
      v526 = type metadata accessor for REMCDReminderInZREMCDREMINDER();
      v307 = v534;
      v308 = v525;
      v309 = NSManagedObjectContext.fetch<A>(_:)();
      v525 = v308;
      if (v308)
      {
        v523, v310, v311, v312, v313, v314, v315, v316;

        objc_autoreleasePoolPop(v291);

        v515(v137, v66);
        *v511 = v525;
        return;
      }

      if (v309 >> 62)
      {
        v408 = v309;
        v317 = _CocoaArrayWrapper.endIndex.getter();
        v309 = v408;
      }

      else
      {
        v317 = *((v309 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v520;
      if (!v317)
      {
        v309, v310, v311, v312, v313, v314, v315, v316;

        objc_autoreleasePoolPop(v291);
LABEL_108:
        v523, v329, v330, v331, v332, v333, v334, v335;
        v357 = v495;
        v358 = v521;
        v521(v495, v516, v66);
        v359 = v496;
        v358(v496, v137, v66);
        v360 = Logger.logObject.getter();
        v361 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v360, v361))
        {
          v362 = swift_slowAlloc();
          v531 = swift_slowAlloc();
          v539 = v531;
          *v362 = v493;
          v535 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
          sub_1000F5104(&unk_10094B200, &unk_1007AF310);
          v363 = String.init<A>(describing:)();
          v528 = v360;
          v365 = v364;
          v366 = sub_10000668C(v363, v364, &v539);
          LODWORD(v526) = v361;
          v367 = v366;
          v365, v368, v369, v370, v371, v372, v373, v374;
          *(v362 + 4) = v367;
          *(v362 + 12) = 2080;
          *(v362 + 14) = sub_10000668C(0xD000000000000023, v494, &v539);
          *(v362 + 22) = 2082;
          sub_100507504(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v375 = dispatch thunk of CustomStringConvertible.description.getter();
          v377 = v376;
          v378 = v357;
          v379 = v515;
          v515(v378, v529);
          v380 = sub_10000668C(v375, v377, &v539);
          v377, v381, v382, v383, v384, v385, v386, v387;
          *(v362 + 24) = v380;
          *(v362 + 32) = 2082;
          v388 = dispatch thunk of CustomStringConvertible.description.getter();
          v390 = v389;
          v379(v359, v529);
          v391 = sub_10000668C(v388, v390, &v539);
          v390, v392, v393, v394, v395, v396, v397, v398;
          *(v362 + 34) = v391;
          v399 = v528;
          _os_log_impl(&_mh_execute_header, v528, v526, "[%s|%s] Failed to fetch moID of parentReminder {list.identifier: %{public}s, parentReminderIdentifier: %{public}s}", v362, 0x2Au);
          swift_arrayDestroy();

          v63 = v520;
          v66 = v529;

          v379(v137, v66);
        }

        else
        {

          v279 = v515;
          v515(v359, v66);
          v279(v357, v66);
          v279(v137, v66);
        }

        v136 = v532;
        v75 = v527;
        v139 = v530;
        v273 = v499;
        v277 = v498;
        v276 = v512;
        continue;
      }

      if ((v309 & 0xC000000000000001) == 0)
      {
        if (*((v309 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v318 = v309;
          v319 = *(v309 + 32);
          goto LABEL_84;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        swift_once();
        goto LABEL_4;
      }

      v318 = v309;
      v319 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_84:
      v327 = v319;
      v318, v320, v321, v322, v323, v324, v325, v326;

      v328 = [v327 ic_permanentObjectID];
      objc_autoreleasePoolPop(v291);
      v517 = v328;
      if (!v328)
      {
        goto LABEL_108;
      }

      v336 = v523;
      if (v523 >> 62)
      {
        v337 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v337 = *((v523 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v136 = v532;
      swift_beginAccess();
      swift_beginAccess();
      if (!v337)
      {
LABEL_110:
        v66 = v529;
        v515(v137, v529);

        v336, v400, v401, v402, v403, v404, v405, v406;
        v75 = v527;
        v63 = v520;
        v273 = v499;
        v277 = v498;
        v276 = v512;
        v139 = v530;
        continue;
      }

      v338 = 0;
      v519 = (v336 & 0xC000000000000001);
      v518 = v336 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v519)
        {
          v340 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v338 >= *(v518 + 16))
          {
            goto LABEL_132;
          }

          v340 = *&v336->clientIdentity[8 * v338 + 16];
        }

        v341 = v340;
        v342 = v338 + 1;
        if (__OFADD__(v338, 1))
        {
          goto LABEL_131;
        }

        v528 = objc_autoreleasePoolPush();
        v539 = 0;
        v531 = v341;
        v343 = [v307 existingObjectWithID:v341 error:&v539];
        v344 = v539;
        if (!v343)
        {
          v409 = v539;
          v336, v410, v411, v412, v413, v414, v415, v416;
          v417 = _convertNSErrorToError(_:)();

          swift_willThrow();
          goto LABEL_126;
        }

        v345 = v343;
        v346 = swift_dynamicCastClass();
        if (v346)
        {
          v347 = v346;
          v539 = 0;
          v348 = v344;
          v349 = [v307 existingObjectWithID:v517 error:&v539];
          v350 = v539;
          if (!v349)
          {
            v418 = v539;
            v523, v419, v420, v421, v422, v423, v424, v425;
            v417 = _convertNSErrorToError(_:)();

            swift_willThrow();
            goto LABEL_125;
          }

          v351 = v349;
          v352 = swift_dynamicCastClass();
          v353 = v350;
          if (!v352)
          {

            v136 = v532;
            v307 = v534;
            v336 = v523;
            goto LABEL_90;
          }

          [v347 setParentReminder:v352];
          v354 = *v524 + 1;
          v336 = v523;
          if (__OFADD__(*v524, 1))
          {
            goto LABEL_133;
          }

          *v524 = v354;
          if (v354 < 500)
          {

            v136 = v532;
            v307 = v534;
            goto LABEL_90;
          }

          v539 = 0;
          v307 = v534;
          if (([v534 save:&v539] & 1) == 0)
          {
            v466 = v539;
            v336, v467, v468, v469, v470, v471, v472, v473;
            v417 = _convertNSErrorToError(_:)();

            swift_willThrow();
LABEL_125:

LABEL_126:
            objc_autoreleasePoolPop(v528);

            v515(v533, v529);
            *v511 = v417;
            return;
          }

          v356 = v539;
          [v307 refreshAllObjects];

          *v524 = 0;
        }

        else
        {
          v355 = v344;
        }

        v136 = v532;
LABEL_90:
        objc_autoreleasePoolPop(v528);

        ++v338;
        v339 = v342 == v337;
        v137 = v533;
        if (v339)
        {
          goto LABEL_110;
        }

        continue;
      }
    }

    break;
  }

  v426 = v529;
  v521(v75, v516, v529);
  v427 = v497;
  v428 = v508;
  v491(v497, v136, v508);
  v429 = Logger.logObject.getter();
  v430 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v429, v430))
  {
    v431 = v75;
    v432 = swift_slowAlloc();
    v534 = swift_slowAlloc();
    v539 = v534;
    *v432 = 136316418;
    v535 = &_s48MigrateRemindersFromZREMCDOBJECTToZREMCDREMINDERON;
    sub_1000F5104(&unk_10094B200, &unk_1007AF310);
    v433 = String.init<A>(describing:)();
    v435 = v434;
    v436 = sub_10000668C(v433, v434, &v539);
    v435, v437, v438, v439, v440, v441, v442, v443;
    *(v432 + 4) = v436;
    *(v432 + 12) = 2080;
    *(v432 + 14) = sub_10000668C(0xD000000000000023, v494, &v539);
    *(v432 + 22) = 2082;
    sub_100507504(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v444 = dispatch thunk of CustomStringConvertible.description.getter();
    v446 = v445;
    v515(v431, v426);
    v447 = sub_10000668C(v444, v446, &v539);
    v446, v448, v449, v450, v451, v452, v453, v454;
    *(v432 + 24) = v447;
    *(v432 + 32) = 2050;
    *(v432 + 34) = v500;
    *(v432 + 42) = 2050;
    *(v432 + 44) = v509;
    *(v432 + 52) = 2048;
    v455 = v501;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v457 = v456;
    v458 = v490;
    v490(v455, v428);
    v458(v427, v428);
    *(v432 + 54) = v457;
    _os_log_impl(&_mh_execute_header, v429, v430, "[%s|%s] Did copy reminders from ZREMCDOBJECT SQL table to ZREMCDREMINDER SQL table {list.identifier: %{public}s, topLevelReminders.count: %{public}ld, subtasks.count: %{public}ld, cumulative elapsedSeconds: %f}", v432, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    v490(v427, v428);
    v515(v75, v426);
  }
}

void sub_1005055F0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v173 = *(v4 - 8);
  v174 = v4;
  __chkstk_darwin(v4, v5);
  v172 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v170 = *(v7 - 8);
  v171 = v7;
  __chkstk_darwin(v7, v8);
  v169 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v177 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v176 = &v166 - v16;
  __chkstk_darwin(v17, v18);
  v175 = &v166 - v19;
  __chkstk_darwin(v20, v21);
  v168 = &v166 - v22;
  __chkstk_darwin(v23, v24);
  v167 = &v166 - v25;
  __chkstk_darwin(v26, v27);
  v29 = &v166 - v28;
  *&v32 = __chkstk_darwin(v30, v31).n128_u64[0];
  v34 = &v166 - v33;
  [v2 setAllDay:{objc_msgSend(a1, "allDay", v32)}];
  [v2 setCkDirtyFlags:{objc_msgSend(a1, "ckDirtyFlags")}];
  v35 = [a1 ckIdentifier];
  [v2 setCkIdentifier:v35];

  [v2 setCkNeedsInitialFetchFromCloud:{objc_msgSend(a1, "ckNeedsInitialFetchFromCloud")}];
  [v2 setCkNeedsToBeFetchedFromCloud:{objc_msgSend(a1, "ckNeedsToBeFetchedFromCloud")}];
  v36 = [a1 ckParentReminderIdentifier];
  [v2 setCkParentReminderIdentifier:v36];

  v37 = [a1 ckServerRecordData];
  if (v37)
  {
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v39, v41);
  }

  else
  {
    v42.super.isa = 0;
  }

  [v2 setCkServerRecordData:v42.super.isa];

  v43 = [a1 ckServerShareData];
  if (v43)
  {
    v44 = v43;
    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v10;
    v48 = v47;

    v49.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v50 = v48;
    v10 = v46;
    sub_10001BBA0(v45, v50);
  }

  else
  {
    v49.super.isa = 0;
  }

  [v2 setCkServerShareData:v49.super.isa];

  v51 = [a1 ckZoneOwnerName];
  [v2 setCkZoneOwnerName:v51];

  [v2 setCompleted:{objc_msgSend(a1, "completed")}];
  v52 = [a1 completionDate];
  if (v52)
  {
    v53 = v52;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v34, v10);
  }

  else
  {
    v54.super.isa = 0;
  }

  [v2 setCompletionDate:v54.super.isa];

  v55 = [a1 contactHandles];
  if (v55)
  {
    v56 = v55;
    v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v57, v59);
  }

  else
  {
    v60.super.isa = 0;
  }

  [v2 setContactHandles:v60.super.isa];

  v61 = [a1 creationDate];
  if (v61)
  {
    v62 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v63.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v29, v10);
  }

  else
  {
    v63.super.isa = 0;
  }

  [v2 setCreationDate:v63.super.isa];

  v64 = [a1 daCalendarItemUniqueIdentifier];
  [v2 setDaCalendarItemUniqueIdentifier:v64];

  v65 = [a1 daPushKey];
  [v2 setDaPushKey:v65];

  v66 = [a1 daSyncToken];
  [v2 setDaSyncToken:v66];

  v67 = [a1 displayDateDate];
  if (v67)
  {
    v68 = v167;
    v69 = v67;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v70.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v68, v10);
  }

  else
  {
    v70.super.isa = 0;
  }

  [v2 setDisplayDateDate:v70.super.isa];

  [v2 setDisplayDateIsAllDay:{objc_msgSend(a1, "displayDateIsAllDay")}];
  v71 = [a1 displayDateTimeZone];
  [v2 setDisplayDateTimeZone:v71];

  [v2 setDisplayDateUpdatedForSecondsFromGMT:{objc_msgSend(a1, "displayDateUpdatedForSecondsFromGMT")}];
  v72 = [a1 dueDate];
  if (v72)
  {
    v73 = v168;
    v74 = v72;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v75.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v73, v10);
  }

  else
  {
    v75.super.isa = 0;
  }

  [v2 setDueDate:v75.super.isa];

  [v2 setEffectiveMinimumSupportedAppVersion:{objc_msgSend(a1, "effectiveMinimumSupportedAppVersion")}];
  v76 = [a1 externalIdentifier];
  [v2 setExternalIdentifier:v76];

  v77 = [a1 externalModificationTag];
  [v2 setExternalModificationTag:v77];

  [v2 setFlagged:{objc_msgSend(a1, "flagged")}];
  [v2 setIcsDisplayOrder:{objc_msgSend(a1, "icsDisplayOrder")}];
  v78 = [a1 icsUrl];
  if (v78)
  {
    v79 = v169;
    v80 = v78;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v81);
    v83 = v82;
    (*(v170 + 8))(v79, v171);
  }

  else
  {
    v83 = 0;
  }

  [v2 setIcsUrl:v83];

  v84 = [a1 identifier];
  if (v84)
  {
    v85 = v172;
    v86 = v84;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v87.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v173 + 8))(v85, v174);
  }

  else
  {
    v87.super.isa = 0;
  }

  [v2 setIdentifier:v87.super.isa];

  v88 = [a1 importedICSData];
  if (v88)
  {
    v89 = v88;
    v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    v93.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v90, v92);
  }

  else
  {
    v93.super.isa = 0;
  }

  [v2 setImportedICSData:v93.super.isa];

  v94 = [a1 lastBannerPresentationDate];
  if (v94)
  {
    v95 = v175;
    v96 = v94;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v97.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v95, v10);
  }

  else
  {
    v97.super.isa = 0;
  }

  [v2 setLastBannerPresentationDate:v97.super.isa];

  v98 = [a1 lastModifiedDate];
  if (v98)
  {
    v99 = v176;
    v100 = v98;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v101.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v99, v10);
  }

  else
  {
    v101.super.isa = 0;
  }

  [v2 setLastModifiedDate:v101.super.isa];

  [v2 setMarkedForDeletion:{objc_msgSend(a1, "markedForDeletion")}];
  [v2 setMinimumSupportedAppVersion:{objc_msgSend(a1, "minimumSupportedAppVersion")}];
  v102 = [a1 notes];
  [v2 setNotes:v102];

  v103 = [a1 notesDocument];
  if (v103)
  {
    v104 = v103;
    v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    v108.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v105, v107);
  }

  else
  {
    v108.super.isa = 0;
  }

  [v2 setNotesDocument:v108.super.isa];

  [v2 setPriority:{objc_msgSend(a1, "priority")}];
  v109 = [a1 resolutionTokenMap];
  [v2 setResolutionTokenMap:v109];

  v110 = [a1 resolutionTokenMap_v2_JSON];
  [v2 setResolutionTokenMap_v2_JSON:v110];

  v111 = [a1 resolutionTokenMap_v3_JSONData];
  if (v111)
  {
    v112 = v111;
    v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v116.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v113, v115);
  }

  else
  {
    v116.super.isa = 0;
  }

  [v2 setResolutionTokenMap_v3_JSONData:v116.super.isa];

  v117 = [a1 siriFoundInAppsData];
  if (v117)
  {
    v118 = v117;
    v119 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    v122.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v119, v121);
  }

  else
  {
    v122.super.isa = 0;
  }

  [v2 setSiriFoundInAppsData:v122.super.isa];

  [v2 setSpotlightIndexCount:{objc_msgSend(a1, "spotlightIndexCount")}];
  v123 = [a1 startDate];
  if (v123)
  {
    v124 = v177;
    v125 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v126.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v124, v10);
  }

  else
  {
    v126.super.isa = 0;
  }

  [v2 setStartDate:v126.super.isa];

  v127 = [a1 timeZone];
  [v2 setTimeZone:v127];

  v128 = [a1 title];
  [v2 setTitle:v128];

  v129 = [a1 titleDocument];
  if (v129)
  {
    v130 = v129;
    v131 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;

    v134.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v131, v133);
  }

  else
  {
    v134.super.isa = 0;
  }

  [v2 setTitleDocument:v134.super.isa];

  v135 = [a1 userActivity];
  if (v135)
  {
    v136 = v135;
    v137 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v139 = v138;

    v140.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v137, v139);
  }

  else
  {
    v140.super.isa = 0;
  }

  [v2 setUserActivity:v140.super.isa];

  v141 = [a1 account];
  [v2 setAccount:v141];

  v142 = [a1 alarmStorage];
  [v2 setAlarmStorage:v142];

  isa = [a1 assignments];
  if (isa)
  {
    sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
    sub_1003DB488();
    v144 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Set._bridgeToObjectiveC()().super.isa;
    v144, v145, v146, v147, v148, v149, v150, v151;
  }

  [v2 setAssignments:isa];

  v152 = [a1 attachments];
  [v2 setAttachments:v152];

  v153 = [a1 hashtags];
  if (v153)
  {
    sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
    sub_1003DB488();
    v154 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v153 = Set._bridgeToObjectiveC()().super.isa;
    v154, v155, v156, v157, v158, v159, v160, v161;
  }

  [v2 setHashtags:v153];

  v162 = [a1 list];
  [v2 setList:v162];

  v163 = [a1 parentAccount];
  [v2 setParentAccount:v163];

  v164 = [a1 recurrenceRules];
  [v2 setRecurrenceRules:v164];

  v165 = [a1 sharedToMeReminderPlaceholder];
  [v2 setSharedToMeReminderPlaceholder:v165];
}

id sub_100506898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = (a5)(0, a2);
  return objc_msgSendSuper2(&v8, "initWithEntity:insertIntoManagedObjectContext:", a3, a4);
}

id sub_100506910(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100506974()
{
  v1 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v45 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  [v12 setResultType:2];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100791300;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x696669746E656469;
  *(v13 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13, v15, v16, v17, v18, v19, v20, v21;
  [v12 setPropertiesToFetch:isa];

  v22 = v12;
  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v23 = NSManagedObjectContext.fetch<A>(_:)();
  if (v0)
  {

    return;
  }

  v31 = v6;
  v50 = v9;
  if (v23 >> 62)
  {
    goto LABEL_27;
  }

  v32 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v46 = 0;
  if (v32)
  {
LABEL_5:
    v33 = 0;
    v53 = v23 & 0xFFFFFFFFFFFFFF8;
    v54 = v23 & 0xC000000000000001;
    v34 = (v31 + 56);
    v47 = v31;
    v48 = (v31 + 32);
    v49 = (v31 + 48);
    v58 = &_swiftEmptyArrayStorage;
    v51 = v32;
    v52 = v22;
    while (1)
    {
      if (v54)
      {
        v35 = v23;
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v53 + 16))
        {
          goto LABEL_26;
        }

        v35 = v23;
        v23 = *(v23 + 8 * v33 + 32);
      }

      v31 = v23;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v44 = v23;
        v32 = _CocoaArrayWrapper.endIndex.getter();
        v23 = v44;
        v46 = 0;
        if (!v32)
        {
          break;
        }

        goto LABEL_5;
      }

      *&v55 = 0x696669746E656469;
      *(&v55 + 1) = 0xEA00000000007265;
      v37 = [v23 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v37)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v55 = 0u;
        v56 = 0u;
      }

      v57[0] = v55;
      v57[1] = v56;
      if (*(&v56 + 1))
      {
        v38 = swift_dynamicCast();
        (*v34)(v4, v38 ^ 1u, 1, v5);
        if ((*v49)(v4, 1, v5) != 1)
        {
          v39 = *v48;
          (*v48)(v50, v4, v5);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v40 = v58;
          }

          else
          {
            v40 = sub_100366328(0, *v58->clientIdentity + 1, 1, v58);
          }

          v42 = *v40->clientIdentity;
          v41 = *&v40->clientIdentity[8];
          v31 = (v42 + 1);
          if (v42 >= v41 >> 1)
          {
            v40 = sub_100366328((v41 > 1), v42 + 1, 1, v40);
          }

          *v40->clientIdentity = v31;
          v43 = (v47[80] + 32) & ~v47[80];
          v58 = v40;
          v39(v40 + v43 + *(v47 + 9) * v42);
          goto LABEL_8;
        }
      }

      else
      {
        sub_1000050A4(v57, &qword_100939ED0, &qword_100791B10);
        (*v34)(v4, 1, 1, v5);
      }

      sub_1000050A4(v4, &unk_100939D90, "8\n\r");
LABEL_8:
      ++v33;
      v22 = v52;
      v23 = v35;
      if (v36 == v51)
      {
        goto LABEL_29;
      }
    }
  }

  v58 = &_swiftEmptyArrayStorage;
LABEL_29:
  v23, v24, v25, v26, v27, v28, v29, v30;
}

unint64_t sub_100506EC4(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  [v6 setResultType:0];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = 0x696669746E656469;
  *(v7 + 40) = 0xEA00000000007265;
  v8 = type metadata accessor for UUID();
  *(v7 + 88) = v8;
  v9 = sub_1000103CC((v7 + 64));
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  v10 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v12, v13, v14, v15, v16, v17, v18;
  v19 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

  [v6 setPredicate:v19];
  [v6 setFetchLimit:1];
  type metadata accessor for REMCDListInModelVersionV5();
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    result, v21, v22, v23, v24, v25, v26, v27;

    return 0;
  }

  v37 = result;
  v38 = _CocoaArrayWrapper.endIndex.getter();
  result = v37;
  if (!v38)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v28 = result;
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = result;
    v29 = *(result + 32);
LABEL_8:
    v2 = v29;
    v28, v30, v31, v32, v33, v34, v35, v36;

    return v2;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100507158(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100506EC4(a1);
  if (!v2)
  {
    a2 = &_swiftEmptyArrayStorage;
    if (v10)
    {
      v18 = v10;
      v19 = 0;
      v11 = [v10 reminders];
      if (v11)
      {
        v16 = v11;
        v17 = v6;
        v25 = &_swiftEmptyArrayStorage;
        NSOrderedSet.makeIterator()();
        sub_100507504(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
        dispatch thunk of IteratorProtocol.next()();
        while (v24)
        {
          sub_100005EE0(&v23, v22);
          sub_100005EF0(v22, v21);
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          if (swift_dynamicCast())
          {
            v12 = v20;
            v13 = [v20 objectID];

            sub_10000607C(v22);
            if (v13)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              a2 = v25;
            }
          }

          else
          {
            sub_10000607C(v22);
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        (*(v17 + 8))(v9, v5);
      }
    }
  }

  return a2;
}

void sub_100507400(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v4 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  *a1 = v4;
  if (v4 >= 500)
  {
    v7[0] = 0;
    if ([a2 save:v7])
    {
      v5 = v7[0];
      [a2 refreshAllObjects];
      swift_beginAccess();
      *a1 = 0;
    }

    else
    {
      v6 = v7[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_100507504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10050755C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B210);
  v1 = sub_100006654(v0, qword_10094B210);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_100507624()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v9)
  {
    v11 = sub_1005091FC();
    v12 = [v11 bundlePath];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = objc_allocWithZone(CLLocationManager);
    v16 = String._bridgeToObjectiveC()();
    v14, v17, v18, v19, v20, v21, v22, v23;
    v24 = [v15 initWithEffectiveBundlePath:v16 delegate:v0 onQueue:v8];

    v25 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager);
    *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager) = v24;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1005097D4(result);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005077FC(void *a1)
{
  v18 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC7remindd17RDLocationManager_queue];
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v3 + 104);
  (v10)(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v3 + 8);
  v13(v7, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *v7 = v11;
  v10(v7, v9, v2);
  v14 = _dispatchPreconditionTest(_:)();
  v13(v7, v2);
  if ((v14 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = *&v1[OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager];
  if (v15)
  {
    v16 = v15;
    sub_1005079A0(v16, v1, v18);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1005079A0(void *a1, void *a2, void *a3)
{
  v5.super.super.isa = sub_100508670(a3).super.super.isa;
  [(objc_class *)v5.super.super.isa setOnBehalfOfBundleId:REMUniversalAppBundleIdentifier];
  if (qword_100936368 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094B210);
  v34 = v5.super.super.isa;
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_10050992C(v34);
    v14 = v13;
    v15 = sub_10000668C(v12, v13, &v35);
    v14, v16, v17, v18, v19, v20, v21, v22;
    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    [v8 authorizationStatus];
    v23 = CLAuthorizationStatus.description.getter();
    v25 = v24;
    v26 = sub_10000668C(v23, v24, &v35);
    v25, v27, v28, v29, v30, v31, v32, v33;
    *(v11 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v9, v10, "startMonitoring: %s, authStatus: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  [v8 startMonitoringForRegion:v34];
}

void sub_100507BB0(void *a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v18 = a1;
  v19 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v4 + 104);
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v12 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v4 + 8);
  v14(v8, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *v8 = v12;
  v11(v8, v10, v3);
  v15 = _dispatchPreconditionTest(_:)();
  v14(v8, v3);
  if ((v15 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = *(v2 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager);
  if (v16)
  {
    v17 = v16;
    sub_100507D54(v17, v18, v19, v2);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100507D54(void *a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4)
{
  v5 = [a1 monitoredRegions];
  sub_1000060C8(0, &qword_100946540, CLRegion_ptr);
  sub_10050AE3C();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = a4;
  v57 = v6;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v7 = v61;
    v8 = v62;
    v9 = v63;
    v10 = v64;
    v11 = v65;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v13 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v6 + 56);

    v9 = v13;
    v10 = 0;
    v7 = v6;
  }

  v16 = (v9 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      while (1)
      {
        v22 = v7;
        v23 = v21;
        v24 = [v21 identifier];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (v25 == a2 && v27 == a3)
        {
          break;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v27, v35, v36, v37, v38, v39, v40, v41;
        if (v34)
        {
          goto LABEL_25;
        }

        v10 = v19;
        v11 = v20;
        v7 = v22;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v21 = v60;
          v19 = v10;
          v20 = v11;
          if (v60)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v27, v28, a2, a3, v29, v30, v31, v32;
LABEL_25:
      sub_10001B860(v22);
      v57, v49, v50, v51, v52, v53, v54, v55;
      sub_100508000(v23);
    }

    else
    {
LABEL_23:
      sub_10001B860(v7);
      v57, v42, v43, v44, v45, v46, v47, v48;
    }
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_23;
      }

      v18 = *(v8 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100508000(void *a1)
{
  v35 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC7remindd17RDLocationManager_queue];
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v3 + 104);
  (v10)(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v3 + 8);
  v13(v7, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v7 = v11;
  v10(v7, v9, v2);
  v14 = _dispatchPreconditionTest(_:)();
  v13(v7, v2);
  if ((v14 & 1) == 0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v15 = *&v1[OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = qword_100936368;
  v2 = v15;
  if (v16 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10094B210);
  v18 = v35;
  v19 = v1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136315138;
    v24 = sub_10050992C(v18);
    v26 = v25;
    v27 = sub_10000668C(v24, v25, &v36);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "stopMonitoring: %s", v22, 0xCu);
    sub_10000607C(v23);
  }

  [v2 stopMonitoringForRegion:v18];
}

uint64_t sub_1005082D8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v2 + 104);
  (v9)(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v2 + 8);
  result = v12(v6, v1);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *v6 = v10;
  v9(v6, v8, v1);
  v14 = _dispatchPreconditionTest(_:)();
  result = v12(v6, v1);
  if ((v14 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v0 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager);
  if (v15)
  {
    v16 = v15;
    v17 = [v16 monitoredRegions];
    sub_1000060C8(0, &qword_100946540, CLRegion_ptr);
    sub_10050AE3C();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1005084D4(uint64_t a1, SEL *a2)
{
  v18 = a2;
  v19 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC7remindd17RDLocationManager_queue];
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v4 + 104);
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v12 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v4 + 8);
  result = v14(v8, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *v8 = v12;
  v11(v8, v10, v3);
  v16 = _dispatchPreconditionTest(_:)();
  result = v14(v8, v3);
  if ((v16 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = *&v2[OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager];
  if (v17)
  {
    return [v2 *v18];
  }

LABEL_7:
  __break(1u);
  return result;
}

CLCircularRegion sub_100508670(void *a1)
{
  [objc_opt_self() minimumRegionMonitoringDistance];
  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    [v5 radius];
    if (v7 < v3)
    {
      if (qword_100936368 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006654(v8, qword_10094B210);
      v9 = v6;
      v10 = v1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v13 = 136315394;
        v14 = Double.description.getter();
        v16 = v15;
        v17 = sub_10000668C(v14, v15, &v38);
        v16, v18, v19, v20, v21, v22, v23, v24;
        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        v25 = sub_10050992C(v5);
        v27 = v26;
        v28 = sub_10000668C(v25, v26, &v38);
        v27, v29, v30, v31, v32, v33, v34, v35;
        *(v13 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v11, v12, "Radius less than minimum:%s for regionToMonitor:%s", v13, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000060C8(0, &unk_10094B2D0, CLCircularRegion_ptr);
      return CLCircularRegion.init(circularRegion:radius:)(v5, v3);
    }
  }

  return a1;
}

id sub_10050890C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDLocationManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100508A60(uint64_t a1, void *a2, const char *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, void (*a6)(id, uint64_t))
{
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_10094B210);
  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, a3, v24, 0xCu);
    sub_100039860(v25);
  }

  if (qword_100935FC8 != -1)
  {
    swift_once();
  }

  v28 = xmmword_1007AF370;
  v30 = 0;
  v31[0] = 0;
  v29 = 0;
  *(v31 + 6) = 0;
  sub_1000081D8(&v28, a4, a5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a6(v21, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100508F48(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if (v10)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10094B210);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446210;
    [v13 authorizationStatus];
    v18 = CLAuthorizationStatus.description.getter();
    v20 = v19;
    v21 = sub_10000668C(v18, v19, &v30);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "didChangeAuthorization: {status: %{public}s}", v16, 0xCu);
    sub_10000607C(v17);
  }
}

void *sub_1005091FC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v67 - v7;
  __chkstk_darwin(v9, v10);
  v12 = &v67 - v11;
  v13 = [objc_opt_self() locationBundleURL];
  if (v13)
  {
    v14 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = objc_allocWithZone(NSBundle);
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    v19 = [v15 initWithURL:v17];

    if (v19)
    {
      if (qword_100936368 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_10094B210);
      (*(v1 + 16))(v8, v12, v0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v69 = v19;
        v70 = v24;
        v25 = v0;
        v26 = v24;
        *v23 = 136315138;
        v27 = URL.path.getter();
        v29 = v28;
        v68 = *(v1 + 8);
        v30 = v8;
        v31 = v25;
        v19 = v69;
        v68(v30, v31);
        v32 = sub_10000668C(v27, v29, &v70);
        v29, v33, v34, v35, v36, v37, v38, v39;
        *(v23 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v21, v22, "daemonLocationBundle() successfully obtained from from %s", v23, 0xCu);
        sub_10000607C(v26);

        v68(v12, v31);
      }

      else
      {

        v64 = *(v1 + 8);
        v64(v8, v0);
        v64(v12, v0);
      }

      return v19;
    }

    else
    {
      if (qword_100936368 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006654(v46, qword_10094B210);
      (*(v1 + 16))(v4, v12, v0);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = v69;
        *v49 = 136315138;
        v68 = URL.path.getter();
        v50 = v0;
        v52 = v51;
        v53 = *(v1 + 8);
        v53(v4, v50);
        v54 = v53;
        v55 = sub_10000668C(v68, v52, &v70);
        v56 = v52;
        v0 = v50;
        v56, v57, v58, v59, v60, v61, v62, v63;
        *(v49 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v47, v48, "daemonLocationBundle() cannot locate bundle at %s, using Bundle.main instead. Location services will not work. This is expected for simulator.", v49, 0xCu);
        sub_10000607C(v69);
      }

      else
      {

        v65 = *(v1 + 8);
        v65(v4, v0);
        v54 = v65;
      }

      v66 = [objc_opt_self() mainBundle];
      v54(v12, v0);
      return v66;
    }
  }

  else
  {
    if (qword_100936368 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_10094B210);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "daemonLocationBundle() does not have a URL for location bundle, using Bundle.main instead. Location services will not work. This is expected for simulator.", v43, 2u);
    }

    v44 = [objc_opt_self() mainBundle];

    return v44;
  }
}

uint64_t sub_1005097D4(char *a1)
{
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094D320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "locationManagerDidStart, reconciling all geofences", v5, 2u);
  }

  v6 = *&a1[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  sub_10059AB5C(v6, 0xD000000000000017, 0x80000001007FB930, sub_10050AEA4, v7);
}

uint64_t sub_10050992C(void *a1)
{
  v2 = [a1 conservativeEntry];
  _StringGuts.grow(_:)(58);
  v3._countAndFlagsBits = 60;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16._object = 0xEF3A7972746E456ELL;
  v16._countAndFlagsBits = 0x4F796669746F6E20;
  String.append(_:)(v16);
  v17 = [a1 notifyOnEntry];
  v18 = v17 == 0;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);
  v20, v22, v23, v24, v25, v26, v27, v28;
  v29._object = 0xEE003A746978456ELL;
  v29._countAndFlagsBits = 0x4F796669746F6E20;
  String.append(_:)(v29);
  v30 = [a1 notifyOnExit];
  v31 = v30 == 0;
  if (v30)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v31)
  {
    v33 = 0xE500000000000000;
  }

  else
  {
    v33 = 0xE400000000000000;
  }

  v34 = v33;
  String.append(_:)(*&v32);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v42._object = 0x80000001007FB8C0;
  v42._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v42);
  if (v2)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v2)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  v45 = v44;
  String.append(_:)(*&v43);
  v44, v46, v47, v48, v49, v50, v51, v52;
  v53._countAndFlagsBits = 62;
  v53._object = 0xE100000000000000;
  String.append(_:)(v53);
  return 0;
}

uint64_t sub_100509B0C(void *a1, char *a2)
{
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094D320);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDLocationAlarmProducer didEnterRegion: %@", v8, 0xCu);
    sub_100039860(v9);
  }

  v11 = *&a2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v5;
  v13 = v5;
  v14 = a2;
  sub_10059AB5C(v11, 0x7265746E45646964, 0xEE006E6F69676552, sub_10050AE34, v12);
}

uint64_t sub_100509CC8(void *a1, char *a2)
{
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094D320);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDLocationAlarmProducer didExitRegion: %@", v8, 0xCu);
    sub_100039860(v9);
  }

  v11 = *&a2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v5;
  v13 = v5;
  v14 = a2;
  sub_10059AB5C(v11, 0x5274697845646964, 0xED00006E6F696765, sub_10050AE2C, v12);
}

uint64_t sub_100509E84(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, const char *a5, uint64_t a6, _TtC7remindd19RDXPCStorePerformer *a7, void (*a8)(id, uint64_t), ...)
{
  if (qword_100936368 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094B210);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  a2, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v16, v17))
  {
    v25 = swift_slowAlloc();
    v76 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v29 = swift_slowAlloc();
    v78 = v29;
    *v25 = 136446210;
    *(v25 + 4) = sub_10000668C(a1, a2, &v78);
    _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd.RDLocationManagerDelegate.%{public}s}", v25, 0xCu);
    sub_10000607C(v29);
    a8 = v28;
    a7 = v27;
    a6 = v26;
    a5 = v76;
  }

  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v79, v30, v31, v32, v33, v34, v35, v36;
  v78 = 0xD00000000000002CLL;
  v79 = 0x80000001007FB900;
  v37._countAndFlagsBits = a1;
  v37._object = a2;
  String.append(_:)(v37);
  v38 = v79;
  String.utf8CString.getter();
  v38, v39, v40, v41, v42, v43, v44, v45;
  v46 = os_transaction_create();

  if (v46)
  {
    sub_100508A60(a3, a4, a5, a6, a7, a8);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    a2, v49, v50, v51, v52, v53, v54, v55;
    if (os_log_type_enabled(v47, v48))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v78 = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_10000668C(a1, a2, &v78);
      _os_log_impl(&_mh_execute_header, v47, v48, "os_transaction RELEASE {name: com.apple.remindd.RDLocationManagerDelegate.%{public}s}", v56, 0xCu);
      sub_10000607C(v57);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    a2, v61, v62, v63, v64, v65, v66, v67;
    if (os_log_type_enabled(v59, v60))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = a1;
      v71 = a5;
      v72 = a6;
      v73 = a7;
      v74 = a8;
      v75 = v69;
      v78 = v69;
      *v68 = 136446210;
      *(v68 + 4) = sub_10000668C(v70, a2, &v78);
      _os_log_impl(&_mh_execute_header, v59, v60, "RDLocationManagerDelegate: Couldn't create os_transaction_t for %{public}s", v68, 0xCu);
      sub_10000607C(v75);
      a8 = v74;
      a7 = v73;
      a6 = v72;
      a5 = v71;
    }

    return sub_100508A60(a3, a4, a5, a6, a7, a8);
  }
}

void sub_10050A2C0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4)
{
  if (qword_100936368 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094B210);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  a2, v11, v12, v13, v14, v15, v16, v17;
  if (os_log_type_enabled(v9, v10))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v59 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_10000668C(a1, a2, &v59);
    _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction INIT {name: com.apple.remindd.RDLocationManagerDelegate.%{public}s}", v18, 0xCu);
    sub_10000607C(v19);
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v60, v20, v21, v22, v23, v24, v25, v26;
  v59 = 0xD00000000000002CLL;
  v60 = 0x80000001007FB900;
  v27._countAndFlagsBits = a1;
  v27._object = a2;
  String.append(_:)(v27);
  v28 = v60;
  String.utf8CString.getter();
  v28, v29, v30, v31, v32, v33, v34, v35;
  v36 = os_transaction_create();

  if (v36)
  {
    sub_100508F48(a3, a4);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    a2, v39, v40, v41, v42, v43, v44, v45;
    if (os_log_type_enabled(v37, v38))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v59 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_10000668C(a1, a2, &v59);
      _os_log_impl(&_mh_execute_header, v37, v38, "os_transaction RELEASE {name: com.apple.remindd.RDLocationManagerDelegate.%{public}s}", v46, 0xCu);
      sub_10000607C(v47);
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    a2, v50, v51, v52, v53, v54, v55, v56;
    if (os_log_type_enabled(v48, v49))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_10000668C(a1, a2, &v59);
      _os_log_impl(&_mh_execute_header, v48, v49, "RDLocationManagerDelegate: Couldn't create os_transaction_t for %{public}s", v57, 0xCu);
      sub_10000607C(v58);
    }

    sub_100508F48(a3, a4);
  }
}

void sub_10050A684(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if (v11)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10094B210);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = a1;
    v33 = v19;
    *v17 = 136315394;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = sub_10000668C(v20, v21, &v33);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v14;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "didDetermineState: {state=%s, region=%@}", v17, 0x16u);
    sub_100039860(v18);

    sub_10000607C(v19);
  }
}

void sub_10050A90C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10094B210);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v27);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "didFailWithError: %s", v13, 0xCu);
    sub_10000607C(v14);
  }
}

void sub_10050AB54(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if (v10)
  {
    if (qword_100936368 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10094B210);
  v13 = a1;
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v16 = 136315394;
    if (a1)
    {
      v17 = [v13 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v21 = sub_10000668C(v18, v20, &v41);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    v31 = v30;
    v32 = sub_10000668C(v29, v30, &v41);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v16 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v14, v15, "monitoringDidFailFor: {region=%s, error=%s}", v16, 0x16u);
    swift_arrayDestroy();
  }
}