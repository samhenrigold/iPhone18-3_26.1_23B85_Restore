void sub_100351A84()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v3 = *(v2 - 8);
  *&v5 = __chkstk_darwin(v2, v4).n128_u64[0];
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = 0;
  v8 = [v0 remObjectIDWithError:{&v20, v5}];
  if (v8)
  {
    v9 = v8;
    v10 = v20;
    v11 = [v1 displayName];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *v7 = REMObjectID.codable.getter();
      v7[1] = v13;
      v7[3] = 0;
      v7[4] = 0;
      v7[2] = v15;
      (*(v3 + 104))(v7, enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:), v2);
      REMRemindersListDataView.SectionLite.init(type:reminders:)();
    }

    else
    {
      v17 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = String._bridgeToObjectiveC()();
      [v17 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v19];

      swift_willThrow();
    }
  }

  else
  {
    v16 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100351CE4(uint64_t a1)
{
  result = sub_100353368(&qword_100942CE0, &type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation, &protocol conformance descriptor for REMRemindersListDataView.AppIntentsSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_100351D60(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v7 = [*(v5 + 24) account];
    v9 = sub_10036422C(v7);
    v10 = _swiftEmptyDictionarySingleton[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_22;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      break;
    }

LABEL_15:
    if (v13)
    {

      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v9);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1007953F0;
      *(v16 + 32) = v5;
      _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v9) = v7;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v16;
      v17 = _swiftEmptyDictionarySingleton[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v19;
    }

    if (v6 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_10036BB00(v12, 1);
  v14 = sub_10036422C(v7);
  if ((v13 & 1) == (v15 & 1))
  {
    v9 = v14;
    goto LABEL_15;
  }

  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100351FDC(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_10002B924(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v8[3] < v16)
  {
    sub_10036BAEC(v16, v5 & 1);
    v11 = sub_10002B924(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    *(v19[6] + 8 * v11) = v9;
    *(v19[7] + 8 * v11) = v10;
    v25 = v19[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v19[2] = v26;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v24 = v11;
  sub_100373F88();
  v11 = v24;
  v19 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = v11;
  v21 = *(v19[7] + 8 * v11);

  v22 = v19[7];
  v23 = *(v22 + 8 * v20);
  *(v22 + 8 * v20) = v21;

  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = v6 + 7;
    v3 = 1;
    while (1)
    {
      v31 = *v5;
      v32 = *a3;
      v10 = *(v5 - 1);
      v6 = v31;
      v33 = sub_10002B924(v10);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v15 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v15)
      {
        goto LABEL_23;
      }

      v9 = v34;
      if (v32[3] < v37)
      {
        sub_10036BAEC(v37, 1);
        v33 = sub_10002B924(v10);
        if ((v9 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      v39 = *a3;
      if (v9)
      {
        v27 = v33;
        v28 = *(v39[7] + 8 * v33);

        v29 = v39[7];
        v30 = *(v29 + 8 * v27);
        *(v29 + 8 * v27) = v28;
      }

      else
      {
        v39[(v33 >> 6) + 8] |= 1 << v33;
        *(v39[6] + 8 * v33) = v10;
        *(v39[7] + 8 * v33) = v6;
        v40 = v39[2];
        v15 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v39[2] = v41;
      }

      v5 += 2;
      if (!--v17)
      {
        return;
      }
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100352264(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v4 = sub_1000F5104(&qword_100942E08, &qword_1007A3868);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v373 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v373 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v373 - v15;
  v17 = sub_1001A3FA8(a1);
  if (v1)
  {
    return v2;
  }

  v2 = v17;
  v390 = v16;
  v391 = v12;
  v393 = v7;
  sub_10002D468(0, a1, 0);
  v387 = a1;
  v388 = v8;
  v389 = v9;
  if (v2 >> 62)
  {
    goto LABEL_35;
  }

  v26 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v392 = 0;
    v395 = v18;
    if (!v26)
    {
      break;
    }

    v398 = &_swiftEmptyArrayStorage;
    v18 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v26 < 0)
    {
      goto LABEL_121;
    }

    v27 = 0;
    v396 = (v2 & 0xC000000000000001);
    v394 = (v2 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v396)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *v394->clientIdentity)
        {
          goto LABEL_33;
        }

        v29 = *(v2 + 8 * v27 + 32);
      }

      v30 = v29;
      _s8BaseListCMa();
      v16 = swift_allocObject();
      *(v16 + 24) = v30;
      v397 = 0;
      v31 = v30;
      v32 = [v31 remObjectIDWithError:&v397];
      if (!v32)
      {
        v69 = v397;
        v395, v70, v71, v72, v73, v74, v75, v76;
        v84 = v2;
        goto LABEL_30;
      }

      v33 = v32;
      v34 = v397;

      *(v16 + 16) = v33;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v398 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = specialized ContiguousArray._endMutation()();
      ++v27;
      if (v28 == v26)
      {
        v2, v35, v36, v37, v38, v39, v40, v41;
        v49 = v398;
        v50 = v395;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v92 = v18;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v92;
  }

  v51 = v18;
  v2, v19, v20, v21, v22, v23, v24, v25;
  v50 = v51;
  v49 = &_swiftEmptyArrayStorage;
LABEL_16:
  if (v50 >> 62)
  {
    v93 = v50;
    v52 = _CocoaArrayWrapper.endIndex.getter();
    v50 = v93;
    if (v52)
    {
LABEL_18:
      v394 = v49;
      v53 = v50;
      v398 = &_swiftEmptyArrayStorage;
      v18 = specialized ContiguousArray.reserveCapacity(_:)();
      if (v52 < 0)
      {
        goto LABEL_163;
      }

      v54 = 0;
      v55 = v53;
      v56 = v53 & 0xC000000000000001;
      v396 = (v55 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v2 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_32;
        }

        if (v56)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v54 >= *v396->clientIdentity)
          {
            goto LABEL_34;
          }

          v57 = *(v55 + 8 * v54 + 32);
        }

        v58 = v57;
        _s8BaseListCMa();
        v16 = swift_allocObject();
        *(v16 + 24) = v58;
        v397 = 0;
        v31 = v58;
        v59 = [v31 remObjectIDWithError:&v397];
        if (!v59)
        {
          break;
        }

        v60 = v59;
        v61 = v397;

        *(v16 + 16) = v60;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = *(v398 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = specialized ContiguousArray._endMutation()();
        ++v54;
        v55 = v395;
        if (v2 == v52)
        {
          v395, v395, v62, v63, v64, v65, v66, v67;
          v68 = v398;
          v49 = v394;
          goto LABEL_38;
        }
      }

      v69 = v397;
      v394, v85, v86, v87, v88, v89, v90, v91;
      v84 = v395;
LABEL_30:
      v84, v77, v78, v79, v80, v81, v82, v83;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_deallocPartialClassInstance();

      return v2;
    }
  }

  else
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_18;
    }
  }

  v50, v42, v43, v44, v45, v46, v47, v48;
  v68 = &_swiftEmptyArrayStorage;
LABEL_38:
  v398 = v49;
  sub_100272120(v68);
  v2 = v398;

  v95 = v392;
  p_isa = sub_100351D60(v94);
  v392 = v95;
  v2, v97, v98, v99, v100, v101, v102, v103;
  v7 = (p_isa + 8);
  v104 = 1 << *(p_isa + 32);
  v105 = -1;
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  v106 = v105 & p_isa[8];
  v107 = (v104 + 63) >> 6;
  v394 = (v389 + 32);
  v395 = v389 + 48;

  v16 = 0;
  v108 = _swiftEmptyDictionarySingleton;
LABEL_41:
  v396 = v108;
  if (v106)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v109 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v109 >= v107)
    {
      break;
    }

    v106 = *(v7 + 8 * v109);
    ++v16;
    if (v106)
    {
      v16 = v109;
LABEL_46:
      v110 = __clz(__rbit64(v106));
      v106 &= v106 - 1;
      v111 = (v16 << 9) | (8 * v110);
      v112 = *(p_isa[6] + v111);
      if (v112)
      {
        v113 = *(p_isa[7] + v111);
        v114 = v112;

        v115 = [v114 remObjectID];
        if (!v115)
        {
          v113, v116, v117, v118, v119, v120, v121, v122;

          goto LABEL_41;
        }

        v123 = v115;
        v375 = v114;
        v378 = v113;
        if (v113 >> 62)
        {
          v183 = v115;
          v124 = _CocoaArrayWrapper.endIndex.getter();
          v123 = v183;
          v113 = v378;
        }

        else
        {
          v124 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v376 = p_isa;
        v377 = v123;
        if (v124 <= 1)
        {

          v374 = 0;
          goto LABEL_56;
        }

        v125 = v123;
        v126 = v392;
        v127 = sub_100012370(v125, v387);
        if (v126)
        {

          v392 = 0;
          goto LABEL_54;
        }

        v392 = 0;
        if (!v127)
        {
LABEL_54:

          v128 = v378;

          v136 = v128;
          v374 = 0;
          goto LABEL_57;
        }

        v172 = v127;
        _s8BaseListCMa();
        v173 = v172;
        v174 = v392;
        v175 = REMOrderedIdentifierMap.reorder<A>(objects:)();
        v392 = v174;
        if (!v174)
        {
          v113 = v175;

          v374 = v173;
          v108 = v396;
LABEL_56:
          v136 = v113;
LABEL_57:
          if (v136 >> 62)
          {
            v137 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v137 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v138 = v392;
          v396 = v108;
          if (!v137)
          {
            v385 = &_swiftEmptyArrayStorage;
LABEL_76:
            v392 = v138;
            v136, v129, v130, v131, v132, v133, v134, v135;
            v158 = v396;
            if (*v396->clientIdentity && (sub_10002B924(v377), (v159 & 1) != 0))
            {
            }

            else
            {
              v160 = &_swiftEmptyArrayStorage;
            }

            v398 = v160;
            sub_1002720F4(v385);
            v161 = v398;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v398 = v158;
            v163 = v377;
            sub_1002C77EC(v161, v377, isUniquelyReferenced_nonNull_native);

            v378, v164, v165, v166, v167, v168, v169, v170;
            v171 = v375;

            v108 = v398;
            p_isa = &v376->super.isa;
            goto LABEL_41;
          }

          v139 = 0;
          v383 = v136 & 0xFFFFFFFFFFFFFF8;
          v384 = v136 & 0xC000000000000001;
          v385 = &_swiftEmptyArrayStorage;
          v379 = v136;
          v382 = v137;
          while (1)
          {
            if (v384)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              v136 = v379;
            }

            else
            {
              if (v139 >= *(v383 + 16))
              {
                goto LABEL_164;
              }
            }

            v386 = v139 + 1;
            v141 = v393;
            if (__OFADD__(v139, 1))
            {
              break;
            }

            sub_100351114(v387, v393);
            v392 = v138;
            if (v138)
            {
              v396, v142, v143, v144, v145, v146, v147, v148;
              v385, v243, v244, v245, v246, v247, v248, v249;

              v378, v250, v251, v252, v253, v254, v255, v256;
              v257 = v136;
              v258 = v376;

              v258, v259, v260, v261, v262, v263, v264, v265;
              v257, v266, v267, v268, v269, v270, v271, v272;

              v273 = v375;
              v2, v274, v275, v276, v277, v278, v279, v280;
              return v2;
            }

            v149 = v388;
            if ((*v395)(v141, 1, v388) == 1)
            {
              sub_1000050A4(v141, &qword_100942E08, &qword_1007A3868);
              v140 = v382;
            }

            else
            {
              v380 = v139;
              isa = v394->super.isa;
              v151 = v390;
              (v394->super.isa)();
              v381 = isa;
              (isa)(v391, v151, v149);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v385 = sub_100365B88(0, *v385->clientIdentity + 1, 1, v385);
              }

              v140 = v382;
              v153 = *v385->clientIdentity;
              v152 = *&v385->clientIdentity[8];
              v154 = v153 + 1;
              v155 = v391;
              v136 = v379;
              v139 = v380;
              if (v153 >= v152 >> 1)
              {
                v373 = v153 + 1;
                v157 = sub_100365B88((v152 > 1), v154, 1, v385);
                v154 = v373;
                v155 = v391;
                v385 = v157;
              }

              v156 = v385;
              *v385->clientIdentity = v154;
              v381(v156 + ((*(v389 + 80) + 32) & ~*(v389 + 80)) + *(v389 + 72) * v153, v155, v388);
            }

            ++v139;
            v138 = v392;
            if (v386 == v140)
            {
              goto LABEL_76;
            }
          }

LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v396, v176, v177, v178, v179, v180, v181, v182;
        v378, v350, v351, v352, v353, v354, v355, v356;
        v357 = v376;

        v357, v358, v359, v360, v361, v362, v363, v364;
        v365 = v375;

        v2, v366, v367, v368, v369, v370, v371, v372;
        return v2;
      }

      goto LABEL_41;
    }
  }

  p_isa, v184, v185, v186, v187, v188, v189, v190;
  v398 = &_swiftEmptyArrayStorage;
  v16 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_122;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v199 = 0;
    v395 = &_swiftEmptyArrayStorage;
    while (i != v199)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v200 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v201 = v199 + 1;
        if (__OFADD__(v199, 1))
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (v199 >= *(v16 + 16))
        {
          goto LABEL_118;
        }

        v200 = *(v2 + 8 * v199 + 32);

        v201 = v199 + 1;
        if (__OFADD__(v199, 1))
        {
          goto LABEL_117;
        }
      }

      v202 = [*(v200 + 24) account];

      ++v199;
      if (v202)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v398 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v398 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v395 = v398;
        v199 = v201;
      }
    }

    v2, v191, v192, v193, v194, v195, v196, v197;
    v210 = v395;
    if (v395 >> 62)
    {
      break;
    }

    v211 = *((v395 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v211)
    {
      goto LABEL_124;
    }

LABEL_102:
    v398 = &_swiftEmptyArrayStorage;
    sub_1002535B8(0, v211 & ~(v211 >> 63), 0);
    if (v211 < 0)
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v212 = 0;
    v2 = v398;
    v393 = v211;
    v394 = (v210 & 0xC000000000000001);
    v391 = v210 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v213 = v212 + 1;
      if (__OFADD__(v212, 1))
      {
        break;
      }

      if (v394)
      {
        v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v212 >= *(v391 + 16))
        {
          goto LABEL_120;
        }

        v214 = *(v210 + 8 * v212 + 32);
      }

      v215 = v214;
      v397 = 0;
      v216 = [v214 remObjectIDWithError:&v397];
      if (!v216)
      {
        v228 = v397;
        v396, v229, v230, v231, v232, v233, v234, v235;
        v210, v236, v237, v238, v239, v240, v241, v242;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        return v2;
      }

      v16 = v216;
      v398 = v2;
      v217 = *(v2 + 16);
      v218 = *(v2 + 24);
      v219 = v397;
      if (v217 >= v218 >> 1)
      {
        sub_1002535B8((v218 > 1), v217 + 1, 1);
        v2 = v398;
      }

      *(v2 + 16) = v217 + 1;
      v227 = (v2 + 16 * v217);
      *(v227 + 4) = v16;
      *(v227 + 5) = v215;
      ++v212;
      v210 = v395;
      if (v213 == v393)
      {
        v395, v220, v221, v222, v223, v224, v225, v226;
        goto LABEL_125;
      }
    }

LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    ;
  }

  v211 = _CocoaArrayWrapper.endIndex.getter();
  if (v211)
  {
    goto LABEL_102;
  }

LABEL_124:
  v210, v203, v204, v205, v206, v207, v208, v209;
  v2 = &_swiftEmptyArrayStorage;
LABEL_125:
  if (*(v2 + 16))
  {
    sub_1000F5104(&unk_100943090, &unk_1007A3B10);
    v281 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v281 = _swiftEmptyDictionarySingleton;
  }

  v398 = v281;
  v282 = v392;
  sub_100351FDC(v2, 1, &v398);
  if (!v282)
  {
    v2, v283, v284, v285, v286, v287, v288, v289;
    sub_100277D70(v398);

    v398 = sub_10000EEFC(v290);
    sub_100011170(&v398);
    v392 = 0;

    v7 = v398;
    if ((v398 & 0x8000000000000000) == 0 && (v398 & 0x4000000000000000) == 0)
    {
      v291 = *(v398 + 16);
      if (v291)
      {
LABEL_132:
        v292 = 0;
        v395 = v7 & 0xC000000000000001;
        v2 = &_swiftEmptyArrayStorage;
        while (1)
        {
          v394 = v2;
          v293 = v292;
          while (1)
          {
            if (v395)
            {
              v294 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v293 >= *(v7 + 16))
              {
                goto LABEL_162;
              }

              v294 = *(v7 + 8 * v293 + 32);
            }

            v295 = v294;
            v292 = v293 + 1;
            if (__OFADD__(v293, 1))
            {
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
              goto LABEL_165;
            }

            v398 = 0;
            v296 = [v294 remObjectIDWithError:&v398];
            if (!v296)
            {
              v327 = v398;

              v396, v328, v329, v330, v331, v332, v333, v334;
              v394, v335, v336, v337, v338, v339, v340, v341;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              return v2;
            }

            v297 = v296;
            v298 = v291;
            v299 = v396;
            v2 = *v396->clientIdentity;
            v300 = v398;
            if (v2)
            {
              v301 = sub_10002B924(v297);
              if (v302)
              {
                break;
              }
            }

            ++v293;
            v291 = v298;
            if (v292 == v298)
            {
              v2 = v394;
              goto LABEL_168;
            }
          }

          v303 = *(*&v299->clientIdentity[40] + 8 * v301);

          v2 = v394;
          v304 = *v394->clientIdentity;
          v393 = *(v303 + 16);
          v305 = v304 + v393;
          if (__OFADD__(v304, v393))
          {
            goto LABEL_172;
          }

          v306 = swift_isUniquelyReferenced_nonNull_native();
          if (!v306 || (v314 = *(v2 + 24) >> 1, v314 < v305))
          {
            if (v304 <= v305)
            {
              v315 = v305;
            }

            else
            {
              v315 = v304;
            }

            v2 = sub_100365B88(v306, v315, 1, v2);
            v314 = *(v2 + 24) >> 1;
          }

          v291 = v298;
          v316 = v393;
          if (*(v303 + 16))
          {
            if (v314 - *(v2 + 16) >= v393)
            {
              swift_arrayInitWithCopy();
              v303, v317, v318, v319, v320, v321, v322, v323;
              if (!v316)
              {
                goto LABEL_157;
              }

              v324 = *(v2 + 16);
              v325 = __OFADD__(v324, v316);
              v326 = v324 + v316;
              if (!v325)
              {
                *(v2 + 16) = v326;
                goto LABEL_157;
              }

LABEL_175:
              __break(1u);
            }

LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          v303, v307, v308, v309, v310, v311, v312, v313;
          if (v316)
          {
            goto LABEL_173;
          }

LABEL_157:

          if (v292 == v291)
          {
LABEL_168:

            v396, v342, v343, v344, v345, v346, v347, v348;
            return v2;
          }
        }
      }

LABEL_167:
      v2 = &_swiftEmptyArrayStorage;
      goto LABEL_168;
    }

LABEL_166:
    v291 = _CocoaArrayWrapper.endIndex.getter();
    if (v291)
    {
      goto LABEL_132;
    }

    goto LABEL_167;
  }

  v2, v283, v284, v285, v286, v287, v288, v289;

  __break(1u);
  return result;
}

uint64_t sub_100353368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003533B0()
{
  v1 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v1, v2);
  v4 = &v19 - v3;
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100791340;
  v6 = [v0 URL];
  if (v6)
  {
    v7 = v6;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v5 + 56) = &type metadata for String;
  v13 = sub_100006600();
  *(v5 + 64) = v13;
  *(v5 + 32) = v10;
  *(v5 + 40) = v12;
  result = [v0 identifier];
  if (result)
  {
    v15 = result;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v13;
    *(v5 + 72) = v16;
    *(v5 + 80) = v18;
    return String.init(format:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003535B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005F4C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void *sub_10035363C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for REMList_Codable();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100364044(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_100353730(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = __CocoaDictionary.lookup(_:)();

    if (v5)
    {
      a3(0);
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    sub_10002B924(a1);
    if (v7)
    {
    }
  }

  return 0;
}

void *sub_1003537F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005F4C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_100353894(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaDictionary.lookup(_:)();

    if (v2)
    {
      type metadata accessor for RDManualSortIDCache();
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_100364908(a1);
    if (v4)
    {
    }
  }

  return 0;
}

uint64_t sub_1003539C0(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  v9 = 0xE800000000000000;
  v10 = 0xEC00000065746144;
  v11 = 0x4E79616C70736964;
  if (a1 == 2)
  {
    v11 = 0x6E6F697461657263;
  }

  else
  {
    v10 = 0xEB00000000656D61;
  }

  v12 = 0xD000000000000017;
  if (a1)
  {
    v9 = 0x80000001007E8C60;
  }

  else
  {
    v12 = 0x44497463656A626FLL;
  }

  if (a1 <= 1u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v8 <= 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = v10;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0x6E6F697461657263;
    }

    else
    {
      v15 = 0x4E79616C70736964;
    }

    if (a2 == 2)
    {
      v16 = 0xEC00000065746144;
    }

    else
    {
      v16 = 0xEB00000000656D61;
    }

    if (v13 != v15)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v15 = 0xD000000000000017;
    }

    else
    {
      v15 = 0x44497463656A626FLL;
    }

    if (a2)
    {
      v16 = 0x80000001007E8C60;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    if (v13 != v15)
    {
      goto LABEL_31;
    }
  }

  if (v14 != v16)
  {
LABEL_31:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v17 = 1;
LABEL_32:
  v14, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_100353B28(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = 0xD000000000000017;
    }

    else
    {
      v9 = 0x44497463656A626FLL;
    }

    if (v8)
    {
      v10 = 0x80000001007E8C60;
    }

    else
    {
      v10 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v9 = 0x6E6F697461657263;
    v10 = 0xEC00000065746144;
  }

  else
  {
    if (a1 == 3)
    {
      v9 = 0x4E79616C70736964;
    }

    else
    {
      v9 = 0x6163696E6F6E6163;
    }

    if (v8 == 3)
    {
      v10 = 0xEB00000000656D61;
    }

    else
    {
      v10 = 0xED0000656D614E6CLL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0xD000000000000017;
    }

    else
    {
      v11 = 0x44497463656A626FLL;
    }

    if (a2)
    {
      v12 = 0x80000001007E8C60;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    if (v9 != v11)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v11 = 0x6E6F697461657263;
    v12 = 0xEC00000065746144;
    if (v9 != 0x6E6F697461657263)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v11 = 0x4E79616C70736964;
    v12 = 0xEB00000000656D61;
    if (v9 != 0x4E79616C70736964)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0x6163696E6F6E6163;
    v12 = 0xED0000656D614E6CLL;
    if (v9 != 0x6163696E6F6E6163)
    {
LABEL_34:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v10 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:
  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

uint64_t sub_100353D04(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0x44497463656A626FLL;
  v9 = a1;
  if (a1 <= 2u)
  {
    v16 = 0x6972745364697575;
    v17 = 0xEA0000000000676ELL;
    if (a1 != 1)
    {
      v16 = 0x4C525574736F68;
      v17 = 0xE700000000000000;
    }

    if (a1)
    {
      v14 = v16;
    }

    else
    {
      v14 = 0x44497463656A626FLL;
    }

    if (v9)
    {
      v15 = v17;
    }

    else
    {
      v15 = 0xE800000000000000;
    }
  }

  else
  {
    v10 = 0x6F54636E79536164;
    v11 = 0xEB000000006E656BLL;
    if (a1 != 5)
    {
      v10 = 0x654B687375506164;
      v11 = 0xE900000000000079;
    }

    v12 = 0xD000000000000012;
    v13 = 0x80000001007EA030;
    if (a1 != 3)
    {
      v12 = 0xD000000000000017;
      v13 = 0x80000001007EA050;
    }

    if (a1 <= 4u)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    if (v9 <= 4)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x6972745364697575;
        v18 = 0xEA0000000000676ELL;
        if (v14 != 0x6972745364697575)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v18 = 0xE700000000000000;
        v8 = 0x4C525574736F68;
        if (v14 != 0x4C525574736F68)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v18 = 0xE800000000000000;
      if (v14 != 0x44497463656A626FLL)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v8 = 0x6F54636E79536164;
      v18 = 0xEB000000006E656BLL;
      if (v14 != 0x6F54636E79536164)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v8 = 0x654B687375506164;
      v18 = 0xE900000000000079;
      if (v14 != 0x654B687375506164)
      {
LABEL_41:
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v8 = 0xD000000000000012;
    v18 = 0x80000001007EA030;
    if (v14 != 0xD000000000000012)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v18 = 0x80000001007EA050;
    v8 = 0xD000000000000017;
    if (v14 != 0xD000000000000017)
    {
      goto LABEL_41;
    }
  }

  if (v15 != v18)
  {
    goto LABEL_41;
  }

  v19 = 1;
LABEL_42:
  v15, a2, v8, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_100353F6C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0x44497463656A626FLL;
  v9 = a1;
  v10 = 0xE800000000000000;
  v11 = 0xEC00000065746144;
  v12 = 0x80000001007E9F10;
  v13 = 0xD00000000000001ALL;
  if (a1 == 4)
  {
    v13 = 0xD000000000000010;
  }

  else
  {
    v12 = 0x80000001007EA730;
  }

  if (a1 == 3)
  {
    v14 = 0x6E6F697461657263;
  }

  else
  {
    v14 = v13;
  }

  if (a1 != 3)
  {
    v11 = v12;
  }

  v15 = 0x80000001007EA710;
  v16 = 0xD000000000000012;
  if (a1 != 1)
  {
    v16 = 0x4465746144657564;
    v15 = 0xEC00000061746C65;
  }

  if (a1)
  {
    v10 = v15;
  }

  else
  {
    v16 = 0x44497463656A626FLL;
  }

  if (a1 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v11;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v19 = 0xE800000000000000;
      if (v17 != 0x44497463656A626FLL)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (a2 == 1)
    {
      v19 = 0x80000001007EA710;
      v8 = 0xD000000000000012;
      if (v17 != 0xD000000000000012)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v8 = 0x4465746144657564;
    v20 = 1635019877;
LABEL_33:
    v19 = (v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
    if (v17 != v8)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (a2 == 3)
  {
    v8 = 0x6E6F697461657263;
    v20 = 1702125892;
    goto LABEL_33;
  }

  if (a2 == 4)
  {
    v8 = 0xD000000000000010;
    v19 = 0x80000001007E9F10;
    if (v17 != 0xD000000000000010)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v19 = 0x80000001007EA730;
    v8 = 0xD00000000000001ALL;
    if (v17 != 0xD00000000000001ALL)
    {
LABEL_38:
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v18 != v19)
  {
    goto LABEL_38;
  }

  v21 = 1;
LABEL_39:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_100354164(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xE900000000000044;
  v9 = 0x49746E756F636361;
  v10 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 0x694C746E65726170;
    }

    else
    {
      v11 = 0xD000000000000014;
    }

    if (v10 == 2)
    {
      v12 = 0xEC00000044497473;
    }

    else
    {
      v12 = 0x80000001007E9FD0;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x6341746E65726170;
    }

    else
    {
      v11 = 0x49746E756F636361;
    }

    if (v10)
    {
      v12 = 0xEF4449746E756F63;
    }

    else
    {
      v12 = 0xE900000000000044;
    }
  }

  v13 = 0x694C746E65726170;
  v14 = 0x80000001007E9FD0;
  if (a2 == 2)
  {
    v14 = 0xEC00000044497473;
  }

  else
  {
    v13 = 0xD000000000000014;
  }

  if (a2)
  {
    v9 = 0x6341746E65726170;
    v8 = 0xEF4449746E756F63;
  }

  if (a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v8;
  }

  else
  {
    v16 = v14;
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

uint64_t sub_1003542D0(unsigned __int8 a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xE900000000000044;
  v9 = 0x49746E756F636361;
  v10 = a1;
  v11 = 0x80000001007EA510;
  v12 = 0xD00000000000001FLL;
  if (a1 == 4)
  {
    v12 = 0xD000000000000014;
  }

  else
  {
    v11 = 0x80000001007EA530;
  }

  if (a1 == 3)
  {
    v13 = 0xD000000000000014;
  }

  else
  {
    v13 = v12;
  }

  if (a1 == 3)
  {
    v14 = 0x80000001007EA4F0;
  }

  else
  {
    v14 = v11;
  }

  v15 = 0xE600000000000000;
  v16 = 0x44497473696CLL;
  v17 = 0x80000001007EA4D0;
  if (v10 != 1)
  {
    v16 = 0xD000000000000010;
    v15 = 0x80000001007EA4D0;
  }

  if (!v10)
  {
    v16 = 0x49746E756F636361;
    v15 = 0xE900000000000044;
  }

  if (v10 <= 2)
  {
    v18 = v15;
  }

  else
  {
    v16 = v13;
    v18 = v14;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0x80000001007EA4F0;
    }

    else
    {
      if (a2 != 4)
      {
        v8 = 0x80000001007EA530;
        v9 = 0xD00000000000001FLL;
        if (v16 != 0xD00000000000001FLL)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v8 = 0x80000001007EA510;
    }

    v9 = 0xD000000000000014;
    if (v16 != 0xD000000000000014)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0xE600000000000000;
      v9 = 0x44497473696CLL;
      if (v16 != 0x44497473696CLL)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v8 = 0x80000001007EA4D0;
    v9 = 0xD000000000000010;
  }

  if (v16 != v9)
  {
LABEL_33:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

LABEL_30:
  if (v18 != v8)
  {
    goto LABEL_33;
  }

  v19 = 1;
LABEL_34:
  v18, a2, v9, v17, a5, a6, a7, a8;
  v8, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_100354468(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0x44497463656A626FLL;
  v9 = a1;
  v10 = 0xE800000000000000;
  v11 = 0x6874646977;
  v12 = 0xE600000000000000;
  if (a1 == 5)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v11 = 0x746867696568;
  }

  v13 = 0xE700000000000000;
  v14 = 0x4C5255656C6966;
  if (a1 != 3)
  {
    v14 = 0xD000000000000012;
    v13 = 0x80000001007EA7D0;
  }

  if (a1 <= 4u)
  {
    v11 = v14;
    v12 = v13;
  }

  v15 = 0xE300000000000000;
  v16 = 6911093;
  if (a1 != 1)
  {
    v16 = 0x657A6953656C6966;
    v15 = 0xE800000000000000;
  }

  if (a1)
  {
    v10 = v15;
  }

  else
  {
    v16 = 0x44497463656A626FLL;
  }

  if (a1 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v19 = 0xE300000000000000;
        v8 = 6911093;
        if (v17 != 6911093)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
        v8 = 0x657A6953656C6966;
        if (v17 != 0x657A6953656C6966)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v19 = 0xE800000000000000;
      if (v17 != 0x44497463656A626FLL)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v19 = 0xE500000000000000;
      v8 = 0x6874646977;
      if (v17 != 0x6874646977)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v19 = 0xE600000000000000;
      v8 = 0x746867696568;
      if (v17 != 0x746867696568)
      {
LABEL_40:
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v19 = 0xE700000000000000;
    v8 = 0x4C5255656C6966;
    if (v17 != 0x4C5255656C6966)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v8 = 0xD000000000000012;
    v19 = 0x80000001007EA7D0;
    if (v17 != 0xD000000000000012)
    {
      goto LABEL_40;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_40;
  }

  v20 = 1;
LABEL_41:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_100354674(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v11 = 6911093;
    }

    else
    {
      v11 = 0x44497463656A626FLL;
    }

    if (v8)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE800000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x4C5255656C6966;
    if (a1 != 3)
    {
      v10 = 0xD000000000000012;
      v9 = 0x80000001007EA7D0;
    }

    if (a1 == 2)
    {
      v11 = 0x657A6953656C6966;
    }

    else
    {
      v11 = v10;
    }

    if (v8 == 2)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = v9;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v15 = 6911093;
    }

    else
    {
      v15 = 0x44497463656A626FLL;
    }

    if (a2)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    if (v11 != v15)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = 0x4C5255656C6966;
    v14 = 0x80000001007EA7D0;
    if (a2 == 3)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v15 = 0x657A6953656C6966;
    }

    else
    {
      v15 = v13;
    }

    if (a2 == 2)
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = v14;
    }

    if (v11 != v15)
    {
      goto LABEL_37;
    }
  }

  if (v12 != v16)
  {
LABEL_37:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v17 = 1;
LABEL_38:
  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1003547EC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0x44497463656A626FLL;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 7107189;
    }

    else
    {
      v10 = 0x617461646174656DLL;
    }

    if (v9 == 2)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 6911093;
    }

    else
    {
      v10 = 0x44497463656A626FLL;
    }

    if (v9)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE800000000000000;
    }
  }

  v12 = 0xE800000000000000;
  v13 = 0xE300000000000000;
  v14 = 7107189;
  if (a2 != 2)
  {
    v14 = 0x617461646174656DLL;
    v13 = 0xE800000000000000;
  }

  if (a2)
  {
    v8 = 6911093;
    v12 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_100354910(unsigned __int8 a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xE900000000000044;
  v9 = 0x49746E756F636361;
  v10 = a1;
  v11 = 0x80000001007E9FB0;
  if (a1 == 5)
  {
    v12 = 0xD000000000000015;
  }

  else
  {
    v12 = 0xD000000000000014;
  }

  if (a1 != 5)
  {
    v11 = 0x80000001007E9FD0;
  }

  v13 = 0x6341746E65726170;
  v14 = 0xEF4449746E756F63;
  if (a1 != 3)
  {
    v13 = 0x694C746E65726170;
    v14 = 0xEC00000044497473;
  }

  if (a1 > 4u)
  {
    v14 = v11;
  }

  else
  {
    v12 = v13;
  }

  v15 = 0x80000001007E9F50;
  v16 = 0xD000000000000016;
  v17 = 0xD00000000000001BLL;
  if (a1 != 1)
  {
    v16 = 0xD00000000000001BLL;
    v15 = 0x80000001007E9F70;
  }

  if (!a1)
  {
    v16 = 0x49746E756F636361;
    v15 = 0xE900000000000044;
  }

  if (a1 <= 2u)
  {
    v18 = v16;
  }

  else
  {
    v18 = v12;
  }

  if (v10 <= 2)
  {
    v19 = v15;
  }

  else
  {
    v19 = v14;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x80000001007E9F50;
        v9 = 0xD000000000000016;
        if (v18 != 0xD000000000000016)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v8 = 0x80000001007E9F70;
        v9 = 0xD00000000000001BLL;
        if (v18 != 0xD00000000000001BLL)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v8 = 0x80000001007E9FB0;
        v9 = 0xD000000000000015;
        if (v18 != 0xD000000000000015)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v8 = 0x80000001007E9FD0;
        v9 = 0xD000000000000014;
        if (v18 != 0xD000000000000014)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v9 = 0x6341746E65726170;
      v8 = 0xEF4449746E756F63;
      if (v18 != 0x6341746E65726170)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v9 = 0x694C746E65726170;
    v8 = 0xEC00000044497473;
  }

  if (v18 != v9)
  {
LABEL_40:
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_41;
  }

LABEL_37:
  if (v19 != v8)
  {
    goto LABEL_40;
  }

  v20 = 1;
LABEL_41:
  v19, a2, v9, v17, a5, a6, a7, a8;
  v8, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_100354B2C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0x44497463656A626FLL;
  v9 = a1;
  v10 = 0xE800000000000000;
  v11 = 0xD000000000000014;
  v12 = 0x80000001007E8B20;
  v13 = 0x80000001007E8B40;
  v14 = 0xD000000000000016;
  if (a1 != 4)
  {
    v14 = 0xD000000000000018;
    v13 = 0x80000001007E8B60;
  }

  if (a1 != 3)
  {
    v11 = v14;
    v12 = v13;
  }

  v15 = 0x64656E6769737361;
  v16 = 0xEC00000065746144;
  if (a1 != 1)
  {
    v15 = 0x737574617473;
    v16 = 0xE600000000000000;
  }

  if (a1)
  {
    v10 = v16;
  }

  else
  {
    v15 = 0x44497463656A626FLL;
  }

  if (a1 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v11;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0xD000000000000014;
      v19 = 0x80000001007E8B20;
      if (v17 != 0xD000000000000014)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v19 = 0x80000001007E8B40;
      v8 = 0xD000000000000016;
      if (v17 != 0xD000000000000016)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0x80000001007E8B60;
      v8 = 0xD000000000000018;
      if (v17 != 0xD000000000000018)
      {
LABEL_34:
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0x64656E6769737361;
      v19 = 0xEC00000065746144;
      if (v17 != 0x64656E6769737361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0xE600000000000000;
      v8 = 0x737574617473;
      if (v17 != 0x737574617473)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    if (v17 != 0x44497463656A626FLL)
    {
      goto LABEL_34;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_34;
  }

  v20 = 1;
LABEL_35:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_100354D10(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xE900000000000044;
  v9 = 0x49746E756F636361;
  v10 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 0x65656E6769737361;
    }

    else
    {
      v11 = 0x74616E696769726FLL;
    }

    if (v10 == 2)
    {
      v12 = 0xEA00000000004449;
    }

    else
    {
      v12 = 0xEC0000004449726FLL;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x7265646E696D6572;
    }

    else
    {
      v11 = 0x49746E756F636361;
    }

    if (v10)
    {
      v12 = 0xEA00000000004449;
    }

    else
    {
      v12 = 0xE900000000000044;
    }
  }

  v13 = 0x65656E6769737361;
  v14 = 0xEA00000000004449;
  if (a2 != 2)
  {
    v13 = 0x74616E696769726FLL;
    v14 = 0xEC0000004449726FLL;
  }

  if (a2)
  {
    v9 = 0x7265646E696D6572;
    v8 = 0xEA00000000004449;
  }

  if (a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v8;
  }

  else
  {
    v16 = v14;
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

uint64_t sub_100354E74(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0x44497463656A626FLL;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 1701667182;
    }

    else
    {
      v10 = 1701869940;
    }

    v11 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v10 = 0x6E6F697461657263;
    }

    else
    {
      v10 = 0x44497463656A626FLL;
    }

    if (v9)
    {
      v11 = 0xEC00000065746144;
    }

    else
    {
      v11 = 0xE800000000000000;
    }
  }

  v12 = 0xE800000000000000;
  v13 = 1701667182;
  if (a2 != 2)
  {
    v13 = 1701869940;
  }

  if (a2)
  {
    v8 = 0x6E6F697461657263;
    v12 = 0xEC00000065746144;
  }

  if (a2 <= 1u)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  if (a2 <= 1u)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (v10 == v14 && v11 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v14, a4, a5, a6, a7, a8;
  v15, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

uint64_t sub_100354FA8(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0x6574656C706D6F63;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0x6B726F576F6ELL;
    }

    else
    {
      v10 = 0x726F727265;
    }

    if (v9 == 2)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 0x57676E69646E6570;
    }

    else
    {
      v10 = 0x6574656C706D6F63;
    }

    if (v9)
    {
      v11 = 0xEB000000006B726FLL;
    }

    else
    {
      v11 = 0xE800000000000000;
    }
  }

  v12 = 0xE800000000000000;
  v13 = 0xE600000000000000;
  v14 = 0x6B726F576F6ELL;
  if (a2 != 2)
  {
    v14 = 0x726F727265;
    v13 = 0xE500000000000000;
  }

  if (a2)
  {
    v8 = 0x57676E69646E6570;
    v12 = 0xEB000000006B726FLL;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1003550EC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xD00000000000001BLL;
  v9 = "REMCDTemplateOperationQueueItem";
  v10 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v12 = 0xD00000000000002DLL;
    }

    else
    {
      v12 = 0xD000000000000030;
    }

    if (v10)
    {
      v11 = "butesAutoTrainer";
    }

    else
    {
      v11 = "REMCDTemplateOperationQueueItem";
    }
  }

  else if (a1 == 2)
  {
    v11 = "d.ICCloudConfigurationUpdater";
    v12 = 0xD000000000000034;
  }

  else if (a1 == 3)
  {
    v11 = "atchUpSyncController";
    v12 = 0xD000000000000031;
  }

  else
  {
    v11 = "ActivityScheduler";
    v12 = 0xD00000000000001BLL;
  }

  v13 = (v11 | 0x8000000000000000);
  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD00000000000002DLL;
    }

    else
    {
      v8 = 0xD000000000000030;
    }

    if (a2)
    {
      v9 = "butesAutoTrainer";
    }
  }

  else if (a2 == 2)
  {
    v9 = "d.ICCloudConfigurationUpdater";
    v8 = 0xD000000000000034;
  }

  else if (a2 == 3)
  {
    v9 = "atchUpSyncController";
    v8 = 0xD000000000000031;
  }

  else
  {
    v9 = "ActivityScheduler";
  }

  v14 = (v9 | 0x8000000000000000);
  if (v12 == v8 && v13 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13, a2, v8, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_10035525C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = 0x72656767697274;
    }

    else
    {
      v9 = 0x44497463656A626FLL;
    }

    if (v8)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v9 = 0xD000000000000010;
    v10 = 0x80000001007E9F10;
  }

  else
  {
    if (a1 == 3)
    {
      v9 = 0x4449556D72616C61;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (v8 == 3)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0x80000001007E9F30;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 0x72656767697274;
    }

    else
    {
      v13 = 0x44497463656A626FLL;
    }

    if (a2)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xE800000000000000;
    }

    if (v9 != v13)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v11 = 0x4449556D72616C61;
    v12 = 0x80000001007E9F30;
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v13 = 0xD000000000000010;
    }

    else
    {
      v13 = v11;
    }

    if (a2 == 2)
    {
      v14 = 0x80000001007E9F10;
    }

    else
    {
      v14 = v12;
    }

    if (v9 != v13)
    {
      goto LABEL_37;
    }
  }

  if (v10 != v14)
  {
LABEL_37:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v15 = 1;
LABEL_38:
  v10, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_1003553F0(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xEC00000065746144;
  v9 = 0x6E6F697461657263;
  v10 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 0x6163696E6F6E6163;
    }

    else
    {
      v11 = 1953720684;
    }

    if (v10 == 2)
    {
      v12 = 0xED0000656D614E6CLL;
    }

    else
    {
      v12 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x4E79616C70736964;
    }

    else
    {
      v11 = 0x6E6F697461657263;
    }

    if (v10)
    {
      v12 = 0xEB00000000656D61;
    }

    else
    {
      v12 = 0xEC00000065746144;
    }
  }

  v13 = 0x6163696E6F6E6163;
  v14 = 0xED0000656D614E6CLL;
  if (a2 != 2)
  {
    v13 = 1953720684;
    v14 = 0xE400000000000000;
  }

  if (a2)
  {
    v9 = 0x4E79616C70736964;
    v8 = 0xEB00000000656D61;
  }

  if (a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v8;
  }

  else
  {
    v16 = v14;
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

uint64_t sub_100355550(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xD000000000000012;
  v9 = "alarm.reminder.completed";
  v10 = a1;
  if (a1 <= 2u)
  {
    v17 = "inderIdentifiers";
    v18 = 0xD000000000000033;
    if (a1 != 1)
    {
      v18 = 0xD000000000000019;
      v17 = "dReminderIdentifier";
    }

    if (a1)
    {
      v15 = v18;
    }

    else
    {
      v15 = 0xD000000000000020;
    }

    if (v10)
    {
      v16 = v17;
    }

    else
    {
      v16 = "alarm.reminder.completed";
    }
  }

  else
  {
    v11 = "sectionIdentifiers";
    v12 = 0xD000000000000016;
    if (a1 == 5)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v11 = "sectionByIdentifier";
    }

    v13 = "savedReminderByIdentifier";
    v14 = 0xD00000000000002CLL;
    if (a1 != 3)
    {
      v14 = 0xD000000000000012;
      v13 = "ntsBySavedReminderIdentifier";
    }

    if (a1 <= 4u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (v10 <= 4)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11;
    }
  }

  v19 = (v16 | 0x8000000000000000);
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = "inderIdentifiers";
        v8 = 0xD000000000000033;
      }

      else
      {
        v9 = "dReminderIdentifier";
        v8 = 0xD000000000000019;
      }
    }

    else
    {
      v8 = 0xD000000000000020;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = "sectionIdentifiers";
      v8 = 0xD000000000000013;
    }

    else
    {
      v9 = "sectionByIdentifier";
      v8 = 0xD000000000000016;
    }
  }

  else if (a2 == 3)
  {
    v9 = "savedReminderByIdentifier";
    v8 = 0xD00000000000002CLL;
  }

  else
  {
    v9 = "ntsBySavedReminderIdentifier";
  }

  v20 = (v9 | 0x8000000000000000);
  if (v15 == v8 && v19 == v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v19, a2, v8, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

void sub_100355720(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

uint64_t sub_10035585C(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      return sub_10001B860(v1);
    }

    while (1)
    {
      sub_100378ACC(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000F5104(&unk_100939F10, &qword_100797F30);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      return sub_10001B860(v1);
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      return sub_10001B860(v1);
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_100355A34(uint64_t a1)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = v26 - v9;
  v13 = __chkstk_darwin(v11, v12);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[1] = v3 + 32;
  v26[2] = v3 + 16;
  v26[0] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v15, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), PredicateType, v13);
      (*(v3 + 32))(v6, v15, PredicateType);
      sub_100379BD8(v10, v6);
      (*(v3 + 8))(v10, PredicateType);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100355C8C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    sub_10000CDE4(&qword_100944230, &qword_100938DE0, NSNumber_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_10001B860(v1);
      return;
    }

    while (1)
    {
      sub_10037B150(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100355EE0(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    a2(0);
    sub_1003932B0(a3, a4, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v6 = v23[1];
    v10 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_10001B860(v6);
      return;
    }

    while (1)
    {
      a5(v23);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        a2(0);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003560E4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_10037DADC(&v10, *(*(a1 + 56) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1003561D4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1000236C4(v10, *(*(a1 + 48) + ((v8 << 10) | (16 * v9))), *(v8 + 8));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1003562D4(uint64_t a1)
{
  v2 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v22 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v21 - v8;
  __chkstk_darwin(v10, v11);
  v13 = &v21 - v12;
  v14 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1003938B4(*(a1 + 48) + *(v22 + 72) * (v20 | (v19 << 6)), v13, type metadata accessor for RDPermanentlyHiddenReminder);
    sub_10039391C(v13, v5, type metadata accessor for RDPermanentlyHiddenReminder);
    sub_10037E7F4(v9, v5);
    sub_1001A3AF4(v9);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1003564A8(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100378434(v20, v11, v12);
      v20[1], v13, v14, v15, v16, v17, v18, v19;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1003565AC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942E20);
  v1 = sub_100006654(v0, qword_100942E20);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_10035667C(char a1)
{
  result = 0x70756F72477349;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F43;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0x4C797265636F7247;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 1701667150;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x694C746E65726150;
      break;
    case 13:
      result = 0x614464656E6E6950;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0x7265646E696D6552;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
      result = 0x53676E6974726F53;
      break;
    default:
      result = 0x626D456567646142;
      break;
  }

  return result;
}

unint64_t sub_10035692C(char a1)
{
  result = 0x626D456567646162;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F63;
      break;
    case 2:
    case 8:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000002ALL;
      break;
    case 4:
      result = 0x4C797265636F7267;
      break;
    case 5:
      result = 0x70756F72477369;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 1701667182;
      break;
    case 11:
      result = 0x6341746E65726170;
      break;
    case 12:
      result = 0x694C746E65726170;
      break;
    case 13:
      result = 0x614464656E6E6970;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0x7265646E696D6572;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
      result = 0x53676E6974726F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100356BCC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10035692C(*a1);
  v5 = v4;
  v6 = sub_10035692C(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_100356C54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10035692C(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_100356CB8(uint64_t a1)
{
  sub_10035692C(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_100356D0C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10035692C(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_100356D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100392D78(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100356D9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10035692C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static REMCDList.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_100356F4C(void *a1)
{
  result = [a1 ic_isOwnedByCurrentUser];
  if ((result & 1) == 0)
  {
    sub_100357028();
    v4 = [a1 zoneID];
    v5 = [v4 ownerName];

    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v5 = String._bridgeToObjectiveC()();
      v7, v8, v9, v10, v11, v12, v13, v14;
    }

    [v1 updateSharedObjectOwnerName:v5];

    return [v1 setSharingStatus:2];
  }

  return result;
}

void sub_100357028()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v10, v11).n128_u64[0];
  v14 = &v39 - v13;
  v15 = [v0 account];
  if (v15)
  {
    v16 = v15;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = v0;
    v18 = v0;
    sub_100719450(inited, 0);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    if (qword_100935F30 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100942E20);
    v20 = v0;
    v40 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v40, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136446210;
      v24 = [v20 identifier];
      if (v24)
      {
        v25 = v24;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v2 + 56))(v9, 0, 1, v1);
      }

      else
      {
        (*(v2 + 56))(v9, 1, 1, v1);
      }

      sub_100031B58(v9, v14, &unk_100939D90, "8\n\r");
      if ((*(v2 + 48))(v14, 1, v1))
      {
        sub_1000050A4(v14, &unk_100939D90, "8\n\r");
        v27 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E75;
      }

      else
      {
        (*(v2 + 16))(v5, v14, v1);
        sub_1000050A4(v14, &unk_100939D90, "8\n\r");
        v29 = UUID.uuidString.getter();
        v27 = v30;
        (*(v2 + 8))(v5, v1);
        v28 = v29;
      }

      v31 = sub_10000668C(v28, v27, &v41);
      v27, v32, v33, v34, v35, v36, v37, v38;
      *(v22 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v40, v21, "Tried to update listIDsMergableOrdering after fetching share / undeleting list but list has no parent account {listID: %{public}s}", v22, 0xCu);
      sub_10000607C(v23);
    }

    else
    {
      v26 = v40;
    }
  }
}

id static REMCDList.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
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
      v23 = [a1 recordID];
      sub_100356F4C(v23);
    }

    else
    {
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_100942E20);
      v25 = a2;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v4;
        *v28 = 136446466;
        swift_getMetatypeMetadata();
        v29 = String.init<A>(describing:)();
        v31 = v30;
        v32 = sub_10000668C(v29, v30, &v55);
        v31, v33, v34, v35, v36, v37, v38, v39;
        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        v40 = [v25 remObjectID];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 description];

          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v45 = 0xE300000000000000;
          v43 = 7104878;
        }

        v46 = sub_10000668C(v43, v45, &v55);
        v45, v47, v48, v49, v50, v51, v52, v53;
        *(v28 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v26, v27, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v28, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

id static REMCDList.newPlaceholderObject(for:account:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS___REMCDList;
  v6 = objc_msgSendSuper2(&v9, "newPlaceholderObjectForRecordID:account:context:", a1, a2, a3);
  if (v6)
  {
    v7 = v6;
    sub_100356F4C(a1);
    return v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall REMCDList.objectWasDeletedFromCloudByAnotherDevice()()
{
  if (([v0 isOwnedByCurrentUser] & 1) == 0)
  {
    [v0 updateSharedObjectOwnerName:0];
  }

  v1.receiver = v0;
  v1.super_class = REMCDList;
  objc_msgSendSuper2(&v1, "objectWasDeletedFromCloudByAnotherDevice");
}

Swift::String __swiftcall REMCDList.recordType()()
{
  v0 = 1953720652;
  v1 = 0xE400000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_100357A8C(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (sub_100357C54() & 1) == 0)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100796900;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    sub_1003EEC48(v2, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 mutableOrderedSetValueForKey:v4];

    if (v5)
    {
      sub_1000FE93C(v5, 0);
    }

    else
    {
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100006654(v6, qword_100942E20);
      v5 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, v7, "Not sorting child reminders because REMCDList.mutableOrderedSetValue(forKey: reminders) is nil", v8, 2u);
      }
    }
  }
}

uint64_t sub_100357C54()
{
  v1 = [v0 managedObjectContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = v3, (v5 = [v0 recordID]) != 0))
  {
    v6 = v5;
    if ([v4 containerShouldSortChildrenAfterFetchingWithRecordID:v5])
    {
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_100942E20);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v6;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "Sorting children (reminders and/or sections) deferred {listRecordID: %{public}@}", v11, 0xCu);
        sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

        v8 = v9;
        v9 = v13;
      }

      v14 = 1;
      v6 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100357E44()
{
  if ((sub_100357C54() & 1) == 0)
  {
    v1 = [v0 reminderIDsMergeableOrdering];
    if (v1)
    {
      v2 = v1;
      v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v49 = 0;
      v8 = [v6 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:isa error:&v49];

      if (v8)
      {
        v9 = qword_100935F30;
        v10 = v49;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_100006654(v11, qword_100942E20);
        v12 = v0;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v48 = v5;
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v49 = v16;
          *v15 = 136315138;
          v17 = [v12 remObjectID];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 description];

            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;
          }

          else
          {
            v22 = 0xE300000000000000;
            v20 = 7104878;
          }

          v40 = sub_10000668C(v20, v22, &v49);
          v22, v41, v42, v43, v44, v45, v46, v47;
          *(v15 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v13, v14, "REMCDList+CloudKit.sortChildReminders(): deserialized reminderIDsMergeableOrdering from data {remObjID: %s}", v15, 0xCu);
          sub_10000607C(v16);

          v5 = v48;
        }

        else
        {
        }

        sub_100357A8C(v8, 1);

        sub_10001BBA0(v3, v5);
      }

      else
      {
        v23 = v49;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10001BBA0(v3, v5);
        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100006654(v24, qword_100942E20);
        swift_errorRetain();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v49 = v28;
          *v27 = 136315138;
          swift_getErrorValue();
          v29 = Error.localizedDescription.getter();
          v31 = v30;
          v32 = sub_10000668C(v29, v30, &v49);
          v31, v33, v34, v35, v36, v37, v38, v39;
          *(v27 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v25, v26, "Error decoding reminder IDs ordered set and thus not able to sort child reminders {error : %s}", v27, 0xCu);
          sub_10000607C(v28);
        }

        else
        {
        }
      }
    }
  }
}

void sub_100358264()
{
  v1 = v0;
  if ((sub_100357C54() & 1) == 0)
  {
    v2 = [v0 remObjectID];
    if (v2)
    {
      v63 = v2;
      v3 = [v0 storeControllerManagedObjectContext];
      if (v3)
      {
        v4 = v3;
        v5 = qword_1009365B0;
        v6 = v63;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_100596AB8(v63, 0);
        type metadata accessor for REMCDListSection();
        v8 = [objc_allocWithZone(NSFetchRequest) init];
        v9 = [swift_getObjCClassFromMetadata() entity];
        [v8 setEntity:v9];

        [v8 setAffectedStores:0];
        [v8 setPredicate:v7];

        [v8 setPropertiesToFetch:0];
        [v8 setRelationshipKeyPathsForPrefetching:0];
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v8 setSortDescriptors:isa];

        v11 = NSManagedObjectContext.fetch<A>(_:)();
        v12 = [v1 sectionIDsOrderingAsData];
        if (v12)
        {
          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v14, v16);
          v17 = REMOrderedIdentifierMap.reorder<A>(objects:)();
          v64 = v65;
          v11, v18, v19, v20, v21, v22, v23, v24;
          if (qword_100935F30 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_100006654(v25, qword_100942E20);
          v26 = v1;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v65 = v62;
            *v29 = 136315138;
            v30 = [v26 remObjectID];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 description];

              v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v35 = v34;
            }

            else
            {
              v33 = 7104878;
              v35 = 0xE300000000000000;
            }

            v54 = sub_10000668C(v33, v35, &v65);
            v35, v55, v56, v57, v58, v59, v60, v61;
            *(v29 + 4) = v54;
            _os_log_impl(&_mh_execute_header, v27, v28, "REMCDList+CloudKit#sortChildSections(): Sorted child sections {cdList: %s}", v29, 0xCu);
            sub_10000607C(v62);
          }
        }

        else
        {
          v17 = v11;
        }

        v36 = sub_100271240(v17);
        v17, v37, v38, v39, v40, v41, v42, v43;
        v44 = objc_allocWithZone(NSMutableOrderedSet);
        v45 = Array._bridgeToObjectiveC()().super.isa;
        v36, v46, v47, v48, v49, v50, v51, v52;
        v53 = [v44 initWithArray:v45];

        [v1 setSections:v53];
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall REMCDList.sortChildrenObjects()()
{
  sub_100357E44();

  sub_100358264();
}

Swift::Void __swiftcall REMCDList.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = String._bridgeToObjectiveC()();
  v36.receiver = v3;
  v36.super_class = REMCDList;
  objc_msgSendSuper2(&v36, "mergeDataFromRecord:accountID:", from.super.isa, v6);

  v7 = [(objc_class *)from.super.isa recordID];
  v8 = [v7 recordName];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    v8 = String._bridgeToObjectiveC()();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  v18 = [v3 ckIdentifierFromRecordName:v8];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v18 = String._bridgeToObjectiveC()();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  [v3 setCkIdentifier:v18];

  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v28 = v35 & 1;
  if ([v3 isGroup] != v28)
  {
    [v3 setIsGroup:v28];
  }

  v35 = 0;
  v29 = [v3 mergeDataRevertedLocallyMarkedForDeletion];
  v30 = [v3 mergeDataRefusedToMergeMarkedForDeletion];
  v31 = v3;
  v32 = from.super.isa;
  sub_1004D6E50(v32, v29, v30, v31, v31, v32, &v35, ObjectType);
  if ([v31 mergeDataRevertedLocallyMarkedForDeletion])
  {
    sub_100357028();
  }

  if (v35 == 1)
  {
    v33 = [v31 parentAccount];
    if (v33)
    {
      v34 = v33;
      if (([v33 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        sub_100719350();
      }
    }
  }
}

void sub_100358E3C(unsigned __int8 *a1, NSObject *a2, NSObject *a3, _BYTE *a4, uint64_t a5)
{
  v797 = a5;
  v807 = a4;
  v811 = a3;
  v810 = a2;
  v804 = 0;
  v6 = type metadata accessor for REMFeatureFlags();
  v801 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v791 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v10 - 8, v11);
  v792 = &v791 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v791 - v15;
  __chkstk_darwin(v17, v18);
  v20 = &v791 - v19;
  v808 = type metadata accessor for UUID();
  v809 = *(v808 - 8);
  __chkstk_darwin(v808, v21);
  v791 = &v791 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v791 - v25;
  __chkstk_darwin(v27, v28);
  v795 = &v791 - v29;
  v803 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v803, v30);
  v799 = &v791 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v798 = &v791 - v34;
  v35 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v35 - 8, v36);
  v38 = &v791 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v794 = &v791 - v41;
  __chkstk_darwin(v42, v43);
  v796 = &v791 - v44;
  __chkstk_darwin(v45, v46);
  v800 = &v791 - v47;
  __chkstk_darwin(v48, v49);
  v51 = &v791 - v50;
  __chkstk_darwin(v52, v53);
  v806 = &v791 - v54;
  __chkstk_darwin(v55, v56);
  v793 = &v791 - v57;
  __chkstk_darwin(v58, v59);
  v61 = &v791 - v60;
  __chkstk_darwin(v62, v63);
  v802 = &v791 - v64;
  __chkstk_darwin(v65, v66);
  v68 = &v791 - v67;
  __chkstk_darwin(v69, v70);
  v805 = &v791 - v71;
  v72 = *a1;
  sub_10035667C(v72);
  switch(v72)
  {
    case 1:
      v231 = v73;
      v232 = CKRecord.subscript.getter();
      v231, v233, v234, v235, v236, v237, v238, v239;
      v141 = v810;
      if (v232)
      {
        v813 = v232;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v240 = *(&v812 + 1);
          v223 = sub_10013E558(v812, *(&v812 + 1));
          v240, v241, v242, v243, v244, v245, v246, v247;
          if (v223)
          {
            v248 = "setColor:";
            goto LABEL_282;
          }
        }
      }

      [v141 setColor:0];
      return;
    case 2:
    case 5:
    case 7:
    case 15:
    case 16:
    case 17:

      v73, v73, v74, v75, v76, v77, v78, v79;
      return;
    case 3:
      v173 = v73;
      v174 = [v811 encryptedValues];
      v175 = String._bridgeToObjectiveC()();
      v173, v176, v177, v178, v179, v180, v181, v182;
      v183 = [v174 objectForKeyedSubscript:v175];
      swift_unknownObjectRelease();

      if (v183)
      {
        v813 = v183;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v184 = swift_dynamicCast();
        if (v184)
        {
          v185 = v812;
        }

        else
        {
          v185 = 0;
        }

        if (v184)
        {
          v128 = *(&v812 + 1);
        }

        else
        {
          v128 = 0;
        }
      }

      else
      {
        v185 = 0;
        v128 = 0;
      }

      v367 = v810;
      v368 = [v810 autoCategorizationLocalCorrectionsChecksum];
      if (v368)
      {
        v369 = v368;
        v370 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v343 = v371;

        if (v128)
        {
          if (v370 == v185 && v128 == v343)
          {
            goto LABEL_94;
          }

          v521 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v343, v522, v523, v524, v525, v526, v527, v528;
          if (v521)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v343, v344, v345, v346, v347, v348, v349, v350;
        }

LABEL_165:
        v469 = [v367 autoCategorizationLocalCorrectionsChecksum];
        v529 = [v367 autoCategorizationLocalCorrectionsAsData];
        if (v529)
        {
          v530 = v529;
          v472 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v474 = v531;
        }

        else
        {
          v472 = 0;
          v474 = 0xF000000000000000;
        }

        v532 = [v367 autoCategorizationLocalCorrectionsAsData];
        v533 = &selRef_isEmpty;
        v534 = &selRef_setPublicLinkLastModifiedDate_;
        if (v532)
        {
          v809 = v474;
          v535 = v469;
          v810 = v472;
          v536 = v532;
          v537 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v539 = v538;

          sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
          v540 = v804;
          static REMJSONRepresentable.fromJSONData(_:)();
          if (v540)
          {
            sub_10001BBA0(v537, v539);
            v128, v541, v542, v543, v544, v545, v546, v547;
            v469 = v535;
LABEL_217:
            if (qword_100935F30 != -1)
            {
              swift_once();
            }

            v629 = type metadata accessor for Logger();
            sub_100006654(v629, qword_100942E20);
            v630 = v367;
            swift_errorRetain();
            v631 = Logger.logObject.getter();
            v632 = static os_log_type_t.error.getter();

            v633 = os_log_type_enabled(v631, v632);
            v604 = v809;
            if (v633)
            {
              v811 = v469;
              v634 = swift_slowAlloc();
              *&v812 = swift_slowAlloc();
              *v634 = 136446722;
              v635 = sub_1001424F8(v797);
              v637 = v636;
              v638 = sub_10000668C(v635, v636, &v812);
              v637, v639, v640, v641, v642, v643, v644, v645;
              *(v634 + 4) = v638;
              *(v634 + 12) = 2082;
              v646 = [v630 remObjectID];
              if (v646)
              {
                v647 = v646;
                v648 = [v646 description];

                v649 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v651 = v650;
              }

              else
              {
                v649 = 7104878;
                v651 = 0xE300000000000000;
              }

              v696 = sub_10000668C(v649, v651, &v812);
              v651, v697, v698, v699, v700, v701, v702, v703;
              *(v634 + 14) = v696;
              *(v634 + 22) = 2082;
              swift_getErrorValue();
              v704 = Error.rem_errorDescription.getter();
              v706 = v705;
              v707 = sub_10000668C(v704, v705, &v812);
              v706, v708, v709, v710, v711, v712, v713, v714;
              *(v634 + 24) = v707;
              _os_log_impl(&_mh_execute_header, v631, v632, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to update 'groceryLocalCorrections'. {objectID: %{public}s, error: %{public}s}", v634, 0x20u);
              swift_arrayDestroy();

              v469 = v811;
            }

            else
            {
            }

            [v630 setAutoCategorizationLocalCorrectionsChecksum:v469];

            v694 = v810;
            if (v604 >> 60 == 15)
            {
              isa = 0;
            }

            else
            {
              sub_100029344(v810, v604);
              isa = Data._bridgeToObjectiveC()().super.isa;
              sub_100031A14(v694, v604);
            }

            [v630 setAutoCategorizationLocalCorrectionsAsData:isa];
            goto LABEL_275;
          }

          v804 = 0;
          sub_10001BBA0(v537, v539);
          v548 = v812;
          v472 = v810;
          v469 = v535;
          v474 = v809;
          v534 = &selRef_setPublicLinkLastModifiedDate_;
          v533 = &selRef_isEmpty;
        }

        else
        {
          v548 = 0;
        }

        if (v128)
        {
          v584 = String._bridgeToObjectiveC()();
          v128, v585, v586, v587, v588, v589, v590, v591;
        }

        else
        {
          v584 = 0;
        }

        [v367 v533[172]];

        v623 = sub_1004E183C(v811, 0xD00000000000001DLL, 0x80000001007F5E00);
        if (v624 >> 60 == 15)
        {
          v625 = 0;
        }

        else
        {
          v626 = v623;
          v627 = v624;
          v625 = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(v626, v627);
        }

        [v367 v534[214]];

        if (!v548)
        {
          goto LABEL_222;
        }

        v597 = v548;
        v628 = v804;
        sub_10035C3B4(v597);
        if (!v628)
        {
          goto LABEL_224;
        }

        v809 = v474;
        v810 = v472;

        goto LABEL_217;
      }

      if (v128)
      {
        goto LABEL_165;
      }

      return;
    case 4:
      v186 = v73;
      v187 = [v811 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      v186, v188, v189, v190, v191, v192, v193, v194;
      v195 = *(&v812 + 1);
      if (*(&v812 + 1))
      {
        v196 = String._bridgeToObjectiveC()();
        v195, v197, v198, v199, v200, v201, v202, v203;
      }

      else
      {
        v196 = 0;
      }

      v379 = v810;
      [v810 setGroceryLocaleID:v196];

      v380 = [v379 groceryLocaleID];
      if (!v380)
      {
        return;
      }

      if (([v379 markedForDeletion]& 1) != 0)
      {
        return;
      }

      v381 = [v379 storeControllerManagedObjectContext];
      if (!v381)
      {
        return;
      }

      v223 = v381;
      v382 = [v379 parentAccount];
      if (!v382)
      {
        v672 = [v379 storeControllerManagedObjectContext];
        if (!v672)
        {
          goto LABEL_285;
        }

        v673 = v672;
        if (qword_1009367D8 != -1)
        {
          swift_once();
        }

        v382 = sub_100013674(qword_1009752E8);

        if (!v382)
        {
          goto LABEL_285;
        }
      }

      sub_1000F5104(&unk_100939E10, &qword_1007970D0);
      v383 = v804;
      v384 = sub_100015620(0, 0, 128, v382, v223);
      if (v383)
      {
        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v385 = type metadata accessor for Logger();
        sub_100006654(v385, qword_100942E20);
        v386 = v379;
        swift_errorRetain();
        v387 = Logger.logObject.getter();
        v388 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v387, v388))
        {
          v389 = swift_slowAlloc();
          *&v812 = swift_slowAlloc();
          *v389 = 136446722;
          v390 = sub_1001424F8(v797);
          v392 = v391;
          v393 = sub_10000668C(v390, v391, &v812);
          v392, v394, v395, v396, v397, v398, v399, v400;
          *(v389 + 4) = v393;
          *(v389 + 12) = 2082;
          v401 = [v386 remObjectID];
          if (v401)
          {
            v402 = v401;
            v403 = [v401 description];

            v404 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v406 = v405;
          }

          else
          {
            v404 = 7104878;
            v406 = 0xE300000000000000;
          }

          v772 = sub_10000668C(v404, v406, &v812);
          v406, v773, v774, v775, v776, v777, v778, v779;
          *(v389 + 14) = v772;
          *(v389 + 22) = 2082;
          swift_getErrorValue();
          v780 = Error.rem_errorDescription.getter();
          v782 = v781;
          v783 = sub_10000668C(v780, v781, &v812);
          v782, v784, v785, v786, v787, v788, v789, v790;
          *(v389 + 24) = v783;
          _os_log_impl(&_mh_execute_header, v387, v388, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to insert grocery operation queue item for downloading grocery assets from Trial. {objectID: %{public}s, error: %{public}s}", v389, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      else
      {
        v733 = v384;
      }

      return;
    case 6:
      v318 = v73;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v319 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v318, v320, v321, v322, v323, v324, v325, v326;
      v327 = *(v319 - 8);
      v283 = 0;
      if ((*(v327 + 48))(v20, 1, v319) != 1)
      {
        v283 = Date._bridgeToObjectiveC()().super.isa;
        (*(v327 + 8))(v20, v319);
      }

      [v810 setLastUserAccessDate:v283];
      goto LABEL_71;
    case 8:
      v115 = v73;
      v116 = [v811 encryptedValues];
      v117 = String._bridgeToObjectiveC()();
      v115, v118, v119, v120, v121, v122, v123, v124;
      v125 = [v116 objectForKeyedSubscript:v117];
      swift_unknownObjectRelease();

      if (v125)
      {
        v813 = v125;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v126 = swift_dynamicCast();
        if (v126)
        {
          v127 = v812;
        }

        else
        {
          v127 = 0;
        }

        if (v126)
        {
          v128 = *(&v812 + 1);
        }

        else
        {
          v128 = 0;
        }
      }

      else
      {
        v127 = 0;
        v128 = 0;
      }

      v338 = v810;
      v339 = [v810 membershipsOfRemindersInSectionsChecksum];
      if (v339)
      {
        v340 = v339;
        v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v343 = v342;

        if (v128)
        {
          if (v341 == v127 && v128 == v343)
          {
LABEL_94:
            v128, v344, v345, v346, v347, v348, v349, v350;
            v343, v372, v373, v374, v375, v376, v377, v378;
            return;
          }

          v351 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v343, v352, v353, v354, v355, v356, v357, v358;
          if (v351)
          {
LABEL_164:
            v128, v359, v360, v361, v362, v363, v364, v365;
            return;
          }
        }

        else
        {
          v343, v344, v345, v346, v347, v348, v349, v350;
        }
      }

      else if (!v128)
      {
        return;
      }

      v469 = [v338 membershipsOfRemindersInSectionsChecksum];
      v470 = [v338 membershipsOfRemindersInSectionsAsData];
      if (v470)
      {
        v471 = v470;
        v472 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v474 = v473;
      }

      else
      {
        v472 = 0;
        v474 = 0xF000000000000000;
      }

      v504 = [v338 membershipsOfRemindersInSectionsAsData];
      v505 = &selRef_setPublicLinkLastModifiedDate_;
      v506 = &selRef_setPublicLinkLastModifiedDate_;
      if (v504)
      {
        v809 = v474;
        v507 = v469;
        v810 = v472;
        v508 = v504;
        v509 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v511 = v510;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        v512 = v804;
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v512)
        {
          sub_10001BBA0(v509, v511);
          v128, v513, v514, v515, v516, v517, v518, v519;
          v469 = v507;
          goto LABEL_204;
        }

        v804 = 0;
        sub_10001BBA0(v509, v511);
        v520 = v812;
        v472 = v810;
        v469 = v507;
        v474 = v809;
        v506 = &selRef_setPublicLinkLastModifiedDate_;
        v505 = &selRef_setPublicLinkLastModifiedDate_;
      }

      else
      {
        v520 = 0;
      }

      if (v128)
      {
        v576 = String._bridgeToObjectiveC()();
        v128, v577, v578, v579, v580, v581, v582, v583;
      }

      else
      {
        v576 = 0;
      }

      [v338 v505[215]];

      v592 = sub_1004E183C(v811, 0xD000000000000026, 0x80000001007F0660);
      if (v593 >> 60 == 15)
      {
        v594 = 0;
      }

      else
      {
        v595 = v592;
        v596 = v593;
        v594 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v595, v596);
      }

      [v338 v506[216]];

      if (!v520)
      {
LABEL_222:

        sub_100031A14(v472, v474);
        return;
      }

      v597 = v520;
      v598 = v804;
      sub_1005EBF7C(v597);
      if (!v598)
      {
LABEL_224:

        sub_100031A14(v472, v474);
        return;
      }

      v809 = v474;
      v810 = v472;

LABEL_204:
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v599 = type metadata accessor for Logger();
      sub_100006654(v599, qword_100942E20);
      v600 = v338;
      swift_errorRetain();
      v601 = Logger.logObject.getter();
      v602 = static os_log_type_t.error.getter();

      v603 = os_log_type_enabled(v601, v602);
      v604 = v809;
      if (v603)
      {
        v811 = v469;
        v605 = swift_slowAlloc();
        *&v812 = swift_slowAlloc();
        *v605 = 136446722;
        v606 = sub_1001424F8(v797);
        v608 = v607;
        v609 = sub_10000668C(v606, v607, &v812);
        v608, v610, v611, v612, v613, v614, v615, v616;
        *(v605 + 4) = v609;
        *(v605 + 12) = 2082;
        v617 = [v600 remObjectID];
        if (v617)
        {
          v618 = v617;
          v619 = [v617 description];

          v620 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v622 = v621;
        }

        else
        {
          v620 = 7104878;
          v622 = 0xE300000000000000;
        }

        v675 = sub_10000668C(v620, v622, &v812);
        v622, v676, v677, v678, v679, v680, v681, v682;
        *(v605 + 14) = v675;
        *(v605 + 22) = 2082;
        swift_getErrorValue();
        v683 = Error.rem_errorDescription.getter();
        v685 = v684;
        v686 = sub_10000668C(v683, v684, &v812);
        v685, v687, v688, v689, v690, v691, v692, v693;
        *(v605 + 24) = v686;
        _os_log_impl(&_mh_execute_header, v601, v602, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to update 'membershipsOfRemindersInSections'. {objectID: %{public}s, error: %{public}s}", v605, 0x20u);
        swift_arrayDestroy();

        v469 = v811;
      }

      else
      {
      }

      [v600 setMembershipsOfRemindersInSectionsChecksum:v469];

      v694 = v810;
      if (v604 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        sub_100029344(v810, v604);
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v694, v604);
      }

      [v600 setMembershipsOfRemindersInSectionsAsData:isa];
LABEL_275:
      sub_100031A14(v694, v604);

      return;
    case 9:
      v129 = v73;
      v130 = v811;
      v131 = [v811 encryptedValues];
      v132 = String._bridgeToObjectiveC()();
      v129, v133, v134, v135, v136, v137, v138, v139;
      v140 = [v131 objectForKeyedSubscript:v132];
      swift_unknownObjectRelease();

      v141 = v810;
      v142 = v808;
      v143 = v809;
      if (!v140)
      {
        goto LABEL_29;
      }

      v813 = v140;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_29;
      }

      v144 = *(&v812 + 1);
      UUID.init(uuidString:)();
      v144, v145, v146, v147, v148, v149, v150, v151;
      if ((*(v143 + 48))(v38, 1, v142) == 1)
      {
        sub_1000050A4(v38, &unk_100939D90, "8\n\r");
LABEL_29:
        [v141 setMostRecentTargetTemplateIdentifier:0];
      }

      else
      {
        (*(v143 + 32))(v26, v38, v142);
        v571 = UUID._bridgeToObjectiveC()().super.isa;
        [v141 setMostRecentTargetTemplateIdentifier:v571];

        (*(v143 + 8))(v26, v142);
      }

      v152 = [v141 sharingStatus];
      if (v152 < 2)
      {
        v447 = [v130 recordID];
        v448 = [v447 ic_isOwnedByCurrentUser];

        if (!v448)
        {
          return;
        }

        v449 = [v141 mostRecentTargetTemplateIdentifier];
        if (v449)
        {
          v450 = v791;
          v451 = v449;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v223 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v143 + 8))(v450, v142);
        }

        else
        {
          v223 = 0;
        }

        v248 = "setMostRecentTargetTemplateIdentifierByCurrentUser:";
LABEL_282:
        v441 = v141;
LABEL_283:
        v732 = v223;
        goto LABEL_284;
      }

      v94 = v152;
      if (v152 - 3 < 2)
      {
        return;
      }

      if (v152 == 2)
      {
        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v153 = type metadata accessor for Logger();
        sub_100006654(v153, qword_100942E20);
        v154 = v141;
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v813 = v158;
          *v157 = 136446210;
          v159 = [v154 ckIdentifier];
          if (v159)
          {
            v160 = v159;
            v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v163 = v162;
          }

          else
          {
            v161 = 0;
            v163 = 0;
          }

          *&v812 = v161;
          *(&v812 + 1) = v163;
          sub_1000F5104(&unk_100939E40, &qword_100791BD0);
          v753 = Optional.descriptionOrNil.getter();
          v755 = v754;
          v163, v754, v756, v757, v758, v759, v760, v761;
          v762 = sub_10000668C(v753, v755, &v813);
          v755, v763, v764, v765, v766, v767, v768, v769;
          *(v157 + 4) = v762;
          _os_log_impl(&_mh_execute_header, v155, v156, "REMCDList.mergeData(from record:accountID:) will insert pending post-save action '.notify_SharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserDidBecomeStale' {ckIdentifier: %{public}s}", v157, 0xCu);
          sub_10000607C(v158);
        }

        v770 = [v154 storeControllerManagedObjectContext];
        if (v770)
        {
          v223 = v770;
          v771 = [v770 pendingPostSaveActions];
          v248 = "setPendingPostSaveActions:";
          v732 = v771 | 4;
          goto LABEL_300;
        }

        return;
      }

      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v555 = type metadata accessor for Logger();
      sub_100006654(v555, qword_100942E20);
      v553 = v141;
      v223 = Logger.logObject.getter();
      v554 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v223, v554))
      {
        goto LABEL_285;
      }

      goto LABEL_181;
    case 10:
      v291 = v73;
      v292 = [v811 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      v291, v293, v294, v295, v296, v297, v298, v299;
      swift_unknownObjectRelease();
      v300 = *(&v812 + 1);
      if (*(&v812 + 1))
      {
        v223 = String._bridgeToObjectiveC()();
        v300, v301, v302, v303, v304, v305, v306, v307;
      }

      else
      {
        v223 = 0;
      }

      v441 = v810;
      v248 = "setName:";
      goto LABEL_283;
    case 11:
      v106 = v73;
      v107 = v810;
      v108 = [v810 parentAccount];
      if (v108)
      {
        v109 = v108;
        v110 = [v108 identifier];

        v111 = v808;
        v112 = v807;
        v113 = v809;
        if (v110)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v114 = *(v113 + 56);
          v114(v68, 0, 1, v111);
        }

        else
        {
          v114 = *(v809 + 56);
          v114(v68, 1, 1, v808);
        }

        sub_100031B58(v68, v805, &unk_100939D90, "8\n\r");
        v337 = v112;
      }

      else
      {
        v114 = *(v809 + 56);
        v111 = v808;
        v114(v805, 1, 1, v808);
        v337 = v807;
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v106, v452, v453, v454, v455, v456, v457, v458;
      v459 = v802;
      if (v812 == 2)
      {
        v460 = 0;
        v461 = v805;
      }

      else
      {
        v461 = v805;
        if (v812)
        {
          v460 = [v107 account];
        }

        else
        {
          v460 = 0;
        }
      }

      [v107 setParentAccount:v460];

      if (*v337 == 1)
      {
        v462 = &unk_100939D90;
        v463 = "8\n\r";
        v464 = v461;
LABEL_233:
        sub_1000050A4(v464, v462, v463);
        v655 = 1;
        goto LABEL_234;
      }

      v465 = [v107 parentAccount];
      if (v465)
      {
        v466 = v465;
        v467 = [v465 identifier];

        if (v467)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v468 = 0;
        }

        else
        {
          v468 = 1;
        }

        v550 = v803;
        v549 = v809;
        v114(v61, v468, 1, v111);
        sub_100031B58(v61, v459, &unk_100939D90, "8\n\r");
      }

      else
      {
        v549 = v809;
        v114(v459, 1, 1, v111);
        v550 = v803;
      }

      v652 = *(v550 + 48);
      v653 = v798;
      sub_100010364(v459, v798, &unk_100939D90, "8\n\r");
      sub_100010364(v461, v653 + v652, &unk_100939D90, "8\n\r");
      v654 = *(v549 + 48);
      if (v654(v653, 1, v111) == 1)
      {
        sub_1000050A4(v459, &unk_100939D90, "8\n\r");
        sub_1000050A4(v461, &unk_100939D90, "8\n\r");
        if (v654(v653 + v652, 1, v111) == 1)
        {
          sub_1000050A4(v653, &unk_100939D90, "8\n\r");
          v655 = 0;
          goto LABEL_234;
        }

        goto LABEL_232;
      }

      v656 = v793;
      sub_100010364(v653, v793, &unk_100939D90, "8\n\r");
      if (v654(v653 + v652, 1, v111) == 1)
      {
        sub_1000050A4(v459, &unk_100939D90, "8\n\r");
        sub_1000050A4(v461, &unk_100939D90, "8\n\r");
        (*(v809 + 8))(v656, v111);
LABEL_232:
        v462 = &unk_10093A3D0;
        v463 = &qword_100795770;
        v464 = v653;
        goto LABEL_233;
      }

      v657 = v809;
      v658 = v653 + v652;
      v659 = v795;
      (*(v809 + 32))(v795, v658, v111);
      sub_1003932B0(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v811) = dispatch thunk of static Equatable.== infix(_:_:)();
      v660 = *(v657 + 8);
      v660(v659, v111);
      sub_1000050A4(v459, &unk_100939D90, "8\n\r");
      sub_1000050A4(v461, &unk_100939D90, "8\n\r");
      v660(v656, v111);
      sub_1000050A4(v653, &unk_100939D90, "8\n\r");
      v655 = v811 ^ 1;
LABEL_234:
      *v337 = v655 & 1;
      return;
    case 12:
      v164 = v73;
      v165 = v810;
      v166 = [v810 parentList];
      if (v166)
      {
        v167 = v166;
        v168 = [v166 identifier];

        v169 = v808;
        v170 = v807;
        v171 = v809;
        if (v168)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v172 = *(v171 + 56);
          v172(v51, 0, 1, v169);
        }

        else
        {
          v172 = *(v809 + 56);
          v172(v51, 1, 1, v808);
        }

        v366 = v811;
        sub_100031B58(v51, v806, &unk_100939D90, "8\n\r");
      }

      else
      {
        v171 = v809;
        v172 = *(v809 + 56);
        v169 = v808;
        v172(v806, 1, 1, v808);
        v366 = v811;
        v170 = v807;
      }

      if (([v366 ic_isOwnedByCurrentUser]& 1) != 0 || (v475 = [v366 share]) == 0)
      {
        v485 = CKRecord.subscript.getter();
        v164, v486, v487, v488, v489, v490, v491, v492;
        if (v485)
        {
          objc_opt_self();
          v493 = swift_dynamicCastObjCClass();
          v484 = v806;
          if (!v493)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v493 = 0;
          v484 = v806;
        }

        v483 = sub_1004D6EF0(v493, v165);

        [v165 setParentList:v483];
      }

      else
      {
        v483 = v475;
        v164, v476, v477, v478, v479, v480, v481, v482;
        v484 = v806;
      }

      if (*v170 == 1)
      {
        v494 = &unk_100939D90;
        v495 = "8\n\r";
        v496 = v484;
LABEL_244:
        sub_1000050A4(v496, v494, v495);
        v664 = 1;
        goto LABEL_245;
      }

      v497 = [v165 parentList];
      if (v497)
      {
        v498 = v497;
        v499 = [v497 identifier];

        v500 = v799;
        if (v499)
        {
          v501 = v796;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v502 = 0;
          v503 = v803;
        }

        else
        {
          v502 = 1;
          v503 = v803;
          v501 = v796;
        }

        v172(v501, v502, 1, v169);
        v551 = v800;
        sub_100031B58(v501, v800, &unk_100939D90, "8\n\r");
      }

      else
      {
        v551 = v800;
        v172(v800, 1, 1, v169);
        v503 = v803;
        v500 = v799;
      }

      v661 = *(v503 + 48);
      sub_100010364(v551, v500, &unk_100939D90, "8\n\r");
      sub_100010364(v484, v500 + v661, &unk_100939D90, "8\n\r");
      v662 = *(v171 + 48);
      if (v662(v500, 1, v169) == 1)
      {
        sub_1000050A4(v551, &unk_100939D90, "8\n\r");
        sub_1000050A4(v484, &unk_100939D90, "8\n\r");
        v663 = v662(v500 + v661, 1, v169);
        v170 = v807;
        if (v663 == 1)
        {
          sub_1000050A4(v500, &unk_100939D90, "8\n\r");
          v664 = 0;
          goto LABEL_245;
        }

        goto LABEL_243;
      }

      v665 = v794;
      sub_100010364(v500, v794, &unk_100939D90, "8\n\r");
      if (v662(v500 + v661, 1, v169) == 1)
      {
        sub_1000050A4(v800, &unk_100939D90, "8\n\r");
        sub_1000050A4(v484, &unk_100939D90, "8\n\r");
        (*(v171 + 8))(v665, v169);
        v170 = v807;
LABEL_243:
        v494 = &unk_10093A3D0;
        v495 = &qword_100795770;
        v496 = v500;
        goto LABEL_244;
      }

      v666 = v500 + v661;
      v667 = v795;
      (*(v171 + 32))(v795, v666, v169);
      sub_1003932B0(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v668 = v665;
      v669 = dispatch thunk of static Equatable.== infix(_:_:)();
      v670 = *(v171 + 8);
      v670(v667, v169);
      sub_1000050A4(v800, &unk_100939D90, "8\n\r");
      sub_1000050A4(v484, &unk_100939D90, "8\n\r");
      v670(v668, v169);
      sub_1000050A4(v500, &unk_100939D90, "8\n\r");
      v664 = v669 ^ 1;
      v170 = v807;
LABEL_245:
      *v170 = v664 & 1;
      return;
    case 13:
      v80 = v73;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v81 = type metadata accessor for Date();
      v82 = v811;
      CKRecordKeyValueSetting.subscript.getter();
      v80, v83, v84, v85, v86, v87, v88, v89;
      v90 = *(v81 - 8);
      v91 = 0;
      if ((*(v90 + 48))(v16, 1, v81) != 1)
      {
        v91 = Date._bridgeToObjectiveC()().super.isa;
        (*(v90 + 8))(v16, v81);
      }

      v92 = v810;
      [v810 setPinnedDate:v91];

      v93 = [v92 sharingStatus];
      if (v93 < 2)
      {
        v442 = [v82 recordID];
        v443 = [v442 ic_isOwnedByCurrentUser];

        if (v443)
        {
          v444 = [v92 pinnedDate];
          if (v444)
          {
            v445 = v792;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v446 = 0;
          }

          else
          {
            v446 = 1;
            v445 = v792;
          }

          (*(v90 + 56))(v445, v446, 1, v81);
          sub_1000050A4(v445, &unk_100938850, qword_100795AE0);
          [v92 setIsPinnedByCurrentUser:v444 != 0];
        }
      }

      else
      {
        v94 = v93;
        if (v93 - 3 < 2)
        {
          return;
        }

        if (v93 != 2)
        {
          if (qword_100935F30 != -1)
          {
            swift_once();
          }

          v552 = type metadata accessor for Logger();
          sub_100006654(v552, qword_100942E20);
          v553 = v92;
          v223 = Logger.logObject.getter();
          v554 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v223, v554))
          {
LABEL_181:
            v556 = v94;
            v557 = swift_slowAlloc();
            v558 = swift_slowAlloc();
            v813 = v558;
            *v557 = 136446466;
            v559 = [v553 ckIdentifier];
            if (v559)
            {
              v560 = v559;
              v561 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v563 = v562;
            }

            else
            {
              v561 = 0;
              v563 = 0;
            }

            *&v812 = v561;
            *(&v812 + 1) = v563;
            sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            v715 = Optional.descriptionOrNil.getter();
            v717 = v716;
            v563, v716, v718, v719, v720, v721, v722, v723;
            v724 = sub_10000668C(v715, v717, &v813);
            v717, v725, v726, v727, v728, v729, v730, v731;
            *(v557 + 4) = v724;
            *(v557 + 12) = 2050;
            *(v557 + 14) = v556;
            _os_log_impl(&_mh_execute_header, v223, v554, "REMCDList.mergeData(from record:accountID:) Unhandled sharingStatus {ckIdentifier: %{public}s, sharingStatus.rawValue: %{public}ld}", v557, 0x16u);
            sub_10000607C(v558);
          }

          goto LABEL_285;
        }

        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v95 = type metadata accessor for Logger();
        sub_100006654(v95, qword_100942E20);
        v96 = v92;
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v813 = v100;
          *v99 = 136446210;
          v101 = [v96 ckIdentifier];
          if (v101)
          {
            v102 = v101;
            v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          *&v812 = v103;
          *(&v812 + 1) = v105;
          sub_1000F5104(&unk_100939E40, &qword_100791BD0);
          v734 = Optional.descriptionOrNil.getter();
          v736 = v735;
          v105, v735, v737, v738, v739, v740, v741, v742;
          v743 = sub_10000668C(v734, v736, &v813);
          v736, v744, v745, v746, v747, v748, v749, v750;
          *(v99 + 4) = v743;
          _os_log_impl(&_mh_execute_header, v97, v98, "REMCDList.mergeData(from record:accountID:) will insert pending post-save action '.notify_SharedToMeListPinnedStateDidBecomeStale' {ckIdentifier: %{public}s}", v99, 0xCu);
          sub_10000607C(v100);
        }

        v751 = [v96 storeControllerManagedObjectContext];
        if (v751)
        {
          v223 = v751;
          v752 = [v751 pendingPostSaveActions];
          v248 = "setPendingPostSaveActions:";
          v732 = v752 | 2;
LABEL_300:
          v441 = v223;
LABEL_284:
          [v441 v248];
LABEL_285:

          return;
        }
      }

      return;
    case 14:
      v73, v73, v74, v75, v76, v77, v78, v79;
      v204 = v811;
      v205 = CKRecord.subscript.getter();
      0x80000001007F5D70, v206, v207, v208, v209, v210, v211, v212;
      if (v205)
      {
        swift_unknownObjectRelease();
        v213 = v810;
LABEL_110:
        sub_1004DD52C(v204, 0xD000000000000021, 0, &v812);
        v408 = *(&v812 + 1);
        if (*(&v812 + 1) >> 60 == 15)
        {
          return;
        }

        v409 = v812;
        v410 = sub_1004D6FC8();
        0x80000001007E8EB0, v411, v412, v413, v414, v415, v416, v417;
        if (v410)
        {
          v418 = objc_allocWithZone(REMCRMergeableOrderedSet);
          v419 = v410;
          sub_1001CB4B8(v409, v408);
          v420 = v804;
          v421 = sub_1002F937C(v419);
          if (v420)
          {
            sub_100031A14(v409, v408);

            if (qword_100935F30 != -1)
            {
              swift_once();
            }

            v422 = type metadata accessor for Logger();
            sub_100006654(v422, qword_100942E20);
            v423 = v213;
            swift_errorRetain();
            v424 = Logger.logObject.getter();
            v425 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v424, v425))
            {
              v426 = swift_slowAlloc();
              v427 = swift_slowAlloc();
              v811 = swift_slowAlloc();
              *&v812 = v811;
              *v426 = 136315394;
              swift_getErrorValue();
              v810 = v424;
              v428 = Error.localizedDescription.getter();
              v430 = v429;
              v431 = sub_10000668C(v428, v429, &v812);
              v430, v432, v433, v434, v435, v436, v437, v438;
              *(v426 + 4) = v431;
              *(v426 + 12) = 2112;
              *(v426 + 14) = v423;
              *v427 = v423;
              v439 = v423;
              v440 = v810;
              _os_log_impl(&_mh_execute_header, v810, v425, "Failed to decode mergeable ordered set for reminder IDS {error: %s, cdList: %@}", v426, 0x16u);
              sub_1000050A4(v427, &unk_100938E70, &unk_100797230);

              sub_10000607C(v811);

              sub_100031A14(v409, v408);
            }

            else
            {

              sub_100031A14(v409, v408);
            }

            return;
          }

          v671 = v421;
          sub_100031A14(v409, v408);

          v811 = [v671 orderedSet];
          sub_100357A8C(v811, 0);

          sub_100031A14(v409, v408);
          goto LABEL_260;
        }

        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v564 = type metadata accessor for Logger();
        sub_100006654(v564, qword_100942E20);
        v565 = v213;
        v811 = Logger.logObject.getter();
        v566 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v811, v566))
        {
          v567 = swift_slowAlloc();
          v568 = swift_slowAlloc();
          *v567 = 138412290;
          *(v567 + 4) = v565;
          *v568 = v565;
          v569 = v565;
          _os_log_impl(&_mh_execute_header, v811, v566, "Failed to create replicaIDSource when decoding mergeable ordered set for reminder IDS {cdList: %@}", v567, 0xCu);
          sub_1000050A4(v568, &unk_100938E70, &unk_100797230);
        }

        v570 = v409;
LABEL_259:
        sub_100031A14(v570, v408);
LABEL_260:
        v674 = v811;

        return;
      }

      v407 = CKRecord.subscript.getter();
      v213 = v810;
      if (v407)
      {
        swift_unknownObjectRelease();
        goto LABEL_110;
      }

      v811 = sub_1003928FC(v204, 0x7265646E696D6552, 0xEB00000000734449, 0xD000000000000010, 0x80000001007F5DC0);
      v574 = v572;
      v408 = v573;
      if (v573 >> 60 == 15)
      {
        v575 = 0;
      }

      else
      {
        sub_100029344(v572, v573);
        v575 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v574, v408);
      }

      [v213 setReminderIDsMergeableOrdering:v575];

      if (v811)
      {
        sub_100357A8C(v811, 0);
        v570 = v574;
        goto LABEL_259;
      }

      sub_100031A14(v574, v408);
      return;
    case 18:
      v73, v73, v74, v75, v76, v77, v78, v79;
      v308 = sub_1004E183C(v811, 0xD000000000000018, 0x80000001007F05C0);
      v310 = v309;
      0x80000001007F05C0, v309, v311, v312, v313, v314, v315, v316;
      if (v310 >> 60 == 15)
      {
        v317 = 0;
      }

      else
      {
        v317 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v308, v310);
      }

      [v810 setSectionIDsOrderingAsData:v317];

      sub_100358264();
      return;
    case 19:
      v328 = v73;
      v329 = [v811 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      v328, v330, v331, v332, v333, v334, v335, v336;
      swift_unknownObjectRelease();
      v270 = v812;
      v271 = "setShouldCategorizeGroceryItems:";
      goto LABEL_73;
    case 20:
      v249 = v73;
      v250 = v801;
      v251 = *(v801 + 104);
      v251(v9, enum case for REMFeatureFlags.autoCategorize(_:), v6);
      v252 = REMFeatureFlags.isEnabled.getter();
      v253 = *(v250 + 8);
      v253(v9, v6);
      if (v252 & 1) != 0 && (v251(v9, enum case for REMFeatureFlags.autoCategorizeCloudKit(_:), v6), v261 = REMFeatureFlags.isEnabled.getter(), v253(v9, v6), (v261))
      {
        v262 = [v811 encryptedValues];
        swift_getObjectType();
        CKRecordKeyValueSetting.subscript.getter();
        v249, v263, v264, v265, v266, v267, v268, v269;
        swift_unknownObjectRelease();
        v270 = v812;
        v271 = "setShouldAutoCategorizeItems:";
LABEL_73:
        [v810 v271];
      }

      else
      {
        v249, v254, v255, v256, v257, v258, v259, v260;
      }

      return;
    case 21:
      v272 = v73;
      v273 = CKRecord.subscript.getter();
      v272, v274, v275, v276, v277, v278, v279, v280;
      v281 = v810;
      if (!v273)
      {
        return;
      }

      v813 = v273;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v282 = *(&v812 + 1);
      v283 = String._bridgeToObjectiveC()();
      v282, v284, v285, v286, v287, v288, v289, v290;
      [v281 setSortingStyle:v283];
LABEL_71:

      return;
    default:
      v214 = v73;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v214, v215, v216, v217, v218, v219, v220, v221;
      v222 = *(&v812 + 1);
      if (*(&v812 + 1))
      {
        v223 = String._bridgeToObjectiveC()();
        v222, v224, v225, v226, v227, v228, v229, v230;
      }

      else
      {
        v223 = 0;
      }

      v441 = v810;
      v248 = "setBadgeEmblem:";
      goto LABEL_283;
  }
}

void sub_10035C3B4(void *a1)
{
  v3 = v1;
  v5 = [v1 autoCategorizationLocalCorrectionsAsData];
  if (!v5)
  {
LABEL_12:
    v33 = a1;
    v32 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v2)
  {
    sub_10001BBA0(v7, v9);
    if (qword_100936198 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100947770);
    v11 = v3;
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v14 = 136446722;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      sub_1000F5104(&unk_10094F1B0, &qword_1007A4840);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, &v54);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v26 = [v11 remObjectID];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 description];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v29 = 7104878;
      }

      v34 = sub_10000668C(v29, v31, &v54);
      v31, v35, v36, v37, v38, v39, v40, v41;
      *(v14 + 14) = v34;
      *(v14 + 22) = 2082;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = v43;
      v45 = sub_10000668C(v42, v43, &v54);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v14 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s#mergeGroceryLocalCorrections(_:): Failed to deserialize 'groceryLocalCorrectionsAsData' due to unexpected error. It will be overwritten. {objectID: %{public}s, error: %{public}s}", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_12;
  }

  sub_10001BBA0(v7, v9);
  v32 = v54;
  v33 = [v54 mergingWith:a1];
LABEL_13:
  v53 = v33;
  sub_10032DB64(v33, 1);
}

CKRecord_optional __swiftcall REMCDList.newlyCreatedRecord()()
{
  v1 = v0;
  v228 = type metadata accessor for REMFeatureFlags();
  v2 = *(v228 - 8);
  __chkstk_darwin(v228, v3);
  v5 = &v214 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v214 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v226 = *(v11 - 8);
  v227 = v11;
  __chkstk_darwin(v11, v12);
  v217 = &v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v14 - 8, v15);
  v224 = &v214 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v225 = &v214 - v19;
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v223 = &v214 - v26;
  __chkstk_darwin(v27, v28);
  v30 = &v214 - v29;
  *&v33 = __chkstk_darwin(v31, v32).n128_u64[0];
  v35 = &v214 - v34;
  v235.receiver = v1;
  v235.super_class = REMCDList;
  v37 = objc_msgSendSuper2(&v235, "newlyCreatedRecord", v33);
  if (!v37)
  {
    goto LABEL_82;
  }

  v220 = v10;
  v216 = v6;
  v221 = v5;
  v38 = [v1 isGroup];
  *(&v233 + 1) = &type metadata for Bool;
  v234 = &protocol witness table for Bool;
  LOBYTE(v232) = v38;
  v230 = sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.setter();
  v39 = [v1 isOwnedByCurrentUser];
  v229 = v1;
  v215 = v7;
  v219 = v23;
  if (v39)
  {
    v40 = [v1 parentAccount];
    v41 = v40;
    if (v40)
    {
    }

    *(&v233 + 1) = &type metadata for Bool;
    v234 = &protocol witness table for Bool;
    LOBYTE(v232) = v41 != 0;
    CKRecordKeyValueSetting.subscript.setter();
    v42 = [v1 parentList];
    if (v42 && (v43 = v42, v44 = [v42 recordID], v43, v44))
    {
      v45 = [v37 recordID];
      v46 = [v45 zoneID];

      v47 = [v44 zoneID];
      v48 = [v46 isEqual:v47];

      if (v48)
      {
        v1 = v229;
        v49 = [v229 cloudKitReferenceWithRecordIDAndValidateAction:v44];
      }

      else
      {

        v49 = 0;
        v1 = v229;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;
    CKRecord.subscript.setter();
  }

  v222 = v2;
  v51 = [v37 encryptedValues];
  v52 = [v1 name];
  if (v52)
  {
    v53 = v52;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = &protocol witness table for String;
    v58 = &type metadata for String;
  }

  else
  {
    v54 = 0;
    v56 = 0;
    v58 = 0;
    v57 = 0;
    *&v233 = 0;
  }

  *&v232 = v54;
  *(&v232 + 1) = v56;
  *(&v233 + 1) = v58;
  v234 = v57;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v59 = v229;
  v60 = [v229 color];
  if (v60)
  {
    v61 = v60;
    v62 = sub_1001E1818();
    if (v63)
    {
      v64 = &protocol witness table for String;
      v65 = &type metadata for String;
    }

    else
    {
      v62 = 0;
      v65 = 0;
      v64 = 0;
      *&v233 = 0;
    }

    *&v232 = v62;
    *(&v232 + 1) = v63;
    *(&v233 + 1) = v65;
    v234 = v64;
    CKRecordKeyValueSetting.subscript.setter();
  }

  else
  {
    CKRecord.subscript.setter();
  }

  v66 = [v59 lastUserAccessDate];
  if (v66)
  {
    v67 = v66;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = type metadata accessor for Date();
  v70 = *(v69 - 8);
  v218 = *(v70 + 56);
  v218(v30, v68, 1, v69);
  sub_100031B58(v30, v35, &unk_100938850, qword_100795AE0);
  v71 = *(v70 + 48);
  if (v71(v35, 1, v69) == 1)
  {
    sub_1000050A4(v35, &unk_100938850, qword_100795AE0);
    v232 = 0u;
    v233 = 0u;
    v234 = 0;
  }

  else
  {
    *(&v233 + 1) = v69;
    v234 = &protocol witness table for Date;
    v72 = sub_1000103CC(&v232);
    (*(v70 + 32))(v72, v35, v69);
  }

  CKRecordKeyValueSetting.subscript.setter();
  v73 = [v59 badgeEmblem];
  if (v73)
  {
    v74 = v73;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v59 = v229;
    v78 = &protocol witness table for String;
    v79 = &type metadata for String;
  }

  else
  {
    v75 = 0;
    v77 = 0;
    v79 = 0;
    v78 = 0;
    *&v233 = 0;
  }

  *&v232 = v75;
  *(&v232 + 1) = v77;
  *(&v233 + 1) = v79;
  v234 = v78;
  CKRecordKeyValueSetting.subscript.setter();
  v80 = [v59 sortingStyle];
  if (v80)
  {
    v81 = v80;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    v59 = v229;
    v85 = &protocol witness table for String;
    v86 = &type metadata for String;
  }

  else
  {
    v82 = 0;
    v84 = 0;
    v86 = 0;
    v85 = 0;
    *&v233 = 0;
  }

  *&v232 = v82;
  *(&v232 + 1) = v84;
  *(&v233 + 1) = v86;
  v234 = v85;
  CKRecordKeyValueSetting.subscript.setter();
  v87 = [v59 pinnedDate];
  if (v87)
  {
    v88 = v219;
    v89 = v87;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v90 = 0;
  }

  else
  {
    v90 = 1;
    v88 = v219;
  }

  v218(v88, v90, 1, v69);
  v91 = v223;
  sub_100031B58(v88, v223, &unk_100938850, qword_100795AE0);
  if (v71(v91, 1, v69) == 1)
  {
    sub_1000050A4(v91, &unk_100938850, qword_100795AE0);
    v232 = 0u;
    v233 = 0u;
    v234 = 0;
  }

  else
  {
    *(&v233 + 1) = v69;
    v234 = &protocol witness table for Date;
    v92 = sub_1000103CC(&v232);
    (*(v70 + 32))(v92, v91, v69);
  }

  v93 = v220;
  v95 = v226;
  v94 = v227;
  v96 = v224;
  CKRecordKeyValueSetting.subscript.setter();
  [v37 encryptedValues];
  v97 = [v59 mostRecentTargetTemplateIdentifier];
  if (v97)
  {
    v98 = v97;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v99 = 0;
  }

  else
  {
    v99 = 1;
  }

  (*(v95 + 56))(v96, v99, 1, v94);
  v100 = v225;
  sub_100031B58(v96, v225, &unk_100939D90, "8\n\r");
  if ((*(v95 + 48))(v100, 1, v94))
  {
    sub_1000050A4(v100, &unk_100939D90, "8\n\r");
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    *&v233 = 0;
  }

  else
  {
    v105 = v217;
    (*(v95 + 16))(v217, v100, v94);
    sub_1000050A4(v100, &unk_100939D90, "8\n\r");
    v103 = UUID.uuidString.getter();
    v104 = v106;
    (*(v95 + 8))(v105, v94);
    v102 = &protocol witness table for String;
    v101 = &type metadata for String;
  }

  *(&v233 + 1) = v101;
  v234 = v102;
  *&v232 = v103;
  *(&v232 + 1) = v104;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  CKRecord.subscript.setter();
  CKRecord.subscript.setter();
  v107 = [v59 reminderIDsMergeableOrdering];
  if (!v107)
  {
    goto LABEL_57;
  }

  v108 = v107;
  v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  static String.Encoding.utf8.getter();
  v112 = String.init(data:encoding:)();
  v114 = v113;
  sub_10001BBA0(v109, v111);
  if (!v114)
  {
    v59 = v229;
LABEL_57:
    CKRecord.subscript.setter();
    v114 = 0;
    v234 = 0;
    v232 = 0u;
    v233 = 0u;
    goto LABEL_59;
  }

  v115 = String.count.getter();
  v116 = [objc_opt_self() sharedConfiguration];
  v117 = [v116 maxInlineAssetSizeBytes];

  if (v115 >= 1 && v117 < v115)
  {
    static String.Encoding.utf8.getter();
    v118 = String.data(using:allowLossyConversion:)();
    v120 = v119;
    (*(v215 + 8))(v93, v216);
    if (v120 >> 60 == 15)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v121 = type metadata accessor for Logger();
      sub_100006654(v121, qword_10094A590);

      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      v114, v124, v125, v126, v127, v128, v129, v130;
      if (os_log_type_enabled(v122, v123))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v231 = v132;
        *&v232 = v112;
        *v131 = 136315138;
        *(&v232 + 1) = v114;

        v133 = String.init<A>(describing:)();
        v135 = v134;
        v136 = sub_10000668C(v133, v134, &v231);
        v135, v137, v138, v139, v140, v141, v142, v143;
        *(v131 + 4) = v136;
        _os_log_impl(&_mh_execute_header, v122, v123, "Can't create data from object and not able to save it as asset {object: %s}", v131, 0xCu);
        sub_10000607C(v132);
      }

      v59 = v229;
      CKRecord.subscript.setter();
    }

    else
    {
      v211 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v213 = [v211 assetForData:isa];

      CKRecord.subscript.setter();
      sub_100031A14(v118, v120);
      v59 = v229;
    }

    CKRecord.subscript.setter();
    goto LABEL_60;
  }

  CKRecord.subscript.setter();
  *(&v233 + 1) = &type metadata for String;
  v234 = &protocol witness table for String;
  *&v232 = v112;
  *(&v232 + 1) = v114;
  v59 = v229;
LABEL_59:

  CKRecordKeyValueSetting.subscript.setter();
LABEL_60:
  v114, v144, v145, v146, v147, v148, v149, v150;
  v151 = v228;
  v152 = [v59 sectionIDsOrderingAsData];
  if (v152)
  {
    v153 = v152;
    v154 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v156 = v155;

    v157 = objc_opt_self();
    sub_100029344(v154, v156);
    v158 = Data._bridgeToObjectiveC()().super.isa;
    v159 = [v157 assetForData:v158];

    CKRecord.subscript.setter();
    sub_10001BBA0(v154, v156);
    sub_10001BBA0(v154, v156);
  }

  else
  {
    CKRecord.subscript.setter();
  }

  v160 = [v59 membershipsOfRemindersInSectionsAsData];
  if (v160)
  {
    v161 = v160;
    v162 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v164 = v163;

    v165 = objc_opt_self();
    sub_100029344(v162, v164);
    v166 = Data._bridgeToObjectiveC()().super.isa;
    v167 = [v165 assetForData:v166];

    CKRecord.subscript.setter();
    sub_10001BBA0(v162, v164);
    sub_10001BBA0(v162, v164);
  }

  else
  {
    CKRecord.subscript.setter();
  }

  v168 = [v37 encryptedValues];
  v169 = [v59 membershipsOfRemindersInSectionsChecksum];
  if (v169)
  {
    v170 = v169;
    v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v172;

    v174 = &protocol witness table for String;
    v175 = &type metadata for String;
  }

  else
  {
    v171 = 0;
    v173 = 0;
    v175 = 0;
    v174 = 0;
    *&v233 = 0;
  }

  *&v232 = v171;
  *(&v232 + 1) = v173;
  *(&v233 + 1) = v175;
  v234 = v174;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v176 = [v37 encryptedValues];
  swift_getObjectType();
  v177 = [v59 shouldCategorizeGroceryItems];
  *(&v233 + 1) = &type metadata for Bool;
  v234 = &protocol witness table for Bool;
  LOBYTE(v232) = v177;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v178 = [v37 encryptedValues];
  v179 = [v59 groceryLocaleID];
  if (v179)
  {
    v180 = v179;
    v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v183 = v182;

    v184 = &protocol witness table for String;
    v185 = &type metadata for String;
  }

  else
  {
    v181 = 0;
    v183 = 0;
    v185 = 0;
    v184 = 0;
    *&v233 = 0;
  }

  *&v232 = v181;
  *(&v232 + 1) = v183;
  *(&v233 + 1) = v185;
  v234 = v184;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v187 = v221;
  v186 = v222;
  v188 = *(v222 + 104);
  v188(v221, enum case for REMFeatureFlags.autoCategorize(_:), v151);
  v189 = REMFeatureFlags.isEnabled.getter();
  v190 = *(v186 + 8);
  v190(v187, v151);
  if (v189)
  {
    v188(v187, enum case for REMFeatureFlags.autoCategorizeCloudKit(_:), v151);
    v191 = REMFeatureFlags.isEnabled.getter();
    v190(v187, v151);
    if (v191)
    {
      v192 = [v37 encryptedValues];
      swift_getObjectType();
      v193 = [v59 shouldAutoCategorizeItems];
      *(&v233 + 1) = &type metadata for Bool;
      v234 = &protocol witness table for Bool;
      LOBYTE(v232) = v193;
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
    }
  }

  v194 = [v59 autoCategorizationLocalCorrectionsAsData];
  if (v194)
  {
    v195 = v194;
    v196 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v198 = v197;

    v199 = objc_opt_self();
    sub_100029344(v196, v198);
    v200 = Data._bridgeToObjectiveC()().super.isa;
    v201 = [v199 assetForData:v200];

    CKRecord.subscript.setter();
    sub_10001BBA0(v196, v198);
    sub_10001BBA0(v196, v198);
  }

  else
  {
    CKRecord.subscript.setter();
  }

  v202 = [v37 encryptedValues];
  v203 = [v59 autoCategorizationLocalCorrectionsChecksum];
  if (v203)
  {
    v204 = v203;
    v205 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v207 = v206;

    v208 = &protocol witness table for String;
    v209 = &type metadata for String;
  }

  else
  {
    v205 = 0;
    v207 = 0;
    v209 = 0;
    v208 = 0;
    *&v233 = 0;
  }

  *&v232 = v205;
  *(&v232 + 1) = v207;
  *(&v233 + 1) = v209;
  v234 = v208;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
LABEL_82:
  v210 = v37;
  result.value.super.isa = v210;
  result.is_nil = v36;
  return result;
}

Swift::String __swiftcall REMCDList.shareTitle()()
{
  v1 = [v0 name];
  if (!v1)
  {
    v9.receiver = v0;
    v9.super_class = REMCDList;
    v1 = objc_msgSendSuper2(&v9, "shareTitle");
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall REMCDList.shareType()()
{
  v0 = 0x80000001007F5E60;
  v1 = 0xD000000000000018;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall REMCDList.update(with:)(CKShare_optional with)
{
  isa = with.value.super.super.isa;
  v501 = type metadata accessor for UUID();
  *&v523 = *(v501 - 8);
  __chkstk_darwin(v501, v3);
  v496 = v491 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = type metadata accessor for PersonNameComponents();
  v522._rawValue = *(v493 - 8);
  __chkstk_darwin(v493, v5);
  v516 = v491 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v498 = v491 - v9;
  if (qword_100935F30 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v10 = type metadata accessor for Logger();
    v11 = sub_100006654(v10, qword_100942E20);
    v12 = isa;
    v13 = v1;
    v491[1] = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v529 = v18;
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2080;
      v528[0] = isa;
      v19 = v13;
      sub_1000F5104(&unk_100942E40, qword_1007A3880);
      v20 = Optional.descriptionOrNil.getter();
      v22 = v21;
      v23 = sub_10000668C(v20, v21, &v529);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Update list's sharing information and sharees with new CKShare {list: %@, share: %s}", v16, 0x16u);
      sub_1000050A4(v17, &unk_100938E70, &unk_100797230);

      sub_10000607C(v18);
    }

    v499 = [v13 managedObjectContext];
    if (!v499)
    {
      v36 = v13;
      v37 = v12;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v529 = v42;
        *v40 = 138412546;
        *(v40 + 4) = v36;
        *v41 = v36;
        *(v40 + 12) = 2080;
        v528[0] = isa;
        v43 = v36;
        sub_1000F5104(&unk_100942E40, qword_1007A3880);
        v44 = Optional.descriptionOrNil.getter();
        v46 = v45;
        v47 = sub_10000668C(v44, v45, &v529);
        v46, v48, v49, v50, v51, v52, v53, v54;
        *(v40 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v38, v39, "Failed to update REMCDList with CKShare: managed object context is nil {list: %@, CKShare: %s}", v40, 0x16u);
        sub_1000050A4(v41, &unk_100938E70, &unk_100797230);

        sub_10000607C(v42);
      }

      return;
    }

    if (!isa)
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Share stopped, clear sharing information and sharees", v57, 2u);
      }

      [v13 setSharingStatus:0];
      [v13 setSharedOwnerIdentifier:0];
      v58 = [v13 sharees];
      if (!v58)
      {
        goto LABEL_190;
      }

      v59 = v58;
      sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
      sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0, &protocol conformance descriptor for NSObject);
      v60 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v70 = swift_slowAlloc();
        *v70 = 134217984;
        if ((v60 & 0xC000000000000001) != 0)
        {
          v71 = __CocoaSet.count.getter();
        }

        else
        {
          v71 = *(v60 + 16);
        }

        *(v70 + 4) = v71;
        v60, v63, v64, v65, v66, v67, v68, v69;
        _os_log_impl(&_mh_execute_header, v61, v62, "Removing sharees {count: %ld}", v70, 0xCu);
      }

      else
      {

        v60, v411, v412, v413, v414, v415, v416, v417;
      }

      if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003919B4(&_swiftEmptyArrayStorage, &qword_10093A868, &qword_100797DE8, &qword_100942E50, off_1008D41E0);
        v1 = v486;
      }

      else
      {
        v1 = _swiftEmptySetSingleton;
      }

      v418 = Set._bridgeToObjectiveC()().super.isa;
      v1, v419, v420, v421, v422, v423, v424, v425;
      [v13 setSharees:v418];

      if ((v60 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v60 = v529;
        v426 = v530;
        v427 = v531;
        v428 = v532;
        isa = v533;
      }

      else
      {
        v428 = 0;
        v429 = -1 << *(v60 + 32);
        v426 = v60 + 56;
        v427 = ~v429;
        v430 = -v429;
        if (v430 < 64)
        {
          v431 = ~(-1 << v430);
        }

        else
        {
          v431 = -1;
        }

        isa = (v431 & *(v60 + 56));
      }

      *&v523 = v427;
      v432 = (v427 + 64) >> 6;
      if ((v60 & 0x8000000000000000) == 0)
      {
        goto LABEL_182;
      }

LABEL_179:
      v433 = __CocoaSet.Iterator.next()();
      if (v433)
      {
        v527 = v433;
        swift_dynamicCast();
        v1 = v528[0];
        v434 = v428;
        v435 = isa;
        if (v528[0])
        {
          while (1)
          {
            [v499 deleteObject:v1];

            v428 = v434;
            isa = v435;
            if (v60 < 0)
            {
              goto LABEL_179;
            }

LABEL_182:
            v436 = v428;
            v437 = isa;
            v434 = v428;
            if (!isa)
            {
              break;
            }

LABEL_186:
            v435 = (v437 - 1) & v437;
            v1 = *(*(v60 + 48) + ((v434 << 9) | (8 * __clz(__rbit64(v437)))));
            if (!v1)
            {
              goto LABEL_189;
            }
          }

          while (1)
          {
            v434 = v436 + 1;
            if (__OFADD__(v436, 1))
            {
              goto LABEL_206;
            }

            if (v434 >= v432)
            {
              break;
            }

            v437 = *(v426 + 8 * v434);
            ++v436;
            if (v437)
            {
              goto LABEL_186;
            }
          }
        }
      }

LABEL_189:
      sub_10001B860(v60);
      goto LABEL_190;
    }

    v31 = v12;
    v32 = [(RDXPCStorePerformer *)v31 owner];
    v515 = v31;
    v33 = [(RDXPCStorePerformer *)v31 currentUserParticipant];
    v34 = v33;
    v500 = v13;
    if (!v32)
    {
      if (!v33)
      {
LABEL_20:
        v72 = 1;
LABEL_32:
        [v13 setSharingStatus:v72];
        v86 = v13;
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (!v33)
    {
      v34 = v32;
LABEL_22:

      goto LABEL_23;
    }

    sub_1000060C8(0, &qword_100942E60, CKShareParticipant_ptr);
    v35 = static NSObject.== infix(_:_:)();

    if (v35)
    {
      goto LABEL_20;
    }

LABEL_23:
    v73 = [(RDXPCStorePerformer *)v515 currentUserParticipant];
    if (!v73)
    {
      v72 = 0;
      goto LABEL_32;
    }

    v74 = v73;
    v75 = [v73 acceptanceStatus];

    if (v75 == 1)
    {
      v72 = 3;
    }

    else
    {
      v72 = 0;
    }

    if (v75 != 2)
    {
      goto LABEL_32;
    }

    [v13 setSharingStatus:2];
    v76 = v13;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v528[0] = v80;
      *v79 = 136446210;
      v81 = [v76 ckIdentifier];
      if (v81)
      {
        v82 = v81;
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;
      }

      else
      {
        v83 = 0;
        v85 = 0;
      }

      v529 = v83;
      v530 = v85;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v438 = Optional.descriptionOrNil.getter();
      v440 = v439;
      v85, v439, v441, v442, v443, v444, v445, v446;
      v447 = sub_10000668C(v438, v440, v528);
      v440, v448, v449, v450, v451, v452, v453, v454;
      *(v79 + 4) = v447;
      _os_log_impl(&_mh_execute_header, v77, v78, "REMCDList.update(with share: CKShare?) will insert pending post-save action '.notify_SharedToMeListPinnedStateDidBecomeStale' {ckIdentifier: %{public}s}", v79, 0xCu);
      sub_10000607C(v80);
    }

    else
    {
    }

    v455 = [v76 storeControllerManagedObjectContext];
    if (v455)
    {
      v456 = v455;
      [v455 setPendingPostSaveActions:{objc_msgSend(v455, "pendingPostSaveActions") | 2}];
    }

    v457 = v76;
    v458 = Logger.logObject.getter();
    v459 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v458, v459))
    {
      v460 = swift_slowAlloc();
      v461 = swift_slowAlloc();
      v528[0] = v461;
      *v460 = 136446210;
      v462 = [v457 ckIdentifier];
      if (v462)
      {
        v463 = v462;
        v464 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v466 = v465;
      }

      else
      {
        v464 = 0;
        v466 = 0;
      }

      v529 = v464;
      v530 = v466;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v467 = Optional.descriptionOrNil.getter();
      v469 = v468;
      v466, v468, v470, v471, v472, v473, v474, v475;
      v476 = sub_10000668C(v467, v469, v528);
      v469, v477, v478, v479, v480, v481, v482, v483;
      *(v460 + 4) = v476;
      _os_log_impl(&_mh_execute_header, v458, v459, "REMCDList.update(with share: CKShare?) will insert pending post-save action '.notify_SharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserDidBecomeStale' {ckIdentifier: %{public}s}", v460, 0xCu);
      sub_10000607C(v461);
    }

    else
    {
    }

    v484 = [v457 storeControllerManagedObjectContext];
    v86 = v500;
    if (v484)
    {
      v485 = v484;
      [v484 setPendingPostSaveActions:{objc_msgSend(v484, "pendingPostSaveActions") | 4}];
    }

LABEL_33:
    v527 = sub_1003909A8(&_swiftEmptyArrayStorage, &unk_100944090, &unk_1007A4820);
    v526 = _swiftEmptySetSingleton;
    v87 = [v86 sharees];
    if (!v87)
    {
      goto LABEL_66;
    }

    v1 = v87;
    v88 = sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0, &protocol conformance descriptor for NSObject);
    v89 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v519 = v88;
    if ((v89 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v89 = v528[0];
      v90 = v528[1];
      v91 = v528[2];
      isa = v528[3];
      v92 = v528[4];
    }

    else
    {
      isa = 0;
      v93 = -1 << *(v89 + 32);
      v90 = (v89 + 56);
      v91 = ~v93;
      v94 = -v93;
      v95 = v94 < 64 ? ~(-1 << v94) : -1;
      v92 = v95 & *(v89 + 56);
    }

    v518 = v91;
    v96 = (v91 + 64) >> 6;
    v520 = v89;
    v521 = v90;
    if (v89 < 0)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v101 = isa;
        v102 = v92;
        v99 = isa;
        if (!v92)
        {
          while (1)
          {
            v99 = (&v101->super.isa + 1);
            if (__OFADD__(v101, 1))
            {
              break;
            }

            if (v99 >= v96)
            {
              goto LABEL_65;
            }

            v102 = *(v90 + v99);
            v101 = (v101 + 1);
            if (v102)
            {
              goto LABEL_47;
            }
          }

LABEL_204:
          __break(1u);
          goto LABEL_205;
        }

LABEL_47:
        v100 = (v102 - 1) & v102;
        v98 = *(*(v89 + 48) + ((v99 << 9) | (8 * __clz(__rbit64(v102)))));
LABEL_48:
        if (!v98)
        {
          goto LABEL_65;
        }

        v103 = [v98 ckIdentifier];
        if (v103)
        {
          break;
        }

        v1 = &v526;
        sub_10037DADC(&v529, v98);

        isa = v99;
        v92 = v100;
        if (v89 < 0)
        {
          goto LABEL_41;
        }
      }

      v104 = v103;
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      v108 = v98;
      v1 = v527;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v529 = v1;
      v117 = sub_100005F4C(v105, v107);
      v118 = *(v1 + 16);
      v119 = (v110 & 1) == 0;
      v120 = v118 + v119;
      if (__OFADD__(v118, v119))
      {
        break;
      }

      v121 = v110;
      if (*(v1 + 24) >= v120)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v123 = v529;
          if ((v110 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v1 = &v529;
          sub_1003778E0(&unk_100944090, &unk_1007A4820);
          v123 = v529;
          if ((v121 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        sub_100372224(v120, isUniquelyReferenced_nonNull_native, &unk_100944090, &unk_1007A4820);
        v1 = v529;
        v122 = sub_100005F4C(v105, v107);
        if ((v121 & 1) != (v110 & 1))
        {
          goto LABEL_218;
        }

        v117 = v122;
        v123 = v529;
        if ((v121 & 1) == 0)
        {
LABEL_54:
          v123[(v117 >> 6) + 8] |= 1 << v117;
          v124 = (v123[6] + 16 * v117);
          *v124 = v105;
          v124[1] = v107;
          *(v123[7] + 8 * v117) = v108;
          v125 = v123[2];
          v126 = __OFADD__(v125, 1);
          v127 = v125 + 1;
          if (v126)
          {
            goto LABEL_210;
          }

          v123[2] = v127;
          goto LABEL_61;
        }
      }

      v128 = v123[7];
      v1 = *(v128 + 8 * v117);
      *(v128 + 8 * v117) = v108;
      v107, v110, v111, v112, v113, v114, v115, v116;

      v108 = v1;
LABEL_61:

      v527 = v123;
      isa = v99;
      v92 = v100;
      v89 = v520;
      v90 = v521;
      if ((v520 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    isa = _CocoaArrayWrapper.endIndex.getter();
    if (isa)
    {
      goto LABEL_68;
    }

LABEL_144:
    v108, v130, v131, v132, v133, v134, v135, v136;
    isa = v527;

    v1 = &v526;
    sub_1003560E4(v382);
    v390 = v526;
    if ((v526 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
        v1 = __CocoaSet.makeIterator()();
        sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
        sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0, &protocol conformance descriptor for NSObject);
        Set.Iterator.init(_cocoa:)();
        v390 = v529;
        v391 = v530;
        v392 = v531;
        v393 = v532;
        v394 = v533;
        goto LABEL_152;
      }

LABEL_164:
      isa, v383, v384, v385, v386, v387, v388, v389;
      isa = v390;
LABEL_165:
      isa, v404, v405, v406, v407, v408, v409, v410;

LABEL_190:
      return;
    }

    if (!*(v526 + 16))
    {
      goto LABEL_164;
    }

    v393 = 0;
    v395 = -1 << *(v526 + 32);
    v391 = (v526 + 56);
    v392 = ~v395;
    v396 = -v395;
    if (v396 < 64)
    {
      v397 = ~(-1 << v396);
    }

    else
    {
      v397 = -1;
    }

    v394 = v397 & *(v526 + 56);
LABEL_152:
    *&v523 = v392;
    v398 = (v392 + 64) >> 6;
    if (v390 < 0)
    {
LABEL_153:
      v399 = __CocoaSet.Iterator.next()();
      if (v399)
      {
        v524 = v399;
        sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
        swift_dynamicCast();
        v1 = v525;
        v400 = v393;
        v401 = v394;
        if (v525)
        {
          goto LABEL_161;
        }
      }

LABEL_163:
      sub_10001B860(v390);
      goto LABEL_165;
    }

    while (1)
    {
      v402 = v393;
      v403 = v394;
      v400 = v393;
      if (!v394)
      {
        break;
      }

LABEL_160:
      v401 = (v403 - 1) & v403;
      v1 = *(*(v390 + 48) + ((v400 << 9) | (8 * __clz(__rbit64(v403)))));
      if (!v1)
      {
        goto LABEL_163;
      }

LABEL_161:
      [v499 deleteObject:v1];

      v393 = v400;
      v394 = v401;
      if (v390 < 0)
      {
        goto LABEL_153;
      }
    }

    while (1)
    {
      v400 = v402 + 1;
      if (__OFADD__(v402, 1))
      {
        break;
      }

      if (v400 >= v398)
      {
        goto LABEL_163;
      }

      v403 = *(&v391->super.isa + v400);
      ++v402;
      if (v403)
      {
        goto LABEL_160;
      }
    }

LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
  }

LABEL_41:
  v97 = __CocoaSet.Iterator.next()();
  if (v97)
  {
    v525 = v97;
    swift_dynamicCast();
    v98 = v529;
    v99 = isa;
    v100 = v92;
    goto LABEL_48;
  }

LABEL_65:
  sub_10001B860(v89);
LABEL_66:
  v514 = [objc_allocWithZone(CNContactStore) init];
  v129 = [(RDXPCStorePerformer *)v515 participants];
  sub_1000060C8(0, &qword_100942E60, CKShareParticipant_ptr);
  v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v108 >> 62)
  {
    goto LABEL_211;
  }

  isa = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!isa)
  {
    goto LABEL_144;
  }

LABEL_68:
  v1 = 0;
  v513 = v108 & 0xC000000000000001;
  v495 = v108 & 0xFFFFFFFFFFFFFF8;
  v494 = (v523 + 48);
  v497 = (v523 + 8);
  v492 = (v522._rawValue + 8);
  v510 = CNContactGivenNameKey;
  v509 = CNContactMiddleNameKey;
  v508 = CNContactFamilyNameKey;
  v507 = CNContactNamePrefixKey;
  v506 = CNContactNameSuffixKey;
  v505 = CNContactNicknameKey;
  v504 = CNContactPhoneNumbersKey;
  v503 = CNContactEmailAddressesKey;
  v502 = xmmword_1007A3870;
  v523 = xmmword_100791300;
  v512 = v108;
  v511 = isa;
  while (2)
  {
    if (v513)
    {
      v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v495 + 16))
      {
        goto LABEL_207;
      }

      v137 = *(v108 + 8 * v1 + 32);
    }

    v138 = v137;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_204;
    }

    v517 = v1;
    v139 = CKShareParticipant.participantID.getter();
    v141 = v140;
    v142 = sub_1003537F0(v139, v140, v527);
    v520 = v1 + 1;
    v521 = v138;
    v519 = v141;
    if (v142)
    {
      v518 = v142;
      v143 = sub_100369860(v139, v141);
    }

    else
    {
      sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
      v144 = [swift_getObjCClassFromMetadata() entity];
      v145 = objc_allocWithZone(REMCDSharee);
      v146 = [v145 initWithEntity:v144 insertIntoManagedObjectContext:v499];

      v143 = v146;
      CKShareParticipant.participantID.getter();
      v148 = v147;
      v149 = String._bridgeToObjectiveC()();
      v148, v150, v151, v152, v153, v154, v155, v156;
      [v143 setCkIdentifier:v149];

      CKShareParticipant.participantID.getter();
      v158 = v157;
      v159 = v498;
      UUID.init(uuidString:)();
      v158, v160, v161, v162, v163, v164, v165, v166;
      v167 = 0;
      if ((*v494)(v159, 1, v501) != 1)
      {
        v168 = v498;
        v167 = UUID._bridgeToObjectiveC()().super.isa;
        (*v497)(v168, v501);
      }

      [v143 setIdentifier:v167];

      v169 = v500;
      v170 = [v500 account];
      [v143 setAccount:v170];

      [v169 addShareesObject:v143];
      v518 = v143;
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v171 = swift_allocObject();
    *(v171 + 16) = v502;
    v172 = v510;
    v173 = v509;
    *(v171 + 32) = v510;
    *(v171 + 40) = v173;
    v174 = v508;
    v175 = v507;
    *(v171 + 48) = v508;
    *(v171 + 56) = v175;
    v176 = v506;
    v177 = v505;
    *(v171 + 64) = v506;
    *(v171 + 72) = v177;
    v178 = v503;
    v522._rawValue = v171;
    *(v171 + 80) = CNContactPhoneNumbersKey;
    *(v171 + 88) = v178;
    sub_1000F5104(&qword_100942E70, &qword_10079D348);
    v179 = swift_allocObject();
    *(v179 + 16) = v523;
    v180 = v172;
    v181 = v173;
    v182 = v174;
    v183 = v175;
    v184 = v176;
    v185 = v177;
    v186 = CNContactPhoneNumbersKey;
    v187 = v178;
    v188 = v521;
    v189 = [v521 userIdentity];
    v190 = [v189 lookupInfo];

    if (v190)
    {
      v191 = [v190 emailAddress];

      if (v191)
      {
        v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v194 = v193;
      }

      else
      {
        v192 = 0;
        v194 = 0;
      }

      v195 = v518;
      *(v179 + 32) = v192;
      *(v179 + 40) = v194;
    }

    else
    {
      *(v179 + 32) = 0;
      *(v179 + 40) = 0;
      v195 = v518;
    }

    v196 = swift_allocObject();
    *(v196 + 16) = v523;
    v197 = [v188 userIdentity];
    v198 = [v197 lookupInfo];

    if (v198)
    {
      v199 = [v198 phoneNumber];

      if (v199)
      {
        v200 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v202 = v201;
      }

      else
      {
        v200 = 0;
        v202 = 0;
      }

      *(v196 + 32) = v200;
      *(v196 + 40) = v202;
    }

    else
    {
      *(v196 + 32) = 0;
      *(v196 + 40) = 0;
    }

    rawValue = v522._rawValue;
    *&v204 = CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(v179, v196, v522);
    v205 = v204;
    v179, *(&v204 + 1), v206, v207, v208, v209, v210, v211;
    v196, v212, v213, v214, v215, v216, v217, v218;
    if (v205)
    {
      v219 = [v205 givenName];
      if (!v219)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v221 = v220;
        v219 = String._bridgeToObjectiveC()();
        v221, v222, v223, v224, v225, v226, v227, v228;
      }

      [v195 setFirstName:v219];

      v229 = [v205 middleName];
      if (!v229)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v231 = v230;
        v229 = String._bridgeToObjectiveC()();
        v231, v232, v233, v234, v235, v236, v237, v238;
      }

      [v195 setMiddleName:v229];

      v239 = [v205 familyName];
      if (!v239)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v241 = v240;
        v239 = String._bridgeToObjectiveC()();
        v241, v242, v243, v244, v245, v246, v247, v248;
      }

      [v195 setLastName:v239];

      v249 = [v205 namePrefix];
      if (!v249)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v251 = v250;
        v249 = String._bridgeToObjectiveC()();
        v251, v252, v253, v254, v255, v256, v257, v258;
      }

      [v195 setNamePrefix:v249];

      v259 = [v205 nameSuffix];
      if (!v259)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v261 = v260;
        v259 = String._bridgeToObjectiveC()();
        v261, v262, v263, v264, v265, v266, v267, v268;
      }

      [v195 setNameSuffix:v259];

      v269 = [v205 nickname];
      if (!v269)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v271 = v270;
        v269 = String._bridgeToObjectiveC()();
        v271, v272, v273, v274, v275, v276, v277, v278;
      }

      [v195 setNickname:v269];
    }

    else
    {
      v279 = [v188 userIdentity];
      v280 = [v279 nameComponents];

      if (v280)
      {
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.getter();
        if (v281)
        {
          v282 = v281;
          v283 = String._bridgeToObjectiveC()();
          v282, v284, v285, v286, v287, v288, v289, v290;
        }

        else
        {
          v283 = 0;
        }

        [v195 setFirstName:v283];

        PersonNameComponents.middleName.getter();
        if (v291)
        {
          v292 = v291;
          v293 = String._bridgeToObjectiveC()();
          v292, v294, v295, v296, v297, v298, v299, v300;
        }

        else
        {
          v293 = 0;
        }

        [v195 setMiddleName:v293];

        PersonNameComponents.familyName.getter();
        if (v301)
        {
          v302 = v301;
          v303 = String._bridgeToObjectiveC()();
          v302, v304, v305, v306, v307, v308, v309, v310;
        }

        else
        {
          v303 = 0;
        }

        [v195 setLastName:v303];

        PersonNameComponents.namePrefix.getter();
        if (v311)
        {
          v312 = v311;
          v313 = String._bridgeToObjectiveC()();
          v312, v314, v315, v316, v317, v318, v319, v320;
        }

        else
        {
          v313 = 0;
        }

        [v195 setNamePrefix:v313];

        PersonNameComponents.nameSuffix.getter();
        if (v321)
        {
          v322 = v321;
          v323 = String._bridgeToObjectiveC()();
          v322, v324, v325, v326, v327, v328, v329, v330;
        }

        else
        {
          v323 = 0;
        }

        [v195 setNameSuffix:v323];

        PersonNameComponents.nickname.getter();
        if (v331)
        {
          v332 = v331;
          v333 = String._bridgeToObjectiveC()();
          v332, v334, v335, v336, v337, v338, v339, v340;
        }

        else
        {
          v333 = 0;
        }

        [v195 setNickname:v333];

        (*v492)(v516, v493);
      }
    }

    v341 = [v188 userIdentity];
    v342 = [v341 lookupInfo];

    if (v342)
    {
      v343 = [v342 emailAddress];

      if (v343)
      {
        v344 = [v343 rem_addingMailto];
        goto LABEL_133;
      }
    }

    v345 = [v188 userIdentity];
    v346 = [v345 lookupInfo];

    if (v346 && (v343 = [v346 phoneNumber], v346, v343))
    {
      v344 = [v343 rem_addingTel];
LABEL_133:
      v347 = v344;

      if (!v347)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v349 = v348;
        v347 = String._bridgeToObjectiveC()();
        v349, v350, v351, v352, v353, v354, v355, v356;
      }

      [v195 setAddress:v347];

      v357 = v195;
    }

    else
    {
      [v195 setAddress:0];
    }

    v358 = [v188 permission];
    if (v358 >= 4)
    {
      v487 = sub_1001F67C8(&_swiftEmptyArrayStorage);
      v488 = sub_1001F67C8(&_swiftEmptyArrayStorage);
      sub_10054573C("unknown permission", 18, 2, v487, v488);
      goto LABEL_217;
    }

    [v195 setAccessLevel:(0x2000100000000uLL >> (16 * v358)) & 3];
    v359 = [v188 acceptanceStatus];
    if (v359 < 4)
    {
      v367 = 0x3000100050004uLL >> (16 * v359);
      rawValue, v360, v361, v362, v363, v364, v365, v366;
      v519, v368, v369, v370, v371, v372, v373, v374;
      [v195 setStatus:v367 & 7];

      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
      v375 = [(RDXPCStorePerformer *)v515 owner];
      v376 = static NSObject.== infix(_:_:)();

      if (v376)
      {
        v377 = [v195 remObjectID];
        v108 = v512;
        if (v377)
        {
          v378 = v377;
          v379 = [v377 uuid];

          v380 = v496;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v381.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*v497)(v380, v501);
        }

        else
        {
          v381.super.isa = 0;
        }

        [v500 setSharedOwnerIdentifier:v381.super.isa];

        isa = v511;
        if (v520 == v511)
        {
          goto LABEL_144;
        }
      }

      else
      {

        isa = v511;
        v108 = v512;
        if (v520 == v511)
        {
          goto LABEL_144;
        }
      }

      v1 = v517 + 1;
      continue;
    }

    break;
  }

  v489 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v490 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown acceptanceStatus", 24, 2, v489, v490);
LABEL_217:
  __break(1u);
LABEL_218:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void __swiftcall REMCDList.existingLocalObjectToMerge(with:)(REMCDObject_optional *__return_ptr retstr, NSPredicate_optional *with)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v9, v10).n128_u64[0];
  v13 = &v139 - v12;
  v14 = [v3 managedObjectContext];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  if ([v3 isConcealed])
  {
    if (qword_100935F30 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100942E20);
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v20 = 136446466;
      v21 = [v17 remObjectID];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 description];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 7104878;
        v26 = 0xE300000000000000;
      }

      v37 = sub_10000668C(v24, v26, &v142);
      v26, v38, v39, v40, v41, v42, v43, v44;
      *(v20 + 4) = v37;
      *(v20 + 12) = 2082;
      v45 = sub_1004D7318();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, &v142);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v20 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v18, v19, "MERGE.LOCAL: ...Should not attempt to find existing local object for this concealed list, race condition? {self: %{public}s %{public}s}", v20, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_17;
  }

  if (([v3 isGroup] & 1) != 0 || (objc_msgSend(v3, "isShared") & 1) != 0 || (v27 = objc_msgSend(v3, "name")) == 0)
  {
LABEL_17:

    return;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v142 = &_swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v33 = [v3 account];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 identifier];

    if (v35)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = type metadata accessor for UUID();
      (*(*(v36 - 8) + 56))(v8, 0, 1, v36);
    }

    else
    {
      v57 = type metadata accessor for UUID();
      (*(*(v57 - 8) + 56))(v8, 1, 1, v57);
    }

    sub_100031B58(v8, v13, &unk_100939D90, "8\n\r");
  }

  else
  {
    v56 = type metadata accessor for UUID();
    (*(*(v56 - 8) + 56))(v13, 1, 1, v56);
  }

  sub_1000234B0(KeyPath, v13, &unk_100939D90, "8\n\r", &qword_10093F478, &unk_1007A76E0);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v142->clientIdentity >= *&v142->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v58 = swift_getKeyPath();
  sub_100393084(v58, v29, v31, 6, v59, v60, v61, v62);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v142->clientIdentity >= *&v142->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000185BC();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v142->clientIdentity >= *&v142->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v63 = v142;
  v141 = &_swiftEmptyArrayStorage;
  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  v64 = NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v65 = v141;
  v73 = sub_100010634(v63, v66, v67, v68, v69, v70, v71, v72);
  if (v73)
  {
    v74 = v73;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v65 = v141;
  }

  if (with)
  {
    v75 = with;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v65 = v141;
  }

  v76 = objc_allocWithZone(NSCompoundPredicate);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v65, v78, v79, v80, v81, v82, v83, v84;
  v85 = [v76 initWithType:1 subpredicates:isa];

  swift_getObjectType();
  v86 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v85 context:v15];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v87 >> 62))
  {
    if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_56:

    v87, v132, v133, v134, v135, v136, v137, v138;
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_56;
  }

LABEL_40:
  if ((v87 & 0xC000000000000001) != 0)
  {
    v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_43:
    v86 = v88;
    v87, v89, v90, v91, v92, v93, v94, v95;
    objc_opt_self();
    v96 = swift_dynamicCastObjCClass();
    if (!v96)
    {

      return;
    }

    v139 = v96;
    if (qword_100935F30 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_59;
  }

  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v88 = *(v87 + 32);
    goto LABEL_43;
  }

  __break(1u);
LABEL_59:
  swift_once();
LABEL_45:
  v97 = type metadata accessor for Logger();
  sub_100006654(v97, qword_100942E20);
  v98 = v3;
  v99 = v86;
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *v102 = 136446466;
    v103 = &selRef_persistentStoreForIdentifier_;
    v104 = [v98 remObjectID];
    if (v104)
    {
      v105 = v104;
      v106 = [v104 description];

      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = v108;

      v103 = &selRef_persistentStoreForIdentifier_;
    }

    else
    {
      v109 = 0xE300000000000000;
      v107 = 7104878;
    }

    v110 = sub_10000668C(v107, v109, &v140);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v102 + 4) = v110;
    *(v102 + 12) = 2082;
    v118 = [v139 v103[106]];
    if (v118)
    {
      v119 = v118;
      v120 = [v118 description];

      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;
    }

    else
    {
      v123 = 0xE300000000000000;
      v121 = 7104878;
    }

    v124 = sub_10000668C(v121, v123, &v140);
    v123, v125, v126, v127, v128, v129, v130, v131;
    *(v102 + 14) = v124;
    _os_log_impl(&_mh_execute_header, v100, v101, "MERGE.LOCAL: ...REMCDList.existingLocalObjectToMerge found a matching local REMCDList! {self: %{public}s, matched: %{public}s}", v102, 0x16u);
    swift_arrayDestroy();
  }
}

Swift::Bool __swiftcall REMCDList.merge(withLocalObject:)(REMCDObject *withLocalObject)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v606 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v612 = v589 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v610 = v589 - v9;
  v10 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v10, v11);
  v13 = v589 - v12;
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v14 - 8, v15);
  v17 = v589 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = v589 - v20;
  *&v24 = __chkstk_darwin(v22, v23).n128_u64[0];
  v26 = v589 - v25;
  v27 = [v2 managedObjectContext];
  v608 = v27;
  if (v27)
  {
    v611 = v4;
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (!v28)
    {
LABEL_136:

      LOBYTE(v27) = 0;
      return v27;
    }

    v29 = v28;
    v30 = withLocalObject;
    if ([v29 isConcealed])
    {
      if (qword_100935F30 == -1)
      {
LABEL_5:
        v31 = type metadata accessor for Logger();
        sub_100006654(v31, qword_100942E20);
        v32 = v30;
        v33 = v2;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v34, v35))
        {
LABEL_135:

          goto LABEL_136;
        }

        v36 = 7104878;
        v37 = swift_slowAlloc();
        v616 = swift_slowAlloc();
        *v37 = 136446722;
        v38 = [(RDXPCStorePerformer *)v33 remObjectID];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 description];

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v115 = sub_10000668C(v41, v43, &v616);
        v43, v116, v117, v118, v119, v120, v121, v122;
        *(v37 + 4) = v115;
        *(v37 + 12) = 2082;
        v123 = [(REMCDObject *)v32 remObjectID];
        if (v123)
        {
          v124 = v123;
          v125 = [(REMObjectID *)v123 description];

          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v127 = v126;
        }

        else
        {
          v127 = 0xE300000000000000;
        }

        v128 = sub_10000668C(v36, v127, &v616);
        v127, v129, v130, v131, v132, v133, v134, v135;
        *(v37 + 14) = v128;
        *(v37 + 22) = 2082;
        v136 = sub_1004D7318();
        v138 = v137;
        v139 = sub_10000668C(v136, v137, &v616);
        v138, v140, v141, v142, v143, v144, v145, v146;
        *(v37 + 24) = v139;
        _os_log_impl(&_mh_execute_header, v34, v35, "MERGE.LOCAL: ...Should not attempt to merge with a concealed local list, race condition or corrupted database? {self: %{public}s, local: %{public}s %{public}s}", v37, 0x20u);
        swift_arrayDestroy();

LABEL_134:

        goto LABEL_135;
      }

LABEL_145:
      swift_once();
      goto LABEL_5;
    }

    v44 = [v29 identifier];
    if (v44)
    {
      v45 = v44;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = *(v606 + 56);
      v46(v26, 0, 1, v611);
    }

    else
    {
      v46 = *(v606 + 56);
      v46(v26, 1, 1, v611);
    }

    v47 = [v2 identifier];
    v604 = v29;
    v609 = v30;
    if (v47)
    {
      v48 = v47;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = v611;
    v51 = v606;
    v46(v21, v49, 1, v611);
    v52 = *(v10 + 48);
    sub_100010364(v26, v13, &unk_100939D90, "8\n\r");
    sub_100010364(v21, &v13[v52], &unk_100939D90, "8\n\r");
    v53 = v50;
    v54 = *(v51 + 48);
    if (v54(v13, 1, v50) == 1)
    {
      sub_1000050A4(v21, &unk_100939D90, "8\n\r");
      sub_1000050A4(v26, &unk_100939D90, "8\n\r");
      v55 = v54(&v13[v52], 1, v50);
      v30 = v609;
      if (v55 == 1)
      {
        sub_1000050A4(v13, &unk_100939D90, "8\n\r");
LABEL_35:
        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        sub_100006654(v81, qword_100942E20);
        v32 = v30;
        v82 = v2;
        v34 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v34, v83))
        {
          goto LABEL_135;
        }

        v84 = 7104878;
        v85 = swift_slowAlloc();
        v616 = swift_slowAlloc();
        *v85 = 136446466;
        v86 = [(RDXPCStorePerformer *)v82 remObjectID];
        if (v86)
        {
          v87 = v86;
          v88 = [v86 description];

          v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v91 = v90;
        }

        else
        {
          v91 = 0xE300000000000000;
          v89 = 7104878;
        }

        v365 = sub_10000668C(v89, v91, &v616);
        v91, v366, v367, v368, v369, v370, v371, v372;
        *(v85 + 4) = v365;
        *(v85 + 12) = 2082;
        v373 = [(REMCDObject *)v32 remObjectID];
        if (v373)
        {
          v374 = v373;
          v375 = [(REMObjectID *)v373 description];

          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v377 = v376;
        }

        else
        {
          v377 = 0xE300000000000000;
        }

        v378 = sub_10000668C(v84, v377, &v616);
        v377, v379, v380, v381, v382, v383, v384, v385;
        *(v85 + 14) = v378;
        _os_log_impl(&_mh_execute_header, v34, v83, "MERGE.LOCAL: ...this REMCDList should not try to merge with itself! {self: %{public}s, local: %{public}s}", v85, 0x16u);
        swift_arrayDestroy();

        goto LABEL_134;
      }
    }

    else
    {
      sub_100010364(v13, v17, &unk_100939D90, "8\n\r");
      if (v54(&v13[v52], 1, v50) != 1)
      {
        v77 = v606;
        v78 = &v13[v52];
        v79 = v610;
        (*(v606 + 32))(v610, v78, v53);
        sub_1003932B0(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v607) = dispatch thunk of static Equatable.== infix(_:_:)();
        v80 = *(v77 + 8);
        v80(v79, v53);
        sub_1000050A4(v21, &unk_100939D90, "8\n\r");
        sub_1000050A4(v26, &unk_100939D90, "8\n\r");
        v80(v17, v53);
        sub_1000050A4(v13, &unk_100939D90, "8\n\r");
        v30 = v609;
        if (v607)
        {
          goto LABEL_35;
        }

LABEL_20:
        v56 = [v2 reminders];
        if (!v56)
        {
          if (qword_100935F30 != -1)
          {
            swift_once();
          }

          v103 = type metadata accessor for Logger();
          sub_100006654(v103, qword_100942E20);
          v104 = v2;
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v616 = v108;
            *v107 = 136446210;
            v109 = [(RDXPCStorePerformer *)v104 remObjectID];
            if (v109)
            {
              v110 = v109;
              v111 = [v109 description];

              v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v114 = v113;
            }

            else
            {
              v112 = 7104878;
              v114 = 0xE300000000000000;
            }

            v386 = sub_10000668C(v112, v114, &v616);
            v114, v387, v388, v389, v390, v391, v392, v393;
            *(v107 + 4) = v386;
            _os_log_impl(&_mh_execute_header, v105, v106, "MERGE.LOCAL: ...childReminders is unexpectedly nil {self: %{public}s}", v107, 0xCu);
            sub_10000607C(v108);
          }

          v394 = v604;
          v395 = [v604 parentAccount];
          [v395 removeListsObject:v394];

          v396 = v608;
          [v608 deleteObject:v394];

          goto LABEL_205;
        }

        v616 = v56;
        v57 = v56;
        v58 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        v59 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        v60 = sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
        v589[3] = v59;
        v589[2] = v60;
        v61 = Sequence.elements<A>(ofType:)();

        sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
        sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_100791300;
        *(v62 + 56) = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
        *(v62 + 64) = sub_10000CDE4(&qword_100942E78, &unk_100938880, off_1008D41A8, &protocol conformance descriptor for NSObject);
        v63 = v604;
        *(v62 + 32) = v604;
        v597 = v30;
        v71 = NSPredicate.init(format:_:)();
        v614 = _swiftEmptySetSingleton;
        v616 = &_swiftEmptyArrayStorage;
        if (v61 >> 62)
        {
          v72 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v72 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v73 = &_swiftEmptyArrayStorage;
        if (v72)
        {
          v607 = v71;
          v609 = v58;
          v74 = 0;
          while (1)
          {
            if ((v61 & 0xC000000000000001) != 0)
            {
              v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v74 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_142;
              }

              v75 = *(v61 + 8 * v74 + 32);
            }

            v76 = v75;
            v30 = (v74 + 1);
            if (__OFADD__(v74, 1))
            {
              break;
            }

            if ([v75 isConcealed])
            {
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            ++v74;
            if (v30 == v72)
            {
              v73 = v616;
              v63 = v604;
              v71 = v607;
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

LABEL_41:
        v61, v64, v65, v66, v67, v68, v69, v70;
        v92 = v71;
        v93 = v2;
        sub_100390D84(v73, v92, v93, &v614);
        v589[1] = 0;
        v94 = v93;

        v591 = v92;

        v95 = [(RDXPCStorePerformer *)v93 ckZoneOwnerName];
        v598 = v93;
        if (v95)
        {

          v616 = 0;
          v617 = 0xE000000000000000;
          _StringGuts.grow(_:)(171);
          v96._countAndFlagsBits = 0xD0000000000000A8;
          v96._object = 0x80000001007F5F60;
          String.append(_:)(v96);
          v97 = [(RDXPCStorePerformer *)v93 remObjectID];
          if (v97)
          {
            v98 = v97;
            v99 = [v97 description];

            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v102 = v101;
          }

          else
          {
            v102 = 0xE300000000000000;
            v100 = 7104878;
          }

          v147._countAndFlagsBits = v100;
          v147._object = v102;
          String.append(_:)(v147);
          v102, v148, v149, v150, v151, v152, v153, v154;
          v155._countAndFlagsBits = 125;
          v155._object = 0xE100000000000000;
          String.append(_:)(v155);
          v156 = v617;
          v157 = objc_opt_self();
          v158 = String._bridgeToObjectiveC()();
          v159 = String._bridgeToObjectiveC()();
          v160 = String._bridgeToObjectiveC()();
          v156, v161, v162, v163, v164, v165, v166, v167;
          [v157 faultAndPromptToFileRadarWithICTap2RadarType:4 title:v158 description:v159 logMessage:v160];

          v94 = v598;
        }

        v613 = &_swiftEmptyArrayStorage;
        v168 = [v63 reminders];
        if (v168)
        {
          v616 = v168;
          v176 = v168;
          v177 = Sequence.elements<A>(ofType:)();

          v2 = v177;
          if (v177 >> 62)
          {
            v186 = _CocoaArrayWrapper.endIndex.getter();
            if (v186)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v186 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v186)
            {
LABEL_59:
              v187 = 0;
              v602 = v2 & 0xC000000000000001;
              v596 = v2 & 0xFFFFFFFFFFFFFF8;
              v595 = (v2 + 32);
              v607 = (v606 + 16);
              v609 = (v606 + 8);
              v593 = 0x80000001007F5F40;
              v188 = &_swiftEmptyArrayStorage;
              *&v185 = 136446466;
              v592 = v185;
              *&v185 = 136446722;
              v590 = v185;
              v594 = &_swiftEmptyArrayStorage;
              v599 = v2;
              v601 = v186;
              while (1)
              {
                if (v602)
                {
                  v189 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v190 = __OFADD__(v187++, 1);
                  if (v190)
                  {
                    goto LABEL_143;
                  }
                }

                else
                {
                  if (v187 >= *(v596 + 16))
                  {
                    goto LABEL_144;
                  }

                  v189 = *&v595[8 * v187];
                  v190 = __OFADD__(v187++, 1);
                  if (v190)
                  {
                    goto LABEL_143;
                  }
                }

                v191 = v189;
                if ([v191 isConcealed])
                {
                  break;
                }

                v202 = [v191 identifier];
                if (v202)
                {
                  v600 = v191;
                  v605 = v187;
                  v603 = v188;
                  v203 = v202;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v204 = v614;
                  if (*v614->clientIdentity && (sub_1003932B0(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v205 = dispatch thunk of Hashable._rawHashValue(seed:)(), v206 = -1 << v204->clientIdentity[16], v207 = v205 & ~v206, ((*&v204->clientIdentity[((v207 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v207) & 1) != 0))
                  {
                    v208 = ~v206;
                    v209 = *(v606 + 72);
                    v30 = *(v606 + 16);
                    while (1)
                    {
                      v211 = v610;
                      v210 = v611;
                      (v30)(v610, *&v204->clientIdentity[32] + v209 * v207, v611);
                      sub_1003932B0(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                      v212 = dispatch thunk of static Equatable.== infix(_:_:)();
                      isa = v609->super.super.isa;
                      (v609->super.super.isa)(v211, v210);
                      if (v212)
                      {
                        break;
                      }

                      v207 = (v207 + 1) & v208;
                      if (((*&v204->clientIdentity[((v207 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v207) & 1) == 0)
                      {
                        goto LABEL_81;
                      }
                    }

                    v276 = v600;

                    isa(v612, v611);
                    v63 = v604;
                    v188 = v603;
                    v2 = v599;
                    v186 = v601;
                  }

                  else
                  {
LABEL_81:
                    if (qword_100935F30 != -1)
                    {
                      swift_once();
                    }

                    v214 = type metadata accessor for Logger();
                    sub_100006654(v214, qword_100942E20);
                    v215 = v597;
                    v30 = v598;
                    v216 = v600;
                    v217 = Logger.logObject.getter();
                    v218 = static os_log_type_t.info.getter();

                    v219 = os_log_type_enabled(v217, v218);
                    v188 = v603;
                    v186 = v601;
                    if (v219)
                    {
                      v220 = swift_slowAlloc();
                      v600 = swift_slowAlloc();
                      v616 = v600;
                      *v220 = v590;
                      v221 = [v216 remObjectID];
                      if (v221)
                      {
                        v222 = v221;
                        v223 = [v221 description];

                        v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v226 = v225;
                      }

                      else
                      {
                        v226 = 0xE300000000000000;
                        v224 = 7104878;
                      }

                      v277 = sub_10000668C(v224, v226, &v616);
                      v226, v278, v279, v280, v281, v282, v283, v284;
                      *(v220 + 4) = v277;
                      *(v220 + 12) = 2082;
                      v285 = [v604 remObjectID];
                      if (v285)
                      {
                        v286 = v285;
                        v287 = [v285 description];

                        v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v290 = v289;
                      }

                      else
                      {
                        v290 = 0xE300000000000000;
                        v288 = 7104878;
                      }

                      v291 = sub_10000668C(v288, v290, &v616);
                      v290, v292, v293, v294, v295, v296, v297, v298;
                      *(v220 + 14) = v291;
                      *(v220 + 22) = 2082;
                      v299 = [(REMCDObject *)v30 remObjectID];
                      if (v299)
                      {
                        v300 = v299;
                        v301 = [(REMObjectID *)v299 description];

                        v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v304 = v303;
                      }

                      else
                      {
                        v304 = 0xE300000000000000;
                        v302 = 7104878;
                      }

                      v186 = v601;
                      v305 = sub_10000668C(v302, v304, &v616);
                      v304, v306, v307, v308, v309, v310, v311, v312;
                      *(v220 + 24) = v305;
                      _os_log_impl(&_mh_execute_header, v217, v218, "MERGE.LOCAL: ...this local reminder is not matched/merged so we're adding it to the list {local.reminder: %{public}s, local.list: %{public}s, cloud.list: %{public}s}", v220, 0x20u);
                      swift_arrayDestroy();
                    }

                    v313 = v604;
                    v314 = [v216 ckZoneOwnerName];
                    if (v314)
                    {

                      v616 = 0;
                      v617 = 0xE000000000000000;
                      _StringGuts.grow(_:)(19);
                      v617, v315, v316, v317, v318, v319, v320, v321;
                      v616 = 123;
                      v617 = 0xE100000000000000;
                      v322 = [v216 remObjectID];
                      if (v322)
                      {
                        v323 = v322;
                        v324 = [v322 description];

                        v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v327 = v326;
                      }

                      else
                      {
                        v327 = 0xE300000000000000;
                        v325 = 7104878;
                      }

                      v328._countAndFlagsBits = v325;
                      v328._object = v327;
                      String.append(_:)(v328);
                      v327, v329, v330, v331, v332, v333, v334, v335;
                      v336._countAndFlagsBits = 0x614E72656E776F20;
                      v336._object = 0xED0000203D20656DLL;
                      String.append(_:)(v336);
                      v337 = [v216 ckZoneOwnerName];

                      if (v337)
                      {
                        v338 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v340 = v339;
                      }

                      else
                      {
                        v338 = 0;
                        v340 = 0;
                      }

                      v615[0] = v338;
                      v615[1] = v340;
                      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
                      v341._countAndFlagsBits = String.init<A>(describing:)();
                      object = v341._object;
                      String.append(_:)(v341);
                      object, v343, v344, v345, v346, v347, v348, v349;
                      v350._countAndFlagsBits = 125;
                      v350._object = 0xE100000000000000;
                      String.append(_:)(v350);
                      v351 = v616;
                      v352 = v617;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v188 = sub_100365788(0, *v188->clientIdentity + 1, 1, v188, v353, v354, v355, v356);
                      }

                      v358 = *v188->clientIdentity;
                      v357 = *&v188->clientIdentity[8];
                      if (v358 >= v357 >> 1)
                      {
                        v188 = sub_100365788((v357 > 1), v358 + 1, 1, v188, v353, v354, v355, v356);
                      }

                      *v188->clientIdentity = v358 + 1;
                      v359 = v188 + 16 * v358;
                      *(v359 + 4) = v351;
                      *(v359 + 5) = v352;
                      v313 = v604;
                    }

                    else
                    {
                    }

                    [v313 removeRemindersObject:v216];
                    [(REMCDObject *)v30 addRemindersObject:v216];
                    [v216 setList:v30];
                    v360 = [v216 createResolutionTokenMapIfNecessary];
                    v361 = String._bridgeToObjectiveC()();
                    v362 = [v360 getTokenForKey:v361];

                    [v362 update];
                    [v216 updateChangeCount];
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((v613 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v613 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                    (v609->super.super.isa)(v612, v611);
                    v594 = v613;
                    v63 = v604;
                    v2 = v599;
                  }

                  v187 = v605;
                  if (v605 == v186)
                  {
                    goto LABEL_149;
                  }
                }

                else
                {

LABEL_62:
                  if (v187 == v186)
                  {
                    goto LABEL_149;
                  }
                }
              }

              v605 = v187;

              if (qword_100935F30 != -1)
              {
                swift_once();
              }

              v192 = type metadata accessor for Logger();
              sub_100006654(v192, qword_100942E20);
              v191 = v191;
              v193 = Logger.logObject.getter();
              v194 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v193, v194))
              {
                v195 = swift_slowAlloc();
                v600 = swift_slowAlloc();
                v615[0] = v600;
                *v195 = v592;
                v196 = [v191 remObjectID];
                v603 = v188;
                if (v196)
                {
                  v197 = v196;
                  v198 = [v196 description];

                  v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v201 = v200;
                }

                else
                {
                  v201 = 0xE300000000000000;
                  v199 = 7104878;
                }

                v227 = sub_10000668C(v199, v201, v615);
                v201, v228, v229, v230, v231, v232, v233, v234;
                *(v195 + 4) = v227;
                *(v195 + 12) = 2082;
                v616 = 0;
                v617 = 0xE000000000000000;
                _StringGuts.grow(_:)(49);
                v617, v235, v236, v237, v238, v239, v240, v241;
                v616 = 0xD00000000000001FLL;
                v617 = v593;
                v242 = [v191 markedForDeletion];
                v243 = v242 == 0;
                if (v242)
                {
                  v244 = 1702195828;
                }

                else
                {
                  v244 = 0x65736C6166;
                }

                v30 = 0xE500000000000000;
                if (v243)
                {
                  v245 = 0xE500000000000000;
                }

                else
                {
                  v245 = 0xE400000000000000;
                }

                v246 = v245;
                String.append(_:)(*&v244);
                v245, v247, v248, v249, v250, v251, v252, v253;
                v254._countAndFlagsBits = 0x707075736E75202CLL;
                v254._object = 0xEE003D646574726FLL;
                String.append(_:)(v254);
                v255 = [v191 isUnsupported];
                v256 = v255 == 0;
                if (v255)
                {
                  v257 = 1702195828;
                }

                else
                {
                  v257 = 0x65736C6166;
                }

                if (v256)
                {
                  v258 = 0xE500000000000000;
                }

                else
                {
                  v258 = 0xE400000000000000;
                }

                v259 = v258;
                String.append(_:)(*&v257);
                v258, v260, v261, v262, v263, v264, v265, v266;
                v267 = v617;
                v268 = sub_10000668C(v616, v617, v615);
                v267, v269, v270, v271, v272, v273, v274, v275;
                *(v195 + 14) = v268;
                _os_log_impl(&_mh_execute_header, v193, v194, "MERGE.LOCAL: ...deleting isConcealed local reminder permanently {reminder: %{public}s %{public}s}", v195, 0x16u);
                swift_arrayDestroy();

                v63 = v604;
                v187 = v605;
                v2 = v599;
                v186 = v601;
                v188 = v603;
              }

              else
              {

                v187 = v605;
              }

              [v63 removeRemindersObject:v191];
              [v608 deleteObject:v191];
              goto LABEL_62;
            }
          }

          v188 = &_swiftEmptyArrayStorage;
          v594 = &_swiftEmptyArrayStorage;
LABEL_149:
          v2, v178, v179, v180, v181, v182, v183, v184;
          v363 = v188;
          v94 = v598;
          v364 = v594;
        }

        else
        {
          v363 = &_swiftEmptyArrayStorage;
          v364 = &_swiftEmptyArrayStorage;
        }

        v603 = v363;
        if (*v363->clientIdentity)
        {
          v616 = &off_1008E2CC8;
          v397 = v603;

          sub_100271EA8(v398);
          v399 = String._bridgeToObjectiveC()();
          if (*v397->clientIdentity)
          {
            v400 = *&v397->clientIdentity[24];
          }

          else
          {
            v400 = 0xE000000000000000;
          }

          v401 = objc_opt_self();
          v402 = String._bridgeToObjectiveC()();
          v400, v403, v404, v405, v406, v407, v408, v409;
          v410 = v616;
          v615[0] = v616;
          sub_1000F5104(&unk_10093B300, &unk_100797780);
          sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
          BidirectionalCollection<>.joined(separator:)();
          v412 = v411;
          v410, v411, v413, v414, v415, v416, v417, v418;
          v419 = String._bridgeToObjectiveC()();
          v412, v420, v421, v422, v423, v424, v425, v426;
          [v401 faultAndPromptToFileRadarWithICTap2RadarType:4 title:v399 description:v402 logMessage:v419];

          v63 = v604;
          v94 = v598;
        }

        if (v364 >> 62)
        {
LABEL_191:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_192;
          }
        }

        else if (!*((v364 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_192;
        }

        v427 = [(RDXPCStorePerformer *)v94 reminderIDsMergeableOrdering];
        if (v427)
        {
          v428 = v427;
          v429 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v431 = v430;

          v432 = objc_opt_self();
          v433 = Data._bridgeToObjectiveC()().super.isa;
          v616 = 0;
          v434 = [v432 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:v433 error:&v616];

          v435 = v616;
          if (v434)
          {
            v610 = v432;
            v612 = v431;
            v615[0] = v434;
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v436 = v435;
            v616 = Sequence.elements<A>(ofType:)();
            v615[0] = &_swiftEmptyArrayStorage;
            v611 = v429;
            v63 = (v364 & 0xFFFFFFFFFFFFFF8);
            if (v364 >> 62)
            {
              v444 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v444 = *((v364 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v445 = 0;
            v94 = v364;
            v446 = v364 & 0xC000000000000001;
            v447 = &_swiftEmptyArrayStorage;
            while (v444 != v445)
            {
              if (v446)
              {
                v448 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v445 >= v63[2])
                {
                  goto LABEL_190;
                }

                v448 = *&v94->clientIdentity[8 * v445 + 16];
              }

              v449 = v448;
              v450 = v445 + 1;
              if (__OFADD__(v445, 1))
              {
                __break(1u);
LABEL_190:
                __break(1u);
                goto LABEL_191;
              }

              v364 = [v448 remObjectID];

              ++v445;
              if (v364)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v615[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v615[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v447 = v615[0];
                v445 = v450;
              }
            }

            v94, v437, v438, v439, v440, v441, v442, v443;
            v603, v451, v452, v453, v454, v455, v456, v457;
            sub_100271578(v447);
            if (qword_100935F30 != -1)
            {
              swift_once();
            }

            v458 = type metadata accessor for Logger();
            sub_100006654(v458, qword_100942E20);
            v459 = v598;
            v460 = Logger.logObject.getter();
            v461 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v460, v461))
            {
              v462 = swift_slowAlloc();
              v463 = swift_slowAlloc();
              v615[0] = v463;
              *v462 = 136446210;
              v464 = [(RDXPCStorePerformer *)v459 remObjectID];
              if (v464)
              {
                v465 = v464;
                v466 = [v464 description];

                v467 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v469 = v468;
              }

              else
              {
                v469 = 0xE300000000000000;
                v467 = 7104878;
              }

              v485 = sub_10000668C(v467, v469, v615);
              v469, v486, v487, v488, v489, v490, v491, v492;
              *(v462 + 4) = v485;
              _os_log_impl(&_mh_execute_header, v460, v461, "MERGE.LOCAL: ...updating reminderIDs ordering and re-sorting with added reminders {list: %{public}s}", v462, 0xCu);
              sub_10000607C(v463);
            }

            v493 = v616;
            v494 = sub_100270964(v616);
            v493, v495, v496, v497, v498, v499, v500, v501;
            v502 = objc_allocWithZone(NSOrderedSet);
            v503 = Array._bridgeToObjectiveC()().super.isa;
            v494, v504, v505, v506, v507, v508, v509, v510;
            v511 = [v502 initWithArray:v503];

            v615[0] = 0;
            v512 = [v610 reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v511 error:v615];
            v513 = v615[0];
            if (v512)
            {
              v514 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v516 = v515;

              v517 = Data._bridgeToObjectiveC()().super.isa;
              [(RDXPCStorePerformer *)v459 setReminderIDsMergeableOrdering:v517];

              v518 = [(RDXPCStorePerformer *)v459 createResolutionTokenMapIfNecessary];
              v519 = String._bridgeToObjectiveC()();
              v520 = [v518 getTokenForKey:v519];

              [v520 update];
              sub_100357A8C(v511, 0);
              sub_10001BBA0(v611, v612);

              sub_10001BBA0(v514, v516);
              v63 = v604;
              goto LABEL_188;
            }

            v521 = v513;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_10001BBA0(v611, v612);

            v63 = v604;
          }

          else
          {
            v470 = v616;
            v364, v471, v472, v473, v474, v475, v476, v477;
            v603, v478, v479, v480, v481, v482, v483, v484;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_10001BBA0(v429, v431);
          }

          if (qword_100935F30 != -1)
          {
            swift_once();
          }

          v522 = type metadata accessor for Logger();
          sub_100006654(v522, qword_100942E20);
          swift_errorRetain();
          v523 = Logger.logObject.getter();
          v524 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v523, v524))
          {
            v525 = swift_slowAlloc();
            v526 = swift_slowAlloc();
            v616 = v526;
            *v525 = 136315138;
            swift_getErrorValue();
            v527 = Error.localizedDescription.getter();
            v529 = v528;
            v530 = sub_10000668C(v527, v528, &v616);
            v529, v531, v532, v533, v534, v535, v536, v537;
            *(v525 + 4) = v530;
            _os_log_impl(&_mh_execute_header, v523, v524, "MERGE.LOCAL: Error decoding reminder IDs ordered set and thus not able to add local reminders and sort child reminders {error : %s}", v525, 0xCu);
            sub_10000607C(v526);

            v63 = v604;
          }

          else
          {
          }

LABEL_188:
          v94 = v598;
          goto LABEL_193;
        }

LABEL_192:
        v364, v169, v170, v171, v172, v173, v174, v175;
        v603, v538, v539, v540, v541, v542, v543, v544;
LABEL_193:
        [(RDXPCStorePerformer *)v94 updateChangeCount];
        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v545 = type metadata accessor for Logger();
        sub_100006654(v545, qword_100942E20);
        v546 = v597;
        v547 = v94;
        v548 = Logger.logObject.getter();
        v549 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v548, v549))
        {
          v550 = swift_slowAlloc();
          v616 = swift_slowAlloc();
          *v550 = 136446466;
          v551 = [v63 remObjectID];
          if (v551)
          {
            v552 = v551;
            v553 = [v551 description];

            v554 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v556 = v555;
          }

          else
          {
            v556 = 0xE300000000000000;
            v554 = 7104878;
          }

          v557 = sub_10000668C(v554, v556, &v616);
          v556, v558, v559, v560, v561, v562, v563, v564;
          *(v550 + 4) = v557;
          *(v550 + 12) = 2082;
          v565 = [(RDXPCStorePerformer *)v547 remObjectID];
          if (v565)
          {
            v566 = v565;
            v567 = [v565 description];

            v568 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v570 = v569;
          }

          else
          {
            v570 = 0xE300000000000000;
            v568 = 7104878;
          }

          v571 = sub_10000668C(v568, v570, &v616);
          v570, v572, v573, v574, v575, v576, v577, v578;
          *(v550 + 14) = v571;
          _os_log_impl(&_mh_execute_header, v548, v549, "MERGE.LOCAL: ...done merging local list to the cloud list, now delete the local object {local.list: %{public}s, cloud.list: %{public}s}", v550, 0x16u);
          swift_arrayDestroy();

          v63 = v604;
        }

        else
        {
        }

        v579 = [v63 parentAccount];
        [v579 removeListsObject:v63];

        v580 = v608;
        [v608 deleteObject:v63];

        v614, v581, v582, v583, v584, v585, v586, v587;
LABEL_205:
        LOBYTE(v27) = 1;
        return v27;
      }

      sub_1000050A4(v21, &unk_100939D90, "8\n\r");
      sub_1000050A4(v26, &unk_100939D90, "8\n\r");
      (*(v606 + 8))(v17, v50);
      v30 = v609;
    }

    sub_1000050A4(v13, &unk_10093A3D0, &qword_100795770);
    goto LABEL_20;
  }

  return v27;
}