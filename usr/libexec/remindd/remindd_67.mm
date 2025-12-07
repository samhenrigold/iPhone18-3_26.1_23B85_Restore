void sub_10061B198(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v589 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v587 = &v564 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v584 = &v564 - v14;
  v15 = type metadata accessor for DateComponents();
  v595 = *(v15 - 8);
  __chkstk_darwin(v15, v16);
  v590 = &v564 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v599 = type metadata accessor for UUID();
  v594 = *(v599 - 8);
  __chkstk_darwin(v599, v18);
  v588 = &v564 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v598 = &v564 - v22;
  v23 = a3[3];
  v600 = a3[2];
  v592 = a3;
  v583 = a3[4];
  if (qword_100936008 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  v580 = type metadata accessor for Logger();
  v24 = sub_100006654(v580, qword_100945730);

  v593 = v24;
  v25 = Logger.logObject.getter();
  LOBYTE(v26) = static os_log_type_t.info.getter();
  v23, v27, v28, v29, v30, v31, v32, v33;
  v34 = os_log_type_enabled(&v25->super, v26);
  v35 = a1 >> 62;
  v36 = v5;
  v596 = v6;
  v586 = v15;
  v601 = a1;
  v597 = (a1 >> 62);
  if (v34)
  {
    v15 = swift_slowAlloc();
    v602[0] = swift_slowAlloc();
    *v15 = 136446978;
    *(v15 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v602);
    *(v15 + 12) = 2048;
    if (!(a1 >> 62))
    {
      v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_141;
  }

  a1, v58, v59, v60, v61, v62, v63, v64;
  while (1)
  {
    v23 = v35 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      break;
    }

    v602[0] = &_swiftEmptyArrayStorage;
    v25 = v602;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v6 = a1 & 0xC000000000000001;
      v600 = (a1 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v5 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v6)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= v600[2])
          {
            goto LABEL_135;
          }

          v65 = *&a1->clientIdentity[8 * v15 + 16];
        }

        v66 = v65;
        v67 = sub_1005E3810([v65 remObjectID], &qword_100940350, off_1008D4130);
        if (v36)
        {

          return;
        }

        LOBYTE(v26) = v67;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v601;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v15;
        if (v5 == v23)
        {
          v23 = v602[0];
          v5 = 0;
          v6 = v596;
          v35 = v597;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    v44 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v15 + 14) = v44;
    a1, v37, v38, v39, v40, v41, v42, v43;
    *(v15 + 22) = 2082;
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v45 = [swift_getObjCClassFromMetadata() description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = sub_10000668C(v46, v48, v602);
    v48, v50, v51, v52, v53, v54, v55, v56;
    *(v15 + 24) = v49;
    v57 = v600;
    a1 = v601;
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_10000668C(v57, v23, v602);
    _os_log_impl(&_mh_execute_header, &v25->super, v26, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
    swift_arrayDestroy();

    v5 = v36;
    v6 = v596;
    v35 = v597;
  }

  v23 = &_swiftEmptyArrayStorage;
LABEL_21:
  v68 = *(v6 + 96);
  if (v68 > 1)
  {
    if ((v68 - 2) >= 3 && v68 != 4499 && v68 != 4599)
    {
      goto LABEL_144;
    }

LABEL_28:
    v69 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v69, v15))
    {
      v70 = swift_slowAlloc();
      v585 = v23;
      v71 = v70;
      v72 = swift_slowAlloc();
      v602[0] = v72;
      *v71 = 136315138;
      v73 = [objc_opt_self() cdEntityName];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v35;
      v76 = v75;

      v77 = sub_10000668C(v74, v76, v602);
      v78 = v76;
      v35 = v26;
      v78, v79, v80, v81, v82, v83, v84, v85;
      *(v71 + 4) = v77;
      a1 = v601;
      _os_log_impl(&_mh_execute_header, v69, v15, "Performing fetch during upsert {CDType: %s}", v71, 0xCu);
      sub_10000607C(v72);

      v23 = v585;
    }

    v86 = sub_100661EE4(v23, v592);
    if (v5)
    {
      goto LABEL_124;
    }

    goto LABEL_36;
  }

  if (!v68)
  {
    goto LABEL_28;
  }

  if (v68 != 1)
  {
LABEL_144:
    v562 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v563 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v562, v563);
    __break(1u);
    return;
  }

  v95 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v95, v15))
  {
    v96 = swift_slowAlloc();
    v585 = v23;
    v97 = v96;
    v98 = swift_slowAlloc();
    v602[0] = v98;
    *v97 = 136315138;
    v99 = [objc_opt_self() cdEntityName];
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v35;
    v102 = v101;

    v103 = sub_10000668C(v100, v102, v602);
    v104 = v102;
    v35 = v26;
    v104, v105, v106, v107, v108, v109, v110, v111;
    *(v97 + 4) = v103;
    a1 = v601;
    _os_log_impl(&_mh_execute_header, v95, v15, "Skipping fetch during upsert {CDType: %s}", v97, 0xCu);
    sub_10000607C(v98);

    v23 = v585;
  }

  v86 = sub_10038F8E8(&_swiftEmptyArrayStorage);
LABEL_36:
  v25 = v86;
  if (v35)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (!v36)
    {
LABEL_123:
      v25, v87, v88, v89, v90, v91, v92, v93;
LABEL_124:
      v23, v87, v88, v89, v90, v91, v92, v93;
      return;
    }
  }

  else
  {
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_123;
    }
  }

  v112 = 0;
  v578 = a1 & 0xC000000000000001;
  v577 = a1 & 0xFFFFFFFFFFFFFF8;
  v576 = &a1->clientIdentity[16];
  v597 = (v594 + 1);
  v574 = (v594 + 7);
  v573 = (v594 + 6);
  v594 = (v595 + 8);
  *&v94 = 136446978;
  v572 = v94;
  *&v94 = 136446210;
  v571 = v94;
  *&v94 = 136447490;
  v570 = v94;
  *&v94 = 136447234;
  v564 = v94;
  *&v94 = 136446466;
  v565 = v94;
  v585 = v23;
  v582 = v25;
  v575 = v36;
  while (1)
  {
    if (v578)
    {
      v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v114 = __OFADD__(v112, 1);
      v115 = v112 + 1;
      if (v114)
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v112 >= *(v577 + 16))
      {
        goto LABEL_140;
      }

      v113 = *&v576[8 * v112];
      v114 = __OFADD__(v112, 1);
      v115 = v112 + 1;
      if (v114)
      {
        goto LABEL_139;
      }
    }

    v116 = v113;
    v117 = sub_1005E3810([v116 remObjectID], &qword_100940350, off_1008D4130);
    if (v5)
    {
      v25, v118, v119, v120, v121, v122, v123, v124;
      v23, v527, v528, v529, v530, v531, v532, v533;

LABEL_133:
      return;
    }

    v591 = 0;
    v581 = v117;
    v579 = v115;
    v600 = v116;

    v125 = [*(v589 + 16) uuid];
    v126 = v598;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v127 = UUID.uuidString.getter();
    v129 = v128;
    v130 = *v597;
    v131 = v599;
    (*v597)(v126, v599);
    v132 = [objc_opt_self() localInternalAccountID];
    v133 = [v132 uuid];

    v134 = v588;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v135 = UUID.uuidString.getter();
    v137 = v136;
    v595 = v130;
    (v130)(v134, v131);
    v145 = v129;
    if (v127 == v135 && v129 == v137)
    {
      v137, v138, v139, v140, v141, v142, v143, v144;
      v146 = v596;
      v26 = v581;
    }

    else
    {
      v147 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v137, v148, v149, v150, v151, v152, v153, v154;
      v146 = v596;
      v26 = v581;
      if ((v147 & 1) == 0)
      {
        v156 = v582;
        v5 = v591;
        goto LABEL_59;
      }
    }

    v155 = *(v146 + 68);
    v156 = v582;
    v116 = v600;
    v157 = v591;
    if (v155 >> 14 >= 2)
    {
      if (v155 >> 14 == 2)
      {
        v158 = *(v146 + 64) | (*(v146 + 68) << 32);
      }

      else
      {
        v158 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v158 = 2147483519;
    }

    sub_100009A40(2, v158);
    v5 = v157;
    if (v157)
    {
      v145, v159, v160, v161, v162, v163, v164, v165;

      v156, v548, v549, v550, v551, v552, v553, v554;
      v585, v555, v556, v557, v558, v559, v560, v561;
      goto LABEL_133;
    }

LABEL_59:
    v166._rawValue = &off_1008E0E30;
    v15 = sub_1005F716C(v166, &qword_100940350, off_1008D4130);
    if (*v156->clientIdentity)
    {
      v174 = sub_100393C74();
      if (v167)
      {
        v175 = v174;
        v145, v167, v168, v169, v170, v171, v172, v173;
        v176 = *(*&v156->clientIdentity[40] + 8 * v175);
        v177 = v26;
        v178 = Logger.logObject.getter();
        v179 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v178, v179))
        {
          v15 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v602[0] = v181;
          *v15 = v565;
          *(v15 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v602);
          *(v15 + 12) = 2114;
          *(v15 + 14) = v177;
          *v180 = v177;
          v182 = v177;
          _os_log_impl(&_mh_execute_header, v178, v179, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v15, 0x16u);
          sub_1000050A4(v180, &unk_100938E70, &unk_100797230);
          a1 = v601;

          sub_10000607C(v181);
        }

        else
        {
        }

        goto LABEL_43;
      }
    }

    if (v15 == 2)
    {
      goto LABEL_131;
    }

    if (v15)
    {
      v183 = 0x706D6F4365746164;
    }

    else
    {
      v183 = 0x44497463656A626FLL;
    }

    if (v15)
    {
      v184 = 0xEE0073746E656E6FLL;
    }

    else
    {
      v184 = 0xE800000000000000;
    }

    v185 = 0xE800000000000000;
    if (v183 == 0x44497463656A626FLL && v184 == 0xE800000000000000)
    {
LABEL_72:
      v186 = v584;
      v145, v167, v168, v169, v170, v171, v172, v173;
      v185, v187, v188, v189, v190, v191, v192, v193;
      v184, v194, v195, v196, v197, v198, v199, v200;
      goto LABEL_78;
    }

    v201 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE800000000000000, v202, v203, v204, v205, v206, v207, v208;
    v184, v209, v210, v211, v212, v213, v214, v215;
    if ((v201 & 1) == 0)
    {
      v185 = 0xEE0073746E656E6FLL;
      if (v183 == 0x706D6F4365746164 && v184 == 0xEE0073746E656E6FLL)
      {
        goto LABEL_72;
      }

      v216 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xEE0073746E656E6FLL, v217, v218, v219, v220, v221, v222, v223;
      v184, v224, v225, v226, v227, v228, v229, v230;
      if ((v216 & 1) == 0)
      {
LABEL_131:
        v585, v167, v168, v169, v170, v171, v172, v173;
        v145, v534, v535, v536, v537, v538, v539, v540;
        v156, v541, v542, v543, v544, v545, v546, v547;
        [objc_opt_self() noSuchObjectErrorWithObjectID:v26];
        swift_willThrow();

        return;
      }
    }

    v145, v167, v168, v169, v170, v171, v172, v173;
    v186 = v584;
LABEL_78:
    v231 = *(v146 + 88);
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v233 = [ObjCClassFromMetadata entity];
    v234 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v233 insertIntoManagedObjectContext:v231];
    v235 = v583;
    [v231 assignObject:v234 toPersistentStore:v235];

    v236 = v234;
    v237 = [v26 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v238 = v599;
    (*v574)(v186, 0, 1, v599);
    v239 = v587;
    sub_10018E470(v186, v587);
    LODWORD(v238) = (*v573)(v239, 1, v238);
    v240 = v236;
    isa = 0;
    if (v238 != 1)
    {
      v242 = v587;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v595)(v242, v599);
    }

    [v240 setIdentifier:{isa, v564}];

    sub_1000050A4(v186, &unk_100939D90, "8\n\r");
    v243 = v26;

    v244 = v240;
    v245 = Logger.logObject.getter();
    v246 = v146;
    v247 = static os_log_type_t.default.getter();

    v248 = os_log_type_enabled(v245, v247);
    v581 = v243;
    if (v248)
    {
      v249 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v591 = swift_slowAlloc();
      v607 = v591;
      *v249 = v572;
      *(v249 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v607);
      *(v249 + 12) = 2082;
      v250 = *(v246 + 40);
      v605 = *(v246 + 24);
      *v606 = v250;
      *&v606[14] = *(v246 + 54);
      sub_100009DAC(&v605, v602);
      v251 = sub_1000063E8();
      v253 = v252;
      sub_1005812D4(&v605);
      v254 = sub_10000668C(v251, v253, &v607);
      v253, v255, v256, v257, v258, v259, v260, v261;
      *(v249 + 14) = v254;
      *(v249 + 22) = 2114;
      *(v249 + 24) = v243;
      *v26 = v243;
      *(v249 + 32) = 2112;
      v262 = v243;
      v263 = [v244 objectID];
      *(v249 + 34) = v263;
      v26[1] = v263;
      _os_log_impl(&_mh_execute_header, v245, v247, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v249, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v264 = v592;
    v265 = v586;
    a1 = v601;
    v266 = v590;
    swift_beginAccess();
    v267 = *(v264 + 48);
    v591 = v5;
    if ((v267 & 0xC000000000000001) == 0)
    {
      v269 = v581;
      v273 = v581;
      v274 = v244;
      v5 = v591;
      goto LABEL_89;
    }

    v268 = v267 < 0 ? v267 : v267 & 0xFFFFFFFFFFFFFF8;
    v269 = v581;
    v270 = v581;
    v271 = v244;
    v272 = __CocoaDictionary.count.getter();
    if (__OFADD__(v272, 1))
    {
      break;
    }

    *(v264 + 48) = sub_10021CDBC(v268, v272 + 1);
LABEL_89:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v607 = *(v264 + 48);
    v26 = v244;
    sub_1002C8398(v244, v269, isUniquelyReferenced_nonNull_native);
    *(v264 + 48) = v607;

    swift_endAccess();
    v276 = v596;
    if (((*(v276 + 64) | (*(v276 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
    {
      v277 = Logger.logObject.getter();
      v278 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v277, v278))
      {
        v279 = swift_slowAlloc();
        v280 = swift_slowAlloc();
        v602[0] = v280;
        *v279 = v571;
        LOBYTE(v607) = 0;
        v281 = String.init<A>(describing:)();
        v283 = v282;
        v284 = sub_10000668C(v281, v282, v602);
        v285 = v283;
        a1 = v601;
        v285, v286, v287, v288, v289, v290, v291, v292;
        *(v279 + 4) = v284;
        v276 = v596;
        _os_log_impl(&_mh_execute_header, v277, v278, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v279, 0xCu);
        sub_10000607C(v280);
        v269 = v581;

        v266 = v590;

        v5 = v591;
      }

      else
      {

        v5 = v591;
        v276 = v596;
      }
    }

    v264 = *(v276 + 64);
    if (*(v276 + 68) >> 14 == 2 && (v264 & 1) == 0)
    {
      goto LABEL_126;
    }

    if ((v264 & 0xFFFF000000000001 | (*(v276 + 68) << 32) & 0xFFFFC00000000001) == 0x800000000000)
    {
      v293 = Logger.logObject.getter();
      v294 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v293, v294))
      {
        v295 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        v602[0] = v296;
        *v295 = v571;
        LOBYTE(v607) = 1;
        v297 = String.init<A>(describing:)();
        v299 = v298;
        v300 = sub_10000668C(v297, v298, v602);
        v301 = v299;
        a1 = v601;
        v301, v302, v303, v304, v305, v306, v307, v308;
        *(v295 + 4) = v300;
        _os_log_impl(&_mh_execute_header, v293, v294, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v295, 0xCu);
        sub_10000607C(v296);
        v269 = v581;

        v266 = v590;
      }

      v5 = v591;
    }

    if (*(v596 + 68) >> 14 == 2)
    {
      LODWORD(v264) = *(v596 + 64);
      if ((v264 & 1) == 0)
      {
LABEL_126:
        if (qword_1009367A0 == -1)
        {
          goto LABEL_127;
        }

        goto LABEL_143;
      }
    }

    v309 = v596;
    swift_retain_n();
    v310 = v269;
    v26 = v26;
    v311 = Logger.logObject.getter();
    v312 = static os_log_type_t.default.getter();

    v313 = os_log_type_enabled(v311, v312);
    v581 = v310;
    if (v313)
    {
      v568 = v312;
      v569 = v311;
      v314 = swift_slowAlloc();
      v315 = swift_slowAlloc();
      v567 = swift_slowAlloc();
      v607 = v567;
      *v314 = v570;
      *(v314 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v607);
      *(v314 + 12) = 2082;
      v316 = *(v309 + 40);
      v603 = *(v309 + 24);
      *v604 = v316;
      *&v604[14] = *(v309 + 54);
      sub_100009DAC(&v603, v602);
      v317 = sub_1000063E8();
      v319 = v318;
      sub_1005812D4(&v603);
      v320 = sub_10000668C(v317, v319, &v607);
      v319, v321, v322, v323, v324, v325, v326, v327;
      *(v314 + 14) = v320;
      *(v314 + 22) = 2114;
      *(v314 + 24) = v310;
      *v315 = v310;
      *(v314 + 32) = 2112;
      v328 = v310;
      v329 = [v26 objectID];
      *(v314 + 34) = v329;
      v566 = v315;
      v315[1] = v329;
      *(v314 + 42) = 2082;
      v602[0] = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, 2, 0);
      v330 = v602[0];
      v332 = *(v602[0] + 16);
      v331 = *(v602[0] + 24);
      v333 = v331 >> 1;
      v334 = v332 + 1;
      if (v331 >> 1 <= v332)
      {
        sub_100026EF4((v331 > 1), v332 + 1, 1);
        v330 = v602[0];
        v331 = *(v602[0] + 24);
        v333 = v331 >> 1;
      }

      *(v330 + 16) = v334;
      v335 = v330 + 16 * v332;
      *(v335 + 32) = 0x44497463656A626FLL;
      *(v335 + 40) = 0xE800000000000000;
      v602[0] = v330;
      if (v333 <= v334)
      {
        sub_100026EF4((v331 > 1), v332 + 2, 1);
        v330 = v602[0];
      }

      *(v330 + 16) = v332 + 2;
      v336 = v330 + 16 * v334;
      strcpy((v336 + 32), "dateComponents");
      *(v336 + 47) = -18;
      v337 = Array.description.getter();
      v339 = v338;

      v340 = sub_10000668C(v337, v339, &v607);
      v339, v341, v342, v343, v344, v345, v346, v347;
      *(v314 + 44) = v340;
      *(v314 + 52) = 1024;
      v348 = *(v596 + 104);

      *(v314 + 54) = v348;

      v349 = v569;
      _os_log_impl(&_mh_execute_header, v569, v568, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v314, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v5 = v591;
      v265 = v586;
      a1 = v601;
      v266 = v590;
    }

    else
    {
    }

    v350 = 0;
    v351 = 0;
    do
    {
      v356 = v350;
      if (*(&off_1008E3168 + v351 + 32))
      {
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        v357 = [v600 dateComponents];
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1006ABE80(&qword_10093B8C8, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
        v358 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v366 = v266;
        if (v5)
        {
          v582, v359, v360, v361, v362, v363, v364, v365;

          v585, v429, v430, v431, v432, v433, v434, v435;

          (*v594)(v266, v265);
          return;
        }

        v367 = v358;
        v368 = v359;
        (*v594)(v366, v265);

        v369 = Data._bridgeToObjectiveC()().super.isa;
        [v26 setDateComponentsData:v369];

        sub_10001BBA0(v367, v368);
        v266 = v366;
      }

      else
      {
        v352 = [v600 remObjectID];
        v353 = [v352 uuid];

        v354 = v598;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v355 = UUID._bridgeToObjectiveC()().super.isa;
        (v595)(v354, v599);
        [v26 setIdentifier:v355];
      }

      v350 = 1;
      v351 = &_mh_execute_header.magic + 1;
    }

    while ((v356 & 1) == 0);
    v370 = [v26 changedValues];

    v371 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v372 = v592;
    swift_beginAccess();
    v15 = v581;

    v373 = swift_isUniquelyReferenced_nonNull_native();
    v607 = v372[7];
    v372[7] = 0x8000000000000000;
    sub_1002C8688(v371, v15, v373);

    v372[7] = v607;
    swift_endAccess();
    if (*(v596 + 104))
    {
      v371, v374, v375, v376, v377, v378, v379, v380;
      [v26 updateChangeCount];

LABEL_118:
      goto LABEL_43;
    }

    v15 = v15;

    v381 = Logger.logObject.getter();
    v382 = static os_log_type_t.default.getter();
    v371, v383, v384, v385, v386, v387, v388, v389;

    if (os_log_type_enabled(v381, v382))
    {
      v397 = swift_slowAlloc();
      v398 = swift_slowAlloc();
      v591 = v381;
      v399 = v398;
      v595 = swift_slowAlloc();
      v602[0] = v595;
      *v397 = v564;
      *(v397 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v602);
      *(v397 + 12) = 1024;
      *(v397 + 14) = 0;

      *(v397 + 18) = 1024;
      *(v397 + 20) = 1;
      *(v397 + 24) = 2114;
      *(v397 + 26) = v15;
      *v399 = v15;
      *(v397 + 34) = 2082;
      v15 = v15;
      sub_1005E2810(v371);
      v401 = v400;
      v371, v402, v403, v404, v405, v406, v407, v408;
      v409 = Array.description.getter();
      v411 = v410;
      v412 = v401;
      a1 = v601;
      v412, v410, v413, v414, v415, v416, v417, v418;
      v419 = sub_10000668C(v409, v411, v602);
      v411, v420, v421, v422, v423, v424, v425, v426;
      *(v397 + 36) = v419;
      v427 = v382;
      v428 = v591;
      _os_log_impl(&_mh_execute_header, v591, v427, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v397, 0x2Cu);
      sub_1000050A4(v399, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      goto LABEL_118;
    }

    v371, v390, v391, v392, v393, v394, v395, v396;

LABEL_43:
    v36 = v575;
    v112 = v579;
    v23 = v585;
    v25 = v582;
    if (v579 == v575)
    {
      goto LABEL_123;
    }
  }

  __break(1u);
LABEL_143:
  swift_once();
LABEL_127:
  sub_100006654(v580, qword_100950D98);
  v436 = Logger.logObject.getter();
  v437 = static os_log_type_t.error.getter();
  v438 = os_log_type_enabled(v436, v437);
  v439 = v582;
  if (v438)
  {
    v440 = swift_slowAlloc();
    v602[0] = swift_slowAlloc();
    *v440 = v565;
    v448 = sub_100729CB0(1, v441, v442, v443, v444, v445, v446, v447);
    v450 = v449;
    v451 = sub_10000668C(v448, v449, v602);
    v450, v452, v453, v454, v455, v456, v457, v458;
    *(v440 + 4) = v451;
    *(v440 + 12) = 2082;
    v466 = sub_100729CB0(v264, v459, v460, v461, v462, v463, v464, v465);
    v468 = v467;
    v469 = sub_10000668C(v466, v467, v602);
    v468, v470, v471, v472, v473, v474, v475, v476;
    *(v440 + 14) = v469;
    _os_log_impl(&_mh_execute_header, v436, v437, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v440, 0x16u);
    swift_arrayDestroy();
  }

  v477 = objc_opt_self();
  v478 = String._bridgeToObjectiveC()();
  sub_100729CB0(1, v479, v480, v481, v482, v483, v484, v485);
  v487 = v486;
  v488 = String._bridgeToObjectiveC()();
  v487, v489, v490, v491, v492, v493, v494, v495;
  sub_100729CB0(v264, v496, v497, v498, v499, v500, v501, v502);
  v504 = v503;
  v505 = String._bridgeToObjectiveC()();
  v504, v506, v507, v508, v509, v510, v511, v512;
  [v477 unauthorizedErrorWithMissingEntitlement:v478 requestedAccessLevel:v488 currentAccesslevel:v505];

  swift_willThrow();
  v439, v513, v514, v515, v516, v517, v518, v519;

  v585, v520, v521, v522, v523, v524, v525, v526;
}

void sub_10061D3F4(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v537 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v535 = &v519 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v542 = &v519 - v12;
  v548 = type metadata accessor for UUID();
  v541 = *(v548 - 8);
  __chkstk_darwin(v548, v13);
  v536 = &v519 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v545 = &v519 - v17;
  v19 = *(a3 + 2);
  v18 = *(a3 + 3);
  v534 = *(a3 + 4);
  if (qword_100936008 != -1)
  {
    goto LABEL_133;
  }

LABEL_2:
  v527 = type metadata accessor for Logger();
  v20 = sub_100006654(v527, qword_100945730);

  v549 = v20;
  v21 = Logger.logObject.getter();
  LOBYTE(v22) = static os_log_type_t.info.getter();
  v18, v23, v24, v25, v26, v27, v28, v29;
  v30 = os_log_type_enabled(v21, v22);
  v31 = a1 >> 62;
  v547 = a3;
  v552 = a1;
  v546 = (a1 >> 62);
  if (v30)
  {
    v544 = v19;
    v550 = v4;
    v19 = swift_slowAlloc();
    v553[0] = swift_slowAlloc();
    *v19 = 136446978;
    *(v19 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v553);
    *(v19 + 6) = 2048;
    if (!v31)
    {
      v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_137;
  }

  a1, v52, v53, v54, v55, v56, v57, v58;
  while (1)
  {
    v22 = v551;
    v18 = v31 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      break;
    }

    v553[0] = &_swiftEmptyArrayStorage;
    v21 = v553;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 = v4;
      v59 = 0;
      v60 = a1 & 0xC000000000000001;
      v550 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v4 = (v59 + 1);
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v60)
        {
          v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v59 >= *(v550 + 16))
          {
            goto LABEL_130;
          }

          v61 = *&a1->clientIdentity[8 * v59 + 16];
        }

        v62 = v61;
        sub_1005E3810([v61 remObjectID], &qword_10094F688, off_1008D4140);
        if (v19)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a3 = *(v553[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v59;
        a1 = v552;
        if (v4 == v18)
        {
          v533 = v553[0];
          v4 = 0;
          v22 = v551;
          a3 = v547;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    v39 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v19 + 14) = v39;
    a1, v32, v33, v34, v35, v36, v37, v38;
    *(v19 + 11) = 2082;
    sub_1000060C8(0, &qword_10094F688, off_1008D4140);
    v40 = [swift_getObjCClassFromMetadata() description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    a1 = v552;
    v44 = sub_10000668C(v41, v43, v553);
    v43, v45, v46, v47, v48, v49, v50, v51;
    v19[3] = v44;
    *(v19 + 16) = 2082;
    *(v19 + 34) = sub_10000668C(v544, v18, v553);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v19, 0x2Au);
    swift_arrayDestroy();

    v4 = v550;
    a3 = v547;
    v31 = v546;
  }

  v533 = &_swiftEmptyArrayStorage;
LABEL_21:
  v63 = v22[12];
  if (v63 <= 1)
  {
    if (v63)
    {
      if (v63 != 1)
      {
LABEL_138:
        v517 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        v518 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2, v517, v518);
        __break(1u);
        return;
      }

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v553[0] = v95;
        *v94 = 136315138;
        v96 = [objc_opt_self() cdEntityName];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        a3 = sub_10000668C(v19, v98, v553);
        v99 = v98;
        v22 = v551;
        v99, v100, v101, v102, v103, v104, v105, v106;
        *(v94 + 4) = a3;
        _os_log_impl(&_mh_execute_header, v92, v93, "Skipping fetch during upsert {CDType: %s}", v94, 0xCu);
        sub_10000607C(v95);
        a1 = v552;
      }

      v81 = v546;
      v83 = sub_10038F8FC(&_swiftEmptyArrayStorage);
      goto LABEL_36;
    }
  }

  else if ((v63 - 2) >= 3 && v63 != 4499 && v63 != 4599)
  {
    goto LABEL_138;
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v553[0] = v67;
    *v66 = 136315138;
    v68 = a3;
    v69 = [objc_opt_self() cdEntityName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = sub_10000668C(v19, v71, v553);
    v73 = v71;
    v22 = v551;
    v73, v74, v75, v76, v77, v78, v79, v80;
    *(v66 + 4) = v72;
    a3 = v68;
    _os_log_impl(&_mh_execute_header, v64, v65, "Performing fetch during upsert {CDType: %s}", v66, 0xCu);
    sub_10000607C(v67);
    a1 = v552;
  }

  v81 = v546;
  v82 = v533;
  v83 = sub_1006627DC(v533, a3);
  if (v4)
  {
    v82, v84, v85, v86, v87, v88, v89, v90;
    return;
  }

LABEL_36:
  v107 = v83;
  if (v81)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
LABEL_118:
      v107, v84, v85, v86, v87, v88, v89, v90;
      v533, v385, v386, v387, v388, v389, v390, v391;
      return;
    }
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_118;
    }
  }

  v108 = 0;
  v532 = a1 & 0xC000000000000001;
  v531 = a1 & 0xFFFFFFFFFFFFFF8;
  v544 = (v541 + 8);
  v529 = v541 + 56;
  v528 = (v541 + 48);
  *&v91 = 136446978;
  v523 = v91;
  *&v91 = 136446210;
  v522 = v91;
  *&v91 = 136447490;
  v521 = v91;
  *&v91 = 136447234;
  v519 = v91;
  *&v91 = 136446466;
  v520 = v91;
  v543 = v107;
  v530 = v18;
  while (1)
  {
    if (v532)
    {
      v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a3 = (v108 + 1);
      if (__OFADD__(v108, 1))
      {
        goto LABEL_131;
      }
    }

    else
    {
      if (v108 >= *(v531 + 16))
      {
        goto LABEL_132;
      }

      v109 = *&a1->clientIdentity[8 * v108 + 16];
      a3 = (v108 + 1);
      if (__OFADD__(v108, 1))
      {
        goto LABEL_131;
      }
    }

    v110 = v109;
    v111 = sub_1005E3810([v110 remObjectID], &qword_10094F688, off_1008D4140);
    if (v4)
    {
      v107, v112, v113, v114, v115, v116, v117, v118;
      v533, v482, v483, v484, v485, v486, v487, v488;
LABEL_125:

      return;
    }

    v541 = v111;
    v550 = 0;
    v538 = a3;
    v539 = v108;
    v546 = v110;

    v119 = [*(v537 + 16) uuid];
    v120 = v545;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v121 = UUID.uuidString.getter();
    v123 = v122;
    v124 = *v544;
    v125 = v548;
    (*v544)(v120, v548);
    v126 = [objc_opt_self() localInternalAccountID];
    v127 = [v126 uuid];

    v128 = v536;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v129 = UUID.uuidString.getter();
    v131 = v130;
    v540 = v124;
    v124(v128, v125);
    v139 = v123;
    if (v121 == v129 && v123 == v131)
    {
      break;
    }

    v140 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v131, v141, v142, v143, v144, v145, v146, v147;
    if (v140)
    {
      goto LABEL_52;
    }

    v107 = v543;
    v4 = v550;
    v19 = v541;
LABEL_59:
    v158._rawValue = &off_1008E07F0;
    v166 = sub_1005F716C(v158, &qword_10094F688, off_1008D4140);
    if (*(v107 + 16))
    {
      v167 = sub_100393C74();
      if (v159)
      {
        v168 = v167;
        v139, v159, v160, v161, v162, v163, v164, v165;
        v169 = *(*(v107 + 56) + 8 * v168);
        a3 = v19;
        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v553[0] = v173;
          *v172 = v520;
          *(v172 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v553);
          *(v172 + 12) = 2114;
          *(v172 + 14) = a3;
          *v19 = a3;
          a3 = a3;
          _os_log_impl(&_mh_execute_header, v170, v171, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v172, 0x16u);
          sub_1000050A4(v19, &unk_100938E70, &unk_100797230);

          sub_10000607C(v173);
          v22 = v551;
        }

        else
        {
        }

        a1 = v552;
        goto LABEL_43;
      }
    }

    if (v166 == 2)
    {
      goto LABEL_126;
    }

    if (v166)
    {
      v174 = 0x65746E49656D6974;
    }

    else
    {
      v174 = 0x44497463656A626FLL;
    }

    if (v166)
    {
      v175 = 0xEC0000006C617672;
    }

    else
    {
      v175 = 0xE800000000000000;
    }

    v176 = 0xE800000000000000;
    if (v174 != 0x44497463656A626FLL || v175 != 0xE800000000000000)
    {
      v185 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE800000000000000, v186, v187, v188, v189, v190, v191, v192;
      v175, v193, v194, v195, v196, v197, v198, v199;
      if (v185)
      {
        goto LABEL_77;
      }

      v176 = 0xEC0000006C617672;
      if (v174 != 0x65746E49656D6974 || v175 != 0xEC0000006C617672)
      {
        v200 = _stringCompareWithSmolCheck(_:_:expecting:)();
        0xEC0000006C617672, v201, v202, v203, v204, v205, v206, v207;
        v175, v208, v209, v210, v211, v212, v213, v214;
        if ((v200 & 1) == 0)
        {
LABEL_126:
          v533, v159, v160, v161, v162, v163, v164, v165;
          v139, v489, v490, v491, v492, v493, v494, v495;
          v107, v496, v497, v498, v499, v500, v501, v502;
          [objc_opt_self() noSuchObjectErrorWithObjectID:v19];
          swift_willThrow();

          goto LABEL_128;
        }

LABEL_77:
        v184 = v139;
        goto LABEL_78;
      }
    }

    v139, v159, v160, v161, v162, v163, v164, v165;
    v176, v177, v178, v179, v180, v181, v182, v183;
    v184 = v175;
LABEL_78:
    v184, v159, v160, v161, v162, v163, v164, v165;
    v215 = v22[11];
    sub_1000060C8(0, &qword_10094F688, off_1008D4140);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v217 = [ObjCClassFromMetadata entity];
    v218 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v217 insertIntoManagedObjectContext:v215];
    v219 = v534;
    [v215 assignObject:v218 toPersistentStore:v219];

    v220 = v218;
    v221 = [v19 uuid];
    v222 = v542;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v223 = v548;
    (*v529)(v222, 0, 1, v548);
    v224 = v535;
    sub_10018E470(v222, v535);
    LODWORD(v222) = (*v528)(v224, 1, v223);
    v225 = v220;
    isa = 0;
    if (v222 != 1)
    {
      v227 = v535;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v540(v227, v548);
    }

    [v225 setIdentifier:{isa, v519}];

    sub_1000050A4(v542, &unk_100939D90, "8\n\r");
    v19 = v19;

    v228 = v225;
    v18 = Logger.logObject.getter();
    v229 = static os_log_type_t.default.getter();

    v230 = os_log_type_enabled(v18, v229);
    v541 = v228;
    v550 = v4;
    if (v230)
    {
      v231 = v228;
      v232 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v558 = swift_slowAlloc();
      *v232 = v523;
      *(v232 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v558);
      *(v232 + 12) = 2082;
      v234 = *(v551 + 40);
      v556 = *(v551 + 24);
      *v557 = v234;
      *&v557[14] = *(v551 + 54);
      sub_100009DAC(&v556, v553);
      v235 = sub_1000063E8();
      v237 = v236;
      sub_1005812D4(&v556);
      v238 = sub_10000668C(v235, v237, &v558);
      v237, v239, v240, v241, v242, v243, v244, v245;
      *(v232 + 14) = v238;
      *(v232 + 22) = 2114;
      *(v232 + 24) = v19;
      *v233 = v19;
      *(v232 + 32) = 2112;
      v246 = v19;
      v247 = [v231 objectID];
      *(v232 + 34) = v247;
      v233[1] = v247;
      _os_log_impl(&_mh_execute_header, v18, v229, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v232, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v107 = v543;
      a3 = v547;

      swift_arrayDestroy();
      v22 = v551;

      a1 = v552;
    }

    else
    {

      a1 = v552;
      a3 = v547;
    }

    swift_beginAccess();
    v248 = *(a3 + 6);
    if ((v248 & 0xC000000000000001) != 0)
    {
      if (v248 < 0)
      {
        v21 = *(a3 + 6);
      }

      else
      {
        v21 = (v248 & 0xFFFFFFFFFFFFFF8);
      }

      v249 = v19;
      v250 = v541;
      v251 = v541;
      v252 = __CocoaDictionary.count.getter();
      if (__OFADD__(v252, 1))
      {
        goto LABEL_136;
      }

      *(a3 + 6) = sub_10021CDBC(v21, v252 + 1);
    }

    else
    {
      v253 = v19;
      v250 = v541;
      v254 = v541;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v558 = *(a3 + 6);
    sub_1002C8398(v250, v19, isUniquelyReferenced_nonNull_native);
    *(a3 + 6) = v558;

    swift_endAccess();
    if (((*(v22 + 16) | (*(v22 + 34) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
    {
      v256 = Logger.logObject.getter();
      v257 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v256, v257))
      {
        v258 = swift_slowAlloc();
        a3 = swift_slowAlloc();
        v553[0] = a3;
        *v258 = v522;
        LOBYTE(v558) = 0;
        v259 = String.init<A>(describing:)();
        v261 = v260;
        v262 = sub_10000668C(v259, v260, v553);
        v263 = v261;
        a1 = v552;
        v263, v264, v265, v266, v267, v268, v269, v270;
        *(v258 + 4) = v262;
        v22 = v551;
        _os_log_impl(&_mh_execute_header, v256, v257, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v258, 0xCu);
        sub_10000607C(a3);

        v250 = v541;
      }
    }

    v271 = *(v22 + 16);
    if (*(v22 + 34) >> 14 == 2 && (v271 & 1) == 0)
    {
      goto LABEL_119;
    }

    if ((v271 & 0xFFFF000000000001 | (*(v22 + 34) << 32) & 0xFFFFC00000000001) == 0x800000000000)
    {
      v272 = Logger.logObject.getter();
      v273 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        a3 = swift_slowAlloc();
        v553[0] = a3;
        *v274 = v522;
        LOBYTE(v558) = 1;
        v275 = String.init<A>(describing:)();
        v277 = v276;
        v278 = sub_10000668C(v275, v276, v553);
        v279 = v277;
        a1 = v552;
        v279, v280, v281, v282, v283, v284, v285, v286;
        *(v274 + 4) = v278;
        v22 = v551;
        _os_log_impl(&_mh_execute_header, v272, v273, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v274, 0xCu);
        sub_10000607C(a3);

        v250 = v541;
      }
    }

    if (*(v22 + 34) >> 14 == 2)
    {
      LODWORD(v271) = *(v22 + 16);
      if ((v271 & 1) == 0)
      {
LABEL_119:
        if (qword_1009367A0 != -1)
        {
          swift_once();
        }

        sub_100006654(v527, qword_100950D98);
        v392 = Logger.logObject.getter();
        v393 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v392, v393))
        {
          v394 = swift_slowAlloc();
          v553[0] = swift_slowAlloc();
          *v394 = v520;
          v402 = sub_100729CB0(1, v395, v396, v397, v398, v399, v400, v401);
          v404 = v403;
          v405 = sub_10000668C(v402, v403, v553);
          v404, v406, v407, v408, v409, v410, v411, v412;
          *(v394 + 4) = v405;
          *(v394 + 12) = 2082;
          v420 = sub_100729CB0(v271, v413, v414, v415, v416, v417, v418, v419);
          v422 = v421;
          v423 = sub_10000668C(v420, v421, v553);
          v422, v424, v425, v426, v427, v428, v429, v430;
          *(v394 + 14) = v423;
          _os_log_impl(&_mh_execute_header, v392, v393, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v394, 0x16u);
          swift_arrayDestroy();
        }

        v431 = v533;
        v432 = objc_opt_self();
        v433 = String._bridgeToObjectiveC()();
        sub_100729CB0(1, v434, v435, v436, v437, v438, v439, v440);
        v442 = v441;
        v443 = String._bridgeToObjectiveC()();
        v442, v444, v445, v446, v447, v448, v449, v450;
        sub_100729CB0(v271, v451, v452, v453, v454, v455, v456, v457);
        v459 = v458;
        v460 = String._bridgeToObjectiveC()();
        v459, v461, v462, v463, v464, v465, v466, v467;
        [v432 unauthorizedErrorWithMissingEntitlement:v433 requestedAccessLevel:v443 currentAccesslevel:v460];

        swift_willThrow();
        v107, v468, v469, v470, v471, v472, v473, v474;

        v431, v475, v476, v477, v478, v479, v480, v481;
        v110 = v541;

        goto LABEL_125;
      }
    }

    swift_retain_n();
    v19 = v19;
    v287 = v250;
    v288 = Logger.logObject.getter();
    v289 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v288, v289))
    {
      a3 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v525 = swift_slowAlloc();
      v558 = v525;
      *a3 = v521;
      *(a3 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v558);
      *(a3 + 6) = 2082;
      v291 = *(v22 + 5);
      v554 = *(v22 + 3);
      *v555 = v291;
      *&v555[14] = *(v22 + 54);
      sub_100009DAC(&v554, v553);
      v292 = sub_1000063E8();
      v294 = v293;
      sub_1005812D4(&v554);
      v295 = sub_10000668C(v292, v294, &v558);
      v294, v296, v297, v298, v299, v300, v301, v302;
      *(a3 + 14) = v295;
      *(a3 + 11) = 2114;
      *(a3 + 3) = v19;
      *v290 = v19;
      *(a3 + 16) = 2112;
      v541 = v19;
      v303 = v19;
      v304 = [v287 objectID];
      *(a3 + 34) = v304;
      v524 = v290;
      v290[1] = v304;
      *(a3 + 21) = 2082;
      v553[0] = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, 2, 0);
      v305 = v553[0];
      v307 = *(v553[0] + 16);
      v306 = *(v553[0] + 24);
      v308 = v306 >> 1;
      v309 = v307 + 1;
      v526 = v289;
      if (v306 >> 1 <= v307)
      {
        sub_100026EF4((v306 > 1), v307 + 1, 1);
        v305 = v553[0];
        v306 = *(v553[0] + 24);
        v308 = v306 >> 1;
      }

      *(v305 + 16) = v309;
      v310 = v305 + 16 * v307;
      *(v310 + 32) = 0x44497463656A626FLL;
      *(v310 + 40) = 0xE800000000000000;
      v553[0] = v305;
      if (v308 <= v309)
      {
        sub_100026EF4((v306 > 1), v307 + 2, 1);
        v305 = v553[0];
      }

      *(v305 + 16) = v307 + 2;
      v311 = v305 + 16 * v309;
      strcpy((v311 + 32), "timeInterval");
      *(v311 + 45) = 0;
      *(v311 + 46) = -5120;
      v312 = Array.description.getter();
      v314 = v313;

      v315 = sub_10000668C(v312, v314, &v558);
      v314, v316, v317, v318, v319, v320, v321, v322;
      *(a3 + 44) = v315;
      *(a3 + 26) = 1024;
      v22 = v551;
      v323 = *(v551 + 104);

      *(a3 + 54) = v323;

      _os_log_impl(&_mh_execute_header, v288, v526, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", a3, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      a1 = v552;
      v19 = v541;
    }

    else
    {
    }

    v324 = v546;
    v325 = [v546 remObjectID];
    v326 = [v325 uuid];

    v327 = v545;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v328 = UUID._bridgeToObjectiveC()().super.isa;
    v540(v327, v548);
    [v287 setIdentifier:v328];

    [v324 timeInterval];
    [v287 setTimeInterval:?];
    v329 = [v287 changedValues];

    v330 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v331 = v547;
    swift_beginAccess();
    v332 = v19;

    v333 = swift_isUniquelyReferenced_nonNull_native();
    v558 = *(v331 + 7);
    *(v331 + 7) = 0x8000000000000000;
    sub_1002C8688(v330, v332, v333);

    *(v331 + 7) = v558;
    swift_endAccess();
    if (*(v22 + 104) == 1)
    {
      v330, v334, v335, v336, v337, v338, v339, v340;
      [v287 updateChangeCount];

      v4 = v550;
    }

    else
    {

      v19 = v22;
      v341 = v332;

      v342 = Logger.logObject.getter();
      a3 = static os_log_type_t.default.getter();
      v330, v343, v344, v345, v346, v347, v348, v349;

      if (os_log_type_enabled(v342, a3))
      {
        v357 = swift_slowAlloc();
        v358 = swift_slowAlloc();
        v541 = swift_slowAlloc();
        v553[0] = v541;
        *v357 = v519;
        *(v357 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v553);
        *(v357 + 12) = 1024;
        *(v357 + 14) = 0;

        *(v357 + 18) = 1024;
        *(v357 + 20) = 1;
        *(v357 + 24) = 2114;
        *(v357 + 26) = v341;
        *v358 = v341;
        *(v357 + 34) = 2082;
        v540 = v341;
        v359 = v550;
        sub_1005E2810(v330);
        v361 = v360;
        v4 = v359;
        v330, v362, v363, v364, v365, v366, v367, v368;
        v369 = Array.description.getter();
        v19 = v370;
        v361, v370, v371, v372, v373, v374, v375, v376;
        v377 = sub_10000668C(v369, v19, v553);
        v19, v378, v379, v380, v381, v382, v383, v384;
        *(v357 + 36) = v377;
        _os_log_impl(&_mh_execute_header, v342, a3, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v357, 0x2Cu);
        sub_1000050A4(v358, &unk_100938E70, &unk_100797230);
        a1 = v552;

        swift_arrayDestroy();

        v22 = v551;
      }

      else
      {
        v330, v350, v351, v352, v353, v354, v355, v356;

        v4 = v550;
        v22 = v19;
      }
    }

    v107 = v543;
LABEL_43:
    v18 = v530;
    v108 = v539 + 1;
    if (v538 == v530)
    {
      goto LABEL_118;
    }
  }

  v131, v132, v133, v134, v135, v136, v137, v138;
LABEL_52:
  v148 = *(v22 + 34);
  v107 = v543;
  v149 = v550;
  if (v148 >> 14 >= 2)
  {
    v19 = v541;
    if (v148 >> 14 == 2)
    {
      v150 = *(v22 + 16) | (*(v22 + 34) << 32);
    }

    else
    {
      v150 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v150 = 2147483519;
    v19 = v541;
  }

  sub_100009A40(2, v150);
  v4 = v149;
  if (!v149)
  {
    goto LABEL_59;
  }

  v139, v151, v152, v153, v154, v155, v156, v157;

  v107, v503, v504, v505, v506, v507, v508, v509;
  v533, v510, v511, v512, v513, v514, v515, v516;
LABEL_128:
}

void sub_10061F4CC(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v575 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v572 = v548 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v570 = v548 - v14;
  v576 = type metadata accessor for UUID();
  v571 = *(v576 - 8);
  __chkstk_darwin(v576, v15);
  v574 = v548 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v573 = v548 - v19;
  v21 = a3[2];
  v20 = a3[3];
  v577 = a3;
  v569 = a3[4];
  if (qword_100936008 != -1)
  {
LABEL_160:
    swift_once();
  }

  v568 = type metadata accessor for Logger();
  v22 = sub_100006654(v568, qword_100945730);

  v580 = v22;
  v23 = Logger.logObject.getter();
  LOBYTE(v24) = static os_log_type_t.info.getter();
  v20, v25, v26, v27, v28, v29, v30, v31;
  v32 = os_log_type_enabled(v23, v24);
  v33 = a1 >> 62;
  v581 = v6;
  v583 = a1;
  *&v578 = a1 >> 62;
  if (!v32)
  {

    a1, v55, v56, v57, v58, v59, v60, v61;
    goto LABEL_7;
  }

  v582 = v21;
  v579 = v5;
  v5 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v584 = v21;
  *v5 = 136446978;
  *(v5 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v584);
  *(v5 + 12) = 2048;
  if (v33)
  {
    goto LABEL_163;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v5 + 14) = i;
    a1, v34, v35, v36, v37, v38, v39, v40;
    *(v5 + 22) = 2082;
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, &v584);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v5 + 24) = v46;
    v54 = v582;
    a1 = v583;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_10000668C(v54, v20, &v584);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
    swift_arrayDestroy();

    v5 = v579;
    v6 = v581;
    v33 = v578;
LABEL_7:
    v24 = v33 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = &_swiftEmptyArrayStorage;
    if (!v24)
    {
      break;
    }

    v584 = &_swiftEmptyArrayStorage;
    v23 = &v584;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v24 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v63 = a1 & 0xC000000000000001;
      v582 = a1 & 0xFFFFFFFFFFFFFF8;
      v64 = off_1008D4128;
      while (1)
      {
        v6 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_158:

          v64, v532, v533, v534, v535, v536, v537, v538;
          v562, v539, v540, v541, v542, v543, v544, v545;

          return;
        }

        if (v63)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v582 + 16))
          {
            __break(1u);
            goto LABEL_160;
          }

          v65 = *&a1->clientIdentity[8 * v20 + 16];
        }

        v66 = v65;
        sub_1005E3810([v65 remObjectID], &unk_100938870, off_1008D4128);
        v21 = v5;
        if (v5)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v583;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v20;
        v5 = 0;
        if (v6 == v24)
        {
          v62 = v584;
          v6 = v581;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_163:
    ;
  }

LABEL_20:
  v67 = *(v6 + 12);
  if (v67 <= 1)
  {
    if (v67)
    {
      if (v67 != 1)
      {
LABEL_168:
        v546 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        v547 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2, v546, v547);
        __break(1u);
        return;
      }

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v584 = v98;
        *v97 = 136315138;
        v99 = [objc_opt_self() cdEntityName];
        v100 = v62;
        v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v102;

        v104 = v101;
        v62 = v100;
        v105 = sub_10000668C(v104, v103, &v584);
        v103, v106, v107, v108, v109, v110, v111, v112;
        *(v97 + 4) = v105;
        a1 = v583;
        _os_log_impl(&_mh_execute_header, v95, v96, "Skipping fetch during upsert {CDType: %s}", v97, 0xCu);
        sub_10000607C(v98);
      }

      v86 = sub_10038FA48(&_swiftEmptyArrayStorage);
      goto LABEL_35;
    }
  }

  else if ((v67 - 2) >= 3 && v67 != 4499 && v67 != 4599)
  {
    goto LABEL_168;
  }

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v584 = v71;
    *v70 = 136315138;
    v72 = [objc_opt_self() cdEntityName];
    v73 = v62;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77 = v74;
    v62 = v73;
    v78 = sub_10000668C(v77, v76, &v584);
    v76, v79, v80, v81, v82, v83, v84, v85;
    *(v70 + 4) = v78;
    a1 = v583;
    _os_log_impl(&_mh_execute_header, v68, v69, "Performing fetch during upsert {CDType: %s}", v70, 0xCu);
    sub_10000607C(v71);
  }

  v86 = sub_1006630D4(v62, v577);
  if (v5)
  {
    v62, v87, v88, v89, v90, v91, v92, v93;
    return;
  }

LABEL_35:
  v64 = v86;
  if (v578)
  {
    v113 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v113 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v579 = v5;
  if (!v113)
  {
LABEL_149:
    v64, v87, v88, v89, v90, v91, v92, v93;
    v62, v399, v400, v401, v402, v403, v404, v405;
    return;
  }

  v114 = 0;
  v115 = a1 & 0xC000000000000001;
  v116 = a1 & 0xFFFFFFFFFFFFFF8;
  v117 = &a1->clientIdentity[16];
  v565 = (v571 + 8);
  v564 = 0x80000001007E9F30;
  v582 = 0x80000001007E9F10;
  v556 = v571 + 56;
  v555 = (v571 + 48);
  *&v94 = 136446978;
  v553 = v94;
  *&v94 = 136446210;
  v578 = v94;
  *&v94 = 136447490;
  v552 = v94;
  *&v94 = 136447234;
  v551 = v94;
  *&v94 = 136446466;
  v554 = v94;
  v562 = v62;
  v567 = v64;
  v560 = v113;
  v559 = a1 & 0xC000000000000001;
  v558 = a1 & 0xFFFFFFFFFFFFFF8;
  v557 = &a1->clientIdentity[16];
  while (1)
  {
    if (v115)
    {
      v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v114 >= *(v116 + 16))
      {
        goto LABEL_165;
      }

      v118 = *&v117[8 * v114];
    }

    v119 = __OFADD__(v114, 1);
    v120 = v114 + 1;
    v121 = v579;
    if (v119)
    {
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      swift_once();
LABEL_152:
      sub_100006654(v568, qword_100950D98);
      v420 = Logger.logObject.getter();
      v421 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v420, v421))
      {
        v422 = swift_slowAlloc();
        v584 = swift_slowAlloc();
        *v422 = v554;
        v430 = sub_100729CB0(1, v423, v424, v425, v426, v427, v428, v429);
        v432 = v431;
        v433 = sub_10000668C(v430, v431, &v584);
        v432, v434, v435, v436, v437, v438, v439, v440;
        *(v422 + 4) = v433;
        *(v422 + 12) = 2082;
        v448 = sub_100729CB0(v64, v441, v442, v443, v444, v445, v446, v447);
        v450 = v449;
        v451 = sub_10000668C(v448, v449, &v584);
        v450, v452, v453, v454, v455, v456, v457, v458;
        *(v422 + 14) = v451;
        _os_log_impl(&_mh_execute_header, v420, v421, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v422, 0x16u);
        swift_arrayDestroy();
      }

      v459 = v562;
      v460 = objc_opt_self();
      v461 = String._bridgeToObjectiveC()();
      sub_100729CB0(1, v462, v463, v464, v465, v466, v467, v468);
      v470 = v469;
      v471 = String._bridgeToObjectiveC()();
      v470, v472, v473, v474, v475, v476, v477, v478;
      sub_100729CB0(v64, v479, v480, v481, v482, v483, v484, v485);
      v487 = v486;
      v488 = String._bridgeToObjectiveC()();
      v487, v489, v490, v491, v492, v493, v494, v495;
      [v460 unauthorizedErrorWithMissingEntitlement:v461 requestedAccessLevel:v471 currentAccesslevel:v488];

      swift_willThrow();
      v567, v496, v497, v498, v499, v500, v501, v502;

      v459, v503, v504, v505, v506, v507, v508, v509;
      v510 = v566;

      return;
    }

    v563 = v120;
    v122 = v118;
    v123 = sub_1005E3810([v122 remObjectID], &unk_100938870, off_1008D4128);
    if (v121)
    {
      v64, v124, v125, v126, v127, v128, v129, v130;
      v62, v511, v512, v513, v514, v515, v516, v517;

      return;
    }

    v566 = v123;
    v579 = 0;
    v571 = v122;

    v131 = [*(v575 + 16) uuid];
    v132 = v573;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v133 = UUID.uuidString.getter();
    v135 = v134;
    v136 = *v565;
    v137 = v132;
    v138 = v576;
    (*v565)(v137, v576);
    v139 = [objc_opt_self() localInternalAccountID];
    v140 = [v139 uuid];

    v141 = v574;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v142 = UUID.uuidString.getter();
    v144 = v143;
    v561 = v136;
    (v136)(v141, v138);
    if (v133 == v142 && v135 == v144)
    {
      v144, v145, v146, v147, v148, v149, v150, v151;
      v152 = v564;
      v153 = v566;
    }

    else
    {
      v154 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v144, v155, v156, v157, v158, v159, v160, v161;
      v152 = v564;
      v153 = v566;
      if ((v154 & 1) == 0)
      {
        v163 = v567;
        goto LABEL_56;
      }
    }

    v162 = *(v581 + 68);
    v163 = v567;
    if (v162 >> 14 >= 2)
    {
      if (v162 >> 14 == 2)
      {
        v164 = *(v581 + 64) | (*(v581 + 68) << 32);
      }

      else
      {
        v164 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v164 = 2147483519;
    }

    v165 = v579;
    sub_100009A40(2, v164);
    v579 = v165;
    if (v165)
    {
      v135, v166, v167, v168, v169, v170, v171, v172;

      v163, v518, v519, v520, v521, v522, v523, v524;
      v562, v525, v526, v527, v528, v529, v530, v531;

      return;
    }

LABEL_56:
    v173._rawValue = &off_1008E0868;
    v181 = sub_1005F6904(v173, &unk_100938870, off_1008D4128);
    if (!*v163->clientIdentity)
    {
      break;
    }

    v182 = sub_100393C74();
    if ((v174 & 1) == 0)
    {
      break;
    }

    v183 = v182;
    v135, v174, v175, v176, v177, v178, v179, v180;
    v184 = *(*&v163->clientIdentity[40] + 8 * v183);
    v185 = v153;
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v584 = v190;
      *v188 = v554;
      *(v188 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v584);
      *(v188 + 12) = 2114;
      *(v188 + 14) = v185;
      *v189 = v185;
      v191 = v185;
      _os_log_impl(&_mh_execute_header, v186, v187, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v188, 0x16u);
      sub_1000050A4(v189, &unk_100938E70, &unk_100797230);

      sub_10000607C(v190);
    }

    else
    {
    }

    v62 = v562;
    v64 = v567;
LABEL_146:
    v114 = v563;
    v115 = v559;
    v116 = v558;
    v117 = v557;
    if (v563 == v560)
    {
      goto LABEL_149;
    }
  }

  if (v181 != 5)
  {
    v192 = 0;
    while (1)
    {
      if (v192 == 5)
      {
        goto LABEL_150;
      }

      v208 = *(&off_1008E31B8 + v192 + 32);
      if (v208 <= 1)
      {
        if (*(&off_1008E31B8 + v192 + 32))
        {
          v210 = 0x72656767697274;
        }

        else
        {
          v210 = 0x44497463656A626FLL;
        }

        if (*(&off_1008E31B8 + v192 + 32))
        {
          v211 = 0xE700000000000000;
        }

        else
        {
          v211 = 0xE800000000000000;
        }

        v209 = 0x4449556D72616C61;
      }

      else
      {
        v209 = 0x4449556D72616C61;
        if (v208 == 2)
        {
          v210 = 0xD000000000000010;
          v211 = v582;
        }

        else
        {
          if (v208 == 3)
          {
            v210 = 0x4449556D72616C61;
          }

          else
          {
            v210 = 0xD000000000000010;
          }

          if (v208 == 3)
          {
            v211 = 0xE800000000000000;
          }

          else
          {
            v211 = v152;
          }
        }
      }

      if (v181 == 3)
      {
        v212 = 0xE800000000000000;
      }

      else
      {
        v209 = 0xD000000000000010;
        v212 = v152;
      }

      if (v181 == 2)
      {
        v209 = 0xD000000000000010;
        v212 = v582;
      }

      v213 = v181 ? 0x72656767697274 : 0x44497463656A626FLL;
      v214 = v181 ? 0xE700000000000000 : 0xE800000000000000;
      v215 = (v181 <= 1u ? v213 : v209);
      v216 = (v181 <= 1u ? v214 : v212);
      if (v210 == v215 && v211 == v216)
      {
        break;
      }

      v193 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v211, v194, v195, v196, v197, v198, v199, v200;
      v216, v201, v202, v203, v204, v205, v206, v207;
      ++v192;
      if (v193)
      {
        v216 = v135;
        goto LABEL_101;
      }
    }

    v135, v174, v215, v176, v177, v178, v179, v180;
    v211, v217, v218, v219, v220, v221, v222, v223;
LABEL_101:
    v216, v174, v175, v176, v177, v178, v179, v180;
    v224 = *(v581 + 88);
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v226 = [ObjCClassFromMetadata entity];
    v227 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v226 insertIntoManagedObjectContext:v224];
    v228 = v569;
    [v224 assignObject:v227 toPersistentStore:v228];

    v229 = v227;
    v230 = [(RDXPCStorePerformer *)v153 uuid];
    v231 = v570;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v232 = v576;
    (*v556)(v231, 0, 1, v576);
    v233 = v572;
    sub_10018E470(v231, v572);
    LODWORD(v232) = (*v555)(v233, 1, v232);
    v234 = v229;
    isa = 0;
    if (v232 != 1)
    {
      v236 = v572;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v561)(v236, v576);
    }

    [v234 setIdentifier:isa];

    sub_1000050A4(v231, &unk_100939D90, "8\n\r");
    v237 = v153;
    v238 = v581;

    v239 = v234;
    v240 = Logger.logObject.getter();
    v241 = static os_log_type_t.default.getter();

    v242 = os_log_type_enabled(v240, v241);
    v566 = v239;
    v561 = v237;
    if (v242)
    {
      v243 = swift_slowAlloc();
      v244 = v237;
      v245 = swift_slowAlloc();
      v589 = swift_slowAlloc();
      *v243 = v553;
      *(v243 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v589);
      *(v243 + 12) = 2082;
      v246 = *(v238 + 40);
      v587 = *(v238 + 24);
      *v588 = v246;
      *&v588[14] = *(v238 + 54);
      sub_100009DAC(&v587, &v584);
      v247 = sub_1000063E8();
      v249 = v248;
      sub_1005812D4(&v587);
      v250 = sub_10000668C(v247, v249, &v589);
      v249, v251, v252, v253, v254, v255, v256, v257;
      *(v243 + 14) = v250;
      *(v243 + 22) = 2114;
      *(v243 + 24) = v244;
      *v245 = v244;
      *(v243 + 32) = 2112;
      v258 = v244;
      v259 = [(RDXPCStorePerformer *)v566 objectID];
      *(v243 + 34) = v259;
      v245[1] = v259;
      _os_log_impl(&_mh_execute_header, v240, v241, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v243, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v260 = v577;
    swift_beginAccess();
    v261 = v260[6];
    if ((v261 & 0xC000000000000001) != 0)
    {
      if (v261 < 0)
      {
        v262 = v260[6];
      }

      else
      {
        v262 = v261 & 0xFFFFFFFFFFFFFF8;
      }

      v64 = v561;
      v263 = v561;
      v264 = v566;
      v265 = v566;
      v266 = __CocoaDictionary.count.getter();
      if (__OFADD__(v266, 1))
      {
        goto LABEL_166;
      }

      v260[6] = sub_10021CDBC(v262, v266 + 1);
    }

    else
    {
      v64 = v561;
      v267 = v561;
      v264 = v566;
      v268 = v566;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v589 = v260[6];
    sub_1002C8398(v264, v64, isUniquelyReferenced_nonNull_native);
    v260[6] = v589;

    swift_endAccess();
    v270 = 0;
    v271 = *(v238 + 64) | (*(v238 + 68) << 32);
    while (1)
    {
      if ((v271 & 0xC00000000001) == 0x800000000000)
      {
        v272 = *(&off_1008E31B8 + v270 + 32);
        v273 = Logger.logObject.getter();
        v274 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v273, v274))
        {
          v275 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v584 = v276;
          *v275 = v578;
          LOBYTE(v589) = v272;
          v277 = String.init<A>(describing:)();
          v279 = v278;
          v280 = sub_10000668C(v277, v278, &v584);
          v281 = v279;
          v238 = v581;
          v281, v282, v283, v284, v285, v286, v287, v288;
          *(v275 + 4) = v280;
          _os_log_impl(&_mh_execute_header, v273, v274, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v275, 0xCu);
          sub_10000607C(v276);
        }
      }

      v64 = *(v238 + 64);
      if (*(v238 + 68) >> 14 == 2 && (*(v238 + 64) & 1) == 0)
      {
        break;
      }

      ++v270;
      v271 = v64 & 0xFFFF0000FFFFFFFFLL | (*(v238 + 68) << 32);
      if (v270 == 5)
      {
        swift_retain_n();
        v24 = v561;
        v20 = v566;
        v290 = Logger.logObject.getter();
        v291 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v290, v291))
        {
          v550 = v291;
          v292 = swift_slowAlloc();
          v293 = swift_slowAlloc();
          v549 = swift_slowAlloc();
          v589 = v549;
          *v292 = v552;
          *(v292 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v589);
          *(v292 + 12) = 2082;
          v294 = *(v238 + 40);
          v585 = *(v238 + 24);
          *v586 = v294;
          *&v586[14] = *(v238 + 54);
          sub_100009DAC(&v585, &v584);
          v295 = sub_1000063E8();
          v297 = v296;
          sub_1005812D4(&v585);
          v298 = sub_10000668C(v295, v297, &v589);
          v297, v299, v300, v301, v302, v303, v304, v305;
          *(v292 + 14) = v298;
          *(v292 + 22) = 2114;
          *(v292 + 24) = v24;
          *v293 = v24;
          *(v292 + 32) = 2112;
          v306 = v24;
          v307 = [v20 objectID];
          *(v292 + 34) = v307;
          v548[1] = v293;
          v293[1] = v307;
          *(v292 + 42) = 2082;
          v584 = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, 5, 0);
          v64 = v567;
          v566 = v20;
          v561 = v24;
          v309 = v584;
          v311 = *v584->clientIdentity;
          v310 = *&v584->clientIdentity[8];
          v312 = v311 + 1;
          if (v311 >= v310 >> 1)
          {
            sub_100026EF4((v310 > 1), v311 + 1, 1);
            v309 = v584;
          }

          *v309->clientIdentity = v312;
          v313 = v309 + 16 * v311;
          *(v313 + 4) = 0x44497463656A626FLL;
          *(v313 + 5) = 0xE800000000000000;
          v584 = v309;
          v314 = *&v309->clientIdentity[8];
          if (v312 >= v314 >> 1)
          {
            sub_100026EF4((v314 > 1), v311 + 2, 1);
            v309 = v584;
          }

          *v309->clientIdentity = v311 + 2;
          v315 = v309 + 16 * v312;
          *(v315 + 4) = 0x72656767697274;
          *(v315 + 5) = 0xE700000000000000;
          v316 = v582;
          v584 = v309;
          v318 = *v309->clientIdentity;
          v317 = *&v309->clientIdentity[8];
          v319 = v318 + 1;
          if (v318 >= v317 >> 1)
          {
            sub_100026EF4((v317 > 1), v318 + 1, 1);
            v309 = v584;
          }

          *v309->clientIdentity = v319;
          v320 = v309 + 16 * v318;
          *(v320 + 4) = 0xD000000000000010;
          *(v320 + 5) = v316;
          v584 = v309;
          v321 = *&v309->clientIdentity[8];
          if (v319 >= v321 >> 1)
          {
            sub_100026EF4((v321 > 1), v318 + 2, 1);
            v309 = v584;
          }

          *v309->clientIdentity = v318 + 2;
          v322 = v309 + 16 * v319;
          *(v322 + 4) = 0x4449556D72616C61;
          *(v322 + 5) = 0xE800000000000000;
          v238 = v581;
          v323 = v564;
          v584 = v309;
          v325 = *v309->clientIdentity;
          v324 = *&v309->clientIdentity[8];
          if (v325 >= v324 >> 1)
          {
            sub_100026EF4((v324 > 1), v325 + 1, 1);
            v309 = v584;
          }

          *v309->clientIdentity = v325 + 1;
          v326 = v309 + 16 * v325;
          *(v326 + 4) = 0xD000000000000010;
          *(v326 + 5) = v323;
          v327 = Array.description.getter();
          v329 = v328;

          v330 = sub_10000668C(v327, v329, &v589);
          v329, v331, v332, v333, v334, v335, v336, v337;
          *(v292 + 44) = v330;
          *(v292 + 52) = 1024;
          v338 = *(v238 + 104);

          *(v292 + 54) = v338;

          _os_log_impl(&_mh_execute_header, v290, v550, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v292, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v308 = v579;
          v20 = v566;
          v24 = v561;
        }

        else
        {

          v308 = v579;
          v64 = v567;
        }

        sub_100212774(v571, v20, &off_1008E31B8, v238);
        if (!v308)
        {
          v579 = 0;
          v339 = [v20 changedValues];

          v340 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          v341 = v577;
          swift_beginAccess();
          v342 = v24;

          v343 = swift_isUniquelyReferenced_nonNull_native();
          v589 = v341[7];
          v341[7] = 0x8000000000000000;
          sub_1002C8688(v340, v342, v343);

          v341[7] = v589;
          swift_endAccess();
          if (*(v238 + 104))
          {
            v340, v344, v345, v346, v347, v348, v349, v350;
            [v20 updateChangeCount];

            goto LABEL_143;
          }

          v351 = v342;

          v352 = Logger.logObject.getter();
          v353 = v20;
          v354 = static os_log_type_t.default.getter();
          v340, v355, v356, v357, v358, v359, v360, v361;

          if (os_log_type_enabled(v352, v354))
          {
            v369 = swift_slowAlloc();
            v370 = swift_slowAlloc();
            v561 = swift_slowAlloc();
            v584 = v561;
            *v369 = v551;
            *(v369 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v584);
            v566 = v353;
            *(v369 + 12) = 1024;
            *(v369 + 14) = 0;

            *(v369 + 18) = 1024;
            *(v369 + 20) = 1;
            *(v369 + 24) = 2114;
            *(v369 + 26) = v351;
            *v370 = v351;
            *(v369 + 34) = 2082;
            v371 = v351;
            v372 = v579;
            sub_1005E2810(v340);
            v374 = v373;
            v579 = v372;
            v340, v375, v376, v377, v378, v379, v380, v381;
            v382 = Array.description.getter();
            v384 = v383;
            v374, v383, v385, v386, v387, v388, v389, v390;
            v391 = sub_10000668C(v382, v384, &v584);
            v384, v392, v393, v394, v395, v396, v397, v398;
            *(v369 + 36) = v391;
            _os_log_impl(&_mh_execute_header, v352, v354, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v369, 0x2Cu);
            sub_1000050A4(v370, &unk_100938E70, &unk_100797230);
            v64 = v567;

            swift_arrayDestroy();

LABEL_143:
          }

          else
          {
            v340, v362, v363, v364, v365, v366, v367, v368;
          }

          v62 = v562;
          goto LABEL_146;
        }

        goto LABEL_158;
      }
    }

    if (qword_1009367A0 != -1)
    {
      goto LABEL_167;
    }

    goto LABEL_152;
  }

LABEL_150:
  v135, v174, v175, v176, v177, v178, v179, v180;
  v163, v406, v407, v408, v409, v410, v411, v412;
  v562, v413, v414, v415, v416, v417, v418, v419;
  [objc_opt_self() noSuchObjectErrorWithObjectID:v153];
  swift_willThrow();
}

void sub_100621758(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v559 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v556 = v531 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v554 = v531 - v14;
  v560 = type metadata accessor for UUID();
  v15 = *(v560 - 8);
  __chkstk_darwin(v560, v16);
  v558 = v531 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v557 = v531 - v20;
  v21 = a3[3];
  v566 = a3[2];
  v562 = a3;
  v553 = a3[4];
  if (qword_100936008 != -1)
  {
LABEL_175:
    swift_once();
  }

  v552 = type metadata accessor for Logger();
  v22 = sub_100006654(v552, qword_100945730);

  v563 = v22;
  v23 = Logger.logObject.getter();
  LOBYTE(v24) = static os_log_type_t.info.getter();
  v21, v25, v26, v27, v28, v29, v30, v31;
  v32 = os_log_type_enabled(&v23->super, v24);
  v33 = a1 >> 62;
  v34 = v5;
  v564 = v6;
  v567 = a1;
  v565 = a1 >> 62;
  v555 = v15;
  if (!v32)
  {

    a1, v56, v57, v58, v59, v60, v61, v62;
    goto LABEL_7;
  }

  v33 = swift_slowAlloc();
  v568 = swift_slowAlloc();
  *v33 = 136446978;
  *(v33 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v568);
  *(v33 + 12) = 2048;
  if (a1 >> 62)
  {
    goto LABEL_178;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v33 + 14) = i;
    a1, v35, v36, v37, v38, v39, v40, v41;
    *(v33 + 22) = 2082;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    v43 = [swift_getObjCClassFromMetadata() description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_10000668C(v44, v46, &v568);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v33 + 24) = v47;
    v55 = v566;
    a1 = v567;
    *(v33 + 32) = 2082;
    *(v33 + 34) = sub_10000668C(v55, v21, &v568);
    _os_log_impl(&_mh_execute_header, &v23->super, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v33, 0x2Au);
    swift_arrayDestroy();

    v5 = v34;
    v6 = v564;
    v33 = v565;
LABEL_7:
    v15 = v33 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = &_swiftEmptyArrayStorage;
    if (!v15)
    {
      break;
    }

    v568 = &_swiftEmptyArrayStorage;
    v23 = &v568;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      v6 = a1 & 0xC000000000000001;
      v566 = a1 & 0xFFFFFFFFFFFFFF8;
      v63 = off_1008D4158;
      while (1)
      {
        v5 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_173:

          v63, v515, v516, v517, v518, v519, v520, v521;
          v23, v522, v523, v524, v525, v526, v527, v528;

          return;
        }

        if (v6)
        {
          v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v566 + 16))
          {
            __break(1u);
            goto LABEL_175;
          }

          v64 = *&a1->clientIdentity[8 * v21 + 16];
        }

        v65 = v64;
        sub_1005E3810([v64 remObjectID], &unk_10093F790, off_1008D4158);
        if (v34)
        {

          return;
        }

        v23 = &v568;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v567;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v21;
        if (v5 == v15)
        {
          v24 = v568;
          v5 = 0;
          v6 = v564;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_178:
    ;
  }

LABEL_20:
  v66 = *(v6 + 96);
  if (v66 > 1)
  {
    if ((v66 - 2) >= 3 && v66 != 4499 && v66 != 4599)
    {
      goto LABEL_182;
    }

LABEL_27:
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v568 = v70;
      *v69 = 136315138;
      v71 = [objc_opt_self() cdEntityName];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = sub_10000668C(v72, v74, &v568);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v69 + 4) = v75;
      a1 = v567;
      _os_log_impl(&_mh_execute_header, v67, v68, "Performing fetch during upsert {CDType: %s}", v69, 0xCu);
      sub_10000607C(v70);
    }

    v83 = sub_1006639CC(v24, v562);
    if (v5)
    {
      goto LABEL_163;
    }

    goto LABEL_35;
  }

  if (!v66)
  {
    goto LABEL_27;
  }

  if (v66 != 1)
  {
LABEL_182:
    v529 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v530 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v529, v530);
    __break(1u);
    return;
  }

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v568 = v95;
    *v94 = 136315138;
    v96 = [objc_opt_self() cdEntityName];
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = sub_10000668C(v97, v99, &v568);
    v99, v101, v102, v103, v104, v105, v106, v107;
    *(v94 + 4) = v100;
    a1 = v567;
    _os_log_impl(&_mh_execute_header, v92, v93, "Skipping fetch during upsert {CDType: %s}", v94, 0xCu);
    sub_10000607C(v95);
  }

  v83 = sub_10038FA5C(&_swiftEmptyArrayStorage);
LABEL_35:
  v63 = v83;
  if (v565)
  {
    v108 = _CocoaArrayWrapper.endIndex.getter();
    if (!v108)
    {
LABEL_162:
      v63, v84, v85, v86, v87, v88, v89, v90;
LABEL_163:
      v24, v84, v85, v86, v87, v88, v89, v90;
      return;
    }
  }

  else
  {
    v108 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v108)
    {
      goto LABEL_162;
    }
  }

  v109 = 0;
  v110 = a1 & 0xC000000000000001;
  v111 = a1 & 0xFFFFFFFFFFFFFF8;
  v112 = &a1->clientIdentity[16];
  storeController = v555->storeController;
  v561 = 0x80000001007E8B60;
  v566 = 0x80000001007E8B40;
  v565 = 0x80000001007E8B20;
  v539 = &v555->clientIdentity[40];
  v538 = &v555->clientIdentity[32];
  *&v91 = 136446978;
  v536 = v91;
  *&v91 = 136446210;
  v550 = v91;
  *&v91 = 136447490;
  v535 = v91;
  *&v91 = 136447234;
  v534 = v91;
  *&v91 = 136446466;
  v537 = v91;
  v546 = v24;
  v548 = v63;
  v543 = v108;
  v542 = a1 & 0xC000000000000001;
  v541 = a1 & 0xFFFFFFFFFFFFFF8;
  v540 = &a1->clientIdentity[16];
  while (v110)
  {
    v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v114 = __OFADD__(v109, 1);
    v115 = v109 + 1;
    if (v114)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

LABEL_43:
    v116 = v113;
    v555 = sub_1005E3810([v116 remObjectID], &unk_10093F790, off_1008D4158);
    if (v5)
    {
      v63, v117, v118, v119, v120, v121, v122, v123;
      v24, v494, v495, v496, v497, v498, v499, v500;

      return;
    }

    v551 = 0;
    v545 = v115;
    v549 = v116;

    v124 = [*(v559 + 16) uuid];
    v125 = v557;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = UUID.uuidString.getter();
    v128 = v127;
    v129 = *storeController;
    v130 = v560;
    (*storeController)(v125, v560);
    v131 = [objc_opt_self() localInternalAccountID];
    v132 = [v131 uuid];

    v133 = v558;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v134 = UUID.uuidString.getter();
    v136 = v135;
    p_super = v129;
    (v129)(v133, v130);
    v144 = v128;
    if (v126 == v134 && v128 == v136)
    {
      v136, v137, v138, v139, v140, v141, v142, v143;
      v145 = v561;
    }

    else
    {
      v146 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v136, v147, v148, v149, v150, v151, v152, v153;
      v145 = v561;
      if ((v146 & 1) == 0)
      {
        v63 = v548;
        v5 = v551;
        goto LABEL_55;
      }
    }

    v154 = *(v564 + 68);
    v63 = v548;
    v155 = v551;
    if (v154 >> 14 >= 2)
    {
      if (v154 >> 14 == 2)
      {
        v156 = *(v564 + 64) | (*(v564 + 68) << 32);
      }

      else
      {
        v156 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v156 = 2147483519;
    }

    sub_100009A40(2, v156);
    v5 = v155;
    if (v155)
    {
      v144, v157, v158, v159, v160, v161, v162, v163;

      v63, v501, v502, v503, v504, v505, v506, v507;
      v546, v508, v509, v510, v511, v512, v513, v514;
LABEL_165:

      return;
    }

LABEL_55:
    v171 = sub_1005F623C();
    if (!v63[2] || (v172 = sub_100393C74(), (v164 & 1) == 0))
    {
      v551 = v5;
      if (v171 != 6)
      {
        v182 = 0;
        while (1)
        {
          if (v182 == 6)
          {
            goto LABEL_164;
          }

          v198 = *(&off_1008E31E0 + v182 + 32);
          if (v198 > 2)
          {
            if (v198 == 3)
            {
              v199 = 0xD000000000000014;
              v200 = v565;
            }

            else
            {
              if (v198 == 4)
              {
                v199 = 0xD000000000000016;
              }

              else
              {
                v199 = 0xD000000000000018;
              }

              if (v198 == 4)
              {
                v200 = v566;
              }

              else
              {
                v200 = v145;
              }
            }
          }

          else if (*(&off_1008E31E0 + v182 + 32))
          {
            if (v198 == 1)
            {
              v199 = 0x64656E6769737361;
            }

            else
            {
              v199 = 0x737574617473;
            }

            if (v198 == 1)
            {
              v200 = 0xEC00000065746144;
            }

            else
            {
              v200 = 0xE600000000000000;
            }
          }

          else
          {
            v200 = 0xE800000000000000;
            v199 = 0x44497463656A626FLL;
          }

          v201 = 0xD000000000000016;
          if (v171 != 4)
          {
            v201 = 0xD000000000000018;
          }

          v202 = v566;
          if (v171 != 4)
          {
            v202 = v145;
          }

          if (v171 == 3)
          {
            v201 = 0xD000000000000014;
            v202 = v565;
          }

          v203 = 0x64656E6769737361;
          if (v171 != 1)
          {
            v203 = 0x737574617473;
          }

          v204 = 0xEC00000065746144;
          if (v171 != 1)
          {
            v204 = 0xE600000000000000;
          }

          if (!v171)
          {
            v203 = 0x44497463656A626FLL;
            v204 = 0xE800000000000000;
          }

          v205 = (v171 <= 2u ? v203 : v201);
          v206 = (v171 <= 2u ? v204 : v202);
          if (v199 == v205 && v200 == v206)
          {
            break;
          }

          v183 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v200, v184, v185, v186, v187, v188, v189, v190;
          v206, v191, v192, v193, v194, v195, v196, v197;
          ++v182;
          if (v183)
          {
            v206 = v144;
            goto LABEL_102;
          }
        }

        v144, v164, v205, v166, v167, v168, v169, v170;
        v200, v207, v208, v209, v210, v211, v212, v213;
LABEL_102:
        v206, v164, v165, v166, v167, v168, v169, v170;
        v214 = *(v564 + 88);
        sub_1000060C8(0, &unk_10093F790, off_1008D4158);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v216 = [ObjCClassFromMetadata entity];
        v217 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v216 insertIntoManagedObjectContext:v214];
        v218 = v553;
        [v214 assignObject:v217 toPersistentStore:v218];

        v219 = v217;
        v220 = [(RDXPCStorePerformer *)v555 uuid];
        v221 = v554;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v222 = v560;
        (*v539)(v221, 0, 1, v560);
        v223 = v556;
        sub_10018E470(v221, v556);
        LODWORD(v222) = (*v538)(v223, 1, v222);
        v224 = v219;
        isa = 0;
        if (v222 != 1)
        {
          v226 = v556;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (p_super)(v226, v560);
        }

        [v224 setIdentifier:isa];

        sub_1000050A4(v221, &unk_100939D90, "8\n\r");
        v227 = v555;
        v228 = v564;

        v229 = v224;
        v230 = Logger.logObject.getter();
        v231 = static os_log_type_t.default.getter();

        v232 = os_log_type_enabled(v230, v231);
        v555 = v229;
        p_super = &v227->super;
        if (v232)
        {
          v233 = swift_slowAlloc();
          v234 = swift_slowAlloc();
          v235 = v227;
          v573 = swift_slowAlloc();
          *v233 = v536;
          *(v233 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v573);
          *(v233 + 12) = 2082;
          v236 = *(v228 + 40);
          v571 = *(v228 + 24);
          *v572 = v236;
          *&v572[14] = *(v228 + 54);
          sub_100009DAC(&v571, &v568);
          v237 = sub_1000063E8();
          v239 = v238;
          sub_1005812D4(&v571);
          v240 = sub_10000668C(v237, v239, &v573);
          v239, v241, v242, v243, v244, v245, v246, v247;
          *(v233 + 14) = v240;
          *(v233 + 22) = 2114;
          *(v233 + 24) = v235;
          *v234 = v235;
          *(v233 + 32) = 2112;
          v248 = v235;
          v249 = [(RDXPCStorePerformer *)v555 objectID];
          *(v233 + 34) = v249;
          v234[1] = v249;
          _os_log_impl(&_mh_execute_header, v230, v231, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v233, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();
        }

        v250 = v562;
        swift_beginAccess();
        v251 = v250[6];
        v252 = v564;
        v63 = v548;
        if ((v251 & 0xC000000000000001) != 0)
        {
          if (v251 < 0)
          {
            v253 = v250[6];
          }

          else
          {
            v253 = v251 & 0xFFFFFFFFFFFFFF8;
          }

          v112 = p_super;
          v254 = p_super;
          v255 = v555;
          v256 = v555;
          v257 = __CocoaDictionary.count.getter();
          if (__OFADD__(v257, 1))
          {
            goto LABEL_180;
          }

          v250[6] = sub_10021CDBC(v253, v257 + 1);
        }

        else
        {
          v112 = p_super;
          v258 = p_super;
          v255 = v555;
          v259 = v555;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v573 = v250[6];
        sub_1002C8398(v255, v112, isUniquelyReferenced_nonNull_native);
        v250[6] = v573;

        swift_endAccess();
        v261 = 0;
        v262 = *(v252 + 64) | (*(v252 + 68) << 32);
        do
        {
          if ((v262 & 0xC00000000001) == 0x800000000000)
          {
            v263 = *(&off_1008E31E0 + v261 + 32);
            v264 = Logger.logObject.getter();
            v265 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v264, v265))
            {
              v266 = swift_slowAlloc();
              v267 = swift_slowAlloc();
              v568 = v267;
              *v266 = v550;
              LOBYTE(v573) = v263;
              v268 = String.init<A>(describing:)();
              v270 = v269;
              v271 = sub_10000668C(v268, v269, &v568);
              v272 = v270;
              v252 = v564;
              v272, v273, v274, v275, v276, v277, v278, v279;
              *(v266 + 4) = v271;
              _os_log_impl(&_mh_execute_header, v264, v265, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v266, 0xCu);
              sub_10000607C(v267);
            }
          }

          v112 = *(v252 + 64);
          if (*(v252 + 68) >> 14 == 2 && (*(v252 + 64) & 1) == 0)
          {
            if (qword_1009367A0 != -1)
            {
              goto LABEL_181;
            }

            goto LABEL_167;
          }

          ++v261;
          v262 = v112 & 0xFFFF0000FFFFFFFFLL | (*(v252 + 68) << 32);
        }

        while (v261 != 6);
        swift_retain_n();
        v15 = p_super;
        v34 = v555;
        v281 = Logger.logObject.getter();
        v282 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v281, v282))
        {
          LODWORD(v533) = v282;
          p_super = v281;
          v283 = swift_slowAlloc();
          v284 = swift_slowAlloc();
          v532 = swift_slowAlloc();
          v573 = v532;
          *v283 = v535;
          *(v283 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v573);
          *(v283 + 12) = 2082;
          v285 = *(v252 + 40);
          v569 = *(v252 + 24);
          *v570 = v285;
          *&v570[14] = *(v252 + 54);
          sub_100009DAC(&v569, &v568);
          v286 = sub_1000063E8();
          v288 = v287;
          sub_1005812D4(&v569);
          v289 = sub_10000668C(v286, v288, &v573);
          v288, v290, v291, v292, v293, v294, v295, v296;
          *(v283 + 14) = v289;
          *(v283 + 22) = 2114;
          *(v283 + 24) = v15;
          *v284 = v15;
          *(v283 + 32) = 2112;
          v555 = v15;
          v297 = v15;
          v298 = [(RDXPCStorePerformer *)v34 objectID];
          *(v283 + 34) = v298;
          v531[1] = v284;
          v284[1] = v298;
          *(v283 + 42) = 2082;
          v568 = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, 6, 0);
          v299 = 0;
          v300 = v568;
          do
          {
            v301 = *(&off_1008E31E0 + v299 + 32);
            v302 = 0xD000000000000016;
            if (v301 != 4)
            {
              v302 = 0xD000000000000018;
            }

            v303 = v561;
            if (v301 == 4)
            {
              v303 = v566;
            }

            if (v301 == 3)
            {
              v302 = 0xD000000000000014;
              v303 = v565;
            }

            v304 = 0x64656E6769737361;
            if (v301 != 1)
            {
              v304 = 0x737574617473;
            }

            v305 = 0xEC00000065746144;
            if (v301 != 1)
            {
              v305 = 0xE600000000000000;
            }

            if (!*(&off_1008E31E0 + v299 + 32))
            {
              v304 = 0x44497463656A626FLL;
              v305 = 0xE800000000000000;
            }

            if (*(&off_1008E31E0 + v299 + 32) <= 2u)
            {
              v306 = v304;
            }

            else
            {
              v306 = v302;
            }

            if (*(&off_1008E31E0 + v299 + 32) <= 2u)
            {
              v307 = v305;
            }

            else
            {
              v307 = v303;
            }

            v568 = v300;
            v309 = *v300->clientIdentity;
            v308 = *&v300->clientIdentity[8];
            if (v309 >= v308 >> 1)
            {
              sub_100026EF4((v308 > 1), v309 + 1, 1);
              v300 = v568;
            }

            ++v299;
            *v300->clientIdentity = v309 + 1;
            v310 = v300 + 16 * v309;
            *(v310 + 4) = v306;
            *(v310 + 5) = v307;
          }

          while (v299 != 6);
          v311 = Array.description.getter();
          v313 = v312;

          v314 = sub_10000668C(v311, v313, &v573);
          v313, v315, v316, v317, v318, v319, v320, v321;
          *(v283 + 44) = v314;
          *(v283 + 52) = 1024;
          v252 = v564;
          v322 = *(v564 + 104);

          *(v283 + 54) = v322;

          v323 = p_super;
          _os_log_impl(&_mh_execute_header, p_super, v533, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v283, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v324 = v551;
          v23 = v546;
          v15 = v555;
        }

        else
        {

          v324 = v551;
          v23 = v546;
        }

        sub_10031109C(v549, v34, &off_1008E31E0);
        v5 = v324;
        if (v324)
        {
          goto LABEL_173;
        }

        v325 = [(RDXPCStorePerformer *)v34 changedValues];

        v326 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v327 = v562;
        swift_beginAccess();
        v328 = v15;

        v329 = swift_isUniquelyReferenced_nonNull_native();
        v573 = v327[7];
        v327[7] = 0x8000000000000000;
        sub_1002C8688(v326, v328, v329);

        v327[7] = v573;
        swift_endAccess();
        if (*(v252 + 104))
        {
          v326, v330, v331, v332, v333, v334, v335, v336;
          [(RDXPCStorePerformer *)v34 updateChangeCount];

LABEL_155:
          goto LABEL_157;
        }

        v337 = v328;

        v338 = Logger.logObject.getter();
        v339 = static os_log_type_t.default.getter();
        v326, v340, v341, v342, v343, v344, v345, v346;

        if (os_log_type_enabled(v338, v339))
        {
          v354 = swift_slowAlloc();
          v355 = swift_slowAlloc();
          LODWORD(v551) = v339;
          v356 = v355;
          v533 = v355;
          v555 = swift_slowAlloc();
          v568 = v555;
          *v354 = v534;
          *(v354 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v568);
          p_super = v338;
          *(v354 + 12) = 1024;
          *(v354 + 14) = 0;

          *(v354 + 18) = 1024;
          *(v354 + 20) = 1;
          *(v354 + 24) = 2114;
          *(v354 + 26) = v337;
          *v356 = v337;
          *(v354 + 34) = 2082;
          v357 = v337;
          sub_1005E2810(v326);
          v359 = v358;
          v326, v360, v361, v362, v363, v364, v365, v366;
          v367 = Array.description.getter();
          v369 = v368;
          v359, v368, v370, v371, v372, v373, v374, v375;
          v376 = sub_10000668C(v367, v369, &v568);
          v369, v377, v378, v379, v380, v381, v382, v383;
          *(v354 + 36) = v376;
          v384 = p_super;
          _os_log_impl(&_mh_execute_header, p_super, v551, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v354, 0x2Cu);
          sub_1000050A4(v533, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          goto LABEL_155;
        }

        v326, v347, v348, v349, v350, v351, v352, v353;

        goto LABEL_157;
      }

LABEL_164:
      v144, v164, v165, v166, v167, v168, v169, v170;
      v63, v385, v386, v387, v388, v389, v390, v391;
      v546, v392, v393, v394, v395, v396, v397, v398;
      v399 = objc_opt_self();
      v400 = v555;
      [v399 noSuchObjectErrorWithObjectID:v555];
      swift_willThrow();

      goto LABEL_165;
    }

    v173 = v172;
    v144, v164, v165, v166, v167, v168, v169, v170;
    v174 = *(&v63[7]->isa + v173);
    v175 = v555;
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v568 = v180;
      *v178 = v537;
      *(v178 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v568);
      *(v178 + 12) = 2114;
      *(v178 + 14) = v175;
      *v179 = v175;
      v181 = v175;
      _os_log_impl(&_mh_execute_header, v176, v177, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v178, 0x16u);
      sub_1000050A4(v179, &unk_100938E70, &unk_100797230);

      sub_10000607C(v180);
    }

    else
    {
    }

LABEL_157:
    v109 = v545;
    v110 = v542;
    v24 = v546;
    v111 = v541;
    v112 = v540;
    if (v545 == v543)
    {
      goto LABEL_162;
    }
  }

  if (v109 < *(v111 + 16))
  {
    v113 = *(v112 + 8 * v109);
    v114 = __OFADD__(v109, 1);
    v115 = v109 + 1;
    if (v114)
    {
      goto LABEL_161;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  swift_once();
LABEL_167:
  sub_100006654(v552, qword_100950D98);
  v401 = Logger.logObject.getter();
  v402 = static os_log_type_t.error.getter();
  v403 = os_log_type_enabled(v401, v402);
  v404 = v546;
  v405 = v555;
  if (v403)
  {
    v406 = swift_slowAlloc();
    v568 = swift_slowAlloc();
    *v406 = v537;
    v414 = sub_100729CB0(1, v407, v408, v409, v410, v411, v412, v413);
    v416 = v415;
    v417 = sub_10000668C(v414, v415, &v568);
    v416, v418, v419, v420, v421, v422, v423, v424;
    *(v406 + 4) = v417;
    *(v406 + 12) = 2082;
    v432 = sub_100729CB0(v112, v425, v426, v427, v428, v429, v430, v431);
    v434 = v433;
    v435 = sub_10000668C(v432, v433, &v568);
    v434, v436, v437, v438, v439, v440, v441, v442;
    *(v406 + 14) = v435;
    _os_log_impl(&_mh_execute_header, v401, v402, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v406, 0x16u);
    swift_arrayDestroy();
  }

  v443 = v549;
  v444 = objc_opt_self();
  v445 = String._bridgeToObjectiveC()();
  sub_100729CB0(1, v446, v447, v448, v449, v450, v451, v452);
  v454 = v453;
  v455 = String._bridgeToObjectiveC()();
  v454, v456, v457, v458, v459, v460, v461, v462;
  sub_100729CB0(v112, v463, v464, v465, v466, v467, v468, v469);
  v471 = v470;
  v472 = String._bridgeToObjectiveC()();
  v471, v473, v474, v475, v476, v477, v478, v479;
  [v444 unauthorizedErrorWithMissingEntitlement:v445 requestedAccessLevel:v455 currentAccesslevel:v472];

  swift_willThrow();
  v548, v480, v481, v482, v483, v484, v485, v486;

  v404, v487, v488, v489, v490, v491, v492, v493;
}

void sub_1006236BC(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v626 = v600 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v600 - v12;
  v14 = type metadata accessor for UUID();
  v628 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = v600 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = v600 - v20;
  v22 = a3[3];
  *&v629 = a3[2];
  v632 = v22;
  v627 = a3[4];
  v633 = v3;
  v23 = *(v3 + 72);
  v630 = a2;
  *&v635.clientIdentity[8] = v23;
  *&v635.clientIdentity[16] = a2;
  *v635.clientIdentity = &v635.clientIdentity[16];

  v24 = v634;
  v30 = sub_100759CB4(sub_1006B021C, &v635, a1, v25, v26, v27, v28, v29);
  if (v24)
  {
    return;
  }

  v634 = v30;
  v620 = v23;
  v621 = v21;
  v624 = v17;
  v622 = v14;
  v619 = v13;
  v625 = a3;
  v31 = 0;
  if (qword_100936008 != -1)
  {
LABEL_203:
    swift_once();
  }

  v618 = type metadata accessor for Logger();
  v32 = sub_100006654(v618, qword_100945730);
  v33 = v634;

  v34 = v632;

  v631 = v32;
  v35 = Logger.logObject.getter();
  LOBYTE(v36) = static os_log_type_t.info.getter();
  v34, v37, v38, v39, v40, v41, v42, v43;
  v44 = os_log_type_enabled(v35, v36);
  v45 = (v33 >> 62);
  v46 = v633;
  if (!v44)
  {

    v33, v67, v68, v69, v70, v71, v72, v73;
    goto LABEL_8;
  }

  v13 = swift_slowAlloc();
  v617 = swift_slowAlloc();
  *&v635.clientIdentity[16] = v617;
  *v13 = 136446978;
  *(v13 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v635.clientIdentity[16]);
  *(v13 + 6) = 2048;
  if (v45)
  {
    goto LABEL_206;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v13 + 14) = i;
    v33, v47, v48, v49, v50, v51, v52, v53;
    *(v13 + 11) = 2082;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    v55 = [swift_getObjCClassFromMetadata() description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v33 = v634;
    v59 = sub_10000668C(v56, v58, &v635.clientIdentity[16]);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v13 + 3) = v59;
    *(v13 + 16) = 2082;
    *(v13 + 34) = sub_10000668C(v629, v34, &v635.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v13, 0x2Au);
    swift_arrayDestroy();

    v46 = v633;
LABEL_8:
    v74 = v45 ? _CocoaArrayWrapper.endIndex.getter() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = &_swiftEmptyArrayStorage;
    v623 = v45;
    if (!v74)
    {
      break;
    }

    *&v635.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v35 = &v635.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v74 & 0x8000000000000000) == 0)
    {
      v75 = 0;
      v76 = v33;
      v77 = (v33 & 0xC000000000000001);
      v632 = v76 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v13 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          __break(1u);
LABEL_201:

          v77, v577, v578, v579, v580, v581, v582, v583;
          v617, v584, v585, v586, v587, v588, v589, v590;

          v616, v591, v592, v593, v594, v595, v596, v597;
          return;
        }

        if (v77)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v75 >= *(v632 + 16))
          {
            __break(1u);
            goto LABEL_203;
          }

          v78 = *(v634 + 8 * v75 + 32);
        }

        v79 = v78;
        sub_1005E3810([v78 remObjectID], &qword_100942E50, off_1008D41E0);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = *(*&v635.clientIdentity[16] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v75 = v75 + 1;
        if (v13 == v74)
        {
          v36 = *&v635.clientIdentity[16];
          v46 = v633;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_206:
    ;
  }

LABEL_20:
  v80 = v46[12];
  if (v80 > 1)
  {
    if ((v80 - 2) >= 3 && v80 != 4499 && v80 != 4599)
    {
      goto LABEL_210;
    }

    goto LABEL_26;
  }

  if (!v80)
  {
LABEL_26:
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v635.clientIdentity[16] = v84;
      *v83 = 136315138;
      v85 = [objc_opt_self() cdEntityName];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v36;
      v89 = v88;

      v90 = sub_10000668C(v86, v89, &v635.clientIdentity[16]);
      v91 = v89;
      v36 = v87;
      v91, v92, v93, v94, v95, v96, v97, v98;
      *(v83 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v81, v82, "Performing fetch during upsert {CDType: %s}", v83, 0xCu);
      sub_10000607C(v84);
    }

    v99 = v630;
    v100 = v624;
    v101 = v623;
    v102 = sub_1006670C8(v36, v625);
    goto LABEL_33;
  }

  if (v80 != 1)
  {
    goto LABEL_210;
  }

  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v635.clientIdentity[16] = v114;
    *v113 = 136315138;
    v115 = [objc_opt_self() cdEntityName];
    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v36;
    v119 = v118;

    v120 = sub_10000668C(v116, v119, &v635.clientIdentity[16]);
    v121 = v119;
    v36 = v117;
    v121, v122, v123, v124, v125, v126, v127, v128;
    *(v113 + 4) = v120;
    _os_log_impl(&_mh_execute_header, v111, v112, "Skipping fetch during upsert {CDType: %s}", v113, 0xCu);
    sub_10000607C(v114);
  }

  v99 = v630;
  v100 = v624;
  v101 = v623;
  v102 = sub_100390560(&_swiftEmptyArrayStorage);
LABEL_33:
  v129 = v102;
  v130 = v628;
  if (v101)
  {
    v131 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v131 = *((v634 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v616 = v36;
  if (!v131)
  {
    goto LABEL_191;
  }

  v132 = 0;
  v133 = v634 & 0xC000000000000001;
  v134 = v634 & 0xFFFFFFFFFFFFFF8;
  v135 = (v634 + 32);
  v614 = (v130 + 8);
  v611 = (v130 + 56);
  v610 = (v130 + 48);
  *&v110 = 136446978;
  v605 = v110;
  *&v110 = 136446210;
  v629 = v110;
  *&v110 = 136447490;
  v604 = v110;
  *&v110 = 136447234;
  v603 = v110;
  v617 = v129;
  v609 = v131;
  v608 = v634 & 0xC000000000000001;
  v607 = v634 & 0xFFFFFFFFFFFFFF8;
  v606 = (v634 + 32);
LABEL_38:
  if (v133)
  {
    v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v137 = __OFADD__(v132, 1);
    v138 = v132 + 1;
    if (!v137)
    {
      goto LABEL_41;
    }

    goto LABEL_190;
  }

  if (v132 >= *(v134 + 16))
  {
    __break(1u);
LABEL_208:
    swift_once();
LABEL_194:
    sub_100006654(v618, qword_100950D98);
    v420 = Logger.logObject.getter();
    v421 = static os_log_type_t.error.getter();
    v422 = os_log_type_enabled(v420, v421);
    v423 = v616;
    v424 = v615;
    if (v422)
    {
      v425 = swift_slowAlloc();
      *&v635.clientIdentity[16] = swift_slowAlloc();
      *v425 = 136446466;
      v433 = sub_100729CB0(4, v426, v427, v428, v429, v430, v431, v432);
      v435 = v434;
      v436 = sub_10000668C(v433, v434, &v635.clientIdentity[16]);
      v435, v437, v438, v439, v440, v441, v442, v443;
      *(v425 + 4) = v436;
      *(v425 + 12) = 2082;
      v451 = sub_100729CB0(v133, v444, v445, v446, v447, v448, v449, v450);
      v453 = v452;
      v454 = sub_10000668C(v451, v452, &v635.clientIdentity[16]);
      v453, v455, v456, v457, v458, v459, v460, v461;
      *(v425 + 14) = v454;
      _os_log_impl(&_mh_execute_header, v420, v421, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v425, 0x16u);
      swift_arrayDestroy();
    }

    v462 = objc_opt_self();
    v463 = String._bridgeToObjectiveC()();
    sub_100729CB0(4, v464, v465, v466, v467, v468, v469, v470);
    v472 = v471;
    v473 = String._bridgeToObjectiveC()();
    v472, v474, v475, v476, v477, v478, v479, v480;
    sub_100729CB0(v133, v481, v482, v483, v484, v485, v486, v487);
    v489 = v488;
    v490 = String._bridgeToObjectiveC()();
    v489, v491, v492, v493, v494, v495, v496, v497;
    [v462 unauthorizedErrorWithMissingEntitlement:v463 requestedAccessLevel:v473 currentAccesslevel:v490];

    swift_willThrow();
    v634, v498, v499, v500, v501, v502, v503, v504;
    v617, v505, v506, v507, v508, v509, v510, v511;

    v423, v512, v513, v514, v515, v516, v517, v518;
    return;
  }

  v136 = *&v135[8 * v132];
  v137 = __OFADD__(v132, 1);
  v138 = v132 + 1;
  if (v137)
  {
LABEL_190:
    __break(1u);
LABEL_191:
    v634, v103, v104, v105, v106, v107, v108, v109;
    v129, v406, v407, v408, v409, v410, v411, v412;
    v616, v413, v414, v415, v416, v417, v418, v419;
    return;
  }

LABEL_41:
  v139 = v136;
  v628 = sub_1005E3810([v139 remObjectID], &qword_100942E50, off_1008D41E0);
  if (v31)
  {
    v634, v140, v141, v142, v143, v144, v145, v146;
    v129, v542, v543, v544, v545, v546, v547, v548;
    v616, v549, v550, v551, v552, v553, v554, v555;

    return;
  }

  v613 = v138;
  v632 = 0;
  v623 = v139;

  v147 = [*v99->clientIdentity uuid];
  v148 = v621;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v615 = UUID.uuidString.getter();
  v150 = v149;
  v151 = *v614;
  v152 = v622;
  (*v614)(v148, v622);
  v153 = [objc_opt_self() localInternalAccountID];
  v154 = [v153 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v155 = UUID.uuidString.getter();
  v157 = v156;
  v612 = v151;
  (v151)(v100, v152);
  v165 = v150;
  if (v615 == v155 && v150 == v157)
  {
    v157, v158, v159, v160, v161, v162, v163, v164;
    v166 = v627;
    v167 = v620;
    goto LABEL_46;
  }

  v168 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v157, v169, v170, v171, v172, v173, v174, v175;
  v166 = v627;
  v167 = v620;
  if (v168)
  {
LABEL_46:
    v176 = *(v633 + 68);
    if (v176 >> 14 >= 2)
    {
      if (v176 >> 14 == 2)
      {
        v177 = *(v633 + 64) | (*(v633 + 68) << 32);
      }

      else
      {
        v177 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v177 = 2147483519;
    }

    v178 = v632;
    sub_100009A40(2, v177);
    v632 = v178;
    if (v178)
    {
      v634, v179, v180, v181, v182, v183, v184, v185;
      v150, v556, v557, v558, v559, v560, v561, v562;

      v617, v563, v564, v565, v566, v567, v568, v569;
      v616, v570, v571, v572, v573, v574, v575, v576;

      return;
    }
  }

  v186 = [v623 remObjectID];
  v187 = v186;
  if (*(v167 + 16))
  {
    sub_10002B924(v186);
  }

  v195 = sub_1005F6AB0(sub_10047B0C4, &qword_100942E50, off_1008D41E0);
  v196 = v617;
  if (*v617->clientIdentity)
  {
    v197 = sub_100393C74();
    if (v188)
    {
      v198 = v197;
      v165, v188, v189, v190, v191, v192, v193, v194;
      v615 = *(*&v196->clientIdentity[40] + 8 * v198);
      v199 = v634;
      v200 = v633;
LABEL_131:
      v281 = 0;
      v282 = *(v200 + 64) | (*(v200 + 68) << 32);
      while (1)
      {
        if ((v282 & 0xC00000000004) == 0x800000000000)
        {
          v283 = *(&off_1008E1FA8 + v281 + 32);
          v284 = Logger.logObject.getter();
          v285 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v284, v285))
          {
            v286 = swift_slowAlloc();
            v287 = swift_slowAlloc();
            *&v635.clientIdentity[16] = v287;
            *v286 = v629;
            LOBYTE(v636) = v283;
            v288 = String.init<A>(describing:)();
            v290 = v289;
            v291 = sub_10000668C(v288, v289, &v635.clientIdentity[16]);
            v290, v292, v293, v294, v295, v296, v297, v298;
            *(v286 + 4) = v291;
            _os_log_impl(&_mh_execute_header, v284, v285, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v286, 0xCu);
            sub_10000607C(v287);
            v199 = v634;
          }

          v200 = v633;
        }

        v133 = *(v200 + 64);
        if (*(v200 + 68) >> 14 == 2 && (*(v200 + 64) & 4) == 0)
        {
          break;
        }

        ++v281;
        v282 = v133 & 0xFFFF0000FFFFFFFFLL | (*(v200 + 68) << 32);
        if (v281 == 11)
        {
          swift_retain_n();
          v74 = v628;
          v75 = v615;
          v300 = Logger.logObject.getter();
          v301 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v300, v301))
          {
            v602 = v301;
            v612 = v300;
            v302 = swift_slowAlloc();
            v303 = swift_slowAlloc();
            v601 = swift_slowAlloc();
            v636 = v601;
            *v302 = v604;
            *(v302 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v636);
            *(v302 + 12) = 2082;
            v304 = *(v200 + 40);
            *&v635.dataAccessRequestsWriter[2] = *(v200 + 24);
            *&v635.coreSuggestionsHandler[2] = v304;
            *&v635.coreSuggestionsHandler[16] = *(v200 + 54);
            sub_100009DAC(&v635.dataAccessRequestsWriter[2], &v635.clientIdentity[16]);
            v305 = sub_1000063E8();
            v307 = v306;
            sub_1005812D4(&v635.dataAccessRequestsWriter[2]);
            v308 = sub_10000668C(v305, v307, &v636);
            v307, v309, v310, v311, v312, v313, v314, v315;
            *(v302 + 14) = v308;
            *(v302 + 22) = 2114;
            *(v302 + 24) = v74;
            *v303 = v74;
            *(v302 + 32) = 2112;
            v628 = v74;
            v316 = v74;
            v615 = v75;
            v317 = [v75 objectID];
            *(v302 + 34) = v317;
            v600[1] = v303;
            v303[1] = v317;
            *(v302 + 42) = 2082;
            *&v635.clientIdentity[16] = &_swiftEmptyArrayStorage;
            sub_100026EF4(0, 11, 0);
            v318 = 0;
            v319 = *&v635.clientIdentity[16];
            do
            {
              v320 = *(&off_1008E1FA8 + v318 + 32);
              v321 = 0x654C737365636361;
              if (v320 == 9)
              {
                v321 = 0x737574617473;
              }

              v322 = 0xEB000000006C6576;
              if (v320 == 9)
              {
                v322 = 0xE600000000000000;
              }

              if (v320 == 8)
              {
                v321 = 0x73736572646461;
                v322 = 0xE700000000000000;
              }

              v323 = 0x66667553656D616ELL;
              if (v320 == 6)
              {
                v324 = 0xEA00000000007869;
              }

              else
              {
                v323 = 0x656D616E6B63696ELL;
                v324 = 0xE800000000000000;
              }

              if (v320 == 5)
              {
                v323 = 0x66657250656D616ELL;
                v324 = 0xEA00000000007869;
              }

              if (*(&off_1008E1FA8 + v318 + 32) <= 7u)
              {
                v321 = v323;
                v322 = v324;
              }

              v325 = 0x656D614E7473616CLL;
              if (v320 == 3)
              {
                v325 = 0x614E656C6464696DLL;
              }

              v326 = 0xEA0000000000656DLL;
              if (v320 != 3)
              {
                v326 = 0xE800000000000000;
              }

              if (v320 == 2)
              {
                v325 = 0x6D614E7473726966;
                v326 = 0xE900000000000065;
              }

              v327 = 0x4E79616C70736964;
              if (!*(&off_1008E1FA8 + v318 + 32))
              {
                v327 = 0x44497463656A626FLL;
              }

              v328 = 0xEB00000000656D61;
              if (!*(&off_1008E1FA8 + v318 + 32))
              {
                v328 = 0xE800000000000000;
              }

              if (*(&off_1008E1FA8 + v318 + 32) <= 1u)
              {
                v325 = v327;
                v326 = v328;
              }

              if (*(&off_1008E1FA8 + v318 + 32) <= 4u)
              {
                v329 = v325;
              }

              else
              {
                v329 = v321;
              }

              if (*(&off_1008E1FA8 + v318 + 32) <= 4u)
              {
                v330 = v326;
              }

              else
              {
                v330 = v322;
              }

              *&v635.clientIdentity[16] = v319;
              v332 = *(v319 + 16);
              v331 = *(v319 + 24);
              if (v332 >= v331 >> 1)
              {
                sub_100026EF4((v331 > 1), v332 + 1, 1);
                v319 = *&v635.clientIdentity[16];
              }

              ++v318;
              *(v319 + 16) = v332 + 1;
              v333 = v319 + 16 * v332;
              *(v333 + 32) = v329;
              *(v333 + 40) = v330;
            }

            while (v318 != 11);
            v334 = Array.description.getter();
            v336 = v335;

            v337 = sub_10000668C(v334, v336, &v636);
            v336, v338, v339, v340, v341, v342, v343, v344;
            *(v302 + 44) = v337;
            *(v302 + 52) = 1024;
            v200 = v633;
            LODWORD(v337) = *(v633 + 104);

            *(v302 + 54) = v337;

            v345 = v612;
            _os_log_impl(&_mh_execute_header, v612, v602, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v302, 0x3Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v77 = v634;
            v346 = v632;
            v74 = v628;
            v75 = v615;
          }

          else
          {

            v346 = v632;
            v77 = v199;
          }

          v46 = v623;
          sub_10047B95C(v623, v75, &off_1008E1FA8);
          if (v346)
          {
            goto LABEL_201;
          }

          v632 = 0;
          v347 = v75;
          v348 = [v347 changedValues];
          v349 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v350 = v625;
          swift_beginAccess();
          v351 = v74;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v636 = v350[7];
          v350[7] = 0x8000000000000000;
          sub_1002C8688(v349, v351, isUniquelyReferenced_nonNull_native);

          v350[7] = v636;
          swift_endAccess();
          if (*(v200 + 104))
          {
            v349, v353, v354, v355, v356, v357, v358, v359;
            [v347 updateChangeCount];

            goto LABEL_184;
          }

          v360 = v351;

          v361 = Logger.logObject.getter();
          v362 = static os_log_type_t.default.getter();
          v349, v363, v364, v365, v366, v367, v368, v369;

          if (os_log_type_enabled(v361, v362))
          {
            v377 = swift_slowAlloc();
            v612 = swift_slowAlloc();
            v628 = swift_slowAlloc();
            *&v635.clientIdentity[16] = v628;
            *v377 = v603;
            *(v377 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v635.clientIdentity[16]);
            *(v377 + 12) = 1024;
            *(v377 + 14) = 0;

            *(v377 + 18) = 1024;
            *(v377 + 20) = 0;
            *(v377 + 24) = 2114;
            *(v377 + 26) = v360;
            v378 = v612;
            v612->isa = v360;
            *(v377 + 34) = 2082;
            v615 = v360;
            v379 = v632;
            sub_1005E2810(v349);
            v381 = v380;
            v632 = v379;
            v349, v382, v383, v384, v385, v386, v387, v388;
            v389 = Array.description.getter();
            v391 = v390;
            v381, v390, v392, v393, v394, v395, v396, v397;
            v398 = sub_10000668C(v389, v391, &v635.clientIdentity[16]);
            v391, v399, v400, v401, v402, v403, v404, v405;
            *(v377 + 36) = v398;
            _os_log_impl(&_mh_execute_header, v361, v362, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v377, 0x2Cu);
            sub_1000050A4(v378, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

LABEL_184:
          }

          else
          {
            v349, v370, v371, v372, v373, v374, v375, v376;
          }

          v132 = v613;
          v31 = v632;
          v99 = v630;
          v100 = v624;
          v129 = v617;
          v133 = v608;
          v134 = v607;
          v135 = v606;
          if (v613 != v609)
          {
            goto LABEL_38;
          }

          goto LABEL_191;
        }
      }

      if (qword_1009367A0 != -1)
      {
        goto LABEL_208;
      }

      goto LABEL_194;
    }
  }

  if (v195 == 11)
  {
LABEL_197:
    v165, v188, v189, v190, v191, v192, v193, v194;
    v634, v519, v520, v521, v522, v523, v524, v525;
    v617, v526, v527, v528, v529, v530, v531, v532;
    v616, v533, v534, v535, v536, v537, v538, v539;
    v540 = objc_opt_self();
    v541 = v628;
    [v540 noSuchObjectErrorWithObjectID:v628];
    swift_willThrow();

    return;
  }

  v201 = 0;
  do
  {
    if (v201 == 11)
    {
      goto LABEL_197;
    }

    v217 = *(&off_1008E1FA8 + v201 + 32);
    if (v217 <= 4)
    {
      if (*(&off_1008E1FA8 + v201 + 32) > 1u)
      {
        if (v217 == 2)
        {
          v218 = 0x6D614E7473726966;
          v219 = 0xE900000000000065;
        }

        else if (v217 == 3)
        {
          v218 = 0x614E656C6464696DLL;
          v219 = 0xEA0000000000656DLL;
        }

        else
        {
          v219 = 0xE800000000000000;
          v218 = 0x656D614E7473616CLL;
        }

        goto LABEL_84;
      }

      if (!*(&off_1008E1FA8 + v201 + 32))
      {
        v219 = 0xE800000000000000;
        v218 = 0x44497463656A626FLL;
        goto LABEL_84;
      }

      v218 = 0x4E79616C70736964;
      v220 = 6647137;
LABEL_83:
      v219 = (v220 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
      goto LABEL_84;
    }

    if (*(&off_1008E1FA8 + v201 + 32) > 7u)
    {
      if (v217 == 8)
      {
        v219 = 0xE700000000000000;
        v218 = 0x73736572646461;
        goto LABEL_84;
      }

      if (v217 == 9)
      {
        v219 = 0xE600000000000000;
        v218 = 0x737574617473;
        goto LABEL_84;
      }

      v218 = 0x654C737365636361;
      v220 = 7103862;
      goto LABEL_83;
    }

    if (v217 == 5)
    {
      v218 = 0x66657250656D616ELL;
      goto LABEL_77;
    }

    if (v217 == 6)
    {
      v218 = 0x66667553656D616ELL;
LABEL_77:
      v219 = 0xEA00000000007869;
      goto LABEL_84;
    }

    v219 = 0xE800000000000000;
    v218 = 0x656D616E6B63696ELL;
LABEL_84:
    v221 = 0x654C737365636361;
    if (v195 == 9)
    {
      v221 = 0x737574617473;
    }

    v222 = 0xEB000000006C6576;
    if (v195 == 9)
    {
      v222 = 0xE600000000000000;
    }

    if (v195 == 8)
    {
      v221 = 0x73736572646461;
      v222 = 0xE700000000000000;
    }

    v223 = 0x66667553656D616ELL;
    if (v195 == 6)
    {
      v224 = 0xEA00000000007869;
    }

    else
    {
      v223 = 0x656D616E6B63696ELL;
      v224 = 0xE800000000000000;
    }

    if (v195 == 5)
    {
      v223 = 0x66657250656D616ELL;
      v224 = 0xEA00000000007869;
    }

    if (v195 <= 7u)
    {
      v221 = v223;
      v222 = v224;
    }

    v225 = 0x656D614E7473616CLL;
    if (v195 == 3)
    {
      v225 = 0x614E656C6464696DLL;
    }

    v226 = 0xEA0000000000656DLL;
    if (v195 != 3)
    {
      v226 = 0xE800000000000000;
    }

    if (v195 == 2)
    {
      v225 = 0x6D614E7473726966;
      v226 = 0xE900000000000065;
    }

    v227 = 0x4E79616C70736964;
    if (!v195)
    {
      v227 = 0x44497463656A626FLL;
    }

    v228 = 0xEB00000000656D61;
    if (!v195)
    {
      v228 = 0xE800000000000000;
    }

    if (v195 <= 1u)
    {
      v225 = v227;
      v226 = v228;
    }

    if (v195 <= 4u)
    {
      v229 = v225;
    }

    else
    {
      v229 = v221;
    }

    if (v195 <= 4u)
    {
      v230 = v226;
    }

    else
    {
      v230 = v222;
    }

    if (v218 == v229 && v219 == v230)
    {
      v165, v188, v229, v190, v191, v192, v193, v194;
      v219, v231, v232, v233, v234, v235, v236, v237;
      v238 = v230;
      goto LABEL_119;
    }

    v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v219, v203, v204, v205, v206, v207, v208, v209;
    v230, v210, v211, v212, v213, v214, v215, v216;
    ++v201;
  }

  while ((v202 & 1) == 0);
  v238 = v165;
LABEL_119:
  v238, v188, v189, v190, v191, v192, v193, v194;
  v239 = *(v633 + 88);
  sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v241 = [ObjCClassFromMetadata entity];
  v242 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v241 insertIntoManagedObjectContext:v239];
  v243 = v166;
  v244 = v242;
  [v239 assignObject:v244 toPersistentStore:v243];

  v245 = v244;
  v246 = [v628 uuid];
  v247 = v619;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v248 = v622;
  (*v611)(v247, 0, 1, v622);
  v249 = v626;
  sub_10018E470(v247, v626);
  isa = 0;
  if ((*v610)(v249, 1, v248) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v612)(v249, v248);
  }

  [v245 setIdentifier:isa];

  sub_1000050A4(v247, &unk_100939D90, "8\n\r");
  v200 = v633;

  v251 = v628;
  v252 = v245;
  v253 = Logger.logObject.getter();
  v254 = static os_log_type_t.default.getter();

  v255 = os_log_type_enabled(v253, v254);
  v615 = v252;
  if (v255)
  {
    v256 = swift_slowAlloc();
    v257 = swift_slowAlloc();
    v612 = swift_slowAlloc();
    v636 = v612;
    *v256 = v605;
    *(v256 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v636);
    *(v256 + 12) = 2082;
    v258 = *(v200 + 40);
    *&v635.coreSuggestionsHandler[34] = *(v200 + 24);
    *&v635.publicCloudDatabaseController[10] = v258;
    *&v635.publicCloudDatabaseController[24] = *(v200 + 54);
    sub_100009DAC(&v635.coreSuggestionsHandler[34], &v635.clientIdentity[16]);
    v259 = sub_1000063E8();
    v261 = v260;
    sub_1005812D4(&v635.coreSuggestionsHandler[34]);
    v262 = sub_10000668C(v259, v261, &v636);
    v261, v263, v264, v265, v266, v267, v268, v269;
    *(v256 + 14) = v262;
    *(v256 + 22) = 2114;
    *(v256 + 24) = v251;
    *v257 = v251;
    *(v256 + 32) = 2112;
    v270 = v251;
    v271 = [v252 objectID];
    *(v256 + 34) = v271;
    v257[1] = v271;
    _os_log_impl(&_mh_execute_header, v253, v254, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v256, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v199 = v634;
  v272 = v625;
  swift_beginAccess();
  v273 = v272[6];
  if ((v273 & 0xC000000000000001) == 0)
  {
    v279 = v251;
    v278 = v625;
    goto LABEL_130;
  }

  if (v273 < 0)
  {
    v274 = v272[6];
  }

  else
  {
    v274 = v273 & 0xFFFFFFFFFFFFFF8;
  }

  v275 = v251;
  v276 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v276, 1))
  {
    v277 = sub_10021CDBC(v274, v276 + 1);
    v278 = v625;
    v625[6] = v277;
LABEL_130:
    v280 = swift_isUniquelyReferenced_nonNull_native();
    v636 = v278[6];
    sub_1002C8398(v615, v251, v280);
    v278[6] = v636;

    swift_endAccess();
    goto LABEL_131;
  }

  __break(1u);
LABEL_210:
  v598 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v599 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown mode", 12, 2, v598, v599);
  __break(1u);
}

void sub_10062586C(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v611 = v584 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v584 - v12;
  v14 = type metadata accessor for UUID();
  v613 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = v584 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = v584 - v20;
  v22 = a3[3];
  v614 = a3[2];
  v617 = v22;
  v612 = a3[4];
  v618 = v3;
  v23 = *(v3 + 72);
  v615 = a2;
  *&v620.clientIdentity[8] = v23;
  *&v620.clientIdentity[16] = a2;
  *v620.clientIdentity = &v620.clientIdentity[16];

  v24 = v619;
  v30 = sub_100759CB4(sub_1006B021C, &v620, a1, v25, v26, v27, v28, v29);
  if (v24)
  {
    return;
  }

  v619 = v30;
  v606 = v23;
  v608 = v21;
  v609 = v17;
  v607 = v14;
  v605 = v13;
  v610 = a3;
  v31 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_184;
  }

LABEL_3:
  v604 = type metadata accessor for Logger();
  v32 = sub_100006654(v604, qword_100945730);
  v33 = v619;

  v34 = v617;

  v616 = v32;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  v34, v37, v38, v39, v40, v41, v42, v43;
  v44 = os_log_type_enabled(v35, v36);
  v45 = v33 >> 62;
  v46 = v618;
  if (v44)
  {
    v46 = swift_slowAlloc();
    *&v603 = swift_slowAlloc();
    *&v620.clientIdentity[16] = v603;
    *v46 = 136446978;
    *(v46 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v620.clientIdentity[16]);
    *(v46 + 12) = 2048;
    if (!v45)
    {
      v54 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_187;
  }

  v33, v67, v68, v69, v70, v71, v72, v73;
  while (1)
  {
    v74 = v45 ? _CocoaArrayWrapper.endIndex.getter() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = &_swiftEmptyArrayStorage;
    if (!v74)
    {
      break;
    }

    *&v603 = v45;
    *&v620.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v35 = &v620.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v74 & 0x8000000000000000) == 0)
    {
      v75 = 0;
      v76 = v33;
      v77 = (v33 & 0xC000000000000001);
      v617 = v76 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v78 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          __break(1u);
LABEL_182:

          v77, v568, v569, v570, v571, v572, v573, v574;
          v600, v575, v576, v577, v578, v579, v580, v581;

          goto LABEL_176;
        }

        if (v77)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v75 >= *(v617 + 16))
          {
            __break(1u);
LABEL_184:
            swift_once();
            goto LABEL_3;
          }

          v79 = *(v619 + 8 * v75 + 32);
        }

        v80 = v79;
        sub_1005E3810([v79 remObjectID], &qword_10094F150, off_1008D4178);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a1 = *(*&v620.clientIdentity[16] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v75;
        if (v78 == v74)
        {
          v614 = *&v620.clientIdentity[16];
          v46 = v618;
          v45 = v603;
          goto LABEL_21;
        }
      }
    }

    __break(1u);
LABEL_187:
    v54 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v46 + 14) = v54;
    v33, v47, v48, v49, v50, v51, v52, v53;
    *(v46 + 22) = 2082;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    v55 = [swift_getObjCClassFromMetadata() description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v33 = v619;
    v59 = sub_10000668C(v56, v58, &v620.clientIdentity[16]);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v46 + 24) = v59;
    *(v46 + 32) = 2082;
    *(v46 + 34) = sub_10000668C(v614, v34, &v620.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v46, 0x2Au);
    a1 = v603;
    swift_arrayDestroy();

    v46 = v618;
  }

  v614 = &_swiftEmptyArrayStorage;
LABEL_21:
  v81 = *(v46 + 96);
  v82 = v45;
  if (v81 > 1)
  {
    if ((v81 - 2) >= 3 && v81 != 4499 && v81 != 4599)
    {
LABEL_191:
      v582 = sub_1001F67C8(&_swiftEmptyArrayStorage);
      v583 = sub_1001F67C8(&_swiftEmptyArrayStorage);
      sub_10054573C("unknown mode", 12, 2, v582, v583);
      __break(1u);
      return;
    }

    goto LABEL_27;
  }

  if (!v81)
  {
LABEL_27:
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v620.clientIdentity[16] = v86;
      *v85 = 136315138;
      v87 = [objc_opt_self() cdEntityName];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v91 = sub_10000668C(v88, v90, &v620.clientIdentity[16]);
      v90, v92, v93, v94, v95, v96, v97, v98;
      *(v85 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v83, v84, "Performing fetch during upsert {CDType: %s}", v85, 0xCu);
      sub_10000607C(v86);
    }

    v99 = v615;
    v100 = v609;
    v101 = sub_100667998(v614, v610);
    v110 = 0;
    goto LABEL_34;
  }

  if (v81 != 1)
  {
    goto LABEL_191;
  }

  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v620.clientIdentity[16] = v114;
    *v113 = 136315138;
    v115 = [objc_opt_self() cdEntityName];
    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v117;

    v119 = sub_10000668C(v116, v118, &v620.clientIdentity[16]);
    v118, v120, v121, v122, v123, v124, v125, v126;
    *(v113 + 4) = v119;
    _os_log_impl(&_mh_execute_header, v111, v112, "Skipping fetch during upsert {CDType: %s}", v113, 0xCu);
    sub_10000607C(v114);
  }

  v110 = 0;
  v99 = v615;
  v100 = v609;
  v101 = sub_100390574(&_swiftEmptyArrayStorage);
LABEL_34:
  v127 = v101;
  v128 = v608;
  if (v82)
  {
    v129 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v129 = *((v619 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v129)
  {
    goto LABEL_171;
  }

  v130 = 0;
  v131 = v619 & 0xC000000000000001;
  v132 = v619 & 0xFFFFFFFFFFFFFF8;
  v133 = (v619 + 32);
  v599 = (v613 + 8);
  v617 = 0x80000001007EA030;
  v595 = (v613 + 56);
  v594 = (v613 + 48);
  *&v109 = 136446978;
  v589 = v109;
  *&v109 = 136446210;
  v603 = v109;
  *&v109 = 136447490;
  v588 = v109;
  *&v109 = 136447234;
  v587 = v109;
  v600 = v127;
  v593 = v129;
  v592 = v619 & 0xC000000000000001;
  v591 = v619 & 0xFFFFFFFFFFFFFF8;
  v590 = (v619 + 32);
  v598 = 0x80000001007EA050;
LABEL_39:
  if (v131)
  {
    v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v135 = __OFADD__(v130, 1);
    v136 = v130 + 1;
    if (!v135)
    {
      goto LABEL_42;
    }

    goto LABEL_170;
  }

  if (v130 >= *(v132 + 16))
  {
    __break(1u);
LABEL_189:
    swift_once();
LABEL_173:
    sub_100006654(v604, qword_100950D98);
    v419 = Logger.logObject.getter();
    v420 = static os_log_type_t.error.getter();
    v421 = os_log_type_enabled(v419, v420);
    v422 = v600;
    if (v421)
    {
      v423 = swift_slowAlloc();
      *&v620.clientIdentity[16] = swift_slowAlloc();
      *v423 = 136446466;
      v431 = sub_100729CB0(4, v424, v425, v426, v427, v428, v429, v430);
      v433 = v432;
      v434 = sub_10000668C(v431, v432, &v620.clientIdentity[16]);
      v433, v435, v436, v437, v438, v439, v440, v441;
      *(v423 + 4) = v434;
      *(v423 + 12) = 2082;
      v449 = sub_100729CB0(v131, v442, v443, v444, v445, v446, v447, v448);
      v451 = v450;
      v452 = sub_10000668C(v449, v450, &v620.clientIdentity[16]);
      v451, v453, v454, v455, v456, v457, v458, v459;
      *(v423 + 14) = v452;
      _os_log_impl(&_mh_execute_header, v419, v420, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v423, 0x16u);
      swift_arrayDestroy();
    }

    v460 = objc_opt_self();
    v461 = String._bridgeToObjectiveC()();
    sub_100729CB0(4, v462, v463, v464, v465, v466, v467, v468);
    v470 = v469;
    v471 = String._bridgeToObjectiveC()();
    v470, v472, v473, v474, v475, v476, v477, v478;
    sub_100729CB0(v131, v479, v480, v481, v482, v483, v484, v485);
    v487 = v486;
    v488 = String._bridgeToObjectiveC()();
    v487, v489, v490, v491, v492, v493, v494, v495;
    [v460 unauthorizedErrorWithMissingEntitlement:v461 requestedAccessLevel:v471 currentAccesslevel:v488];

    swift_willThrow();
    v619, v496, v497, v498, v499, v500, v501, v502;
    v422, v503, v504, v505, v506, v507, v508, v509;

    goto LABEL_176;
  }

  v134 = *&v133[8 * v130];
  v135 = __OFADD__(v130, 1);
  v136 = v130 + 1;
  if (v135)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    v619, v102, v103, v104, v105, v106, v107, v108;
    v127, v405, v406, v407, v408, v409, v410, v411;
LABEL_176:
    v614, v412, v413, v414, v415, v416, v417, v418;
    return;
  }

LABEL_42:
  v137 = v134;
  v602 = sub_1005E3810([(RDXPCStorePerformer *)v137 remObjectID], &qword_10094F150, off_1008D4178);
  if (v110)
  {
    v619, v138, v139, v140, v141, v142, v143, v144;
    v127, v533, v534, v535, v536, v537, v538, v539;
    v614, v540, v541, v542, v543, v544, v545, v546;

    return;
  }

  v596 = v136;
  v613 = 0;
  v601 = v137;

  v145 = [*v99->clientIdentity uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v146 = UUID.uuidString.getter();
  v148 = v147;
  v149 = *v599;
  v150 = v128;
  v151 = v607;
  (*v599)(v150, v607);
  v152 = [objc_opt_self() localInternalAccountID];
  v153 = [v152 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v154 = UUID.uuidString.getter();
  v156 = v155;
  v149(v100, v151);
  if (v146 == v154 && v148 == v156)
  {
    v156, v157, v158, v159, v160, v161, v162, v163;
    v164 = v612;
    goto LABEL_47;
  }

  v165 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v156, v166, v167, v168, v169, v170, v171, v172;
  v164 = v612;
  if (v165)
  {
LABEL_47:
    v173 = *(v618 + 68);
    v174 = v606;
    v175 = v598;
    if (v173 >> 14 >= 2)
    {
      v177 = v619;
      if (v173 >> 14 == 2)
      {
        v176 = *(v618 + 64) | (*(v618 + 68) << 32);
      }

      else
      {
        v176 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v176 = 2147483519;
      v177 = v619;
    }

    v178 = v613;
    sub_100009A40(2, v176);
    v613 = v178;
    if (v178)
    {
      v177, v179, v180, v181, v182, v183, v184, v185;
      v148, v547, v548, v549, v550, v551, v552, v553;

      v600, v554, v555, v556, v557, v558, v559, v560;
      v614, v561, v562, v563, v564, v565, v566, v567;

      return;
    }

    goto LABEL_54;
  }

  v174 = v606;
  v175 = v598;
LABEL_54:
  v186 = [(RDXPCStorePerformer *)v601 remObjectID];
  v187 = v186;
  if (*(v174 + 16))
  {
    sub_10002B924(v186);
  }

  v188._rawValue = &off_1008E0F30;
  v196 = sub_1005F7674(v188, &qword_10094F150, off_1008D4178);
  v197 = v600;
  if (*v600->clientIdentity)
  {
    v198 = sub_100393C74();
    if (v189)
    {
      v199 = v198;
      v148, v189, v190, v191, v192, v193, v194, v195;
      v597 = *(*&v197->clientIdentity[40] + 8 * v199);
      v77 = v619;
      v200 = v618;
LABEL_120:
      v280 = 0;
      v281 = *(v200 + 64) | (*(v200 + 68) << 32);
      while (1)
      {
        if ((v281 & 0xC00000000004) == 0x800000000000)
        {
          v282 = *(&off_1008E2000 + v280 + 32);
          v283 = Logger.logObject.getter();
          v284 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v283, v284))
          {
            v285 = swift_slowAlloc();
            v286 = swift_slowAlloc();
            *&v620.clientIdentity[16] = v286;
            *v285 = v603;
            LOBYTE(v621) = v282;
            v287 = String.init<A>(describing:)();
            v289 = v288;
            v290 = sub_10000668C(v287, v288, &v620.clientIdentity[16]);
            v289, v291, v292, v293, v294, v295, v296, v297;
            *(v285 + 4) = v290;
            _os_log_impl(&_mh_execute_header, v283, v284, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v285, 0xCu);
            sub_10000607C(v286);
            v77 = v619;
          }

          v200 = v618;
        }

        v131 = *(v200 + 64);
        if (*(v200 + 68) >> 14 == 2 && (*(v200 + 64) & 4) == 0)
        {
          break;
        }

        ++v280;
        v281 = v131 & 0xFFFF0000FFFFFFFFLL | (*(v200 + 68) << 32);
        if (v280 == 7)
        {
          swift_retain_n();
          v31 = v602;
          v74 = v597;
          v299 = Logger.logObject.getter();
          v300 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v299, v300))
          {
            LODWORD(v586) = v300;
            v597 = v299;
            v301 = swift_slowAlloc();
            v302 = swift_slowAlloc();
            v585 = swift_slowAlloc();
            v621 = v585;
            *v301 = v588;
            *(v301 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v621);
            *(v301 + 12) = 2082;
            v303 = *(v200 + 40);
            *&v620.dataAccessRequestsWriter[2] = *(v200 + 24);
            *&v620.coreSuggestionsHandler[2] = v303;
            *&v620.coreSuggestionsHandler[16] = *(v200 + 54);
            sub_100009DAC(&v620.dataAccessRequestsWriter[2], &v620.clientIdentity[16]);
            v304 = sub_1000063E8();
            v306 = v305;
            sub_1005812D4(&v620.dataAccessRequestsWriter[2]);
            v307 = sub_10000668C(v304, v306, &v621);
            v306, v308, v309, v310, v311, v312, v313, v314;
            *(v301 + 14) = v307;
            *(v301 + 22) = 2114;
            *(v301 + 24) = v31;
            *v302 = v31;
            *(v301 + 32) = 2112;
            v315 = v31;
            v602 = v74;
            v316 = [v74 objectID];
            *(v301 + 34) = v316;
            v584[1] = v302;
            v302[1] = v316;
            *(v301 + 42) = 2082;
            *&v620.clientIdentity[16] = &_swiftEmptyArrayStorage;
            sub_100026EF4(0, 7, 0);
            v317 = 0;
            v318 = *&v620.clientIdentity[16];
            do
            {
              v319 = *(&off_1008E2000 + v317 + 32);
              v320 = 0x6F54636E79536164;
              if (v319 != 5)
              {
                v320 = 0x654B687375506164;
              }

              v321 = 0xEB000000006E656BLL;
              if (v319 != 5)
              {
                v321 = 0xE900000000000079;
              }

              v322 = 0xD000000000000017;
              if (v319 == 3)
              {
                v322 = 0xD000000000000012;
              }

              v323 = v617;
              if (v319 != 3)
              {
                v323 = v175;
              }

              if (*(&off_1008E2000 + v317 + 32) <= 4u)
              {
                v320 = v322;
                v321 = v323;
              }

              v324 = 0x6972745364697575;
              if (v319 != 1)
              {
                v324 = 0x4C525574736F68;
              }

              v325 = 0xEA0000000000676ELL;
              if (v319 != 1)
              {
                v325 = 0xE700000000000000;
              }

              if (!*(&off_1008E2000 + v317 + 32))
              {
                v324 = 0x44497463656A626FLL;
                v325 = 0xE800000000000000;
              }

              if (*(&off_1008E2000 + v317 + 32) <= 2u)
              {
                v326 = v324;
              }

              else
              {
                v326 = v320;
              }

              if (*(&off_1008E2000 + v317 + 32) <= 2u)
              {
                v327 = v325;
              }

              else
              {
                v327 = v321;
              }

              *&v620.clientIdentity[16] = v318;
              v329 = *(v318 + 16);
              v328 = *(v318 + 24);
              if (v329 >= v328 >> 1)
              {
                sub_100026EF4((v328 > 1), v329 + 1, 1);
                v318 = *&v620.clientIdentity[16];
              }

              ++v317;
              *(v318 + 16) = v329 + 1;
              v330 = v318 + 16 * v329;
              *(v330 + 32) = v326;
              *(v330 + 40) = v327;
            }

            while (v317 != 7);
            v331 = Array.description.getter();
            v333 = v332;

            v334 = sub_10000668C(v331, v333, &v621);
            v333, v335, v336, v337, v338, v339, v340, v341;
            *(v301 + 44) = v334;
            *(v301 + 52) = 1024;
            v200 = v618;
            LODWORD(v334) = *(v618 + 104);

            *(v301 + 54) = v334;

            v342 = v597;
            _os_log_impl(&_mh_execute_header, v597, v586, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v301, 0x3Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v77 = v619;
            v343 = v613;
            v74 = v602;
          }

          else
          {

            v343 = v613;
          }

          a1 = v601;
          sub_1004374E0(v601, v74, &off_1008E2000);
          if (v343)
          {
            goto LABEL_182;
          }

          v613 = 0;
          v344 = v74;
          v345 = [v344 changedValues];
          v346 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v347 = v610;
          swift_beginAccess();
          v348 = v31;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v621 = v347[7];
          v347[7] = 0x8000000000000000;
          sub_1002C8688(v346, v348, isUniquelyReferenced_nonNull_native);

          v347[7] = v621;
          swift_endAccess();
          if (*(v200 + 104))
          {
            v346, v350, v351, v352, v353, v354, v355, v356;
            [v344 updateChangeCount];

            goto LABEL_164;
          }

          v357 = v348;

          v358 = Logger.logObject.getter();
          v359 = static os_log_type_t.default.getter();
          v346, v360, v361, v362, v363, v364, v365, v366;

          if (os_log_type_enabled(v358, v359))
          {
            v374 = swift_slowAlloc();
            v375 = swift_slowAlloc();
            v602 = swift_slowAlloc();
            *&v620.clientIdentity[16] = v602;
            *v374 = v587;
            *(v374 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v620.clientIdentity[16]);
            *(v374 + 12) = 1024;
            *(v374 + 14) = 0;

            *(v374 + 18) = 1024;
            *(v374 + 20) = 0;
            *(v374 + 24) = 2114;
            *(v374 + 26) = v357;
            *v375 = v357;
            v376 = v375;
            *(v374 + 34) = 2082;
            v377 = v357;
            v378 = v613;
            sub_1005E2810(v346);
            v380 = v379;
            v613 = v378;
            v346, v381, v382, v383, v384, v385, v386, v387;
            v388 = Array.description.getter();
            v390 = v389;
            v380, v389, v391, v392, v393, v394, v395, v396;
            v397 = sub_10000668C(v388, v390, &v620.clientIdentity[16]);
            v390, v398, v399, v400, v401, v402, v403, v404;
            *(v374 + 36) = v397;
            _os_log_impl(&_mh_execute_header, v358, v359, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v374, 0x2Cu);
            sub_1000050A4(v376, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

LABEL_164:
          }

          else
          {
            v346, v367, v368, v369, v370, v371, v372, v373;
          }

          v130 = v596;
          v110 = v613;
          v99 = v615;
          v100 = v609;
          v128 = v608;
          v127 = v600;
          v131 = v592;
          v132 = v591;
          v133 = v590;
          if (v596 != v593)
          {
            goto LABEL_39;
          }

          goto LABEL_171;
        }
      }

      if (qword_1009367A0 != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_173;
    }
  }

  if (v196 != 7)
  {
    v201 = 0;
    do
    {
      if (v201 == 7)
      {
        goto LABEL_178;
      }

      v217 = *(&off_1008E2000 + v201 + 32);
      if (v217 <= 2)
      {
        if (*(&off_1008E2000 + v201 + 32))
        {
          if (v217 == 1)
          {
            v218 = 0x6972745364697575;
          }

          else
          {
            v218 = 0x4C525574736F68;
          }

          if (v217 == 1)
          {
            v219 = 0xEA0000000000676ELL;
          }

          else
          {
            v219 = 0xE700000000000000;
          }
        }

        else
        {
          v219 = 0xE800000000000000;
          v218 = 0x44497463656A626FLL;
        }
      }

      else if (*(&off_1008E2000 + v201 + 32) > 4u)
      {
        if (v217 == 5)
        {
          v218 = 0x6F54636E79536164;
          v219 = 0xEB000000006E656BLL;
        }

        else
        {
          v218 = 0x654B687375506164;
          v219 = 0xE900000000000079;
        }
      }

      else
      {
        if (v217 == 3)
        {
          v218 = 0xD000000000000012;
        }

        else
        {
          v218 = 0xD000000000000017;
        }

        if (v217 == 3)
        {
          v219 = v617;
        }

        else
        {
          v219 = v175;
        }
      }

      v220 = 0x6F54636E79536164;
      if (v196 != 5)
      {
        v220 = 0x654B687375506164;
      }

      v221 = 0xEB000000006E656BLL;
      if (v196 != 5)
      {
        v221 = 0xE900000000000079;
      }

      v222 = 0xD000000000000017;
      if (v196 == 3)
      {
        v222 = 0xD000000000000012;
      }

      v223 = v617;
      if (v196 != 3)
      {
        v223 = v175;
      }

      if (v196 <= 4u)
      {
        v220 = v222;
        v221 = v223;
      }

      v224 = 0x6972745364697575;
      if (v196 != 1)
      {
        v224 = 0x4C525574736F68;
      }

      v225 = 0xEA0000000000676ELL;
      if (v196 != 1)
      {
        v225 = 0xE700000000000000;
      }

      if (!v196)
      {
        v224 = 0x44497463656A626FLL;
        v225 = 0xE800000000000000;
      }

      if (v196 <= 2u)
      {
        v226 = v224;
      }

      else
      {
        v226 = v220;
      }

      if (v196 <= 2u)
      {
        v227 = v225;
      }

      else
      {
        v227 = v221;
      }

      if (v218 == v226 && v219 == v227)
      {
        v148, v189, v226, v191, v192, v193, v194, v195;
        v219, v228, v229, v230, v231, v232, v233, v234;
        goto LABEL_108;
      }

      v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v219, v203, v204, v205, v206, v207, v208, v209;
      v227, v210, v211, v212, v213, v214, v215, v216;
      ++v201;
    }

    while ((v202 & 1) == 0);
    v227 = v148;
LABEL_108:
    v227, v189, v190, v191, v192, v193, v194, v195;
    v235 = *(v618 + 88);
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v237 = [ObjCClassFromMetadata entity];
    v238 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v237 insertIntoManagedObjectContext:v235];
    v239 = v164;
    v240 = v238;
    [v235 assignObject:v240 toPersistentStore:v239];

    v241 = v240;
    v242 = [v602 uuid];
    v243 = v605;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v244 = v607;
    (*v595)(v243, 0, 1, v607);
    v245 = v611;
    sub_10018E470(v243, v611);
    isa = 0;
    if ((*v594)(v245, 1, v244) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v149(v245, v244);
    }

    [v241 setIdentifier:isa];

    sub_1000050A4(v243, &unk_100939D90, "8\n\r");
    v200 = v618;

    v247 = v602;
    v248 = v241;
    v249 = Logger.logObject.getter();
    v250 = static os_log_type_t.default.getter();

    v251 = os_log_type_enabled(v249, v250);
    v77 = v619;
    v597 = v248;
    if (v251)
    {
      v252 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v586 = swift_slowAlloc();
      v621 = v586;
      *v252 = v589;
      *(v252 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v621);
      *(v252 + 12) = 2082;
      v254 = *(v200 + 40);
      *&v620.coreSuggestionsHandler[34] = *(v200 + 24);
      *&v620.publicCloudDatabaseController[10] = v254;
      *&v620.publicCloudDatabaseController[24] = *(v200 + 54);
      sub_100009DAC(&v620.coreSuggestionsHandler[34], &v620.clientIdentity[16]);
      LODWORD(v585) = v250;
      v255 = v77;
      v256 = v248;
      v257 = sub_1000063E8();
      v259 = v258;
      sub_1005812D4(&v620.coreSuggestionsHandler[34]);
      v260 = sub_10000668C(v257, v259, &v621);
      v259, v261, v262, v263, v264, v265, v266, v267;
      *(v252 + 14) = v260;
      *(v252 + 22) = 2114;
      *(v252 + 24) = v247;
      *v253 = v247;
      *(v252 + 32) = 2112;
      v268 = v247;
      v269 = v256;
      v77 = v255;
      v270 = [v269 objectID];
      *(v252 + 34) = v270;
      v253[1] = v270;
      _os_log_impl(&_mh_execute_header, v249, v585, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v252, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v175 = v598;

      swift_arrayDestroy();
    }

    v271 = v610;
    swift_beginAccess();
    v272 = v271[6];
    if ((v272 & 0xC000000000000001) != 0)
    {
      if (v272 < 0)
      {
        v273 = v271[6];
      }

      else
      {
        v273 = v272 & 0xFFFFFFFFFFFFFF8;
      }

      v274 = v247;
      v275 = __CocoaDictionary.count.getter();
      if (__OFADD__(v275, 1))
      {
        __break(1u);
        goto LABEL_191;
      }

      v276 = sub_10021CDBC(v273, v275 + 1);
      v277 = v610;
      v610[6] = v276;
    }

    else
    {
      v278 = v247;
      v277 = v610;
    }

    v279 = swift_isUniquelyReferenced_nonNull_native();
    v621 = v277[6];
    sub_1002C8398(v597, v247, v279);
    v277[6] = v621;

    swift_endAccess();
    goto LABEL_120;
  }

LABEL_178:
  v148, v189, v190, v191, v192, v193, v194, v195;
  v619, v510, v511, v512, v513, v514, v515, v516;
  v600, v517, v518, v519, v520, v521, v522, v523;
  v614, v524, v525, v526, v527, v528, v529, v530;
  v531 = objc_opt_self();
  v532 = v602;
  [v531 noSuchObjectErrorWithObjectID:v602];
  swift_willThrow();
}

void sub_100627878(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, unint64_t a3)
{
  v586 = a2;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v553 - v8;
  v10 = type metadata accessor for UUID();
  v582 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v553 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v553 - v16;
  v18 = *(a3 + 24);
  v583 = *(a3 + 16);
  v584 = v18;
  v19 = *(a3 + 32);
  v585 = v3;
  v20 = *(v3 + 72);
  *&v588.clientIdentity[8] = v20;
  *&v588.clientIdentity[16] = v586;
  *v588.clientIdentity = &v588.clientIdentity[16];

  v21 = v587;
  v27 = sub_100759CB4(sub_1006B0350, &v588, a1, v22, v23, v24, v25, v26);
  if (v21)
  {
    return;
  }

  v28 = v27;
  v580 = 0;
  v573 = v20;
  v574 = v19;
  v575 = v17;
  v576 = v13;
  v577 = v10;
  v572 = v9;
  v578 = a3;
  if (qword_100936008 != -1)
  {
    goto LABEL_187;
  }

LABEL_3:
  v29 = type metadata accessor for Logger();
  v30 = sub_100006654(v29, qword_100945730);

  v31 = v584;

  v581 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  v31, v34, v35, v36, v37, v38, v39, v40;
  v41 = os_log_type_enabled(v32, v33);
  v42 = (v28 >> 62);
  v587 = v28;
  if (v41)
  {
    a3 = swift_slowAlloc();
    v579 = swift_slowAlloc();
    *&v588.clientIdentity[16] = v579;
    *a3 = 136446978;
    *(a3 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v588.clientIdentity[16]);
    *(a3 + 12) = 2048;
    v50 = &v588.shareRecordIDToRootRecordIDLock[2];
    if (!v42)
    {
      v51 = v580;
      v52 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_190;
  }

  v51 = v580;

  v28, v72, v73, v74, v75, v76, v77, v78;
  while (1)
  {
    v583 = v42;
    v79 = v42 ? _CocoaArrayWrapper.endIndex.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v571 = v29;
    if (!v79)
    {
      break;
    }

    *&v588.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v32 = &v588.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v79 & 0x8000000000000000) == 0)
    {
      a3 = 0;
      v28 = v587 & 0xC000000000000001;
      v584 = (v587 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v80 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v28)
        {
          v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a3 >= *v584->clientIdentity)
          {
            goto LABEL_184;
          }

          v81 = *(v587 + 8 * a3 + 32);
        }

        v82 = v81;
        sub_1005E60F0([v81 remObjectID]);
        if (v51)
        {

          v587, v85, v86, v87, v88, v89, v90, v91;

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++a3;
        if (v80 == v79)
        {
          v83 = *&v588.clientIdentity[16];
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_190:
    v51 = *(v50 - 32);
    v52 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(a3 + 14) = v52;
    v28, v43, v44, v45, v46, v47, v48, v49;
    *(a3 + 22) = 2082;
    type metadata accessor for REMCDDueDateDeltaAlert();
    v53 = [swift_getObjCClassFromMetadata() description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_10000668C(v54, v56, &v588.clientIdentity[16]);
    v28 = v587;
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(a3 + 24) = v57;
    *(a3 + 32) = 2082;
    *(a3 + 34) = sub_10000668C(v583, v584, &v588.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", a3, 0x2Au);
    swift_arrayDestroy();
  }

  v83 = &_swiftEmptyArrayStorage;
LABEL_22:
  v84 = *(v585 + 96);
  if (v84 <= 1)
  {
    if (v84)
    {
      if (v84 != 1)
      {
LABEL_194:
        v551 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        v552 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2, v551, v552);
        __break(1u);
        return;
      }

      v83, v65, v66, v67, v68, v69, v70, v71;
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v588.clientIdentity[16] = v132;
        *v131 = 136315138;
        v133 = [type metadata accessor for REMCDDueDateDeltaAlert() cdEntityName];
        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v135;

        v137 = sub_10000668C(v134, v136, &v588.clientIdentity[16]);
        v136, v138, v139, v140, v141, v142, v143, v144;
        *(v131 + 4) = v137;
        _os_log_impl(&_mh_execute_header, v129, v130, "Skipping fetch during upsert {CDType: %s}", v131, 0xCu);
        sub_10000607C(v132);
      }

      v108 = v587;
      v112 = v51;
      v109 = v586;
      v110 = v583;
      v568 = sub_100390CD0(&_swiftEmptyArrayStorage);
      goto LABEL_38;
    }
  }

  else if ((v84 - 2) >= 3 && v84 != 4499 && v84 != 4599)
  {
    goto LABEL_194;
  }

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v588.clientIdentity[16] = v95;
    *v94 = 136315138;
    v96 = [type metadata accessor for REMCDDueDateDeltaAlert() cdEntityName];
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = sub_10000668C(v97, v99, &v588.clientIdentity[16]);
    v99, v101, v102, v103, v104, v105, v106, v107;
    *(v94 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v92, v93, "Performing fetch during upsert {CDType: %s}", v94, 0xCu);
    sub_10000607C(v95);
  }

  v108 = v587;
  v109 = v586;
  v110 = v583;
  v111 = sub_100668268(v83, v578);
  v112 = v51;
  v83, v113, v114, v115, v116, v117, v118, v119;
  if (v51)
  {
    v128 = v108;
    goto LABEL_170;
  }

  v568 = v111;
LABEL_38:
  v145 = v575;
  v146 = v576;
  if (v110)
  {
    v147 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v147 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v147)
  {
    goto LABEL_168;
  }

  v148 = 0;
  v149 = v108 & 0xC000000000000001;
  v150 = v108 & 0xFFFFFFFFFFFFFF8;
  v151 = (v108 + 32);
  storeController = v582->storeController;
  v584 = 0x80000001007EA730;
  v583 = 0x80000001007E9F10;
  v579 = 0x80000001007EA710;
  v559 = &v582->clientIdentity[40];
  *&v127 = 136446978;
  v557 = v127;
  *&v127 = 136447490;
  v558 = v127;
  *&v127 = 136446210;
  v567 = v127;
  v563 = v147;
  v562 = v108 & 0xC000000000000001;
  v561 = v108 & 0xFFFFFFFFFFFFFF8;
  v560 = (v108 + 32);
  while (1)
  {
    if (v149)
    {
      v152 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v153 = __OFADD__(v148, 1);
      v154 = v148 + 1;
      if (!v153)
      {
        goto LABEL_46;
      }

LABEL_167:
      __break(1u);
LABEL_168:
      v423 = v108;
      goto LABEL_169;
    }

    if (v148 >= *(v150 + 16))
    {
      __break(1u);
      goto LABEL_192;
    }

    v152 = *&v151[8 * v148];
    v153 = __OFADD__(v148, 1);
    v154 = v148 + 1;
    if (v153)
    {
      goto LABEL_167;
    }

LABEL_46:
    v155 = v152;
    v570 = sub_1005E60F0([v155 remObjectID]);
    if (v112)
    {
      v108, v156, v157, v158, v159, v160, v161, v162;
      v568, v508, v509, v510, v511, v512, v513, v514;

      goto LABEL_181;
    }

    v565 = v154;
    v580 = 0;
    v569 = v155;

    v163 = [*v109->clientIdentity uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v164 = UUID.uuidString.getter();
    v166 = v165;
    v28 = v146;
    v167 = *storeController;
    v168 = v577;
    (*storeController)(v145, v577);
    v169 = [objc_opt_self() localInternalAccountID];
    v170 = [v169 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = UUID.uuidString.getter();
    v173 = v172;
    v167(v28, v168);
    if (v164 == v171 && v166 == v173)
    {
      v173, v174, v175, v176, v177, v178, v179, v180;
      v166, v181, v182, v183, v184, v185, v186, v187;
      v188 = v574;
      v189 = v573;
      v190 = v568;
    }

    else
    {
      v191 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v173, v192, v193, v194, v195, v196, v197, v198;
      v166, v199, v200, v201, v202, v203, v204, v205;
      v188 = v574;
      v189 = v573;
      v190 = v568;
      if ((v191 & 1) == 0)
      {
        v211 = v580;
        v209 = v578;
        goto LABEL_59;
      }
    }

    v206 = *(v585 + 68);
    v207 = v587;
    v208 = v580;
    v209 = v578;
    if (v206 >> 14 >= 2)
    {
      if (v206 >> 14 == 2)
      {
        v210 = *(v585 + 64) | (*(v585 + 68) << 32);
      }

      else
      {
        v210 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v210 = 2147483519;
    }

    sub_100009A40(2, v210);
    if (v208)
    {
      v207, v212, v213, v214, v215, v216, v217, v218;

      v128 = v190;
      goto LABEL_170;
    }

    v211 = 0;
LABEL_59:
    v219 = [v569 remObjectID];
    a3 = v219;
    if (*(v189 + 16) && (v220 = sub_10002B924(v219), (v221 & 1) != 0))
    {
      v222 = *(*(v189 + 56) + 8 * v220);
    }

    else
    {

      v222 = 0;
    }

    v582 = sub_1005F56BC(v222, &off_1008E0238, sub_1003665B0, &qword_10094F830, &qword_1007B5228);
    v580 = v211;
    if (v211)
    {
      v587, v223, v224, v225, v226, v227, v228, v229;

      v190, v515, v516, v517, v518, v519, v520, v521;
      v222, v522, v523, v524, v525, v526, v527, v528;
      return;
    }

    v222, v223, v224, v225, v226, v227, v228, v229;
    v237 = sub_1005F74D0();
    if (!*v190->clientIdentity)
    {
      break;
    }

    v238 = sub_100393C74();
    if ((v230 & 1) == 0)
    {
      break;
    }

    v564 = *(*&v190->clientIdentity[40] + 8 * v238);
    v239 = v585;
LABEL_122:
    v307 = v582;
    v308 = *v582->clientIdentity;
    if (v308)
    {

      v317 = 0;
      while (v317 < *(v309 + 16))
      {
        if (((*(v239 + 64) | (*(v239 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v318 = *(v309 + v317 + 32);
          v319 = Logger.logObject.getter();
          v320 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v319, v320))
          {
            v321 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *&v588.clientIdentity[16] = v28;
            *v321 = v567;
            LOBYTE(v589) = v318;
            v322 = String.init<A>(describing:)();
            a3 = v323;
            v324 = sub_10000668C(v322, v323, &v588.clientIdentity[16]);
            a3, v325, v326, v327, v328, v329, v330, v331;
            *(v321 + 4) = v324;
            _os_log_impl(&_mh_execute_header, v319, v320, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v321, 0xCu);
            sub_10000607C(v28);
          }

          v239 = v585;
          v309 = v582;
        }

        LODWORD(v146) = *(v239 + 64);
        if (*(v239 + 68) >> 14 == 2 && (*(v239 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_193;
          }

          goto LABEL_173;
        }

        if (v308 == ++v317)
        {
          v309, v310, v311, v312, v313, v314, v315, v316;
          v307 = v582;
          v209 = v578;
          goto LABEL_135;
        }
      }

      goto LABEL_185;
    }

LABEL_135:
    v333 = v307;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v334 = v570;
    v335 = v564;
    v336 = Logger.logObject.getter();
    v337 = static os_log_type_t.default.getter();

    v338 = os_log_type_enabled(v336, v337);
    v570 = v334;
    if (v338)
    {
      v555 = v337;
      v556 = v336;
      v339 = v335;
      v340 = swift_slowAlloc();
      v341 = swift_slowAlloc();
      v554 = swift_slowAlloc();
      v589 = v554;
      *v340 = v558;
      *(v340 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v589);
      *(v340 + 12) = 2082;
      v342 = *(v239 + 40);
      *&v588.dataAccessRequestsWriter[2] = *(v239 + 24);
      *&v588.coreSuggestionsHandler[2] = v342;
      *&v588.coreSuggestionsHandler[16] = *(v239 + 54);
      sub_100009DAC(&v588.dataAccessRequestsWriter[2], &v588.clientIdentity[16]);
      v343 = sub_1000063E8();
      v345 = v344;
      sub_1005812D4(&v588.dataAccessRequestsWriter[2]);
      v346 = sub_10000668C(v343, v345, &v589);
      v345, v347, v348, v349, v350, v351, v352, v353;
      *(v340 + 14) = v346;
      *(v340 + 22) = 2114;
      *(v340 + 24) = v334;
      *v341 = v334;
      *(v340 + 32) = 2112;
      v354 = v334;
      v564 = v339;
      v355 = [v339 objectID];
      *(v340 + 34) = v355;
      v553 = v341;
      v341[1] = v355;
      *(v340 + 42) = 2082;
      v363 = *(v333 + 16);
      if (v363)
      {
        *&v588.clientIdentity[16] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v363, 0);
        v371 = v582;
        v372 = *&v588.clientIdentity[16];
        v373 = 32;
        v374 = v579;
        do
        {
          v375 = *(&v371->super.isa + v373);
          v376 = 0xD00000000000001ALL;
          if (v375 == 4)
          {
            v376 = 0xD000000000000010;
          }

          v377 = v584;
          if (v375 == 4)
          {
            v377 = v583;
          }

          if (v375 == 3)
          {
            v376 = 0x6E6F697461657263;
            v377 = 0xEC00000065746144;
          }

          v378 = 0xD000000000000012;
          if (v375 == 1)
          {
            v379 = v374;
          }

          else
          {
            v378 = 0x4465746144657564;
            v379 = 0xEC00000061746C65;
          }

          if (!*(&v371->super.isa + v373))
          {
            v378 = 0x44497463656A626FLL;
            v379 = 0xE800000000000000;
          }

          if (*(&v371->super.isa + v373) <= 2u)
          {
            v380 = v378;
          }

          else
          {
            v380 = v376;
          }

          if (*(&v371->super.isa + v373) <= 2u)
          {
            v381 = v379;
          }

          else
          {
            v381 = v377;
          }

          *&v588.clientIdentity[16] = v372;
          v383 = *v372->clientIdentity;
          v382 = *&v372->clientIdentity[8];
          if (v383 >= v382 >> 1)
          {
            sub_100026EF4((v382 > 1), v383 + 1, 1);
            v371 = v582;
            v374 = v579;
            v372 = *&v588.clientIdentity[16];
          }

          *v372->clientIdentity = v383 + 1;
          v384 = v372 + 16 * v383;
          *(v384 + 4) = v380;
          *(v384 + 5) = v381;
          ++v373;
          --v363;
        }

        while (v363);
        v333 = v371;
        v371, v364, v365, v366, v367, v368, v369, v370;
        v209 = v578;
      }

      else
      {
        v333, v356, v357, v358, v359, v360, v361, v362;
        v372 = &_swiftEmptyArrayStorage;
      }

      v387 = Array.description.getter();
      v389 = v388;
      v372, v388, v390, v391, v392, v393, v394, v395;
      v333, v396, v397, v398, v399, v400, v401, v402;
      v403 = sub_10000668C(v387, v389, &v589);
      v389, v404, v405, v406, v407, v408, v409, v410;
      *(v340 + 44) = v403;
      *(v340 + 52) = 1024;
      LODWORD(v403) = *(v585 + 104);

      *(v340 + 54) = v403;

      v411 = v556;
      _os_log_impl(&_mh_execute_header, v556, v555, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v340, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v108 = v587;
      v385 = v580;
      v386 = v569;
      v335 = v564;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v108 = v587;
      v385 = v580;
      v386 = v569;
    }

    sub_10075E91C(v386, v335, v333);
    v112 = v385;
    if (v385)
    {

      v108, v544, v545, v546, v547, v548, v549, v550;
      v423 = v333;
LABEL_169:
      v423, v120, v121, v122, v123, v124, v125, v126;
      v128 = v568;
LABEL_170:
      v128, v120, v121, v122, v123, v124, v125, v126;
      return;
    }

    v333, v412, v413, v414, v415, v416, v417, v418;
    v419 = [v335 changedValues];
    v420 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v421 = v570;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v589 = v209[7];
    v209[7] = 0x8000000000000000;
    sub_1002C8688(v420, v421, isUniquelyReferenced_nonNull_native);

    v209[7] = v589;
    swift_endAccess();

    v148 = v565;
    v109 = v586;
    v145 = v575;
    v149 = v562;
    v150 = v561;
    v151 = v560;
    v146 = v576;
    if (v565 == v563)
    {
      goto LABEL_168;
    }
  }

  if (v237 != 6)
  {
    v28 = 0;
    v240 = v582;
    v241 = *v582->clientIdentity;
    while (1)
    {
      if (v241 == v28)
      {
        goto LABEL_180;
      }

      if (v28 >= *v240->clientIdentity)
      {
        goto LABEL_186;
      }

      v257 = v240->clientIdentity[v28 + 16];
      if (v257 > 2)
      {
        v259 = 0xEC00000061746C65;
        v260 = v579;
        if (v257 == 3)
        {
          v262 = 0x6E6F697461657263;
          v263 = 0xEC00000065746144;
        }

        else
        {
          v262 = v257 == 4 ? 0xD000000000000010 : 0xD00000000000001ALL;
          v263 = v257 == 4 ? v583 : v584;
        }
      }

      else
      {
        v258 = 0xD000000000000012;
        if (v257 != 1)
        {
          v258 = 0x4465746144657564;
        }

        v259 = 0xEC00000061746C65;
        v260 = v579;
        v261 = v257 == 1 ? v579 : 0xEC00000061746C65;
        v262 = v240->clientIdentity[v28 + 16] ? v258 : 0x44497463656A626FLL;
        v263 = (v257 ? v261 : 0xE800000000000000);
      }

      v264 = 0xD00000000000001ALL;
      if (v237 == 4)
      {
        v264 = 0xD000000000000010;
      }

      v265 = v584;
      if (v237 == 4)
      {
        v265 = v583;
      }

      if (v237 == 3)
      {
        v264 = 0x6E6F697461657263;
        v265 = 0xEC00000065746144;
      }

      v266 = 0xD000000000000012;
      if (v237 == 1)
      {
        v259 = v260;
      }

      else
      {
        v266 = 0x4465746144657564;
      }

      if (!v237)
      {
        v266 = 0x44497463656A626FLL;
        v259 = 0xE800000000000000;
      }

      v267 = (v237 <= 2u ? v266 : v264);
      a3 = v237 <= 2u ? v259 : v265;
      if (v262 == v267 && v263 == a3)
      {
        break;
      }

      v242 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v263, v243, v244, v245, v246, v247, v248, v249;
      a3, v250, v251, v252, v253, v254, v255, v256;
      ++v28;
      v240 = v582;
      if (v242)
      {
        goto LABEL_112;
      }
    }

    v263, v230, v267, v232, v233, v234, v235, v236;
    a3, v268, v269, v270, v271, v272, v273, v274;
LABEL_112:
    v239 = v585;
    v275 = *(v585 + 88);
    type metadata accessor for REMCDDueDateDeltaAlert();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v277 = [ObjCClassFromMetadata entity];
    v278 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v277 insertIntoManagedObjectContext:v275];
    v279 = v188;
    v280 = v278;
    [v275 assignObject:v280 toPersistentStore:v279];

    v281 = v280;
    v282 = v570;
    v283 = [v570 uuid];
    v284 = v572;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*v559)(v284, 0, 1, v577);
    REMCDDueDateDeltaAlert.ingestableObjectIdentifier.setter(v284);

    v146 = v282;
    v28 = Logger.logObject.getter();
    v285 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v285))
    {
      v286 = swift_slowAlloc();
      a3 = swift_slowAlloc();
      v589 = swift_slowAlloc();
      *v286 = v557;
      *(v286 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v589);
      *(v286 + 12) = 2082;
      v287 = *(v585 + 40);
      *&v588.coreSuggestionsHandler[34] = *(v585 + 24);
      *&v588.publicCloudDatabaseController[10] = v287;
      *&v588.publicCloudDatabaseController[24] = *(v585 + 54);
      sub_100009DAC(&v588.coreSuggestionsHandler[34], &v588.clientIdentity[16]);
      v288 = sub_1000063E8();
      v290 = v289;
      sub_1005812D4(&v588.coreSuggestionsHandler[34]);
      v291 = sub_10000668C(v288, v290, &v589);
      v290, v292, v293, v294, v295, v296, v297, v298;
      *(v286 + 14) = v291;
      *(v286 + 22) = 2114;
      *(v286 + 24) = v146;
      *a3 = v146;
      *(v286 + 32) = 2112;
      v299 = v146;
      v300 = [v281 objectID];
      *(v286 + 34) = v300;
      *(a3 + 8) = v300;
      _os_log_impl(&_mh_execute_header, v28, v285, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v286, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v239 = v585;
    }

    v209 = v578;
    swift_beginAccess();
    v301 = v209[6];
    if ((v301 & 0xC000000000000001) == 0)
    {
      v305 = v146;
      goto LABEL_121;
    }

    if (v301 < 0)
    {
      v302 = v209[6];
    }

    else
    {
      v302 = v301 & 0xFFFFFFFFFFFFFF8;
    }

    v303 = v146;
    v304 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v304, 1))
    {
      v209[6] = sub_10021CDBC(v302, v304 + 1);
LABEL_121:
      v306 = swift_isUniquelyReferenced_nonNull_native();
      v589 = v209[6];
      v564 = v281;
      sub_1002C8398(v281, v146, v306);
      v209[6] = v589;

      swift_endAccess();
      goto LABEL_122;
    }

LABEL_192:
    __break(1u);
LABEL_193:
    swift_once();
LABEL_173:
    sub_100006654(v571, qword_100950D98);
    v424 = Logger.logObject.getter();
    v425 = static os_log_type_t.error.getter();
    v426 = os_log_type_enabled(v424, v425);
    v427 = v568;
    if (v426)
    {
      v428 = swift_slowAlloc();
      *&v588.clientIdentity[16] = swift_slowAlloc();
      *v428 = 136446466;
      v436 = sub_100729CB0(1, v429, v430, v431, v432, v433, v434, v435);
      v438 = v437;
      v439 = sub_10000668C(v436, v437, &v588.clientIdentity[16]);
      v438, v440, v441, v442, v443, v444, v445, v446;
      *(v428 + 4) = v439;
      *(v428 + 12) = 2082;
      v454 = sub_100729CB0(v146, v447, v448, v449, v450, v451, v452, v453);
      v456 = v455;
      v457 = sub_10000668C(v454, v455, &v588.clientIdentity[16]);
      v456, v458, v459, v460, v461, v462, v463, v464;
      *(v428 + 14) = v457;
      _os_log_impl(&_mh_execute_header, v424, v425, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v428, 0x16u);
      swift_arrayDestroy();
    }

    v465 = objc_opt_self();
    v466 = String._bridgeToObjectiveC()();
    sub_100729CB0(1, v467, v468, v469, v470, v471, v472, v473);
    v475 = v474;
    v476 = String._bridgeToObjectiveC()();
    v475, v477, v478, v479, v480, v481, v482, v483;
    sub_100729CB0(v146, v484, v485, v486, v487, v488, v489, v490);
    v492 = v491;
    v493 = String._bridgeToObjectiveC()();
    v492, v494, v495, v496, v497, v498, v499, v500;
    [v465 unauthorizedErrorWithMissingEntitlement:v466 requestedAccessLevel:v476 currentAccesslevel:v493];

    swift_willThrow();
    swift_bridgeObjectRelease_n();
    v587, v501, v502, v503, v504, v505, v506, v507;
    v128 = v427;
    goto LABEL_170;
  }

  v240 = v582;
LABEL_180:
  v240, v230, v231, v232, v233, v234, v235, v236;
  v190, v529, v530, v531, v532, v533, v534, v535;
  v587, v536, v537, v538, v539, v540, v541, v542;
  v543 = objc_opt_self();
  v155 = v570;
  [v543 noSuchObjectErrorWithObjectID:v570];
  swift_willThrow();

LABEL_181:
}

void sub_1006295AC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, void (*a6)(void), void (*a7)(id), uint64_t (*a8)(_TtC7remindd19RDXPCStorePerformer *), uint64_t (*a9)(_TtC7remindd19RDXPCStorePerformer *, uint64_t), void *a10, uint64_t (*a11)(void), uint64_t (*a12)(unsigned __int8 *), void (*a13)(_TtC7remindd19RDXPCStorePerformer *, unsigned __int8 *, unint64_t), _TtC7remindd19RDXPCStorePerformer *a14, _TtC7remindd19RDXPCStorePerformer *a15)
{
  v648 = a8;
  v659 = a7;
  v653 = a6;
  v658 = a5;
  v655 = a4;
  v19 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v19 - 8, v20);
  v649 = &v616 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = &v616 - v24;
  v26 = type metadata accessor for UUID();
  v650 = *(v26 - 8);
  __chkstk_darwin(v26, v27);
  v29 = &v616 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v33 = &v616 - v32;
  v34 = a3[3];
  v651 = a3[2];
  v654 = v34;
  v35 = a3[4];
  v657 = v15;
  v36 = *(v15 + 72);
  v652 = a2;
  v662 = v36;
  v663 = a2;
  v661 = &v663;

  v37 = v656;
  v38 = (v658)(v655, v660, a1);
  if (v37)
  {
    return;
  }

  v39 = v38;
  v644 = v36;
  v640 = v35;
  v645 = v33;
  v643 = v29;
  v646 = v26;
  v641 = v25;
  v647 = a3;
  v40 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_182;
  }

LABEL_3:
  v41 = type metadata accessor for Logger();
  v42 = sub_100006654(v41, qword_100945730);
  v43 = v39;

  v44 = v654;

  v655 = v42;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  v44, v47, v48, v49, v50, v51, v52, v53;
  v54 = os_log_type_enabled(v45, v46);
  v55 = (v39 >> 62);
  v658 = v39;
  v639 = v41;
  if (v54)
  {
    v43 = swift_slowAlloc();
    v656 = swift_slowAlloc();
    v663 = v656;
    *v43 = 136446978;
    *(v43 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v663);
    *(v43 + 12) = 2048;
    v39 = v40;
    v63 = &v671;
    if (!v55)
    {
      v64 = v658;
      v65 = *((v658 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_185;
  }

  v39 = v40;

  v43, v85, v86, v87, v88, v89, v90, v91;
  while (1)
  {
    v642 = v55;
    v92 = v55 ? _CocoaArrayWrapper.endIndex.getter() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = &_swiftEmptyArrayStorage;
    if (!v92)
    {
      break;
    }

    v663 = &_swiftEmptyArrayStorage;
    v45 = &v663;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v92 & 0x8000000000000000) == 0)
    {
      v93 = 0;
      v656 = (v43 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v40 = (v93 + 1);
        if (__OFADD__(v93, 1))
        {
          break;
        }

        if ((v43 & 0xC000000000000001) != 0)
        {
          v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v93 >= *v656->clientIdentity)
          {
            goto LABEL_179;
          }

          v94 = *(v658 + 8 * v93 + 32);
        }

        v95 = v94;
        v96 = [v94 remObjectID];
        v659(v96);
        if (v39)
        {

          v658, v98, v99, v100, v101, v102, v103, v104;

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v93;
        if (v40 == v92)
        {
          v55 = v663;
          v43 = v658;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_185:
    v64 = *(v63 - 32);
    v65 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v43 + 14) = v65;
    v64, v56, v57, v58, v59, v60, v61, v62;
    *(v43 + 22) = 2082;
    v653(0);
    v66 = [swift_getObjCClassFromMetadata() description];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = sub_10000668C(v67, v69, &v663);
    v69, v71, v72, v73, v74, v75, v76, v77;
    *(v43 + 24) = v70;
    *(v43 + 32) = 2082;
    *(v43 + 34) = sub_10000668C(v651, v654, &v663);
    _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v43, 0x2Au);
    swift_arrayDestroy();

    v43 = v64;
  }

LABEL_21:
  v97 = *(v657 + 96);
  if (v97 > 1)
  {
    if ((v97 - 2) >= 3 && v97 != 4499 && v97 != 4599)
    {
      goto LABEL_189;
    }

LABEL_28:
    v105 = a15;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v656 = a15;
      v110 = v109;
      v663 = v109;
      *v108 = 136315138;
      v111 = [(v653)(0) cdEntityName];
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;

      v115 = sub_10000668C(v112, v114, &v663);
      v116 = v114;
      v43 = v658;
      v116, v117, v118, v119, v120, v121, v122, v123;
      *(v108 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v106, v107, "Performing fetch during upsert {CDType: %s}", v108, 0xCu);
      sub_10000607C(v110);
      v105 = v656;
    }

    v124 = (v105)(v55, v647);
    v125 = v39;
    v55, v126, v127, v128, v129, v130, v131, v132;
    v141 = v659;
    if (v39)
    {
      v142 = v43;
LABEL_176:
      v142, v133, v134, v135, v136, v137, v138, v139;
      return;
    }

    v143 = v645;
    v144 = v43 & 0xFFFFFFFFFFFFFF8;
    if (!v642)
    {
      goto LABEL_33;
    }

LABEL_38:
    v145 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_39;
  }

  if (!v97)
  {
    goto LABEL_28;
  }

  if (v97 != 1)
  {
LABEL_189:
    v614 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v615 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v614, v615);
    __break(1u);
    return;
  }

  v55, v78, v79, v80, v81, v82, v83, v84;
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v656 = swift_slowAlloc();
    v663 = v656;
    *v148 = 136315138;
    v149 = [(v653)(0) cdEntityName];
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v151;

    v153 = sub_10000668C(v150, v152, &v663);
    v152, v154, v155, v156, v157, v158, v159, v160;
    *(v148 + 4) = v153;
    _os_log_impl(&_mh_execute_header, v146, v147, "Skipping fetch during upsert {CDType: %s}", v148, 0xCu);
    sub_10000607C(v656);
  }

  v125 = v39;
  v143 = v645;
  v161 = v642;
  v124 = v648(&_swiftEmptyArrayStorage);
  v141 = v659;
  v144 = v43 & 0xFFFFFFFFFFFFFF8;
  if (v161)
  {
    goto LABEL_38;
  }

LABEL_33:
  v145 = *(v144 + 16);
LABEL_39:
  if (!v145)
  {
LABEL_166:
    v43, v133, v134, v135, v136, v137, v138, v139;
    v142 = v124;
    goto LABEL_176;
  }

  v162 = 0;
  v642 = a14;
  v629 = a13;
  v163 = v43 & 0xC000000000000001;
  v630 = a12;
  v633 = a11;
  v164 = (v43 & 0xFFFFFFFFFFFFFF8);
  v165 = v43 + 32;
  storeController = v650->storeController;
  v632 = a10;
  v634 = a9;
  v656 = 0x80000001007E8C60;
  v624 = &v650->clientIdentity[40];
  v623 = &v650->clientIdentity[32];
  *&v140 = 136446978;
  v621 = v140;
  *&v140 = 136446210;
  v637 = v140;
  *&v140 = 136447490;
  v622 = v140;
  *&v140 = 136447234;
  v620 = v140;
  v638 = v124;
  v628 = v145;
  v627 = v43 & 0xC000000000000001;
  v626 = v43 & 0xFFFFFFFFFFFFFF8;
  v625 = v43 + 32;
  while (1)
  {
    if (v163)
    {
      v166 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v167 = __OFADD__(v162, 1);
      v168 = (v162 + 1);
      if (v167)
      {
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }
    }

    else
    {
      if (v162 >= v164[2].isa)
      {
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        swift_once();
LABEL_168:
        sub_100006654(v639, qword_100950D98);
        v485 = Logger.logObject.getter();
        v486 = static os_log_type_t.error.getter();
        v487 = os_log_type_enabled(v485, v486);
        v488 = v658;
        if (v487)
        {
          v489 = swift_slowAlloc();
          v663 = swift_slowAlloc();
          *v489 = 136446466;
          v497 = sub_100729CB0(1, v490, v491, v492, v493, v494, v495, v496);
          v499 = v498;
          v500 = sub_10000668C(v497, v498, &v663);
          v499, v501, v502, v503, v504, v505, v506, v507;
          *(v489 + 4) = v500;
          *(v489 + 12) = 2082;
          v515 = sub_100729CB0(v164, v508, v509, v510, v511, v512, v513, v514);
          v517 = v516;
          v518 = sub_10000668C(v515, v516, &v663);
          v517, v519, v520, v521, v522, v523, v524, v525;
          *(v489 + 14) = v518;
          _os_log_impl(&_mh_execute_header, v485, v486, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v489, 0x16u);
          swift_arrayDestroy();
        }

        v526 = v638;
        v527 = objc_opt_self();
        v528 = String._bridgeToObjectiveC()();
        sub_100729CB0(1, v529, v530, v531, v532, v533, v534, v535);
        v537 = v536;
        v538 = String._bridgeToObjectiveC()();
        v537, v539, v540, v541, v542, v543, v544, v545;
        sub_100729CB0(v164, v546, v547, v548, v549, v550, v551, v552);
        v554 = v553;
        v555 = String._bridgeToObjectiveC()();
        v554, v556, v557, v558, v559, v560, v561, v562;
        [v527 unauthorizedErrorWithMissingEntitlement:v528 requestedAccessLevel:v538 currentAccesslevel:v555];

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        v488, v563, v564, v565, v566, v567, v568, v569;
        v142 = v526;
        goto LABEL_176;
      }

      v166 = *(v165 + 8 * v162);
      v167 = __OFADD__(v162, 1);
      v168 = (v162 + 1);
      if (v167)
      {
        goto LABEL_165;
      }
    }

    v169 = v166;
    v651 = v141([(RDXPCStorePerformer *)v169 remObjectID]);
    if (v125)
    {
      v43, v170, v171, v172, v173, v174, v175, v176;
      v124, v586, v587, v588, v589, v590, v591, v592;

      return;
    }

    v631 = v168;
    v40 = 0;

    v654 = v169;
    v177 = [(RDXPCStorePerformer *)v169 accountID];
    v178 = [v177 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v179 = UUID.uuidString.getter();
    v180 = v143;
    v181 = v179;
    v183 = v182;
    v184 = *storeController;
    v185 = v646;
    (*storeController)(v180, v646);
    v186 = [objc_opt_self() localInternalAccountID];
    v187 = [v186 uuid];

    v188 = v643;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v189 = UUID.uuidString.getter();
    v191 = v190;
    v184(v188, v185);
    if (v181 == v189 && v183 == v191)
    {
      v191, v192, v193, v194, v195, v196, v197, v198;
      v183, v199, v200, v201, v202, v203, v204, v205;
      v43 = v658;
    }

    else
    {
      v206 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v191, v207, v208, v209, v210, v211, v212, v213;
      v183, v214, v215, v216, v217, v218, v219, v220;
      v43 = v658;
      if ((v206 & 1) == 0)
      {
        v222 = v644;
        v223 = v654;
        goto LABEL_56;
      }
    }

    v221 = *(v657 + 68);
    v222 = v644;
    v223 = v654;
    if (v221 >> 14 >= 2)
    {
      v224 = v221 >> 14 == 2 ? *(v657 + 64) | (*(v657 + 68) << 32) : 0x7FFFFFFFLL;
    }

    else
    {
      v224 = 2147483519;
    }

    sub_100009A40(2, v224);
LABEL_56:
    v39 = v634(v223, v222);
    v648 = 0;
    v225._rawValue = v632;
    v233 = sub_1005F7D1C(v225, v633);
    v234 = v638;
    if (!*v638->clientIdentity)
    {
      break;
    }

    v235 = v630(v651);
    if ((v226 & 1) == 0)
    {
      break;
    }

    v636 = *(*&v234->clientIdentity[40] + 8 * v235);
    v236 = v657;
LABEL_115:
    v315 = *(v39 + 16);
    v650 = v315;
    if (v315)
    {

      v323 = 0;
      while (v323 < *(v39 + 16))
      {
        if (((*(v236 + 64) | (*(v236 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v40 = *(v39 + v323 + 32);
          v324 = Logger.logObject.getter();
          v325 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v324, v325))
          {
            v326 = swift_slowAlloc();
            v327 = swift_slowAlloc();
            v663 = v327;
            *v326 = v637;
            LOBYTE(v669) = v40;
            v328 = String.init<A>(describing:)();
            v330 = v329;
            v331 = sub_10000668C(v328, v329, &v663);
            v330, v332, v333, v334, v335, v336, v337, v338;
            *(v326 + 4) = v331;
            v315 = v650;
            _os_log_impl(&_mh_execute_header, v324, v325, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v326, 0xCu);
            sub_10000607C(v327);
          }

          v236 = v657;
        }

        LODWORD(v164) = *(v236 + 64);
        if (*(v236 + 68) >> 14 == 2 && (*(v236 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_188;
          }

          goto LABEL_168;
        }

        if (v315 == ++v323)
        {
          v39, v316, v317, v318, v319, v320, v321, v322;
          v43 = v658;
          goto LABEL_128;
        }
      }

      goto LABEL_180;
    }

LABEL_128:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v340 = v651;
    v341 = v636;
    v342 = Logger.logObject.getter();
    v343 = static os_log_type_t.default.getter();

    v344 = os_log_type_enabled(v342, v343);
    v651 = v341;
    if (v344)
    {
      v618 = v343;
      v619 = v342;
      v345 = swift_slowAlloc();
      v346 = swift_slowAlloc();
      v617 = swift_slowAlloc();
      v669 = v617;
      *v345 = v622;
      *(v345 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v669);
      *(v345 + 12) = 2082;
      v347 = *(v236 + 40);
      v664 = *(v236 + 24);
      *v665 = v347;
      *&v665[14] = *(v236 + 54);
      sub_100009DAC(&v664, &v663);
      v348 = sub_1000063E8();
      v350 = v349;
      sub_1005812D4(&v664);
      v351 = sub_10000668C(v348, v350, &v669);
      v350, v352, v353, v354, v355, v356, v357, v358;
      *(v345 + 14) = v351;
      v359 = v651;
      *(v345 + 22) = 2114;
      *(v345 + 24) = v340;
      *v346 = v340;
      *(v345 + 32) = 2112;
      v636 = v340;
      v360 = v340;
      v361 = [v359 objectID];
      *(v345 + 34) = v361;
      v616 = v346;
      v346[1] = v361;
      *(v345 + 42) = 2082;
      v369 = *(v39 + 16);
      if (v369)
      {
        v663 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v369, 0);
        v377 = v663;
        v378 = 32;
        v379 = v656;
        do
        {
          v380 = *(v39 + v378);
          if (v380 == 2)
          {
            v381 = 0x6E6F697461657263;
          }

          else
          {
            v381 = 0x4E79616C70736964;
          }

          if (v380 == 2)
          {
            v382 = 0xEC00000065746144;
          }

          else
          {
            v382 = 0xEB00000000656D61;
          }

          v383 = 0xD000000000000017;
          if (*(v39 + v378))
          {
            v384 = v379;
          }

          else
          {
            v383 = 0x44497463656A626FLL;
            v384 = 0xE800000000000000;
          }

          if (*(v39 + v378) <= 1u)
          {
            v385 = v383;
          }

          else
          {
            v385 = v381;
          }

          if (*(v39 + v378) <= 1u)
          {
            v386 = v384;
          }

          else
          {
            v386 = v382;
          }

          v663 = v377;
          v388 = *v377->clientIdentity;
          v387 = *&v377->clientIdentity[8];
          if (v388 >= v387 >> 1)
          {
            sub_100026EF4((v387 > 1), v388 + 1, 1);
            v379 = v656;
            v377 = v663;
          }

          *v377->clientIdentity = v388 + 1;
          v389 = v377 + 16 * v388;
          *(v389 + 4) = v385;
          *(v389 + 5) = v386;
          ++v378;
          --v369;
        }

        while (v369);
        v39, v370, v371, v372, v373, v374, v375, v376;
        v43 = v658;
        v341 = v651;
      }

      else
      {
        v39, v362, v363, v364, v365, v366, v367, v368;
        v377 = &_swiftEmptyArrayStorage;
        v341 = v359;
      }

      v391 = Array.description.getter();
      v393 = v392;
      v377, v392, v394, v395, v396, v397, v398, v399;
      v39, v400, v401, v402, v403, v404, v405, v406;
      v407 = sub_10000668C(v391, v393, &v669);
      v393, v408, v409, v410, v411, v412, v413, v414;
      *(v345 + 44) = v407;
      *(v345 + 52) = 1024;
      v236 = v657;
      LODWORD(v407) = *(v657 + 104);

      *(v345 + 54) = v407;

      v415 = v619;
      _os_log_impl(&_mh_execute_header, v619, v618, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v345, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v390 = v648;
      v340 = v636;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v390 = v648;
    }

    v629(v654, v341, v39);
    if (v390)
    {

      v43, v600, v601, v602, v603, v604, v605, v606;
      v39, v607, v608, v609, v610, v611, v612, v613;
      v142 = v638;
      goto LABEL_176;
    }

    v648 = 0;
    v39, v416, v417, v418, v419, v420, v421, v422;
    v423 = [v341 changedValues];
    v424 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v425 = v647;
    swift_beginAccess();
    v426 = v236;
    v427 = v340;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v669 = v425[7];
    v425[7] = 0x8000000000000000;
    sub_1002C8688(v424, v427, isUniquelyReferenced_nonNull_native);

    v425[7] = v669;
    swift_endAccess();
    v436 = *(v426 + 104);
    if (v650 && (v436 & 1) != 0)
    {
      v424, v429, v430, v431, v432, v433, v434, v435;
      [v341 updateChangeCount];
    }

    else
    {

      v437 = v427;

      v438 = Logger.logObject.getter();
      v439 = static os_log_type_t.default.getter();
      v424, v440, v441, v442, v443, v444, v445, v446;

      if (os_log_type_enabled(v438, v439))
      {
        v447 = swift_slowAlloc();
        v448 = swift_slowAlloc();
        v650 = swift_slowAlloc();
        v663 = v650;
        *v447 = v620;
        *(v447 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v663);
        *(v447 + 12) = 1024;
        *(v447 + 14) = v436;

        *(v447 + 18) = 1024;
        *(v447 + 20) = 0;
        *(v447 + 24) = 2114;
        *(v447 + 26) = v437;
        *v448 = v437;
        *(v447 + 34) = 2082;
        v449 = v437;
        v450 = v648;
        sub_1005E2810(v424);
        v452 = v451;
        v648 = v450;
        v424, v453, v454, v455, v456, v457, v458, v459;
        v460 = Array.description.getter();
        v462 = v461;
        v452, v461, v463, v464, v465, v466, v467, v468;
        v469 = sub_10000668C(v460, v462, &v663);
        v462, v470, v471, v472, v473, v474, v475, v476;
        *(v447 + 36) = v469;
        _os_log_impl(&_mh_execute_header, v438, v439, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v447, 0x2Cu);
        sub_1000050A4(v448, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v477 = &v668;
      }

      else
      {

        v424, v478, v479, v480, v481, v482, v483, v484;

        v477 = &v670;
      }

      v43 = v658;
    }

    v141 = v659;
    v162 = v631;
    v163 = v627;
    v125 = v648;
    v143 = v645;
    v124 = v638;
    v164 = v626;
    v165 = v625;
    if (v631 == v628)
    {
      goto LABEL_166;
    }
  }

  if (v233 != 4)
  {
    v40 = 0;
    v237 = *(v39 + 16);
    while (1)
    {
      if (v237 == v40)
      {
        v39, v226, v227, v228, v229, v230, v231, v232;
        v638, v570, v571, v572, v573, v574, v575, v576;
        v43 = v658;
        goto LABEL_172;
      }

      if (v40 >= *(v39 + 16))
      {
        goto LABEL_181;
      }

      v253 = v40[v39 + 32];
      v254 = v253 == 2 ? 0x6E6F697461657263 : 0x4E79616C70736964;
      v255 = v253 == 2 ? 0xEC00000065746144 : 0xEB00000000656D61;
      v256 = v40[v39 + 32] ? 0xD000000000000017 : 0x44497463656A626FLL;
      v257 = v40[v39 + 32] ? v656 : 0xE800000000000000;
      v258 = (v40[v39 + 32] <= 1u ? v256 : v254);
      v259 = v40[v39 + 32] <= 1u ? v257 : v255;
      v260 = v233 == 2 ? 0x6E6F697461657263 : 0x4E79616C70736964;
      v261 = v233 == 2 ? 0xEC00000065746144 : 0xEB00000000656D61;
      v262 = v233 ? 0xD000000000000017 : 0x44497463656A626FLL;
      v263 = v233 ? v656 : 0xE800000000000000;
      v264 = (v233 <= 1u ? v262 : v260);
      v265 = v233 <= 1u ? v263 : v261;
      if (v258 == v264 && v259 == v265)
      {
        break;
      }

      v238 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v259, v239, v240, v241, v242, v243, v244, v245;
      v265, v246, v247, v248, v249, v250, v251, v252;
      ++v40;
      if (v238)
      {
        goto LABEL_103;
      }
    }

    v259, 0xE800000000000000, v264, v228, v229, v230, v231, v232;
    v265, v266, v267, v268, v269, v270, v271, v272;
LABEL_103:
    v273 = *(v657 + 88);
    v653(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v275 = [ObjCClassFromMetadata entity];
    v276 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v275 insertIntoManagedObjectContext:v273];
    v277 = v640;
    v278 = v276;
    [v273 assignObject:v278 toPersistentStore:v277];

    v279 = v278;
    v280 = [v651 uuid];
    v281 = v641;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v282 = v646;
    (*v624)(v281, 0, 1, v646);
    v283 = v649;
    sub_10018E470(v281, v649);
    isa = 0;
    if ((*v623)(v283, 1, v282) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v184(v283, v282);
    }

    [v279 setIdentifier:{isa, v616}];

    sub_1000050A4(v281, &unk_100939D90, "8\n\r");
    v285 = v657;

    v286 = v651;
    v287 = v279;
    v236 = v285;
    v40 = v287;
    v164 = Logger.logObject.getter();
    v288 = static os_log_type_t.default.getter();

    v289 = os_log_type_enabled(v164, v288);
    v636 = v40;
    if (v289)
    {
      v290 = swift_slowAlloc();
      v291 = swift_slowAlloc();
      v650 = swift_slowAlloc();
      v669 = v650;
      *v290 = v621;
      *(v290 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v669);
      *(v290 + 12) = 2082;
      v292 = *(v657 + 40);
      v666 = *(v657 + 24);
      *v667 = v292;
      *&v667[14] = *(v657 + 54);
      sub_100009DAC(&v666, &v663);
      v293 = sub_1000063E8();
      v295 = v294;
      sub_1005812D4(&v666);
      v296 = sub_10000668C(v293, v295, &v669);
      v295, v297, v298, v299, v300, v301, v302, v303;
      *(v290 + 14) = v296;
      *(v290 + 22) = 2114;
      *(v290 + 24) = v286;
      *v291 = v286;
      *(v290 + 32) = 2112;
      v304 = v286;
      v305 = [v40 objectID];
      *(v290 + 34) = v305;
      v291[1] = v305;
      _os_log_impl(&_mh_execute_header, v164, v288, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v290, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v236 = v657;
    }

    v306 = v647;
    swift_beginAccess();
    v307 = v306[6];
    if ((v307 & 0xC000000000000001) == 0)
    {
      v313 = v286;
      v312 = v647;
      goto LABEL_114;
    }

    if (v307 < 0)
    {
      v308 = v306[6];
    }

    else
    {
      v308 = v307 & 0xFFFFFFFFFFFFFF8;
    }

    v309 = v286;
    v310 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v310, 1))
    {
      v311 = sub_10021CDBC(v308, v310 + 1);
      v312 = v647;
      v647[6] = v311;
LABEL_114:
      v314 = swift_isUniquelyReferenced_nonNull_native();
      v669 = v312[6];
      sub_1002C8398(v636, v286, v314);
      v312[6] = v669;

      swift_endAccess();
      v43 = v658;
      goto LABEL_115;
    }

    goto LABEL_187;
  }

  v39, v226, v227, v228, v229, v230, v231, v232;
  v638, v593, v594, v595, v596, v597, v598, v599;
LABEL_172:
  v43, v577, v578, v579, v580, v581, v582, v583;
  v584 = objc_opt_self();
  v585 = v651;
  [v584 noSuchObjectErrorWithObjectID:v651];
  swift_willThrow();
}

void sub_10062B5D0(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, unint64_t a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v667 = v640 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v640 - v12;
  v14 = type metadata accessor for UUID();
  v668 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = v640 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = v640 - v20;
  v22 = *(a3 + 24);
  v670 = *(a3 + 16);
  v673 = v22;
  v23 = *(a3 + 32);
  v674 = v3;
  v24 = *(v3 + 72);
  v672 = a2;
  *&v676.clientIdentity[8] = v24;
  *&v676.clientIdentity[16] = a2;
  *v676.clientIdentity = &v676.clientIdentity[16];

  v25 = v675;
  v31 = sub_100759CB4(sub_1006B028C, &v676, a1, v26, v27, v28, v29, v30);
  if (v25)
  {
    return;
  }

  v32 = v31;
  v664 = v24;
  v659 = v23;
  v665 = v21;
  v663 = v17;
  v666 = v14;
  v660 = v13;
  v33 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_184;
  }

LABEL_3:
  v34 = type metadata accessor for Logger();
  v35 = sub_100006654(v34, qword_100945730);

  v36 = v673;

  v671 = v35;
  v37 = Logger.logObject.getter();
  LOBYTE(v38) = static os_log_type_t.info.getter();
  v36, v39, v40, v41, v42, v43, v44, v45;
  v46 = os_log_type_enabled(v37, v38);
  v47 = (v32 >> 62);
  v675 = v32;
  v669 = a3;
  if (v46)
  {
    v23 = swift_slowAlloc();
    v662 = swift_slowAlloc();
    *&v676.clientIdentity[16] = v662;
    *v23 = 136446978;
    *(v23 + 1) = sub_10000668C(0x747265737075, 0xE600000000000000, &v676.clientIdentity[16]);
    *(v23 + 6) = 2048;
    if (!v47)
    {
      v55 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_187;
  }

  v32, v76, v77, v78, v79, v80, v81, v82;
  v60 = v32;
  while (1)
  {
    v38 = v674;
    v32 = v47 ? _CocoaArrayWrapper.endIndex.getter() : *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v657 = v34;
    if (!v32)
    {
      break;
    }

    v670 = v47;
    *&v676.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v37 = &v676.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v32 & 0x8000000000000000) == 0)
    {
      v83 = 0;
      v84 = v60;
      a3 = v60 & 0xC000000000000001;
      v673 = (v84 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v85 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (a3)
        {
          v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v83 >= *v673->clientIdentity)
          {
            goto LABEL_181;
          }

          v86 = *&v675->clientIdentity[8 * v83 + 16];
        }

        v87 = v86;
        v88 = sub_1005E8958([v86 remObjectID]);
        if (v33)
        {

          v675, v91, v92, v93, v94, v95, v96, v97;

          return;
        }

        v23 = v88;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v83;
        if (v85 == v32)
        {
          v89 = *&v676.clientIdentity[16];
          v60 = v675;
          v38 = v674;
          v47 = v670;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_187:
    v55 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v23 + 14) = v55;
    v32, v48, v49, v50, v51, v52, v53, v54;
    *(v23 + 11) = 2082;
    type metadata accessor for REMCDListSection();
    v56 = [swift_getObjCClassFromMetadata() description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = v675;
    v61 = sub_10000668C(v57, v59, &v676.clientIdentity[16]);
    v59, v62, v63, v64, v65, v66, v67, v68;
    *(v23 + 3) = v61;
    *(v23 + 16) = 2082;
    *(v23 + 34) = sub_10000668C(v670, v673, &v676.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v23, 0x2Au);
    swift_arrayDestroy();
  }

  v89 = &_swiftEmptyArrayStorage;
LABEL_22:
  v90 = *(v38 + 96);
  if (v90 <= 1)
  {
    if (v90)
    {
      if (v90 != 1)
      {
LABEL_191:
        v638 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        v639 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2, v638, v639);
        __break(1u);
        return;
      }

      v89, v69, v70, v71, v72, v73, v74, v75;
      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v676.clientIdentity[16] = v138;
        *v137 = 136315138;
        v139 = [type metadata accessor for REMCDListSection() cdEntityName];
        v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v142 = v141;

        v143 = v140;
        v60 = v675;
        v144 = sub_10000668C(v143, v142, &v676.clientIdentity[16]);
        v145 = v142;
        v38 = v674;
        v145, v146, v147, v148, v149, v150, v151, v152;
        *(v137 + 4) = v144;
        _os_log_impl(&_mh_execute_header, v135, v136, "Skipping fetch during upsert {CDType: %s}", v137, 0xCu);
        sub_10000607C(v138);
      }

      v118 = v33;
      v134 = v665;
      v662 = sub_100390D0C(&_swiftEmptyArrayStorage);
      goto LABEL_38;
    }
  }

  else if ((v90 - 2) >= 3 && v90 != 4499 && v90 != 4599)
  {
    goto LABEL_191;
  }

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v673 = swift_slowAlloc();
    *&v676.clientIdentity[16] = v673;
    *v100 = 136315138;
    v101 = [type metadata accessor for REMCDListSection() cdEntityName];
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v89;
    v104 = v47;
    v106 = v105;

    v107 = v102;
    v60 = v675;
    v108 = sub_10000668C(v107, v106, &v676.clientIdentity[16]);
    v109 = v106;
    v47 = v104;
    v89 = v103;
    v109, v110, v111, v112, v113, v114, v115, v116;
    *(v100 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v98, v99, "Performing fetch during upsert {CDType: %s}", v100, 0xCu);
    sub_10000607C(v673);
    v38 = v674;
  }

  v117 = sub_100669CD8(v89, v669);
  v118 = v33;
  v89, v119, v120, v121, v122, v123, v124, v125;
  if (v33)
  {
    v60, v126, v127, v128, v129, v130, v131, v132;
    return;
  }

  v662 = v117;
  v134 = v665;
LABEL_38:
  v153 = v118;
  if (v47)
  {
    v154 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v154 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v154)
  {
    v155 = 0;
    v156 = v60 & 0xC000000000000001;
    v157 = v60 & 0xFFFFFFFFFFFFFF8;
    v158 = (v60 + 32);
    v654 = (v668 + 1);
    v673 = 0x80000001007E8C60;
    v648 = (v668 + 7);
    v647 = (v668 + 6);
    *&v133 = 136446978;
    v644 = v133;
    *&v133 = 136446210;
    v656 = v133;
    *&v133 = 136447490;
    v645 = v133;
    *&v133 = 136447234;
    v643 = v133;
    v652 = v154;
    v651 = v60 & 0xC000000000000001;
    v650 = v60 & 0xFFFFFFFFFFFFFF8;
    v649 = (v60 + 32);
    do
    {
      if (v156)
      {
        v159 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v160 = __OFADD__(v155, 1);
        v161 = v155 + 1;
        if (v160)
        {
LABEL_167:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v155 >= *(v157 + 16))
        {
          __break(1u);
          goto LABEL_189;
        }

        v159 = *&v158[8 * v155];
        v160 = __OFADD__(v155, 1);
        v161 = v155 + 1;
        if (v160)
        {
          goto LABEL_167;
        }
      }

      v162 = v159;
      v661 = sub_1005E8958([v162 remObjectID]);
      v668 = v153;
      if (v153)
      {
        v60, v163, v164, v165, v166, v167, v168, v169;
        v662, v603, v604, v605, v606, v607, v608, v609;

        return;
      }

      v653 = v161;

      v658 = v162;
      v170 = [v162 accountID];
      v171 = v663;
      v172 = [v170 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = UUID.uuidString.getter();
      v174 = v134;
      v175 = v173;
      v177 = v176;
      v178 = *v654;
      v179 = v666;
      (*v654)(v174, v666);
      v180 = [objc_opt_self() localInternalAccountID];
      v181 = [v180 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v182 = UUID.uuidString.getter();
      v183 = v171;
      v184 = v182;
      v186 = v185;
      v670 = v178;
      v178(v183, v179);
      if (v175 == v184 && v177 == v186)
      {
        v186, v187, v188, v189, v190, v191, v192, v193;
        v177, v194, v195, v196, v197, v198, v199, v200;
      }

      else
      {
        v201 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v186, v202, v203, v204, v205, v206, v207, v208;
        v177, v209, v210, v211, v212, v213, v214, v215;
        if ((v201 & 1) == 0)
        {
          v23 = v672;
          v217 = v664;
          a3 = 0x800000000000;
          v220 = v668;
          goto LABEL_59;
        }
      }

      v216 = *(v38 + 68);
      v217 = v664;
      a3 = 0x800000000000;
      if (v216 >> 14 >= 2)
      {
        v219 = v662;
        if (v216 >> 14 == 2)
        {
          v218 = *(v38 + 64) | (*(v38 + 68) << 32);
        }

        else
        {
          v218 = 0x7FFFFFFFLL;
        }

        v23 = v672;
      }

      else
      {
        v218 = 2147483519;
        v23 = v672;
        v219 = v662;
      }

      v220 = v668;
      sub_100009A40(2, v218);
      if (v220)
      {
        v675, v221, v222, v223, v224, v225, v226, v227;

        v602 = v219;
        goto LABEL_175;
      }

LABEL_59:
      v228 = sub_100692848(v658, v217, &type metadata for REMListSectionStorageCDIngestor.ValueKey, sub_1005F59A8);
      v668 = v220;
      if (v220)
      {
        v675, v229, v230, v231, v232, v233, v234, v235;

        v662, v610, v611, v612, v613, v614, v615, v616;
        return;
      }

      v33 = v228;
      v32 = sub_1005F7820();
      v243 = v662;
      if (!*v662->clientIdentity || (v244 = sub_100393C74(), (v236 & 1) == 0))
      {
        if (v32 == 5)
        {
LABEL_170:
          v33, v236, v237, v238, v239, v240, v241, v242;
          v662, v495, v496, v497, v498, v499, v500, v501;
          v675, v502, v503, v504, v505, v506, v507, v508;
          v509 = objc_opt_self();
          v510 = v661;
          [v509 noSuchObjectErrorWithObjectID:v661];
          swift_willThrow();

          return;
        }

        a3 = 0;
        v23 = *(v33 + 16);
        while (1)
        {
          if (v23 == a3)
          {
            goto LABEL_170;
          }

          if (a3 >= *(v33 + 16))
          {
            goto LABEL_183;
          }

          v260 = *(v33 + a3 + 32);
          if (v260 <= 1)
          {
            v261 = 0xD000000000000017;
            if (*(v33 + a3 + 32))
            {
              v265 = 0xD000000000000017;
            }

            else
            {
              v265 = 0x44497463656A626FLL;
            }

            v264 = v673;
            if (*(v33 + a3 + 32))
            {
              v266 = v673;
            }

            else
            {
              v266 = 0xE800000000000000;
            }

            v262 = 0xED0000656D614E6CLL;
            v263 = 0x6163696E6F6E6163;
          }

          else
          {
            v261 = 0xD000000000000017;
            v262 = 0xED0000656D614E6CLL;
            v263 = 0x6163696E6F6E6163;
            v264 = v673;
            if (v260 == 2)
            {
              v265 = 0x6E6F697461657263;
              v266 = 0xEC00000065746144;
            }

            else
            {
              if (v260 == 3)
              {
                v265 = 0x4E79616C70736964;
              }

              else
              {
                v265 = 0x6163696E6F6E6163;
              }

              if (v260 == 3)
              {
                v266 = 0xEB00000000656D61;
              }

              else
              {
                v266 = 0xED0000656D614E6CLL;
              }
            }
          }

          if (v32 == 3)
          {
            v263 = 0x4E79616C70736964;
            v262 = 0xEB00000000656D61;
          }

          if (v32 == 2)
          {
            v263 = 0x6E6F697461657263;
            v262 = 0xEC00000065746144;
          }

          if (v32)
          {
            v267 = v264;
          }

          else
          {
            v261 = 0x44497463656A626FLL;
            v267 = 0xE800000000000000;
          }

          v268 = (v32 <= 1u ? v261 : v263);
          v269 = (v32 <= 1u ? v267 : v262);
          if (v265 == v268 && v266 == v269)
          {
            break;
          }

          v245 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v266, v246, v247, v248, v249, v250, v251, v252;
          v269, v253, v254, v255, v256, v257, v258, v259;
          ++a3;
          if (v245)
          {
            goto LABEL_100;
          }
        }

        v266, v236, v268, v238, v239, v240, v241, v242;
        v269, v270, v271, v272, v273, v274, v275, v276;
LABEL_100:
        v277 = *(v38 + 88);
        type metadata accessor for REMCDListSection();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v279 = [ObjCClassFromMetadata entity];
        v280 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v279 insertIntoManagedObjectContext:v277];
        v281 = v659;
        v282 = v280;
        [v277 assignObject:v282 toPersistentStore:v281];

        v283 = v282;
        v284 = [v661 uuid];
        v285 = v660;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v286 = v666;
        (*v648)(v285, 0, 1, v666);
        v287 = v667;
        sub_10018E470(v285, v667);
        v288 = (*v647)(v287, 1, v286);
        isa = 0;
        if (v288 != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v670(v287, v666);
        }

        [v283 setIdentifier:isa];

        sub_1000050A4(v285, &unk_100939D90, "8\n\r");

        v290 = v661;
        v291 = v283;
        v155 = Logger.logObject.getter();
        v292 = static os_log_type_t.default.getter();

        v293 = os_log_type_enabled(v155, v292);
        v655 = v291;
        if (v293)
        {
          v294 = swift_slowAlloc();
          v295 = swift_slowAlloc();
          v670 = swift_slowAlloc();
          v677 = v670;
          *v294 = v644;
          *(v294 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v677);
          *(v294 + 12) = 2082;
          v296 = *(v38 + 40);
          *&v676.coreSuggestionsHandler[34] = *(v38 + 24);
          *&v676.publicCloudDatabaseController[10] = v296;
          *&v676.publicCloudDatabaseController[24] = *(v38 + 54);
          sub_100009DAC(&v676.coreSuggestionsHandler[34], &v676.clientIdentity[16]);
          v297 = sub_1000063E8();
          LODWORD(v646) = v292;
          v298 = v297;
          v300 = v299;
          sub_1005812D4(&v676.coreSuggestionsHandler[34]);
          v301 = sub_10000668C(v298, v300, &v677);
          v300, v302, v303, v304, v305, v306, v307, v308;
          *(v294 + 14) = v301;
          *(v294 + 22) = 2114;
          *(v294 + 24) = v290;
          *v295 = v290;
          *(v294 + 32) = 2112;
          v309 = v290;
          v310 = [v291 objectID];
          *(v294 + 34) = v310;
          v295[1] = v310;
          _os_log_impl(&_mh_execute_header, v155, v646, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v294, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();
        }

        v32 = v669;
        a3 = 0x800000000000;
        swift_beginAccess();
        v311 = *(v32 + 48);
        if ((v311 & 0xC000000000000001) == 0)
        {
          v315 = v290;
          goto LABEL_111;
        }

        if (v311 < 0)
        {
          v312 = *(v32 + 48);
        }

        else
        {
          v312 = v311 & 0xFFFFFFFFFFFFFF8;
        }

        v313 = v290;
        v314 = __CocoaDictionary.count.getter();
        if (!__OFADD__(v314, 1))
        {
          *(v32 + 48) = sub_10021CDBC(v312, v314 + 1);
LABEL_111:
          v23 = v672;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v677 = *(v32 + 48);
          sub_1002C8398(v655, v290, isUniquelyReferenced_nonNull_native);
          *(v32 + 48) = v677;

          swift_endAccess();
          goto LABEL_112;
        }

LABEL_189:
        __break(1u);
LABEL_190:
        swift_once();
LABEL_172:
        sub_100006654(v657, qword_100950D98);
        v511 = Logger.logObject.getter();
        v512 = static os_log_type_t.error.getter();
        v513 = os_log_type_enabled(v511, v512);
        v514 = v658;
        if (v513)
        {
          v515 = swift_slowAlloc();
          *&v676.clientIdentity[16] = swift_slowAlloc();
          *v515 = 136446466;
          v523 = sub_100729CB0(1, v516, v517, v518, v519, v520, v521, v522);
          v525 = v524;
          v526 = sub_10000668C(v523, v524, &v676.clientIdentity[16]);
          v525, v527, v528, v529, v530, v531, v532, v533;
          *(v515 + 4) = v526;
          *(v515 + 12) = 2082;
          v541 = sub_100729CB0(v155, v534, v535, v536, v537, v538, v539, v540);
          v543 = v542;
          v544 = sub_10000668C(v541, v542, &v676.clientIdentity[16]);
          v543, v545, v546, v547, v548, v549, v550, v551;
          *(v515 + 14) = v544;
          _os_log_impl(&_mh_execute_header, v511, v512, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v515, 0x16u);
          swift_arrayDestroy();
        }

        v552 = objc_opt_self();
        v553 = String._bridgeToObjectiveC()();
        sub_100729CB0(1, v554, v555, v556, v557, v558, v559, v560);
        v562 = v561;
        v563 = String._bridgeToObjectiveC()();
        v562, v564, v565, v566, v567, v568, v569, v570;
        sub_100729CB0(v155, v571, v572, v573, v574, v575, v576, v577);
        v579 = v578;
        v580 = String._bridgeToObjectiveC()();
        v579, v581, v582, v583, v584, v585, v586, v587;
        [v552 unauthorizedErrorWithMissingEntitlement:v553 requestedAccessLevel:v563 currentAccesslevel:v580];

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        v675, v588, v589, v590, v591, v592, v593, v594;
        v602 = v662;
LABEL_175:
        v602, v595, v596, v597, v598, v599, v600, v601;
        return;
      }

      v655 = *(*&v243->clientIdentity[40] + 8 * v244);
      v32 = v669;
LABEL_112:
      v317 = *(v33 + 16);
      v670 = v317;
      if (v317)
      {

        v325 = 0;
        while (v325 < *(v33 + 16))
        {
          if (((*(v38 + 64) | (*(v38 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
          {
            v326 = *(v33 + v325 + 32);
            v327 = Logger.logObject.getter();
            v328 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v327, v328))
            {
              v329 = swift_slowAlloc();
              v330 = swift_slowAlloc();
              *&v676.clientIdentity[16] = v330;
              *v329 = v656;
              LOBYTE(v677) = v326;
              v331 = String.init<A>(describing:)();
              v333 = v332;
              v334 = sub_10000668C(v331, v332, &v676.clientIdentity[16]);
              v333, v335, v336, v337, v338, v339, v340, v341;
              *(v329 + 4) = v334;
              _os_log_impl(&_mh_execute_header, v327, v328, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v329, 0xCu);
              sub_10000607C(v330);
              a3 = 0x800000000000;

              v23 = v672;
            }

            v38 = v674;
            v32 = v669;
            v317 = v670;
          }

          LODWORD(v155) = *(v38 + 64);
          if (*(v38 + 68) >> 14 == 2 && (*(v38 + 64) & 1) == 0)
          {
            if (qword_1009367A0 != -1)
            {
              goto LABEL_190;
            }

            goto LABEL_172;
          }

          if (v317 == ++v325)
          {
            v33, v318, v319, v320, v321, v322, v323, v324;
            goto LABEL_125;
          }
        }

        goto LABEL_182;
      }

LABEL_125:
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v343 = v661;
      v344 = v655;
      v345 = Logger.logObject.getter();
      v346 = static os_log_type_t.default.getter();
      v661 = v344;

      v347 = os_log_type_enabled(v345, v346);
      v646 = v343;
      if (v347)
      {
        v642 = v346;
        v655 = v345;
        v348 = swift_slowAlloc();
        v349 = swift_slowAlloc();
        v641 = swift_slowAlloc();
        v677 = v641;
        *v348 = v645;
        *(v348 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v677);
        *(v348 + 12) = 2082;
        v350 = *(v38 + 40);
        *&v676.dataAccessRequestsWriter[2] = *(v38 + 24);
        *&v676.coreSuggestionsHandler[2] = v350;
        *&v676.coreSuggestionsHandler[16] = *(v38 + 54);
        sub_100009DAC(&v676.dataAccessRequestsWriter[2], &v676.clientIdentity[16]);
        v351 = sub_1000063E8();
        v353 = v352;
        sub_1005812D4(&v676.dataAccessRequestsWriter[2]);
        v354 = sub_10000668C(v351, v353, &v677);
        v353, v355, v356, v357, v358, v359, v360, v361;
        *(v348 + 14) = v354;
        *(v348 + 22) = 2114;
        *(v348 + 24) = v343;
        *v349 = v343;
        *(v348 + 32) = 2112;
        v362 = v343;
        v363 = v661;
        v364 = [v661 objectID];
        *(v348 + 34) = v364;
        v640[1] = v349;
        v349[1] = v364;
        *(v348 + 42) = 2082;
        v372 = *(v33 + 16);
        if (v372)
        {
          *&v676.clientIdentity[16] = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, v372, 0);
          v380 = *&v676.clientIdentity[16];
          v381 = 32;
          v382 = v673;
          do
          {
            v383 = *(v33 + v381);
            if (v383 == 3)
            {
              v384 = 0x4E79616C70736964;
            }

            else
            {
              v384 = 0x6163696E6F6E6163;
            }

            if (v383 == 3)
            {
              v385 = 0xEB00000000656D61;
            }

            else
            {
              v385 = 0xED0000656D614E6CLL;
            }

            if (v383 == 2)
            {
              v384 = 0x6E6F697461657263;
              v385 = 0xEC00000065746144;
            }

            if (*(v33 + v381))
            {
              v386 = 0xD000000000000017;
            }

            else
            {
              v386 = 0x44497463656A626FLL;
            }

            if (*(v33 + v381))
            {
              v387 = v382;
            }

            else
            {
              v387 = 0xE800000000000000;
            }

            if (*(v33 + v381) <= 1u)
            {
              v388 = v386;
            }

            else
            {
              v388 = v384;
            }

            if (*(v33 + v381) <= 1u)
            {
              v389 = v387;
            }

            else
            {
              v389 = v385;
            }

            *&v676.clientIdentity[16] = v380;
            v391 = *v380->clientIdentity;
            v390 = *&v380->clientIdentity[8];
            if (v391 >= v390 >> 1)
            {
              sub_100026EF4((v390 > 1), v391 + 1, 1);
              v382 = v673;
              v380 = *&v676.clientIdentity[16];
            }

            *v380->clientIdentity = v391 + 1;
            v392 = v380 + 16 * v391;
            *(v392 + 4) = v388;
            *(v392 + 5) = v389;
            ++v381;
            --v372;
          }

          while (v372);
          v33, v373, v374, v375, v376, v377, v378, v379;
          v38 = v674;
          v363 = v661;
        }

        else
        {
          v33, v365, v366, v367, v368, v369, v370, v371;
          v380 = &_swiftEmptyArrayStorage;
        }

        v394 = Array.description.getter();
        v396 = v395;
        v380, v395, v397, v398, v399, v400, v401, v402;
        v33, v403, v404, v405, v406, v407, v408, v409;
        v410 = sub_10000668C(v394, v396, &v677);
        v396, v411, v412, v413, v414, v415, v416, v417;
        *(v348 + 44) = v410;
        *(v348 + 52) = 1024;
        LODWORD(v410) = *(v38 + 104);

        *(v348 + 54) = v410;

        v418 = v655;
        _os_log_impl(&_mh_execute_header, v655, v642, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v348, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v60 = v675;
        v32 = v669;
        v393 = v658;
      }

      else
      {

        swift_bridgeObjectRelease_n();

        v393 = v658;
        v60 = v675;
        v363 = v661;
      }

      v419 = v668;
      sub_1003B6DCC(v393, v363, v33);
      if (v419)
      {

        v60, v617, v618, v619, v620, v621, v622, v623;
        v33, v624, v625, v626, v627, v628, v629, v630;
        v662, v631, v632, v633, v634, v635, v636, v637;
        return;
      }

      v33, v420, v421, v422, v423, v424, v425, v426;
      v427 = [v363 changedValues];
      v428 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v429 = v32;
      v430 = v646;

      v431 = swift_isUniquelyReferenced_nonNull_native();
      v677 = *(v429 + 56);
      *(v429 + 56) = 0x8000000000000000;
      sub_1002C8688(v428, v430, v431);

      *(v429 + 56) = v677;
      swift_endAccess();
      v439 = *(v674 + 104);
      if (v670 && (v439 & 1) != 0)
      {
        v428, v432, v433, v434, v435, v436, v437, v438;
        v440 = v661;
        [v661 updateChangeCount];

LABEL_162:
        v153 = 0;
        goto LABEL_163;
      }

      v441 = v430;

      v442 = Logger.logObject.getter();
      v443 = static os_log_type_t.default.getter();
      v428, v444, v445, v446, v447, v448, v449, v450;

      if (!os_log_type_enabled(v442, v443))
      {

        v428, v481, v482, v483, v484, v485, v486, v487;

        goto LABEL_162;
      }

      v451 = swift_slowAlloc();
      v668 = swift_slowAlloc();
      v670 = swift_slowAlloc();
      *&v676.clientIdentity[16] = v670;
      *v451 = v643;
      *(v451 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v676.clientIdentity[16]);
      *(v451 + 12) = 1024;
      *(v451 + 14) = v439;

      *(v451 + 18) = 1024;
      *(v451 + 20) = 0;
      *(v451 + 24) = 2114;
      *(v451 + 26) = v441;
      v452 = v668;
      *v668 = v441;
      *(v451 + 34) = 2082;
      v453 = v441;
      sub_1005E2810(v428);
      v455 = v454;
      v428, v456, v457, v458, v459, v460, v461, v462;
      v463 = Array.description.getter();
      v465 = v464;
      v455, v464, v466, v467, v468, v469, v470, v471;
      v472 = v463;
      v60 = v675;
      v473 = sub_10000668C(v472, v465, &v676.clientIdentity[16]);
      v465, v474, v475, v476, v477, v478, v479, v480;
      *(v451 + 36) = v473;
      _os_log_impl(&_mh_execute_header, v442, v443, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v451, 0x2Cu);
      sub_1000050A4(v452, &unk_100938E70, &unk_100797230);
      v153 = 0;

      swift_arrayDestroy();

LABEL_163:
      v155 = v653;
      v38 = v674;
      v134 = v665;
      v156 = v651;
      v157 = v650;
      v158 = v649;
    }

    while (v653 != v652);
  }

  v60, v126, v127, v128, v129, v130, v131, v132;
  v662, v488, v489, v490, v491, v492, v493, v494;
}

void sub_10062D634(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v655 = &v626 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v626 - v12;
  v14 = type metadata accessor for UUID();
  v661 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = &v626 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v626 - v20;
  v22 = a3[3];
  v662 = a3[2];
  v664 = v22;
  v23 = a3[4];
  v665 = v3;
  v24 = *(v3 + 72);
  v657 = a2;
  *&v667.clientIdentity[8] = v24;
  *&v667.clientIdentity[16] = a2;
  *v667.clientIdentity = &v667.clientIdentity[16];

  v25 = v666;
  v31 = sub_100759CB4(sub_1006B02A8, &v667, a1, v26, v27, v28, v29, v30);
  if (v25)
  {
    return;
  }

  v32 = v31;
  v650 = v24;
  v647 = v23;
  v651 = v21;
  v656 = v17;
  v652 = v14;
  v648 = v13;
  v654 = a3;
  v33 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_231;
  }

LABEL_3:
  v34 = type metadata accessor for Logger();
  v35 = sub_100006654(v34, qword_100945730);

  v36 = v664;

  v663 = v35;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v36, v39, v40, v41, v42, v43, v44, v45;
  v46 = os_log_type_enabled(v37, v38);
  v47 = v32 >> 62;
  v666 = v32;
  if (v46)
  {
    v23 = swift_slowAlloc();
    v660 = swift_slowAlloc();
    *&v667.clientIdentity[16] = v660;
    *v23 = 136446978;
    *(v23 + 1) = sub_10000668C(0x747265737075, 0xE600000000000000, &v667.clientIdentity[16]);
    *(v23 + 6) = 2048;
    if (!v47)
    {
      v55 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_234;
  }

  v32, v75, v76, v77, v78, v79, v80, v81;
  while (1)
  {
    v82 = v665;
    v83 = v47 ? _CocoaArrayWrapper.endIndex.getter() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v645 = v34;
    if (!v83)
    {
      break;
    }

    v662 = v47;
    *&v667.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v37 = &v667.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v83 & 0x8000000000000000) == 0)
    {
      v84 = 0;
      v85 = v32;
      v32 &= 0xC000000000000001;
      v664 = (v85 & 0xFFFFFFFFFFFFFF8);
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
          if (v84 >= *v664->clientIdentity)
          {
            goto LABEL_228;
          }

          v87 = *(v666 + 8 * v84 + 32);
        }

        v88 = v87;
        v89 = sub_1005E96B8([v87 remObjectID]);
        if (v33)
        {

          v666, v92, v93, v94, v95, v96, v97, v98;

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
          v90 = *&v667.clientIdentity[16];
          v32 = v666;
          v82 = v665;
          v47 = v662;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_234:
    v55 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v23 + 14) = v55;
    v32, v48, v49, v50, v51, v52, v53, v54;
    *(v23 + 11) = 2082;
    type metadata accessor for REMCDTemplate();
    v56 = [swift_getObjCClassFromMetadata() description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v32 = v666;
    v60 = sub_10000668C(v57, v59, &v667.clientIdentity[16]);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v23 + 3) = v60;
    *(v23 + 16) = 2082;
    *(v23 + 34) = sub_10000668C(v662, v664, &v667.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v23, 0x2Au);
    swift_arrayDestroy();
  }

  v90 = &_swiftEmptyArrayStorage;
LABEL_22:
  v91 = *(v82 + 96);
  if (v91 <= 1)
  {
    if (v91)
    {
      if (v91 != 1)
      {
LABEL_238:
        v624 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        v625 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2, v624, v625);
        __break(1u);
        return;
      }

      v90, v68, v69, v70, v71, v72, v73, v74;
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *&v667.clientIdentity[16] = v141;
        *v140 = 136315138;
        v142 = [type metadata accessor for REMCDTemplate() cdEntityName];
        v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v145 = v144;

        v146 = sub_10000668C(v143, v145, &v667.clientIdentity[16]);
        v145, v147, v148, v149, v150, v151, v152, v153;
        *(v140 + 4) = v146;
        _os_log_impl(&_mh_execute_header, v138, v139, "Skipping fetch during upsert {CDType: %s}", v140, 0xCu);
        sub_10000607C(v141);
      }

      v121 = v33;
      v23 = v656;
      v137 = v651;
      v120 = sub_100390D20(&_swiftEmptyArrayStorage);
      goto LABEL_38;
    }
  }

  else if ((v91 - 2) >= 3 && v91 != 4499 && v91 != 4599)
  {
    goto LABEL_238;
  }

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v664 = v90;
    v102 = v101;
    v103 = swift_slowAlloc();
    *&v667.clientIdentity[16] = v103;
    *v102 = 136315138;
    v104 = [type metadata accessor for REMCDTemplate() cdEntityName];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v47;
    v108 = v107;

    v109 = v105;
    v32 = v666;
    v110 = sub_10000668C(v109, v108, &v667.clientIdentity[16]);
    v111 = v108;
    v47 = v106;
    v111, v112, v113, v114, v115, v116, v117, v118;
    *(v102 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v99, v100, "Performing fetch during upsert {CDType: %s}", v102, 0xCu);
    sub_10000607C(v103);

    v90 = v664;
  }

  v23 = v656;
  v119 = v33;
  v120 = sub_10066A5A8(v90, v654);
  v121 = v119;
  v90, v122, v123, v124, v125, v126, v127, v128;
  if (v119)
  {
    v32, v129, v130, v131, v132, v133, v134, v135;
    return;
  }

  v137 = v651;
LABEL_38:
  v154 = v661;
  if (v47)
  {
    v155 = _CocoaArrayWrapper.endIndex.getter();
    if (!v155)
    {
LABEL_219:
      v666, v129, v130, v131, v132, v133, v134, v135;
      v120, v484, v485, v486, v487, v488, v489, v490;
      return;
    }
  }

  else
  {
    v155 = *((v666 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v155)
    {
      goto LABEL_219;
    }
  }

  v156 = 0;
  v157 = (v666 & 0xC000000000000001);
  v158 = v666 & 0xFFFFFFFFFFFFFF8;
  v159 = (v666 + 32);
  v642 = (v154 + 8);
  v662 = 0x80000001007EA260;
  v661 = 0x80000001007EA240;
  v660 = 0x80000001007EA010;
  v659 = 0x80000001007EA6E0;
  v658 = 0x80000001007E8D40;
  v664 = 0x80000001007E8C60;
  v635 = (v154 + 56);
  v634 = (v154 + 48);
  *&v136 = 136446978;
  v631 = v136;
  *&v136 = 136446210;
  v643 = v136;
  *&v136 = 136447490;
  v632 = v136;
  *&v136 = 136447234;
  v630 = v136;
  v646 = v120;
  v639 = v155;
  v638 = v666 & 0xC000000000000001;
  v637 = v666 & 0xFFFFFFFFFFFFFF8;
  v636 = (v666 + 32);
  while (1)
  {
    if (v157)
    {
      v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v161 = __OFADD__(v156, 1);
      v162 = v156 + 1;
      if (v161)
      {
        goto LABEL_218;
      }
    }

    else
    {
      if (v156 >= *(v158 + 16))
      {
        __break(1u);
        goto LABEL_236;
      }

      v160 = *&v159[8 * v156];
      v161 = __OFADD__(v156, 1);
      v162 = v156 + 1;
      if (v161)
      {
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }
    }

    v163 = v160;
    v644 = sub_1005E96B8([v163 remObjectID]);
    if (v121)
    {
      v666, v164, v165, v166, v167, v168, v169, v170;
      v120, v596, v597, v598, v599, v600, v601, v602;

      return;
    }

    v640 = v162;

    v649 = v163;
    v171 = [v163 accountID];
    v172 = [v171 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = UUID.uuidString.getter();
    v175 = v174;
    v176 = *v642;
    v177 = v137;
    v178 = v652;
    (*v642)(v177, v652);
    v179 = [objc_opt_self() localInternalAccountID];
    v180 = [v179 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v181 = UUID.uuidString.getter();
    v182 = v23;
    v183 = v181;
    v185 = v184;
    v653 = v176;
    v176(v182, v178);
    if (v173 == v183 && v175 == v185)
    {
      v185, v186, v187, v188, v189, v190, v191, v192;
      v175, v193, v194, v195, v196, v197, v198, v199;
      v200 = v650;
      v32 = v665;
      v201 = v644;
    }

    else
    {
      v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v185, v203, v204, v205, v206, v207, v208, v209;
      v175, v210, v211, v212, v213, v214, v215, v216;
      v200 = v650;
      v32 = v665;
      v201 = v644;
      if ((v202 & 1) == 0)
      {
        v23 = v656;
        v218 = v649;
        goto LABEL_58;
      }
    }

    v217 = *(v32 + 68);
    v23 = v656;
    v218 = v649;
    if (v217 >> 14 >= 2)
    {
      v219 = v217 >> 14 == 2 ? *(v32 + 64) | (*(v32 + 68) << 32) : 0x7FFFFFFFLL;
    }

    else
    {
      v219 = 2147483519;
    }

    sub_100009A40(2, v219);
LABEL_58:
    v220 = sub_100692848(v218, v200, &type metadata for REMTemplateStorageCDIngestor.ValueKey, sub_1005F4E24);
    v641 = 0;
    v33 = v220;
    v228 = sub_1005F6FC8();
    v229 = v646;
    if (!*v646->clientIdentity)
    {
      break;
    }

    v230 = sub_100393C74();
    if ((v221 & 1) == 0)
    {
      break;
    }

    v231 = *(*&v229->clientIdentity[40] + 8 * v230);
LABEL_147:
    v311 = *(v33 + 16);
    v653 = v311;
    if (v311)
    {
      v633 = v231;

      v319 = 0;
      while (v319 < *(v33 + 16))
      {
        if (((*(v32 + 64) | (*(v32 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v320 = *(v33 + v319 + 32);
          v321 = Logger.logObject.getter();
          v322 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v321, v322))
          {
            v323 = swift_slowAlloc();
            v324 = swift_slowAlloc();
            *&v667.clientIdentity[16] = v324;
            *v323 = v643;
            LOBYTE(v668) = v320;
            v325 = String.init<A>(describing:)();
            v327 = v326;
            v328 = sub_10000668C(v325, v326, &v667.clientIdentity[16]);
            v327, v329, v330, v331, v332, v333, v334, v335;
            *(v323 + 4) = v328;
            v23 = v656;
            _os_log_impl(&_mh_execute_header, v321, v322, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v323, 0xCu);
            sub_10000607C(v324);
          }

          v32 = v665;
          v311 = v653;
        }

        LODWORD(v157) = *(v32 + 64);
        if (*(v32 + 68) >> 14 == 2 && (*(v32 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_237;
          }

          goto LABEL_222;
        }

        if (v311 == ++v319)
        {
          v33, v312, v313, v314, v315, v316, v317, v318;
          v231 = v633;
          goto LABEL_160;
        }
      }

      goto LABEL_229;
    }

LABEL_160:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v337 = v644;
    v338 = v231;
    v339 = Logger.logObject.getter();
    v340 = static os_log_type_t.default.getter();

    v341 = os_log_type_enabled(v339, v340);
    v644 = v338;
    if (v341)
    {
      v628 = v340;
      v629 = v339;
      v342 = swift_slowAlloc();
      v343 = swift_slowAlloc();
      v627 = swift_slowAlloc();
      v668 = v627;
      *v342 = v632;
      *(v342 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v668);
      *(v342 + 12) = 2082;
      v344 = *(v32 + 40);
      *&v667.dataAccessRequestsWriter[2] = *(v32 + 24);
      *&v667.coreSuggestionsHandler[2] = v344;
      *&v667.coreSuggestionsHandler[16] = *(v32 + 54);
      sub_100009DAC(&v667.dataAccessRequestsWriter[2], &v667.clientIdentity[16]);
      v345 = sub_1000063E8();
      v347 = v346;
      sub_1005812D4(&v667.dataAccessRequestsWriter[2]);
      v348 = sub_10000668C(v345, v347, &v668);
      v347, v349, v350, v351, v352, v353, v354, v355;
      *(v342 + 14) = v348;
      *(v342 + 22) = 2114;
      *(v342 + 24) = v337;
      *v343 = v337;
      *(v342 + 32) = 2112;
      v633 = v337;
      v356 = v337;
      v357 = [v338 objectID];
      *(v342 + 34) = v357;
      v626 = v343;
      v343[1] = v357;
      *(v342 + 42) = 2082;
      v365 = *(v33 + 16);
      if (v365)
      {
        *&v667.clientIdentity[16] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v365, 0);
        v373 = *&v667.clientIdentity[16];
        v374 = 32;
        do
        {
          v375 = *(v33 + v374);
          v376 = 0xD00000000000001CLL;
          v377 = 0xD000000000000019;
          if (v375 != 10)
          {
            v377 = 0xD000000000000027;
          }

          v378 = v662;
          if (v375 == 10)
          {
            v378 = v661;
          }

          if (v375 != 9)
          {
            v376 = v377;
          }

          v379 = v660;
          if (v375 != 9)
          {
            v379 = v378;
          }

          v380 = 0xD000000000000015;
          if (v375 == 7)
          {
            v380 = 0x53676E6974726F73;
          }

          v381 = 0xEC000000656C7974;
          if (v375 != 7)
          {
            v381 = v659;
          }

          if (v375 == 6)
          {
            v380 = 0xD000000000000017;
            v381 = v658;
          }

          if (*(v33 + v374) <= 8u)
          {
            v376 = v380;
            v379 = v381;
          }

          v382 = 0x626D456567646162;
          if (v375 == 4)
          {
            v382 = 0x726F6C6F63;
          }

          v383 = 0xEB000000006D656CLL;
          if (v375 == 4)
          {
            v383 = 0xE500000000000000;
          }

          if (v375 == 3)
          {
            v382 = 1701667182;
            v383 = 0xE400000000000000;
          }

          v384 = 0x72756769666E6F63;
          if (v375 == 1)
          {
            v384 = 0xD000000000000017;
          }

          v385 = 0xED00006E6F697461;
          if (v375 == 1)
          {
            v385 = v664;
          }

          if (!*(v33 + v374))
          {
            v384 = 0x44497463656A626FLL;
            v385 = 0xE800000000000000;
          }

          if (*(v33 + v374) <= 2u)
          {
            v382 = v384;
            v383 = v385;
          }

          if (*(v33 + v374) <= 5u)
          {
            v386 = v382;
          }

          else
          {
            v386 = v376;
          }

          if (*(v33 + v374) <= 5u)
          {
            v387 = v383;
          }

          else
          {
            v387 = v379;
          }

          *&v667.clientIdentity[16] = v373;
          v389 = *v373->clientIdentity;
          v388 = *&v373->clientIdentity[8];
          if (v389 >= v388 >> 1)
          {
            sub_100026EF4((v388 > 1), v389 + 1, 1);
            v373 = *&v667.clientIdentity[16];
          }

          *v373->clientIdentity = v389 + 1;
          v390 = v373 + 16 * v389;
          *(v390 + 4) = v386;
          *(v390 + 5) = v387;
          ++v374;
          --v365;
        }

        while (v365);
        v33, v366, v367, v368, v369, v370, v371, v372;
        v391 = v665;
      }

      else
      {
        v33, v358, v359, v360, v361, v362, v363, v364;
        v373 = &_swiftEmptyArrayStorage;
        v391 = v32;
      }

      v392 = Array.description.getter();
      v394 = v393;
      v373, v393, v395, v396, v397, v398, v399, v400;
      v33, v401, v402, v403, v404, v405, v406, v407;
      v408 = sub_10000668C(v392, v394, &v668);
      v394, v409, v410, v411, v412, v413, v414, v415;
      *(v342 + 44) = v408;
      *(v342 + 52) = 1024;
      LODWORD(v408) = *(v391 + 104);

      *(v342 + 54) = v408;

      v416 = v629;
      _os_log_impl(&_mh_execute_header, v629, v628, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v342, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v23 = v656;
      v32 = v391;
      v338 = v644;
      v337 = v633;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v417 = v641;
    sub_1001D6074(v649, v338, v33, v32);
    if (v417)
    {

      v666, v603, v604, v605, v606, v607, v608, v609;
      v33, v610, v611, v612, v613, v614, v615, v616;
      v646, v617, v618, v619, v620, v621, v622, v623;
      return;
    }

    v33, v418, v419, v420, v421, v422, v423, v424;
    v425 = [v338 changedValues];
    v426 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v427 = v654;
    swift_beginAccess();
    v428 = v337;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v668 = v427[7];
    v427[7] = 0x8000000000000000;
    sub_1002C8688(v426, v428, isUniquelyReferenced_nonNull_native);

    v427[7] = v668;
    swift_endAccess();
    v437 = *(v32 + 104);
    if (v653 && (v437 & 1) != 0)
    {
      v426, v430, v431, v432, v433, v434, v435, v436;
      v438 = v644;
      [v644 updateChangeCount];

      v121 = 0;
    }

    else
    {

      v439 = v428;

      v440 = Logger.logObject.getter();
      v441 = static os_log_type_t.default.getter();
      v426, v442, v443, v444, v445, v446, v447, v448;

      if (os_log_type_enabled(v440, v441))
      {
        v449 = swift_slowAlloc();
        v450 = swift_slowAlloc();
        v653 = swift_slowAlloc();
        *&v667.clientIdentity[16] = v653;
        *v449 = v630;
        *(v449 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v667.clientIdentity[16]);
        *(v449 + 12) = 1024;
        *(v449 + 14) = v437;

        *(v449 + 18) = 1024;
        *(v449 + 20) = 0;
        *(v449 + 24) = 2114;
        *(v449 + 26) = v439;
        *v450 = v439;
        *(v449 + 34) = 2082;
        v641 = v439;
        sub_1005E2810(v426);
        v452 = v451;
        v121 = 0;
        v426, v453, v454, v455, v456, v457, v458, v459;
        v460 = Array.description.getter();
        v462 = v461;
        v452, v461, v463, v464, v465, v466, v467, v468;
        v469 = sub_10000668C(v460, v462, &v667.clientIdentity[16]);
        v462, v470, v471, v472, v473, v474, v475, v476;
        *(v449 + 36) = v469;
        _os_log_impl(&_mh_execute_header, v440, v441, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v449, 0x2Cu);
        sub_1000050A4(v450, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        v426, v477, v478, v479, v480, v481, v482, v483;

        v121 = 0;
      }

      v23 = v656;
    }

    v120 = v646;
    v156 = v640;
    v137 = v651;
    v157 = v638;
    v158 = v637;
    v159 = v636;
    if (v640 == v639)
    {
      goto LABEL_219;
    }
  }

  if (v228 == 12)
  {
LABEL_220:
    v33, v221, v222, v223, v224, v225, v226, v227;
    v646, v491, v492, v493, v494, v495, v496, v497;
    v666, v498, v499, v500, v501, v502, v503, v504;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v201];
    swift_willThrow();

    return;
  }

  v32 = 0;
  v23 = *(v33 + 16);
  while (2)
  {
    if (v23 == v32)
    {
      goto LABEL_220;
    }

    if (v32 >= *(v33 + 16))
    {
      goto LABEL_230;
    }

    v247 = *(v33 + v32 + 32);
    if (v247 > 5)
    {
      if (*(v33 + v32 + 32) > 8u)
      {
        if (v247 == 9)
        {
          v252 = 0xD00000000000001CLL;
          v254 = &v668;
        }

        else if (v247 == 10)
        {
          v252 = 0xD000000000000019;
          v254 = &v669;
        }

        else
        {
          v252 = 0xD000000000000027;
          v254 = &v670;
        }
      }

      else if (v247 == 6)
      {
        v252 = 0xD000000000000017;
        v254 = &v667.shareRecordIDToRootRecordID[2];
      }

      else
      {
        if (v247 == 7)
        {
          v252 = 0x53676E6974726F73;
          v253 = 0xEC000000656C7974;
          goto LABEL_97;
        }

        v252 = 0xD000000000000015;
        v254 = &v667.shareRecordIDToRootRecordIDLock[2];
      }

      v253 = *(v254 - 32);
    }

    else
    {
      v248 = 0x626D456567646162;
      if (v247 == 4)
      {
        v248 = 0x726F6C6F63;
      }

      v249 = 0xEB000000006D656CLL;
      if (v247 == 4)
      {
        v249 = 0xE500000000000000;
      }

      if (v247 == 3)
      {
        v248 = 1701667182;
        v249 = 0xE400000000000000;
      }

      v250 = 0x72756769666E6F63;
      if (v247 == 1)
      {
        v250 = 0xD000000000000017;
      }

      v251 = 0xED00006E6F697461;
      if (v247 == 1)
      {
        v251 = v664;
      }

      if (!*(v33 + v32 + 32))
      {
        v250 = 0x44497463656A626FLL;
        v251 = 0xE800000000000000;
      }

      if (*(v33 + v32 + 32) <= 2u)
      {
        v252 = v250;
      }

      else
      {
        v252 = v248;
      }

      if (*(v33 + v32 + 32) <= 2u)
      {
        v253 = v251;
      }

      else
      {
        v253 = v249;
      }
    }

LABEL_97:
    if (v228 > 5u)
    {
      v255 = 0xD00000000000001CLL;
      v260 = 0xD000000000000019;
      if (v228 != 10)
      {
        v260 = 0xD000000000000027;
      }

      v261 = v662;
      if (v228 == 10)
      {
        v261 = v661;
      }

      if (v228 != 9)
      {
        v255 = v260;
      }

      v256 = v660;
      if (v228 != 9)
      {
        v256 = v261;
      }

      v257 = 0xD000000000000015;
      if (v228 == 7)
      {
        v257 = 0x53676E6974726F73;
      }

      v258 = 0xEC000000656C7974;
      if (v228 != 7)
      {
        v258 = v659;
      }

      if (v228 == 6)
      {
        v257 = 0xD000000000000017;
        v258 = v658;
      }

      v259 = v228 <= 8u;
    }

    else
    {
      v255 = 0x626D456567646162;
      if (v228 == 4)
      {
        v255 = 0x726F6C6F63;
      }

      v256 = 0xEB000000006D656CLL;
      if (v228 == 4)
      {
        v256 = 0xE500000000000000;
      }

      if (v228 == 3)
      {
        v255 = 1701667182;
        v256 = 0xE400000000000000;
      }

      v257 = 0x72756769666E6F63;
      if (v228 == 1)
      {
        v257 = 0xD000000000000017;
      }

      v258 = 0xED00006E6F697461;
      if (v228 == 1)
      {
        v258 = v664;
      }

      if (!v228)
      {
        v257 = 0x44497463656A626FLL;
        v258 = 0xE800000000000000;
      }

      v259 = v228 <= 2u;
    }

    if (v259)
    {
      v262 = v257;
    }

    else
    {
      v262 = v255;
    }

    if (v259)
    {
      v263 = v258;
    }

    else
    {
      v263 = v256;
    }

    if (v252 != v262 || v253 != v263)
    {
      v232 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v253, v233, v234, v235, v236, v237, v238, v239;
      v263, v240, v241, v242, v243, v244, v245, v246;
      ++v32;
      if (v232)
      {
        goto LABEL_135;
      }

      continue;
    }

    break;
  }

  v253, v221, v262, v223, v224, v225, v226, v227;
  v263, v264, v265, v266, v267, v268, v269, v270;
LABEL_135:
  v271 = *(v665 + 88);
  type metadata accessor for REMCDTemplate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v273 = [ObjCClassFromMetadata entity];
  v274 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v273 insertIntoManagedObjectContext:v271];
  v275 = v647;
  v276 = v274;
  [v271 assignObject:v276 toPersistentStore:v275];

  v277 = v276;
  v278 = [v201 uuid];
  v279 = v648;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v280 = v652;
  (*v635)(v279, 0, 1, v652);
  v281 = v655;
  sub_10018E470(v279, v655);
  isa = 0;
  if ((*v634)(v281, 1, v280) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v653(v281, v280);
  }

  [v277 setIdentifier:{isa, v626}];

  sub_1000050A4(v279, &unk_100939D90, "8\n\r");
  v283 = v665;

  v284 = v201;
  v231 = v277;
  v157 = Logger.logObject.getter();
  v285 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v157, v285))
  {
    v286 = swift_slowAlloc();
    v287 = swift_slowAlloc();
    v653 = swift_slowAlloc();
    v668 = v653;
    *v286 = v631;
    *(v286 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v668);
    *(v286 + 12) = 2082;
    v288 = *(v283 + 40);
    *&v667.coreSuggestionsHandler[34] = *(v283 + 24);
    *&v667.publicCloudDatabaseController[10] = v288;
    *&v667.publicCloudDatabaseController[24] = *(v283 + 54);
    sub_100009DAC(&v667.coreSuggestionsHandler[34], &v667.clientIdentity[16]);
    v289 = sub_1000063E8();
    v291 = v290;
    sub_1005812D4(&v667.coreSuggestionsHandler[34]);
    v292 = sub_10000668C(v289, v291, &v668);
    v291, v293, v294, v295, v296, v297, v298, v299;
    *(v286 + 14) = v292;
    *(v286 + 22) = 2114;
    *(v286 + 24) = v284;
    *v287 = v284;
    *(v286 + 32) = 2112;
    v300 = v284;
    v301 = [v231 objectID];
    *(v286 + 34) = v301;
    v287[1] = v301;
    _os_log_impl(&_mh_execute_header, v157, v285, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v286, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  LOWORD(v157) = v657;
  v23 = v656;
  v302 = v654;
  swift_beginAccess();
  v303 = v302[6];
  if ((v303 & 0xC000000000000001) == 0)
  {
    v309 = v284;
    v308 = v654;
    goto LABEL_146;
  }

  if (v303 < 0)
  {
    v304 = v302[6];
  }

  else
  {
    v304 = v303 & 0xFFFFFFFFFFFFFF8;
  }

  v305 = v284;
  v306 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v306, 1))
  {
    v307 = sub_10021CDBC(v304, v306 + 1);
    v308 = v654;
    v654[6] = v307;
LABEL_146:
    v310 = swift_isUniquelyReferenced_nonNull_native();
    v668 = v308[6];
    sub_1002C8398(v231, v284, v310);
    v308[6] = v668;

    swift_endAccess();
    v32 = v665;
    goto LABEL_147;
  }

LABEL_236:
  __break(1u);
LABEL_237:
  swift_once();
LABEL_222:
  sub_100006654(v645, qword_100950D98);
  v505 = Logger.logObject.getter();
  v506 = static os_log_type_t.error.getter();
  v507 = os_log_type_enabled(v505, v506);
  v508 = v644;
  if (v507)
  {
    v509 = swift_slowAlloc();
    *&v667.clientIdentity[16] = swift_slowAlloc();
    *v509 = 136446466;
    v517 = sub_100729CB0(1, v510, v511, v512, v513, v514, v515, v516);
    v519 = v518;
    v520 = sub_10000668C(v517, v518, &v667.clientIdentity[16]);
    v519, v521, v522, v523, v524, v525, v526, v527;
    *(v509 + 4) = v520;
    *(v509 + 12) = 2082;
    v535 = sub_100729CB0(v157, v528, v529, v530, v531, v532, v533, v534);
    v537 = v536;
    v538 = sub_10000668C(v535, v536, &v667.clientIdentity[16]);
    v537, v539, v540, v541, v542, v543, v544, v545;
    *(v509 + 14) = v538;
    _os_log_impl(&_mh_execute_header, v505, v506, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v509, 0x16u);
    swift_arrayDestroy();
  }

  v546 = objc_opt_self();
  v547 = String._bridgeToObjectiveC()();
  sub_100729CB0(1, v548, v549, v550, v551, v552, v553, v554);
  v556 = v555;
  v557 = String._bridgeToObjectiveC()();
  v556, v558, v559, v560, v561, v562, v563, v564;
  sub_100729CB0(v157, v565, v566, v567, v568, v569, v570, v571);
  v573 = v572;
  v574 = String._bridgeToObjectiveC()();
  v573, v575, v576, v577, v578, v579, v580, v581;
  [v546 unauthorizedErrorWithMissingEntitlement:v547 requestedAccessLevel:v557 currentAccesslevel:v574];

  swift_willThrow();
  swift_bridgeObjectRelease_n();
  v666, v582, v583, v584, v585, v586, v587, v588;
  v646, v589, v590, v591, v592, v593, v594, v595;
}