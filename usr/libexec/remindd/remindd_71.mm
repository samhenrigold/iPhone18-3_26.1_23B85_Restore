uint64_t sub_1006627DC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_10036693C(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_10036693C((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F690, &qword_1007B5160);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F698, &qword_1007B5168);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&unk_10094F6A0, &qword_1007A4360);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067C684(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A612C(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019D780(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368BFC(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066E800(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_1006990C8(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006630D4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100367758(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100367758((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F440, &qword_1007B4FB8);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F448, &unk_1007B4FC0);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_100943710, &qword_1007A4010);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067CA04(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A641C(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019DEA8(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368C10(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066EBBC(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_100699338(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006639CC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003677A0(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003677A0((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F478, &qword_1007B4FE0);
  v182[0] = v6;
  sub_1000F5104(&unk_10094F480, &unk_1007B4FE8);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_100943750, &qword_1007A4050);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067CD84(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A644C(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019DF10(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368C24(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066EF78(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_1006995A8(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006642C4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003677E8(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003677E8((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F4B0, &qword_1007B5008);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F4B8, &qword_1007B5010);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_100943790, &qword_1007A4080);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067D104(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A647C(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019DF78(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368C38(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066F334(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_100699818(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100664BBC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100367830(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100367830((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F4E8, &qword_1007B5030);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F4F0, &qword_1007B5038);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_1009437D0, &qword_1007A40C0);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067D484(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A64AC(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019DFE0(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368C4C(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066F6F0(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_10069C030(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006654B4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100367878(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100367878((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F520, &qword_1007B5058);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F528, &qword_1007B5060);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_100943810, &qword_1007A40F0);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067D804(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A64DC(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019E048(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368C60(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066FAAC(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_10069E26C(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100665DAC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003678C0(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003678C0((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F588, &qword_1007B50A8);
  v182[0] = v6;
  sub_1000F5104(&unk_10094F590, &unk_1007B50B0);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_100943890, &qword_1007A4160);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067DB84(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A650C(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019E0B0(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368C74(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066FE68(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_1006A0738(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006666A4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v197 = a2;
  v191 = a1;
  if (v5)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v195 = v6;
      v9 = v7;
      while (1)
      {
        if (v9 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_101;
        }

        v10 = *(v8 + 8 * v9);
        v11 = a2[6];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v2 = v10;

          v12 = __CocoaDictionary.lookup(_:)();

          if (!v12)
          {
            goto LABEL_16;
          }

          v199 = v12;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v198[0];
        }

        else
        {
          v2 = *(v11 + 16);
          v28 = v10;
          if (!v2)
          {
            goto LABEL_17;
          }

          v29 = v28;

          v30 = sub_10002B924(v29);
          if ((v13 & 1) == 0)
          {
LABEL_16:
            v11, v13, v14, v15, v16, v17, v18, v19;
            goto LABEL_17;
          }

          v27 = *(*(v11 + 56) + 8 * v30);
        }

        v11, v20, v21, v22, v23, v24, v25, v26;
        if (v27)
        {
          break;
        }

LABEL_17:
        v31 = a2[5];
        if ((v31 & 0xC000000000000001) != 0)
        {
          if (v31 < 0)
          {
            v2 = a2[5];
          }

          else
          {
            v2 = v31 & 0xFFFFFFFFFFFFFF8;
          }

          v32 = v10;

          v33 = __CocoaDictionary.lookup(_:)();

          if (v33)
          {
            v199 = v33;
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            swift_dynamicCast();
            v27 = v198[0];
            v31, v41, v42, v43, v44, v45, v46, v47;
            a2 = v197;
            if (v198[0])
            {
              break;
            }
          }

          else
          {
            v31, v34, v35, v36, v37, v38, v39, v40;
            a2 = v197;
          }

          goto LABEL_5;
        }

        if (*(v31 + 16))
        {

          v48 = sub_10002B924(v10);
          if ((v49 & 1) == 0)
          {
            v31, v49, v50, v51, v52, v53, v54, v55;
            goto LABEL_5;
          }

          v27 = *(*(v31 + 56) + 8 * v48);
          v31, v56, v57, v58, v59, v60, v61, v62;
          if (v27)
          {
            break;
          }
        }

LABEL_5:

        ++v9;
        if (v7 == v5)
        {
          v6 = v195;
          goto LABEL_36;
        }
      }

      v6 = v195;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100367DCC(0, (*v195->clientIdentity + 1), 1, v195);
      }

      v2 = *v6->clientIdentity;
      v63 = *&v6->clientIdentity[8];
      if (v2 >= v63 >> 1)
      {
        v6 = sub_100367DCC((v63 > 1), (v2 + 1), 1, v6);
      }

      *v6->clientIdentity = v2 + 1;
      v64 = v6 + 16 * v2;
      *(v64 + 4) = v10;
      *(v64 + 5) = v27;
    }

    while (v7 != v5);
  }

LABEL_36:
  v198[3] = sub_1000F5104(&qword_10094F608, &qword_1007B5118);
  v198[0] = v6;
  sub_1000F5104(&unk_10094F610, &qword_1007B5120);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v193;
  sub_10000607C(v198);
  if (v193)
  {
    return v5;
  }

  v66 = v199;
  v67 = *(v199 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_100943940, &unk_1007A41F0);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v198[0] = v68;

  sub_10067DF04(v69, 1, v198, v70, v71, v72, v73, v74);
  v5 = v198[0];

  v76 = sub_1001A66D8(v75);
  v191, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v198[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v198[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E118(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_103;
  }

LABEL_47:
  v108 = type metadata accessor for Logger();
  sub_100006654(v108, qword_100945730);

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 134217984;
    *(v111 + 4) = a2[2];

    _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

    v112 = a2[2];
    if (!v112)
    {
      goto LABEL_51;
    }
  }

  else
  {

    v112 = a2[2];
    if (!v112)
    {
LABEL_51:

      return v5;
    }
  }

  v113 = sub_100368CB0(v112, 0);
  v114 = sub_10027DC58();
  sub_10001B860(v198[0]);
  if (v114 == v112)
  {
    a2 = v197;
    v115 = sub_100670224(v113, v197[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v198[0] = v5;
    sub_100682460(v115, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v198);
    v115, v117, v118, v119, v120, v121, v122, v123;
    v190 = v198[0];
    v124 = &v115->storeProvider[2];
    v125 = 1 << v115->clientIdentity[16];
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    else
    {
      v126 = -1;
    }

    v2 = v126 & *&v115->storeProvider[2];
    v5 = (v125 + 63) >> 6;

    v127 = 0;
    v192 = v115;
    while (1)
    {
      if (!v2)
      {
        while (1)
        {
          v132 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            break;
          }

          if (v132 >= v5)
          {

            v115, v180, v181, v182, v183, v184, v185, v186;
            return v190;
          }

          v2 = *&v124[8 * v132];
          ++v127;
          if (v2)
          {
            v127 = v132;
            goto LABEL_65;
          }
        }

LABEL_102:
        __break(1u);
LABEL_103:
        swift_once();
        goto LABEL_47;
      }

LABEL_65:
      v133 = (v127 << 9) | (8 * __clz(__rbit64(v2)));
      v134 = *(*&v115->clientIdentity[32] + v133);
      v135 = *(*&v115->clientIdentity[40] + v133);
      swift_beginAccess();
      v136 = a2[5];
      v196 = v135;
      if ((v136 & 0xC000000000000001) != 0)
      {
        if (v136 < 0)
        {
          v137 = a2[5];
        }

        else
        {
          v137 = v136 & 0xFFFFFFFFFFFFFF8;
        }

        v138 = v135;
        v139 = v134;
        v140 = __CocoaDictionary.count.getter();
        if (__OFADD__(v140, 1))
        {
          goto LABEL_106;
        }

        a2[5] = sub_10021CDBC(v137, v140 + 1);
      }

      else
      {
        v141 = v135;
        v142 = v134;
      }

      v143 = swift_isUniquelyReferenced_nonNull_native();
      v144 = a2;
      v145 = a2[5];
      v199 = v145;
      v144[5] = 0x8000000000000000;
      v194 = v134;
      v146 = sub_10002B924(v134);
      v148 = *(v145 + 16);
      v149 = (v147 & 1) == 0;
      v150 = __OFADD__(v148, v149);
      v151 = v148 + v149;
      if (v150)
      {
        __break(1u);
        goto LABEL_105;
      }

      v152 = v147;
      if (*(v145 + 24) < v151)
      {
        break;
      }

      if (v143)
      {
        v153 = v145;
        goto LABEL_78;
      }

      v188 = v146;
      sub_1000F5104(&unk_10094F620, &unk_1007A3C40);
      v158 = static _DictionaryStorage.copy(original:)();
      v153 = v158;
      if (*(v145 + 16))
      {
        v166 = (v158 + 64);
        v167 = ((1 << *(v153 + 32)) + 63) >> 6;
        if (v153 != v145 || v166 >= v145 + 64 + 8 * v167)
        {
          memmove(v166, (v145 + 64), 8 * v167);
        }

        v168 = 0;
        *(v153 + 16) = *(v145 + 16);
        v169 = 1 << *(v145 + 32);
        if (v169 < 64)
        {
          v170 = ~(-1 << v169);
        }

        else
        {
          v170 = -1;
        }

        v187 = (v169 + 63) >> 6;
        v171 = v170 & *(v145 + 64);
        if (v171)
        {
          do
          {
            v172 = __clz(__rbit64(v171));
            v189 = (v171 - 1) & v171;
LABEL_95:
            v175 = v172 | (v168 << 6);
            v176 = *(*(v145 + 48) + 8 * v175);
            v177 = *(*(v145 + 56) + 8 * v175);
            *(*(v153 + 48) + 8 * v175) = v176;
            *(*(v153 + 56) + 8 * v175) = v177;
            v178 = v176;
            v179 = v177;
            v171 = v189;
          }

          while (v189);
        }

        v173 = v168;
        while (1)
        {
          v168 = v173 + 1;
          if (__OFADD__(v173, 1))
          {
            goto LABEL_108;
          }

          if (v168 >= v187)
          {
            break;
          }

          v174 = *(v145 + 64 + 8 * v168);
          ++v173;
          if (v174)
          {
            v172 = __clz(__rbit64(v174));
            v189 = (v174 - 1) & v174;
            goto LABEL_95;
          }
        }
      }

      v145, v159, v160, v161, v162, v163, v164, v165;
      v146 = v188;
      a2 = v197;
      if (v152)
      {
LABEL_58:
        v128 = *(v153 + 56);
        v129 = *(v128 + 8 * v146);
        v130 = v196;
        *(v128 + 8 * v146) = v196;

        v115 = v192;
        v131 = v194;
        goto LABEL_59;
      }

LABEL_79:
      *(v153 + 8 * (v146 >> 6) + 64) |= 1 << v146;
      v131 = v194;
      *(*(v153 + 48) + 8 * v146) = v194;
      *(*(v153 + 56) + 8 * v146) = v196;
      v155 = *(v153 + 16);
      v150 = __OFADD__(v155, 1);
      v156 = v155 + 1;
      if (v150)
      {
        goto LABEL_107;
      }

      *(v153 + 16) = v156;
      v157 = v194;
      v115 = v192;
      v130 = v196;
LABEL_59:
      v2 &= v2 - 1;
      a2[5] = v153;
      swift_endAccess();
    }

    sub_10036CA94(v151, v143);
    v153 = v199;
    v146 = sub_10002B924(v194);
    if ((v152 & 1) != (v154 & 1))
    {
      goto LABEL_109;
    }

LABEL_78:
    a2 = v197;
    if (v152)
    {
      goto LABEL_58;
    }

    goto LABEL_79;
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_109:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006670C8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100367DF0(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100367DF0((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F100, &qword_1007B4CE0);
  v167[0] = v6;
  sub_1000F5104(&qword_10094F108, &qword_1007B4CE8);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_100943250, &unk_1007B4CF0);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067E284(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6708(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E180(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368CC4(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_1006705DC(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A2C24(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100667998(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100367E38(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100367E38((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F178, &qword_1007B4D68);
  v167[0] = v6;
  sub_1000F5104(&qword_10094F180, &unk_1007B4D70);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_1009432E0, &qword_1007A3CB8);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067E604(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6738(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E1E8(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368CD8(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_100670994(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A2E94(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100668268(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003686FC(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003686FC((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F818, &qword_1007B5200);
  v167[0] = v6;
  sub_1000F5104(&qword_10094F820, &qword_1007B5208);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_100943FF0, &unk_1007B5210);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067E984(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6BE0(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E250(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368E10(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_100670D4C(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A3104(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100668B38(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368768(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100368768((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F1C0, &qword_1007B4DA8);
  v167[0] = v6;
  sub_1000F5104(&qword_10094F1C8, &unk_1007B4DB0);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_1009433C0, &qword_1007A3D70);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067ED04(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6C40(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E2B8(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368E24(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_1006710F4(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A3374(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100669408(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003687B0(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003687B0((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F200, &qword_1007B4DE0);
  v167[0] = v6;
  sub_1000F5104(&qword_10094F208, &unk_1007B4DE8);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_100943410, &qword_1007A3DB0);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067F084(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6C70(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E320(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368E38(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_10067149C(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A35E4(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100669CD8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003687F8(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003687F8((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F248, &qword_1007B4E18);
  v167[0] = v6;
  sub_1000F5104(&unk_10094F250, &unk_1007B4E20);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_100943460, &qword_1007A3E00);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067F404(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6CA0(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E388(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368E4C(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_100671844(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A3854(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066A5A8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368840(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100368840((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F288, &qword_1007B4E50);
  v167[0] = v6;
  sub_1000F5104(&unk_10094F290, &unk_1007B4E58);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_1009434B0, &qword_1007A3E40);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067F784(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6CD0(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E3F0(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368E60(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_100671BEC(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A3AC4(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066AE78(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368888(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100368888((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F330, &qword_1007B4EE0);
  v167[0] = v6;
  sub_1000F5104(&qword_10094F338, &qword_1007B4EE8);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_10094F340, &qword_1007B4EF0);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067FB04(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6D00(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E458(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368E74(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_100671F94(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A3D34(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066B748(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003688D0(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003688D0((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F378, &qword_1007B4F20);
  v167[0] = v6;
  sub_1000F5104(&unk_10094F380, &qword_1007B4F28);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_100943608, &qword_1007B4F30);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_10067FE84(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6D30(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E4C0(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368E88(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_10067234C(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A3FA4(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066C018(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368918(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100368918((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F408, &qword_1007B4F90);
  v167[0] = v6;
  sub_1000F5104(&unk_10094F410, &unk_1007B4F98);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_1009436C0, &unk_1007A3FD0);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_100680204(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6D60(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E528(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_1003689F4(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_1006726F4(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A4214(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066C8E8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v166 = a2;
  v161 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v164 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_81;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v168 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v167[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v168 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v167[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v166;
          if (v167[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v166;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v164;
        goto LABEL_36;
      }
    }

    v6 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100368960(0, (*v164->clientIdentity + 1), 1, v164);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100368960((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v167[3] = sub_1000F5104(&qword_10094F5B8, &qword_1007B50D0);
  v167[0] = v6;
  sub_1000F5104(&unk_10094F5C0, &qword_1007B50D8);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v163;
  sub_10000607C(v167);
  if (v163)
  {
    return v5;
  }

  v66 = v168;
  v67 = *(v168 + 16);
  if (v67)
  {
    sub_1000F5104(&qword_1009438E8, &qword_1007B50E0);
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v167[0] = v68;

  sub_100680584(v69, 1, v167, v70, v71, v72, v73, v74);
  v5 = v167[0];

  v76 = sub_1001A6D90(v75);
  v161, v77, v78, v79, v80, v81, v82, v83;
  if (v67)
  {
    v167[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v91 = 32;
    do
    {
      v92 = *(&v66->super.isa + v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += 16;
      --v67;
    }

    while (v67);
    v66, v93, v94, v95, v96, v97, v98, v99;
    v100 = v167[0];
  }

  else
  {
    v66, v84, v85, v86, v87, v88, v89, v90;
    v100 = &_swiftEmptyArrayStorage;
  }

  a2 = sub_10019E590(v100, v76);
  v100, v101, v102, v103, v104, v105, v106, v107;
  if (qword_100936008 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100945730);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = a2[2];

      _os_log_impl(&_mh_execute_header, v109, v110, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v111, 0xCu);

      v112 = a2[2];
      if (!v112)
      {
        goto LABEL_51;
      }
    }

    else
    {

      v112 = a2[2];
      if (!v112)
      {
LABEL_51:

        return v5;
      }
    }

    v113 = sub_100368A08(v112, 0);
    a2 = sub_10027DC58();
    sub_10001B860(v167[0]);
    if (a2 != v112)
    {
      break;
    }

    v114 = sub_100672A9C(v113, v166[4]);

    if (v2)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v5;
    sub_1006A74BC(v114, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v167);
    v114, v116, v117, v118, v119, v120, v121, v122;
    v162 = v167[0];
    v123 = &v114->storeProvider[2];
    v124 = 1 << v114->clientIdentity[16];
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v2 = v125 & *&v114->storeProvider[2];
    v5 = (v124 + 63) >> 6;

    v126 = 0;
    v165 = v114;
    while (v2)
    {
LABEL_64:
      v130 = (v126 << 9) | (8 * __clz(__rbit64(v2)));
      a2 = *(*&v114->clientIdentity[32] + v130);
      v131 = *(*&v114->clientIdentity[40] + v130);
      swift_beginAccess();
      v132 = v166[5];
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 >= 0)
        {
          v132 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v133 = v131;
        v134 = a2;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_86;
        }

        v136 = v166;
        v166[5] = sub_10021CDBC(v132, v135 + 1);
      }

      else
      {
        v137 = v131;
        v138 = a2;
        v136 = v166;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v136[5];
      v140 = v168;
      v136[5] = 0x8000000000000000;
      v141 = sub_10002B924(a2);
      v143 = *(v140 + 16);
      v144 = (v142 & 1) == 0;
      v145 = __OFADD__(v143, v144);
      v146 = v143 + v144;
      if (v145)
      {
        __break(1u);
        goto LABEL_85;
      }

      v147 = v142;
      if (*(v140 + 24) >= v146)
      {
        if ((v139 & 1) == 0)
        {
          v153 = v141;
          sub_100374768();
          v141 = v153;
        }
      }

      else
      {
        sub_10036CA94(v146, v139);
        v141 = sub_10002B924(a2);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_88;
        }
      }

      v114 = v165;
      v149 = v168;
      if (v147)
      {
        v127 = *(v168 + 56);
        v128 = *(v127 + 8 * v141);
        *(v127 + 8 * v141) = v131;
      }

      else
      {
        *(v168 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        *(v149[6] + 8 * v141) = a2;
        *(v149[7] + 8 * v141) = v131;
        v150 = v149[2];
        v145 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v145)
        {
          goto LABEL_87;
        }

        v149[2] = v151;
        v152 = a2;
      }

      v2 &= v2 - 1;
      v166[5] = v149;
      swift_endAccess();
    }

    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= v5)
      {

        v114, v154, v155, v156, v157, v158, v159, v160;
        return v162;
      }

      v2 = *&v123[8 * v129];
      ++v126;
      if (v2)
      {
        v126 = v129;
        goto LABEL_64;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_88:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10066D1B8(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F0D0(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005ED4E4(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v80 = v10 & 0xFFFFFFFFFFFFFF8;
    v81 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v81)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v80 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v82 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v82];
      if (!v33)
      {
        v58 = v82;
        v10, v59, v60, v61, v62, v63, v64, v65;

        _convertNSErrorToError(_:)();
        swift_willThrow();
        v2, v66, v67, v68, v69, v70, v71, v72;
LABEL_29:

        return v2;
      }

      v34 = v33;
      v35 = v82;
      v36 = sub_1005E45B0(v34);
      if (v4)
      {
        v2, v37, v38, v39, v40, v41, v42, v43;
        v10, v73, v74, v75, v76, v77, v78, v79;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_10037477C();
          v47 = v57;
        }
      }

      else
      {
        sub_10036CAA8(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v82;
      v10 = v4;
      if (v53)
      {
        v28 = *&v82->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v82->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066D564(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F780(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005ED9D0(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
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
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &qword_10093CFE0, off_1008D4190);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100374A1C();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036CE54(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943860, &unk_100797FC0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066D920(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8AC(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EDECC(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v80 = v10 & 0xFFFFFFFFFFFFFF8;
    v81 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v81)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v80 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v82 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v82];
      if (!v33)
      {
        v58 = v82;
        v10, v59, v60, v61, v62, v63, v64, v65;

        _convertNSErrorToError(_:)();
        swift_willThrow();
        v2, v66, v67, v68, v69, v70, v71, v72;
LABEL_29:

        return v2;
      }

      v34 = v33;
      v35 = v82;
      v36 = sub_1005E5350(v34);
      if (v4)
      {
        v2, v37, v38, v39, v40, v41, v42, v43;
        v10, v73, v74, v75, v76, v77, v78, v79;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_100374FC4();
          v47 = v57;
        }
      }

      else
      {
        sub_10036D7D4(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&qword_10093A958, &qword_100797F70);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v82;
      v10 = v4;
      if (v53)
      {
        v28 = *&v82->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v82->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066DCCC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8C0(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EE8B4(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
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
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &qword_100940370, off_1008D4150);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10037517C();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036DAB4(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10094F7F0, &unk_100798000);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066E088(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8D4(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EEDB0(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
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
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &qword_100940360, off_1008D4138);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100375190();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036DAC8(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066E444(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8E8(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EF2AC(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
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
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &qword_100940350, off_1008D4130);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003751A4();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036DADC(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}