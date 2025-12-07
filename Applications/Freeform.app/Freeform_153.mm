uint64_t sub_1011E8598(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A2C9D0, &unk_1014C7030);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  sub_10000BE14(a1, &v16 - v9, &unk_101A2C9D0, &unk_1014C7030);
  v11 = *(v8 + 56);
  v12 = _s6CellIDVMa(0);
  (*(v4 + 16))(v6, &v10[*(v12 + 20)], v3);
  sub_1011F0B80(v10, _s6CellIDVMa);
  v13 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  v14 = sub_1005B981C(&qword_1019FA378, &qword_1014724F0);
  (*(*(v14 - 8) + 8))(&v10[v11], v14);
  return v13 & 1;
}

void sub_1011E8788(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_101A2C9E0, &unk_1014724E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(_s6CellIDVMa(0) - 8);
    v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      swift_getKeyPath();
      v10 = Capsule.Ref.subscript.modify();
      sub_1005B981C(&qword_1019FA370, &qword_1014D2320);
      CRDictionary.removeValue(forKey:)();
      sub_10000CAAC(v5, &qword_101A2C9E0, &unk_1014724E0);
      v10(v11, 0);

      v8 += v9;
      --v6;
    }

    while (v6);
  }
}

id sub_1011E8918()
{
  v1 = v0;
  type metadata accessor for CRLTableItemData(0);
  swift_dynamicCastClassUnconditional();

  v2 = sub_1011FA8B4(0);

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v4 = objc_allocWithZone(type metadata accessor for CRLTableItem(0));
  v5 = &v4[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
  *v5 = 0u;
  v5[1] = 0u;
  v4[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] = 1;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v3;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v2;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for CRLBoardItemBase(0);
  v6 = v3;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1011E8A6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v10 = sub_1005B981C(&qword_101A2C930, &qword_1014D1030);
  __chkstk_darwin(v10 - 8);
  v55 = &v53 - v11;
  type metadata accessor for CRLTableItem(0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v57 = a1;
    swift_unknownObjectRetain();
    v56 = sub_1011ED8A0(v13, v2);
    type metadata accessor for CRLTableItemData(0);
    v14 = swift_dynamicCastClassUnconditional();
    v15 = qword_101AD9268;
    swift_beginAccess();
    v16 = *(v5 + 16);
    v16(v9, v14 + v15, v4);
    v17 = swift_dynamicCastClassUnconditional();
    v18 = qword_101AD9268;
    swift_beginAccess();
    v19 = v17 + v18;
    v20 = v54;
    v16(v54, v19, v4);
    v21 = v55;
    Capsule.actionUndoingDifference(from:)();
    v22 = *(v5 + 8);
    v22(v20, v4);
    v22(v9, v4);
    v23 = type metadata accessor for CapsuleUndoAction();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v21, 1, v23) == 1)
    {
      sub_10000CAAC(v21, &qword_101A2C930, &qword_1014D1030);
      v58 = 0uLL;
      v59 = 0;
      v60 = 1;
    }

    else
    {
      v60 = v23;
      v25 = sub_10002C58C(&v58);
      (*(v24 + 32))(v25, v21, v23);
    }

    v26 = v56;
    swift_beginAccess();
    sub_100BC1DF4(&v58, 10);
    swift_endAccess();
    swift_unknownObjectRelease();
    return v26;
  }

  else
  {
    v28 = objc_opt_self();
    v29 = [v28 _atomicIncrementAssertCount];
    v58.n128_u64[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v58, "Tried to generate undo from mismatched type", 43, 2u);
    StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableItem.swift", 90, 2);
    v31 = String._bridgeToObjectiveC()();

    v32 = [v31 lastPathComponent];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v38;
    v39 = sub_1005CF04C();
    *(inited + 104) = v39;
    *(inited + 72) = v30;
    *(inited + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(inited + 112) = v33;
    *(inited + 120) = v35;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v40;
    *(inited + 152) = 871;
    v41 = v58.n128_u64[0];
    *(inited + 216) = v38;
    *(inited + 224) = v39;
    *(inited + 192) = v41;
    v42 = v30;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableItem.swift", 90, 2);
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
    v50 = String._bridgeToObjectiveC()();

    [v28 handleFailureInFunction:v48 file:v49 lineNumber:871 isFatal:1 format:v50 args:v47];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v51, v52);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_1011E9174(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A2C938, &qword_1014D1038);
  __chkstk_darwin(v4 - 8);
  v246 = &v234 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v244 = &v234 - v7;
  __chkstk_darwin(v8);
  v242 = &v234 - v9;
  __chkstk_darwin(v10);
  v240 = &v234 - v11;
  __chkstk_darwin(v12);
  v238 = &v234 - v13;
  __chkstk_darwin(v14);
  v248 = &v234 - v15;
  v16 = sub_1005B981C(&qword_101A01F00, &unk_101492AB0);
  __chkstk_darwin(v16 - 8);
  v247 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v245 = &v234 - v19;
  __chkstk_darwin(v20);
  v243 = &v234 - v21;
  __chkstk_darwin(v22);
  v241 = &v234 - v23;
  __chkstk_darwin(v24);
  v239 = &v234 - v25;
  __chkstk_darwin(v26);
  v237 = &v234 - v27;
  v28 = sub_1005B981C(&qword_101A2C948, &qword_1014D1040);
  __chkstk_darwin(v28 - 8);
  v249 = (&v234 - v29);
  v30 = sub_1005B981C(&qword_101A2C950, &qword_1014D1048);
  __chkstk_darwin(v30 - 8);
  v236 = &v234 - v31;
  v32 = sub_1005B981C(&qword_101A2C958, &qword_1014D1050);
  __chkstk_darwin(v32 - 8);
  v235 = &v234 - v33;
  v34 = sub_1005B981C(&qword_101A2C960, &unk_101498A40);
  __chkstk_darwin(v34 - 8);
  v234 = &v234 - v35;
  v256 = sub_1005B981C(&qword_101A2C968, &qword_1014D1058);
  v252 = *(v256 - 8);
  __chkstk_darwin(v256);
  v255 = &v234 - v36;
  v37 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v254 = &v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v234 - v41;
  v43 = sub_1005B981C(&unk_101A2C970, &qword_1014D1060);
  __chkstk_darwin(v43 - 8);
  v257 = &v234 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v253 = &v234 - v46;
  type metadata accessor for CRLTableItem(0);
  v47 = swift_dynamicCastClass();
  if (v47)
  {
    v48 = v47;
    v250 = a1;
    swift_unknownObjectRetain();
    v251 = sub_1011EDC24(v48, v2);
    type metadata accessor for CRLTableItemData(0);
    v49 = swift_dynamicCastClassUnconditional();
    v50 = qword_101AD9268;
    swift_beginAccess();
    v51 = *(v38 + 16);
    v51(v42, v49 + v50, v37);
    v52 = swift_dynamicCastClassUnconditional();
    v53 = qword_101AD9268;
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v254;
    v51(v254, v54, v37);
    v56 = v253;
    Capsule.observableDifference(from:)();
    v57 = *(v38 + 8);
    v57(v55, v37);
    v57(v42, v37);
    v58 = v257;
    sub_10000BE14(v56, v257, &unk_101A2C970, &qword_1014D1060);
    v59 = v252;
    v60 = v256;
    if ((*(v252 + 48))(v58, 1, v256) == 1)
    {
      sub_10000CAAC(v58, &unk_101A2C970, &qword_1014D1060);
      v257 = _swiftEmptyArrayStorage;
      goto LABEL_82;
    }

    v61 = v255;
    (*(v59 + 32))(v255, v58, v60);
    swift_getKeyPath();
    v62 = v234;
    Capsule.ObservableDifference.subscript.getter();

    v63 = sub_1005B981C(&unk_101A09E40, &unk_1014897B0);
    v64 = (*(*(v63 - 8) + 48))(v62, 1, v63);
    sub_10000CAAC(v62, &qword_101A2C960, &unk_101498A40);
    if (v64 == 1)
    {
      v257 = _swiftEmptyArrayStorage;
    }

    else
    {
      v65 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      v257 = v65;
      v68 = v248;
      if (v67 >= v66 >> 1)
      {
        v257 = sub_100024CBC((v66 > 1), v67 + 1, 1, v257);
      }

      v69 = v257;
      *(v257 + 2) = v67 + 1;
      v70 = &v69[16 * v67];
      *(v70 + 4) = 0xD000000000000011;
      *(v70 + 5) = 0x800000010158B630;
      if (v251[2])
      {
        sub_1007C8124(1);
        if (v71)
        {
LABEL_14:
          swift_getKeyPath();
          v94 = v235;
          Capsule.ObservableDifference.subscript.getter();

          v95 = sub_1005B981C(&qword_101A2C980, &qword_1014D10A8);
          v96 = (*(*(v95 - 8) + 48))(v94, 1, v95);
          sub_10000CAAC(v94, &qword_101A2C958, &qword_1014D1050);
          if (v96 != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
            }

            v98 = *(v257 + 2);
            v97 = *(v257 + 3);
            if (v98 >= v97 >> 1)
            {
              v257 = sub_100024CBC((v97 > 1), v98 + 1, 1, v257);
            }

            v99 = v257;
            *(v257 + 2) = v98 + 1;
            v100 = &v99[16 * v98];
            *(v100 + 4) = 1937207154;
            *(v100 + 5) = 0xE400000000000000;
          }

          swift_getKeyPath();
          v101 = v236;
          Capsule.ObservableDifference.subscript.getter();

          v102 = sub_1005B981C(&qword_101A2C988, &qword_1014D10D0);
          v103 = (*(*(v102 - 8) + 48))(v101, 1, v102);
          sub_10000CAAC(v101, &qword_101A2C950, &qword_1014D1048);
          if (v103 != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
            }

            v105 = *(v257 + 2);
            v104 = *(v257 + 3);
            if (v105 >= v104 >> 1)
            {
              v257 = sub_100024CBC((v104 > 1), v105 + 1, 1, v257);
            }

            v106 = v257;
            *(v257 + 2) = v105 + 1;
            v107 = &v106[16 * v105];
            *(v107 + 4) = 0x736E6D756C6F63;
            *(v107 + 5) = 0xE700000000000000;
          }

          swift_getKeyPath();
          v108 = v249;
          Capsule.ObservableDifference.subscript.getter();

          v109 = sub_1005B981C(&qword_101A2C990, &qword_1014D10F8);
          v110 = (*(*(v109 - 8) + 48))(v108, 1, v109);
          sub_10000CAAC(v108, &qword_101A2C948, &qword_1014D1040);
          if (v110 != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
            }

            v112 = *(v257 + 2);
            v111 = *(v257 + 3);
            if (v112 >= v111 >> 1)
            {
              v257 = sub_100024CBC((v111 > 1), v112 + 1, 1, v257);
            }

            v113 = v257;
            *(v257 + 2) = v112 + 1;
            v114 = &v113[16 * v112];
            *(v114 + 4) = 0x736C6C6563;
            *(v114 + 5) = 0xE500000000000000;
          }

          swift_getKeyPath();
          Capsule.ObservableDifference.subscript.getter();

          v115 = sub_1005B981C(&qword_101A2C998, &qword_1014D1120);
          v116 = *(v115 - 1);
          v117 = *(v116 + 48);
          v254 = (v116 + 48);
          v118 = v117(v68, 1, v115);
          v249 = v117;
          if (v118 == 1)
          {
            sub_10000CAAC(v68, &unk_101A2C938, &qword_1014D1038);
            v119 = type metadata accessor for CRValueObservableDifference();
            v120 = v237;
            (*(*(v119 - 8) + 56))(v237, 1, 1, v119);
            v121 = v238;
          }

          else
          {
            v122 = v115[12];
            v235 = v115[16];
            v236 = v122;
            v123 = v115[20];
            v124 = v115[24];
            v125 = v115[28];
            v126 = v237;
            sub_10003DFF8(v68, v237, &qword_101A01F00, &unk_101492AB0);
            v127 = v255;
            sub_10000CAAC(v68 + v125, &qword_101A01F00, &unk_101492AB0);
            v60 = v256;
            sub_10000CAAC(v68 + v124, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v68 + v123, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v68 + v235, &qword_101A01F00, &unk_101492AB0);
            v61 = v127;
            v117 = v249;
            v120 = v126;
            sub_10000CAAC(&v236[v68], &qword_101A01F00, &unk_101492AB0);
            v128 = type metadata accessor for CRValueObservableDifference();
            v129 = (*(*(v128 - 8) + 48))(v126, 1, v128);
            v121 = v238;
            if (v129 != 1)
            {
              sub_10000CAAC(v126, &qword_101A01F00, &unk_101492AB0);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
              }

              v131 = *(v257 + 2);
              v130 = *(v257 + 3);
              if (v131 >= v130 >> 1)
              {
                v257 = sub_100024CBC((v130 > 1), v131 + 1, 1, v257);
              }

              v132 = v257;
              *(v257 + 2) = v131 + 1;
              v133 = &v132[16 * v131];
              strcpy(v133 + 32, "borderStroke");
              v133[45] = 0;
              *(v133 + 23) = -5120;
LABEL_41:
              swift_getKeyPath();
              Capsule.ObservableDifference.subscript.getter();

              if (v117(v121, 1, v115) == 1)
              {
                sub_10000CAAC(v121, &unk_101A2C938, &qword_1014D1038);
                v134 = type metadata accessor for CRValueObservableDifference();
                v135 = v239;
                (*(*(v134 - 8) + 56))(v239, 1, 1, v134);
                v136 = v240;
              }

              else
              {
                v137 = v115[16];
                v138 = v115[20];
                v139 = v115[24];
                v140 = v115[28];
                v141 = v239;
                sub_10003DFF8(v121 + v115[12], v239, &qword_101A01F00, &unk_101492AB0);
                sub_10000CAAC(v121 + v140, &qword_101A01F00, &unk_101492AB0);
                sub_10000CAAC(v121 + v139, &qword_101A01F00, &unk_101492AB0);
                v61 = v255;
                sub_10000CAAC(v121 + v138, &qword_101A01F00, &unk_101492AB0);
                v60 = v256;
                sub_10000CAAC(v121 + v137, &qword_101A01F00, &unk_101492AB0);
                v135 = v141;
                v117 = v249;
                sub_10000CAAC(v121, &qword_101A01F00, &unk_101492AB0);
                v142 = type metadata accessor for CRValueObservableDifference();
                v143 = (*(*(v142 - 8) + 48))(v135, 1, v142);
                v136 = v240;
                if (v143 != 1)
                {
                  sub_10000CAAC(v135, &qword_101A01F00, &unk_101492AB0);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
                  }

                  v145 = *(v257 + 2);
                  v144 = *(v257 + 3);
                  if (v145 >= v144 >> 1)
                  {
                    v257 = sub_100024CBC((v144 > 1), v145 + 1, 1, v257);
                  }

                  v146 = v257;
                  *(v257 + 2) = v145 + 1;
                  v147 = &v146[16 * v145];
                  *(v147 + 4) = 0x7453726564726F62;
                  *(v147 + 5) = 0xEB00000000656C79;
LABEL_50:
                  swift_getKeyPath();
                  Capsule.ObservableDifference.subscript.getter();

                  if (v117(v136, 1, v115) == 1)
                  {
                    sub_10000CAAC(v136, &unk_101A2C938, &qword_1014D1038);
                    v148 = type metadata accessor for CRValueObservableDifference();
                    v149 = v241;
                    (*(*(v148 - 8) + 56))(v241, 1, 1, v148);
                    v150 = v242;
                  }

                  else
                  {
                    v151 = v115[12];
                    v152 = v115[20];
                    v153 = v115[24];
                    v154 = v115[28];
                    v155 = v241;
                    sub_10003DFF8(v136 + v115[16], v241, &qword_101A01F00, &unk_101492AB0);
                    sub_10000CAAC(v136 + v154, &qword_101A01F00, &unk_101492AB0);
                    sub_10000CAAC(v136 + v153, &qword_101A01F00, &unk_101492AB0);
                    v61 = v255;
                    sub_10000CAAC(v136 + v152, &qword_101A01F00, &unk_101492AB0);
                    v60 = v256;
                    sub_10000CAAC(v136 + v151, &qword_101A01F00, &unk_101492AB0);
                    v149 = v155;
                    v117 = v249;
                    sub_10000CAAC(v136, &qword_101A01F00, &unk_101492AB0);
                    v156 = type metadata accessor for CRValueObservableDifference();
                    v157 = (*(*(v156 - 8) + 48))(v149, 1, v156);
                    v150 = v242;
                    if (v157 != 1)
                    {
                      sub_10000CAAC(v149, &qword_101A01F00, &unk_101492AB0);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
                      }

                      v159 = *(v257 + 2);
                      v158 = *(v257 + 3);
                      if (v159 >= v158 >> 1)
                      {
                        v257 = sub_100024CBC((v158 > 1), v159 + 1, 1, v257);
                      }

                      v160 = v257;
                      *(v257 + 2) = v159 + 1;
                      v161 = &v160[16 * v159];
                      *(v161 + 4) = 0xD000000000000011;
                      *(v161 + 5) = 0x800000010158B480;
LABEL_59:
                      swift_getKeyPath();
                      v162 = v61;
                      Capsule.ObservableDifference.subscript.getter();

                      if (v117(v150, 1, v115) == 1)
                      {
                        sub_10000CAAC(v150, &unk_101A2C938, &qword_1014D1038);
                        v163 = type metadata accessor for CRValueObservableDifference();
                        v164 = v243;
                        (*(*(v163 - 8) + 56))(v243, 1, 1, v163);
                      }

                      else
                      {
                        v248 = v115[12];
                        v165 = v115[16];
                        v166 = v115[24];
                        v167 = v115[28];
                        v168 = v150 + v115[20];
                        v169 = v150;
                        v164 = v243;
                        sub_10003DFF8(v168, v243, &qword_101A01F00, &unk_101492AB0);
                        sub_10000CAAC(v169 + v167, &qword_101A01F00, &unk_101492AB0);
                        sub_10000CAAC(v169 + v166, &qword_101A01F00, &unk_101492AB0);
                        v162 = v255;
                        sub_10000CAAC(v169 + v165, &qword_101A01F00, &unk_101492AB0);
                        v60 = v256;
                        sub_10000CAAC(v169 + v248, &qword_101A01F00, &unk_101492AB0);
                        v170 = v169;
                        v117 = v249;
                        sub_10000CAAC(v170, &qword_101A01F00, &unk_101492AB0);
                        v171 = type metadata accessor for CRValueObservableDifference();
                        if ((*(*(v171 - 8) + 48))(v164, 1, v171) != 1)
                        {
                          sub_10000CAAC(v164, &qword_101A01F00, &unk_101492AB0);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
                          }

                          v172 = v244;
                          v174 = *(v257 + 2);
                          v173 = *(v257 + 3);
                          if (v174 >= v173 >> 1)
                          {
                            v257 = sub_100024CBC((v173 > 1), v174 + 1, 1, v257);
                          }

                          v175 = v257;
                          *(v257 + 2) = v174 + 1;
                          v176 = &v175[16 * v174];
                          *(v176 + 4) = 0xD000000000000010;
                          *(v176 + 5) = 0x80000001015C54C0;
LABEL_68:
                          swift_getKeyPath();
                          Capsule.ObservableDifference.subscript.getter();

                          if (v117(v172, 1, v115) == 1)
                          {
                            sub_10000CAAC(v172, &unk_101A2C938, &qword_1014D1038);
                            v177 = type metadata accessor for CRValueObservableDifference();
                            v178 = v245;
                            (*(*(v177 - 8) + 56))(v245, 1, 1, v177);
                            v179 = v247;
                          }

                          else
                          {
                            v248 = v115[12];
                            v180 = v115[16];
                            v181 = v115[20];
                            v182 = v115[28];
                            v183 = v172 + v115[24];
                            v184 = v172;
                            v178 = v245;
                            sub_10003DFF8(v183, v245, &qword_101A01F00, &unk_101492AB0);
                            sub_10000CAAC(v184 + v182, &qword_101A01F00, &unk_101492AB0);
                            sub_10000CAAC(v184 + v181, &qword_101A01F00, &unk_101492AB0);
                            v162 = v255;
                            sub_10000CAAC(v184 + v180, &qword_101A01F00, &unk_101492AB0);
                            v60 = v256;
                            sub_10000CAAC(v184 + v248, &qword_101A01F00, &unk_101492AB0);
                            v185 = v184;
                            v117 = v249;
                            sub_10000CAAC(v185, &qword_101A01F00, &unk_101492AB0);
                            v186 = type metadata accessor for CRValueObservableDifference();
                            v187 = (*(*(v186 - 8) + 48))(v178, 1, v186);
                            v179 = v247;
                            if (v187 != 1)
                            {
                              sub_10000CAAC(v178, &qword_101A01F00, &unk_101492AB0);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
                              }

                              v188 = v246;
                              v190 = *(v257 + 2);
                              v189 = *(v257 + 3);
                              if (v190 >= v189 >> 1)
                              {
                                v257 = sub_100024CBC((v189 > 1), v190 + 1, 1, v257);
                              }

                              v191 = v257;
                              *(v257 + 2) = v190 + 1;
                              v192 = &v191[16 * v190];
                              *(v192 + 4) = 0x4C54527369;
                              *(v192 + 5) = 0xE500000000000000;
                              goto LABEL_77;
                            }
                          }

                          sub_10000CAAC(v178, &qword_101A01F00, &unk_101492AB0);
                          v188 = v246;
LABEL_77:
                          swift_getKeyPath();
                          Capsule.ObservableDifference.subscript.getter();

                          if (v117(v188, 1, v115) == 1)
                          {
                            (*(v252 + 8))(v162, v60);
                            sub_10000CAAC(v188, &unk_101A2C938, &qword_1014D1038);
                            v193 = type metadata accessor for CRValueObservableDifference();
                            (*(*(v193 - 8) + 56))(v179, 1, 1, v193);
                          }

                          else
                          {
                            v194 = v115[12];
                            v195 = v115[16];
                            v196 = v115[20];
                            v197 = v115[24];
                            sub_10003DFF8(v188 + v115[28], v179, &qword_101A01F00, &unk_101492AB0);
                            sub_10000CAAC(v188 + v197, &qword_101A01F00, &unk_101492AB0);
                            sub_10000CAAC(v188 + v196, &qword_101A01F00, &unk_101492AB0);
                            sub_10000CAAC(v188 + v195, &qword_101A01F00, &unk_101492AB0);
                            sub_10000CAAC(v188 + v194, &qword_101A01F00, &unk_101492AB0);
                            sub_10000CAAC(v188, &qword_101A01F00, &unk_101492AB0);
                            v198 = type metadata accessor for CRValueObservableDifference();
                            if ((*(*(v198 - 8) + 48))(v179, 1, v198) != 1)
                            {
                              sub_10000CAAC(v179, &qword_101A01F00, &unk_101492AB0);
                              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                              v204 = v255;
                              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                              {
                                v257 = sub_100024CBC(0, *(v257 + 2) + 1, 1, v257);
                              }

                              v56 = v253;
                              v206 = *(v257 + 2);
                              v205 = *(v257 + 3);
                              if (v206 >= v205 >> 1)
                              {
                                v257 = sub_100024CBC((v205 > 1), v206 + 1, 1, v257);
                              }

                              (*(v252 + 8))(v204);
                              v207 = v257;
                              *(v257 + 2) = v206 + 1;
                              v208 = &v207[16 * v206];
                              *(v208 + 4) = 0x6C6946726F6C6F63;
                              *(v208 + 5) = 0xE90000000000006CLL;
                              goto LABEL_82;
                            }

                            (*(v252 + 8))(v255, v256);
                          }

                          sub_10000CAAC(v179, &qword_101A01F00, &unk_101492AB0);
                          v56 = v253;
LABEL_82:
                          if (*(v257 + 2))
                          {
                            v199 = v251;
                            v200 = swift_isUniquelyReferenced_nonNull_native();
                            v258 = v199;
                            sub_100A9B080(v257, 10, v200);
                            swift_unknownObjectRelease();
                            v201 = v258;
                            sub_10000CAAC(v56, &unk_101A2C970, &qword_1014D1060);
                          }

                          else
                          {
                            sub_10000CAAC(v56, &unk_101A2C970, &qword_1014D1060);

                            swift_unknownObjectRelease();
                            return v251;
                          }

                          return v201;
                        }
                      }

                      sub_10000CAAC(v164, &qword_101A01F00, &unk_101492AB0);
                      v172 = v244;
                      goto LABEL_68;
                    }
                  }

                  sub_10000CAAC(v149, &qword_101A01F00, &unk_101492AB0);
                  goto LABEL_59;
                }
              }

              sub_10000CAAC(v135, &qword_101A01F00, &unk_101492AB0);
              goto LABEL_50;
            }
          }

          sub_10000CAAC(v120, &qword_101A01F00, &unk_101492AB0);
          goto LABEL_41;
        }
      }

      v254 = objc_opt_self();
      v72 = [v254 _atomicIncrementAssertCount];
      v258 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v258, "if the containerCRDTData has changed, super should have built keys for it already", 81, 2u);
      StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
      v73 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableItem.swift", 90, 2);
      v74 = String._bridgeToObjectiveC()();

      v75 = [v74 lastPathComponent];

      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v79 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v72;
      v81 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v81;
      v82 = sub_1005CF04C();
      *(inited + 104) = v82;
      *(inited + 72) = v73;
      *(inited + 136) = &type metadata for String;
      v83 = sub_1000053B0();
      *(inited + 112) = v76;
      *(inited + 120) = v78;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v83;
      *(inited + 152) = 892;
      v84 = v258;
      *(inited + 216) = v81;
      *(inited + 224) = v82;
      *(inited + 192) = v84;
      v85 = v73;
      v86 = v84;
      v87 = static os_log_type_t.error.getter();
      sub_100005404(v79, &_mh_execute_header, v87, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v88 = static os_log_type_t.error.getter();
      sub_100005404(v79, &_mh_execute_header, v88, "if the containerCRDTData has changed, super should have built keys for it already", 81, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v89 = swift_allocObject();
      v89[2] = 8;
      v89[3] = 0;
      v89[4] = 0;
      v89[5] = 0;
      v90 = __VaListBuilder.va_list()();
      StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
      v91 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableItem.swift", 90, 2);
      v92 = String._bridgeToObjectiveC()();

      StaticString.description.getter("if the containerCRDTData has changed, super should have built keys for it already", 81, 2);
      v93 = String._bridgeToObjectiveC()();

      [v254 handleFailureInFunction:v91 file:v92 lineNumber:892 isFatal:0 format:v93 args:v90];

      v61 = v255;
      v60 = v256;
    }

    v68 = v248;
    goto LABEL_14;
  }

  v209 = objc_opt_self();
  v210 = [v209 _atomicIncrementAssertCount];
  v259 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v259, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v211 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableItem.swift", 90, 2);
  v212 = String._bridgeToObjectiveC()();

  v213 = [v212 lastPathComponent];

  v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v216 = v215;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v217 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v218 = swift_initStackObject();
  *(v218 + 16) = xmmword_10146CA70;
  *(v218 + 56) = &type metadata for Int32;
  *(v218 + 64) = &protocol witness table for Int32;
  *(v218 + 32) = v210;
  v219 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v218 + 96) = v219;
  v220 = sub_1005CF04C();
  *(v218 + 104) = v220;
  *(v218 + 72) = v211;
  *(v218 + 136) = &type metadata for String;
  v221 = sub_1000053B0();
  *(v218 + 112) = v214;
  *(v218 + 120) = v216;
  *(v218 + 176) = &type metadata for UInt;
  *(v218 + 184) = &protocol witness table for UInt;
  *(v218 + 144) = v221;
  *(v218 + 152) = 882;
  v222 = v259;
  *(v218 + 216) = v219;
  *(v218 + 224) = v220;
  *(v218 + 192) = v222;
  v223 = v211;
  v224 = v222;
  v225 = static os_log_type_t.error.getter();
  sub_100005404(v217, &_mh_execute_header, v225, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v218);

  v226 = static os_log_type_t.error.getter();
  sub_100005404(v217, &_mh_execute_header, v226, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v227 = swift_allocObject();
  v227[2] = 8;
  v227[3] = 0;
  v227[4] = 0;
  v227[5] = 0;
  v228 = __VaListBuilder.va_list()();
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v229 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableItem.swift", 90, 2);
  v230 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v231 = String._bridgeToObjectiveC()();

  [v209 handleFailureInFunction:v229 file:v230 lineNumber:882 isFatal:1 format:v231 args:v228];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v232, v233);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1011EB310(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_101A2C930, &qword_1014D1030);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for CapsuleUndoAction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10096B2B0(a1, a2);
  if (!v2)
  {
    v15 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v16 = *(a1 + v15);
    if (*(v16 + 16))
    {

      v17 = sub_1007C8124(10);
      if (v18)
      {
        sub_10000BE14(*(v16 + 56) + 32 * v17, &v22, &unk_1019F4D00, &unk_10146E7F0);

        v24[0] = v22;
        v24[1] = v23;
        if (*(&v23 + 1))
        {
          v19 = swift_dynamicCast();
          v20 = *(v12 + 56);
          v20(v10, v19 ^ 1u, 1, v11);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            (*(v12 + 32))(v14, v10, v11);
            type metadata accessor for CRLTableItemData(0);
            swift_dynamicCastClassUnconditional();
            (*(v12 + 16))(v7, v14, v11);
            v20(v7, 0, 1, v11);
            swift_beginAccess();

            sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
            Capsule.apply(_:)();
            sub_10000CAAC(v7, &qword_101A2C930, &qword_1014D1030);
            swift_endAccess();

            (*(v12 + 8))(v14, v11);
            return;
          }

          goto LABEL_10;
        }

        sub_10000CAAC(v24, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_10:
    sub_10000CAAC(v10, &qword_101A2C930, &qword_1014D1030);
  }
}

void sub_1011EB6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v172 = _s13StyleCRDTDataVMa(0);
  __chkstk_darwin(v172);
  v171 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v174 = &v154 - v14;
  v177 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v15 = *(v177 - 8);
  __chkstk_darwin(v177);
  v176 = &v154 - v16;
  v175 = _s15CapsuleDatabaseVMa(0);
  __chkstk_darwin(v175);
  v170 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v173 = &v154 - v19;
  if (a3 == 10)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {

      sub_10096B6D8(a1, a2, a3, a4, a5);
      return;
    }
  }

  v180 = *(a2 + 16);
  if (!v180)
  {
    return;
  }

  v21 = 0;
  v22 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v178 = OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid;
  v179 = a2 + 32;
  v166 = 0x80000001015C54C0;
  v167 = 0x800000010158B480;
  v168 = (v15 + 8);
  v169 = (v15 + 16);
  v23 = &unk_1019F4D00;
  v165 = xmmword_10146C6B0;
  v164 = xmmword_10146CA70;
  while (1)
  {
    v27 = (v179 + 16 * v21);
    v29 = *v27;
    v28 = v27[1];
    v30 = *v27 == 0xD000000000000011 && 0x800000010158B630 == v28;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v51 = v29 == 1937207154 && v28 == 0xE400000000000000;
    if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      type metadata accessor for CRLTableItemData(0);
      swift_dynamicCastClassUnconditional();

      v25 = sub_1011FAF9C(v24);

      *(&v182 + 1) = sub_1005B981C(&unk_101A2C920, &qword_1014D1028);
      v181.n128_u64[0] = v25;
      sub_10000BE14(&v181, &v204, v23, &unk_10146E7F0);
      swift_beginAccess();
      v26 = 58;
    }

    else
    {
      v52 = v29 == 0x736E6D756C6F63 && v28 == 0xE700000000000000;
      if (!v52 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v29 == 0x736C6C6563 && v28 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData(0);
          swift_dynamicCastClassUnconditional();

          v54 = sub_1011FD9CC();

          *(&v182 + 1) = sub_1005B981C(&qword_101A2C910, &qword_1014D1018);
          v181.n128_u64[0] = v54;
          sub_10000BE14(&v181, &v204, v23, &unk_10146E7F0);
          swift_beginAccess();
          sub_100BC1F00(&v204, 60);
          goto LABEL_30;
        }

        if (v29 == 0x7453726564726F62 && v28 == 0xEC000000656B6F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData(0);
          v55 = swift_dynamicCastClassUnconditional();
          v56 = qword_101AD9268;
          swift_beginAccess();
          v57 = v55 + v56;
          v58 = v176;
          v59 = v177;
          (*v169)(v176, v57, v177);
          v60 = v23;
          v61 = v173;
          Capsule.root.getter();
          (*v168)(v58, v59);
          v62 = v174;
          sub_1011F0BE0(&v61[*(v175 + 32)], v174, _s13StyleCRDTDataVMa);
          v63 = v61;
          v23 = v60;
          sub_1011F0B80(v63, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C7B0, &unk_1014BEA10);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v62, _s13StyleCRDTDataVMa);
          v211[12] = v193;
          v211[13] = v194;
          v212 = v195;
          v211[8] = v189;
          v211[9] = v190;
          v211[11] = v192;
          v211[10] = v191;
          v211[4] = v185;
          v211[5] = v186;
          v211[6] = v187;
          v211[7] = v188;
          v211[0] = v181;
          v211[1] = v182;
          v211[2] = v183;
          v211[3] = v184;
          v64 = sub_100B946C8(v211, 0);
          sub_100B98B80(v211);
          *(&v182 + 1) = sub_100006370(0, &qword_101A0C7F0, off_10182F998);
          v181.n128_u64[0] = v64;
          sub_10000BE14(&v181, &v204, v60, &unk_10146E7F0);
          swift_beginAccess();
          sub_100BC1F00(&v204, 61);
          goto LABEL_30;
        }

        if (v29 == 0x7453726564726F62 && v28 == 0xEB00000000656C79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData(0);
          v65 = swift_dynamicCastClassUnconditional();
          v66 = qword_101AD9268;
          swift_beginAccess();
          v67 = v65 + v66;
          v68 = v176;
          v69 = v177;
          (*v169)(v176, v67, v177);
          v70 = v23;
          v71 = v173;
          Capsule.root.getter();
          (*v168)(v68, v69);
          v72 = v174;
          sub_1011F0BE0(&v71[*(v175 + 32)], v174, _s13StyleCRDTDataVMa);
          v73 = v71;
          v23 = v70;
          sub_1011F0B80(v73, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&unk_101A2D9E0, &unk_1014D3420);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v72, _s13StyleCRDTDataVMa);
          *(&v182 + 1) = &_s13StyleCRDTDataV11BorderStyleVN;
          sub_10000BE14(&v181, &v204, v70, &unk_10146E7F0);
          swift_beginAccess();
          sub_100BC1F00(&v204, 62);
          goto LABEL_30;
        }

        if (v29 == 0xD000000000000011 && v167 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData(0);
          v74 = swift_dynamicCastClassUnconditional();
          v75 = qword_101AD9268;
          swift_beginAccess();
          v76 = v74 + v75;
          v77 = v176;
          v78 = v177;
          (*v169)(v176, v76, v177);
          v79 = v23;
          v80 = v173;
          Capsule.root.getter();
          (*v168)(v77, v78);
          v81 = v174;
          sub_1011F0BE0(&v80[*(v175 + 32)], v174, _s13StyleCRDTDataVMa);
          v82 = v80;
          v23 = v79;
          sub_1011F0B80(v82, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C810, &unk_101480B50);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v81, _s13StyleCRDTDataVMa);
          *(&v182 + 1) = &type metadata for Bool;
          sub_10000BE14(&v181, &v204, v79, &unk_10146E7F0);
          swift_beginAccess();
          sub_100BC1F00(&v204, 63);
          goto LABEL_30;
        }

        if (v29 == 0xD000000000000010 && v166 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData(0);
          v84 = swift_dynamicCastClassUnconditional();
          v85 = qword_101AD9268;
          swift_beginAccess();
          v86 = v84 + v85;
          v87 = v176;
          v88 = v177;
          (*v169)(v176, v86, v177);
          v89 = v23;
          v90 = v173;
          Capsule.root.getter();
          (*v168)(v87, v88);
          v91 = v174;
          sub_1011F0BE0(&v90[*(v175 + 32)], v174, _s13StyleCRDTDataVMa);
          v92 = v90;
          v23 = v89;
          sub_1011F0B80(v92, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C810, &unk_101480B50);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v91, _s13StyleCRDTDataVMa);
          *(&v182 + 1) = &type metadata for Bool;
          sub_10000BE14(&v181, &v204, v89, &unk_10146E7F0);
          swift_beginAccess();
          sub_100BC1F00(&v204, 64);
          goto LABEL_30;
        }

        if (v29 == 0x4C54527369 && v28 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData(0);
          v93 = swift_dynamicCastClassUnconditional();
          v94 = qword_101AD9268;
          swift_beginAccess();
          v95 = v93 + v94;
          v96 = v176;
          v97 = v177;
          (*v169)(v176, v95, v177);
          v98 = v173;
          Capsule.root.getter();
          (*v168)(v96, v97);
          v99 = v174;
          sub_1011F0BE0(v98 + *(v175 + 32), v174, _s13StyleCRDTDataVMa);
          sub_1011F0B80(v98, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C810, &unk_101480B50);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v99, _s13StyleCRDTDataVMa);
          *(&v182 + 1) = &type metadata for Bool;
          v23 = &unk_1019F4D00;
          sub_10000BE14(&v181, &v204, &unk_1019F4D00, &unk_10146E7F0);
          swift_beginAccess();
          sub_100BC1F00(&v204, 65);
          goto LABEL_30;
        }

        if (v29 == 0x6C6946726F6C6F63 && v28 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData(0);
          v100 = swift_dynamicCastClassUnconditional();
          v101 = qword_101AD9268;
          swift_beginAccess();
          v102 = v100 + v101;
          v103 = v176;
          v104 = v177;
          (*v169)(v176, v102, v177);
          v105 = v170;
          Capsule.root.getter();
          (*v168)(v103, v104);
          v106 = v171;
          sub_1011F0BE0(v105 + *(v175 + 32), v171, _s13StyleCRDTDataVMa);
          sub_1011F0B80(v105, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&unk_101A10690, &qword_101472520);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v106, _s13StyleCRDTDataVMa);
          v204 = v197;
          v205 = v198;
          v209 = v202;
          v210 = v203;
          v207 = v200;
          v208 = v201;
          v206 = v199;
          v181 = v197;
          v182 = v198;
          v186 = v202;
          v187 = v203;
          v184 = v200;
          v185 = v201;
          v183 = v199;
          if (v203)
          {
            sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
            v213[2] = v207;
            v213[3] = v208;
            v213[4] = v209;
            v214 = v210;
            v213[0] = v205;
            v213[1] = v206;
            sub_10074A990(&v182, &v197);
            v107 = sub_1008B0490(v213);
            if (v181.n128_u8[8])
            {
              if (qword_1019F2268 != -1)
              {
                swift_once();
              }

              v108 = static OS_os_log.persistence;
              v109 = static os_log_type_t.info.getter();
              sub_100005404(v108, &_mh_execute_header, v109, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
            }

            v110 = [objc_allocWithZone(CRLColorFill) initWithColor:v107];

            sub_10000CAAC(&v204, &qword_1019FFF80, &qword_101489000);
            *(&v198 + 1) = sub_100006370(0, &qword_101A2BF30, off_10182F808);
            v197.n128_u64[0] = v110;
          }

          else
          {
            v197 = 0u;
            v198 = 0u;
          }

          v23 = &unk_1019F4D00;
          sub_10000BE14(&v197, v196, &unk_1019F4D00, &unk_10146E7F0);
          swift_beginAccess();
          sub_100BC1F00(v196, 66);
          swift_endAccess();
          v50 = &v197;
          goto LABEL_31;
        }

        v163 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v111 = swift_allocObject();
        *(v111 + 16) = v165;
        *(v111 + 56) = &type metadata for String;
        v112 = sub_1000053B0();
        *(v111 + 32) = v29;
        v161 = v111 + 32;
        v159 = v112;
        *(v111 + 64) = v112;
        *(v111 + 40) = v28;
        v113 = objc_opt_self();

        v155 = v113;
        LODWORD(v162) = [v113 _atomicIncrementAssertCount];
        v181.n128_u64[0] = [objc_allocWithZone(NSString) init];
        v157 = v111;
        StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
        v160 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableItem.swift", 90, 2);
        v114 = String._bridgeToObjectiveC()();

        v115 = [v114 lastPathComponent];

        v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v156 = v116;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v117 = static OS_os_log.crlAssert;
        v118 = swift_allocObject();
        *(v118 + 16) = v164;
        *(v118 + 56) = &type metadata for Int32;
        *(v118 + 64) = &protocol witness table for Int32;
        *(v118 + 32) = v162;
        v163 = v118 + 32;
        v119 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v118 + 96) = v119;
        v120 = sub_1005CF04C();
        v121 = v160;
        *(v118 + 72) = v160;
        v122 = v158;
        v123 = v159;
        *(v118 + 136) = &type metadata for String;
        *(v118 + 144) = v123;
        *(v118 + 104) = v120;
        *(v118 + 112) = v122;
        *(v118 + 120) = v156;
        *(v118 + 176) = &type metadata for UInt;
        *(v118 + 152) = 969;
        v124 = v181.n128_u64[0];
        *(v118 + 216) = v119;
        *(v118 + 224) = v120;
        *(v118 + 184) = &protocol witness table for UInt;
        *(v118 + 192) = v124;
        v125 = v121;
        v162 = v124;
        v126 = static os_log_type_t.error.getter();
        sub_100005404(v117, &_mh_execute_header, v126, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v118);
        swift_setDeallocating();
        v156 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v127 = static os_log_type_t.error.getter();
        v128 = v157;

        type metadata accessor for __VaListBuilder();
        v129 = swift_allocObject();
        v129[2] = 8;
        v129[3] = 0;
        v130 = v129 + 3;
        v129[4] = 0;
        v129[5] = 0;
        v162 = v129;
        v160 = *(v128 + 16);
        if (!v160)
        {
LABEL_105:
          v163 = __VaListBuilder.va_list()();
          StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
          v159 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableItem.swift", 90, 2);
          v151 = String._bridgeToObjectiveC()();

          v152 = String._bridgeToObjectiveC()();

          v153 = v159;
          [v155 handleFailureInFunction:v159 file:v151 lineNumber:969 isFatal:0 format:v152 args:v163];

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v23 = &unk_1019F4D00;
          goto LABEL_8;
        }

        v131 = 0;
        while (2)
        {
          v132 = (v161 + 40 * v131);
          v133 = v132[3];
          v163 = v132[4];
          sub_100020E58(v132, v133);
          v134 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v135 = *v130;
          v136 = *(v134 + 16);
          v41 = __OFADD__(*v130, v136);
          v137 = *v130 + v136;
          if (v41)
          {
            goto LABEL_113;
          }

          v138 = v134;
          v139 = v162;
          v140 = v162[4];
          if (v140 >= v137)
          {
LABEL_97:
            v144 = v139[5];
            if (!v144)
            {
              goto LABEL_117;
            }
          }

          else
          {
            v159 = v131;
            v163 = v134;
            if (v140 + 0x4000000000000000 < 0)
            {
              goto LABEL_114;
            }

            v141 = v162[5];
            v158 = v140;
            v142 = 2 * v140;
            if (2 * v140 <= v137)
            {
              v142 = v137;
            }

            v162[4] = v142;
            if ((v142 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_115;
            }

            v143 = v139;
            v144 = swift_slowAlloc();
            v143[5] = v144;
            if (v141)
            {
              if (v144 != v141 || v144 >= &v141[8 * v135])
              {
                memmove(v144, v141, 8 * v135);
              }

              v146 = v162;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
              v139 = v146;
              v138 = v163;
              v131 = v159;
              goto LABEL_97;
            }

            v138 = v163;
            v131 = v159;
            if (!v144)
            {
              goto LABEL_117;
            }
          }

          v147 = *(v138 + 16);
          if (v147)
          {
            v148 = (v138 + 32);
            v149 = *v130;
            do
            {
              v150 = *v148++;
              *&v144[8 * v149] = v150;
              v149 = *v130 + 1;
              if (__OFADD__(*v130, 1))
              {
                goto LABEL_112;
              }

              *v130 = v149;
            }

            while (--v147);
          }

          v131 = v131 + 1;
          if (v131 == v160)
          {
            goto LABEL_105;
          }

          continue;
        }
      }

      type metadata accessor for CRLTableItemData(0);
      swift_dynamicCastClassUnconditional();

      v53 = sub_1011FC4B4();

      *(&v182 + 1) = sub_1005B981C(&qword_101A2C918, &qword_1014D1020);
      v181.n128_u64[0] = v53;
      sub_10000BE14(&v181, &v204, v23, &unk_10146E7F0);
      swift_beginAccess();
      v26 = 59;
    }

    sub_100BC1F00(&v204, v26);
    swift_endAccess();
    sub_10000CAAC(&v181, v23, &unk_10146E7F0);
    *(v6 + v178) = 1;
LABEL_8:
    if (++v21 == v180)
    {
      return;
    }
  }

  v31 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v32 = *(v6 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
  if (!v32)
  {
    sub_10096C7D4();
    v32 = *(v6 + v31);
  }

  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  *(&v182 + 1) = sub_1005B981C(&qword_101A0A360, qword_101489F20);
  v181.n128_u64[0] = v33;
  swift_beginAccess();
  v34 = v23;
  sub_10000BE14(&v181, &v204, v23, &unk_10146E7F0);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v196[0].n128_u64[0] = *(a1 + v22);
  v36 = v196[0].n128_u64[0];
  *(a1 + v22) = 0x8000000000000000;
  v37 = sub_1007CF108();
  v39 = *(v36 + 16);
  v40 = (v38 & 1) == 0;
  v41 = __OFADD__(v39, v40);
  v42 = v39 + v40;
  if (!v41)
  {
    v43 = v38;
    if (*(v36 + 24) >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = v37;
        sub_100AA3EA4();
        v37 = v83;
      }
    }

    else
    {
      sub_100A890C0(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_1007CF108();
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_116;
      }
    }

    v23 = v34;
    v45 = v196[0].n128_u64[0];
    if (v43)
    {
      sub_10002C638(&v204, *(v196[0].n128_u64[0] + 56) + 32 * v37, v34, &unk_10146E7F0);
    }

    else
    {
      *(v196[0].n128_u64[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
      *(v45[6] + 8 * v37) = 4;
      v46 = v45[7] + 32 * v37;
      v47 = v205;
      *v46 = v204;
      *(v46 + 16) = v47;
      v48 = v45[2];
      v41 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v41)
      {
        goto LABEL_111;
      }

      v45[2] = v49;
    }

    *(a1 + v22) = v45;
LABEL_30:
    swift_endAccess();
    v50 = &v181;
LABEL_31:
    sub_10000CAAC(v50, v23, &unk_10146E7F0);
    goto LABEL_8;
  }

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
  type metadata accessor for CRLChangeProperty(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_117:
  __break(1u);
}

id sub_1011ED314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLTableItem(uint64_t a1)
{
  result = qword_101A2C868;
  if (!qword_101A2C868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1011ED4AC()
{
  if (qword_1019F2AC0 != -1)
  {
    swift_once();
  }

  qword_101AD9178 = qword_101AD9300;
  unk_101AD9180 = *algn_101AD9308;

  return result;
}

uint64_t sub_1011ED650(char *a1, uint64_t a2)
{
  v17 = type metadata accessor for UUID();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _swiftEmptyDictionarySingleton;
  v7 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v8 = *(**(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 632);
  v9 = a1;

  v8(&v18, v10);

  if (v19)
  {
    sub_10000BF3C(&v18, v20);
    sub_100064288(v20, &v18);
    sub_100BC1CF0(&v18, 0);
    v11 = sub_100005070(v20);
    v12 = v21;
  }

  else
  {
    v11 = sub_10000CAAC(&v18, &unk_1019F4D00, &unk_10146E7F0);
    v12 = _swiftEmptyDictionarySingleton;
  }

  (*(**(a2 + v7) + 264))(v11);
  sub_1010A7F08(v12);
  v14 = v13;

  type metadata accessor for CRLTransactableUndoingMutations(0);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_id, v6, v17);
  *(v15 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values) = v14;
  return v15;
}

uint64_t sub_1011ED8A0(void *a1, uint64_t a2)
{
  v24 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_1005B981C(&qword_101A09E58, &qword_1014897D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = a1;
  v25 = sub_1011ED650(v12, a2);
  type metadata accessor for CRLContainerItemData(0);
  v13 = *(*swift_dynamicCastClassUnconditional() + 840);

  v13(v14);

  v15 = v12;
  v16 = *(*swift_dynamicCastClassUnconditional() + 840);

  v16(v17);

  sub_100068574(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);
  CRStruct_1.actionUndoingDifference(from:)();
  sub_1011F0B80(v5, type metadata accessor for CRLContainerItemCRDTData);
  sub_1011F0B80(v8, type metadata accessor for CRLContainerItemCRDTData);
  v18 = sub_1005B981C(&qword_101A09E60, &qword_1014897D8);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_10000CAAC(v11, &qword_101A09E58, &qword_1014897D0);
    v26 = 0uLL;
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v28 = v18;
    v20 = sub_10002C58C(&v26);
    (*(v19 + 32))(v20, v11, v18);
  }

  v21 = v25;
  swift_beginAccess();
  sub_100BC1DF4(&v26, 1);
  swift_endAccess();

  return v21;
}

void *sub_1011EDC24(void *a1, uint64_t a2)
{
  v3 = sub_1005B981C(&unk_101A2C9A0, &qword_1014897A8);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = &v46 - v4;
  v5 = sub_1005B981C(&unk_101A09E40, &unk_1014897B0);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v46 - v8;
  v52 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v52);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_1005B981C(&qword_101A2C960, &unk_101498A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  type metadata accessor for CRLContainerItemData(0);
  v20 = *(*swift_dynamicCastClassUnconditional() + 840);
  v21 = a1;

  v20(v22);
  v23 = v21;

  v24 = *(*swift_dynamicCastClassUnconditional() + 840);

  v24(v25);

  sub_100068574(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0184);
  CRType.observableDifference(from:)();
  sub_1011F0B80(v10, type metadata accessor for CRLContainerItemCRDTData);
  sub_1011F0B80(v13, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000BE14(v19, v16, &qword_101A2C960, &unk_101498A40);
  if ((*(v53 + 48))(v16, 1, v54) == 1)
  {
    v26 = &qword_101A2C960;
    v27 = &unk_101498A40;
    v28 = v16;
LABEL_5:
    sub_10000CAAC(v28, v26, v27);
    v34 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v29 = v16;
  v30 = v48;
  sub_10003DFF8(v29, v48, &unk_101A09E40, &unk_1014897B0);
  v31 = v49;
  sub_10000BE14(v30, v49, &unk_101A09E40, &unk_1014897B0);
  v33 = v50;
  v32 = v51;
  if ((*(v50 + 48))(v31, 1, v51) == 1)
  {
    sub_10000CAAC(v30, &unk_101A09E40, &unk_1014897B0);
    v26 = &unk_101A2C9B0;
    v27 = &unk_1014897C0;
    v28 = v31;
    goto LABEL_5;
  }

  v38 = v47;
  (*(v33 + 32))(v47, v31, v32);
  v34 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v40 = *(v34 + 2);
  v39 = *(v34 + 3);
  if (v40 >= v39 >> 1)
  {
    v34 = sub_100024CBC((v39 > 1), v40 + 1, 1, v34);
  }

  *(v34 + 2) = v40 + 1;
  v41 = &v34[16 * v40];
  *(v41 + 4) = 0x736D657469;
  *(v41 + 5) = 0xE500000000000000;
  v42 = *(CROrderedSet.ObservableDifference.moved.getter() + 16);

  if (v42)
  {
    v44 = *(v34 + 2);
    v43 = *(v34 + 3);
    if (v44 >= v43 >> 1)
    {
      v34 = sub_100024CBC((v43 > 1), v44 + 1, 1, v34);
    }

    (*(v33 + 8))(v38, v32);
    sub_10000CAAC(v30, &unk_101A09E40, &unk_1014897B0);
    *(v34 + 2) = v44 + 1;
    v45 = &v34[16 * v44];
    *(v45 + 4) = 0x6564724F6D657469;
    *(v45 + 5) = 0xE900000000000072;
  }

  else
  {
    (*(v33 + 8))(v38, v32);
    sub_10000CAAC(v30, &unk_101A09E40, &unk_1014897B0);
  }

LABEL_6:
  if (*(v34 + 2))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = _swiftEmptyDictionarySingleton;
    sub_100A9B080(v34, 1, isUniquelyReferenced_nonNull_native);

    v36 = v55;
    sub_10000CAAC(v19, &qword_101A2C960, &unk_101498A40);
  }

  else
  {
    sub_10000CAAC(v19, &qword_101A2C960, &unk_101498A40);

    return _swiftEmptyDictionarySingleton;
  }

  return v36;
}

uint64_t sub_1011EE2D4(uint64_t a1, uint64_t a2)
{
  v130 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v140 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v147 = &v129 - v7;
  __chkstk_darwin(v8);
  v149 = &v129 - v9;
  __chkstk_darwin(v10);
  v12 = &v129 - v11;
  __chkstk_darwin(v13);
  v148 = &v129 - v14;
  __chkstk_darwin(v15);
  v151 = &v129 - v16;
  v17 = sub_1005B981C(&qword_101A2C878, &qword_1014D0FC8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v138 = (&v129 - v19);
  v20 = sub_1005B981C(&unk_101A2C880, &qword_1014D0FD0);
  __chkstk_darwin(v20 - 8);
  v134 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v133 = (&v129 - v23);
  __chkstk_darwin(v24);
  v26 = &v129 - v25;
  __chkstk_darwin(v27);
  v29 = (&v129 - v28);
  v129 = sub_100068574(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v146 = Dictionary.init(minimumCapacity:)();
  v30 = Dictionary.init(minimumCapacity:)();
  v31 = 0;
  v131 = a1;
  v32 = *(a1 + 16);
  v153 = v4;
  v154 = (v4 + 16);
  v143 = (v18 + 48);
  v144 = (v18 + 56);
  v150 = (v4 + 32);
  v152 = (v4 + 8);
  v132 = v4 + 40;
  v141 = v17;
  v135 = v26;
  v136 = v32;
  i = v29;
  while (1)
  {
    if (v31 == v32)
    {
      v33 = 1;
      v142 = v32;
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      if (v31 >= *(v131 + 16))
      {
        goto LABEL_64;
      }

      v34 = (v31 + 1);
      v35 = v153;
      v36 = v131 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31;
      v37 = *(v17 + 48);
      v38 = v138;
      *v138 = v31;
      (*(v35 + 16))(v38 + v37, v36, v3);
      sub_10003DFF8(v38, v26, &qword_101A2C878, &qword_1014D0FC8);
      v33 = 0;
      v142 = v34;
    }

    v145 = v30;
    v39 = *v144;
    (*v144)(v26, v33, 1, v17);
    sub_10003DFF8(v26, v29, &unk_101A2C880, &qword_1014D0FD0);
    v40 = *v143;
    if ((*v143)(v29, 1, v17) == 1)
    {
      v142 = v40;

      v78 = *(v130 + 16);
      v79 = Dictionary.init(minimumCapacity:)();
      v151 = v3;
      v80 = Dictionary.init(minimumCapacity:)();
      v81 = 0;
      v82 = v134;
      v139 = v39;
      for (i = v78; ; v78 = i)
      {
        if (v81 == v78)
        {
          v84 = 1;
          v85 = v78;
        }

        else
        {
          if (v81 >= v78)
          {
            goto LABEL_67;
          }

          if (__OFADD__(v81, 1))
          {
            goto LABEL_68;
          }

          v86 = v153;
          v87 = v130 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v81;
          v88 = *(v17 + 48);
          v89 = v138;
          *v138 = v81;
          (*(v86 + 16))(v89 + v88, v87, v151);
          sub_10003DFF8(v89, v82, &qword_101A2C878, &qword_1014D0FC8);
          v84 = 0;
          v85 = v81 + 1;
        }

        v39(v82, v84, 1, v17);
        v90 = v133;
        sub_10003DFF8(v82, v133, &unk_101A2C880, &qword_1014D0FD0);
        if (v142(v90, 1, v17) == 1)
        {
          return v146;
        }

        v148 = v85;
        v91 = *v90;
        v92 = *(v17 + 48);
        v93 = v149;
        v94 = *v150;
        v95 = v151;
        (*v150)(v149, v90 + v92, v151);
        v96 = *v154;
        v97 = v147;
        (*v154)(v147, v93, v95);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155 = v79;
        v100 = sub_10003E994(v97);
        v101 = v79[2];
        v102 = (v99 & 1) == 0;
        v103 = v101 + v102;
        if (__OFADD__(v101, v102))
        {
          goto LABEL_61;
        }

        v104 = v99;
        if (v79[3] >= v103)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v79 = v155;
            if (v99)
            {
              goto LABEL_45;
            }
          }

          else
          {
            sub_100AA4430();
            v79 = v155;
            if (v104)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          sub_10003ECE0(v103, isUniquelyReferenced_nonNull_native);
          v105 = sub_10003E994(v147);
          if ((v104 & 1) != (v106 & 1))
          {
            goto LABEL_73;
          }

          v100 = v105;
          v79 = v155;
          if (v104)
          {
LABEL_45:
            *(v79[7] + 8 * v100) = v91;
            v107 = v151;
            v108 = *v152;
            (*v152)(v147, v151);
            goto LABEL_49;
          }
        }

        v109 = v94;
        v79[(v100 >> 6) + 8] |= 1 << v100;
        v110 = v153;
        v111 = v147;
        v112 = v151;
        v96(v79[6] + *(v153 + 72) * v100, v147, v151);
        *(v79[7] + 8 * v100) = v91;
        v113 = *(v110 + 8);
        v113(v111, v112);
        v114 = v79[2];
        v64 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (v64)
        {
          goto LABEL_69;
        }

        v79[2] = v115;
        v107 = v151;
        v94 = v109;
        v108 = v113;
LABEL_49:
        v96(v140, v149, v107);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v155 = v80;
        v117 = sub_1007C7EC0(v91);
        v119 = v80[2];
        v120 = (v118 & 1) == 0;
        v64 = __OFADD__(v119, v120);
        v121 = v119 + v120;
        if (v64)
        {
          goto LABEL_62;
        }

        v122 = v118;
        if (v80[3] >= v121)
        {
          v81 = v148;
          if ((v116 & 1) == 0)
          {
            v127 = v117;
            sub_100AA41C8();
            v117 = v127;
          }
        }

        else
        {
          sub_100A89788(v121, v116);
          v117 = sub_1007C7EC0(v91);
          v81 = v148;
          if ((v122 & 1) != (v123 & 1))
          {
            goto LABEL_71;
          }
        }

        v82 = v134;
        v80 = v155;
        if (v122)
        {
          v83 = v151;
          (*(v153 + 40))(v155[7] + *(v153 + 72) * v117, v140, v151);
          v108(v149, v83);
        }

        else
        {
          v155[(v117 >> 6) + 8] |= 1 << v117;
          *(v80[6] + 8 * v117) = v91;
          v124 = v151;
          v94((v80[7] + *(v153 + 72) * v117), v140, v151);
          v108(v149, v124);
          v125 = v80[2];
          v64 = __OFADD__(v125, 1);
          v126 = v125 + 1;
          if (v64)
          {
            goto LABEL_70;
          }

          v80[2] = v126;
        }

        v17 = v141;
        v39 = v139;
      }
    }

    v41 = v12;
    v42 = *v29;
    v43 = v151;
    v44 = v29 + *(v17 + 48);
    v139 = *v150;
    (v139)(v151, v44, v3);
    v45 = *v154;
    v46 = v148;
    (*v154)(v148, v43, v3);
    v47 = v146;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v47;
    v50 = sub_10003E994(v46);
    v51 = *(v47 + 16);
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      break;
    }

    v54 = v49;
    if (*(v47 + 24) >= v53)
    {
      if ((v48 & 1) == 0)
      {
        sub_100AA4430();
      }
    }

    else
    {
      sub_10003ECE0(v53, v48);
      v55 = sub_10003E994(v148);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_72;
      }

      v50 = v55;
    }

    v57 = v155;
    v146 = v155;
    if (v54)
    {
      *(v155[7] + 8 * v50) = v42;
      v58 = *v152;
      v59 = v3;
      (*v152)(v148, v3);
    }

    else
    {
      v155[(v50 >> 6) + 8] |= 1 << v50;
      v60 = v153;
      v61 = v148;
      v45(v57[6] + *(v153 + 72) * v50, v148, v3);
      *(v57[7] + 8 * v50) = v42;
      v62 = v57;
      v58 = *(v60 + 8);
      v58(v61, v3);
      v63 = v62[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_65;
      }

      v62[2] = v65;
      v59 = v3;
    }

    v12 = v41;
    v45(v41, v151, v59);
    v66 = v145;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v66;
    v68 = sub_1007C7EC0(v42);
    v70 = v66[2];
    v71 = (v69 & 1) == 0;
    v64 = __OFADD__(v70, v71);
    v72 = v70 + v71;
    if (v64)
    {
      goto LABEL_60;
    }

    v73 = v69;
    if (v66[3] >= v72)
    {
      v32 = v136;
      v29 = i;
      if ((v67 & 1) == 0)
      {
        v77 = v68;
        sub_100AA41C8();
        v68 = v77;
      }
    }

    else
    {
      sub_100A89788(v72, v67);
      v68 = sub_1007C7EC0(v42);
      v32 = v136;
      v29 = i;
      if ((v73 & 1) != (v74 & 1))
      {
        goto LABEL_71;
      }
    }

    v30 = v155;
    if (v73)
    {
      (*(v153 + 40))(v155[7] + *(v153 + 72) * v68, v12, v3);
      v58(v151, v3);
    }

    else
    {
      v155[(v68 >> 6) + 8] |= 1 << v68;
      *(v30[6] + 8 * v68) = v42;
      (v139)(v30[7] + *(v153 + 72) * v68, v12, v3);
      v58(v151, v3);
      v75 = v30[2];
      v64 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v64)
      {
        goto LABEL_66;
      }

      v30[2] = v76;
    }

    v17 = v141;
    v31 = v142;
    v26 = v135;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_72:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_73:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_1011EEF84(void *a1, uint64_t a2, void *a3, __n128 a4)
{
  v153 = a1;
  v164 = _s14ColumnCRDTDataVMa(0);
  __chkstk_darwin(v164);
  v172 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = _s11RowCRDTDataVMa(0);
  __chkstk_darwin(v162);
  v170 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v177 = *(v179 - 8);
  __chkstk_darwin(v179);
  *&v160 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v169 = &v132 - v10;
  v11 = type metadata accessor for CRKeyPath();
  v167 = *(v11 - 8);
  v168 = v11;
  __chkstk_darwin(v11);
  v150 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v166 = &v132 - v14;
  *&v173 = _s15CapsuleDatabaseVMa(0);
  __chkstk_darwin(v173);
  v149 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v165 = &v132 - v17;
  v146 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v146);
  v151 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v152 = &v132 - v20;
  __chkstk_darwin(v21);
  v176 = &v132 - v22;
  v23 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  v144 = *(v23 - 8);
  v145 = v23;
  __chkstk_darwin(v23);
  v143 = &v132 - v24;
  v181 = type metadata accessor for UUID();
  v25 = *(v181 - 8);
  __chkstk_darwin(v181);
  v171 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v161 = &v132 - v28;
  __chkstk_darwin(v29);
  v142 = &v132 - v30;
  __chkstk_darwin(v31);
  v158 = &v132 - v32;
  v178 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v178);
  v147 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v148 = &v132 - v35;
  __chkstk_darwin(v36);
  v159 = (&v132 - v37);
  __chkstk_darwin(v38);
  v174 = &v132 - v39;
  v40 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v40 - 8);
  v140 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v132 - v43;
  v45 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v45 - 8);
  v136 = &v132 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v132 - v48;
  v139 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v139);
  v141 = &v132 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v157 = &v132 - v52;
  v54 = __chkstk_darwin(v53);
  v163 = &v132 - v55;
  if (a3)
  {
    v56 = a3;
  }

  else
  {
    v56 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{640.0, 480.0}];
  }

  v175 = a3;
  v180 = v25;
  v57 = *(v25 + 16);
  v137 = v25 + 16;
  v138 = v57;
  v156 = a2;
  v58 = v181;
  (v57)(v49, a2, v181, v54);
  v135 = *(v25 + 56);
  v133 = v49;
  v135(v49, 0, 1, v58);
  v193 = 1;
  v59 = type metadata accessor for CRLTableAnchorHint(0);
  v134 = *(*(v59 - 8) + 56);
  v134(v44, 1, 1, v59);
  v60 = v56;
  v132 = a3;
  sub_101271CCC(v60, v202);
  v155 = v60;

  v61 = v136;
  sub_10000BE14(v49, v136, &qword_1019F6990, &qword_10146D2F0);
  v62 = v140;
  sub_10000BE14(v44, v140, &unk_101A09DD0, &unk_101478C10);
  v63 = v163;
  v135(v163, 1, 1, v58);
  v64 = v139;
  v65 = *(v139 + 28);
  v66 = v63 + *(v139 + 24);
  v134((v63 + v65), 1, 1, v59);
  *(v63 + *(v64 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v61, v63, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v44, &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v133, &qword_1019F6990, &qword_10146D2F0);
  v67 = (v63 + *(v64 + 20));
  v68 = v202[1];
  *v67 = v202[0];
  v67[1] = v68;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  *(v66 + 32) = 0u;
  *(v66 + 48) = 0u;
  *(v66 + 64) = v193;
  sub_10002C638(v62, v63 + v65, &unk_101A09DD0, &unk_101478C10);
  v69 = v157;
  sub_1011F0BE0(v63, v157, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v194);
  v70 = v158;
  UUID.init()();
  v71 = v178;
  v140 = *(v178 + 52);
  v189 = v198;
  v190 = v199;
  v191 = v200;
  v192 = v201;
  v185 = v194;
  v186 = v195;
  v187 = v196;
  v188 = v197;
  v136 = sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_1007492B8();
  v72 = v174;
  CRRegister.init(wrappedValue:)();
  *(v72 + *(v71 + 56)) = _swiftEmptyDictionarySingleton;
  v73 = v70;
  v74 = v70;
  v75 = v181;
  v138(v142, v73, v181);
  CRRegister.init(_:)();
  sub_1011F0BE0(v69, v141, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100068574(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity, aM_15);
  v76 = v72;
  CRRegister.init(_:)();
  LOBYTE(v185) = 0;
  CRRegister.init(_:)();
  LOBYTE(v185) = 0;
  CRRegister.init(_:)();
  *&v185 = 0;
  *(&v185 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v189 = v198;
  v190 = v199;
  v191 = v200;
  v192 = v201;
  v185 = v194;
  v186 = v195;
  v187 = v196;
  v188 = v197;
  v77 = v143;
  CRRegister.init(_:)();
  v78 = *(v180 + 8);
  v180 += 8;
  v178 = v78;
  v78(v74, v75);
  sub_1011F0B80(v157, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v144 + 40))(v76 + v140, v77, v145);
  v79 = v146;
  *(v176 + *(v146 + 5)) = _swiftEmptyDictionarySingleton;
  sub_100068574(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  CROrderedSet.init()();
  v80 = v165;
  *(v165 + *(v79 + 5)) = _swiftEmptyDictionarySingleton;
  CROrderedSet.init()();
  v81 = v173;
  sub_1012023CC(v80 + *(v173 + 32));
  *(v80 + *(v81 + 36)) = _swiftEmptyDictionarySingleton;
  v145 = *(v81 + 20);
  sub_1005B981C(&qword_1019FA3A8, &qword_1014D2410);
  v146 = &protocol conformance descriptor for Ref<A>;
  sub_10001A2F8(&qword_101A2C8A0, &qword_1019FA3A8, &qword_1014D2410, &protocol conformance descriptor for Ref<A>);
  v157 = &protocol conformance descriptor for Ref<A>;
  sub_10001A2F8(&qword_101A2C8A8, &qword_1019FA3A8, &qword_1014D2410, &protocol conformance descriptor for Ref<A>);
  CROrderedDictionary.init()();
  v145 = *(v173 + 24);
  sub_1005B981C(&qword_101A2C8B0, &unk_101472570);
  sub_10001A2F8(&qword_101A2C8B8, &qword_101A2C8B0, &unk_101472570, &protocol conformance descriptor for Ref<A>);
  sub_10001A2F8(&unk_101A2C8C0, &qword_101A2C8B0, &unk_101472570, &protocol conformance descriptor for Ref<A>);
  CROrderedDictionary.init()();
  _s6CellIDVMa(0);
  sub_1005B981C(&qword_1019FA378, &qword_1014724F0);
  sub_100068574(&qword_101A2C8D0, _s6CellIDVMa, aI_27);
  sub_100068574(&qword_101A21DA8, _s6CellIDVMa, byte_1014D2178);
  sub_10001A2F8(&qword_101A2C8E0, &qword_1019FA378, &qword_1014724F0, v146);
  sub_10001A2F8(&qword_101A2C8E8, &qword_1019FA378, &qword_1014724F0, v157);
  CRDictionary.init()();
  v157 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  v82 = v174;
  CRRegister.wrappedValue.getter();
  v83 = v166;
  CRKeyPath.init(_:)();
  sub_1011F0BE0(v80, v149, _s15CapsuleDatabaseVMa);
  (*(v167 + 16))(v150, v83, v168);
  sub_100068574(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
  v84 = v169;
  Capsule.init(_:id:)();
  v85 = v159;
  sub_10000BE14(v82, v159, &unk_101A226A0, &unk_10146E610);
  v86 = v152;
  sub_1011F0BE0(v176, v152, type metadata accessor for CRLContainerItemCRDTData);
  v87 = v177;
  v88 = *(v177 + 16);
  v89 = v160;
  v90 = v179;
  v88(v160, v84, v179);
  *&v185 = 0x4000000000000;
  *(&v185 + 1) = 0x2000400000000;
  v186 = 0x4000000000000uLL;
  LOBYTE(v187) = 1;
  v158 = type metadata accessor for CRLTableItemData(0);
  v91 = swift_allocObject();
  v88(v91 + qword_101AD9268, v89, v90);
  v92 = v148;
  sub_10000BE14(v85, v148, &unk_101A226A0, &unk_10146E610);
  v93 = v151;
  sub_1011F0BE0(v86, v151, type metadata accessor for CRLContainerItemCRDTData);
  sub_1011F0BE0(v93, v91 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v94 = v147;
  sub_10000BE14(v92, v147, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v94, v91 + *(*v91 + 736), &unk_101A226A0, &unk_10146E610);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v94, &unk_101A226A0, &unk_10146E610);
  sub_1011F0B80(v93, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v92, &unk_101A226A0, &unk_10146E610);
  v95 = *(v87 + 8);
  v177 = v87 + 8;
  v157 = v95;
  (v95)(v160, v90);
  sub_1011F0B80(v86, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v159, &unk_101A226A0, &unk_10146E610);
  v96 = sub_100747AF0(&v185, 12);
  v97 = objc_allocWithZone(type metadata accessor for CRLTableItem(0));
  v98 = &v97[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
  *v98 = 0u;
  v98[1] = 0u;
  v97[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] = 1;
  *&v97[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v97[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v97[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v97[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v97[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  v99 = v153;
  *&v97[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v153;
  *&v97[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v96;
  v100 = type metadata accessor for CRLBoardItemBase(0);
  v184.receiver = v97;
  v184.super_class = v100;
  v153 = v99;
  v159 = v96;

  v101 = objc_msgSendSuper2(&v184, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v102 = v175;
  if (v175)
  {
    v103 = v132;
    v104 = v101;
    [v103 size];
    v173 = v105;
    [v103 size];
    v160 = v106;

    *(&v108 + 1) = *(&v173 + 1);
    *&v107.f64[0] = v160;
    *&v107.f64[1] = v173;
    *&v108 = vmaxnm_f32(vmul_f32(vcvt_f32_f64(v107), 0x3F0000003F000000), 0x4100000041000000);
  }

  else
  {
    v109 = v101;
    v108 = 0uLL;
  }

  v160 = v108;
  v110 = v170;
  v111 = sub_1005FEB28();
  v182 = 0;
  v183 = 1;
  sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
  *&v173 = v111;
  CRRegister.init(wrappedValue:)();
  v112 = *(v162 + 20);
  *&v110[v112] = _swiftEmptyDictionarySingleton;
  LODWORD(v154) = DWORD1(v160);
  v182 = DWORD1(v160);
  v183 = v102 == 0;
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  CRRegister.wrappedValue.setter();
  *&v110[v112] = _swiftEmptyDictionarySingleton;
  v113 = v161;
  UUID.init()();
  if (sub_1011255D0())
  {
    v114 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v114);
    v115 = v161;
    *(&v132 - 2) = v110;
    *(&v132 - 1) = v115;
    swift_beginAccess();

    v110 = v170;
    v102 = v175;
    Capsule.mutate<A>(_:)();
    swift_endAccess();
    v113 = v161;
  }

  (v178)(v113, v181);
  sub_1011F0B80(v110, _s11RowCRDTDataVMa);
  v182 = 0;
  v183 = 1;
  v161 = sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
  CRRegister.init(wrappedValue:)();
  v116 = *(v162 + 20);
  *&v110[v116] = _swiftEmptyDictionarySingleton;
  v182 = v154;
  v183 = v102 == 0;
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  CRRegister.wrappedValue.setter();
  *&v110[v116] = _swiftEmptyDictionarySingleton;
  UUID.init()();
  if (sub_1011255D0())
  {
    v117 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v117);
    *(&v132 - 2) = v170;
    *(&v132 - 1) = v113;
    swift_beginAccess();

    Capsule.mutate<A>(_:)();
    swift_endAccess();

    v110 = v170;
    v102 = v175;
  }

  v118 = v172;
  v119 = v102 == 0;
  (v178)(v113, v181);
  sub_1011F0B80(v110, _s11RowCRDTDataVMa);
  v182 = 0;
  v183 = 1;
  CRRegister.init(wrappedValue:)();
  v120 = *(v164 + 20);
  *&v118[v120] = _swiftEmptyDictionarySingleton;
  v121 = v160;
  v182 = v160;
  v183 = v119;
  CRRegister.wrappedValue.setter();
  *&v118[v120] = _swiftEmptyDictionarySingleton;
  v122 = v171;
  UUID.init()();
  if (sub_1011255D0())
  {
    v123 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v123);
    *(&v132 - 2) = v172;
    *(&v132 - 1) = v122;
    swift_beginAccess();

    v122 = v171;
    v118 = v172;
    Capsule.mutate<A>(_:)();
    swift_endAccess();
  }

  v124 = v175 == 0;
  (v178)(v122, v181);
  sub_1011F0B80(v118, _s14ColumnCRDTDataVMa);
  v182 = 0;
  v183 = 1;
  CRRegister.init(wrappedValue:)();
  v125 = *(v164 + 20);
  *&v118[v125] = _swiftEmptyDictionarySingleton;
  v182 = v121;
  v183 = v124;
  CRRegister.wrappedValue.setter();
  *&v118[v125] = _swiftEmptyDictionarySingleton;
  UUID.init()();
  if (sub_1011255D0())
  {
    v126 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v126);
    v127 = v171;
    *(&v132 - 2) = v118;
    *(&v132 - 1) = v127;
    swift_beginAccess();

    v122 = v171;
    v118 = v172;
    Capsule.mutate<A>(_:)();
    swift_endAccess();
  }

  v128 = v122;
  v129 = v181;
  v130 = v178;
  (v178)(v128, v181);
  sub_1011F0B80(v118, _s14ColumnCRDTDataVMa);
  sub_1011E7AE8();

  v130(v156, v129);
  (v157)(v169, v179);
  (*(v167 + 8))(v166, v168);
  sub_1011F0B80(v165, _s15CapsuleDatabaseVMa);
  sub_1011F0B80(v176, type metadata accessor for CRLContainerItemCRDTData);
  sub_1011F0B80(v163, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v174, &unk_101A226A0, &unk_10146E610);
  return v101;
}

uint64_t sub_1011F0B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011F0B80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011F0BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1011F0CE8(uint64_t a1)
{
  if (!qword_1019F5C80)
  {
    sub_1005C4E5C(&unk_101A095E0, &qword_10146DBA0);
    sub_1005FEB28();
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &qword_1019F5C80);
    }
  }
}

uint64_t sub_1011F0D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1011F0E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1011F0F2C(uint64_t a1)
{
  sub_1011F0CE8(319);
  if (v1 <= 0x3F)
  {
    sub_100039F68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1011F0FB4()
{
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  CRRegister.wrappedValue.getter();
  return v1 | (v2 << 32);
}

uint64_t sub_1011F1000()
{
  qword_101AD9190 = 97;
  *algn_101AD9198 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD91A0 = result;
  return result;
}

uint64_t sub_1011F1084()
{
  if (qword_1019F2A80 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD9190;

  return v0;
}

uint64_t sub_1011F1104(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011F1170(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CB80, _s11RowCRDTDataVMa, "%(6");

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011F11DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011F1258(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_1011F12DC(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1011F1358(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_1011F13D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_1011F1468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F14E4(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_1011F1560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F15E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F1668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011F16FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011F1778()
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_1011F17E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011F1860(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.merge(_:)();
}

uint64_t sub_1011F18E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F1B68(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa, "\t76");

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011F1CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1011F1EA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void))
{
  v10 = sub_1005B981C(a2, a3);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = a4(0, v11);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  sub_100601584(a1, &v22);
  if (!v24)
  {
    sub_10000CAAC(&v22, &unk_1019F4D00, &unk_10146E7F0);
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_7;
  }

  v18 = swift_dynamicCast();
  (*(v15 + 56))(v13, v18 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_7:
    sub_10000CAAC(v13, a2, a3);
    return 0;
  }

  sub_1011F32E4(v13, v17, a5);
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  CRRegister.wrappedValue.getter();
  v19 = v22;
  v20 = v23;
  CRRegister.wrappedValue.getter();
  sub_1011F3284(v17, a5);
  if (v20)
  {
    return v23;
  }

  else
  {
    return (v19 == v22) & ~v23;
  }
}

uint64_t sub_1011F2100()
{
  qword_101AD91A8 = 97;
  unk_101AD91B0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD91B8 = result;
  return result;
}

uint64_t sub_1011F2140()
{
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  if (v4)
  {
    return v2;
  }

  else
  {
    return (v3 == v1) & ~v2;
  }
}

uint64_t sub_1011F2214()
{
  if (qword_1019F2A88 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD91A8;

  return v0;
}

uint64_t sub_1011F2294(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011F2300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
  sub_1005FEB28();
  CRRegister.init(wrappedValue:)();
  v4 = *(a1 + 20);
  *(a2 + v4) = _swiftEmptyDictionarySingleton;
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  result = CRRegister.wrappedValue.setter();
  *(a2 + v4) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1011F23AC(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CBC0, _s14ColumnCRDTDataVMa, "q%6");

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011F2418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011F2494(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_1011F2518(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1011F2594(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_1011F2610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_1011F26A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F2720(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_1011F279C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F2820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F28A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011F2938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011F29B4()
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_1011F2A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011F2A9C(uint64_t a1, uint64_t a2)
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.merge(_:)();
}

uint64_t sub_1011F2B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F2DA4(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa, "Y46");

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011F2E60@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  v15 = 0;
  v16 = 1;
  sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
  sub_1005FEB28();
  CRRegister.init(wrappedValue:)();
  *(a3 + *(v6 + 28)) = _swiftEmptyDictionarySingleton;
  v13 = 0;
  v14 = 1;
  CRRegister.init(wrappedValue:)();
  v9 = *(v6 + 28);
  *&v8[v9] = _swiftEmptyDictionarySingleton;
  v11[2] = 0;
  v12 = 1;
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  CRRegister.wrappedValue.setter();
  sub_1011F3284(a3, a2);
  *&v8[v9] = _swiftEmptyDictionarySingleton;
  return sub_1011F32E4(v8, a3, a2);
}

uint64_t sub_1011F3218()
{
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t sub_1011F3284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011F32E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15CapsuleDatabaseVMa(uint64_t a1)
{
  result = qword_101A2CC68;
  if (!qword_101A2CC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1011F33E0(uint64_t a1)
{
  type metadata accessor for CRLContainerItemCRDTData(319);
  if (v1 <= 0x3F)
  {
    sub_1011F34C4(319);
    if (v2 <= 0x3F)
    {
      sub_1011F3600(319);
      if (v3 <= 0x3F)
      {
        sub_1011F373C(319);
        if (v4 <= 0x3F)
        {
          _s13StyleCRDTDataVMa(319);
          if (v5 <= 0x3F)
          {
            sub_100039F68(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1011F34C4(uint64_t a1)
{
  if (!qword_101A2CC78)
  {
    type metadata accessor for UUID();
    sub_1005C4E5C(&qword_1019FA3A8, &qword_1014D2410);
    sub_1000685BC(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10001A2F8(&qword_101A2C8A0, &qword_1019FA3A8, &qword_1014D2410, &protocol conformance descriptor for Ref<A>);
    sub_10001A2F8(&qword_101A2C8A8, &qword_1019FA3A8, &qword_1014D2410, &protocol conformance descriptor for Ref<A>);
    v1 = type metadata accessor for CROrderedDictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_101A2CC78);
    }
  }
}

void sub_1011F3600(uint64_t a1)
{
  if (!qword_101A2CC80)
  {
    type metadata accessor for UUID();
    sub_1005C4E5C(&qword_101A2C8B0, &unk_101472570);
    sub_1000685BC(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10001A2F8(&qword_101A2C8B8, &qword_101A2C8B0, &unk_101472570, &protocol conformance descriptor for Ref<A>);
    sub_10001A2F8(&unk_101A2C8C0, &qword_101A2C8B0, &unk_101472570, &protocol conformance descriptor for Ref<A>);
    v1 = type metadata accessor for CROrderedDictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_101A2CC80);
    }
  }
}

void sub_1011F373C(uint64_t a1)
{
  if (!qword_101A2CC88)
  {
    _s6CellIDVMa(255);
    sub_1005C4E5C(&qword_1019FA378, &qword_1014724F0);
    sub_1000685BC(&qword_101A2C8D0, _s6CellIDVMa, aI_27);
    sub_1000685BC(&qword_101A21DA8, _s6CellIDVMa, byte_1014D2178);
    sub_10001A2F8(&qword_101A2C8E0, &qword_1019FA378, &qword_1014724F0, &protocol conformance descriptor for Ref<A>);
    sub_10001A2F8(&qword_101A2C8E8, &qword_1019FA378, &qword_1014724F0, &protocol conformance descriptor for Ref<A>);
    v1 = type metadata accessor for CRDictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_101A2CC88);
    }
  }
}

uint64_t sub_1011F389C()
{
  qword_101AD91C0 = 97;
  *algn_101AD91C8 = 0xE100000000000000;
  qword_101AD91D0 = swift_getKeyPath();
  unk_101AD91D8 = 98;
  qword_101AD91E0 = 0xE100000000000000;
  qword_101AD91E8 = swift_getKeyPath();
  qword_101AD91F0 = 99;
  qword_101AD91F8 = 0xE100000000000000;
  qword_101AD9200 = swift_getKeyPath();
  unk_101AD9208 = 100;
  qword_101AD9210 = 0xE100000000000000;
  qword_101AD9218 = swift_getKeyPath();
  qword_101AD9220 = 101;
  qword_101AD9228 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9230 = result;
  return result;
}

double sub_1011F393C@<D0>(void *a1@<X8>)
{
  if (qword_1019F2A90 != -1)
  {
    v16 = a1;
    swift_once();
    a1 = v16;
  }

  v1 = *algn_101AD91C8;
  v3 = qword_101AD91D0;
  v2 = unk_101AD91D8;
  v4 = qword_101AD91E0;
  v5 = qword_101AD91E8;
  v6 = qword_101AD91F0;
  v7 = qword_101AD91F8;
  v9 = qword_101AD9200;
  v8 = unk_101AD9208;
  v10 = qword_101AD9210;
  v11 = qword_101AD9218;
  v12 = qword_101AD9220;
  v13 = qword_101AD9228;
  v14 = qword_101AD9230;
  *a1 = qword_101AD91C0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v11;
  a1[12] = v12;
  a1[13] = v13;
  a1[14] = v14;

  return result;
}

uint64_t sub_1011F3A50(uint64_t a1)
{
  v2 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return static CRStruct_5.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011F3ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for CRLContainerItemCRDTData(0) + 20)) = _swiftEmptyDictionarySingleton;
  type metadata accessor for UUID();
  sub_1000685BC(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  CROrderedSet.init()();
  sub_1012023CC(a2 + *(a1 + 32));
  *(a2 + *(a1 + 36)) = _swiftEmptyDictionarySingleton;
  sub_1005B981C(&qword_1019FA3A8, &qword_1014D2410);
  sub_10001A2F8(&qword_101A2C8A0, &qword_1019FA3A8, &qword_1014D2410, &protocol conformance descriptor for Ref<A>);
  sub_10001A2F8(&qword_101A2C8A8, &qword_1019FA3A8, &qword_1014D2410, &protocol conformance descriptor for Ref<A>);
  CROrderedDictionary.init()();
  sub_1005B981C(&qword_101A2C8B0, &unk_101472570);
  sub_10001A2F8(&qword_101A2C8B8, &qword_101A2C8B0, &unk_101472570, &protocol conformance descriptor for Ref<A>);
  sub_10001A2F8(&unk_101A2C8C0, &qword_101A2C8B0, &unk_101472570, &protocol conformance descriptor for Ref<A>);
  CROrderedDictionary.init()();
  _s6CellIDVMa(0);
  sub_1005B981C(&qword_1019FA378, &qword_1014724F0);
  sub_1000685BC(&qword_101A2C8D0, _s6CellIDVMa, aI_27);
  sub_1000685BC(&qword_101A21DA8, _s6CellIDVMa, byte_1014D2178);
  sub_10001A2F8(&qword_101A2C8E0, &qword_1019FA378, &qword_1014724F0, &protocol conformance descriptor for Ref<A>);
  sub_10001A2F8(&qword_101A2C8E8, &qword_1019FA378, &qword_1014724F0, &protocol conformance descriptor for Ref<A>);
  return CRDictionary.init()();
}

uint64_t sub_1011F3DA8(uint64_t a1)
{
  v2 = sub_1000685BC(&qword_101A2CD08, _s15CapsuleDatabaseVMa, byte_1014D18A0);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011F3E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011F3E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1011F3F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.apply(_:)(a1, a2, v4);
}

uint64_t sub_1011F3F90(uint64_t a1, uint64_t a2)
{
  sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.hasDelta(from:)();
}

uint64_t sub_1011F400C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1011F40A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F411C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F4198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F421C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F42A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011F4334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011F43B0()
{
  sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.needToFinalizeTimestamps()();
}

uint64_t sub_1011F441C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011F4498(uint64_t a1, uint64_t a2)
{
  sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.merge(_:)();
}

uint64_t sub_1011F451C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F46A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000685BC(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1011F4824(uint64_t a1)
{
  v2 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa, "9r6");

  return CRStruct_5.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011F4C38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A2C9E0, &unk_1014724E0);
  __chkstk_darwin(v4 - 8);
  v184 = v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v186 = v160 - v7;
  v8 = _s12CellCRDTDataVMa(0);
  __chkstk_darwin(v8);
  v182 = v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v181 = v160 - v11;
  __chkstk_darwin(v12);
  v183 = v160 - v13;
  __chkstk_darwin(v14);
  v187 = v160 - v15;
  v206 = sub_1005B981C(&unk_101A2C9D0, &unk_1014C7030);
  __chkstk_darwin(v206);
  v205 = v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v204 = v160 - v18;
  v19 = _s6CellIDVMa(0);
  v207 = *(v19 - 8);
  __chkstk_darwin(v19 - 8);
  v188 = v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v185 = v160 - v22;
  __chkstk_darwin(v23);
  v196 = v160 - v24;
  __chkstk_darwin(v25);
  v178 = v160 - v26;
  v180 = sub_1005B981C(&qword_101A2CD30, &qword_1014D1B50);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v176 = v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v177 = v160 - v29;
  v195 = sub_1005B981C(&qword_101A2CD38, &qword_1014D1B58);
  v193 = *(v195 - 8);
  __chkstk_darwin(v195);
  v191 = v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v190 = v160 - v32;
  __chkstk_darwin(v33);
  v192 = v160 - v34;
  v189 = sub_1005B981C(&qword_101A2CD40, &qword_1014D1B60);
  __chkstk_darwin(v189);
  v194 = v160 - v35;
  v202 = sub_1005B981C(&qword_101A2CD48, &qword_1014D1B68);
  v36 = *(v202 - 8);
  __chkstk_darwin(v202);
  v38 = v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v198 = v160 - v40;
  __chkstk_darwin(v41);
  v199 = v160 - v42;
  v197 = sub_1005B981C(&qword_101A2CD50, &qword_1014D1B70);
  __chkstk_darwin(v197);
  v201 = v160 - v43;
  v44 = _s15CapsuleDatabaseVMa(0);
  __chkstk_darwin(v44);
  v46 = v160 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = v160 - v48;
  sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  Capsule.root.getter();
  v203 = a1;
  Capsule.root.getter();
  v200 = v44;
  v50 = *(v44 + 32);
  v210 = _s13StyleCRDTDataVMa(0);
  v51 = sub_10002C58C(&v209);
  sub_1011F6E9C(&v46[v50], v51, _s13StyleCRDTDataVMa);
  LOBYTE(v50) = sub_101202700(&v209);
  sub_10000CAAC(&v209, &unk_1019F4D00, &unk_10146E7F0);
  if (v50 & 1) != 0 && (v52 = type metadata accessor for UUID(), sub_1000685BC(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v175 = v52, (static CROrderedSet.== infix(_:_:)()) && (v172 = v2, v53 = v200, v54 = v200[5], sub_1005B981C(&unk_101A2C7D0, &unk_1014D0DC0), v173 = v54, v55 = CROrderedDictionary.count.getter(), v174 = v53[5], v55 == CROrderedDictionary.count.getter()) && (v56 = v53[6], v57 = sub_1005B981C(&unk_101A2D830, &qword_101472540), v163 = v56, v58 = CROrderedDictionary.count.getter(), v164 = v53[6], v58 == CROrderedDictionary.count.getter()) && (v59 = v53[7], v60 = sub_1005B981C(&qword_1019FA370, &qword_1014D2320), v165 = v59, v171 = CRDictionary.count.getter(), v160[3] = v53[7], v170 = v60, v61 = CRDictionary.count.getter(), v171 == v61))
  {
    v160[2] = v57;
    v169 = v38;
    __chkstk_darwin(v61);
    v160[-2] = v172;
    v162 = v49;
    v62 = CROrderedDictionary._map<A>(_:)();
    __chkstk_darwin(v62);
    v63 = v203;
    v160[-2] = v203;
    v161 = v46;
    v65 = v64;
    result = CROrderedDictionary._map<A>(_:)();
    v67 = result;
    v160[1] = 0;
    v68 = 0;
    v173 = v175 - 8;
    v171 = *(v65 + 16);
    v160[0] = v8;
    v69 = v201;
    v166 = v36;
    v168 = v65;
    v167 = result;
    while (1)
    {
      if (v171 == v68)
      {

        goto LABEL_19;
      }

      if (v68 >= *(v65 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v70 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v71 = *(v36 + 72) * v68;
      v72 = v199;
      result = sub_10000BE14(v65 + v70 + v71, v199, &qword_101A2CD48, &qword_1014D1B68);
      v73 = *(v67 + 16);
      if (v68 == v73)
      {
        break;
      }

      if (v68++ >= v73)
      {
        goto LABEL_64;
      }

      v74 = v69 + *(v197 + 48);
      sub_10003DFF8(v72, v69, &qword_101A2CD48, &qword_1014D1B68);
      sub_10000BE14(v67 + v70 + v71, v74, &qword_101A2CD48, &qword_1014D1B68);
      v75 = v202;
      v76 = *(v202 + 48);
      v77 = v175;
      v78 = *(*(v175 - 8) + 16);
      v79 = v198;
      v78(v198, v69, v175);
      v174 = *(v75 + 48);
      sub_1011F6E9C(v69 + v76, v79 + v174, _s11RowCRDTDataVMa);
      v80 = v169;
      v78(v169, v74, v77);
      sub_1011F6E9C(v74 + v76, v80 + *(v75 + 48), _s11RowCRDTDataVMa);
      sub_1000685BC(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        sub_10000CAAC(v80, &qword_101A2CD48, &qword_1014D1B68);
        sub_10000CAAC(v79, &qword_101A2CD48, &qword_1014D1B68);
        sub_10000CAAC(v201, &qword_101A2CD50, &qword_1014D1B70);
LABEL_57:

LABEL_58:

LABEL_59:
        sub_1011F6E3C(v161, _s15CapsuleDatabaseVMa);
        v82 = v162;
        goto LABEL_15;
      }

      _s11RowCRDTDataVMa(0);
      sub_1000685BC(&qword_101A2CB88, _s11RowCRDTDataVMa, byte_1014D1418);
      v81 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10000CAAC(v80, &qword_101A2CD48, &qword_1014D1B68);
      sub_10000CAAC(v79, &qword_101A2CD48, &qword_1014D1B68);
      v69 = v201;
      result = sub_10000CAAC(v201, &qword_101A2CD50, &qword_1014D1B70);
      v63 = v203;
      v36 = v166;
      v65 = v168;
      v67 = v167;
      if ((v81 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v83 = sub_10000CAAC(v72, &qword_101A2CD48, &qword_1014D1B68);
    v63 = v203;
LABEL_19:
    __chkstk_darwin(v83);
    v160[-2] = v172;
    v84 = CROrderedDictionary._map<A>(_:)();
    __chkstk_darwin(v84);
    v160[-2] = v63;
    result = CROrderedDictionary._map<A>(_:)();
    v85 = result;
    v86 = 0;
    v201 = *(v84 + 16);
    v87 = v196;
    v88 = v194;
    v198 = result;
    v199 = v84;
    while (1)
    {
      if (v201 == v86)
      {

        goto LABEL_30;
      }

      if (v86 >= *(v84 + 16))
      {
        goto LABEL_65;
      }

      v89 = (*(v193 + 80) + 32) & ~*(v193 + 80);
      v90 = *(v193 + 72) * v86;
      v91 = v192;
      result = sub_10000BE14(v84 + v89 + v90, v192, &qword_101A2CD38, &qword_1014D1B58);
      v92 = *(v85 + 16);
      if (v86 == v92)
      {
        break;
      }

      if (v86++ >= v92)
      {
        goto LABEL_66;
      }

      v93 = v88 + *(v189 + 48);
      sub_10003DFF8(v91, v88, &qword_101A2CD38, &qword_1014D1B58);
      sub_10000BE14(v85 + v89 + v90, v93, &qword_101A2CD38, &qword_1014D1B58);
      v94 = v195;
      v95 = *(v195 + 48);
      v96 = v175;
      v97 = *(*(v175 - 8) + 16);
      v98 = v88;
      v99 = v190;
      v97(v190, v98, v175);
      v202 = *(v94 + 48);
      sub_1011F6E9C(v98 + v95, v99 + v202, _s14ColumnCRDTDataVMa);
      v100 = v191;
      v97(v191, v93, v96);
      sub_1011F6E9C(v93 + v95, v100 + *(v94 + 48), _s14ColumnCRDTDataVMa);
      sub_1000685BC(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        sub_10000CAAC(v100, &qword_101A2CD38, &qword_1014D1B58);
        sub_10000CAAC(v99, &qword_101A2CD38, &qword_1014D1B58);
        sub_10000CAAC(v194, &qword_101A2CD40, &qword_1014D1B60);
        goto LABEL_57;
      }

      _s14ColumnCRDTDataVMa(0);
      sub_1000685BC(&qword_101A2CBC8, _s14ColumnCRDTDataVMa, byte_1014D16C8);
      v101 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10000CAAC(v100, &qword_101A2CD38, &qword_1014D1B58);
      sub_10000CAAC(v99, &qword_101A2CD38, &qword_1014D1B58);
      v88 = v194;
      result = sub_10000CAAC(v194, &qword_101A2CD40, &qword_1014D1B60);
      v87 = v196;
      v85 = v198;
      v84 = v199;
      if ((v101 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    sub_10000CAAC(v91, &qword_101A2CD38, &qword_1014D1B58);
LABEL_30:
    v102 = sub_10001A2F8(&qword_101A2CD58, &qword_1019FA370, &qword_1014D2320, &protocol conformance descriptor for CRDictionary<A, B>);
    v103 = v170;
    v202 = v102;
    v104 = dispatch thunk of Collection.count.getter();
    v105 = _swiftEmptyArrayStorage;
    v106 = v178;
    if (v104)
    {
      v107 = v104;
      v208 = _swiftEmptyArrayStorage;
      sub_1007764C4(0, v104 & ~(v104 >> 63), 0);
      v105 = v208;
      v108 = v177;
      result = dispatch thunk of Collection.startIndex.getter();
      if (v107 < 0)
      {
        goto LABEL_68;
      }

      v109 = v103;
      do
      {
        v110 = dispatch thunk of Collection.subscript.read();
        v111 = v204;
        sub_10000BE14(v112, v204, &unk_101A2C9D0, &unk_1014C7030);
        v110(&v209, 0);
        v113 = v111;
        v114 = v205;
        sub_10003DFF8(v113, v205, &unk_101A2C9D0, &unk_1014C7030);
        v115 = *(v206 + 48);
        sub_1011F6DD4(v114, v106, _s6CellIDVMa);
        v116 = sub_1005B981C(&qword_1019FA378, &qword_1014724F0);
        (*(*(v116 - 8) + 8))(v114 + v115, v116);
        v208 = v105;
        v117 = v108;
        v118 = v109;
        v120 = v105[2];
        v119 = v105[3];
        if (v120 >= v119 >> 1)
        {
          sub_1007764C4((v119 > 1), v120 + 1, 1);
          v105 = v208;
        }

        v105[2] = v120 + 1;
        sub_1011F6DD4(v106, v105 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v120, _s6CellIDVMa);
        dispatch thunk of Collection.formIndex(after:)();
        --v107;
        v109 = v118;
        v108 = v117;
      }

      while (v107);
      (*(v179 + 8))(v117, v180);
      v87 = v196;
    }

    v121 = sub_100E92710(v105);

    v122 = dispatch thunk of Collection.count.getter();
    v123 = _swiftEmptyArrayStorage;
    v201 = v121;
    if (v122)
    {
      v124 = v122;
      v208 = _swiftEmptyArrayStorage;
      sub_1007764C4(0, v122 & ~(v122 >> 63), 0);
      v123 = v208;
      v125 = v176;
      result = dispatch thunk of Collection.startIndex.getter();
      if (v124 < 0)
      {
        goto LABEL_69;
      }

      do
      {
        v126 = dispatch thunk of Collection.subscript.read();
        v127 = v204;
        sub_10000BE14(v128, v204, &unk_101A2C9D0, &unk_1014C7030);
        v126(&v209, 0);
        v129 = v205;
        sub_10003DFF8(v127, v205, &unk_101A2C9D0, &unk_1014C7030);
        v130 = *(v206 + 48);
        sub_1011F6DD4(v129, v87, _s6CellIDVMa);
        v131 = sub_1005B981C(&qword_1019FA378, &qword_1014724F0);
        (*(*(v131 - 8) + 8))(v129 + v130, v131);
        v208 = v123;
        v133 = v123[2];
        v132 = v123[3];
        if (v133 >= v132 >> 1)
        {
          sub_1007764C4((v132 > 1), v133 + 1, 1);
          v123 = v208;
        }

        v123[2] = v133 + 1;
        sub_1011F6DD4(v87, v123 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v133, _s6CellIDVMa);
        dispatch thunk of Collection.formIndex(after:)();
        --v124;
      }

      while (v124);
      (*(v179 + 8))(v125, v180);
      v121 = v201;
    }

    v134 = sub_100E92710(v123);

    sub_100BC4CAC(v121, v134);
    v136 = v135;

    v137 = v186;
    if ((v136 & 1) == 0)
    {
      goto LABEL_58;
    }

    v138 = 0;
    v139 = *(v121 + 56);
    v205 = v121 + 56;
    v140 = 1 << *(v121 + 32);
    v141 = -1;
    if (v140 < 64)
    {
      v141 = ~(-1 << v140);
    }

    v142 = v141 & v139;
    v204 = (v140 + 63) >> 6;
    v143 = v188;
    while (1)
    {
      v144 = v162;
      if (!v142)
      {
        break;
      }

LABEL_52:
      v146 = v185;
      sub_1011F6E9C(*(v121 + 48) + *(v207 + 72) * (__clz(__rbit64(v142)) | (v138 << 6)), v185, _s6CellIDVMa);
      sub_1011F6DD4(v146, v143, _s6CellIDVMa);
      CRDictionary.subscript.getter();
      v147 = sub_1005B981C(&qword_1019FA378, &qword_1014724F0);
      v148 = *(v147 - 8);
      v149 = v137;
      v150 = *(v148 + 48);
      if (v150(v149, 1, v147) == 1)
      {

        sub_1011F6E3C(v188, _s6CellIDVMa);
        sub_1011F6E3C(v161, _s15CapsuleDatabaseVMa);
        sub_1011F6E3C(v162, _s15CapsuleDatabaseVMa);
        sub_10000CAAC(v149, &qword_101A2C9E0, &unk_1014724E0);
        return 0;
      }

      sub_1000685BC(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
      v151 = v183;
      Ref.subscript.getter();
      v206 = v150;
      v152 = *(v148 + 8);
      v152(v149, v147);
      sub_1011F6DD4(v151, v187, _s12CellCRDTDataVMa);
      v153 = v184;
      CRDictionary.subscript.getter();
      if ((v206)(v153, 1, v147) == 1)
      {

        sub_1011F6E3C(v187, _s12CellCRDTDataVMa);
        sub_1011F6E3C(v188, _s6CellIDVMa);
        sub_1011F6E3C(v161, _s15CapsuleDatabaseVMa);
        sub_1011F6E3C(v162, _s15CapsuleDatabaseVMa);
        sub_10000CAAC(v153, &qword_101A2C9E0, &unk_1014724E0);
        return 0;
      }

      v142 &= v142 - 1;
      v154 = v182;
      Ref.subscript.getter();
      v152(v153, v147);
      v155 = v154;
      v156 = v181;
      sub_1011F6DD4(v155, v181, _s12CellCRDTDataVMa);
      v210 = v160[0];
      v157 = sub_10002C58C(&v209);
      sub_1011F6E9C(v156, v157, _s12CellCRDTDataVMa);
      v158 = v187;
      v159 = sub_1011F70DC(&v209);
      sub_1011F6E3C(v156, _s12CellCRDTDataVMa);
      sub_1011F6E3C(v158, _s12CellCRDTDataVMa);
      v143 = v188;
      sub_1011F6E3C(v188, _s6CellIDVMa);
      result = sub_10000CAAC(&v209, &unk_1019F4D00, &unk_10146E7F0);
      v137 = v186;
      v121 = v201;
      if (!v159)
      {

        goto LABEL_59;
      }
    }

    while (1)
    {
      v145 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        break;
      }

      if (v145 >= v204)
      {
        sub_1011F6E3C(v161, _s15CapsuleDatabaseVMa);
        sub_1011F6E3C(v144, _s15CapsuleDatabaseVMa);

        return 1;
      }

      v142 = *(v205 + 8 * v145);
      ++v138;
      if (v142)
      {
        v138 = v145;
        goto LABEL_52;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
    sub_1011F6E3C(v46, _s15CapsuleDatabaseVMa);
    v82 = v49;
LABEL_15:
    sub_1011F6E3C(v82, _s15CapsuleDatabaseVMa);
    return 0;
  }

  return result;
}

uint64_t sub_1011F67BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v26 = a2;
  v6 = sub_1005B981C(&unk_101A2CA40, &unk_1014D1160);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v27 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  v29 = type metadata accessor for UUID();
  v15 = *(v29 - 8);
  v24 = v15;
  (*(v15 + 16))(v14, a1, v29);
  v16 = *(v7 + 56);
  v17 = sub_1005B981C(&qword_1019FA3A8, &qword_1014D2410);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], v26, v17);
  v23[1] = *(sub_1005B981C(&qword_101A2CD48, &qword_1014D1B68) + 48);
  v25 = v11;
  sub_10000BE14(v14, v11, &unk_101A2CA40, &unk_1014D1160);
  v26 = *(v7 + 56);
  (*(v15 + 32))(a4, v11, v29);
  v19 = v27;
  sub_10000BE14(v14, v27, &unk_101A2CA40, &unk_1014D1160);
  v20 = *(v7 + 56);
  _s15CapsuleDatabaseVMa(0);
  sub_1000685BC(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
  Ref.subscript.getter();
  sub_10000CAAC(v14, &unk_101A2CA40, &unk_1014D1160);
  v21 = *(v18 + 8);
  v21(v19 + v20, v17);
  (*(v24 + 8))(v19, v29);
  return (v21)(&v25[v26], v17);
}

uint64_t sub_1011F6AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v26 = a2;
  v6 = sub_1005B981C(&qword_101A2CA38, &qword_1014D2330);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v27 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  v29 = type metadata accessor for UUID();
  v15 = *(v29 - 8);
  v24 = v15;
  (*(v15 + 16))(v14, a1, v29);
  v16 = *(v7 + 56);
  v17 = sub_1005B981C(&qword_101A2C8B0, &unk_101472570);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], v26, v17);
  v23[1] = *(sub_1005B981C(&qword_101A2CD38, &qword_1014D1B58) + 48);
  v25 = v11;
  sub_10000BE14(v14, v11, &qword_101A2CA38, &qword_1014D2330);
  v26 = *(v7 + 56);
  (*(v15 + 32))(a4, v11, v29);
  v19 = v27;
  sub_10000BE14(v14, v27, &qword_101A2CA38, &qword_1014D2330);
  v20 = *(v7 + 56);
  _s15CapsuleDatabaseVMa(0);
  sub_1000685BC(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
  Ref.subscript.getter();
  sub_10000CAAC(v14, &qword_101A2CA38, &qword_1014D2330);
  v21 = *(v18 + 8);
  v21(v19 + v20, v17);
  (*(v24 + 8))(v19, v29);
  return (v21)(&v25[v26], v17);
}

uint64_t sub_1011F6DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011F6E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011F6E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1011F6F7C(uint64_t a1)
{
  type metadata accessor for CRLWPStorageCRDTData(319);
  if (v1 <= 0x3F)
  {
    sub_100FEFFEC(319);
    if (v2 <= 0x3F)
    {
      sub_100039F68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1011F7060@<Q0>(_OWORD *a1@<X8>)
{
  _s12CellCRDTDataVMa(0);
  sub_1005B981C(&unk_101A10690, &qword_101472520);
  CRRegister.wrappedValue.getter();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

BOOL sub_1011F70DC(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A2CF20, &qword_1014D21B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = _s12CellCRDTDataVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BE14(a1, v38, &unk_1019F4D00, &unk_10146E7F0);
  if (!*&v38[24])
  {
    sub_10000CAAC(v38, &unk_1019F4D00, &unk_10146E7F0);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_10;
  }

  v10 = swift_dynamicCast();
  (*(v7 + 56))(v5, v10 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_10:
    sub_10000CAAC(v5, &qword_101A2CF20, &qword_1014D21B8);
    return 0;
  }

  sub_1011FA124(v5, v9);
  sub_1005B981C(&unk_101A10690, &qword_101472520);
  v26 = v1;
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v11 = v53;
  v50 = v57;
  v51 = v58;
  v52[0] = *v59;
  v12 = v60;
  *(v52 + 15) = *&v59[15];
  v48 = v55;
  v49 = v56;
  v13 = v69;
  if (!v60)
  {
    if (!v68)
    {
      *v38 = v53;
      v38[8] = v54;
      *&v38[41] = v57;
      *&v38[57] = v58;
      *&v38[73] = *v59;
      *&v38[9] = v55;
      *&v38[25] = v56;
      *&v38[88] = *&v59[15];
      *&v38[96] = 0;
      v39 = v61;
      sub_10000CAAC(v38, &qword_1019FFF80, &qword_101489000);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (!v68)
  {
LABEL_12:
    *v38 = v53;
    v38[8] = v54;
    *&v38[41] = v57;
    *&v38[57] = v58;
    *&v38[73] = *v59;
    *&v38[9] = v55;
    *&v38[25] = v56;
    *&v38[88] = *&v59[15];
    *&v38[96] = v60;
    v39 = v61;
    v40 = v62;
    v41 = v63;
    v44 = v66;
    v45 = v67;
    v42 = v64;
    v43 = v65;
    v46 = v68;
    v47 = v69;
    v18 = &qword_1019FFF90;
    v19 = &unk_10148E930;
    v20 = v38;
LABEL_14:
    sub_10000CAAC(v20, v18, v19);
    goto LABEL_15;
  }

  v25 = v61;
  *v38 = v62;
  *&v38[16] = v63;
  *&v38[64] = v66;
  *&v38[80] = v67;
  *&v38[32] = v64;
  *&v38[48] = v65;
  *&v38[96] = v68;
  v39 = v69;
  v36[0] = *&v38[9];
  v36[1] = *&v38[25];
  *(&v36[4] + 15) = *&v38[88];
  v36[3] = *&v38[57];
  v36[4] = *&v38[73];
  v36[2] = *&v38[41];
  v37[0] = v55;
  v37[1] = v56;
  *(&v37[4] + 15) = *&v59[15];
  v37[3] = v58;
  v37[4] = *v59;
  v37[2] = v57;
  *&v76 = v53;
  v14 = v54;
  BYTE8(v76) = v54 & 1;
  *&v70 = v62;
  BYTE8(v70) = BYTE8(v62) & 1;
  sub_10000BE14(&v53, &v27, &qword_1019FFF80, &qword_101489000);
  sub_10000BE14(&v62, &v27, &qword_1019FFF80, &qword_101489000);
  sub_100A1B84C();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0 || (v72 = *(&v37[2] + 7), v73 = *(&v37[3] + 7), v74 = *(&v37[4] + 7), v70 = *(v37 + 7), v71 = *(&v37[1] + 7), v75 = v12, v78 = *(&v36[2] + 7), v79 = *(&v36[3] + 7), v80 = *(&v36[4] + 7), v81 = *(&v36[5] + 7), v76 = *(v36 + 7), v77 = *(&v36[1] + 7), (sub_1008AFE44() & 1) == 0))
  {
    sub_10000CAAC(v38, &qword_1019FFF80, &qword_101489000);
    sub_10000CAAC(&v62, &qword_1019FFF80, &qword_101489000);
    sub_10000CAAC(&v53, &qword_1019FFF80, &qword_101489000);
    v31 = v50;
    v32 = v51;
    *v33 = v52[0];
    v29 = v48;
    v27 = v11;
    v28 = v14;
    v30 = v49;
    *&v33[15] = *(v52 + 15);
    v34 = v12;
    v35 = v25;
    v20 = &v27;
    v18 = &qword_1019FFF80;
    v19 = &qword_101489000;
    goto LABEL_14;
  }

  v15 = v25;
  sub_100B3216C(v25, v13);
  v17 = v16;
  sub_10000CAAC(v38, &qword_1019FFF80, &qword_101489000);
  sub_10000CAAC(&v62, &qword_1019FFF80, &qword_101489000);
  sub_10000CAAC(&v53, &qword_1019FFF80, &qword_101489000);
  v31 = v50;
  v32 = v51;
  *v33 = v52[0];
  v29 = v48;
  v27 = v11;
  v28 = v14;
  v30 = v49;
  *&v33[15] = *(v52 + 15);
  v34 = v12;
  v35 = v15;
  sub_10000CAAC(&v27, &qword_1019FFF80, &qword_101489000);
  if ((v17 & 1) == 0)
  {
LABEL_15:
    sub_1011FA188(v9, _s12CellCRDTDataVMa);
    return 0;
  }

LABEL_19:
  v22 = v26;
  if ((sub_100A3EB88(v26) & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = type metadata accessor for CRLWPStorageCRDTData(0);
  v24 = sub_100A3EB88(v22 + *(v23 + 20));
  sub_1011FA188(v9, _s12CellCRDTDataVMa);
  return (v24 & 1) != 0;
}

uint64_t sub_1011F7724(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2CF38, &qword_1014D2208);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1011F84C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1011F82DC(&qword_1019F43C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    _s6CellIDVMa(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1011F78E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = type metadata accessor for UUID();
  v26 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v27 = &v21 - v7;
  v8 = sub_1005B981C(&qword_101A2CF30, &qword_1014D2200);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = _s6CellIDVMa(0);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1011F84C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v12;
  v23 = v5;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_1011F82DC(&qword_1019F43A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v16 = v27;
  v17 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_1011FA1E8(v19, v25, _s6CellIDVMa);
  sub_100005070(a1);
  return sub_1011FA188(v19, _s6CellIDVMa);
}

uint64_t sub_1011F7CAC()
{
  if (*v0)
  {
    return 0x44496E6D756C6F63;
  }

  else
  {
    return 0x4449776F72;
  }
}

uint64_t sub_1011F7CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496E6D756C6F63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1011F7DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F8468();
  v5 = sub_1011F84C0();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_1011F7E24(uint64_t a1)
{
  v2 = sub_1011F84C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011F7E60(uint64_t a1)
{
  v2 = sub_1011F84C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011F7F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F82DC(&qword_101A2C8D0, _s6CellIDVMa, aI_27);
  v7 = sub_1011F82DC(&qword_101A2CF18, _s6CellIDVMa, byte_1014D2150);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1011F80C4(uint64_t a1)
{
  v2 = sub_1011F82DC(&qword_101A2CF40, _s6CellIDVMa, byte_1014D1CA8);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011F81C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&unk_101A0B020, _s6CellIDVMa, byte_1014D2118);

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for CRKeyPath);
}

uint64_t sub_1011F82DC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1011F83B8()
{
  result = qword_101A2CE90;
  if (!qword_101A2CE90)
  {
    result = swift_getWitnessTable(byte_1014D1CF0, &_s6CellIDV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2CE90);
  }

  return result;
}

unint64_t sub_1011F8410()
{
  result = qword_101A2CE98;
  if (!qword_101A2CE98)
  {
    result = swift_getWitnessTable(byte_1014D1E08, &_s6CellIDV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2CE98);
  }

  return result;
}

unint64_t sub_1011F8468()
{
  result = qword_101A2CEA0;
  if (!qword_101A2CEA0)
  {
    result = swift_getWitnessTable(byte_1014D1DD0, &_s6CellIDV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2CEA0);
  }

  return result;
}

unint64_t sub_1011F84C0()
{
  result = qword_101A2CEA8;
  if (!qword_101A2CEA8)
  {
    result = swift_getWitnessTable(a1_15, &_s6CellIDV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2CEA8);
  }

  return result;
}

unint64_t sub_1011F8518()
{
  result = qword_101A2CEB0;
  if (!qword_101A2CEB0)
  {
    result = swift_getWitnessTable(byte_1014D1DA0, &_s6CellIDV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2CEB0);
  }

  return result;
}

unint64_t sub_1011F8570()
{
  result = qword_101A2CEB8;
  if (!qword_101A2CEB8)
  {
    result = swift_getWitnessTable(byte_1014D1D78, &_s6CellIDV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2CEB8);
  }

  return result;
}

uint64_t sub_1011F8608()
{
  qword_101AD9238 = 97;
  unk_101AD9240 = 0xE100000000000000;
  qword_101AD9248 = swift_getKeyPath();
  unk_101AD9250 = 98;
  qword_101AD9258 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9260 = result;
  return result;
}

double sub_1011F8664@<D0>(void *a1@<X8>)
{
  if (qword_1019F2A98 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_101AD9240;
  v3 = qword_101AD9248;
  v2 = unk_101AD9250;
  v4 = qword_101AD9258;
  v5 = qword_101AD9260;
  *a1 = qword_101AD9238;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

uint64_t sub_1011F8708(uint64_t a1)
{
  v2 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011F8774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10068D144();
  CRAttributedString.init()();
  CRAttributedString.init(_:)();
  *&v7[*(v5 + 32)] = _swiftEmptyDictionarySingleton;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_1005B981C(&qword_1019FFF80, &qword_101489000);
  sub_1006BD16C();
  CRRegister.init(wrappedValue:)();
  *(a2 + *(a1 + 24)) = _swiftEmptyDictionarySingleton;
  sub_1011FA1E8(v7, a2, type metadata accessor for CRLWPStorageCRDTData);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_1005B981C(&unk_101A10690, &qword_101472520);
  CRRegister.wrappedValue.setter();
  return sub_1011FA188(v7, type metadata accessor for CRLWPStorageCRDTData);
}

uint64_t sub_1011F8908(uint64_t a1)
{
  v2 = sub_1011F82DC(&qword_101A2CEE0, _s12CellCRDTDataVMa, byte_1014D1EF0);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011F8974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011F89F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1011F8A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1011F8AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_1011F8B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1011F8C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F8C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F8CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F8D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F8E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011F8E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011F8F10()
{
  sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1011F8F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011F8FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F907C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F9208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F82DC(&unk_101A2CA20, _s12CellCRDTDataVMa, "q\x1B6");

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1011F9384(uint64_t a1)
{
  v2 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa, "aM6");

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

Swift::Int sub_1011F96CC()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1011F9760(uint64_t a1)
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1011F97B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for CRKeyPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_1011F82DC(&unk_101A0B020, _s6CellIDVMa, byte_1014D2118);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1011F82DC(&unk_101A2C5A0, &type metadata accessor for CRKeyPath, &protocol conformance descriptor for CRKeyPath);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  return v10 & 1;
}

uint64_t sub_1011F9968@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for CRKeyPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for UUID();
  v61 = *(v16 - 8);
  __chkstk_darwin(v16);
  v58 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v57 = &v46 - v19;
  __chkstk_darwin(v20);
  v56 = &v46 - v21;
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  v25 = CRKeyPath.components.getter();
  if (v25)
  {
    v26 = v25;
    v60 = a1;
    if (*(v25 + 16) == 2)
    {
      v52 = v6;
      v53 = v24;
      v55 = a2;
      v27 = *(v11 + 16);
      v49 = v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v50 = v27;
      (v27)(v15);
      CRKeyPath.uuid.getter();
      v28 = *(v11 + 8);
      v28(v15, v10);
      v29 = v61;
      v30 = *(v61 + 48);
      v54 = v16;
      v51 = v30;
      if (v30(v9, 1, v16) == 1)
      {
        v28(v60, v10);

        v31 = v9;
      }

      else
      {
        v48 = v28;
        v32 = v53;
        v47 = *(v29 + 32);
        result = v47(v53, v9, v54);
        if (*(v26 + 16) < 2uLL)
        {
          __break(1u);
          return result;
        }

        v34 = v59;
        v50(v59, v49 + *(v11 + 72), v10);

        v35 = v52;
        CRKeyPath.uuid.getter();
        v36 = v48;
        v48(v60, v10);
        v36(v34, v10);
        v37 = v54;
        if (v51(v35, 1, v54) != 1)
        {
          v39 = v56;
          v40 = v35;
          v41 = v47;
          v47(v56, v40, v37);
          v42 = v57;
          v41(v57, v32, v37);
          v43 = v58;
          v41(v58, v39, v37);
          v44 = v55;
          v41(v55, v42, v37);
          v45 = _s6CellIDVMa(0);
          v41(&v44[*(v45 + 20)], v43, v37);
          return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
        }

        (*(v61 + 8))(v32, v37);
        v31 = v35;
      }

      sub_10000CAAC(v31, &qword_1019F6990, &qword_10146D2F0);
      a2 = v55;
    }

    else
    {
      (*(v11 + 8))(v60, v10);
    }
  }

  else
  {
    (*(v11 + 8))(a1, v10);
  }

  v38 = _s6CellIDVMa(0);
  return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
}

uint64_t sub_1011F9ED8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_1019FA380, &qword_101472528);
  type metadata accessor for CRKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  v8 = *(v4 + 16);
  v8(v6, v1, v3);
  CRKeyPath.init(_:)();
  v8(v6, v1 + *(a1 + 20), v3);
  CRKeyPath.init(_:)();
  v10[1] = v7;
  sub_1005B981C(&qword_1019FA388, &unk_101472530);
  sub_10001A2F8(&qword_1019FA390, &qword_1019FA388, &unk_101472530, &protocol conformance descriptor for [A]);
  return CRKeyPath.init<A>(_:)();
}

uint64_t sub_1011FA124(uint64_t a1, uint64_t a2)
{
  v4 = _s12CellCRDTDataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011FA188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011FA1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1011FA264()
{
  result = qword_101A2CF48;
  if (!qword_101A2CF48)
  {
    result = swift_getWitnessTable(aE_10, &_s6CellIDV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2CF48);
  }

  return result;
}

uint64_t sub_1011FA2B8()
{
  v1 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = qword_101AD9268;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  swift_getKeyPath();
  Capsule.subscript.getter();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1011FA3EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012017B4(a2, v5, type metadata accessor for CRLContainerItemCRDTData);
  return Capsule.Ref.subscript.setter();
}

void (*sub_1011FA4B0(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v5 - 8) + 64));
  }

  v8 = v7;
  v4[11] = v7;
  v9 = *(*(type metadata accessor for CRLContainerItemCRDTData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = qword_101AD9268;
  v4[13] = v10;
  v4[14] = v11;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v11, v5);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v6 + 8))(v8, v5);
  return sub_1011FA680;
}

void sub_1011FA680(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 13);
  v4 = *(*a1 + 11);
  v5 = *(*a1 + 12);
  if (a2)
  {
    v6 = sub_1012017B4(*(*a1 + 13), v5, type metadata accessor for CRLContainerItemCRDTData);
    __chkstk_darwin(v6);
    __chkstk_darwin(v7);
    swift_beginAccess();
    Capsule.mutate<A>(_:)();
    swift_endAccess();
    sub_100D62090(v5);
  }

  else
  {
    __chkstk_darwin(a1);
    __chkstk_darwin(v8);
    swift_beginAccess();
    Capsule.mutate<A>(_:)();
    swift_endAccess();
  }

  sub_100D62090(v3);
  free(v3);
  free(v5);
  free(v4);
  free(v2);
}

uint64_t *sub_1011FA8B4(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v53 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v46 - v7;
  v8 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v46 - v11;
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v15);
  v47 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v46 - v18;
  __chkstk_darwin(v19);
  v51 = &v46 - v20;
  __chkstk_darwin(v21);
  v55 = &v46 - v22;
  v23 = *(*v2 + 736);
  swift_beginAccess();
  if (a1)
  {
    v24 = v51;
    sub_10000BE14(v2 + v23, v51, &unk_101A226A0, &unk_10146E610);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0, &unk_10146E610, byte_101478D54);
    CRType.copy(renamingReferences:)();
    sub_10000CAAC(v24, &unk_101A226A0, &unk_10146E610);
    v25 = qword_101AD8098;
    swift_beginAccess();
    v26 = v2 + v25;
    v27 = v52;
    sub_1012017B4(v26, v52, type metadata accessor for CRLContainerItemCRDTData);
    sub_10120176C(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0184);
    v28 = v14;
    CRType.copy(renamingReferences:)();
    sub_100D62090(v27);
    v29 = qword_101AD9268;
    swift_beginAccess();
    v30 = v53;
    v31 = *(v53 + 16);
    v32 = v2 + v29;
    v33 = v54;
    v31(v54, v32, v4);
    Capsule.copy()();
    v34 = v4;
    (*(v30 + 8))(v33, v4);
  }

  else
  {
    sub_10000BE14(v2 + v23, v55, &unk_101A226A0, &unk_10146E610);
    v35 = qword_101AD8098;
    swift_beginAccess();
    v28 = v14;
    sub_1012017B4(v2 + v35, v14, type metadata accessor for CRLContainerItemCRDTData);
    v36 = qword_101AD9268;
    swift_beginAccess();
    v31 = *(v53 + 16);
    v34 = v4;
    v31(v56, v2 + v36, v4);
  }

  v37 = v51;
  sub_10000BE14(v55, v51, &unk_101A226A0, &unk_10146E610);
  v48 = v28;
  v38 = v52;
  sub_1012017B4(v28, v52, type metadata accessor for CRLContainerItemCRDTData);
  v39 = v54;
  v31(v54, v56, v34);
  v57[0] = 0x4000000000000;
  v57[1] = 0x2000400000000;
  v57[2] = 0x4000000000000;
  v57[3] = 0;
  v58 = 1;
  type metadata accessor for CRLTableItemData(0);
  v40 = swift_allocObject();
  v31((v40 + qword_101AD9268), v39, v34);
  v41 = v49;
  sub_10000BE14(v37, v49, &unk_101A226A0, &unk_10146E610);
  v42 = v50;
  sub_1012017B4(v38, v50, type metadata accessor for CRLContainerItemCRDTData);
  sub_1012017B4(v42, v40 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v43 = v47;
  sub_10000BE14(v41, v47, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v43, v40 + *(*v40 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v43, &unk_101A226A0, &unk_10146E610);
  sub_100D62090(v42);
  sub_10000CAAC(v41, &unk_101A226A0, &unk_10146E610);
  v44 = *(v53 + 8);
  v44(v54, v34);
  sub_100D62090(v38);
  sub_10000CAAC(v37, &unk_101A226A0, &unk_10146E610);
  v44(v56, v34);
  sub_100D62090(v48);
  sub_10000CAAC(v55, &unk_101A226A0, &unk_10146E610);
  return sub_100747AF0(v57, 12);
}

void *sub_1011FAF9C(__n128 a1)
{
  v2 = _s10RowElementVMa(0);
  v92 = *(v2 - 8);
  v93 = v2;
  __chkstk_darwin(v2);
  v81 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = (&v72 - v5);
  v6 = sub_1005B981C(&qword_101A2D390, &unk_1014D2360);
  __chkstk_darwin(v6 - 8);
  v100 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v72 - v9;
  v95 = sub_1005B981C(&unk_101A2CA40, &unk_1014D1160);
  v78 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v72 - v12;
  __chkstk_darwin(v13);
  v76 = &v72 - v14;
  v97 = sub_1005B981C(&qword_101A2D3B8, &unk_1014D23B0);
  v74 = *(v97 - 8);
  __chkstk_darwin(v97);
  v16 = &v72 - v15;
  v17 = sub_1005B981C(&unk_101A2C7D0, &unk_1014D0DC0);
  v75 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v72 - v21;
  v23 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v87 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v72 - v27;
  v29 = qword_101AD9268;
  swift_beginAccess();
  v30 = *(v24 + 16);
  v94 = v1;
  v85 = v24 + 16;
  v86 = v29;
  v84 = v30;
  v30(v28, v1 + v29, v23);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v31 = *(v24 + 8);
  v88 = v24 + 8;
  v89 = v23;
  v83 = v31;
  v31(v28, v23);
  sub_10001A2F8(&qword_101A2D3B0, &unk_101A2C7D0, &unk_1014D0DC0, &protocol conformance descriptor for CROrderedDictionary<A, B>);
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v101 = _swiftEmptyArrayStorage;
  sub_1007766C4(0, v32 & ~(v32 >> 63), 0);
  v33 = v101;
  v34 = *(v75 + 16);
  v73 = v22;
  v34(v19, v22, v17);
  v96 = v16;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v72 = v17;
  if (v32)
  {
    v80 = (v78 + 48);
    v79 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8, &unk_1014D23B0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
    v36 = v100;
    v37 = v91;
    v38 = v87;
    while (1)
    {
      v99 = v32;
      v39 = v33;
      dispatch thunk of IteratorProtocol.next()();
      v40 = v95;
      result = (*v80)(v36, 1, v95);
      if (result == 1)
      {
        goto LABEL_18;
      }

      v41 = v36;
      v42 = v90;
      sub_10000BE14(v41, v90, &unk_101A2CA40, &unk_1014D1160);
      v98 = *(v40 + 48);
      sub_10000BE14(v100, v37, &unk_101A2CA40, &unk_1014D1160);
      v43 = *(v40 + 48);
      v44 = v89;
      v84(v38, v94 + v86, v89);
      v45 = sub_1005B981C(&qword_1019FA3A8, &qword_1014D2410);
      _s15CapsuleDatabaseVMa(0);
      sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
      v46 = v81;
      Ref.subscript.getter();
      v83(v38, v44);
      v47 = *(*(v45 - 8) + 8);
      v47(v37 + v43, v45);
      v48 = type metadata accessor for UUID();
      v49 = *(v48 - 8);
      (*(v49 + 32))(v46, v42, v48);
      (*(v49 + 8))(v37, v48);
      v50 = v42 + v98;
      v36 = v100;
      v47(v50, v45);
      sub_10000CAAC(v36, &unk_101A2CA40, &unk_1014D1160);
      v33 = v39;
      v101 = v39;
      v52 = v39[2];
      v51 = v39[3];
      if (v52 >= v51 >> 1)
      {
        sub_1007766C4((v51 > 1), v52 + 1, 1);
        v33 = v101;
      }

      *(v33 + 16) = v52 + 1;
      sub_10120181C(v46, v33 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v52, _s10RowElementVMa);
      v32 = v99 - 1;
      v53 = v82;
      if (v99 == 1)
      {
        goto LABEL_10;
      }
    }
  }

  v53 = v82;
LABEL_10:
  v54 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8, &unk_1014D23B0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
  v55 = v77;
  v98 = v54;
  dispatch thunk of IteratorProtocol.next()();
  v56 = *(v78 + 48);
  v57 = v95;
  v78 += 48;
  v82 = v56;
  if (v56(v55, 1, v95) != 1)
  {
    v58 = v90;
    do
    {
      v100 = v33;
      v59 = v55;
      v60 = v76;
      sub_10003DFF8(v59, v76, &unk_101A2CA40, &unk_1014D1160);
      sub_10000BE14(v60, v58, &unk_101A2CA40, &unk_1014D1160);
      v99 = *(v57 + 48);
      v61 = v91;
      sub_10000BE14(v60, v91, &unk_101A2CA40, &unk_1014D1160);
      v62 = *(v57 + 48);
      v63 = v87;
      v64 = v89;
      v84(v87, v94 + v86, v89);
      v65 = sub_1005B981C(&qword_1019FA3A8, &qword_1014D2410);
      _s15CapsuleDatabaseVMa(0);
      sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
      Ref.subscript.getter();
      v66 = v64;
      v33 = v100;
      v83(v63, v66);
      sub_10000CAAC(v60, &unk_101A2CA40, &unk_1014D1160);
      v67 = *(*(v65 - 8) + 8);
      v55 = v77;
      v67(v61 + v62, v65);
      v68 = type metadata accessor for UUID();
      v69 = *(v68 - 8);
      (*(v69 + 32))(v53, v58, v68);
      (*(v69 + 8))(v61, v68);
      v67(v58 + v99, v65);
      v101 = v33;
      v71 = *(v33 + 16);
      v70 = *(v33 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1007766C4((v70 > 1), v71 + 1, 1);
        v33 = v101;
      }

      *(v33 + 16) = v71 + 1;
      sub_10120181C(v53, v33 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v71, _s10RowElementVMa);
      dispatch thunk of IteratorProtocol.next()();
      v57 = v95;
    }

    while (v82(v55, 1, v95) != 1);
  }

  (*(v74 + 8))(v96, v97);
  (*(v75 + 8))(v73, v72);
  sub_10000CAAC(v55, &qword_101A2D390, &unk_1014D2360);
  return v33;
}

void *sub_1011FBBD8()
{
  v66 = type metadata accessor for UUID();
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v54 = &v54 - v3;
  v4 = sub_1005B981C(&qword_101A2D390, &unk_1014D2360);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v54 - v8;
  v67 = sub_1005B981C(&unk_101A2CA40, &unk_1014D1160);
  v61 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v54 - v11;
  v70 = sub_1005B981C(&qword_101A2D3B8, &unk_1014D23B0);
  v57 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - v12;
  v13 = sub_1005B981C(&unk_101A2C7D0, &unk_1014D0DC0);
  v59 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = qword_101AD9268;
  swift_beginAccess();
  (*(v19 + 16))(v21, v0 + v22, v18);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v19 + 8))(v21, v18);
  sub_10001A2F8(&qword_101A2D3B0, &unk_101A2C7D0, &unk_1014D0DC0, &protocol conformance descriptor for CROrderedDictionary<A, B>);
  v23 = dispatch thunk of Sequence.underestimatedCount.getter();
  v73 = _swiftEmptyArrayStorage;
  sub_100776524(0, v23 & ~(v23 >> 63), 0);
  v72 = v73;
  v24 = *(v59 + 16);
  v55 = v17;
  v24(v64, v17, v13);
  v56 = v13;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v23 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v23)
  {
    v63 = (v61 + 48);
    v26 = (v69 + 32);
    v64 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8, &unk_1014D23B0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
    v62 = v6;
    do
    {
      dispatch thunk of IteratorProtocol.next()();
      v27 = v67;
      result = (*v63)(v6, 1, v67);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v28 = v68;
      sub_10000BE14(v6, v68, &unk_101A2CA40, &unk_1014D1160);
      v29 = *(v27 + 48);
      v30 = *v26;
      v32 = v65;
      v31 = v66;
      (*v26)(v65, v28, v66);
      v33 = sub_1005B981C(&qword_1019FA3A8, &qword_1014D2410);
      (*(*(v33 - 8) + 8))(v28 + v29, v33);
      sub_10000CAAC(v6, &unk_101A2CA40, &unk_1014D1160);
      v34 = v72;
      v73 = v72;
      v36 = v72[2];
      v35 = v72[3];
      if (v36 >= v35 >> 1)
      {
        sub_100776524((v35 > 1), v36 + 1, 1);
        v31 = v66;
        v34 = v73;
      }

      v34[2] = v36 + 1;
      v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v72 = v34;
      v30(v34 + v37 + *(v69 + 72) * v36, v32, v31);
      --v23;
      v6 = v62;
    }

    while (v23);
  }

  v38 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8, &unk_1014D23B0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
  v39 = v58;
  v65 = v38;
  dispatch thunk of IteratorProtocol.next()();
  v40 = *(v61 + 48);
  v41 = v67;
  v61 += 48;
  v64 = v40;
  if ((v40)(v39, 1, v67) == 1)
  {
    v42 = v72;
  }

  else
  {
    v43 = (v69 + 32);
    v44 = v66;
    v45 = v54;
    v42 = v72;
    do
    {
      v46 = v60;
      sub_10003DFF8(v39, v60, &unk_101A2CA40, &unk_1014D1160);
      v47 = v68;
      sub_10003DFF8(v46, v68, &unk_101A2CA40, &unk_1014D1160);
      v48 = *(v41 + 48);
      v49 = *v43;
      (*v43)(v45, v47, v44);
      v50 = sub_1005B981C(&qword_1019FA3A8, &qword_1014D2410);
      (*(*(v50 - 8) + 8))(v47 + v48, v50);
      v73 = v42;
      v51 = v39;
      v53 = v42[2];
      v52 = v42[3];
      if (v53 >= v52 >> 1)
      {
        sub_100776524((v52 > 1), v53 + 1, 1);
        v42 = v73;
      }

      v42[2] = v53 + 1;
      v49(v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v53, v45, v44);
      dispatch thunk of IteratorProtocol.next()();
      v39 = v51;
    }

    while ((v64)(v51, 1, v41) != 1);
  }

  (*(v57 + 8))(v71, v70);
  (*(v59 + 8))(v55, v56);
  sub_10000CAAC(v39, &qword_101A2D390, &unk_1014D2360);
  return v42;
}

void *sub_1011FC4B4()
{
  v1 = _s13ColumnElementVMa(0);
  v91 = *(v1 - 8);
  v92 = v1;
  __chkstk_darwin(v1);
  v80 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = (&v71 - v4);
  v5 = sub_1005B981C(&qword_101A2D370, &qword_1014D2328);
  __chkstk_darwin(v5 - 8);
  v99 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v71 - v8;
  v94 = sub_1005B981C(&qword_101A2CA38, &qword_1014D2330);
  v77 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v71 - v11;
  __chkstk_darwin(v12);
  v75 = &v71 - v13;
  v96 = sub_1005B981C(&qword_101A2D3D0, &qword_1014D23E0);
  v73 = *(v96 - 8);
  __chkstk_darwin(v96);
  v15 = &v71 - v14;
  v16 = sub_1005B981C(&unk_101A2D830, &qword_101472540);
  v74 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  v22 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v86 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v71 - v26;
  v28 = qword_101AD9268;
  swift_beginAccess();
  v29 = *(v23 + 16);
  v93 = v0;
  v84 = v23 + 16;
  v85 = v28;
  v83 = v29;
  v29(v27, v0 + v28, v22);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v23 + 8);
  v87 = v23 + 8;
  v88 = v22;
  v82 = v30;
  v30(v27, v22);
  sub_10001A2F8(&qword_101A2D3C8, &unk_101A2D830, &qword_101472540, &protocol conformance descriptor for CROrderedDictionary<A, B>);
  v31 = dispatch thunk of Sequence.underestimatedCount.getter();
  v100 = _swiftEmptyArrayStorage;
  sub_1007766E4(0, v31 & ~(v31 >> 63), 0);
  v32 = v100;
  v33 = *(v74 + 16);
  v72 = v21;
  v33(v18, v21, v16);
  v95 = v15;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v31 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v71 = v16;
  if (v31)
  {
    v79 = (v77 + 48);
    v78 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0, &qword_1014D23E0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
    v35 = v99;
    v36 = v90;
    v37 = v86;
    while (1)
    {
      v98 = v31;
      v38 = v32;
      dispatch thunk of IteratorProtocol.next()();
      v39 = v94;
      result = (*v79)(v35, 1, v94);
      if (result == 1)
      {
        goto LABEL_18;
      }

      v40 = v35;
      v41 = v89;
      sub_10000BE14(v40, v89, &qword_101A2CA38, &qword_1014D2330);
      v97 = *(v39 + 48);
      sub_10000BE14(v99, v36, &qword_101A2CA38, &qword_1014D2330);
      v42 = *(v39 + 48);
      v43 = v88;
      v83(v37, v93 + v85, v88);
      v44 = sub_1005B981C(&qword_101A2C8B0, &unk_101472570);
      _s15CapsuleDatabaseVMa(0);
      sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
      v45 = v80;
      Ref.subscript.getter();
      v82(v37, v43);
      v46 = *(*(v44 - 8) + 8);
      v46(v36 + v42, v44);
      v47 = type metadata accessor for UUID();
      v48 = *(v47 - 8);
      (*(v48 + 32))(v45, v41, v47);
      (*(v48 + 8))(v36, v47);
      v49 = v41 + v97;
      v35 = v99;
      v46(v49, v44);
      sub_10000CAAC(v35, &qword_101A2CA38, &qword_1014D2330);
      v32 = v38;
      v100 = v38;
      v51 = v38[2];
      v50 = v38[3];
      if (v51 >= v50 >> 1)
      {
        sub_1007766E4((v50 > 1), v51 + 1, 1);
        v32 = v100;
      }

      *(v32 + 16) = v51 + 1;
      sub_10120181C(v45, v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v51, _s13ColumnElementVMa);
      v31 = v98 - 1;
      v52 = v81;
      if (v98 == 1)
      {
        goto LABEL_10;
      }
    }
  }

  v52 = v81;
LABEL_10:
  v53 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0, &qword_1014D23E0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
  v54 = v76;
  v97 = v53;
  dispatch thunk of IteratorProtocol.next()();
  v55 = *(v77 + 48);
  v56 = v94;
  v77 += 48;
  v81 = v55;
  if (v55(v54, 1, v94) != 1)
  {
    v57 = v89;
    do
    {
      v99 = v32;
      v58 = v54;
      v59 = v75;
      sub_10003DFF8(v58, v75, &qword_101A2CA38, &qword_1014D2330);
      sub_10000BE14(v59, v57, &qword_101A2CA38, &qword_1014D2330);
      v98 = *(v56 + 48);
      v60 = v90;
      sub_10000BE14(v59, v90, &qword_101A2CA38, &qword_1014D2330);
      v61 = *(v56 + 48);
      v62 = v86;
      v63 = v88;
      v83(v86, v93 + v85, v88);
      v64 = sub_1005B981C(&qword_101A2C8B0, &unk_101472570);
      _s15CapsuleDatabaseVMa(0);
      sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
      Ref.subscript.getter();
      v65 = v63;
      v32 = v99;
      v82(v62, v65);
      sub_10000CAAC(v59, &qword_101A2CA38, &qword_1014D2330);
      v66 = *(*(v64 - 8) + 8);
      v54 = v76;
      v66(v60 + v61, v64);
      v67 = type metadata accessor for UUID();
      v68 = *(v67 - 8);
      (*(v68 + 32))(v52, v57, v67);
      (*(v68 + 8))(v60, v67);
      v66(v57 + v98, v64);
      v100 = v32;
      v70 = *(v32 + 16);
      v69 = *(v32 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1007766E4((v69 > 1), v70 + 1, 1);
        v32 = v100;
      }

      *(v32 + 16) = v70 + 1;
      sub_10120181C(v52, v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v70, _s13ColumnElementVMa);
      dispatch thunk of IteratorProtocol.next()();
      v56 = v94;
    }

    while (v81(v54, 1, v94) != 1);
  }

  (*(v73 + 8))(v95, v96);
  (*(v74 + 8))(v72, v71);
  sub_10000CAAC(v54, &qword_101A2D370, &qword_1014D2328);
  return v32;
}

void *sub_1011FD0F0()
{
  v66 = type metadata accessor for UUID();
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v54 = &v54 - v3;
  v4 = sub_1005B981C(&qword_101A2D370, &qword_1014D2328);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v54 - v8;
  v67 = sub_1005B981C(&qword_101A2CA38, &qword_1014D2330);
  v61 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v54 - v11;
  v70 = sub_1005B981C(&qword_101A2D3D0, &qword_1014D23E0);
  v57 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - v12;
  v13 = sub_1005B981C(&unk_101A2D830, &qword_101472540);
  v59 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = qword_101AD9268;
  swift_beginAccess();
  (*(v19 + 16))(v21, v0 + v22, v18);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v19 + 8))(v21, v18);
  sub_10001A2F8(&qword_101A2D3C8, &unk_101A2D830, &qword_101472540, &protocol conformance descriptor for CROrderedDictionary<A, B>);
  v23 = dispatch thunk of Sequence.underestimatedCount.getter();
  v73 = _swiftEmptyArrayStorage;
  sub_100776524(0, v23 & ~(v23 >> 63), 0);
  v72 = v73;
  v24 = *(v59 + 16);
  v55 = v17;
  v24(v64, v17, v13);
  v56 = v13;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v23 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v23)
  {
    v63 = (v61 + 48);
    v26 = (v69 + 32);
    v64 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0, &qword_1014D23E0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
    v62 = v6;
    do
    {
      dispatch thunk of IteratorProtocol.next()();
      v27 = v67;
      result = (*v63)(v6, 1, v67);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v28 = v68;
      sub_10000BE14(v6, v68, &qword_101A2CA38, &qword_1014D2330);
      v29 = *(v27 + 48);
      v30 = *v26;
      v32 = v65;
      v31 = v66;
      (*v26)(v65, v28, v66);
      v33 = sub_1005B981C(&qword_101A2C8B0, &unk_101472570);
      (*(*(v33 - 8) + 8))(v28 + v29, v33);
      sub_10000CAAC(v6, &qword_101A2CA38, &qword_1014D2330);
      v34 = v72;
      v73 = v72;
      v36 = v72[2];
      v35 = v72[3];
      if (v36 >= v35 >> 1)
      {
        sub_100776524((v35 > 1), v36 + 1, 1);
        v31 = v66;
        v34 = v73;
      }

      v34[2] = v36 + 1;
      v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v72 = v34;
      v30(v34 + v37 + *(v69 + 72) * v36, v32, v31);
      --v23;
      v6 = v62;
    }

    while (v23);
  }

  v38 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0, &qword_1014D23E0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
  v39 = v58;
  v65 = v38;
  dispatch thunk of IteratorProtocol.next()();
  v40 = *(v61 + 48);
  v41 = v67;
  v61 += 48;
  v64 = v40;
  if ((v40)(v39, 1, v67) == 1)
  {
    v42 = v72;
  }

  else
  {
    v43 = (v69 + 32);
    v44 = v66;
    v45 = v54;
    v42 = v72;
    do
    {
      v46 = v60;
      sub_10003DFF8(v39, v60, &qword_101A2CA38, &qword_1014D2330);
      v47 = v68;
      sub_10003DFF8(v46, v68, &qword_101A2CA38, &qword_1014D2330);
      v48 = *(v41 + 48);
      v49 = *v43;
      (*v43)(v45, v47, v44);
      v50 = sub_1005B981C(&qword_101A2C8B0, &unk_101472570);
      (*(*(v50 - 8) + 8))(v47 + v48, v50);
      v73 = v42;
      v51 = v39;
      v53 = v42[2];
      v52 = v42[3];
      if (v53 >= v52 >> 1)
      {
        sub_100776524((v52 > 1), v53 + 1, 1);
        v42 = v73;
      }

      v42[2] = v53 + 1;
      v49(v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v53, v45, v44);
      dispatch thunk of IteratorProtocol.next()();
      v39 = v51;
    }

    while ((v64)(v51, 1, v41) != 1);
  }

  (*(v57 + 8))(v71, v70);
  (*(v59 + 8))(v55, v56);
  sub_10000CAAC(v39, &qword_101A2D370, &qword_1014D2328);
  return v42;
}

void *sub_1011FD9CC()
{
  v179 = _s12CellCRDTDataVMa(0);
  __chkstk_darwin(v179);
  v178 = &v168 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_101A2D368, &qword_1014D2308);
  __chkstk_darwin(v2 - 8);
  v212 = (&v168 - v3);
  v192 = sub_1005B981C(&qword_1019F6CB8, &unk_10146FA80);
  v194 = *(v192 - 8);
  __chkstk_darwin(v192);
  v211 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v193 = &v168 - v6;
  v224 = sub_1005B981C(&unk_101A2C9D0, &unk_1014C7030);
  v222 = *(v224 - 8);
  __chkstk_darwin(v224);
  v233 = &v168 - v7;
  v8 = sub_1005B981C(&qword_101A2C9E8, &unk_1014D2310);
  __chkstk_darwin(v8 - 8);
  v218 = &v168 - v9;
  v221 = sub_1005B981C(&qword_101A2C9F0, &qword_1014D1148);
  v170 = *(v221 - 8);
  __chkstk_darwin(v221);
  v220 = &v168 - v10;
  v182 = sub_1005B981C(&qword_1019FA370, &qword_1014D2320);
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v169 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v180 = &v168 - v13;
  v14 = sub_1005B981C(&qword_101A2D370, &qword_1014D2328);
  __chkstk_darwin(v14 - 8);
  v217 = &v168 - v15;
  v177 = sub_1005B981C(&qword_101A2CA38, &qword_1014D2330);
  v219 = *(v177 - 8);
  __chkstk_darwin(v177);
  v200 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v199 = &v168 - v18;
  __chkstk_darwin(v19);
  v203 = &v168 - v20;
  v202 = sub_1005B981C(&qword_101A2D378, &unk_1014D2338);
  __chkstk_darwin(v202);
  v201 = (&v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v198 = (&v168 - v23);
  v176 = sub_1005B981C(&unk_101A2D830, &qword_101472540);
  v173 = *(v176 - 8);
  __chkstk_darwin(v176);
  v175 = &v168 - v24;
  v174 = sub_1005B981C(&qword_101A2D380, &qword_1014D2348);
  __chkstk_darwin(v174);
  v216 = &v168 - v25;
  v26 = sub_1005B981C(&qword_101A2D388, &unk_1014D2350);
  __chkstk_darwin(v26 - 8);
  v172 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v183 = &v168 - v29;
  v30 = sub_1005B981C(&qword_101A145A0, &qword_1014C7010);
  v230 = *(v30 - 8);
  v231 = v30;
  __chkstk_darwin(v30);
  v197 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v210 = &v168 - v33;
  v34 = sub_1005B981C(&qword_101A2D390, &unk_1014D2360);
  __chkstk_darwin(v34 - 8);
  v36 = &v168 - v35;
  v232 = sub_1005B981C(&unk_101A2CA40, &unk_1014D1160);
  v223 = *(v232 - 8);
  __chkstk_darwin(v232);
  v209 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v208 = &v168 - v39;
  __chkstk_darwin(v40);
  v215 = (&v168 - v41);
  v214 = sub_1005B981C(&qword_101A2D398, &unk_1014D2370);
  __chkstk_darwin(v214);
  v213 = (&v168 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  v207 = (&v168 - v44);
  v45 = sub_1005B981C(&unk_101A2C7D0, &unk_1014D0DC0);
  v228 = *(v45 - 8);
  v229 = v45;
  __chkstk_darwin(v45);
  v227 = &v168 - v46;
  v47 = sub_1005B981C(&qword_101A2D3A0, &qword_1014D2380);
  v48 = v47 - 8;
  __chkstk_darwin(v47);
  v50 = &v168 - v49;
  v51 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v168 = &v168 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &v168 - v55;
  v57 = sub_1005B981C(&qword_101A2D3A8, &qword_1014D2388);
  __chkstk_darwin(v57 - 8);
  v59 = &v168 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v168 - v61;
  v63 = qword_101AD9268;
  swift_beginAccess();
  v64 = *(v52 + 16);
  v191 = v0;
  v188 = v63;
  v187 = v52 + 16;
  v186 = v64;
  v64(v56, v0 + v63, v51);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v65 = *(v52 + 8);
  v184 = v56;
  v190 = v51;
  v66 = v51;
  v67 = v50;
  v189 = v52 + 8;
  v185 = v65;
  v65(v56, v66);
  v234 = _swiftEmptyArrayStorage;
  sub_100776724(0, 0, 0);
  v68 = v234;
  v171 = v62;
  sub_10000BE14(v62, v59, &qword_101A2D3A8, &qword_1014D2388);
  (*(v228 + 32))(v227, v59, v229);
  sub_10001A2F8(&qword_101A2D3B0, &unk_101A2C7D0, &unk_1014D0DC0, &protocol conformance descriptor for CROrderedDictionary<A, B>);
  dispatch thunk of Sequence.makeIterator()();
  v206 = *(v48 + 44);
  *&v50[v206] = 0;
  v69 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8, &unk_1014D23B0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
  sub_1005B981C(&qword_101A2D3B8, &unk_1014D23B0);
  v205 = v69;
  dispatch thunk of IteratorProtocol.next()();
  v70 = *(v223 + 48);
  v223 += 48;
  v204 = v70;
  if (v70(v36, 1, v232) != 1)
  {
    v72 = 0;
    v196 = v36;
    v195 = v50;
    while (1)
    {
      v73 = v215;
      sub_10003DFF8(v36, v215, &unk_101A2CA40, &unk_1014D1160);
      v74 = v214;
      v75 = *(v214 + 48);
      v76 = v213;
      *v213 = v72;
      sub_10003DFF8(v73, v76 + v75, &unk_101A2CA40, &unk_1014D1160);
      if (__OFADD__(v72, 1))
      {
        break;
      }

      v228 = v72;
      *(v67 + v206) = v72 + 1;
      v229 = v68;
      v77 = v207;
      sub_10003DFF8(v76, v207, &qword_101A2D398, &unk_1014D2370);
      v78 = *v77;
      v79 = v77 + *(v74 + 48);
      v80 = v232;
      v225 = *(v232 + 48);
      v226 = v231[12];
      v227 = v78;
      v81 = type metadata accessor for UUID();
      v82 = *(v81 - 8);
      v83 = v208;
      (*(v82 + 16))(v208, v79, v81);
      v84 = *(v80 + 48);
      v85 = sub_1005B981C(&qword_1019FA3A8, &qword_1014D2410);
      v86 = *(v85 - 8);
      (*(v86 + 16))(v83 + v84, &v79[v225], v85);
      v87 = v209;
      sub_10003DFF8(v83, v209, &unk_101A2CA40, &unk_1014D1160);
      v88 = *(v80 + 48);
      v89 = v210;
      (*(v82 + 32))(v210, v87, v81);
      (*(v86 + 8))(v87 + v88, v85);
      *(v89 + v226) = v227;
      v90 = v77;
      v68 = v229;
      sub_10000CAAC(v90, &qword_101A2D398, &unk_1014D2370);
      v234 = v68;
      v92 = v68[2];
      v91 = v68[3];
      if (v92 >= v91 >> 1)
      {
        sub_100776724((v91 > 1), v92 + 1, 1);
        v68 = v234;
      }

      v68[2] = v92 + 1;
      sub_10003DFF8(v89, v68 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v92, &qword_101A145A0, &qword_1014C7010);
      sub_1005B981C(&qword_101A2D3B8, &unk_1014D23B0);
      v36 = v196;
      v67 = v195;
      dispatch thunk of IteratorProtocol.next()();
      v93 = v204(v36, 1, v232);
      v72 = v228 + 1;
      if (v93 == 1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_2:
  sub_10000CAAC(v67, &qword_101A2D3A0, &qword_1014D2380);
  sub_10000CAAC(v171, &qword_101A2D3A8, &qword_1014D2388);
  sub_10000CAAC(v36, &qword_101A2D390, &unk_1014D2360);
  if (v68[2])
  {
    sub_1005B981C(&qword_101A0EE70, &unk_1014924A0);
    v71 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v71 = _swiftEmptyDictionarySingleton;
  }

  v94 = v216;
  v234 = v71;

  sub_101201220(v95, 1, &v234);
  v213 = 0;

  v214 = v234;
  v96 = v184;
  v97 = v190;
  v186(v184, v191 + v188, v190);
  swift_getKeyPath();
  v98 = v183;
  Capsule.subscript.getter();

  v185(v96, v97);
  v234 = _swiftEmptyArrayStorage;
  sub_100776724(0, 0, 0);
  v99 = v234;
  v100 = v172;
  sub_10000BE14(v98, v172, &qword_101A2D388, &unk_1014D2350);
  (*(v173 + 32))(v175, v100, v176);
  sub_10001A2F8(&qword_101A2D3C8, &unk_101A2D830, &qword_101472540, &protocol conformance descriptor for CROrderedDictionary<A, B>);
  dispatch thunk of Sequence.makeIterator()();
  v225 = *(v174 + 36);
  *(v94 + v225) = 0;
  v101 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0, &qword_1014D23E0, &protocol conformance descriptor for CROrderedDictionary<A, B>.Iterator);
  sub_1005B981C(&qword_101A2D3D0, &qword_1014D23E0);
  v102 = v217;
  v223 = v101;
  dispatch thunk of IteratorProtocol.next()();
  v103 = *(v219 + 48);
  v104 = v177;
  v219 += 48;
  v215 = v103;
  if ((v103)(v102, 1, v177) != 1)
  {
    v106 = 0;
    while (1)
    {
      v107 = v102;
      v108 = v203;
      sub_10003DFF8(v107, v203, &qword_101A2CA38, &qword_1014D2330);
      v109 = v202;
      v110 = *(v202 + 48);
      v111 = v201;
      *v201 = v106;
      sub_10003DFF8(v108, v111 + v110, &qword_101A2CA38, &qword_1014D2330);
      if (__OFADD__(v106, 1))
      {
        break;
      }

      v229 = v106;
      *(v94 + v225) = v106 + 1;
      v112 = v198;
      sub_10003DFF8(v111, v198, &qword_101A2D378, &unk_1014D2338);
      v113 = *v112;
      v114 = v112 + *(v109 + 48);
      v226 = *(v104 + 48);
      v227 = v231[12];
      v228 = v113;
      v115 = type metadata accessor for UUID();
      v116 = *(v115 - 8);
      v232 = v99;
      v117 = v116;
      v118 = v199;
      (*(v116 + 16))(v199, v114, v115);
      v119 = *(v104 + 48);
      v120 = sub_1005B981C(&qword_101A2C8B0, &unk_101472570);
      v121 = *(v120 - 8);
      (*(v121 + 16))(v118 + v119, &v114[v226], v120);
      v122 = v200;
      sub_10003DFF8(v118, v200, &qword_101A2CA38, &qword_1014D2330);
      v123 = *(v104 + 48);
      v124 = v197;
      (*(v117 + 32))(v197, v122, v115);
      v99 = v232;
      (*(v121 + 8))(v122 + v123, v120);
      v125 = v124;
      *&v227[v124] = v228;
      sub_10000CAAC(v112, &qword_101A2D378, &unk_1014D2338);
      v234 = v99;
      v127 = v99[2];
      v126 = v99[3];
      if (v127 >= v126 >> 1)
      {
        sub_100776724((v126 > 1), v127 + 1, 1);
        v99 = v234;
      }

      v99[2] = v127 + 1;
      sub_10003DFF8(v125, v99 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v127, &qword_101A145A0, &qword_1014C7010);
      sub_1005B981C(&qword_101A2D3D0, &qword_1014D23E0);
      v102 = v217;
      v94 = v216;
      dispatch thunk of IteratorProtocol.next()();
      v128 = (v215)(v102, 1, v104);
      v106 = v229 + 1;
      if (v128 == 1)
      {
        goto LABEL_12;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

LABEL_12:
  sub_10000CAAC(v94, &qword_101A2D380, &qword_1014D2348);
  sub_10000CAAC(v183, &qword_101A2D388, &unk_1014D2350);
  sub_10000CAAC(v102, &qword_101A2D370, &qword_1014D2328);
  if (v99[2])
  {
    sub_1005B981C(&qword_101A0EE70, &unk_1014924A0);
    v105 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v105 = _swiftEmptyDictionarySingleton;
  }

  v129 = v214;
  v130 = v213;
  v234 = v105;

  sub_101201220(v131, 1, &v234);
  if (v130)
  {
    goto LABEL_44;
  }

  v232 = v234;
  v132 = v168;
  v133 = v190;
  v186(v168, v191 + v188, v190);
  swift_getKeyPath();
  v134 = v180;
  Capsule.subscript.getter();

  v185(v132, v133);
  (*(v181 + 16))(v169, v134, v182);
  sub_10001A2F8(&qword_101A2C9F8, &qword_1019FA370, &qword_1014D2320, &protocol conformance descriptor for CRDictionary<A, B>);
  dispatch thunk of Sequence.makeIterator()();
  v135 = sub_10001A2F8(&unk_101A2CA00, &qword_101A2C9F0, &qword_1014D1148, &protocol conformance descriptor for CRDictionary<A, B>.Iterator);
  v136 = v218;
  dispatch thunk of IteratorProtocol.next()();
  v137 = *(v222 + 48);
  v222 += 48;
  if ((v137)(v136, 1, v224) == 1)
  {
    v138 = _swiftEmptyArrayStorage;
  }

  else
  {
    v141 = (v194 + 56);
    v142 = (v194 + 48);
    v138 = _swiftEmptyArrayStorage;
    v143 = v192;
    v231 = v137;
    do
    {
      v144 = v233;
      sub_10003DFF8(v136, v233, &unk_101A2C9D0, &unk_1014C7030);
      if (*(v129 + 16) && (v145 = sub_10003E994(v144), (v146 & 1) != 0) && (v147 = v232, *(v232 + 16)))
      {
        v148 = v135;
        v149 = *(*(v129 + 56) + 8 * v145);
        v150 = _s6CellIDVMa(0);
        v151 = v233;
        v152 = sub_10003E994(v233 + *(v150 + 20));
        if (v153)
        {
          v230 = *(*(v147 + 56) + 8 * v152);
          v154 = v184;
          v155 = v190;
          v186(v184, v191 + v188, v190);
          sub_10120176C(&unk_101A2CA20, _s12CellCRDTDataVMa, "q\x1B6");
          v156 = v178;
          Capsule.subscript.getter();
          v157 = v155;
          v129 = v214;
          v185(v154, v157);
          v158 = *(v143 + 48);
          v159 = *(v192 + 64);
          v160 = v212;
          v161 = v230;
          *v212 = v149;
          *(v160 + 8) = v161;
          sub_1012017B4(v151, v160 + v158, _s6CellIDVMa);
          v162 = v160 + v159;
          v143 = v192;
          sub_10120181C(v156, v162, _s12CellCRDTDataVMa);
          v163 = 0;
        }

        else
        {
          v163 = 1;
          v160 = v212;
        }

        v135 = v148;
        v137 = v231;
      }

      else
      {
        v163 = 1;
        v160 = v212;
      }

      (*v141)(v160, v163, 1, v143);
      sub_10000CAAC(v233, &unk_101A2C9D0, &unk_1014C7030);
      if ((*v142)(v160, 1, v143) == 1)
      {
        sub_10000CAAC(v160, &qword_101A2D368, &qword_1014D2308);
      }

      else
      {
        v164 = v160;
        v165 = v193;
        sub_10003DFF8(v164, v193, &qword_1019F6CB8, &unk_10146FA80);
        sub_10003DFF8(v165, v211, &qword_1019F6CB8, &unk_10146FA80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_100B362D4(0, v138[2] + 1, 1, v138);
        }

        v167 = v138[2];
        v166 = v138[3];
        if (v167 >= v166 >> 1)
        {
          v138 = sub_100B362D4((v166 > 1), v167 + 1, 1, v138);
        }

        v138[2] = v167 + 1;
        sub_10003DFF8(v211, v138 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v167, &qword_1019F6CB8, &unk_10146FA80);
      }

      v136 = v218;
      dispatch thunk of IteratorProtocol.next()();
    }

    while ((v137)(v136, 1, v224) != 1);
  }

  (*(v170 + 8))(v220, v221);
  (*(v181 + 8))(v180, v182);
  v139 = sub_10064032C(v138);

  return v139;
}

uint64_t sub_1011FF670(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v45 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  type metadata accessor for CRLTableItemData(0);
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19;
  v42 = v4;
  v43 = v2;
  v21 = *(*v1 + 736);
  swift_beginAccess();
  v41 = v1;
  sub_10000BE14(v1 + v21, v18, &unk_101A226A0, &unk_10146E610);
  v22 = *(*v20 + 736);
  swift_beginAccess();
  sub_10000BE14(v20 + v22, v15, &unk_101A226A0, &unk_10146E610);

  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v23 = static UUID.== infix(_:_:)();
  v24 = *(v7 + 8);
  v25 = v9;
  v26 = v46;
  v24(v25, v46);
  v24(v12, v26);
  if ((v23 & 1) == 0)
  {

    sub_10000CAAC(v15, &unk_101A226A0, &unk_10146E610);
    sub_10000CAAC(v18, &unk_101A226A0, &unk_10146E610);
LABEL_7:
    v38 = 0;
    return v38 & 1;
  }

  v27 = sub_101279020();
  sub_10000CAAC(v15, &unk_101A226A0, &unk_10146E610);
  sub_10000CAAC(v18, &unk_101A226A0, &unk_10146E610);
  if ((v27 & 1) == 0)
  {

    goto LABEL_7;
  }

  v28 = qword_101AD9268;
  v29 = v41;
  swift_beginAccess();
  v31 = v44;
  v30 = v45;
  v32 = *(v45 + 16);
  v33 = v29 + v28;
  v34 = v43;
  v32(v44, v33, v43);
  v35 = qword_101AD9268;
  swift_beginAccess();
  v36 = v20 + v35;
  v37 = v42;
  v32(v42, v36, v34);
  v38 = sub_1011F4C38(v37);

  v39 = *(v30 + 8);
  v39(v37, v34);
  v39(v31, v34);
  return v38 & 1;
}

double sub_1011FFAF0(uint64_t a1)
{
  v1 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-v3];
  type metadata accessor for CRLTableItemData(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v7 = qword_101AD9268;
    v8 = v5;
    swift_beginAccess();
    (*(v2 + 16))(v4, v8 + v7, v1);
    swift_beginAccess();
    _s15CapsuleDatabaseVMa(0);
    sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);

    Capsule.merge<A>(_:)();
    (*(v2 + 8))(v4, v1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1011FFCAC(uint64_t a1)
{
  v2 = type metadata accessor for CRCodableVersion();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = qword_101AD9268;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v10, v6);
  (*(v3 + 104))(v5, enum case for CRCodableVersion.version4(_:), v2);
  v11 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_1011FFEC0(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  type metadata accessor for CRLTableItemData(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = qword_101AD9268;
    swift_beginAccess();
    v12 = *(v3 + 16);
    v12(v8, v1 + v11, v2);
    v13 = qword_101AD9268;
    swift_beginAccess();
    v12(v5, v10 + v13, v2);
    LOBYTE(v13) = Capsule.hasDelta(from:)();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v14(v8, v2);
    return v13 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1012000CC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = v2;
  v5 = type metadata accessor for CRCodableVersion();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = sub_1005B981C(&qword_101A102C8, &qword_1014D2300);
  __chkstk_darwin(v14 - 8);
  v40 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v43 = &v35 - v17;
  v39 = a1;
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = qword_101AD9268;
    swift_beginAccess();
    v21 = *(v8 + 16);
    v21(v13, v3 + v20, v7);
    v22 = qword_101AD9268;
    swift_beginAccess();
    v21(v10, v19 + v22, v7);

    v23 = v43;
    Capsule.delta(_:from:)();
    v24 = *(v8 + 8);
    v24(v10, v7);
    v24(v13, v7);
    v25 = v40;
    sub_10000BE14(v23, v40, &qword_101A102C8, &qword_1014D2300);
    v26 = type metadata accessor for CapsuleMergeableDelta();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_10000CAAC(v23, &qword_101A102C8, &qword_1014D2300);

      sub_10000CAAC(v25, &qword_101A102C8, &qword_1014D2300);
      return 0;
    }

    else
    {
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 104))(v36, enum case for CRCodableVersion.version4(_:), v38);
      v32 = v42;
      v33 = CapsuleMergeableDelta.deltaSerializedData(_:version:)();
      if (v32)
      {

        (*(v29 + 8))(v30, v31);
        sub_10000CAAC(v43, &qword_101A102C8, &qword_1014D2300);
        return (*(v27 + 8))(v25, v26);
      }

      else
      {
        v34 = v33;

        (*(v29 + 8))(v30, v31);
        sub_10000CAAC(v43, &qword_101A102C8, &qword_1014D2300);
        (*(v27 + 8))(v25, v26);
        return v34;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1012005D4(char *a1, unint64_t a2)
{
  v42 = a2;
  v41 = a1;
  v38 = type metadata accessor for UUID();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = type metadata accessor for CRCodableVersion();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapsuleMergeableDelta();
  v40 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for CRCodableVersion.version4(_:), v8, v13);
  v16 = qword_101AD9268;
  swift_beginAccess();
  v17 = *(v5 + 16);
  v39 = v2;
  v17(v7, v2 + v16, v4);
  v18 = v41;
  sub_100024E98(v41, v42);
  _s15CapsuleDatabaseVMa(0);
  sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
  v19 = v43;
  CapsuleMergeableDelta.init<A>(serializedData:version:in:)();
  if (!v19)
  {
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v42 = v12;
    v43 = 0;
    v23 = v39;
    swift_beginAccess();
    v18 = Capsule.merge(delta:)();
    swift_endAccess();
    if ((v18 & 1) == 0)
    {
      v41 = v15;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v35 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v25 = *(*v23 + 744);
      swift_beginAccess();
      v26 = v22;
      (*(v21 + 16))(v20, v23 + v25, v22);
      v27 = UUID.uuidString.getter();
      v29 = v28;
      (*(v21 + 8))(v20, v26);
      *(inited + 56) = &type metadata for String;
      v30 = sub_1000053B0();
      *(inited + 64) = v30;
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v44 = v23;
      type metadata accessor for CRLTableItemData(0);

      v31 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v30;
      *(inited + 72) = v31;
      *(inited + 80) = v32;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v35, &_mh_execute_header, v33, "Capsule delta failed to apply for %{public}@%{public}@", 54, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v15 = v41;
    }

    (*(v40 + 8))(v15, v42);
  }

  return v18 & 1;
}

uint64_t sub_101200B40(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) != 1)
  {
    return sub_100D5EFEC(a1);
  }

  __chkstk_darwin(a1);
  v3 = v2;
  __chkstk_darwin(v2);
  swift_beginAccess();
  sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  Capsule.mutate<A>(_:)();
  if (!v1)
  {
    swift_endAccess();
    a1 = v3;
    return sub_100D5EFEC(a1);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_101200C8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  swift_getKeyPath();
  v7 = Capsule.Ref.subscript.modify();
  v9 = v7;
  if (*(a2 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v10 = v8;
    v12 = v7;
    __chkstk_darwin(v7);
    *(&v11 - 2) = a2;
    type metadata accessor for UUID();
    v14 = CROrderedSet.map<A>(_:)();
    sub_1005B981C(&qword_101A0A360, qword_101489F20);
    sub_10120176C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10001A2F8(&unk_101A09E20, &qword_101A0A360, qword_101489F20, &protocol conformance descriptor for [A]);
    CROrderedSet.init<A>(_:)();
    (*(v4 + 40))(v10, v6, v3);
    v9 = v12;
  }

  v9(v13, 0);
}

uint64_t sub_101200EEC()
{
  v1 = qword_101AD9268;
  v2 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_101200F60()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0, &unk_10146E610);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100D62090(v0 + qword_101AD8098);
  v3 = qword_101AD9268;
  v4 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLTableItemData(uint64_t a1)
{
  result = qword_101A2CF78;
  if (!qword_101A2CF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1012010E0(uint64_t a1)
{
  sub_101201170(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_101201170(uint64_t a1)
{
  if (!qword_101A2CF88)
  {
    _s15CapsuleDatabaseVMa(255);
    sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa, byte_1014D1A20);
    v1 = type metadata accessor for Capsule();
    if (!v2)
    {
      atomic_store(v1, &qword_101A2CF88);
    }
  }
}

uint64_t sub_101201220(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A145A0, &qword_1014C7010);
  __chkstk_darwin(v11);
  v15 = v56 - v14;
  v61 = *(a1 + 16);
  if (!v61)
  {
  }

  v56[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v62 = a1;
  sub_10000BE14(a1 + v17, v56 - v14, &qword_101A145A0, &qword_1014C7010);
  v57 = v8;
  v63 = *(v8 + 32);
  v64 = v7;
  v63(v10, v15, v7);
  v59 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_10003E994(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_10003ECE0(v25, a2 & 1);
    v20 = sub_10003E994(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_100AA4430();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v67 = v28;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v57 + 8))(v10, v64);
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v58 = *(v57 + 72);
  v35 = v20;
  v63((v34 + v58 * v20), v10, v64);
  *(v33[7] + 8 * v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v62;
    if (v61 == 1)
    {
    }

    v39 = v62 + v60 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_10000BE14(v39, v15, &qword_101A145A0, &qword_1014C7010);
      v63(v10, v15, v64);
      v41 = *&v15[v59];
      v42 = *a3;
      v43 = sub_10003E994(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_10003ECE0(v47, 1);
        v43 = sub_10003E994(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v63((v50[6] + v58 * v43), v10, v64);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v60;
      v38 = v62;
      if (v61 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v54._object = 0x800000010159A770;
  v54._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v54);
  _print_unlocked<A, B>(_:_:)();
  v55._countAndFlagsBits = 39;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10120176C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1012017B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10120181C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1012018CC()
{
  result = qword_101A2D3E0;
  if (!qword_101A2D3E0)
  {
    result = swift_getWitnessTable(asc_1014D247C, &_s9CellIndexVN, v0, v1);
    atomic_store(result, &qword_101A2D3E0);
  }

  return result;
}

Swift::Int sub_101201980()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1012019DC()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_101201A18(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_101201AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = a4(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_101201C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = a5(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_101201DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_101201E64(uint64_t a1)
{
  if (!qword_101A2D570)
  {
    sub_101201EBC();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101A2D570);
    }
  }
}

unint64_t sub_101201EBC()
{
  result = qword_101A2BF30;
  if (!qword_101A2BF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A2BF30);
  }

  return result;
}

uint64_t sub_101201F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v4 = v7;
  if (v9)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v8 != v6)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s13StyleCRDTDataVMa(uint64_t a1)
{
  result = qword_101A2D628;
  if (!qword_101A2D628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101202040(uint64_t a1)
{
  sub_10120215C(319, &qword_101A2D638, sub_1005FEA64, &type metadata for CRLStrokeData);
  if (v1 <= 0x3F)
  {
    sub_10120215C(319, &qword_101A2D640, sub_1012021BC, &_s13StyleCRDTDataV11BorderStyleVN);
    if (v2 <= 0x3F)
    {
      sub_101202210();
      if (v3 <= 0x3F)
      {
        sub_100FEFFEC(319);
        if (v4 <= 0x3F)
        {
          sub_100039F68(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10120215C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for CRRegister();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1012021BC()
{
  result = qword_101A2D648;
  if (!qword_101A2D648)
  {
    result = swift_getWitnessTable(aY_23, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D648);
  }

  return result;
}

void sub_101202210()
{
  if (!qword_1019F7D40)
  {
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F7D40);
    }
  }
}

__n128 sub_101202278@<Q0>(uint64_t a1@<X8>)
{
  sub_1005B981C(&qword_101A2C7B0, &unk_1014BEA10);
  CRRegister.wrappedValue.getter();
  *(a1 + 192) = v15;
  *(a1 + 208) = v16;
  *(a1 + 224) = v17;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1012022FC()
{
  _s13StyleCRDTDataVMa(0);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  return v1;
}

__n128 sub_101202350@<Q0>(_OWORD *a1@<X8>)
{
  _s13StyleCRDTDataVMa(0);
  sub_1005B981C(&unk_101A10690, &qword_101472520);
  CRRegister.wrappedValue.getter();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1012023CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2A68 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() strokeWithColor:qword_101AD9170 width:1.0];
  sub_100B965E4(v2, &v6);
  if (qword_1019F2A70 != -1)
  {
    swift_once();
  }

  sub_1004A48FC();
  if (qword_1019F2A78 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD9188;
  sub_1008B2170([v3 color], v7);

  v4 = _s13StyleCRDTDataVMa(0);
  sub_1005B981C(&qword_1019FFF80, &qword_101489000);
  sub_1006BD16C();
  CRRegister.init(wrappedValue:)();
  *(a1 + *(v4 + 40)) = _swiftEmptyDictionarySingleton;
  sub_1005FEA64();
  CRRegister.init(wrappedValue:)();
  sub_1012021BC();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  sub_1005B981C(&unk_101A10690, &qword_101472520);
  return CRRegister.wrappedValue.setter();
}

BOOL sub_101202700(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A2D768, &qword_1014D2CF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v35[-v4];
  v6 = _s13StyleCRDTDataVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v35[-v11];
  sub_10000BE14(a1, v100, &unk_1019F4D00, &unk_10146E7F0);
  if (!v100[3])
  {
    sub_10000CAAC(v100, &unk_1019F4D00, &unk_10146E7F0);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v7 + 56))(v5, v13 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_10:
    v20 = &qword_101A2D768;
    v21 = &qword_1014D2CF8;
    v22 = v5;
    goto LABEL_11;
  }

  sub_101204DA4(v5, v12);
  sub_100FC5D18(v1, v9);
  sub_1005B981C(&qword_101A2C7B0, &unk_1014BEA10);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v14 = sub_100B931E0(v99, v100);
  sub_100B98B80(v100);
  sub_100B98B80(v99);
  if (v14)
  {
    sub_1005B981C(&unk_101A2D9E0, &unk_1014D3420);
    CRRegister.wrappedValue.getter();
    v15 = *v49;
    CRRegister.wrappedValue.getter();

    v16 = *v49;

    if (v15 == v16)
    {
      sub_1005B981C(&qword_101A2C810, &unk_101480B50);
      CRRegister.wrappedValue.getter();
      v17 = v49[0];
      CRRegister.wrappedValue.getter();
      if (v17 == v49[0])
      {
        CRRegister.wrappedValue.getter();
        v18 = v49[0];
        CRRegister.wrappedValue.getter();
        if (v18 == v49[0])
        {
          CRRegister.wrappedValue.getter();
          v19 = v49[0];
          CRRegister.wrappedValue.getter();
          if (v19 == v49[0])
          {
            sub_1005B981C(&unk_101A10690, &qword_101472520);
            CRRegister.wrappedValue.getter();
            CRRegister.wrappedValue.getter();
            v67 = v74;
            v68 = v75;
            v69[0] = *v76;
            v24 = v77;
            *(v69 + 15) = *&v76[15];
            v65 = v72;
            v66 = v73;
            v25 = v78;
            v63 = v83;
            v64 = v84;
            v61 = v81;
            v62 = v82;
            v59 = v79;
            v60 = v80;
            v26 = v85;
            v27 = v86;
            if (v77)
            {
              if (v85)
              {
                v37 = v78;
                *v49 = v79;
                *&v49[16] = v80;
                *&v49[64] = v83;
                *&v49[80] = v84;
                *&v49[32] = v81;
                *&v49[48] = v82;
                *&v49[96] = v85;
                v50 = v86;
                v47[0] = *&v49[9];
                v47[1] = *&v49[25];
                *(&v47[4] + 15) = *&v49[88];
                v47[3] = *&v49[57];
                v47[4] = *&v49[73];
                v47[2] = *&v49[41];
                v48[0] = v72;
                v48[1] = v73;
                *(&v48[4] + 15) = *&v76[15];
                v48[3] = v75;
                v48[4] = *v76;
                v48[2] = v74;
                v28 = v70;
                *&v93 = v70;
                v36 = v71;
                BYTE8(v93) = v71 & 1;
                *&v87 = v79;
                BYTE8(v87) = BYTE8(v79) & 1;
                sub_10000BE14(&v70, &v38, &qword_1019FFF80, &qword_101489000);
                sub_10000BE14(&v79, &v38, &qword_1019FFF80, &qword_101489000);
                sub_100A1B84C();
                if (static CRExtensible.== infix(_:_:)())
                {
                  v89 = *(&v48[2] + 7);
                  v90 = *(&v48[3] + 7);
                  v91 = *(&v48[4] + 7);
                  v87 = *(v48 + 7);
                  v88 = *(&v48[1] + 7);
                  v92 = v24;
                  v95 = *(&v47[2] + 7);
                  v96 = *(&v47[3] + 7);
                  v97 = *(&v47[4] + 7);
                  v98 = *(&v47[5] + 7);
                  v93 = *(v47 + 7);
                  v94 = *(&v47[1] + 7);
                  if (sub_1008AFE44())
                  {
                    v29 = v37;
                    sub_100B3216C(v37, v27);
                    v31 = v30;
                    sub_10000CAAC(v49, &qword_1019FFF80, &qword_101489000);
                    sub_10000CAAC(&v79, &qword_1019FFF80, &qword_101489000);
                    sub_10000CAAC(&v70, &qword_1019FFF80, &qword_101489000);
                    sub_101204E08(v9);
                    sub_101204E08(v12);
                    v42 = v67;
                    v43 = v68;
                    *v44 = v69[0];
                    v40 = v65;
                    v38 = v28;
                    v39 = v36;
                    v41 = v66;
                    *&v44[15] = *(v69 + 15);
                    v45 = v24;
                    v46 = v29;
                    sub_10000CAAC(&v38, &qword_1019FFF80, &qword_101489000);
                    return (v31 & 1) != 0;
                  }
                }

                sub_10000CAAC(v49, &qword_1019FFF80, &qword_101489000);
                sub_10000CAAC(&v79, &qword_1019FFF80, &qword_101489000);
                sub_10000CAAC(&v70, &qword_1019FFF80, &qword_101489000);
                sub_101204E08(v9);
                sub_101204E08(v12);
                v42 = v67;
                v43 = v68;
                *v44 = v69[0];
                v40 = v65;
                v38 = v28;
                v39 = v36;
                v41 = v66;
                *&v44[15] = *(v69 + 15);
                v45 = v24;
                v46 = v37;
                v22 = &v38;
                v20 = &qword_1019FFF80;
                v21 = &qword_101489000;
LABEL_11:
                sub_10000CAAC(v22, v20, v21);
                return 0;
              }

              v32 = v86;
              v33 = v70;
              v34 = v71;
              sub_101204E08(v9);
              sub_101204E08(v12);
            }

            else
            {
              v32 = v86;
              v33 = v70;
              v34 = v71;
              sub_101204E08(v9);
              sub_101204E08(v12);
              if (!v26)
              {
                *&v49[41] = v67;
                *&v49[57] = v68;
                *&v49[73] = v69[0];
                *&v49[9] = v65;
                *v49 = v33;
                v49[8] = v34;
                *&v49[25] = v66;
                *&v49[88] = *(v69 + 15);
                *&v49[96] = 0;
                v50 = v25;
                sub_10000CAAC(v49, &qword_1019FFF80, &qword_101489000);
                return 1;
              }
            }

            *v49 = v33;
            v49[8] = v34;
            *&v49[41] = v67;
            *&v49[57] = v68;
            *&v49[73] = v69[0];
            *&v49[9] = v65;
            *&v49[25] = v66;
            *&v49[88] = *(v69 + 15);
            *&v49[96] = v24;
            v50 = v25;
            v51 = v59;
            v52 = v60;
            v55 = v63;
            v56 = v64;
            v53 = v61;
            v54 = v62;
            v57 = v26;
            v58 = v32;
            v20 = &qword_1019FFF90;
            v21 = &unk_10148E930;
            v22 = v49;
            goto LABEL_11;
          }
        }
      }
    }
  }

  sub_101204E08(v9);
  sub_101204E08(v12);
  return 0;
}

uint64_t sub_101202F04()
{
  *&xmmword_101AD9270 = 97;
  *(&xmmword_101AD9270 + 1) = 0xE100000000000000;
  qword_101AD9280 = swift_getKeyPath();
  unk_101AD9288 = 99;
  *&xmmword_101AD9290 = 0xE100000000000000;
  *(&xmmword_101AD9290 + 1) = swift_getKeyPath();
  qword_101AD92A0 = 100;
  qword_101AD92A8 = 0xE100000000000000;
  *&xmmword_101AD92B0 = swift_getKeyPath();
  *(&xmmword_101AD92B0 + 1) = 101;
  qword_101AD92C0 = 0xE100000000000000;
  qword_101AD92C8 = swift_getKeyPath();
  qword_101AD92D0 = 102;
  qword_101AD92D8 = 0xE100000000000000;
  qword_101AD92E0 = swift_getKeyPath();
  unk_101AD92E8 = 103;
  *&xmmword_101AD92F0 = 0xE100000000000000;
  result = swift_getKeyPath();
  *(&xmmword_101AD92F0 + 1) = result;
  return result;
}

__n128 sub_101202FBC@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1019F2AA0 != -1)
  {
    swift_once();
  }

  *v20 = *&qword_101AD92D0;
  *&v20[16] = *&qword_101AD92E0;
  v21 = xmmword_101AD92F0;
  v17 = xmmword_101AD9290;
  *v18 = *&qword_101AD92A0;
  *&v18[16] = xmmword_101AD92B0;
  v19 = *&qword_101AD92C0;
  *v16 = xmmword_101AD9270;
  *&v16[16] = *&qword_101AD9280;
  v2 = xmmword_101AD9270;
  v3 = unk_101AD9288;
  v4 = qword_101AD92A0;
  v5 = *(&xmmword_101AD92B0 + 1);
  v6 = qword_101AD92D0;
  v7 = unk_101AD92E8;
  v9 = *&v16[8];
  v10 = xmmword_101AD9290;
  v11 = *&v18[8];
  v12 = *&qword_101AD92C0;
  v13 = *&v20[8];
  v14 = xmmword_101AD92F0;
  sub_10000BE14(v16, v15, &qword_101A2D770, &qword_1014D2D00);
  *a1 = v2;
  *(a1 + 8) = v9;
  *(a1 + 24) = v3;
  *(a1 + 32) = v10;
  *(a1 + 48) = v4;
  *(a1 + 56) = v11;
  *(a1 + 72) = v5;
  *(a1 + 80) = v12;
  *(a1 + 96) = v6;
  result = v14;
  *(a1 + 104) = v13;
  *(a1 + 120) = v7;
  *(a1 + 128) = v14;
  return result;
}

uint64_t sub_1012030FC(uint64_t a1)
{
  v2 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return static CRStruct_6.fieldKeys.getter(a1, v2);
}

uint64_t sub_101203160(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1012031C0(uint64_t a1)
{
  v2 = sub_101204E64(&qword_101A2D720, byte_1014D2A90);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_101203218(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_101203280(uint64_t a1, uint64_t a2)
{
  sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.actionUndoingDifference(from:)();
}

uint64_t sub_1012032F0(uint64_t a1, uint64_t a2)
{
  sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.apply(_:)();
}

uint64_t sub_101203358(uint64_t a1, uint64_t a2)
{
  sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.hasDelta(from:)();
}

uint64_t sub_1012033C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.delta(_:from:)();
}

uint64_t sub_101203440(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012034A8(uint64_t a1, uint64_t a2)
{
  sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.merge(delta:)();
}

uint64_t sub_101203510(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101203580(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012035F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_101203670(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012036D8()
{
  sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.needToFinalizeTimestamps()();
}

uint64_t sub_101203730(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_101203798(uint64_t a1, uint64_t a2)
{
  sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.merge(_:)();
}

uint64_t sub_101203808(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.merge(_:)(a1, a2, v4);
}

uint64_t sub_101203958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_101204E64(&qword_101A2CCF0, byte_1014D2B08);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_101203A98(uint64_t a1)
{
  v2 = sub_101204E64(&qword_101A2D778, byte_1014D2C88);

  return CRStruct_6.minEncodingVersion.getter(a1, v2);
}

void sub_101203B58()
{
  if (qword_1019F2AA8 != -1)
  {
    swift_once();
  }

  v0 = qword_101A2D5A0;
  v1 = qword_1019F2AB0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_101A2D5B0;
  v3 = qword_1019F2AB8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_101A2D5C0;
  if ((v2 & ~v0) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v0;
  if ((qword_101A2D5C0 & ~v6) == 0)
  {
    v4 = 0;
  }

  v7 = v4 | v6;

  swift_arrayDestroy();
  qword_101AD9300 = v7;
  *algn_101AD9308 = _swiftEmptyDictionarySingleton;
}

uint64_t sub_101203C94()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t sub_101203CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_101203DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1012047BC();
  v5 = sub_101204814();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_101203E20(uint64_t a1)
{
  v2 = sub_101204814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101203E5C(uint64_t a1)
{
  v2 = sub_101204814();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_101203E98@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_101203EBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2 | *a1;
  a2[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_101203F0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2 & *a1;
  a2[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_101203F28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2 ^ *a1;
  a2[1] = _swiftEmptyDictionarySingleton;
}

BOOL sub_101203F78(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *v2;
  v7 = *v2 & *a2;
  if (v7 == *a2)
  {

    v4 = _swiftEmptyDictionarySingleton;
  }

  else
  {

    *v2 = v6 | v5;
    v2[1] = _swiftEmptyDictionarySingleton;
  }

  result = v7 != v5;
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t *sub_101203FF4@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  v6 = *v2 & *result;
  if (v6)
  {

    v7 = _swiftEmptyDictionarySingleton;
    *v2 = v5 & ~v4;
    v2[1] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_101204058@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  v6 = _swiftEmptyDictionarySingleton;
  *v2 = v5 | v4;
  v2[1] = _swiftEmptyDictionarySingleton;
  if ((v5 & v4) == 0)
  {
    v6 = 0;
  }

  *a2 = v5 & v4;
  a2[1] = v6;
}

uint64_t sub_1012040C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v3 | v2;
  v1[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_101204120(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v3 & v2;
  v1[1] = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_101204160(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v3 ^ v2;
  v1[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_1012041B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2 & ~*a1;
  a2[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_1012041D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v3 & ~v2;
  v1[1] = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_101204214@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100BE78F0(a1);
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_101204308(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204EA8();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10120435C(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204EA8();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012043B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1012021BC();
  v7 = sub_101204960();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_101204420(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204EA8();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_101204504(uint64_t a1)
{
  v2 = sub_101204A10();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012045A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204A68();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_101204600()
{
  result = qword_101A2D690;
  if (!qword_101A2D690)
  {
    result = swift_getWitnessTable(byte_1014D255C, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D690);
  }

  return result;
}

unint64_t sub_10120465C()
{
  result = qword_101A2D698;
  if (!qword_101A2D698)
  {
    result = swift_getWitnessTable(byte_1014D264C, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D698);
  }

  return result;
}

unint64_t sub_1012046B4()
{
  result = qword_101A2D6A0;
  if (!qword_101A2D6A0)
  {
    result = swift_getWitnessTable(byte_1014D2624, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D6A0);
  }

  return result;
}

unint64_t sub_10120470C()
{
  result = qword_101A2D6A8;
  if (!qword_101A2D6A8)
  {
    result = swift_getWitnessTable(byte_1014D26EC, &_s13StyleCRDTDataV11BorderStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2D6A8);
  }

  return result;
}

unint64_t sub_101204764()
{
  result = qword_101A2D6B0;
  if (!qword_101A2D6B0)
  {
    result = swift_getWitnessTable(byte_1014D2808, &_s13StyleCRDTDataV11BorderStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2D6B0);
  }

  return result;
}

unint64_t sub_1012047BC()
{
  result = qword_101A2D6B8;
  if (!qword_101A2D6B8)
  {
    result = swift_getWitnessTable(byte_1014D27D0, &_s13StyleCRDTDataV11BorderStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2D6B8);
  }

  return result;
}

unint64_t sub_101204814()
{
  result = qword_101A2D6C0;
  if (!qword_101A2D6C0)
  {
    result = swift_getWitnessTable(a5_11, &_s13StyleCRDTDataV11BorderStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2D6C0);
  }

  return result;
}

unint64_t sub_10120486C()
{
  result = qword_101A2D6C8;
  if (!qword_101A2D6C8)
  {
    result = swift_getWitnessTable(byte_1014D279C, &_s13StyleCRDTDataV11BorderStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2D6C8);
  }

  return result;
}

unint64_t sub_1012048C4()
{
  result = qword_101A2D6D0;
  if (!qword_101A2D6D0)
  {
    result = swift_getWitnessTable(byte_1014D2774, &_s13StyleCRDTDataV11BorderStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2D6D0);
  }

  return result;
}

unint64_t sub_101204960()
{
  result = qword_101A2D6E8;
  if (!qword_101A2D6E8)
  {
    result = swift_getWitnessTable(byte_1014D2930, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D6E8);
  }

  return result;
}

unint64_t sub_1012049B8()
{
  result = qword_101A2D6F0;
  if (!qword_101A2D6F0)
  {
    result = swift_getWitnessTable(byte_1014D2674, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D6F0);
  }

  return result;
}

unint64_t sub_101204A10()
{
  result = qword_101A2D6F8;
  if (!qword_101A2D6F8)
  {
    result = swift_getWitnessTable(byte_1014D26A4, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D6F8);
  }

  return result;
}

unint64_t sub_101204A68()
{
  result = qword_101A2D700;
  if (!qword_101A2D700)
  {
    result = swift_getWitnessTable(byte_1014D2830, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D700);
  }

  return result;
}

unint64_t sub_101204AC0()
{
  result = qword_101A2D708;
  if (!qword_101A2D708)
  {
    result = swift_getWitnessTable(byte_1014D2868, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D708);
  }

  return result;
}

unint64_t sub_101204D50()
{
  result = qword_101A2D760;
  if (!qword_101A2D760)
  {
    result = swift_getWitnessTable(byte_1014D25B4, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D760);
  }

  return result;
}

uint64_t sub_101204DA4(uint64_t a1, uint64_t a2)
{
  v4 = _s13StyleCRDTDataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101204E08(uint64_t a1)
{
  v2 = _s13StyleCRDTDataVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101204E64(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = _s13StyleCRDTDataVMa(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101204EA8()
{
  result = qword_101A2D780;
  if (!qword_101A2D780)
  {
    result = swift_getWitnessTable(byte_1014D2958, &_s13StyleCRDTDataV11BorderStyleVN, v0, v1);
    atomic_store(result, &qword_101A2D780);
  }

  return result;
}

unint64_t sub_101204F10()
{
  result = qword_101A2D788;
  if (!qword_101A2D788)
  {
    result = swift_getWitnessTable(byte_1014D2E4C, &_s13StyleCRDTDataV11BorderStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_101A2D788);
  }

  return result;
}

double sub_101204F64()
{
  result = 15.0;
  qword_101AD9310 = 0x402E000000000000;
  return result;
}

void sub_101204F7C()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 systemImageNamed:v1];

  if (v2)
  {

    v3 = [objc_allocWithZone(CRLImage) initWithUIImage:v2];
    qword_101AD9318 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_101205028()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 systemImageNamed:v1];

  if (v2)
  {

    v3 = [objc_allocWithZone(CRLImage) initWithUIImage:v2];
    qword_101AD9320 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1012050D4()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 systemImageNamed:v1];

  if (v2)
  {

    v3 = [objc_allocWithZone(CRLImage) initWithUIImage:v2];
    qword_101AD9328 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_101205258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableKnob();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1012052B0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1012052D8()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) == 1)
    {
      if (qword_1019F2AE0 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD9328;
    }

    else
    {
      if (qword_1019F2AD0 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD9318;
    }
  }

  else
  {
    if (qword_1019F2AD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_101AD9320;
  }

  return *v1;
}

void sub_1012053C8()
{
  v1 = [v0 layoutController];
  v2 = [v1 canvas];

  [v2 invalidateReps];
  if (v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16] == 1)
  {
    v3 = &v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed];
    *v3 = 0u;
    *(v3 + 1) = 0u;
    v3[32] = 1;
    v4 = &v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
    swift_beginAccess();
    v5 = *v4;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    sub_1011DABBC(v5);
  }

  else
  {

    sub_101207574();
  }
}

char *sub_1012054CC()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    sub_1011DAB7C(v2, v3);

    sub_1011DABBC(v2);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8);
  }

  v4 = *(v3 + 16);
  if (v4 >= 2)
  {
    v7 = (v3 + 32);
    v8 = v4 - 1;
    v5 = _swiftEmptyArrayStorage;
    v9 = 0.0;
    do
    {
      v10 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100B37F88(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100B37F88((v11 > 1), v12 + 1, 1, v5);
      }

      v9 = v9 + v10;
      *(v5 + 2) = v12 + 1;
      *&v5[8 * v12 + 32] = v9;
      ++v7;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  swift_unknownObjectRelease();
  return v5;
}

char *sub_101205638()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    sub_1011DAB7C(v2, v1[1]);

    sub_1011DABBC(v3);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState);
  }

  v4 = *(v2 + 16);
  if (v4 >= 2)
  {
    v7 = (v2 + 32);
    v8 = v4 - 1;
    v5 = _swiftEmptyArrayStorage;
    v9 = 0.0;
    do
    {
      v10 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100B37F88(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100B37F88((v11 > 1), v12 + 1, 1, v5);
      }

      v9 = v9 + v10;
      *(v5 + 2) = v12 + 1;
      *&v5[8 * v12 + 32] = v9;
      ++v7;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  swift_unknownObjectRelease();
  return v5;
}

void sub_10120579C(uint64_t a1)
{
  v4 = v1;
  v6 = [v1 boardItem];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  type metadata accessor for CRLTableItem(0);
  swift_dynamicCastClassUnconditional();
  v8 = sub_1011DB2A8(a1);
  v10 = v9;

  if (v10)
  {
    v32 = objc_opt_self();
    LODWORD(v11) = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("rowHeight(at:)", 14, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v14;

    if (qword_1019F20A0 == -1)
    {
LABEL_4:
      v15 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v11;
      v17 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v17;
      v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v18;
      *(inited + 72) = v8;
      *(inited + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 112) = v2;
      *(inited + 120) = v3;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v19;
      *(inited + 152) = 135;
      v20 = v33;
      *(inited + 216) = v17;
      *(inited + 224) = v18;
      *(inited + 192) = v20;
      v21 = v8;
      v22 = v20;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v25 = swift_allocObject();
      v25[2] = 8;
      v25[3] = 0;
      v25[4] = 0;
      v25[5] = 0;
      v26 = __VaListBuilder.va_list()();
      StaticString.description.getter("rowHeight(at:)", 14, 2);
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
      v28 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v29 = String._bridgeToObjectiveC()();

      [v32 handleFailureInFunction:v27 file:v28 lineNumber:135 isFatal:0 format:v29 args:v26];

LABEL_9:
      v34 = v10 & 1;
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v30 = &v4[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  v11 = *v30;
  if (!*v30)
  {
    v31 = *&v4[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8];

    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = v30[1];
  sub_1011DAB7C(*v30, v31);

  sub_1011DABBC(v11);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v8 < *(v31 + 16))
  {

    goto LABEL_9;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_101205C90(uint64_t a1)
{
  v4 = v1;
  v6 = [v1 boardItem];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  type metadata accessor for CRLTableItem(0);
  swift_dynamicCastClassUnconditional();
  v8 = sub_1011DB340(a1);
  v10 = v9;

  if (v10)
  {
    v32 = objc_opt_self();
    LODWORD(v11) = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("columnWidth(at:)", 16, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v14;

    if (qword_1019F20A0 == -1)
    {
LABEL_4:
      v15 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v11;
      v17 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v17;
      v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v18;
      *(inited + 72) = v8;
      *(inited + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 112) = v2;
      *(inited + 120) = v3;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v19;
      *(inited + 152) = 140;
      v20 = v33;
      *(inited + 216) = v17;
      *(inited + 224) = v18;
      *(inited + 192) = v20;
      v21 = v8;
      v22 = v20;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v25 = swift_allocObject();
      v25[2] = 8;
      v25[3] = 0;
      v25[4] = 0;
      v25[5] = 0;
      v26 = __VaListBuilder.va_list()();
      StaticString.description.getter("columnWidth(at:)", 16, 2);
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
      v28 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v29 = String._bridgeToObjectiveC()();

      [v32 handleFailureInFunction:v27 file:v28 lineNumber:140 isFatal:0 format:v29 args:v26];

LABEL_9:
      v34 = v10 & 1;
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v30 = &v4[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  v11 = *v30;
  if (!*v30)
  {
    v11 = *&v4[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];

    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1011DAB7C(v11, v30[1]);

  sub_1011DABBC(v31);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v8 < *(v11 + 16))
  {

    goto LABEL_9;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_10120617C()
{
  v1 = [v0 children];
  sub_100006370(0, &qword_101A287B0, off_10182F780);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 invalidatePosition];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

id sub_1012064F8(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState;
  if (v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] != 1)
  {
    goto LABEL_4;
  }

  result = [v1 boardItem];
  if (result)
  {
    v5 = result;
    type metadata accessor for CRLTableItem(0);
    v6 = swift_dynamicCastClassUnconditional();
    v7 = sub_1011E5958();
    v8 = sub_1011E3CA8();
    v9 = *(**(v6 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v11 = v9(v10);

    [v11 position];
    v13 = v12;
    v15 = v14;

    v16 = &v2[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
    *v16 = v7;
    v16[1] = v8;
    v16[2] = v13;
    v16[3] = v15;

    v2[v3] = 0;
LABEL_4:
    v17.receiver = v2;
    v17.super_class = type metadata accessor for CRLTableLayout();
    return objc_msgSendSuper2(&v17, "validate");
  }

  __break(1u);
  return result;
}

void sub_101206730(Class isa, uint64_t a2)
{
  v3 = v2;
  v4 = isa;
  if (isa)
  {
    type metadata accessor for CRLChangeRecord();
    v4 = Array._bridgeToObjectiveC()().super.isa;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for CRLTableLayout();
  [(objc_class *)&v19 processChanges:v4];

  v5 = OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState;
  if (v3[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] == 1)
  {
    v6 = [v3 boardItem];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for CRLTableItem(0);
      v8 = swift_dynamicCastClassUnconditional();
      v9 = sub_1011E5958();
      v10 = sub_1011E3CA8();
      v11 = *(**(v8 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

      v13 = v11(v12);

      [v13 position];
      v15 = v14;
      v17 = v16;

      v18 = &v3[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
      *v18 = v9;
      *(v18 + 1) = v10;
      *(v18 + 2) = v15;
      *(v18 + 3) = v17;

      v3[v5] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_101206940(uint64_t a1)
{
  if ((a1 - 6) < 2)
  {
    v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] = 1;
  }

  else if ((a1 - 58) >= 2)
  {
    if (a1 == 4)
    {
      [v1 invalidateChildren];
      v5 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
      v6 = *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 4) = 0;
      sub_101210C44(v6);
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] = 1;
    v3 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
    v4 = *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
    *v3 = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 4) = 0;
    sub_101210C44(v4);
    [v1 invalidateSize];
    sub_10120617C();
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CRLTableLayout();
  return objc_msgSendSuper2(&v8, "processChangedProperty:", a1);
}

void sub_101206A94()
{
  v1 = &v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    sub_1011DAB7C(*v1, v1[1]);

    sub_1011DABBC(v3);
    v4 = *(v2 + 16);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];

    v4 = *(v2 + 16);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 <= 3)
  {
    v5 = 0;
    v6 = 0.0;
LABEL_10:
    v9 = v4 - v5;
    v10 = (v2 + 8 * v5 + 32);
    do
    {
      v11 = *v10++;
      v6 = v6 + v11;
      --v9;
    }

    while (v9);
    goto LABEL_12;
  }

  v5 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = (v2 + 48);
  v6 = 0.0;
  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v6 = v6 + *(v7 - 2) + *(v7 - 1) + *v7 + v7[1];
    v7 += 4;
    v8 -= 4;
  }

  while (v8);
  if (v4 != v5)
  {
    goto LABEL_10;
  }

LABEL_12:

  v12 = *v1;
  if (*v1)
  {
    v13 = v1[1];
    sub_1011DAB7C(*v1, v13);

    sub_1011DABBC(v12);
    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = *&v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8];

    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (v14 > 3)
  {
    v15 = v14 & 0x7FFFFFFFFFFFFFFCLL;
    v17 = (v13 + 48);
    v16 = 0.0;
    v18 = v14 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v16 = v16 + *(v17 - 2) + *(v17 - 1) + *v17 + v17[1];
      v17 += 4;
      v18 -= 4;
    }

    while (v18);
    if (v14 == v15)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0.0;
  }

  v19 = v14 - v15;
  v20 = (v13 + 8 * v15 + 32);
  do
  {
    v21 = *v20++;
    v16 = v16 + v21;
    --v19;
  }

  while (v19);
LABEL_23:

  v22 = *v1;
  if (*v1)
  {

    sub_1011DABBC(v22);
  }

  else
  {
    v23 = [v0 boardItem];
    if (v23)
    {
      v24 = v23;
      type metadata accessor for CRLTableItem(0);
      v25 = *(**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

      v27 = v25(v26);

      [v27 position];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_101206E5C(void *a1)
{
  v2 = v1;
  v81.receiver = v2;
  v81.super_class = type metadata accessor for CRLTableLayout();
  objc_msgSendSuper2(&v81, "takeSizeFromTracker:", a1);
  if (!a1)
  {
    goto LABEL_60;
  }

  type metadata accessor for CRLTableRowColumnResizeKnobTracker();
  if (!swift_dynamicCastClass())
  {
    [a1 transformForLayout:v2];
    v4 = [v2 originalGeometry];
    if (!v4)
    {
      goto LABEL_61;
    }

    v5 = v4;
    v6 = [v4 geometryByTransformingBy:&v79];

    v8 = sub_101207514(&v79);
    if (*v7)
    {
      v9 = v7;
      [v6 frame];
      v9[2] = v10;
      v9[3] = v11;
    }

    (v8)(&v79, 0);
    v12 = &v2[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
    swift_beginAccess();
    v13 = *v12;
    v14 = *(v12 + 1);
    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    sub_1011DAB7C(v13, v14);
    sub_1011DABBC(v13);
    v17 = &v2[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
    if (!v13 || v17[2] != v16 || v17[3] != v15)
    {
      [v2 invalidatePosition];
    }

    [v6 frame];
    v19 = v18;
    v21 = v20;
    v22 = [v2 originalGeometry];
    if (v22)
    {
      v23 = v22;
      [v22 frame];
      v25 = v24;
      v27 = v26;

      sub_101210784(v82);
      v28 = sub_10011F31C(v25, v27, v83);
      v30 = v29;
      sub_101210784(v84);
      v32 = sub_10011F31C(v19, v21, v85);
      v33 = *(v17 + 1);
      v34 = *(v33 + 16);
      if (v31 >= v30)
      {
        if (v34)
        {
          v77 = v6;
          v47 = v21 / v27;

          v48 = 0;
          while (1)
          {
            v49 = *(v33 + 32 + 8 * v48);
            v51 = sub_101207514(&v79);
            if (*v50)
            {
              v52 = v50;
              v53 = v50[1];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v52[1] = v53;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v53 = sub_10113CF98(v53);
                v52[1] = v53;
              }

              if (v48 >= *(v53 + 2))
              {
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
                goto LABEL_62;
              }

              *&v53[8 * v48 + 32] = v47 * v49;
            }

            (v51)(&v79, 0);
            if (v34 == ++v48)
            {
LABEL_31:

              v6 = v77;
              break;
            }
          }
        }
      }

      else if (v34)
      {
        v77 = v6;
        v35 = v31 / v30;

        v36 = 0;
        while (1)
        {
          v37 = *(v33 + 32 + 8 * v36);
          sub_101210784(&v86);
          v38 = v87;
          v39 = 8.0;
          if (*(v87 + 16))
          {
            v40 = sub_1007C7EC0(v36);
            if (v41)
            {
              v39 = *(*(v38 + 56) + 8 * v40);
            }
          }

          v43 = sub_101207514(&v79);
          if (*v42)
          {
            v44 = v42;
            v45 = v42[1];
            v46 = swift_isUniquelyReferenced_nonNull_native();
            v44[1] = v45;
            if ((v46 & 1) == 0)
            {
              v45 = sub_10113CF98(v45);
              v44[1] = v45;
            }

            if (v36 >= *(v45 + 2))
            {
              __break(1u);
              goto LABEL_57;
            }

            *&v45[8 * v36 + 32] = v39 + v35 * (v37 - v39);
          }

          (v43)(&v79, 0);
          if (v34 == ++v36)
          {
            goto LABEL_31;
          }
        }
      }

      v55 = *v17;
      v56 = *(*v17 + 16);
      if (v32 >= v28)
      {
        if (v56)
        {
          v69 = v19 / v25;

          for (i = 0; i != v56; ++i)
          {
            v71 = *(v55 + 32 + 8 * i);
            v73 = sub_101207514(&v79);
            v74 = *v72;
            if (*v72)
            {
              v75 = v72;
              v76 = swift_isUniquelyReferenced_nonNull_native();
              *v75 = v74;
              if ((v76 & 1) == 0)
              {
                v74 = sub_10113CF98(v74);
                *v75 = v74;
              }

              if (i >= *(v74 + 2))
              {
                goto LABEL_59;
              }

              *&v74[8 * i + 32] = v69 * v71;
            }

            (v73)(&v79, 0);
          }

LABEL_53:
        }
      }

      else if (v56)
      {
        v57 = v32 / v28;

        v58 = 0;
        while (1)
        {
          v59 = *(v55 + 32 + 8 * v58);
          sub_101210784(&v79);
          v60 = v80;
          v61 = 8.0;
          if (*(v80 + 16))
          {
            v62 = sub_1007C7EC0(v58);
            if (v63)
            {
              v61 = *(*(v60 + 56) + 8 * v62);
            }
          }

          v65 = sub_101207514(v78);
          v66 = *v64;
          if (*v64)
          {
            v67 = v64;
            v68 = swift_isUniquelyReferenced_nonNull_native();
            *v67 = v66;
            if ((v68 & 1) == 0)
            {
              v66 = sub_10113CF98(v66);
              *v67 = v66;
            }

            if (v58 >= *(v66 + 2))
            {
              goto LABEL_58;
            }

            *&v66[8 * v58 + 32] = v61 + v57 * (v59 - v61);
          }

          (v65)(v78, 0);
          if (v56 == ++v58)
          {
            goto LABEL_53;
          }
        }
      }

      [v2 invalidateSize];
      sub_10120617C();
    }

    else
    {
LABEL_62:
      __break(1u);
    }
  }
}

BOOL sub_1012074A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((sub_100673058(*a1, *a2) & 1) == 0 || (sub_100673058(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v6)
  {
    return v4 == v7;
  }

  return 0;
}

void sub_101207574()
{
  v1 = &v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  if (!*v1)
  {
    v2 = [v0 boardItem];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for CRLTableItem(0);
      swift_dynamicCastClassUnconditional();
      v4 = sub_1011E5958();

      v5 = [v0 boardItem];
      if (v5)
      {
        v6 = v5;
        swift_dynamicCastClassUnconditional();
        v7 = sub_1011E3CA8();

        v8 = [v0 boardItem];
        if (v8)
        {
          v9 = v8;
          v10 = *(**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

          v12 = v10(v11);

          [v12 position];
          v14 = v13;
          v16 = v15;

          v17 = *v1;
          *v1 = v4;
          v1[1] = v7;
          v1[2] = v14;
          v1[3] = v16;
          sub_1011DABBC(v17);
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_101207744()
{
  v1 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v1 - 8);
  v3 = &v244 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v244 - v5;
  __chkstk_darwin(v7);
  v9 = &v244 - v8;
  __chkstk_darwin(v10);
  v12 = (&v244 - v11);
  v13 = type metadata accessor for CRLTableAnchorHint(0);
  v253 = *(v13 - 8);
  __chkstk_darwin(v13);
  v267 = &v244 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  *&v266 = &v244 - v17;
  v262 = v0;
  result = [v0 boardItem];
  if (!result)
  {
    goto LABEL_145;
  }

  v19 = result;
  v255 = type metadata accessor for CRLTableItem(0);
  swift_dynamicCastClassUnconditional();
  v20 = sub_1011DCD58();

  if (v20 >> 62)
  {
    goto LABEL_141;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v22 = &unk_10146C000;
  v260 = v3;
  v271 = v13;
  v272 = v6;
  if (v21)
  {
    v3 = 0;
    v265 = (v20 & 0xC000000000000001);
    v254 = (v20 & 0xFFFFFFFFFFFFFF8);
    v23 = _swiftEmptyDictionarySingleton;
    v274 = (v253 + 48);
    v256 = xmmword_10146CA70;
    v257 = v9;
    v263 = v20;
    v264 = *&v12;
    *&v259 = v21;
    while (1)
    {
      if (v265)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v3 >= v254[2])
        {
          goto LABEL_140;
        }

        v24 = *(v20 + 8 * v3 + 32);
        v25 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_137;
        }
      }

      v270 = v25;
      v261 = v23;
      v26 = *((swift_isaMask & *v24) + 0x128);
      v268 = v24;
      v26();
      v273 = *v274;
      v27 = v273(v9, 1, v13);
      v269 = v3;
      if (v27 == 1)
      {
        v258 = objc_opt_self();
        v28 = [v258 _atomicIncrementAssertCount];
        v276[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v276, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("calculateContentState()", 23, 2);
        v29 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
        v30 = String._bridgeToObjectiveC()();

        v31 = [v30 lastPathComponent];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v35 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = v256;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v28;
        v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v37;
        v38 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(inited + 104) = v38;
        *(inited + 72) = v29;
        *(inited + 136) = &type metadata for String;
        v39 = sub_1000053B0();
        *(inited + 112) = v32;
        *(inited + 120) = v34;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v39;
        *(inited + 152) = 411;
        v40 = v276[0];
        *(inited + 216) = v37;
        *(inited + 224) = v38;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v40;
        v41 = v29;
        v42 = v40;
        v43 = static os_log_type_t.error.getter();
        sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v44 = static os_log_type_t.error.getter();
        sub_100005404(v35, &_mh_execute_header, v44, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v45 = swift_allocObject();
        v45[2] = 8;
        v45[3] = 0;
        v45[4] = 0;
        v45[5] = 0;
        v46 = __VaListBuilder.va_list()();
        StaticString.description.getter("calculateContentState()", 23, 2);
        v47 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
        v48 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v49 = String._bridgeToObjectiveC()();

        [v258 handleFailureInFunction:v47 file:v48 lineNumber:411 isFatal:0 format:v49 args:v46];

        v13 = v271;
        v6 = v272;
        v9 = v257;
        v20 = v263;
        *&v12 = v264;
        v21 = v259;
        v3 = v269;
      }

      sub_10003DFF8(v9, v12, &unk_101A09DD0, &unk_101478C10);
      if (v273(v12, 1, v13) != 1)
      {
        break;
      }

      sub_10000CAAC(v12, &unk_101A09DD0, &unk_101478C10);
      v23 = v261;
LABEL_7:
      ++v3;
      if (v270 == v21)
      {

        v112 = v23;
        v22 = &unk_10146C000;
        v3 = v260;
        goto LABEL_42;
      }
    }

    sub_10074A42C(v12, *&v266);
    v50 = v262;
    result = [v262 boardItem];
    if (!result)
    {
      goto LABEL_143;
    }

    v51 = result;
    swift_dynamicCastClassUnconditional();
    sub_1011DB114();
    v53 = v52;
    if (*(v52 + 16) && (v54 = sub_10003E994(*&v266), (v55 & 1) != 0))
    {
      v56 = *(*(v53 + 56) + 8 * v54);

      v57 = _s6CellIDVMa(0);
      v58 = v50;
      v59 = *(v57 + 20);
      result = [v58 boardItem];
      if (!result)
      {
        goto LABEL_144;
      }

      v60 = result;
      swift_dynamicCastClassUnconditional();
      v61 = sub_1011DB114();
      if (*(v61 + 16))
      {
        v62 = sub_10003E994(*&v266 + v59);
        if (v63)
        {
          v64 = *(*(v61 + 56) + 8 * v62);

          v65 = v261;
          if (v261[2] && (v66 = sub_1007CF110(), (v67 & 1) != 0))
          {
            v276[0] = *(v65[7] + 8 * v66);
          }

          else
          {
            v276[0] = _swiftEmptyArrayStorage;
          }

          v20 = v263;
          *&v12 = v264;
          v109 = v268;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v276[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v276[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v65 = v261;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v110 = v276[0];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v275 = v65;
          sub_100AA1C6C(v110, v56, v64, isUniquelyReferenced_nonNull_native);

          v23 = v275;
          sub_101210BE4(*&v266, type metadata accessor for CRLTableAnchorHint);
          v13 = v271;
          v6 = v272;
          goto LABEL_35;
        }
      }

      v273 = objc_opt_self();
      v90 = [v273 _atomicIncrementAssertCount];
      v276[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v276, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("calculateContentState()", 23, 2);
      v91 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
      v92 = String._bridgeToObjectiveC()();

      v93 = [v92 lastPathComponent];

      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v97 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v98 = swift_allocObject();
      *(v98 + 16) = v256;
      *(v98 + 56) = &type metadata for Int32;
      *(v98 + 64) = &protocol witness table for Int32;
      *(v98 + 32) = v90;
      v99 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v98 + 96) = v99;
      v100 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v98 + 104) = v100;
      *(v98 + 72) = v91;
      *(v98 + 136) = &type metadata for String;
      v101 = sub_1000053B0();
      *(v98 + 112) = v94;
      *(v98 + 120) = v96;
      *(v98 + 176) = &type metadata for UInt;
      *(v98 + 144) = v101;
      *(v98 + 152) = 413;
      v102 = v276[0];
      *(v98 + 216) = v99;
      *(v98 + 224) = v100;
      *(v98 + 184) = &protocol witness table for UInt;
      *(v98 + 192) = v102;
      v103 = v91;
      v104 = v102;
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v106 = static os_log_type_t.error.getter();
      sub_100005404(v97, &_mh_execute_header, v106, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v107 = swift_allocObject();
      v107[2] = 8;
      v107[3] = 0;
      v107[4] = 0;
      v107[5] = 0;
      v108 = __VaListBuilder.va_list()();
      StaticString.description.getter("calculateContentState()", 23, 2);
      v87 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
      v88 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v89 = String._bridgeToObjectiveC()();

      [v273 handleFailureInFunction:v87 file:v88 lineNumber:413 isFatal:0 format:v89 args:v108];
    }

    else
    {

      v273 = objc_opt_self();
      v68 = [v273 _atomicIncrementAssertCount];
      v276[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v276, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("calculateContentState()", 23, 2);
      v69 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
      v70 = String._bridgeToObjectiveC()();

      v71 = [v70 lastPathComponent];

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v75 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v76 = swift_initStackObject();
      *(v76 + 16) = v256;
      *(v76 + 56) = &type metadata for Int32;
      *(v76 + 64) = &protocol witness table for Int32;
      *(v76 + 32) = v68;
      v77 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v76 + 96) = v77;
      v78 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v76 + 104) = v78;
      *(v76 + 72) = v69;
      *(v76 + 136) = &type metadata for String;
      v79 = sub_1000053B0();
      *(v76 + 112) = v72;
      *(v76 + 120) = v74;
      *(v76 + 176) = &type metadata for UInt;
      *(v76 + 144) = v79;
      *(v76 + 152) = 412;
      v80 = v276[0];
      *(v76 + 216) = v77;
      *(v76 + 224) = v78;
      *(v76 + 184) = &protocol witness table for UInt;
      *(v76 + 192) = v80;
      v81 = v69;
      v82 = v80;
      v83 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v83, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v76);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v84 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v84, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v85 = swift_allocObject();
      v85[2] = 8;
      v85[3] = 0;
      v85[4] = 0;
      v85[5] = 0;
      v86 = __VaListBuilder.va_list()();
      StaticString.description.getter("calculateContentState()", 23, 2);
      v87 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
      v88 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v89 = String._bridgeToObjectiveC()();

      [v273 handleFailureInFunction:v87 file:v88 lineNumber:412 isFatal:0 format:v89 args:v86];
    }

    sub_101210BE4(*&v266, type metadata accessor for CRLTableAnchorHint);
    v23 = v261;
    v13 = v271;
    v6 = v272;
    v9 = v257;
    v20 = v263;
    *&v12 = v264;
LABEL_35:
    v21 = v259;
    v3 = v269;
    goto LABEL_7;
  }

  v112 = _swiftEmptyDictionarySingleton;
LABEL_42:
  v113 = v112[8];
  v245 = v112 + 8;
  v114 = 1 << *(v112 + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  v116 = v115 & v113;
  v247 = (v114 + 63) >> 6;
  y = CGRectNull.origin.y;
  x = CGRectNull.origin.x;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v249 = width;
  v12 = (v253 + 48);
  v261 = v112;

  v118 = 0;
  v259 = v22[167];
  v9 = &unk_101A09DD0;
  v119 = _swiftEmptyDictionarySingleton;
  v254 = _swiftEmptyDictionarySingleton;
  v257 = _swiftEmptyDictionarySingleton;
  v263 = v12;
  while (2)
  {
    *&v256 = v119;
    if (v116)
    {
      goto LABEL_52;
    }

    do
    {
      v122 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (v122 >= v247)
      {

        v206 = v262;
        v207 = &v262[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
        swift_beginAccess();
        v208 = *v207;
        if (*v207)
        {
          v12 = *(v207 + 1);
          sub_1011DAB7C(*v207, v12);

          sub_1011DABBC(v208);
          v13 = *(v12 + 2);
        }

        else
        {
          v13 = *(*&v206[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8] + 16);
        }

        v20 = _swiftEmptyArrayStorage;
        if (v13)
        {
          v275 = _swiftEmptyArrayStorage;
          sub_100776504(0, v13, 0);
          *&v12 = 0.0;
          v209 = v275;
          v210 = v257;
          while (v13 != v12)
          {
            v211 = 8.0;
            if (*(v210 + 2))
            {
              v212 = sub_1007C7EC0(v12);
              v210 = v257;
              if (v213)
              {
                v211 = *(*(v257 + 7) + 8 * v212);
              }
            }

            v275 = v209;
            v6 = v209[2];
            v214 = v209[3];
            v3 = v6 + 1;
            if (v6 >= v214 >> 1)
            {
              sub_100776504((v214 > 1), v6 + 1, 1);
              v210 = v257;
              v209 = v275;
            }

            v12 = (v12 + 1);
            v209[2] = v3;
            *&v209[v6 + 4] = v211;
            if (v13 == v12)
            {
              goto LABEL_101;
            }
          }

LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v209 = _swiftEmptyArrayStorage;
LABEL_101:
        v215 = v209[2];
        if (!v215)
        {

          v217 = 0.0;
          v218 = *v207;
          if (*v207)
          {
            goto LABEL_117;
          }

LABEL_105:
          v219 = *(*&v262[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState] + 16);
          if (!v219)
          {
            goto LABEL_106;
          }

          goto LABEL_118;
        }

        if (v215 <= 3)
        {
          v216 = 0;
          v217 = 0.0;
          goto LABEL_114;
        }

        v216 = v215 & 0x7FFFFFFFFFFFFFFCLL;
        v225 = (v209 + 6);
        v217 = 0.0;
        v226 = v215 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v217 = v217 + *(v225 - 2) + *(v225 - 1) + *v225 + v225[1];
          v225 += 4;
          v226 -= 4;
        }

        while (v226);
        if (v215 != v216)
        {
LABEL_114:
          v227 = v215 - v216;
          v228 = &v209[v216 + 4];
          do
          {
            v229 = *v228++;
            v217 = v217 + v229;
            --v227;
          }

          while (v227);
        }

        v218 = *v207;
        if (!*v207)
        {
          goto LABEL_105;
        }

LABEL_117:
        sub_1011DAB7C(v218, v207[1]);

        sub_1011DABBC(v230);
        v219 = *(v218 + 16);

        if (!v219)
        {
LABEL_106:
          v220 = _swiftEmptyArrayStorage;
LABEL_107:
          v221 = v220[2];
          v222 = v262;
          if (v221)
          {
            if (v221 <= 3)
            {
              v223 = 0;
              v224 = 0.0;
              goto LABEL_130;
            }

            v223 = v221 & 0x7FFFFFFFFFFFFFFCLL;
            v236 = (v220 + 6);
            v224 = 0.0;
            v237 = v221 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v224 = v224 + *(v236 - 2) + *(v236 - 1) + *v236 + v236[1];
              v236 += 4;
              v237 -= 4;
            }

            while (v237);
            if (v221 != v223)
            {
LABEL_130:
              v238 = v221 - v223;
              v239 = &v220[v223 + 4];
              do
              {
                v240 = *v239++;
                v224 = v224 + v240;
                --v238;
              }

              while (v238);
            }
          }

          else
          {

            v224 = 0.0;
          }

          v241 = &v222[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
          v242 = *&v222[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
          v243 = v257;
          *v241 = v254;
          *(v241 + 1) = v243;
          *(v241 + 2) = v256;
          *(v241 + 3) = v224;
          *(v241 + 4) = v217;

          sub_101210C44(v242);
        }

LABEL_118:
        v275 = _swiftEmptyArrayStorage;
        sub_100776504(0, v219, 0);
        v13 = 0;
        v220 = v275;
        v231 = v256;
        while (v219 != v13)
        {
          v232 = 8.0;
          if (*(v231 + 16))
          {
            v233 = sub_1007C7EC0(v13);
            v231 = v256;
            if (v234)
            {
              v232 = *(*(v256 + 56) + 8 * v233);
            }
          }

          v275 = v220;
          v3 = v220[2];
          v235 = v220[3];
          v12 = (v3 + 1);
          if (v3 >= v235 >> 1)
          {
            sub_100776504((v235 > 1), v3 + 1, 1);
            v231 = v256;
            v220 = v275;
          }

          ++v13;
          *(v220 + 2) = *&v12;
          *&v220[v3 + 4] = v232;
          if (v219 == v13)
          {
            goto LABEL_107;
          }
        }

LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v21 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v116 = v245[v122];
      ++v118;
    }

    while (!v116);
    v118 = v122;
LABEL_52:
    v252 = v118;
    v253 = v116;
    v123 = __clz(__rbit64(v116)) | (v118 << 6);
    v124 = v261[7];
    v125 = (v261[6] + 16 * v123);
    v126 = *v125;
    v255 = v125[1];
    v20 = *(v124 + 8 * v123);
    if (v20 >> 62)
    {
      v127 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v127 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v129 = y;
    v128 = x;
    v130 = height;
    v131 = v249;
    if (!v127)
    {
LABEL_75:
      v185 = v255;
      sub_10120C854(v126, v255);
      v286.size.width = v186;
      v286.size.height = v187;
      v286.origin.x = 0.0;
      v286.origin.y = 0.0;
      v280.origin.x = v128;
      v280.origin.y = v129;
      v280.size.width = v131;
      v280.size.height = v130;
      v281 = CGRectIntersection(v280, v286);
      v188 = v281.origin.x;
      v189 = v281.origin.y;
      v190 = v281.size.width;
      v191 = v281.size.height;
      v192 = v254;
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v276[0] = v192;
      sub_100AA1B14(v126, v185, v193, v188, v189, v190, v191);
      v254 = v276[0];
      v194 = v257;
      if (*(v257 + 2) && (v195 = sub_1007C7EC0(v126), v194 = v257, (v196 & 1) != 0))
      {
        v197 = *(*(v257 + 7) + 8 * v195);
        v282.origin.x = v188;
        v282.origin.y = v189;
        v282.size.width = v190;
        v282.size.height = v191;
        v198 = CGRectGetHeight(v282);
        if (v197 <= v198)
        {
          v197 = v198;
        }
      }

      else
      {
        v283.origin.x = v188;
        v283.origin.y = v189;
        v283.size.width = v190;
        v283.size.height = v191;
        v197 = CGRectGetHeight(v283);
      }

      v199 = swift_isUniquelyReferenced_nonNull_native();
      v276[0] = v194;
      sub_100AA19EC(v126, v199, v197);
      v257 = v276[0];
      v116 = (v253 - 1) & v253;
      v201 = v255;
      v200 = v256;
      if (*(v256 + 16) && (v202 = sub_1007C7EC0(v255), v200 = v256, (v203 & 1) != 0))
      {
        v204 = *(*(v256 + 56) + 8 * v202);
        v284.origin.x = v188;
        v284.origin.y = v189;
        v284.size.width = v190;
        v284.size.height = v191;
        v205 = CGRectGetWidth(v284);
        if (v204 > v205)
        {
          v120 = v204;
        }

        else
        {
          v120 = v205;
        }
      }

      else
      {
        v277.origin.x = v188;
        v277.origin.y = v189;
        v277.size.width = v190;
        v277.size.height = v191;
        v120 = CGRectGetWidth(v277);
      }

      v121 = swift_isUniquelyReferenced_nonNull_native();
      v276[0] = v200;
      sub_100AA19EC(v201, v121, v120);
      v119 = v276[0];
      v118 = v252;
      continue;
    }

    break;
  }

  v246 = v126;
  v270 = v20 & 0xC000000000000001;
  v258 = (v20 & 0xFFFFFFFFFFFFFF8);
  v268 = v127;

  v132 = 0;
  v129 = y;
  v128 = x;
  v130 = height;
  v131 = v249;
  v269 = v20;
  while (1)
  {
    if (v270)
    {
      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v135 = (v132 + 1);
      if (__OFADD__(v132, 1))
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v132 >= *(v258 + 2))
      {
        goto LABEL_136;
      }

      v134 = *(v20 + 8 * v132 + 32);
      v135 = (v132 + 1);
      if (__OFADD__(v132, 1))
      {
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }
    }

    v274 = v135;
    v136 = *((swift_isaMask & *v134) + 0x128);
    v273 = v134;
    v136();
    v137 = *v12;
    if ((*v12)(v3, 1, v13) == 1)
    {
      v266 = v137;
      v265 = objc_opt_self();
      v138 = [v265 _atomicIncrementAssertCount];
      v276[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v276, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("calculateContentState()", 23, 2);
      v264 = COERCE_DOUBLE(String._bridgeToObjectiveC()());

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
      v139 = String._bridgeToObjectiveC()();

      v140 = [v139 lastPathComponent];

      v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v143 = v142;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v144 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v145 = swift_initStackObject();
      *(v145 + 16) = v259;
      *(v145 + 56) = &type metadata for Int32;
      *(v145 + 64) = &protocol witness table for Int32;
      *(v145 + 32) = v138;
      v146 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v145 + 96) = v146;
      v147 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v145 + 104) = v147;
      v148 = v264;
      *(v145 + 72) = v264;
      *(v145 + 136) = &type metadata for String;
      v149 = sub_1000053B0();
      *(v145 + 112) = v141;
      *(v145 + 120) = v143;
      *(v145 + 176) = &type metadata for UInt;
      *(v145 + 144) = v149;
      *(v145 + 152) = 431;
      v150 = v276[0];
      *(v145 + 216) = v146;
      *(v145 + 224) = v147;
      *(v145 + 184) = &protocol witness table for UInt;
      *(v145 + 192) = v150;
      v151 = *&v148;
      v152 = v150;
      v153 = static os_log_type_t.error.getter();
      sub_100005404(v144, &_mh_execute_header, v153, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v145);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v154 = static os_log_type_t.error.getter();
      sub_100005404(v144, &_mh_execute_header, v154, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v155 = swift_allocObject();
      v155[2] = 8;
      v155[3] = 0;
      v155[4] = 0;
      v155[5] = 0;
      v156 = __VaListBuilder.va_list()();
      StaticString.description.getter("calculateContentState()", 23, 2);
      v157 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableLayout.swift", 92, 2);
      v158 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v159 = String._bridgeToObjectiveC()();

      [v265 handleFailureInFunction:v157 file:v158 lineNumber:431 isFatal:0 format:v159 args:v156];

      v3 = v260;
      v13 = v271;
      v6 = v272;
      v12 = v263;
      v9 = &unk_101A09DD0;
      v137 = v266;
    }

    sub_10003DFF8(v3, v6, &unk_101A09DD0, &unk_101478C10);
    if ((*&v137)(v6, 1, v13) != 1)
    {
      break;
    }

    sub_10000CAAC(v6, &unk_101A09DD0, &unk_101478C10);
    v20 = v269;
    v133 = v274;
LABEL_57:
    ++v132;
    if (v133 == v268)
    {

      v126 = v246;
      goto LABEL_75;
    }
  }

  sub_10074A42C(v6, v267);
  result = [v262 layoutController];
  if (result)
  {
    v160 = result;
    v161 = v273;
    v162 = [result layoutForInfo:v273];

    if (v162)
    {
      [v162 boundsForStandardKnobs];
      v265 = v164;
      v266 = v163;
      v165 = v267;
      v166 = v267 + *(v13 + 20);
      v167 = *v166;
      v168 = *(v166 + 4);
      v264 = v130;
      v169 = v128;
      v170 = *(v166 + 8);
      v171 = *(v166 + 12);
      v172 = *(v166 + 16);
      v173 = *(v166 + 20);
      v174 = *(v166 + 21);
      v175 = *(v166 + 22);
      v176 = v3;
      v177 = *(v166 + 23);
      v178 = objc_allocWithZone(CRLCanvasInfoGeometry);
      v179 = v174;
      v13 = v271;
      v180 = v175;
      v12 = v263;
      v181 = v177;
      v3 = v176;
      v182 = [v178 initWithPosition:v173 size:v179 widthValid:v180 heightValid:v181 horizontalFlip:v167 verticalFlip:v168 angle:{v170, v171, v172}];
      [v182 transformedBoundsOrigin];
      v285.origin.x = v183;
      v285.origin.y = v184;
      v278.origin.x = v169;
      v278.origin.y = v129;
      v278.size.width = v131;
      v278.size.height = v264;
      *&v285.size.height = v265;
      v285.size.width = v266;
      v279 = CGRectUnion(v278, v285);
      v128 = v279.origin.x;
      v129 = v279.origin.y;
      v131 = v279.size.width;
      v130 = v279.size.height;

      v6 = v272;
      sub_101210BE4(v165, type metadata accessor for CRLTableAnchorHint);
    }

    else
    {
      sub_101210BE4(v267, type metadata accessor for CRLTableAnchorHint);
    }

    v20 = v269;
    v133 = v274;
    v9 = &unk_101A09DD0;
    goto LABEL_57;
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}