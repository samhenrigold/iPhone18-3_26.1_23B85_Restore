double sub_1012DEA8C(uint64_t a1, char a2, int a3, char *a4, uint64_t a5, uint64_t a6)
{
  v123 = a5;
  LODWORD(v125) = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v117 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v112 - v14;
  __chkstk_darwin(v16);
  v114 = &v112 - v17;
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  __chkstk_darwin(v21);
  v119 = (&v112 - v22);
  v23 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v23 - 8);
  v116 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v112 - v26;
  if (a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active] != 1)
  {
    __break(1u);
LABEL_49:
    v11 = sub_100B356D0(0, v11[2] + 1, 1, v11);
    *&v27[v20] = v11;
    goto LABEL_44;
  }

  v115 = v20;
  v118 = v15;
  a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate] = 1;
  type metadata accessor for CRLTransactableHashableWrapper();
  v127 = v10;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a6;
  v126 = a6;
  v124 = v11;
  v121 = v28;
  v122 = a1;
  v120 = a4;
  if (a2)
  {
    v29 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v30 = *&a4[v29];
    swift_unknownObjectRetain();

    v31 = sub_10079C5CC(v28, v30);

    if (v31)
    {
      swift_beginAccess();
      sub_100ED6A00(v28);
      swift_endAccess();

      swift_beginAccess();
      sub_100ED6A00(v28);
      swift_endAccess();

      swift_beginAccess();
      sub_1010F5918(v28);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();

      sub_100E6B218(v128, v28);
      swift_endAccess();

      swift_beginAccess();

      sub_100E6B218(v128, v28);
      swift_endAccess();

      if (a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState] == 1)
      {
        v32 = v126;
        v33 = v119;
        v34 = v122;
        (*(v126 + 32))(v123, v126);
        swift_beginAccess();
        sub_100ED6D70(v33, v27);
        (v124[1])(v33, v127);
        sub_10000CAAC(v27, &qword_1019F6990, &qword_10146D2F0);
        swift_endAccess();
        v35 = 1;
        goto LABEL_21;
      }

      v35 = 1;
      v32 = v126;
      goto LABEL_20;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  swift_beginAccess();
  v36 = sub_1010F5918(v28);
  v38 = v37;
  swift_endAccess();
  if (v36)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v38;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100E6B218(v128, v39);
    swift_endAccess();
    swift_unknownObjectRelease();

    v32 = v126;
  }

  else
  {
    v32 = v126;
    v40 = (*(v126 + 56))(v123, v126);
    v42 = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v42;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100E6B218(v128, v43);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  swift_beginAccess();

  sub_100E6B218(v128, v28);
  swift_endAccess();

  v44 = v127;
  if ((a2 & 1) == 0 && (v125 & 1) == 0)
  {
    v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v46 = *&a4[v45];

    v47 = sub_10079C5CC(v28, v46);

    if (v47)
    {
      v112 = objc_opt_self();
      v48 = [v112 _atomicIncrementAssertCount];
      v128[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v128, "A deleted object should not be listed as a created object", 57, 2u);
      StaticString.description.getter("objectDeleted(_:allowDeletingNewlyCreated:deletedAsOrphan:)", 59, 2);
      v113 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
      v49 = String._bridgeToObjectiveC()();

      v50 = [v49 lastPathComponent];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v54 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v48;
      v56 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v56;
      v57 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v57;
      v58 = v113;
      *(inited + 72) = v113;
      *(inited + 136) = &type metadata for String;
      v59 = sub_1000053B0();
      *(inited + 112) = v51;
      *(inited + 120) = v53;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v59;
      *(inited + 152) = 359;
      v60 = v128[0];
      *(inited + 216) = v56;
      *(inited + 224) = v57;
      *(inited + 192) = v60;
      v61 = v58;
      v62 = v60;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v54, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v54, &_mh_execute_header, v64, "A deleted object should not be listed as a created object", 57, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v65 = swift_allocObject();
      v65[2] = 8;
      v65[3] = 0;
      v65[4] = 0;
      v65[5] = 0;
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter("objectDeleted(_:allowDeletingNewlyCreated:deletedAsOrphan:)", 59, 2);
      v67 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter("A deleted object should not be listed as a created object", 57, 2);
      v69 = String._bridgeToObjectiveC()();

      [v112 handleFailureInFunction:v67 file:v68 lineNumber:359 isFatal:0 format:v69 args:v66];

      v32 = v126;
      v44 = v127;
      a4 = v120;
    }
  }

  if (a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState] == 1)
  {
    v70 = v117;
    v34 = v122;
    (*(v32 + 32))(v123, v32);
    swift_beginAccess();
    v71 = v119;
    sub_100E6AF38(v119, v70);
    (v124[1])(v71, v44);
    swift_endAccess();
    v35 = 0;
    goto LABEL_21;
  }

  v35 = 0;
LABEL_20:
  v34 = v122;
LABEL_21:
  v72 = &a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner];
  v73 = *(v72 + 1);
  ObjectType = swift_getObjectType();
  v75 = *(v73 + 32);
  swift_unknownObjectRetain();
  v75(v34, v32, v35, ObjectType, v73);
  swift_unknownObjectRelease();
  if ((v125 & 1) == 0)
  {
    goto LABEL_47;
  }

  type metadata accessor for CRLBoardItem(0);
  v76 = swift_dynamicCastClass();
  a1 = v127;
  if (v76)
  {
    v77 = v76;
    v78 = *((swift_isaMask & *v76) + 0xB8);
    v79 = swift_unknownObjectRetain();
    v80 = v116;
    v78(v79);
    v81 = v124;
    if ((v124[6])(v80, 1, a1) == 1)
    {
      swift_unknownObjectRelease();
      sub_10000CAAC(v80, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      (v81[4])(v115, v80, a1);
      v82 = v81;
      if (qword_1019F22B8 != -1)
      {
        swift_once();
      }

      v125 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v83 = swift_initStackObject();
      *(v83 + 16) = xmmword_101483930;
      v84 = v114;
      (*((swift_isaMask & *v77) + 0x88))();
      v85 = UUID.uuidString.getter();
      v87 = v86;
      v88 = v82[1];
      v117 = (v82 + 1);
      v119 = v88;
      (v88)(v84, v127);
      *(v83 + 56) = &type metadata for String;
      v89 = sub_1000053B0();
      *(v83 + 64) = v89;
      *(v83 + 32) = v85;
      *(v83 + 40) = v87;
      swift_unknownObjectRetain();
      v90 = [v77 description];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
      swift_unknownObjectRelease();

      *(v83 + 96) = &type metadata for String;
      *(v83 + 104) = v89;
      *(v83 + 72) = v91;
      *(v83 + 80) = v93;
      v94 = v115;
      v95 = UUID.uuidString.getter();
      *(v83 + 136) = &type metadata for String;
      *(v83 + 144) = v89;
      *(v83 + 112) = v95;
      *(v83 + 120) = v96;
      v97 = v120;
      v98 = 1702195828;
      if (v120[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges])
      {
        v99 = 1702195828;
      }

      else
      {
        v99 = 0x65736C6166;
      }

      if (v120[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges])
      {
        v100 = 0xE400000000000000;
      }

      else
      {
        v100 = 0xE500000000000000;
      }

      *(v83 + 176) = &type metadata for String;
      *(v83 + 184) = v89;
      *(v83 + 152) = v99;
      *(v83 + 160) = v100;
      if (v97[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable])
      {
        v101 = 1702195828;
      }

      else
      {
        v101 = 0x65736C6166;
      }

      if (v97[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable])
      {
        v102 = 0xE400000000000000;
      }

      else
      {
        v102 = 0xE500000000000000;
      }

      *(v83 + 216) = &type metadata for String;
      *(v83 + 224) = v89;
      *(v83 + 192) = v101;
      *(v83 + 200) = v102;
      if (v97[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState])
      {
        v103 = 0xE400000000000000;
      }

      else
      {
        v98 = 0x65736C6166;
        v103 = 0xE500000000000000;
      }

      *(v83 + 256) = &type metadata for String;
      *(v83 + 264) = v89;
      *(v83 + 232) = v98;
      *(v83 + 240) = v103;
      v104 = *v72;
      swift_getObjectType();
      v128[0] = v104;
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v83 + 296) = &type metadata for String;
      *(v83 + 304) = v89;
      *(v83 + 272) = v105;
      *(v83 + 280) = v106;
      v107 = static os_log_type_t.default.getter();
      sub_100005404(v125, &_mh_execute_header, v107, "⭕ deleting orphan [%{public}@%{public}@] with parent [%{public}@] during transaction that is tracked: [%{public}@], undoable: [%{public}@], marking: [%{public}@] for owner: [%{public}@]", 187, 0, v83);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      a1 = v127;
      (v119)(v94, v127);
    }
  }

  v10 = v118;
  (*(v126 + 32))(v123);
  v27 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans;
  v20 = v120;
  v11 = *&v120[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27[v20] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_44:
  v110 = v11[2];
  v109 = v11[3];
  if (v110 >= v109 >> 1)
  {
    v11 = sub_100B356D0((v109 > 1), v110 + 1, 1, v11);
  }

  v11[2] = v110 + 1;
  (v124[4])(v11 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + v124[9] * v110, v10, a1);
  *&v27[v20] = v11;
LABEL_47:

  return result;
}

void sub_1012DF9AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v68 = a4;
  v69 = v14;
  v66 = &v61 - v13;
  v67 = v15;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v16 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v16 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_100E6B218(v71, v5);
  swift_endAccess();

  if (v16)
  {
    swift_beginAccess();

    sub_100E6B218(v71, v5);
    swift_endAccess();
  }

  type metadata accessor for CRLContainerItem(0);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    type metadata accessor for CRLBoard(0);
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = *(v26 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
      v28 = v26;
      swift_unknownObjectRetain();
      v29 = v27;
      sub_101107D04();

      v30 = *(v28 + OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer);
      sub_101107D04();
      swift_unknownObjectRelease();
    }

    goto LABEL_29;
  }

  v18 = v17;
  v19 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v20 = *(v17 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  swift_unknownObjectRetain();
  if (!v20)
  {
    sub_10096C7D4();
    v20 = *(v18 + v19);
  }

  if (v20)
  {
    a4 = v20;
  }

  else
  {
    a4 = _swiftEmptyArrayStorage;
  }

  if (a4 >> 62)
  {
LABEL_27:
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_28:

    swift_unknownObjectRelease();

    goto LABEL_29;
  }

  v21 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (v21 < 1)
  {
    __break(1u);
    return;
  }

  v64 = v5;
  v22 = v11;
  v70 = a5;

  for (i = 0; i != v21; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(a4 + 8 * i + 32);
    }

    v25 = v24;
    sub_1010F8AD4(v24, a2, a3);
  }

  swift_unknownObjectRelease();

  a5 = v70;
  v11 = v22;
  v5 = v64;
LABEL_29:
  v31 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v32 = *(a3 + v31);

  v33 = sub_10079C5CC(v5, v32);

  v65 = v11;
  if (v33)
  {
    v64 = a1;
    v70 = a5;
    v63 = objc_opt_self();
    v34 = [v63 _atomicIncrementAssertCount];
    v71[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v71, "A created object should not be listed as a deleted object", 57, 2u);
    StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
    v62 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v38;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v39 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v34;
    v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v41;
    v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v42;
    v43 = v62;
    *(inited + 72) = v62;
    *(inited + 136) = &type metadata for String;
    v44 = sub_1000053B0();
    v45 = v61;
    *(inited + 112) = v37;
    *(inited + 120) = v45;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v44;
    *(inited + 152) = 308;
    v46 = v71[0];
    *(inited + 216) = v41;
    *(inited + 224) = v42;
    *(inited + 192) = v46;
    v47 = v43;
    v48 = v46;
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v50, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v51 = swift_allocObject();
    v51[2] = 8;
    v51[3] = 0;
    v51[4] = 0;
    v51[5] = 0;
    v52 = __VaListBuilder.va_list()();
    StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter("A created object should not be listed as a deleted object", 57, 2);
    v55 = String._bridgeToObjectiveC()();

    [v63 handleFailureInFunction:v53 file:v54 lineNumber:308 isFatal:0 format:v55 args:v52];

    a5 = v70;
    a1 = v64;
  }

  v56 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v58 = *(v56 + 24);
  swift_unknownObjectRetain();
  v58(a1, a5, ObjectType, v56);
  swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v59 = v67;
    (*(a5 + 32))(v68, a5);
    swift_beginAccess();
    v60 = v66;
    sub_100E6AF38(v66, v59);
    (*(v69 + 8))(v60, v65);
    swift_endAccess();
  }
}

uint64_t sub_1012E01FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = _swiftEmptyDictionarySingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = _swiftEmptyDictionarySingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v7 + 32))(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v9, v6);
  v11 = (v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v11 = a1;
  v11[1] = a4;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 0;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = 0;
  swift_unknownObjectRetain();
  return v10;
}

double sub_1012E0400(uint64_t a1, char *a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v147 = v8;
  type metadata accessor for CRLTransactableHashableWrapper();
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v149 = a2;
  v12 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
  swift_beginAccess();
  v13 = *(v4 + v12);
  swift_unknownObjectRetain();

  v14 = sub_10079C5CC(v11, v13);

  if (v14 & 1) != 0 || (v15 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects, swift_beginAccess(), v16 = *(v4 + v15), , v17 = sub_10079C5CC(v11, v16), , (v17))
  {
    a2 = v149;
    if ((*(v149 + 1))(ObjectType, v149))
    {
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_7;
    }

    v10 = v148;
    if (qword_1019F2098 == -1)
    {
LABEL_9:
      v19 = static OS_os_log.crlDefault;
      v20 = static os_log_type_t.debug.getter();
      sub_100005404(v19, &_mh_execute_header, v20, "Trying to modify a deleted object with no transactionContext set.", 65, 2, _swiftEmptyArrayStorage);
      sub_101277E70(v4, ObjectType, a2);

      if (v10)
      {
        return result;
      }

      goto LABEL_26;
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  v21 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
  swift_beginAccess();
  v146 = v21;
  if (!*(*&v21[v4] + 16) || (, sub_1007C7FB8(v11), v23 = v22, , (v23 & 1) == 0))
  {
    v143 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    v27 = ObjectType;
    v145 = ObjectType;
    v28 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    v29 = v149;
    (*(v149 + 4))(v27, v149);
    v30 = UUID.uuidString.getter();
    v144 = v31;
    (*(v147 + 8))(v10, v7);
    *(v28 + 7) = &type metadata for String;
    v32 = sub_1000053B0();
    *(v28 + 4) = v30;
    v147 = v32;
    *(v28 + 8) = v32;
    *(v28 + 5) = v144;
    v33 = v29;
    v34 = v145;
    if (!(*(v33 + 8))(v145, v33))
    {
      swift_setDeallocating();
      sub_100005070(v28 + 4);
      v35 = v148;
      v36 = sub_101277E70(v4, v34, v33);
      if (v35)
      {
LABEL_7:

        return result;
      }

      v38 = v36;
      v25 = v146;
      v39 = v37;
      swift_beginAccess();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = *&v25[v4];
      *&v25[v4] = 0x8000000000000000;
      sub_100A9AB44(v38, v39, v11, isUniquelyReferenced_nonNull_native);

      *&v25[v4] = v152;
      swift_endAccess();
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    v149 = v28 + 32;

    v146 = objc_opt_self();
    LODWORD(v50) = [v146 _atomicIncrementAssertCount];
    v150[0] = [objc_allocWithZone(NSString) init];
    v148 = v28;
    sub_100604538(v28, v150, "First time we are seeing this transactable %@, it should not already have a transactionContext set", 98, 2u);
    StaticString.description.getter("willModify(_:undoableModification:)", 35, 2);
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v52 = String._bridgeToObjectiveC()();

    v53 = [v52 lastPathComponent];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_64;
    }

LABEL_31:
    v57 = static OS_os_log.crlAssert;
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_10146CA70;
    *(v58 + 56) = &type metadata for Int32;
    *(v58 + 64) = &protocol witness table for Int32;
    *(v58 + 32) = v50;
    v59 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v58 + 96) = v59;
    v60 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v58 + 72) = v51;
    v61 = v147;
    *(v58 + 136) = &type metadata for String;
    *(v58 + 144) = v61;
    *(v58 + 104) = v60;
    *(v58 + 112) = v54;
    *(v58 + 120) = v56;
    *(v58 + 176) = &type metadata for UInt;
    *(v58 + 184) = &protocol witness table for UInt;
    *(v58 + 152) = 230;
    v62 = v150[0];
    *(v58 + 216) = v59;
    *(v58 + 224) = v60;
    *(v58 + 192) = v62;
    v63 = v51;
    v64 = v62;
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v57, &_mh_execute_header, v65, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v58);

    v66 = static os_log_type_t.error.getter();
    v67 = v57;
    v68 = v148;
    sub_100005404(v67, &_mh_execute_header, v66, "First time we are seeing this transactable %@, it should not already have a transactionContext set", 98, 2, v148);

    sub_10063DF98(v68, "First time we are seeing this transactable %@, it should not already have a transactionContext set");
    type metadata accessor for __VaListBuilder();
    v69 = swift_allocObject();
    v69[2] = 8;
    v69[3] = 0;
    v70 = v69 + 3;
    v69[4] = 0;
    v69[5] = 0;
    v56 = *(v68 + 16);
    if (!v56)
    {
      goto LABEL_72;
    }

    v51 = 0;
    while (1)
    {
      sub_100020E58(&v149[40 * v51], *&v149[40 * v51 + 24]);
      v71 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v72 = *v70;
      v73 = *(v71 + 16);
      v74 = __OFADD__(*v70, v73);
      v75 = *v70 + v73;
      if (v74)
      {
        goto LABEL_56;
      }

      v76 = v71;
      v77 = v69[4];
      if (v77 >= v75)
      {
        goto LABEL_48;
      }

      if (v77 + 0x4000000000000000 < 0)
      {
        goto LABEL_57;
      }

      v78 = v69[5];
      if (2 * v77 > v75)
      {
        v75 = 2 * v77;
      }

      v69[4] = v75;
      if ((v75 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_58;
      }

      v79 = swift_slowAlloc();
      v69[5] = v79;
      if (v78)
      {
        break;
      }

LABEL_49:
      if (!v79)
      {
        __break(1u);
LABEL_72:
        v50 = __VaListBuilder.va_list()();
        StaticString.description.getter("willModify(_:undoableModification:)", 35, 2);
        v141 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
        v142 = String._bridgeToObjectiveC()();

        StaticString.description.getter("First time we are seeing this transactable %@, it should not already have a transactionContext set", 98, 2);
        v54 = String._bridgeToObjectiveC()();

        [v146 handleFailureInFunction:v141 file:v142 lineNumber:230 isFatal:1 format:v54 args:v50];

        goto LABEL_63;
      }

      v81 = *(v76 + 16);
      if (v81)
      {
        v82 = (v76 + 32);
        v83 = *v70;
        while (1)
        {
          v84 = *v82++;
          *&v79[8 * v83] = v84;
          v83 = *v70 + 1;
          if (__OFADD__(*v70, 1))
          {
            break;
          }

          *v70 = v83;
          if (!--v81)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v149 = objc_opt_self();
        v85 = [v149 _atomicIncrementAssertCount];
        v151 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v151, "Trying to modify a deleted object %@ that has a different transactionContext set on it already.", 95, 2u);
        StaticString.description.getter("willModify(_:undoableModification:)", 35, 2);
        v86 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
        v87 = String._bridgeToObjectiveC()();

        v88 = [v87 lastPathComponent];

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v92 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_10146CA70;
        *(v56 + 56) = &type metadata for Int32;
        *(v56 + 64) = &protocol witness table for Int32;
        *(v56 + 32) = v85;
        v51 = NSString_ptr;
        v93 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v56 + 96) = v93;
        v94 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v56 + 104) = v94;
        *(v56 + 72) = v86;
        *(v56 + 136) = &type metadata for String;
        v95 = sub_1000053B0();
        *(v56 + 112) = v89;
        *(v56 + 120) = v91;
        *(v56 + 176) = &type metadata for UInt;
        *(v56 + 184) = &protocol witness table for UInt;
        *(v56 + 144) = v95;
        *(v56 + 152) = 220;
        v96 = v151;
        *(v56 + 216) = v93;
        *(v56 + 224) = v94;
        *(v56 + 192) = v96;
        v50 = v86;
        v97 = v96;
        v98 = static os_log_type_t.error.getter();
        sub_100005404(v92, &_mh_execute_header, v98, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);

        v99 = static os_log_type_t.error.getter();
        sub_100005404(v92, &_mh_execute_header, v99, "Trying to modify a deleted object %@ that has a different transactionContext set on it already.", 95, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Trying to modify a deleted object %@ that has a different transactionContext set on it already.");
        type metadata accessor for __VaListBuilder();
        v100 = swift_allocObject();
        LODWORD(v50) = v100;
        v100[2] = 8;
        v100[3] = 0;
        v100[4] = 0;
        v100[5] = 0;
        v101 = __VaListBuilder.va_list()();
        StaticString.description.getter("willModify(_:undoableModification:)", 35, 2);
        v102 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
        v54 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Trying to modify a deleted object %@ that has a different transactionContext set on it already.", 95, 2);
        v103 = String._bridgeToObjectiveC()();

        [v149 handleFailureInFunction:v102 file:v54 lineNumber:220 isFatal:1 format:v103 args:v101];
LABEL_62:

LABEL_63:
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v104, *&v105);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_64:
        swift_once();
        goto LABEL_31;
      }

LABEL_33:

      v51 = (v51 + 1);
      if (v51 == v56)
      {
        goto LABEL_72;
      }
    }

    if (v79 != v78 || v79 >= &v78[8 * v72])
    {
      memmove(v79, v78, 8 * v72);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_48:
    v79 = v69[5];
    goto LABEL_49;
  }

  if (!(*(v149 + 1))(ObjectType))
  {
    v149 = objc_opt_self();
    v107 = [v149 _atomicIncrementAssertCount];
    v150[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v150, "Object already exists in modifiedObjects but does not have a transactionContext set", 83, 2u);
    StaticString.description.getter("willModify(_:undoableModification:)", 35, 2);
    v108 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v109 = String._bridgeToObjectiveC()();

    v110 = [v109 lastPathComponent];

    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v112;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v113 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v114 = swift_initStackObject();
    *(v114 + 16) = xmmword_10146CA70;
    *(v114 + 56) = &type metadata for Int32;
    *(v114 + 64) = &protocol witness table for Int32;
    *(v114 + 32) = v107;
    v51 = NSString_ptr;
    v115 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v114 + 96) = v115;
    v116 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v114 + 104) = v116;
    *(v114 + 72) = v108;
    *(v114 + 136) = &type metadata for String;
    v117 = sub_1000053B0();
    *(v114 + 112) = v111;
    *(v114 + 120) = v56;
    *(v114 + 176) = &type metadata for UInt;
    *(v114 + 184) = &protocol witness table for UInt;
    *(v114 + 144) = v117;
    *(v114 + 152) = 239;
    v118 = v150[0];
    *(v114 + 216) = v115;
    *(v114 + 224) = v116;
    *(v114 + 192) = v118;
    v50 = v108;
    v119 = v118;
    v120 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v120, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v114);

    v121 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v121, "Object already exists in modifiedObjects but does not have a transactionContext set", 83, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Object already exists in modifiedObjects but does not have a transactionContext set");
    type metadata accessor for __VaListBuilder();
    v122 = swift_allocObject();
    LODWORD(v50) = v122;
    v122[2] = 8;
    v122[3] = 0;
    v122[4] = 0;
    v122[5] = 0;
    v123 = __VaListBuilder.va_list()();
    StaticString.description.getter("willModify(_:undoableModification:)", 35, 2);
    v102 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Object already exists in modifiedObjects but does not have a transactionContext set", 83, 2);
    v103 = String._bridgeToObjectiveC()();

    [v149 handleFailureInFunction:v102 file:v54 lineNumber:239 isFatal:1 format:v103 args:v123];
    goto LABEL_62;
  }

  v24 = static UUID.== infix(_:_:)();
  v25 = v146;
  if ((v24 & 1) == 0)
  {
    v149 = objc_opt_self();
    v124 = [v149 _atomicIncrementAssertCount];
    v150[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v150, "Trying to store a different copy of a CRLTransactable with the same UUID", 72, 2u);
    StaticString.description.getter("willModify(_:undoableModification:)", 35, 2);
    v125 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v126 = String._bridgeToObjectiveC()();

    v127 = [v126 lastPathComponent];

    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v129;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v130 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v131 = swift_initStackObject();
    *(v131 + 16) = xmmword_10146CA70;
    *(v131 + 56) = &type metadata for Int32;
    *(v131 + 64) = &protocol witness table for Int32;
    *(v131 + 32) = v124;
    v51 = NSString_ptr;
    v132 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v131 + 96) = v132;
    v133 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v131 + 104) = v133;
    *(v131 + 72) = v125;
    *(v131 + 136) = &type metadata for String;
    v134 = sub_1000053B0();
    *(v131 + 112) = v128;
    *(v131 + 120) = v56;
    *(v131 + 176) = &type metadata for UInt;
    *(v131 + 184) = &protocol witness table for UInt;
    *(v131 + 144) = v134;
    *(v131 + 152) = 237;
    v135 = v150[0];
    *(v131 + 216) = v132;
    *(v131 + 224) = v133;
    *(v131 + 192) = v135;
    v50 = v125;
    v136 = v135;
    v137 = static os_log_type_t.error.getter();
    sub_100005404(v130, &_mh_execute_header, v137, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v131);

    v138 = static os_log_type_t.error.getter();
    sub_100005404(v130, &_mh_execute_header, v138, "Trying to store a different copy of a CRLTransactable with the same UUID", 72, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Trying to store a different copy of a CRLTransactable with the same UUID");
    type metadata accessor for __VaListBuilder();
    v139 = swift_allocObject();
    LODWORD(v50) = v139;
    v139[2] = 8;
    v139[3] = 0;
    v139[4] = 0;
    v139[5] = 0;
    v140 = __VaListBuilder.va_list()();
    StaticString.description.getter("willModify(_:undoableModification:)", 35, 2);
    v102 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Trying to store a different copy of a CRLTransactable with the same UUID", 72, 2);
    v103 = String._bridgeToObjectiveC()();

    [v149 handleFailureInFunction:v102 file:v54 lineNumber:237 isFatal:1 format:v103 args:v140];
    goto LABEL_62;
  }

LABEL_19:
  v41 = *&v25[v4];
  if (*(v41 + 16))
  {

    v42 = sub_1007C7FB8(v11);
    if (v43)
    {
      v44 = (*(v41 + 56) + 16 * v42);
      v45 = *v44;
      v46 = v44[1];
      swift_unknownObjectRetain();
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  swift_beginAccess();

  sub_100BC1BD4(v45, v46, v11);
  swift_endAccess();
  v47 = *(v4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  v48 = swift_getObjectType();
  v49 = *(v47 + 24);
  swift_unknownObjectRetain();
  v49(a1, v149, v48, v47);

LABEL_26:
  swift_unknownObjectRelease();
  return result;
}

void sub_1012E1890(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v42 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v40 - v10;
  v46 = a4;
  v47 = a3;
  v11 = *(a3 + 56);
  v41 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v11;
  v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
  swift_beginAccess();
  v48 = 0;
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  v53 = v7 + 16;
  v43 = v7;
  v44 = v16;
  v55 = (v7 + 8);
  while (v14)
  {
    v51 = (v14 - 1) & v14;
    v52 = v15;
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
LABEL_13:
    v21 = *(v47 + 48);
    v49 = v17;
    v22 = *(v21 + 8 * v17);
    v23 = *(v46 + v45);
    v24 = *(v22 + 24);
    ObjectType = swift_getObjectType();
    v26 = *(v24 + 32);
    v50 = v22;

    v26(ObjectType, v24);
    v56 = v23;
    if (*(v23 + 16) && (v27 = v56, sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v28 = dispatch thunk of Hashable._rawHashValue(seed:)(), v29 = v27 + 56, v30 = -1 << *(v27 + 32), v31 = v28 & ~v30, ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
    {
      v32 = ~v30;
      v33 = *(v43 + 72);
      v34 = *(v43 + 16);
      while (1)
      {
        v35 = v54;
        v34(v54, *(v56 + 48) + v33 * v31, v6);
        sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = *v55;
        (*v55)(v35, v6);
        if (v36)
        {
          break;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v29 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v37(v57, v6);

      v16 = v44;
      v14 = v51;
      v15 = v52;
    }

    else
    {
LABEL_18:

      (*v55)(v57, v6);

      *(v42 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v38 = __OFADD__(v48++, 1);
      v16 = v44;
      v14 = v51;
      v15 = v52;
      if (v38)
      {
        __break(1u);
LABEL_21:
        v39 = v47;

        sub_1010F3F24(v42, v40, v48, v39);
        return;
      }
    }
  }

  v18 = v15;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_21;
    }

    v20 = *(v41 + 8 * v19);
    ++v18;
    if (v20)
    {
      v51 = (v20 - 1) & v20;
      v52 = v19;
      v17 = __clz(__rbit64(v20)) | (v19 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::Int sub_1012E1CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = v39 - v8;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v40 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v40;

  if (v10 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v39[1] = v39;
    __chkstk_darwin(v12);
    v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v11);
    v13 = *(a1 + 56);
    v41 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v14 = v11 < 64 ? ~(-1 << v11) : -1;
    v15 = v14 & v13;
    v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
    swift_beginAccess();
    v47 = a2;
    v48 = 0;
    v16 = 0;
    v17 = (v11 + 63) >> 6;
    v53 = v5 + 16;
    v55 = (v5 + 8);
    v43 = v5;
    v44 = v17;
    v46 = a1;
    while (v15)
    {
      v51 = (v15 - 1) & v15;
      v52 = v16;
      v18 = __clz(__rbit64(v15)) | (v16 << 6);
LABEL_14:
      v22 = *(a1 + 48);
      v49 = v18;
      v11 = *(v22 + 8 * v18);
      v23 = *(a2 + v45);
      v5 = *(v11 + 16);
      v24 = *(v11 + 24);
      ObjectType = swift_getObjectType();
      v26 = *(v24 + 32);
      v50 = v11;

      v26(ObjectType, v24);
      v56 = v23;
      if (*(v23 + 16) && (v11 = v56, sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v5 = v57, v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = v11 + 56, v29 = -1 << *(v11 + 32), v30 = v27 & ~v29, ((*(v11 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        v32 = *(v43 + 72);
        v33 = *(v43 + 16);
        while (1)
        {
          v11 = v54;
          v33(v54, *(v56 + 48) + v32 * v30, v4);
          sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v5 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *v55;
          (*v55)(v11, v4);
          if (v5)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v28 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v34(v57, v4);

        a1 = v46;
        a2 = v47;
        v17 = v44;
        v15 = v51;
        v16 = v52;
      }

      else
      {
LABEL_19:

        (*v55)(v57, v4);

        *&v42[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
        a2 = v47;
        v35 = __OFADD__(v48++, 1);
        a1 = v46;
        v17 = v44;
        v15 = v51;
        v16 = v52;
        if (v35)
        {
          __break(1u);
LABEL_22:
          v36 = sub_1010F3F24(v42, v40, v48, a1);

          return v36;
        }
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_22;
      }

      v21 = *(v41 + 8 * v20);
      ++v19;
      if (v21)
      {
        v51 = (v21 - 1) & v21;
        v52 = v20;
        v18 = __clz(__rbit64(v21)) | (v20 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();

  v36 = sub_1012D4D28(v38, v40, a1, a2);

  return v36;
}

Swift::Int sub_1012E2240(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for UUID();
  v46 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = v45 - v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = _swiftEmptySetSingleton;
    v60 = _swiftEmptySetSingleton;

    v8 = __CocoaSet.makeIterator()();
    v49 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
    swift_beginAccess();
    v50 = v8;
    v9 = __CocoaSet.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      v48 = type metadata accessor for CRLTransactableHashableWrapper();
      v11 = v10;
      v52 = v46 + 16;
      v55 = (v46 + 8);
      v47 = a2;
      v12 = v56;
      do
      {
        v51 = v2;
        v58 = v11;
        swift_dynamicCast();
        v23 = *(a2 + v49);
        v24 = *(v59 + 24);
        ObjectType = swift_getObjectType();
        v26 = *(v24 + 32);

        v26(ObjectType, v24);
        if (*(v23 + 16) && (sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(v23 + 32), v29 = v27 & ~v28, v53 = v23 + 56, ((*(v23 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          v31 = *(v46 + 72);
          v32 = *(v46 + 16);
          while (1)
          {
            v33 = v54;
            v32(v54, *(v23 + 48) + v31 * v29, v12);
            sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v34 = dispatch thunk of static Equatable.== infix(_:_:)();
            v35 = *v55;
            (*v55)(v33, v12);
            if (v34)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v53 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v35(v57, v56);

          v2 = v51;
        }

        else
        {
LABEL_13:

          v36 = *v55;
          (*v55)(v57, v56);
          v37 = v59;
          v38 = v51[2];
          if (v51[3] <= v38)
          {
            sub_100E7400C(v38 + 1);
          }

          v2 = v60;
          Hasher.init(_seed:)();
          v13 = *(v37 + 24);
          v14 = swift_getObjectType();
          v15 = v54;
          (*(v13 + 32))(v14, v13);
          sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v16 = v56;
          dispatch thunk of Hashable.hash(into:)();
          v36(v15, v16);
          result = Hasher._finalize()();
          v18 = v2 + 7;
          v19 = -1 << *(v2 + 32);
          v20 = result & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~v2[(v20 >> 6) + 7]) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~v2[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v39 = 0;
            v40 = (63 - v19) >> 6;
            do
            {
              if (++v21 == v40 && (v39 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v41 = v21 == v40;
              if (v21 == v40)
              {
                v21 = 0;
              }

              v39 |= v41;
              v42 = v18[v21];
            }

            while (v42 == -1);
            v22 = __clz(__rbit64(~v42)) + (v21 << 6);
          }

          *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
          *(v2[6] + 8 * v22) = v37;
          ++v2[2];
        }

        v11 = __CocoaSet.Iterator.next()();
        a2 = v47;
      }

      while (v11);
    }
  }

  else
  {
    v43 = v45[1];
    v44 = sub_1012E1CC0(a1, a2);
    if (!v43)
    {
      return v44;
    }
  }

  return v2;
}

uint64_t sub_1012E27CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) & 1) == 0)
  {
    v35 = a1;
    v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v37 = v4;
    v34 = objc_opt_self();
    v8 = [v34 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38, "Should not be trying to watermark a transaction that doesnt want to be tracked.", 79, 2u);
    StaticString.description.getter("init(from:)", 11, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v16;
    v17 = v33;
    *(inited + 72) = v33;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 560;
    v19 = v38;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v19;
    v20 = v17;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v23, "Should not be trying to watermark a transaction that doesnt want to be tracked.", 79, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(from:)", 11, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Should not be trying to watermark a transaction that doesnt want to be tracked.", 79, 2);
    v28 = String._bridgeToObjectiveC()();

    [v34 handleFailureInFunction:v26 file:v27 lineNumber:560 isFatal:0 format:v28 args:v25];

    v4 = v37;
    v7 = v36;
    a1 = v35;
  }

  v29 = *(v5 + 16);
  v37 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  v29(v7, a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v4);
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = _swiftEmptyDictionarySingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = _swiftEmptyDictionarySingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v7, v4);
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner) = v37;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 1;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = 1;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 0;
  swift_unknownObjectRetain();
  return v2;
}

id sub_1012E2DEC()
{
  v1 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilHoveredRepManager_repsModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v11 = v1;
  v12 = v0;
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_16:
    *(v12 + v11) = _swiftEmptyArrayStorage;

    v10 = 1;
LABEL_18:
    swift_endAccess();
    return v10;
  }

LABEL_3:
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
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    result = [v5 styledLayout];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result dynamicOpacityChangeDidEnd];

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012E2F54()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
LABEL_15:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
LABEL_17:

      *v9 = _swiftEmptyArrayStorage;
      return 1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    result = [v4 styledLayout];
    if (!result)
    {
      break;
    }

    v8 = result;
    [result dynamicOpacityChangeDidEnd];

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

id sub_1012E30E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLiOSPencilHoveredRepManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Void __swiftcall UIView.crl_setGlassBackground()()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v0 - 8);
  static _Glass._GlassVariant.regular.getter();
  v1[3] = type metadata accessor for _Glass();
  v1[4] = &protocol witness table for _Glass;
  sub_10002C58C(v1);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

void sub_1012E32BC(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);
      swift_unknownObjectRelease();
      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1012E33D0(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1012E34D0(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1012E35E4(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v22 = sub_1005B981C(&qword_1019FD550, &qword_1014787A8);
  __chkstk_darwin(v22);
  v7 = &v21 - v6;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v24 = a3;

  v13 = 0;
  while (v11)
  {
    v25 = v4;
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = v24;
    v18 = *(v24 + 48);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 16))(v7, v18 + *(*(v19 - 8) + 72) * v16, v19);
    *&v7[*(v22 + 48)] = *(*(v17 + 56) + 8 * v16);

    v20 = v25;
    (v23)(v7);
    v4 = v20;
    sub_10000CAAC(v7, &qword_1019FD550, &qword_1014787A8);
    if (v20)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v25 = v4;
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void (*sub_1012E37B8(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1012E384C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v23[0] = a1;
  v23[1] = a2;
  v25 = type metadata accessor for IndexSet.Index();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IndexSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A0F910, &unk_101493530);
  v13 = __chkstk_darwin(v12);
  v15 = v23 - v14;
  (*(v9 + 16))(v11, v4, v8, v13);
  sub_1012EE824(&unk_101A11A60, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of Sequence.makeIterator()();
  sub_1012EE824(&qword_101A0F918, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v16 = (v5 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_1012EE824(&qword_101A11A70, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v17 = v25;
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v16)(v7, v17);
    if (v18)
    {
      break;
    }

    v19 = dispatch thunk of Collection.subscript.read();
    v21 = *v20;
    v19(v24, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v24[0] = v21;
    (v23[0])(v24);
  }

  while (!v3);
  return sub_10000CAAC(v15, &qword_101A0F910, &unk_101493530);
}

void sub_1012E3C48(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = _swiftEmptySetSingleton;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = -1 << *(v7 + 32);
    v10 = v7 + 56;
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

    v13 = v16 & *(v7 + 56);

    v12 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1005B981C(&qword_1019F3610, &qword_101468AD0);
  v9 = static _SetStorage.allocate(capacity:)();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  a2(0);
  sub_1012EE824(a3, a4, &protocol conformance descriptor for NSObject);
  Set.Iterator.init(_cocoa:)();
  v7 = v36;
  v10 = v37;
  v11 = v38;
  v12 = v39;
  v13 = v40;
LABEL_11:
  v17 = v9 + 7;
  while (v7 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21)
    {
LABEL_34:
      sub_100035F90(v7);

      return;
    }

    *&v33 = v21;
    a2(0);
    swift_dynamicCast();
LABEL_25:
    a2(0);
    swift_dynamicCast();
    v25 = AnyHashable._rawHashValue(seed:)(v9[5]);
    v26 = -1 << *(v9 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~v17[v27 >> 6]) != 0)
    {
      v18 = __clz(__rbit64((-1 << v27) & ~v17[v27 >> 6])) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v30 && (v29 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = v17[v28];
      }

      while (v32 == -1);
      v18 = __clz(__rbit64(~v32)) + (v28 << 6);
    }

    *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = v9[6] + 40 * v18;
    *(v19 + 32) = v35;
    *v19 = v33;
    *(v19 + 16) = v34;
    ++v9[2];
  }

  if (v13)
  {
    v20 = v12;
LABEL_24:
    v23 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v24 = *(*(v7 + 48) + ((v20 << 9) | (8 * v23)));
    goto LABEL_25;
  }

  v22 = v12;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= ((v11 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v13 = *(v10 + 8 * v20);
    ++v22;
    if (v13)
    {
      v12 = v20;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1012E3FE0(uint64_t a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = _swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1005B981C(&qword_1019F37D8, &qword_1014C5ED0);
  v9 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  if (type metadata accessor for CRLBoardItem(0) == &type metadata for String)
  {
    if (v8)
    {

      __CocoaSet.makeIterator()();
      a2(0);
      sub_1012EE824(a3, a4, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v7 = v46;
      v14 = v47;
      v15 = v48;
      v16 = v49;
      v17 = v50;
    }

    else
    {
      v36 = -1 << *(v7 + 32);
      v14 = v7 + 56;
      v15 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v17 = v38 & *(v7 + 56);

      v16 = 0;
    }

    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v17)
      {
        v39 = v16;
        goto LABEL_44;
      }

      v42 = v16;
      do
      {
        v39 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_60;
        }

        if (v39 >= ((v15 + 64) >> 6))
        {
          v43 = v7;
          goto LABEL_56;
        }

        v17 = *(v14 + 8 * v39);
        ++v42;
      }

      while (!v17);
      v16 = v39;
LABEL_44:
      v40 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v41 = *(*(v7 + 48) + ((v39 << 9) | (8 * v40)));
LABEL_45:
      sub_1012ECF60(v41);
    }

    if (__CocoaSet.Iterator.next()())
    {
      a2(0);
      swift_dynamicCast();
      v41 = v45;
      goto LABEL_45;
    }

    v43 = v7;
LABEL_56:
    sub_100035F90(v43);
LABEL_57:

    return;
  }

  v44 = a2;
  if (v8)
  {

    __CocoaSet.makeIterator()();
    a2(0);
    sub_1012EE824(a3, a4, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v7 = v46;
    v10 = v47;
    v11 = v48;
    v12 = v49;
    v13 = v50;
  }

  else
  {
    v18 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v13 = v20 & *(v7 + 56);

    v12 = 0;
  }

  v21 = (v11 + 64) >> 6;
  v22 = v9 + 7;
  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_38:
      sub_100035F90(v7);
      goto LABEL_57;
    }

    v44(0);
    swift_dynamicCast();
    v25 = v45;
LABEL_29:
    v28 = NSObject._rawHashValue(seed:)(v9[5]);
    v29 = -1 << *(v9 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~v22[v30 >> 6]) != 0)
    {
      v23 = __clz(__rbit64((-1 << v30) & ~v22[v30 >> 6])) | v30 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = 0;
      v33 = (63 - v29) >> 6;
      do
      {
        if (++v31 == v33 && (v32 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v34 = v31 == v33;
        if (v31 == v33)
        {
          v31 = 0;
        }

        v32 |= v34;
        v35 = v22[v31];
      }

      while (v35 == -1);
      v23 = __clz(__rbit64(~v35)) + (v31 << 6);
    }

    *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v9[6] + 8 * v23) = v25;
    ++v9[2];
  }

  if (v13)
  {
    v24 = v12;
LABEL_28:
    v27 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v45 = *(*(v7 + 48) + ((v24 << 9) | (8 * v27)));
    v25 = v45;
    goto LABEL_29;
  }

  v26 = v12;
  while (1)
  {
    v24 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_38;
    }

    v13 = *(v10 + 8 * v24);
    ++v26;
    if (v13)
    {
      v12 = v24;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_1012E44CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  swift_unknownObjectRetain();
  LOBYTE(a4) = v7(v9, a3, a4);
  sub_100005070(v9);
  return a4 & 1;
}

void sub_1012E45C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, __n128), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(id, uint64_t, uint64_t, uint64_t, void, __n128))
{
  v38 = a5;
  v39 = a8;
  v41 = a6;
  v42 = a7;
  v9 = v8;
  v43 = a3;
  v44 = a4;
  v40 = a2;
  v45 = a1;
  v10 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v22 = *(*(v8 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = *&v22[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  (*(*v23 + 896))(v18);
  sub_1005E0A78(&v16[*(v14 + 20)], v20);
  v24 = v22;
  sub_1005E0ADC(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v20, v10);
  sub_1005E0ADC(v20, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.attributedString.getter();
  (*(v11 + 8))(v13, v10);
  v26 = [v25 length];

  v28 = v44;
  v27 = v45;
  v29 = v43;
  if (v26 >= 1)
  {
    if (!__OFSUB__(v44, v43))
    {
      if (v44 == v43)
      {
        sub_1012E6C98(v45, v40 & 1, v38, v41, v42);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  v30 = [*(v9 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v31 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v30 forwardSelectionPath:v30 reverseSelectionPath:v30];
  v32 = *(v9 + v21);

  v33 = (v39)(v32, v29, v28, v27, v40 & 1);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong commandController];

    if (v36)
    {
      v37 = v31;
      sub_100888700(v33, 0, v31, 4uLL, 0);
    }
  }

  sub_1012E7E04(v27, v41, v42);
}

void sub_1012E4A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t *a7, uint64_t *a8)
{
  v40 = a7;
  v41 = a8;
  v38 = a5;
  v39 = a6;
  v9 = v8;
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v43 = a1;
  v10 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v22 = *(*(v8 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = *&v22[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  (*(*v23 + 896))(v18);
  sub_1005E0A78(&v16[*(v14 + 20)], v20);
  v24 = v22;
  sub_1005E0ADC(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v20, v10);
  sub_1005E0ADC(v20, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.attributedString.getter();
  (*(v11 + 8))(v13, v10);
  v26 = [v25 length];

  v28 = v44;
  v27 = v45;
  if (v26 >= 1)
  {
    if (!__OFSUB__(v45, v44))
    {
      if (v45 == v44)
      {
        v38(v43, v42);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  v29 = [*(v9 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v30 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v29 forwardSelectionPath:v29 reverseSelectionPath:v29];
  v31 = *(v9 + v21);
  v32 = v43;

  v33 = (v39)(v31, v28, v27, v32, v42);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong commandController];

    if (v36)
    {
      v37 = v30;
      sub_100888700(v33, 0, v30, 4uLL, 0);
    }
  }

  sub_1012E7E04(v32, v40, v41);
}

void sub_1012E4DFC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = v4;
  v36 = a2;
  v37 = a3;
  v38 = a1;
  v7 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v19 = *(*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = *&v19[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    return;
  }

  (*(*v20 + 896))(v15);
  sub_1005E0A78(&v13[*(v11 + 20)], v17);
  v21 = v19;
  sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v8 + 16))(v10, v17, v7);
  sub_1005E0ADC(v17, type metadata accessor for CRLWPStorageCRDTData);
  v22 = CRAttributedString.attributedString.getter();
  (*(v8 + 8))(v10, v7);
  v23 = [v22 length];

  v25 = v37;
  v24 = v38;
  v26 = v36;
  if (v23 >= 1)
  {
    if (!__OFSUB__(v37, v36))
    {
      if (v37 == v36)
      {
        sub_1012E6EF4(v38, a4);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  v27 = [*(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v28 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v27 forwardSelectionPath:v27 reverseSelectionPath:v27];
  v29 = *(v5 + v18);

  v30 = sub_1012ED090(v29, v26, v25, v24, a4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = [Strong commandController];

    if (v33)
    {
      v34 = v28;
      sub_100888700(v30, 0, v28, 4uLL, 0);
    }
  }

  sub_1012E7E04(v24, &qword_101A0D8E8, &qword_101490708);
}

void sub_1012E51D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a5;
  v23 = a1;
  v24 = a2;
  v7 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = *&v18[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v19)
  {
    (*(*v19 + 896))(v15);
    sub_1005E0A78(&v13[*(v11 + 20)], v17);
    v20 = v18;
    sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v8 + 16))(v10, v17, v7);
    sub_1005E0ADC(v17, type metadata accessor for CRLWPStorageCRDTData);
    v21 = CRAttributedString.attributedString.getter();
    (*(v8 + 8))(v10, v7);
    v22 = [v21 length];

    if (v22 < 1)
    {
LABEL_7:
      sub_1012E71B0(v23, v24, v25, a4, v26);
      return;
    }

    if (!__OFSUB__(v26, a4))
    {
      if (v26 == a4)
      {
        sub_1012E7034(v23, v24, v25);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
}

void sub_1012E54A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a4;
  v23 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = *&v17[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v18)
  {
    (*(*v18 + 896))(v14);
    sub_1005E0A78(&v12[*(v10 + 20)], v16);
    v19 = v17;
    sub_1005E0ADC(v12, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v7 + 16))(v9, v16, v6);
    sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
    v20 = CRAttributedString.attributedString.getter();
    (*(v7 + 8))(v9, v6);
    v21 = [v20 length];

    if (v21 < 1)
    {
LABEL_7:
      sub_1012E7350(v23, v24, a3, v25);
      return;
    }

    if (!__OFSUB__(v25, a3))
    {
      if (v25 == a3)
      {
        sub_1012E70FC(v23, v24);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
}

void sub_1012E57E0(uint64_t a1, char a2, void (*a3)(void, uint64_t, __n128), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t, void, __n128))
{
  v12 = sub_10094ABE4();
  if (v12)
  {
    v36 = v12;
    sub_1012E45C4(a1, a2 & 1, *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8], a3, a4, a5, a6);
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 3002;
    v26 = v37;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:3002 isFatal:0 format:v35 args:v32];
  }
}

void sub_1012E5C74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(id, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t *a5, uint64_t *a6)
{
  v12 = sub_10094ABE4();
  if (v12)
  {
    v36 = v12;
    sub_1012E4A24(a1, a2, *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8], a3, a4, a5, a6);
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 3002;
    v26 = v37;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:3002 isFatal:0 format:v35 args:v32];
  }
}

void sub_1012E6090(uint64_t a1, float a2)
{
  v4 = sub_10094ABE4();
  if (v4)
  {
    v28 = v4;
    sub_1012E4DFC(a1, *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8], a2);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 3002;
    v18 = v29;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:3002 isFatal:0 format:v27 args:v24];
  }
}

void sub_1012E6498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10094ABE4();
  if (v6)
  {
    v30 = v6;
    sub_1012E51D8(a1, a2, a3, *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8]);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 3002;
    v20 = v31;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
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
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:3002 isFatal:0 format:v29 args:v26];
  }
}

void sub_1012E689C(uint64_t a1, void *a2)
{
  v4 = sub_10094ABE4();
  if (v4)
  {
    v28 = v4;
    sub_1012E54A4(a1, a2, *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8]);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 3002;
    v18 = v29;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:3002 isFatal:0 format:v27 args:v24];
  }
}

void sub_1012E6C98(uint64_t a1, char a2, void (*a3)(void, uint64_t, __n128), uint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v12 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v13 = *(v9 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v13 || (v14 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v15 = *(v9 + v12), *(v9 + v12) = v14, v15, (v13 = *(v9 + v12)) != 0))
  {
    v16 = v13;

    (a3)(a2 & 1, a1);
  }

  sub_1012E7E04(a1, a4, a5);
}

void sub_1012E6D60(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v5 || (v6 = a1, v7 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v8 = *(v2 + v4), *(v2 + v4) = v7, v8, a1 = v6, (v5 = *(v2 + v4)) != 0))
  {
    v9 = v5 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
    *v9 = a2;
    *(v9 + 8) = 0;
  }

  sub_1012E7E04(a1, &qword_101A0D8C8, &qword_101491000);
}

void sub_1012E6DFC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v6 || (v7 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v8 = *(v2 + v5), *(v2 + v5) = v7, v8, (v6 = *(v2 + v5)) != 0))
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2;
    }

    if ((v9 & 1) == 0)
    {
      v10 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    }

    v12 = v6 + *v10;
    *v12 = v11;
    *(v12 + 8) = v9 & 1;
  }

  sub_1012E7E04(a1, &qword_101A0D8D0, &unk_1014906F0);
}

void sub_1012E6EF4(uint64_t a1, float a2)
{
  v5 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v6 || (v7 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v8 = *(v2 + v5), *(v2 + v5) = v7, v8, (v6 = *(v2 + v5)) != 0))
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v9 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
    }

    else
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v11 = v6 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
        *v11 = a2;
        *(v11 + 4) = 0;
        goto LABEL_9;
      }

      v9 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    }

    v10 = v6 + *v9;
    *v10 = 0;
    *(v10 + 8) = 1;
  }

LABEL_9:
  sub_1012E7E04(a1, &qword_101A0D8E8, &qword_101490708);
}

void sub_1012E7034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v9 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v9 || (v10 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v11 = *(v4 + v8), *(v4 + v8) = v10, v11, (v9 = *(v4 + v8)) != 0))
  {
    v12 = v9;

    sub_1012E79D0(a2, a3);
  }

  sub_1012E7E04(a1, &qword_101A0D8F0, &unk_101490710);
}

void sub_1012E70FC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v7 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v7 || (v8 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v9 = *(v3 + v6), *(v3 + v6) = v8, v9, (v7 = *(v3 + v6)) != 0))
  {
    v10 = v7;

    v11 = a2;
    sub_1012E7B64(a2);
  }

  sub_1012E7E04(a1, &qword_101A0D8F8, &qword_101490E30);
}

void sub_1012E71B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [*(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v12 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v11 forwardSelectionPath:v11 reverseSelectionPath:v11];
  v13 = *(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);

  v18 = sub_1012EDF78(v13, a4, a5, a1, a2, a3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong commandController];

    if (v16)
    {
      v17 = v12;
      sub_100888700(v18, 0, v12, 4uLL, 0);
    }
  }

  sub_1012E7E04(a1, &qword_101A0D8F0, &unk_101490710);
}

void sub_1012E7350(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v10 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v9 forwardSelectionPath:v9 reverseSelectionPath:v9];
  v11 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);

  v16 = sub_1012EE5D0(v11, a3, a4, a1, a2);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong commandController];

    if (v14)
    {
      v15 = v10;
      sub_100888700(v16, 0, v10, 4uLL, 0);
    }
  }

  sub_1012E7E04(a1, &qword_101A0D8F8, &qword_101490E30);
}

void sub_1012E74DC(char a1)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
LABEL_5:
    v4 = v1 + *v3;
    *v4 = 0;
    *(v4 + 8) = 1;
    return;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    goto LABEL_5;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v5 = v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
    *v5 = 0;
    *(v5 + 4) = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v6 = (v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
    *v6 = 0;
    v6[1] = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      if (a1 == 2)
      {
        v8 = 0;
      }

      else
      {
        sub_100006370(0, &qword_101A2BF30, off_10182F808);
        v9 = swift_dynamicCast();
        v8 = v11;
        if (!v9)
        {
          v8 = 0;
        }
      }

      v10 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
      *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill) = v8;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold) = a1;
    }
  }
}

void sub_1012E7740(char a1)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
LABEL_5:
    v4 = v1 + *v3;
    *v4 = 0;
    *(v4 + 8) = 1;
    return;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    goto LABEL_5;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v5 = v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
    *v5 = 0;
    *(v5 + 4) = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v6 = (v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
    *v6 = 0;
    v6[1] = 0;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    if (a1 == 2)
    {
      v7 = 0;
    }

    else
    {
      sub_100006370(0, &qword_101A2BF30, off_10182F808);
      v10 = swift_dynamicCast();
      v7 = v12;
      if (!v10)
      {
        v7 = 0;
      }
    }

    v11 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
    *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill) = v7;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v9 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold;
    }

    else
    {
      v9 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic;
    }

    *(v1 + *v9) = a1;
  }
}

void sub_1012E79D0(uint64_t a1, uint64_t a2)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    if (a2)
    {
    }

    v5 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
LABEL_9:
    v6 = v2 + *v5;
    *v6 = 0;
    *(v6 + 8) = 1;
    return;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    if (a2)
    {
    }

    v5 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    goto LABEL_9;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    if (a2)
    {
    }

    v8 = v2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
    *v8 = 0;
    *(v8 + 4) = 1;
  }

  else
  {
    v9 = (v2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
    *v9 = a1;
    v9[1] = a2;
  }
}

void sub_1012E7B64(void *a1)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
LABEL_5:
    v4 = v1 + *v3;
    *v4 = 0;
    *(v4 + 8) = 1;
    return;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    goto LABEL_5;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    if (a1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Float._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    v7 = v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
    *v7 = 0;
    *(v7 + 4) = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      if (a1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
        }
      }

      v8 = (v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
      *v8 = 0;
      v8[1] = 0;
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
      *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill) = a1;
    }
  }
}

void sub_1012E7E04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = [objc_opt_self() defaultCenter];
  if (qword_1019F2368 != -1)
  {
    swift_once();
  }

  v8 = qword_101AD80C8;
  sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1005B981C(a2, a3);
  *(inited + 72) = a1;

  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0, &unk_101471280);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 postNotificationName:v8 object:v3 userInfo:isa];
}

uint64_t sub_1012E7FE4@<X0>(_BYTE *a2@<X8>)
{
  v3 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLWPShapeItemData(0);
  v6 = *swift_dynamicCastClassUnconditional();
  (*(v6 + 896))();
  type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  result = sub_1005E0ADC(v5, type metadata accessor for CRLWPShapeItemCRDTData);
  *a2 = v8[15];
  return result;
}

double sub_1012E812C(char *a1, uint64_t *a2)
{
  if (sub_1011255D0())
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v3 = *(*swift_dynamicCastClassUnconditional() + 912);

    v4 = v3(v5);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
    sub_1005B981C(&qword_101A2C810, &unk_101480B50);
    CRRegister.wrappedValue.setter();
    v4(v5, 0);
  }

  return result;
}

void sub_1012E8268(uint64_t a1)
{
  v2 = [v1 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
    v9 = 2;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v3 + 8 * v7 + 32);
      }

      ++v7;
      v11 = v10;
      swift_getAtKeyPath();

      v12 = v15;
      if (((v5 ^ v15) & (v8 != 2)) != 0)
      {
        v13 = 1;
      }

      else
      {
        v13 = v6;
      }

      if (v9 == 2)
      {
        v14 = v15 & 1;
      }

      else
      {
        v14 = v8;
      }

      if (v9 == 2)
      {
        v13 = HIBYTE(v15) & 1;
      }

      else
      {
        v12 = v8;
      }

      if (v15 != 2)
      {
        v8 = v14;
        v5 = v12;
        v9 = v14;
        v6 = v13;
      }
    }

    while (v4 != v7);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_1012E8400(uint64_t a1)
{
  v2 = [v1 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    LODWORD(v6) = 2;
    v7 = 0.0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      swift_getAtKeyPath();

      if (v11 != 2)
      {
        if (v6 == 2)
        {
          v6 = ((LODWORD(v10) | (v11 << 32)) >> 32) & 1;
          v7 = v10;
        }

        else if (v7 != v10)
        {
          LODWORD(v6) = 1;
        }
      }

      ++v5;
    }

    while (v4 != v5);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1012E858C(uint64_t a1, unint64_t *a2, void *a3)
{
  v5 = [v3 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v6 & 0xC000000000000001;
    v22 = v7;
    do
    {
      if (v11)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      swift_getAtKeyPath();

      if (v25)
      {
        if (v9)
        {
          sub_100006370(0, a2, a3);
          v14 = v11;
          v15 = v8;
          v16 = v6;
          v17 = a1;
          v18 = v9;
          v19 = v25;
          v20 = static NSObject.== infix(_:_:)();

          a1 = v17;
          v6 = v16;
          v8 = v15;
          v11 = v14;

          v21 = (v20 & 1) == 0;
          v7 = v22;
          if (v21)
          {
            v8 = 1;
          }
        }

        else
        {
          v8 = v26;

          v9 = v25;
        }
      }

      else
      {
      }

      ++v10;
    }

    while (v7 != v10);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1012E875C(uint64_t a1)
{
  v2 = [v1 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 2;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      swift_getAtKeyPath();

      if (v12 != 2)
      {
        if (v11 == v5)
        {
          v10 = v7;
        }

        else
        {
          v10 = 1;
        }

        if (v7 == 2)
        {
          v5 = v11;
          v7 = v12 & 1;
        }

        else
        {
          v7 = v10;
        }
      }

      ++v6;
    }

    while (v4 != v6);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1012E88C4(uint64_t a1)
{
  v2 = [v1 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_21:

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 2;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      ++v6;
      v9 = v8;
      swift_getAtKeyPath();

      v10 = v13;
      if (v5 == v13)
      {
        v11 = v7;
      }

      else
      {
        v11 = 1;
      }

      if (v7 == 2)
      {
        v12 = HIBYTE(v13) & 1;
      }

      else
      {
        v12 = v11;
      }

      if (v7 != 2)
      {
        v10 = v5;
      }

      if ((v13 & 0xFF00) != 0x200)
      {
        v7 = v12;
        v5 = v10;
      }
    }

    while (v4 != v6);
    goto LABEL_21;
  }

  __break(1u);
}

void sub_1012E8A70(uint64_t (*a2)(void)@<X4>, _WORD *a3@<X8>)
{
  swift_getKeyPath();
  LOWORD(a2) = a2();

  *a3 = a2;
}

void sub_1012E8B04(uint64_t (*a2)(void)@<X4>, __int16 *a3@<X8>)
{
  swift_getKeyPath();
  v5 = a2();
  v7 = v6;
  v8 = v6;

  if (v8 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = (v5 != 0) | ((v7 & 1) << 8);
  }

  *a3 = v9;
}

void sub_1012E8B80(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100946008(KeyPath);
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
}

void sub_1012E8BD8(uint64_t a1)
{
  type metadata accessor for CRLWPShapeItem(0);
  v2 = [v1 sortedBoardItemsOfClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for CRLBoardItem(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 2;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      if (swift_dynamicCastClass())
      {
        v10 = v9;
        swift_getAtKeyPath();

        if (v12 == v5)
        {
          v11 = v7;
        }

        else
        {
          v11 = 1;
        }

        if (v7 == 2)
        {
          v5 = v12;
          v7 = 0;
        }

        else
        {
          v7 = v11;
        }
      }

      else
      {
      }

      ++v6;
    }

    while (v4 != v6);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1012E8D64(uint64_t a1)
{
  type metadata accessor for CRLWPShapeItem(0);
  v2 = [v1 sortedBoardItemsOfClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for CRLBoardItem(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = v9;
      if (swift_dynamicCastClass())
      {
        v11 = v10;
        swift_getAtKeyPath();

        if (((v5 ^ v13) & (v8 != 2)) != 0)
        {
          v12 = 1;
        }

        else
        {
          v12 = v6;
        }

        if (v8 == 2)
        {
          v8 = v13;
          v6 = 0;
        }

        else
        {
          v6 = v12;
        }

        v5 = v8;
      }

      else
      {
      }

      ++v7;
    }

    while (v4 != v7);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1012E8F08(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v4 interactiveCanvasController];
  if (!v11)
  {
    return;
  }

  v48 = v11;
  v52 = [v11 commandController];
  if (!v52)
  {
    v22 = v48;
LABEL_8:

    return;
  }

  v12 = [v48 editorController];
  if (!v12)
  {

    v22 = v52;
    goto LABEL_8;
  }

  LODWORD(v53) = a1;
  v43 = v12;
  v13 = [v12 selectionPath];
  v14 = objc_allocWithZone(CRLCommandSelectionBehavior);
  v42 = v13;
  v41 = [v14 initWithForwardSelectionPath:v13 reverseSelectionPath:v13];
  sub_10088E3FC(v41);
  v15 = [v4 boardItems];
  v16 = type metadata accessor for CRLBoardItem(0);
  sub_1012EE824(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = v16;
  if ((v17 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v17 = v57;
    v18 = v58;
    v19 = v59;
    v20 = v60;
    v21 = v61;
  }

  else
  {
    v20 = 0;
    v23 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v21 = v25 & *(v17 + 56);
  }

  v40 = v19;
  v26 = (v19 + 64) >> 6;
  v46 = (v7 + 32);
  v45 = v53 & 1;
  while (v17 < 0)
  {
    v32 = __CocoaSet.Iterator.next()();
    if (!v32 || (v54 = v32, swift_dynamicCast(), v31 = v55, v29 = v20, v30 = v21, !v55))
    {
LABEL_28:
      sub_100035F90(v17);
      sub_10088E600(0);

      return;
    }

LABEL_26:
    v53 = v30;
    type metadata accessor for CRLWPShapeItem(0);
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      v47 = sub_1005B981C(&qword_101A33220, &qword_1014DC4A0);
      v35 = objc_allocWithZone(v47);
      v36 = &v35[*((swift_isaMask & *v35) + 0xF0)];
      *v36 = 0;
      *(v36 + 1) = 0xE000000000000000;
      (*(**(v34 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v35);
      (*v46)(&v35[*((swift_isaMask & *v35) + 0xD8)], v10, v6);
      v35[*((swift_isaMask & *v35) + 0xE0)] = v45;
      *&v35[*((swift_isaMask & *v35) + 0xE8)] = v49;
      v56.receiver = v35;
      v56.super_class = v47;
      v37 = v31;

      v31 = objc_msgSendSuper2(&v56, "init", v40);
      v38 = (v31 + *((swift_isaMask & *v31) + 0xF0));
      v39 = v51;
      *v38 = v50;
      v38[1] = v39;

      sub_100888700(v31, 0, 0, 4uLL, 0);
    }

    v20 = v29;
    v21 = v53;
  }

  v27 = v20;
  v28 = v21;
  v29 = v20;
  if (v21)
  {
LABEL_22:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v17 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      goto LABEL_28;
    }

    v28 = *(v18 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

char *sub_1012E9588(uint64_t a1, char *isa, uint64_t a3, void (*a4)(void, uint64_t, __n128), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v83 = a7;
  v89 = a5;
  v90 = a6;
  v80 = a4;
  v100 = a3;
  v95 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v8 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v80 - v9;
  v93 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v93);
  v92 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v91 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  sub_1012E8268(KeyPath);
  LODWORD(v15) = v14;

  LODWORD(v16) = v15 != 2;
  v17 = [v7 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v101 = v18;
  if (v18 >> 62)
  {
LABEL_35:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_3;
    }
  }

  v19 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
  }

LABEL_3:
  v20 = 0;
  v84 = v16 & v15;
  v98 = v101 & 0xFFFFFFFFFFFFFF8;
  v99 = v101 & 0xC000000000000001;
  v87 = (v8 + 8);
  v88 = (v8 + 16);
  v86 = 0x8000000101562810;
  v16 = "setAttributeValue(_:value:)";
  v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v82 = xmmword_10146CA70;
  v85 = xmmword_10146C6B0;
  v81 = v19;
  while (1)
  {
    if (v99)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *(v98 + 16))
      {
        goto LABEL_33;
      }

      v27 = *(v101 + 8 * v20 + 32);
    }

    v28 = v27;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v105 = swift_getKeyPath();
    result = sub_10094ABE4();
    v103 = v20 + 1;
    v104 = v20;
    v106 = v28;
    if (!result)
    {
      v102 = objc_opt_self();
      v60 = [v102 _atomicIncrementAssertCount];
      v107 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v107, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v97 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v61 = String._bridgeToObjectiveC()();

      v62 = [v61 lastPathComponent];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v66 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v82;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v60;
      v68 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v68;
      v69 = sub_1005CF04C();
      *(inited + 104) = v69;
      v70 = v97;
      *(inited + 72) = v97;
      *(inited + 136) = &type metadata for String;
      v71 = sub_1000053B0();
      *(inited + 112) = v63;
      *(inited + 120) = v65;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v71;
      *(inited + 152) = 3002;
      v72 = v107;
      *(inited + 216) = v68;
      *(inited + 224) = v69;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v72;
      v73 = v70;
      v74 = v72;
      v75 = static os_log_type_t.error.getter();
      sub_100005404(v66, &_mh_execute_header, v75, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v76 = static os_log_type_t.error.getter();
      sub_100005404(v66, &_mh_execute_header, v76, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v77 = swift_allocObject();
      v77[2] = 8;
      v77[3] = 0;
      v77[4] = 0;
      v77[5] = 0;
      v78 = __VaListBuilder.va_list()();
      v16 = "setAttributeValue(_:value:)";
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v79 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v15 = String._bridgeToObjectiveC()();

      [v102 handleFailureInFunction:v79 file:v21 lineNumber:3002 isFatal:0 format:v15 args:v78];

      v25 = v79;
      v26 = v104;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
      v19 = v81;
      goto LABEL_8;
    }

    v30 = v19;
    v31 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v32 = *(*&v28[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v32)
    {
      break;
    }

    v33 = *&v32[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v33)
    {
      goto LABEL_38;
    }

    v102 = result;
    v34 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v35 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v36 = v92;
    (*(*v33 + 896))();
    v37 = v91;
    sub_1005E0A78(v36 + *(v93 + 20), v91);
    v38 = v32;
    sub_1005E0ADC(v36, type metadata accessor for CRLWPShapeItemCRDTData);
    v39 = v94;
    v40 = v95;
    (*v88)(v94, v37, v95);
    sub_1005E0ADC(v37, type metadata accessor for CRLWPStorageCRDTData);
    v8 = CRAttributedString.attributedString.getter();
    (*v87)(v39, v40);
    v41 = [v8 length];

    v16 = v30;
    v42 = v105;
    v15 = v106;
    if (v41 < 1)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v35, v34))
    {
      goto LABEL_34;
    }

    if (v35 == v34)
    {
      v43 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v44 = *&v106[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v44 || (v45 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v46 = *&v15[v43], *&v15[v43] = v45, v46, (v44 = *&v15[v43]) != 0))
      {
        v47 = v44;

        (v80)(v84 ^ 1, v42);
      }

      v21 = [objc_opt_self() defaultCenter];
      v26 = v104;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
      v19 = v16;
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v48 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v49 = swift_initStackObject();
      *(v49 + 16) = v85;
      v107 = 0xD000000000000021;
      v108 = v86;
      AnyHashable.init<A>(_:)();
      *(v49 + 96) = sub_1005B981C(v89, v90);
      *(v49 + 72) = v42;

      sub_100078EA4(v49);
      swift_setDeallocating();
      sub_10000CAAC(v49 + 32, &unk_1019FB8B0, &unk_101471280);
      v15 = Dictionary._bridgeToObjectiveC()().super.isa;

      v50 = v48;
      v25 = v106;
      [v21 postNotificationName:v50 object:v106 userInfo:v15];
    }

    else
    {
LABEL_25:
      v51 = [*&v106[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v52 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v51 forwardSelectionPath:v51 reverseSelectionPath:v51];
      v53 = *&v15[v31];

      v54 = v53;
      v55 = v83();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v57 = Strong;
        v58 = [Strong commandController];

        if (v58)
        {
          v59 = v52;
          sub_100888700(v55, 0, v52, 4uLL, 0);
        }
      }

      v96 = v55;
      v97 = v52;
      v21 = [objc_opt_self() defaultCenter];
      v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
      v19 = v16;
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v22 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v23 = swift_initStackObject();
      *(v23 + 16) = v85;
      v107 = 0xD000000000000021;
      v108 = v86;
      AnyHashable.init<A>(_:)();
      *(v23 + 96) = sub_1005B981C(v89, v90);
      *(v23 + 72) = v42;

      sub_100078EA4(v23);
      swift_setDeallocating();
      sub_10000CAAC(v23 + 32, &unk_1019FB8B0, &unk_101471280);
      v15 = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = v106;
      [v21 postNotificationName:v22 object:v106 userInfo:v15];

      v25 = v96;
      v26 = v104;
    }

    v16 = "setAttributeValue(_:value:)";
LABEL_8:

    v20 = v26 + 1;
    if (v103 == v19)
    {
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

char *CRLWPShapeEditor.toggleUnderline(_:)()
{
  v76 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v1 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v66 - v2;
  v74 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v74);
  v73 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v72 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  sub_1012E8268(KeyPath);
  LODWORD(v8) = v7;

  LODWORD(v9) = v8 != 2;
  v10 = [v0 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
LABEL_34:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
  }

LABEL_3:
  v13 = 0;
  v81 = v11 & 0xFFFFFFFFFFFFFF8;
  v82 = v11 & 0xC000000000000001;
  v67 = v9 & v8 ^ 1;
  v70 = (v1 + 8);
  v71 = (v1 + 16);
  v69 = 0x8000000101562810;
  v1 = "setAttributeValue(_:value:)";
  v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v66 = xmmword_10146CA70;
  v68 = xmmword_10146C6B0;
  v79 = v12;
  v80 = v11;
  while (1)
  {
    if (v82)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v81 + 16))
      {
        goto LABEL_32;
      }

      v18 = *(v11 + 8 * v13 + 32);
    }

    v9 = v18;
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v85 = swift_getKeyPath();
    result = sub_10094ABE4();
    v84 = v13 + 1;
    if (!result)
    {
      v77 = v13;
      v83 = objc_opt_self();
      v46 = [v83 _atomicIncrementAssertCount];
      v86 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v86, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v78 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v47 = String._bridgeToObjectiveC()();

      v48 = [v47 lastPathComponent];

      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v52 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v66;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v46;
      v54 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v54;
      v55 = sub_1005CF04C();
      *(inited + 104) = v55;
      v56 = v78;
      *(inited + 72) = v78;
      *(inited + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(inited + 112) = v49;
      *(inited + 120) = v51;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v57;
      *(inited + 152) = 3002;
      v58 = v86;
      *(inited + 216) = v54;
      *(inited + 224) = v55;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v58;
      v59 = v56;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v52, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v62 = static os_log_type_t.error.getter();
      sub_100005404(v52, &_mh_execute_header, v62, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v63 = swift_allocObject();
      v63[2] = 8;
      v63[3] = 0;
      v63[4] = 0;
      v63[5] = 0;
      v64 = __VaListBuilder.va_list()();
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v14 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v17.super.isa = String._bridgeToObjectiveC()();

      [v83 handleFailureInFunction:v65 file:v14 lineNumber:3002 isFatal:0 format:v17.super.isa args:v64];

      v9 = v65;
      v13 = v77;
      goto LABEL_7;
    }

    v20 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v21 = *(*&v9[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v21)
    {
      break;
    }

    v22 = *&v21[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v22)
    {
      goto LABEL_37;
    }

    v83 = result;
    v11 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v23 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v24 = v73;
    (*(*v22 + 896))();
    v25 = v72;
    sub_1005E0A78(v24 + *(v74 + 20), v72);
    v1 = v21;
    sub_1005E0ADC(v24, type metadata accessor for CRLWPShapeItemCRDTData);
    v26 = v75;
    v27 = v76;
    (*v71)(v75, v25, v76);
    sub_1005E0ADC(v25, type metadata accessor for CRLWPStorageCRDTData);
    v28 = CRAttributedString.attributedString.getter();
    (*v70)(v26, v27);
    v8 = [v28 length];

    if (v8 < 1)
    {
      goto LABEL_24;
    }

    if (__OFSUB__(v23, v11))
    {
      goto LABEL_33;
    }

    if (v23 == v11)
    {
      v29 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v30 = *&v9[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v30 || (v31 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v32 = *&v9[v29], *&v9[v29] = v31, v32, (v30 = *&v9[v29]) != 0))
      {
        v33 = v30 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
        *v33 = v67;
        *(v33 + 8) = 0;
      }

      v14 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v34 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v35 = swift_initStackObject();
      *(v35 + 16) = v68;
      v86 = 0xD000000000000021;
      v87 = v69;
      AnyHashable.init<A>(_:)();
      *(v35 + 96) = sub_1005B981C(&qword_101A0D8C8, &qword_101491000);
      *(v35 + 72) = v85;

      sub_100078EA4(v35);
      swift_setDeallocating();
      sub_10000CAAC(v35 + 32, &unk_1019FB8B0, &unk_101471280);
      v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v14 postNotificationName:v34 object:v9 userInfo:v17.super.isa];
    }

    else
    {
LABEL_24:
      v36 = [*&v9[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v78 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v36 forwardSelectionPath:v36 reverseSelectionPath:v36];
      v37 = *&v9[v20];
      v38 = v85;

      v39 = v37;
      v40 = sub_1012ED6BC(v39, v11, v23, v38, v67);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v42 = Strong;
        v43 = [Strong commandController];

        if (v43)
        {
          v44 = v78;
          v45 = v78;
          sub_100888700(v40, 0, v44, 4uLL, 0);
        }
      }

      v14 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v15 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v16 = swift_initStackObject();
      *(v16 + 16) = v68;
      v86 = 0xD000000000000021;
      v87 = v69;
      AnyHashable.init<A>(_:)();
      *(v16 + 96) = sub_1005B981C(&qword_101A0D8C8, &qword_101491000);
      *(v16 + 72) = v85;

      sub_100078EA4(v16);
      swift_setDeallocating();
      sub_10000CAAC(v16 + 32, &unk_1019FB8B0, &unk_101471280);
      v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v14 postNotificationName:v15 object:v9 userInfo:v17.super.isa];

      v9 = v40;
    }

LABEL_7:

    ++v13;
    v11 = v80;
    v1 = "setAttributeValue(_:value:)";
    v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
    if (v84 == v79)
    {
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1012EAE6C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CAAC(v9, &unk_1019F4D00, &unk_10146E7F0);
}

char *CRLWPShapeEditor.toggleStrikethrough(_:)()
{
  v79 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v1 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v69 - v2;
  v77 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v77);
  v76 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  sub_1012E8268(KeyPath);
  LODWORD(v8) = v7;

  LODWORD(v9) = v8 != 2;
  v10 = [v0 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
LABEL_38:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
  }

LABEL_3:
  v13 = 0;
  v84 = v11 & 0xFFFFFFFFFFFFFF8;
  v85 = v11 & 0xC000000000000001;
  v70 = v9 & v8 ^ 1;
  v73 = (v1 + 8);
  v74 = (v1 + 16);
  v72 = 0x8000000101562810;
  v1 = "setAttributeValue(_:value:)";
  v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v69 = xmmword_10146CA70;
  v71 = xmmword_10146C6B0;
  v82 = v12;
  v83 = v11;
  while (1)
  {
    if (v85)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v84 + 16))
      {
        goto LABEL_36;
      }

      v18 = *(v11 + 8 * v13 + 32);
    }

    v9 = v18;
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v88 = swift_getKeyPath();
    result = sub_10094ABE4();
    v87 = v13 + 1;
    if (!result)
    {
      v80 = v13;
      v86 = objc_opt_self();
      v49 = [v86 _atomicIncrementAssertCount];
      v89 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v89, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v81 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v50 = String._bridgeToObjectiveC()();

      v51 = [v50 lastPathComponent];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v55 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v69;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v49;
      v57 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v57;
      v58 = sub_1005CF04C();
      *(inited + 104) = v58;
      v59 = v81;
      *(inited + 72) = v81;
      *(inited + 136) = &type metadata for String;
      v60 = sub_1000053B0();
      *(inited + 112) = v52;
      *(inited + 120) = v54;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v60;
      *(inited + 152) = 3002;
      v61 = v89;
      *(inited + 216) = v57;
      *(inited + 224) = v58;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v61;
      v62 = v59;
      v63 = v61;
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v65 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v65, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v66 = swift_allocObject();
      v66[2] = 8;
      v66[3] = 0;
      v66[4] = 0;
      v66[5] = 0;
      v67 = __VaListBuilder.va_list()();
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v14 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v17.super.isa = String._bridgeToObjectiveC()();

      [v86 handleFailureInFunction:v68 file:v14 lineNumber:3002 isFatal:0 format:v17.super.isa args:v67];

      v9 = v68;
      v13 = v80;
      goto LABEL_7;
    }

    v20 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v21 = *(*&v9[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v21)
    {
      break;
    }

    v22 = *&v21[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v22)
    {
      goto LABEL_41;
    }

    v86 = result;
    v11 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v23 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v24 = v76;
    (*(*v22 + 896))();
    v25 = v75;
    sub_1005E0A78(v24 + *(v77 + 20), v75);
    v1 = v21;
    sub_1005E0ADC(v24, type metadata accessor for CRLWPShapeItemCRDTData);
    v26 = v78;
    v27 = v79;
    (*v74)(v78, v25, v79);
    sub_1005E0ADC(v25, type metadata accessor for CRLWPStorageCRDTData);
    v28 = CRAttributedString.attributedString.getter();
    (*v73)(v26, v27);
    v8 = [v28 length];

    if (v8 < 1)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v23, v11))
    {
      goto LABEL_37;
    }

    if (v23 == v11)
    {
      v29 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v30 = *&v9[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v30 || (v31 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v32 = *&v9[v29], *&v9[v29] = v31, v32, (v30 = *&v9[v29]) != 0))
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v34 = v70;
        if (v33)
        {
          v34 = 0;
        }

        v35 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
        if ((v33 & 1) == 0)
        {
          v35 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
        }

        v36 = v30 + *v35;
        *v36 = v34;
        *(v36 + 8) = v33 & 1;
      }

      v14 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v37 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v38 = swift_initStackObject();
      *(v38 + 16) = v71;
      v89 = 0xD000000000000021;
      v90 = v72;
      AnyHashable.init<A>(_:)();
      *(v38 + 96) = sub_1005B981C(&qword_101A0D8D0, &unk_1014906F0);
      *(v38 + 72) = v88;

      sub_100078EA4(v38);
      swift_setDeallocating();
      sub_10000CAAC(v38 + 32, &unk_1019FB8B0, &unk_101471280);
      v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v14 postNotificationName:v37 object:v9 userInfo:v17.super.isa];
    }

    else
    {
LABEL_28:
      v39 = [*&v9[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v81 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v39 forwardSelectionPath:v39 reverseSelectionPath:v39];
      v40 = *&v9[v20];
      v41 = v88;

      v42 = v40;
      v43 = sub_1012ED8D0(v42, v11, v23, v41, v70);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v45 = Strong;
        v46 = [Strong commandController];

        if (v46)
        {
          v47 = v81;
          v48 = v81;
          sub_100888700(v43, 0, v47, 4uLL, 0);
        }
      }

      v14 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v15 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v16 = swift_initStackObject();
      *(v16 + 16) = v71;
      v89 = 0xD000000000000021;
      v90 = v72;
      AnyHashable.init<A>(_:)();
      *(v16 + 96) = sub_1005B981C(&qword_101A0D8D0, &unk_1014906F0);
      *(v16 + 72) = v88;

      sub_100078EA4(v16);
      swift_setDeallocating();
      sub_10000CAAC(v16 + 32, &unk_1019FB8B0, &unk_101471280);
      v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v14 postNotificationName:v15 object:v9 userInfo:v17.super.isa];

      v9 = v43;
    }

LABEL_7:

    ++v13;
    v11 = v83;
    v1 = "setAttributeValue(_:value:)";
    v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
    if (v87 == v82)
    {
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1012EBBDC(uint64_t a1, Swift::Int a2)
{
  v4 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_10094283C(a2);

      ++v7;
      if (v10 == i)
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

uint64_t sub_1012EBD54(uint64_t a1, void (*a2)(id *))
{
  v5 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8[2] = a1;
  sub_1012E33D0(a2, v8, v6);
}

void sub_1012EBDE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_100960E34();
  if (v4)
  {
    v5 = [v4 selectedTextRange];
    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v7 = *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

      a3(v6, v7);
    }
  }
}

uint64_t sub_1012EBE7C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id *))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = [v6 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10[2] = v11;
  sub_1012E33D0(a4, v10, v8);

  return sub_100005070(v11);
}

void CRLWPShapeEditor.addContextualMenuElements(to:at:)(void *a1)
{
  v2 = v1;
  v38.super_class = CRLWPShapeEditor;
  objc_msgSendSuper2(&v38, "addContextualMenuElementsToArray:atPoint:", a1);
  if ([v1 shouldAddAutosizeTextMenuItem])
  {
    v36 = sub_1012E44C8;
    v37 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v35 = sub_1012E44CC;
    *(&v35 + 1) = &unk_1018BBF70;
    v4 = _Block_copy(&aBlock);

    v5 = [a1 indexOfObjectPassingTest:v4];
    _Block_release(v4);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else if (v5 != NSNotFound.getter())
    {
      v6 = [a1 objectAtIndexedSubscript:v5];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
      if (swift_dynamicCast())
      {
        sub_100006370(0, &unk_1019FF3D0, UICommand_ptr);
        v7 = objc_opt_self();
        v8 = [v7 mainBundle];
        v9 = String._bridgeToObjectiveC()();
        v10 = String._bridgeToObjectiveC()();
        v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = String._bridgeToObjectiveC()();
        v13 = objc_opt_self();
        v14 = [v13 systemImageNamed:v12];

        aBlock = 0u;
        v35 = 0u;
        v15 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        v16 = [v2 shrinkToFitControlState];
        if (v16)
        {
          v17 = v16;
          [v15 setState:{objc_msgSend(v16, "stateValue")}];
        }

        v18 = [v7 mainBundle];
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String._bridgeToObjectiveC()();
        v23 = [v13 imageNamed:v22];

        aBlock = 0u;
        v35 = 0u;
        v24 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        v25 = [v33 children];
        sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&aBlock = v26;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CE00;
        *(inited + 32) = v24;
        *(inited + 40) = v15;
        v28 = v24;
        v29 = v15;
        sub_10079A660(inited);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v31 = [v33 menuByReplacingChildren:isa];

        v32 = v31;
        [a1 replaceObjectAtIndex:v5 withObject:v32];
      }
    }
  }
}

Swift::Void __swiftcall CRLWPShapeEditor.updateStateForCommand(_:)(UICommand a1)
{
  sub_100006370(0, &qword_101A0F420, off_10182FA00);
  if ([swift_getObjCClassFromMetadata() superclass])
  {
    swift_getObjCClassMetadata();
    if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"updateStateForCommand:"])
    {
      v32.receiver = v1;
      v32.super_class = CRLWPShapeEditor;
      objc_msgSendSuper2(&v32, "updateStateForCommand:", a1.super.super.isa);
    }
  }

  [(objc_class *)a1.super.super.isa action];
  if (static Selector.== infix(_:_:)())
  {
    v3 = [v1 shrinkToFitControlState];
    if (v3)
    {
      v4 = v3;
      -[objc_class setState:](a1.super.super.isa, "setState:", [v3 stateValue]);
    }

    return;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    KeyPath = swift_getKeyPath();
    sub_1012E8268(KeyPath);
    v7 = v6;

    if (v7 == 2)
    {
      return;
    }

    if ((v7 & 0x100) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7 & 1;
    }

    goto LABEL_15;
  }

  if (static Selector.== infix(_:_:)())
  {
    v9 = swift_getKeyPath();
    sub_1012E875C(v9);
    v11 = v10;
    v13 = v12;
    v14 = v12;

    if (v14 == 2)
    {
      return;
    }

    v15 = v11 == 1;
    goto LABEL_29;
  }

  if (static Selector.== infix(_:_:)())
  {
    v16 = swift_getKeyPath();
    sub_1012E875C(v16);
    v18 = v17;
    v13 = v19;
    v20 = v19;

    if (v20 == 2)
    {
      return;
    }

    v15 = v18 == 0;
    goto LABEL_29;
  }

  if (static Selector.== infix(_:_:)())
  {
    v21 = swift_getKeyPath();
    sub_1012E875C(v21);
    v23 = v22;
    v13 = v24;
    v25 = v24;

    if (v25 == 2)
    {
      return;
    }

    v15 = v23 == 2;
    goto LABEL_29;
  }

  if (static Selector.== infix(_:_:)())
  {
    v26 = swift_getKeyPath();
    sub_1012E875C(v26);
    v28 = v27;
    v13 = v29;
    v30 = v29;

    if (v30 != 2)
    {
      v15 = v28 == 3;
LABEL_29:
      v31 = v15;
      v8 = v31 & ~v13;
LABEL_15:
      [(objc_class *)a1.super.super.isa setState:v8];
    }
  }
}

uint64_t sub_1012EC910()
{
  v1 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1012EE824(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = objc_opt_self();
  sub_1012E3C48(v2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v5 = [v3 anyInfoIsTextBox:isa];

  if (v5 & 1) != 0 || (sub_1012E3C48(v2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem), v6 = Set._bridgeToObjectiveC()().super.isa, , v7 = [v3 anyInfoIsStickyNote:v6], v6, (v7) || (sub_1012E3C48(v2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem), v8 = Set._bridgeToObjectiveC()().super.isa, , v9 = objc_msgSend(v3, "anyInfoIsLine:", v8), v8, (v9))
  {

    return 0;
  }

  else
  {
    sub_1012E3C48(v2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem);

    v11 = Set._bridgeToObjectiveC()().super.isa;

    v12 = [v3 anyInfoIsConnectionLine:v11];

    return v12 ^ 1;
  }
}

void CRLWPShapeEditor.toggleShrinkToFit(_:)()
{
  KeyPath = swift_getKeyPath();
  sub_1012E8D64(KeyPath);
  v2 = v1;

  if (v2 != 2)
  {
    v3 = swift_getKeyPath();
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_1012E8F08((v2 & 1) == 0, v3, v9, v11);
  }
}

id sub_1012ECEC4()
{
  KeyPath = swift_getKeyPath();
  sub_1012E8D64(KeyPath);
  v2 = v1;

  if (v2 == 2)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    return [objc_allocWithZone(CRLPlatformControlState) initWithValue:2];
  }

  return [objc_allocWithZone(CRLPlatformControlState) initWithValue:(v2 & 1) != 0];
}

void sub_1012ECF60(uint64_t a1)
{
  v3 = *v1;
  v4 = NSObject._rawHashValue(seed:)(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    type metadata accessor for CRLBoardItem(0);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

char *sub_1012ED090(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v21 = a3;
  v9 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  *(&v20 - v13) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v26 = &type metadata for CRLWPCharacterScope;
  v27 = &type metadata for CRLWPFontSizeAttribute;
  v15 = sub_10082465C();
  v28 = v15;
  v29 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v30, 0x657A6953746E6F66, 0xE800000000000000);

  v22 = &type metadata for CRLWPCharacterScope;
  v23 = &type metadata for CRLWPFontSizeAttribute;
  v24 = v15;
  v25 = KeyPath;
  swift_getKeyPath();
  *&v30 = a5;
  BYTE4(v30) = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_1008246B0();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v14, v11, &qword_101A0D850, &unk_10148DE30);
  v17 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0, &qword_101488FB0));
  v18 = sub_100961810(a1, a2, v21, v11);
  sub_10000CAAC(v14, &qword_101A0D850, &unk_10148DE30);
  return v18;
}

char *sub_1012ED2B0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPFontBoldAttribute;
  v14 = sub_1008244A8();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 1684828002, 0xE400000000000000);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPFontBoldAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  LOBYTE(v29) = a5;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_1008244FC();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A0D850, &unk_10148DE30);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0, &qword_101488FB0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850, &unk_10148DE30);
  return v17;
}

char *sub_1012ED4B4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPFontItalicAttribute;
  v14 = sub_1008245B4();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x63696C617469, 0xE600000000000000);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPFontItalicAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  LOBYTE(v29) = a5;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_100824608();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A0D850, &unk_10148DE30);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0, &qword_101488FB0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850, &unk_10148DE30);
  return v17;
}

char *sub_1012ED6BC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPUnderlineAttribute;
  v14 = sub_100824704();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x6E696C7265646E75, 0xE900000000000065);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPUnderlineAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  v29 = a5;
  LOBYTE(v30) = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_100824758();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A0D850, &unk_10148DE30);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0, &qword_101488FB0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850, &unk_10148DE30);
  return v17;
}

char *sub_1012ED8D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPStrikethroughAttribute;
  v14 = sub_10096227C();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x6874656B69727473, 0xED00006867756F72);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPStrikethroughAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  v29 = a5;
  LOBYTE(v30) = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_1009622D0();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A0D850, &unk_10148DE30);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0, &qword_101488FB0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850, &unk_10148DE30);
  return v17;
}

char *sub_1012EDB4C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v7 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  *(&v18 - v11) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v26 = &type metadata for CRLWPParagraphScope;
  v27 = &type metadata for CRLWPParagraphAlignmentAttribute;
  v13 = sub_1006ACAD4();
  v28 = v13;
  v29 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v30, 0xD000000000000012, 0x8000000101551650);

  v22 = &type metadata for CRLWPParagraphScope;
  v23 = &type metadata for CRLWPParagraphAlignmentAttribute;
  v24 = v13;
  v25 = KeyPath;
  swift_getKeyPath();
  v30 = a5;
  LOBYTE(v31) = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_100962228();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v12, v9, &qword_101A06188, &qword_101483A00);
  v15 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
  v16 = sub_100961C20(v19, v20, v21, v9);
  sub_10000CAAC(v12, &qword_101A06188, &qword_101483A00);
  return v16;
}

char *sub_1012EDD60(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPParagraphScope;
  v26 = &type metadata for CRLWPListStyleTypeAttribute;
  v14 = sub_100962180();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x6C7974537473696CLL, 0xE900000000000065);

  v21 = &type metadata for CRLWPParagraphScope;
  v22 = &type metadata for CRLWPListStyleTypeAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  v29 = a5;
  LOBYTE(v30) = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_1009621D4();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A06188, &qword_101483A00);
  v16 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
  v17 = sub_100961C20(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A06188, &qword_101483A00);
  return v17;
}

char *sub_1012EDF78(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v9 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  *(&v21 - v13) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v29 = &type metadata for CRLWPCharacterScope;
  v30 = &type metadata for CRLWPFontNameAttribute;
  v15 = sub_100962324();
  v31 = v15;
  v32 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(v33, 0x656D614E746E6F66, 0xE800000000000000);

  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPFontNameAttribute;
  v27 = v15;
  v28 = KeyPath;
  swift_getKeyPath();

  v33[0] = sub_100CB23B4(a5, a6);
  v33[1] = v17;
  v34 = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_1009623E4();
  CRAttributedString.Attributes.subscript.setter();

  sub_10000BE14(v14, v11, &qword_101A0D850, &unk_10148DE30);
  v18 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0, &qword_101488FB0));
  v19 = sub_100961810(v22, v23, v24, v11);
  sub_10000CAAC(v14, &qword_101A0D850, &unk_10148DE30);
  return v19;
}

char *sub_1012EE1A8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPParagraphScope;
  v26 = &type metadata for CRLWPListStartAttribute;
  v14 = sub_1009620D8();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x726174537473696CLL, 0xE900000000000074);

  v21 = &type metadata for CRLWPParagraphScope;
  v22 = &type metadata for CRLWPListStartAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  v29 = a5;
  LOBYTE(v30) = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_10096212C();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A06188, &qword_101483A00);
  v16 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
  v17 = sub_100961C20(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A06188, &qword_101483A00);
  return v17;
}

char *sub_1012EE3BC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v7 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  *(&v18 - v11) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v26 = &type metadata for CRLWPParagraphScope;
  v27 = &type metadata for CRLWPWritingDirectionAttribute;
  v13 = sub_100962450();
  v28 = v13;
  v29 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v30, 0xD000000000000014, 0x800000010157BA40);

  v22 = &type metadata for CRLWPParagraphScope;
  v23 = &type metadata for CRLWPWritingDirectionAttribute;
  v24 = v13;
  v25 = KeyPath;
  swift_getKeyPath();
  v30 = a5;
  LOBYTE(v31) = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_1009624A4();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v12, v9, &qword_101A06188, &qword_101483A00);
  v15 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
  v16 = sub_100961C20(v19, v20, v21, v9);
  sub_10000CAAC(v12, &qword_101A06188, &qword_101483A00);
  return v16;
}

char *sub_1012EE5D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = a3;
  v19 = a2;
  v8 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPCharacterFillAttribute;
  v14 = sub_10082489C();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x6574636172616863, 0xED00006C6C694672);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPCharacterFillAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();

  sub_101247234(a5, &v29);
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_1008248F0();
  CRAttributedString.Attributes.subscript.setter();

  sub_10000BE14(v13, v10, &qword_101A0D850, &unk_10148DE30);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0, &qword_101488FB0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850, &unk_10148DE30);
  return v17;
}

uint64_t sub_1012EE824(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1012EE86C(uint64_t a1)
{
  sub_100064288(a1, v10);
  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  if (swift_dynamicCast())
  {
    v1 = [v9 identifier];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1012EE9C4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A33368, &qword_1014DC6B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1012EFA1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019F43C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLFolderIdentifierStorage(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1012EEB80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1005B981C(&qword_101A33358, &qword_1014DC6B0);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLFolderIdentifierStorage(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1012EFA1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_10007C550(&qword_1019F43A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_1012EFA70(v19, v18);
  sub_100005070(a1);
  return sub_1012EFAD4(v19);
}

uint64_t sub_1012EEEB0()
{
  if (*v0)
  {
    return 0x6D614E72656E776FLL;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1012EEEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065)
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

uint64_t sub_1012EEFCC(uint64_t a1)
{
  v2 = sub_1012EFA1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1012EF008(uint64_t a1)
{
  v2 = sub_1012EFA1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1012EF074(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1012EF11C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1012EF1B8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1012EF25C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A33370, &qword_1014DC6C0);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLFolderIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1012EFB30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_10007C550(&qword_101A33380, type metadata accessor for CRLFolderIdentifierStorage, byte_1014DC688);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_10000C270(v13, v11, type metadata accessor for CRLFolderIdentifierStorage);
    sub_10000C270(v11, v12, type metadata accessor for CRLFolderIdentifier);
  }

  return sub_100005070(a1);
}

uint64_t sub_1012EF4D0(uint64_t a1)
{
  v2 = sub_1012EFB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1012EF50C(uint64_t a1)
{
  v2 = sub_1012EFB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1012EF560(void *a1)
{
  v2 = sub_1005B981C(&qword_101A33388, &qword_1014DC6C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_1012EFB30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_10007C550(&qword_101A33390, type metadata accessor for CRLFolderIdentifierStorage, byte_1014DC660);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_1012EF6D8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1012EF77C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return String.hash(into:)();
}

Swift::Int sub_1012EF81C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1012EF8BC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static UUID.== infix(_:_:)())
  {
    v4 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1012EF928(void *a1)
{
  a1[1] = sub_10007C550(&qword_101A019C8, type metadata accessor for CRLFolderIdentifier, "]s5");
  a1[2] = sub_10007C550(&qword_101A019D8, type metadata accessor for CRLFolderIdentifier, "us5");
  result = sub_10007C550(&qword_101A21C80, type metadata accessor for CRLFolderIdentifier, byte_1014DC54C);
  a1[3] = result;
  return result;
}

unint64_t sub_1012EFA1C()
{
  result = qword_101A33360;
  if (!qword_101A33360)
  {
    result = swift_getWitnessTable(byte_1014DC89C, &type metadata for CRLFolderIdentifierStorage.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A33360);
  }

  return result;
}

uint64_t sub_1012EFA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1012EFAD4(uint64_t a1)
{
  v2 = type metadata accessor for CRLFolderIdentifierStorage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1012EFB30()
{
  result = qword_101A33378;
  if (!qword_101A33378)
  {
    result = swift_getWitnessTable("\rq5", &type metadata for CRLFolderIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A33378);
  }

  return result;
}

unint64_t sub_1012EFBA8()
{
  result = qword_101A33398;
  if (!qword_101A33398)
  {
    result = swift_getWitnessTable("mn5", &type metadata for CRLFolderIdentifierStorage.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A33398);
  }

  return result;
}

unint64_t sub_1012EFC00()
{
  result = qword_101A333A0;
  if (!qword_101A333A0)
  {
    result = swift_getWitnessTable(byte_1014DC824, &type metadata for CRLFolderIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A333A0);
  }

  return result;
}

unint64_t sub_1012EFC58()
{
  result = qword_101A333A8;
  if (!qword_101A333A8)
  {
    result = swift_getWitnessTable(byte_1014DC794, &type metadata for CRLFolderIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A333A8);
  }

  return result;
}

unint64_t sub_1012EFCB0()
{
  result = qword_101A333B0;
  if (!qword_101A333B0)
  {
    result = swift_getWitnessTable(byte_1014DC7BC, &type metadata for CRLFolderIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A333B0);
  }

  return result;
}

unint64_t sub_1012EFD08()
{
  result = qword_101A333B8;
  if (!qword_101A333B8)
  {
    result = swift_getWitnessTable("]r5", &type metadata for CRLFolderIdentifierStorage.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A333B8);
  }

  return result;
}

unint64_t sub_1012EFD60()
{
  result = qword_101A333C0;
  if (!qword_101A333C0)
  {
    result = swift_getWitnessTable("Er5", &type metadata for CRLFolderIdentifierStorage.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A333C0);
  }

  return result;
}

uint64_t sub_1012EFDC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 40))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1012EFE1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_1012EFEB4(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v10 = sub_1005B981C(&unk_101A33B10, &unk_1014DDD70);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v2 + v16, v9);
  v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(a1 + v17, v6);
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);
  CRStruct_6.delta(_:from:)();
  sub_1005E2BDC(v6);
  sub_1005E2BDC(v9);
  sub_10000BE14(v15, v12, &unk_101A33B10, &unk_1014DDD70);
  v18 = sub_1005B981C(&qword_101A33AA8, &qword_1014DD7F8);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    sub_10000CAAC(v15, &unk_101A33B10, &unk_1014DDD70);
    sub_10000CAAC(v12, &unk_101A33B10, &unk_1014DDD70);
    return 0;
  }

  else
  {
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v21, qword_101AD6348);
    sub_10001A2F8(&qword_101A33AA0, &qword_101A33AA8, &qword_1014DD7F8, &protocol conformance descriptor for CRStructMergeableDelta_6<A>);
    v22 = v25[9];
    v23 = PartialCRDT.deltaSerializedData(_:version:)();
    if (v22)
    {
      sub_10000CAAC(v15, &unk_101A33B10, &unk_1014DDD70);
      return (*(v19 + 8))(v12, v18);
    }

    else
    {
      v24 = v23;
      sub_10000CAAC(v15, &unk_101A33B10, &unk_1014DDD70);
      (*(v19 + 8))(v12, v18);
      return v24;
    }
  }
}

uint64_t sub_1012F026C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + *(type metadata accessor for CRLUserBoardMetadataCRDTData(0) + 36)) = _swiftEmptyDictionarySingleton;
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  return CRRegister.init(wrappedValue:)();
}

unint64_t sub_1012F035C()
{
  v1 = v0[3];
  result = sub_10001FF1C();
  if (result >= v1)
  {
    v0[3] = sub_1012F0858();
    v3 = v0[4];
    if (sub_10001FF1C() >= v3)
    {
      v0[4] = sub_1012F0DC0();
    }

    v4 = v0[5];
    result = sub_10001FF1C();
    if (result >= v4)
    {
      result = sub_1012F1838();
      v0[5] = result;
    }
  }

  return result;
}

uint64_t sub_1012F03C0(uint64_t a1)
{
  v31 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A33AA8, &qword_1014DD7F8);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = *(a1 + 40);
  sub_1012F8098(a1, v34);
  sub_10001A2F8(&qword_101A33AA0, &qword_101A33AA8, &qword_1014DD7F8, &protocol conformance descriptor for CRStructMergeableDelta_6<A>);
  v10 = v37;
  PartialCRDT.init(serializedData:)();
  if (!v10)
  {
    v27 = v5;
    v11 = v30;
    v28 = v3;
    v37 = 0;
    v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    v13 = v32;
    swift_beginAccess();
    sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);
    LOBYTE(v9) = CRStruct_6.merge(delta:)();
    swift_endAccess();
    if (v9)
    {
      v14 = *(a1 + 16);
      v35[0] = *a1;
      v35[1] = v14;
      v36 = *(a1 + 32);
      sub_1012F22F0(v35);
    }

    else
    {
      v31 = v6;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v26 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      sub_1005E2B78(v13 + v12, v11);
      sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
      v16 = v27;
      CRRegister.wrappedValue.getter();
      sub_1005E2BDC(v11);
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v29 + 8))(v16, v28);
      *(inited + 56) = &type metadata for String;
      v20 = sub_1000053B0();
      *(inited + 64) = v20;
      *(inited + 32) = v17;
      *(inited + 40) = v19;
      v34[0] = v13;
      type metadata accessor for CRLBoardData(0);

      v21 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v20;
      *(inited + 72) = v21;
      *(inited + 80) = v22;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v23, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v6 = v31;
    }

    (*(v33 + 8))(v8, v6);
  }

  return v9 & 1;
}

uint64_t sub_1012F0858()
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = inited + 32;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() < v2)
  {
    v42 = objc_opt_self();
    LODWORD(v4) = [v42 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v44, "Call to board computedMinRequiredVersion while current minRequiredVersion is higher than current: %{public}d", 108, 2u);
    StaticString.description.getter("computedMinRequiredVersion", 26, 2);
    v43 = inited;
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146CA70;
      *(v12 + 56) = &type metadata for Int32;
      *(v12 + 64) = &protocol witness table for Int32;
      *(v12 + 32) = v4;
      v13 = sub_1005CF000();
      *(v12 + 96) = v13;
      v14 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
      *(v12 + 104) = v14;
      *(v12 + 72) = v5;
      *(v12 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v12 + 112) = v8;
      *(v12 + 120) = v10;
      *(v12 + 176) = &type metadata for UInt;
      *(v12 + 184) = &protocol witness table for UInt;
      *(v12 + 144) = v15;
      *(v12 + 152) = 68;
      v16 = v44;
      *(v12 + 216) = v13;
      *(v12 + 224) = v14;
      *(v12 + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Call to board computedMinRequiredVersion while current minRequiredVersion is higher than current: %{public}d", 108, 2, v43);

      type metadata accessor for __VaListBuilder();
      v5 = swift_allocObject();
      v5[2] = 8;
      v5[3] = 0;
      v21 = v5 + 3;
      v5[4] = 0;
      v5[5] = 0;
      v8 = *(v43 + 16);
      if (!v8)
      {
LABEL_29:
        v37 = __VaListBuilder.va_list()();
        StaticString.description.getter("computedMinRequiredVersion", 26, 2);
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Call to board computedMinRequiredVersion while current minRequiredVersion is higher than current: %{public}d", 108, 2);
        v40 = String._bridgeToObjectiveC()();

        [v42 handleFailureInFunction:v38 file:v39 lineNumber:68 isFatal:0 format:v40 args:v37];

        return 0x1000000000000;
      }

      v10 = 0;
      while (1)
      {
        v22 = (v3 + 40 * v10);
        v4 = v22[3];
        sub_100020E58(v22, v4);
        v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v24 = *v21;
        v25 = *(v23 + 16);
        v26 = __OFADD__(*v21, v25);
        v27 = *v21 + v25;
        if (v26)
        {
          break;
        }

        v28 = v5[4];
        if (v28 >= v27)
        {
          goto LABEL_20;
        }

        if (v28 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v4 = v5[5];
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        v5[4] = v27;
        if ((v27 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v29 = v23;
        v30 = swift_slowAlloc();
        v31 = v30;
        v5[5] = v30;
        if (v4)
        {
          if (v30 != v4 || v30 >= &v4[8 * v24])
          {
            memmove(v30, v4, 8 * v24);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v23 = v29;
LABEL_20:
          v31 = v5[5];
          if (!v31)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v23 = v29;
        if (!v31)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v33 = *(v23 + 16);
        if (v33)
        {
          v34 = (v23 + 32);
          v35 = *v21;
          while (1)
          {
            v36 = *v34++;
            *&v31[8 * v35] = v36;
            v35 = *v21 + 1;
            if (__OFADD__(*v21, 1))
            {
              break;
            }

            *v21 = v35;
            if (!--v33)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v10 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

LABEL_28:

  return 0x1000000000000;
}

uint64_t sub_1012F0DC0()
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v84 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = inited + 32;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() >= v2)
  {
LABEL_28:

    goto LABEL_30;
  }

  v82 = v0;
  v81 = objc_opt_self();
  LODWORD(v5) = [v81 _atomicIncrementAssertCount];
  v85 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v85, "Call to board computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersion is higher than current: %{public}d", 129, 2u);
  StaticString.description.getter("computedMinRequiredVersionForGoodEnoughFidelity", 47, 2);
  v0 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
  v83 = inited;
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v9;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_69;
  }

LABEL_3:
  v10 = static OS_os_log.crlAssert;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10146CA70;
  *(v11 + 56) = &type metadata for Int32;
  *(v11 + 64) = &protocol witness table for Int32;
  *(v11 + 32) = v5;
  v12 = sub_1005CF000();
  *(v11 + 96) = v12;
  v13 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(v11 + 104) = v13;
  *(v11 + 72) = v0;
  *(v11 + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(v11 + 112) = v8;
  *(v11 + 120) = v4;
  *(v11 + 176) = &type metadata for UInt;
  *(v11 + 184) = &protocol witness table for UInt;
  *(v11 + 144) = v14;
  *(v11 + 152) = 89;
  v15 = v85;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = v15;
  v16 = v0;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Call to board computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersion is higher than current: %{public}d", 129, 2, v83);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  *(v5 + 16) = 8;
  *(v5 + 24) = 0;
  v20 = (v5 + 24);
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v21 = v83[2];
  if (v21)
  {
    v22 = 0;
    v8 = 40;
    while (1)
    {
      v23 = (v3 + 40 * v22);
      v4 = v23[4];
      v0 = sub_100020E58(v23, v23[3]);
      v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v25 = *v20;
      v26 = *(v24 + 16);
      v27 = __OFADD__(*v20, v26);
      v28 = *v20 + v26;
      if (v27)
      {
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
        swift_once();
        goto LABEL_3;
      }

      v0 = *(v5 + 32);
      if (v0 >= v28)
      {
        goto LABEL_20;
      }

      if (v0 + 0x4000000000000000 < 0)
      {
        goto LABEL_65;
      }

      v4 = *(v5 + 40);
      if (2 * v0 > v28)
      {
        v28 = 2 * v0;
      }

      *(v5 + 32) = v28;
      if ((v28 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_66;
      }

      v29 = v24;
      v30 = swift_slowAlloc();
      v31 = v30;
      *(v5 + 40) = v30;
      if (v4)
      {
        break;
      }

      v24 = v29;
      if (!v31)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v33 = *(v24 + 16);
      if (v33)
      {
        v34 = (v24 + 32);
        v35 = *v20;
        while (1)
        {
          v36 = *v34++;
          *&v31[8 * v35] = v36;
          v35 = *v20 + 1;
          if (__OFADD__(*v20, 1))
          {
            break;
          }

          *v20 = v35;
          if (!--v33)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_5:

      if (++v22 == v21)
      {
        goto LABEL_29;
      }
    }

    if (v30 != v4 || v30 >= &v4[8 * v25])
    {
      memmove(v30, v4, 8 * v25);
    }

    v0 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v24 = v29;
LABEL_20:
    v31 = *(v5 + 40);
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v37 = __VaListBuilder.va_list()();
  StaticString.description.getter("computedMinRequiredVersionForGoodEnoughFidelity", 47, 2);
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Call to board computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersion is higher than current: %{public}d", 129, 2);
  v40 = String._bridgeToObjectiveC()();

  [v81 handleFailureInFunction:v38 file:v39 lineNumber:89 isFatal:0 format:v40 args:v37];

  v0 = v82;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
LABEL_30:
  v41 = swift_initStackObject();
  *(v41 + 16) = v84;
  v42 = *(v0 + 32);
  *(v41 + 32) = v42;
  v3 = v41 + 32;
  *(v41 + 56) = v4;
  *(v41 + 64) = v5;
  if (sub_10001FF1C() >= v42)
  {
LABEL_58:
  }

  else
  {
    v83 = objc_opt_self();
    v43 = [v83 _atomicIncrementAssertCount];
    v85 = [objc_allocWithZone(NSString) init];
    sub_100604538(v41, &v85, "Call to board computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 144, 2u);
    StaticString.description.getter("computedMinRequiredVersionForGoodEnoughFidelity", 47, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
    *&v84 = v41;
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlAssert;
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10146CA70;
    *(v51 + 56) = &type metadata for Int32;
    *(v51 + 64) = &protocol witness table for Int32;
    *(v51 + 32) = v43;
    v52 = sub_1005CF000();
    *(v51 + 96) = v52;
    v53 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v51 + 104) = v53;
    *(v51 + 72) = v44;
    *(v51 + 136) = &type metadata for String;
    v54 = sub_1000053B0();
    *(v51 + 112) = v47;
    *(v51 + 120) = v49;
    *(v51 + 176) = &type metadata for UInt;
    *(v51 + 184) = &protocol witness table for UInt;
    *(v51 + 144) = v54;
    *(v51 + 152) = 90;
    v55 = v85;
    *(v51 + 216) = v52;
    *(v51 + 224) = v53;
    *(v51 + 192) = v55;
    v56 = v44;
    v57 = v55;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v51);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v59, "Call to board computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 144, 2, v84);

    type metadata accessor for __VaListBuilder();
    v60 = swift_allocObject();
    v60[2] = 8;
    v60[3] = 0;
    v61 = v60 + 3;
    v60[4] = 0;
    v60[5] = 0;
    v62 = *(v84 + 16);
    if (v62)
    {
      v63 = 0;
      v8 = 40;
      while (1)
      {
        v64 = (v3 + 40 * v63);
        v4 = v64[3];
        v0 = sub_100020E58(v64, v4);
        v65 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v5 = *v61;
        v66 = *(v65 + 16);
        v27 = __OFADD__(*v61, v66);
        v67 = *v61 + v66;
        if (v27)
        {
          goto LABEL_64;
        }

        v0 = v60[4];
        if (v0 >= v67)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_67;
        }

        v4 = v60[5];
        if (2 * v0 > v67)
        {
          v67 = 2 * v0;
        }

        v60[4] = v67;
        if ((v67 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_68;
        }

        v68 = v65;
        v69 = swift_slowAlloc();
        v70 = v69;
        v60[5] = v69;
        if (v4)
        {
          break;
        }

        v65 = v68;
        if (!v70)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v72 = *(v65 + 16);
        if (v72)
        {
          v73 = (v65 + 32);
          v74 = *v61;
          do
          {
            v75 = *v73++;
            *&v70[8 * v74] = v75;
            v74 = *v61 + 1;
            if (__OFADD__(*v61, 1))
            {
              goto LABEL_62;
            }

            *v61 = v74;
          }

          while (--v72);
        }

        if (++v63 == v62)
        {
          goto LABEL_59;
        }
      }

      if (v69 != v4 || v69 >= &v4[8 * v5])
      {
        memmove(v69, v4, 8 * v5);
      }

      v0 = v60;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v65 = v68;
LABEL_50:
      v70 = v60[5];
      if (!v70)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v76 = __VaListBuilder.va_list()();
    StaticString.description.getter("computedMinRequiredVersionForGoodEnoughFidelity", 47, 2);
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Call to board computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 144, 2);
    v79 = String._bridgeToObjectiveC()();

    [v83 handleFailureInFunction:v77 file:v78 lineNumber:90 isFatal:0 format:v79 args:v76];
  }

  return 0x2000400000000;
}

uint64_t sub_1012F1838()
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = (inited + 32);
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  v81 = v0;
  if (sub_10001FF1C() >= v2)
  {
LABEL_28:

    goto LABEL_30;
  }

  v80 = objc_opt_self();
  LODWORD(v5) = [v80 _atomicIncrementAssertCount];
  v82 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v82, "Call to board computedMinRequiredVersionForFullFidelity while current minRequiredVersion is higher than current: %{public}d", 123, 2u);
  StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
  v0 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v9;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_75;
  }

LABEL_3:
  v10 = static OS_os_log.crlAssert;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10146CA70;
  *(v11 + 56) = &type metadata for Int32;
  *(v11 + 64) = &protocol witness table for Int32;
  *(v11 + 32) = v5;
  v12 = sub_1005CF000();
  *(v11 + 96) = v12;
  v13 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(v11 + 104) = v13;
  *(v11 + 72) = v0;
  *(v11 + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(v11 + 112) = v8;
  *(v11 + 120) = v4;
  *(v11 + 176) = &type metadata for UInt;
  *(v11 + 184) = &protocol witness table for UInt;
  *(v11 + 144) = v14;
  *(v11 + 152) = 106;
  v8 = v82;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = v8;
  v15 = v0;
  v16 = v8;
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "Call to board computedMinRequiredVersionForFullFidelity while current minRequiredVersion is higher than current: %{public}d", 123, 2, inited);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v19 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v20 = *(inited + 16);
  if (v20)
  {
    v21 = 0;
    inited = 40;
    while (1)
    {
      v22 = &v3[40 * v21];
      v4 = *(v22 + 4);
      v0 = sub_100020E58(v22, *(v22 + 3));
      v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v24 = *v19;
      v25 = *(v23 + 16);
      v26 = __OFADD__(*v19, v25);
      v27 = *v19 + v25;
      if (v26)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        swift_once();
        goto LABEL_3;
      }

      v0 = v5[4];
      if (v0 >= v27)
      {
        goto LABEL_20;
      }

      if (v0 + 0x4000000000000000 < 0)
      {
        goto LABEL_71;
      }

      v4 = v5[5];
      if (2 * v0 > v27)
      {
        v27 = 2 * v0;
      }

      v5[4] = v27;
      if ((v27 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_72;
      }

      v8 = v23;
      v28 = swift_slowAlloc();
      v29 = v28;
      v5[5] = v28;
      if (v4)
      {
        break;
      }

      v23 = v8;
      if (!v29)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v31 = *(v23 + 16);
      if (v31)
      {
        v32 = (v23 + 32);
        v33 = *v19;
        while (1)
        {
          v34 = *v32++;
          *&v29[8 * v33] = v34;
          v33 = *v19 + 1;
          if (__OFADD__(*v19, 1))
          {
            break;
          }

          *v19 = v33;
          if (!--v31)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_5:

      if (++v21 == v20)
      {
        goto LABEL_29;
      }
    }

    if (v28 != v4 || v28 >= &v4[8 * v24])
    {
      memmove(v28, v4, 8 * v24);
    }

    v0 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v23 = v8;
LABEL_20:
    v29 = v5[5];
    if (!v29)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Call to board computedMinRequiredVersionForFullFidelity while current minRequiredVersion is higher than current: %{public}d", 123, 2);
  v38 = String._bridgeToObjectiveC()();

  [v80 handleFailureInFunction:v36 file:v37 lineNumber:106 isFatal:0 format:v38 args:v35];

  v0 = v81;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
LABEL_30:
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146C6B0;
  v40 = *(v0 + 40);
  *(v39 + 32) = v40;
  v8 = (v39 + 32);
  *(v39 + 56) = v4;
  *(v39 + 64) = v5;
  if (sub_10001FF1C() >= v40)
  {
LABEL_58:
  }

  else
  {
    v80 = objc_opt_self();
    v41 = [v80 _atomicIncrementAssertCount];
    v82 = [objc_allocWithZone(NSString) init];
    sub_100604538(v39, &v82, "Call to board computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 138, 2u);
    StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
    v43 = String._bridgeToObjectiveC()();

    v44 = [v43 lastPathComponent];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v48 = static OS_os_log.crlAssert;
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_10146CA70;
    *(v49 + 56) = &type metadata for Int32;
    *(v49 + 64) = &protocol witness table for Int32;
    *(v49 + 32) = v41;
    v50 = sub_1005CF000();
    *(v49 + 96) = v50;
    v51 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v49 + 104) = v51;
    *(v49 + 72) = v42;
    *(v49 + 136) = &type metadata for String;
    v52 = sub_1000053B0();
    *(v49 + 112) = v45;
    *(v49 + 120) = v47;
    *(v49 + 176) = &type metadata for UInt;
    *(v49 + 184) = &protocol witness table for UInt;
    *(v49 + 144) = v52;
    *(v49 + 152) = 107;
    v3 = v82;
    *(v49 + 216) = v50;
    *(v49 + 224) = v51;
    *(v49 + 192) = v3;
    v53 = v42;
    v54 = v3;
    v55 = static os_log_type_t.error.getter();
    sub_100005404(v48, &_mh_execute_header, v55, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v49);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v56 = static os_log_type_t.error.getter();
    sub_100005404(v48, &_mh_execute_header, v56, "Call to board computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 138, 2, v39);

    type metadata accessor for __VaListBuilder();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v57 = v5 + 3;
    v5[4] = 0;
    v5[5] = 0;
    v58 = *(v39 + 16);
    if (v58)
    {
      v59 = 0;
      inited = 40;
      while (1)
      {
        v60 = &v8[40 * v59];
        v4 = *(v60 + 4);
        v0 = sub_100020E58(v60, *(v60 + 3));
        v61 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v62 = *v57;
        v63 = *(v61 + 16);
        v26 = __OFADD__(*v57, v63);
        v64 = *v57 + v63;
        if (v26)
        {
          goto LABEL_70;
        }

        v0 = v5[4];
        if (v0 >= v64)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_73;
        }

        v4 = v5[5];
        if (2 * v0 > v64)
        {
          v64 = 2 * v0;
        }

        v5[4] = v64;
        if ((v64 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_74;
        }

        v3 = v61;
        v65 = swift_slowAlloc();
        v66 = v65;
        v5[5] = v65;
        if (v4)
        {
          break;
        }

        v61 = v3;
        if (!v66)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v68 = *(v61 + 16);
        if (v68)
        {
          v69 = (v61 + 32);
          v70 = *v57;
          do
          {
            v71 = *v69++;
            *&v66[8 * v70] = v71;
            v70 = *v57 + 1;
            if (__OFADD__(*v57, 1))
            {
              goto LABEL_68;
            }

            *v57 = v70;
          }

          while (--v68);
        }

        if (++v59 == v58)
        {
          goto LABEL_59;
        }
      }

      if (v65 != v4 || v65 >= &v4[8 * v62])
      {
        memmove(v65, v4, 8 * v62);
      }

      v0 = v5;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v61 = v3;
LABEL_50:
      v66 = v5[5];
      if (!v66)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v72 = __VaListBuilder.va_list()();
    StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
    v73 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardData.swift", 84, 2);
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Call to board computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 138, 2);
    v75 = String._bridgeToObjectiveC()();

    [v80 handleFailureInFunction:v73 file:v74 lineNumber:107 isFatal:0 format:v75 args:v72];

    v0 = v81;
    v4 = &type metadata for UInt64;
    v5 = &protocol witness table for UInt64;
  }

  if (*(v0 + 40) >= 0x2000400000000uLL)
  {
    v76 = *(v0 + 40);
  }

  else
  {
    v76 = 0x2000400000000;
  }

  if (*(v0 + 32) == 0x2000400000000)
  {
    v77 = *(v0 + 40);
  }

  else
  {
    v77 = v76;
  }

  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_10146C6B0;
  *(v78 + 56) = v4;
  *(v78 + 64) = v5;
  *(v78 + 32) = v77;

  return v77;
}

unint64_t sub_1012F22F0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  result = sub_10001FF1C();
  if (result >= v2)
  {
    *(v1 + 24) = sub_1012F0858();
    v5 = *(v1 + 32);
    if (sub_10001FF1C() >= v5)
    {
      *(v1 + 32) = sub_1012F0DC0();
    }

    v6 = *(v1 + 40);
    result = sub_10001FF1C();
    if (result >= v6)
    {
      result = sub_1012F1838();
      *(v1 + 40) = result;
    }
  }

  return result;
}

void sub_1012F236C(uint64_t a1)
{
  v29 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v29);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v13 = v1 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    v23 = v13;
    swift_beginAccess();
    sub_1005E2B78(v13, v5);
    v28 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_1005E2BDC(v5);
    sub_100C03B78(v9, v12);
    v27 = a1;
    v24 = v2;
    v14 = *(v7 + 8);
    v14(v9, v6);
    v20 = v14;
    v15 = v23;
    swift_beginAccess();
    v16 = *(v7 + 16);
    v25 = v7 + 16;
    v26 = v16;
    v16(v9, v12, v6);
    CRRegister.wrappedValue.setter();
    v14(v12, v6);
    swift_endAccess();
    sub_1005E2B78(v15, v5);
    CRRegister.wrappedValue.getter();
    sub_1005E2BDC(v5);
    sub_100C03B78(v9, v12);
    v17 = v20;
    v22 = v7 + 8;
    v20(v9, v6);
    swift_beginAccess();
    v26(v9, v12, v6);
    v21 = v6;
    CRRegister.wrappedValue.setter();
    v17(v12, v6);
    swift_endAccess();
    sub_1005E2B78(v15, v5);
    type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
    CRRegister.wrappedValue.getter();
    sub_1005E2BDC(v5);
    sub_100C03B78(v9, v12);
    v18 = v21;
    v17(v9, v21);
    swift_beginAccess();
    v26(v9, v12, v18);
    CRRegister.wrappedValue.setter();
    v17(v12, v18);
    swift_endAccess();
  }
}

uint64_t sub_1012F2750()
{
  sub_1005E2BDC(v0 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData);

  return swift_deallocClassInstance();
}

void sub_1012F280C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = type metadata accessor for CRMaxRegister();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1012F28B0(uint64_t a1)
{
  if (!qword_101A33810)
  {
    sub_1005C4E5C(&qword_1019F4B88, &qword_10146CDF0);
    sub_10007E3CC(&qword_101A33818, &qword_1019F4B88, &qword_10146CDF0, sub_10007E448);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &qword_101A33810);
    }
  }
}

void sub_1012F2954(uint64_t a1)
{
  if (!qword_101A33820)
  {
    sub_1005C4E5C(&qword_1019F4B68, &unk_10146CDD0);
    sub_10007E3CC(&qword_101A33828, &qword_1019F4B68, &unk_10146CDD0, sub_10007E614);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &qword_101A33820);
    }
  }
}

void sub_1012F29F8(uint64_t a1)
{
  if (!qword_101A33830)
  {
    sub_1005C4E5C(&qword_1019F4B50, &unk_1014C6CA0);
    sub_10007E3CC(&qword_101A33838, &qword_1019F4B50, &unk_1014C6CA0, sub_10007E960);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &qword_101A33830);
    }
  }
}

void sub_1012F2A9C(uint64_t a1)
{
  if (!qword_101A33840)
  {
    sub_1005C4E5C(&qword_1019F4B78, &unk_10146CDE0);
    sub_10007E3CC(&qword_101A33848, &qword_1019F4B78, &unk_10146CDE0, sub_10007EF8C);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &qword_101A33840);
    }
  }
}

void sub_1012F2B40(uint64_t a1)
{
  if (!qword_101A33850)
  {
    sub_1005C4E5C(&qword_1019F4B40, &qword_10146CDA8);
    sub_10007E3CC(&unk_101A33858, &qword_1019F4B40, &qword_10146CDA8, sub_10007F0A0);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &qword_101A33850);
    }
  }
}

void sub_1012F2C2C(uint64_t a1)
{
  sub_100039D58(319, &qword_1019F7D40, &type metadata for Bool, &protocol witness table for Bool);
  if (v1 <= 0x3F)
  {
    sub_100039F68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1012F2CD4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v15[-v8];
  v10 = *a1;
  v11 = *a2;
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v10 + v12, v9);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v11 + v13, v6);
  LOBYTE(v11) = sub_100084FA4(v9, v6);
  sub_1005E2BDC(v6);
  sub_1005E2BDC(v9);
  return v11 & 1;
}

uint64_t sub_1012F2E04()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v0 + v4, v3);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  return sub_1005E2BDC(v3);
}

uint64_t sub_1012F2EE8(uint64_t a1)
{
  v2 = sub_1000841C0(&unk_101A22770, type metadata accessor for CRLBoardCRDTData, byte_1014DD788);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F2F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F2FD0(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.actionUndoingDifference(from:)();
}

uint64_t sub_1012F3054(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.apply(_:)();
}

uint64_t sub_1012F30D0(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.hasDelta(from:)();
}

uint64_t sub_1012F314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.delta(_:from:)();
}

uint64_t sub_1012F31E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F325C(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.merge(delta:)();
}

uint64_t sub_1012F32D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F335C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F33E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F3474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F34F0()
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.needToFinalizeTimestamps()();
}

uint64_t sub_1012F355C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F35D8(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.merge(_:)();
}

uint64_t sub_1012F365C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F3860(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return CRStruct_6.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F38E0(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33A00, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, "Ih5");

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F394C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F39C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1012F3A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1012F3AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_1012F3B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1012F3BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F3C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F3CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F3D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F3DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F3E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F3EE8()
{
  sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1012F3F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F3FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F4054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F4258(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F42E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1012F4340(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33990, type metadata accessor for CRLBoardInsertStyleData, "9k5");

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F43AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F4428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1012F44AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.apply(_:)(a1, a2, v4);
}

uint64_t sub_1012F4528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_1012F45A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1012F4638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F46B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F4730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F47B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F4838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F48CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F4948()
{
  sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.needToFinalizeTimestamps()();
}

uint64_t sub_1012F49B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F4A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F4AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F4CB8(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return CRStruct_7.minEncodingVersion.getter(a1, v2);
}

double sub_1012F4D38@<D0>(void *a1@<X8>)
{
  if (qword_1019F2C18 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = *algn_101AD98E8;
  v3 = qword_101AD98F0;
  v2 = unk_101AD98F8;
  v4 = qword_101AD9900;
  v5 = qword_101AD9908;
  v6 = qword_101AD9910;
  v7 = qword_101AD9918;
  v9 = qword_101AD9920;
  v8 = unk_101AD9928;
  v10 = qword_101AD9930;
  v11 = qword_101AD9938;
  *a1 = qword_101AD98E0;
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

  return result;
}

uint64_t sub_1012F4E24(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33A48, type metadata accessor for CRLSharedBoardMetadataCRDTData, byte_1014DD4C8);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F4E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F4F0C(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.actionUndoingDifference(from:)();
}

uint64_t sub_1012F4F90(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.apply(_:)();
}

uint64_t sub_1012F500C(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.hasDelta(from:)();
}

uint64_t sub_1012F5088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.delta(_:from:)();
}

uint64_t sub_1012F511C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F5198(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.merge(delta:)();
}

uint64_t sub_1012F5214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F5298(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F53B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F542C()
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.needToFinalizeTimestamps()();
}

uint64_t sub_1012F5498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F5514(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.merge(_:)();
}

uint64_t sub_1012F5598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F579C(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return CRStruct_4.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F5818()
{
  qword_101AD9940 = 97;
  *algn_101AD9948 = 0xE100000000000000;
  qword_101AD9950 = swift_getKeyPath();
  unk_101AD9958 = 98;
  qword_101AD9960 = 0xE100000000000000;
  qword_101AD9968 = swift_getKeyPath();
  qword_101AD9970 = 99;
  qword_101AD9978 = 0xE100000000000000;
  qword_101AD9980 = swift_getKeyPath();
  unk_101AD9988 = 100;
  qword_101AD9990 = 0xE100000000000000;
  qword_101AD9998 = swift_getKeyPath();
  qword_101AD99A0 = 101;
  qword_101AD99A8 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD99B0 = result;
  return result;
}

double sub_1012F58BC@<D0>(void *a1@<X8>)
{
  if (qword_1019F2C20 != -1)
  {
    v16 = a1;
    swift_once();
    a1 = v16;
  }

  v1 = *algn_101AD9948;
  v3 = qword_101AD9950;
  v2 = unk_101AD9958;
  v4 = qword_101AD9960;
  v5 = qword_101AD9968;
  v6 = qword_101AD9970;
  v7 = qword_101AD9978;
  v9 = qword_101AD9980;
  v8 = unk_101AD9988;
  v10 = qword_101AD9990;
  v11 = qword_101AD9998;
  v12 = qword_101AD99A0;
  v13 = qword_101AD99A8;
  v14 = qword_101AD99B0;
  *a1 = qword_101AD9940;
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

uint64_t sub_1012F59D0(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return static CRStruct_5.fieldKeys.getter(a1, v2);
}

uint64_t sub_1012F5A40(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33950, type metadata accessor for CRLUserBoardMetadataCRDTData, "\tn5");

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F5AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F5B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1012F5BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.apply(_:)(a1, a2, v4);
}

uint64_t sub_1012F5C28(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.hasDelta(from:)();
}

uint64_t sub_1012F5CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1012F5D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F5DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F5E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F5EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F5F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F5FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F6048()
{
  sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.needToFinalizeTimestamps()();
}

uint64_t sub_1012F60B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F6130(uint64_t a1, uint64_t a2)
{
  sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.merge(_:)();
}

uint64_t sub_1012F61B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F6438(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);

  return CRStruct_5.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F69E8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.getter();
    v9 = static UUID.== infix(_:_:)();
    v8(v3, v0);
    v8(v6, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1012F6BB4()
{
  sub_1005B981C(&qword_1019F4858, &unk_10146C6D0);
  CRMaxRegister.wrappedValue.getter();
  CRMaxRegister.wrappedValue.getter();
  type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_1019F4850, &unk_1014DCB10);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  return 1;
}

uint64_t sub_1012F6CEC()
{
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  if (v11 == v10 && (type metadata accessor for CRLUserBoardMetadataCRDTData(0), CRRegister.wrappedValue.getter(), CRRegister.wrappedValue.getter(), v9 == v8) && (CRRegister.wrappedValue.getter(), CRRegister.wrappedValue.getter(), v7 == v6) && (CRRegister.wrappedValue.getter(), CRRegister.wrappedValue.getter(), v5 == v4))
  {
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.getter();
    v0 = v3 ^ v2 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1012F6E64(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_1005B981C(&unk_1019F4B90, &qword_10146CDF8);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  memcpy(v29, v61, 0x370uLL);
  memcpy(&v29[110], v62, 0x370uLL);
  memcpy(v63, v61, sizeof(v63));
  if (sub_1000C0F9C(v63) == 1)
  {
    memcpy(v28, &v29[110], 0x370uLL);
    if (sub_1000C0F9C(v28) != 1)
    {
      goto LABEL_15;
    }

    memcpy(v50, v29, 0x370uLL);
    sub_10000CAAC(v50, &qword_1019F4B88, &qword_10146CDF0);
  }

  else
  {
    memcpy(v28, &v29[110], 0x370uLL);
    if (sub_1000C0F9C(v28) == 1)
    {
      goto LABEL_15;
    }

    memcpy(v32, &v29[110], 0x370uLL);
    memcpy(v60, &v29[110], sizeof(v60));
    memcpy(v59, v29, sizeof(v59));
    sub_10000BE14(v61, v50, &qword_1019F4B88, &qword_10146CDF0);
    sub_10000BE14(v62, v50, &qword_1019F4B88, &qword_10146CDF0);
    v1 = sub_10109F874(v59, v60);
    sub_10000CAAC(v32, &qword_1019F4B88, &qword_10146CDF0);
    sub_10000CAAC(v62, &qword_1019F4B88, &qword_10146CDF0);
    sub_10000CAAC(v61, &qword_1019F4B88, &qword_10146CDF0);
    memcpy(v50, v29, 0x370uLL);
    sub_10000CAAC(v50, &qword_1019F4B88, &qword_10146CDF0);
    if ((v1 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  type metadata accessor for CRLBoardInsertStyleData(0);
  CRRegister.wrappedValue.getter();
  memcpy(v47, v29, sizeof(v47));
  CRRegister.wrappedValue.getter();
  memcpy(v48, v29, sizeof(v48));
  memcpy(v29, v47, 0x370uLL);
  memcpy(&v29[110], v48, 0x370uLL);
  memcpy(v49, v47, sizeof(v49));
  if (sub_1000C0F9C(v49) == 1)
  {
    memcpy(v28, &v29[110], 0x370uLL);
    if (sub_1000C0F9C(v28) != 1)
    {
      goto LABEL_15;
    }

    memcpy(v50, v29, 0x370uLL);
    sub_10000CAAC(v50, &qword_1019F4B88, &qword_10146CDF0);
    goto LABEL_11;
  }

  memcpy(v28, &v29[110], 0x370uLL);
  if (sub_1000C0F9C(v28) == 1)
  {
    goto LABEL_15;
  }

  memcpy(v32, &v29[110], 0x370uLL);
  memcpy(v58, &v29[110], sizeof(v58));
  memcpy(v57, v29, sizeof(v57));
  sub_10000BE14(v47, v50, &qword_1019F4B88, &qword_10146CDF0);
  sub_10000BE14(v48, v50, &qword_1019F4B88, &qword_10146CDF0);
  v2 = sub_10109F874(v57, v58);
  sub_10000CAAC(v32, &qword_1019F4B88, &qword_10146CDF0);
  sub_10000CAAC(v48, &qword_1019F4B88, &qword_10146CDF0);
  sub_10000CAAC(v47, &qword_1019F4B88, &qword_10146CDF0);
  memcpy(v50, v29, 0x370uLL);
  sub_10000CAAC(v50, &qword_1019F4B88, &qword_10146CDF0);
  if (v2)
  {
LABEL_11:
    CRRegister.wrappedValue.getter();
    memcpy(v44, v29, sizeof(v44));
    CRRegister.wrappedValue.getter();
    memcpy(v45, v29, sizeof(v45));
    memcpy(v29, v44, 0x370uLL);
    memcpy(&v29[110], v45, 0x370uLL);
    memcpy(v46, v44, sizeof(v46));
    if (sub_1000C0F9C(v46) == 1)
    {
      memcpy(v28, &v29[110], 0x370uLL);
      if (sub_1000C0F9C(v28) == 1)
      {
        memcpy(v50, v29, 0x370uLL);
        sub_10000CAAC(v50, &qword_1019F4B88, &qword_10146CDF0);
        goto LABEL_21;
      }
    }

    else
    {
      memcpy(v28, &v29[110], 0x370uLL);
      if (sub_1000C0F9C(v28) != 1)
      {
        memcpy(v32, &v29[110], 0x370uLL);
        memcpy(v56, &v29[110], sizeof(v56));
        memcpy(v55, v29, sizeof(v55));
        sub_10000BE14(v44, v50, &qword_1019F4B88, &qword_10146CDF0);
        sub_10000BE14(v45, v50, &qword_1019F4B88, &qword_10146CDF0);
        v8 = sub_10109F874(v55, v56);
        sub_10000CAAC(v32, &qword_1019F4B88, &qword_10146CDF0);
        sub_10000CAAC(v45, &qword_1019F4B88, &qword_10146CDF0);
        sub_10000CAAC(v44, &qword_1019F4B88, &qword_10146CDF0);
        memcpy(v50, v29, 0x370uLL);
        sub_10000CAAC(v50, &qword_1019F4B88, &qword_10146CDF0);
        if ((v8 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_21:
        sub_1005B981C(&qword_1019F4B70, &unk_1014DCB70);
        CRRegister.wrappedValue.getter();
        memcpy(v40, v29, sizeof(v40));
        CRRegister.wrappedValue.getter();
        memcpy(v41, v29, sizeof(v41));
        memcpy(v39, v40, sizeof(v39));
        v9 = v40[47];
        memcpy(v28, v41, 0x180uLL);
        memcpy(v42, v40, sizeof(v42));
        v43 = v40[47];
        if (sub_1000B9764(v42) == 1)
        {
          memcpy(v29, v28, 0x180uLL);
          if (sub_1000B9764(v29) == 1)
          {
            memcpy(v50, v39, 0x178uLL);
            v50[47] = v9;
            sub_10000CAAC(v50, &qword_1019F4B68, &unk_10146CDD0);
            goto LABEL_24;
          }
        }

        else
        {
          memcpy(v29, v28, 0x180uLL);
          if (sub_1000B9764(v29) != 1)
          {
            memcpy(v50, v28, 0x180uLL);
            memcpy(v54, v28, sizeof(v54));
            v10 = v50[47];
            memcpy(v53, v39, sizeof(v53));
            sub_10000BE14(v40, v32, &qword_1019F4B68, &unk_10146CDD0);
            sub_10000BE14(v41, v32, &qword_1019F4B68, &unk_10146CDD0);
            if ((sub_10110AAF8(v53, v54) & 1) == 0)
            {
              v13 = &qword_1019F4B68;
              v14 = &unk_10146CDD0;
              sub_10000CAAC(v50, &qword_1019F4B68, &unk_10146CDD0);
              sub_10000CAAC(v41, &qword_1019F4B68, &unk_10146CDD0);
              sub_10000CAAC(v40, &qword_1019F4B68, &unk_10146CDD0);
              v15 = v39;
              goto LABEL_45;
            }

            sub_100B3216C(v9, v10);
            v12 = v11;
            sub_10000CAAC(v50, &qword_1019F4B68, &unk_10146CDD0);
            sub_10000CAAC(v41, &qword_1019F4B68, &unk_10146CDD0);
            sub_10000CAAC(v40, &qword_1019F4B68, &unk_10146CDD0);
            memcpy(v32, v39, 0x178uLL);
            v32[47] = v9;
            sub_10000CAAC(v32, &qword_1019F4B68, &unk_10146CDD0);
            if ((v12 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_24:
            sub_1005B981C(&qword_1019F4B58, &unk_10146CDC0);
            CRRegister.wrappedValue.getter();
            CRRegister.wrappedValue.getter();
            memcpy(v33, v34, sizeof(v33));
            v9 = v35;
            memcpy(v28, v36, 0x180uLL);
            memcpy(v37, v34, sizeof(v37));
            v38 = v35;
            if (sub_1000B9764(v37) == 1)
            {
              memcpy(v29, v28, 0x180uLL);
              if (sub_1000B9764(v29) == 1)
              {
                memcpy(v50, v33, 0x178uLL);
                v50[47] = v9;
                sub_10000CAAC(v50, &qword_1019F4B50, &unk_1014C6CA0);
LABEL_27:
                sub_1005B981C(&qword_1019F4B80, &unk_1014DCB80);
                CRRegister.wrappedValue.getter();
                CRRegister.wrappedValue.getter();
                memcpy(v29, v30, 0x378uLL);
                memcpy(&v29[111], v31, 0x378uLL);
                memcpy(v32, v30, sizeof(v32));
                if (sub_1000C0F9C(v32) == 1)
                {
                  memcpy(v28, &v29[111], 0x378uLL);
                  if (sub_1000C0F9C(v28) == 1)
                  {
                    memcpy(v50, v29, sizeof(v50));
                    sub_10000CAAC(v50, &qword_1019F4B78, &unk_10146CDE0);
LABEL_47:
                    sub_1005B981C(&qword_1019F4B48, &unk_10146CDB0);
                    CRRegister.wrappedValue.getter();
                    CRRegister.wrappedValue.getter();
                    memcpy(v29, __src, 0x178uLL);
                    memcpy(&v29[47], v27, 0x178uLL);
                    memcpy(v20, __src, 0x178uLL);
                    if (sub_1011255E4(v20) == 1)
                    {
                      memcpy(v22, &v29[47], 0x178uLL);
                      if (sub_1011255E4(v22) == 1)
                      {
                        memcpy(v21, v29, 0x178uLL);
                        sub_10000CAAC(v21, &qword_1019F4B40, &qword_10146CDA8);
                        v6 = 1;
                        return v6 & 1;
                      }
                    }

                    else
                    {
                      memcpy(v25, &v29[47], sizeof(v25));
                      if (sub_1011255E4(v25) != 1)
                      {
                        memcpy(v23, &v29[47], sizeof(v23));
                        memcpy(v22, &v29[47], 0x178uLL);
                        memcpy(v21, v29, 0x178uLL);
                        sub_10000BE14(__src, v24, &qword_1019F4B40, &qword_10146CDA8);
                        sub_10000BE14(v27, v24, &qword_1019F4B40, &qword_10146CDA8);
                        v6 = sub_101211B14(v21, v22);
                        sub_10000CAAC(v23, &qword_1019F4B40, &qword_10146CDA8);
                        sub_10000CAAC(v27, &qword_1019F4B40, &qword_10146CDA8);
                        sub_10000CAAC(__src, &qword_1019F4B40, &qword_10146CDA8);
                        memcpy(v24, v29, sizeof(v24));
                        sub_10000CAAC(v24, &qword_1019F4B40, &qword_10146CDA8);
                        return v6 & 1;
                      }
                    }

                    memcpy(v22, v29, 0x2F0uLL);
                    v3 = &unk_101A33AE0;
                    v4 = &unk_1014DDA58;
                    v5 = v22;
                    goto LABEL_17;
                  }
                }

                else
                {
                  memcpy(v22, &v29[111], sizeof(v22));
                  if (sub_1000C0F9C(v22) != 1)
                  {
                    memcpy(v20, &v29[111], sizeof(v20));
                    memcpy(v28, &v29[111], 0x378uLL);
                    memcpy(v50, v29, sizeof(v50));
                    sub_10000BE14(v30, v21, &qword_1019F4B78, &unk_10146CDE0);
                    sub_10000BE14(v31, v21, &qword_1019F4B78, &unk_10146CDE0);
                    v19 = sub_101266AD0(v50, v28);
                    sub_10000CAAC(v20, &qword_1019F4B78, &unk_10146CDE0);
                    sub_10000CAAC(v31, &qword_1019F4B78, &unk_10146CDE0);
                    sub_10000CAAC(v30, &qword_1019F4B78, &unk_10146CDE0);
                    memcpy(v21, v29, sizeof(v21));
                    sub_10000CAAC(v21, &qword_1019F4B78, &unk_10146CDE0);
                    if ((v19 & 1) == 0)
                    {
                      goto LABEL_18;
                    }

                    goto LABEL_47;
                  }
                }

                memcpy(v28, v29, sizeof(v28));
                v3 = &unk_101A33AD8;
                v4 = &unk_1014DDA50;
                goto LABEL_16;
              }

              goto LABEL_36;
            }

            memcpy(v29, v28, 0x180uLL);
            if (sub_1000B9764(v29) == 1)
            {
LABEL_36:
              memcpy(v29, v33, 0x178uLL);
              v29[47] = v9;
              memcpy(&v29[48], v28, 0x180uLL);
              v3 = &unk_101A33AD0;
              v4 = &unk_1014DDA48;
              goto LABEL_37;
            }

            memcpy(v50, v28, 0x180uLL);
            memcpy(v52, v28, sizeof(v52));
            v16 = v50[47];
            memcpy(v51, v33, sizeof(v51));
            sub_10000BE14(v34, v32, &qword_1019F4B50, &unk_1014C6CA0);
            sub_10000BE14(v36, v32, &qword_1019F4B50, &unk_1014C6CA0);
            if (sub_10110AAF8(v51, v52))
            {
              sub_100B3216C(v9, v16);
              v18 = v17;
              sub_10000CAAC(v50, &qword_1019F4B50, &unk_1014C6CA0);
              sub_10000CAAC(v36, &qword_1019F4B50, &unk_1014C6CA0);
              sub_10000CAAC(v34, &qword_1019F4B50, &unk_1014C6CA0);
              memcpy(v32, v33, 0x178uLL);
              v32[47] = v9;
              sub_10000CAAC(v32, &qword_1019F4B50, &unk_1014C6CA0);
              if ((v18 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }

            v13 = &qword_1019F4B50;
            v14 = &unk_1014C6CA0;
            sub_10000CAAC(v50, &qword_1019F4B50, &unk_1014C6CA0);
            sub_10000CAAC(v36, &qword_1019F4B50, &unk_1014C6CA0);
            sub_10000CAAC(v34, &qword_1019F4B50, &unk_1014C6CA0);
            v15 = v33;
LABEL_45:
            memcpy(v32, v15, 0x178uLL);
            v32[47] = v9;
            v5 = v32;
            v3 = v13;
            v4 = v14;
            goto LABEL_17;
          }
        }

        memcpy(v29, v39, 0x178uLL);
        v29[47] = v9;
        memcpy(&v29[48], v28, 0x180uLL);
        v3 = &unk_101A33AC8;
        v4 = &unk_1014DDA40;
LABEL_37:
        v5 = v29;
        goto LABEL_17;
      }
    }

LABEL_15:
    memcpy(v28, v29, 0x6E0uLL);
    v3 = &unk_101A33AC0;
    v4 = &unk_1014DDA38;
LABEL_16:
    v5 = v28;
LABEL_17:
    sub_10000CAAC(v5, v3, v4);
  }

LABEL_18:
  v6 = 0;
  return v6 & 1;
}