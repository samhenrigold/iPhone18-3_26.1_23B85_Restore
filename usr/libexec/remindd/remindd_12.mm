void sub_100179F0C(char *a1, void (**a2)(const void *, Class, void))
{
  v258 = a2;
  v3 = type metadata accessor for REMAccountSnapshotSummary();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v258 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&qword_100939EF0, &qword_100797290);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v258 - v10;
  v12 = sub_10038E004(&_swiftEmptyArrayStorage);
  v260 = a1;
  v13 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController];
  v280[0] = 0xD000000000000013;
  v280[1] = 0x80000001007EE8B0;
  memset(&v280[2], 0, 30);
  v261 = v13;
  v14 = sub_1003FE534(v280, sub_1004339E0, 0);
  v265 = v11;
  v266 = v7;
  v259 = 0;
  v275 = &_swiftEmptyArrayStorage;
  if (v14)
  {
    v73 = *(v14 + 16);
    v276 = v14;
    v277 = 0;
    v278 = v73;
    v264 = (v4 + 32);
    v262 = (v4 + 8);
    v279[0] = 0;
    LOBYTE(v279[1]) = 0;
    v263 = v3;
LABEL_26:
    v74 = v265;
    sub_1001601F4(v265);
    v75 = v74;
    v76 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
    if ((*(*(v76 - 8) + 48))(v75, 1, v76) != 1)
    {
      v84 = *(v75 + *(v76 + 48));
      (*v264)(v266);
      v85 = REMAccountSnapshotSummary.accountID.getter();
      REMAccountSnapshotSummary.accountID.getter();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v275 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v275 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v274[0] = 0;
      v274[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      v274[1], v86, v87, v88, v89, v90, v91, v92;
      v273 = v84;
      v274[0] = 0x53746E756F636361;
      v274[1] = 0xEF2E7972616D6D75;
      v93._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      object = v93._object;
      String.append(_:)(v93);
      object, v95, v96, v97, v98, v99, v100, v101;
      v102._countAndFlagsBits = 0x746E756F6363612ELL;
      v102._object = 0xEA00000000004449;
      String.append(_:)(v102);
      v103 = v274[0];
      v104 = v274[1];
      v105 = [v85 stringRepresentation];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274[0] = v12;
      sub_1002C72CC(v106, v108, v103, v104, isUniquelyReferenced_nonNull_native);
      v104, v110, v111, v112, v113, v114, v115, v116;
      v12 = v274[0];
      v117 = REMAccountSnapshotSummary.nsPayload.getter();
      v118 = 0;
      v120 = v117 + 64;
      v119 = *(v117 + 64);
      v270 = v85;
      v271 = v117;
      v121 = 1 << *(v117 + 32);
      if (v121 < 64)
      {
        v122 = ~(-1 << v121);
      }

      else
      {
        v122 = -1;
      }

      v123 = v122 & v119;
      v124 = (v121 + 63) >> 6;
      v268 = v117 + 64;
      v267 = v124;
      v269 = v84;
      while (v123)
      {
        v134 = v118;
LABEL_40:
        v135 = __clz(__rbit64(v123)) | (v134 << 6);
        v136 = (*(v271 + 48) + 16 * v135);
        v138 = *v136;
        v137 = v136[1];
        v139 = *(*(v271 + 56) + 8 * v135);
        v274[0] = 0;
        v274[1] = 0xE000000000000000;

        v140 = v139;
        _StringGuts.grow(_:)(20);
        v274[1], v141, v142, v143, v144, v145, v146, v147;
        v273 = v84;
        v274[0] = 0x53746E756F636361;
        v274[1] = 0xEF2E7972616D6D75;
        v148._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v149 = v148._object;
        String.append(_:)(v148);
        v149, v150, v151, v152, v153, v154, v155, v156;
        v157._countAndFlagsBits = 46;
        v157._object = 0xE100000000000000;
        String.append(_:)(v157);
        v158._countAndFlagsBits = v138;
        v158._object = v137;
        String.append(_:)(v158);
        v137, v159, v160, v161, v162, v163, v164, v165;
        v166 = v274[0];
        v167 = v274[1];
        v272 = v140;
        v168 = [v140 stringValue];
        v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v170;

        v172 = swift_isUniquelyReferenced_nonNull_native();
        v274[0] = v12;
        v180 = sub_100005F4C(v166, v167);
        v181 = v12;
        v182 = *(v12 + 16);
        v183 = (v173 & 1) == 0;
        v184 = v182 + v183;
        if (__OFADD__(v182, v183))
        {
          goto LABEL_74;
        }

        v185 = v173;
        if (*(v181 + 24) >= v184)
        {
          if ((v172 & 1) == 0)
          {
            sub_100373664();
          }
        }

        else
        {
          sub_10036A8F0(v184, v172);
          v186 = sub_100005F4C(v166, v167);
          if ((v185 & 1) != (v173 & 1))
          {
            goto LABEL_81;
          }

          v180 = v186;
        }

        v123 &= v123 - 1;
        if (v185)
        {
          v167, v173, v174, v175, v176, v177, v178, v179;
          v12 = v274[0];
          v125 = (*(v274[0] + 56) + 16 * v180);
          v126 = v125[1];
          *v125 = v169;
          v125[1] = v171;

          v126, v127, v128, v129, v130, v131, v132, v133;
        }

        else
        {
          v12 = v274[0];
          *(v274[0] + 8 * (v180 >> 6) + 64) |= 1 << v180;
          v187 = (*(v12 + 48) + 16 * v180);
          *v187 = v166;
          v187[1] = v167;
          v188 = (*(v12 + 56) + 16 * v180);
          *v188 = v169;
          v188[1] = v171;

          v189 = *(v12 + 16);
          v62 = __OFADD__(v189, 1);
          v190 = v189 + 1;
          if (v62)
          {
            goto LABEL_75;
          }

          *(v12 + 16) = v190;
        }

        v118 = v134;
        v85 = v270;
        v84 = v269;
        v120 = v268;
        v124 = v267;
      }

      while (1)
      {
        v134 = v118 + 1;
        if (__OFADD__(v118, 1))
        {
          break;
        }

        if (v134 >= v124)
        {
          (*v262)(v266, v263);

          goto LABEL_26;
        }

        v123 = *(v120 + 8 * v134);
        ++v118;
        if (v123)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v276, v77, v78, v79, v80, v81, v82, v83;
  }

  v15 = [v261 containerStats];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = 0;
  v19 = v16 + 64;
  v18 = *(v16 + 64);
  v271 = v16;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  if ((v21 & v18) != 0)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v34 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_73;
    }

    if (v34 >= v23)
    {

      v276 = xmmword_100796D80;
      v278 = 0;
      memset(v279, 0, 14);
      v277 = 0;
      __chkstk_darwin(v69, v70);
      *(&v258 - 2) = &v275;
      *(&v258 - 1) = v260;
      v71 = v259;
      v72 = sub_1003FEA90(&v276, sub_100189E28, (&v258 - 4));
      if (v71)
      {
      }

      else if (v72)
      {
        v191 = 0;
        v192 = &v72->storeProvider[2];
        v193 = 1 << v72->clientIdentity[16];
        v194 = -1;
        if (v193 < 64)
        {
          v194 = ~(-1 << v193);
        }

        v195 = v194 & *&v72->storeProvider[2];
        v196 = (v193 + 63) >> 6;
        v271 = v72;
        while (v195)
        {
          v207 = v191;
LABEL_60:
          v208 = (v207 << 10) | (16 * __clz(__rbit64(v195)));
          v209 = (*&v72->clientIdentity[32] + v208);
          v210 = *v209;
          v211 = v209[1];
          v212 = *&v72->clientIdentity[40] + v208;
          v213 = *(v212 + 8);
          v272 = *v212;
          strcpy(v274, "contentStats.");
          HIWORD(v274[1]) = -4864;

          v214._countAndFlagsBits = v210;
          v214._object = v211;
          String.append(_:)(v214);
          v211, v215, v216, v217, v218, v219, v220, v221;
          v223 = v274[0];
          v222 = v274[1];
          v224 = v12;
          v225 = swift_isUniquelyReferenced_nonNull_native();
          v274[0] = v224;
          v226 = sub_100005F4C(v223, v222);
          v234 = *(v224 + 16);
          v235 = (v227 & 1) == 0;
          v62 = __OFADD__(v234, v235);
          v236 = v234 + v235;
          if (v62)
          {
            goto LABEL_79;
          }

          v237 = v227;
          if (*(v224 + 24) >= v236)
          {
            if ((v225 & 1) == 0)
            {
              v242 = v226;
              sub_100373664();
              v226 = v242;
            }
          }

          else
          {
            sub_10036A8F0(v236, v225);
            v226 = sub_100005F4C(v223, v222);
            if ((v237 & 1) != (v227 & 1))
            {
              goto LABEL_81;
            }
          }

          v195 &= v195 - 1;
          if (v237)
          {
            v197 = v226;
            v222, v227, v228, v229, v230, v231, v232, v233;
            v12 = v274[0];
            v198 = (*(v274[0] + 56) + 16 * v197);
            v199 = v198[1];
            *v198 = v272;
            v198[1] = v213;
            v199, v200, v201, v202, v203, v204, v205, v206;
          }

          else
          {
            v12 = v274[0];
            *(v274[0] + 8 * (v226 >> 6) + 64) |= 1 << v226;
            v238 = (*(v12 + 48) + 16 * v226);
            *v238 = v223;
            v238[1] = v222;
            v239 = (*(v12 + 56) + 16 * v226);
            *v239 = v272;
            v239[1] = v213;
            v240 = *(v12 + 16);
            v62 = __OFADD__(v240, 1);
            v241 = v240 + 1;
            if (v62)
            {
              goto LABEL_80;
            }

            *(v12 + 16) = v241;
          }

          v191 = v207;
          v72 = v271;
        }

        while (1)
        {
          v207 = v191 + 1;
          if (__OFADD__(v191, 1))
          {
            break;
          }

          if (v207 >= v196)
          {

            goto LABEL_70;
          }

          v195 = *&v192[8 * v207];
          ++v191;
          if (v195)
          {
            goto LABEL_60;
          }
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_70:
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v258[2](v258, isa, 0);
      v12, v244, v245, v246, v247, v248, v249, v250;

      v275, v251, v252, v253, v254, v255, v256, v257;
      return;
    }

    v22 = *(v19 + 8 * v34);
    ++v17;
  }

  while (!v22);
  while (1)
  {
    v35 = (v34 << 10) | (16 * __clz(__rbit64(v22)));
    v36 = (*(v271 + 48) + v35);
    v37 = *v36;
    v38 = v36[1];
    v39 = *(v271 + 56) + v35;
    v40 = *(v39 + 8);
    v272 = *v39;
    strcpy(&v276, "contentStats.");
    HIWORD(v276) = -4864;

    v41._countAndFlagsBits = v37;
    v41._object = v38;
    String.append(_:)(v41);
    v38, v42, v43, v44, v45, v46, v47, v48;
    v49 = v276;
    v50 = v12;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v276 = v50;
    v52 = sub_100005F4C(v49, *(&v49 + 1));
    v60 = *(v50 + 16);
    v61 = (v53 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      break;
    }

    v64 = v53;
    if (*(v50 + 24) >= v63)
    {
      if ((v51 & 1) == 0)
      {
        v68 = v52;
        sub_100373664();
        v52 = v68;
      }
    }

    else
    {
      sub_10036A8F0(v63, v51);
      v52 = sub_100005F4C(v49, *(&v49 + 1));
      if ((v64 & 1) != (v53 & 1))
      {
        goto LABEL_81;
      }
    }

    v22 &= v22 - 1;
    if (v64)
    {
      v24 = v52;
      *(&v49 + 1), v53, v54, v55, v56, v57, v58, v59;
      v12 = v276;
      v25 = (*(v276 + 56) + 16 * v24);
      v26 = v25[1];
      *v25 = v272;
      v25[1] = v40;
      v26, v27, v28, v29, v30, v31, v32, v33;
      v17 = v34;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = v276;
      *(v276 + 8 * (v52 >> 6) + 64) |= 1 << v52;
      *(*(v12 + 48) + 16 * v52) = v49;
      v65 = (*(v12 + 56) + 16 * v52);
      *v65 = v272;
      v65[1] = v40;
      v66 = *(v12 + 16);
      v62 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v62)
      {
        goto LABEL_78;
      }

      *(v12 + 16) = v67;
      v17 = v34;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    v34 = v17;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  _Block_release(v258);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10017AB74(void *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v113 = a4;
  v116 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v16, v17).n128_u64[0];
  v20 = &v108 - v19;
  v21 = [a1 identifier];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 56))(v15, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v7);
  }

  sub_100031B58(v15, v20, &unk_100939D90, "8\n\r");
  if ((*(v8 + 48))(v20, 1, v7))
  {
    sub_1000050A4(v20, &unk_100939D90, "8\n\r");
    sub_10038E004(&_swiftEmptyArrayStorage);
  }

  else
  {
    v111 = v4;
    (*(v8 + 16))(v11, v20, v7);
    sub_1000050A4(v20, &unk_100939D90, "8\n\r");
    v112 = UUID.uuidString.getter();
    v115 = v23;
    (*(v8 + 8))(v11, v7);
    v24 = [objc_opt_self() cdEntityName];
    if (!v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      v24 = String._bridgeToObjectiveC()();
      v26, v27, v28, v29, v30, v31, v32, v33;
    }

    v34 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v24];

    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v35 = swift_allocObject();
    v110 = xmmword_100791340;
    *(v35 + 16) = xmmword_100791340;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_100006600();
    *(v35 + 32) = 0x746E756F636361;
    *(v35 + 40) = 0xE700000000000000;
    *(v35 + 96) = sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    *(v35 + 104) = sub_10000CDE4(&qword_100939F38, &qword_1009399F0, off_1008D4120, &protocol conformance descriptor for NSObject);
    *(v35 + 72) = a1;
    v36 = a1;
    v37 = NSPredicate.init(format:_:)();
    [v34 setPredicate:v37];

    v38 = v116;
    v39 = String._bridgeToObjectiveC()();
    v40 = objc_opt_self();
    v41 = [v40 expressionForKeyPath:v39];

    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100791300;
    *(v42 + 56) = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
    *(v42 + 32) = v41;
    v114 = v41;
    v43 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v42, v45, v46, v47, v48, v49, v50, v51;
    v52 = [v40 expressionForFunction:v43 arguments:isa];

    v53 = [objc_allocWithZone(NSExpressionDescription) init];
    v109 = v52;
    [v53 setExpression:v52];
    v54 = v53;
    v55 = String._bridgeToObjectiveC()();
    [v54 setName:v55];

    [v54 setExpressionResultType:300];
    [v34 setReturnsObjectsAsFaults:0];
    v56 = swift_allocObject();
    *(v56 + 16) = v110;
    *(v56 + 32) = v38;
    *(v56 + 40) = a3;
    *(v56 + 88) = &type metadata for String;
    *(v56 + 56) = &type metadata for String;
    *(v56 + 64) = 0x6564692E7473696CLL;
    *(v56 + 72) = 0xEF7265696669746ELL;

    v57 = Array._bridgeToObjectiveC()().super.isa;
    v56, v58, v59, v60, v61, v62, v63, v64;
    [v34 setPropertiesToGroupBy:v57];

    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_100791320;
    *(v65 + 32) = v38;
    *(v65 + 40) = a3;
    v66 = v34;
    *(v65 + 88) = &type metadata for String;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = 0x6564692E7473696CLL;
    v67 = a3;
    *(v65 + 72) = 0xEF7265696669746ELL;
    *(v65 + 120) = sub_1000060C8(0, &qword_100939F48, NSExpressionDescription_ptr);
    *(v65 + 96) = v54;
    v68 = v54;

    v69 = Array._bridgeToObjectiveC()().super.isa;
    v65, v70, v71, v72, v73, v74, v75, v76;
    [v66 setPropertiesToFetch:v69];

    [v66 setResultType:2];
    v118 = _swiftEmptyDictionarySingleton;
    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v77 = v111;
    v78 = NSManagedObjectContext.fetch<A>(_:)();
    if (v77)
    {
      v115, v79, v80, v81, v82, v83, v84, v85;
    }

    else
    {
      v86 = v78;
      *&v110 = v68;
      v87 = v109;
      v113 = v67;
      if (v78 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v89 = v87;
        v111 = v66;

        if (!i)
        {
          break;
        }

        v97 = 0;
        while (1)
        {
          if ((v86 & 0xC000000000000001) != 0)
          {
            v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v97 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v98 = *(v86 + 8 * v97 + 32);
          }

          v99 = v98;
          v66 = (v97 + 1);
          if (__OFADD__(v97, 1))
          {
            break;
          }

          v117 = v98;
          sub_100171DA8(&v117, v116, v113, 0x6564692E7473696CLL, 0xEF7265696669746ELL, v112, v115, &v118);

          ++v97;
          v100 = v66 == i;
          v66 = v114;
          v89 = v87;
          if (v100)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

      v66 = v114;
LABEL_23:
      v86, v90, v91, v92, v93, v94, v95, v96;

      v113, v101, v102, v103, v104, v105, v106, v107;
      swift_bridgeObjectRelease_n();
    }
  }
}

void sub_10017B3DC(void *a1, uint64_t a2)
{
  v232 = a2;
  v4 = _s10PredicatesOMa(0);
  __chkstk_darwin(v4, v5);
  v7 = &v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  *&v245 = &v226 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v226 - v14;
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v16 - 8, v17);
  v234 = &v226 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v244 = &v226 - v21;
  __chkstk_darwin(v22, v23);
  v25 = &v226 - v24;
  *&v28 = __chkstk_darwin(v26, v27).n128_u64[0];
  v30 = &v226 - v29;
  v231 = a1;
  v31 = [a1 identifier];
  if (v31)
  {
    v32 = v31;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v9 + 56);
    v34 = v25;
    v35 = 0;
  }

  else
  {
    v33 = *(v9 + 56);
    v34 = v25;
    v35 = 1;
  }

  v243 = v33;
  v33(v34, v35, 1, v8);
  sub_100031B58(v25, v30, &unk_100939D90, "8\n\r");
  p_attr = (v9 + 48);
  v36 = *(v9 + 48);
  if (v36(v30, 1, v8))
  {
    sub_1000050A4(v30, &unk_100939D90, "8\n\r");
    sub_10038E004(&_swiftEmptyArrayStorage);
  }

  else
  {
    v230 = v2;
    v241 = v36;
    (*(v9 + 16))(v15, v30, v8);
    sub_1000050A4(v30, &unk_100939D90, "8\n\r");
    v38 = UUID.uuidString.getter();
    v40 = v39;
    (*(v9 + 8))(v15, v8);
    v41 = [objc_opt_self() sharedConfiguration];
    v42 = [v41 extraneousAlarmsDeleteCountThreshold];

    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    v228._countAndFlagsBits = v38;
    v228._object = v40;
    v247 = v42;
    *v7 = v42;
    swift_storeEnumTagMultiPayload();
    v44 = sub_100043AA8();
    sub_100188054(v7, _s10PredicatesOMa);
    v45 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v46 = [objc_allocWithZone(NSFetchRequest) init];
    v47 = v45;
    v48 = [swift_getObjCClassFromMetadata() entity];
    [v46 setEntity:v48];

    [v46 setAffectedStores:0];
    [v46 setPredicate:v44];

    v229 = v46;
    [v46 setFetchLimit:10000];
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = swift_getKeyPath();
    v50 = (inited + 32);
    v251 = &_swiftEmptyArrayStorage;
    sub_100010D04(0, 1, 0);
    v51 = v251;
    v233 = v9;
    v240 = v9 + 48;
    if ((inited & 0xC000000000000001) != 0)
    {
      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_47;
      }

      v52 = *v50;
    }

    v53 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (v54)
    {
      v55 = v53;
      v56 = v54;
      v250 = &type metadata for String;

      *&v249 = v55;
      *(&v249 + 1) = v56;
      v7 = *v51->clientIdentity;
      v43 = *&v51->clientIdentity[8];
      p_attr = (v7 + 1);
      if (v7 >= v43 >> 1)
      {
        goto LABEL_45;
      }

      while (1)
      {
        *v51->clientIdentity = p_attr;
        sub_100005EE0(&v249, &v51->clientIdentity[32 * v7 + 16]);
        swift_setDeallocating();
        swift_arrayDestroy();
        isa = Array._bridgeToObjectiveC()().super.isa;

        v58 = v229;
        [v229 setPropertiesToFetch:isa];

        v59 = v230;
        v60 = NSManagedObjectContext.fetch<A>(_:)();
        v47 = v59;
        if (v59)
        {
          v228._object, v61, v62, v63, v64, v65, v66, v67;

          return;
        }

        *&v249 = 0;
        *(&v249 + 1) = 0xE000000000000000;
        v68 = v60;
        _StringGuts.grow(_:)(65);
        v69._countAndFlagsBits = 0x5B746E756F636361;
        v69._object = 0xE800000000000000;
        String.append(_:)(v69);
        String.append(_:)(v228);
        v70._countAndFlagsBits = 0xD00000000000002ELL;
        v70._object = 0x80000001007EE990;
        String.append(_:)(v70);
        v251 = v247;
        v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        object = v71._object;
        String.append(_:)(v71);
        object, v73, v74, v75, v76, v77, v78, v79;
        v80._countAndFlagsBits = 0x746E756F632E29;
        v80._object = 0xE700000000000000;
        String.append(_:)(v80);
        v81 = v68;
        inited = *(&v249 + 1);
        v50 = v249;
        v9 = v81 >> 62;
        v242 = v81;
        if (v81 >> 62)
        {
LABEL_47:
          v82 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        p_attr = &stru_100923FF8.attr;
        *&v249 = v82;
        v7 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v83;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v249 = _swiftEmptyDictionarySingleton;
        sub_1002C72CC(v7, v84, v50, inited, isUniquelyReferenced_nonNull_native);
        inited, v86, v87, v88, v89, v90, v91, v92;
        v227 = v249;
        if (v9)
        {
          v100 = v242;
          v101 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v100 = v242;
          v101 = *((v242 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v102 = v234;
        v230 = v47;
        if (!v101)
        {
          break;
        }

        v103 = 0;
        v239 = v100 & 0xC000000000000001;
        v238 = v100 & 0xFFFFFFFFFFFFFF8;
        v236 = v233 + 56;
        v235 = (v233 + 32);
        v246 = &_swiftEmptyArrayStorage;
        v237 = v101;
        while (1)
        {
          if (v239)
          {
            v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v43 = *(v238 + 16);
            if (v103 >= v43)
            {
              goto LABEL_43;
            }

            v104 = *(v242 + 8 * v103 + 32);
          }

          p_attr = v104;
          v43 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            break;
          }

          v247 = (v103 + 1);
          v105 = [(SEL *)v104 identifier];
          if (v105)
          {
            v106 = v105;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v7 = 0;
          }

          else
          {
            v7 = 1;
          }

          v243(v102, v7, 1, v8);
          v107 = v244;
          sub_100031B58(v102, v244, &unk_100939D90, "8\n\r");
          if (v241(v107, 1, v8) == 1)
          {
            sub_1000050A4(v107, &unk_100939D90, "8\n\r");
            p_attr = (&stru_100923FF8 + 8);
          }

          else
          {
            v7 = *v235;
            (*v235)(v245, v107, v8);
            v108 = v246;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v108 = sub_100366328(0, *v108->clientIdentity + 1, 1, v108);
            }

            v246 = v108;
            v110 = *v108->clientIdentity;
            v109 = *&v108->clientIdentity[8];
            if (v110 >= v109 >> 1)
            {
              v246 = sub_100366328((v109 > 1), v110 + 1, 1, v246);
            }

            v111 = v246;
            *v246->clientIdentity = v110 + 1;
            (v7)(v111 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v110, v245, v8);
            p_attr = (&stru_100923FF8 + 8);
            v102 = v234;
          }

          ++v103;
          if (v247 == v237)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        sub_100010D04((v43 > 1), p_attr, 1);
        v51 = v251;
      }

      v246 = &_swiftEmptyArrayStorage;
LABEL_39:
      v242, v93, v94, v95, v96, v97, v98, v99;
      v112 = v246;
      v113 = sub_10029BD74(v246, 0);
      v114 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
      v115 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v117 = [ObjCClassFromMetadata entity];
      [v115 setEntity:v117];

      [v115 setAffectedStores:0];
      [v115 setPredicate:v113];
      [v115 setAffectedStores:0];
      v118 = v230;
      v119 = NSManagedObjectContext.count<A>(for:)();
      if (v118)
      {

        v228._object, v120, v121, v122, v123, v124, v125, v126;
        v112, v127, v128, v129, v130, v131, v132, v133;
      }

      else
      {
        v134 = v119;
        v243 = v114;
        v244 = ObjCClassFromMetadata;

        *&v249 = 0;
        *(&v249 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(65);
        v135._countAndFlagsBits = 0x5B746E756F636361;
        v135._object = 0xE800000000000000;
        String.append(_:)(v135);
        v136 = v228._object;
        String.append(_:)(v228);
        v137._countAndFlagsBits = 0xD000000000000037;
        v137._object = 0x80000001007EE9C0;
        String.append(_:)(v137);
        v138 = v249;
        *&v249 = v134;
        v139 = dispatch thunk of CustomStringConvertible.description.getter();
        v141 = v140;
        v142 = v227;
        v143 = swift_isUniquelyReferenced_nonNull_native();
        *&v249 = v142;
        sub_1002C72CC(v139, v141, v138, *(&v138 + 1), v143);
        *(&v138 + 1), v144, v145, v146, v147, v148, v149, v150;
        v247 = v249;
        sub_1000F5104(&qword_100939F20, &qword_1007972E0);
        v151 = swift_initStackObject();
        v245 = xmmword_100791340;
        *(v151 + 16) = xmmword_100791340;
        *(v151 + 32) = sub_10001035C(1);
        KeyPath = swift_getKeyPath();
        v153 = v231;
        v154 = v231;
        v155 = sub_10039229C(KeyPath, v153);

        *(v151 + 40) = v155;
        sub_1000F5104(&qword_100939F28, &qword_100797310);
        v156 = swift_initStackObject();
        *(v156 + 16) = v245;
        *(v156 + 32) = sub_10001035C(1);
        v157 = swift_getKeyPath();
        v158 = sub_1003922C0(v157, v153);

        *(v156 + 40) = v158;
        v159 = sub_10000C2B0();
        sub_1000060C8(0, &unk_100938870, off_1008D4128);
        v160 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
        v161 = [swift_getObjCClassFromMetadata() entity];
        [v160 setEntity:v161];

        [v160 setAffectedStores:0];
        [v160 setPredicate:v159];
        [v160 setAffectedStores:0];
        v162 = NSManagedObjectContext.count<A>(for:)();

        *&v249 = 0;
        *(&v249 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        *(&v249 + 1), v163, v164, v165, v166, v167, v168, v169;
        *&v249 = 0x5B746E756F636361;
        *(&v249 + 1) = 0xE800000000000000;
        v170._countAndFlagsBits = v228._countAndFlagsBits;
        v170._object = v136;
        String.append(_:)(v170);
        v171._object = 0x80000001007EEA00;
        v171._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v171);
        v172 = v249;
        *&v249 = v162;
        v173 = dispatch thunk of CustomStringConvertible.description.getter();
        v175 = v174;
        v176 = v247;
        v177 = swift_isUniquelyReferenced_nonNull_native();
        *&v249 = v176;
        sub_1002C72CC(v173, v175, v172, *(&v172 + 1), v177);
        *(&v172 + 1), v178, v179, v180, v181, v182, v183, v184;
        v185 = v249;
        v186 = sub_10000C2B0();
        v187 = [objc_allocWithZone(NSFetchRequest) init];
        v188 = [v244 entity];
        [v187 setEntity:v188];

        [v187 setAffectedStores:0];
        [v187 setPredicate:v186];
        [v187 setAffectedStores:0];
        v189 = NSManagedObjectContext.count<A>(for:)();

        *&v249 = 0;
        *(&v249 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        *(&v249 + 1), v190, v191, v192, v193, v194, v195, v196;
        *&v249 = 0x5B746E756F636361;
        *(&v249 + 1) = 0xE800000000000000;
        v197._countAndFlagsBits = v228._countAndFlagsBits;
        v197._object = v136;
        String.append(_:)(v197);
        v136, v198, v199, v200, v201, v202, v203, v204;
        v205._countAndFlagsBits = 0xD000000000000023;
        v205._object = 0x80000001007EEA20;
        String.append(_:)(v205);
        v206 = v249;
        *&v249 = v189;
        v207 = dispatch thunk of CustomStringConvertible.description.getter();
        v209 = v208;
        v210 = swift_isUniquelyReferenced_nonNull_native();
        *&v249 = v185;
        sub_1002C72CC(v207, v209, v206, *(&v206 + 1), v210);

        v246, v211, v212, v213, v214, v215, v216, v217;
        *(&v206 + 1), v218, v219, v220, v221, v222, v223, v224;
      }
    }

    else
    {
      *&v249 = 0;
      *(&v249 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v225._countAndFlagsBits = 0xD00000000000002CLL;
      v225._object = 0x80000001007EC120;
      String.append(_:)(v225);
      v248 = v52;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void sub_10017C630(_TtC7remindd19RDXPCStorePerformer **a1, id *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v297 = a3;
  v294 = a1;
  v4 = _s10PredicatesOMa(0);
  __chkstk_darwin(v4, v5);
  v289 = (&v284 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7, v8);
  v290 = (&v284 - v9);
  __chkstk_darwin(v10, v11);
  v292 = &v284 - v12;
  __chkstk_darwin(v13, v14);
  v16 = (&v284 - v15);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  *&v20 = __chkstk_darwin(v17, v19).n128_u64[0];
  v22 = &v284 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  v24 = [*a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v18 + 8))(v22, v17);
  v298 = 0;
  v299 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v28._countAndFlagsBits = 0x5B746E756F636361;
  v28._object = 0xE800000000000000;
  String.append(_:)(v28);
  v293 = v25;
  v29._countAndFlagsBits = v25;
  v29._object = v27;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD00000000000002FLL;
  v30._object = 0x80000001007EE8D0;
  String.append(_:)(v30);
  v291 = v298;
  v296 = v299;
  v31 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
  v32 = *(v31 + 64);
  *v16 = v23;
  v33 = _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v16 + v32) = 0;
  v295 = v4;
  swift_storeEnumTagMultiPayload();
  v34 = v23;
  v35 = sub_100043AA8();
  sub_100188054(v16, _s10PredicatesOMa);
  v36 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v37 = [objc_allocWithZone(NSFetchRequest) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [ObjCClassFromMetadata entity];
  [v37 setEntity:v39];

  [v37 setAffectedStores:0];
  [v37 setPredicate:v35];
  [v37 setAffectedStores:0];
  v40 = v300;
  v41 = NSManagedObjectContext.count<A>(for:)();
  v300 = v40;
  if (v40)
  {

    v27, v42, v43, v44, v45, v46, v47, v48;
    v296, v49, v50, v51, v52, v53, v54, v55;

    return;
  }

  v56 = v41;
  v57 = v34;
  v58 = v296;
  v284 = v57;
  v285 = ObjCClassFromMetadata;
  v286 = v33;
  v287 = v31;
  v288 = v36;
  v59 = v294;

  if (v56 <= 0)
  {

    v58, v65, v66, v67, v68, v69, v70, v71;
    v61 = v27;
  }

  else
  {
    v298 = v56;

    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v27;
    v63 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v298 = *v59;
    sub_1002C72CC(v60, v63, v291, v58, isUniquelyReferenced_nonNull_native);

    swift_bridgeObjectRelease_n();
    *v59 = v298;
  }

  v72 = v292;
  v298 = 0;
  v299 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v73._countAndFlagsBits = 0x5B746E756F636361;
  v73._object = 0xE800000000000000;
  String.append(_:)(v73);
  v74 = v293;
  v75._countAndFlagsBits = v293;
  v75._object = v61;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 0xD00000000000002CLL;
  v76._object = 0x80000001007EE900;
  String.append(_:)(v76);
  v77 = v299;
  v296 = v298;
  v78 = *(v287 + 64);
  v79 = v284;
  *v72 = v284;
  swift_storeEnumTagMultiPayload();
  *(v72 + v78) = 1;
  swift_storeEnumTagMultiPayload();
  v80 = v79;
  v81 = sub_100043AA8();
  sub_100188054(v72, _s10PredicatesOMa);
  v82 = [objc_allocWithZone(NSFetchRequest) init];
  v83 = [v285 entity];
  [v82 setEntity:v83];

  [v82 setAffectedStores:0];
  [v82 setPredicate:v81];
  [v82 setAffectedStores:0];
  v84 = v300;
  v85 = NSManagedObjectContext.count<A>(for:)();
  v300 = v84;
  v86 = v61;
  if (v84)
  {

    v61, v87, v88, v89, v90, v91, v92, v93;
    v77, v94, v95, v96, v97, v98, v99, v100;

    return;
  }

  v101 = v85;
  v102 = v296;
  v292 = v80;

  if (v101 <= 0)
  {

    v77, v109, v110, v111, v112, v113, v114, v115;
    v108 = v74;
  }

  else
  {
    v298 = v101;

    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v104;
    v106 = v294;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v298 = *v106;
    v108 = v293;
    sub_1002C72CC(v103, v105, v102, v77, v107);

    swift_bridgeObjectRelease_n();
    *v106 = v298;
    v86 = v61;
  }

  v298 = 0;
  v299 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v116._countAndFlagsBits = 0x5B746E756F636361;
  v116._object = 0xE800000000000000;
  String.append(_:)(v116);
  v117._countAndFlagsBits = v108;
  v117._object = v86;
  String.append(_:)(v117);
  v118._countAndFlagsBits = 0xD00000000000002ELL;
  v118._object = 0x80000001007EE930;
  String.append(_:)(v118);
  v119 = v108;
  v121 = v298;
  v120 = v299;
  v122 = *(v287 + 64);
  v123 = v290;
  v124 = v292;
  *v290 = v292;
  swift_storeEnumTagMultiPayload();
  *(v123 + v122) = 0;
  swift_storeEnumTagMultiPayload();
  v125 = v124;
  v126 = v86;
  v127 = sub_100043AA8();
  sub_100188054(v123, _s10PredicatesOMa);
  v128 = [objc_allocWithZone(NSFetchRequest) init];
  v129 = [v285 entity];
  [v128 setEntity:v129];

  [v128 setAffectedStores:0];
  [v128 setPredicate:v127];
  [v128 setAffectedStores:0];
  v130 = v300;
  v131 = NSManagedObjectContext.count<A>(for:)();
  v300 = v130;
  if (v130)
  {

    v126, v132, v133, v134, v135, v136, v137, v138;
    v120, v139, v140, v141, v142, v143, v144, v145;

    return;
  }

  v146 = v131;
  v296 = v125;
  v147 = v121;
  v148 = v126;

  if (v146 <= 0)
  {

    v120, v155, v156, v157, v158, v159, v160, v161;
    v154 = v119;
  }

  else
  {
    v298 = v146;

    v149 = dispatch thunk of CustomStringConvertible.description.getter();
    v151 = v150;
    v152 = v294;
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v298 = *v152;
    v154 = v293;
    sub_1002C72CC(v149, v151, v147, v120, v153);

    swift_bridgeObjectRelease_n();
    *v152 = v298;
  }

  v298 = 0;
  v299 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v162._countAndFlagsBits = 0x5B746E756F636361;
  v162._object = 0xE800000000000000;
  String.append(_:)(v162);
  v163._countAndFlagsBits = v154;
  v163._object = v148;
  String.append(_:)(v163);
  v164._countAndFlagsBits = 0xD00000000000002BLL;
  v164._object = 0x80000001007EE960;
  String.append(_:)(v164);
  v165 = v154;
  v167 = v298;
  v166 = v299;
  v168 = *(v287 + 64);
  v169 = v289;
  v170 = v296;
  *v289 = v296;
  swift_storeEnumTagMultiPayload();
  *(v169 + v168) = 1;
  swift_storeEnumTagMultiPayload();
  v171 = v170;
  v172 = sub_100043AA8();
  sub_100188054(v169, _s10PredicatesOMa);
  v173 = [objc_allocWithZone(NSFetchRequest) init];
  v174 = [v285 entity];
  [v173 setEntity:v174];

  [v173 setAffectedStores:0];
  [v173 setPredicate:v172];
  [v173 setAffectedStores:0];
  v175 = v297;
  v176 = v300;
  v177 = NSManagedObjectContext.count<A>(for:)();
  v300 = v176;
  if (v176)
  {

    v148, v178, v179, v180, v181, v182, v183, v184;
    v166, v185, v186, v187, v188, v189, v190, v191;

    return;
  }

  v192 = v177;
  v295 = v171;
  v296 = v148;
  v193 = v165;

  if (v192 <= 0)
  {

    v166, v199, v200, v201, v202, v203, v204, v205;
  }

  else
  {
    v298 = v192;

    v194 = dispatch thunk of CustomStringConvertible.description.getter();
    v196 = v195;
    v197 = v294;
    v198 = swift_isUniquelyReferenced_nonNull_native();
    v298 = *v197;
    sub_1002C72CC(v194, v196, v167, v166, v198);

    swift_bridgeObjectRelease_n();
    *v197 = v298;
  }

  v206 = v193;
  v207 = v295;
  v208 = v300;
  v209 = sub_1005E37E8(v207);
  v300 = v208;
  if (v208)
  {
    v296, v210, v211, v212, v213, v214, v215, v216;
    return;
  }

  v217 = v209;
  v218 = sub_100565FF4(v209, 0);
  v300 = 0;
  v219 = v218;

  if (v219)
  {
    v296, v220, v221, v222, v223, v224, v225, v226;
    v227 = v300;
    sub_10017AB74(v219, 0xD000000000000011, 0x8000000100797120, v175);
    v300 = v227;
    if (!v227)
    {
      v229 = v228;
      sub_1000F5104(&unk_100945230, &qword_1007A2590);
      Dictionary.merge(takingValuesIn:)(v229);
      v229, v230, v231, v232, v233, v234, v235, v236;
      v237 = v300;
      sub_10017AB74(v219, 0x6574656C706D6F63, 0xE900000000000064, v175);
      v300 = v237;
      if (!v237)
      {
        rawValue = v238._rawValue;
        Dictionary.merge(takingValuesIn:)(v238);
        rawValue, v240, v241, v242, v243, v244, v245, v246;
        v247 = v300;
        sub_10017B3DC(v219, v175);
        v300 = v247;
        if (!v247)
        {
          v249 = v248._rawValue;
          Dictionary.merge(takingValuesIn:)(v248);

          v249, v250, v251, v252, v253, v254, v255, v256;
          return;
        }
      }
    }
  }

  else
  {
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v257 = type metadata accessor for Logger();
    sub_100006654(v257, qword_100939C00);
    v258 = v296;

    v219 = Logger.logObject.getter();
    v259 = static os_log_type_t.error.getter();
    v258, v260, v261, v262, v263, v264, v265, v266;
    if (os_log_type_enabled(v219, v259))
    {
      v274 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      v298 = v275;
      *v274 = 136315138;
      v276 = sub_10000668C(v206, v258, &v298);
      v258, v277, v278, v279, v280, v281, v282, v283;
      *(v274 + 4) = v276;
      _os_log_impl(&_mh_execute_header, v219, v259, "Cannot get cdAccount from %s for extra container stats", v274, 0xCu);
      sub_10000607C(v275);
    }

    else
    {
      v258, v267, v268, v269, v270, v271, v272, v273;
    }
  }
}

void sub_10017D3DC(void (**a1)(void, void, void))
{
  if (qword_100935AE8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100939C00);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDXPCDebugPerformer: dumpUbKVS initiated", v4, 2u);
  }

  v5 = sub_10038E004(&_swiftEmptyArrayStorage);
  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  v6 = [*(static RDSynchronizedKeyValueStore.default + 16) dictionaryRepresentation];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = 0;
  v9 = v7 + 64;
  v65 = v7;
  v66 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  while (1)
  {
    if (!v12)
    {
      if (v13 <= v8 + 1)
      {
        v25 = v8 + 1;
      }

      else
      {
        v25 = v13;
      }

      v26 = v25 - 1;
      while (1)
      {
        v24 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v24 >= v13)
        {
          v12 = 0;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          goto LABEL_21;
        }

        v12 = *(v9 + 8 * v24);
        ++v8;
        if (v12)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v24 = v8;
LABEL_20:
    v27 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v28 = v27 | (v24 << 6);
    v29 = (*(v65 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    sub_100005EF0(*(v65 + 56) + 32 * v28, v67);
    *&v68 = v31;
    *(&v68 + 1) = v30;
    sub_100005EE0(v67, &v69);

    v26 = v24;
LABEL_21:
    v71 = v68;
    v72[0] = v69;
    v72[1] = v70;
    v32 = *(&v68 + 1);
    if (!*(&v68 + 1))
    {
      break;
    }

    v33 = v71;
    sub_100005EE0(v72, &v68);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v68 = v5;
    v38 = sub_100005F4C(v33, v32);
    v46 = *(v5 + 16);
    v47 = (v39 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_35;
    }

    v50 = v39;
    if (*(v5 + 24) < v49)
    {
      sub_10036A8F0(v49, isUniquelyReferenced_nonNull_native);
      v38 = sub_100005F4C(v33, v32);
      if ((v50 & 1) != (v39 & 1))
      {
        _Block_release(a1);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

LABEL_27:
      if (v50)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v55 = v38;
    sub_100373664();
    v38 = v55;
    if (v50)
    {
LABEL_9:
      v14 = v38;
      v32, v39, v40, v41, v42, v43, v44, v45;
      v5 = v68;
      v15 = (*(v68 + 56) + 16 * v14);
      v16 = v15[1];
      *v15 = v34;
      v15[1] = v36;
      v16, v17, v18, v19, v20, v21, v22, v23;
      goto LABEL_10;
    }

LABEL_28:
    v5 = v68;
    *(v68 + 8 * (v38 >> 6) + 64) |= 1 << v38;
    v51 = (*(v5 + 48) + 16 * v38);
    *v51 = v33;
    v51[1] = v32;
    v52 = (*(v5 + 56) + 16 * v38);
    *v52 = v34;
    v52[1] = v36;
    v53 = *(v5 + 16);
    v48 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v48)
    {
      goto LABEL_36;
    }

    *(v5 + 16) = v54;
LABEL_10:
    v8 = v26;
    v9 = v66;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (a1)[2](a1, isa, 0);
  v5, v57, v58, v59, v60, v61, v62, v63;
}

uint64_t sub_10017D808(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  sub_100010364(a3, v35, &qword_100939ED0, &qword_100791B10);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  a2, v11, v12, v13, v14, v15, v16, v17;
  if (os_log_type_enabled(v9, v10))
  {
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10000668C(a1, a2, &v34);
    *(v18 + 12) = 2080;
    sub_1000F5104(&qword_100939ED0, &qword_100791B10);
    v19 = Optional.descriptionOrNil.getter();
    v20 = a3;
    v21 = a4;
    v23 = v22;
    sub_1000050A4(v35, &qword_100939ED0, &qword_100791B10);
    v24 = sub_10000668C(v19, v23, &v34);
    v25 = v23;
    a4 = v21;
    a3 = v20;
    v25, v26, v27, v28, v29, v30, v31, v32;
    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: writeUbKVS initiated {key: %s, value: %s}", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000050A4(v35, &qword_100939ED0, &qword_100791B10);
  }

  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  sub_10054DBE0(a3);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_10017DA8C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  a2, v9, v10, v11, v12, v13, v14, v15;
  if (os_log_type_enabled(v7, v8))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10000668C(a1, a2, &v22);
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: removeFromUbKVS initiated {key: %s}", v16, 0xCu);
    sub_10000607C(v17);
  }

  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  v18 = *(static RDSynchronizedKeyValueStore.default + 16);
  v19 = String._bridgeToObjectiveC()();
  [v18 removeObjectForKey:v19];

  v20 = *(a3 + 16);

  return v20(a3, 0);
}

uint64_t sub_10017DC68(uint64_t a1, uint64_t a2)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100939C00);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDXPCDebugPerformer: nukeDatabase initiated", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v26 = 0;
  if ([v8 nukeDataWithError:&v26])
  {
    v9 = v26;
    sub_10031BE94();
    return (*(a2 + 16))(a2, 0);
  }

  else
  {
    v11 = v26;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = v12;
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    sub_1000060C8(0, &qword_100939E60, NSError_ptr);
    swift_dynamicCast();
    v13 = v25;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDXPCDebugPerformer: Failed to nuke database {error: %@}", v16, 0xCu);
      sub_1000050A4(v17, &unk_100938E70, &unk_100797230);
    }

    v19 = objc_opt_self();
    v20 = v13;
    v21 = _convertErrorToNSError(_:)();

    v22 = [v19 errorSanitizedForXPCFromError:v21];
    v23 = v22;
    v24 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v24);
  }
}

void sub_10017DF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _convertErrorToNSError(_:)();
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDXPCDebugPerformer: Failed testInitialSync {error: %@}", v10, 0xCu);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);
  }

  v13 = objc_opt_self();
  v14 = v7;
  v15 = _convertErrorToNSError(_:)();

  v16 = [v13 errorSanitizedForXPCFromError:v15];
  swift_beginAccess();
  v17 = *(a2 + 16);

  v18 = v16;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v20 = _convertErrorToNSError(_:)();
  (*(a3 + 16))(a3, 0, isa, v20);

  v17, v21, v22, v23, v24, v25, v26, v27;
}

uint64_t sub_10017E1B4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v19 = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: testInitialSync initiated", v11, 2u);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyDictionarySingleton;
  v13 = swift_allocObject();
  v13[2] = sub_100189B8C;
  v13[3] = v7;
  v13[4] = v12;
  v14 = swift_allocObject();
  v14[2] = sub_100189B8C;
  v14[3] = v7;
  v14[4] = v12;
  v20 = xmmword_100796D90;
  v22 = 0;
  v23[0] = 0;
  v21 = 0;
  *(v23 + 6) = 0;
  __chkstk_darwin(v14, v15);
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = a3;
  v18[5] = v12;
  v18[6] = sub_100189B94;
  v18[7] = v13;
  v18[8] = sub_100189BE0;
  v18[9] = v16;
  swift_retain_n();
  swift_retain_n();
  sub_100014A64(&v20, sub_100189BEC, v18);
}

void sub_10017E488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100939C00);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDXPCDebugPerformer: Failed testReinitializeCloudKit {error: %@}", v8, 0xCu);
      sub_1000050A4(v9, &unk_100938E70, &unk_100797230);
    }

    v11 = objc_opt_self();
    v12 = v5;
    v13 = _convertErrorToNSError(_:)();

    v14 = [v11 errorSanitizedForXPCFromError:v13];
    v15 = v14;
    v17 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v17);
  }

  else
  {
    v16 = *(a2 + 16);

    v16(a2, 0);
  }
}

void sub_10017E6A0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, const void *a4)
{
  v84 = a3;
  v90 = a1;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v78 - v8;
  v89 = type metadata accessor for UUID();
  v10 = *(v89 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v89, v12);
  v86 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v87 = &v78 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v85 = v9;
  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100939C00);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  a2, v20, v21, v22, v23, v24, v25, v26;
  v27 = os_log_type_enabled(v18, v19);
  v88 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136446210;
    v30 = v90;
    *(v28 + 4) = sub_10000668C(v90, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v18, v19, "RDXPCDebugPerformer: testReinitializeCloudKit initiated {accountIdentifier: %{public}s}", v28, 0xCu);
    sub_10000607C(v29);
  }

  else
  {

    v30 = v90;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = sub_10003FE60;
  *(v31 + 24) = v16;
  v32 = objc_opt_self();

  v33 = [v32 sharedInstance];
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:v34];

  if (!v35)
  {
    goto LABEL_12;
  }

  v36 = [v35 displayAccount];
  if (!v36)
  {
    goto LABEL_12;
  }

  v37 = v36;
  v38 = [v36 identifier];
  if (!v38)
  {

    goto LABEL_12;
  }

  v82 = v38;
  v83 = v33;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  v41 = v85;
  UUID.init(uuidString:)();
  v40, v42, v43, v44, v45, v46, v47, v48;
  v49 = v89;
  v50 = v88;
  if ((*(v88 + 48))(v41, 1, v89) == 1)
  {

    sub_1000050A4(v41, &unk_100939D90, "8\n\r");
    v30 = v90;
    v33 = v83;
LABEL_12:
    v51 = objc_opt_self();
    aBlock = 0;
    v92 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v52._object = 0x80000001007EE630;
    v52._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v52);
    v53._countAndFlagsBits = v30;
    v53._object = a2;
    String.append(_:)(v53);
    v54 = v92;
    v55 = String._bridgeToObjectiveC()();
    v54, v56, v57, v58, v59, v60, v61, v62;
    v63 = [v51 internalErrorWithDebugDescription:v55];

    _Block_copy(a4);
    v64 = v63;
    sub_10017E488(v63, a4);
    _Block_release(a4);

    return;
  }

  v79 = *(v50 + 32);
  v80 = v16;
  v78 = v50 + 32;
  v79(v87, v41, v49);
  v81 = [v83 accountStore];
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  (*(v50 + 16))(v86, v87, v49);
  v65 = (*(v50 + 80) + 56) & ~*(v50 + 80);
  v66 = (v11 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v69 = v84;
  v68 = v85;
  *(v67 + 2) = v37;
  *(v67 + 3) = v68;
  *(v67 + 4) = sub_1001899A8;
  *(v67 + 5) = v31;
  *(v67 + 6) = v69;
  v79(&v67[v65], v86, v49);
  v70 = v82;
  *&v67[v66] = v82;
  v71 = &v67[(v66 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v71 = v90;
  *(v71 + 1) = a2;
  v95 = sub_1001899B0;
  v96 = v67;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_100007688;
  v94 = &unk_1008E7BC8;
  v72 = _Block_copy(&aBlock);

  v73 = v37;

  v74 = v69;
  v75 = v70;

  v76 = v83;
  v77 = v81;
  [v83 _unsetMigrationFlagsWithACAccount:v73 inStore:v81 completionHandler:v72];
  _Block_release(v72);

  (*(v88 + 8))(v87, v89);
}

void sub_10017ED64(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char *a3, uint64_t a4)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  a2, v11, v12, v13, v14, v15, v16, v17;
  if (os_log_type_enabled(v9, v10))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v110 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_10000668C(a1, a2, &v110);
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: testFlagAccountForInactivatedCalDAVDataMigration initiated {accountIdentifier: %{public}s}", v18, 0xCu);
    sub_10000607C(v19);
  }

  v20 = objc_opt_self();
  v21 = [v20 sharedInstance];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:v22];

  if (v23)
  {
    v24 = [v23 displayAccount];
    if (v24)
    {
      v25 = v24;
      v104 = a3;
      v26 = [v24 identifier];
      if (v26)
      {
        v27 = v26;
        v102 = v25;
        v28 = objc_opt_self();
        v29 = [v28 daemonUserDefaults];
        v30 = [v29 acAccountIdentifiersToMigrateInactivatedCalDavData];

        if (v30)
        {
          v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v31 = &_swiftEmptyArrayStorage;
        }

        v46 = sub_1001A5660(v31);
        v31, v47, v48, v49, v50, v51, v52, v53;
        v109 = v46;
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100378434(&v110, v54, v55);
        *(&v110 + 1), v56, v57, v58, v59, v60, v61, v62;
        v101 = v28;
        v70 = [v28 daemonUserDefaults];
        v71 = v46;
        v72 = *(v46 + 16);
        if (v72)
        {
          v73 = sub_1003689CC(*(v109 + 16), 0);
          v71 = sub_1002791DC(&v110, &v73->clientIdentity[16], v72, v46);
          sub_10001B860(v110);
          if (v71 == v72)
          {
LABEL_19:
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v70 setAcAccountIdentifiersToMigrateInactivatedCalDavData:isa];

            v75 = v27;
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.default.getter();
            v103 = v75;

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              *v78 = 138543362;
              *(v78 + 4) = v103;
              *v79 = v27;
              v80 = v103;
              sub_1000050A4(v79, &unk_100938E70, &unk_100797230);
            }

            v81 = &v104[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon];
            Strong = swift_unknownObjectWeakLoadStrong();
            v83 = *(v81 + 1);
            v107 = Strong;
            v108 = v83;
            sub_1000F5104(&qword_100939EA8, &qword_100797258);
            Optional.tryUnwrap(_:file:line:)();
            swift_unknownObjectRelease();
            v84 = *(&v110 + 1);
            v85 = type metadata accessor for RDDaemonController();
            *&v110 = 0xD000000000000030;
            *(&v110 + 1) = 0x80000001007EE5F0;
            v112 = 0;
            v113[0] = 0;
            v111 = 0;
            *(v113 + 6) = 0;
            ObjectType = swift_getObjectType();
            v87 = swift_unknownObjectRetain();
            v100 = sub_1005564D4(v87, &v110, 0, v85, ObjectType, v84);
            v88 = [objc_allocWithZone(REMStore) initWithDaemonController:v100];
            v89 = *&v104[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController];
            v90 = v88;
            v91 = [v20 sharedInstance];
            v92 = [v101 daemonUserDefaults];
            v93 = type metadata accessor for RDAccountInitializer();
            v94 = objc_allocWithZone(v93);
            *&v94[OBJC_IVAR____TtC7remindd20RDAccountInitializer_store] = v90;
            *&v94[OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController] = v89;
            *&v94[OBJC_IVAR____TtC7remindd20RDAccountInitializer_appleAccountUtilities] = v91;
            *&v94[OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults] = v92;
            v106.receiver = v94;
            v106.super_class = v93;
            v95 = v89;
            v96 = objc_msgSendSuper2(&v106, "init");
            sub_100455ED0();

            v97 = Logger.logObject.getter();
            v98 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              *v99 = 0;
              _os_log_impl(&_mh_execute_header, v97, v98, "RDXPCDebugPerformer: testFlagAccountForInactivatedCalDAVDataMigration called initializeAllAccounts()", v99, 2u);
            }

            swift_unknownObjectRelease();
            (*(a4 + 16))(a4, 0);

            return;
          }

          __break(1u);
        }

        v71, v63, v64, v65, v66, v67, v68, v69;
        goto LABEL_19;
      }
    }
  }

  v32 = objc_opt_self();
  *&v110 = 0;
  *(&v110 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(116);
  v33._countAndFlagsBits = 0xD000000000000072;
  v33._object = 0x80000001007EE4E0;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a1;
  v34._object = a2;
  String.append(_:)(v34);
  v35 = *(&v110 + 1);
  v36 = String._bridgeToObjectiveC()();
  v35, v37, v38, v39, v40, v41, v42, v43;
  v44 = [v32 internalErrorWithDebugDescription:v36];

  v45 = v44;
  v105 = _convertErrorToNSError(_:)();
  (*(a4 + 16))(a4, v105);
}

void sub_10017F5D4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v8 = [v7 cloudContext];
  if (v8)
  {
    v9 = v8;
    if ([v7 supportsSyncingToCloudKit])
    {
      v10 = [objc_allocWithZone(CKRecordZoneID) initWithZoneName:@"Reminders" ownerName:CKCurrentUserDefaultName databaseScope:2];
      if (qword_100935AE8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100939C00);

      v31 = v10;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      a2, v14, v15, v16, v17, v18, v19, v20;
      if (os_log_type_enabled(v12, v13))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32 = v23;
        *v21 = 136315394;
        *(v21 + 4) = sub_10000668C(a1, a2, &v32);
        *(v21 + 12) = 2112;
        *(v21 + 14) = v31;
        *v22 = v31;
        v24 = v31;
        _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer.retryAccountZoneIDsNeedingToBeSaved: {accountID: %s, zoneID: %@}", v21, 0x16u);
        sub_1000050A4(v22, &unk_100938E70, &unk_100797230);

        sub_10000607C(v23);
      }

      v25 = String._bridgeToObjectiveC()();
      [v9 debug_retryAccountZoneIDsNeedingToBeSavedWithZoneID:v31 accountID:v25];

      (*(a4 + 16))(a4, 0);
    }

    else
    {
      v28 = objc_opt_self();
      v29 = String._bridgeToObjectiveC()();
      v30 = [v28 internalErrorWithDebugDescription:v29];

      v31 = _convertErrorToNSError(_:)();
      (*(a4 + 16))(a4);

      v9 = v30;
    }
  }

  else
  {
    v26 = objc_opt_self();
    v27 = String._bridgeToObjectiveC()();
    v9 = [v26 internalErrorWithDebugDescription:v27];

    v31 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, v31);
  }
}

void sub_10017F964(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  _Block_copy(a2);
  if ([v5 supportsSyncingToCloudKit] && (v6 = objc_msgSend(v5, "cloudContext")) != 0)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10003FE60;
    *(v8 + 24) = v4;
    aBlock[4] = sub_10018997C;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008E7B00;
    v9 = _Block_copy(aBlock);

    [v7 cancelEverythingWithCompletionHandler:v9];
    _Block_release(v9);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    [v10 internalErrorWithDebugDescription:v11];

    swift_willThrow();
    v12 = _convertErrorToNSError(_:)();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100939C00);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: Failed cancelCloudKitSync {error: %@}", v17, 0xCu);
      sub_1000050A4(v18, &unk_100938E70, &unk_100797230);
    }

    v20 = objc_opt_self();
    v21 = v14;
    v22 = _convertErrorToNSError(_:)();

    v23 = [v20 errorSanitizedForXPCFromError:v22];
    v24 = v23;
    v25 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v25);
  }
}

void sub_10017FD20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  if (![v3 supportsSyncingToCloudKit] || (v4 = objc_msgSend(v3, "cloudContext")) == 0)
  {
    isa = String._bridgeToObjectiveC()();
    (*(a2 + 16))(a2);
    goto LABEL_13;
  }

  v5 = v4;
  if (([v4 isCloudKitAccountAvailableRequiringActive:0] & 1) == 0 || (objc_msgSend(v5, "isCloudKitAccountAvailableRequiringActive:", 1) & 1) == 0)
  {
    isa = String._bridgeToObjectiveC()();
    (*(a2 + 16))(a2);

    goto LABEL_13;
  }

  v6 = [v5 status];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = v8;
  v18 = [v5 readinessLoggingDescription];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);
  v17, v23, v24, v25, v26, v27, v28, v29;
  v21, v30, v31, v32, v33, v34, v35, v36;
  v37 = v17;
  v38 = [v5 lastSyncMetrics];
  if (!v38)
  {
    v42 = String._bridgeToObjectiveC()();
    v41 = 0;
    goto LABEL_11;
  }

  v39 = v38;
  v40 = [v38 dictionaryRepresentation];

  v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = String._bridgeToObjectiveC()();
  if (!v41)
  {
LABEL_11:
    v43.super.isa = 0;
    goto LABEL_12;
  }

  v43.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_12:
  isa = v43.super.isa;
  (*(a2 + 16))(a2, v42);

  v41, v44, v45, v46, v47, v48, v49, v50;
  v37, v51, v52, v53, v54, v55, v56, v57;

LABEL_13:
}

void sub_100180034(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100939C00);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDXPCDebugPerformer: persistenceStoreID for {accountID: %@}", v15, 0xCu);
    sub_1000050A4(v16, &unk_100938E70, &unk_100797230);
  }

  v18 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v19 = [v12 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v21 = v20;
  (*(v7 + 8))(v10, v6);
  v22 = String._bridgeToObjectiveC()();
  v21, v23, v24, v25, v26, v27, v28, v29;
  v30 = [v18 storeForAccountIdentifier:v22];

  if (v30 && (v31 = [v30 identifier]) != 0)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = String._bridgeToObjectiveC()();
    (*(a3 + 16))(a3, v35);
    v34, v36, v37, v38, v39, v40, v41, v42;

    v30 = v35;
  }

  else
  {
    (*(a3 + 16))(a3, 0);
  }
}

uint64_t sub_100180324(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100939C00);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39[0] = v38;
    *v13 = 136446466;
    v14 = Bool.yesno.getter();
    v16 = v15;
    v17 = a5;
    v18 = a2;
    v19 = a3;
    v20 = sub_10000668C(v14, v15, v39);
    v16, v21, v22, v23, v24, v25, v26, v27;
    *(v13 + 4) = v20;
    a3 = v19;
    a2 = v18;
    a5 = v17;
    *(v13 + 12) = 2114;
    *(v13 + 14) = v10;
    v28 = v37;
    *v37 = v10;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDXPCDebugPerformer: lowLevelMarkForDeletion {shouldSetDirtyFlags: %{public}s, objectID: %{public}@}", v13, 0x16u);
    sub_1000050A4(v28, &unk_100938E70, &unk_100797230);

    sub_10000607C(v38);
  }

  v39[0] = 0xD000000000000023;
  v39[1] = 0x80000001007EE370;
  v39[3] = 0;
  v40[0] = 0;
  v39[2] = 0;
  *(v40 + 6) = 0;
  __chkstk_darwin(v30, v31);
  v33[2] = v10;
  v34 = 0;
  v35 = a3 & 1;
  v36 = a2 & 1;
  sub_100014A64(v39, sub_10018AD64, v33);
  return (*(a5 + 16))(a5, 0);
}

uint64_t sub_1001805F0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = a3;
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v12 = 136446466;
    v15 = Bool.yesno.getter();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, v34);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v12 + 4) = v18;
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v9;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDXPCDebugPerformer: lowLevelUnmarkForDeletion {shouldSetDirtyFlags: %{public}s, objectID: %{public}@}", v12, 0x16u);
    sub_1000050A4(v13, &unk_100938E70, &unk_100797230);

    sub_10000607C(v14);
  }

  v34[0] = 0xD000000000000023;
  v34[1] = 0x80000001007EE370;
  v34[3] = 0;
  v35[0] = 0;
  v34[2] = 0;
  *(v35 + 6) = 0;
  __chkstk_darwin(v27, v28);
  v30[2] = v9;
  v31 = 1;
  v32 = a2 & 1;
  sub_100014A64(v34, sub_1001896E8, v30);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_10018089C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = a3;
    v14 = swift_slowAlloc();
    v33[0] = v14;
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2082;
    v15 = v9;
    v16 = Bool.yesno.getter();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, v33);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDXPCDebugPerformer: markAndDeleteExtraneousAlarmsFromReminderID {reminderID: %{public}@, shouldSetDirtyFlags: %{public}s}", v12, 0x16u);
    sub_1000050A4(v13, &unk_100938E70, &unk_100797230);

    sub_10000607C(v14);
  }

  v33[0] = 0xD00000000000002BLL;
  v33[1] = 0x80000001007EE290;
  v33[3] = 0;
  v34[0] = 0;
  v33[2] = 0;
  *(v34 + 6) = 0;
  __chkstk_darwin(v27, v28);
  v30[2] = v9;
  v31 = a2 & 1;
  sub_100014A64(v33, sub_1001896C8, v30);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_100180B40(void *a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = a3;
    v16 = swift_slowAlloc();
    v35[0] = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    v18 = Bool.yesno.getter();
    v20 = v19;
    v21 = sub_10000668C(v18, v19, v35);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: setDueDateResolutionTokenNonceForAlarmID {alarmID: %{public}@, shouldSetDirtyFlags: %{public}s}", v14, 0x16u);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

    sub_10000607C(v16);
  }

  v35[0] = 0xD000000000000028;
  v35[1] = 0x80000001007EE260;
  v35[3] = 0;
  v36[0] = 0;
  v35[2] = 0;
  *(v36 + 6) = 0;
  __chkstk_darwin(v29, v30);
  v32[2] = v11;
  *&v32[3] = a5;
  v33 = a2 & 1;
  sub_100014A64(v35, sub_1001896A4, v32);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_100180DF4(void *a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = a3;
    v16 = swift_slowAlloc();
    v35[0] = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    v18 = Bool.yesno.getter();
    v20 = v19;
    v21 = sub_10000668C(v18, v19, v35);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: setDueDateResolutionTokenNonceForReminderID {reminderID: %{public}@, shouldSetDirtyFlags: %{public}s}", v14, 0x16u);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

    sub_10000607C(v16);
  }

  v35[0] = 0xD00000000000002BLL;
  v35[1] = 0x80000001007EE1D0;
  v35[3] = 0;
  v36[0] = 0;
  v35[2] = 0;
  *(v36 + 6) = 0;
  __chkstk_darwin(v29, v30);
  v32[2] = v11;
  *&v32[3] = a5;
  v33 = a2 & 1;
  sub_100014A64(v35, sub_100189680, v32);
  return (*(a4 + 16))(a4, 0);
}

double sub_1001810A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = [objc_allocWithZone(CNContactStore) init];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100796DA0;
  *(v4 + 32) = CNContactIdentifierKey;
  v5 = objc_opt_self();
  v6 = CNContactIdentifierKey;
  *(v4 + 40) = [v5 descriptorForRequiredKeysForStyle:0];
  *(v4 + 48) = CNContactEmailAddressesKey;
  *(v4 + 56) = CNContactPhoneNumbersKey;
  *(v4 + 64) = CNContactTypeKey;
  *(v4 + 72) = CNContainerIdentifierKey;
  *(v4 + 80) = CNContainerNameKey;
  v7 = CNContactLinkIdentifierKey;
  *(v4 + 88) = CNContainerTypeKey;
  *(v4 + 96) = v7;
  v57 = &_swiftEmptyArrayStorage;
  v8 = objc_allocWithZone(CNContactFetchRequest);
  v9 = CNContactEmailAddressesKey;
  v10 = CNContactPhoneNumbersKey;
  v11 = CNContactTypeKey;
  v12 = CNContainerIdentifierKey;
  v13 = CNContainerNameKey;
  v14 = CNContainerTypeKey;
  v15 = v7;
  sub_1000F5104(&qword_100939E78, &qword_100797240);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v8 initWithKeysToFetch:isa];

  if (a2)
  {
    v25 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 predicateForContactsMatchingName:v26];

    [v24 setPredicate:v27];
  }

  v28 = [objc_allocWithZone(CNContactFormatter) init];
  [v28 setStyle:0];
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = &v57;
  v30 = swift_allocObject();
  v30[2] = sub_100189650;
  v30[3] = v29;
  aBlock[4] = sub_100189658;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001680CC;
  aBlock[3] = &unk_1008E76F0;
  v31 = _Block_copy(aBlock);
  v32 = v28;

  aBlock[0] = 0;
  v33 = [v55 enumerateContactsWithFetchRequest:v24 error:aBlock usingBlock:v31];
  _Block_release(v31);
  v34 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v33 & 1) == 0)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v36 = v57;

  v37 = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, v37);

  v36, v38, v39, v40, v41, v42, v43, v44;
  v45 = v57;

  v45, v46, v47, v48, v49, v50, v51, v52;
  return result;
}

void sub_1001814D8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v7 = objc_allocWithZone(REMStoreContainerToken);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithIdentifier:isa];

  (*(v3 + 8))(v6, v2);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: Created isolated store {token: %@}", v14, 0xCu);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);
  }

  (*(a1 + 16))(a1, v11, 0);
}

uint64_t sub_100181710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1001894B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7510;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

uint64_t sub_100181A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v24 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v14 = *(v27 - 8);
  __chkstk_darwin(v27, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v20 = v25;
  v19[4] = v24;
  v19[5] = a4;
  aBlock[4] = v20;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v28 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v27);
}

void sub_100181D10(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *aBlock)
{
  v4 = aBlock;
  _Block_copy(aBlock);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100939C00);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  a2, v10, v11, v12, v13, v14, v15, v16;
  if (os_log_type_enabled(v8, v9))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v100 = v18;
    *v17 = 136315138;
    v101 = a1;
    v102 = a2;

    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = v4;
    v23 = a1;
    v24 = sub_10000668C(v19, v20, &v100);
    v21, v25, v26, v27, v28, v29, v30, v31;
    *(v17 + 4) = v24;
    a1 = v23;
    v4 = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDXPCDebugPerformer: downloadContainer with accountID: %s", v17, 0xCu);
    sub_10000607C(v18);
  }

  v32 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v33 = [v32 cloudContext];
  if (v33)
  {
    v34 = v33;
    v35 = a2;
    if (a2)
    {
LABEL_7:

      v36 = String._bridgeToObjectiveC()();
      v37 = [v32 newBackgroundContextWithAuthor:v36];

      __chkstk_darwin(v38, v39);
      NSManagedObjectContext.rem_performAndWait<A>(_:)();
      if (v101)
      {
        _Block_copy(v4);
        sub_10044FB10(a1, v35, v34, v4);
        _Block_release(v4);

        v35, v52, v53, v54, v55, v56, v57, v58;
        v47 = v34;
      }

      else
      {

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();
        v35, v68, v69, v70, v71, v72, v73, v74;
        if (os_log_type_enabled(v66, v67))
        {
          v75 = swift_slowAlloc();
          v76 = a1;
          v77 = swift_slowAlloc();
          v101 = v77;
          *v75 = 136315138;
          *(v75 + 4) = sub_10000668C(v76, v35, &v101);
          _os_log_impl(&_mh_execute_header, v66, v67, "RDXPCDebugPerformer: downloadContainer accountIdentifier { %s } is not from CloudKit account", v75, 0xCu);
          sub_10000607C(v77);
          a1 = v76;
        }

        v78 = objc_opt_self();
        v101 = 0;
        v102 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);
        v102, v79, v80, v81, v82, v83, v84, v85;
        v101 = a1;
        v102 = v35;
        v86._countAndFlagsBits = 0xD00000000000001FLL;
        v86._object = 0x80000001007EE110;
        String.append(_:)(v86);
        v87 = v102;
        v88 = String._bridgeToObjectiveC()();
        v87, v89, v90, v91, v92, v93, v94, v95;
        v96 = [v78 internalErrorWithDebugDescription:v88];

        v97 = v96;
        v98 = _convertErrorToNSError(_:)();
        (*(v4 + 2))(v4, 0, v98);

        v47 = v98;
      }

      goto LABEL_22;
    }

    v48 = [objc_opt_self() sharedInstance];
    v49 = [v48 unsafeUntilSystemReady_primaryICloudACAccount];

    if (v49)
    {
      v50 = [v49 identifier];

      if (v50)
      {
        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v51;

        goto LABEL_7;
      }
    }

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "RDXPCDebugPerformer: downloadContainer accountIdentifier is nil -- can't download cloudKit container", v61, 2u);
    }

    v62 = objc_opt_self();
    v63 = String._bridgeToObjectiveC()();
    v64 = [v62 internalErrorWithDebugDescription:v63];

    v65 = v64;
    v47 = _convertErrorToNSError(_:)();
    (*(v4 + 2))(v4, 0, v47);
  }

  else
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "RDXPCDebugPerformer: CloudContext is nil -- can't sync to cloudKit", v42, 2u);
    }

    v43 = objc_opt_self();
    v44 = String._bridgeToObjectiveC()();
    v45 = [v43 internalErrorWithDebugDescription:v44];

    v46 = v45;
    v47 = _convertErrorToNSError(_:)();
    (*(v4 + 2))(v4, 0, v47);
  }

LABEL_22:

  _Block_release(v4);
}

void sub_100182624(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  v9[2] = a5;
  if (a1 == 0x656D686361747441 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v97 = v9;
    sub_1000060C8(0, &unk_100939E30, off_1008D4160);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    _Block_copy(a5);
    v11 = [ObjCClassFromMetadata cdEntityName];
    if (!v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      v11 = String._bridgeToObjectiveC()();
      v13, v14, v15, v16, v17, v18, v19, v20;
    }

    v21 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v11];

    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100792CE0;
    strcpy((v22 + 32), "ckIdentifier");
    *(v22 + 45) = 0;
    *(v22 + 46) = -5120;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = 0xD000000000000011;
    *(v22 + 72) = 0x8000000100797120;
    *(v22 + 88) = &type metadata for String;
    *(v22 + 96) = 0x774F656E6F5A6B63;
    *(v22 + 104) = 0xEF656D614E72656ELL;
    *(v22 + 152) = &type metadata for String;
    *(v22 + 120) = &type metadata for String;
    *(v22 + 128) = 0xD000000000000012;
    *(v22 + 136) = 0x80000001007EDEE0;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v22, v24, v25, v26, v27, v28, v29, v30;
    [v21 setPropertiesToFetch:isa];

    v31 = Array._bridgeToObjectiveC()().super.isa;
    [v21 setRelationshipKeyPathsForPrefetching:v31];

    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100791340;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 32) = 0x696669746E656469;
    *(v32 + 40) = 0xEA00000000007265;
    v33 = UUID.uuidString.getter();
    *(v32 + 88) = &type metadata for String;
    *(v32 + 64) = v33;
    *(v32 + 72) = v34;
    v35 = String._bridgeToObjectiveC()();
    v36 = Array._bridgeToObjectiveC()().super.isa;
    v32, v37, v38, v39, v40, v41, v42, v43;
    v44 = [objc_opt_self() predicateWithFormat:v35 argumentArray:v36];

    [v21 setPredicate:v44];
    v45 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
    v104[0] = 0xD00000000000001BLL;
    v104[1] = 0x80000001007EDF00;
    v104[3] = 0;
    v105[0] = 0;
    v104[2] = 0;
    *(v105 + 6) = 0;
    __chkstk_darwin(v46, v47);
    v96[2] = v21;
    sub_1003FEFEC(v104, sub_1001893F0, v96);
    v49 = v48;
    v51 = v50;
    v52 = [v45 cloudContext];
    if (v52)
    {
      v60 = v52;
      v61 = String._bridgeToObjectiveC()();
      v49, v62, v63, v64, v65, v66, v67, v68;
      v69 = [v60 containerForAccountID:v61];

      v70 = v97;
      if (v69)
      {
        v71 = [v69 databaseWithDatabaseScope:{objc_msgSend(v51, "rd_ckDatabaseScope")}];
        v72 = [v51 recordID];
        v73 = swift_allocObject();
        *(v73 + 16) = sub_10003FE60;
        *(v73 + 24) = v70;
        v102 = sub_10018940C;
        v103 = v73;
        aBlock = _NSConcreteStackBlock;
        v99 = 1107296256;
        v100 = sub_10016AC08;
        v101 = &unk_1008E73A8;
        v74 = _Block_copy(&aBlock);

        [v71 deleteRecordWithID:v72 completionHandler:v74];
        _Block_release(v74);

        return;
      }
    }

    else
    {
      v49, v53, v54, v55, v56, v57, v58, v59;
    }

    v93 = objc_opt_self();
    v94 = String._bridgeToObjectiveC()();
    [v93 internalErrorWithDebugDescription:v94];

    swift_willThrow();
    swift_errorRetain();
    v95 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v95);
  }

  else
  {
    v75 = objc_opt_self();
    _Block_copy(a5);
    _StringGuts.grow(_:)(22);
    0xE000000000000000, v76, v77, v78, v79, v80, v81, v82;
    aBlock = 0xD000000000000014;
    v99 = 0x80000001007EDEC0;
    v83._countAndFlagsBits = a1;
    v83._object = a2;
    String.append(_:)(v83);
    v84 = String._bridgeToObjectiveC()();
    0x80000001007EDEC0, v85, v86, v87, v88, v89, v90, v91;
    v92 = [v75 internalErrorWithDebugDescription:v84];

    v97 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v97);
  }
}

uint64_t sub_100182D34(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  _Block_copy(a6);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100939C00);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  a2, v16, v17, v18, v19, v20, v21, v22;
  if (os_log_type_enabled(v14, v15))
  {
    v34 = a4;
    v23 = a3;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10000668C(a1, a2, v35);
    _os_log_impl(&_mh_execute_header, v14, v15, "RDXPCDebugPerformer: %s initiated", v24, 0xCu);
    sub_10000607C(v25);

    a3 = v23;
    a4 = v34;
  }

  v35[0] = a1;
  v35[1] = a2;
  v35[3] = 0;
  v36[0] = 0;
  v35[2] = 0;
  *(v36 + 6) = 0;
  __chkstk_darwin(v26, v27);
  v29[2] = a4;
  v30 = a3 & 1;
  v31 = a5;
  v32 = sub_10018AD84;
  v33 = v12;
  sub_100014A64(v35, sub_10018AD4C, v29);
}

uint64_t sub_100182FB4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v4 = REMManualOrderingListType.description.getter();
  v12 = v5;
  if (v4 == a1 && v5 == a2)
  {
    a2, v5, v6, v7, v8, v9, v10, v11;
    v29 = v12;
    goto LABEL_8;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
    v29 = a2;
LABEL_8:
    v29, v22, v23, v24, v25, v26, v27, v28;
    v30 = 0;
    v31 = 1;
    return v31 & 0xFFFEFFFF | ((v30 & 1) << 16);
  }

  v33 = REMManualOrderingListType.description.getter();
  v41 = v34;
  if (v33 == a1 && v34 == a2)
  {
    a2, v34, v35, v36, v37, v38, v39, v40;
    v49 = v41;
LABEL_15:
    v49, v42, v43, v44, v45, v46, v47, v48;
    v30 = 0;
    v31 = 2;
    return v31 & 0xFFFEFFFF | ((v30 & 1) << 16);
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v41, v51, v52, v53, v54, v55, v56, v57;
  if (v50)
  {
    v49 = a2;
    goto LABEL_15;
  }

  v58 = REMManualOrderingListType.description.getter();
  v66 = v59;
  if (v58 == a1 && v59 == a2)
  {
    a2, v59, v60, v61, v62, v63, v64, v65;
    v74 = v66;
LABEL_21:
    v74, v67, v68, v69, v70, v71, v72, v73;
    v30 = 0;
    v31 = 3;
    return v31 & 0xFFFEFFFF | ((v30 & 1) << 16);
  }

  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v66, v76, v77, v78, v79, v80, v81, v82;
  if (v75)
  {
    v74 = a2;
    goto LABEL_21;
  }

  v83 = REMManualOrderingListType.description.getter();
  v91 = v84;
  if (v83 == a1 && v84 == a2)
  {
    a2, v84, v85, v86, v87, v88, v89, v90;
    v99 = v91;
LABEL_27:
    v99, v92, v93, v94, v95, v96, v97, v98;
    v30 = 0;
    v31 = 4;
    return v31 & 0xFFFEFFFF | ((v30 & 1) << 16);
  }

  v100 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v91, v101, v102, v103, v104, v105, v106, v107;
  if (v100)
  {
    v99 = a2;
    goto LABEL_27;
  }

  v108 = REMManualOrderingListType.description.getter();
  v116 = v109;
  if (v108 == a1 && v109 == a2)
  {
    a2, v109, v110, v111, v112, v113, v114, v115;
    v124 = v116;
LABEL_33:
    v124, v117, v118, v119, v120, v121, v122, v123;
    v30 = 0;
    v31 = 5;
    return v31 & 0xFFFEFFFF | ((v30 & 1) << 16);
  }

  v125 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v116, v126, v127, v128, v129, v130, v131, v132;
  if (v125)
  {
    v124 = a2;
    goto LABEL_33;
  }

  v133 = REMManualOrderingListType.description.getter();
  v141 = v134;
  if (v133 == a1 && v134 == a2)
  {
    a2, v134, v135, v136, v137, v138, v139, v140;
    v141, v142, v143, v144, v145, v146, v147, v148;
    v30 = 0;
    v31 = 6;
  }

  else
  {
    v149 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v150, v151, v152, v153, v154, v155, v156;
    v141, v157, v158, v159, v160, v161, v162, v163;
    v30 = v149 ^ 1;
    if (v149)
    {
      v31 = 6;
    }

    else
    {
      v31 = 0;
    }
  }

  return v31 & 0xFFFEFFFF | ((v30 & 1) << 16);
}

void sub_10018324C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  __chkstk_darwin(Request, v13);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _Block_copy(a6);

  v16 = sub_100182FB4(a1, a2);
  if ((v16 & 0x10000) != 0)
  {
    v26 = objc_opt_self();
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v49, v27, v28, v29, v30, v31, v32, v33;
    v48 = 0xD000000000000028;
    v49 = 0x80000001007EDD40;
    v34._countAndFlagsBits = a1;
    v34._object = a2;
    String.append(_:)(v34);
    v35 = v49;
    v36 = String._bridgeToObjectiveC()();
    v35, v37, v38, v39, v40, v41, v42, v43;
    v44 = [v26 internalErrorWithDebugDescription:v36];

    v45 = v44;
    v46 = _convertErrorToNSError(_:)();
    (a6)[2](a6, 0, v46);

    _Block_release(a6);
  }

  else
  {
    *v15 = v16;
    *(v15 + 1) = a3;
    *(v15 + 2) = a4;
    swift_storeEnumTagMultiPayload();
    v17 = swift_allocObject();
    *(v17 + 16) = a6;
    _Block_copy(a6);
    _Block_copy(a6);
    v18 = qword_100935AE8;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100939C00);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10000668C(0xD000000000000021, 0x80000001007EDE10, &v48);
      _os_log_impl(&_mh_execute_header, v20, v21, "RDXPCDebugPerformer: %s initiated", v22, 0xCu);
      sub_10000607C(v23);
    }

    v48 = 0xD000000000000021;
    v49 = 0x80000001007EDE10;
    v51 = 0;
    v52[0] = 0;
    v50 = 0;
    *(v52 + 6) = 0;
    __chkstk_darwin(v24, v25);
    *&v47[-48] = v15;
    v47[-40] = 1;
    *&v47[-32] = a5;
    *&v47[-24] = sub_1001893A8;
    *&v47[-16] = v17;
    sub_100014A64(&v48, sub_1001893B0, &v47[-64]);

    _Block_release(a6);
    sub_100188054(v15, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
    _Block_release(a6);
  }
}

uint64_t sub_100183684(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: removeManualSortHint initiated", v9, 2u);
  }

  v14[0] = 0xD000000000000014;
  v14[1] = 0x80000001007EDDF0;
  v14[3] = 0;
  v15[0] = 0;
  v14[2] = 0;
  *(v15 + 6) = 0;
  __chkstk_darwin(v10, v11);
  v13[2] = a1;
  v13[3] = sub_10003FE60;
  v13[4] = v5;
  sub_100014A64(v14, sub_100189388, v13);
}

uint64_t sub_100183890(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  _Block_copy(a5);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  a2, v13, v14, v15, v16, v17, v18, v19;
  if (os_log_type_enabled(v11, v12))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10000668C(a1, a2, v26);
    _os_log_impl(&_mh_execute_header, v11, v12, "RDXPCDebugPerformer: %s initiated", v20, 0xCu);
    sub_10000607C(v21);
  }

  v26[0] = a1;
  v26[1] = a2;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  __chkstk_darwin(v22, v23);
  v25[2] = a3;
  v25[3] = sub_10003FE60;
  v25[4] = v9;
  sub_100014A64(v26, sub_100189368, v25);
}

void sub_100183AEC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  __chkstk_darwin(Request, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a6);

  v16 = sub_100182FB4(a1, a2);
  if ((v16 & 0x10000) != 0)
  {
    v17 = objc_opt_self();
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v39, v18, v19, v20, v21, v22, v23, v24;
    v38 = 0xD000000000000028;
    v39 = 0x80000001007EDD40;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    String.append(_:)(v25);
    v26 = v39;
    v27 = String._bridgeToObjectiveC()();
    v26, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v17 internalErrorWithDebugDescription:v27];

    v36 = v35;
    v37 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v37);

    _Block_release(a6);
  }

  else
  {
    *v15 = v16;
    *(v15 + 1) = a3;
    *(v15 + 2) = a4;
    swift_storeEnumTagMultiPayload();
    _Block_copy(a6);

    sub_100183890(0xD000000000000020, 0x80000001007EDD70, v15, a5, a6);
    _Block_release(a6);
    sub_100188054(v15, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
    _Block_release(a6);
  }
}

uint64_t sub_100183D28(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: updateManualSortHint initiated", v11, 2u);
  }

  v16[0] = 0xD000000000000014;
  v16[1] = 0x80000001007EDCF0;
  v16[3] = 0;
  v17[0] = 0;
  v16[2] = 0;
  *(v17 + 6) = 0;
  __chkstk_darwin(v12, v13);
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = sub_10003FE60;
  v15[5] = v7;
  sub_100014A64(v16, sub_10018931C, v15);
}

uint64_t sub_100183F38(id a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = type metadata accessor for RDDummyAutoCategorizer();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC7remindd22RDDummyAutoCategorizer_categoryByTitle] = v1;
    v6.receiver = v3;
    v6.super_class = v2;

    a1 = objc_msgSendSuper2(&v6, "init");
    v4 = &off_1008F2488;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  v7[0] = a1;
  v7[3] = v2;
  v7[4] = v4;
  if (qword_100936160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100187E20(v7, &xmmword_100947460);
  swift_endAccess();
  return sub_1000050A4(v7, &qword_100939DF8, &qword_1007970A0);
}

uint64_t sub_100184040(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v10[0] = 0xD00000000000002DLL;
  v10[1] = 0x80000001007EDBD0;
  v10[3] = 0;
  v11[0] = 0;
  v10[2] = 0;
  *(v11 + 6) = 0;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = sub_100187D98;
  v9[5] = v7;
  _Block_copy(a4);
  sub_100014A64(v10, sub_100187DC4, v9);
}

uint64_t sub_100184164(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[0] = 0xD000000000000025;
  v8[1] = 0x80000001007EDBA0;
  v8[3] = 0;
  v9[0] = 0;
  v8[2] = 0;
  *(v9 + 6) = 0;
  v7[2] = a1;
  v7[3] = sub_100187D98;
  v7[4] = v5;
  _Block_copy(a3);
  sub_100014A64(v8, sub_100187DA0, v7);
}

double sub_10018427C(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v17 = _swiftEmptyDictionarySingleton;
  v18[0] = 0xD000000000000021;
  v18[1] = 0x80000001007EDB70;
  v18[2] = 0;
  v18[3] = 0;
  v19[0] = 0;
  *(v19 + 6) = 0;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = &v17;
  v16[5] = sub_10003FE60;
  v16[6] = v6;
  _Block_copy(a3);
  sub_100014A64(v18, sub_100187D20, v16);
  v7 = v17;

  v7, v8, v9, v10, v11, v12, v13, v14;
  return result;
}

void sub_1001843B4(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_10004FAEC(a1);
  v4 = sub_1003EF6EC(KeyPath, v3);

  sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791320;
  *(v7 + 32) = 0x696669746E656469;
  *(v7 + 40) = 0xEA00000000007265;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = 0x656D614E656C6966;
  *(v7 + 72) = 0xE800000000000000;
  *(v7 + 120) = &type metadata for String;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 96) = 0x7553323135616873;
  *(v7 + 104) = 0xE90000000000006DLL;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v9, v10, v11, v12, v13, v14, v15;
  [v5 setPropertiesToFetch:isa];

  v16 = Array._bridgeToObjectiveC()().super.isa;
  [v5 setRelationshipKeyPathsForPrefetching:v16];

  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v49)
  {
  }

  else
  {
    v18 = v17;
    v19 = sub_100270BE8(v17);
    v18, v20, v21, v22, v23, v24, v25, v26;
    sub_10027218C(v19);

    v27 = sub_1005BDBEC(a1, 0x80u);
    type metadata accessor for REMCDSavedAttachment();
    v28 = [objc_allocWithZone(NSFetchRequest) init];
    v29 = [swift_getObjCClassFromMetadata() entity];
    [v28 setEntity:v29];

    [v28 setAffectedStores:0];
    [v28 setPredicate:v27];

    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100791320;
    *(v30 + 32) = 0x696669746E656469;
    *(v30 + 40) = 0xEA00000000007265;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = 0x656D614E656C6966;
    *(v30 + 72) = 0xE800000000000000;
    *(v30 + 120) = &type metadata for String;
    *(v30 + 88) = &type metadata for String;
    *(v30 + 96) = 0x7553323135616873;
    *(v30 + 104) = 0xE90000000000006DLL;
    v31 = Array._bridgeToObjectiveC()().super.isa;
    v30, v32, v33, v34, v35, v36, v37, v38;
    [v28 setPropertiesToFetch:v31];

    v39 = Array._bridgeToObjectiveC()().super.isa;
    [v28 setRelationshipKeyPathsForPrefetching:v39];

    v40 = NSManagedObjectContext.fetch<A>(_:)();
    v41 = sub_100270DC8(v40);
    v40, v42, v43, v44, v45, v46, v47, v48;
    sub_10027218C(v41);
  }
}

void sub_1001847EC(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v58 - v5;
  v59 = &_swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = sub_100392340(KeyPath, v6);

  sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v13 = swift_allocObject();
  v58 = xmmword_100791300;
  *(v13 + 16) = xmmword_100791300;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x7553323135616873;
  *(v13 + 40) = 0xE90000000000006DLL;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13, v15, v16, v17, v18, v19, v20, v21;
  [v11 setPropertiesToFetch:isa];

  v22 = Array._bridgeToObjectiveC()().super.isa;
  [v11 setRelationshipKeyPathsForPrefetching:v22];

  v23 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v24 = v23;
    v25 = sub_100270BE8(v23);
    v24, v26, v27, v28, v29, v30, v31, v32;
    sub_10027218C(v25);

    v33 = objc_opt_self();
    v34 = UUID._bridgeToObjectiveC()().super.isa;
    v35 = [v33 objectIDWithUUID:v34];

    v36 = v35;
    v37 = sub_1005BDBEC(v35, 0x60u);
    type metadata accessor for REMCDSavedAttachment();
    v11 = [objc_allocWithZone(NSFetchRequest) init];
    v38 = [swift_getObjCClassFromMetadata() entity];
    [v11 setEntity:v38];

    [v11 setAffectedStores:0];
    [v11 setPredicate:v37];

    v39 = swift_allocObject();
    *(v39 + 16) = v58;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 32) = 0x7553323135616873;
    *(v39 + 40) = 0xE90000000000006DLL;
    v40 = Array._bridgeToObjectiveC()().super.isa;
    v39, v41, v42, v43, v44, v45, v46, v47;
    [v11 setPropertiesToFetch:v40];

    v48 = Array._bridgeToObjectiveC()().super.isa;
    [v11 setRelationshipKeyPathsForPrefetching:v48];

    v49 = NSManagedObjectContext.fetch<A>(_:)();
    v50 = sub_100270DC8(v49);
    v49, v51, v52, v53, v54, v55, v56, v57;
    sub_10027218C(v50);
  }
}

void sub_100184CC8(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagLabelsWithoutHashtag initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v26[0] = 0xD000000000000023;
  v26[1] = 0x80000001007EDB40;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  __chkstk_darwin(inited, v12);
  v24[2] = v13;
  v25 = a1 & 1;
  v14 = v10;
  v15 = sub_1003FF564(v26, sub_100187D00, v24);
  sub_1000060C8(0, &unk_100939DB8, REMHashtagLabel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);
  v15, v17, v18, v19, v20, v21, v22, v23;

  swift_setDeallocating();
}

void sub_100184F58(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagLabelsWithConcealedHashtags initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v26[0] = 0xD00000000000002ALL;
  v26[1] = 0x80000001007EDB10;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  __chkstk_darwin(inited, v12);
  v24[2] = v13;
  v25 = a1 & 1;
  v14 = v10;
  v15 = sub_1003FF564(v26, sub_100187CE0, v24);
  sub_1000060C8(0, &unk_100939DB8, REMHashtagLabel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);
  v15, v17, v18, v19, v20, v21, v22, v23;

  swift_setDeallocating();
}

void sub_1001851E8(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagsWithoutHashtagLabel initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v26[0] = 0xD000000000000023;
  v26[1] = 0x80000001007EDAE0;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  __chkstk_darwin(inited, v12);
  v24[2] = v13;
  v25 = a1 & 1;
  v14 = v10;
  v15 = sub_1003FFAC0(v26, sub_100187CC0, v24);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);
  v15, v17, v18, v19, v20, v21, v22, v23;

  swift_setDeallocating();
}

void sub_10018544C(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagLabelsWithMismatchedHashtags initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v26[0] = 0xD000000000000025;
  v26[1] = 0x80000001007EDAB0;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  __chkstk_darwin(inited, v12);
  v24[2] = v13;
  v25 = a1 & 1;
  v14 = v10;
  v15 = sub_1003FFAC0(v26, sub_100187CA0, v24);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);
  v15, v17, v18, v19, v20, v21, v22, v23;

  swift_setDeallocating();
}

void sub_1001856B0(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagsWithSharedToMeReminderCKIdentifierAndMismatchedReminderCKIdentifier initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v26[0] = 0xD000000000000052;
  v26[1] = 0x80000001007EDA50;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  __chkstk_darwin(inited, v12);
  v24[2] = v13;
  v25 = a1 & 1;
  v14 = v10;
  v15 = sub_1003FFAC0(v26, sub_100187C80, v24);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);
  v15, v17, v18, v19, v20, v21, v22, v23;

  swift_setDeallocating();
}

void sub_100185914(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateSharedToMeReminderPlaceholders initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v26[0] = 0xD000000000000025;
  v26[1] = 0x80000001007EDA20;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  __chkstk_darwin(inited, v12);
  v24[2] = v13;
  v25 = a1 & 1;
  v14 = v10;
  v15 = sub_1003FFAC0(v26, sub_100187C60, v24);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);
  v15, v17, v18, v19, v20, v21, v22, v23;

  swift_setDeallocating();
}

uint64_t sub_100185B78(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: fetchAccountListOrderedIdentifiers initiated", v9, 2u);
  }

  v14[0] = 0xD000000000000022;
  v14[1] = 0x80000001007ED9F0;
  v14[3] = 0;
  v15[0] = 0;
  v14[2] = 0;
  *(v15 + 6) = 0;
  __chkstk_darwin(v10, v11);
  v13[2] = a1;
  v13[3] = sub_100187C38;
  v13[4] = v5;
  sub_100014A64(v14, sub_100187C40, v13);
}

uint64_t sub_100185DA4(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100939C00);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDXPCDebugPerformer: fetchAllSharedEntitySyncActivities initiated", v8, 2u);
  }

  v13[0] = 0xD000000000000022;
  v13[1] = 0x80000001007ED9C0;
  v13[3] = 0;
  v14[0] = 0;
  v13[2] = 0;
  *(v14 + 6) = 0;
  __chkstk_darwin(v9, v10);
  v12[2] = a1;
  v12[3] = sub_100187BEC;
  v12[4] = v4;
  sub_100014A64(v13, sub_100187C18, v12);
}

_TtC7remindd19RDXPCStorePerformer *sub_100185FD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v70 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  __chkstk_darwin(Option, v14);
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100187FEC(a1, v16, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v9 + 32))(v12, v16, v8);
    KeyPath = swift_getKeyPath();
    (*(v9 + 16))(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v25 = sub_100392364(KeyPath, v7);

    type metadata accessor for REMCKSharedEntitySyncActivity();
    v26 = [objc_allocWithZone(NSFetchRequest) init];
    v27 = [swift_getObjCClassFromMetadata() entity];
    [v26 setEntity:v27];

    [v26 setAffectedStores:0];
    [v26 setPredicate:v25];

    v28 = NSManagedObjectContext.fetch<A>(_:)();
    if (v1)
    {
LABEL_5:
      (*(v9 + 8))(v12, v8);

      return v2;
    }

    v2 = v28;
    if (v28 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_5;
      }
    }

    else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_5;
    }

    v31 = objc_opt_self();
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(88);
    v32._object = 0x80000001007ED8B0;
    v32._countAndFlagsBits = 0xD000000000000047;
    String.append(_:)(v32);
    sub_100189458(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v33._object;
    String.append(_:)(v33);
    object, v35, v36, v37, v38, v39, v40, v41;
    v42._countAndFlagsBits = 0x6C6C6F6620736120;
    v42._object = 0xED0000203A73776FLL;
    String.append(_:)(v42);
    v43 = Array.description.getter();
    v45 = v44;
    v2, v44, v46, v47, v48, v49, v50, v51;
    v52._countAndFlagsBits = v43;
    v52._object = v45;
    String.append(_:)(v52);
    v45, v53, v54, v55, v56, v57, v58, v59;
    v60 = v71;
    v61 = String._bridgeToObjectiveC()();
    v60, v62, v63, v64, v65, v66, v67, v68;
    v2 = [v31 internalErrorWithDebugDescription:v61];

    swift_willThrow();
    (*(v9 + 8))(v12, v8);
    return v2;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = *v16;
    v19 = v16[1];
    v20 = swift_getKeyPath();
    v21 = sub_100392388(v20, v18, v19);

    type metadata accessor for REMCKSharedEntitySyncActivity();
    v22 = [objc_allocWithZone(NSFetchRequest) init];
    v23 = [swift_getObjCClassFromMetadata() entity];
    [v22 setEntity:v23];

    [v22 setAffectedStores:0];
    [v22 setPredicate:v21];

    v2 = NSManagedObjectContext.fetch<A>(_:)();
  }

  else
  {
    type metadata accessor for REMCKSharedEntitySyncActivity();
    v29 = [objc_allocWithZone(NSFetchRequest) init];
    v30 = [swift_getObjCClassFromMetadata() entity];
    [v29 setEntity:v30];

    [v29 setAffectedStores:0];
    [v29 setPredicate:0];
    v2 = NSManagedObjectContext.fetch<A>(_:)();
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100186608(unint64_t a1)
{
  v11 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v5;
      sub_100172190(&v10, &v9);

      if (v9)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v11;
      }

      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void sub_10018676C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v6 - 8, v7);
  v70 = v68 - v8;
  v9 = type metadata accessor for CocoaError.Code();
  v69 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939C00);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: addSharedEntitySyncActivity initiated", v17, 2u);
  }

  v18 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v19 = [a1 accountIdentifier];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v19 = String._bridgeToObjectiveC()();
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  v29 = [v18 storeForAccountIdentifier:v19];

  if (v29)
  {
    v71 = 0xD00000000000001BLL;
    v72 = 0x80000001007ED9A0;
    v74 = 0;
    memset(v75, 0, 14);
    v73 = 0;
    __chkstk_darwin(v30, v31);
    v68[-4] = v29;
    v68[-3] = a1;
    v68[-2] = sub_10003FE60;
    v68[-1] = v13;
    sub_100014A64(&v71, sub_100187BCC, &v68[-6]);
  }

  else
  {
    v68[0] = v9;
    v68[1] = v13;
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v71 = v36;
      *v35 = 136315138;
      v37 = [v32 accountIdentifier];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_10000668C(v38, v40, &v71);
      v42 = v40;
      v43 = &selRef_attachmentRepresentationAndReturnError_;
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Persistent store not found for accountIdentifier %s", v35, 0xCu);
      sub_10000607C(v36);
    }

    else
    {

      v43 = &selRef_attachmentRepresentationAndReturnError_;
    }

    static CocoaError.Code.persistentStoreUnsupportedRequestType.getter();
    sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    v71 = 0xD00000000000001ALL;
    v72 = 0x80000001007ED900;
    AnyHashable.init<A>(_:)();
    v52 = [v32 v43[501]];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v53;
    *(inited + 80) = v55;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v56;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0xD000000000000073;
    *(inited + 152) = 0x80000001007ED920;
    v57 = sub_10038ED74(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100946590, &qword_100796FF0);
    swift_arrayDestroy();
    v58 = type metadata accessor for URL();
    v59 = v70;
    (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
    static CocoaError.error(_:userInfo:url:)();
    v57, v60, v61, v62, v63, v64, v65, v66;
    sub_1000050A4(v59, &unk_1009441F0, &qword_100795760);
    (*(v69 + 8))(v12, v68[0]);
    v67 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v67);
  }
}

double sub_100186DD8(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = 0xD000000000000021;
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  __chkstk_darwin(Option, v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  sub_100187FEC(a1, v10, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = _Block_copy(a3);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v15 = "thUUIDForChangeTracking";
      goto LABEL_7;
    }

    v15 = " object with identifier ";
    v6 = 0xD000000000000030;
  }

  else
  {
    v6 = 0xD000000000000037;
    v15 = "WithCKIdentifier";
  }

  v13 = sub_100188054(v10, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
LABEL_7:
  v25[0] = v6;
  v25[1] = v15 | 0x8000000000000000;
  v25[3] = 0;
  v26[0] = 0;
  v25[2] = 0;
  *(v26 + 6) = 0;
  __chkstk_darwin(v13, v14);
  *&v24[-32] = a2;
  *&v24[-24] = a1;
  *&v24[-16] = sub_10003FE60;
  *&v24[-8] = v11;
  sub_100014A64(v25, sub_100187B94, &v24[-48]);

  (v15 | 0x8000000000000000), v16, v17, v18, v19, v20, v21, v22;
  return result;
}

void sub_100187018(uint64_t a1, const void *a2)
{
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  __chkstk_darwin(Option, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a2);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: removeSharedEntitySyncActivityWithActivities initiated", v11, 2u);
  }

  swift_storeEnumTagMultiPayload();
  _Block_copy(a2);
  sub_100186DD8(v7, a1, a2);
  _Block_release(a2);
  sub_100188054(v7, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  _Block_release(a2);
}

void sub_1001871B4(uint64_t a1, uint64_t a2, const void *a3)
{
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  __chkstk_darwin(Option, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDXPCDebugPerformer: removeSharedEntitySyncActivityWithUUID initiated", v13, 2u);
  }

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 16))(v9, a1, v14);
  swift_storeEnumTagMultiPayload();
  _Block_copy(a3);
  sub_100186DD8(v9, a2, a3);
  _Block_release(a3);
  sub_100188054(v9, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  _Block_release(a3);
}

void sub_100187390(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  __chkstk_darwin(Option, v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100939C00);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDXPCDebugPerformer: removeSharedEntitySyncActivities initiated", v15, 2u);
  }

  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  _Block_copy(a4);

  sub_100186DD8(v11, a3, a4);
  _Block_release(a4);
  sub_100188054(v11, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  _Block_release(a4);
}

uint64_t sub_100187548(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: updateMinimumSupportedVersion initiated", v11, 2u);
  }

  v16[0] = 0xD00000000000001DLL;
  v16[1] = 0x80000001007ED7A0;
  v16[3] = 0;
  v17[0] = 0;
  v16[2] = 0;
  *(v17 + 6) = 0;
  __chkstk_darwin(v12, v13);
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = sub_10003FE58;
  v15[5] = v7;
  sub_100014A64(v16, sub_100187B54, v15);
}

void sub_100187758(uint64_t a1)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100939C00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDXPCDebugPerformer: updateRemCurrentRuntimeVersionDebuggingOverride initiated", v5, 2u);
  }

  v6 = [objc_opt_self() daemonUserDefaults];
  v7 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  [v6 setRemCurrentRuntimeVersionDebuggingOverride:v7];
}

uint64_t sub_1001878AC(char a1, uint64_t a2, const void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: fetchAllDueDateDeltaAlerts initiated", v9, 2u);
  }

  v16[0] = 0xD00000000000001ALL;
  v16[1] = 0x80000001007ED6F0;
  v16[3] = 0;
  v17[0] = 0;
  v16[2] = 0;
  *(v17 + 6) = 0;
  __chkstk_darwin(v10, v11);
  v13[16] = a1 & 1;
  v14 = sub_100187AF0;
  v15 = v5;
  sub_100014A64(v16, sub_100187B1C, v13);
}

unint64_t sub_100187D44()
{
  result = qword_100939DD0;
  if (!qword_100939DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939DD0);
  }

  return result;
}

uint64_t sub_100187DE4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 0;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_100187E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939DF8, &qword_1007970A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100187E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FCBFC;

  return sub_100173DAC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100187F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100187FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100188054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001880D0(char *a1, void *a2)
{
  v175 = type metadata accessor for UUID();
  v4 = *(v175 - 8);
  __chkstk_darwin(v175, v5);
  v169 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v172 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v162 - v12;
  __chkstk_darwin(v14, v15);
  v17 = &v162 - v16;
  __chkstk_darwin(v18, v19);
  v21 = &v162 - v20;
  v171 = type metadata accessor for Date();
  v22 = *(v171 - 8);
  __chkstk_darwin(v171, v23);
  v25 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v26 = [a1 hintData];
  v176 = a1;
  v170 = v4;
  v173 = v13;
  if (v26)
  {
    v167 = a2;
    v168 = v17;
    v27 = v26;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v178[0] = 0;
    v33 = [v31 JSONObjectWithData:isa options:0 error:v178];

    v34 = *&v178[0];
    if (!v33)
    {
      v92 = v34;
      v174, v35, v36, v37, v38, v39, v40, v41;
      v93 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10001BBA0(v28, v30);
      return v93;
    }

    _bridgeAnyObjectToAny(_:)();
    sub_10001BBA0(v28, v30);
    swift_unknownObjectRelease();
    sub_100005EE0(v179, v178);
    sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    if (swift_dynamicCast())
    {
      v174, v42, v43, v44, v45, v46, v47, v48;
      v174 = v177;
    }

    a1 = v176;
    v4 = v170;
    a2 = v167;
    v17 = v168;
  }

  [a1 lastAccessedSinceReferenceDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  v49 = Date._bridgeToObjectiveC()().super.isa;
  (*(v22 + 8))(v25, v171);
  v50 = [a2 stringFromDate:v49];

  v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v168 = v51;

  v52 = [a1 identifier];
  if (v52)
  {
    v53 = v52;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = v175;
  v165 = v4[7];
  v165(v17, v54, 1, v175);
  sub_100031B58(v17, v21, &unk_100939D90, "8\n\r");
  v56 = v4;
  v164 = v4[6];
  if (v164(v21, 1, v55))
  {
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
    v57 = 0;
    v58 = 0xE000000000000000;
  }

  else
  {
    v59 = v4[2];
    v60 = v169;
    v59(v169, v21, v55);
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
    v61 = v55;
    v57 = UUID.uuidString.getter();
    v58 = v62;
    (v56[1])(v60, v61);
  }

  [a1 listTypeRawValue];
  v63 = REMManualOrderingListType.init(intValue:)();
  v64 = v172;
  if ((v63 & 0x10000) != 0)
  {
    v166 = 0xE000000000000000;
    v167 = 0;
  }

  else
  {
    v65 = REMManualOrderingListType.description.getter();
    v166 = v66;
    v167 = v65;
  }

  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v57;
  v163 = inited + 32;
  *(inited + 40) = v58;
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_100796DB0;
  *(v68 + 32) = 1734431845;
  v162 = v68 + 32;
  *(v68 + 40) = 0xE400000000000000;
  v69 = v176;
  v70 = [v176 eTag];
  if (v70)
  {
    v71 = v70;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = 0;
  }

  else
  {
    v72 = 1;
  }

  v73 = v173;
  v74 = v175;
  v165(v64, v72, 1, v175);
  sub_100031B58(v64, v73, &unk_100939D90, "8\n\r");
  if (v164(v73, 1, v74))
  {
    sub_1000050A4(v73, &unk_100939D90, "8\n\r");
    v75 = (v68 + 48);
    *(v68 + 72) = &type metadata for String;
LABEL_20:
    *v75 = 0;
    v76 = 0xE000000000000000;
    goto LABEL_23;
  }

  v172 = inited;
  v77 = v169;
  v78 = v170;
  (v170[2])(v169, v73, v74);
  sub_1000050A4(v73, &unk_100939D90, "8\n\r");
  v79 = v74;
  v80 = UUID.uuidString.getter();
  v76 = v81;
  (v78[1])(v77, v79);
  v75 = (v68 + 48);
  *(v68 + 72) = &type metadata for String;
  if (!v76)
  {
    inited = v172;
    goto LABEL_20;
  }

  *v75 = v80;
  inited = v172;
LABEL_23:
  *(v68 + 56) = v76;
  *(v68 + 80) = 0x61746144746E6968;
  *(v68 + 88) = 0xE800000000000000;
  v82 = sub_1000F5104(&unk_100938CB0, &unk_100796A70);
  *(v68 + 96) = v174;
  v175 = v82;
  *(v68 + 120) = v82;
  strcpy((v68 + 128), "lastAccessed");
  *(v68 + 141) = 0;
  *(v68 + 142) = -5120;
  v83 = v168;
  *(v68 + 144) = v171;
  *(v68 + 152) = v83;
  *(v68 + 168) = &type metadata for String;
  *(v68 + 176) = 0x657079547473696CLL;
  v84 = v166;
  v85 = v167;
  *(v68 + 184) = 0xE800000000000000;
  *(v68 + 192) = v85;
  *(v68 + 200) = v84;
  *(v68 + 216) = &type metadata for String;
  *(v68 + 224) = 0xD000000000000010;
  *(v68 + 232) = 0x8000000100797160;
  *(v68 + 240) = [v69 listTypeRawValue];
  *(v68 + 264) = &type metadata for Int16;
  *(v68 + 272) = 0x44497473696CLL;
  *(v68 + 280) = 0xE600000000000000;
  v86 = [v69 listID];
  if (v86)
  {
    v87 = v86;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91 = (v68 + 288);
    *(v68 + 312) = &type metadata for String;
    if (v90)
    {
      *v91 = v88;
      v69 = v176;
      goto LABEL_30;
    }

    v69 = v176;
  }

  else
  {
    v91 = (v68 + 288);
    *(v68 + 312) = &type metadata for String;
  }

  *v91 = 0;
  v90 = 0xE000000000000000;
LABEL_30:
  *(v68 + 296) = v90;
  *(v68 + 320) = 0xD000000000000014;
  *(v68 + 328) = 0x80000001007EDE40;
  *(v68 + 336) = [v69 serializationVersion];
  *(v68 + 360) = &type metadata for Int16;
  *(v68 + 368) = 0xD000000000000026;
  *(v68 + 376) = 0x80000001007EDE60;
  v94 = [v69 concatenatedContainerIDsWithLocalContainerIDPrefix];
  if (v94)
  {
    v102 = v94;
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;

    *&v179[0] = v103;
    *(&v179[0] + 1) = v105;
    v69 = v176;
    v106 = *&v176[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix + 8];
    *&v178[0] = *&v176[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix];
    *(&v178[0] + 1) = v106;
    sub_10013BCF4();
    v107 = StringProtocol.components<A>(separatedBy:)();
    v105, v108, v109, v110, v111, v112, v113, v114;
    v115 = sub_1001A5660(v107);
    v107, v116, v117, v118, v119, v120, v121, v122;
    v123 = *v115->clientIdentity;
    if (v123)
    {
LABEL_32:
      v124 = sub_1003689CC(v123, 0);
      v125 = sub_1002791DC(v179, &v124->clientIdentity[16], v123, v115);
      sub_10001B860(*&v179[0]);
      if (v125 != v123)
      {
        __break(1u);
      }

      v69 = v176;
      goto LABEL_36;
    }
  }

  else
  {
    v115 = _swiftEmptySetSingleton;
    v123 = _swiftEmptySetSingleton[2];
    if (v123)
    {
      goto LABEL_32;
    }
  }

  v115, v95, v96, v97, v98, v99, v100, v101;
  v124 = &_swiftEmptyArrayStorage;
LABEL_36:
  v126 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  *(v68 + 384) = v124;
  *(v68 + 408) = v126;
  *(v68 + 416) = 0xD000000000000022;
  *(v68 + 424) = 0x80000001007EDE90;
  v127 = [v69 concatenatedElementIDsWithLocalElementIDPrefix];
  if (!v127)
  {
    goto LABEL_40;
  }

  v135 = v127;
  v136 = v69;
  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v139 = v138;

  *&v179[0] = v137;
  *(&v179[0] + 1) = v139;
  v140 = *&v136[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix + 8];
  *&v178[0] = *&v136[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix];
  *(&v178[0] + 1) = v140;
  sub_10013BCF4();
  v141 = StringProtocol.components<A>(separatedBy:)();
  v139, v142, v143, v144, v145, v146, v147, v148;
  v149 = sub_1001A5660(v141);
  v141, v150, v151, v152, v153, v154, v155, v156;
  v157 = *v149->clientIdentity;
  if (v157)
  {
    while (1)
    {
      v158 = sub_1003689CC(v157, 0);
      v159 = sub_1002791DC(v179, &v158->clientIdentity[16], v157, v149);
      sub_10001B860(*&v179[0]);
      if (v159 == v157)
      {
        break;
      }

      __break(1u);
LABEL_40:
      v149 = _swiftEmptySetSingleton;
      v157 = _swiftEmptySetSingleton[2];
      if (!v157)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
LABEL_41:
    v149, v128, v129, v130, v131, v132, v133, v134;
    v158 = &_swiftEmptyArrayStorage;
  }

  *(v68 + 456) = v126;
  *(v68 + 432) = v158;
  v160 = sub_1001F67C8(v68);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  *(inited + 72) = v175;
  *(inited + 48) = v160;
  v93 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000050A4(v163, &unk_100939260, &unk_100797220);
  return v93;
}

unint64_t sub_100188C4C(void *a1, void *a2)
{
  v48 = a2;
  v3 = type metadata accessor for Date();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v16, v17).n128_u64[0];
  v20 = &v42 - v19;
  v21 = [a1 identifier];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 56))(v15, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v7);
  }

  sub_100031B58(v15, v20, &unk_100939D90, "8\n\r");
  if ((*(v8 + 48))(v20, 1, v7))
  {
    sub_1000050A4(v20, &unk_100939D90, "8\n\r");
    v23 = 0;
    v44 = 0xE000000000000000;
  }

  else
  {
    (*(v8 + 16))(v11, v20, v7);
    sub_1000050A4(v20, &unk_100939D90, "8\n\r");
    v23 = UUID.uuidString.getter();
    v44 = v24;
    (*(v8 + 8))(v11, v7);
  }

  v25 = [a1 listID];
  if (v25)
  {
    v26 = v25;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v27;
  }

  else
  {
    v45 = 0;
    v43 = 0xE000000000000000;
  }

  [a1 listTypeRawValue];
  if ((REMManualOrderingListType.init(intValue:)() & 0x10000) != 0)
  {
    v42 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v42 = REMManualOrderingListType.description.getter();
    v29 = v28;
  }

  [a1 lastAccessedSinceReferenceDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v46 + 8))(v6, v47);
  v31 = [v48 stringFromDate:isa];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v23;
  *(inited + 40) = v44;
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_100792CE0;
  *(v36 + 32) = 0xD000000000000010;
  *(v36 + 40) = 0x8000000100797160;
  *(v36 + 48) = [a1 listTypeRawValue];
  *(v36 + 72) = &type metadata for Int16;
  *(v36 + 80) = 0x657079547473696CLL;
  v37 = v42;
  *(v36 + 88) = 0xE800000000000000;
  *(v36 + 96) = v37;
  *(v36 + 104) = v29;
  *(v36 + 120) = &type metadata for String;
  *(v36 + 128) = 0x44497473696CLL;
  v38 = v45;
  *(v36 + 136) = 0xE600000000000000;
  *(v36 + 144) = v38;
  *(v36 + 152) = v43;
  *(v36 + 168) = &type metadata for String;
  strcpy((v36 + 176), "lastAccessed");
  *(v36 + 216) = &type metadata for String;
  *(v36 + 189) = 0;
  *(v36 + 190) = -5120;
  *(v36 + 192) = v32;
  *(v36 + 200) = v34;
  v39 = sub_1001F67C8(v36);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  *(inited + 72) = sub_1000F5104(&unk_100938CB0, &unk_100796A70);
  *(inited + 48) = v39;
  v40 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
  return v40;
}

uint64_t sub_1001891AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001891FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FDA74;

  return sub_100173BEC(a1, v4, v5, v6, v7, v9, v8);
}

_TtC7remindd19RDXPCStorePerformer *sub_100189414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100451010(v1[2], v1[3], v1[4]);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100189458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001894BC()
{
  type metadata accessor for URL();
  v1 = *(v0 + 16);

  sub_100168EA0(v1);
}

void sub_100189520()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_100168F10(v3, v4, (v0 + v2), v6, v7);
}

void sub_1001895C0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100169744(v3, v4, v0 + v2, v5);
}

uint64_t sub_100189748()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001897A8(uint64_t (*a1)(void))
{
  v2 = *(v1 + 32);
  v3 = a1(*(v1 + 24));
  return v2(v3);
}

void sub_1001897F8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10016627C(v0 + v2, v4, v5, v6, v7, v8);
}

uint64_t sub_10018989C()
{
  v1 = *(v0 + 40);
  sub_100507BB0(*(v0 + 24), *(v0 + 32));
  return v1();
}

void sub_1001898E8()
{
  v1 = *(v0 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_1001899B0(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100163A2C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_100189A7C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v4);
  v8 = v0 + v3;
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = (v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  sub_1001642D0(v0 + v2, v11, v12, v7, v9, v10, v14, v15);
}

uint64_t sub_100189B40(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 48, 7);
}

uint64_t sub_100189BA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100189C20()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100161C80(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_100189D2C(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100162FB8(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t *sub_100189E5C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11 = type metadata accessor for Date();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_9;
    case 1:
      *a1 = *a2;
      v10 = a2[2];
      a1[1] = a2[1];
      a1[2] = v10;

      goto LABEL_9;
    case 0:
      v8 = type metadata accessor for UUID();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v13 = *(v5 + 64);

  return memcpy(a1, a2, v13);
}

void sub_100189FE8(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for Date();
LABEL_9:
    v13 = *(*(v11 - 8) + 8);

    v13(a1, v11);
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      return;
    }

    v11 = type metadata accessor for UUID();
    goto LABEL_9;
  }

  v12 = *(a1 + 16);

  v12, v4, v5, v6, v7, v8, v9, v10;
}

void *sub_10018A09C(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9 = type metadata accessor for Date();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      goto LABEL_7;
    case 1:
      *a1 = *a2;
      v8 = a2[2];
      a1[1] = a2[1];
      a1[2] = v8;

      goto LABEL_7;
    case 0:
      v7 = type metadata accessor for UUID();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_10018A1E8(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100188054(a1, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8 = type metadata accessor for Date();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_8;
    case 1:
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];

      goto LABEL_8;
    case 0:
      v7 = type metadata accessor for UUID();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_10018A360(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_10018A480(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100188054(a1, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_10018A5C4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_10018A6A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

double sub_10018A7D0(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(a1 + 8);

    v14, v4, v5, v6, v7, v8, v9, v10;
  }

  else if (!EnumCaseMultiPayload)
  {
    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 8);

    v13(a1, v12);
  }

  return result;
}

void *sub_10018A870(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;

    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_10018A960(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100188054(a1, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    a1[1] = a2[1];

    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_10018AA7C(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_10018AB48(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100188054(a1, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_10018AC38(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_10018AE04(void *a1)
{
  v24 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v27 = *(v24 - 8);
  __chkstk_darwin(v24, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v26 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v25 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  sub_10018B15C(*(v1 + 24), a1);
  if (!v2)
  {
    v17 = v16;
    v18 = [*(v1 + 40) shouldSaveCompleted];
    v19 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
    if (!v18)
    {
      v19 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
    }

    (*(v25 + 104))(v14, *v19, v11);
    (*(v26 + 104))(v10, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), Subtasks);
    v20 = v24;
    (*(v27 + 104))(v6, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v24);
    sub_1005B6BD0(v17, v15, v14, v10, v6);
    v23 = 0;
    v1 = v22;

    (*(v27 + 8))(v6, v20);
    (*(v26 + 8))(v10, Subtasks);
    (*(v25 + 8))(v14, v11);
  }

  return v1;
}

void sub_10018B15C(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = [objc_allocWithZone(REMSmartListsDataViewInvocation_fetchSmartList) initWithSmartListType:REMSmartListTypeCustom objectID:a1 createIfNeeded:0];
  v8 = sub_100515FC4(a2);

  if (!v3)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v4;
      v66 = a1;
      v64 = v8;
      isa = [v10 smartListStorages];
      if (!isa)
      {
        sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
        v13, v14, v15, v16, v17, v18, v19, v20;
      }

      v65 = objc_opt_self();
      v21 = [v10 accountStorages];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      sub_10018BA8C();
      v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = Dictionary._bridgeToObjectiveC()().super.isa;
      v22, v24, v25, v26, v27, v28, v29, v30;
      v31 = [v10 parentListStorages];
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = Dictionary._bridgeToObjectiveC()().super.isa;
      v32, v34, v35, v36, v37, v38, v39, v40;
      v41 = [v65 smartListsFromSmartListStorages:isa accountStorages:v23 parentListStorages:v33 store:*(v11 + 48)];

      sub_1000060C8(0, &qword_10093A230, REMSmartList_ptr);
      v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v42 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v51 = 0;
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v51 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v52 = *(v42 + 8 * v51 + 32);
          }

          v53 = v52;
          v54 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
          v55 = [v53 objectID];
          v56 = static NSObject.== infix(_:_:)();

          if (v56)
          {
            v42, v57, v58, v59, v60, v61, v62, v63;

            REMSmartList.codable.getter();
            return;
          }

          ++v51;
          if (v54 == i)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

LABEL_21:
      v42, v43, v44, v45, v46, v47, v48, v49;
      [objc_opt_self() noSuchObjectErrorWithObjectID:v66];
      swift_willThrow();
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:a1];
      swift_willThrow();
    }
  }
}

uint64_t sub_10018B5A0()
{
  v2 = *(v0 + 24);
  v3 = qword_100935D60;
  v59 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for REMCDSmartListSection();
  v5 = sub_10024C42C();
  v6 = sub_10024C888();
  v7 = sub_10024B964(v2, 1u);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  [v8 setAffectedStores:0];
  [v8 setPredicate:v7];

  v10 = sub_10003450C(v5);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10, v12, v13, v14, v15, v16, v17, v18;
  [v8 setPropertiesToFetch:isa];

  v19 = Array._bridgeToObjectiveC()().super.isa;
  [v8 setRelationshipKeyPathsForPrefetching:v19];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v20 = Array._bridgeToObjectiveC()().super.isa;
  [v8 setSortDescriptors:v20];

  v21 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    v5, v29, v30, v31, v32, v33, v34, v35;
    v6, v36, v37, v38, v39, v40, v41, v42;

    return v4;
  }

  v4 = v21;
  v5, v22, v23, v24, v25, v26, v27, v28;
  v6, v43, v44, v45, v46, v47, v48, v49;

  if (!(v4 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for REMCDBaseSection();

    v4, v50, v51, v52, v53, v54, v55, v56;
    return v4;
  }

  type metadata accessor for REMCDBaseSection();

  v58 = _bridgeCocoaArray<A>(_:)();

  swift_bridgeObjectRelease_n();
  return v58;
}

void sub_10018B858(void *a1)
{
  sub_10018B15C(*(v1 + 24), a1);
  if (!v2)
  {
    v5 = v4;
    v6 = [v4 smartListType];
    v7 = [v5 objectID];
    if (qword_1009367E0 != -1)
    {
      swift_once();
    }

    v9 = sub_100717244(v6, v7, a1, qword_1009752F0, v8);

    v10 = [v9 membershipsOfRemindersInSectionsAsData];
    if (v10)
    {
      v11 = v10;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
      static REMJSONRepresentable.fromJSONData(_:)();

      sub_10001BBA0(v12, v14);
    }

    else
    {
    }
  }
}

uint64_t sub_10018BA10()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10018BA8C()
{
  result = qword_1009391F0;
  if (!qword_1009391F0)
  {
    sub_1000060C8(255, &qword_1009391E0, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009391F0);
  }

  return result;
}

id REMCDAccountV2023MinorEMigratingToZREMCDBASELIST.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id REMCDAccountListData.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDAccountListData();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDAccountListData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDAccountListData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018BC7C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A260);
  v1 = sub_100006654(v0, qword_10093A260);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10018BD44()
{
  [*&v0[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener] invalidate];
  [*&v0[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDClientConnectionListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018BF18()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A340);
  v1 = sub_100006654(v0, qword_10093A340);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10018BFE0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0x4E79616C70736964;
  v10 = 0xEB00000000656D61;
  if (v8 != 1)
  {
    v9 = 0x6574616C706D6574;
    v10 = 0xE800000000000000;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x6E6F697461657263;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEC00000065746144;
  }

  v13 = 0x4E79616C70736964;
  v14 = 0xEB00000000656D61;
  if (*a2 != 1)
  {
    v13 = 0x6574616C706D6574;
    v14 = 0xE800000000000000;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6E6F697461657263;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xEC00000065746144;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_10018C0F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xEB00000000656D61;
  if (v1 != 1)
  {
    v2 = 0xE800000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEC00000065746144;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_10018C1AC(uint64_t a1)
{
  v2 = 0xEB00000000656D61;
  if (*v1 != 1)
  {
    v2 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEC00000065746144;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_10018C24C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xEB00000000656D61;
  if (v2 != 1)
  {
    v3 = 0xE800000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xEC00000065746144;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_10018C2FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018E0E8(*a1);
  *a2 = result;
  return result;
}

void sub_10018C32C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0xEB00000000656D61;
  v5 = 0x4E79616C70736964;
  if (v2 != 1)
  {
    v5 = 0x6574616C706D6574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697461657263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static REMCDTemplateSection.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDTemplateSection();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDTemplateSection.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      [v19 mergeDataFromRecord:a1 accountID:v20];

      v22 = v19;
      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935AF8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093A340);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDTemplateSection.recordType()()
{
  v0 = 0x6574616C706D6554;
  v1 = 0xEF6E6F6974636553;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDTemplateSection.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = String._bridgeToObjectiveC()();
  v33.receiver = v2;
  v33.super_class = type metadata accessor for REMCDTemplateSection();
  objc_msgSendSuper2(&v33, "mergeDataFromRecord:accountID:", from.super.isa, v4);

  v5 = [(objc_class *)from.super.isa recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v6 = String._bridgeToObjectiveC()();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v16 = [v2 ckIdentifierFromRecordName:v6];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v16 = String._bridgeToObjectiveC()();
    v18, v19, v20, v21, v22, v23, v24, v25;
  }

  [v2 setCkIdentifier:v16];

  v26 = [v2 mergeDataRevertedLocallyMarkedForDeletion];
  v27 = [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v32 = 0;
  v28 = v2;
  v29 = from.super.isa;
  sub_1004E0908(v29, v26, v27, v28, v28, v29, &v32);

  if (v32 == 1)
  {
    v30 = [v28 template];
    if (v30)
    {
      v31 = v30;
      if (([v30 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        _s7remindd13REMCDTemplateC19sortChildrenObjectsyyF_0();
      }
    }
  }
}

void sub_10018CB0C(_BYTE *a1, void *a2, void *a3, _BYTE *a4)
{
  v74 = a4;
  v76 = a2;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v72 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v9, v10);
  v12 = &v72 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v73 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v72 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24, v25);
  v27 = &v72 - v26;
  __chkstk_darwin(v28, v29);
  v31 = &v72 - v30;
  v32 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v34 = __chkstk_darwin(v32 - 8, v33).n128_u64[0];
  v36 = &v72 - v35;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v37 = [a3 encryptedValues];
      v38 = String._bridgeToObjectiveC()();
      v39 = [v37 objectForKeyedSubscript:v38];
      swift_unknownObjectRelease();

      if (v39)
      {
        v78 = v39;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v40 = v77;
          v39 = String._bridgeToObjectiveC()();
          v40, v41, v42, v43, v44, v45, v46, v47;
        }

        else
        {
          v39 = 0;
        }
      }

      [v76 setDisplayName:v39];

      return;
    }

    v51 = [v76 template];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 identifier];

      if (v53)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = *(v75 + 56);
        v54(v27, 0, 1, v6);
      }

      else
      {
        v54 = *(v75 + 56);
        v54(v27, 1, 1, v6);
      }

      sub_100031B58(v27, v31, &unk_100939D90, "8\n\r");
    }

    else
    {
      v54 = *(v75 + 56);
      v54(v31, 1, 1, v6);
    }

    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (!v55)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v55 = 0;
    }

    v56 = sub_1001287F0(v55);

    if (v56)
    {
      type metadata accessor for REMCDTemplate();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
      }
    }

    else
    {
      v57 = 0;
    }

    v58 = v76;
    [v76 setTemplate:v57];

    v59 = [v58 template];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 identifier];

      if (v61)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = 0;
      }

      else
      {
        v62 = 1;
      }

      v63 = v75;
      v54(v19, v62, 1, v6);
      sub_100031B58(v19, v23, &unk_100939D90, "8\n\r");
    }

    else
    {
      v63 = v75;
      v54(v23, 1, 1, v6);
    }

    v64 = *(v9 + 48);
    sub_10018E470(v23, v12);
    sub_10018E470(v31, &v12[v64]);
    v65 = *(v63 + 48);
    if (v65(v12, 1, v6) == 1)
    {
      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      sub_1000050A4(v31, &unk_100939D90, "8\n\r");
      if (v65(&v12[v64], 1, v6) == 1)
      {
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v66 = 0;
LABEL_38:
        *v74 = v66 & 1;
        return;
      }
    }

    else
    {
      v67 = v73;
      sub_10018E470(v12, v73);
      if (v65(&v12[v64], 1, v6) != 1)
      {
        v68 = &v12[v64];
        v69 = v72;
        (*(v63 + 32))(v72, v68, v6);
        sub_10018E4E0();
        v70 = dispatch thunk of static Equatable.== infix(_:_:)();
        v71 = *(v63 + 8);
        v71(v69, v6);
        sub_1000050A4(v23, &unk_100939D90, "8\n\r");
        sub_1000050A4(v31, &unk_100939D90, "8\n\r");
        v71(v67, v6);
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v66 = v70 ^ 1;
        goto LABEL_38;
      }

      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      sub_1000050A4(v31, &unk_100939D90, "8\n\r");
      (*(v63 + 8))(v67, v6);
    }

    sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
    v66 = 1;
    goto LABEL_38;
  }

  sub_10018E134();
  v48 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v49 = *(v48 - 8);
  isa = 0;
  if ((*(v49 + 48))(v36, 1, v48) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v49 + 8))(v36, v48);
  }

  [v76 setCreationDate:isa];
}

CKRecord_optional __swiftcall REMCDTemplateSection.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for REMCDTemplateSection();
  v44.receiver = v0;
  v44.super_class = v10;
  v12 = objc_msgSendSuper2(&v44, "newlyCreatedRecord");
  if (v12)
  {
    v13 = 0;
    v14 = &off_1008DEAC0;
    v15 = &unk_100938850;
    v40 = v0;
    do
    {
      if (*(v14 + v13 + 32))
      {
        if (*(v14 + v13 + 32) == 1)
        {
          v17 = [v12 encryptedValues];
          v18 = [v1 displayName];
          if (v18)
          {
            v19 = v18;
            v20 = v12;
            v21 = v9;
            v22 = v5;
            v23 = v14;
            v24 = v15;
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;

            *(&v42 + 1) = &type metadata for String;
            v43 = &protocol witness table for String;
            *&v41 = v25;
            *(&v41 + 1) = v27;
            v15 = v24;
            v14 = v23;
            v5 = v22;
            v9 = v21;
            v12 = v20;
            v1 = v40;
          }

          else
          {
            v43 = 0;
            v41 = 0u;
            v42 = 0u;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
        }

        else
        {
          if (([v1 markedForDeletion] & 1) == 0 && (v31 = objc_msgSend(v1, "template")) != 0 && (v32 = v31, v33 = objc_msgSend(v31, "recordID"), v32, v33))
          {
            v34 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v33];

            if (v34)
            {
              v35 = v34;
            }
          }

          else
          {
            v34 = 0;
          }

          CKRecord.subscript.setter();
        }
      }

      else
      {
        v28 = [v1 creationDate];
        if (v28)
        {
          v29 = v28;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        v36 = type metadata accessor for Date();
        v37 = *(v36 - 8);
        (*(v37 + 56))(v5, v30, 1, v36);
        sub_100031B58(v5, v9, v15, qword_100795AE0);
        if ((*(v37 + 48))(v9, 1, v36) == 1)
        {
          sub_1000050A4(v9, v15, qword_100795AE0);
          v41 = 0u;
          v42 = 0u;
          v43 = 0;
        }

        else
        {
          *(&v42 + 1) = v36;
          v43 = &protocol witness table for Date;
          v16 = sub_1000103CC(&v41);
          (*(v37 + 32))(v16, v9, v36);
        }

        sub_10018E134();
        CKRecordKeyValueSetting.subscript.setter();
      }

      ++v13;
    }

    while (v13 != 3);
  }

  v38 = v12;
  result.value.super.isa = v38;
  result.is_nil = v11;
  return result;
}

id REMCDTemplateSection.parentCDObject.getter()
{
  v1 = [v0 template];

  return v1;
}

Swift::Void __swiftcall REMCDTemplateSection.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935AF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093A340);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093A368, &qword_100797540);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDTemplateSection.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935AF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10093A340);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 template];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for section in template {templateSectionID: %{public}s, templateID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 template];
  if (!v38)
  {
    return;
  }

  v74 = v38;
  if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v39 = v4;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v40, v41))
    {
LABEL_28:

      [v39 markForDeletion];
      goto LABEL_29;
    }

    v42 = 7104878;
    v43 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v43 = 136446466;
    v44 = [v39 remObjectID];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 description];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v42 = 7104878;
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 7104878;
    }

    v50 = sub_10000668C(v47, v49, &v75);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v43 + 4) = v50;
    *(v43 + 12) = 2082;
    v58 = [v39 template];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 remObjectID];
      if (v60)
      {
        v61 = v60;
        v62 = [v60 description];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

LABEL_27:
        v65 = sub_10000668C(v42, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v40, v41, "Template is marked for deletion but section in template is not {templateSectionID: %{public}s, templateID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }
    }

    v64 = 0xE300000000000000;
    goto LABEL_27;
  }

LABEL_29:
  [v74 forcePushToCloud];
}

unint64_t sub_10018E0E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DD968, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10018E134()
{
  result = qword_10093A360;
  if (!qword_10093A360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093A360);
  }

  return result;
}

uint64_t _s7remindd20REMCDTemplateSectionC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935AF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093A340);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093A368, &qword_100797540);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd20REMCDTemplateSectionC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935AF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093A340);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093A368, &qword_100797540);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_10018E470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018E4E0()
{
  result = qword_10093A3E0;
  if (!qword_10093A3E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A3E0);
  }

  return result;
}

unint64_t sub_10018E548(uint64_t a1)
{
  result = sub_10018E570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018E570()
{
  result = qword_10093A3F0;
  if (!qword_10093A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A3F0);
  }

  return result;
}

unint64_t sub_10018E5C4(uint64_t a1)
{
  result = sub_10018E5EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018E5EC()
{
  result = qword_10093A3F8;
  if (!qword_10093A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A3F8);
  }

  return result;
}

unint64_t sub_10018E644()
{
  result = qword_10093A400;
  if (!qword_10093A400)
  {
    sub_1000F514C(&qword_10093A408, &qword_100797588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A400);
  }

  return result;
}

unint64_t sub_10018E6AC()
{
  result = qword_10093A410;
  if (!qword_10093A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A410);
  }

  return result;
}

void sub_10018E700()
{
  v2 = type metadata accessor for REMRemindersListDataView.Diff();
  v3 = *(v2 - 8);
  *&v5 = __chkstk_darwin(v2, v4).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 fetchResultTokenToDiffAgainst];
  sub_100534D44(v8, v7);

  if (!v1)
  {
    v9 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
    v10 = REMReminderDetailDataView.CheckUpdateInvocation.Parameters.reminderID.getter();
    sub_10024111C(v10, v9);

    v9, v11, v12, v13, v14, v15, v16, v17;
    REMReminderDetailDataView.CheckUpdateInvocation.Result.init(hasUpdates:)();
    (*(v3 + 8))(v7, v2);
  }
}

unint64_t sub_10018E860(uint64_t a1)
{
  result = sub_10018E888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018E888()
{
  result = qword_10093A500;
  if (!qword_10093A500)
  {
    type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A500);
  }

  return result;
}

double destroy for RDAutoCategorizationQueueItemConfiguration(uint64_t a1)
{
  v9 = *(a1 + 8);

  v9, v2, v3, v4, v5, v6, v7, v8;
  return result;
}

uint64_t sub_10018E91C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for RDAutoCategorizationQueueItemConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7, v8, v9, v10, v11, v12, v13, v14;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for RDAutoCategorizationQueueItemConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;
  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizationQueueItemConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizationQueueItemConfiguration(uint64_t result, int a2, int a3)
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

uint64_t sub_10018EAA0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A508);
  v1 = sub_100006654(v0, qword_10093A508);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10018EB68@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v5 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  __chkstk_darwin(v5, v6);
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v84 - v9;
  v11 = type metadata accessor for Date();
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v84 - v17;
  __chkstk_darwin(v19, v20);
  v93 = &v84 - v21;
  v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v84 - v24;
  v26 = type metadata accessor for UUID();
  v97 = *(v26 - 8);
  __chkstk_darwin(v26, v27);
  v96 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 8);
  if (v29 == 4 || !sub_10018F950(*(a1 + 8), &off_1008DEAE8) || v29 != 3)
  {
    goto LABEL_15;
  }

  sub_100010364(a1 + v5[9], v25, &unk_100939D90, "8\n\r");
  v30 = v97;
  if ((*(v97 + 48))(v25, 1, v26) == 1)
  {
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
LABEL_15:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  (*(v30 + 32))(v96, v25, v26);
  sub_100010364(a1 + v5[7], v10, &unk_100938850, qword_100795AE0);
  v91 = v26;
  v31 = v30;
  v33 = v94;
  v32 = v95;
  if ((*(v94 + 48))(v10, 1, v95) == 1)
  {
    (*(v31 + 8))(v96, v91);
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    goto LABEL_15;
  }

  v34 = *(v33 + 32);
  v35 = v93;
  v90 = v33 + 32;
  v89 = v34;
  v34(v93, v10, v32);
  v36 = (a1 + v5[10]);
  v37 = v36[1];
  if (v37 >> 60 == 15)
  {
    (*(v33 + 8))(v35, v32);
    (*(v97 + 8))(v96, v91);
    goto LABEL_15;
  }

  v38 = *v36;
  v39 = objc_opt_self();
  sub_100029344(v38, v37);
  v40 = v37;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v86 = [v39 objectIDWithUUID:isa];

  v42 = objc_autoreleasePoolPush();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100190834();
  v87 = v38;
  v88 = v40;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v42);
  v43 = v99;
  v85 = v100;
  v44 = *(v94 + 16);
  v44(v18, v93, v95);
  type metadata accessor for RDAutoCategorizerTypeFactory();
  static RDAutoCategorizerTypeFactory.create()(&v99);
  type metadata accessor for REMObjectID_Codable();
  sub_100190948();

  v45 = Array<A>.removingDuplicates()();
  v43, v46, v47, v48, v49, v50, v51, v52;
  if (v45 >> 62)
  {
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

    v84 = _bridgeCocoaArray<A>(_:)();
    v43, v77, v78, v79, v80, v81, v82, v83;
    v43 = v45;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v84 = v45;
  }

  v43, v53, v54, v55, v56, v57, v58, v59;
  v45, v60, v61, v62, v63, v64, v65, v66;
  v67 = v95;
  v44(v14, v18, v95);
  sub_10000A87C(&v99, v98);
  v68 = type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList(0);
  v69 = swift_allocObject();
  *(v69 + 16) = 3;
  v70 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog;
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  v72 = sub_100006654(v71, qword_100975140);
  (*(*(v71 - 8) + 16))(v69 + v70, v72, v71);
  sub_10000607C(&v99);
  v73 = *(v94 + 8);
  v73(v18, v67);
  *(v69 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_listObjectID) = v86;
  *(v69 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_reminderIDs) = v84;
  *(v69 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_isListCategorization) = v85 & 1;
  v89(v69 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_queuedAt, v14, v67);
  v74 = v92;
  *(v69 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_store) = v92;
  sub_100054B6C(v98, v69 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType);
  *(a3 + 24) = v68;
  *(a3 + 32) = &off_1008F3420;
  v75 = v74;
  sub_100031A14(v87, v88);
  *a3 = v69;
  v73(v93, v67);
  (*(v97 + 8))(v96, v91);
  return result;
}

BOOL sub_10018F5D8(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = *(a2 + 16);
  v9 = (a2 + 32);
  v10 = a1;
  do
  {
    v55 = v8;
    v25 = v8 - 1;
    if (!v8)
    {
      break;
    }

    v26 = *v9;
    if (v26 > 4)
    {
      if (*v9 <= 6u)
      {
        if (v26 == 5)
        {
          v32 = 0xD000000000000021;
        }

        else
        {
          v32 = 0xD000000000000023;
        }

        if (v26 == 5)
        {
          v33 = 0x80000001007E91D0;
        }

        else
        {
          v33 = 0x80000001007E9200;
        }
      }

      else if (v26 == 7)
      {
        v32 = 0xD000000000000019;
        v33 = 0x80000001007E9230;
      }

      else if (v26 == 8)
      {
        v32 = 0xD000000000000019;
        v33 = 0x80000001007E9250;
      }

      else
      {
        v32 = 0xD00000000000001BLL;
        v33 = 0x80000001007E9270;
      }
    }

    else
    {
      v27 = 0xD000000000000018;
      v28 = 0xD00000000000001DLL;
      if (v26 == 3)
      {
        v29 = 0x80000001007E91A0;
      }

      else
      {
        v28 = 0x44496E6F73726570;
        v29 = 0xEC000000746C6153;
      }

      if (v26 == 2)
      {
        v30 = 0x80000001007E9180;
      }

      else
      {
        v27 = v28;
        v30 = v29;
      }

      if (*v9)
      {
        v31 = 0x80000001007E9160;
      }

      else
      {
        v31 = 0x80000001007E9140;
      }

      if (*v9 <= 1u)
      {
        v32 = 0xD000000000000012;
      }

      else
      {
        v32 = v27;
      }

      if (*v9 <= 1u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v30;
      }
    }

    v34 = 0xD000000000000019;
    v35 = 0xD00000000000001BLL;
    if (v10 == 8)
    {
      v35 = 0xD000000000000019;
    }

    v36 = 0x80000001007E9270;
    if (v10 == 8)
    {
      v36 = 0x80000001007E9250;
    }

    if (v10 != 7)
    {
      v34 = v35;
    }

    v37 = 0x80000001007E9230;
    if (v10 != 7)
    {
      v37 = v36;
    }

    v38 = 0xD000000000000021;
    if (v10 != 5)
    {
      v38 = 0xD000000000000023;
    }

    v39 = 0x80000001007E9200;
    if (v10 == 5)
    {
      v39 = 0x80000001007E91D0;
    }

    if (v10 <= 6)
    {
      v34 = v38;
      v37 = v39;
    }

    v40 = 0xD000000000000018;
    v41 = 0xD00000000000001DLL;
    if (v10 == 3)
    {
      v42 = 0x80000001007E91A0;
    }

    else
    {
      v41 = 0x44496E6F73726570;
      v42 = 0xEC000000746C6153;
    }

    if (v10 == 2)
    {
      v43 = 0x80000001007E9180;
    }

    else
    {
      v40 = v41;
      v43 = v42;
    }

    if (v10)
    {
      v44 = 0x80000001007E9160;
    }

    else
    {
      v44 = 0x80000001007E9140;
    }

    if (v10 <= 1)
    {
      v40 = 0xD000000000000012;
      v43 = v44;
    }

    if (v10 <= 4)
    {
      v45 = v40;
    }

    else
    {
      v45 = v34;
    }

    if (v10 <= 4)
    {
      v46 = v43;
    }

    else
    {
      v46 = v37;
    }

    if (v32 == v45 && v33 == v46)
    {
      v33, a2, v45, a4, a5, a6, 0x80000001007E9180, a8;
      v46, v47, v48, v49, v50, v51, v52, v53;
      return v55 != 0;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v33, v11, v12, v13, v14, v15, v16, v17;
    v46, v18, v19, v20, v21, v22, v23, v24;
    v8 = v25;
    ++v9;
  }

  while ((v56 & 1) == 0);
  return v55 != 0;
}

BOOL sub_10018F88C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_100395898(*v4);
    v9 = v8;
    v11 = sub_100395898(v2);
    v17 = v7;
    v18 = v10;
    if (v17 == v11 && v9 == v10)
    {
      v9, v10, v11, v12, v13, v14, v15, v16;
      v18, v35, v36, v37, v38, v39, v40, v41;
      return v5 != 0;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9, v21, v22, v23, v24, v25, v26, v27;
    v18, v28, v29, v30, v31, v32, v33, v34;
    ++v4;
  }

  while ((v20 & 1) == 0);
  return v5 != 0;
}

BOOL sub_10018F950(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while ((0x65000300020001uLL >> (16 * a1)) != (0x65000300020001uLL >> (16 * v6)));
  return v4 != 0;
}

BOOL sub_10018F9A4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

Class sub_10018F9D4(objc_class *a1, unint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v7 = v6;
  v197 = a4;
  LODWORD(v204) = a3;
  v11 = type metadata accessor for Date();
  v198 = *(v11 - 8);
  v199 = v11;
  __chkstk_darwin(v11, v12);
  v196 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v200 = *(v14 - 8);
  v201 = v14;
  __chkstk_darwin(v14, v15);
  v195 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v17, v18);
  isa = (&v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21, v22);
  v25 = &v188 - v24;
  v206 = &_swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
LABEL_62:
    v5 = v23;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v23 = v5;
  }

  else
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v191 = v25;
  v192 = isa;
  v194 = v23;
  v205 = a5;
  if (v26)
  {
    ObjCClassFromMetadata = a1;
    v203 = v7;
    v27 = 0;
    v25 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v28 = *(a2 + 8 * v27 + 32);
      }

      v5 = v28;
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      a5 = REMObjectID.codable.getter();

      v5 = &v206;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      isa = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (isa >= *((v206 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v27;
      if (v29 == v26)
      {
        v30 = v206;
        a1 = ObjCClassFromMetadata;
        v7 = v203;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v30 = &_swiftEmptyArrayStorage;
LABEL_15:
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = a1;
  v203 = a1;
  v32 = sub_100016788(&off_1008DEB10, inited, 1);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for REMCDOperationQueueItem();
  a1 = [objc_allocWithZone(NSFetchRequest) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [(objc_class *)ObjCClassFromMetadata entity];
  [(objc_class *)a1 setEntity:v33];

  [(objc_class *)a1 setAffectedStores:0];
  [(objc_class *)a1 setPredicate:v32];

  if (qword_100935F10 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(objc_class *)a1 setSortDescriptors:isa];

  [(objc_class *)a1 setReturnsObjectsAsFaults:0];
  v34 = NSManagedObjectContext.fetch<A>(_:)();
  if (v7)
  {
    v30, v35, v36, v37, v38, v39, v40, v41;
LABEL_19:
  }

  else
  {
    v42 = v34;

    v190 = 0;
    if (v42 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v50 = v23;
    }

    else
    {
      v50 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v189 = v30;
    if (v50)
    {
      a5 = 0;
      v7 = (v42 & 0xC000000000000001);
      a2 = v42 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v7)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a5 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v23 = *(v42 + 8 * a5 + 32);
        }

        a1 = v23;
        v51 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        isa = [(objc_class *)v23 objectID];
        v25 = [(objc_class *)isa isTemporaryID];

        if (v25)
        {
          break;
        }

        ++a5;
        if (v51 == v50)
        {
          goto LABEL_32;
        }
      }

      v42, v52, v53, v54, v55, v56, v57, v58;
      v70 = [(objc_class *)a1 configurationData];
      if (!v70)
      {

        goto LABEL_33;
      }

      v71 = v70;
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v72;

      isa = objc_autoreleasePoolPush();
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_100190834();
      v73 = v190;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v73)
      {
        v189, v74, v75, v76, v77, v78, v79, v80;

        objc_autoreleasePoolPop(isa);
        sub_10001BBA0(v27, a5);
        goto LABEL_19;
      }

      objc_autoreleasePoolPop(isa);
      v122 = v207;
      sub_100272024(v189);
      v123 = v206;
      v124 = objc_autoreleasePoolPush();
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v206 = v123;
      v207 = v122;
      sub_1001907E0();
      v125 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v26 = v125;
      v25 = v126;
      v123, v126, v127, v128, v129, v130, v131, v132;

      objc_autoreleasePoolPop(v124);
      v145 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)a1 setConfigurationData:v145];

      if (qword_100935B00 != -1)
      {
        swift_once();
      }

      v146 = type metadata accessor for Logger();
      sub_100006654(v146, qword_10093A508);
      isa = a1;
      v5 = Logger.logObject.getter();
      v147 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v147))
      {
        v204 = v5;
        v205 = v25;
        v148 = swift_slowAlloc();
        ObjCClassFromMetadata = swift_slowAlloc();
        v206 = ObjCClassFromMetadata;
        *v148 = 136446722;
        v149 = sub_1001424F8(v193);
        v151 = v150;
        v152 = sub_10000668C(v149, v150, &v206);
        v151, v153, v154, v155, v156, v157, v158, v159;
        *(v148 + 4) = v152;
        *(v148 + 12) = 2080;
        LOBYTE(v208) = sub_1001AEAE8([(objc_class *)isa operationTypeRawValue]);
        sub_1000F5104(&qword_10093A528, &unk_1007976E0);
        v160 = Optional.descriptionOrNil.getter();
        v162 = v161;
        v163 = sub_10000668C(v160, v161, &v206);
        v162, v164, v165, v166, v167, v168, v169, v170;
        *(v148 + 14) = v163;
        *(v148 + 22) = 2080;
        v171 = [(objc_class *)isa entityIdentifier];
        LODWORD(v203) = v147;
        if (v171)
        {
          v172 = v191;
          v173 = v171;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v174 = 0;
        }

        else
        {
          v174 = 1;
          v172 = v191;
        }

        (*(v200 + 56))(v172, v174, 1, v201);
        v177 = Optional.descriptionOrNil.getter();
        v179 = v178;
        sub_1000050A4(v172, &unk_100939D90, "8\n\r");
        v180 = sub_10000668C(v177, v179, &v206);
        v179, v181, v182, v183, v184, v185, v186, v187;
        *(v148 + 24) = v180;
        v5 = v204;
        _os_log_impl(&_mh_execute_header, v204, v203, "%{public}s: Updated unsaved auto-categorization operation queue item {operationType: %s, entityIdentifier: %s}", v148, 0x20u);
        swift_arrayDestroy();

        sub_10001BBA0(v27, a5);
        v175 = v26;
        v176 = v205;
        goto LABEL_59;
      }

LABEL_56:
      sub_10001BBA0(v27, a5);
      v175 = v26;
      v176 = v25;
LABEL_59:
      sub_10001BBA0(v175, v176);

      return isa;
    }

LABEL_32:
    v42, v43, v44, v45, v46, v47, v48, v49;
LABEL_33:
    isa = v190;
    v59 = v204 & 1;
    v60 = objc_autoreleasePoolPush();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v61 = v189;
    v206 = v189;
    v207 = v59;
    sub_1001907E0();
    v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (isa)
    {
      v61, v63, v64, v65, v66, v67, v68, v69;

      objc_autoreleasePoolPop(v60);
    }

    else
    {
      v81 = v62;
      v82 = v63;
      v61, v63, v64, v65, v66, v67, v68, v69;

      objc_autoreleasePoolPop(v60);
      v83 = objc_allocWithZone(ObjCClassFromMetadata);
      v84 = [v83 initWithContext:v205];
      [v84 setOperationTypeRawValue:101];
      [v84 setPriorityRawValue:20];
      v85 = [(objc_class *)v203 uuid];
      v86 = v195;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v200 + 8))(v86, v201);
      [v84 setEntityIdentifier:v87];

      v88 = Data._bridgeToObjectiveC()().super.isa;
      [v84 setConfigurationData:v88];

      sub_10001BBA0(v81, v82);
      [v84 setAccount:v197];
      v89 = v84;
      v90 = v196;
      Date.init()();
      v91 = Date._bridgeToObjectiveC()().super.isa;
      (*(v198 + 8))(v90, v199);
      [v89 setCreationDate:v91];

      if (qword_100935B00 != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      sub_100006654(v92, qword_10093A508);
      isa = v89;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *v95 = 136446722;
        v206 = v193;
        swift_getMetatypeMetadata();
        v96 = String.init<A>(describing:)();
        v98 = v97;
        v99 = sub_10000668C(v96, v97, &v208);
        v98, v100, v101, v102, v103, v104, v105, v106;
        *(v95 + 4) = v99;
        *(v95 + 12) = 2082;
        LOBYTE(v206) = sub_1001AEAE8([(objc_class *)isa operationTypeRawValue]);
        sub_1000F5104(&qword_10093A528, &unk_1007976E0);
        v107 = Optional.descriptionOrNil.getter();
        v109 = v108;
        v110 = sub_10000668C(v107, v108, &v208);
        v109, v111, v112, v113, v114, v115, v116, v117;
        *(v95 + 14) = v110;
        *(v95 + 22) = 2082;
        v118 = [(objc_class *)isa entityIdentifier];
        if (v118)
        {
          v119 = v192;
          v120 = v118;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v121 = 0;
        }

        else
        {
          v121 = 1;
          v119 = v192;
        }

        (*(v200 + 56))(v119, v121, 1, v201);
        v133 = Optional.descriptionOrNil.getter();
        v135 = v134;

        sub_1000050A4(v119, &unk_100939D90, "8\n\r");
        v136 = sub_10000668C(v133, v135, &v208);
        v135, v137, v138, v139, v140, v141, v142, v143;
        *(v95 + 24) = v136;
        _os_log_impl(&_mh_execute_header, v93, v94, "%{public}s: Inserted auto-categorization operation queue item {operationType: %{public}s, entityIdentifier: %{public}s}", v95, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  return isa;
}

unint64_t sub_1001907E0()
{
  result = qword_10093A520;
  if (!qword_10093A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A520);
  }

  return result;
}

unint64_t sub_100190834()
{
  result = qword_10093A530;
  if (!qword_10093A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A530);
  }

  return result;
}

uint64_t sub_100190888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001908EC(uint64_t a1)
{
  v2 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100190948()
{
  result = qword_100943E80;
  if (!qword_100943E80)
  {
    type metadata accessor for REMObjectID_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943E80);
  }

  return result;
}

uint64_t sub_1001909A4()
{
  v1 = v0;
  v289 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v289, v2);
  v288 = &v288 - v3;
  v291[0] = 0;
  v291[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v291[1], v4, v5, v6, v7, v8, v9, v10;
  v291[0] = 0xD000000000000027;
  v291[1] = 0x80000001007EEDB0;
  v11 = [*v0 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23._countAndFlagsBits = 8069182;
  v23._object = 0xE300000000000000;
  String.append(_:)(v23);
  v25 = v291[0];
  v24 = v291[1];
  v291[0] = 0;
  v291[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v291[1], v26, v27, v28, v29, v30, v31, v32;
  strcpy(v291, "remObjectID: ");
  HIWORD(v291[1]) = -4864;
  *&v290 = v1[1];
  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  v33._countAndFlagsBits = Optional.descriptionOrNil.getter();
  object = v33._object;
  String.append(_:)(v33);
  object, v35, v36, v37, v38, v39, v40, v41;
  v42._countAndFlagsBits = 8236;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);
  v43 = v291[0];
  v44 = v291[1];
  v291[0] = v25;
  v291[1] = v24;

  v45._countAndFlagsBits = v43;
  v45._object = v44;
  String.append(_:)(v45);
  v24, v46, v47, v48, v49, v50, v51, v52;
  v44, v53, v54, v55, v56, v57, v58, v59;
  v61 = v291[0];
  v60 = v291[1];
  v291[0] = 0x203A656D616ELL;
  v291[1] = 0xE600000000000000;
  v290 = *(v1 + 1);
  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v62._countAndFlagsBits = Optional.descriptionOrNil.getter();
  v63 = v62._object;
  String.append(_:)(v62);
  v63, v64, v65, v66, v67, v68, v69, v70;
  v71._countAndFlagsBits = 8236;
  v71._object = 0xE200000000000000;
  String.append(_:)(v71);
  v72 = v291[0];
  v73 = v291[1];
  v291[0] = v61;
  v291[1] = v60;

  v74._countAndFlagsBits = v72;
  v74._object = v73;
  String.append(_:)(v74);
  v60, v75, v76, v77, v78, v79, v80, v81;
  v73, v82, v83, v84, v85, v86, v87, v88;
  v89 = v291[0];
  v90 = v291[1];
  v291[0] = 0;
  v291[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  v291[1], v91, v92, v93, v94, v95, v96, v97;
  v291[0] = 0xD00000000000001BLL;
  v291[1] = 0x80000001007EEDE0;
  if (v1[4])
  {
    v98 = 1702195828;
  }

  else
  {
    v98 = 0x65736C6166;
  }

  if (v1[4])
  {
    v99 = 0xE400000000000000;
  }

  else
  {
    v99 = 0xE500000000000000;
  }

  v100 = v99;
  String.append(_:)(*&v98);
  v99, v101, v102, v103, v104, v105, v106, v107;
  v108._countAndFlagsBits = 8236;
  v108._object = 0xE200000000000000;
  String.append(_:)(v108);
  v109 = v291[0];
  v110 = v291[1];
  v291[0] = v89;
  v291[1] = v90;

  v111._countAndFlagsBits = v109;
  v111._object = v110;
  String.append(_:)(v111);
  v90, v112, v113, v114, v115, v116, v117, v118;
  v110, v119, v120, v121, v122, v123, v124, v125;
  v126 = v291[0];
  v127 = v291[1];
  v291[0] = 0;
  v291[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v291[1], v128, v129, v130, v131, v132, v133, v134;
  v291[0] = 0xD00000000000001ELL;
  v291[1] = 0x80000001007EEE00;
  if (*(v1 + 33))
  {
    v135 = 1702195828;
  }

  else
  {
    v135 = 0x65736C6166;
  }

  if (*(v1 + 33))
  {
    v136 = 0xE400000000000000;
  }

  else
  {
    v136 = 0xE500000000000000;
  }

  v137 = v1;
  v138 = v136;
  String.append(_:)(*&v135);
  v136, v139, v140, v141, v142, v143, v144, v145;
  v146._countAndFlagsBits = 8236;
  v146._object = 0xE200000000000000;
  String.append(_:)(v146);
  v147 = v291[0];
  v148 = v291[1];
  v291[0] = v126;
  v291[1] = v127;

  v149._countAndFlagsBits = v147;
  v149._object = v148;
  String.append(_:)(v149);
  v127, v150, v151, v152, v153, v154, v155, v156;
  v148, v157, v158, v159, v160, v161, v162, v163;
  v164 = v291[0];
  v165 = v291[1];
  v291[0] = 0;
  v291[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v291[1], v166, v167, v168, v169, v170, v171, v172;
  v291[0] = 0xD000000000000026;
  v291[1] = 0x80000001007EEE20;
  if (*(v1 + 34))
  {
    v173 = 1702195828;
  }

  else
  {
    v173 = 0x65736C6166;
  }

  if (*(v1 + 34))
  {
    v174 = 0xE400000000000000;
  }

  else
  {
    v174 = 0xE500000000000000;
  }

  v175 = v174;
  String.append(_:)(*&v173);
  v174, v176, v177, v178, v179, v180, v181, v182;
  v183._countAndFlagsBits = 8236;
  v183._object = 0xE200000000000000;
  String.append(_:)(v183);
  v184 = v291[0];
  v185 = v291[1];
  v291[0] = v164;
  v291[1] = v165;

  v186._countAndFlagsBits = v184;
  v186._object = v185;
  String.append(_:)(v186);
  v165, v187, v188, v189, v190, v191, v192, v193;
  v185, v194, v195, v196, v197, v198, v199, v200;
  v202 = v291[0];
  v201 = v291[1];
  v291[0] = 0;
  v291[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v291[1], v203, v204, v205, v206, v207, v208, v209;
  v291[0] = 0xD000000000000016;
  v291[1] = 0x80000001007EEE50;
  if (v1[6])
  {

    v210 = v288;
    Locale.init(identifier:)();
    v211 = 0;
  }

  else
  {
    v211 = 1;
    v210 = v288;
  }

  v212 = type metadata accessor for Locale();
  (*(*(v212 - 8) + 56))(v210, v211, 1, v212);
  v213 = Optional.descriptionOrNil.getter();
  v215 = v214;
  sub_1000050A4(v210, &unk_10093F420, &unk_100797AE0);
  v216._countAndFlagsBits = v213;
  v216._object = v215;
  String.append(_:)(v216);
  v215, v217, v218, v219, v220, v221, v222, v223;
  v224._countAndFlagsBits = 8236;
  v224._object = 0xE200000000000000;
  String.append(_:)(v224);
  v225 = v291[0];
  v226 = v291[1];
  v291[0] = v202;
  v291[1] = v201;

  v227._countAndFlagsBits = v225;
  v227._object = v226;
  String.append(_:)(v227);
  v201, v228, v229, v230, v231, v232, v233, v234;
  v226, v235, v236, v237, v238, v239, v240, v241;
  v243 = v291[0];
  v242 = v291[1];
  v291[0] = 0;
  v291[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v291[1], v244, v245, v246, v247, v248, v249, v250;
  strcpy(v291, "isSharedToMe: ");
  HIBYTE(v291[1]) = -18;
  if (v137[7])
  {
    v251 = 1702195828;
  }

  else
  {
    v251 = 0x65736C6166;
  }

  if (v137[7])
  {
    v252 = 0xE400000000000000;
  }

  else
  {
    v252 = 0xE500000000000000;
  }

  v253 = v252;
  String.append(_:)(*&v251);
  v252, v254, v255, v256, v257, v258, v259, v260;
  v261 = v291[0];
  v262 = v291[1];
  v291[0] = v243;
  v291[1] = v242;

  v263._countAndFlagsBits = v261;
  v263._object = v262;
  String.append(_:)(v263);
  v242, v264, v265, v266, v267, v268, v269, v270;
  v262, v271, v272, v273, v274, v275, v276, v277;
  v278 = v291[1];

  v279._countAndFlagsBits = 125;
  v279._object = 0xE100000000000000;
  String.append(_:)(v279);
  v278, v280, v281, v282, v283, v284, v285, v286;
  return v291[0];
}

unint64_t sub_100190FF4()
{
  _StringGuts.grow(_:)(17);
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  strcpy(&v87, "remObjectID: ");
  HIWORD(v87._object) = -4864;
  v7._countAndFlagsBits = UUID.description.getter();
  object = v7._object;
  String.append(_:)(v7);
  object, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  String.append(_:)(v87);
  v87._object, v17, v18, v19, v20, v21, v22, v23;
  _StringGuts.grow(_:)(17);
  0xE000000000000000, v24, v25, v26, v27, v28, v29, v30;
  _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v31._countAndFlagsBits = Optional.descriptionOrNil.getter();
  v32 = v31._object;
  String.append(_:)(v31);
  v32, v33, v34, v35, v36, v37, v38, v39;

  v40._countAndFlagsBits = 0x6163696E6F6E6163;
  v40._object = 0xEF203A656D614E6CLL;
  String.append(_:)(v40);
  0x80000001007EED40, v41, v42, v43, v44, v45, v46, v47;
  0xEF203A656D614E6CLL, v48, v49, v50, v51, v52, v53, v54;
  strcpy(&v87, "displayName: ");
  HIWORD(v87._object) = -4864;
  v55._countAndFlagsBits = Optional.descriptionOrNil.getter();
  v56 = v55._object;
  String.append(_:)(v55);
  v56, v57, v58, v59, v60, v61, v62, v63;

  String.append(_:)(v87);
  0x80000001007EED40, v64, v65, v66, v67, v68, v69, v70;
  v87._object, v71, v72, v73, v74, v75, v76, v77;

  v78._countAndFlagsBits = 125;
  v78._object = 0xE100000000000000;
  String.append(_:)(v78);
  0x80000001007EED40, v79, v80, v81, v82, v83, v84, v85;
  return 0xD000000000000031;
}

unint64_t sub_100191244(void *a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(17);
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  strcpy(&v59, "remObjectID: ");
  HIWORD(v59._object) = -4864;
  v13 = [a1 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);
  v16, v18, v19, v20, v21, v22, v23, v24;
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  String.append(_:)(v59);
  v59._object, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = a2;
  v33._object = a3;
  String.append(_:)(v33);
  v34 = strcpy(&v59, "title: ");

  v35._countAndFlagsBits = v34;
  v35._object = 0xE700000000000000;
  String.append(_:)(v35);
  0x80000001007EED80, v36, v37, v38, v39, v40, v41, v42;
  0xE700000000000000, v43, v44, v45, v46, v47, v48, v49;

  v50._countAndFlagsBits = 125;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  0x80000001007EED80, v51, v52, v53, v54, v55, v56, v57;
  return 0xD00000000000002ELL;
}

double sub_1001913E0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

void sub_100191400(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v5, v6);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  v50 = xmmword_1007953F0;
  *(v9 + 16) = xmmword_1007953F0;
  *(v9 + 32) = a1;
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100797700;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  v11 = swift_initStackObject();
  *(v11 + 16) = v50;
  *(v11 + 32) = swift_getKeyPath();
  *&v50 = a1;
  v12 = sub_10001F6F4();
  v13 = sub_100405438(inited, v11, 0, v12);
  inited, v14, v15, v16, v17, v18, v19, v20;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v13 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v22 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100193BC4(v8, _s10PredicatesOMa_1);

    return;
  }

  v51 = v22;
  v23 = v22;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
  v24 = Sequence.elements<A>(ofType:)();

  sub_100193BC4(v8, _s10PredicatesOMa_1);
  v23, v25, v26, v27, v28, v29, v30, v31;
  if (v24 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

LABEL_12:
    v24, v32, v33, v34, v35, v36, v37, v38;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v50];
    swift_willThrow();
    return;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v24 + 32);
LABEL_10:
    v47 = v39;
    v24, v40, v41, v42, v43, v44, v45, v46;
    sub_100192C08(v47, v52);
    v48 = v52[1];
    v49 = v53[0];
    *a2 = v52[0];
    a2[1] = v48;
    a2[2] = v49;
    *(a2 + 41) = *(v53 + 9);
    return;
  }

  __break(1u);
}

void sub_100191828(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 membershipsOfRemindersInSectionsChecksum];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100191890(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setMembershipsOfRemindersInSectionsChecksum:?];
}

void sub_100191924(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_100191994(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = isa;
  [v6 *a5];
}

void sub_100191A0C(uint64_t a1@<X0>, int a2@<W1>, objc_class *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v202 = a4;
  v189 = a5;
  v9 = _s10PredicatesOMa(0);
  __chkstk_darwin(v9, v10);
  v191 = (v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12, v13);
  v15 = (v186 - v14);
  v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 104);
  LODWORD(v193) = a2;
  if (a2)
  {
    v23 = 0;
  }

  else
  {
    v23 = a1;
  }

  v190 = v23;
  v24 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  if ((a2 & 1) == 0)
  {
    v24 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  v22(v21, *v24, v16, v19);
  v25 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v26 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
  v15->super.isa = a3;
  v196 = v21;
  v197 = v17;
  v27 = *(v17 + 16);
  v198 = v16;
  v28 = v15;
  v27(v15 + v26, v21, v16);
  v188 = v9;
  swift_storeEnumTagMultiPayload();
  v29 = qword_100936080;
  v192 = a3;

  if (v29 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v30 = qword_100974E30;
    v201 = v28;
    v31 = sub_100043AA8();
    v32 = [objc_allocWithZone(NSFetchRequest) init];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [ObjCClassFromMetadata entity];
    [v32 setEntity:v33];

    [v32 setAffectedStores:0];
    [v32 setPredicate:v31];

    [v32 setFetchLimit:0];
    v199 = v32;
    [v32 setFetchOffset:0];
    v34 = &_swiftEmptyArrayStorage;
    v207 = &_swiftEmptyArrayStorage;
    v35 = sub_1000F5104(&qword_100949370, &unk_100797770);
    v36 = sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    v186[2] = v35;
    v186[1] = v36;
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v207 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v210 = v207;
    v38 = sub_100235FA0(Predicate);
    Predicate, v39, v40, v41, v42, v43, v44, v45;
    v28 = sub_100277CC0(v38);
    v38, v46, v47, v48, v49, v50, v51, v52;
    v53 = v25;

    v54 = *v28->clientIdentity;
    if (!v54)
    {
      goto LABEL_26;
    }

LABEL_10:
    v209 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v54 & ~(v54 >> 63), 0);
    if (v54 < 0)
    {
      goto LABEL_57;
    }

    v194 = v30;
    v195 = v53;
    v55 = 0;
    v34 = v209;
    v203 = v54;
    v204 = v28 & 0xC000000000000001;
    while (1)
    {
      v25 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v204)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v55 >= *v28->clientIdentity)
        {
          goto LABEL_23;
        }

        v56 = *&v28->clientIdentity[8 * v55 + 16];
      }

      v57 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v58)
      {
        v207 = 0;
        v208 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v184._object = 0x80000001007EC120;
        v184._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v184);
        v206 = v56;
        sub_1000F5104(&unk_100939F10, &qword_100797F30);
        goto LABEL_70;
      }

      v9 = v57;
      v5 = v58;

      v209 = v34;
      v15 = *(v34 + 16);
      v59 = *(v34 + 24);
      if (v15 >= v59 >> 1)
      {
        sub_100026EF4((v59 > 1), &v15->super.isa + 1, 1);
        v34 = v209;
      }

      *(v34 + 16) = &v15->super.isa + 1;
      v60 = v34 + 16 * v15;
      *(v60 + 32) = v9;
      *(v60 + 40) = v5;
      ++v55;
      if (v25 == v203)
      {

        v30 = v194;
        v53 = v195;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v54 = _CocoaArrayWrapper.endIndex.getter();
  if (v54)
  {
    goto LABEL_10;
  }

LABEL_26:

LABEL_27:
  sub_100271EA8(v34);
  v34 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v61 = v210;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v61, v63, v64, v65, v66, v67, v68, v69;
  v54 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
  v70 = v199;
  [v199 setRelationshipKeyPathsForPrefetching:isa];

  v5 = sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v71 = Array._bridgeToObjectiveC()().super.isa;
  [v70 setSortDescriptors:v71];

  v72 = v200;
  v73 = NSManagedObjectContext.fetch<A>(_:)();
  v15 = v72;
  if (v72)
  {

    sub_100193BC4(v201, _s10PredicatesOMa);
    (*(v197 + 8))(v196, v198);
    return;
  }

  v74 = v70;
  v75 = v73;
  v9 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v73);
  v75, v76, v77, v78, v79, v80, v81, v82;

  sub_100193BC4(v201, _s10PredicatesOMa);
  v211 = v9;
  if ((v193 & 1) == 0)
  {
    if (v9 >> 62)
    {
      goto LABEL_58;
    }

    v83 = v190;
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < v190)
    {
      v194 = v30;
      v195 = v53;
      *v191 = v192;
      swift_storeEnumTagMultiPayload();
      v84 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v30 = v83 - v84;
      if (!__OFSUB__(v83, v84))
      {
        goto LABEL_33;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      for (i = _CocoaArrayWrapper.endIndex.getter(); ; i = *(v30 + 16))
      {
        v186[0] = v5;
        if (!i)
        {
          break;
        }

        v193 = v9;
        v199 = v34;
        v200 = v15;
        v210 = v53;
        v105 = sub_100026EF4(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          goto LABEL_64;
        }

        v9 = 0;
        v5 = v210;
        v203 = i;
        v204 = v30 & 0xC000000000000001;
        while (1)
        {
          v15 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v204)
          {
            v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *(v30 + 16))
            {
              goto LABEL_56;
            }

            v56 = *(v30 + 8 * v9 + 32);
          }

          v106 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v107)
          {
            while (1)
            {
              v207 = 0;
              v208 = 0xE000000000000000;
              _StringGuts.grow(_:)(46);
              v185._object = 0x80000001007EC120;
              v185._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v185);
              v209 = v56;
              sub_1000F5104(&unk_100939F10, &qword_100797F30);
LABEL_70:
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          v54 = v106;
          v108 = v107;

          v210 = v5;
          v34 = *v5->clientIdentity;
          v109 = *&v5->clientIdentity[8];
          v53 = (v34 + 1);
          if (v34 >= v109 >> 1)
          {
            sub_100026EF4((v109 > 1), v34 + 1, 1);
            v5 = v210;
          }

          *v5->clientIdentity = v53;
          v110 = v5 + 16 * v34;
          *(v110 + 4) = v54;
          *(v110 + 5) = v108;
          ++v9;
          if (v15 == v203)
          {

            v15 = v200;
            v54 = 0x10092B000;
            v9 = v193;
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v146 = _CocoaArrayWrapper.endIndex.getter();
        v147 = v190;
        if (v146 >= v190)
        {
          goto LABEL_66;
        }

        v194 = v30;
        v195 = v53;
        *v191 = v192;
        swift_storeEnumTagMultiPayload();
        v148 = _CocoaArrayWrapper.endIndex.getter();
        v30 = v147 - v148;
        if (__OFSUB__(v147, v148))
        {
          goto LABEL_61;
        }

LABEL_33:

        v85 = sub_100043AA8();
        v86 = [objc_allocWithZone(NSFetchRequest) init];
        v87 = [ObjCClassFromMetadata entity];
        [v86 setEntity:v87];

        [v86 setAffectedStores:0];
        [v86 setPredicate:v85];

        [v86 setFetchLimit:v30];
        v201 = v86;
        [v86 setFetchOffset:0];
        v53 = &_swiftEmptyArrayStorage;
        v207 = &_swiftEmptyArrayStorage;
        v88 = Sequence<>.postFetchPredicateTypes.getter();
        v205 = sub_1003EBAD0();
        sub_100271EA8(&_swiftEmptyArrayStorage);
        v89 = sub_100235FA0(v88);
        v88, v90, v91, v92, v93, v94, v95, v96;
        v30 = sub_100277CC0(v89);
        v89, v97, v98, v99, v100, v101, v102, v103;
        if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      v5 = &_swiftEmptyArrayStorage;
LABEL_50:
      sub_100271EA8(v5);
      Array<A>.removeDuplicates()();
      v111 = v205;
      v112 = Array._bridgeToObjectiveC()().super.isa;
      v111, v113, v114, v115, v116, v117, v118, v119;
      v120 = v201;
      [v201 *(v54 + 40)];

      v121 = Array._bridgeToObjectiveC()().super.isa;
      [v120 setSortDescriptors:v121];

      v122 = NSManagedObjectContext.fetch<A>(_:)();
      if (v15)
      {

        sub_100193BC4(v191, _s10PredicatesOMa);
        (*(v197 + 8))(v196, v198);
        v9, v123, v124, v125, v126, v127, v128, v129;
        return;
      }

      v130 = v122;
      v131 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v122);
      v130, v132, v133, v134, v135, v136, v137, v138;

      sub_100193BC4(v191, _s10PredicatesOMa);
      v105 = v131;
      if (v131 >> 62)
      {
LABEL_64:
        v149 = v105;
        v150 = _CocoaArrayWrapper.endIndex.getter();
        v105 = v149;
        if (v150)
        {
          goto LABEL_54;
        }
      }

      else if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:
        sub_100271930(v105);
        goto LABEL_66;
      }

      v105, v139, v140, v141, v142, v143, v144, v145;
    }
  }

LABEL_66:
  v151 = v211;
  v210 = v211;

  v209 = sub_100192AF0(&_swiftEmptyArrayStorage);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000F5104(&qword_10093A568, &unk_100797790);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  Sequence.reduce<A>(into:_:)();
  v151, v152, v153, v154, v155, v156, v157, v158;
  if (v15)
  {
    (*(v197 + 8))(v196, v198);
    v151, v161, v162, v163, v164, v165, v166, v167;
  }

  else
  {
    v168 = v207;
    v207 = v192;
    __chkstk_darwin(v159, v160);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    sub_10000CB90(&qword_10093A580, &qword_10093A578, &qword_1007A1E10);
    v169 = Sequence.compactMap<A>(_:)();
    v168, v170, v171, v172, v173, v174, v175, v176;
    (*(v197 + 8))(v196, v198);
    v151, v177, v178, v179, v180, v181, v182, v183;
    *v189 = v169;
  }
}

void sub_100192794(uint64_t a1, id *a2)
{
  v2 = *a2;
  v3 = [*a2 parentReminder];
  if (v3)
  {

    return;
  }

  v12[0] = 0;
  if (![v2 remObjectIDWithError:v12])
  {
    v11 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v4 = v12[0];
  v5 = [v2 remObjectID];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v2 title];
  if (!v6)
  {

    v5 = 0;
LABEL_9:
    v8 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

LABEL_10:
  v12[0] = v5;
  v12[1] = v8;
  v12[2] = v10;
  sub_1000F5104(&qword_10093A568, &unk_100797790);
  Dictionary.subscript.setter();
}

void sub_100192918(id *a1, uint64_t a2)
{
  v2 = *a1;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10018BA8C();
  v3 = v2;
  Dictionary.subscript.getter();
}

void sub_1001929B4(void *a1, id *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = [*a2 canonicalName];
  if (v5)
  {
  }

  else
  {
    v6 = [v4 displayName];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      sub_10013BCF4();
      v10 = StringProtocol.lowercased(with:)();
      v12 = v11;
      v9, v11, v13, v14, v15, v16, v17, v18;
      if (*(*a1 + 16) && (sub_100005F4C(v10, v12), (v19 & 1) != 0))
      {
        v12, v19, v20, v21, v22, v23, v24, v25;
      }

      else
      {
        v26 = v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *a1;
        sub_1002C86B4(v26, v10, v12, isUniquelyReferenced_nonNull_native);
        v12, v28, v29, v30, v31, v32, v33, v34;
        *a1 = v35;
      }
    }
  }
}

unint64_t sub_100192AF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_10093A588, qword_1007977A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v7 = *(i - 1);
      v6 = *i;
      v8 = *(i - 3);
      v9 = v5;

      result = sub_10002B924(v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v12 = (v3[7] + 24 * result);
      *v12 = v9;
      v12[1] = v7;
      v12[2] = v6;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}