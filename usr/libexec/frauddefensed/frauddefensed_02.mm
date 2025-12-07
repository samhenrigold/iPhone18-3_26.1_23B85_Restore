uint64_t sub_1000325D4()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    *(v2 + 488), v3, v4, v5, v6, v7, v8, v9;
    v10 = sub_100033CCC;
  }

  else
  {
    v10 = sub_1000326F0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1000326F0()
{
  sub_1000111EC((*(v0 + 344) + 16), *(*(v0 + 344) + 40));
  v1 = qword_1000B6700;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 568);
  *(v0 + 576) = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v2)
  {
    v3 = *(v0 + 488);
    v38 = *(v0 + 480);
    v4 = *(v0 + 464);
    v5 = *(v0 + 472);
    v7 = *(v0 + 448);
    v6 = *(v0 + 456);
    v9 = *(v0 + 424);
    v8 = *(v0 + 432);

    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = *(v8 + 8);
    v17(v7, v9);
    v17(v6, v9);
    (*(v5 + 8))(v38, v4);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {

    if (!*(v0 + 288))
    {
      v21 = *(v0 + 488);
      v20 = *(v0 + 496);
      v22 = *(v0 + 344);
      v23 = static os_log_type_t.debug.getter();
      sub_10005E11C(v23, 0xD00000000000002ELL, 0x80000001000960C0, 0xD00000000000006ALL, v20, 603);
      sub_1000111EC((v22 + 16), *(v22 + 40));

      sub_1000416A4(v21);
      v21, v24, v25, v26, v27, v28, v29, v30;
    }

    v31 = *(v0 + 552);
    v32 = *(v0 + 544);
    v33 = *(v0 + 488);
    v34 = *(v0 + 344);
    sub_100043EA4(*(v0 + 320), v0 + 112);
    v35 = swift_allocObject();
    *(v0 + 584) = v35;
    v35[2] = v32;
    v35[3] = v31;
    v35[4] = v33;
    sub_100011DD4((v0 + 112), (v35 + 5));
    v35[10] = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    *(v36 + 24) = v31;

    v37 = swift_task_alloc();
    *(v0 + 592) = v37;
    *v37 = v0;
    v37[1] = sub_100032A80;

    return sub_100047854(&unk_1000916A8, v35, &unk_1000916B8, v36);
  }
}

uint64_t sub_100032A80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {
    v4 = sub_100033BA0;
  }

  else
  {
    v4 = sub_100032B98;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100032B98()
{
  v2 = p_name[75];

  v10 = *(v2 + 2);
  v358 = v10;
  v359 = v2;
  if (!v10)
  {
    v370 = *(p_name + 33);
LABEL_19:
    v136 = 0;
    v137 = p_name[75];
    v138 = &_swiftEmptyArrayStorage;
LABEL_20:
    v139 = &v137[40 * v136];
    while (v10 != v136)
    {
      if (v136 >= *(v2 + 2))
      {
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          v233 = _CocoaArrayWrapper.endIndex.getter();
          v232 = p_name[61];
          if (!v233)
          {
            goto LABEL_73;
          }

LABEL_48:
          v234 = 0;
          v381 = v232 & 0xFFFFFFFFFFFFFF8;
          v385 = v232 & 0xC000000000000001;
          v235 = v232->$__lazy_storage_$_interface;
          v236 = &_swiftEmptyArrayStorage;
          while (1)
          {
            if (v385)
            {
              v237 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v234 >= *(v381 + 16))
              {
                goto LABEL_68;
              }

              v237 = *&v235[8 * v234];
            }

            v238 = v237;
            v239 = v234 + 1;
            if (__OFADD__(v234, 1))
            {
              break;
            }

            v240 = [v237 zoneName];
            v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v243 = v242;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v236 = sub_1000495F0(0, *v236->endpoint + 1, 1, v236, v228, v229, v230, v231);
            }

            v245 = *v236->endpoint;
            v244 = *v236->connection;
            if (v245 >= v244 >> 1)
            {
              v236 = sub_1000495F0((v244 > 1), v245 + 1, 1, v236, v228, v229, v230, v231);
            }

            *v236->endpoint = v245 + 1;
            v246 = v236 + 16 * v245;
            *(v246 + 4) = v241;
            *(v246 + 5) = v243;
            ++v234;
            if (v239 == v233)
            {
              v232 = p_name[61];
              goto LABEL_74;
            }
          }
        }
      }

      v140 = (v139 + 40);
      ++v136;
      v141 = v139[56];
      v139 += 40;
      if (v141)
      {
        v142 = *(v140 - 1);
        v143 = *v140;
        v144 = v140[1];
        v145 = v140[3];
        v146 = v145;
        v147 = v142;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        p_name[37] = v138;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100049F6C(0, *v138->endpoint + 1, 1);
          v138 = p_name[37];
        }

        v150 = *v138->endpoint;
        v149 = *v138->connection;
        if (v150 >= v149 >> 1)
        {
          sub_100049F6C((v149 > 1), v150 + 1, 1);
          v138 = p_name[37];
        }

        *v138->endpoint = v150 + 1;
        v151 = &v138[v150];
        *v151->$__lazy_storage_$_interface = v147;
        *v151[1]._TtCs12_SwiftObject_opaque = v143;
        *&v151[1]._TtCs12_SwiftObject_opaque[8] = v144;
        v151[1].endpoint[0] = 1;
        *v151[1].connection = v145;
        v10 = v358;
        v2 = v359;
        goto LABEL_20;
      }
    }

    p_name[75], v3, v4, v5, v6, v7, v8, v9;
    v152 = *v138->endpoint;
    if (v152)
    {
      p_name[38] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v153 = 32;
      do
      {
        v154 = *&v138->_TtCs12_SwiftObject_opaque[v153];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v153 += 40;
        --v152;
      }

      while (v152);

      v162 = p_name[38];
      if (!(v162 >> 62))
      {
LABEL_33:
        v377 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v377)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

    else
    {

      v162 = &_swiftEmptyArrayStorage;
      if (!(&_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_33;
      }
    }

    v377 = _CocoaArrayWrapper.endIndex.getter();
    if (!v377)
    {
LABEL_37:
      v384 = p_name[62];
      v185 = p_name[56];
      v187 = p_name[54];
      v186 = p_name[55];
      v188 = p_name[53];
      v162, v155, v156, v157, v158, v159, v160, v161;
      ContinuousClock.now.getter();
      (*(v187 + 5))(v185, v186, v188);
      v189 = static os_log_type_t.debug.getter();
      p_name[29] = 0;
      p_name[30] = 0xE000000000000000;
      _StringGuts.grow(_:)(96);
      v190 = p_name[30];
      p_name[27] = p_name[29];
      p_name[28] = v190;
      v191._countAndFlagsBits = 0xD00000000000003CLL;
      v191._object = 0x8000000100096050;
      String.append(_:)(v191);
      _print_unlocked<A, B>(_:_:)();
      v192._countAndFlagsBits = 0x3D776F6E202CLL;
      v192._object = 0xE600000000000000;
      String.append(_:)(v192);
      _print_unlocked<A, B>(_:_:)();
      v193._countAndFlagsBits = 0x3D66666964202CLL;
      v193._object = 0xE700000000000000;
      String.append(_:)(v193);
      ContinuousClock.Instant.duration(to:)();
      v194._countAndFlagsBits = Duration.description.getter();
      object = v194._object;
      String.append(_:)(v194);
      object, v196, v197, v198, v199, v200, v201, v202;
      v203._countAndFlagsBits = 0x646C756F6873202CLL;
      v203._object = 0xED00003D706F7453;
      String.append(_:)(v203);
      v204 = static Task<>.isCancelled.getter();
      v205 = (v204 & 1) == 0;
      if (v204)
      {
        v206 = 1702195828;
      }

      else
      {
        v206 = 0x65736C6166;
      }

      if (v205)
      {
        v207 = 0xE500000000000000;
      }

      else
      {
        v207 = 0xE400000000000000;
      }

      v208 = v207;
      String.append(_:)(*&v206);
      v207, v209, v210, v211, v212, v213, v214, v215;
      v216._countAndFlagsBits = 32032;
      v216._object = 0xE200000000000000;
      String.append(_:)(v216);
      v217 = p_name[28];
      sub_10005E11C(v189, p_name[27], v217, 0xD00000000000006ALL, v384, 634);
      v217, v218, v219, v220, v221, v222, v223, v224;
      if (v377)
      {
        ContinuousClock.Instant.duration(to:)();
        if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Task<>.isCancelled.getter() & 1) == 0)
        {
          *(p_name + 33) = v370;
          v321 = p_name[61];
          v322 = p_name[62];
          v323 = p_name[43];
          p_name[35] = 3;
          sub_100043F08();
          p_name[68] = static Duration./ infix<A>(_:_:)();
          p_name[69] = v324;
          v325 = static os_log_type_t.debug.getter();
          p_name[21] = 0;
          p_name[22] = 0xE000000000000000;
          _StringGuts.grow(_:)(85);
          v326 = p_name[22];
          p_name[19] = p_name[21];
          p_name[20] = v326;
          v327._countAndFlagsBits = 0xD000000000000051;
          v327._object = 0x8000000100095FB0;
          String.append(_:)(v327);
          v328._countAndFlagsBits = Duration.description.getter();
          v329 = v328._object;
          String.append(_:)(v328);
          v329, v330, v331, v332, v333, v334, v335, v336;
          v337._countAndFlagsBits = 32032;
          v337._object = 0xE200000000000000;
          String.append(_:)(v337);
          v338 = p_name[20];
          sub_10005E11C(v325, p_name[19], v338, 0xD00000000000006ALL, v322, 585);
          v338, v339, v340, v341, v342, v343, v344, v345;
          v346 = swift_allocObject();
          *(v346 + 16) = v321;
          *(v346 + 24) = v323;

          v347 = swift_task_alloc();
          p_name[70] = v347;
          *v347 = p_name;
          *(v347 + 1) = sub_1000325D4;

          return (sub_100041998)();
        }
      }

      v232 = p_name[61];
      if (v232 >> 62)
      {
        goto LABEL_72;
      }

      v233 = *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v233)
      {
        goto LABEL_48;
      }

LABEL_73:
      v236 = &_swiftEmptyArrayStorage;
LABEL_74:
      v350 = p_name[59];
      v349 = p_name[60];
      v351 = p_name[57];
      v352 = p_name[56];
      v361 = p_name[58];
      v354 = p_name[53];
      v353 = p_name[54];
      v355 = p_name[39];
      v232, v225, v226, v227, v228, v229, v230, v231;
      v376 = ContinuousClock.Instant.duration(to:)();
      v369 = v356;
      v357 = *(v353 + 1);
      v357(v352, v354);
      v357(v351, v354);
      (*(v350 + 1))(v349, v361);

      *v355 = v236;
      *(v355 + 1) = v370.i64[0];
      *(v355 + 2) = v376;
      *(v355 + 3) = v369;
      v355[32] = v377 != 0;
      v320 = p_name[1];
      goto LABEL_75;
    }

LABEL_34:
    v163 = p_name[62];
    v164 = static os_log_type_t.debug.getter();
    p_name[25] = 0;
    p_name[26] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v165 = p_name[26];
    p_name[23] = p_name[25];
    p_name[24] = v165;
    v166._countAndFlagsBits = 0xD00000000000003ELL;
    v166._object = 0x8000000100096010;
    String.append(_:)(v166);
    sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
    v167 = Array.description.getter();
    v169 = v168;
    v162, v168, v170, v171, v172, v173, v174, v175;
    v176._countAndFlagsBits = v167;
    v176._object = v169;
    String.append(_:)(v176);
    v169, v177, v178, v179, v180, v181, v182, v183;
    v184._countAndFlagsBits = 32032;
    v184._object = 0xE200000000000000;
    String.append(_:)(v184);
    v162 = p_name[24];
    sub_10005E11C(v164, p_name[23], v162, 0xD00000000000006ALL, v163, 630);
    goto LABEL_37;
  }

  v11 = 0;
  v12 = p_name[76];
  v380 = p_name;
  v13 = p_name[67];
  v14 = (p_name[75] + 64);
  while (1)
  {
    if (v11 >= *(v2 + 2))
    {
      goto LABEL_69;
    }

    v68 = *(v14 - 3);
    v91 = *(v14 - 2);
    v92 = *v68->endpoint;
    v93 = *v91->endpoint;
    v94 = v92 + v93;
    if (__OFADD__(v92, v93))
    {
      goto LABEL_70;
    }

    v95 = __OFADD__(v13, v94);
    v96 = &v13[v94];
    if (v95)
    {
      goto LABEL_71;
    }

    v373 = v96;
    v377 = v11;
    v57 = *(v14 - 4);
    v370.i64[0] = v14;
    v97 = *v14;
    v383 = *v14;
    if (v92)
    {
      break;
    }

    v118 = v97;
    swift_bridgeObjectRetain_n();
    v117 = v91;
    swift_bridgeObjectRetain_n();
    v119 = v57;
    if (v93)
    {
      goto LABEL_14;
    }

LABEL_3:
    v15 = v117;
    v117, v110, v111, v112, v113, v114, v115, v116;
    v68, v16, v17, v18, v19, v20, v21, v22;
    p_name = v383;
    if (v383)
    {
      goto LABEL_4;
    }

LABEL_5:
    v11 = v377 + 1;

    v68, v77, v78, v79, v80, v81, v82, v83;
    v15, v84, v85, v86, v87, v88, v89, v90;
    v14 = (v370.i64[0] + 40);
    v10 = v358;
    v2 = v359;
    v13 = v373;
    if (v358 == v377 + 1)
    {
      v370 = vdupq_n_s64(v373);
      p_name = v380;
      goto LABEL_19;
    }
  }

  v0 = v12;
  v98 = sub_1000111EC(v380[43] + 2, *(v380[43] + 5))[1];
  v99 = swift_task_alloc();
  *(v99 + 16) = v98;
  *(v99 + 24) = v68;
  v100 = v97;

  v101 = v68;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v102 = v57;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v0)
  {
    v247 = v380;
    v366 = v380[61];
    v386 = v380[60];
    v248 = v380[59];
    v378 = v380[58];
    v374 = v380[57];
    v371 = v380[56];
    v249 = v380[53];
    v250 = v380[54];
    v380[75], v103, v104, v105, v106, v107, v108, v109;

    swift_bridgeObjectRelease_n();
    v91, v251, v252, v253, v254, v255, v256, v257;

    v91, v258, v259, v260, v261, v262, v263, v264;

    v366, v265, v266, v267, v268, v269, v270, v271;
    v272 = *(v250 + 1);
    v272(v371, v249);
    v272(v374, v249);
    (*(v248 + 1))(v386, v378);
    goto LABEL_62;
  }

  v12 = 0;
  v117 = v91;
  v68 = v101;
  if (!*v91->endpoint)
  {
    goto LABEL_3;
  }

LABEL_14:
  v120 = sub_1000111EC(v380[43] + 2, *(v380[43] + 5))[1];
  v121 = swift_task_alloc();
  *(v121 + 16) = v120;
  *(v121 + 24) = v117;
  v15 = v117;

  v0 = v12;
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v12)
  {
    v68, v122, v123, v124, v125, v126, v127, v128;
    v117, v129, v130, v131, v132, v133, v134, v135;

    v12 = 0;
    p_name = v383;
    if (!v383)
    {
      goto LABEL_5;
    }

LABEL_4:
    v362 = v380[62];
    sub_1000111EC(v380[43] + 2, *(v380[43] + 5));
    sub_100002074(&qword_1000B79C0, &qword_1000916C8);
    v365 = v68;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008F580;
    *(inited + 32) = v57;
    v360 = v57;
    v382 = v12;
    v24 = p_name;

    p_name = &stru_1000B4FF8.name;
    v363 = v57;
    v25 = [v24 data];
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v368 = v0;
    v28 = v27;

    *(inited + 40) = v26;
    *(inited + 48) = v28;
    v29 = sub_100011974(inited);
    swift_setDeallocating();
    sub_10000BC10(inited + 32, &qword_1000B79C8, &unk_1000916D0);
    sub_100042F24(v29);
    v29, v30, v31, v32, v33, v34, v35, v36;

    LOBYTE(inited) = static os_log_type_t.debug.getter();
    v380[33] = 0;
    v380[34] = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v37 = v380[34];
    v380[31] = v380[33];
    v380[32] = v37;
    v38._countAndFlagsBits = 0xD000000000000026;
    v38._object = 0x8000000100096090;
    String.append(_:)(v38);
    v39 = [v360 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);
    v42, v44, v45, v46, v47, v48, v49, v50;
    v51._countAndFlagsBits = 0x65676E616863202CLL;
    v51._object = 0xEE003D6E656B6F54;
    String.append(_:)(v51);
    v52 = [v24 data];
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = Data.base64EncodedString(options:)(0);
    sub_100005A28(v53, v55);
    v57 = v363;
    String.append(_:)(v56);
    v56._object, v58, v59, v60, v61, v62, v63, v64;
    v65._countAndFlagsBits = 32032;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    v66 = v380[32];
    v67 = inited;
    v68 = v365;
    sub_10005E11C(v67, v380[31], v66, 0xD00000000000006ALL, v362, 622);

    v12 = v382;
    v69 = v66;
    v0 = v368;
    v69, v70, v71, v72, v73, v74, v75, v76;
    goto LABEL_5;
  }

  v273 = v380[75];
  v364 = v380[61];
  v379 = v380[60];
  v274 = v380[59];
  v375 = v380[58];
  v372 = v380[57];
  v367 = v380[56];
  v276 = v380[53];
  v275 = v380[54];

  v15, v277, v278, v279, v280, v281, v282, v283;
  v273, v284, v285, v286, v287, v288, v289, v290;
  v68, v291, v292, v293, v294, v295, v296, v297;

  v247 = v380;

  v68, v298, v299, v300, v301, v302, v303, v304;
  v15, v305, v306, v307, v308, v309, v310, v311;
  v364, v312, v313, v314, v315, v316, v317, v318;

  v319 = *(v275 + 1);
  v319(v367, v276);
  v319(v372, v276);
  (*(v274 + 1))(v379, v375);
LABEL_62:

  v320 = v247[1];
LABEL_75:

  return v320();
}

uint64_t sub_100033BA0()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[58];
  v4 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[53];
  v8 = v0[54];

  v2, v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v8 + 8);
  v16(v6, v7);
  v16(v5, v7);
  (*(v4 + 8))(v1, v3);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100033CCC()
{
  v2 = v0[59];
  v1 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[53];
  v6 = *(v0[54] + 8);
  v6(v0[56], v5);
  v6(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100033DE4(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v2[53] = swift_task_alloc();

  return _swift_task_switch(sub_100033E80, 0, 0);
}

uint64_t sub_100033E80()
{
  sub_1000318A4();
  v1 = v0[53];
  sub_100011DFC(v0[51], v1, &qword_1000B6CB8, &unk_10008F9F0);
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000BC10(v1, &qword_1000B6CB8, &unk_10008F9F0);
  if (v3 == 1)
  {
    goto LABEL_6;
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v4 = qword_1000B7C78;
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
LABEL_6:
      v7 = static os_log_type_t.default.getter();
      sub_10005E11C(v7, 0xD00000000000002FLL, 0x8000000100096890, 0xD00000000000006ALL, 0x8000000100095F40, 88);
      sub_10003511C();
      v12 = swift_task_alloc();
      v0[58] = v12;
      *v12 = v0;
      v13 = sub_100034924;
LABEL_9:
      v12[1] = v13;

      return sub_100035804(0);
    }
  }

  v8 = v0[51];
  v9 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput(0);
  v0[35] = v9;
  v0[36] = &off_1000B0920;
  v10 = sub_1000112A4(v0 + 32);
  sub_10004D808(v8, v10, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v11 = sub_100036430((v0 + 32));
  sub_100003558(v0 + 32);
  if (v11)
  {
    v14 = static os_log_type_t.default.getter();
    sub_10005E11C(v14, 0xD00000000000004CLL, 0x8000000100096D70, 0xD00000000000006ALL, 0x8000000100095F40, 110);
    v12 = swift_task_alloc();
    v0[56] = v12;
    *v12 = v0;
    v13 = sub_100034648;
    goto LABEL_9;
  }

  v16 = v0[51];
  v0[40] = v9;
  v0[41] = &off_1000B0920;
  v17 = sub_1000112A4(v0 + 37);
  sub_10004D808(v16, v17, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v18 = swift_task_alloc();
  v0[54] = v18;
  *v18 = v0;
  v18[1] = sub_1000344C8;

  return sub_100031B04((v0 + 42), (v0 + 37), 0, 0, 1);
}

uint64_t sub_1000344C8()
{
  v2 = *v1;
  v2[55] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100034DC8, 0, 0);
  }

  else
  {
    sub_100011D10((v2 + 42));
    sub_100003558(v2 + 37);
    v3 = swift_task_alloc();
    v2[56] = v3;
    *v3 = v2;
    v3[1] = sub_100034648;

    return sub_100035804(0);
  }
}

uint64_t sub_100034648()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_100034F54;
  }

  else
  {
    v2 = sub_10003475C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003475C()
{
  v1 = sub_1000111EC((v0[52] + 16), *(v0[52] + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B89E0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100011E70;
  *(v4 + 24) = v1;
  v0[30] = sub_10004E120;
  v0[31] = v4;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100010FA0;
  v0[29] = &unk_1000B0638;
  v5 = _Block_copy(v0 + 26);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_100034924()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_100034C00;
  }

  else
  {
    v2 = sub_100034A38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100034A38()
{
  v1 = sub_1000111EC((v0[52] + 16), *(v0[52] + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B89E0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100011E70;
  *(v4 + 24) = v1;
  v0[18] = sub_10004E120;
  v0[19] = v4;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100010FA0;
  v0[17] = &unk_1000B0598;
  v5 = _Block_copy(v0 + 14);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_100034C00()
{
  v1 = sub_1000111EC((v0[52] + 16), *(v0[52] + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B89E0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100011E70;
  *(v4 + 24) = v1;
  v0[12] = sub_10004E120;
  v0[13] = v4;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100010FA0;
  v0[11] = &unk_1000B0548;
  v5 = _Block_copy(v0 + 8);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_100034DC8()
{
  sub_100003558((v0 + 296));
  v1 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v2._object = 0x8000000100094650;
  v2._countAndFlagsBits = 0xD00000000000003DLL;
  String.append(_:)(v2);
  swift_getErrorValue();
  v3._countAndFlagsBits = Error.localizedDescription.getter();
  object = v3._object;
  String.append(_:)(v3);
  object, v5, v6, v7, v8, v9, v10, v11;
  v12._countAndFlagsBits = 32032;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  sub_10005E11C(v1, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 113);
  0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;

  v20 = swift_task_alloc();
  *(v0 + 448) = v20;
  *v20 = v0;
  v20[1] = sub_100034648;

  return sub_100035804(0);
}

uint64_t sub_100034F54()
{
  v1 = sub_1000111EC((v0[52] + 16), *(v0[52] + 40))[1];
  v2 = qword_1000B6700;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B89E0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100011E70;
  *(v4 + 24) = v1;
  v0[24] = sub_10004E120;
  v0[25] = v4;
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100010FA0;
  v0[23] = &unk_1000B05E8;
  v5 = _Block_copy(v0 + 20);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }

  return result;
}

void sub_10003511C()
{
  v73 = type metadata accessor for URL.DirectoryHint();
  v0 = *(v73 - 8);
  __chkstk_darwin(v73);
  v2 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v72 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v72 - v14;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = [v16 resourceURL];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  v18 = v9;
  sub_10001C148(v6, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000BC10(v8, &qword_1000B6DE8, &qword_10008FA30);
    v19 = static os_log_type_t.error.getter();
    sub_10005E11C(v19, 0xD00000000000002DLL, 0x8000000100096CC0, 0xD00000000000006ALL, 0x8000000100095F40, 508);
    sub_10000B6B0();
    swift_allocError();
    *v20 = 0xD00000000000002DLL;
    *(v20 + 8) = 0x8000000100096CC0;
    *(v20 + 16) = 12;
    swift_willThrow();
  }

  else
  {
    v76 = 0xD000000000000020;
    v77 = 0x8000000100096CF0;
    v21 = v73;
    (*(v0 + 104))(v2, enum case for URL.DirectoryHint.inferFromPath(_:), v73);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v0 + 8))(v2, v21);
    v22 = *(v10 + 8);
    v22(v8, v9);
    v23 = v75;
    (*(v10 + 32))(v75, v13, v9);
    v24 = v78;
    v25 = v74;
    sub_1000410E0(0, 1);
    if (v25)
    {
      v38 = v23;
      v39 = v9;
    }

    else
    {
      sub_1000111EC((v24 + 16), *(v24 + 40));
      v26 = qword_1000B6658;

      if (v26 != -1)
      {
        swift_once();
      }

      if (qword_1000B7C78)
      {
        v27 = v9;
        v28 = qword_1000B7C78;
        v29 = String._bridgeToObjectiveC()();
        [v28 setValue:0 forKey:v29];

        v18 = v27;
      }

      else
      {
      }

      sub_10005C778();
      v74 = v18;
      if (*v30->endpoint)
      {
        v40 = v30;
        v41 = sub_1000111EC((v24 + 16), *(v24 + 40))[1];
        v42 = qword_1000B6700;

        if (v42 != -1)
        {
          v43 = swift_once();
        }

        __chkstk_darwin(v43);
        *(&v72 - 2) = v41;
        *(&v72 - 1) = v40;
        OS_dispatch_queue.sync<A>(execute:)();

        v40, v44, v45, v46, v47, v48, v49, v50;
      }

      else
      {
        v30, v31, v32, v33, v34, v35, v36, v37;
      }

      v73 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger;
      v51 = static os_log_type_t.default.getter();
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      v52._countAndFlagsBits = 0xD000000000000044;
      v52._object = 0x8000000100096D20;
      String.append(_:)(v52);
      v53 = v75;
      v54._countAndFlagsBits = URL.absoluteString.getter();
      object = v54._object;
      String.append(_:)(v54);
      object, v56, v57, v58, v59, v60, v61, v62;
      v63._countAndFlagsBits = 32032;
      v63._object = 0xE200000000000000;
      String.append(_:)(v63);
      v64 = v77;
      sub_10005E11C(v51, v76, v77, 0xD00000000000006ALL, 0x8000000100095F40, 527);
      v64, v65, v66, v67, v68, v69, v70, v71;
      v38 = v53;
      v39 = v74;
    }

    v22(v38, v39);
  }
}

uint64_t sub_100035804(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 288) = a1;
  return _swift_task_switch(sub_100035828, 0, 0);
}

uint64_t sub_100035828()
{
  if (qword_1000B66D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B9450 == 0xD000000000000014 && 0x80000001000947E0 == *algn_1000B9458;
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v2 = static os_log_type_t.debug.getter();
    sub_10005E11C(v2, 0xD00000000000003ELL, 0x8000000100096A50, 0xD00000000000006ALL, 0x8000000100095F40, 785);
    v3 = v0[1];

    return v3();
  }

  else
  {
    type metadata accessor for BackgroundActivityManager(0);
    v5 = swift_allocObject();
    v0[23] = v5;
    swift_defaultActor_initialize();
    v6 = OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger;
    if (qword_1000B6688 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v8 = sub_100003448(v7, qword_1000B9370);
    (*(*(v7 - 8) + 16))(v5 + v6, v8, v7);
    v9 = type metadata accessor for SignaturesBackgroundActivity(0);
    v0[24] = v9;
    swift_allocObject();
    v10 = sub_1000107C8();
    v0[25] = v10;
    v0[5] = v9;
    v0[6] = &off_1000AEAE0;
    v0[2] = v10;

    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_100035A9C;

    return sub_10008B068((v0 + 2));
  }
}

uint64_t sub_100035A9C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_100036238;
  }

  else
  {
    sub_100003558((v2 + 16));
    v3 = sub_100035BB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100035BB8()
{
  v1 = v0[25];
  v0[10] = v0[24];
  v0[11] = &off_1000AEAE0;
  v0[7] = v1;

  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_100035C74;

  return sub_1000899E0((v0 + 7));
}

uint64_t sub_100035C74()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1000362B0;
  }

  else
  {
    sub_100003558((v2 + 56));
    v3 = sub_100035D90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100035D90()
{
  if (*(v0 + 288) == 1)
  {
    v1 = type metadata accessor for AdHocSignaturesBackgroundActivity(0);
    *(v0 + 240) = v1;
    swift_allocObject();
    v2 = sub_10006A47C();
    *(v0 + 248) = v2;
    *(v0 + 120) = v1;
    *(v0 + 128) = &off_1000B0F48;
    *(v0 + 96) = v2;

    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_100035EC8;

    return sub_10008B068(v0 + 96);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100035EC8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_100036328;
  }

  else
  {
    sub_100003558((v2 + 96));
    v3 = sub_100035FE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100035FE4()
{
  v1 = v0[31];
  v0[20] = v0[30];
  v0[21] = &off_1000B0F48;
  v0[17] = v1;

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000360A0;

  return sub_1000899E0((v0 + 17));
}

uint64_t sub_1000360A0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1000363AC;
  }

  else
  {
    sub_100003558((v2 + 136));
    v3 = sub_1000361BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000361BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036238()
{

  sub_100003558((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000362B0()
{

  sub_100003558((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036328()
{

  sub_100003558((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000363AC()
{

  sub_100003558((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036430(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  __chkstk_darwin(v4 - 8);
  v6 = v110 - v5;
  v116 = type metadata accessor for Date();
  v7 = *(v116 - 8);
  v8 = __chkstk_darwin(v116);
  v10 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v111 = v110 - v12;
  __chkstk_darwin(v11);
  v112 = v110 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger;
  sub_100043EA4(a1, v115);
  (*(v15 + 16))(v17, v2 + v18, v14);
  v19 = sub_100054AB0();
  if (!v20)
  {
    v72 = static os_log_type_t.debug.getter();
    sub_10005E11C(v72, 0xD00000000000002ELL, 0x8000000100096A90, 0xD00000000000006ALL, 0x8000000100095F40, 456);
    Date.init()();
    sub_1000407B0(v10, v115, v17);
    (*(v7 + 8))(v10, v116);
LABEL_11:
    (*(v15 + 8))(v17, v14);
    sub_100003558(v115);
    v71 = 0;
    return v71 & 1;
  }

  v21 = v20;
  v110[0] = v19;
  v110[1] = v18;
  sub_10002F9EC(1, v6);
  v22 = v7;
  v23 = v116;
  if ((*(v7 + 48))(v6, 1, v116) != 1)
  {
    v21, v24, v25, v26, v27, v28, v29, v30;
    v73 = v112;
    (*(v7 + 32))(v112, v6, v23);
    v74 = v111;
    Date.init()();
    if ((static Date.> infix(_:_:)() & 1) == 0)
    {
      (*(v15 + 8))(v17, v14);
      sub_100003558(v115);
      LODWORD(v110[0]) = static os_log_type_t.default.getter();
      v113 = 0;
      v114 = 0xE000000000000000;
      _StringGuts.grow(_:)(74);
      v76._countAndFlagsBits = 0xD000000000000031;
      v76._object = 0x8000000100096AF0;
      String.append(_:)(v76);
      sub_10004D698(&qword_1000B6A98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v77 = v74;
      v78 = v22;
      v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v73;
      object = v79._object;
      String.append(_:)(v79);
      object, v82, v83, v84, v85, v86, v87, v88;
      v89._countAndFlagsBits = 0xD000000000000013;
      v89._object = 0x8000000100096B30;
      String.append(_:)(v89);
      v90._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90._object;
      String.append(_:)(v90);
      v91, v92, v93, v94, v95, v96, v97, v98;
      v99._countAndFlagsBits = 32032;
      v99._object = 0xE200000000000000;
      String.append(_:)(v99);
      v100 = v114;
      sub_10005E11C(v110[0], v113, v114, 0xD00000000000006ALL, 0x8000000100095F40, 473);
      v100, v101, v102, v103, v104, v105, v106, v107;
      v108 = *(v78 + 8);
      v108(v77, v23);
      v108(v80, v23);
      v71 = 1;
      return v71 & 1;
    }

    sub_1000407B0(v74, v115, v17);
    v75 = *(v22 + 8);
    v75(v74, v23);
    v75(v73, v23);
    goto LABEL_11;
  }

  (*(v15 + 8))(v17, v14);
  sub_100003558(v115);
  sub_10000BC10(v6, &qword_1000B7820, &unk_1000917B0);
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v31 = qword_1000B7C78;
    v32 = String._bridgeToObjectiveC()();
    [v31 setValue:0 forKey:v32];
  }

  v33 = static os_log_type_t.error.getter();
  v113 = 0;
  v114 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v114, v34, v35, v36, v37, v38, v39, v40;
  v113 = 0xD000000000000022;
  v114 = 0x8000000100096AC0;
  v41 = v110[0];
  v42._countAndFlagsBits = v110[0];
  v42._object = v21;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 32032;
  v43._object = 0xE200000000000000;
  String.append(_:)(v43);
  v44 = v114;
  sub_10005E11C(v33, v113, v114, 0xD00000000000006ALL, 0x8000000100095F40, 467);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v113 = 0;
  v114 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v114, v52, v53, v54, v55, v56, v57, v58;
  v113 = 0xD000000000000022;
  v114 = 0x8000000100096AC0;
  v59._countAndFlagsBits = v41;
  v59._object = v21;
  String.append(_:)(v59);
  v21, v60, v61, v62, v63, v64, v65, v66;
  v67._countAndFlagsBits = 32032;
  v67._object = 0xE200000000000000;
  String.append(_:)(v67);
  v68 = v113;
  v69 = v114;
  sub_10000B6B0();
  swift_allocError();
  *v70 = v68;
  *(v70 + 8) = v69;
  *(v70 + 16) = 2;
  swift_willThrow();
  return v71 & 1;
}

uint64_t sub_100036B44(uint64_t a1, uint64_t a2)
{
  v3[278] = v2;
  v3[277] = a2;
  v3[276] = a1;
  v3[279] = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0);
  v3[280] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v3[281] = swift_task_alloc();

  return _swift_task_switch(sub_100036C18, 0, 0);
}

uint64_t sub_100036C18(uint64_t a1)
{
  v2 = v1;
  isEscapingClosureAtFileLocation = *(v1 + 2216);
  v4 = isEscapingClosureAtFileLocation + *(*(v1 + 2232) + 20);
  v5 = *(v4 + 48);
  *(v1 + 2256) = v5;
  v6 = *(v4 + 56);
  *(v1 + 2264) = v6;
  v7 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
LABEL_15:
    v25 = v2[280];
    v26 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(65);
    v27._object = 0x8000000100096A10;
    v27._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v27);
    sub_10004D808(isEscapingClosureAtFileLocation, v25, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    object = v28._object;
    String.append(_:)(v28);
    object, v30, v31, v32, v33, v34, v35, v36;
    v37._countAndFlagsBits = 32032;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    sub_10005E11C(v26, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 129);
    0xE000000000000000, v38, v39, v40, v41, v42, v43, v44;
    _StringGuts.grow(_:)(65);
    v45._object = 0x8000000100096A10;
    v45._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v45);
    sub_10004D808(isEscapingClosureAtFileLocation, v25, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v46._countAndFlagsBits = String.init<A>(describing:)();
    v47 = v46._object;
    String.append(_:)(v46);
    v47, v48, v49, v50, v51, v52, v53, v54;
    v55._countAndFlagsBits = 32032;
    v55._object = 0xE200000000000000;
    String.append(_:)(v55);
    sub_10000B6B0();
    swift_allocError();
    *v56 = 0;
    *(v56 + 8) = 0xE000000000000000;
LABEL_17:
    *(v56 + 16) = 0;
    swift_willThrow();
    goto LABEL_18;
  }

  if ((sub_10004D154(isEscapingClosureAtFileLocation) & 1) == 0)
  {
    v57 = static os_log_type_t.default.getter();
    sub_10005E11C(v57, 0xD000000000000031, 0x8000000100096850, 0xD00000000000006ALL, 0x8000000100095F40, 134);
    sub_10000B6B0();
    swift_allocError();
    *v56 = 0xD000000000000031;
    *(v56 + 8) = 0x8000000100096850;
    goto LABEL_17;
  }

  sub_1000318A4();
  v9 = 0;
  v10 = *(v1 + 2248);
  v11 = *(v1 + 2216);
  LOBYTE(v12) = 1;
  *(v1 + 2424) = 1;
  sub_100011DFC(v11, v10, &qword_1000B6CB8, &unk_10008F9F0);
  v13 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v14 = (*(*(v13 - 8) + 48))(v10, 1, v13);
  sub_10000BC10(v10, &qword_1000B6CB8, &unk_10008F9F0);
  if (v14 != 1)
  {
    if (qword_1000B6658 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_8;
  }

  while (2)
  {
    v18 = static os_log_type_t.default.getter();
    sub_10005E11C(v18, 0xD00000000000002FLL, 0x8000000100096890, 0xD00000000000006ALL, 0x8000000100095F40, 200);
    sub_10003511C();
    v19 = v2[278];
    if (v9)
    {
      v2[68] = 0;
      *(v2 + 32) = 0u;
      *(v2 + 33) = 0u;
      *(v2 + 30) = 0u;
      *(v2 + 31) = 0u;
      *(v2 + 29) = 0u;
      *(v2 + 276) = -256;
      v2[70] = 0;
      *(v2 + 568) = v12;
      sub_10004D588((v2 + 58));
      v20 = sub_1000111EC((v19 + 16), *(v19 + 40))[1];
      v21 = qword_1000B6700;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = qword_1000B89E0;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_100011230;
      *(v23 + 24) = v20;
      v2[225] = sub_10004D5C8;
      v2[226] = v23;
      v2[221] = _NSConcreteStackBlock;
      v2[222] = 1107296256;
      v2[223] = sub_100010FA0;
      v2[224] = &unk_1000B01D8;
      v24 = _Block_copy(v2 + 221);

      dispatch_sync(v22, v24);
      _Block_release(v24);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_15;
    }

    v338 = ", connectedToPower=";
    v95 = v2 + 273;
    sub_1000111EC((v19 + 16), *(v19 + 40));
    v96 = qword_1000B6700;

    if (v96 != -1)
    {
      swift_once();
    }

    v97 = qword_1000B89E0;
    OS_dispatch_queue.sync<A>(execute:)();
    v330 = v2 + 99;

    v102 = *v95;
    if (*v95 <= 0)
    {
LABEL_45:
      v198 = static os_log_type_t.default.getter();
      sub_10005E11C(v198, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, (v338 | 0x8000000000000000), 206);
      v2[152] = 0;
      *(v2 + 74) = 0u;
      *(v2 + 75) = 0u;
      *(v2 + 72) = 0u;
      *(v2 + 73) = 0u;
      *(v2 + 71) = 0u;
      *(v2 + 612) = -256;
      *(v2 + 1226) = *(v2 + 122);
      *(v2 + 615) = *(v2 + 63);
      v2[154] = 0;
      v199 = *(v2 + 2424);
      *(v2 + 1240) = v199;
      *(v2 + 64) = 0u;
      *(v2 + 65) = 0u;
      *(v2 + 66) = 0u;
      *(v2 + 67) = 0u;
      *(v2 + 68) = 0u;
      v2[138] = 0;
      *(v2 + 556) = -256;
      *(v2 + 1114) = *(v2 + 122);
      *(v2 + 559) = *(v2 + 63);
      v2[140] = 0;
      *(v2 + 1128) = v199;
      v324 = v2 + 142;
      sub_10004D5D0((v2 + 142), (v2 + 156));
      sub_10004D588((v2 + 128));
      v200 = sub_1000111EC((v19 + 16), *(v19 + 40))[1];
      v201 = swift_allocObject();
      *(v201 + 16) = sub_100011E70;
      *(v201 + 24) = v200;
      v2[207] = sub_10004E120;
      v2[208] = v201;
      v2[203] = _NSConcreteStackBlock;
      v2[204] = 1107296256;
      v2[205] = sub_100010FA0;
      v2[206] = &unk_1000B0278;
      v202 = _Block_copy(v2 + 203);
      swift_retain_n();

      dispatch_sync(v97, v202);
      _Block_release(v202);
      LOBYTE(v202) = swift_isEscapingClosureAtFileLocation();

      if (v202)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        return result;
      }

      v203 = (v2 + 153);
      v204 = v2 + 154;
      v205 = (v330 + 56);
      v206 = v2 + 152;
      v207 = v2 + 151;
      v208 = v2 + 150;
      v209 = v2 + 149;
      v210 = v2 + 148;
      v211 = v2 + 147;
      v212 = v2 + 146;
      v213 = v2 + 145;
      v214 = v2 + 144;
      v215 = v2 + 143;
LABEL_47:
      v216 = *v204;
      v218 = *v209;
      v219 = *v208;
      v220 = *v207;
      v221 = *v206;
      v222 = *v203;
      v223 = *v215;
      v224 = *v214;
      v225 = *v213;
      v226 = *v212;
      v227 = *v211;
      v228 = *v210;
      v229 = v2[276];
      v217 = *v205;
      *v229 = *v324;
      *(v229 + 8) = v223;
      *(v229 + 16) = v224;
      *(v229 + 24) = v225;
      *(v229 + 32) = v226;
      *(v229 + 40) = v227;
      *(v229 + 48) = v228;
      *(v229 + 56) = v218;
      *(v229 + 64) = v219;
      *(v229 + 72) = v220;
      *(v229 + 80) = v221;
      *(v229 + 88) = v222;
      *(v229 + 96) = v216;
      *(v229 + 104) = v217;

      v58 = v2[1];
      goto LABEL_19;
    }

    v339 = v2[282];
    v341 = v2[283];
    v103 = v2[278];
    v104 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(66);
    v105._countAndFlagsBits = 0xD00000000000003ELL;
    v105._object = 0x8000000100096910;
    String.append(_:)(v105);
    v2[275] = v102;
    v106._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106._object;
    String.append(_:)(v106);
    v107, v108, v109, v110, v111, v112, v113, v114;
    v115._countAndFlagsBits = 32032;
    v115._object = 0xE200000000000000;
    String.append(_:)(v115);
    sub_10005E11C(v104, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);
    0xE000000000000000, v116, v117, v118, v119, v120, v121, v122;
    type metadata accessor for SpamDecisioningAsset(0);
    v336 = sub_10003F940(v339, v341);
    v337 = 0;
    v333 = v102;
    v230 = 0;
    v328 = 0;
    v329 = 0;
    v331 = 0;
    v326 = 0;
    v327 = 0;
    v324 = v2 + 86;
    v325 = 0;
    aBlock = v2 + 227;
    v322 = (v2 + 170);
    v323 = v2 + 209;
    v342 = v2 + 184;
    v231 = (v2 + 274);
    v344 = v2;
    v334 = v97;
    v335 = v19;
    while (1)
    {
      v340 = objc_autoreleasePoolPush();
      v232 = sub_1000111EC((v19 + 16), *(v19 + 40))[1];
      v233 = swift_task_alloc();
      *(v233 + 16) = v232;
      *(v233 + 24) = 1000;
      *(v233 + 32) = 0;
      *(v233 + 40) = v230;
      *(v233 + 48) = 0;

      sub_100002074(&qword_1000B7A58, &qword_100091810);
      OS_dispatch_queue.sync<A>(execute:)();

      v234 = v231;
      v235 = *v231;
      sub_10005D8F4(v336, v235, v342);
      v236 = v103;
      v235, v237, v238, v239, v240, v241, v242, v243;
      v251 = v2[188];
      if (!v251)
      {
        break;
      }

      v252 = *(v2 + 1480);
      v253 = v2[186];
      v254 = v2[187];
      v255 = v2[189];
      v256 = v2[190];
      v257 = *v342;
      if (!v337)
      {
        v328 = v253;
        v329 = *v342;
        v326 = v255;
        v327 = v254;
        v337 = v251;
        v325 = v256;
        v259 = v252 | ((*(v330 + 689) | ((*(v330 + 693) | (*(v330 + 695) << 16)) << 32)) << 8);
        goto LABEL_56;
      }

      if ((v252 & 1) == 0 && (v331 & 1) == 0 && *(&v329 + 1) < *(&v257 + 1))
      {
        v258 = v331;
        v332 = *(v330 + 689) | ((*(v330 + 693) | (*(v330 + 695) << 16)) << 32);
        sub_10004D630(v329, v258, v328, v327, v337, v326, v325, v250);
        v328 = v253;
        v329 = v257;
        v326 = v255;
        v327 = v254;
        v337 = v251;
        v325 = v256;
        v259 = v252 | (v332 << 8);
LABEL_56:
        v331 = v259;
        goto LABEL_57;
      }

      sub_10000BC10(v342, &qword_1000B7A80, &qword_100091848);
LABEL_57:
      v193 = v230 + 1000;
      v2 = v344;
      v97 = v334;
      v19 = v335;
      if (__OFADD__(v230, 1000))
      {
        __break(1u);
        goto LABEL_65;
      }

      v103 = v236;
      objc_autoreleasePoolPop(v340);
      v230 += 1000;
      v267 = v193 < v333;
      v231 = v234;
      if (!v267)
      {
        v336, v260, v261, v262, v263, v264, v265, v266;
        sub_10004D630(0, 0, 0, 0, 0, 0, 0, v268);
        *(v344 + 2424) = 0;
        v344[86] = v329;
        v344[87] = v331;
        v344[88] = v328;
        v344[89] = v327;
        v344[90] = v337;
        v344[91] = v326;
        v344[92] = v325;
        v209 = v344 + 93;
        *(v344 + 93) = 0u;
        *(v344 + 95) = 0u;
        *(v344 + 388) = -256;
        *(v344 + 778) = *(v344 + 122);
        *(v344 + 391) = *(v344 + 63);
        v344[98] = v333;
        v269 = *(v344 + 2424);
        *(v344 + 792) = v269;
        v344[114] = v329;
        v344[115] = v331;
        v344[116] = v328;
        v344[117] = v327;
        v344[118] = v337;
        v344[119] = v326;
        v344[120] = v325;
        *(v344 + 121) = 0u;
        *(v344 + 123) = 0u;
        *(v344 + 500) = -256;
        *(v344 + 1002) = *(v344 + 122);
        *(v344 + 503) = *(v344 + 63);
        v344[126] = v333;
        *(v344 + 1016) = v269;
        sub_10004D5D0(v324, (v344 + 72));
        sub_10004D588((v344 + 114));
        v270 = sub_1000111EC((v335 + 16), *(v335 + 40))[1];
        v271 = swift_allocObject();
        *(v271 + 16) = sub_100011E70;
        *(v271 + 24) = v270;
        v344[231] = sub_10004E120;
        v344[232] = v271;
        v344[227] = _NSConcreteStackBlock;
        v344[228] = 1107296256;
        v344[229] = sub_100010FA0;
        v344[230] = &unk_1000B0368;
        v272 = _Block_copy(aBlock);
        swift_retain_n();

        dispatch_sync(v334, v272);
        _Block_release(v272);
        LOBYTE(v272) = swift_isEscapingClosureAtFileLocation();

        if (v272)
        {
          goto LABEL_67;
        }

        v215 = v344 + 87;
        v214 = v344 + 88;
        v213 = v344 + 89;
        v212 = v344 + 90;
        v211 = v344 + 91;
        v210 = v344 + 92;
        v208 = v344 + 94;
        v207 = v344 + 95;
        v206 = v344 + 96;
        v203 = (v344 + 97);
        v204 = v344 + 98;
        v205 = v330;
        goto LABEL_47;
      }
    }

    v273 = v2[280];
    v274 = v2[277];
    v336, v244, v245, v246, v247, v248, v249, v250;
    v343 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v275, v276, v277, v278, v279, v280, v281;
    v12 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput;
    sub_10004D808(v274, v273, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v282._countAndFlagsBits = String.init<A>(describing:)();
    v283 = v282._object;
    String.append(_:)(v282);
    v283, v284, v285, v286, v287, v288, v289, v290;
    v291._countAndFlagsBits = 32032;
    v291._object = 0xE200000000000000;
    String.append(_:)(v291);
    sub_10005E11C(v343, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);
    0x8000000100096950, v292, v293, v294, v295, v296, v297, v298;
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v299, v300, v301, v302, v303, v304, v305;
    sub_10004D808(v274, v273, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v306._countAndFlagsBits = String.init<A>(describing:)();
    v307 = v306._object;
    String.append(_:)(v306);
    v307, v308, v309, v310, v311, v312, v313, v314;
    v315._countAndFlagsBits = 32032;
    v315._object = 0xE200000000000000;
    String.append(_:)(v315);
    sub_10000B6B0();
    v9 = swift_allocError();
    *v316 = 0xD00000000000002ELL;
    *(v316 + 8) = 0x8000000100096950;
    *(v316 + 16) = 12;
    swift_willThrow();
    objc_autoreleasePoolPop(v340);
    sub_10004D630(v329, v331, v328, v327, v337, v326, v325, v317);
    *(v322 + 80) = 0;
    *(v322 + 48) = 0u;
    *(v322 + 64) = 0u;
    *(v322 + 16) = 0u;
    *(v322 + 32) = 0u;
    *v322 = 0u;
    *(v2 + 724) = -256;
    *(v2 + 1450) = *(v2 + 122);
    *(v2 + 727) = *(v2 + 63);
    v2[182] = 0;
    *(v2 + 1464) = *(v2 + 2424);
    sub_10004D588(v322);
    v318 = sub_1000111EC((v335 + 16), *(v335 + 40))[1];
    v319 = swift_allocObject();
    *(v319 + 16) = sub_100011E70;
    *(v319 + 24) = v318;
    v2[213] = sub_10004E120;
    v2[214] = v319;
    v2[209] = _NSConcreteStackBlock;
    v2[210] = 1107296256;
    v2[211] = sub_100010FA0;
    v2[212] = &unk_1000B0318;
    v320 = _Block_copy(v323);
    swift_retain_n();

    dispatch_sync(v334, v320);
    _Block_release(v320);
    LOBYTE(v320) = swift_isEscapingClosureAtFileLocation();

    if ((v320 & 1) == 0)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_63:
    swift_once();
LABEL_8:
    if (qword_1000B7C78)
    {
      v15 = qword_1000B7C78;
      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 BOOLForKey:v16];

      if (v17)
      {
        continue;
      }
    }

    break;
  }

  v60 = v2[277];
  v2[248] = v2[279];
  v2[249] = &off_1000B0908;
  v61 = sub_1000112A4(v2 + 245);
  sub_10004D808(v60, v61, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v62 = sub_100036430((v2 + 245));
  sub_100003558(v2 + 245);
  if (v9)
  {
    v2[294] = v9;
    v2[272] = v9;
    swift_errorRetain();
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    if (swift_dynamicCast())
    {
      v68 = v2[266];
      v69 = v2[267];
      v70 = *(v2 + 2144);
      if (v70 == 9)
      {
        v71 = static os_log_type_t.error.getter();
        _StringGuts.grow(_:)(61);
        v72._object = 0x8000000100096980;
        v72._countAndFlagsBits = 0xD000000000000039;
        String.append(_:)(v72);
        v73._countAndFlagsBits = v68;
        v73._object = v69;
        String.append(_:)(v73);
        v74._countAndFlagsBits = 32032;
        v74._object = 0xE200000000000000;
        String.append(_:)(v74);
        sub_10005E11C(v71, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 184);
        0xE000000000000000, v75, v76, v77, v78, v79, v80, v81;
        _StringGuts.grow(_:)(61);
        v82._object = 0x8000000100096980;
        v82._countAndFlagsBits = 0xD000000000000039;
        String.append(_:)(v82);
        v83._countAndFlagsBits = v68;
        v83._object = v69;
        String.append(_:)(v83);
        sub_100011CAC(v68, v69, 9, v84, v85, v86, v87, v88);
        v89._countAndFlagsBits = 32032;
        v89._object = 0xE200000000000000;
        String.append(_:)(v89);
        sub_10004D674(0, 0, 0, 0, 0xFF00, v90, v91, v92);
        v2[295] = 0;
        v2[296] = 0xE000000000000000;
        v93 = swift_task_alloc();
        v2[297] = v93;
        *v93 = v2;
        v94 = sub_10003BCC0;
        goto LABEL_39;
      }

      sub_100011CAC(v2[266], v2[267], v70, v63, v64, v65, v66, v67);
    }

    v2[269] = v9;
    swift_errorRetain();
    v126 = swift_dynamicCast();
    v19 = v2[278];
    if (v126)
    {
      v127 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(61);
      v128._object = 0x8000000100096980;
      v128._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v128);
      sub_10004BCB0();
      v129._countAndFlagsBits = Error.localizedDescription.getter();
      v130 = v129._object;
      String.append(_:)(v129);
      v130, v131, v132, v133, v134, v135, v136, v137;
      v138._countAndFlagsBits = 32032;
      v138._object = 0xE200000000000000;
      String.append(_:)(v138);
      sub_10005E11C(v127, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 188);
      0xE000000000000000, v139, v140, v141, v142, v143, v144, v145;
      _StringGuts.grow(_:)(61);
      v146._object = 0x8000000100096980;
      v146._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v146);
      v147._countAndFlagsBits = Error.localizedDescription.getter();
      v148 = v147._object;
      String.append(_:)(v147);
      v148, v149, v150, v151, v152, v153, v154, v155;
      v156._countAndFlagsBits = 32032;
      v156._object = 0xE200000000000000;
      String.append(_:)(v156);
      sub_10004D674(0, 0, 0, 0, 0xFF00, v157, v158, v159);
      v2[299] = 0;
      v2[300] = 0xE000000000000000;
      v93 = swift_task_alloc();
      v2[301] = v93;
      *v93 = v2;
      v94 = sub_10003CD94;
LABEL_39:
      v93[1] = v94;

      return sub_100035804(1);
    }

    v342 = v2 + 239;
    v160 = static os_log_type_t.error.getter();
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v161._object = 0x8000000100094650;
    v161._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v161);
    swift_getErrorValue();
    v162._countAndFlagsBits = Error.localizedDescription.getter();
    v163 = v162._object;
    String.append(_:)(v162);
    v163, v164, v165, v166, v167, v168, v169, v170;
    v171._countAndFlagsBits = 32032;
    v171._object = 0xE200000000000000;
    String.append(_:)(v171);
    sub_10005E11C(v160, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 192);
    0xE000000000000000, v172, v173, v174, v175, v176, v177, v178;
    _StringGuts.grow(_:)(65);
    v179._object = 0x8000000100094650;
    v179._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v179);
    swift_getErrorValue();
    v180._countAndFlagsBits = Error.localizedDescription.getter();
    v181 = v180._object;
    String.append(_:)(v180);
    v181, v182, v183, v184, v185, v186, v187, v188;
    v189._countAndFlagsBits = 32032;
    v189._object = 0xE200000000000000;
    String.append(_:)(v189);
    sub_10004D674(0, 0, 0, 0, 0xFF00, v190, v191, v192);
    swift_willThrow();
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 22) = 0u;
    v2[50] = 0;
    v2[51] = 0;
    v2[52] = 0xE000000000000000;
    v2[53] = 2;
    v2[54] = 0;
    *(v2 + 220) = 256;
    *(v2 + 442) = *(v2 + 122);
    *(v2 + 223) = *(v2 + 63);
    v2[56] = 0;
    *(v2 + 456) = *(v2 + 2424);
    sub_10004D588((v2 + 44));
    v193 = sub_1000111EC((v19 + 16), *(v19 + 40))[1];
    v194 = qword_1000B6700;

    if (v194 != -1)
    {
LABEL_65:
      swift_once();
    }

    v195 = qword_1000B89E0;
    v196 = swift_allocObject();
    *(v196 + 16) = sub_100011E70;
    *(v196 + 24) = v193;
    v2[243] = sub_10004E120;
    v2[244] = v196;
    v2[239] = _NSConcreteStackBlock;
    v2[240] = 1107296256;
    v2[241] = sub_100010FA0;
    v2[242] = &unk_1000B03B8;
    v197 = _Block_copy(v342);

    dispatch_sync(v195, v197);
    _Block_release(v197);
    LOBYTE(v197) = swift_isEscapingClosureAtFileLocation();

    if (v197)
    {
      __break(1u);
      goto LABEL_45;
    }

LABEL_18:

    v58 = v2[1];
LABEL_19:

    return v58();
  }

  if (v62)
  {
    v98 = static os_log_type_t.default.getter();
    sub_10005E11C(v98, 0xD000000000000048, 0x80000001000969C0, 0xD00000000000006ALL, 0x8000000100095F40, 176);
    sub_10004D674(0, 0, 0, 0, 0xFF00, v99, v100, v101);
    v93 = swift_task_alloc();
    v2[292] = v93;
    *v93 = v2;
    v94 = sub_10003ABB8;
    goto LABEL_39;
  }

  v123 = v2[277];
  v2[253] = v2[279];
  v2[254] = &off_1000B0908;
  v124 = sub_1000112A4(v2 + 250);
  sub_10004D808(v123, v124, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v125 = swift_task_alloc();
  v2[284] = v125;
  *v125 = v2;
  v125[1] = sub_100038900;

  return sub_100031B04((v2 + 255), (v2 + 250), 0, 0, 1);
}

uint64_t sub_100038900()
{
  v2 = *v1;
  *(*v1 + 2280) = v0;

  if (v0)
  {
    v3 = sub_10003DE68;
  }

  else
  {
    *(v2 + 2288) = *(v2 + 2040);
    *(v2 + 2296) = *(v2 + 2048);
    *(v2 + 2312) = *(v2 + 2064);
    *(v2 + 121) = *(v2 + 2072);
    sub_100003558((v2 + 2000));
    v3 = sub_100038A40;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100038A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v9 = *(v8 + 121);
  v10 = *(v8 + 2288);
  sub_10004D674(0, 0, 0, 0, 0xFF00, a6, a7, a8);
  if (*(v8 + 2072))
  {
    v11 = swift_task_alloc();
    *(v8 + 2320) = v11;
    *v11 = v8;
    v11[1] = sub_100039AC4;

    sub_100035804(1);
    return;
  }

  v12 = *(v8 + 2312);
  v188 = *(v8 + 2296);
  v189 = *(v8 + 2304);
  v13 = *(v8 + 2280);
  v14 = *(v8 + 2224);
  sub_1000111EC((v14 + 16), *(v14 + 40));
  v15 = qword_1000B6700;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v13)
  {

    *(v8 + 848) = 0;
    *(v8 + 816) = 0u;
    *(v8 + 832) = 0u;
    *(v8 + 800) = 0u;
    *(v8 + 856) = v10;
    *(v8 + 864) = v188;
    *(v8 + 872) = v189;
    *(v8 + 880) = v12;
    *(v8 + 888) = v9;
    *(v8 + 890) = *(v8 + 122);
    *(v8 + 894) = *(v8 + 126);
    *(v8 + 896) = 0;
    *(v8 + 904) = *(v8 + 2424);
    sub_10004D588(v8 + 800);
    v17 = sub_1000111EC((v14 + 16), *(v14 + 40))[1];
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100011E70;
    *(v18 + 24) = v17;
    *(v8 + 1752) = sub_10004E120;
    *(v8 + 1760) = v18;
    *(v8 + 1720) = _NSConcreteStackBlock;
    *(v8 + 1728) = 1107296256;
    *(v8 + 1736) = sub_100010FA0;
    *(v8 + 1744) = &unk_1000B0228;
    v19 = _Block_copy((v8 + 1720));
    swift_retain_n();

    dispatch_sync(v16, v19);
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_9:

      v21 = *(v8 + 8);
      goto LABEL_10;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v22 = *(v8 + 2184);
  if (v22 <= 0)
  {
    v41 = static os_log_type_t.default.getter();
    sub_10005E11C(v41, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
    *(v8 + 1184) = 0;
    *(v8 + 1152) = 0u;
    *(v8 + 1168) = 0u;
    *(v8 + 1136) = 0u;
    *(v8 + 1192) = v10;
    *(v8 + 1200) = v188;
    *(v8 + 1208) = v189;
    *(v8 + 1216) = v12;
    *(v8 + 1224) = v9;
    *(v8 + 1226) = *(v8 + 122);
    *(v8 + 1230) = *(v8 + 126);
    *(v8 + 1232) = 0;
    v42 = *(v8 + 2424);
    *(v8 + 1240) = v42;
    *(v8 + 1024) = 0u;
    *(v8 + 1040) = 0u;
    *(v8 + 1056) = 0u;
    *(v8 + 1072) = 0;
    *(v8 + 1080) = v10;
    *(v8 + 1088) = v188;
    *(v8 + 1096) = v189;
    *(v8 + 1104) = v12;
    v43 = (v8 + 1136);
    *(v8 + 1112) = v9;
    *(v8 + 1114) = *(v8 + 122);
    *(v8 + 1118) = *(v8 + 126);
    *(v8 + 1120) = 0;
    *(v8 + 1128) = v42;
    sub_10004D5D0(v8 + 1136, v8 + 1248);
    sub_10004D588(v8 + 1024);
    v44 = sub_1000111EC((v14 + 16), *(v14 + 40))[1];
    v45 = swift_allocObject();
    *(v45 + 16) = sub_100011E70;
    *(v45 + 24) = v44;
    *(v8 + 1656) = sub_10004E120;
    *(v8 + 1664) = v45;
    *(v8 + 1624) = _NSConcreteStackBlock;
    *(v8 + 1632) = 1107296256;
    *(v8 + 1640) = sub_100010FA0;
    *(v8 + 1648) = &unk_1000B0278;
    v46 = _Block_copy((v8 + 1624));
    swift_retain_n();

    dispatch_sync(v16, v46);
    _Block_release(v46);
    v47 = swift_isEscapingClosureAtFileLocation();

    if ((v47 & 1) == 0)
    {
      v48 = (v8 + 1192);
      v49 = (v8 + 1200);
      v50 = (v8 + 1208);
      v51 = (v8 + 1216);
      v52 = (v8 + 1224);
      v53 = (v8 + 1232);
      v54 = (v8 + 1240);
      v55 = (v8 + 1184);
      v56 = (v8 + 1176);
      v57 = (v8 + 1168);
      v58 = (v8 + 1160);
      v59 = (v8 + 1152);
      v60 = (v8 + 1144);
      goto LABEL_17;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v167 = v12;
  v183 = *(v8 + 2256);
  v185 = *(v8 + 2264);
  v181 = v10;
  queuea = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(66);
  v23._countAndFlagsBits = 0xD00000000000003ELL;
  v23._object = 0x8000000100096910;
  String.append(_:)(v23);
  v180 = v22;
  *(v8 + 2200) = v22;
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v24._object;
  String.append(_:)(v24);
  object, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = 32032;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  sub_10005E11C(queuea, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);
  0xE000000000000000, v34, v35, v36, v37, v38, v39, v40;
  type metadata accessor for SpamDecisioningAsset(0);
  v177 = sub_10003F940(v183, v185);
  queue = v16;
  v74 = 0;
  v172 = 0;
  v173 = 0;
  v170 = 0;
  v171 = 0;
  v182 = 0;
  v168 = 0;
  v169 = 0;
  v166 = (v8 + 1360);
  v186 = (v8 + 1472);
  v75 = (v8 + 2192);
  v176 = v14;
  v175 = v9;
  while (1)
  {
    v184 = objc_autoreleasePoolPush();
    v76 = sub_1000111EC((v14 + 16), *(v14 + 40))[1];
    v77 = swift_task_alloc();
    *(v77 + 16) = v76;
    *(v77 + 24) = 1000;
    *(v77 + 32) = 0;
    *(v77 + 40) = v74;
    *(v77 + 48) = 0;

    sub_100002074(&qword_1000B7A58, &qword_100091810);
    OS_dispatch_queue.sync<A>(execute:)();

    v78 = v75;
    v79 = *v75;
    sub_10005D8F4(v177, *v75, v186);
    v79, v80, v81, v82, v83, v84, v85, v86;
    v94 = *(v8 + 1504);
    if (!v94)
    {
      break;
    }

    v95 = *(v8 + 1480);
    v96 = *(v8 + 1488);
    v97 = *(v8 + 1496);
    v98 = *(v8 + 1512);
    v99 = *(v8 + 1520);
    v100 = *v186;
    if (!v182)
    {
      v172 = *v186;
      v170 = *(v8 + 1496);
      v171 = *(v8 + 1488);
      v182 = *(v8 + 1504);
      v168 = *(v8 + 1520);
      v169 = *(v8 + 1512);
      v101 = v95 | ((*(v8 + 1481) | ((*(v8 + 1485) | (*(v8 + 1487) << 16)) << 32)) << 8);
LABEL_24:
      v173 = v101;
      goto LABEL_25;
    }

    if ((v95 & 1) == 0 && (v173 & 1) == 0 && *(&v172 + 1) < *(&v100 + 1))
    {
      v112 = v173;
      v174 = *(v8 + 1481) | ((*(v8 + 1485) | (*(v8 + 1487) << 16)) << 32);
      sub_10004D630(v172, v112, v171, v170, v182, v169, v168, v93);
      v172 = v100;
      v170 = v97;
      v171 = v96;
      v182 = v94;
      v168 = v99;
      v169 = v98;
      v101 = v95 | (v174 << 8);
      goto LABEL_24;
    }

    sub_10000BC10(v186, &qword_1000B7A80, &qword_100091848);
LABEL_25:
    v102 = v74 + 1000;
    v14 = v176;
    v103 = v175;
    v104 = v181;
    if (__OFADD__(v74, 1000))
    {
      __break(1u);
      goto LABEL_36;
    }

    objc_autoreleasePoolPop(v184);
    v74 += 1000;
    v75 = v78;
    if (v102 >= v180)
    {
      goto LABEL_33;
    }
  }

  v113 = *(v8 + 2240);
  v114 = *(v8 + 2216);
  v177, v87, v88, v89, v90, v91, v92, v93;
  v187 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(50);
  0xE000000000000000, v115, v116, v117, v118, v119, v120, v121;
  sub_10004D808(v114, v113, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v122._countAndFlagsBits = String.init<A>(describing:)();
  v123 = v122._object;
  String.append(_:)(v122);
  v123, v124, v125, v126, v127, v128, v129, v130;
  v131._countAndFlagsBits = 32032;
  v131._object = 0xE200000000000000;
  String.append(_:)(v131);
  v14 = 0x8000000100096950;
  sub_10005E11C(v187, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);
  0x8000000100096950, v132, v133, v134, v135, v136, v137, v138;
  _StringGuts.grow(_:)(50);
  0xE000000000000000, v139, v140, v141, v142, v143, v144, v145;
  sub_10004D808(v114, v113, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v146._countAndFlagsBits = String.init<A>(describing:)();
  v147 = v146._object;
  String.append(_:)(v146);
  v147, v148, v149, v150, v151, v152, v153, v154;
  v155._countAndFlagsBits = 32032;
  v155._object = 0xE200000000000000;
  String.append(_:)(v155);
  sub_10000B6B0();
  swift_allocError();
  *v156 = 0xD00000000000002ELL;
  *(v156 + 8) = 0x8000000100096950;
  *(v156 + 16) = 12;
  swift_willThrow();
  objc_autoreleasePoolPop(v184);
  sub_10004D630(v172, v173, v171, v170, v182, v169, v168, v157);
  *(v8 + 1408) = 0;
  *(v8 + 1376) = 0u;
  *(v8 + 1392) = 0u;
  *v166 = 0u;
  *(v8 + 1416) = v181;
  *(v8 + 1424) = v188;
  *(v8 + 1432) = v189;
  *(v8 + 1440) = v167;
  *(v8 + 1448) = v175;
  *(v8 + 1450) = *(v8 + 122);
  *(v8 + 1454) = *(v8 + 126);
  *(v8 + 1456) = 0;
  *(v8 + 1464) = *(v8 + 2424);
  sub_10004D588(v166);
  v104 = sub_1000111EC((v176 + 16), *(v176 + 40))[1];
  v158 = swift_allocObject();
  *(v158 + 16) = sub_100011E70;
  *(v158 + 24) = v104;
  *(v8 + 1704) = sub_10004E120;
  *(v8 + 1712) = v158;
  *(v8 + 1672) = _NSConcreteStackBlock;
  *(v8 + 1680) = 1107296256;
  *(v8 + 1688) = sub_100010FA0;
  *(v8 + 1696) = &unk_1000B0318;
  v159 = _Block_copy((v8 + 1672));
  swift_retain_n();

  dispatch_sync(queue, v159);
  _Block_release(v159);
  v103 = swift_isEscapingClosureAtFileLocation();

  if ((v103 & 1) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_33:
  v177, v105, v106, v107, v108, v109, v110, v111;
  sub_10004D630(0, 0, 0, 0, 0, 0, 0, v160);
  *(v8 + 2424) = 0;
  *(v8 + 688) = v172;
  *(v8 + 696) = v173;
  *(v8 + 704) = v171;
  *(v8 + 712) = v170;
  *(v8 + 720) = v182;
  *(v8 + 728) = v169;
  *(v8 + 736) = v168;
  *(v8 + 744) = v104;
  *(v8 + 752) = v188;
  *(v8 + 760) = v189;
  *(v8 + 768) = v167;
  *(v8 + 776) = v103;
  *(v8 + 778) = *(v8 + 122);
  *(v8 + 782) = *(v8 + 126);
  *(v8 + 784) = v180;
  v161 = *(v8 + 2424);
  *(v8 + 792) = v161;
  *(v8 + 912) = v172;
  *(v8 + 920) = v173;
  *(v8 + 928) = v171;
  *(v8 + 936) = v170;
  *(v8 + 944) = v182;
  *(v8 + 952) = v169;
  *(v8 + 960) = v168;
  *(v8 + 968) = v104;
  *(v8 + 976) = v188;
  *(v8 + 984) = v189;
  *(v8 + 992) = v167;
  *(v8 + 1000) = v103;
  *(v8 + 1002) = *(v8 + 122);
  *(v8 + 1006) = *(v8 + 126);
  *(v8 + 1008) = v180;
  *(v8 + 1016) = v161;
  v43 = (v8 + 688);
  sub_10004D5D0(v8 + 688, v8 + 576);
  sub_10004D588(v8 + 912);
  v162 = sub_1000111EC((v14 + 16), *(v14 + 40))[1];
  v163 = swift_allocObject();
  *(v163 + 16) = sub_100011E70;
  *(v163 + 24) = v162;
  *(v8 + 1848) = sub_10004E120;
  *(v8 + 1856) = v163;
  *(v8 + 1816) = _NSConcreteStackBlock;
  *(v8 + 1824) = 1107296256;
  *(v8 + 1832) = sub_100010FA0;
  *(v8 + 1840) = &unk_1000B0368;
  v164 = _Block_copy((v8 + 1816));
  swift_retain_n();

  dispatch_sync(queue, v164);
  _Block_release(v164);
  v165 = swift_isEscapingClosureAtFileLocation();

  if (v165)
  {
    goto LABEL_38;
  }

  v60 = (v8 + 696);
  v59 = (v8 + 704);
  v58 = (v8 + 712);
  v57 = (v8 + 720);
  v56 = (v8 + 728);
  v55 = (v8 + 736);
  v48 = (v8 + 744);
  v49 = (v8 + 752);
  v50 = (v8 + 760);
  v51 = (v8 + 768);
  v52 = (v8 + 776);
  v53 = (v8 + 784);
  v54 = (v8 + 792);
LABEL_17:
  v61 = *v53;
  v62 = *v48;
  v63 = *v49;
  v64 = *v50;
  v65 = *v51;
  v66 = *v52;
  v67 = *v60;
  v68 = *v59;
  v69 = *v58;
  v70 = *v57;
  v71 = *v56;
  v72 = *v55;
  v73 = *(v8 + 2208);
  v190 = *v54;
  *v73 = *v43;
  *(v73 + 8) = v67;
  *(v73 + 16) = v68;
  *(v73 + 24) = v69;
  *(v73 + 32) = v70;
  *(v73 + 40) = v71;
  *(v73 + 48) = v72;
  *(v73 + 56) = v62;
  *(v73 + 64) = v63;
  *(v73 + 72) = v64;
  *(v73 + 80) = v65;
  *(v73 + 88) = v66;
  *(v73 + 96) = v61;
  *(v73 + 104) = v190;

  v21 = *(v8 + 8);
LABEL_10:

  v21();
}

uint64_t sub_100039AC4()
{
  *(*v1 + 2328) = v0;

  if (v0)
  {
    v2 = sub_10003E5D4;
  }

  else
  {
    v2 = sub_100039BD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100039BD8()
{
  v1 = *(v0 + 2328);
  v2 = *(v0 + 121);
  v3 = *(v0 + 2312);
  v4 = *(v0 + 2304);
  v179 = *(v0 + 2288);
  v180 = *(v0 + 2296);
  v5 = *(v0 + 2224);
  sub_1000111EC((v5 + 16), *(v5 + 40));
  v6 = qword_1000B6700;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v1)
  {

    *(v0 + 848) = 0;
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    *(v0 + 800) = 0u;
    *(v0 + 856) = v179;
    *(v0 + 864) = v180;
    *(v0 + 872) = v4;
    *(v0 + 880) = v3;
    *(v0 + 888) = v2;
    *(v0 + 890) = *(v0 + 122);
    *(v0 + 894) = *(v0 + 126);
    *(v0 + 896) = 0;
    *(v0 + 904) = *(v0 + 2424);
    sub_10004D588(v0 + 800);
    v8 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100011E70;
    *(v9 + 24) = v8;
    *(v0 + 1752) = sub_10004E120;
    *(v0 + 1760) = v9;
    *(v0 + 1720) = _NSConcreteStackBlock;
    *(v0 + 1728) = 1107296256;
    *(v0 + 1736) = sub_100010FA0;
    *(v0 + 1744) = &unk_1000B0228;
    v10 = _Block_copy((v0 + 1720));
    swift_retain_n();

    dispatch_sync(v7, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_5:

      v12 = *(v0 + 8);
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v165 = v4;

  v13 = *(v0 + 2184);
  if (v13 <= 0)
  {
    v32 = static os_log_type_t.default.getter();
    sub_10005E11C(v32, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
    *(v0 + 1184) = 0;
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
    *(v0 + 1136) = 0u;
    *(v0 + 1192) = v179;
    *(v0 + 1200) = v180;
    *(v0 + 1208) = v4;
    *(v0 + 1216) = v3;
    *(v0 + 1224) = v2;
    *(v0 + 1226) = *(v0 + 122);
    *(v0 + 1230) = *(v0 + 126);
    *(v0 + 1232) = 0;
    v33 = *(v0 + 2424);
    *(v0 + 1240) = v33;
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
    *(v0 + 1056) = 0u;
    *(v0 + 1072) = 0;
    *(v0 + 1080) = v179;
    *(v0 + 1088) = v180;
    *(v0 + 1096) = v4;
    *(v0 + 1104) = v3;
    *(v0 + 1112) = v2;
    *(v0 + 1114) = *(v0 + 122);
    *(v0 + 1118) = *(v0 + 126);
    *(v0 + 1120) = 0;
    *(v0 + 1128) = v33;
    v34 = (v0 + 1136);
    sub_10004D5D0(v0 + 1136, v0 + 1248);
    sub_10004D588(v0 + 1024);
    v35 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
    v36 = swift_allocObject();
    *(v36 + 16) = sub_100011E70;
    *(v36 + 24) = v35;
    *(v0 + 1656) = sub_10004E120;
    *(v0 + 1664) = v36;
    *(v0 + 1624) = _NSConcreteStackBlock;
    *(v0 + 1632) = 1107296256;
    *(v0 + 1640) = sub_100010FA0;
    *(v0 + 1648) = &unk_1000B0278;
    v37 = _Block_copy((v0 + 1624));
    swift_retain_n();

    dispatch_sync(v7, v37);
    _Block_release(v37);
    v38 = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      v39 = (v0 + 1192);
      v40 = (v0 + 1200);
      v41 = (v0 + 1208);
      v42 = (v0 + 1216);
      v43 = (v0 + 1224);
      v44 = (v0 + 1232);
      v45 = (v0 + 1240);
      v46 = (v0 + 1184);
      v47 = (v0 + 1176);
      v48 = (v0 + 1168);
      v49 = (v0 + 1160);
      v50 = (v0 + 1152);
      v51 = (v0 + 1144);
      goto LABEL_13;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v174 = *(v0 + 2256);
  v176 = *(v0 + 2264);
  v172 = v3;
  queuea = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(66);
  v14._countAndFlagsBits = 0xD00000000000003ELL;
  v14._object = 0x8000000100096910;
  String.append(_:)(v14);
  *(v0 + 2200) = v13;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v15._object;
  String.append(_:)(v15);
  object, v17, v18, v19, v20, v21, v22, v23;
  v24._countAndFlagsBits = 32032;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  sub_10005E11C(queuea, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);
  0xE000000000000000, v25, v26, v27, v28, v29, v30, v31;
  type metadata accessor for SpamDecisioningAsset(0);
  v169 = sub_10003F940(v174, v176);
  queue = v7;
  v166 = v13;
  v65 = 0;
  v162 = 0;
  v163 = 0;
  v160 = 0;
  v161 = 0;
  v173 = 0;
  v158 = 0;
  v159 = 0;
  v157 = (v0 + 1360);
  v177 = (v0 + 1472);
  v66 = (v0 + 2192);
  v168 = v5;
  v167 = v2;
  while (1)
  {
    v175 = objc_autoreleasePoolPush();
    v67 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
    v68 = swift_task_alloc();
    *(v68 + 16) = v67;
    *(v68 + 24) = 1000;
    *(v68 + 32) = 0;
    *(v68 + 40) = v65;
    *(v68 + 48) = 0;

    sub_100002074(&qword_1000B7A58, &qword_100091810);
    OS_dispatch_queue.sync<A>(execute:)();

    v69 = v66;
    v70 = *v66;
    sub_10005D8F4(v169, *v66, v177);
    v70, v71, v72, v73, v74, v75, v76, v77;
    v85 = *(v0 + 1504);
    if (!v85)
    {
      break;
    }

    v86 = *(v0 + 1480);
    v87 = *(v0 + 1488);
    v88 = *(v0 + 1496);
    v89 = *(v0 + 1512);
    v90 = *(v0 + 1520);
    v91 = *v177;
    if (!v173)
    {
      v162 = *v177;
      v160 = *(v0 + 1496);
      v161 = *(v0 + 1488);
      v173 = *(v0 + 1504);
      v158 = *(v0 + 1520);
      v159 = *(v0 + 1512);
      v92 = v86 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
LABEL_20:
      v163 = v92;
      goto LABEL_21;
    }

    if ((v86 & 1) == 0 && (v163 & 1) == 0 && *(&v162 + 1) < *(&v91 + 1))
    {
      v103 = v163;
      v164 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
      sub_10004D630(v162, v103, v161, v160, v173, v159, v158, v84);
      v162 = v91;
      v160 = v88;
      v161 = v87;
      v173 = v85;
      v158 = v90;
      v159 = v89;
      v92 = v86 | (v164 << 8);
      goto LABEL_20;
    }

    sub_10000BC10(v177, &qword_1000B7A80, &qword_100091848);
LABEL_21:
    v93 = v65 + 1000;
    v5 = v168;
    v94 = v167;
    v95 = v172;
    if (__OFADD__(v65, 1000))
    {
      __break(1u);
      goto LABEL_32;
    }

    objc_autoreleasePoolPop(v175);
    v65 += 1000;
    v66 = v69;
    if (v93 >= v166)
    {
      goto LABEL_29;
    }
  }

  v104 = *(v0 + 2240);
  v105 = *(v0 + 2216);
  v169, v78, v79, v80, v81, v82, v83, v84;
  v178 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(50);
  0xE000000000000000, v106, v107, v108, v109, v110, v111, v112;
  sub_10004D808(v105, v104, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v113._countAndFlagsBits = String.init<A>(describing:)();
  v114 = v113._object;
  String.append(_:)(v113);
  v114, v115, v116, v117, v118, v119, v120, v121;
  v122._countAndFlagsBits = 32032;
  v122._object = 0xE200000000000000;
  String.append(_:)(v122);
  v5 = 0x8000000100096950;
  sub_10005E11C(v178, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);
  0x8000000100096950, v123, v124, v125, v126, v127, v128, v129;
  _StringGuts.grow(_:)(50);
  0xE000000000000000, v130, v131, v132, v133, v134, v135, v136;
  sub_10004D808(v105, v104, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v137._countAndFlagsBits = String.init<A>(describing:)();
  v138 = v137._object;
  String.append(_:)(v137);
  v138, v139, v140, v141, v142, v143, v144, v145;
  v146._countAndFlagsBits = 32032;
  v146._object = 0xE200000000000000;
  String.append(_:)(v146);
  sub_10000B6B0();
  swift_allocError();
  *v147 = 0xD00000000000002ELL;
  *(v147 + 8) = 0x8000000100096950;
  *(v147 + 16) = 12;
  swift_willThrow();
  objc_autoreleasePoolPop(v175);
  sub_10004D630(v162, v163, v161, v160, v173, v159, v158, v148);
  *(v0 + 1408) = 0;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *v157 = 0u;
  *(v0 + 1416) = v179;
  *(v0 + 1424) = v180;
  *(v0 + 1432) = v165;
  *(v0 + 1440) = v172;
  *(v0 + 1448) = v167;
  *(v0 + 1450) = *(v0 + 122);
  *(v0 + 1454) = *(v0 + 126);
  *(v0 + 1456) = 0;
  *(v0 + 1464) = *(v0 + 2424);
  sub_10004D588(v157);
  v95 = sub_1000111EC((v168 + 16), *(v168 + 40))[1];
  v149 = swift_allocObject();
  *(v149 + 16) = sub_100011E70;
  *(v149 + 24) = v95;
  *(v0 + 1704) = sub_10004E120;
  *(v0 + 1712) = v149;
  *(v0 + 1672) = _NSConcreteStackBlock;
  *(v0 + 1680) = 1107296256;
  *(v0 + 1688) = sub_100010FA0;
  *(v0 + 1696) = &unk_1000B0318;
  v150 = _Block_copy((v0 + 1672));
  swift_retain_n();

  dispatch_sync(queue, v150);
  _Block_release(v150);
  v94 = swift_isEscapingClosureAtFileLocation();

  if ((v94 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_29:
  v169, v96, v97, v98, v99, v100, v101, v102;
  sub_10004D630(0, 0, 0, 0, 0, 0, 0, v151);
  *(v0 + 2424) = 0;
  *(v0 + 688) = v162;
  *(v0 + 696) = v163;
  *(v0 + 704) = v161;
  *(v0 + 712) = v160;
  *(v0 + 720) = v173;
  *(v0 + 728) = v159;
  *(v0 + 736) = v158;
  *(v0 + 744) = v179;
  *(v0 + 752) = v180;
  *(v0 + 760) = v165;
  *(v0 + 768) = v95;
  *(v0 + 776) = v94;
  *(v0 + 778) = *(v0 + 122);
  *(v0 + 782) = *(v0 + 126);
  *(v0 + 784) = v166;
  v152 = *(v0 + 2424);
  *(v0 + 792) = v152;
  *(v0 + 912) = v162;
  *(v0 + 920) = v163;
  *(v0 + 928) = v161;
  *(v0 + 936) = v160;
  *(v0 + 944) = v173;
  *(v0 + 952) = v159;
  *(v0 + 960) = v158;
  *(v0 + 968) = v179;
  *(v0 + 976) = v180;
  *(v0 + 984) = v165;
  *(v0 + 992) = v95;
  *(v0 + 1000) = v94;
  *(v0 + 1002) = *(v0 + 122);
  *(v0 + 1006) = *(v0 + 126);
  *(v0 + 1008) = v166;
  *(v0 + 1016) = v152;
  v34 = (v0 + 688);
  sub_10004D5D0(v0 + 688, v0 + 576);
  sub_10004D588(v0 + 912);
  v153 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
  v154 = swift_allocObject();
  *(v154 + 16) = sub_100011E70;
  *(v154 + 24) = v153;
  *(v0 + 1848) = sub_10004E120;
  *(v0 + 1856) = v154;
  *(v0 + 1816) = _NSConcreteStackBlock;
  *(v0 + 1824) = 1107296256;
  *(v0 + 1832) = sub_100010FA0;
  *(v0 + 1840) = &unk_1000B0368;
  v155 = _Block_copy((v0 + 1816));
  swift_retain_n();

  dispatch_sync(queue, v155);
  _Block_release(v155);
  v156 = swift_isEscapingClosureAtFileLocation();

  if (v156)
  {
    goto LABEL_34;
  }

  v51 = (v0 + 696);
  v50 = (v0 + 704);
  v49 = (v0 + 712);
  v48 = (v0 + 720);
  v47 = (v0 + 728);
  v46 = (v0 + 736);
  v39 = (v0 + 744);
  v40 = (v0 + 752);
  v41 = (v0 + 760);
  v42 = (v0 + 768);
  v43 = (v0 + 776);
  v44 = (v0 + 784);
  v45 = (v0 + 792);
LABEL_13:
  v52 = *v44;
  v53 = *v39;
  v54 = *v40;
  v55 = *v41;
  v56 = *v42;
  v57 = *v43;
  v58 = *v51;
  v59 = *v50;
  v60 = *v49;
  v61 = *v48;
  v62 = *v47;
  v63 = *v46;
  v64 = *(v0 + 2208);
  v181 = *v45;
  *v64 = *v34;
  *(v64 + 8) = v58;
  *(v64 + 16) = v59;
  *(v64 + 24) = v60;
  *(v64 + 32) = v61;
  *(v64 + 40) = v62;
  *(v64 + 48) = v63;
  *(v64 + 56) = v53;
  *(v64 + 64) = v54;
  *(v64 + 72) = v55;
  *(v64 + 80) = v56;
  *(v64 + 88) = v57;
  *(v64 + 96) = v52;
  *(v64 + 104) = v181;

  v12 = *(v0 + 8);
LABEL_6:

  v12();
}

uint64_t sub_10003ABB8()
{
  *(*v1 + 2344) = v0;

  if (v0)
  {
    v2 = sub_10003ED48;
  }

  else
  {
    v2 = sub_10003ACCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10003ACCC()
{
  v1 = (v0 + 2184);
  v2 = *(v0 + 2344);
  v3 = *(v0 + 2224);
  sub_1000111EC((v3 + 16), *(v3 + 40));
  v4 = qword_1000B6700;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v2)
  {

    *(v0 + 848) = 0;
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    *(v0 + 800) = 0u;
    *(v0 + 856) = 0xD000000000000048;
    *(v0 + 864) = 0x80000001000969C0;
    *(v0 + 872) = 17;
    *(v0 + 880) = 0;
    *(v0 + 888) = 256;
    *(v0 + 890) = *(v0 + 122);
    *(v0 + 894) = *(v0 + 126);
    *(v0 + 896) = 0;
    *(v0 + 904) = *(v0 + 2424);
    sub_10004D588(v0 + 800);
    v6 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100011E70;
    *(v7 + 24) = v6;
    *(v0 + 1752) = sub_10004E120;
    *(v0 + 1760) = v7;
    *(v0 + 1720) = _NSConcreteStackBlock;
    *(v0 + 1728) = 1107296256;
    *(v0 + 1736) = sub_100010FA0;
    *(v0 + 1744) = &unk_1000B0228;
    v8 = _Block_copy((v0 + 1720));
    swift_retain_n();

    dispatch_sync(v5, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_5:

      v10 = *(v0 + 8);
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*v1 <= 0)
  {
    v31 = static os_log_type_t.default.getter();
    sub_10005E11C(v31, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
    *(v0 + 1184) = 0;
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
    *(v0 + 1136) = 0u;
    *(v0 + 1192) = 0xD000000000000048;
    *(v0 + 1200) = 0x80000001000969C0;
    *(v0 + 1208) = xmmword_100091580;
    *(v0 + 1224) = 256;
    *(v0 + 1226) = *(v0 + 122);
    *(v0 + 1230) = *(v0 + 126);
    *(v0 + 1232) = 0;
    v32 = *(v0 + 2424);
    *(v0 + 1240) = v32;
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
    *(v0 + 1056) = 0u;
    *(v0 + 1072) = 0;
    *(v0 + 1080) = 0xD000000000000048;
    *(v0 + 1088) = 0x80000001000969C0;
    *(v0 + 1096) = 17;
    *(v0 + 1104) = 0;
    *(v0 + 1112) = 256;
    *(v0 + 1114) = *(v0 + 122);
    *(v0 + 1118) = *(v0 + 126);
    *(v0 + 1120) = 0;
    *(v0 + 1128) = v32;
    v33 = (v0 + 1136);
    sub_10004D5D0(v0 + 1136, v0 + 1248);
    sub_10004D588(v0 + 1024);
    v34 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
    v35 = swift_allocObject();
    *(v35 + 16) = sub_100011E70;
    *(v35 + 24) = v34;
    *(v0 + 1656) = sub_10004E120;
    *(v0 + 1664) = v35;
    *(v0 + 1624) = _NSConcreteStackBlock;
    *(v0 + 1632) = 1107296256;
    *(v0 + 1640) = sub_100010FA0;
    *(v0 + 1648) = &unk_1000B0278;
    v36 = _Block_copy((v0 + 1624));
    swift_retain_n();

    dispatch_sync(v5, v36);
    _Block_release(v36);
    v37 = swift_isEscapingClosureAtFileLocation();

    if ((v37 & 1) == 0)
    {
      v38 = (v0 + 1192);
      v39 = (v0 + 1200);
      v40 = (v0 + 1240);
      v41 = (v0 + 1208);
      v42 = (v0 + 1224);
      v43 = (v0 + 1232);
      v44 = (v0 + 1216);
      v45 = (v0 + 1184);
      v46 = (v0 + 1176);
      v47 = (v0 + 1168);
      v48 = (v0 + 1160);
      v49 = (v0 + 1152);
      v50 = (v0 + 1144);
      goto LABEL_13;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v169 = *(v0 + 2256);
  v171 = *(v0 + 2264);
  v11 = *v1;
  v12 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(66);
  v13._countAndFlagsBits = 0xD00000000000003ELL;
  v13._object = 0x8000000100096910;
  String.append(_:)(v13);
  v167 = v11;
  *(v0 + 2200) = v11;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v14._object;
  String.append(_:)(v14);
  object, v16, v17, v18, v19, v20, v21, v22;
  v23._countAndFlagsBits = 32032;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  sub_10005E11C(v12, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);
  0xE000000000000000, v24, v25, v26, v27, v28, v29, v30;
  type metadata accessor for SpamDecisioningAsset(0);
  v165 = sub_10003F940(v169, v171);
  queue = v5;
  v65 = 0;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  v168 = 0;
  v157 = 0;
  v158 = 0;
  v156 = (v0 + 1360);
  v172 = (v0 + 1472);
  v66 = (v0 + 2192);
  v164 = v3;
  while (1)
  {
    v170 = objc_autoreleasePoolPush();
    v67 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
    v68 = swift_task_alloc();
    *(v68 + 16) = v67;
    *(v68 + 24) = 1000;
    *(v68 + 32) = 0;
    *(v68 + 40) = v65;
    *(v68 + 48) = 0;

    sub_100002074(&qword_1000B7A58, &qword_100091810);
    OS_dispatch_queue.sync<A>(execute:)();

    v69 = v66;
    v70 = *v66;
    sub_10005D8F4(v165, *v66, v172);
    v70, v71, v72, v73, v74, v75, v76, v77;
    v85 = *(v0 + 1504);
    if (!v85)
    {
      break;
    }

    v86 = *(v0 + 1480);
    v87 = *(v0 + 1488);
    v88 = *(v0 + 1496);
    v89 = *(v0 + 1512);
    v90 = *(v0 + 1520);
    v91 = *v172;
    if (!v168)
    {
      v160 = *(v0 + 1488);
      v161 = *v172;
      v159 = *(v0 + 1496);
      v168 = *(v0 + 1504);
      v157 = *(v0 + 1520);
      v158 = *(v0 + 1512);
      v92 = v86 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
LABEL_20:
      v162 = v92;
      goto LABEL_21;
    }

    if ((v86 & 1) == 0 && (v162 & 1) == 0 && *(&v161 + 1) < *(&v91 + 1))
    {
      v102 = v162;
      v163 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
      sub_10004D630(v161, v102, v160, v159, v168, v158, v157, v84);
      v160 = v87;
      v161 = v91;
      v159 = v88;
      v168 = v85;
      v157 = v90;
      v158 = v89;
      v92 = v86 | (v163 << 8);
      goto LABEL_20;
    }

    sub_10000BC10(v172, &qword_1000B7A80, &qword_100091848);
LABEL_21:
    v93 = v65 + 1000;
    v3 = v164;
    v94 = 0xD000000000000048;
    if (__OFADD__(v65, 1000))
    {
      __break(1u);
      goto LABEL_32;
    }

    objc_autoreleasePoolPop(v170);
    v65 += 1000;
    v66 = v69;
    if (v93 >= v167)
    {
      goto LABEL_29;
    }
  }

  v103 = *(v0 + 2240);
  v167 = *(v0 + 2232);
  v104 = *(v0 + 2216);
  v165, v78, v79, v80, v81, v82, v83, v84;
  v173 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(50);
  0xE000000000000000, v105, v106, v107, v108, v109, v110, v111;
  sub_10004D808(v104, v103, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v112._countAndFlagsBits = String.init<A>(describing:)();
  v113 = v112._object;
  String.append(_:)(v112);
  v113, v114, v115, v116, v117, v118, v119, v120;
  v121._countAndFlagsBits = 32032;
  v121._object = 0xE200000000000000;
  String.append(_:)(v121);
  v3 = 0x8000000100096950;
  sub_10005E11C(v173, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);
  0x8000000100096950, v122, v123, v124, v125, v126, v127, v128;
  _StringGuts.grow(_:)(50);
  0xE000000000000000, v129, v130, v131, v132, v133, v134, v135;
  sub_10004D808(v104, v103, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v136._countAndFlagsBits = String.init<A>(describing:)();
  v137 = v136._object;
  String.append(_:)(v136);
  v137, v138, v139, v140, v141, v142, v143, v144;
  v145._countAndFlagsBits = 32032;
  v145._object = 0xE200000000000000;
  String.append(_:)(v145);
  sub_10000B6B0();
  swift_allocError();
  *v146 = 0xD00000000000002ELL;
  *(v146 + 8) = 0x8000000100096950;
  *(v146 + 16) = 12;
  swift_willThrow();
  objc_autoreleasePoolPop(v170);
  sub_10004D630(v161, v162, v160, v159, v168, v158, v157, v147);
  *(v0 + 1408) = 0;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *v156 = 0u;
  *(v0 + 1416) = 0xD000000000000048;
  *(v0 + 1424) = 0x80000001000969C0;
  *(v0 + 1432) = 17;
  *(v0 + 1440) = 0;
  *(v0 + 1448) = 256;
  *(v0 + 1450) = *(v0 + 122);
  *(v0 + 1454) = *(v0 + 126);
  *(v0 + 1456) = 0;
  *(v0 + 1464) = *(v0 + 2424);
  sub_10004D588(v156);
  v148 = sub_1000111EC((v164 + 16), *(v164 + 40))[1];
  v149 = swift_allocObject();
  *(v149 + 16) = sub_100011E70;
  *(v149 + 24) = v148;
  *(v0 + 1704) = sub_10004E120;
  *(v0 + 1712) = v149;
  *(v0 + 1672) = _NSConcreteStackBlock;
  *(v0 + 1680) = 1107296256;
  *(v0 + 1688) = sub_100010FA0;
  *(v0 + 1696) = &unk_1000B0318;
  v94 = _Block_copy((v0 + 1672));
  swift_retain_n();

  dispatch_sync(queue, v94);
  _Block_release(v94);
  LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

  if ((v104 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_29:
  v165, v95, v96, v97, v98, v99, v100, v101;
  sub_10004D630(0, 0, 0, 0, 0, 0, 0, v150);
  *(v0 + 2424) = 0;
  *(v0 + 688) = v161;
  *(v0 + 696) = v162;
  *(v0 + 704) = v160;
  *(v0 + 712) = v159;
  *(v0 + 720) = v168;
  *(v0 + 728) = v158;
  *(v0 + 736) = v157;
  *(v0 + 744) = v94;
  *(v0 + 752) = 0x80000001000969C0;
  v41 = (v0 + 760);
  *(v0 + 760) = xmmword_100091580;
  v40 = (v0 + 792);
  *(v0 + 776) = 256;
  *(v0 + 778) = *(v0 + 122);
  *(v0 + 782) = *(v0 + 126);
  *(v0 + 784) = v167;
  v151 = *(v0 + 2424);
  *(v0 + 792) = v151;
  *(v0 + 912) = v161;
  *(v0 + 920) = v162;
  *(v0 + 928) = v160;
  *(v0 + 936) = v159;
  *(v0 + 944) = v168;
  *(v0 + 952) = v158;
  *(v0 + 960) = v157;
  *(v0 + 968) = 0xD000000000000048;
  *(v0 + 976) = 0x80000001000969C0;
  *(v0 + 984) = 17;
  *(v0 + 992) = 0;
  *(v0 + 1000) = 256;
  *(v0 + 1002) = *(v0 + 122);
  *(v0 + 1006) = *(v0 + 126);
  *(v0 + 1008) = v167;
  *(v0 + 1016) = v151;
  v33 = (v0 + 688);
  sub_10004D5D0(v0 + 688, v0 + 576);
  sub_10004D588(v0 + 912);
  v152 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
  v153 = swift_allocObject();
  *(v153 + 16) = sub_100011E70;
  *(v153 + 24) = v152;
  *(v0 + 1848) = sub_10004E120;
  *(v0 + 1856) = v153;
  *(v0 + 1816) = _NSConcreteStackBlock;
  *(v0 + 1824) = 1107296256;
  *(v0 + 1832) = sub_100010FA0;
  *(v0 + 1840) = &unk_1000B0368;
  v154 = _Block_copy((v0 + 1816));
  swift_retain_n();

  dispatch_sync(queue, v154);
  _Block_release(v154);
  v155 = swift_isEscapingClosureAtFileLocation();

  if (v155)
  {
    goto LABEL_34;
  }

  v50 = (v0 + 696);
  v49 = (v0 + 704);
  v48 = (v0 + 712);
  v47 = (v0 + 720);
  v46 = (v0 + 728);
  v45 = (v0 + 736);
  v38 = (v0 + 744);
  v39 = (v0 + 752);
  v44 = (v0 + 768);
  v42 = (v0 + 776);
  v43 = (v0 + 784);
LABEL_13:
  v51 = *v43;
  v53 = *v38;
  v54 = *v39;
  v55 = *v41;
  v56 = *v44;
  v57 = *v42;
  v58 = *v50;
  v59 = *v49;
  v60 = *v48;
  v61 = *v47;
  v62 = *v46;
  v63 = *v45;
  v64 = *(v0 + 2208);
  v52 = *v40;
  *v64 = *v33;
  *(v64 + 8) = v58;
  *(v64 + 16) = v59;
  *(v64 + 24) = v60;
  *(v64 + 32) = v61;
  *(v64 + 40) = v62;
  *(v64 + 48) = v63;
  *(v64 + 56) = v53;
  *(v64 + 64) = v54;
  *(v64 + 72) = v55;
  *(v64 + 80) = v56;
  *(v64 + 88) = v57;
  *(v64 + 96) = v51;
  *(v64 + 104) = v52;

  v10 = *(v0 + 8);
LABEL_6:

  v10();
}

uint64_t sub_10003BCC0()
{
  *(*v1 + 2384) = v0;

  if (v0)
  {
    v2 = sub_10003F4CC;
  }

  else
  {
    v2 = sub_10003BDD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10003BDD4()
{
  v1 = (v0 + 2184);

  v2 = *(v0 + 2384);
  v3 = *(v0 + 2368);
  v4 = *(v0 + 2360);
  v5 = *(v0 + 2224);
  sub_1000111EC((v5 + 16), *(v5 + 40));
  v6 = qword_1000B6700;

  if (v6 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v7 = qword_1000B89E0;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v2)
    {

      *(v0 + 848) = 0;
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      *(v0 + 800) = 0u;
      *(v0 + 856) = v4;
      *(v0 + 864) = v3;
      *(v0 + 872) = 9;
      *(v0 + 880) = 0;
      *(v0 + 888) = 256;
      *(v0 + 890) = *(v0 + 122);
      *(v0 + 894) = *(v0 + 126);
      *(v0 + 896) = 0;
      *(v0 + 904) = *(v0 + 2424);
      sub_10004D588(v0 + 800);
      v8 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
      v9 = swift_allocObject();
      *(v9 + 16) = sub_100011E70;
      *(v9 + 24) = v8;
      *(v0 + 1752) = sub_10004E120;
      *(v0 + 1760) = v9;
      *(v0 + 1720) = _NSConcreteStackBlock;
      *(v0 + 1728) = 1107296256;
      *(v0 + 1736) = sub_100010FA0;
      *(v0 + 1744) = &unk_1000B0228;
      v10 = _Block_copy((v0 + 1720));
      swift_retain_n();

      dispatch_sync(v7, v10);
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_4:

        v12 = *(v0 + 8);
LABEL_5:

        v12();
        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v162 = v3;

    if (*v1 <= 0)
    {
      break;
    }

    v167 = v4;
    v171 = *(v0 + 2256);
    v173 = *(v0 + 2264);
    v13 = *v1;
    v14 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(66);
    v15._countAndFlagsBits = 0xD00000000000003ELL;
    v15._object = 0x8000000100096910;
    String.append(_:)(v15);
    v166 = v13;
    *(v0 + 2200) = v13;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v16._object;
    String.append(_:)(v16);
    object, v18, v19, v20, v21, v22, v23, v24;
    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v14, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);
    0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
    type metadata accessor for SpamDecisioningAsset(0);
    v164 = sub_10003F940(v171, v173);
    queue = v7;
    v67 = 0;
    v169 = 0;
    v160 = 0;
    v161 = 0;
    v159 = 0;
    v168 = 0;
    v157 = 0;
    v158 = 0;
    v156 = (v0 + 1360);
    v174 = (v0 + 1472);
    v68 = (v0 + 2192);
    v163 = v5;
    while (1)
    {
      v172 = objc_autoreleasePoolPush();
      v69 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
      v70 = swift_task_alloc();
      *(v70 + 16) = v69;
      *(v70 + 24) = 1000;
      *(v70 + 32) = 0;
      *(v70 + 40) = v67;
      *(v70 + 48) = 0;

      sub_100002074(&qword_1000B7A58, &qword_100091810);
      OS_dispatch_queue.sync<A>(execute:)();

      v71 = v68;
      v72 = *v68;
      sub_10005D8F4(v164, *v68, v174);
      v72, v73, v74, v75, v76, v77, v78, v79;
      v87 = *(v0 + 1504);
      if (!v87)
      {
        break;
      }

      v88 = *(v0 + 1480);
      v89 = *(v0 + 1488);
      v90 = *(v0 + 1496);
      v91 = *(v0 + 1512);
      v92 = *(v0 + 1520);
      v93 = *v174;
      if (!v168)
      {
        v95 = *v174;
        v159 = *(v0 + 1496);
        v160 = *(v0 + 1488);
        v168 = *(v0 + 1504);
        v157 = *(v0 + 1520);
        v158 = *(v0 + 1512);
        v96 = v88 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
        goto LABEL_21;
      }

      if ((v88 & 1) == 0 && (v161 & 1) == 0)
      {
        v94 = v169;
        if (*(&v169 + 1) < *(&v93 + 1))
        {
          v170 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
          sub_10004D630(v94, v161, v160, v159, v168, v158, v157, v86);
          v95 = v93;
          v159 = v90;
          v160 = v89;
          v168 = v87;
          v157 = v92;
          v158 = v91;
          v96 = v88 | (v170 << 8);
LABEL_21:
          v161 = v96;
          goto LABEL_22;
        }
      }

      sub_10000BC10(v174, &qword_1000B7A80, &qword_100091848);
      v95 = v169;
LABEL_22:
      v97 = v67 + 1000;
      v5 = v163;
      if (__OFADD__(v67, 1000))
      {
        __break(1u);
        goto LABEL_30;
      }

      v169 = v95;
      objc_autoreleasePoolPop(v172);
      v67 += 1000;
      v68 = v71;
      if (v97 >= v166)
      {
        v164, v98, v99, v100, v101, v102, v103, v104;
        sub_10004D630(0, 0, 0, 0, 0, 0, 0, v105);
        *(v0 + 2424) = 0;
        *(v0 + 688) = v169;
        *(v0 + 696) = v161;
        *(v0 + 704) = v160;
        *(v0 + 712) = v159;
        *(v0 + 720) = v168;
        *(v0 + 728) = v158;
        v43 = (v0 + 760);
        *(v0 + 736) = v157;
        *(v0 + 744) = v167;
        *(v0 + 752) = v162;
        *(v0 + 760) = xmmword_100091590;
        v42 = (v0 + 792);
        *(v0 + 776) = 256;
        *(v0 + 778) = *(v0 + 122);
        *(v0 + 782) = *(v0 + 126);
        *(v0 + 784) = v166;
        v106 = *(v0 + 2424);
        *(v0 + 792) = v106;
        *(v0 + 912) = v169;
        *(v0 + 920) = v161;
        *(v0 + 928) = v160;
        *(v0 + 936) = v159;
        *(v0 + 944) = v168;
        *(v0 + 952) = v158;
        *(v0 + 960) = v157;
        *(v0 + 968) = v167;
        *(v0 + 976) = v162;
        *(v0 + 984) = 9;
        *(v0 + 992) = 0;
        *(v0 + 1000) = 256;
        *(v0 + 1002) = *(v0 + 122);
        *(v0 + 1006) = *(v0 + 126);
        *(v0 + 1008) = v166;
        *(v0 + 1016) = v106;
        v35 = (v0 + 688);
        sub_10004D5D0(v0 + 688, v0 + 576);
        sub_10004D588(v0 + 912);
        v107 = sub_1000111EC((v163 + 16), *(v163 + 40))[1];
        v108 = swift_allocObject();
        *(v108 + 16) = sub_100011E70;
        *(v108 + 24) = v107;
        *(v0 + 1848) = sub_10004E120;
        *(v0 + 1856) = v108;
        *(v0 + 1816) = _NSConcreteStackBlock;
        *(v0 + 1824) = 1107296256;
        *(v0 + 1832) = sub_100010FA0;
        *(v0 + 1840) = &unk_1000B0368;
        v109 = _Block_copy((v0 + 1816));
        swift_retain_n();

        dispatch_sync(queue, v109);
        _Block_release(v109);
        LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

        if (v109)
        {
          goto LABEL_32;
        }

        v52 = (v0 + 696);
        v51 = (v0 + 704);
        v50 = (v0 + 712);
        v49 = (v0 + 720);
        v48 = (v0 + 728);
        v47 = (v0 + 736);
        v40 = (v0 + 744);
        v41 = (v0 + 752);
        v46 = (v0 + 768);
        v44 = (v0 + 776);
        v45 = (v0 + 784);
        goto LABEL_12;
      }
    }

    v110 = *(v0 + 2240);
    v111 = *(v0 + 2216);
    v164, v80, v81, v82, v83, v84, v85, v86;
    v175 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v112, v113, v114, v115, v116, v117, v118;
    sub_10004D808(v111, v110, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v119._countAndFlagsBits = String.init<A>(describing:)();
    v120 = v119._object;
    String.append(_:)(v119);
    v120, v121, v122, v123, v124, v125, v126, v127;
    v128._countAndFlagsBits = 32032;
    v128._object = 0xE200000000000000;
    String.append(_:)(v128);
    v5 = 0x8000000100096950;
    sub_10005E11C(v175, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);
    0x8000000100096950, v129, v130, v131, v132, v133, v134, v135;
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v136, v137, v138, v139, v140, v141, v142;
    sub_10004D808(v111, v110, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v143._countAndFlagsBits = String.init<A>(describing:)();
    v144 = v143._object;
    String.append(_:)(v143);
    v144, v145, v146, v147, v148, v149, v150, v151;
    v152._countAndFlagsBits = 32032;
    v152._object = 0xE200000000000000;
    String.append(_:)(v152);
    sub_10000B6B0();
    swift_allocError();
    *v153 = 0xD00000000000002ELL;
    *(v153 + 8) = 0x8000000100096950;
    *(v153 + 16) = 12;
    swift_willThrow();
    objc_autoreleasePoolPop(v172);
    sub_10004D630(v169, v161, v160, v159, v168, v158, v157, v154);
    *(v0 + 1408) = 0;
    *(v0 + 1376) = 0u;
    *(v0 + 1392) = 0u;
    *v156 = 0u;
    *(v0 + 1416) = v167;
    *(v0 + 1424) = v162;
    *(v0 + 1432) = 9;
    *(v0 + 1440) = 0;
    *(v0 + 1448) = 256;
    *(v0 + 1450) = *(v0 + 122);
    *(v0 + 1454) = *(v0 + 126);
    *(v0 + 1456) = 0;
    *(v0 + 1464) = *(v0 + 2424);
    sub_10004D588(v156);
    v2 = sub_1000111EC((v163 + 16), *(v163 + 40))[1];
    v1 = swift_allocObject();
    v1[2] = sub_100011E70;
    v1[3] = v2;
    *(v0 + 1704) = sub_10004E120;
    *(v0 + 1712) = v1;
    *(v0 + 1672) = _NSConcreteStackBlock;
    *(v0 + 1680) = 1107296256;
    *(v0 + 1688) = sub_100010FA0;
    *(v0 + 1696) = &unk_1000B0318;
    v155 = _Block_copy((v0 + 1672));
    v4 = *(v0 + 1712);
    swift_retain_n();

    dispatch_sync(queue, v155);
    _Block_release(v155);
    v3 = swift_isEscapingClosureAtFileLocation();

    if ((v3 & 1) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v33 = static os_log_type_t.default.getter();
  sub_10005E11C(v33, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
  *(v0 + 1184) = 0;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0u;
  *(v0 + 1136) = 0u;
  *(v0 + 1192) = v4;
  *(v0 + 1200) = v3;
  *(v0 + 1208) = xmmword_100091590;
  *(v0 + 1224) = 256;
  *(v0 + 1226) = *(v0 + 122);
  *(v0 + 1230) = *(v0 + 126);
  *(v0 + 1232) = 0;
  v34 = *(v0 + 2424);
  *(v0 + 1240) = v34;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0;
  *(v0 + 1080) = v4;
  *(v0 + 1088) = v3;
  *(v0 + 1096) = 9;
  *(v0 + 1104) = 0;
  *(v0 + 1112) = 256;
  *(v0 + 1114) = *(v0 + 122);
  *(v0 + 1118) = *(v0 + 126);
  *(v0 + 1120) = 0;
  *(v0 + 1128) = v34;
  v35 = (v0 + 1136);
  sub_10004D5D0(v0 + 1136, v0 + 1248);
  sub_10004D588(v0 + 1024);
  v36 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100011E70;
  *(v37 + 24) = v36;
  *(v0 + 1656) = sub_10004E120;
  *(v0 + 1664) = v37;
  *(v0 + 1624) = _NSConcreteStackBlock;
  *(v0 + 1632) = 1107296256;
  *(v0 + 1640) = sub_100010FA0;
  *(v0 + 1648) = &unk_1000B0278;
  v38 = _Block_copy((v0 + 1624));
  swift_retain_n();

  dispatch_sync(v7, v38);
  _Block_release(v38);
  v39 = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    v40 = (v0 + 1192);
    v41 = (v0 + 1200);
    v42 = (v0 + 1240);
    v43 = (v0 + 1208);
    v44 = (v0 + 1224);
    v45 = (v0 + 1232);
    v46 = (v0 + 1216);
    v47 = (v0 + 1184);
    v48 = (v0 + 1176);
    v49 = (v0 + 1168);
    v50 = (v0 + 1160);
    v51 = (v0 + 1152);
    v52 = (v0 + 1144);
LABEL_12:
    v53 = *v45;
    v55 = *v40;
    v56 = *v41;
    v57 = *v43;
    v58 = *v46;
    v59 = *v44;
    v60 = *v52;
    v61 = *v51;
    v62 = *v50;
    v63 = *v49;
    v64 = *v48;
    v65 = *v47;
    v66 = *(v0 + 2208);
    v54 = *v42;
    *v66 = *v35;
    *(v66 + 8) = v60;
    *(v66 + 16) = v61;
    *(v66 + 24) = v62;
    *(v66 + 32) = v63;
    *(v66 + 40) = v64;
    *(v66 + 48) = v65;
    *(v66 + 56) = v55;
    *(v66 + 64) = v56;
    *(v66 + 72) = v57;
    *(v66 + 80) = v58;
    *(v66 + 88) = v59;
    *(v66 + 96) = v53;
    *(v66 + 104) = v54;

    v12 = *(v0 + 8);
    goto LABEL_5;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10003CD94()
{
  *(*v1 + 2416) = v0;

  if (v0)
  {
    v2 = sub_10003F708;
  }

  else
  {
    v2 = sub_10003CEA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10003CEA8()
{
  v1 = (v0 + 2184);

  v2 = *(v0 + 2416);
  v3 = *(v0 + 2400);
  v4 = *(v0 + 2392);
  v5 = *(v0 + 2224);
  sub_1000111EC((v5 + 16), *(v5 + 40));
  v6 = qword_1000B6700;

  if (v6 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v7 = qword_1000B89E0;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v2)
    {

      *(v0 + 848) = 0;
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      *(v0 + 800) = 0u;
      *(v0 + 856) = v4;
      *(v0 + 864) = v3;
      *(v0 + 872) = 3;
      *(v0 + 880) = 0;
      *(v0 + 888) = 256;
      *(v0 + 890) = *(v0 + 122);
      *(v0 + 894) = *(v0 + 126);
      *(v0 + 896) = 0;
      *(v0 + 904) = *(v0 + 2424);
      sub_10004D588(v0 + 800);
      v8 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
      v9 = swift_allocObject();
      *(v9 + 16) = sub_100011E70;
      *(v9 + 24) = v8;
      *(v0 + 1752) = sub_10004E120;
      *(v0 + 1760) = v9;
      *(v0 + 1720) = _NSConcreteStackBlock;
      *(v0 + 1728) = 1107296256;
      *(v0 + 1736) = sub_100010FA0;
      *(v0 + 1744) = &unk_1000B0228;
      v10 = _Block_copy((v0 + 1720));
      swift_retain_n();

      dispatch_sync(v7, v10);
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_4:

        v12 = *(v0 + 8);
LABEL_5:

        v12();
        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v162 = v3;

    if (*v1 <= 0)
    {
      break;
    }

    v167 = v4;
    v171 = *(v0 + 2256);
    v173 = *(v0 + 2264);
    v13 = *v1;
    v14 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(66);
    v15._countAndFlagsBits = 0xD00000000000003ELL;
    v15._object = 0x8000000100096910;
    String.append(_:)(v15);
    v166 = v13;
    *(v0 + 2200) = v13;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v16._object;
    String.append(_:)(v16);
    object, v18, v19, v20, v21, v22, v23, v24;
    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v14, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 210);
    0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
    type metadata accessor for SpamDecisioningAsset(0);
    v164 = sub_10003F940(v171, v173);
    queue = v7;
    v67 = 0;
    v169 = 0;
    v160 = 0;
    v161 = 0;
    v159 = 0;
    v168 = 0;
    v157 = 0;
    v158 = 0;
    v156 = (v0 + 1360);
    v174 = (v0 + 1472);
    v68 = (v0 + 2192);
    v163 = v5;
    while (1)
    {
      v172 = objc_autoreleasePoolPush();
      v69 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
      v70 = swift_task_alloc();
      *(v70 + 16) = v69;
      *(v70 + 24) = 1000;
      *(v70 + 32) = 0;
      *(v70 + 40) = v67;
      *(v70 + 48) = 0;

      sub_100002074(&qword_1000B7A58, &qword_100091810);
      OS_dispatch_queue.sync<A>(execute:)();

      v71 = v68;
      v72 = *v68;
      sub_10005D8F4(v164, *v68, v174);
      v72, v73, v74, v75, v76, v77, v78, v79;
      v87 = *(v0 + 1504);
      if (!v87)
      {
        break;
      }

      v88 = *(v0 + 1480);
      v89 = *(v0 + 1488);
      v90 = *(v0 + 1496);
      v91 = *(v0 + 1512);
      v92 = *(v0 + 1520);
      v93 = *v174;
      if (!v168)
      {
        v95 = *v174;
        v159 = *(v0 + 1496);
        v160 = *(v0 + 1488);
        v168 = *(v0 + 1504);
        v157 = *(v0 + 1520);
        v158 = *(v0 + 1512);
        v96 = v88 | ((*(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32)) << 8);
        goto LABEL_21;
      }

      if ((v88 & 1) == 0 && (v161 & 1) == 0)
      {
        v94 = v169;
        if (*(&v169 + 1) < *(&v93 + 1))
        {
          v170 = *(v0 + 1481) | ((*(v0 + 1485) | (*(v0 + 1487) << 16)) << 32);
          sub_10004D630(v94, v161, v160, v159, v168, v158, v157, v86);
          v95 = v93;
          v159 = v90;
          v160 = v89;
          v168 = v87;
          v157 = v92;
          v158 = v91;
          v96 = v88 | (v170 << 8);
LABEL_21:
          v161 = v96;
          goto LABEL_22;
        }
      }

      sub_10000BC10(v174, &qword_1000B7A80, &qword_100091848);
      v95 = v169;
LABEL_22:
      v97 = v67 + 1000;
      v5 = v163;
      if (__OFADD__(v67, 1000))
      {
        __break(1u);
        goto LABEL_30;
      }

      v169 = v95;
      objc_autoreleasePoolPop(v172);
      v67 += 1000;
      v68 = v71;
      if (v97 >= v166)
      {
        v164, v98, v99, v100, v101, v102, v103, v104;
        sub_10004D630(0, 0, 0, 0, 0, 0, 0, v105);
        *(v0 + 2424) = 0;
        *(v0 + 688) = v169;
        *(v0 + 696) = v161;
        *(v0 + 704) = v160;
        *(v0 + 712) = v159;
        *(v0 + 720) = v168;
        *(v0 + 728) = v158;
        v43 = (v0 + 760);
        *(v0 + 736) = v157;
        *(v0 + 744) = v167;
        *(v0 + 752) = v162;
        *(v0 + 760) = xmmword_1000915A0;
        v42 = (v0 + 792);
        *(v0 + 776) = 256;
        *(v0 + 778) = *(v0 + 122);
        *(v0 + 782) = *(v0 + 126);
        *(v0 + 784) = v166;
        v106 = *(v0 + 2424);
        *(v0 + 792) = v106;
        *(v0 + 912) = v169;
        *(v0 + 920) = v161;
        *(v0 + 928) = v160;
        *(v0 + 936) = v159;
        *(v0 + 944) = v168;
        *(v0 + 952) = v158;
        *(v0 + 960) = v157;
        *(v0 + 968) = v167;
        *(v0 + 976) = v162;
        *(v0 + 984) = 3;
        *(v0 + 992) = 0;
        *(v0 + 1000) = 256;
        *(v0 + 1002) = *(v0 + 122);
        *(v0 + 1006) = *(v0 + 126);
        *(v0 + 1008) = v166;
        *(v0 + 1016) = v106;
        v35 = (v0 + 688);
        sub_10004D5D0(v0 + 688, v0 + 576);
        sub_10004D588(v0 + 912);
        v107 = sub_1000111EC((v163 + 16), *(v163 + 40))[1];
        v108 = swift_allocObject();
        *(v108 + 16) = sub_100011E70;
        *(v108 + 24) = v107;
        *(v0 + 1848) = sub_10004E120;
        *(v0 + 1856) = v108;
        *(v0 + 1816) = _NSConcreteStackBlock;
        *(v0 + 1824) = 1107296256;
        *(v0 + 1832) = sub_100010FA0;
        *(v0 + 1840) = &unk_1000B0368;
        v109 = _Block_copy((v0 + 1816));
        swift_retain_n();

        dispatch_sync(queue, v109);
        _Block_release(v109);
        LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

        if (v109)
        {
          goto LABEL_32;
        }

        v52 = (v0 + 696);
        v51 = (v0 + 704);
        v50 = (v0 + 712);
        v49 = (v0 + 720);
        v48 = (v0 + 728);
        v47 = (v0 + 736);
        v40 = (v0 + 744);
        v41 = (v0 + 752);
        v46 = (v0 + 768);
        v44 = (v0 + 776);
        v45 = (v0 + 784);
        goto LABEL_12;
      }
    }

    v110 = *(v0 + 2240);
    v111 = *(v0 + 2216);
    v164, v80, v81, v82, v83, v84, v85, v86;
    v175 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v112, v113, v114, v115, v116, v117, v118;
    sub_10004D808(v111, v110, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v119._countAndFlagsBits = String.init<A>(describing:)();
    v120 = v119._object;
    String.append(_:)(v119);
    v120, v121, v122, v123, v124, v125, v126, v127;
    v128._countAndFlagsBits = 32032;
    v128._object = 0xE200000000000000;
    String.append(_:)(v128);
    v5 = 0x8000000100096950;
    sub_10005E11C(v175, 0xD00000000000002ELL, 0x8000000100096950, 0xD00000000000006ALL, 0x8000000100095F40, 221);
    0x8000000100096950, v129, v130, v131, v132, v133, v134, v135;
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v136, v137, v138, v139, v140, v141, v142;
    sub_10004D808(v111, v110, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
    v143._countAndFlagsBits = String.init<A>(describing:)();
    v144 = v143._object;
    String.append(_:)(v143);
    v144, v145, v146, v147, v148, v149, v150, v151;
    v152._countAndFlagsBits = 32032;
    v152._object = 0xE200000000000000;
    String.append(_:)(v152);
    sub_10000B6B0();
    swift_allocError();
    *v153 = 0xD00000000000002ELL;
    *(v153 + 8) = 0x8000000100096950;
    *(v153 + 16) = 12;
    swift_willThrow();
    objc_autoreleasePoolPop(v172);
    sub_10004D630(v169, v161, v160, v159, v168, v158, v157, v154);
    *(v0 + 1408) = 0;
    *(v0 + 1376) = 0u;
    *(v0 + 1392) = 0u;
    *v156 = 0u;
    *(v0 + 1416) = v167;
    *(v0 + 1424) = v162;
    *(v0 + 1432) = 3;
    *(v0 + 1440) = 0;
    *(v0 + 1448) = 256;
    *(v0 + 1450) = *(v0 + 122);
    *(v0 + 1454) = *(v0 + 126);
    *(v0 + 1456) = 0;
    *(v0 + 1464) = *(v0 + 2424);
    sub_10004D588(v156);
    v2 = sub_1000111EC((v163 + 16), *(v163 + 40))[1];
    v1 = swift_allocObject();
    v1[2] = sub_100011E70;
    v1[3] = v2;
    *(v0 + 1704) = sub_10004E120;
    *(v0 + 1712) = v1;
    *(v0 + 1672) = _NSConcreteStackBlock;
    *(v0 + 1680) = 1107296256;
    *(v0 + 1688) = sub_100010FA0;
    *(v0 + 1696) = &unk_1000B0318;
    v155 = _Block_copy((v0 + 1672));
    v4 = *(v0 + 1712);
    swift_retain_n();

    dispatch_sync(queue, v155);
    _Block_release(v155);
    v3 = swift_isEscapingClosureAtFileLocation();

    if ((v3 & 1) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v33 = static os_log_type_t.default.getter();
  sub_10005E11C(v33, 0xD00000000000003FLL, 0x80000001000968D0, 0xD00000000000006ALL, 0x8000000100095F40, 206);
  *(v0 + 1184) = 0;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0u;
  *(v0 + 1136) = 0u;
  *(v0 + 1192) = v4;
  *(v0 + 1200) = v3;
  *(v0 + 1208) = xmmword_1000915A0;
  *(v0 + 1224) = 256;
  *(v0 + 1226) = *(v0 + 122);
  *(v0 + 1230) = *(v0 + 126);
  *(v0 + 1232) = 0;
  v34 = *(v0 + 2424);
  *(v0 + 1240) = v34;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0;
  *(v0 + 1080) = v4;
  *(v0 + 1088) = v3;
  *(v0 + 1096) = 3;
  *(v0 + 1104) = 0;
  *(v0 + 1112) = 256;
  *(v0 + 1114) = *(v0 + 122);
  *(v0 + 1118) = *(v0 + 126);
  *(v0 + 1120) = 0;
  *(v0 + 1128) = v34;
  v35 = (v0 + 1136);
  sub_10004D5D0(v0 + 1136, v0 + 1248);
  sub_10004D588(v0 + 1024);
  v36 = sub_1000111EC((v5 + 16), *(v5 + 40))[1];
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100011E70;
  *(v37 + 24) = v36;
  *(v0 + 1656) = sub_10004E120;
  *(v0 + 1664) = v37;
  *(v0 + 1624) = _NSConcreteStackBlock;
  *(v0 + 1632) = 1107296256;
  *(v0 + 1640) = sub_100010FA0;
  *(v0 + 1648) = &unk_1000B0278;
  v38 = _Block_copy((v0 + 1624));
  swift_retain_n();

  dispatch_sync(v7, v38);
  _Block_release(v38);
  v39 = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    v40 = (v0 + 1192);
    v41 = (v0 + 1200);
    v42 = (v0 + 1240);
    v43 = (v0 + 1208);
    v44 = (v0 + 1224);
    v45 = (v0 + 1232);
    v46 = (v0 + 1216);
    v47 = (v0 + 1184);
    v48 = (v0 + 1176);
    v49 = (v0 + 1168);
    v50 = (v0 + 1160);
    v51 = (v0 + 1152);
    v52 = (v0 + 1144);
LABEL_12:
    v53 = *v45;
    v55 = *v40;
    v56 = *v41;
    v57 = *v43;
    v58 = *v46;
    v59 = *v44;
    v60 = *v52;
    v61 = *v51;
    v62 = *v50;
    v63 = *v49;
    v64 = *v48;
    v65 = *v47;
    v66 = *(v0 + 2208);
    v54 = *v42;
    *v66 = *v35;
    *(v66 + 8) = v60;
    *(v66 + 16) = v61;
    *(v66 + 24) = v62;
    *(v66 + 32) = v63;
    *(v66 + 40) = v64;
    *(v66 + 48) = v65;
    *(v66 + 56) = v55;
    *(v66 + 64) = v56;
    *(v66 + 72) = v57;
    *(v66 + 80) = v58;
    *(v66 + 88) = v59;
    *(v66 + 96) = v53;
    *(v66 + 104) = v54;

    v12 = *(v0 + 8);
    goto LABEL_5;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10003DE68()
{
  sub_100003558((v0 + 2000));
  v1 = *(v0 + 2280);
  *(v0 + 2352) = v1;
  *(v0 + 2176) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 2128);
    v8 = *(v0 + 2136);
    v9 = *(v0 + 2144);
    if (v9 == 9)
    {
      v10 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(61);
      v11._object = 0x8000000100096980;
      v11._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v7;
      v12._object = v8;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 32032;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      sub_10005E11C(v10, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 184);
      0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
      _StringGuts.grow(_:)(61);
      v21._object = 0x8000000100096980;
      v21._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v21);
      v22._countAndFlagsBits = v7;
      v22._object = v8;
      String.append(_:)(v22);
      sub_100011CAC(v7, v8, 9, v23, v24, v25, v26, v27);
      v28._countAndFlagsBits = 32032;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      sub_10004D674(0, 0, 0, 0, 0xFF00, v29, v30, v31);
      *(v0 + 2360) = 0;
      *(v0 + 2368) = 0xE000000000000000;
      v32 = swift_task_alloc();
      *(v0 + 2376) = v32;
      *v32 = v0;
      v33 = sub_10003BCC0;
LABEL_7:
      v32[1] = v33;

      return sub_100035804(1);
    }

    sub_100011CAC(*(v0 + 2128), *(v0 + 2136), v9, v2, v3, v4, v5, v6);
  }

  *(v0 + 2152) = v1;
  swift_errorRetain();
  v34 = swift_dynamicCast();
  v35 = *(v0 + 2224);
  if (v34)
  {
    v36 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v37._object = 0x8000000100096980;
    v37._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v37);
    sub_10004BCB0();
    v38._countAndFlagsBits = Error.localizedDescription.getter();
    object = v38._object;
    String.append(_:)(v38);
    object, v40, v41, v42, v43, v44, v45, v46;
    v47._countAndFlagsBits = 32032;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    sub_10005E11C(v36, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 188);
    0xE000000000000000, v48, v49, v50, v51, v52, v53, v54;
    _StringGuts.grow(_:)(61);
    v55._object = 0x8000000100096980;
    v55._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v55);
    v56._countAndFlagsBits = Error.localizedDescription.getter();
    v57 = v56._object;
    String.append(_:)(v56);
    v57, v58, v59, v60, v61, v62, v63, v64;
    v65._countAndFlagsBits = 32032;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    sub_10004D674(0, 0, 0, 0, 0xFF00, v66, v67, v68);
    *(v0 + 2392) = 0;
    *(v0 + 2400) = 0xE000000000000000;
    v32 = swift_task_alloc();
    *(v0 + 2408) = v32;
    *v32 = v0;
    v33 = sub_10003CD94;
    goto LABEL_7;
  }

  v70 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v71._countAndFlagsBits = 0xD00000000000003DLL;
  v71._object = 0x8000000100094650;
  String.append(_:)(v71);
  swift_getErrorValue();
  v72._countAndFlagsBits = Error.localizedDescription.getter();
  v73 = v72._object;
  String.append(_:)(v72);
  v73, v74, v75, v76, v77, v78, v79, v80;
  v81._countAndFlagsBits = 32032;
  v81._object = 0xE200000000000000;
  String.append(_:)(v81);
  sub_10005E11C(v70, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 192);
  0xE000000000000000, v82, v83, v84, v85, v86, v87, v88;
  _StringGuts.grow(_:)(65);
  v89._countAndFlagsBits = 0xD00000000000003DLL;
  v89._object = 0x8000000100094650;
  String.append(_:)(v89);
  swift_getErrorValue();
  v90._countAndFlagsBits = Error.localizedDescription.getter();
  v91 = v90._object;
  String.append(_:)(v90);
  v91, v92, v93, v94, v95, v96, v97, v98;
  v99._countAndFlagsBits = 32032;
  v99._object = 0xE200000000000000;
  String.append(_:)(v99);
  sub_10004D674(0, 0, 0, 0, 0xFF00, v100, v101, v102);
  swift_willThrow();
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 2;
  *(v0 + 432) = 0;
  *(v0 + 440) = 256;
  *(v0 + 442) = *(v0 + 122);
  *(v0 + 446) = *(v0 + 126);
  *(v0 + 448) = 0;
  *(v0 + 456) = *(v0 + 2424);
  sub_10004D588(v0 + 352);
  v103 = sub_1000111EC((v35 + 16), *(v35 + 40))[1];
  v104 = qword_1000B6700;

  if (v104 != -1)
  {
    swift_once();
  }

  v105 = qword_1000B89E0;
  v106 = swift_allocObject();
  *(v106 + 16) = sub_100011E70;
  *(v106 + 24) = v103;
  *(v0 + 1944) = sub_10004E120;
  *(v0 + 1952) = v106;
  *(v0 + 1912) = _NSConcreteStackBlock;
  *(v0 + 1920) = 1107296256;
  *(v0 + 1928) = sub_100010FA0;
  *(v0 + 1936) = &unk_1000B03B8;
  v107 = _Block_copy((v0 + 1912));

  dispatch_sync(v105, v107);
  _Block_release(v107);
  LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

  if (v107)
  {
    __break(1u);
  }

  else
  {

    v108 = *(v0 + 8);

    return v108();
  }

  return result;
}

uint64_t sub_10003E5D4()
{
  v1 = *(v0 + 2328);
  v2 = *(v0 + 121);
  v112 = *(v0 + 2304);
  v113 = *(v0 + 2312);
  v110 = *(v0 + 2288);
  v111 = *(v0 + 2296);
  *(v0 + 2352) = v1;
  *(v0 + 2176) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 2128);
    v9 = *(v0 + 2136);
    v10 = *(v0 + 2144);
    if (v10 == 9)
    {
      v11 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(61);
      v12._object = 0x8000000100096980;
      v12._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v12);
      v13._countAndFlagsBits = v8;
      v13._object = v9;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 32032;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      sub_10005E11C(v11, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 184);
      0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
      _StringGuts.grow(_:)(61);
      v22._object = 0x8000000100096980;
      v22._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v8;
      v23._object = v9;
      String.append(_:)(v23);
      sub_100011CAC(v8, v9, 9, v24, v25, v26, v27, v28);
      v29._countAndFlagsBits = 32032;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);
      sub_10004D674(v110, v111, v112, v113, v2, v30, v31, v32);
      *(v0 + 2360) = 0;
      *(v0 + 2368) = 0xE000000000000000;
      v33 = swift_task_alloc();
      *(v0 + 2376) = v33;
      *v33 = v0;
      v34 = sub_10003BCC0;
LABEL_7:
      v33[1] = v34;

      return sub_100035804(1);
    }

    sub_100011CAC(*(v0 + 2128), *(v0 + 2136), v10, v3, v4, v5, v6, v7);
  }

  *(v0 + 2152) = v1;
  swift_errorRetain();
  v35 = swift_dynamicCast();
  v36 = *(v0 + 2224);
  if (v35)
  {
    v37 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v38._object = 0x8000000100096980;
    v38._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v38);
    sub_10004BCB0();
    v39._countAndFlagsBits = Error.localizedDescription.getter();
    object = v39._object;
    String.append(_:)(v39);
    object, v41, v42, v43, v44, v45, v46, v47;
    v48._countAndFlagsBits = 32032;
    v48._object = 0xE200000000000000;
    String.append(_:)(v48);
    sub_10005E11C(v37, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 188);
    0xE000000000000000, v49, v50, v51, v52, v53, v54, v55;
    _StringGuts.grow(_:)(61);
    v56._object = 0x8000000100096980;
    v56._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v56);
    v57._countAndFlagsBits = Error.localizedDescription.getter();
    v58 = v57._object;
    String.append(_:)(v57);
    v58, v59, v60, v61, v62, v63, v64, v65;
    v66._countAndFlagsBits = 32032;
    v66._object = 0xE200000000000000;
    String.append(_:)(v66);
    sub_10004D674(v110, v111, v112, v113, v2, v67, v68, v69);
    *(v0 + 2392) = 0;
    *(v0 + 2400) = 0xE000000000000000;
    v33 = swift_task_alloc();
    *(v0 + 2408) = v33;
    *v33 = v0;
    v34 = sub_10003CD94;
    goto LABEL_7;
  }

  v71 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v72._countAndFlagsBits = 0xD00000000000003DLL;
  v72._object = 0x8000000100094650;
  String.append(_:)(v72);
  swift_getErrorValue();
  v73._countAndFlagsBits = Error.localizedDescription.getter();
  v74 = v73._object;
  String.append(_:)(v73);
  v74, v75, v76, v77, v78, v79, v80, v81;
  v82._countAndFlagsBits = 32032;
  v82._object = 0xE200000000000000;
  String.append(_:)(v82);
  sub_10005E11C(v71, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 192);
  0xE000000000000000, v83, v84, v85, v86, v87, v88, v89;
  _StringGuts.grow(_:)(65);
  v90._countAndFlagsBits = 0xD00000000000003DLL;
  v90._object = 0x8000000100094650;
  String.append(_:)(v90);
  swift_getErrorValue();
  v91._countAndFlagsBits = Error.localizedDescription.getter();
  v92 = v91._object;
  String.append(_:)(v91);
  v92, v93, v94, v95, v96, v97, v98, v99;
  v100._countAndFlagsBits = 32032;
  v100._object = 0xE200000000000000;
  String.append(_:)(v100);
  sub_10004D674(v110, v111, v112, v113, v2, v101, v102, v103);
  swift_willThrow();
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 2;
  *(v0 + 432) = 0;
  *(v0 + 440) = 256;
  *(v0 + 442) = *(v0 + 122);
  *(v0 + 446) = *(v0 + 126);
  *(v0 + 448) = 0;
  *(v0 + 456) = *(v0 + 2424);
  sub_10004D588(v0 + 352);
  v104 = sub_1000111EC((v36 + 16), *(v36 + 40))[1];
  v105 = qword_1000B6700;

  if (v105 != -1)
  {
    swift_once();
  }

  v106 = qword_1000B89E0;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_100011E70;
  *(v107 + 24) = v104;
  *(v0 + 1944) = sub_10004E120;
  *(v0 + 1952) = v107;
  *(v0 + 1912) = _NSConcreteStackBlock;
  *(v0 + 1920) = 1107296256;
  *(v0 + 1928) = sub_100010FA0;
  *(v0 + 1936) = &unk_1000B03B8;
  v108 = _Block_copy((v0 + 1912));

  dispatch_sync(v106, v108);
  _Block_release(v108);
  LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

  if (v106)
  {
    __break(1u);
  }

  else
  {

    v109 = *(v0 + 8);

    return v109();
  }

  return result;
}

uint64_t sub_10003ED48()
{
  v1 = *(v0 + 2344);
  *(v0 + 2352) = v1;
  *(v0 + 2176) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 2128);
    v8 = *(v0 + 2136);
    v9 = *(v0 + 2144);
    if (v9 == 9)
    {
      v10 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(61);
      v11._object = 0x8000000100096980;
      v11._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v7;
      v12._object = v8;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 32032;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      sub_10005E11C(v10, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 184);
      0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
      _StringGuts.grow(_:)(61);
      v21._object = 0x8000000100096980;
      v21._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v21);
      v22._countAndFlagsBits = v7;
      v22._object = v8;
      String.append(_:)(v22);
      sub_100011CAC(v7, v8, 9, v23, v24, v25, v26, v27);
      v28._countAndFlagsBits = 32032;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      sub_10004D674(0xD000000000000048, 0x80000001000969C0, 0x11, 0, 0x100, v29, v30, v31);
      *(v0 + 2360) = 0;
      *(v0 + 2368) = 0xE000000000000000;
      v32 = swift_task_alloc();
      *(v0 + 2376) = v32;
      *v32 = v0;
      v33 = sub_10003BCC0;
LABEL_7:
      v32[1] = v33;

      return sub_100035804(1);
    }

    sub_100011CAC(*(v0 + 2128), *(v0 + 2136), v9, v2, v3, v4, v5, v6);
  }

  *(v0 + 2152) = v1;
  swift_errorRetain();
  v34 = swift_dynamicCast();
  v35 = *(v0 + 2224);
  if (v34)
  {
    v36 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v37._object = 0x8000000100096980;
    v37._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v37);
    sub_10004BCB0();
    v38._countAndFlagsBits = Error.localizedDescription.getter();
    object = v38._object;
    String.append(_:)(v38);
    object, v40, v41, v42, v43, v44, v45, v46;
    v47._countAndFlagsBits = 32032;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    sub_10005E11C(v36, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 188);
    0xE000000000000000, v48, v49, v50, v51, v52, v53, v54;
    _StringGuts.grow(_:)(61);
    v55._object = 0x8000000100096980;
    v55._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v55);
    v56._countAndFlagsBits = Error.localizedDescription.getter();
    v57 = v56._object;
    String.append(_:)(v56);
    v57, v58, v59, v60, v61, v62, v63, v64;
    v65._countAndFlagsBits = 32032;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    sub_10004D674(0xD000000000000048, 0x80000001000969C0, 0x11, 0, 0x100, v66, v67, v68);
    *(v0 + 2392) = 0;
    *(v0 + 2400) = 0xE000000000000000;
    v32 = swift_task_alloc();
    *(v0 + 2408) = v32;
    *v32 = v0;
    v33 = sub_10003CD94;
    goto LABEL_7;
  }

  v70 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v71._countAndFlagsBits = 0xD00000000000003DLL;
  v71._object = 0x8000000100094650;
  String.append(_:)(v71);
  swift_getErrorValue();
  v72._countAndFlagsBits = Error.localizedDescription.getter();
  v73 = v72._object;
  String.append(_:)(v72);
  v73, v74, v75, v76, v77, v78, v79, v80;
  v81._countAndFlagsBits = 32032;
  v81._object = 0xE200000000000000;
  String.append(_:)(v81);
  sub_10005E11C(v70, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 192);
  0xE000000000000000, v82, v83, v84, v85, v86, v87, v88;
  _StringGuts.grow(_:)(65);
  v89._countAndFlagsBits = 0xD00000000000003DLL;
  v89._object = 0x8000000100094650;
  String.append(_:)(v89);
  swift_getErrorValue();
  v90._countAndFlagsBits = Error.localizedDescription.getter();
  v91 = v90._object;
  String.append(_:)(v90);
  v91, v92, v93, v94, v95, v96, v97, v98;
  v99._countAndFlagsBits = 32032;
  v99._object = 0xE200000000000000;
  String.append(_:)(v99);
  sub_10004D674(0xD000000000000048, 0x80000001000969C0, 0x11, 0, 0x100, v100, v101, v102);
  swift_willThrow();
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 2;
  *(v0 + 432) = 0;
  *(v0 + 440) = 256;
  *(v0 + 442) = *(v0 + 122);
  *(v0 + 446) = *(v0 + 126);
  *(v0 + 448) = 0;
  *(v0 + 456) = *(v0 + 2424);
  sub_10004D588(v0 + 352);
  v103 = sub_1000111EC((v35 + 16), *(v35 + 40))[1];
  v104 = qword_1000B6700;

  if (v104 != -1)
  {
    swift_once();
  }

  v105 = qword_1000B89E0;
  v106 = swift_allocObject();
  *(v106 + 16) = sub_100011E70;
  *(v106 + 24) = v103;
  *(v0 + 1944) = sub_10004E120;
  *(v0 + 1952) = v106;
  *(v0 + 1912) = _NSConcreteStackBlock;
  *(v0 + 1920) = 1107296256;
  *(v0 + 1928) = sub_100010FA0;
  *(v0 + 1936) = &unk_1000B03B8;
  v107 = _Block_copy((v0 + 1912));

  dispatch_sync(v105, v107);
  _Block_release(v107);
  LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

  if (v107)
  {
    __break(1u);
  }

  else
  {

    v108 = *(v0 + 8);

    return v108();
  }

  return result;
}

uint64_t sub_10003F4CC()
{
  v1 = *(v0 + 2368);
  v2 = *(v0 + 2360);
  v3 = *(v0 + 2224);

  *(v0 + 128) = 0u;
  v4 = *(v0 + 122);
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 184) = v2;
  *(v0 + 192) = v1;
  *(v0 + 200) = xmmword_100091590;
  *(v0 + 216) = 256;
  *(v0 + 218) = v4;
  *(v0 + 222) = *(v0 + 126);
  *(v0 + 224) = 0;
  *(v0 + 232) = *(v0 + 2424);
  sub_10004D588(v0 + 128);
  v5 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
  v6 = qword_1000B6700;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1000B89E0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100011E70;
  *(v8 + 24) = v5;
  *(v0 + 1608) = sub_10004E120;
  *(v0 + 1616) = v8;
  *(v0 + 1576) = _NSConcreteStackBlock;
  *(v0 + 1584) = 1107296256;
  *(v0 + 1592) = sub_100010FA0;
  *(v0 + 1600) = &unk_1000B0458;
  v9 = _Block_copy((v0 + 1576));

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

uint64_t sub_10003F708()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2392);
  v3 = *(v0 + 2224);

  *(v0 + 240) = 0u;
  v4 = *(v0 + 122);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 296) = v2;
  *(v0 + 304) = v1;
  *(v0 + 312) = 3;
  *(v0 + 320) = 0;
  *(v0 + 328) = 256;
  *(v0 + 330) = v4;
  *(v0 + 334) = *(v0 + 126);
  *(v0 + 336) = 0;
  *(v0 + 344) = *(v0 + 2424);
  sub_10004D588(v0 + 240);
  v5 = sub_1000111EC((v3 + 16), *(v3 + 40))[1];
  v6 = qword_1000B6700;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1000B89E0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100011E70;
  *(v8 + 24) = v5;
  *(v0 + 1896) = sub_10004E120;
  *(v0 + 1904) = v8;
  *(v0 + 1864) = _NSConcreteStackBlock;
  *(v0 + 1872) = 1107296256;
  *(v0 + 1880) = sub_100010FA0;
  *(v0 + 1888) = &unk_1000B0408;
  v9 = _Block_copy((v0 + 1864));

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

uint64_t sub_10003F940(uint64_t a1, uint64_t a2)
{
  v123 = a1;
  v124 = a2;
  v3 = type metadata accessor for Logger();
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3);
  v125 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v4;
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  __chkstk_darwin(v10 - 8);
  v12 = &v121 - v11;
  v13 = type metadata accessor for URL();
  __chkstk_darwin(v13);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v16;
  v132 = v2;
  v17 = *(v16 + 56);
  v130 = v18;
  v17(v12, 1, 1);
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);

  URL.init(filePath:directoryHint:relativeTo:)();
  static String.Encoding.utf8.getter();
  v19 = v129;
  String.init(contentsOf:encoding:)();
  if (v19)
  {
    v128 = OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger;
    v21 = static os_log_type_t.error.getter();
    aBlock = 0;
    v134 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v134, v22, v23, v24, v25, v26, v27, v28;
    aBlock = 0xD00000000000002ALL;
    v134 = 0x8000000100096BA0;
    sub_10004D698(&qword_1000B6DF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v129 = v19;
    v29 = v130;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v30._object;
    String.append(_:)(v30);
    object, v32, v33, v34, v35, v36, v37, v38;
    v39._countAndFlagsBits = 32032;
    v39._object = 0xE200000000000000;
    String.append(_:)(v39);
    v40 = v134;
    sub_10005E11C(v21, aBlock, v134, 0xD000000000000054, 0x8000000100096BD0, 41);
    v40, v41, v42, v43, v44, v45, v46, v47;
    aBlock = 0;
    v134 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v134, v48, v49, v50, v51, v52, v53, v54;
    aBlock = 0xD00000000000002ALL;
    v134 = 0x8000000100096BA0;
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55._object;
    String.append(_:)(v55);
    v56, v57, v58, v59, v60, v61, v62, v63;
    v64._countAndFlagsBits = 32032;
    v64._object = 0xE200000000000000;
    String.append(_:)(v64);
    v65 = aBlock;
    v66 = v134;
    sub_10000B6B0();
    swift_allocError();
    *v67 = v65;
    *(v67 + 8) = v66;
    *(v67 + 16) = 6;
    swift_willThrow();

    v68 = v29;
    v69 = v15;
    return (*(v131 + 8))(v69, v68);
  }

  v70 = v20;
  v71 = v125;
  v72 = v127;
  v73 = v128;
  v122 = v15;
  v81 = [objc_allocWithZone(JSContext) init];
  if (!v81)
  {
    v70, v74, v75, v76, v77, v78, v79, v80;
    v101 = 0;
    v68 = v130;
    v69 = v122;
LABEL_12:
    v114 = static os_log_type_t.default.getter();
    sub_10005E11C(v114, 0xD00000000000002FLL, 0x8000000100096C30, 0xD000000000000054, 0x8000000100096BD0, 61);
    sub_10000B6B0();
    swift_allocError();
    *v115 = 0xD00000000000002FLL;
    *(v115 + 8) = 0x8000000100096C30;
    *(v115 + 16) = 6;
    swift_willThrow();

    return (*(v131 + 8))(v69, v68);
  }

  v129 = 0;
  v82 = v72;
  v83 = *(v72 + 16);
  v121 = OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger;
  v83(v71, v132 + OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger, v73);
  v84 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v85 = swift_allocObject();
  (*(v82 + 32))(v85 + v84, v71, v73);
  v137 = sub_10004D768;
  v138 = v85;
  aBlock = _NSConcreteStackBlock;
  v134 = 1107296256;
  v135 = sub_100044034;
  v136 = &unk_1000B04A8;
  v86 = _Block_copy(&aBlock);
  v128 = v81;
  v87 = v81;

  [v87 setExceptionHandler:v86];
  _Block_release(v86);

  v88 = v87;
  v89 = String._bridgeToObjectiveC()();
  v70, v90, v91, v92, v93, v94, v95, v96;

  v97 = v88;
  v98 = String._bridgeToObjectiveC()();
  v99 = [v97 objectForKeyedSubscript:v98];

  v68 = v130;
  if (!v99)
  {
    v101 = 0;
    v69 = v122;
    goto LABEL_11;
  }

  sub_100002074(&qword_1000B7A88, &qword_100091860);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_10008F580;
  *(v100 + 56) = &type metadata for String;
  *(v100 + 32) = v123;
  *(v100 + 40) = v124;

  v101 = v99;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v100, v103, v104, v105, v106, v107, v108, v109;
  v110 = [v101 callWithArguments:isa];

  v69 = v122;
  if (!v110)
  {
LABEL_11:
    v81 = v128;
    goto LABEL_12;
  }

  if ([v110 isArray])
  {
    v111 = [v110 toArray];
    if (v111)
    {
      v112 = v111;
      v113 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v113 = 0;
    }

    aBlock = v113;
    sub_100002074(&qword_1000B7A90, &qword_100091868);
    sub_100002074(&qword_1000B7858, &qword_100091870);
    if (swift_dynamicCast())
    {
      (*(v131 + 8))(v69, v68);

      return v139;
    }

    v119 = static os_log_type_t.default.getter();
    sub_10005E11C(v119, 0xD000000000000034, 0x8000000100096C80, 0xD000000000000054, 0x8000000100096BD0, 68);
    sub_10000B6B0();
    swift_allocError();
    *v120 = 0xD000000000000034;
    *(v120 + 8) = 0x8000000100096C80;
    *(v120 + 16) = 6;
  }

  else
  {

    v117 = static os_log_type_t.default.getter();
    sub_10005E11C(v117, 0xD000000000000034, 0x8000000100096C80, 0xD000000000000054, 0x8000000100096BD0, 76);
    sub_10000B6B0();
    swift_allocError();
    *v118 = 0xD000000000000034;
    *(v118 + 8) = 0x8000000100096C80;
    *(v118 + 16) = 6;
  }

  swift_willThrow();

  return (*(v131 + 8))(v69, v68);
}

uint64_t sub_100040314(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x636E657265666E69;
  }

  else
  {
    v9 = 0x756F72676B636162;
  }

  if (v8)
  {
    v10 = 0xEA0000000000646ELL;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (*a2)
  {
    v11 = 0x636E657265666E69;
  }

  else
  {
    v11 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v12 = 0xE900000000000065;
  }

  else
  {
    v12 = 0xEA0000000000646ELL;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1000403C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xEA0000000000646ELL;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_100040450(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xEA0000000000646ELL;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1000404C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xEA0000000000646ELL;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_100040550(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1000AE348, v3);
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

void sub_1000405B0(uint64_t *a1@<X8>)
{
  v2 = 0x756F72676B636162;
  if (*v1)
  {
    v2 = 0x636E657265666E69;
  }

  v3 = 0xEA0000000000646ELL;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100040644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  if (a1 == 5456722 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = 128;
LABEL_5:
    v13 = sub_100021018(a3, a4, *&a5[v12]);
    goto LABEL_6;
  }

  if (a1 == 0x6567617373654D69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = 120;
    goto LABEL_5;
  }

  if (a1 == 5459283 && a2 == 0xE300000000000000 || (v13 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v12 = 104;
    goto LABEL_5;
  }

LABEL_6:
  v14 = *(a6 + *(type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0) + 20) + 105);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = a5[113];
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = a5[114];
  }

  else
  {
    v15 = a5[112];
  }

  return v13 & v15 & 1;
}

uint64_t sub_1000407B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SpamDecisioningAsset(0);
  __chkstk_darwin(v9);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054D1C(0x4F66664F6C6F6F63, 0xEF65646972726576);
  if (v12)
  {
    v73 = v6;
    v74 = v5;
    v14 = a2[3];
    v13 = a2[4];
    sub_1000111EC(a2, v14);
    v71 = a3;
    v72 = v8;
    v15 = *(v13 + 8);
    v15(v14, v13);

    sub_10004B9B8(v11, type metadata accessor for SpamDecisioningAsset);

    v16 = v14;
    v17 = v13;
    v6 = v73;
    v5 = v74;
    v15(v16, v17);
    v8 = v72;

    sub_10004B9B8(v11, type metadata accessor for SpamDecisioningAsset);

    sub_10008C9CC(0x20000000000001uLL);
  }

  Date.addingTimeInterval(_:)();
  v18 = static os_log_type_t.default.getter();
  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  v19._countAndFlagsBits = 0xD000000000000029;
  v19._object = 0x8000000100096B50;
  String.append(_:)(v19);
  sub_10004D698(&qword_1000B6A98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v20._object;
  String.append(_:)(v20);
  object, v22, v23, v24, v25, v26, v27, v28;
  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x8000000100096B30;
  String.append(_:)(v29);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30._object;
  String.append(_:)(v30);
  v31, v32, v33, v34, v35, v36, v37, v38;
  v39._object = 0x8000000100096B80;
  v39._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v39);
  Double.write<A>(to:)();
  v40._countAndFlagsBits = 32032;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41 = v76;
  sub_10005E11C(v18, v75, v76, 0xD00000000000006ALL, 0x8000000100095F40, 449);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = sub_10002F070(1);
  if (qword_1000B6658 != -1)
  {
    v69 = v50;
    v70 = v49;
    swift_once();
    v49 = v70;
    v50 = v69;
  }

  if (qword_1000B7C78)
  {
    v75 = v49;
    v76 = v50;
    v57 = v50;
    v58 = qword_1000B7C78;

    v59 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v60 = String._bridgeToObjectiveC()();
    [v58 setValue:v59 forKey:v60];
    v57, v61, v62, v63, v64, v65, v66, v67;

    swift_unknownObjectRelease();
  }

  else
  {
    v50, v50, v51, v52, v53, v54, v55, v56;
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100040C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v78 - v10;
  v12 = type metadata accessor for SpamDecisioningAsset(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3);
  v16 = *&v15[*(v13 + 44)];

  sub_10004B9B8(v15, type metadata accessor for SpamDecisioningAsset);
  static Locale.current.getter();
  Locale.region.getter();
  (*(v6 + 8))(v8, v5);
  v17 = type metadata accessor for Locale.Region();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_10000BC10(v11, &qword_1000B6A68, &qword_10008F6F0);
    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = Locale.Region.identifier.getter();
    v19 = v21;
    (*(v18 + 8))(v11, v17);
    if (!v16)
    {
LABEL_8:
      v41 = static os_log_type_t.error.getter();
      v79 = 0;
      v80 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);
      v80, v42, v43, v44, v45, v46, v47, v48;
      v79 = 0xD000000000000029;
      v80 = 0x80000001000967E0;
      v49._countAndFlagsBits = v20;
      v49._object = v19;
      String.append(_:)(v49);
      v50._countAndFlagsBits = 32032;
      v50._object = 0xE200000000000000;
      String.append(_:)(v50);
      v51 = v80;
      sub_10005E11C(v41, v79, v80, 0xD00000000000006ALL, 0x8000000100095F40, 494);
      v51, v52, v53, v54, v55, v56, v57, v58;
      v79 = 0;
      v80 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);
      v80, v59, v60, v61, v62, v63, v64, v65;
      v79 = 0xD000000000000029;
      v80 = 0x80000001000967E0;
      v66._countAndFlagsBits = v20;
      v66._object = v19;
      String.append(_:)(v66);
      v19, v67, v68, v69, v70, v71, v72, v73;
      v74._countAndFlagsBits = 32032;
      v74._object = 0xE200000000000000;
      String.append(_:)(v74);
      v40 = v79;
      v75 = v80;
      sub_10000B6B0();
      swift_allocError();
      *v76 = v40;
      *(v76 + 8) = v75;
      *(v76 + 16) = 12;
      swift_willThrow();

      return v40;
    }
  }

  sub_100072918(v20, v19);
  if (!v22)
  {

    goto LABEL_8;
  }

  v29 = v22;
  v19, v22, v23, v24, v25, v26, v27, v28;
  v30 = objc_allocWithZone(CKRecordZone);
  v31 = String._bridgeToObjectiveC()();
  v29, v32, v33, v34, v35, v36, v37, v38;
  v39 = [v30 initWithZoneName:v31];

  sub_100002074(&qword_1000B7738, &qword_1000912F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100091290;
  *(v40 + 32) = [v39 zoneID];

  return v40;
}

void sub_1000410E0(unint64_t a1, char a2)
{
  v4 = v3;
  v5 = v2;
  sub_1000111EC((v2 + 16), *(v2 + 40));
  v7 = qword_1000B6700;

  if (v7 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    OS_dispatch_queue.sync<A>(execute:)();

    if (v4)
    {
      break;
    }

    v8 = 0;
    v98 = v106;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v105 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v9 = a1;
    }

    v97 = v9;
    v103 = a1 & 0xC000000000000001;
    v102 = a1;
    while (1)
    {
      v101 = objc_autoreleasePoolPush();
      v10 = sub_1000111EC((v5 + 16), *(v5 + 40));
      __chkstk_darwin(v10);

      sub_100002074(&qword_1000B7A58, &qword_100091810);
      OS_dispatch_queue.sync<A>(execute:)();
      v100 = v8;

      v4 = sub_10004305C(v106, a2 & 1, a1);
      v106, v11, v12, v13, v14, v15, v16, v17;
      if (!*v4->endpoint)
      {
        v4, v18, v19, v20, v21, v22, v23, v24;
        goto LABEL_24;
      }

      v25 = static os_log_type_t.default.getter();
      v106 = 0;
      _StringGuts.grow(_:)(86);
      v26._countAndFlagsBits = 0xD000000000000052;
      v26._object = 0x8000000100096740;
      String.append(_:)(v26);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      object = v27._object;
      String.append(_:)(v27);
      object, v29, v30, v31, v32, v33, v34, v35;
      v36._countAndFlagsBits = 32032;
      v36._object = 0xE200000000000000;
      String.append(_:)(v36);
      sub_10005E11C(v25, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 689);
      0xE000000000000000, v37, v38, v39, v40, v41, v42, v43;
      if (*v4->endpoint)
      {
        v51 = sub_1000111EC((v5 + 16), *(v5 + 40));
        __chkstk_darwin(v51);

        OS_dispatch_queue.sync<A>(execute:)();

        v4, v52, v53, v54, v55, v56, v57, v58;
        if (!a1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v4, v44, v45, v46, v47, v48, v49, v50;
        if (!a1)
        {
          goto LABEL_24;
        }
      }

      if (a1 >> 62)
      {
        break;
      }

      v59 = *(v105 + 16);
      if (v59)
      {
        goto LABEL_14;
      }

LABEL_24:
      v8 = v100 + 1000;
      if (__OFADD__(v100, 1000))
      {
        goto LABEL_30;
      }

      objc_autoreleasePoolPop(v101);
      if (v8 >= v98)
      {
        return;
      }
    }

    v59 = _CocoaArrayWrapper.endIndex.getter();
    if (!v59)
    {
      goto LABEL_24;
    }

LABEL_14:
    v60 = 0;
    v104 = v59;
    while (1)
    {
      if (v103)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v60 >= *(v105 + 16))
        {
          goto LABEL_29;
        }

        v63 = *(a1 + 8 * v60 + 32);
      }

      v4 = v63;
      v64 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v65 = static os_log_type_t.default.getter();
      v106 = 0;
      _StringGuts.grow(_:)(63);
      v66._countAndFlagsBits = 0xD00000000000003BLL;
      v66._object = 0x80000001000967A0;
      String.append(_:)(v66);
      v67 = [(TrustKitUIServerClient *)v4 zoneName];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71._countAndFlagsBits = v68;
      v71._object = v70;
      String.append(_:)(v71);
      v70, v72, v73, v74, v75, v76, v77, v78;
      v79._countAndFlagsBits = 32032;
      v79._object = 0xE200000000000000;
      String.append(_:)(v79);
      sub_10005E11C(v65, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 693);
      0xE000000000000000, v80, v81, v82, v83, v84, v85, v86;
      v87 = [(TrustKitUIServerClient *)v4 zoneName];
      if (!v87)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;
        v87 = String._bridgeToObjectiveC()();
        v89, v90, v91, v92, v93, v94, v95, v96;
      }

      v61 = [objc_allocWithZone(CKRecordZone) initWithZoneName:v87];

      v62 = [v61 zoneID];
      sub_100054E54(v62);

      ++v60;
      a1 = v102;
      if (v64 == v104)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

void sub_1000416A4(unint64_t a1)
{
  if (a1)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *(v2 + 16))
          {
            goto LABEL_19;
          }

          v5 = *(a1 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        sub_100054E54(v5);

        if (v7 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }
  }

  else
  {
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (qword_1000B7C78)
    {
      v8 = qword_1000B7C78;
      v9 = String._bridgeToObjectiveC()();
      [v8 setValue:0 forKey:v9];
    }
  }
}

uint64_t sub_100041840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100041860, 0, 0);
}

uint64_t sub_100041860()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 16) + 32);
  }

  v4 = v3;
  v5 = sub_100055194(v3);
  if (v5)
  {

    sub_1000410E0(v1, 0);
    goto LABEL_8;
  }

LABEL_10:
  sub_1000410E0(0, 0);
LABEL_8:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100041998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return _swift_task_switch(sub_100041A10, 0, 0);
}

uint64_t sub_100041A10()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 40);
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  *(v5 + 16) = &unk_1000917D0;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100041B74;
  v8 = *(v0 + 16);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v8, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000917E0, v6, &type metadata for () + 8);
}

uint64_t sub_100041B74()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100041D08;
  }

  else
  {

    v2 = sub_100041C90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100041C90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100041D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100041D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  return _swift_task_switch(sub_100041DB8, 0, 0);
}

uint64_t sub_100041DB8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = Duration.components.getter();
  sub_100043EA4(v2, v0 + 24);
  *(v0 + 16) = v1;
  *(v0 + 64) = v3;

  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_100041E90;

  return sub_10004208C(v0 + 16);
}

uint64_t sub_100041E90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_100042028;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_100041FB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100041FB8()
{
  v1 = v0[17];
  v2 = v0[9];
  sub_10004BD04((v0 + 2));
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100042028()
{
  sub_10004BD04(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004208C(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for Date();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = type metadata accessor for SpamDecisioningAsset(0);
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10004217C, 0, 0);
}

uint64_t sub_10004217C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[31];
  v4 = *(v3 + 4);
  v5 = *(v3 + 5);
  sub_1000111EC(v3 + 1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v1 + *(v2 + 32));

  sub_10004B9B8(v1, type metadata accessor for SpamDecisioningAsset);
  v7 = *(v6 + 200);
  v8 = *(v6 + 208);
  v0[38] = v8;

  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  sub_1000111EC(v3 + 1, v9);
  (*(v10 + 8))(v9, v10);
  v11 = *(v1 + *(v2 + 32));

  sub_10004B9B8(v1, type metadata accessor for SpamDecisioningAsset);
  v12 = *(v11 + 272);

  v13 = v3[6];
  v14 = *(v3 + 4);
  v15 = *(v3 + 5);
  sub_1000111EC(v3 + 1, v14);
  (*(v15 + 8))(v14, v15);
  v16 = *(v1 + *(v2 + 32));

  sub_10004B9B8(v1, type metadata accessor for SpamDecisioningAsset);
  v53 = *(v16 + 280);

  v18 = *v3;
  if (*v3 >> 62)
  {
    v48 = *v3;
    result = _CocoaArrayWrapper.endIndex.getter();
    v18 = v48;
    v19 = result;
  }

  else
  {
    v19 = *((*&v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v7;
  v51 = v0;
  v49 = v8;
  if (v19)
  {
    if (v19 < 1)
    {
      __break(1u);
      return result;
    }

    v20 = 0;
    v52 = *&v18 & 0xC000000000000001;
    v21 = &_swiftEmptyArrayStorage;
    v22 = v18;
    do
    {
      if (v52)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(*&v18 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = sub_100055194(v23);
      v26 = *(v3 + 4);
      v27 = *(v3 + 5);
      sub_1000111EC(v3 + 1, v26);
      v28 = (*(v27 + 16))(v26, v27);
      if (v28)
      {
        v29 = 0x636E657265666E69;
      }

      else
      {
        v29 = 0x756F72676B636162;
      }

      if (v28)
      {
        v30 = 0xE900000000000065;
      }

      else
      {
        v30 = 0xEA0000000000646ELL;
      }

      v31 = v30;
      v32 = _findStringSwitchCase(cases:string:)(&off_1000AE398, *&v29);
      v30, v33, v34, v35, v36, v37, v38, v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100049C88(0, (*v21->endpoint + 1), 1, v21, v40, v41, v42, v43);
      }

      v45 = *v21->endpoint;
      v44 = *v21->connection;
      if (v45 >= v44 >> 1)
      {
        v21 = sub_100049C88((v44 > 1), (v45 + 1), 1, v21, v40, v41, v42, v43);
      }

      ++v20;
      *v21->endpoint = v45 + 1;
      v46 = v21 + 48 * v45;
      *(v46 + 4) = 0x4D6C65646F4D4B54;
      *(v46 + 5) = 0xEF73656761737365;
      *(v46 + 6) = v24;
      *(v46 + 7) = v25;
      *(v46 + 8) = v53;
      v46[72] = v32 != 0;
      v18 = v22;
    }

    while (v19 != v20);
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
  }

  v51[39] = v21;
  v51[40] = *sub_1000111EC((v51[32] + 16), *(v51[32] + 40));

  v47 = swift_task_alloc();
  v51[41] = v47;
  *v47 = v51;
  v47[1] = sub_1000425B8;

  return sub_1000433A8(v21, v50, v49, v12, v13);
}

uint64_t sub_1000425B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v6 = *(v4 + 304);

    v6, v7, v8, v9, v10, v11, v12, v13;

    return _swift_task_switch(sub_100042768, 0, 0);
  }

  else
  {
    v15 = *(v4 + 304);
    v14 = *(v4 + 312);

    v15, v16, v17, v18, v19, v20, v21, v22;
    v14, v23, v24, v25, v26, v27, v28, v29;

    v30 = *(v5 + 8);

    return v30(a1);
  }
}

uint64_t sub_100042768()
{
  *(v0 + 128) = *(v0 + 336);
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    *(v0 + 312), v1, v2, v3, v4, v5, v6, v7;
    v69 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(47);
    0xE000000000000000, v70, v71, v72, v73, v74, v75, v76;
    swift_getErrorValue();
    v77._countAndFlagsBits = Error.localizedDescription.getter();
    object = v77._object;
    String.append(_:)(v77);
    object, v79, v80, v81, v82, v83, v84, v85;
    v86._countAndFlagsBits = 32032;
    v86._object = 0xE200000000000000;
    String.append(_:)(v86);
    sub_10005E11C(v69, 0xD00000000000002BLL, 0x8000000100096130, 0xD00000000000006ALL, 0x8000000100095F40, 731);
    0x8000000100096130, v87, v88, v89, v90, v91, v92, v93;
    _StringGuts.grow(_:)(47);
    0xE000000000000000, v94, v95, v96, v97, v98, v99, v100;
    swift_getErrorValue();
    v101._countAndFlagsBits = Error.localizedDescription.getter();
    v102 = v101._object;
    String.append(_:)(v101);
    v102, v103, v104, v105, v106, v107, v108, v109;
    v110._countAndFlagsBits = 32032;
    v110._object = 0xE200000000000000;
    String.append(_:)(v110);
    sub_10000B6B0();
    swift_allocError();
    *v111 = 0xD00000000000002BLL;
    *(v111 + 8) = 0x8000000100096130;
    *(v111 + 16) = 3;
    swift_willThrow();
    goto LABEL_20;
  }

  v8 = *(v0 + 136);
  *(v0 + 160) = v8;
  sub_10004D698(&qword_1000B67E0, type metadata accessor for CKError, &unk_10008F41C);
  _BridgedStoredNSError.code.getter();
  if (*(v0 + 168) == 21 || (*(v0 + 176) = v8, _BridgedStoredNSError.code.getter(), *(v0 + 184) == 28))
  {
    v9 = static os_log_type_t.error.getter();
    sub_10005E11C(v9, 0xD00000000000004ALL, 0x80000001000961D0, 0xD00000000000006ALL, 0x8000000100095F40, 739);
    if (qword_1000B6658 == -1)
    {
      v10 = qword_1000B7C78;
      if (!qword_1000B7C78)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_once();
    v10 = qword_1000B7C78;
    if (qword_1000B7C78)
    {
LABEL_6:
      v11 = v10;
      v12 = v8;
      v13 = String._bridgeToObjectiveC()();
      [v11 setValue:0 forKey:v13];

      v8 = v12;
    }
  }

LABEL_7:
  *(v0 + 192) = v8;
  _BridgedStoredNSError.code.getter();
  v158 = v8;
  if (*(v0 + 200) == 6 || (*(v0 + 208) = v8, _BridgedStoredNSError.code.getter(), *(v0 + 216) == 7))
  {
    v21 = *(v0 + 272);
    v22 = *(v0 + 280);
    v157 = *(v0 + 264);
    v23 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(74);
    v24._countAndFlagsBits = 0xD000000000000046;
    v24._object = 0x8000000100096160;
    String.append(_:)(v24);
    v25._countAndFlagsBits = related decl 'e' for CKErrorCode.description.getter();
    v26 = v25._object;
    String.append(_:)(v25);
    v26, v27, v28, v29, v30, v31, v32, v33;
    v34._countAndFlagsBits = 32032;
    v34._object = 0xE200000000000000;
    String.append(_:)(v34);
    sub_10005E11C(v23, 0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000100095F40, 746);
    0xE000000000000000, v35, v36, v37, v38, v39, v40, v41;
    Date.init()();
    v42 = sub_10002F070(1);
    v44 = v43;
    (*(v21 + 8))(v22, v157);
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    v52 = qword_1000B7C78;
    if (qword_1000B7C78)
    {
      *(v0 + 112) = v42;
      *(v0 + 120) = v44;
      v53 = v52;

      v54 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v55 = String._bridgeToObjectiveC()();
      [v53 setValue:v54 forKey:v55];

      swift_unknownObjectRelease();
    }

    v56 = *(v0 + 312);
    v44, v45, v46, v47, v48, v49, v50, v51;
    v57 = related decl 'e' for CKErrorCode.retryAfterSeconds.getter();
    v59 = v58;
    v56, v58, v60, v61, v62, v63, v64, v65;
    if (v52)
    {
      v66 = *&v57;
      if (v59)
      {
        v66 = 60.0;
      }

      *(v0 + 240) = v66;
      v67 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v68 = String._bridgeToObjectiveC()();
      [v52 setValue:v67 forKey:v68];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 312), v14, v15, v16, v17, v18, v19, v20;
  }

  v112 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(47);
  0xE000000000000000, v113, v114, v115, v116, v117, v118, v119;
  swift_getErrorValue();
  v120._countAndFlagsBits = Error.localizedDescription.getter();
  v121 = v120._object;
  String.append(_:)(v120);
  v121, v122, v123, v124, v125, v126, v127, v128;
  v129._countAndFlagsBits = 32032;
  v129._object = 0xE200000000000000;
  String.append(_:)(v129);
  sub_10005E11C(v112, 0xD00000000000002BLL, 0x8000000100096130, 0xD00000000000006ALL, 0x8000000100095F40, 755);
  0x8000000100096130, v130, v131, v132, v133, v134, v135, v136;
  _StringGuts.grow(_:)(47);
  0xE000000000000000, v137, v138, v139, v140, v141, v142, v143;
  swift_getErrorValue();
  v144._countAndFlagsBits = Error.localizedDescription.getter();
  v145 = v144._object;
  String.append(_:)(v144);
  v145, v146, v147, v148, v149, v150, v151, v152;
  v153._countAndFlagsBits = 32032;
  v153._object = 0xE200000000000000;
  String.append(_:)(v153);
  sub_10000B6B0();
  swift_allocError();
  *v154 = 0xD00000000000002BLL;
  *(v154 + 8) = 0x8000000100096130;
  *(v154 + 16) = 9;
  swift_willThrow();

LABEL_20:

  v155 = *(v0 + 8);

  return v155();
}

void sub_100042F24(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v8 << 6);
      v11 = *(*(a1 + 48) + 8 * v10);
      v12 = (*(a1 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = v11;
      sub_100005A7C(v13, v14);
      sub_100055454(v15, v13, v14);
      sub_100005A28(v13, v14);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_10004305C(uint64_t a1, char a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a2;
    v6 = 0;
    v48 = a3 & 0xFFFFFFFFFFFFFF8;
    v46 = *(a1 + 16);
    v52 = a1 + 32;
    v53 = a3 & 0xC000000000000001;
    v49 = a3 >> 62;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v8 = (v52 + 80 * v6);
      v9 = v8[3];
      v57 = v8[2];
      v58 = v9;
      v59 = v8[4];
      v10 = v8[1];
      v55 = *v8;
      v56 = v10;
      v11 = v58;
      if (!*(&v58 + 1) || v58 != __PAIR128__(0xE500000000000000, 0x6C61636F6CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v5 & 1) == 0)
      {
        if (a3)
        {
          if (v49)
          {
            v12 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v12 = *(v48 + 16);
          }

          v50 = v7;
          v51 = v6;
          if (v12)
          {
            sub_100031284(&v55, v54);
            v54[0] = &_swiftEmptyArrayStorage;
            result = sub_100049F4C(0, v12 & ~(v12 >> 63), 0);
            if (v12 < 0)
            {
              __break(1u);
              return result;
            }

            v14 = 0;
            v15 = v54[0];
            do
            {
              if (v53)
              {
                v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v16 = *(a3 + 8 * v14 + 32);
              }

              v17 = v16;
              v18 = [v16 zoneName];
              v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v21 = v20;

              v54[0] = v15;
              v30 = *v15->endpoint;
              v29 = *v15->connection;
              v31 = v30 + 1;
              if (v30 >= v29 >> 1)
              {
                sub_100049F4C((v29 > 1), v30 + 1, 1);
                v15 = v54[0];
              }

              ++v14;
              *v15->endpoint = v31;
              v32 = v15 + 16 * v30;
              *(v32 + 4) = v19;
              *(v32 + 5) = v21;
            }

            while (v12 != v14);
            v5 = a2;
            v3 = v46;
LABEL_24:
            v33 = &v15[1];
            while (1)
            {
              if (*(&v11 + 1))
              {
                v22 = *v33;
                v34 = *(v33 - 1) == v11 && *(&v11 + 1) == v22;
                if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }
              }

              v33 += 2;
              if (!--v31)
              {
                goto LABEL_33;
              }
            }

            v15, v22, v23, v24, v25, v26, v27, v28;
            sub_1000312BC(&v55);
            v7 = v50;
            v6 = v51;
            goto LABEL_4;
          }

          sub_100031284(&v55, v54);
          v31 = *_swiftEmptyArrayStorage.endpoint;
          v15 = &_swiftEmptyArrayStorage;
          if (v31)
          {
            goto LABEL_24;
          }

LABEL_33:
          v15, v22, v23, v24, v25, v26, v27, v28;
          v7 = v50;
          v6 = v51;
        }

        else
        {
          sub_100031284(&v55, v54);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100049A20(0, *v7->endpoint + 1, 1, v7, v35, v36, v37, v38);
        }

        v40 = *v7->endpoint;
        v39 = *v7->connection;
        v41 = v7;
        if (v40 >= v39 >> 1)
        {
          v41 = sub_100049A20((v39 > 1), v40 + 1, 1, v7, v35, v36, v37, v38);
        }

        *v41->endpoint = v40 + 1;
        v7 = v41;
        v42 = &v41[2 * v40];
        *v42->$__lazy_storage_$_interface = v55;
        v43 = v56;
        v44 = v57;
        v45 = v59;
        *v42[2]._TtCs12_SwiftObject_opaque = v58;
        *v42[2].endpoint = v45;
        *&v42[1]._TtCs12_SwiftObject_opaque[8] = v43;
        *v42[1].connection = v44;
      }

LABEL_4:
      if (++v6 == v3)
      {
        return v7;
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000433A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 64) = v5;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return _swift_task_switch(sub_1000433D4, 0, 0);
}

uint64_t sub_1000433D4()
{
  if (sub_1000440C0())
  {
    v1 = static os_log_type_t.default.getter();
    sub_10005E11C(v1, 0xD000000000000036, 0x8000000100096310, 0xD000000000000054, 0x8000000100096260, 44);
    sub_10000B6B0();
    swift_allocError();
    *v2 = 0xD000000000000036;
    *(v2 + 8) = 0x8000000100096310;
    *(v2 + 16) = 9;
    swift_willThrow();
    v3 = *(v0 + 1);

    return v3();
  }

  else
  {
    v5 = *(v0 + 8);
    v6 = *(v0 + 3);
    v7 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(57);
    v8._countAndFlagsBits = 0xD000000000000035;
    v8._object = 0x8000000100096220;
    String.append(_:)(v8);
    sub_100002074(&qword_1000B7A00, &qword_100091760);
    v9._countAndFlagsBits = Array.description.getter();
    object = v9._object;
    String.append(_:)(v9);
    object, v11, v12, v13, v14, v15, v16, v17;
    v18._countAndFlagsBits = 32032;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 48);
    0xE000000000000000, v19, v20, v21, v22, v23, v24, v25;
    v26 = swift_allocObject();
    *(v0 + 9) = v26;
    *(v26 + 16) = v5;
    *(v26 + 24) = v6;
    v27 = *(v5 + 16);
    *(v0 + 10) = v27;
    if (v27)
    {

      v28 = v27;
      v29 = static os_log_type_t.debug.getter();
      sub_10005E11C(v29, 0xD000000000000045, 0x80000001000962C0, 0xD000000000000054, 0x8000000100096260, 213);
      v30 = swift_task_alloc();
      *(v0 + 11) = v30;
      *v30 = v0;
      v30[1] = sub_1000438B8;
      v31 = *(v0 + 8);
      v32 = *(v0 + 3);

      return sub_1000446E8(v28, v31, v32);
    }

    else
    {
      v33 = v26;
      v35 = v0[6];
      v34 = v0[7];

      v36 = String._bridgeToObjectiveC()();
      v37 = [objc_opt_self() containerWithIdentifier:v36];

      v38 = [v37 publicCloudDatabase];
      *(v0 + 13) = v38;

      v39 = [objc_allocWithZone(CKOperationConfiguration) init];
      *(v0 + 14) = v39;
      v40 = [v38 container];
      [v39 setContainer:v40];

      [v39 setTimeoutIntervalForRequest:v35];
      [v39 setTimeoutIntervalForResource:v34];
      [v39 setAllowsCellularAccess:1];
      [v39 setPreferAnonymousRequests:1];
      v41 = swift_task_alloc();
      *(v0 + 15) = v41;
      *(v41 + 16) = &unk_100091770;
      *(v41 + 24) = v33;
      v42 = v39;
      v43 = swift_task_alloc();
      *(v0 + 16) = v43;
      v44 = sub_100002074(&qword_1000B79E0, &qword_1000916F0);
      *v43 = v0;
      v43[1] = sub_1000439E0;

      return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v39, 0, &unk_100091780, v41, v44);
    }
  }
}

uint64_t sub_1000438B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_100043B70;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_100043B04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000439E0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100043C4C;
  }

  else
  {

    v3 = sub_100043BD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100043B04()
{
  v1 = v0[10];

  v2 = v0[18];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100043B70()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100043BD8()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100043C4C()
{
  v1 = v0[14];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100043CD8()
{
  sub_100003558((v0 + 16));
  sub_10004B9B8(v0 + OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_changeTokenCache, type metadata accessor for ChangeTokenCache);

  v1 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100043DD8(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100043EA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100043F08()
{
  result = qword_1000B79B0;
  if (!qword_1000B79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B79B0);
  }

  return result;
}

uint64_t sub_100043F88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011E6C;

  return sub_100041840(a1, v5, v4);
}

void sub_100044034(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000440C0()
{
  v1 = sub_100002074(&qword_1000B7820, &unk_1000917B0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v65 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v65 - v13;
  __chkstk_darwin(v12);
  v16 = v65 - v15;
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 0;
  }

  v66 = v4;
  v67 = v14;
  v17 = qword_1000B7C78;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 valueForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011DEC(&v68, v69);
  }

  else
  {

    memset(v69, 0, sizeof(v69));
  }

  sub_100002074(&qword_1000B7748, &unk_1000912F8);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = *(&v68 + 1);
    if (*(&v68 + 1))
    {
      sub_10002F9EC(1, v6);
      v21, v22, v23, v24, v25, v26, v27, v28;
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_10000BC10(v6, &qword_1000B7820, &unk_1000917B0);
      }

      else
      {
        (*(v8 + 32))(v16, v6, v7);
        sub_100054D1C(0x5466664F6B636162, 0xEB00000000656D69);
        if (v29)
        {
          (*(v8 + 8))(v16, v7);
        }

        else
        {
          v65[1] = v0;
          Date.addingTimeInterval(_:)();
          Date.init()();
          v30 = static Date.< infix(_:_:)();
          v31 = *(v8 + 8);
          v31(v11, v7);
          if (v30)
          {
            v32 = v66;
            (*(v8 + 56))(v66, 1, 1, v7);
            sub_100031470(v32);
            sub_100031470(v32);
            v33 = static os_log_type_t.debug.getter();
            *&v69[0] = 0;
            *(&v69[0] + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(82);
            v34._countAndFlagsBits = 0xD000000000000032;
            v34._object = 0x8000000100096700;
            String.append(_:)(v34);
            sub_10004D698(&qword_1000B6A98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            object = v35._object;
            String.append(_:)(v35);
            object, v37, v38, v39, v40, v41, v42, v43;
            v44._countAndFlagsBits = 0x664F6B636162202CLL;
            v44._object = 0xEE003D656D695466;
            String.append(_:)(v44);
            Double.write<A>(to:)();
            v45._countAndFlagsBits = 0x6E6572727563202CLL;
            v45._object = 0xEA00000000003D74;
            String.append(_:)(v45);
            Date.init()();
            v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            v47 = v46._object;
            String.append(_:)(v46);
            v47, v48, v49, v50, v51, v52, v53, v54;
            v31(v11, v7);
            v55._countAndFlagsBits = 32032;
            v55._object = 0xE200000000000000;
            String.append(_:)(v55);
            v56 = *(&v69[0] + 1);
            sub_10005E11C(v33, *&v69[0], *(&v69[0] + 1), 0xD000000000000054, 0x8000000100096260, 401);
            v56, v57, v58, v59, v60, v61, v62, v63;
            sub_10000BC10(v66, &qword_1000B7820, &unk_1000917B0);
            v31(v67, v7);
            v31(v16, v7);
            return 1;
          }

          v64 = static os_log_type_t.debug.getter();
          sub_10005E11C(v64, 0xD000000000000021, 0x80000001000966D0, 0xD000000000000054, 0x8000000100096260, 393);
          v31(v67, v7);
          v31(v16, v7);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000446E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000447AC, 0, 0);
}

uint64_t sub_1000447AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v7 = *(v0 + 32);
  (*(*(v0 + 56) + 16))(v1, v7 + qword_1000B7FC0, *(v0 + 48));
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_100002074(&qword_1000B79E0, &qword_1000916F0);
  *v4 = v0;
  v4[1] = sub_1000448F8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x6F66286863746566, 0xEF293A646E613A72, sub_10004C024, v3, v5);
}

uint64_t sub_1000448F8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100044AB4;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = sub_100044A48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100044A48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100044AB4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100044B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v84 = a5;
  v100 = a4;
  v102 = a1;
  v92 = type metadata accessor for Logger();
  v7 = *(v92 - 8);
  __chkstk_darwin(v92);
  v86 = v8;
  v88 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  __chkstk_darwin(v9);
  v101 = &v78 - v11;
  v93 = a2;
  v12 = sub_1000454E0(a3);
  v13 = &_swiftEmptyArrayStorage;
  aBlock[0] = &_swiftEmptyArrayStorage;
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = a3;
    v16 = (a3 + 48);
    v17 = v14;
    do
    {
      v18 = *v16;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 += 6;
      --v17;
    }

    while (v17);
    v13 = aBlock[0];
    a3 = v15;
  }

  sub_10000BCB8(0, &qword_1000B7A10, CKFetchRecordZoneChangesOperation_ptr);

  v87 = v13;
  v107.is_nil = v12;
  isa = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v107, v108).super.super.super.super.isa;
  [(objc_class *)isa setFetchAllChanges:0];
  v85 = isa;
  v20 = [(objc_class *)isa group];
  if (v20)
  {
    v21 = v20;
    if (v14)
    {
      if (*(a3 + 72))
      {
        v22 = 0xE900000000000065;
      }

      else
      {
        v22 = 0xEA0000000000646ELL;
      }

      v23 = String._bridgeToObjectiveC()();
      v22, v24, v25, v26, v27, v28, v29, v30;
    }

    else
    {
      v23 = 0;
    }

    [v21 setName:v23];
  }

  v31 = swift_allocObject();
  v94 = v31;
  *(v31 + 16) = &_swiftEmptyDictionarySingleton;
  sub_100031688(a3, (v31 + 16));
  v32 = v104;
  v96 = *(v104 + 16);
  v97 = v104 + 16;
  v96(v101, v102, v105);
  v91 = *(v7 + 16);
  v95 = v7 + 16;
  v33 = v92;
  v91(v88, v100, v92);
  v34 = *(v32 + 80);
  v35 = (v34 + 32) & ~v34;
  v80 = v35 + v10;
  v98 = v35;
  v36 = (v35 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = a3;
  v38 = *(v7 + 80);
  v82 = v36;
  v39 = (v38 + v36 + 8) & ~v38;
  v83 = v39 + v86;
  v81 = v39;
  v90 = v34 | v38;
  v79 = ((v39 + v86 + 7) & 0xFFFFFFFFFFFFFFF8);
  v103 = v7;
  v40 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v85;
  *(v41 + 16) = v93;
  *(v41 + 24) = v42;
  v89 = *(v32 + 32);
  v104 = v32 + 32;
  v89(v41 + v35, v101, v105);
  *(v41 + v36) = v37;
  v99 = *(v103 + 32);
  v103 += 32;
  v43 = v88;
  v99(v41 + v39, v88, v33);
  *(v79 + v41) = v87;
  *(v41 + v40) = v94;

  v44 = v93;

  v79 = v42;

  CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();
  v45 = v101;
  v46 = v105;
  v96(v101, v102, v105);
  v47 = v33;
  v91(v43, v100, v33);
  v48 = ((v80 + v38) & ~v38);
  v85 = v48;
  v86 = (v48 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = v86;
  v50 = swift_allocObject();
  v51 = v79;
  *(v50 + 16) = v44;
  *(v50 + 24) = v51;
  v52 = v45;
  v53 = v89;
  v89(v50 + v98, v52, v46);
  v99(v48 + v50, v43, v47);
  *(v50 + v49) = v94;

  v54 = v51;

  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
  v55 = v101;
  v56 = v105;
  v96(v101, v102, v105);
  v57 = v92;
  v91(v43, v100, v92);
  v58 = swift_allocObject();
  *(v58 + 16) = v44;
  *(v58 + 24) = v54;
  v53(v58 + v98, v55, v56);
  *(v58 + v82) = v94;
  v59 = v57;
  v99(v58 + v81, v43, v57);
  aBlock[4] = sub_10004C5FC;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100046DB8;
  aBlock[3] = &unk_1000B0098;
  v60 = _Block_copy(aBlock);

  v61 = v54;

  [(objc_class *)v61 setRecordZoneChangeTokensUpdatedBlock:v60];
  _Block_release(v60);
  v62 = v101;
  v63 = v105;
  v96(v101, v102, v105);
  v64 = v100;
  v65 = v59;
  v66 = v91;
  v91(v43, v100, v59);
  v67 = v86;
  v68 = swift_allocObject();
  *(v68 + 16) = v44;
  *(v68 + 24) = v61;
  v89(v68 + v98, v62, v63);
  v69 = v43;
  v99(v85 + v68, v43, v65);
  v70 = v94;
  *(v68 + v67) = v94;

  v71 = v61;

  CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter();
  v72 = v105;
  v96(v62, v102, v105);
  v73 = v64;
  v74 = v92;
  v66(v69, v73, v92);
  v75 = swift_allocObject();
  *(v75 + 16) = v93;
  *(v75 + 24) = v71;
  v89(v75 + v98, v62, v72);
  v99(v85 + v75, v69, v74);
  *(v75 + v67) = v87;
  *(v75 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;

  v76 = v71;

  CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter();
  [v84 addOperation:v76];
}

void *sub_1000454E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = (a1 + 64);
  v3 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v4 = v3;
    v6 = *(v2 - 3);
    v5 = *(v2 - 2);
    v7 = *(v2 - 1);
    v123 = *v2;
    v8 = v7;

    v9 = v5;
    v10 = [v9 zoneName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == 0x746C75616665645FLL && v13 == 0xEC000000656E6F5ALL)
    {
      goto LABEL_11;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      goto LABEL_8;
    }

    v31 = [v9 zoneName];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v33;

    if (v32 == 0x617461646174656DLL && v13 == 0xED0000656E6F7A5FLL)
    {
LABEL_11:

      v6, v34, v35, v36, v37, v38, v39, v40;
      v30 = v13;
      goto LABEL_12;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13, v42, v43, v44, v45, v46, v47, v48;
    if (v41)
    {
LABEL_8:

      v30 = v6;
LABEL_12:
      v30, v23, v24, v25, v26, v27, v28, v29;

      v3 = v4;
      goto LABEL_13;
    }

    v49 = v122;
    if (v7)
    {
      v120 = v8;
      v121 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(78);
      v50._countAndFlagsBits = 0xD000000000000036;
      v50._object = 0x8000000100096670;
      String.append(_:)(v50);
      v51 = [v9 zoneName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55._countAndFlagsBits = v52;
      v55._object = v54;
      String.append(_:)(v55);
      v54, v56, v57, v58, v59, v60, v61, v62;
      v63._object = 0x80000001000966B0;
      v63._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v63);
      v64 = [v120 data];
      v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = Data.base64EncodedString(options:)(0);
      v69 = v67;
      v49 = v122;
      sub_100005A28(v65, v69);
      String.append(_:)(v68);
      v68._object, v70, v71, v72, v73, v74, v75, v76;
      v77._countAndFlagsBits = 32032;
      v77._object = 0xE200000000000000;
      String.append(_:)(v77);
      sub_10005E11C(v121, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 433);

      0xE000000000000000, v78, v79, v80, v81, v82, v83, v84;
    }

    v85 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
    [v85 setPreviousServerChangeToken:v8];
    if (!*(v49 + 16))
    {
      [v85 setFetchNewestChangesFirst:1];
      [v85 setResultsLimit:v123];
    }

    v3 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      if (v4 >= 0)
      {
        v4 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v86 = v9;
      v87 = v85;
      v88 = __CocoaDictionary.count.getter();
      if (__OFADD__(v88, 1))
      {
        goto LABEL_39;
      }

      v3 = sub_10004A1E0(v4, v88 + 1);
    }

    else
    {
      v89 = v9;
      v90 = v85;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = sub_100058024(v9);
    v94 = v3[2];
    v95 = (v93 & 1) == 0;
    v96 = __OFADD__(v94, v95);
    v97 = v94 + v95;
    if (v96)
    {
      break;
    }

    v98 = v93;
    if (v3[3] >= v97)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v109 = v92;
        sub_10005A65C();
        v92 = v109;
        if (v98)
        {
LABEL_32:
          v100 = v3[7];
          v101 = *(v100 + 8 * v92);
          *(v100 + 8 * v92) = v85;

          v6, v102, v103, v104, v105, v106, v107, v108;
          goto LABEL_13;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_10005986C(v97, isUniquelyReferenced_nonNull_native);
      v92 = sub_100058024(v9);
      if ((v98 & 1) != (v99 & 1))
      {
        goto LABEL_41;
      }
    }

    if (v98)
    {
      goto LABEL_32;
    }

LABEL_34:
    v3[(v92 >> 6) + 8] |= 1 << v92;
    *(v3[6] + 8 * v92) = v9;
    *(v3[7] + 8 * v92) = v85;

    v6, v110, v111, v112, v113, v114, v115, v116;
    v117 = v3[2];
    v96 = __OFADD__(v117, 1);
    v118 = v117 + 1;
    if (v96)
    {
      goto LABEL_40;
    }

    v3[2] = v118;
LABEL_13:
    v2 += 6;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100045A44(void *a1, void *a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((sub_10004632C(a5) & 1) == 0)
  {
    return;
  }

  if (a3)
  {
    v15 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(58);
    v16._countAndFlagsBits = 0xD000000000000036;
    v16._object = 0x8000000100096530;
    String.append(_:)(v16);
    swift_getErrorValue();
    v17._countAndFlagsBits = Error.localizedDescription.getter();
    object = v17._object;
    String.append(_:)(v17);
    object, v19, v20, v21, v22, v23, v24, v25;
    v26._countAndFlagsBits = 32032;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    sub_10005E11C(v15, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 98);
    0xE000000000000000, v27, v28, v29, v30, v31, v32, v33;
    if (([a5 isCancelled] & 1) == 0)
    {
      [a5 cancel];
      *&v215 = a2;
      swift_errorRetain();
      sub_100002074(&qword_1000B7A08, &qword_100091788);
      CheckedContinuation.resume(throwing:)();
    }

    return;
  }

  v201 = a2;
  v34 = *(a7 + 16);
  v35 = a1;
  if (!v34)
  {
LABEL_10:
    v50 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(95);
    v51._countAndFlagsBits = 0xD00000000000004ALL;
    v51._object = 0x8000000100096620;
    String.append(_:)(v51);
    v52 = [v35 zoneID];
    v53 = [v52 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57._countAndFlagsBits = v54;
    v57._object = v56;
    String.append(_:)(v57);
    v56, v58, v59, v60, v61, v62, v63, v64;

    v65._countAndFlagsBits = 0x736575716572202CLL;
    v65._object = 0xEF3D73656E6F5A74;
    String.append(_:)(v65);
    sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
    v66._countAndFlagsBits = Array.description.getter();
    v67 = v66._object;
    String.append(_:)(v66);
    v67, v68, v69, v70, v71, v72, v73, v74;
    v75._countAndFlagsBits = 32032;
    v75._object = 0xE200000000000000;
    String.append(_:)(v75);
    sub_10005E11C(v50, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 81);
LABEL_11:

    0xE000000000000000, v76, v77, v78, v79, v80, v81, v82;
    return;
  }

  sub_10000BCB8(0, &qword_1000B7A28, NSObject_ptr);
  v36 = (a7 + 56);
  while (1)
  {
    v38 = *(v36 - 3);
    v37 = *(v36 - 2);
    v39 = *(v36 - 1);
    v40 = *v36;

    v41 = v39;
    v42 = [v35 zoneID];
    LOBYTE(v39) = static NSObject.== infix(_:_:)();

    if (v39)
    {
      break;
    }

    v36 += 6;

    v37, v43, v44, v45, v46, v47, v48, v49;
    if (!--v34)
    {
      goto LABEL_10;
    }
  }

  if (CKRecord.recordType.getter() == v38 && v83 == v37)
  {
    v83, v83, v84, v85, v86, v87, v88, v89;
    goto LABEL_18;
  }

  v90 = v83;
  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v90, v92, v93, v94, v95, v96, v97, v98;
  if ((v91 & 1) == 0)
  {
    v166 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(67);
    v167._countAndFlagsBits = 0xD000000000000035;
    v167._object = 0x8000000100096570;
    String.append(_:)(v167);

    v168._countAndFlagsBits = v38;
    v168._object = v37;
    String.append(_:)(v168);
    v37, v169, v170, v171, v172, v173, v174, v175;
    v176._countAndFlagsBits = 0x3D646E756F66202CLL;
    v176._object = 0xE800000000000000;
    String.append(_:)(v176);
    v177._countAndFlagsBits = CKRecord.recordType.getter();
    v178 = v177._object;
    String.append(_:)(v177);
    v178, v179, v180, v181, v182, v183, v184, v185;
    v186._countAndFlagsBits = 32032;
    v186._object = 0xE200000000000000;
    String.append(_:)(v186);
    sub_10005E11C(v166, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 86);

    v37, v187, v188, v189, v190, v191, v192, v193;
    goto LABEL_11;
  }

LABEL_18:
  v99 = static os_log_type_t.debug.getter();
  *&v215 = 0;
  *(&v215 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v100._countAndFlagsBits = 0xD00000000000002ELL;
  v100._object = 0x80000001000965B0;
  String.append(_:)(v100);
  v101 = [v201 description];
  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  v105._countAndFlagsBits = v102;
  v105._object = v104;
  String.append(_:)(v105);
  v104, v106, v107, v108, v109, v110, v111, v112;
  v113._countAndFlagsBits = 8200233;
  v113._object = 0xE300000000000000;
  String.append(_:)(v113);
  sub_10005E11C(v99, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 90);
  0xE000000000000000, v114, v115, v116, v117, v118, v119, v120;
  sub_10004CD6C(v201, 0);
  sub_10002FEE4(v201, &v215);
  v212 = v217;
  v213 = v218;
  v214 = v219;
  v210 = v215;
  v211 = v216;
  if (!*(&v215 + 1))
  {
    v144 = static os_log_type_t.error.getter();
    *&v205 = 0;
    *(&v205 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v145._countAndFlagsBits = 0xD00000000000003ALL;
    v145._object = 0x80000001000965E0;
    String.append(_:)(v145);
    v146 = [v201 description];
    v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v149 = v148;

    v150._countAndFlagsBits = v147;
    v150._object = v149;
    String.append(_:)(v150);
    v149, v151, v152, v153, v154, v155, v156, v157;
    v158._countAndFlagsBits = 32032;
    v158._object = 0xE200000000000000;
    String.append(_:)(v158);
    sub_10005E11C(v144, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 95);
    0xE000000000000000, v159, v160, v161, v162, v163, v164, v165;
LABEL_28:

    v37, v194, v195, v196, v197, v198, v199, v200;
    return;
  }

  v207 = v217;
  v208 = v218;
  v209 = v219;
  v205 = v215;
  v206 = v216;
  v121 = [v35 zoneID];
  swift_beginAccess();
  v123 = sub_100046580(v204, v121);
  if (!*v122)
  {
    (v123)(v204, 0);
    swift_endAccess();

    sub_10000BC10(&v215, &qword_1000B7A30, &unk_1000917A0);
    goto LABEL_28;
  }

  v124 = v122;
  v125 = v122[1];
  v203[2] = v212;
  v203[3] = v213;
  v203[4] = v214;
  v203[0] = v210;
  v203[1] = v211;
  sub_100031284(v203, v202);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v124[1] = v125;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v125 = sub_100049A20(0, *v125->endpoint + 1, 1, v125, v127, v128, v129, v130);
    v124[1] = v125;
  }

  v132 = *v125->endpoint;
  v131 = *v125->connection;
  if (v132 >= v131 >> 1)
  {
    v125 = sub_100049A20((v131 > 1), v132 + 1, 1, v125, v127, v128, v129, v130);
    v124[1] = v125;
  }

  *v125->endpoint = v132 + 1;
  v133 = &v125[2 * v132];
  *v133->$__lazy_storage_$_interface = v205;
  v134 = v206;
  v135 = v207;
  v136 = v209;
  *v133[2]._TtCs12_SwiftObject_opaque = v208;
  *v133[2].endpoint = v136;
  *&v133[1]._TtCs12_SwiftObject_opaque[8] = v134;
  *v133[1].connection = v135;
  (v123)(v204, 0);
  swift_endAccess();

  v37, v137, v138, v139, v140, v141, v142, v143;
  sub_10000BC10(&v215, &qword_1000B7A30, &unk_1000917A0);
}

uint64_t sub_10004632C(void *a1)
{
  if (qword_1000B6658 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  if (qword_1000B7C78 && (v1 = a1, v2 = qword_1000B7C78, v3 = String._bridgeToObjectiveC()(), v4 = [v2 BOOLForKey:v3], v2, v3, a1 = v1, (v4 & 1) != 0))
  {
    v5 = static os_log_type_t.error.getter();
    sub_10005E11C(v5, 0xD00000000000001DLL, 0x8000000100096470, 0xD000000000000054, 0x8000000100096260, 244);
    sub_10000B6B0();
    swift_allocError();
    *v6 = 0xD00000000000001DLL;
    *(v6 + 8) = 0x8000000100096470;
    *(v6 + 16) = 2;
    swift_willThrow();
  }

  else if ([a1 isCancelled])
  {
    v8 = static os_log_type_t.debug.getter();
    sub_10005E11C(v8, 0xD000000000000054, 0x8000000100096410, 0xD000000000000054, 0x8000000100096260, 249);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t (*sub_1000464F4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10004A42C(v6, a2, a3);
  return sub_10004657C;
}

uint64_t (*sub_100046580(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10004A4DC(v4, a2);
  return sub_10004E160;
}

void sub_1000465F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100046644(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10004632C(a5);
  if (result)
  {
    v12 = static os_log_type_t.debug.getter();
    v56[0] = 1;
    v56[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v13._object = 0x8000000100096500;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    v14 = [a1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);
    v17, v19, v20, v21, v22, v23, v24, v25;
    v26._countAndFlagsBits = 0x64726F636572202CLL;
    v26._object = 0xED00003D65707954;
    String.append(_:)(v26);
    v27._countAndFlagsBits = a2;
    v27._object = a3;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 32032;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    sub_10005E11C(v12, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 121);
    0xE000000000000000, v29, v30, v31, v32, v33, v34, v35;
    v36 = [a1 recordName];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    *&v58 = v37;
    *(&v58 + 1) = v39;
    *&v60 = 0;
    v59 = 0uLL;
    DWORD2(v60) = 0;
    BYTE12(v60) = 1;
    v61 = 0u;
    v62 = 0u;
    v40 = [a1 zoneID];
    swift_beginAccess();
    v42 = sub_100046580(v57, v40);
    if (*v41)
    {
      v43 = v41;
      v44 = v41[2];
      sub_100031284(&v58, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[2] = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_100049A20(0, *v44->endpoint + 1, 1, v44, v46, v47, v48, v49);
        v43[2] = v44;
      }

      v51 = *v44->endpoint;
      v50 = *v44->connection;
      if (v51 >= v50 >> 1)
      {
        v44 = sub_100049A20((v50 > 1), v51 + 1, 1, v44, v46, v47, v48, v49);
        v43[2] = v44;
      }

      *v44->endpoint = v51 + 1;
      v52 = &v44[2 * v51];
      *v52->$__lazy_storage_$_interface = v58;
      v53 = v59;
      v54 = v60;
      v55 = v62;
      *v52[2]._TtCs12_SwiftObject_opaque = v61;
      *v52[2].endpoint = v55;
      *&v52[1]._TtCs12_SwiftObject_opaque[8] = v53;
      *v52[1].connection = v54;
      (v42)(v57, 0);
    }

    else
    {
      (v42)(v57, 0);
    }

    swift_endAccess();

    return sub_1000312BC(&v58);
  }

  return result;
}

void sub_1000469D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((sub_10004632C(a6) & (a2 != 0)) != 0)
  {
    swift_beginAccess();
    v11 = *(a8 + 16);
    v12 = *(v11 + 16);
    v13 = a2;
    if (v12 && (v14 = sub_100058024(a1), (v15 & 1) != 0))
    {
      v16 = *(v11 + 56) + 40 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v63 = *(v16 + 24);
      v20 = *(v16 + 32);
      v21 = v20;
      v62 = v17;
      v22 = v17;
      v61 = v18;

      v60 = v19;
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v60 = 0;
      v63 = 0;
      v20 = 0;
    }

    swift_endAccess();
    v58 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(88);
    v23._countAndFlagsBits = 0xD000000000000040;
    v23._object = 0x8000000100096490;
    String.append(_:)(v23);
    v24 = [v13 data];
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v13;
    v27 = v26;

    v28 = Data.base64EncodedString(options:)(0);
    sub_100005A28(v25, v27);
    String.append(_:)(v28);
    v28._object, v29, v30, v31, v32, v33, v34, v35;
    v36._object = 0x80000001000964E0;
    v36._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v36);
    v64[0] = v62;
    v64[1] = v61;
    v64[2] = v60;
    v64[3] = v63;
    v64[4] = v20;
    sub_10004CCB0(v62, v61, v60, v63, v20);
    sub_100002074(&qword_1000B7A18, &qword_100091790);
    v37._countAndFlagsBits = String.init<A>(describing:)();
    object = v37._object;
    String.append(_:)(v37);
    object, v39, v40, v41, v42, v43, v44, v45;
    v46._countAndFlagsBits = 2099281184;
    v46._object = 0xE400000000000000;
    String.append(_:)(v46);
    sub_10005E11C(v58, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 143);
    0xE000000000000000, v47, v48, v49, v50, v51, v52, v53;
    swift_beginAccess();
    v55 = sub_100046580(v64, a1);
    if (*v54)
    {
      v56 = v54[4];
      v54[4] = a2;
      v57 = v59;
      (v55)(v64, 0);
      swift_endAccess();

      sub_10004CD0C(v62, v61, v60, v63, v20);
    }

    else
    {
      (v55)(v64, 0);
      swift_endAccess();
      sub_10004CD0C(v62, v61, v60, v63, v20);
    }
  }
}

uint64_t sub_100046DB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  if (a4)
  {

    v8 = a2;
    v9 = a3;
    v10 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {

    v13 = a2;
    v14 = a3;
    v12 = 0xF000000000000000;
  }

  v7(a2, a3, v4, v12);

  sub_100005A14(v4, v12);
}

void sub_100046E80(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, __int16 a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (sub_10004632C(a7))
  {
    v76 = a2;
    if ((a5 & 0x100) != 0)
    {
      v57 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(66);
      v58._countAndFlagsBits = 0xD00000000000003ELL;
      v58._object = 0x8000000100096390;
      String.append(_:)(v58);
      swift_getErrorValue();
      v59._countAndFlagsBits = Error.localizedDescription.getter();
      object = v59._object;
      String.append(_:)(v59);
      object, v61, v62, v63, v64, v65, v66, v67;
      v68._countAndFlagsBits = 32032;
      v68._object = 0xE200000000000000;
      String.append(_:)(v68);
      sub_10005E11C(v57, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 169);
      0xE000000000000000, v69, v70, v71, v72, v73, v74, v75;
      if (([a7 isCancelled] & 1) == 0)
      {
        [a7 cancel];
        v77 = v76;
        swift_errorRetain();
        sub_100002074(&qword_1000B7A08, &qword_100091788);
        CheckedContinuation.resume(throwing:)();
      }
    }

    else
    {
      v16 = a5;
      v17 = static os_log_type_t.debug.getter();
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      v18._countAndFlagsBits = 0xD000000000000040;
      v18._object = 0x8000000100096490;
      String.append(_:)(v18);
      v19 = [a2 data];
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = Data.base64EncodedString(options:)(0);
      sub_100005A28(v20, v22);
      String.append(_:)(v23);
      v23._object, v24, v25, v26, v27, v28, v29, v30;
      v31._countAndFlagsBits = 0x6F4365726F6D202CLL;
      v31._object = 0xED00003D676E696DLL;
      String.append(_:)(v31);
      if (v16)
      {
        v32 = 1702195828;
      }

      else
      {
        v32 = 0x65736C6166;
      }

      if (v16)
      {
        v33 = 0xE400000000000000;
      }

      else
      {
        v33 = 0xE500000000000000;
      }

      v34 = v33;
      String.append(_:)(*&v32);
      v33, v35, v36, v37, v38, v39, v40, v41;
      v42._countAndFlagsBits = 32032;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      sub_10005E11C(v17, v77, v78, 0xD000000000000054, 0x8000000100096260, 164);
      v78, v43, v44, v45, v46, v47, v48, v49;
      swift_beginAccess();
      v51 = sub_100046580(&v77, a1);
      if (*v50)
      {
        *(v50 + 24) = v16 & 1;
      }

      (v51)(&v77, 0);
      swift_endAccess();
      swift_beginAccess();
      v53 = sub_100046580(&v77, a1);
      if (*v52)
      {
        v54 = v52;
        v55 = v76;
        sub_10004CC9C(a3, a4);
        v56 = v54[4];
        v54[4] = v76;
        (v53)(&v77, 0);
        swift_endAccess();
        sub_100005A14(a3, a4);
      }

      else
      {
        (v53)(&v77, 0);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_1000472E0(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10004632C(a4);
  if (result)
  {
    if (a2)
    {
      v12 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(66);
      v13._countAndFlagsBits = 0xD00000000000003ELL;
      v13._object = 0x8000000100096390;
      String.append(_:)(v13);
      swift_getErrorValue();
      v14._countAndFlagsBits = Error.localizedDescription.getter();
      object = v14._object;
      String.append(_:)(v14);
      object, v16, v17, v18, v19, v20, v21, v22;
      v23._countAndFlagsBits = 32032;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      sub_10005E11C(v12, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 197);
      0xE000000000000000, v24, v25, v26, v27, v28, v29, v30;
      result = [a4 isCancelled];
      if ((result & 1) == 0)
      {
        [a4 cancel];
        swift_errorRetain();
        sub_100002074(&qword_1000B7A08, &qword_100091788);
        return CheckedContinuation.resume(throwing:)();
      }
    }

    else
    {
      v31 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(60);
      v32._countAndFlagsBits = 0xD000000000000038;
      v32._object = 0x80000001000963D0;
      String.append(_:)(v32);
      sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
      v33._countAndFlagsBits = Array.description.getter();
      v34 = v33._object;
      String.append(_:)(v33);
      v34, v35, v36, v37, v38, v39, v40, v41;
      v42._countAndFlagsBits = 32032;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      sub_10005E11C(v31, 0, 0xE000000000000000, 0xD000000000000054, 0x8000000100096260, 194);
      0xE000000000000000, v43, v44, v45, v46, v47, v48, v49;
      swift_beginAccess();
      v50 = *(a8 + 16);
      v53 = *(v50 + 64);
      v52 = v50 + 64;
      v51 = v53;
      v54 = 1 << *(*(a8 + 16) + 32);
      v55 = -1;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      v56 = v55 & v51;
      v57 = (v54 + 63) >> 6;
      v83 = *(a8 + 16);
      result = swift_bridgeObjectRetain_n();
      v58 = 0;
      v59 = &_swiftEmptyArrayStorage;
      if (v56)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v60 >= v57)
        {

          v83, v76, v77, v78, v79, v80, v81, v82;
          sub_100002074(&qword_1000B7A08, &qword_100091788);
          return CheckedContinuation.resume(returning:)();
        }

        v56 = *(v52 + 8 * v60);
        ++v58;
        if (v56)
        {
          v58 = v60;
          do
          {
LABEL_12:
            v61 = *v83[1].endpoint + 40 * (__clz(__rbit64(v56)) | (v58 << 6));
            v63 = *v61;
            v62 = *(v61 + 8);
            v64 = *(v61 + 16);
            v65 = *(v61 + 24);
            v66 = *(v61 + 32);
            v67 = v66;
            v68 = v63;

            result = swift_isUniquelyReferenced_nonNull_native();
            v84 = v68;
            if ((result & 1) == 0)
            {
              result = sub_100049B40(0, (*v59->endpoint + 1), 1, v59, v69, v70, v71, v72);
              v59 = result;
            }

            v74 = *v59->endpoint;
            v73 = *v59->connection;
            if (v74 >= v73 >> 1)
            {
              result = sub_100049B40((v73 > 1), (v74 + 1), 1, v59, v69, v70, v71, v72);
              v59 = result;
            }

            v56 &= v56 - 1;
            *v59->endpoint = v74 + 1;
            v75 = &v59[v74];
            *v75->$__lazy_storage_$_interface = v84;
            *v75[1]._TtCs12_SwiftObject_opaque = v62;
            *&v75[1]._TtCs12_SwiftObject_opaque[8] = v64;
            v75[1].endpoint[0] = v65;
            *v75[1].connection = v66;
          }

          while (v56);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100047744(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  sub_100003558((v8 + 40));

  return _swift_deallocObject(v8, 88, 7);
}

uint64_t sub_10004778C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011E6C;

  return sub_100041D90(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_100047854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 24) = v9;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v4 + 32) = v10;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  return _swift_task_switch(sub_10004790C, 0, 0);
}

uint64_t sub_10004790C()
{
  v1 = sub_100002074(&qword_1000B79E0, &qword_1000916F0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100047A08;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v1, 0, 0, &unk_100091700, v2, v1);
}

uint64_t sub_100047A08()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100047B94;
  }

  else
  {

    v2 = sub_100047B24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100047B24()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100047B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100047C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100047CAC, 0, 0);
}

uint64_t sub_100047CAC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_10004889C(v1, &unk_100091720, v6);
  sub_10000BC10(v1, &qword_1000B7580, &qword_10008EEC0);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_10004889C(v1, &unk_100091730, v7);
  sub_10000BC10(v1, &qword_1000B7580, &qword_10008EEC0);
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_100002074(&qword_1000B79E8, &qword_100091738);
  *v8 = v0;
  v8[1] = sub_100047EA8;

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, 0, 0, v9);
}

uint64_t sub_100047EA8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10004808C;
  }

  else
  {
    v2 = sub_100047FBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100047FBC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B79E0, &qword_1000916F0);
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    ThrowingTaskGroup.cancelAll()();

    v2 = *(v0 + 8);

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004808C()
{
  sub_100002074(&qword_1000B79E0, &qword_1000916F0);
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  ThrowingTaskGroup.cancelAll()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000481E8, 0, 0);
}

uint64_t sub_1000481E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_100048A98(v1, &unk_1000917F0, v6);
  sub_10000BC10(v1, &qword_1000B7580, &qword_10008EEC0);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_100048A98(v1, &unk_100091800, v7);
  sub_10000BC10(v1, &qword_1000B7580, &qword_10008EEC0);
  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
  *v8 = v0;
  v8[1] = sub_1000483E4;

  return ThrowingTaskGroup.next(isolation:)(v0 + 8, 0, 0, v9);
}

uint64_t sub_1000483E4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000485A8;
  }

  else
  {
    v2 = sub_1000484F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000484F8()
{
  if (*(v0 + 64))
  {
    __break(1u);
  }

  else
  {
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    ThrowingTaskGroup.cancelAll()();

    v1 = *(v0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000485A8()
{
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  ThrowingTaskGroup.cancelAll()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10004866C, 0, 0);
}

uint64_t sub_10004866C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100048788;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_100048788()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10004E198;
  }

  else
  {
    v2 = sub_10004E19C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_100011DFC(a1, v18 - v8, &qword_1000B7580, &qword_10008EEC0);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000BC10(v9, &qword_1000B7580, &qword_10008EEC0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  sub_100002074(&qword_1000B79E0, &qword_1000916F0);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100048A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_100011DFC(a1, v18 - v8, &qword_1000B7580, &qword_10008EEC0);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000BC10(v9, &qword_1000B7580, &qword_10008EEC0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100048C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_100048CA8, 0, 0);
}

uint64_t sub_100048CA8()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100048DC4;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_100048DC4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100048F3C;
  }

  else
  {
    v2 = sub_100048ED8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100048ED8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048F3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048FA0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock.Instant();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000490C8, 0, 0);
}

uint64_t sub_1000490C8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v4 = *(v3 + 8);
  *(v0 + 112) = v4;
  *(v0 + 120) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = sub_10004D698(&qword_1000B79F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v5 = v0;
  v5[1] = sub_100049228;
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_100049228()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[14];
  if (v0)
  {
    v4 = v2[13];
    v5 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v4, v5);
    v6 = sub_100049448;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v7, v8);
    v6 = sub_1000493A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000493A4(uint64_t a1)
{
  sub_10004BCB0();
  swift_allocError();
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100049448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000494C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = type metadata accessor for ContinuousClock();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock.Instant();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000490C8, 0, 0);
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_1000495F0(_TtC13frauddefensed22TrustKitUIServerClient *result, int64_t a2, void *a3, _TtC13frauddefensed22TrustKitUIServerClient *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->connection;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100002074(&qword_1000B6900, &unk_10008F600);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->endpoint = v12;
    *v14->connection = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v17 = v14->$__lazy_storage_$_interface;
  v18 = a4->$__lazy_storage_$_interface;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_1000496FC(_TtC13frauddefensed22TrustKitUIServerClient *result, const char *a2, void *a3, _TtC13frauddefensed22TrustKitUIServerClient *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->connection;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100002074(&qword_1000B7BC8, &qword_100091E48);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->endpoint = v12;
    *v14->connection = 2 * (v16 >> 3);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14->$__lazy_storage_$_interface >= &a4->$__lazy_storage_$_interface[8 * v12])
    {
      memmove(v14->$__lazy_storage_$_interface, a4->$__lazy_storage_$_interface, 8 * v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    sub_100002074(&qword_1000B7388, &qword_100091E50);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100049830(_TtC13frauddefensed22TrustKitUIServerClient *result, int64_t a2, char a3, _TtC13frauddefensed22TrustKitUIServerClient *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->connection;
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

  v8 = *a4->endpoint;
  if (v7 <= v8)
  {
    v9 = *a4->endpoint;
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002074(&qword_1000B7A60, &qword_100091818);
  v10 = *(sub_100002074(&qword_1000B7A68, &unk_100091820) - 8);
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

  *v13->endpoint = v8;
  *v13->connection = 2 * ((result - v12) / v11);
LABEL_19:
  v16 = sub_100002074(&qword_1000B7A68, &unk_100091820);
  v21 = *(v16 - 1);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = &a4->_TtCs12_SwiftObject_opaque[v22];
  if (v5)
  {
    if (v13 < a4 || &v13->_TtCs12_SwiftObject_opaque[v22] >= &v23[*(v21 + 72) * v8])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->endpoint = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v23, v15, v16, v17, v18, v19, v20;
  return v13;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100049A20(_TtC13frauddefensed22TrustKitUIServerClient *result, int64_t a2, void *a3, _TtC13frauddefensed22TrustKitUIServerClient *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->connection;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100002074(&qword_1000B7A20, &qword_100091798);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->endpoint = v12;
    *v14->connection = 2 * ((v15 - 32) / 80);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v16 = v14->$__lazy_storage_$_interface;
  v17 = a4->$__lazy_storage_$_interface;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[80 * v12])
    {
      memmove(v16, v17, 80 * v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100049B40(_TtC13frauddefensed22TrustKitUIServerClient *result, const char *a2, void *a3, _TtC13frauddefensed22TrustKitUIServerClient *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->connection;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100002074(&qword_1000B79D0, &qword_1000916E0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->endpoint = v12;
    *v14->connection = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14->$__lazy_storage_$_interface >= a4[v12].$__lazy_storage_$_interface)
    {
      memmove(v14->$__lazy_storage_$_interface, a4->$__lazy_storage_$_interface, 40 * v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    sub_100002074(&qword_1000B79D8, &qword_1000916E8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100049C88(_TtC13frauddefensed22TrustKitUIServerClient *result, const char *a2, char a3, _TtC13frauddefensed22TrustKitUIServerClient *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->connection;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100002074(&qword_1000B7A48, &qword_1000917C0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->endpoint = v12;
    *v14->connection = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    v16 = 48 * v12;
    if (v14 != a4 || v14->$__lazy_storage_$_interface >= &a4->$__lazy_storage_$_interface[48 * v12])
    {
      memmove(v14->$__lazy_storage_$_interface, a4->$__lazy_storage_$_interface, v16);
    }

    *a4->endpoint = 0;
  }

  else
  {
    sub_100002074(&qword_1000B7A00, &qword_100091760);
    swift_arrayInitWithCopy();
  }

  a4, a2, v16, a4, a5, a6, a7, a8;
  return v14;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100049DCC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002074(&qword_1000B6900, &unk_10008F600);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  *v4->endpoint = a1;
  *v4->connection = 2 * (v9 >> 4);
  return result;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100049E50(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002074(&qword_1000B7A78, &qword_100091830);
  v4 = *(type metadata accessor for NemesisError() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}