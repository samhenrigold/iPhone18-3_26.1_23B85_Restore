void sub_10015FB64(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v46 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
    v41 = &_swiftEmptyArrayStorage;
    if (v39)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v43 = v3;
    v44 = v4;
    v45 = v39 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v37 = v1 + 56;
      v36 = v1 + 64;
      v38 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v13 = v43;
        v14 = v45;
        v40 = v44;
        v15 = v1;
        sub_100411D58(v43, v44, v45, v1);
        v17 = v16;
        v18 = [v16 debugDescription];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = v41;
        v46 = v41;
        v24 = *v41->clientIdentity;
        v23 = *&v41->clientIdentity[8];
        if (v24 >= v23 >> 1)
        {
          sub_100026EF4((v23 > 1), v24 + 1, 1);
          v22 = v46;
        }

        *v22->clientIdentity = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 4) = v19;
        *(v25 + 5) = v21;
        v41 = v22;
        if (v39)
        {
          if (!v14)
          {
            goto LABEL_40;
          }

          v1 = v15;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v38;
          sub_1000F5104(&qword_100939EA0, &qword_100797250);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v42, 0);
          if (v5 == v38)
          {
LABEL_32:
            sub_100010E34(v43, v44, v45, v7, v8, v9, v10, v11);
            return;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_41;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v15;
          v26 = (1 << *(v15 + 32));
          if (v13 >= v26)
          {
            goto LABEL_36;
          }

          v27 = v13 >> 6;
          v28 = *(v37 + 8 * (v13 >> 6));
          if (((v28 >> v13) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v15 + 36) != v40)
          {
            goto LABEL_38;
          }

          v29 = v28 & (-2 << (v13 & 0x3F));
          if (v29)
          {
            v26 = (__clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0);
            v2 = v38;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v36 + 8 * v27);
            v2 = v38;
            while (v31 < &v26->storeProvider[1] >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_100010E34(v13, v40, 0, v7, v8, v9, v10, v11);
                v26 = (__clz(__rbit64(v33)) + v30);
                goto LABEL_31;
              }
            }

            sub_100010E34(v13, v40, 0, v7, v8, v9, v10, v11);
          }

LABEL_31:
          v35 = *(v15 + 36);
          v43 = v26;
          v44 = v35;
          v45 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10015FECC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939C00);
  v1 = sub_100006654(v0, qword_100939C00);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10015FFC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDXPCDebugPerformer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001601F4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for REMAccountSnapshotSummary();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40) != 1)
  {
    v11 = *(v1 + 8);
    v12 = *(*v1 + 16);
    if (v11 == v12)
    {
LABEL_9:
      *(v1 + 40) = 1;
      v17 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
      (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
      return;
    }

    if (v11 >= v12)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v4 + 16);
      v14 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11;
      *(v1 + 8) = v11 + 1;
      v13(v8, v14, v3, v6);
      v15 = *(v1 + 24);
      v16 = *(v1 + 32);
      if (v16 == v15)
      {
        (*(v4 + 8))(v8, v3);
        goto LABEL_9;
      }

      v18 = *(v1 + 16);
      if (v15 >= v18)
      {
        if (v16 >= v18)
        {
          if (v16 < v15)
          {
            *(v1 + 32) = v16 + 1;
            v19 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
            v20 = *(v19 + 48);
            (*(v4 + 32))(a1, v8, v3);
            *(a1 + v20) = v16;
            (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
            return;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v9 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
  v10 = *(*(v9 - 8) + 56);

  v10(a1, 1, 1, v9);
}

void sub_100160490(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_100189E50;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100160994;
  v11[3] = &unk_1008E7EE8;
  v9 = _Block_copy(v11);
  v10 = a2;

  [a1 statusReportWithCompletionBlock:v9];
  _Block_release(v9);
}

void sub_100160590(uint64_t a1, dispatch_group_t group, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {

    dispatch_group_leave(group);
    return;
  }

  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v86 = v9;
  v87 = v5;
  v88 = v10;
LABEL_7:
  if (v8)
  {
    v19 = v11;
  }

  else
  {
    do
    {
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_39;
      }

      if (v19 >= v9)
      {

        dispatch_group_leave(group);
        return;
      }

      v8 = *(v5 + 8 * v19);
      ++v11;
    }

    while (!v8);
  }

  v89 = v19;
  v90 = (v8 - 1) & v8;
  v20 = __clz(__rbit64(v8)) | (v19 << 6);
  v21 = *(v10 + 56);
  v22 = (*(v10 + 48) + 16 * v20);
  v23 = v22[1];
  v92 = *v22;
  v24 = *(v21 + 8 * v20);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v24 + 64);
  v95 = v23;

  v94 = v24;

  swift_beginAccess();
  v29 = 0;
  v30 = (v26 + 63) >> 6;
  v91 = v24 + 64;
  while (v28)
  {
LABEL_23:
    v41 = (v29 << 10) | (16 * __clz(__rbit64(v28)));
    v42 = (*(v94 + 48) + v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = (*(v94 + 56) + v41);
    v46 = v45[1];
    v96 = *v45;

    v97 = v46;

    _StringGuts.grow(_:)(16);
    0xE000000000000000, v47, v48, v49, v50, v51, v52, v53;
    v54._countAndFlagsBits = v92;
    v54._object = v95;
    String.append(_:)(v54);
    v55._countAndFlagsBits = 46;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    v56._countAndFlagsBits = v43;
    v56._object = v44;
    String.append(_:)(v56);
    v44, v57, v58, v59, v60, v61, v62, v63;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(a3 + 16);
    v66 = a3;
    *(a3 + 16) = 0x8000000000000000;
    v74 = sub_100005F4C(0x7474697379626162, 0xEB000000002E7265);
    v75 = v65[2];
    v76 = (v67 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
      goto LABEL_40;
    }

    v78 = v67;
    if (v65[3] >= v77)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v67)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_100373664();
        if (v78)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_10036A8F0(v77, isUniquelyReferenced_nonNull_native);
      v79 = sub_100005F4C(0x7474697379626162, 0xEB000000002E7265);
      if ((v78 & 1) != (v67 & 1))
      {
        goto LABEL_42;
      }

      v74 = v79;
      if (v78)
      {
LABEL_16:
        0xEB000000002E7265, v67, v68, v69, v70, v71, v72, v73;
        v31 = (v65[7] + 16 * v74);
        v32 = v31[1];
        *v31 = v96;
        v31[1] = v97;
        v32, v33, v34, v35, v36, v37, v38, v39;
        goto LABEL_17;
      }
    }

    v65[(v74 >> 6) + 8] |= 1 << v74;
    v80 = (v65[6] + 16 * v74);
    *v80 = 0x7474697379626162;
    v80[1] = 0xEB000000002E7265;
    v81 = (v65[7] + 16 * v74);
    *v81 = v96;
    v81[1] = v97;
    v82 = v65[2];
    v83 = __OFADD__(v82, 1);
    v84 = v82 + 1;
    if (v83)
    {
      goto LABEL_41;
    }

    v65[2] = v84;
LABEL_17:
    v28 &= v28 - 1;
    a3 = v66;
    *(v66 + 16) = v65;
    swift_endAccess();
    *(a4 + 16) = 0;
    v25 = v91;
  }

  while (1)
  {
    v40 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v40 >= v30)
    {

      v95, v12, v13, v14, v15, v16, v17, v18;
      v10 = v88;
      v11 = v89;
      v9 = v86;
      v5 = v87;
      v8 = v90;
      goto LABEL_7;
    }

    v28 = *(v25 + 8 * v40);
    ++v29;
    if (v28)
    {
      v29 = v40;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100160994(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1000F5104(&unk_100945230, &qword_1007A2590);
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);

  v2, v4, v5, v6, v7, v8, v9, v10;
}

void sub_100160A40(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X1>, unint64_t a3@<X8>)
{
  v6 = *a2;
  v28 = _swiftEmptyDictionarySingleton;
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v26 = a3;
    a3 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *&v6->clientIdentity[8 * a3 + 16];
      }

      v16 = v15;
      v17 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      v27 = v15;
      sub_10017C630(&v28, &v27, a1);

      if (v3)
      {
        v6, v8, v9, v10, v11, v12, v13, v14;
        v28, v18, v19, v20, v21, v22, v23, v24;
        return;
      }

      ++a3;
      if (v17 == i)
      {
        v25 = v28;
        a3 = v26;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v25 = _swiftEmptyDictionarySingleton;
LABEL_15:
  v6, v8, v9, v10, v11, v12, v13, v14;
  *a3 = v25;
}

void sub_100160FF0(uint64_t a1, void (*a2)(void, uint64_t, id), uint64_t a3, uint64_t a4)
{
  v6 = _convertErrorToNSError(_:)();
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100939C00);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: Failed testInitialSync {error: %@}", v11, 0xCu);
    sub_1000050A4(v12, &unk_100938E70, &unk_100797230);
  }

  v14 = objc_opt_self();
  v15 = v8;
  v16 = _convertErrorToNSError(_:)();

  v17 = [v14 errorSanitizedForXPCFromError:v16];
  swift_beginAccess();
  v18 = *(a4 + 16);

  v19 = v17;
  a2(0, v18, v17);

  v18, v20, v21, v22, v23, v24, v25, v26;
}

void sub_1001611EC(uint64_t a1, void (*a2)(uint64_t, uint64_t, void, __n128), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);

  (a2)(a1, v7, 0);
  v7, v8, v9, v10, v11, v12, v13, v14;
}

void sub_100161264(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v193 = a4;
  v189 = a8;
  v190 = a7;
  v188 = a6;
  v191 = a5;
  v12 = type metadata accessor for Date();
  v192 = *(v12 - 8);
  v13 = *(v192 + 64);
  __chkstk_darwin(v12, v14);
  __chkstk_darwin(v15, v16);
  v18 = &v180 - v17;
  v19 = sub_10000F8A4(a2, a3, 0);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  v21 = [swift_getObjCClassFromMetadata() entity];
  [v20 setEntity:v21];

  [v20 setAffectedStores:0];
  [v20 setPredicate:v19];
  v22 = v194;
  v23 = NSManagedObjectContext.fetch<A>(_:)();
  if (v22)
  {

    return;
  }

  v24 = v23;
  v194 = 0;
  v25 = v13;
  v187 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (v24 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (v33 < 2)
    {
      v34 = v25;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_24:
    aBlock = 0;
    v196 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v139._countAndFlagsBits = 0xD000000000000034;
    v139._object = 0x80000001007EE6D0;
    String.append(_:)(v139);
    v201 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v140 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v141 = *(v24 + 8 * v140 + 32);
      }

      v142 = v141;
      ++v140;
      v143 = [v141 remObjectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v33 != v140);
    v24, v144, v145, v146, v147, v148, v149, v150;
    v151 = v201;
    v152 = objc_opt_self();
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v153 = Array.description.getter();
    v155 = v154;
    v151, v154, v156, v157, v158, v159, v160, v161;
    v162._countAndFlagsBits = v153;
    v162._object = v155;
    String.append(_:)(v162);
    v155, v163, v164, v165, v166, v167, v168, v169;
    v170._countAndFlagsBits = 125;
    v170._object = 0xE100000000000000;
    String.append(_:)(v170);
    v171 = v196;
    v172 = String._bridgeToObjectiveC()();
    v171, v173, v174, v175, v176, v177, v178, v179;
    [v152 internalErrorWithDebugDescription:v172];

    goto LABEL_30;
  }

  v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = v25;
  if (v33 >= 2)
  {
    goto LABEL_24;
  }

  if (!v33)
  {
LABEL_23:
    v24, v26, v27, v28, v29, v30, v31, v32;
    v137 = objc_opt_self();
    v138 = String._bridgeToObjectiveC()();
    [v137 internalErrorWithDebugDescription:v138];

LABEL_30:
    swift_willThrow();
    return;
  }

LABEL_6:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v42 = *(v24 + 32);
  }

  v24, v35, v36, v37, v38, v39, v40, v41;
  v43 = [v42 remObjectID];
  if (!v43)
  {
    v78 = objc_opt_self();
    v79 = String._bridgeToObjectiveC()();
    [v78 internalErrorWithDebugDescription:v79];

    swift_willThrow();
    return;
  }

  v44 = v43;
  v45 = [v42 accountTypeHost];
  v46 = [v45 isCloudKit];

  if ((v46 & 1) == 0)
  {
    v80 = objc_opt_self();
    aBlock = 0;
    v196 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v196, v81, v82, v83, v84, v85, v86, v87;
    aBlock = 0xD000000000000025;
    v196 = 0x80000001007EE730;
    v88 = [v44 description];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92._countAndFlagsBits = v89;
    v92._object = v91;
    String.append(_:)(v92);
    v91, v93, v94, v95, v96, v97, v98, v99;
    v100._countAndFlagsBits = 125;
    v100._object = 0xE100000000000000;
    String.append(_:)(v100);
    v101 = v196;
    v69 = String._bridgeToObjectiveC()();
    v101, v102, v103, v104, v105, v106, v107, v108;
    v77 = [v80 internalErrorWithDebugDescription:v69];
    goto LABEL_15;
  }

  if ([v42 inactive])
  {
    v47 = objc_opt_self();
    aBlock = 0;
    v196 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v196, v48, v49, v50, v51, v52, v53, v54;
    aBlock = 0xD000000000000020;
    v196 = 0x80000001007EE760;
    v55 = [v44 description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59._countAndFlagsBits = v56;
    v59._object = v58;
    String.append(_:)(v59);
    v58, v60, v61, v62, v63, v64, v65, v66;
    v67._countAndFlagsBits = 125;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    v68 = v196;
    v69 = String._bridgeToObjectiveC()();
    v68, v70, v71, v72, v73, v74, v75, v76;
    v77 = [v47 internalErrorWithDebugDescription:v69];
LABEL_15:
    v77;

    swift_willThrow();
    return;
  }

  v109 = *(v193 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v110 = [v109 cloudContext];
  if (!v110)
  {
    v134 = objc_opt_self();
    v69 = String._bridgeToObjectiveC()();
    v77 = [v134 internalErrorWithDebugDescription:v69];
    goto LABEL_15;
  }

  v111 = v110;
  if ([v109 supportsSyncingToCloudKit])
  {
    v193 = a9;
    [v111 setDisabled:1];
    Date.init()();
    v112 = v192;
    v113 = *(v192 + 16);
    v186 = v12;
    v113(v187, v18, v12);
    v114 = *(v112 + 80);
    v115 = v112;
    v184 = v44;
    v116 = (v114 + 24) & ~v114;
    v183 = (v34 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v182 = (v183 + 15) & 0xFFFFFFFFFFFFFFF8;
    v194 = v42;
    v181 = (v182 + 15) & 0xFFFFFFFFFFFFFFF8;
    v117 = (v181 + 15) & 0xFFFFFFFFFFFFFFF8;
    v180 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
    v118 = (v180 + 15) & 0xFFFFFFFFFFFFFFF8;
    v119 = swift_allocObject();
    v120 = v111;
    v185 = v111;
    v121 = v119;
    *(v119 + 16) = v191;
    (*(v115 + 32))(v119 + v116, v187, v186);
    v122 = v182;
    *(v121 + v183) = a1;
    *(v121 + v122) = v194;
    *(v121 + v181) = v120;
    v123 = (v121 + v117);
    v124 = v189;
    v125 = v190;
    *v123 = v188;
    v123[1] = v125;
    v126 = v184;
    *(v121 + v180) = v184;
    v127 = (v121 + v118);
    v128 = v193;
    *v127 = v124;
    v127[1] = v128;
    v199 = sub_100189C20;
    v200 = v121;
    aBlock = _NSConcreteStackBlock;
    v196 = 1107296256;
    v197 = sub_100019200;
    v198 = &unk_1008E7D30;
    v129 = _Block_copy(&aBlock);

    v130 = a1;
    v131 = v194;
    v132 = v185;

    v133 = v126;

    [v132 cancelEverythingWithCompletionHandler:v129];
    _Block_release(v129);

    (*(v192 + 8))(v18, v186);
  }

  else
  {
    v135 = objc_opt_self();
    v136 = String._bridgeToObjectiveC()();
    [v135 internalErrorWithDebugDescription:v136];

    swift_willThrow();
  }
}

void sub_100161C80(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v39 = a7;
  v40 = a8;
  v37 = a10;
  v38 = a6;
  v36 = a9;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100791300;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v21 = v20;
  (*(v15 + 8))(v18, v14);
  *(v19 + 56) = &type metadata for Double;
  *(v19 + 64) = &protocol witness table for Double;
  *(v19 + 32) = v21;
  v22 = String.init(format:_:)();
  v24 = v23;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002C72CC(v22, v24, 0xD00000000000001FLL, 0x80000001007EE7B0, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v42;
  swift_endAccess();
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a3;
  v26[4] = a1;
  v26[5] = a5;
  v27 = v39;
  v26[6] = v38;
  v26[7] = v27;
  v28 = v40;
  v29 = v36;
  v30 = v37;
  v26[8] = v40;
  v26[9] = v29;
  v26[10] = v30;
  aBlock[4] = sub_100189CF4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7D80;
  v31 = _Block_copy(aBlock);
  v32 = a4;
  v33 = a3;

  v34 = a5;

  v35 = v28;

  [v33 performBlock:v31];
  _Block_release(v31);
}

uint64_t sub_100161F4C(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), void (*a6)(uint64_t), void *a7, uint64_t a8, char *a9)
{
  v142 = a8;
  v141 = a7;
  v148 = a5;
  v149 = a6;
  v143 = a4;
  v145 = a3;
  v147 = a2;
  v10 = type metadata accessor for Date();
  v146 = *(v10 - 8);
  v11 = *(v146 + 64);
  __chkstk_darwin(v10, v12);
  __chkstk_darwin(v13, v14);
  v16 = v124 - v15;
  __chkstk_darwin(v17, v18);
  v20 = v124 - v19;
  __chkstk_darwin(v21, v22);
  v24 = v124 - v23;
  KeyPath = swift_getKeyPath();
  v144 = a1;
  v26 = sub_1003922E4(KeyPath, a1);

  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  v27 = [objc_allocWithZone(NSFetchRequest) init];
  v28 = [swift_getObjCClassFromMetadata() entity];
  [v27 setEntity:v28];

  [v27 setAffectedStores:0];
  [v27 setPredicate:v26];
  v29 = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *(&v153 + 1) = v29;
  *&aBlock = v27;
  v30 = v27;
  throwingCast<A>(_:as:failureMessage:)();

  sub_10000607C(&aBlock);
  v137 = v16;
  v135 = v11;
  v136 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v20;
  v140 = v10;
  v32 = v151;
  v33 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v151];
  [v33 setResultType:2];
  Date.init()();
  *&aBlock = 0;
  v34 = [v147 executeRequest:v33 error:&aBlock];
  v35 = aBlock;
  if (!v34)
  {
    v42 = aBlock;
    v43 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v43;

    (*(v146 + 8))(v24, v140);
LABEL_2:
    v148(v44);
  }

  v36 = v34;
  v138 = v24;
  v37 = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
  *(&v153 + 1) = v37;
  *&aBlock = v36;
  v38 = sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
  v39 = v35;
  v40 = v36;
  throwingCast<A>(_:as:failureMessage:)();
  v41 = v146;
  v133 = v37;
  v134 = v38;
  sub_10000607C(&aBlock);
  v45 = v151;
  if ([v151 result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(&v151, &aBlock);
  }

  else
  {
    aBlock = 0u;
    v153 = 0u;
  }

  throwingCast<A>(_:as:failureMessage:)();
  v46 = v139;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v130 = "prepare.cancelCloudKit.duration";
  *&aBlock = v150;
  v131 = v40;
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  v132 = 0;
  v48 = v47;
  v129 = v49;
  v50 = v145;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v151 = *(v50 + 16);
  *(v50 + 16) = 0x8000000000000000;
  sub_1002C72CC(v48, v129, 0xD00000000000001ELL, v130 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
  *(v50 + 16) = v151;
  swift_endAccess();
  v129 = "prepare.deletedCDObjects.count";
  v126 = sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v52 = swift_allocObject();
  v127 = xmmword_100791300;
  *(v52 + 16) = xmmword_100791300;
  Date.init()();
  v130 = v45;
  v53 = v138;
  Date.timeIntervalSince(_:)();
  v55 = v54;
  v56 = *(v41 + 8);
  v57 = v46;
  v58 = v140;
  v56(v57, v140);
  *(v52 + 56) = &type metadata for Double;
  *(v52 + 64) = &protocol witness table for Double;
  *(v52 + 32) = v55;
  v59 = String.init(format:_:)();
  v128 = v60;
  swift_beginAccess();
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *&v151 = *(v50 + 16);
  *(v50 + 16) = 0x8000000000000000;
  sub_1002C72CC(v59, v128, 0xD00000000000001FLL, v129 | 0x8000000000000000, v61);
  *(v50 + 16) = v151;
  swift_endAccess();

  v62 = v41 + 8;
  v63 = v56;
  v56(v53, v58);
  sub_1000060C8(0, &qword_100939ED8, off_1008D41F8);
  v64 = [objc_allocWithZone(NSFetchRequest) init];
  v65 = [swift_getObjCClassFromMetadata() entity];
  [v64 setEntity:v65];

  [v64 setAffectedStores:0];
  [v64 setPredicate:0];
  *(&v153 + 1) = v29;
  *&aBlock = v64;
  v66 = v64;
  v44 = v132;
  throwingCast<A>(_:as:failureMessage:)();

  sub_10000607C(&aBlock);
  if (v44)
  {
    goto LABEL_2;
  }

  v67 = v139;
  v68 = v151;
  v69 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v151];
  [v69 setResultType:2];
  v70 = v137;
  Date.init()();
  *&aBlock = 0;
  v71 = [v147 executeRequest:v69 error:&aBlock];
  v72 = aBlock;
  if (!v71)
  {
    v76 = aBlock;
    v77 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v77;

    v63(v70, v140);
    goto LABEL_2;
  }

  *(&v153 + 1) = v133;
  *&aBlock = v71;
  v73 = v71;
  v74 = v72;
  v75 = v73;
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(&aBlock);
  v78 = v151;
  if ([v151 result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(&v151, &aBlock);
  }

  else
  {
    aBlock = 0u;
    v153 = 0u;
  }

  throwingCast<A>(_:as:failureMessage:)();
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v125 = v63;
  v124[1] = v62;
  v138 = "prepare.deleteCDObject.duration";
  *&aBlock = v150;
  v79 = dispatch thunk of CustomStringConvertible.description.getter();
  v80 = v67;
  v82 = v81;
  v83 = v145;
  swift_beginAccess();
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&v151 = *(v83 + 16);
  *(v83 + 16) = 0x8000000000000000;
  sub_1002C72CC(v79, v82, 0xD000000000000020, v138 | 0x8000000000000000, v84);
  *(v83 + 16) = v151;
  swift_endAccess();
  v138 = "CloudState.count";
  v85 = swift_allocObject();
  *(v85 + 16) = v127;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v87 = v86;
  v88 = v140;
  v125(v80, v140);
  *(v85 + 56) = &type metadata for Double;
  *(v85 + 64) = &protocol witness table for Double;
  *(v85 + 32) = v87;
  v89 = String.init(format:_:)();
  v91 = v90;
  swift_beginAccess();
  v92 = swift_isUniquelyReferenced_nonNull_native();
  *&v151 = *(v83 + 16);
  *(v83 + 16) = 0x8000000000000000;
  v93 = v125;
  sub_1002C72CC(v89, v91, 0xD000000000000023, v138 | 0x8000000000000000, v92);
  *(v83 + 16) = v151;
  swift_endAccess();

  v94 = v88;
  v95 = v147;

  v93(v137, v88);
  v96 = v144;
  [v144 setCkUserRecordName:0];
  [v96 setListIDsMergeableOrdering:0];
  [v96 setListIDsMergeableOrdering_v2:0];
  [v96 setCkServerChangeTokens:0];
  [v96 setCkSharedObjectOwnerNames:0];
  [v96 setLists:0];
  [v96 setReminders:0];
  *&aBlock = 0;
  v97 = [v95 save:&aBlock];
  v98 = aBlock;
  if (!v97)
  {
    v122 = aBlock;
    v123 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v123;
    goto LABEL_2;
  }

  v137 = a9;
  swift_beginAccess();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  *&v151 = *(v83 + 16);
  *(v83 + 16) = 0x8000000000000000;
  sub_1002C72CC(1702195828, 0xE400000000000000, 0xD00000000000001CLL, 0x80000001007EE870, v100);
  *(v83 + 16) = v151;
  swift_endAccess();
  [v143 setDisabled:0];
  v101 = v139;
  Date.init()();
  v138 = @"TestInitialSync";
  v102 = v146;
  (*(v146 + 16))(v136, v101, v94);
  v103 = (*(v102 + 80) + 24) & ~*(v102 + 80);
  v135 = (v135 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 23) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  *(v108 + 16) = v83;
  (*(v102 + 32))(v108 + v103, v136, v94);
  v109 = v143;
  *(v108 + v135) = v143;
  v110 = (v108 + v104);
  v111 = v149;
  *v110 = v148;
  v110[1] = v111;
  v112 = v147;
  *(v108 + v105) = v147;
  v113 = v144;
  *(v108 + v106) = v144;
  v114 = v141;
  *(v108 + v107) = v141;
  v115 = (v108 + ((v107 + 15) & 0xFFFFFFFFFFFFFFF8));
  v116 = v137;
  *v115 = v142;
  v115[1] = v116;
  v154 = sub_100189D2C;
  v155 = v108;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v153 = sub_100042968;
  *(&v153 + 1) = &unk_1008E7DD0;
  v117 = _Block_copy(&aBlock);
  v118 = v113;

  v119 = v109;

  v120 = v112;
  v121 = v114;

  [v119 syncWithReason:v138 discretionary:0 completionHandler:v117];
  _Block_release(v117);
  return (v125)(v139, v140);
}

id sub_100162F68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

void sub_100162FB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v101 = a7;
  v103 = a1;
  v104 = a5;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100791300;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v22 = v21;
  (*(v16 + 8))(v19, v15);
  *(v20 + 56) = &type metadata for Double;
  *(v20 + 64) = &protocol witness table for Double;
  *(v20 + 32) = v22;
  v23 = String.init(format:_:)();
  v25 = v24;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1002C72CC(v23, v25, 0xD000000000000012, 0x80000001007EE890, isUniquelyReferenced_nonNull_native);
  v109 = a2;
  *(a2 + 16) = v116;
  swift_endAccess();
  v27 = [a4 lastSyncMetrics];
  v105 = a6;
  v102 = a8;
  if (v27)
  {
    v28 = v27;
    v29 = [v27 dictionaryRepresentation];

    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v31 = sub_10038E004(&_swiftEmptyArrayStorage);
  }

  v32 = 0;
  v98 = a10;
  v99 = a9;
  v100 = a11;
  v33 = v31 + 64;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v31 + 64);
  v37 = (v34 + 63) >> 6;
  v106 = v37;
  v107 = v31;
  while (v36)
  {
LABEL_14:
    v48 = (v32 << 10) | (16 * __clz(__rbit64(v36)));
    v49 = (*(v31 + 48) + v48);
    v50 = *v49;
    v51 = v49[1];
    v52 = (*(v31 + 56) + v48);
    v53 = v52[1];
    v108 = *v52;
    aBlock = 0x2E636E7973;
    v111 = 0xE500000000000000;

    v54._countAndFlagsBits = v50;
    v54._object = v51;
    String.append(_:)(v54);
    v51, v55, v56, v57, v58, v59, v60, v61;
    v63 = aBlock;
    v62 = v111;
    v64 = v109;
    swift_beginAccess();
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v116 = *(v64 + 16);
    v66 = v116;
    *(v64 + 16) = 0x8000000000000000;
    v74 = sub_100005F4C(v63, v62);
    v75 = v66[2];
    v76 = (v67 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v78 = v67;
    if (v66[3] >= v77)
    {
      if (v65)
      {
        v80 = v116;
        if (v67)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_100373664();
        v80 = v116;
        if (v78)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_10036A8F0(v77, v65);
      v79 = sub_100005F4C(v63, v62);
      if ((v78 & 1) != (v67 & 1))
      {
        goto LABEL_31;
      }

      v74 = v79;
      v80 = v116;
      if (v78)
      {
LABEL_7:
        v38 = (v80[7] + 16 * v74);
        v39 = v38[1];
        *v38 = v108;
        v38[1] = v53;
        v62, v67, v68, v69, v70, v71, v72, v73;
        v39, v40, v41, v42, v43, v44, v45, v46;
        goto LABEL_8;
      }
    }

    v80[(v74 >> 6) + 8] |= 1 << v74;
    v81 = (v80[6] + 16 * v74);
    *v81 = v63;
    v81[1] = v62;
    v82 = (v80[7] + 16 * v74);
    *v82 = v108;
    v82[1] = v53;
    v83 = v80[2];
    v84 = __OFADD__(v83, 1);
    v85 = v83 + 1;
    if (v84)
    {
      goto LABEL_30;
    }

    v80[2] = v85;
LABEL_8:
    v36 &= v36 - 1;
    *(v109 + 16) = v80;
    swift_endAccess();
    v37 = v106;
    v31 = v107;
  }

  while (1)
  {
    v47 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v47 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v47);
    ++v32;
    if (v36)
    {
      v32 = v47;
      goto LABEL_14;
    }
  }

  v86 = v103;
  if (v103)
  {
    swift_errorRetain();
    v104(v86);
  }

  else
  {
    v87 = swift_allocObject();
    v88 = v101;
    v89 = v102;
    v87[2] = v101;
    v87[3] = v89;
    v90 = v98;
    v91 = v99;
    v87[4] = v99;
    v87[5] = v90;
    v92 = v104;
    v93 = v105;
    v87[6] = v100;
    v87[7] = v92;
    v87[8] = v93;
    v114 = sub_100189E14;
    v115 = v87;
    aBlock = _NSConcreteStackBlock;
    v111 = 1107296256;
    v112 = sub_100019200;
    v113 = &unk_1008E7E20;
    v94 = _Block_copy(&aBlock);
    v95 = v88;
    v96 = v89;
    v97 = v91;

    [v95 performBlock:v94];
    _Block_release(v94);
  }
}

void sub_10016356C(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v8 = _s10PredicatesOMa(0);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 refreshObject:a2 mergeChanges:{0, v10}];
  *v12 = a3;
  v12[8] = 2;
  swift_storeEnumTagMultiPayload();
  v13 = a3;
  v14 = sub_100043AA8();
  sub_100188054(v12, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  [v15 setPredicate:v14];

  v17 = NSManagedObjectContext.count<A>(for:)();
  a4(v17);
}

void sub_100163774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
LABEL_3:
      v8 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v7.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7.super.isa);
}

void sub_100163824(uint64_t a1, void (*a2)(id))
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
    a2(v14);
  }

  else
  {
    (a2)();
  }
}

uint64_t sub_100163A2C(char a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11)
{
  v89 = a8;
  v93 = a7;
  v17 = type metadata accessor for UUID();
  v91 = *(v17 - 8);
  __chkstk_darwin(v17, v18);
  v88 = v19;
  v90 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || !a2)
  {
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100939C00);
    v40 = a3;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "RDXPCDebugPerformer: testReinitializeCloudKit: Done ACAccont migration flags unset {acAccount: %@}", v43, 0xCu);
      sub_1000050A4(v44, &unk_100938E70, &unk_100797230);
    }
  }

  else
  {
    v92 = a5;
    swift_errorRetain();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100939C00);
    swift_errorRetain();
    v21 = a3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      LODWORD(v86) = v23;
      v25 = v24;
      v26 = swift_slowAlloc();
      v85 = v26;
      v87 = swift_slowAlloc();
      aBlock[0] = v87;
      *v25 = 138412546;
      *(v25 + 4) = v21;
      *v26 = v21;
      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v27 = v21;
      v28 = Error.rem_errorDescription.getter();
      v30 = v29;
      v31 = sub_10000668C(v28, v29, aBlock);
      v30, v32, v33, v34, v35, v36, v37, v38;
      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v86, "RDXPCDebugPerformer: testReinitializeCloudKit: ERROR unsetting ACAccount migration flags {acAccount: %@, error: %s}", v25, 0x16u);
      sub_1000050A4(v85, &unk_100938E70, &unk_100797230);

      sub_10000607C(v87);
    }

    swift_beginAccess();
    *(a4 + 16) = a2;

    a5 = v92;
  }

  swift_beginAccess();
  v46 = *(a4 + 16);
  if (v46)
  {
    swift_errorRetain();
    a5(v46);
  }

  v47 = v17;
  v48 = *(v93 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v49 = [v48 cloudContext];
  if (!v49)
  {
    v75 = objc_opt_self();
    v76 = String._bridgeToObjectiveC()();
    v77 = [v75 internalErrorWithDebugDescription:v76];

    swift_willThrow();
LABEL_26:
    swift_errorRetain();
    a5(v77);
  }

  v50 = v49;
  v51 = [v48 accountUtils];
  if (!v51)
  {
    v78 = objc_opt_self();
    v79 = String._bridgeToObjectiveC()();
    v77 = [v78 internalErrorWithDebugDescription:v79];

    swift_willThrow();
    goto LABEL_26;
  }

  v52 = v51;
  if (([v48 supportsSyncingToCloudKit] & 1) == 0)
  {
    v80 = objc_opt_self();
    v81 = String._bridgeToObjectiveC()();
    v77 = [v80 internalErrorWithDebugDescription:v81];

    swift_willThrow();

    goto LABEL_26;
  }

  [v50 setDisabled:1];
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v86 = v52;
  v87 = v50;
  v92 = a5;
  v93 = a6;
  v85 = a11;
  v83 = a10;
  v84 = a9;
  v53 = type metadata accessor for Logger();
  sub_100006654(v53, qword_100939C00);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "RDXPCDebugPerformer: testReinitializeCloudKit: CloudKit disabled.", v56, 2u);
  }

  v57 = v90;
  v58 = v91;
  (*(v91 + 16))(v90, v89, v47);
  v59 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v60 = (v88 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v58 + 32))(v64 + v59, v57, v47);
  v65 = (v64 + v60);
  v66 = v93;
  *v65 = v92;
  v65[1] = v66;
  v67 = v87;
  *(v64 + v61) = v87;
  *(v64 + v62) = v86;
  v68 = v84;
  *(v64 + v63) = v84;
  v69 = (v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8));
  v70 = v85;
  *v69 = v83;
  v69[1] = v70;
  aBlock[4] = sub_100189A7C;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7C18;
  v71 = _Block_copy(aBlock);

  v72 = v67;

  v73 = v68;

  [v72 cancelEverythingWithCompletionHandler:v71];
  _Block_release(v71);
}

void sub_1001642D0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100939C00);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: testReinitializeCloudKit: CloudKit cancelEverything completed.", v14, 2u);
  }

  v15 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = [v15 objectIDWithUUID:isa];

  v18 = [objc_allocWithZone(REMStore) init];
  v19 = [objc_allocWithZone(REMSaveRequest) initWithStore:v18];
  v48 = 0;
  v20 = [v18 fetchAccountWithObjectID:v17 error:&v48];
  if (!v20)
  {
    v43 = v48;
    v44 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_14:

    swift_errorRetain();
    a2(v44);

    return;
  }

  v21 = v20;
  v22 = v48;
  v23 = [v19 updateAccount:v21];
  [v23 removeFromStore];
  v48 = 0;
  if (![v19 saveSynchronouslyWithError:&v48])
  {
    v45 = v48;
    v44 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v19 = v23;
    goto LABEL_14;
  }

  v24 = v48;

  [a4 setDisabled:0];
  v25 = v17;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "RDXPCDebugPerformer: testReinitializeCloudKit: REM account removed from DB. CloudKit re-enabled. {objectID: %@}", v28, 0xCu);
    sub_1000050A4(v29, &unk_100938E70, &unk_100797230);
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v34 = qword_100974CB0;
  v35 = swift_allocObject();
  v35[2] = a7;
  v35[3] = a8;
  v35[4] = a2;
  v35[5] = a3;

  sub_1006B370C(v31, v33, 1, v34, sub_100189B80, v35);

  v33, v36, v37, v38, v39, v40, v41, v42;
}

uint64_t sub_10016474C(char a1, char a2, uint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, uint64_t (*a6)(void))
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100939C00);

  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  a5, v15, v16, v17, v18, v19, v20, v21;

  if (os_log_type_enabled(v13, v14))
  {
    v35 = a6;
    v22 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v22 = 136315906;
    *(v22 + 4) = sub_10000668C(a4, a5, &v36);
    *(v22 + 12) = 1024;
    *(v22 + 14) = a1 & 1;
    *(v22 + 18) = 1024;
    *(v22 + 20) = a2 & 1;
    *(v22 + 24) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v23 = Error.rem_errorDescription.getter();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = sub_10000668C(v23, v25, &v36);
    v25, v27, v28, v29, v30, v31, v32, v33;
    *(v22 + 26) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDXPCDebugPerformer: testReinitializeCloudKit: Completed updateState() for accountIdentifier: %s, didAddAccount: %{BOOL}d, didUpdateAccount: %{BOOL}d, updateAccountError: %s", v22, 0x22u);
    swift_arrayDestroy();

    a6 = v35;
  }

  else
  {
  }

  return a6(a3);
}

void sub_1001649E4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v61[1] = a7;
  v63 = a3;
  v64 = a1;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100939C00);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  a2, v23, v24, v25, v26, v27, v28, v29;
  v30 = os_log_type_enabled(v21, v22);
  v62 = a8;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v61[0] = v15;
    v32 = a6;
    v33 = v31;
    v34 = swift_slowAlloc();
    aBlock = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10000668C(v64, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v21, v22, "RDXPCDebugPerformer: fireDebugNotification initiated with text: %s", v33, 0xCu);
    sub_10000607C(v34);

    a6 = v32;
    v15 = v61[0];
  }

  if (a4)
  {
    v35 = a4;
  }

  else
  {
    UUID.init()();
    v63 = UUID.uuidString.getter();
    v35 = v36;
    (*(v16 + 8))(v19, v15);
  }

  v37 = objc_allocWithZone(UNMutableNotificationContent);

  v38 = [v37 init];
  v39 = String._bridgeToObjectiveC()();
  [v38 setBody:v39];

  if (a6)
  {
    v40 = String._bridgeToObjectiveC()();
    [v38 setCategoryIdentifier:v40];
  }

  if (v62)
  {
    v41 = *(v61[2] + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter);
    v42 = swift_allocObject();
    *(v42 + 16) = a10;
    *(v42 + 24) = a11;

    v43 = String._bridgeToObjectiveC()();
    v35, v44, v45, v46, v47, v48, v49, v50;
    v51 = String._bridgeToObjectiveC()();
    if (a9)
    {
      v69 = sub_100189954;
      v70 = v42;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_100042968;
      v68 = &unk_1008E7A88;
      v52 = _Block_copy(&aBlock);

      [v41 releaseNotificationWithIdentifier:v43 reference:v51 completion:v52];
    }

    else
    {
      v69 = sub_10018ADFC;
      v70 = v42;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_100042968;
      v68 = &unk_1008E7A38;
      v52 = _Block_copy(&aBlock);

      [v41 retainNotificationWithIdentifier:v43 reference:v51 content:v38 skipBanner:0 completion:v52];
    }

    _Block_release(v52);
  }

  else
  {
    v53 = swift_allocObject();
    *(v53 + 16) = a10;
    *(v53 + 24) = a11;

    sub_10052554C(v63, v35, v38, sub_10018ADFC, v53);

    v35, v54, v55, v56, v57, v58, v59, v60;
  }
}

uint64_t sub_100165098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: Debug: fetchGeofences", v17, 2u);
  }

  v18 = *(*&v3[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = sub_100189948;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7998;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v9, v6);
  (*(v10 + 8))(v13, v25);
}

void sub_100165450(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1005082D8();
  sub_10015FB64(v3);
  v5 = v4;
  v3, v6, v7, v8, v9, v10, v11, v12;
  a2(v5);

  v5, v13, v14, v15, v16, v17, v18, v19;
}

uint64_t sub_10016555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = UUID.uuidString.getter();
  v17 = v16;
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100939C00);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v17, v21, v22, v23, v24, v25, v26, v27;
  if (os_log_type_enabled(v19, v20))
  {
    v28 = swift_slowAlloc();
    v42 = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    v41 = v10;
    v31 = v7;
    v32 = v4;
    v33 = a2;
    v34 = v30;
    aBlock[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10000668C(v15, v17, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v20, "RDXPCDebugPerformer: Debug: removeGeofence {UUID=%s}", v29, 0xCu);
    sub_10000607C(v34);
    a2 = v33;
    v4 = v32;
    v7 = v31;
    v10 = v41;

    a3 = v42;
  }

  v35 = *(*&v4[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  v36 = swift_allocObject();
  v36[2] = v4;
  v36[3] = v15;
  v36[4] = v17;
  v36[5] = a2;
  v36[6] = a3;
  aBlock[4] = sub_10018989C;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7920;
  v37 = _Block_copy(aBlock);
  v38 = v35;
  v39 = v4;

  static DispatchQoS.unspecified.getter();
  v46 = &_swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  (*(v45 + 8))(v10, v7);
  (*(v43 + 8))(v14, v44);
}

uint64_t sub_100165AD8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v79 = a3;
  v76 = a2;
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v75 - 8);
  __chkstk_darwin(v75, v10);
  v82 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83, v12);
  v80 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v70 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18, v20);
  v74 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = &v70 - v24;
  v71 = v26;
  __chkstk_darwin(v27, v28);
  v30 = &v70 - v29;
  sub_100010364(a1, v17, &unk_100939D90, "8\n\r");
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    UUID.init()();
    if (v31(v17, 1, v18) != 1)
    {
      sub_1000050A4(v17, &unk_100939D90, "8\n\r");
    }
  }

  else
  {
    (*(v19 + 32))(v30, v17, v18);
  }

  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_100939C00);
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  v33 = *(v19 + 16);
  v33(v25, v30, v18);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v70 = v18;
    v38 = v37;
    aBlock[0] = v37;
    *v36 = 68159234;
    *(v36 + 4) = 4;
    *(v36 + 8) = 2048;
    *(v36 + 10) = a4;
    *(v36 + 18) = 1040;
    *(v36 + 20) = 4;
    *(v36 + 24) = 2048;
    *(v36 + 26) = a5;
    *(v36 + 34) = 1040;
    *(v36 + 36) = 4;
    *(v36 + 40) = 2048;
    *(v36 + 42) = a6;
    *(v36 + 50) = 2080;
    v39 = UUID.uuidString.getter();
    v40 = v25;
    v42 = v41;
    v43 = *(v19 + 8);
    v72 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73 = v43;
    v43(v40, v70);
    v44 = sub_10000668C(v39, v42, aBlock);
    v42, v45, v46, v47, v48, v49, v50, v51;
    *(v36 + 52) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "RDXPCDebugPerformer: Debug: addGeofence {center=(%.*f,%.*f), r=%.*f, UUID=%s}", v36, 0x3Cu);
    sub_10000607C(v38);
    v18 = v70;
  }

  else
  {

    v52 = *(v19 + 8);
    v72 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73 = v52;
    v52(v25, v18);
  }

  v53 = v78;
  v54 = *(*&v78[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  v55 = v74;
  v33(v74, v30, v18);
  v56 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v57 = v18;
  v58 = (v71 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = v30;
  v60 = swift_allocObject();
  v60[2] = a4;
  v60[3] = a5;
  v60[4] = a6;
  (*(v19 + 32))(v60 + v56, v55, v57);
  *(v60 + v58) = v53;
  v61 = (v60 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
  v62 = v79;
  *v61 = v76;
  v61[1] = v62;
  aBlock[4] = sub_1001897F8;
  aBlock[5] = v60;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E78A8;
  v63 = _Block_copy(aBlock);
  v64 = v54;
  v65 = v53;

  v66 = v80;
  static DispatchQoS.unspecified.getter();
  v84 = &_swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v67 = v82;
  v68 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v63);

  (*(v77 + 8))(v67, v68);
  (*(v81 + 8))(v66, v83);
  v73(v59, v57);
}

void sub_10016627C(uint64_t a1, double a2, double a3, double a4, uint64_t a5, void (*a6)(void))
{
  UUID.uuidString.getter();
  v12 = v11;
  v13 = objc_allocWithZone(CLCircularRegion);
  v14 = String._bridgeToObjectiveC()();
  v12, v15, v16, v17, v18, v19, v20, v21;
  v22 = [v13 initWithCenter:v14 radius:a2 identifier:{a3, a4}];

  v23 = v22;
  [v23 setNotifyOnEntry:1];
  [v23 setNotifyOnExit:1];

  sub_1005077FC(v23);
  a6();
}

uint64_t sub_100166628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = CLLocationCoordinate2DMake(37.3318, 122.0312);
  v19 = objc_allocWithZone(CLCircularRegion);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithCenter:v20 radius:v18.latitude identifier:{v18.longitude, 100.0}];

  v22 = *(*&v7[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  v23 = swift_allocObject();
  v23[2] = v7;
  v23[3] = v21;
  v23[4] = a3;
  v23[5] = a4;
  aBlock[4] = v29;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v30;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v7;
  v27 = v21;

  static DispatchQoS.unspecified.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v33 + 8))(v13, v10);
  (*(v31 + 8))(v17, v32);
}

void sub_100166C60(void *a1, void *a2, char a3)
{
  v6 = a2;
  v7 = sub_1005E2A38(v6);
  if (!v3)
  {
    v8 = v7;
    v9 = sub_100566030(v7, 0);
    if (v9)
    {
      v10 = v9;
      if ((a3 & 1) == 0)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
        v32 = v11;
        v33 = v12;

        v14._object = 0x80000001007EE2C0;
        v14._countAndFlagsBits = 0xD000000000000038;
        String.append(_:)(v14);
        v13, v15, v16, v17, v18, v19, v20, v21;
        v22 = String._bridgeToObjectiveC()();
        v33, v23, v24, v25, v26, v27, v28, v29;
        [a1 setTransactionAuthor:{v22, v32}];
      }

      v30 = objc_opt_self();
      v31 = String._bridgeToObjectiveC()();
      [v30 internalErrorWithDebugDescription:v31];

      swift_willThrow();
      v8 = v10;
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:v6];
      swift_willThrow();
    }
  }
}

void sub_100166E14(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(id, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a1;
  a6(v11, a4, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_100166EB8(void *a1, void *a2, char a3, double a4)
{
  v8 = a2;
  v9 = sub_1005E4588(v8);
  if (!v4)
  {
    v10 = v9;
    v11 = sub_10056606C(v9, 0);
    v12 = v11;
    if (v11)
    {
      [(objc_class *)v11 setDueDateResolutionTokenAsNonce:a4];
      if (a3)
      {
        [(objc_class *)v12 updateChangeCount];
      }

      else
      {
        [(objc_class *)v12 setCkDirtyFlags:0];
        v13 = [(objc_class *)v12 trigger];
        if (v13)
        {
          v14 = v13;
          [v13 setCkDirtyFlags:0];
        }
      }

      if ([a1 hasChanges])
      {
        v49 = 0;
        if ([a1 save:&v49])
        {
          v15 = qword_100935AE8;
          v16 = v49;
          if (v15 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_100006654(v17, qword_100939C00);
          v18 = v12;
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v19, v20))
          {
            v48 = v20;
            v21 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v21 = 136446466;
            v22 = [(objc_class *)v18 remObjectID];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 description];

              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v26;
            }

            else
            {
              v27 = 0xE300000000000000;
              v25 = 7104878;
            }

            v29 = sub_10000668C(v25, v27, &v49);
            v27, v30, v31, v32, v33, v34, v35, v36;
            *(v21 + 4) = v29;
            *(v21 + 12) = 2082;
            v37 = Bool.yesno.getter();
            v39 = v38;
            v40 = sub_10000668C(v37, v38, &v49);
            v39, v41, v42, v43, v44, v45, v46, v47;
            *(v21 + 14) = v40;
            _os_log_impl(&_mh_execute_header, v19, v48, "RDXPCDebugPerformer: setDueDateResolutionTokenNonceForAlarmID: Saved changes {alarmID: %{public}s, shouldSetDirtyFlags: %{public}s}", v21, 0x16u);
            swift_arrayDestroy();
          }
        }

        else
        {
          v28 = v49;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      else
      {
      }
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:v8];
      swift_willThrow();
    }
  }
}

void sub_10016729C(void *a1, void *a2, char a3, double a4)
{
  LOBYTE(v5) = a3;
  v8 = a2;
  v9 = sub_1005E2A38(v8);
  if (v4)
  {
    return;
  }

  v82 = v9;
  v10 = sub_100566030(v9, 0);
  if (!v10)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:v8];
    swift_willThrow();
    v11 = v82;
LABEL_3:

    return;
  }

  v80 = v10;
  v12 = [(objc_class *)v10 alarmStorage];
  if (!v12)
  {
LABEL_58:
    v75 = objc_opt_self();
    v76 = String._bridgeToObjectiveC()();
    v77 = [v75 internalErrorWithDebugDescription:v76];
LABEL_59:
    v77;

    swift_willThrow();
    v11 = v80;
    goto LABEL_3;
  }

  v83 = v12;
  v13 = v12;
  sub_1000060C8(0, &unk_100938870, off_1008D4128);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
  v14 = Sequence.elements<A>(ofType:)();

  if (v14 >> 62)
  {
    goto LABEL_56;
  }

  v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_57:
    v14, v15, v16, v17, v18, v19, v20, v21;
    goto LABEL_58;
  }

LABEL_9:
  v79 = a1;
  v81 = v5;
  v23 = 0;
  v83 = &_swiftEmptyArrayStorage;
  v24 = &selRef_hack_willSaveHandled;
  v25 = &selRef_setPublicLinkLastModifiedDate_;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v33 = *(v14 + 8 * v23 + 32);
    }

    a1 = v33;
    v5 = (v23 + 1);
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
        goto LABEL_57;
      }

      goto LABEL_9;
    }

    if (([v33 v24[184]] & 1) != 0 || (objc_msgSend(a1, v25[133]) & 1) != 0 || (v34 = objc_msgSend(a1, "trigger")) == 0)
    {
    }

    else
    {
      v35 = v34;
      v36 = [v34 isTemporal];

      if (v36)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v24 = &selRef_hack_willSaveHandled;
      v25 = &selRef_setPublicLinkLastModifiedDate_;
    }

    ++v23;
  }

  while (v5 != v22);
  v14, v26, v27, v28, v29, v30, v31, v32;
  if (v83 < 0 || (v83 & 0x4000000000000000) != 0)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

  v14 = *(v83 + 16);
  if (!v14)
  {
LABEL_61:

    v78 = objc_opt_self();
    v76 = String._bridgeToObjectiveC()();
    v77 = [v78 internalErrorWithDebugDescription:v76];
    goto LABEL_59;
  }

LABEL_28:
  v37 = 0;
  v5 = &selRef_setPublicLinkLastModifiedDate_;
  do
  {
    if ((v83 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v83 + 16))
      {
        goto LABEL_55;
      }

      v38 = *(v83 + 8 * v37 + 32);
    }

    v39 = v38;
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_54;
    }

    [v38 setDueDateResolutionTokenAsNonce:a4];
    if (v81)
    {
      [v39 updateChangeCount];
    }

    else
    {
      [v39 setCkDirtyFlags:0];
      v41 = [v39 trigger];
      if (v41)
      {
        a1 = v41;
        [v41 setCkDirtyFlags:0];
      }
    }

    ++v37;
  }

  while (v40 != v14);

  if (![v79 hasChanges])
  {

LABEL_47:
    return;
  }

  v83 = 0;
  if ([v79 save:&v83])
  {
    v42 = qword_100935AE8;
    v43 = v83;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_100939C00);
    v45 = v80;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v48 = 136446722;
      v49 = [(objc_class *)v45 remObjectID];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 description];

        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
      }

      else
      {
        v54 = 0xE300000000000000;
        v52 = 7104878;
      }

      v56 = sub_10000668C(v52, v54, &v83);
      v54, v57, v58, v59, v60, v61, v62, v63;
      *(v48 + 4) = v56;
      *(v48 + 12) = 2048;
      *(v48 + 14) = v14;
      *(v48 + 22) = 2082;
      v64 = Bool.yesno.getter();
      v66 = v65;
      v67 = sub_10000668C(v64, v65, &v83);
      v66, v68, v69, v70, v71, v72, v73, v74;
      *(v48 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v46, v47, "RDXPCDebugPerformer: setDueDateResolutionTokenNonceForReminderID: Saved changes {reminderID: %{public}s, alarmsUpdated.count: %ld, shouldSetDirtyFlags: %{public}s}", v48, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_47;
  }

  v55 = v83;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

void sub_1001679D8(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, double a6, void (*a7)(id, uint64_t, id, void *, double))
{
  v12 = _Block_copy(aBlock);
  _Block_copy(v12);
  v13 = a3;
  v14 = a1;
  a7(v13, a4, v14, v12, a6);
  _Block_release(v12);
  _Block_release(v12);
}

uint64_t sub_100167B80(void *a1, int a2, id a3, uint64_t *a4)
{
  v5 = a1;
  v6 = [a3 stringFromContact:a1];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE500000000000000;
    v8 = 0x296C696E28;
  }

  v11 = [v5 phoneNumbers];
  sub_1000F5104(&unk_100939E80, &qword_100797248);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v135 = v10;
  v136 = a4;
  v134 = v8;
  v137 = v5;
  if (v20)
  {
    result = sub_100026EF4(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v22 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v12 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = [v23 value];
      v26 = [v25 stringValue];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v38 = *_swiftEmptyArrayStorage.clientIdentity;
      v37 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v38 >= v37 >> 1)
      {
        sub_100026EF4((v37 > 1), v38 + 1, 1);
      }

      ++v22;
      *_swiftEmptyArrayStorage.clientIdentity = v38 + 1;
      v39 = &_swiftEmptyArrayStorage + 16 * v38;
      *(v39 + 4) = v27;
      *(v39 + 5) = v29;
    }

    while (v20 != v22);
    v12, v30, v31, v32, v33, v34, v35, v36;
    v5 = v137;
  }

  else
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  v40 = [v5 emailAddresses];
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v41;
  if (v41 >> 62)
  {
    v50 = _CocoaArrayWrapper.endIndex.getter();
    v49 = v41;
    if (v50)
    {
LABEL_19:
      v51 = v49;
      result = sub_100026EF4(0, v50 & ~(v50 >> 63), 0);
      if ((v50 & 0x8000000000000000) == 0)
      {
        v52 = 0;
        v53 = v51;
        v138 = v51 & 0xC000000000000001;
        v54 = v51;
        do
        {
          if (v138)
          {
            v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v55 = *&v53->clientIdentity[8 * v52 + 16];
          }

          v56 = v55;
          v57 = [v55 value];
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v68 = *_swiftEmptyArrayStorage.clientIdentity;
          v67 = *&_swiftEmptyArrayStorage.clientIdentity[8];
          if (v68 >= v67 >> 1)
          {
            sub_100026EF4((v67 > 1), v68 + 1, 1);
          }

          ++v52;
          *_swiftEmptyArrayStorage.clientIdentity = v68 + 1;
          v69 = &_swiftEmptyArrayStorage + 16 * v68;
          *(v69 + 4) = v58;
          *(v69 + 5) = v60;
          v53 = v54;
        }

        while (v50 != v52);
        v54, v54, v61, v62, v63, v64, v65, v66;
        v5 = v137;
        goto LABEL_31;
      }

LABEL_37:
      __break(1u);
      return result;
    }
  }

  else
  {
    v50 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_19;
    }
  }

  v49, v42, v43, v44, v45, v46, v47, v48;
LABEL_31:
  v70 = [v5 identifier];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  _StringGuts.grow(_:)(41);
  0xE000000000000000, v74, v75, v76, v77, v78, v79, v80;
  v81._countAndFlagsBits = 0x6469202020200A3ALL;
  v81._object = 0xE90000000000003DLL;
  String.append(_:)(v81);
  v82._countAndFlagsBits = v71;
  v82._object = v73;
  String.append(_:)(v82);
  v73, v83, v84, v85, v86, v87, v88, v89;
  v90._countAndFlagsBits = 0x6F6870202020200ALL;
  v90._object = 0xEC0000003D73656ELL;
  String.append(_:)(v90);
  v91 = Array.description.getter();
  v93 = v92;
  &_swiftEmptyArrayStorage, v92, v94, v95, v96, v97, v98, v99;
  v100._countAndFlagsBits = v91;
  v100._object = v93;
  String.append(_:)(v100);
  v93, v101, v102, v103, v104, v105, v106, v107;
  v108._countAndFlagsBits = 0x616D65202020200ALL;
  v108._object = 0xEC0000003D736C69;
  String.append(_:)(v108);
  v109 = Array.description.getter();
  v111 = v110;
  &_swiftEmptyArrayStorage, v110, v112, v113, v114, v115, v116, v117;
  v118._countAndFlagsBits = v109;
  v118._object = v111;
  String.append(_:)(v118);
  v111, v119, v120, v121, v122, v123, v124, v125;
  v126 = *v136;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v136 = v126;
  if ((result & 1) == 0)
  {
    result = sub_100365788(0, *(v126 + 16) + 1, 1, v126, v127, v128, v129, v130);
    v126 = result;
    *v136 = result;
  }

  v132 = *(v126 + 16);
  v131 = *(v126 + 24);
  if (v132 >= v131 >> 1)
  {
    result = sub_100365788((v131 > 1), v132 + 1, 1, v126, v127, v128, v129, v130);
    v126 = result;
    *v136 = result;
  }

  *(v126 + 16) = v132 + 1;
  v133 = v126 + 16 * v132;
  *(v133 + 32) = v134;
  *(v133 + 40) = v135;
  return result;
}

void sub_1001680CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1001681C4(void **a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 objectForKey:v5];

  v8 = *a1;
  *a1 = v7;
}

uint64_t sub_10016824C()
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100939C00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RDXPCDebugPerformer: Notifying stores did change for isolated store", v3, 2u);
  }

  v4 = _REMStoreChangedNotificationName;

  return notify_post(v4);
}

void sub_100168340(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSURL *a4@<X8>)
{
  URL._bridgeToObjectiveC()(a4);
  v8 = v7;
  [*(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL) setObject:a2 forKey:v7];
  [*(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerNotificationCenterByContainerURL) setObject:a3 forKey:v8];
}

void sub_1001683D4(uint64_t a1)
{
  v1 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:a1];
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1009752E8;
  if (qword_1009367E0 != -1)
  {
    v3 = qword_1009752E8;
    swift_once();
    v2 = v3;
  }

  sub_1003A9DBC(v1, v2);
}

void sub_1001684CC(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100168548(void *a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v79 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4, v5);
  v86 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87, v7);
  v84 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchTime();
  v83 = *(v93 - 8);
  __chkstk_darwin(v93, v9);
  v78 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v92 = v74 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for URL();
  v19 = *(v96 - 8);
  __chkstk_darwin(v96, v20);
  v94 = v21;
  v95 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = v74 - v24;
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_100939C00);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "os_transaction INIT {name: com.apple.remindd.RDXPCDebugPerformer.destroyIsolatedStoreContainer}", v29, 2u);
  }

  v77 = os_transaction_create();
  v30 = objc_opt_self();
  v81 = a1;
  v31 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v33 = v32;
  (*(v15 + 8))(v18, v14);
  v34 = String._bridgeToObjectiveC()();
  v33, v35, v36, v37, v38, v39, v40, v41;
  v42 = [v30 urlForIsolatedContainerWithIdentifier:v34];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v90;
  v44 = *&v90[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue];
  v45 = *(v19 + 16);
  v47 = v95;
  v46 = v96;
  v91 = v25;
  v45(v95, v25, v96);
  v48 = *(v19 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v43;
  v80 = v19;
  v51 = *(v19 + 32);
  v50 = v19 + 32;
  v75 = v51;
  v51(v49 + ((v48 + 24) & ~v48), v47, v46);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1001894BC;
  *(v52 + 24) = v49;
  v76 = v49;
  v102 = sub_1000FDA90;
  v103 = v52;
  aBlock = _NSConcreteStackBlock;
  v99 = 1107296256;
  v100 = sub_10000F160;
  v101 = &unk_1008E75B0;
  v53 = _Block_copy(&aBlock);
  v90 = v43;

  dispatch_sync(v44, v53);
  _Block_release(v53);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_9;
  }

  v74[1] = v50;
  isEscapingClosureAtFileLocation = ~v48;
  if (qword_100935D30 != -1)
  {
LABEL_9:
    swift_once();
  }

  v74[0] = qword_100974CC8;
  v55 = v78;
  static DispatchTime.now()();
  + infix(_:_:)();
  v83 = *(v83 + 8);
  (v83)(v55, v93);
  v56 = v95;
  v57 = v96;
  v45(v95, v91, v96);
  v58 = (v48 + 32) & isEscapingClosureAtFileLocation;
  v59 = (v94 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v90;
  v63 = v81;
  *(v61 + 16) = v90;
  *(v61 + 24) = v63;
  v75(v61 + v58, v56, v57);
  v64 = (v61 + v59);
  v65 = v82;
  *v64 = v79;
  v64[1] = v65;
  *(v61 + v60) = v77;
  v102 = sub_100189520;
  v103 = v61;
  aBlock = _NSConcreteStackBlock;
  v99 = 1107296256;
  v100 = sub_100019200;
  v101 = &unk_1008E7600;
  v66 = _Block_copy(&aBlock);
  v67 = v62;
  v68 = v63;

  swift_unknownObjectRetain();
  v69 = v84;
  static DispatchQoS.unspecified.getter();
  v97 = &_swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v70 = v86;
  v71 = v89;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v72 = v92;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v66);
  swift_unknownObjectRelease();
  (*(v88 + 8))(v70, v71);
  (*(v85 + 8))(v69, v87);
  (v83)(v72, v93);
  (*(v80 + 8))(v91, v96);
}

void sub_100168EA0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerNotificationCenterByContainerURL);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  [v1 removeObjectForKey:v3];
}

void sub_100168F10(char *a1, void *a2, void *a3, void (*a4)(id), uint64_t a5)
{
  v89 = a5;
  v90 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v85 - v15;
  v93 = 1;
  v17 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue];
  v18 = *(v9 + 16);
  v88 = a3;
  v85 = v18;
  (v18)(&v85 - v15, a3, v8, v14);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a1;
  v22 = *(v9 + 32);
  v87 = v8;
  v22(v21 + v19, v16, v8);
  *(v21 + v20) = &v93;
  v23 = swift_allocObject();
  v23[2] = sub_1001895C0;
  v23[3] = v21;
  aBlock[4] = sub_1000FDA90;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008E7678;
  v24 = _Block_copy(aBlock);
  v25 = a2;
  v26 = a1;

  dispatch_sync(v17, v24);
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    v27 = [objc_opt_self() defaultManager];
    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
    if (v93 == 1)
    {
      URL._bridgeToObjectiveC()(v93);
      v30 = v29;
      v31 = [v27 rem_fileExistsAtURL:v29];

      if (v31)
      {
        URL._bridgeToObjectiveC()(v32);
        v34 = v33;
        aBlock[0] = 0;
        v35 = [v27 removeItemAtURL:v33 error:aBlock];

        if (!v35)
        {
          v57 = aBlock[0];
          v58 = _convertNSErrorToError(_:)();

          swift_willThrow();
          aBlock[0] = v58;
          sub_1000F5104(&unk_1009399E0, &qword_100795D00);
          sub_1000060C8(0, &qword_100939E60, NSError_ptr);
          swift_dynamicCast();
          v59 = v92;
          if (qword_100935AE8 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_100006654(v60, qword_100939C00);
          v61 = v25;
          v62 = v59;
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v94 = v67;
            *v65 = 136315394;
            v91 = v62;
            sub_10000CDE4(&unk_100939E68, &qword_100939E60, NSError_ptr, &protocol conformance descriptor for NSError);
            v68 = Error.rem_errorDescription.getter();
            v70 = v69;
            v71 = sub_10000668C(v68, v69, &v94);
            v70, v72, v73, v74, v75, v76, v77, v78;
            *(v65 + 4) = v71;
            *(v65 + 12) = 2112;
            *(v65 + 14) = v61;
            *v66 = v61;
            v79 = v61;
            _os_log_impl(&_mh_execute_header, v63, v64, "RDXPCDebugPerformer: Failed to delete isolated container {error: %s, token: %@}", v65, 0x16u);
            sub_1000050A4(v66, &unk_100938E70, &unk_100797230);

            sub_10000607C(v67);

            p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
          }

          v80 = v62;
          v90(v62);

LABEL_16:
          if (p_class_meths[349] == -1)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }

        v36 = qword_100935AE8;
        v37 = aBlock[0];
        if (v36 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100006654(v38, qword_100939C00);
        v39 = v86;
        v85(v86, v88, v87);
        v40 = v25;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          aBlock[0] = v88;
          *v43 = 138412546;
          *(v43 + 4) = v40;
          *v44 = v40;
          *(v43 + 12) = 2080;
          v45 = v40;
          v46 = URL.absoluteString.getter();
          v48 = v47;
          (*(v9 + 8))(v39, v87);
          v49 = sub_10000668C(v46, v48, aBlock);
          v48, v50, v51, v52, v53, v54, v55, v56;
          *(v43 + 14) = v49;
          _os_log_impl(&_mh_execute_header, v41, v42, "RDXPCDebugPerformer: Destroyed isolated container {token: %@, url: %s}", v43, 0x16u);
          sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

          sub_10000607C(v88);

          p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
        }

        else
        {

          (*(v9 + 8))(v39, v87);
        }
      }
    }

    v90(0);

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_17:
  v81 = type metadata accessor for Logger();
  sub_100006654(v81, qword_100939C00);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "os_transaction RELEASE {name: com.apple.remindd.RDXPCDebugPerformer.destroyIsolatedStoreContainer}", v84, 2u);
  }
}

void sub_100169744(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v52 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100939C00);
  v13 = a1;
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v51 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v50 = v14;
    *v18 = 138412546;
    *(v18 + 4) = v13;
    *v19 = v13;
    *(v18 + 12) = 2112;
    v20 = v11;
    v21 = a3;
    v22 = v8;
    v23 = *&v50[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL];
    *(v18 + 14) = v23;
    v19[1] = v23;
    v24 = v13;
    v25 = v23;
    v8 = v22;
    a3 = v21;
    v11 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: Request to destroy isolated container {token: %@, storeControllers: %@}", v18, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v14 = v50;

    v7 = v51;
  }

  v26 = *&v14[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL];
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = [v26 objectForKey:v28];

  if (v30)
  {

    (*(v8 + 16))(v11, a3, v7);
    v31 = v13;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51 = v7;
      v36 = v35;
      v37 = swift_slowAlloc();
      v53 = v37;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v36 = v31;
      *(v34 + 12) = 2080;
      v38 = v31;
      v39 = URL.absoluteString.getter();
      v41 = v40;
      (*(v8 + 8))(v11, v51);
      v42 = sub_10000668C(v39, v41, &v53);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v34 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "RDXPCDebugPerformer: Destroying an isolated container that still has live references to it, skipping {token: %@, url: %s}", v34, 0x16u);
      sub_1000050A4(v36, &unk_100938E70, &unk_100797230);

      sub_10000607C(v37);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    *v52 = 0;
  }
}

void sub_100169C0C(void (*a1)(_TtC7remindd19RDXPCStorePerformer *, void))
{
  v2 = [objc_opt_self() sharedManager];
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v4 = [v2 stateString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = 4013373;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v16 = [objc_opt_self() sharedManager];
  v17 = v16;
  if (v16 && (v18 = [v16 stateString]) != 0)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100791300;
  if (v22)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v22)
  {
    v25 = v22;
  }

  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  sub_100271EA8(v23);
  v26 = inited;
  v27 = sub_10003450C(inited);
  v26, v28, v29, v30, v31, v32, v33, v34;
  a1(v27, 0);
  v27, v35, v36, v37, v38, v39, v40, v41;
}

void sub_100169E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_100169F00(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void (*a3)(void))
{
  v6 = type metadata accessor for DebugPerformerMockDABabysittableAccount();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7reminddP33_A793612D66A4A6A32EDDE79136FC5A3839DebugPerformerMockDABabysittableAccount_accountID];
  *v8 = a1;
  *(v8 + 1) = a2;
  v27.receiver = v7;
  v27.super_class = v6;

  v9 = objc_msgSendSuper2(&v27, "init");
  v10 = [objc_opt_self() sharedBabysitter];
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    v13 = String._bridgeToObjectiveC()();
    [v11 registerAccount:v12 forOperationWithName:v13];
  }

  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939C00);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  a2, v17, v18, v19, v20, v21, v22, v23;
  if (os_log_type_enabled(v15, v16))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10000668C(a1, a2, &v26);
    _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: Called registerBabysitter {waiterID: %s}", v24, 0xCu);
    sub_10000607C(v25);
  }

  a3(0);
}

uint64_t sub_10016A210(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t (*a3)(void))
{
  v6 = [objc_opt_self() sharedBabysitter];
  if (v6)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    [v7 giveAccountWithIDAnotherChance:v8];
  }

  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100939C00);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  a2, v12, v13, v14, v15, v16, v17, v18;
  if (os_log_type_enabled(v10, v11))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10000668C(a1, a2, &v22);
    _os_log_impl(&_mh_execute_header, v10, v11, "RDXPCDebugPerformer: Called resetBabysitter {waiterID: %s}", v19, 0xCu);
    sub_10000607C(v20);
  }

  return a3(0);
}

void sub_10016A548(uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v65 - v15;
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    return;
  }

  if (!(v17 >> 62))
  {
    v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 < 2)
    {
      if (v25)
      {
        goto LABEL_5;
      }

LABEL_25:
      v17, v18, v19, v20, v21, v22, v23, v24;
      goto LABEL_26;
    }

LABEL_27:
    v17, v18, v19, v20, v21, v22, v23, v24;
    v64 = objc_opt_self();
    v62 = String._bridgeToObjectiveC()();
    v63 = [v64 internalErrorWithDebugDescription:v62];
    goto LABEL_28;
  }

  v58 = v17;
  v59 = _CocoaArrayWrapper.endIndex.getter();
  v17 = v58;
  if (v59 > 1)
  {
    goto LABEL_27;
  }

  v60 = _CocoaArrayWrapper.endIndex.getter();
  v17 = v58;
  if (!v60)
  {
    goto LABEL_25;
  }

LABEL_5:
  v67 = 0;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v26 = v17;
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v26 = v17;
    v27 = *(v17 + 32);
  }

  v35 = v27;
  v26, v28, v29, v30, v31, v32, v33, v34;
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {

LABEL_26:
    v61 = objc_opt_self();
    v62 = String._bridgeToObjectiveC()();
    v63 = [v61 internalErrorWithDebugDescription:v62];
LABEL_28:
    v63;

    swift_willThrow();
    return;
  }

  v37 = v36;
  if (![v36 markedForDeletion])
  {
    goto LABEL_18;
  }

  v38 = [v37 account];
  if (!v38)
  {
    goto LABEL_18;
  }

  v66 = v35;
  v39 = v38;
  v40 = [v38 identifier];

  if (v40)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_100031B58(v12, v16, &unk_100939D90, "8\n\r");
  v41 = (*(v5 + 48))(v16, 1, v4);
  v35 = v66;
  if (v41)
  {
    sub_1000050A4(v16, &unk_100939D90, "8\n\r");
LABEL_18:
    v42 = objc_opt_self();
    v43 = String._bridgeToObjectiveC()();
    v44 = [v42 internalErrorWithDebugDescription:v43];
LABEL_19:
    v44;

    swift_willThrow();
    return;
  }

  (*(v5 + 16))(v8, v16, v4);
  sub_1000050A4(v16, &unk_100939D90, "8\n\r");
  v45 = UUID.uuidString.getter();
  v47 = v46;
  (*(v5 + 8))(v8, v4);
  v48 = [v37 newlyCreatedRecord];
  if (!v48)
  {
    v47, v49, v50, v51, v52, v53, v54, v55;
    v57 = objc_opt_self();
    v43 = String._bridgeToObjectiveC()();
    v44 = [v57 internalErrorWithDebugDescription:v43];
    goto LABEL_19;
  }

  v56 = v48;

  *a2 = v45;
  a2[1] = v47;
  a2[2] = v56;
}

uint64_t sub_10016AAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  if (!a2)
  {
    return a3(0);
  }

  v4 = objc_opt_self();
  swift_errorRetain();
  _StringGuts.grow(_:)(31);
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  swift_getErrorValue();
  v12._countAndFlagsBits = Error.rem_errorDescription.getter();
  object = v12._object;
  String.append(_:)(v12);
  object, v14, v15, v16, v17, v18, v19, v20;
  v21 = String._bridgeToObjectiveC()();
  0x80000001007EDF70, v22, v23, v24, v25, v26, v27, v28;
  v29 = [v4 internalErrorWithDebugDescription:v21];

  a3(v29);
}

void sub_10016AC08(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10016AEE8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10016AFA8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  __chkstk_darwin(Request, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 16))(v12, a2, v13);
  swift_storeEnumTagMultiPayload();
  v14 = sub_10017324C();
  type metadata accessor for REMCDManualSortHint();
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {
    sub_100188054(v12, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);

    v16 = v4;
    goto LABEL_15;
  }

  v17 = v15;
  sub_100188054(v12, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);

  v32 = a4;
  v33 = a3;
  if (v17 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_5:
      if (v25 < 1)
      {
        __break(1u);
      }

      v26 = 0;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v27 = *(v17 + 8 * v26 + 32);
        }

        v28 = v27;
        ++v26;
        [v27 markForDeletion];
        [v28 updateChangeCount];
      }

      while (v25 != v26);
    }
  }

  v17, v18, v19, v20, v21, v22, v23, v24;
  v34 = 0;
  if ([a1 save:&v34])
  {
    v29 = v34;
    return (v33)(0);
  }

  v31 = v34;
  v16 = _convertNSErrorToError(_:)();

  swift_willThrow();
  a3 = v33;
LABEL_15:
  swift_errorRetain();
  a3(v16);
}

double sub_10016B578(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
  _Block_release(v8);

  v11, v16, v17, v18, v19, v20, v21, v22;

  v14, v23, v24, v25, v26, v27, v28, v29;
  return result;
}

uint64_t sub_10016B818(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v49 = a3;
  v10 = type metadata accessor for Date();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  __chkstk_darwin(Request, v15);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 16))(v17, a2, v18);
  swift_storeEnumTagMultiPayload();
  v19 = sub_10017324C();
  type metadata accessor for REMCDManualSortHint();
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {
    sub_100188054(v17, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);

    v21 = v5;
    goto LABEL_15;
  }

  v43[1] = 0;
  v48 = v20;
  sub_100188054(v17, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);

  v29 = v48;
  v45 = a5;
  v46 = a4;
  v44 = a1;
  if (v48 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v48;
    v30 = v39;
    v31 = v47;
    if (v39)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v30 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v47;
    if (v30)
    {
LABEL_5:
      if (v30 < 1)
      {
        __break(1u);
      }

      v32 = 0;
      v33 = v29 & 0xC000000000000001;
      v34 = (v31 + 16);
      v35 = (v31 + 8);
      do
      {
        if (v33)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v36 = *(v29 + 8 * v32 + 32);
        }

        v37 = v36;
        ++v32;
        (*v34)(v13, v49, v10);
        Date.timeIntervalSinceReferenceDate.getter();
        [v37 setLastAccessedSinceReferenceDate:Int32.init(timeIntervalSinceReferenceDate:)(v38)];
        (*v35)(v13, v10);
        [v37 updateChangeCount];

        v29 = v48;
      }

      while (v30 != v32);
    }
  }

  v29, v22, v23, v24, v25, v26, v27, v28;
  v50 = 0;
  if ([v44 save:&v50])
  {
    v40 = v50;
    return (v46)(0);
  }

  v42 = v50;
  v21 = _convertNSErrorToError(_:)();

  swift_willThrow();
  a4 = v46;
LABEL_15:
  swift_errorRetain();
  a4(v21);
}

void sub_10016BD98()
{
  v1 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater;
  if (!*(v0 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater))
  {
    v2 = v0;
    v3 = v0 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v3 + 8);
      v7 = *(v2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeContainerToken);
      type metadata accessor for DebugPerformerManualHashtagLabelUpdaterDelegate();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
      v9 = v7;
      v10 = static OS_dispatch_queue.main.getter();
      v11 = *(v2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);

      v12 = sub_10020BECC(v10, v11, v5, v6, v8, &off_1008E6ED0);

      if ([objc_opt_self() isMainThread])
      {
        sub_1001F754C();

        swift_unknownObjectRelease();
      }

      else
      {
        v16 = static OS_dispatch_queue.main.getter();
        v17 = swift_allocObject();
        *(v17 + 16) = sub_100189318;
        *(v17 + 24) = v12;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_10000F188;
        *(v18 + 24) = v17;
        aBlock[4] = sub_1000FDA90;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000F160;
        aBlock[3] = &unk_1008E7268;
        v19 = _Block_copy(aBlock);

        dispatch_sync(v16, v19);

        swift_unknownObjectRelease();
        _Block_release(v19);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          return;
        }
      }

      *(v2 + v1) = v12;
    }

    else
    {
      if (qword_100935AE8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_100939C00);
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v14, "RDXPCDebugPerformer: Failed to set up manual hashtag label updater; missing xpcDaemon", v15, 2u);
      }
    }
  }
}

void sub_10016C150()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater);
  if (v1)
  {
    v2 = objc_opt_self();

    if ([v2 isMainThread])
    {
      v3 = sub_1001F96A4();
      sub_1001FA03C(v3, 0);

      v3, v4, v5, v6, v7, v8, v9, v10;
    }

    else
    {
      sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
      v14 = static OS_dispatch_queue.main.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100189310;
      *(v15 + 24) = v1;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_100008D30;
      *(v16 + 24) = v15;
      aBlock[4] = sub_1000529DC;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F160;
      aBlock[3] = &unk_1008E71F0;
      v17 = _Block_copy(aBlock);

      dispatch_sync(v14, v17);

      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100939C00);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "RDXPCDebugPerformer: Failed to refresh hashtag labels; missing manualHashtagLabelUpdater", v13, 2u);
    }
  }
}

double sub_10016C434()
{
  v0 = sub_1001F96A4();
  sub_1001FA03C(v0, 0);

  v0, v1, v2, v3, v4, v5, v6, v7;
  return result;
}

uint64_t sub_10016C4C0()
{
  v2[0] = 0xD000000000000036;
  v2[1] = 0x80000001007EDCB0;
  v2[3] = 0;
  v3[0] = 0;
  v2[2] = 0;
  *(v3 + 6) = 0;
  return sub_100014A64(v2, sub_1001892F4, &v1);
}

void sub_10016C6AC(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v5 + 8);
    v9 = type metadata accessor for RDDaemonController();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100009DAC(a3, &v15);
    v11 = sub_1005564D4(v7, a3, 0, v9, ObjectType, v8);
    v12 = [objc_allocWithZone(REMStore) initWithDaemonController:v11];
    type metadata accessor for RDTemplateOperationQueue();
    sub_100586DF0(a1, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    [v13 internalErrorWithDebugDescription:v14];

    swift_willThrow();
  }
}

void sub_10016C860(double a1)
{
  *&v42 = 0xD000000000000035;
  *(&v42 + 1) = 0x80000001007EDC70;
  v44 = 0;
  v45[0] = 0;
  v43 = 0;
  *(v45 + 6) = 0;
  v3 = v1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    v5 = type metadata accessor for RDDaemonController();
    ObjectType = swift_getObjectType();
    v7 = swift_unknownObjectRetain();
    v8 = sub_1005564D4(v7, &v42, 0, v5, ObjectType, v4);
    v9 = [objc_allocWithZone(REMStore) initWithDaemonController:v8];
    v10 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
    sub_1000063E8();
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v12, v14, v15, v16, v17, v18, v19, v20;
    oslog = [v10 newBackgroundContextWithAuthor:v13];

    sub_1000F5104(&unk_100939E10, &qword_1007970D0);
    sub_10016CBAC(oslog, v9, &unk_1008E7138, &unk_1007970E0, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 internalErrorWithDebugDescription:v22];

    swift_willThrow();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100939C00);
    v25 = v23;
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter();
      v31 = v30;
      v32 = sub_10000668C(v29, v30, &v41);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, oslog, v26, "RDXPCDebugPerformer: Failed to handle incomplete grocery operation queue items {error: %s}", v27, 0xCu);
      sub_10000607C(v28);

      return;
    }
  }
}

uint64_t sub_10016CBAC(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v39 = a4;
  v37 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37, v9);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for DispatchTime();
  v12 = *(v36 - 8);
  __chkstk_darwin(v36, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v36 - v18;
  v20 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v36 - v22;
  v24 = dispatch_group_create();
  dispatch_group_enter(v24);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a1;
  v26[5] = a2;
  v27 = v38;
  v26[6] = v24;
  v26[7] = v27;
  v28 = a1;
  v29 = a2;
  v30 = v24;
  sub_1001955C4(0, 0, v23, v39, v26);

  result = static DispatchTime.now()();
  v32 = a5 * 1000.0;
  if (COERCE__INT64(fabs(a5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v32 < 9.22337204e18)
  {
    *v11 = v32;
    v33 = v37;
    (*(v8 + 104))(v11, enum case for DispatchTimeInterval.milliseconds(_:), v37);
    + infix(_:_:)();
    (*(v8 + 8))(v11, v33);
    v34 = *(v12 + 8);
    v35 = v36;
    v34(v15, v36);
    OS_dispatch_group.wait(timeout:)();

    return (v34)(v19, v35);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_10016CF50(double a1)
{
  *&v42 = 0xD000000000000040;
  *(&v42 + 1) = 0x80000001007EDC00;
  v44 = 0;
  v45[0] = 0;
  v43 = 0;
  *(v45 + 6) = 0;
  v3 = v1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    v5 = type metadata accessor for RDDaemonController();
    ObjectType = swift_getObjectType();
    v7 = swift_unknownObjectRetain();
    v8 = sub_1005564D4(v7, &v42, 0, v5, ObjectType, v4);
    v9 = [objc_allocWithZone(REMStore) initWithDaemonController:v8];
    v10 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
    sub_1000063E8();
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v12, v14, v15, v16, v17, v18, v19, v20;
    oslog = [v10 newBackgroundContextWithAuthor:v13];

    sub_1000F5104(&unk_100936F40, &unk_100791B30);
    sub_10016CBAC(oslog, v9, &unk_1008E70C0, &unk_1007970B0, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 internalErrorWithDebugDescription:v22];

    swift_willThrow();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100939C00);
    v25 = v23;
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter();
      v31 = v30;
      v32 = sub_10000668C(v29, v30, &v41);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, oslog, v26, "RDXPCDebugPerformer: Failed to handle incomplete auto-categorization operation queue items {error: %s}", v27, 0xCu);
      sub_10000607C(v28);

      return;
    }
  }
}

uint64_t sub_10016D364(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for RDPublicCloudDatabaseControllerMock();
  v9 = swift_allocObject();
  *(v9 + 16) = [objc_opt_self() cancelledError];
  *(v9 + 56) = 1;
  v10 = objc_opt_self();

  v11 = [v10 sharedConfiguration];
  [v11 templatePublicLinkTTL];
  v13 = v12;

  v25 = v8;
  v26 = &off_1008E9260;
  *&v24 = v9;
  type metadata accessor for RDTemplateOperationCreateOrUpdateTemplatePublicLink();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_100054B6C(&v24, v14 + 32);
  *(v14 + 72) = 1;
  *(v14 + 80) = 1000;
  *(v14 + 88) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = a2;
  v17 = a3;

  v18 = [v10 sharedConfiguration];
  [v18 templatePublicLinkOperationTimeoutInterval];
  v20 = v19;

  sub_1005AA79C(a1, sub_10018ADF8, v15, v20);
}

uint64_t sub_10016D5DC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RDPublicCloudDatabaseControllerMock();
  v9 = swift_allocObject();
  *(v9 + 16) = [objc_opt_self() cancelledError];
  *(v9 + 56) = 1;
  v19 = v8;
  v20 = &off_1008E9260;
  *&v18 = v9;
  type metadata accessor for RDTemplateOperationRevokeTemplatePublicLink();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  sub_100054B6C(&v18, inited + 24);
  *(inited + 64) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = objc_opt_self();

  v13 = a2;

  v14 = [v12 sharedConfiguration];
  [v14 templatePublicLinkOperationTimeoutInterval];
  v16 = v15;

  sub_10012F9F0(a1, sub_100187DC0, v11, v16);

  swift_setDeallocating();

  sub_10000607C((inited + 24));
}

unint64_t sub_10016D790(_TtC7remindd19RDXPCStorePerformer *a1)
{
  _StringGuts.grow(_:)(35);
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;
  a1, v10, v12, v13, v14, v15, v16, v17;
  v18._countAndFlagsBits = v9;
  v18._object = v11;
  String.append(_:)(v18);
  v11, v19, v20, v21, v22, v23, v24, v25;
  return 0xD000000000000021;
}

void sub_10016D898(unint64_t a1, unint64_t a2, uint64_t a3, id *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v346 = a6;
  v347 = a5;
  v352 = a4;
  v358 = a3;
  v8 = sub_1000F5104(&qword_100939DC8, &qword_100796FF8);
  __chkstk_darwin(v8 - 8, v9);
  v356 = &v340 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v355 = &v340 - v13;
  v351 = type metadata accessor for URL();
  v363 = *(v351 - 8);
  __chkstk_darwin(v351, v14);
  v348 = &v340 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v340 - v18;
  __chkstk_darwin(v20, v21);
  v23 = (&v340 - v22);
  v24 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v24 - 8, v25);
  v361 = &v340 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v365 = &v340 - v29;
  __chkstk_darwin(v30, v31);
  v368 = &v340 - v32;
  v33 = type metadata accessor for UUID();
  v373 = *(v33 - 8);
  __chkstk_darwin(v33, v34);
  v353 = &v340 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v354 = &v340 - v38;
  __chkstk_darwin(v39, v40);
  v367 = (&v340 - v41);
  __chkstk_darwin(v42, v43);
  v45 = (&v340 - v44);
  __chkstk_darwin(v46, v47);
  v49 = (&v340 - v48);
  if (a2 >> 62)
  {
    goto LABEL_100;
  }

  v50 = a2;
  v51 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  a2 = &_swiftEmptyArrayStorage;
  v374 = v33;
  v350 = v19;
  v370 = v45;
  v360 = a1;
  v357 = v23;
  if (v51)
  {
    v376 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v51 & ~(v51 >> 63), 0);
    if (v51 < 0)
    {
      __break(1u);
LABEL_102:
      __break(1u);
    }

    v52 = 0;
    a2 = v376;
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v53 = *(v50 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = [v53 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v376 = a2;
      v57 = *(a2 + 16);
      v56 = *(a2 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_100253258((v56 > 1), v57 + 1, 1);
        a2 = v376;
      }

      ++v52;
      *(a2 + 16) = v57 + 1;
      v58 = a2 + ((*(v373 + 80) + 32) & ~*(v373 + 80)) + *(v373 + 72) * v57;
      v33 = v374;
      (*(v373 + 32))(v58, v49, v374);
    }

    while (v51 != v52);
  }

  v59 = v372;
  sub_1001843B4(a2);
  v19 = v368;
  if (v59)
  {
    a2, v61, v62, v63, v64, v65, v66, v67;
    return;
  }

  v359 = 0;
  a1 = v60;
  a2, v61, v62, v63, v64, v65, v66, v67;
  v75 = a1;
  v45 = *(a1 + 16);
  if (v45)
  {
    v349 = 0;
    v23 = 0;
    v341 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController;
    v49 = (a1 + 32);
    v371 = (v373 + 48);
    v366 = (v373 + 32);
    v364 = (v373 + 56);
    v345 = (v363 + 1);
    v340 = (v373 + 16);
    v363 = (v373 + 8);
    v76 = &_swiftEmptyArrayStorage;
    v362 = v45;
    v369 = a1;
    while (1)
    {
      if (v23 >= *v75->clientIdentity)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        v50 = a2;
        v51 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v372 = v76;
      sub_10000A87C(v49, &v376);
      v87 = v377;
      v88 = v378;
      sub_10000F61C(&v376, v377);
      (*(v88 + 8))(v87, v88);
      v89 = *v371;
      if ((*v371)(v19, 1, v33) == 1)
      {
        sub_1000050A4(v19, &unk_100939D90, "8\n\r");
        if (qword_100935AE8 != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_100006654(v90, qword_100939C00);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "RDXPCDebugPerformer: revertImageAttachmentsToUnDeduped failed to get identifier from attachment", v93, 2u);
        }

        v94 = v377;
        v95 = v378;
        sub_10000F61C(&v376, v377);
        a2 = (*(v95 + 56))(v94, v95);
        v97 = v96;
        v98 = v372;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_100365788(0, *v98->clientIdentity + 1, 1, v98, v99, v100, v101, v102);
        }

        a1 = *v98->clientIdentity;
        v103 = *&v98->clientIdentity[8];
        v104 = v98;
        if (a1 >= v103 >> 1)
        {
          v104 = sub_100365788((v103 > 1), a1 + 1, 1, v98, v99, v100, v101, v102);
        }

        *v104->clientIdentity = a1 + 1;
        v76 = v104;
        v105 = v104 + 16 * a1;
        *(v105 + 4) = a2;
        *(v105 + 5) = v97;
      }

      else
      {
        v106 = v19;
        v107 = *v366;
        (*v366)(v370, v106, v33);
        v108 = v377;
        v109 = v378;
        sub_10000F61C(&v376, v377);
        v110 = (*(v109 + 48))(v108, v109);
        if (!v110)
        {
          v115 = v365;
          (*v364)(v365, 1, 1, v33);
LABEL_35:
          sub_1000050A4(v115, &unk_100939D90, "8\n\r");
          if (qword_100935AE8 != -1)
          {
            swift_once();
          }

          v116 = type metadata accessor for Logger();
          sub_100006654(v116, qword_100939C00);
          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.error.getter();
          v119 = os_log_type_enabled(v117, v118);
          v19 = v368;
          if (v119)
          {
            v120 = swift_slowAlloc();
            *v120 = 0;
            _os_log_impl(&_mh_execute_header, v117, v118, "RDXPCDebugPerformer: revertImageAttachmentsToUnDeduped failed to get account from attachment", v120, 2u);
          }

          v121 = v377;
          v122 = v378;
          sub_10000F61C(&v376, v377);
          a2 = (*(v122 + 56))(v121, v122);
          v124 = v123;
          v125 = v372;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_100365788(0, *v125->clientIdentity + 1, 1, v125, v126, v127, v128, v129);
          }

          a1 = *v125->clientIdentity;
          v130 = *&v125->clientIdentity[8];
          v131 = v125;
          if (a1 >= v130 >> 1)
          {
            v131 = sub_100365788((v130 > 1), a1 + 1, 1, v125, v126, v127, v128, v129);
          }

          (*v363)(v370, v33);
          *v131->clientIdentity = a1 + 1;
          v76 = v131;
          v132 = v131 + 16 * a1;
          *(v132 + 4) = a2;
          *(v132 + 5) = v124;
          v45 = v362;
          goto LABEL_17;
        }

        v111 = v110;
        v112 = [v110 identifier];

        v113 = v361;
        if (v112)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v114 = 0;
        }

        else
        {
          v114 = 1;
        }

        (*v364)(v113, v114, 1, v33);
        v115 = v365;
        sub_100031B58(v113, v365, &unk_100939D90, "8\n\r");
        if (v89(v115, 1, v33) == 1)
        {
          goto LABEL_35;
        }

        v107(v367, v115, v33);
        v133 = v377;
        v134 = v378;
        sub_10000F61C(&v376, v377);
        v135 = (*(v134 + 16))(v133, v134);
        if (!v136)
        {
          if (qword_100935AE8 != -1)
          {
            swift_once();
          }

          v205 = type metadata accessor for Logger();
          sub_100006654(v205, qword_100939C00);
          v206 = Logger.logObject.getter();
          v207 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v206, v207))
          {
            v208 = swift_slowAlloc();
            *v208 = 0;
            v209 = v207;
            v210 = v206;
            v211 = "RDXPCDebugPerformer: revertImageAttachmentsToUnDeduped failed to get fileName from attachment";
            goto LABEL_60;
          }

LABEL_61:

          v215 = v377;
          v216 = v378;
          sub_10000F61C(&v376, v377);
          v344 = (*(v216 + 56))(v215, v216);
          v343 = v217;
          v218 = v372;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v218 = sub_100365788(0, *v218->clientIdentity + 1, 1, v218, v219, v220, v221, v222);
          }

          a1 = *v218->clientIdentity;
          v223 = *&v218->clientIdentity[8];
          v224 = v218;
          if (a1 >= v223 >> 1)
          {
            v224 = sub_100365788((v223 > 1), a1 + 1, 1, v218, v219, v220, v221, v222);
          }

          a2 = v363;
          v225 = *v363;
          (*v363)(v367, v33);
          v225(v370, v33);
          *v224->clientIdentity = a1 + 1;
          v76 = v224;
          v226 = v224 + 16 * a1;
          v227 = v343;
          *(v226 + 4) = v344;
          *(v226 + 5) = v227;
          v19 = v368;
          goto LABEL_17;
        }

        v137 = v135;
        v138 = v136;
        v139 = v377;
        v140 = v378;
        sub_10000F61C(&v376, v377);
        v141 = (*(v140 + 24))(v139, v140);
        if (!v142)
        {
          v138, 0, v143, v144, v145, v146, v147, v148;
          if (qword_100935AE8 != -1)
          {
            swift_once();
          }

          v212 = type metadata accessor for Logger();
          sub_100006654(v212, qword_100939C00);
          v206 = Logger.logObject.getter();
          v213 = static os_log_type_t.error.getter();
          v214 = os_log_type_enabled(v206, v213);
          v33 = v374;
          v45 = v362;
          if (v214)
          {
            v208 = swift_slowAlloc();
            *v208 = 0;
            v209 = v213;
            v210 = v206;
            v211 = "RDXPCDebugPerformer: revertImageAttachmentsToUnDeduped failed to get sha512Sum from attachment";
LABEL_60:
            _os_log_impl(&_mh_execute_header, v210, v209, v211, v208, 2u);
          }

          goto LABEL_61;
        }

        v149 = v141;
        v150 = v142;
        v151 = *(v358 + v341);
        v344 = v137;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v153 = UUID._bridgeToObjectiveC()().super.isa;
        v154 = String._bridgeToObjectiveC()();
        v342 = v149;
        v343 = v150;
        v155 = String._bridgeToObjectiveC()();
        v156 = [v151 URLForAttachmentFile:isa accountID:v153 fileName:v154 sha512Sum:v155];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v157 = UUID._bridgeToObjectiveC()().super.isa;
        v158 = UUID._bridgeToObjectiveC()().super.isa;
        v159 = String._bridgeToObjectiveC()();
        v138, v160, v161, v162, v163, v164, v165, v166;
        v167 = [v151 URLForAttachmentFile:v157 accountID:v158 fileName:v159 sha512Sum:0];

        v168 = v350;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v169 = objc_opt_self();
        v170 = [v169 defaultManager];
        v171 = v348;
        URL.deletingLastPathComponent()();
        URL._bridgeToObjectiveC()(v172);
        v174 = v173;
        v344 = *v345;
        v344(v171, v351);
        v375[0] = 0;
        LOBYTE(v159) = [v170 createDirectoryAtURL:v174 withIntermediateDirectories:1 attributes:0 error:v375];

        if ((v159 & 1) == 0)
        {
          v291 = v375[0];
          v372, v292, v293, v294, v295, v296, v297, v298;
          v343, v299, v300, v301, v302, v303, v304, v305;
          v369, v306, v307, v308, v309, v310, v311, v312;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v313 = v168;
LABEL_97:
          v336 = v351;
          v337 = v344;
          v344(v313, v351);
          v337(v357, v336);
          v338 = *v363;
          v339 = v374;
          (*v363)(v367, v374);
          v338(v370, v339);
          sub_10000607C(&v376);
          goto LABEL_93;
        }

        v175 = v375[0];
        v176 = [v169 defaultManager];
        URL._bridgeToObjectiveC()(&v379);
        v178 = v177;
        URL._bridgeToObjectiveC()(v179);
        v181 = v180;
        v375[0] = 0;
        v182 = [v176 copyItemAtURL:v178 toURL:v180 error:v375];

        v183 = v375[0];
        if (!v182)
        {
          v314 = v375[0];
          v372, v315, v316, v317, v318, v319, v320, v321;
          v343, v322, v323, v324, v325, v326, v327, v328;
          v369, v329, v330, v331, v332, v333, v334, v335;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v313 = v350;
          goto LABEL_97;
        }

        v184 = v377;
        v185 = v378;
        sub_10000C9DC(&v376, v377);
        v186 = *(v185 + 32);
        v187 = v183;
        v186(0, 0, v184, v185);
        sub_10003E114(v349, 0);
        v188 = v352;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v375[0] = *v188;
        v190 = v375[0];
        *v188 = 0x8000000000000000;
        v198 = sub_100363F20(v367);
        v199 = v190[2];
        v200 = (v191 & 1) == 0;
        v201 = v199 + v200;
        if (__OFADD__(v199, v200))
        {
          goto LABEL_102;
        }

        v202 = v191;
        if (v190[3] >= v201)
        {
          v204 = v342;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100374450();
            v190 = v375[0];
          }
        }

        else
        {
          sub_10036C60C(v201, isUniquelyReferenced_nonNull_native);
          v190 = v375[0];
          v203 = sub_100363F20(v367);
          v204 = v342;
          if ((v202 & 1) != (v191 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v198 = v203;
        }

        v228 = v350;
        v45 = v362;
        v229 = v352;
        v230 = *v352;
        *v352 = v190;
        v230, v191, v192, v193, v194, v195, v196, v197;
        v231 = *v229;
        if ((v202 & 1) == 0)
        {
          v232 = v354;
          (*v340)(v354, v367, v374);
          sub_1002CB9B0(v198, v232, _swiftEmptySetSingleton, v231);
        }

        sub_100378434(v375, v204, v343);
        v375[1], v77, v78, v79, v80, v81, v82, v83;
        v84 = v228;
        v85 = v351;
        v86 = v344;
        v344(v84, v351);
        v86(v357, v85);
        a2 = v363;
        a1 = *v363;
        v33 = v374;
        (*v363)(v367, v374);
        (a1)(v370, v33);
        v349 = sub_1001424E8;
        v19 = v368;
        v76 = v372;
      }

LABEL_17:
      v23 = (v23 + 1);
      sub_10000607C(&v376);
      v49 += 5;
      v75 = v369;
      if (v45 == v23)
      {
        goto LABEL_71;
      }
    }
  }

  v349 = 0;
  v76 = &_swiftEmptyArrayStorage;
LABEL_71:
  v75, v68, v69, v70, v71, v72, v73, v74;
  v376 = 0;
  v233 = [v360 save:&v376];
  v234 = v376;
  if (v233)
  {
    if (*v76->clientIdentity)
    {
      sub_100187D44();
      v235 = swift_allocError();
      *v236 = v76;
      v237 = v234;
      v347(v235);
    }

    else
    {
      v246 = v376;
      v76, v247, v248, v249, v250, v251, v252, v253;
      v254 = *v352;
      v255 = *(*v352 + 8);
      v368 = *v352 + 64;
      v256 = 1 << v254[32];
      v257 = -1;
      if (v256 < 64)
      {
        v257 = ~(-1 << v256);
      }

      a2 = v257 & v255;
      v23 = ((v256 + 63) >> 6);
      v370 = (v373 + 16);
      v371 = v254;
      v45 = (v373 + 32);
      v372 = (v373 + 8);

      v258 = 0;
      v49 = &qword_100797000;
      v369 = v45;
      if (!a2)
      {
        goto LABEL_79;
      }

LABEL_78:
      a1 = v258;
LABEL_86:
      v261 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v262 = v261 | (a1 << 6);
      v263 = v371;
      v264 = v373;
      v265 = v354;
      (*(v373 + 16))(v354, *(v371 + 6) + *(v373 + 72) * v262, v33);
      v266 = *(v263 + 7);
      v267 = v33;
      v268 = *(v266 + 8 * v262);
      v269 = sub_1000F5104(&qword_100939DD8, &qword_100797000);
      v270 = *(v269 + 48);
      v271 = *(v264 + 32);
      v272 = v356;
      v273 = v265;
      v45 = v369;
      v271(v356, v273, v267);
      *&v272[v270] = v268;
      (*(*(v269 - 8) + 56))(v272, 0, 1, v269);

      v260 = a1;
      v274 = v272;
      while (1)
      {
        v275 = v355;
        sub_100031B58(v274, v355, &qword_100939DC8, &qword_100796FF8);
        v276 = sub_1000F5104(&qword_100939DD8, &qword_100797000);
        if ((*(*(v276 - 8) + 48))(v275, 1, v276) == 1)
        {

          v347(0);
          goto LABEL_93;
        }

        v277 = *(v275 + *(v276 + 48));
        v19 = v353;
        v278 = v275;
        v279 = v374;
        (v45->super.isa)(v353, v278, v374);
        v280 = objc_autoreleasePoolPush();
        v281 = v359;
        sub_10016F004(v358, v19, v360, v277, &v376);
        v359 = v281;
        if (v281)
        {
          break;
        }

        v277, v282, v283, v284, v285, v286, v287, v288;
        objc_autoreleasePoolPop(v280);
        (v372->super.isa)(v19, v279);
        v258 = v260;
        v33 = v279;
        v49 = &qword_100797000;
        if (a2)
        {
          goto LABEL_78;
        }

LABEL_79:
        if (v23 <= (v258 + 1))
        {
          v259 = (v258 + 1);
        }

        else
        {
          v259 = v23;
        }

        v260 = &v259[-1].shareRecordIDToRootRecordIDLock[9];
        while (1)
        {
          a1 = v258 + 1;
          if (__OFADD__(v258, 1))
          {
            goto LABEL_99;
          }

          if (a1 >= v23)
          {
            break;
          }

          a2 = *&v368[8 * a1];
          ++v258;
          if (a2)
          {
            goto LABEL_86;
          }
        }

        v289 = sub_1000F5104(&qword_100939DD8, &qword_100797000);
        v290 = v356;
        (*(*(v289 - 8) + 56))(v356, 1, 1, v289);
        v274 = v290;
        a2 = 0;
      }

      v277, v282, v283, v284, v285, v286, v287, v288;
      objc_autoreleasePoolPop(v280);

      (v372->super.isa)(v19, v279);
    }
  }

  else
  {
    v238 = v376;
    v76, v239, v240, v241, v242, v243, v244, v245;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_93:
  sub_10003E114(v349, 0);
}

void sub_10016F004(uint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5)
{
  v128 = a5;
  v129 = a1;
  v122 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001847EC(a2);
  if (v5)
  {
    *v128 = v5;
  }

  else
  {
    v127 = a2;
    v128 = v8;
    v123 = v16;
    v124 = v12;
    v125 = v11;
    v126 = v7;
    v130 = v17;
    v18 = v17;
    sub_1000F5104(&qword_100939DE0, qword_100797008);
    sub_10000CB48(&qword_100939DE8, &qword_100939DE0, qword_100797008, &protocol conformance descriptor for [A]);
    v19 = Sequence.compactMapToSet<A>(_:)();
    v117 = 0;
    v18, v20, v21, v22, v23, v24, v25, v26;
    v27 = v122;
    if (*(v19 + 16) <= *v122->clientIdentity >> 3)
    {
      v130 = v122;

      sub_10019BAF4(v19);
      v19, v38, v39, v40, v41, v42, v43, v44;
      v37 = v130;
    }

    else
    {

      v28 = sub_10019C4D4(v19, v27);
      v19, v29, v30, v31, v32, v33, v34, v35;
      v37 = v28;
    }

    v45 = v13;
    v46 = 0;
    v47 = &v37->clientIdentity[40];
    v48 = 1 << v37->clientIdentity[16];
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *&v37->clientIdentity[40];
    v121 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController;
    v51 = (v48 + 63) >> 6;
    v118 = (v45 + 8);
    v119 = (v128 + 1);
    *&v36 = 136315394;
    v116 = v36;
    v120 = v51;
    v122 = v37;
    while (v50)
    {
      v61 = v46;
LABEL_16:
      v62 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v63 = (*&v37->clientIdentity[32] + ((v61 << 10) | (16 * v62)));
      v65 = *v63;
      v64 = v63[1];
      v66 = *(v129 + v121);

      v67 = v125;
      UUID.init()();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v119)(v67, v126);
      v69 = UUID._bridgeToObjectiveC()().super.isa;
      v70 = String._bridgeToObjectiveC()();
      v128 = v65;
      v71 = String._bridgeToObjectiveC()();
      v72 = [v66 URLForAttachmentFile:isa accountID:v69 fileName:v70 sha512Sum:v71];

      v73 = v123;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v75);
      v77 = v76;
      v130 = 0;
      LODWORD(isa) = [v74 removeItemAtURL:v76 error:&v130];

      if (isa)
      {
        v52 = *v118;
        v53 = v130;
        v52(v73, v124);
        v64, v54, v55, v56, v57, v58, v59, v60;
      }

      else
      {
        v78 = v130;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*v118)(v73, v124);
        if (qword_100935AE8 != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        sub_100006654(v79, qword_100939C00);

        swift_errorRetain();
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        v64, v82, v83, v84, v85, v86, v87, v88;

        if (os_log_type_enabled(v80, v81))
        {
          v96 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v130 = v117;
          *v96 = v116;
          v97 = sub_10000668C(v128, v64, &v130);
          v64, v98, v99, v100, v101, v102, v103, v104;
          *(v96 + 4) = v97;
          *(v96 + 12) = 2080;
          swift_getErrorValue();
          v105 = Error.rem_errorDescription.getter();
          v107 = v106;
          v108 = sub_10000668C(v105, v106, &v130);
          v107, v109, v110, v111, v112, v113, v114, v115;
          *(v96 + 14) = v108;
          _os_log_impl(&_mh_execute_header, v80, v81, "REMXPCDebugPerformer.synchronous_revertImageAttachments could not clean up file { sha512Sum: %s, error: %s }", v96, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v64, v89, v90, v91, v92, v93, v94, v95;
        }

        v117 = 0;
      }

      v46 = v61;
      v37 = v122;
      v51 = v120;
    }

    while (1)
    {
      v61 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
      }

      if (v61 >= v51)
      {
        break;
      }

      v50 = *&v47[8 * v61];
      ++v46;
      if (v50)
      {
        goto LABEL_16;
      }
    }
  }
}

uint64_t sub_10016F69C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000F61C(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_10016F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_10016F8C8(void *a1, uint64_t a2, void (*a3)(_TtC7remindd19RDXPCStorePerformer *, uint64_t))
{
  v37 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a2, v6, v9);
  v12 = [objc_opt_self() cdEntityName];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v12 = String._bridgeToObjectiveC()();
    v14, v15, v16, v17, v18, v19, v20, v21;
  }

  v22 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v24 = [v22 initWithUUID:isa entityName:v12];

  (*(v7 + 8))(v11, v6);
  v25 = sub_100012370(v24, a1);
  if (v3)
  {

    swift_errorRetain();
    v37(&_swiftEmptyArrayStorage, v3);
  }

  else if (v25)
  {
    v26 = v25;
    v27 = [v25 orderedIdentifiers];

    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v37(v28, 0);

    v28, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v37(&_swiftEmptyArrayStorage, 0);
  }
}

void sub_10016FB40(uint64_t a1, uint64_t a2, void (*a3)(_TtC7remindd19RDXPCStorePerformer *, uint64_t))
{
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  __chkstk_darwin(Option, Option);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v8 = sub_100185FD8(v7);
  if (v3)
  {
    sub_100188054(v7, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
    swift_errorRetain();
    a3(&_swiftEmptyArrayStorage, v3);
  }

  else
  {
    v9 = v8;
    sub_100188054(v7, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
    v10 = sub_100186608(v9);
    v9, v11, v12, v13, v14, v15, v16, v17;
    a3(v10, 0);
    v10, v18, v19, v20, v21, v22, v23, v24;
  }
}

void sub_10016FCA8(void *a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v79 = a5;
  v80 = a4;
  v8 = type metadata accessor for UUID();
  v76 = *(v8 - 8);
  v77 = v8;
  __chkstk_darwin(v8, v9);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMCKSharedEntitySyncActivity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [ObjCClassFromMetadata entity];
  v18 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v17 insertIntoManagedObjectContext:a1];
  v19 = a2;
  v20 = v18;
  v78 = a1;
  [a1 assignObject:v20 toPersistentStore:v19];

  v21 = [a3 accountIdentifier];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v21 = String._bridgeToObjectiveC()();
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  [v20 setAccountIdentifier:v21];

  v31 = [a3 activityDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v15, v11);
  [v20 setActivityDate:isa];

  v33 = [a3 activityType];
  if (v33 >= 4)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  [v20 setActivityTypeRawValue:v34];
  v35 = [a3 authorUserRecordIDString];
  if (!v35)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
    v35 = String._bridgeToObjectiveC()();
    v37, v38, v39, v40, v41, v42, v43, v44;
  }

  [v20 setAuthorUserRecordIDString:v35];

  v45 = [a3 ckParentCloudObjectEntityName];
  [v20 setCkParentCloudObjectEntityName:v45];

  v46 = [a3 ckParentCloudObjectIdentifier];
  [v20 setCkParentCloudObjectIdentifier:v46];

  v47 = [a3 ckIdentifier];
  if (!v47)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
    v47 = String._bridgeToObjectiveC()();
    v49, v50, v51, v52, v53, v54, v55, v56;
  }

  [v20 setCkIdentifier:v47];

  v57 = [a3 sharedEntityName];
  if (!v57)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
    v57 = String._bridgeToObjectiveC()();
    v59, v60, v61, v62, v63, v64, v65, v66;
  }

  [v20 setSharedEntityName:v57];

  v67 = [a3 uuidForChangeTracking];
  if (v67)
  {
    v68 = v75;
    v69 = v67;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v70.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v76 + 8))(v68, v77);
  }

  else
  {
    v70.super.isa = 0;
  }

  [v20 setUuidForChangeTracking:v70.super.isa];

  v81 = 0;
  if ([v78 save:&v81])
  {
    v71 = v81;
    v80(0);
  }

  else
  {
    v72 = v81;
    v73 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v80(v73);
  }
}

void sub_1001701E8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100170294(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100170328(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = a1;
  a5(v12, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  return (*(v9 + 8))(v12, v8);
}

double sub_100170468(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);

  v10, v12, v13, v14, v15, v16, v17, v18;
  return result;
}

void sub_10017050C(void *a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v101 = a5;
  v102 = a4;
  v100 = a3;
  v8 = type metadata accessor for UUID();
  v103 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 entityName];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v13 = String._bridgeToObjectiveC()();
    v15, v16, v17, v18, v19, v20, v21, v22;
  }

  v23 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v13];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100791300;
  v25 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *(v24 + 56) = v8;
  v26 = sub_1000103CC((v24 + 32));
  (*(v103 + 32))(v26, v12, v8);
  v27 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v24, v29, v30, v31, v32, v33, v34, v35;
  v36 = [objc_opt_self() predicateWithFormat:v27 argumentArray:isa];

  [v23 setPredicate:v36];
  [v23 setFetchLimit:1];
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  v37 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {
    v45 = v5;
LABEL_5:

    swift_errorRetain();
    v102(v45);

    return;
  }

  v46 = v37;
  if (v37 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }

LABEL_15:
    v46, v38, v39, v40, v41, v42, v43, v44;
    v100 = objc_opt_self();
    v104[0] = 0;
    v104[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v104[1], v58, v59, v60, v61, v62, v63, v64;
    strcpy(v104, "Cannot fetch ");
    HIWORD(v104[1]) = -4864;
    v65 = [a2 entityName];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69._countAndFlagsBits = v66;
    v69._object = v68;
    String.append(_:)(v69);
    v68, v70, v71, v72, v73, v74, v75, v76;
    v77._countAndFlagsBits = 0xD000000000000018;
    v77._object = 0x80000001007ED7E0;
    String.append(_:)(v77);
    v78 = [a2 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100189458(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v79._object;
    String.append(_:)(v79);
    object, v81, v82, v83, v84, v85, v86, v87;
    (*(v103 + 8))(v12, v8);
    v88 = v104[1];
    v89 = String._bridgeToObjectiveC()();
    v88, v90, v91, v92, v93, v94, v95, v96;
    v97 = [v100 internalErrorWithDebugDescription:v89];

    v98 = v97;
    v102(v97);

    goto LABEL_16;
  }

  if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v47 = *(v46 + 32);
  }

  v55 = v47;
  v46, v48, v49, v50, v51, v52, v53, v54;
  [v55 setMinimumSupportedVersion:v100];
  v104[0] = 0;
  if (![a1 save:v104])
  {
    v57 = v104[0];
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = v55;
    goto LABEL_5;
  }

  v56 = v104[0];
  v102(0);

LABEL_16:
}

void sub_100170B28(uint64_t a1, char a2, void (*a3)(uint64_t, void, __n128))
{
  v45 = &_swiftEmptyArrayStorage;
  if ((a2 & 1) == 0)
  {
    v5 = rem_currentRuntimeVersion();
    KeyPath = swift_getKeyPath();
    sub_1003EBD48(KeyPath, v5);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v45->clientIdentity >= *&v45->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v7 = sub_10000C2B0();
  v8 = sub_10075E638();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v45 = v8;
  sub_100271F9C(inited);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = swift_getKeyPath();
  v11 = sub_100405054(v8, v10, 0, v7);
  v8, v12, v13, v14, v15, v16, v17, v18;
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for REMCDDueDateDeltaAlert();
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v45 = _swiftEmptyDictionarySingleton;
    v20 = v19;
    v21 = sub_10015F9F0(v19, &v45);
    v20, v22, v23, v24, v25, v26, v27, v28;

    v44 = sub_100436364(v29);
    sub_100173B68(&v44, &v45);
    v21, v30, v31, v32, v33, v34, v35, v36;
    (a3)(v44, 0);

    v45, v37, v38, v39, v40, v41, v42, v43;
  }
}

void sub_100170DAC(id *a1@<X0>, id *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a3;
  v42 = type metadata accessor for UUID();
  v8 = *(v42 - 8);
  *&v10 = __chkstk_darwin(v42, v9).n128_u64[0];
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 account];
  v44[1] = v14;
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  Optional.tryUnwrap(_:file:line:)();
  v15 = v4;

  if (v4)
  {
    goto LABEL_2;
  }

  v39 = a4;
  v16 = v44[0];
  v17 = objc_opt_self();
  v18 = [v13 reminderIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v40 = *(v8 + 8);
  v41 = v8 + 8;
  v40(v12, v42);
  v20 = v16;
  v21 = [v17 objectIDWithUUID:isa];

  v44[0] = 0;
  v22 = [v16 remObjectIDWithError:v44];
  if (!v22)
  {
    v37 = v44[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_2:
    *v43 = v15;
    return;
  }

  v23 = v22;
  v24 = v44[0];
  v25 = v21;
  v26 = [v13 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [v13 sortOrder];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = *a2;
  *a2 = 0x8000000000000000;
  sub_1002C7FC0(v27, v12, isUniquelyReferenced_nonNull_native);
  v40(v12, v42);
  v29 = *a2;
  *a2 = v44[0];
  v29, v30, v31, v32, v33, v34, v35, v36;
  v38 = sub_10075DC6C(v13);

  *v39 = v38;
}

uint64_t sub_100171114(void **a1, void **a2, uint64_t *a3)
{
  v107 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v108 = v5;
  v109 = v6;
  __chkstk_darwin(v5, v7);
  v106 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v102 - v11;
  __chkstk_darwin(v13, v14);
  v104 = &v102 - v15;
  __chkstk_darwin(v16, v17);
  v103 = &v102 - v18;
  __chkstk_darwin(v19, v20);
  v105 = &v102 - v21;
  __chkstk_darwin(v22, v23);
  v25 = &v102 - v24;
  v26 = *a1;
  v27 = *a2;
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v28 = [v26 accountID];
  v29 = [v27 accountID];
  v30 = static NSObject.== infix(_:_:)();

  if ((v30 & 1) == 0)
  {
    v40 = [v26 accountID];
    v41 = [v40 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = UUID.uuidString.getter();
    v44 = v43;
    v45 = *(v109 + 8);
    v46 = v12;
    v47 = v108;
    v45(v46, v108);
    v48 = [v27 accountID];
    v49 = [v48 uuid];

    v50 = v106;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = UUID.uuidString.getter();
    v53 = v52;
    v45(v50, v47);
    if (v42 != v51)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (v44 == v53)
    {
      v53, v54, v55, v56, v57, v58, v59, v60;
      v44, v72, v73, v74, v75, v76, v77, v78;
      v79 = 0;
      return v79 & 1;
    }

LABEL_11:
    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v53, v80, v81, v82, v83, v84, v85, v86;
    v44, v87, v88, v89, v90, v91, v92, v93;
    return v79 & 1;
  }

  v31 = v108;
  v32 = [v26 reminderID];
  v33 = [v27 reminderID];
  v34 = static NSObject.== infix(_:_:)();

  if ((v34 & 1) == 0)
  {
    v61 = [v26 reminderID];
    v62 = [v61 uuid];

    v63 = v103;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = UUID.uuidString.getter();
    v44 = v65;
    v66 = *(v109 + 8);
    v66(v63, v31);
    v67 = [v27 reminderID];
    v68 = [v67 uuid];

    v69 = v104;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = UUID.uuidString.getter();
    v53 = v71;
    v66(v69, v31);
    if (v64 != v70)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v35 = [v26 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = *v107;
  if (*(*v107 + 16) && (v37 = sub_100363F20(v25), (v38 & 1) != 0))
  {
    v39 = *(*(v36 + 56) + 8 * v37);
  }

  else
  {
    v39 = 0;
  }

  v94 = *(v109 + 8);
  v94(v25, v31);
  v95 = [v27 identifier];
  v96 = v105;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = *v107;
  if (*(*v107 + 16) && (v98 = sub_100363F20(v96), (v99 & 1) != 0))
  {
    v100 = *(*(v97 + 56) + 8 * v98);
  }

  else
  {
    v100 = 0;
  }

  v94(v96, v31);
  v79 = v39 < v100;
  return v79 & 1;
}

void sub_100171670(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1001716F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  sub_1000060C8(0, a4, a5);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, v7.super.isa);
}

void sub_100171798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(_TtC7remindd19RDXPCStorePerformer *, uint64_t))
{
  LOBYTE(v7) = a3;
  v8 = sub_10017324C();
  type metadata accessor for REMCDManualSortHint();
  v9 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {

    swift_errorRetain();
    a5(0, v5);
  }

  else
  {
    v10 = v9;

    v11 = [objc_allocWithZone(NSDateFormatter) init];
    v12 = String._bridgeToObjectiveC()();
    [v11 setDateFormat:v12];

    if (v10 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v41 = v11;
      v36 = a5;
      if (!i)
      {
        break;
      }

      v39 = v7;
      v21 = 0;
      v40 = v10 & 0xC000000000000001;
      v37 = v10 & 0xFFFFFFFFFFFFFF8;
      v22 = &_swiftEmptyArrayStorage;
      v38 = v10;
      while (1)
      {
        if (v40)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v37 + 16))
          {
            goto LABEL_24;
          }

          v23 = *(v10 + 8 * v21 + 32);
        }

        v24 = v23;
        v7 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v11 = i;
        if (v39)
        {
          v25 = sub_1001880D0(v23, v41);
        }

        else
        {
          v25 = sub_100188C4C(v23, v41);
        }

        v26 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100366374(0, (*v22->clientIdentity + 1), 1, v22);
        }

        v28 = *v22->clientIdentity;
        v27 = *&v22->clientIdentity[8];
        a5 = (v28 + 1);
        if (v28 >= v27 >> 1)
        {
          v22 = sub_100366374((v27 > 1), (v28 + 1), 1, v22);
        }

        *v22->clientIdentity = a5;
        *&v22->clientIdentity[8 * v28 + 16] = v26;
        ++v21;
        i = v11;
        v10 = v38;
        if (v7 == v11)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v22 = &_swiftEmptyArrayStorage;
LABEL_22:
    v10, v13, v14, v15, v16, v17, v18, v19;
    v36(v22, 0);

    v22, v29, v30, v31, v32, v33, v34, v35;
  }
}

uint64_t sub_100171A7C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v42 = a3;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10017324C();
  type metadata accessor for REMCDManualSortHint();
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {

    v14 = v4;
    v15 = v42;
    goto LABEL_17;
  }

  v16 = v13;
  v40 = a1;
  v41 = a4;

  if (v16 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v42;
    if (v24)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v42;
    if (v24)
    {
LABEL_5:
      v39 = 0;
      if (v24 < 1)
      {
        __break(1u);
      }

      v25 = 0;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v16 + 8 * v25 + 32);
        }

        v27 = v26;
        ++v25;
        [v26 setETag:{0, v39}];
        [v27 setHintData:0];
        [v27 setConcatenatedContainerIDsWithLocalContainerIDPrefix:0];
        [v27 setConcatenatedElementIDsWithLocalElementIDPrefix:0];
        static Date.referenceDate.getter();
        Date.timeIntervalSinceReferenceDate.getter();
        [v27 setLastAccessedSinceReferenceDate:Int32.init(timeIntervalSinceReferenceDate:)(v28)];
        (*(v8 + 8))(v11, v7);
        [v27 setSerializationVersion:0];
        [v27 updateChangeCount];
      }

      while (v24 != v25);
      v16, v29, v30, v31, v32, v33, v34, v35;
      v15 = v42;
      goto LABEL_14;
    }
  }

  v16, v17, v18, v19, v20, v21, v22, v23;
LABEL_14:
  v43 = 0;
  if ([v40 save:&v43])
  {
    v36 = v43;
    return v15(0);
  }

  v38 = v43;
  v14 = _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_17:
  swift_errorRetain();
  v15(v14);
}

uint64_t sub_100171DA8(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v13 = *a1;
  *&v55[0] = a2;
  *(&v55[0] + 1) = a3;

  v14 = [v13 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  result = swift_unknownObjectRelease();
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(&v53, v55);
    *&v51 = 0x746E756F63;
    *(&v51 + 1) = 0xE500000000000000;
    v16 = [v13 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    v53 = v51;
    v54 = v52;
    if (*(&v52 + 1))
    {
      if (swift_dynamicCast())
      {
        v48 = v56;
        *&v53 = a4;
        *(&v53 + 1) = a5;

        v17 = [v13 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v17)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100005EE0(&v51, &v53);
        }

        else
        {
          *(&v54 + 1) = &type metadata for String;
          *&v53 = 7104846;
          *(&v53 + 1) = 0xE300000000000000;
        }

        *&v51 = 0;
        *(&v51 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v19._countAndFlagsBits = 0x5B746E756F636361;
        v19._object = 0xE800000000000000;
        String.append(_:)(v19);
        v20._countAndFlagsBits = a6;
        v20._object = a7;
        String.append(_:)(v20);
        v21._countAndFlagsBits = 0x5B7473696C2E5DLL;
        v21._object = 0xE700000000000000;
        String.append(_:)(v21);
        _print_unlocked<A, B>(_:_:)();
        v22._countAndFlagsBits = 0x646E696D65722E5DLL;
        v22._object = 0xEC0000002E737265;
        String.append(_:)(v22);
        v23 = v51;
        *&v51 = 0;
        *(&v51 + 1) = 0xE000000000000000;
        v24._countAndFlagsBits = a2;
        v24._object = a3;
        String.append(_:)(v24);
        v25._countAndFlagsBits = 40;
        v25._object = 0xE100000000000000;
        String.append(_:)(v25);
        _print_unlocked<A, B>(_:_:)();
        v26._countAndFlagsBits = 0x746E756F632E29;
        v26._object = 0xE700000000000000;
        String.append(_:)(v26);
        v28 = *(&v51 + 1);
        v27._countAndFlagsBits = v51;
        v51 = v23;
        v27._object = v28;
        String.append(_:)(v27);
        v28, v29, v30, v31, v32, v33, v34, v35;
        v36 = v51;
        *&v51 = v48;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v51 = *a8;
        *a8 = 0x8000000000000000;
        sub_1002C72CC(v37, v39, v36, *(&v36 + 1), isUniquelyReferenced_nonNull_native);
        *(&v36 + 1), v41, v42, v43, v44, v45, v46, v47;
        *a8 = v51;
        sub_10000607C(v55);
        v18 = &v53;
      }

      else
      {
        v18 = v55;
      }

      return sub_10000607C(v18);
    }

    else
    {
      sub_10000607C(v55);
      return sub_1000050A4(&v53, &qword_100939ED0, &qword_100791B10);
    }
  }

  return result;
}

void sub_100172190(void **a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v69 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v69 - v15;
  *&v19 = __chkstk_darwin(v17, v18).n128_u64[0];
  v21 = &v69 - v20;
  v22 = *a1;
  v23 = [v22 accountIdentifier];
  if (!v23)
  {
    v36 = 0;
    goto LABEL_32;
  }

  v24 = v23;
  v25 = [v22 activityDate];
  if (!v25)
  {

    v36 = 0;
    goto LABEL_32;
  }

  v80 = v2;
  v26 = v25;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 32))(v21, v16, v8);
  v27 = [v22 authorUserRecordIDString];
  if (!v27)
  {
    (*(v9 + 8))(v21, v8);

    v36 = 0;
    goto LABEL_32;
  }

  v28 = v27;
  v29 = [v22 ckIdentifier];
  if (!v29)
  {
    (*(v9 + 8))(v21, v8);

    v36 = 0;
    goto LABEL_32;
  }

  v79 = v29;
  v30 = [v22 sharedEntityName];
  if (!v30)
  {
    (*(v9 + 8))(v21, v8);

    v36 = 0;
    goto LABEL_32;
  }

  v77 = v30;
  (*(v9 + 16))(v12, v21, v8);
  v31 = [v22 activityTypeRawValue];
  if (v31 - 1 < 3)
  {
    v32 = (v31 - 1) + 1;
  }

  else
  {
    v32 = 0;
  }

  v76 = v32;
  v33 = [v22 ckParentCloudObjectEntityName];
  if (v33)
  {
    v34 = v33;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v35;
  }

  else
  {
    v72 = 0;
    v75 = 0;
  }

  v37 = [v22 ckParentCloudObjectIdentifier];
  if (v37)
  {
    v38 = v37;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v39;
  }

  else
  {
    v69 = 0;
    v74 = 0;
  }

  v40 = [v22 uuidForChangeTracking];
  v78 = v28;
  if (v40)
  {
    v41 = v40;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = type metadata accessor for UUID();
  v70 = *(v43 - 8);
  (*(v70 + 56))(v7, v42, 1, v43);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v44 = v75;
  if (!v75)
  {
    v72 = 0;
    v52 = v74;
    if (v74)
    {
      goto LABEL_25;
    }

LABEL_27:
    v75 = 0;
    goto LABEL_28;
  }

  v72 = String._bridgeToObjectiveC()();
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v74;
  if (!v74)
  {
    goto LABEL_27;
  }

LABEL_25:
  v75 = String._bridgeToObjectiveC()();
  v52, v53, v54, v55, v56, v57, v58, v59;
LABEL_28:
  v60 = v70;
  v61 = (*(v70 + 48))(v7, 1, v43);
  v71 = v12;
  if (v61 == 1)
  {
    v62 = 0;
  }

  else
  {
    v62 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v60 + 8))(v7, v43);
  }

  v74 = v62;
  v63 = objc_allocWithZone(REMSharedEntitySyncActivity);
  v64 = v77;
  v65 = v72;
  v66 = isa;
  v67 = v75;
  v36 = [v63 initWithAccountIdentifier:v24 activityDate:isa activityType:v76 authorUserRecordIDString:v78 ckParentCloudObjectEntityName:v72 ckParentCloudObjectIdentifier:v75 ckIdentifier:v79 sharedEntityName:v77 uuidForChangeTracking:v62];

  v68 = *(v9 + 8);
  v68(v71, v8);
  v68(v21, v8);
LABEL_32:
  *v81 = v36;
}

void sub_100172730(void *a1, void *a2, char a3, char a4, char a5)
{
  v10 = a2;
  v11 = sub_100577A10(v10);
  if (v5)
  {
    goto LABEL_2;
  }

  v12 = v11;
  if (!v11)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:v10];
    swift_willThrow();
    goto LABEL_2;
  }

  v13 = 0xD000000000000017;
  if (a3)
  {
    [v11 debug_fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:0];
    [v12 debug_lowLevelUnmarkForDeletion];
    v13 = 0xD000000000000019;
    v14 = "eletionWithObjectID";
    if ((a5 & 1) == 0)
    {
      goto LABEL_13;
    }

    v15 = &selRef_debug_markObjectDirtyAfterUnmarkedForDeletion;
    goto LABEL_12;
  }

  if (a4)
  {
    [v11 debug_lowLevelRemoveFromParent];
  }

  [v12 debug_fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:1];
  [v12 debug_lowLevelMarkForDeletion];
  v14 = "lowLevelUnmarkForDeletion";
  if (a5)
  {
    v15 = &selRef_debug_markObjectDirtyAfterMarkedForDeletion;
LABEL_12:
    [v12 *v15];
  }

LABEL_13:
  if ([a1 hasChanges])
  {
    v84 = 0;
    if ([a1 save:&v84])
    {
      v16 = qword_100935AE8;
      v17 = v84;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006654(v18, qword_100939C00);

      v19 = v12;
      v12 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      (v14 | 0x8000000000000000), v21, v22, v23, v24, v25, v26, v27;
      if (os_log_type_enabled(v12, v20))
      {
        v28 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v28 = 136446722;
        v29 = sub_10000668C(v13, (v14 | 0x8000000000000000), &v84);
        (v14 | 0x8000000000000000), v30, v31, v32, v33, v34, v35, v36;
        *(v28 + 4) = v29;
        *(v28 + 12) = 2082;
        v37 = Bool.yesno.getter();
        v39 = v38;
        v40 = sub_10000668C(v37, v38, &v84);
        v39, v41, v42, v43, v44, v45, v46, v47;
        *(v28 + 14) = v40;
        *(v28 + 22) = 2082;
        v48 = [v19 remObjectID];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 description];

          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;
        }

        else
        {
          v53 = 0xE300000000000000;
          v51 = 7104878;
        }

        v76 = sub_10000668C(v51, v53, &v84);
        v53, v77, v78, v79, v80, v81, v82, v83;
        *(v28 + 24) = v76;
        _os_log_impl(&_mh_execute_header, v12, v20, "RDXPCDebugPerformer: %{public}s: Saved updating .markedForDeletion flag {shouldSetDirtyFlags: %{public}s, objectID: %{public}s}", v28, 0x20u);
        swift_arrayDestroy();

        goto LABEL_2;
      }

      (v14 | 0x8000000000000000), v69, v70, v71, v72, v73, v74, v75;
    }

    else
    {
      v61 = v84;
      (v14 | 0x8000000000000000), v62, v63, v64, v65, v66, v67, v68;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

LABEL_2:
    return;
  }

  (v14 | 0x8000000000000000), v54, v55, v56, v57, v58, v59, v60;
}

unint64_t sub_100172B3C(uint64_t a1, uint64_t a2)
{
  v3 = 0xD000000000000021;
  __chkstk_darwin(v2, a2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100187FEC(v6, v5, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v3 = 0xD000000000000037;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = 0xD000000000000030;
LABEL_5:
    sub_100188054(v5, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  }

  return v3;
}

void sub_100172C44(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v16 - v10;
  sub_100010364(a1, &v16 - v10, &unk_100939D90, "8\n\r");
  v12 = *a2;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

void sub_100172D80(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 ckIdentifier];
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

void sub_100172DE8(uint64_t a1, void **a2)
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
  [v2 setCkIdentifier:?];
}

uint64_t sub_100172E58(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_100185FD8(a3);
  v15 = v4;
  if (!v4)
  {
    v16 = v7;
    if (v7 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v18 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v19 = *&v16->clientIdentity[8 * v18 + 16];
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        [a1 deleteObject:v19];

        ++v18;
        if (v21 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
    v16, v8, v9, v10, v11, v12, v13, v14;
    v25 = 0;
    if ([a1 save:&v25])
    {
      v22 = v25;
      return a4(0);
    }

    v24 = v25;
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_errorRetain();
  a4(v15);
}

uint64_t sub_100173030@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

id sub_1001730DC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 16);
  v8 = type metadata accessor for RDDaemonController();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  v12 = *(a3 + 30);
  v13 = a3[1];
  *v11 = *a3;
  *(v11 + 1) = v13;
  *(v11 + 30) = v12;
  *&v9[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = v7;
  swift_unknownObjectRetain();
  sub_100009DAC(a3, v17);
  v16.receiver = v9;
  v16.super_class = v8;
  v14 = v7;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_10017324C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = v60 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  __chkstk_darwin(Request, v17);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100187FEC(v1, v19, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v6, v19, v2);
      Date.timeIntervalSinceReferenceDate.getter();
      v30 = Int32.init(timeIntervalSinceReferenceDate:)(v29);
      sub_1000F5104(&unk_100939E20, qword_100795830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      KeyPath = swift_getKeyPath();
      v33 = sub_1003EF474(KeyPath, v30);

      *(inited + 32) = v33;
      v34 = swift_getKeyPath();
      v35 = sub_1003EF44C(v34);

      *(inited + 40) = v35;
      v36 = sub_10000C2B0();
      type metadata accessor for REMCDManualSortHint();
      v27 = [objc_allocWithZone(NSFetchRequest) init];
      v37 = [swift_getObjCClassFromMetadata() entity];
      [v27 setEntity:v37];

      [v27 setAffectedStores:0];
      [v27 setPredicate:v36];

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v56 = swift_getKeyPath();
      v57 = sub_1003EF44C(v56);

      type metadata accessor for REMCDManualSortHint();
      v27 = [objc_allocWithZone(NSFetchRequest) init];
      v58 = [swift_getObjCClassFromMetadata() entity];
      [v27 setEntity:v58];

      [v27 setAffectedStores:0];
      [v27 setPredicate:v57];
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = *(v19 + 1);
    v38 = *(v19 + 2);
    v40 = *v19;
    sub_1000F5104(&unk_100939E20, qword_100795830);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_100791340;
    v42 = swift_getKeyPath();

    v43 = sub_10003A018(v42, v40);

    *(v41 + 32) = v43;
    v44 = swift_getKeyPath();
    v45 = sub_10003A02C(v44, v39, v38);

    *(v41 + 40) = v45;
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_100791300;
    *(v46 + 32) = sub_10001035C(0);
    v60[7] = v46;
    sub_10003A170(v41);
    v47 = sub_10000C2B0();
    v38, v48, v49, v50, v51, v52, v53, v54;
    type metadata accessor for REMCDManualSortHint();
    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v55 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v55];

    [v27 setAffectedStores:0];
    [v27 setPredicate:v47];
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    sub_1000F5104(&unk_100939E20, qword_100795830);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_100791340;
    v22 = swift_getKeyPath();
    (*(v12 + 16))(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v23 = sub_10003A040(v22, v10);

    *(v21 + 32) = v23;
    v24 = swift_getKeyPath();
    v25 = sub_1003EF44C(v24);

    *(v21 + 40) = v25;
    v26 = sub_10000C2B0();
    type metadata accessor for REMCDManualSortHint();
    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    [v27 setAffectedStores:0];
    [v27 setPredicate:v26];

    (*(v12 + 8))(v15, v11);
  }

  return v27;
}

uint64_t sub_100173984(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1001739E8(double a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = *v3;
  if (a3)
  {
    v13 = String._bridgeToObjectiveC()();
    a3, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v13 = 0;
  }

  [v4 setSha512Sum:v13];
}

uint64_t sub_100173A58@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_100173B68(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10043653C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_10017725C(v8, a2);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100173BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v10 = swift_task_alloc();
  v7[9] = v10;
  *v10 = v7;
  v10[1] = sub_100173C98;

  return sub_100175A40(a4, a5);
}

uint64_t sub_100173C98()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10018AD7C;
  }

  else
  {
    v2 = sub_10018AE00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100173DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v10 = swift_task_alloc();
  v7[9] = v10;
  *v10 = v7;
  v10[1] = sub_100173E58;

  return sub_1001741E4(a4, a5);
}

uint64_t sub_100173E58()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100173FCC;
  }

  else
  {
    v2 = sub_100173F6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100173F6C()
{
  dispatch_group_leave(*(v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100173FCC()
{
  v31 = v0;
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094FA90);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v5 = 136446466;
    *(v0 + 40) = v4;
    swift_getMetatypeMetadata();
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v30);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    swift_getErrorValue();
    v17 = Error.rem_errorDescription.getter();
    v19 = v18;
    v20 = sub_10000668C(v17, v18, &v30);
    v19, v21, v22, v23, v24, v25, v26, v27;
    *(v5 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Failed to handle incomplete operation queue items during unit test {error: %{public}s}", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 56));
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1001741E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 248) = a2;
  *(v3 + 256) = v2;
  *(v3 + 240) = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v3 + 264) = v4;
  *(v3 + 272) = *(v4 - 8);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = sub_1000F5104(&qword_100939E00, &qword_1007970C0);
  *(v3 + 304) = swift_task_alloc();
  v5 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  *(v3 + 312) = v5;
  *(v3 + 320) = *(v5 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 480) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v3 + 484) = 0;

  return _swift_task_switch(sub_10017439C, 0, 0);
}

uint64_t sub_10017439C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = swift_allocObject();
  *(v0 + 376) = v6;
  *(v6 + 16) = v5;
  v7 = *(v4 + 104);
  *(v0 + 384) = v7;
  *(v0 + 392) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v2, v1, v3);
  v8 = v5;
  v9 = swift_task_alloc();
  *(v0 + 400) = v9;
  *v9 = v0;
  v9[1] = sub_1001744C4;
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 288);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v12, sub_100187F64, v6, v11);
}

uint64_t sub_1001744C4()
{
  v2 = *v1;
  v2[51] = v0;

  v3 = v2[36];
  v4 = v2[34];
  v5 = v2[33];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_100174D58;
  }

  else
  {
    v2[52] = v7;
    v2[53] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_100174670;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100174670()
{
  v83 = v0;
  v1 = *(v0 + 304);
  if ((*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312)) == 1)
  {
    sub_1000050A4(v1, &qword_100939E00, &qword_1007970C0);

    v2 = *(v0 + 8);
    v3 = *(v0 + 484);

    return v2(v3);
  }

  else
  {
    sub_100187F88(v1, *(v0 + 368));
    if (qword_1009366D8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 360);
    v5 = *(v0 + 368);
    v7 = type metadata accessor for Logger();
    *(v0 + 432) = sub_100006654(v7, qword_10094FA90);
    sub_100187FEC(v5, v6, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 360);
    if (v10)
    {
      v12 = *(v0 + 256);
      v13 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v13 = 136446466;
      *(v0 + 216) = v12;
      swift_getMetatypeMetadata();
      v14 = String.init<A>(describing:)();
      v16 = v15;
      v17 = sub_10000668C(v14, v15, &v82);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v25 = sub_1001AE574();
      v27 = v26;
      sub_100188054(v11, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      v28 = sub_10000668C(v25, v27, &v82);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v13 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Handling incomplete operation queue item with top priority. {operationQueueItem: %{public}s}", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100188054(v11, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    }

    sub_10018EB68(*(v0 + 368), *(v0 + 248), v0 + 16);
    sub_100010364(v0 + 16, v0 + 96, &qword_100939E08, &qword_1007970C8);
    if (*(v0 + 120))
    {
      sub_100054B6C((v0 + 96), v0 + 56);
      v36 = *(v0 + 80);
      v37 = *(v0 + 88);
      sub_10000F61C((v0 + 56), v36);
      v81 = (*(v37 + 16) + **(v37 + 16));
      v38 = swift_task_alloc();
      *(v0 + 440) = v38;
      *v38 = v0;
      v38[1] = sub_100174E28;
      v39 = *(v0 + 240);

      return v81(v39, v36, v37);
    }

    else
    {
      v40 = *(v0 + 368);
      v41 = *(v0 + 352);
      sub_1000050A4(v0 + 96, &qword_100939E08, &qword_1007970C8);
      sub_100187FEC(v40, v41, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 352);
      if (v44)
      {
        v46 = *(v0 + 256);
        v47 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v47 = 136446466;
        *(v0 + 184) = v46;
        swift_getMetatypeMetadata();
        v48 = String.init<A>(describing:)();
        v50 = v49;
        v51 = sub_10000668C(v48, v49, &v82);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v47 + 4) = v51;
        *(v47 + 12) = 2082;
        v59 = sub_1001AE574();
        v61 = v60;
        sub_100188054(v45, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
        v62 = sub_10000668C(v59, v61, &v82);
        v61, v63, v64, v65, v66, v67, v68, v69;
        *(v47 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s: Failed to create operation for operation queue item. {operationQueueItem: %{public}s}", v47, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100188054(v45, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      }

      v70 = *(v0 + 384);
      v71 = *(v0 + 480);
      v72 = *(v0 + 280);
      v73 = *(v0 + 264);
      v74 = *(v0 + 240);
      v75 = **(v0 + 368);
      v76 = swift_allocObject();
      *(v0 + 456) = v76;
      *(v76 + 16) = v74;
      *(v76 + 24) = v75;
      v70(v72, v71, v73);
      v77 = v74;
      v78 = v75;
      v79 = swift_task_alloc();
      *(v0 + 464) = v79;
      *v79 = v0;
      v79[1] = sub_1001753A8;
      v80 = *(v0 + 280);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v79, v80, sub_1001880B4, v76, &type metadata for () + 1);
    }
  }
}

uint64_t sub_100174D58()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100174E28()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_100175070;
  }

  else
  {
    v2 = sub_100174F3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100174F3C()
{
  sub_10000607C((v0 + 56));
  v1 = *(v0 + 384);
  v2 = *(v0 + 480);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = **(v0 + 368);
  v7 = swift_allocObject();
  *(v0 + 456) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v1(v3, v2, v4);
  v8 = v5;
  v9 = v6;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1001753A8;
  v11 = *(v0 + 280);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_1001880B4, v7, &type metadata for () + 1);
}

uint64_t sub_100175070(__n128 a1)
{
  v55 = v1;
  sub_100187FEC(*(v1 + 368), *(v1 + 344), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 344);
    v5 = *(v1 + 256);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v1 + 192) = v5;
    v54 = v7;
    *v6 = 136446722;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, &v54);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v19 = sub_1001AE574();
    v21 = v20;
    sub_100188054(v4, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v22 = sub_10000668C(v19, v21, &v54);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v6 + 14) = v22;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v30 = Error.rem_errorDescription.getter();
    v32 = v31;
    v33 = sub_10000668C(v30, v31, &v54);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v6 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Failed to complete operation queue item. {operationQueueItem: %{public}s, error: %{public}s}", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v41 = *(v1 + 344);

    sub_100188054(v41, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_10000607C((v1 + 56));
  v42 = *(v1 + 384);
  v43 = *(v1 + 480);
  v44 = *(v1 + 280);
  v45 = *(v1 + 264);
  v46 = *(v1 + 240);
  v47 = **(v1 + 368);
  v48 = swift_allocObject();
  *(v1 + 456) = v48;
  *(v48 + 16) = v46;
  *(v48 + 24) = v47;
  v42(v44, v43, v45);
  v49 = v46;
  v50 = v47;
  v51 = swift_task_alloc();
  *(v1 + 464) = v51;
  *v51 = v1;
  v51[1] = sub_1001753A8;
  v52 = *(v1 + 280);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v51, v52, sub_1001880B4, v48, &type metadata for () + 1);
}

uint64_t sub_1001753A8()
{
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 264);
  *(*v1 + 472) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_100175784;
  }

  else
  {
    v5 = sub_100175544;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100175544(__n128 a1)
{
  v32 = v1;
  sub_100187FEC(*(v1 + 368), *(v1 + 336), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 336);
    v5 = *(v1 + 256);
    v6 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v6 = 136446466;
    *(v1 + 208) = v5;
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v31);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v18 = sub_1001AE574();
    v20 = v19;
    sub_100188054(v4, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v21 = sub_10000668C(v18, v20, &v31);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v6 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Completed operation queue item with top priority. {operationQueueItem: %{public}s}", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v29 = *(v1 + 336);

    sub_100188054(v29, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_1000050A4(v1 + 16, &qword_100939E08, &qword_1007970C8);
  sub_100188054(*(v1 + 368), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  *(v1 + 484) = 1;

  return _swift_task_switch(sub_10017439C, 0, 0);
}

uint64_t sub_100175784(__n128 a1)
{
  v45 = v1;
  sub_100187FEC(*(v1 + 368), *(v1 + 328), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 328);
    v5 = *(v1 + 256);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v1 + 200) = v5;
    v44 = v7;
    *v6 = 136446722;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, &v44);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v19 = sub_1001AE574();
    v21 = v20;
    sub_100188054(v4, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v22 = sub_10000668C(v19, v21, &v44);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v6 + 14) = v22;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v30 = Error.rem_errorDescription.getter();
    v32 = v31;
    v33 = sub_10000668C(v30, v31, &v44);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v6 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Failed to mark operation queue item as completed. {operationQueueItem: %{public}s, error: %{public}s}", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v41 = *(v1 + 328);

    sub_100188054(v41, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_1000050A4(v1 + 16, &qword_100939E08, &qword_1007970C8);
  v42 = *(v1 + 484);
  sub_100188054(*(v1 + 368), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  *(v1 + 484) = v42;

  return _swift_task_switch(sub_10017439C, 0, 0);
}

uint64_t sub_100175A40(uint64_t a1, uint64_t a2)
{
  *(v3 + 248) = a2;
  *(v3 + 256) = v2;
  *(v3 + 240) = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v3 + 264) = v4;
  *(v3 + 272) = *(v4 - 8);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = sub_1000F5104(&qword_100939E00, &qword_1007970C0);
  *(v3 + 304) = swift_task_alloc();
  v5 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  *(v3 + 312) = v5;
  *(v3 + 320) = *(v5 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 480) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v3 + 484) = 0;

  return _swift_task_switch(sub_100175BF8, 0, 0);
}

uint64_t sub_100175BF8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = swift_allocObject();
  *(v0 + 376) = v6;
  *(v6 + 16) = v5;
  v7 = *(v4 + 104);
  *(v0 + 384) = v7;
  *(v0 + 392) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v2, v1, v3);
  v8 = v5;
  v9 = swift_task_alloc();
  *(v0 + 400) = v9;
  *v9 = v0;
  v9[1] = sub_100175D20;
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 288);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v12, sub_1001892D0, v6, v11);
}

uint64_t sub_100175D20()
{
  v2 = *v1;
  v2[51] = v0;

  v3 = v2[36];
  v4 = v2[34];
  v5 = v2[33];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_10018AD80;
  }

  else
  {
    v2[52] = v7;
    v2[53] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_100175ECC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100175ECC()
{
  v83 = v0;
  v1 = *(v0 + 304);
  if ((*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312)) == 1)
  {
    sub_1000050A4(v1, &qword_100939E00, &qword_1007970C0);

    v2 = *(v0 + 8);
    v3 = *(v0 + 484);

    return v2(v3);
  }

  else
  {
    sub_100187F88(v1, *(v0 + 368));
    if (qword_1009366D8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 360);
    v5 = *(v0 + 368);
    v7 = type metadata accessor for Logger();
    *(v0 + 432) = sub_100006654(v7, qword_10094FA90);
    sub_100187FEC(v5, v6, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 360);
    if (v10)
    {
      v12 = *(v0 + 256);
      v13 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v13 = 136446466;
      *(v0 + 216) = v12;
      swift_getMetatypeMetadata();
      v14 = String.init<A>(describing:)();
      v16 = v15;
      v17 = sub_10000668C(v14, v15, &v82);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v25 = sub_1001AE574();
      v27 = v26;
      sub_100188054(v11, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      v28 = sub_10000668C(v25, v27, &v82);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v13 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Handling incomplete operation queue item with top priority. {operationQueueItem: %{public}s}", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100188054(v11, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    }

    sub_100741FC0(*(v0 + 368), *(v0 + 248), (v0 + 16));
    sub_100010364(v0 + 16, v0 + 96, &qword_100939E08, &qword_1007970C8);
    if (*(v0 + 120))
    {
      sub_100054B6C((v0 + 96), v0 + 56);
      v36 = *(v0 + 80);
      v37 = *(v0 + 88);
      sub_10000F61C((v0 + 56), v36);
      v81 = (*(v37 + 16) + **(v37 + 16));
      v38 = swift_task_alloc();
      *(v0 + 440) = v38;
      *v38 = v0;
      v38[1] = sub_1001765B4;
      v39 = *(v0 + 240);

      return v81(v39, v36, v37);
    }

    else
    {
      v40 = *(v0 + 368);
      v41 = *(v0 + 352);
      sub_1000050A4(v0 + 96, &qword_100939E08, &qword_1007970C8);
      sub_100187FEC(v40, v41, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 352);
      if (v44)
      {
        v46 = *(v0 + 256);
        v47 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v47 = 136446466;
        *(v0 + 184) = v46;
        swift_getMetatypeMetadata();
        v48 = String.init<A>(describing:)();
        v50 = v49;
        v51 = sub_10000668C(v48, v49, &v82);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v47 + 4) = v51;
        *(v47 + 12) = 2082;
        v59 = sub_1001AE574();
        v61 = v60;
        sub_100188054(v45, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
        v62 = sub_10000668C(v59, v61, &v82);
        v61, v63, v64, v65, v66, v67, v68, v69;
        *(v47 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s: Failed to create operation for operation queue item. {operationQueueItem: %{public}s}", v47, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100188054(v45, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      }

      v70 = *(v0 + 384);
      v71 = *(v0 + 480);
      v72 = *(v0 + 280);
      v73 = *(v0 + 264);
      v74 = *(v0 + 240);
      v75 = **(v0 + 368);
      v76 = swift_allocObject();
      *(v0 + 456) = v76;
      *(v76 + 16) = v74;
      *(v76 + 24) = v75;
      v70(v72, v71, v73);
      v77 = v74;
      v78 = v75;
      v79 = swift_task_alloc();
      *(v0 + 464) = v79;
      *v79 = v0;
      v79[1] = sub_100176B34;
      v80 = *(v0 + 280);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v79, v80, sub_10018AD30, v76, &type metadata for () + 1);
    }
  }
}

uint64_t sub_1001765B4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_1001767FC;
  }

  else
  {
    v2 = sub_1001766C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001766C8()
{
  sub_10000607C((v0 + 56));
  v1 = *(v0 + 384);
  v2 = *(v0 + 480);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = **(v0 + 368);
  v7 = swift_allocObject();
  *(v0 + 456) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v1(v3, v2, v4);
  v8 = v5;
  v9 = v6;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_100176B34;
  v11 = *(v0 + 280);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_10018AD30, v7, &type metadata for () + 1);
}

uint64_t sub_1001767FC(__n128 a1)
{
  v55 = v1;
  sub_100187FEC(*(v1 + 368), *(v1 + 344), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 344);
    v5 = *(v1 + 256);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v1 + 192) = v5;
    v54 = v7;
    *v6 = 136446722;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, &v54);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v19 = sub_1001AE574();
    v21 = v20;
    sub_100188054(v4, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v22 = sub_10000668C(v19, v21, &v54);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v6 + 14) = v22;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v30 = Error.rem_errorDescription.getter();
    v32 = v31;
    v33 = sub_10000668C(v30, v31, &v54);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v6 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Failed to complete operation queue item. {operationQueueItem: %{public}s, error: %{public}s}", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v41 = *(v1 + 344);

    sub_100188054(v41, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_10000607C((v1 + 56));
  v42 = *(v1 + 384);
  v43 = *(v1 + 480);
  v44 = *(v1 + 280);
  v45 = *(v1 + 264);
  v46 = *(v1 + 240);
  v47 = **(v1 + 368);
  v48 = swift_allocObject();
  *(v1 + 456) = v48;
  *(v48 + 16) = v46;
  *(v48 + 24) = v47;
  v42(v44, v43, v45);
  v49 = v46;
  v50 = v47;
  v51 = swift_task_alloc();
  *(v1 + 464) = v51;
  *v51 = v1;
  v51[1] = sub_100176B34;
  v52 = *(v1 + 280);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v51, v52, sub_10018AD30, v48, &type metadata for () + 1);
}

uint64_t sub_100176B34()
{
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 264);
  *(*v1 + 472) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_100176F10;
  }

  else
  {
    v5 = sub_100176CD0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100176CD0(__n128 a1)
{
  v32 = v1;
  sub_100187FEC(*(v1 + 368), *(v1 + 336), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 336);
    v5 = *(v1 + 256);
    v6 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v6 = 136446466;
    *(v1 + 208) = v5;
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v31);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v18 = sub_1001AE574();
    v20 = v19;
    sub_100188054(v4, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v21 = sub_10000668C(v18, v20, &v31);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v6 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Completed operation queue item with top priority. {operationQueueItem: %{public}s}", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v29 = *(v1 + 336);

    sub_100188054(v29, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_1000050A4(v1 + 16, &qword_100939E08, &qword_1007970C8);
  sub_100188054(*(v1 + 368), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  *(v1 + 484) = 1;

  return _swift_task_switch(sub_100175BF8, 0, 0);
}

uint64_t sub_100176F10(__n128 a1)
{
  v45 = v1;
  sub_100187FEC(*(v1 + 368), *(v1 + 328), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 328);
    v5 = *(v1 + 256);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v1 + 200) = v5;
    v44 = v7;
    *v6 = 136446722;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, &v44);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v19 = sub_1001AE574();
    v21 = v20;
    sub_100188054(v4, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v22 = sub_10000668C(v19, v21, &v44);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v6 + 14) = v22;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v30 = Error.rem_errorDescription.getter();
    v32 = v31;
    v33 = sub_10000668C(v30, v31, &v44);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v6 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Failed to mark operation queue item as completed. {operationQueueItem: %{public}s, error: %{public}s}", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v41 = *(v1 + 328);

    sub_100188054(v41, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_1000050A4(v1 + 16, &qword_100939E08, &qword_1007970C8);
  v42 = *(v1 + 484);
  sub_100188054(*(v1 + 368), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  *(v1 + 484) = v42;

  return _swift_task_switch(sub_100175BF8, 0, 0);
}

void *sub_1001771CC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_10034C9A4(a2, a3);
  if (!v3)
  {
    if (result)
    {
      sub_1001AE234(result, a1);
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
    return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
  }

  return result;
}

void sub_10017725C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v9 = v5;
      v10 = v4 / 2;
      if (v4 <= 1)
      {
        v11 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFF8;
      v21[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v21[1] = v10;
      v13 = v11;
      sub_100177474(v21, v22, a1, v9, a2, v6, v7, v8);
      *(v12 + 16) = 0;
      v13, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10017737C(0, v4, 1, a1, a2);
  }
}

void sub_10017737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_100171114(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_100177474(void ***a1, const char *a2, void ***a3, char *a4, uint64_t *a5, void *a6, void *a7, void *a8)
{
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_89:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11++;
    if (v11 >= v10)
    {
      goto LABEL_20;
    }

    v115 = v10;
    v14 = *a3;
    v15 = (*a3)[v11];
    v119 = (*a3)[v13];
    v16 = v119;
    v120 = v15;
    v17 = v15;
    v18 = v16;
    v19 = sub_100171114(&v120, &v119, a5);
    if (v8)
    {
      v12, v20, v21, v22, v23, v24, v25, v26;

      return;
    }

    v27 = v19;

    v28 = v13 + 2;
    v112 = v13;
    v29 = 8 * v13;
    v9 = v14 + v29 + 16;
    while (1)
    {
      v11 = v115;
      if (v115 == v28)
      {
        break;
      }

      v30 = *v9;
      v119 = *(v9 - 8);
      v31 = v119;
      v120 = v30;
      v32 = v30;
      v33 = v31;
      LODWORD(v31) = sub_100171114(&v120, &v119, a5);

      ++v28;
      v9 += 8;
      if ((v27 ^ v31))
      {
        v11 = v28 - 1;
        break;
      }
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_18;
    }

    v34 = v112;
    if (v11 < v112)
    {
      goto LABEL_123;
    }

    if (v112 < v11)
    {
      v35 = 8 * v11 - 8;
      v36 = v11;
      do
      {
        if (v34 != --v36)
        {
          v37 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v38 = *(v37 + v29);
          *(v37 + v29) = *(v37 + v35);
          *(v37 + v35) = v38;
        }

        ++v34;
        v35 -= 8;
        v29 += 8;
      }

      while (v34 < v36);
LABEL_18:
      v13 = v112;
      goto LABEL_20;
    }

    v13 = v112;
LABEL_20:
    v39 = a3[1];
    if (v11 >= v39)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v11, v13))
    {
      goto LABEL_119;
    }

    if (v11 - v13 >= a4)
    {
      goto LABEL_132;
    }

    v40 = &a4[v13];
    if (__OFADD__(v13, a4))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v40 >= v39)
    {
      v40 = a3[1];
    }

    if (v40 < v13)
    {
      goto LABEL_122;
    }

    if (v11 == v40)
    {
LABEL_132:
      if (v11 < v13)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v9 = *a3;
      v87 = &(*a3)[v11 - 1];
      v113 = v13;
      v88 = v13 - v11;
      v109 = v40;
      do
      {
        v89 = *(v9 + 8 * v11);
        v110 = v88;
        v116 = v87;
        v90 = v87;
        do
        {
          v119 = *v90;
          v91 = v119;
          v120 = v89;
          v92 = v89;
          v93 = v91;
          v94 = sub_100171114(&v120, &v119, a5);
          if (v8)
          {
            v12, v95, v96, v97, v98, v99, v100, v101;

            return;
          }

          v102 = v94;

          if ((v102 & 1) == 0)
          {
            break;
          }

          if (!v9)
          {
            goto LABEL_125;
          }

          v103 = *v90;
          v89 = v90[1];
          *v90 = v89;
          v90[1] = v103;
          --v90;
        }

        while (!__CFADD__(v88++, 1));
        ++v11;
        v87 = v116 + 1;
        v88 = v110 - 1;
      }

      while (v11 != v109);
      v11 = v109;
      v13 = v113;
      if (v109 < v113)
      {
        goto LABEL_118;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003658B8(0, *v12->clientIdentity + 1, 1, v12, a5, a6, a7, a8);
    }

    v42 = *v12->clientIdentity;
    v41 = *&v12->clientIdentity[8];
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v12 = sub_1003658B8((v41 > 1), v42 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->clientIdentity = v43;
    v44 = v12 + 16 * v42;
    *(v44 + 4) = v13;
    *(v44 + 5) = v11;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if (v42)
    {
      break;
    }

LABEL_3:
    v10 = a3[1];
    if (v11 >= v10)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v46 = v43 - 1;
    if (v43 >= 4)
    {
      v51 = &v12->clientIdentity[16 * v43 + 16];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_105;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_106;
      }

      v58 = &v12->super.isa + 2 * v43;
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_108;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_111;
      }

      if (v62 >= v54)
      {
        v80 = &v12->clientIdentity[16 * v46 + 16];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_117;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v43 == 3)
    {
      v47 = *&v12->clientIdentity[16];
      v48 = *&v12->clientIdentity[24];
      v57 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v50 = v57;
LABEL_48:
      if (v50)
      {
        goto LABEL_107;
      }

      v63 = &v12->super.isa + 2 * v43;
      v65 = *v63;
      v64 = v63[1];
      v66 = __OFSUB__(v64, v65);
      v67 = v64 - v65;
      v68 = v66;
      if (v66)
      {
        goto LABEL_110;
      }

      v69 = &v12->clientIdentity[16 * v46 + 16];
      v71 = *v69;
      v70 = *(v69 + 1);
      v57 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v57)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v67, v72))
      {
        goto LABEL_114;
      }

      if (v67 + v72 >= v49)
      {
        if (v49 < v72)
        {
          v46 = v43 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v73 = &v12->super.isa + 2 * v43;
    v75 = *v73;
    v74 = v73[1];
    v57 = __OFSUB__(v74, v75);
    v67 = v74 - v75;
    v68 = v57;
LABEL_62:
    if (v68)
    {
      goto LABEL_109;
    }

    v76 = v12 + 16 * v46;
    v78 = *(v76 + 4);
    v77 = *(v76 + 5);
    v57 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v57)
    {
      goto LABEL_112;
    }

    if (v79 < v67)
    {
      goto LABEL_3;
    }

LABEL_69:
    v84 = v46 - 1;
    if (v46 - 1 >= v43)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_124;
    }

    v85 = *&v12->clientIdentity[16 * v84 + 16];
    v9 = *&v12->clientIdentity[16 * v46 + 24];
    sub_100177AE4(&(*a3)[v85], &(*a3)[*&v12->clientIdentity[16 * v46 + 16]], &(*a3)[v9], v45, a5);
    if (v8)
    {
      goto LABEL_99;
    }

    if (v9 < v85)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    if (v84 >= *v12->clientIdentity)
    {
      goto LABEL_104;
    }

    v86 = v12 + 16 * v84;
    *(v86 + 4) = v85;
    *(v86 + 5) = v9;
    v121 = v12;
    sub_100436168(v46);
    v12 = v121;
    v43 = *v121->clientIdentity;
    if (v43 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
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
  __break(1u);
LABEL_120:
  v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
LABEL_91:
  v121 = v12;
  v105 = *v12->clientIdentity;
  if (v105 < 2)
  {
LABEL_99:
    v12, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
    while (*a3)
    {
      v106 = *(&v12->super.isa + 2 * v105);
      v107 = *&v12->clientIdentity[16 * v105 + 8];
      sub_100177AE4(&(*a3)[v106], &(*a3)[*&v12->clientIdentity[16 * v105]], &(*a3)[v107], v9, a5);
      if (v8)
      {
        goto LABEL_99;
      }

      if (v107 < v106)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v105 - 2 >= *v12->clientIdentity)
      {
        goto LABEL_116;
      }

      v108 = &v12->super.isa + 2 * v105;
      *v108 = v106;
      v108[1] = v107;
      v121 = v12;
      sub_100436168(v105 - 1);
      v12 = v121;
      v105 = *v121->clientIdentity;
      if (v105 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

uint64_t sub_100177AE4(void **__dst, void **__src, void **a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v17 = &v16[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = v17;
      v20 = v8;
      v55 = *v8;
      v21 = v16;
      v54 = *v16;
      v22 = v54;
      v23 = v55;
      v24 = v22;
      v25 = sub_100171114(&v55, &v54, a5);
      if (v6)
      {

        v45 = v19 - v21 + 7;
        if ((v19 - v21) >= 0)
        {
          v45 = v19 - v21;
        }

        v46 = v45 >> 3;
        if (v9 < v21 || v9 >= (v21 + (v45 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v9, v21, 8 * v46);
          return 1;
        }

        if (v9 == v21)
        {
          return 1;
        }

        v44 = 8 * v46;
        v42 = v9;
        v43 = v21;
        goto LABEL_57;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v18 = v21;
      v16 = v21 + 1;
      v8 = v20;
      if (v9 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      v17 = v19;
      v6 = 0;
      if (v16 >= v19)
      {
        goto LABEL_10;
      }
    }

    v18 = v20;
    v8 = v20 + 1;
    v16 = v21;
    if (v9 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v15);
    a4 = v27;
  }

  v52 = a4;
  v17 = (a4 + 8 * v15);
  if (v13 >= 8 && v8 > v9)
  {
    v28 = -a4;
    v49 = -a4;
    v50 = v9;
LABEL_25:
    v51 = v8;
    v29 = v8 - 1;
    v30 = v17 + v28;
    --v7;
    v31 = v17;
    while (1)
    {
      v32 = *--v31;
      v55 = v32;
      v33 = v29;
      v54 = *v29;
      v34 = v54;
      v35 = v32;
      v36 = v34;
      v37 = sub_100171114(&v55, &v54, a5);
      if (v6)
      {
        break;
      }

      v38 = v37;

      v39 = v7 + 1;
      if (v38)
      {
        if (v39 != v51)
        {
          *v7 = *v33;
        }

        v16 = v52;
        v6 = 0;
        if (v17 <= v52 || (v8 = v33, v28 = v49, v33 <= v50))
        {
          v8 = v33;
          goto LABEL_51;
        }

        goto LABEL_25;
      }

      if (v39 != v17)
      {
        *v7 = *v31;
      }

      v30 -= 8;
      --v7;
      v17 = v31;
      v6 = 0;
      v29 = v33;
      if (v31 <= v52)
      {
        v17 = v31;
        v8 = v51;
        v16 = v52;
        goto LABEL_51;
      }
    }

    if (v30 >= 0)
    {
      v40 = v30;
    }

    else
    {
      v40 = v30 + 7;
    }

    v41 = v40 >> 3;
    v42 = v51;
    v43 = v52;
    if (v51 < v52 || v51 >= (v52 + (v40 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v51, v52, 8 * v41);
      return 1;
    }

    if (v51 == v52)
    {
      return 1;
    }

    v44 = 8 * v41;
    goto LABEL_57;
  }

  v16 = a4;
LABEL_51:
  v47 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v47 = v17 - v16;
  }

  if (v8 < v16 || v8 >= (v16 + (v47 & 0xFFFFFFFFFFFFFFF8)) || v8 != v16)
  {
    v44 = 8 * (v47 >> 3);
    v42 = v8;
    v43 = v16;
LABEL_57:
    memmove(v42, v43, v44);
  }

  return 1;
}

void sub_100177EA0(int a1, uint64_t a2, void (**a3)(void, void, void))
{
  v608 = a3;
  i = a2;
  LODWORD(v620) = a1;
  v606 = type metadata accessor for DispatchTime();
  v605 = *(v606 - 8);
  __chkstk_darwin(v606, v3);
  v603 = &v596 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v604 = &v596 - v7;
  v602 = type metadata accessor for DispatchWorkItemFlags();
  v601 = *(v602 - 8);
  __chkstk_darwin(v602, v8);
  v600 = &v596 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v599 = type metadata accessor for DispatchQoS();
  v598 = *(v599 - 8);
  __chkstk_darwin(v599, v10);
  v597 = &v596 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v616 = type metadata accessor for UUID();
  v613 = *(v616 - 8);
  __chkstk_darwin(v616, v12);
  v615 = &v596 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v619 = type metadata accessor for REMAccountSnapshotSummary();
  v612 = *(v619 - 1);
  __chkstk_darwin(v619, v14);
  v618 = &v596 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_100939EF0, &qword_100797290);
  __chkstk_darwin(v16 - 8, v17);
  v617 = &v596 - v18;
  v19 = [objc_opt_self() processInfo];
  v20 = swift_allocObject();
  v21 = sub_10038E004(&_swiftEmptyArrayStorage);
  v609 = v20;
  *(v20 + 16) = v21;
  v625 = (v20 + 16);
  v611 = v19;
  v22 = [v19 environment];
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = 0;
  v26 = v23 + 64;
  v25 = *(v23 + 64);
  v623 = v23;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25;
  v30 = (v27 + 63) >> 6;
  while (v29)
  {
LABEL_11:
    v41 = (v24 << 10) | (16 * __clz(__rbit64(v29)));
    v42 = (*(v623 + 6) + v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = (*(v623 + 7) + v41);
    v46 = v45[1];
    v624 = *v45;
    *&aBlock = 779513445;
    *(&aBlock + 1) = 0xE400000000000000;

    v47._countAndFlagsBits = v43;
    v47._object = v44;
    String.append(_:)(v47);
    v44, v48, v49, v50, v51, v52, v53, v54;
    v55 = aBlock;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = *v625;
    v57 = aBlock;
    *v625 = 0x8000000000000000;
    v58 = sub_100005F4C(v55, *(&v55 + 1));
    v66 = *(v57 + 16);
    v67 = (v59 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_187;
    }

    v70 = v59;
    if (*(v57 + 24) < v69)
    {
      sub_10036A8F0(v69, isUniquelyReferenced_nonNull_native);
      v58 = sub_100005F4C(v55, *(&v55 + 1));
      if ((v70 & 1) != (v59 & 1))
      {
        goto LABEL_200;
      }

LABEL_16:
      v71 = aBlock;
      if (v70)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v75 = v58;
    sub_100373664();
    v58 = v75;
    v71 = aBlock;
    if (v70)
    {
LABEL_4:
      v31 = (v71[7] + 16 * v58);
      v32 = v31[1];
      *v31 = v624;
      v31[1] = v46;
      *(&v55 + 1), v59, v60, v61, v62, v63, v64, v65;
      v32, v33, v34, v35, v36, v37, v38, v39;
      goto LABEL_5;
    }

LABEL_17:
    v71[(v58 >> 6) + 8] |= 1 << v58;
    *(v71[6] + 16 * v58) = v55;
    v72 = (v71[7] + 16 * v58);
    *v72 = v624;
    v72[1] = v46;
    v73 = v71[2];
    v68 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v68)
    {
      goto LABEL_191;
    }

    v71[2] = v74;
LABEL_5:
    v29 &= v29 - 1;
    *v625 = v71;
  }

  while (1)
  {
    v40 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_176;
    }

    if (v40 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v40);
    ++v24;
    if (v29)
    {
      v24 = v40;
      goto LABEL_11;
    }
  }

  v76 = v611;
  v77 = [v611 arguments];
  v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = [v76 arguments];
  v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v624 = *(v80 + 16);
  v80, v81, v82, v83, v84, v85, v86, v87;
  v95 = v78;
  v623 = *(v78 + 16);
  if (v623)
  {
    v96 = 0;
    v97 = (v78 + 40);
    v622 = v95;
    do
    {
      if (v96 >= *(v95 + 16))
      {
        goto LABEL_183;
      }

      if (v624 == v96)
      {
        break;
      }

      v107 = *(v97 - 1);
      v108 = *v97;
      *&aBlock = 778531425;
      *(&aBlock + 1) = 0xE400000000000000;
      v634[0] = v96;

      v109._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      object = v109._object;
      String.append(_:)(v109);
      object, v111, v112, v113, v114, v115, v116, v117;
      v118 = aBlock;
      v119 = v625;
      v120 = *v625;
      v121 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v120;
      *v119 = 0x8000000000000000;
      v122 = sub_100005F4C(v118, *(&v118 + 1));
      v123 = *(v120 + 16);
      v124 = (v88 & 1) == 0;
      v125 = v123 + v124;
      if (__OFADD__(v123, v124))
      {
        goto LABEL_185;
      }

      v126 = v88;
      if (*(v120 + 24) >= v125)
      {
        if (v121)
        {
          v128 = aBlock;
          if ((v88 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          sub_100373664();
          v128 = aBlock;
          if ((v126 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        sub_10036A8F0(v125, v121);
        v127 = sub_100005F4C(v118, *(&v118 + 1));
        if ((v126 & 1) != (v88 & 1))
        {
          goto LABEL_200;
        }

        v122 = v127;
        v128 = aBlock;
        if ((v126 & 1) == 0)
        {
LABEL_34:
          v128[(v122 >> 6) + 8] |= 1 << v122;
          *(v128[6] + 16 * v122) = v118;
          v129 = (v128[7] + 16 * v122);
          *v129 = v107;
          v129[1] = v108;
          v130 = v128[2];
          v68 = __OFADD__(v130, 1);
          v131 = v130 + 1;
          if (v68)
          {
            goto LABEL_186;
          }

          v128[2] = v131;
          goto LABEL_24;
        }
      }

      v98 = (v128[7] + 16 * v122);
      v99 = v98[1];
      *v98 = v107;
      v98[1] = v108;
      *(&v118 + 1), v88, v89, v90, v91, v92, v93, v94;
      v99, v100, v101, v102, v103, v104, v105, v106;
LABEL_24:
      ++v96;
      *v625 = v128;
      v97 += 2;
      v95 = v622;
    }

    while (v623 != v96);
  }

  v95, v88, v89, v90, v91, v92, v93, v94;
  LODWORD(aBlock) = [v611 processIdentifier];
  v132 = dispatch thunk of CustomStringConvertible.description.getter();
  v134 = v133;
  v135 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v625;
  *&aBlock = *v625;
  *v625 = 0x8000000000000000;
  sub_1002C72CC(v132, v134, 6580592, 0xE300000000000000, v135);
  *v136 = aBlock;
  v137 = i + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_60;
  }

  v139 = Strong;
  v140 = *(v137 + 8);
  ObjectType = swift_getObjectType();
  v142 = *(v140 + 48);
  v622 = v139;
  v143 = v142(ObjectType, v140);
  v144 = 0;
  v146 = v143 + 64;
  v145 = *(v143 + 64);
  v623 = v143;
  v147 = 1 << *(v143 + 32);
  v148 = -1;
  if (v147 < 64)
  {
    v148 = ~(-1 << v147);
  }

  v149 = v148 & v145;
  v150 = (v147 + 63) >> 6;
  while (2)
  {
    if (v149)
    {
LABEL_49:
      v162 = (v144 << 10) | (16 * __clz(__rbit64(v149)));
      v163 = (*(v623 + 6) + v162);
      v164 = *v163;
      v165 = v163[1];
      v166 = (*(v623 + 7) + v162);
      v167 = v166[1];
      v624 = *v166;
      *&aBlock = 0x6F6D656144637078;
      *(&aBlock + 1) = 0xEA00000000002E6ELL;

      v168._countAndFlagsBits = v164;
      v168._object = v165;
      String.append(_:)(v168);
      v165, v169, v170, v171, v172, v173, v174, v175;
      v176 = aBlock;
      v177 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v625;
      v178 = aBlock;
      *v625 = 0x8000000000000000;
      v179 = sub_100005F4C(v176, *(&v176 + 1));
      v187 = *(v178 + 16);
      v188 = (v180 & 1) == 0;
      v68 = __OFADD__(v187, v188);
      v189 = v187 + v188;
      if (v68)
      {
        goto LABEL_190;
      }

      v190 = v180;
      if (*(v178 + 24) >= v189)
      {
        if ((v177 & 1) == 0)
        {
          v195 = v179;
          sub_100373664();
          v179 = v195;
          v191 = aBlock;
          if ((v190 & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_10036A8F0(v189, v177);
        v179 = sub_100005F4C(v176, *(&v176 + 1));
        if ((v190 & 1) != (v180 & 1))
        {
          goto LABEL_200;
        }
      }

      v191 = aBlock;
      if ((v190 & 1) == 0)
      {
LABEL_55:
        v191[(v179 >> 6) + 8] |= 1 << v179;
        *(v191[6] + 16 * v179) = v176;
        v192 = (v191[7] + 16 * v179);
        *v192 = v624;
        v192[1] = v167;
        v193 = v191[2];
        v68 = __OFADD__(v193, 1);
        v194 = v193 + 1;
        if (v68)
        {
          goto LABEL_196;
        }

        v160 = v191;
        v191[2] = v194;
        goto LABEL_43;
      }

LABEL_42:
      v151 = (v191[7] + 16 * v179);
      v152 = v151[1];
      *v151 = v624;
      v151[1] = v167;
      *(&v176 + 1), v180, v181, v182, v183, v184, v185, v186;
      v152, v153, v154, v155, v156, v157, v158, v159;
      v160 = v191;
LABEL_43:
      v149 &= v149 - 1;
      *v625 = v160;
      continue;
    }

    break;
  }

  while (1)
  {
    v161 = v144 + 1;
    if (__OFADD__(v144, 1))
    {
      goto LABEL_180;
    }

    if (v161 >= v150)
    {
      break;
    }

    v149 = *(v146 + 8 * v161);
    ++v144;
    if (v149)
    {
      v144 = v161;
      goto LABEL_49;
    }
  }

  swift_unknownObjectRelease();
LABEL_60:
  v607 = [objc_opt_self() sharedInstance];
  v196 = [v607 status];
  v197 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v198 = 0;
  v200 = v197 + 64;
  v199 = *(v197 + 64);
  v623 = v197;
  v201 = 1 << *(v197 + 32);
  v202 = -1;
  if (v201 < 64)
  {
    v202 = ~(-1 << v201);
  }

  v203 = v202 & v199;
  v204 = (v201 + 63) >> 6;
  while (2)
  {
    if (v203)
    {
LABEL_70:
      v215 = (v198 << 10) | (16 * __clz(__rbit64(v203)));
      v216 = (*(v623 + 6) + v215);
      v217 = *v216;
      v218 = v216[1];
      v219 = (*(v623 + 7) + v215);
      v220 = v219[1];
      v624 = *v219;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(16);
      *(&aBlock + 1), v221, v222, v223, v224, v225, v226, v227;
      strcpy(&aBlock, "AppleAccounts.");
      HIBYTE(aBlock) = -18;
      v228._countAndFlagsBits = v217;
      v228._object = v218;
      String.append(_:)(v228);
      v218, v229, v230, v231, v232, v233, v234, v235;
      v236 = aBlock;
      v237 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v625;
      v238 = aBlock;
      *v625 = 0x8000000000000000;
      v239 = sub_100005F4C(v236, *(&v236 + 1));
      v247 = *(v238 + 16);
      v248 = (v240 & 1) == 0;
      v68 = __OFADD__(v247, v248);
      v249 = v247 + v248;
      if (v68)
      {
        goto LABEL_188;
      }

      v250 = v240;
      if (*(v238 + 24) >= v249)
      {
        if ((v237 & 1) == 0)
        {
          v255 = v239;
          sub_100373664();
          v239 = v255;
          v251 = aBlock;
          if ((v250 & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_63;
        }
      }

      else
      {
        sub_10036A8F0(v249, v237);
        v239 = sub_100005F4C(v236, *(&v236 + 1));
        if ((v250 & 1) != (v240 & 1))
        {
          goto LABEL_200;
        }
      }

      v251 = aBlock;
      if ((v250 & 1) == 0)
      {
LABEL_76:
        v251[(v239 >> 6) + 8] |= 1 << v239;
        *(v251[6] + 16 * v239) = v236;
        v252 = (v251[7] + 16 * v239);
        *v252 = v624;
        v252[1] = v220;
        v253 = v251[2];
        v68 = __OFADD__(v253, 1);
        v254 = v253 + 1;
        if (v68)
        {
          goto LABEL_193;
        }

        v251[2] = v254;
        goto LABEL_64;
      }

LABEL_63:
      v205 = (v251[7] + 16 * v239);
      v206 = v205[1];
      *v205 = v624;
      v205[1] = v220;
      *(&v236 + 1), v240, v241, v242, v243, v244, v245, v246;
      v206, v207, v208, v209, v210, v211, v212, v213;
LABEL_64:
      v203 &= v203 - 1;
      *v625 = v251;
      continue;
    }

    break;
  }

  while (1)
  {
    v214 = v198 + 1;
    if (__OFADD__(v198, 1))
    {
      goto LABEL_177;
    }

    if (v214 >= v204)
    {
      break;
    }

    v203 = *(v200 + 8 * v214);
    ++v198;
    if (v203)
    {
      v198 = v214;
      goto LABEL_70;
    }
  }

  v610 = *(i + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v256 = [v610 status:v620 & 1];
  v257 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v258 = 0;
  v259 = v257 + 64;
  v260 = 1 << *(v257 + 32);
  v261 = -1;
  if (v260 < 64)
  {
    v261 = ~(-1 << v260);
  }

  v262 = v261 & *(v257 + 64);
  v263 = (v260 + 63) >> 6;
  v622 = 0x80000001007EEA50;
  v623 = v257;
  while (2)
  {
    if (v262)
    {
LABEL_90:
      v274 = (v258 << 10) | (16 * __clz(__rbit64(v262)));
      v275 = (*(v623 + 6) + v274);
      v276 = *v275;
      v277 = v275[1];
      v278 = (*(v623 + 7) + v274);
      v279 = v278[1];
      v624 = *v278;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(18);
      *(&aBlock + 1), v280, v281, v282, v283, v284, v285, v286;
      *&aBlock = 0xD000000000000010;
      *(&aBlock + 1) = v622;
      v287._countAndFlagsBits = v276;
      v287._object = v277;
      String.append(_:)(v287);
      v277, v288, v289, v290, v291, v292, v293, v294;
      v295 = aBlock;
      v296 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v625;
      v297 = aBlock;
      *v625 = 0x8000000000000000;
      v298 = sub_100005F4C(v295, *(&v295 + 1));
      v306 = *(v297 + 16);
      v307 = (v299 & 1) == 0;
      v68 = __OFADD__(v306, v307);
      v308 = v306 + v307;
      if (v68)
      {
        goto LABEL_189;
      }

      v309 = v299;
      if (*(v297 + 24) >= v308)
      {
        if ((v296 & 1) == 0)
        {
          v314 = v298;
          sub_100373664();
          v298 = v314;
          v310 = aBlock;
          if ((v309 & 1) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_83;
        }
      }

      else
      {
        sub_10036A8F0(v308, v296);
        v298 = sub_100005F4C(v295, *(&v295 + 1));
        if ((v309 & 1) != (v299 & 1))
        {
          goto LABEL_199;
        }
      }

      v310 = aBlock;
      if ((v309 & 1) == 0)
      {
LABEL_96:
        v310[(v298 >> 6) + 8] |= 1 << v298;
        *(v310[6] + 16 * v298) = v295;
        v311 = (v310[7] + 16 * v298);
        *v311 = v624;
        v311[1] = v279;
        v312 = v310[2];
        v68 = __OFADD__(v312, 1);
        v313 = v312 + 1;
        if (v68)
        {
          goto LABEL_194;
        }

        v310[2] = v313;
        goto LABEL_84;
      }

LABEL_83:
      v264 = (v310[7] + 16 * v298);
      v265 = v264[1];
      *v264 = v624;
      v264[1] = v279;
      *(&v295 + 1), v299, v300, v301, v302, v303, v304, v305;
      v265, v266, v267, v268, v269, v270, v271, v272;
LABEL_84:
      v262 &= v262 - 1;
      *v625 = v310;
      continue;
    }

    break;
  }

  while (1)
  {
    v273 = v258 + 1;
    if (__OFADD__(v258, 1))
    {
      goto LABEL_178;
    }

    if (v273 >= v263)
    {
      break;
    }

    v262 = *(v259 + 8 * v273);
    ++v258;
    if (v262)
    {
      v258 = v273;
      goto LABEL_90;
    }
  }

  v634[0] = 0xD000000000000013;
  v634[1] = 0x80000001007EE8B0;
  memset(&v634[2], 0, 30);
  v315 = sub_1003FE534(v634, sub_1004339E0, 0);
  v596 = 0;
  v316 = *(v315 + 16);
  aBlock = v315;
  v627 = 0;
  v628 = v316;
  v614 = (v612 + 4);
  ++v613;
  ++v612;
  v629 = 0;
  LOBYTE(v630) = 0;
LABEL_102:
  v317 = v617;
  sub_1001601F4(v617);
  v318 = v317;
  v319 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
  if ((*(*(v319 - 8) + 48))(v318, 1, v319) == 1)
  {
    aBlock, v320, v321, v322, v323, v324, v325, v326;
    v440 = [v610 cloudContext];
    if (!v440)
    {
LABEL_170:
      v569 = swift_allocObject();
      *(v569 + 16) = 1;
      v570 = (v569 + 16);
      v571 = [objc_opt_self() sharedBabysitter];
      if (v571)
      {
        v572 = v571;
        v573 = dispatch_group_create();
        dispatch_group_enter(v573);
        sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
        v574 = static OS_dispatch_queue.main.getter();
        v575 = swift_allocObject();
        v575[2] = v572;
        v575[3] = v573;
        v575[4] = v609;
        v575[5] = v569;
        v629 = sub_100189E44;
        v630 = v575;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v627 = sub_100019200;
        v628 = &unk_1008E7E98;
        v576 = _Block_copy(&aBlock);
        v623 = v572;
        v577 = v573;

        v578 = v597;
        static DispatchQoS.unspecified.getter();
        *&aBlock = &_swiftEmptyArrayStorage;
        sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v624 = v569;
        sub_1000F5104(&unk_100939E50, &unk_100791AD0);
        sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
        v579 = v600;
        v580 = v602;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v576);

        (*(v601 + 8))(v579, v580);
        (*(v598 + 8))(v578, v599);
        v581 = v603;
        static DispatchTime.now()();
        v582 = v604;
        + infix(_:_:)();
        v583 = *(v605 + 8);
        v584 = v606;
        v583(v581, v606);
        OS_dispatch_group.wait(timeout:)();

        v583(v582, v584);
      }

      swift_beginAccess();
      if (*v570 == 1)
      {
        v585 = v625;
        swift_beginAccess();
        v586 = swift_isUniquelyReferenced_nonNull_native();
        v631 = *v585;
        *v585 = 0x8000000000000000;
        sub_1002C72CC(0xD00000000000001ALL, 0x80000001007EEA70, 0x7474697379626162, 0xEA00000000007265, v586);
        *v585 = v631;
        swift_endAccess();
      }

      swift_beginAccess();
      v587 = *(v609 + 16);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      (v608)[2](v608, isa, 0);

      v587, v589, v590, v591, v592, v593, v594, v595;

      return;
    }

    v441 = v440;
    v442 = [v440 readinessLoggingDescription];
    v443 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v445 = v444;

    v446 = v625;
    v447 = *v625;
    v448 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v447;
    *v446 = 0x8000000000000000;
    sub_1002C72CC(v443, v445, 0xD000000000000028, 0x80000001007EEA90, v448);
    *v446 = aBlock;
    v449 = [v441 lastSyncMetrics];
    v620 = v441;
    if (v449)
    {
      v619 = v449;
      v450 = [v449 dictionaryRepresentation];
      v451 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v452 = 0;
      v453 = v451 + 64;
      v454 = 1 << *(v451 + 32);
      v455 = -1;
      if (v454 < 64)
      {
        v455 = ~(-1 << v454);
      }

      v456 = v455 & *(v451 + 64);
      v457 = (v454 + 63) >> 6;
      v622 = 0x80000001007EEAE0;
      v623 = v451;
      for (i = v451 + 64; ; v453 = i)
      {
        if (v456)
        {
          goto LABEL_137;
        }

        do
        {
          v467 = v452 + 1;
          if (__OFADD__(v452, 1))
          {
            goto LABEL_184;
          }

          if (v467 >= v457)
          {

            v441 = v620;
            goto LABEL_149;
          }

          v456 = *(v453 + 8 * v467);
          ++v452;
        }

        while (!v456);
        v452 = v467;
LABEL_137:
        v468 = (v452 << 10) | (16 * __clz(__rbit64(v456)));
        v469 = (*(v623 + 6) + v468);
        v470 = *v469;
        v471 = v469[1];
        v472 = (*(v623 + 7) + v468);
        v473 = v472[1];
        v624 = *v472;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(31);
        *(&aBlock + 1), v474, v475, v476, v477, v478, v479, v480;
        *&aBlock = 0xD00000000000001DLL;
        *(&aBlock + 1) = v622;
        v481._countAndFlagsBits = v470;
        v481._object = v471;
        String.append(_:)(v481);
        v471, v482, v483, v484, v485, v486, v487, v488;
        v489 = aBlock;
        v490 = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = *v625;
        v491 = aBlock;
        *v625 = 0x8000000000000000;
        v499 = sub_100005F4C(v489, *(&v489 + 1));
        v500 = *(v491 + 16);
        v501 = (v492 & 1) == 0;
        v502 = v500 + v501;
        if (__OFADD__(v500, v501))
        {
          goto LABEL_195;
        }

        v503 = v492;
        if (*(v491 + 24) >= v502)
        {
          if (v490)
          {
            v505 = aBlock;
            if ((v492 & 1) == 0)
            {
              goto LABEL_144;
            }
          }

          else
          {
            sub_100373664();
            v505 = aBlock;
            if ((v503 & 1) == 0)
            {
              goto LABEL_144;
            }
          }

LABEL_130:
          v458 = (v505[7] + 16 * v499);
          v459 = v458[1];
          *v458 = v624;
          v458[1] = v473;
          *(&v489 + 1), v492, v493, v494, v495, v496, v497, v498;
          v459, v460, v461, v462, v463, v464, v465, v466;
          goto LABEL_131;
        }

        sub_10036A8F0(v502, v490);
        v504 = sub_100005F4C(v489, *(&v489 + 1));
        if ((v503 & 1) != (v492 & 1))
        {
          goto LABEL_199;
        }

        v499 = v504;
        v505 = aBlock;
        if (v503)
        {
          goto LABEL_130;
        }

LABEL_144:
        v505[(v499 >> 6) + 8] |= 1 << v499;
        *(v505[6] + 16 * v499) = v489;
        v506 = (v505[7] + 16 * v499);
        *v506 = v624;
        v506[1] = v473;
        v507 = v505[2];
        v68 = __OFADD__(v507, 1);
        v508 = v507 + 1;
        if (v68)
        {
          goto LABEL_198;
        }

        v505[2] = v508;
LABEL_131:
        v456 &= v456 - 1;
        *v625 = v505;
      }
    }

LABEL_149:
    v509 = [v441 configurationDump];
    v510 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v511 = 0;
    v513 = v510 + 64;
    v512 = *(v510 + 64);
    v623 = v510;
    v514 = 1 << *(v510 + 32);
    v515 = -1;
    if (v514 < 64)
    {
      v515 = ~(-1 << v514);
    }

    v516 = v515 & v512;
    v517 = (v514 + 63) >> 6;
    v622 = 0x80000001007EEAC0;
    while (1)
    {
      if (v516)
      {
        goto LABEL_159;
      }

      do
      {
        v527 = v511 + 1;
        if (__OFADD__(v511, 1))
        {
          goto LABEL_181;
        }

        if (v527 >= v517)
        {

          goto LABEL_170;
        }

        v516 = *(v513 + 8 * v527);
        ++v511;
      }

      while (!v516);
      v511 = v527;
LABEL_159:
      v528 = (v511 << 10) | (16 * __clz(__rbit64(v516)));
      v529 = (*(v623 + 6) + v528);
      v530 = *v529;
      v531 = v529[1];
      v532 = (*(v623 + 7) + v528);
      v533 = v532[1];
      v624 = *v532;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(29);
      *(&aBlock + 1), v534, v535, v536, v537, v538, v539, v540;
      *&aBlock = 0xD00000000000001BLL;
      *(&aBlock + 1) = v622;
      v541._countAndFlagsBits = v530;
      v541._object = v531;
      String.append(_:)(v541);
      v531, v542, v543, v544, v545, v546, v547, v548;
      v549 = aBlock;
      v550 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v625;
      v551 = aBlock;
      *v625 = 0x8000000000000000;
      v552 = sub_100005F4C(v549, *(&v549 + 1));
      v560 = *(v551 + 16);
      v561 = (v553 & 1) == 0;
      v68 = __OFADD__(v560, v561);
      v562 = v560 + v561;
      if (v68)
      {
        goto LABEL_192;
      }

      v563 = v553;
      if (*(v551 + 24) >= v562)
      {
        if (v550)
        {
          goto LABEL_164;
        }

        v568 = v552;
        sub_100373664();
        v552 = v568;
        v564 = aBlock;
        if (v563)
        {
          goto LABEL_152;
        }

LABEL_165:
        v564[(v552 >> 6) + 8] |= 1 << v552;
        *(v564[6] + 16 * v552) = v549;
        v565 = (v564[7] + 16 * v552);
        *v565 = v624;
        v565[1] = v533;
        v566 = v564[2];
        v68 = __OFADD__(v566, 1);
        v567 = v566 + 1;
        if (v68)
        {
          goto LABEL_197;
        }

        v564[2] = v567;
      }

      else
      {
        sub_10036A8F0(v562, v550);
        v552 = sub_100005F4C(v549, *(&v549 + 1));
        if ((v563 & 1) != (v553 & 1))
        {
          goto LABEL_199;
        }

LABEL_164:
        v564 = aBlock;
        if ((v563 & 1) == 0)
        {
          goto LABEL_165;
        }

LABEL_152:
        v518 = (v564[7] + 16 * v552);
        v519 = v518[1];
        *v518 = v624;
        v518[1] = v533;
        *(&v549 + 1), v553, v554, v555, v556, v557, v558, v559;
        v519, v520, v521, v522, v523, v524, v525, v526;
      }

      v516 &= v516 - 1;
      *v625 = v564;
    }
  }

  v327 = *(v318 + *(v319 + 48));
  (*v614)(v618, v318, v619);
  v632 = 0;
  v633 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v633, v328, v329, v330, v331, v332, v333, v334;
  v631 = v327;
  v632 = 0x53746E756F636361;
  v633 = 0xEF2E7972616D6D75;
  v622 = v327;
  v335._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v336 = v335._object;
  String.append(_:)(v335);
  v336, v337, v338, v339, v340, v341, v342, v343;
  v344._countAndFlagsBits = 0x746E756F6363612ELL;
  v344._object = 0xEA00000000004449;
  String.append(_:)(v344);
  v346 = v632;
  v345 = v633;
  v347 = REMAccountSnapshotSummary.accountID.getter();
  v348 = [v347 uuid];

  v349 = v615;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v350 = UUID.uuidString.getter();
  v352 = v351;
  (*v613)(v349, v616);
  v353 = v625;
  v354 = *v625;
  v355 = swift_isUniquelyReferenced_nonNull_native();
  v632 = v354;
  *v353 = 0x8000000000000000;
  sub_1002C72CC(v350, v352, v346, v345, v355);
  v345, v356, v357, v358, v359, v360, v361, v362;
  *v353 = v632;
  v363 = REMAccountSnapshotSummary.nsPayload.getter();
  v364 = 0;
  v366 = v363 + 64;
  v365 = *(v363 + 64);
  v623 = v363;
  v367 = 1 << *(v363 + 32);
  if (v367 < 64)
  {
    v368 = ~(-1 << v367);
  }

  else
  {
    v368 = -1;
  }

  v369 = v368 & v365;
  v370 = ((v367 + 63) >> 6);
  i = v363 + 64;
  v620 = v370;
  while (2)
  {
    if (v369)
    {
LABEL_114:
      v382 = __clz(__rbit64(v369)) | (v364 << 6);
      v383 = (*(v623 + 6) + 16 * v382);
      v385 = *v383;
      v384 = v383[1];
      v386 = *(*(v623 + 7) + 8 * v382);
      v632 = 0;
      v633 = 0xE000000000000000;

      v387 = v386;
      _StringGuts.grow(_:)(20);
      v633, v388, v389, v390, v391, v392, v393, v394;
      v632 = 0x53746E756F636361;
      v633 = 0xEF2E7972616D6D75;
      v631 = v622;
      v395._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v396 = v395._object;
      String.append(_:)(v395);
      v396, v397, v398, v399, v400, v401, v402, v403;
      v404._countAndFlagsBits = 46;
      v404._object = 0xE100000000000000;
      String.append(_:)(v404);
      v405._countAndFlagsBits = v385;
      v405._object = v384;
      String.append(_:)(v405);
      v384, v406, v407, v408, v409, v410, v411, v412;
      v413 = v632;
      v414 = v633;
      v624 = v387;
      v415 = [v387 stringValue];
      v416 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v418 = v417;

      v419 = v625;
      v420 = *v625;
      v421 = swift_isUniquelyReferenced_nonNull_native();
      v632 = v420;
      *v419 = 0x8000000000000000;
      v429 = sub_100005F4C(v413, v414);
      v430 = *(v420 + 16);
      v431 = (v422 & 1) == 0;
      v432 = v430 + v431;
      if (__OFADD__(v430, v431))
      {
        goto LABEL_179;
      }

      v433 = v422;
      if (*(v420 + 24) < v432)
      {
        sub_10036A8F0(v432, v421);
        v434 = sub_100005F4C(v413, v414);
        if ((v433 & 1) != (v422 & 1))
        {
          goto LABEL_200;
        }

        v429 = v434;
        v435 = v632;
        if ((v433 & 1) == 0)
        {
          goto LABEL_121;
        }

LABEL_107:
        v371 = (v435[7] + 16 * v429);
        v372 = v371[1];
        *v371 = v416;
        v371[1] = v418;
        v414, v422, v423, v424, v425, v426, v427, v428;
        v372, v373, v374, v375, v376, v377, v378, v379;
LABEL_108:
        v369 &= v369 - 1;
        v380 = v624;
        *v625 = v435;

        v366 = i;
        v370 = v620;
        continue;
      }

      if (v421)
      {
        v435 = v632;
        if (v422)
        {
          goto LABEL_107;
        }
      }

      else
      {
        sub_100373664();
        v435 = v632;
        if (v433)
        {
          goto LABEL_107;
        }
      }

LABEL_121:
      v435[(v429 >> 6) + 8] |= 1 << v429;
      v436 = (v435[6] + 16 * v429);
      *v436 = v413;
      v436[1] = v414;
      v437 = (v435[7] + 16 * v429);
      *v437 = v416;
      v437[1] = v418;
      v438 = v435[2];
      v68 = __OFADD__(v438, 1);
      v439 = v438 + 1;
      if (v68)
      {
        goto LABEL_182;
      }

      v435[2] = v439;
      goto LABEL_108;
    }

    break;
  }

  while (1)
  {
    v381 = v364 + 1;
    if (__OFADD__(v364, 1))
    {
      break;
    }

    if (v381 >= v370)
    {

      (*v612)(v618, v619);
      goto LABEL_102;
    }

    v369 = *(v366 + 8 * v381);
    ++v364;
    if (v369)
    {
      v364 = v381;
      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_176:
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
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  _Block_release(v608);
LABEL_200:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}