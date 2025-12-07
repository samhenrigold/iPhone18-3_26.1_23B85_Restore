uint64_t sub_1007674A4()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLTransactableData_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10076757C(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100767620(uint64_t a1)
{
  v46 = sub_1005B981C(&qword_1019FEF98, &qword_10147A980);
  __chkstk_darwin(v46);
  v45 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v44 = &v39 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v54 = _swiftEmptyArrayStorage;
    v51 = v7;
    sub_100776524(0, v10, 0);
    v52 = v54;
    v12 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v14 = result;
    v15 = 0;
    v53 = *(a1 + 36);
    v42 = a1;
    v43 = v6 + 16;
    v50 = v6 + 32;
    v39 = a1 + 72;
    v40 = v10;
    v41 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v53 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v47 = v15;
      v18 = *(a1 + 48);
      v49 = *(v6 + 72);
      v19 = v9;
      v20 = *(v6 + 16);
      v21 = v44;
      v20(v44, v18 + v49 * v14, v51);
      v22 = *(*(a1 + 56) + 8 * v14);
      v23 = v45;
      v24 = v21;
      v25 = v51;
      v48 = *(v6 + 32);
      v48(v45, v24, v51);
      *(v23 + *(v46 + 48)) = v22;
      v20(v19, v22 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_id, v25);

      sub_10000CAAC(v23, &qword_1019FEF98, &qword_10147A980);
      v26 = v52;
      v54 = v52;
      v28 = v52[2];
      v27 = v52[3];
      if (v28 >= v27 >> 1)
      {
        sub_100776524((v27 > 1), v28 + 1, 1);
        v25 = v51;
        v26 = v54;
      }

      v26[2] = v28 + 1;
      v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v52 = v26;
      v30 = v26 + v29 + v28 * v49;
      v9 = v19;
      result = (v48)(v30, v19, v25);
      a1 = v42;
      v16 = 1 << *(v42 + 32);
      if (v14 >= v16)
      {
        goto LABEL_25;
      }

      v12 = v41;
      v31 = *(v41 + 8 * v17);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v53 != *(v42 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v16 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v17 << 6;
        v34 = v17 + 1;
        v35 = (v39 + 8 * v17);
        while (v34 < (v16 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_1000341AC(v14, v53, 0);
            v16 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v14, v53, 0);
      }

LABEL_4:
      v15 = v47 + 1;
      v14 = v16;
      if (v47 + 1 == v40)
      {
        v11 = v52;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v38 = sub_100E93A84(v11);

    return v38;
  }

  return result;
}

void *sub_100767A60(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FEF98, &qword_10147A980);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(a1 + 48);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 16))(v4, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = *(*(a1 + 56) + 8 * v14);
    *&v4[*(v2 + 48)] = v17;
    if ((*(v17 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data) & 0x8000000000000000) != 0)
    {

      sub_10000CAAC(v4, &qword_1019FEF98, &qword_10147A980);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v19;
    }

    else
    {

      result = sub_10000CAAC(v4, &qword_1019FEF98, &qword_10147A980);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return v5;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_100767C8C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_1005B981C(&qword_1019FEFA0, &unk_10147A988);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v36 = type metadata accessor for CRLBoardItemDeltaChange(0);
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v30 - v9;
  v35 = sub_1005B981C(&qword_1019FEF98, &qword_10147A980);
  __chkstk_darwin(v35);
  v11 = &v30 - v10;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v32 = v6;
  v16 = (v6 + 48);

  v18 = 0;
  v34 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v18;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = v20 | (v18 << 6);
    v22 = *(a2 + 48);
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 16))(v11, v22 + *(*(v23 - 8) + 72) * v21, v23);
    v24 = *(*(a2 + 56) + 8 * v21);
    *&v11[*(v35 + 48)] = v24;

    sub_10076805C(v24, v37, v5);
    sub_10000CAAC(v11, &qword_1019FEF98, &qword_10147A980);
    if ((*v16)(v5, 1, v36) == 1)
    {
      result = sub_10000CAAC(v5, &qword_1019FEFA0, &unk_10147A988);
    }

    else
    {
      v25 = v31;
      sub_100774F64(v5, v31, type metadata accessor for CRLBoardItemDeltaChange);
      sub_100774F64(v25, v33, type metadata accessor for CRLBoardItemDeltaChange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100B37718(0, v34[2] + 1, 1, v34);
      }

      v27 = v34[2];
      v26 = v34[3];
      if (v27 >= v26 >> 1)
      {
        v34 = sub_100B37718((v26 > 1), v27 + 1, 1, v34);
      }

      v28 = v33;
      v29 = v34;
      v34[2] = v27 + 1;
      result = sub_100774F64(v28, v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for CRLBoardItemDeltaChange);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v34;
    }

    v14 = *(a2 + 64 + 8 * v18);
    ++v19;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_10076805C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1005B981C(&qword_1019FEFA0, &unk_10147A988);
  __chkstk_darwin(v6 - 8);
  v8 = &v34[-v7];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  v35 = v11;
  v15 = v14 & 0x7FFFFFFFFFFFFFFFLL;
  v16 = objc_opt_self();

  v17 = [v16 standardUserDefaults];
  v18 = [v17 BOOLForKey:@"CRLAllowInteractionWithUnsupportedBoardAndBoardItemsUserDefault"];

  if (*v15 != &off_101A1BAC0 || (v18 & 1) != 0)
  {
    (*(*v15 + 264))();
    if (*(a2 + 16) && (sub_10003E994(v13), (v20 & 1) != 0) && (type metadata accessor for CRLBoardItemBase(0), (v21 = swift_dynamicCastClass()) != 0))
    {
      v22 = *(*(v21 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
      swift_unknownObjectRetain();
      v23 = v22;

      sub_100741A38(v24, v23, v8);
      (*(v10 + 8))(v13, v35);
      swift_unknownObjectRelease();

      v32 = type metadata accessor for CRLBoardItemDeltaChange(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v8, 1, v32) != 1)
      {
        sub_100774F64(v8, a3, type metadata accessor for CRLBoardItemDeltaChange);
        (*(v33 + 56))(a3, 0, 1, v32);
        return;
      }

      sub_10000CAAC(v8, &qword_1019FEFA0, &unk_10147A988);
    }

    else
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v25 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v27 = UUID.uuidString.getter();
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Could not calculate delta for board item %@ without snapshot.", 61, 2, inited);

      swift_setDeallocating();
      sub_100005070((inited + 32));
      (*(v10 + 8))(v13, v35);
    }

LABEL_14:
    v31 = type metadata accessor for CRLBoardItemDeltaChange(0);
    (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
    return;
  }

  v19 = type metadata accessor for CRLBoardItemDeltaChange(0);
  (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

Swift::Int sub_100768694()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10147AA14[v1]);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_10076871C(uint64_t a1)
{
  v2 = *(v1 + 2);
  Hasher._combine(_:)(dword_10147AA14[*v1]);
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1007687A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10147AA14[v2]);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100768824(char *a1, char *a2)
{
  if (dword_10147AA14[*a1] == dword_10147AA14[*a2])
  {
    v2 = *(a1 + 2);
    v3 = *(a2 + 2);
    if (v2)
    {
      if (v3)
      {
        v4 = *(a1 + 1) == *(a2 + 1) && v2 == v3;
        if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_100768904()
{
  if (*(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas) + 16))
  {
    return 1;
  }

  if (*(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas) + 16))
  {
    return 1;
  }

  if (*(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) + 16))
  {
    return 1;
  }

  v1 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardAuxiliaryChanges;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 1;
  }

  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_coalescableBoardAuxiliaryChanges;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
  swift_beginAccess();
  if (*(*(v0 + v3) + 16))
  {
    return 1;
  }

  v5 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
  swift_beginAccess();
  return *(*(v0 + v5) + 16) != 0;
}

uint64_t sub_100768A10(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v24 = a3;
  v22 = a2;
  v20 = a1;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) = 0;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatasToProcessAfterUnlock) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_processingQueue) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots) = 0;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds) = _swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedFreehandItemIDsSubset) = _swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs) = _swiftEmptySetSingleton;
  v8 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22680, &unk_10147A958);
  swift_allocObject();
  *(v3 + v8) = PassthroughSubject.init()();
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerDeletedItemIds) = _swiftEmptySetSingleton;
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000064D8(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  v9 = v20;
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020);
  v10 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v21 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10004FD94(v9, v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v11 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_rootContainerUUID;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4 + v11, v10, v12);
  v14 = 0;
  if (v24)
  {
    v14 = sub_100BD4A5C(_swiftEmptyArrayStorage);
  }

  v15 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
  swift_beginAccess();
  *(v4 + v15) = v14;

  *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardAuxiliaryChanges) = _swiftEmptyArrayStorage;
  v16 = sub_100BD4C44(_swiftEmptyArrayStorage);
  (*(v13 + 8))(v10, v12);
  sub_10003D45C(v9, type metadata accessor for CRLBoardIdentifier);
  *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_coalescableBoardAuxiliaryChanges) = v16;
  return v4;
}

void sub_100768EB0(uint64_t a1)
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.realTimeSync;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "CRLBoardChangeSet clearChanges()", 32, 2, _swiftEmptyArrayStorage);
  v5 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1007751F0;
  *(v7 + 24) = v6;
  v10[4] = sub_10002AAE4;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = *"";
  v10[2] = sub_10002AAB8;
  v10[3] = &unk_101885AD0;
  v8 = _Block_copy(v10);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_100769088(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) = _swiftEmptyDictionarySingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas) = _swiftEmptyDictionarySingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas) = _swiftEmptyDictionarySingleton;

  v4 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
  swift_beginAccess();
  *(a1 + v4) = _swiftEmptySetSingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedFreehandItemIDsSubset) = _swiftEmptySetSingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs) = _swiftEmptySetSingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas) = _swiftEmptyDictionarySingleton;

  v6 = sub_1007688A0(v10);
  if (*v5)
  {
    v7 = v5;

    *v7 = _swiftEmptyDictionarySingleton;
  }

  (v6)(v10, 0);
  v8 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
  swift_beginAccess();
  *(a1 + v8) = _swiftEmptyDictionarySingleton;

  if (a2)
  {
    swift_beginAccess();
    sub_100769208(a2);
    return swift_endAccess();
  }

  return result;
}

void sub_100769208(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4);
  v7 = &i - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v27 = v5 + 16;
  v28 = v5;
  v26 = (v5 + 8);
  v29 = a1;

  v13 = 0;
  for (i = v7; v11; *v2 = v21)
  {
LABEL_10:
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(v28 + 72);
      (*(v28 + 16))(v7, *(v29 + 48) + v16 * (v15 | (v13 << 6)), v4);
      v17 = sub_10003E994(v7);
      if (v18)
      {
        break;
      }

      (*v26)(v7, v4);
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    v30 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA4714();
      v21 = v30;
    }

    v22 = *(v21 + 48) + v19 * v16;
    v23 = *v26;
    (*v26)(v22, v4);

    sub_100BDBB9C();
    v24 = i;
    v23(i, v4);
    v7 = v24;
  }

LABEL_6:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10076944C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter;
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = a1;
  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) = v5;
  if (qword_1019F2288 != -1)
  {
LABEL_5:
    swift_once();
  }

  v6 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v13 = *(v1 + v2);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v11, "CRLBoardChangeSet lock() lockCounter: %{public}@", 48, 2, inited, v13);
  swift_setDeallocating();
  return sub_100005070((inited + 32));
}

void sub_10076958C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter;
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter);
  if (v3 <= 0)
  {
    v68 = objc_opt_self();
    v4 = [v68 _atomicIncrementAssertCount];
    v71 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v71, "Cannot unlock if lockCounter is already 0, we're already unlocked", 65, 2u);
    StaticString.description.getter("unlock()", 8, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 272;
    v16 = v71;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Cannot unlock if lockCounter is already 0, we're already unlocked", 65, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("unlock()", 8, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Cannot unlock if lockCounter is already 0, we're already unlocked", 65, 2);
    v25 = String._bridgeToObjectiveC()();

    [v68 handleFailureInFunction:v23 file:v24 lineNumber:272 isFatal:0 format:v25 args:v22];

    v3 = *(a1 + v2);
  }

  v26 = __OFSUB__(v3, 1);
  v27 = v3 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v2) = v27;
    if (qword_1019F2288 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v28 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  v71 = *(a1 + v2);
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000053B0();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = static os_log_type_t.default.getter();
  sub_100005404(v28, &_mh_execute_header, v33, "CRLBoardChangeSet unlock() lockCounter: %{public}@", 50, 2, v29);
  swift_setDeallocating();
  sub_100005070((v29 + 32));
  if (*(a1 + v2))
  {
    return;
  }

  v34 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_processingQueue;
  swift_beginAccess();
  v35 = *(a1 + v34);
  if (v35 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
LABEL_10:
      v69 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas;
      v36 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);
      v67 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;
      v37 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas);
      v38 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
      swift_beginAccess();
      v64 = v38;
      v39 = *(a1 + v38);
      v40 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas;
      v41 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas);
      v42 = *(a1 + v34);
      if (v42 >> 62)
      {
        v43 = _CocoaArrayWrapper.endIndex.getter();
        if (v43)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
LABEL_12:
          if (v43 < 1)
          {
            __break(1u);

            __break(1u);
            return;
          }

          v66 = v39;

          v65 = v41;

          for (i = 0; i != v43; ++i)
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v45 = *(v42 + 8 * i + 32);
            }

            sub_10076A298(v45);
          }

          v41 = v65;
          v39 = v66;
LABEL_25:
          v47 = *&v69[a1];

          sub_100B33ED0(v36, v47);
          v49 = v48;

          if (v49)
          {
            v50 = *(a1 + v67);

            sub_100B33ED0(v37, v50);
            v52 = v51;

            if (v52)
            {
              v53 = *(a1 + v40);

              sub_100B33ED0(v41, v53);
              v55 = v54;

              if (v55)
              {
                v56 = *(a1 + v64);

                sub_100BC5FB8(v39, v56);
                v58 = v57;

                v46 = v58 ^ 1;
                goto LABEL_32;
              }

LABEL_31:

              v46 = 1;
              goto LABEL_32;
            }
          }

          else
          {
          }

          goto LABEL_31;
        }
      }

      goto LABEL_25;
    }
  }

  else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_10;
  }

  v46 = 0;
LABEL_32:
  *(a1 + v34) = _swiftEmptyArrayStorage;

  v59 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatasToProcessAfterUnlock;
  swift_beginAccess();
  v60 = *(a1 + v59);
  if (*(v60 + 16))
  {
    v61 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
    swift_beginAccess();
    v62 = *(a1 + v61);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v62;
    sub_100774BC8(v60, sub_100771CA8, 0, isUniquelyReferenced_nonNull_native, &v70);

    *(a1 + v61) = v70;
  }

  *(a1 + v59) = _swiftEmptyDictionarySingleton;

  if (v46)
  {
    sub_10076BD80();
  }
}

void sub_100769DCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) == 1)
  {
    v30 = objc_opt_self();
    v4 = [v30 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31, "Pending changes should only come from closed transactions.", 58, 2u);
    StaticString.description.getter("updateWithChange(from:)", 23, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 313;
    v16 = v31;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Pending changes should only come from closed transactions.", 58, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("updateWithChange(from:)", 23, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Pending changes should only come from closed transactions.", 58, 2);
    v25 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v23 file:v24 lineNumber:313 isFatal:0 format:v25 args:v22];
  }

  if (*(a2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.realTimeSync;
    v28 = static os_log_type_t.default.getter();
    sub_100005404(v27, &_mh_execute_header, v28, "CRLBoardChangeSet updateWithChange()", 36, 2, _swiftEmptyArrayStorage);
    sub_10076A298(a1);
    if (v29)
    {
      sub_10076BD80();
    }
  }

  else
  {
    v26 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_processingQueue;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v26) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }
}

void sub_10076A298(uint64_t a1)
{
  v225 = type metadata accessor for UUID();
  v221 = *(v225 - 8);
  __chkstk_darwin(v225);
  v5 = &v206 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v213 = v13;

  v15 = sub_1007669D0(v14);

  v219 = sub_100E93A84(v15);

  swift_beginAccess();

  v17 = sub_1007669D0(v16);

  v217 = sub_100E93A84(v17);

  v19 = sub_100E93A84(v18);

  v20 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
  swift_beginAccess();

  v22 = sub_1007669D0(v21);

  v23 = sub_100E93A84(v22);

  v25 = sub_1007735D0(v24, a1);

  v26 = v25;
  v215 = v19;
  v216 = v1;
  v218 = a1;
  v214 = v23;
  v212 = 0;
  v210 = v20;
  if ((v25 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_1000064D8(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper, "It5");
    Set.Iterator.init(_cocoa:)();
    v27 = v232;
    v2 = v233;
    v28 = v234;
    isUniquelyReferenced_nonNull_native = v235;
    v30 = v236;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = 0;
    v31 = -1 << *(v25 + 32);
    v2 = v25 + 56;
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = (v33 & *(v25 + 56));
    v27 = v26;
  }

  v211 = v28;
  v34 = (v28 + 64) >> 6;
  v220 = v221 + 16;
  v224 = (v221 + 8);
  v227 = _swiftEmptyDictionarySingleton;
  v223 = v34;
  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v40 = __CocoaSet.Iterator.next()();
  if (v40)
  {
    v230[6] = v40;
    type metadata accessor for CRLTransactableHashableWrapper();
    swift_dynamicCast();
    v39 = v231;
    v37 = isUniquelyReferenced_nonNull_native;
    v38 = v30;
    if (v231)
    {
      while (1)
      {
        v226 = v38;
        v41 = v39[3];
        ObjectType = swift_getObjectType();
        (*(v41 + 32))(ObjectType, v41);
        v43 = v39[3];
        type metadata accessor for CRLTransactableData(0);
        v44 = swift_allocObject();
        v45 = swift_unknownObjectRetain();
        sub_100766DF8(v45, v43);
        v46 = v227;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v231 = v46;
        v47 = sub_10003E994(v5);
        v49 = v46[2];
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          break;
        }

        v53 = v48;
        if (v46[3] >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = v47;
            sub_100AA4714();
            v47 = v65;
          }
        }

        else
        {
          sub_100A89AFC(v52, isUniquelyReferenced_nonNull_native);
          v47 = sub_10003E994(v5);
          if ((v53 & 1) != (v54 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_59;
          }
        }

        v55 = v231;
        v227 = v231;
        if (v53)
        {
          *(v231[7] + 8 * v47) = v44;

          (*v224)(v5, v225);
          isUniquelyReferenced_nonNull_native = v37;
          v30 = v226;
          v34 = v223;
          if (v27 < 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v56 = v2;
          v2 = v27;
          v231[(v47 >> 6) + 8] |= 1 << v47;
          v57 = v5;
          v58 = v221;
          v59 = v55[6] + *(v221 + 72) * v47;
          v60 = *(v221 + 16);
          v222 = v47;
          v61 = v225;
          v60(v59, v57, v225);
          *(v55[7] + 8 * v222) = v44;

          v62 = *(v58 + 8);
          v5 = v57;
          v62(v57, v61);
          v63 = v55[2];
          v51 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v51)
          {
            goto LABEL_56;
          }

          v55[2] = v64;
          isUniquelyReferenced_nonNull_native = v37;
          v30 = v226;
          v27 = v2;
          v2 = v56;
          v34 = v223;
          if (v27 < 0)
          {
            goto LABEL_17;
          }
        }

LABEL_11:
        v35 = isUniquelyReferenced_nonNull_native;
        v36 = v30;
        v37 = isUniquelyReferenced_nonNull_native;
        if (!v30)
        {
          while (1)
          {
            v37 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v37 >= v34)
            {
              goto LABEL_29;
            }

            v36 = *(v2 + 8 * v37);
            ++v35;
            if (v36)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          break;
        }

LABEL_15:
        v38 = ((v36 - 1) & v36);
        v39 = *(*(v27 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));

        if (!v39)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }
  }

LABEL_29:
  sub_100035F90(v27);
  v66 = v218;
  if (*(v218 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) != 1)
  {

    v84 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas;
    v44 = v216;
    v85 = *(v216 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);

    v86 = v219;
    v87 = sub_10076B904(v219, v85);

    *(v44 + v84) = v87;

    v88 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;
    v89 = *(v44 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas);

    v90 = sub_10076B904(v86, v89);

    *(v44 + v88) = v90;

    v91 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas;
    v92 = *(v44 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas);

    v93 = sub_10076B904(v86, v92);

    *(v44 + v91) = v93;

    swift_beginAccess();
    sub_1012D4DC4(v94, v217);
    swift_endAccess();

    swift_beginAccess();
    v27 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas;
    swift_beginAccess();

    sub_100769208(v95);
    swift_endAccess();

    swift_beginAccess();
    swift_beginAccess();

    sub_1012D4DC4(v97, v96);
    swift_endAccess();

    swift_beginAccess();
    v98 = v227;

    v99 = swift_isUniquelyReferenced_nonNull_native();
    v230[0] = *(v44 + v27);
    *(v44 + v27) = 0x8000000000000000;
    v100 = v212;
    sub_10077486C(v98, sub_100ED9FEC, 0, v99, v230);
    if (!v100)
    {

      *(v44 + v27) = v230[0];

      swift_endAccess();
      swift_beginAccess();

      sub_100636EA0(v101);
      swift_endAccess();
      v102 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
      swift_beginAccess();
      v103 = *(v44 + v102);
      v104 = v215;
      if (v103)
      {
        v105 = v219;
        if (*(v215 + 16) <= v219[2] >> 3)
        {
          v230[0] = v219;

          sub_1012D4DC4(v204, v104);

          v106 = v230[0];
        }

        else
        {

          v106 = sub_1012D5CC4(v104, v105);
        }

        v205 = sub_10076BB40(v106, v103);

        *(v44 + v102) = v205;
      }

      else
      {
      }

      goto LABEL_53;
    }

    goto LABEL_60;
  }

  v226 = sub_1007727A4(v67);

  v211 = sub_1007727A4(v68);

  v69 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
  swift_beginAccess();
  v220 = v69;
  v70 = *(v66 + v69);
  v71 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
  swift_beginAccess();
  v206 = v71;
  v223 = v70;

  sub_100DCA060(v72);
  isUniquelyReferenced_nonNull_native = sub_1007727A4(v73);

  swift_beginAccess();

  sub_100DCA060(v74);
  v27 = sub_1007727A4(v75);

  v76 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas;
  v2 = v216;
  v77 = *(v216 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);

  v78 = sub_100EA61FC();
  v44 = sub_100BD2660(v77, v78);
  v79 = v212;
  v80 = sub_100773FE4(isUniquelyReferenced_nonNull_native, v44);

  if (!v80[2])
  {

    v83 = v219;
    goto LABEL_38;
  }

  v81 = *(v2 + v76);

  v82 = swift_isUniquelyReferenced_nonNull_native();
  v230[0] = v81;
  sub_1007741A4(v80, sub_100ED9FEC, 0, v82, v230);

  v83 = v219;
  if (!v79)
  {
    *(v2 + v76) = v230[0];

LABEL_38:
    v224 = v76;
    v107 = *(v2 + v76);

    v108 = v226;

    v109 = swift_isUniquelyReferenced_nonNull_native();
    v230[0] = v107;
    sub_1007741A4(v108, sub_100ED9FEC, 0, v109, v230);

    if (!v79)
    {
      v221 = isUniquelyReferenced_nonNull_native;
      v212 = v27;
      v110 = sub_10076B904(v83, v230[0]);

      v111 = v217;
      v112 = sub_10076B904(v217, v110);

      v113 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;

      v115 = sub_100767620(v114);

      v116 = sub_10076B904(v115, v112);

      v222 = v113;
      v117 = *(v2 + v113);

      v118 = swift_isUniquelyReferenced_nonNull_native();
      v230[0] = v117;
      sub_10077486C(v211, sub_100ED9FEC, 0, v118, v230);

      v119 = v230[0];
      v120 = sub_100767620(v226);
      v121 = sub_10076B904(v120, v119);

      v123 = sub_100767620(v122);

      v124 = sub_10076B904(v123, v121);

      v208 = sub_10076B904(v223, v124);

      v125 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
      swift_beginAccess();
      v223 = v125;
      v126 = *(v2 + v125);

      sub_1010ACAA4(v127, v126);
      v129 = v128;

      v131 = sub_1012D8334(v130, v129);

      v133 = sub_1012D8334(v132, v131);

      v134 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas;
      v135 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas);

      v136 = swift_isUniquelyReferenced_nonNull_native();
      v229[0] = v135;
      sub_1007741A4(v221, sub_100ED9FEC, 0, v136, v229);

      v137 = v219;
      v138 = sub_10076B904(v219, v229[0]);

      v139 = sub_10076B904(v111, v138);

      v140 = sub_100EA61FC();
      v221 = sub_10076B904(v140, v139);

      v210 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas;
      v141 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas);

      v142 = swift_isUniquelyReferenced_nonNull_native();
      v229[0] = v141;
      sub_1007741A4(v212, sub_100ED9FEC, 0, v142, v229);

      v207 = 0;
      v143 = sub_10076B904(v137, v229[0]);

      v144 = sub_10076B904(v111, v143);

      v145 = sub_100EA61FC();
      v209 = sub_10076B904(v145, v144);

      v146 = v224;
      v147 = *(v224 + v2);

      sub_100B33ED0(v116, v147);
      LOBYTE(v143) = v148;

      v149 = v222;
      v150 = v208;
      LODWORD(v212) = (v143 & 1) == 0 || (v151 = *(v2 + v222), , sub_100B33ED0(v150, v151), v153 = v152, , (v153 & 1) == 0) || (v154 = *(v134 + v2), , sub_100B33ED0(v221, v154), v156 = v155, , (v156 & 1) == 0) || (v157 = *(v2 + v223), , sub_100BC5FB8(v133, v157), v159 = v158, , (v159 & 1) == 0);
      v211 = v134;
      *(v146 + v2) = v116;

      *(v2 + v149) = v150;

      *(v2 + v223) = v133;

      if (qword_1019F2288 == -1)
      {
LABEL_46:
        v208 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C4D0;
        type metadata accessor for CRLTransactableData(0);
        sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v161 = Dictionary.Keys.description.getter();
        v163 = v162;

        *(inited + 56) = &type metadata for String;
        v164 = sub_1000053B0();
        *(inited + 64) = v164;
        *(inited + 32) = v161;
        *(inited + 40) = v163;

        v165 = Dictionary.Keys.description.getter();
        v167 = v166;

        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v164;
        *(inited + 72) = v165;
        *(inited + 80) = v167;

        v168 = Set.description.getter();
        v170 = v169;

        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v164;
        isUniquelyReferenced_nonNull_native = v2;
        *(inited + 112) = v168;
        *(inited + 120) = v170;
        v171 = static os_log_type_t.default.getter();
        sub_100005404(v208, &_mh_execute_header, v171, "CRLBoardChangeSet _applyChange addedItemDatas: %{public}@, removedItemDatas: %{public}@, removedNewlyCreatedItemIds: %{public}@", 127, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();

        v173 = v207;
        v174 = sub_1007664E0(v172);

        v175 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedFreehandItemIDsSubset;
        v176 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedFreehandItemIDsSubset);

        v177 = sub_101104CFC(v174, v176);

        v178 = v226;

        v180 = sub_1012D8334(v179, v177);

        v182 = sub_1012D8334(v181, v180);

        *(v2 + v175) = v182;

        v183 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs;
        v184 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs);

        sub_1010ACAA4(v215, v184);
        v186 = sub_1012D8334(v178, v185);

        v188 = sub_1012D8334(v187, v186);

        *(v2 + v183) = v188;

        *(v211 + v2) = v221;

        *(v2 + v210) = v209;

        v27 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas;
        swift_beginAccess();
        v189 = v214;
        sub_100769208(v214);

        sub_100769208(v190);
        swift_endAccess();

        swift_beginAccess();
        swift_beginAccess();

        sub_1012D4DC4(v192, v191);
        swift_endAccess();

        swift_beginAccess();
        v193 = v227;

        v194 = swift_isUniquelyReferenced_nonNull_native();
        v228[0] = *(v2 + v27);
        *(v2 + v27) = 0x8000000000000000;
        sub_10077486C(v193, sub_100ED9FEC, 0, v194, v228);
        if (!v173)
        {

          *(v2 + v27) = v228[0];

          swift_endAccess();
          swift_beginAccess();

          sub_100636EA0(v195);
          swift_endAccess();
          v196 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
          swift_beginAccess();
          v197 = *(v2 + v196);
          if (v197)
          {

            v199 = sub_1012CE518(v198);

            v200 = swift_isUniquelyReferenced_nonNull_native();
            v228[0] = v197;
            sub_1007744E8(v199, sub_100771BE4, 0, v200, v228);

            v201 = sub_10076BB40(v219, v228[0]);

            v202 = sub_10076BB40(v217, v201);

            v203 = sub_10076BB40(v189, v202);

            *(v2 + v196) = v203;
          }

          else
          {
          }

LABEL_53:

          return;
        }

        goto LABEL_61;
      }

LABEL_58:
      swift_once();
      goto LABEL_46;
    }

LABEL_59:

    __break(1u);
LABEL_60:

    *(v44 + v27) = v230[0];

    __break(1u);
LABEL_61:

    *(isUniquelyReferenced_nonNull_native + v27) = v228[0];

    __break(1u);
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_10076B904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v26 = v5 + 16;
  v13 = (v5 + 8);

  v27 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(v5 + 72);
    (*(v5 + 16))(v7, *(v27 + 48) + v18 * (v17 | (v15 << 6)), v4);
    v19 = sub_10003E994(v7);
    if (v20)
    {
      v25 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = a2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA4714();
        a2 = v28;
      }

      v22 = (*(a2 + 48) + v25 * v18);
      v24 = *v13;
      v24(v22, v4);

      sub_100BDBB9C();
      result = v24(v7, v4);
    }

    else
    {
      result = (*v13)(v7, v4);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return a2;
    }

    v11 = *(v8 + 8 * v15);
    ++v16;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10076BB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v27 = v5 + 16;
  v13 = (v5 + 8);

  v28 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(v5 + 72);
    (*(v5 + 16))(v7, *(v28 + 48) + v18 * (v17 | (v15 << 6)), v4);
    v19 = sub_10003E994(v7);
    if (v20)
    {
      v26 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA37A4();
        a2 = v29;
      }

      v22 = (*(a2 + 48) + v26 * v18);
      v23 = v26;
      v25 = *v13;
      v25(v22, v4);
      swift_unknownObjectRelease();
      sub_100BCC908(v23, a2);
      result = v25(v7, v4);
    }

    else
    {
      result = (*v13)(v7, v4);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return a2;
    }

    v11 = *(v8 + 8 * v15);
    ++v16;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_10076BD80()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (sub_100768904())
    {
      if (*(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas) + 16) || *(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) + 16))
      {
        v8 = 1;
      }

      else
      {
        v9 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
        swift_beginAccess();
        v8 = *(*(v0 + v9) + 16) != 0;
      }

      v10[31] = v8;

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10076BF24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v421 = *(v8 - 8);
  __chkstk_darwin(v8);
  v412 = &v383 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v413 = &v383 - v11;
  __chkstk_darwin(v12);
  v414 = &v383 - v13;
  __chkstk_darwin(v14);
  v16 = &v383 - v15;
  __chkstk_darwin(v17);
  v417 = &v383 - v18;
  __chkstk_darwin(v19);
  v410 = &v383 - v20;
  __chkstk_darwin(v21);
  v422 = &v383 - v22;
  __chkstk_darwin(v23);
  v399 = &v383 - v24;
  __chkstk_darwin(v25);
  v424 = (&v383 - v26);
  __chkstk_darwin(v27);
  v411 = &v383 - v28;
  __chkstk_darwin(v29);
  v427 = &v383 - v30;
  __chkstk_darwin(v31);
  v423 = &v383 - v32;
  __chkstk_darwin(v33);
  v418 = (&v383 - v34);
  __chkstk_darwin(v35);
  v426 = &v383 - v36;
  __chkstk_darwin(v37);
  v39 = &v383 - v38;
  __chkstk_darwin(v40);
  v428 = &v383 - v41;
  if (!sub_100768904() || *&a1[OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter] > 0)
  {
    v42 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
    return (*(*(v42 - 8) + 56))(a4, 1, 1, v42);
  }

  v384 = v16;
  v387 = a4;
  v388 = a2;
  v393 = a3;
  v435 = _swiftEmptyArrayStorage;
  v44 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas;
  swift_beginAccess();
  v397 = v44;

  v46 = sub_100767620(v45);

  v47 = v46 + 7;
  v48 = 1 << *(v46 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v46[7];
  i = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas;
  v409 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas;
  v419 = a1;
  v415 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
  v416 = v46;
  swift_beginAccess();
  v51 = 0;
  v52 = (v48 + 63) >> 6;
  v420 = (v421 + 32);
  v429 = (v421 + 16);
  v430 = (v421 + 8);
  v401 = _swiftEmptyArrayStorage;
  if (v50)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v54 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v55 = v421;
        v56 = v428;
        (*(v421 + 16))(v428, v416[6] + *(v421 + 72) * (v54 | (v51 << 6)), v8);
        (*(v55 + 32))(v39, v56, v8);
        v57 = *&v419[v415];
        if (*(v57 + 16))
        {
          break;
        }

LABEL_20:
        (*v430)(v39, v8);
        if (!v50)
        {
          goto LABEL_7;
        }
      }

      v58 = sub_10003E994(v39);
      if ((v59 & 1) == 0)
      {
        goto LABEL_19;
      }

      v60 = *(*(v57 + 56) + 8 * v58);

      if (*(*(i + v419) + 16))
      {

        sub_10003E994(v39);
        if (v61)
        {
          goto LABEL_18;
        }
      }

      if (*(*&v419[v409] + 16))
      {

        sub_10003E994(v39);
        if (v62)
        {
LABEL_18:

LABEL_19:

          goto LABEL_20;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v435 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v435 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v407 = v60;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v430)(v39, v8);
      v401 = v435;
      if (!v50)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
      goto LABEL_290;
    }

    if (v53 >= v52)
    {
      break;
    }

    v50 = v47[v53];
    ++v51;
    if (v50)
    {
      v51 = v53;
      goto LABEL_11;
    }
  }

  v63 = *v429;
  v64 = v419;
  v394 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier;
  v65 = v426;
  v428 = v63;
  (v63)(v426, &v419[OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier], v8);
  v66 = i;
  v67 = *(i + v64);
  if (*(v67 + 16))
  {

    v68 = sub_10003E994(v65);
    v69 = v430;
    v70 = v418;
    if (v71)
    {
      v72 = *(*(v67 + 56) + 8 * v68);
      v73 = *v430;

      v426 = v73;
      v73(v65, v8);
      v74 = v72;

      v75 = *(v72 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
      if ((v75 & 0x8000000000000000) == 0)
      {
        v392 = v74;

        goto LABEL_33;
      }

LABEL_493:
      v345 = objc_opt_self();

      v346 = [v345 _atomicIncrementAssertCount];
      v433 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v433, "Non-board data found associted with boardUUID", 45, 2u);
      StaticString.description.getter("getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2);
      v347 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
      v348 = String._bridgeToObjectiveC()();

      v349 = [v348 lastPathComponent];

      v350 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v352 = v351;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v353 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v354 = swift_allocObject();
      *(v354 + 16) = xmmword_10146CA70;
      *(v354 + 56) = &type metadata for Int32;
      *(v354 + 64) = &protocol witness table for Int32;
      *(v354 + 32) = v346;
      v355 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v354 + 96) = v355;
      v356 = sub_1005CF04C();
      *(v354 + 104) = v356;
      *(v354 + 72) = v347;
      *(v354 + 136) = &type metadata for String;
      v357 = sub_1000053B0();
      *(v354 + 112) = v350;
      *(v354 + 120) = v352;
      *(v354 + 176) = &type metadata for UInt;
      *(v354 + 184) = &protocol witness table for UInt;
      *(v354 + 144) = v357;
      *(v354 + 152) = 481;
      v358 = v433;
      *(v354 + 216) = v355;
      *(v354 + 224) = v356;
      *(v354 + 192) = v358;
      v359 = v347;
      v360 = v358;
      v361 = static os_log_type_t.error.getter();
      sub_100005404(v353, &_mh_execute_header, v361, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v354);

      v362 = static os_log_type_t.error.getter();
      sub_100005404(v353, &_mh_execute_header, v362, "Non-board data found associted with boardUUID", 45, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Non-board data found associted with boardUUID");
      sub_10063E178(_swiftEmptyArrayStorage, "getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2u, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2u, 481, "Non-board data found associted with boardUUID", 45, 2u);
LABEL_499:
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v363, *&v364);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v426 = *v69;
    (v426)(v65, v8);
    v75 = 0;
    v392 = 0;
  }

  else
  {
    v426 = *v430;
    (v426)(v65, v8);
    v75 = 0;
    v392 = 0;
    v70 = v418;
  }

LABEL_33:
  (v428)(v70, &v64[v394], v8);
  v76 = *&v64[v409];
  if (!*(v76 + 16))
  {
LABEL_40:
    (v426)(v70, v8);
    v389 = 0;
    goto LABEL_44;
  }

  v77 = sub_10003E994(v70);
  if ((v78 & 1) == 0)
  {

    goto LABEL_40;
  }

  v79 = *(*(v76 + 56) + 8 * v77);

  (v426)(v70, v8);

  v389 = v79;
  if (v392)
  {
    v390 = v75;
    v80 = objc_opt_self();

    v81 = [v80 _atomicIncrementAssertCount];
    v433 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v433, "Shouldn't have a board modification if we're creating the board.", 64, 2u);
    StaticString.description.getter("getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2);
    v418 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
    v82 = String._bridgeToObjectiveC()();

    v83 = [v82 lastPathComponent];

    v416 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v86 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v81;
    v88 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v88;
    v89 = sub_1005CF04C();
    *(inited + 104) = v89;
    v90 = v418;
    *(inited + 72) = v418;
    *(inited + 136) = &type metadata for String;
    v91 = sub_1000053B0();
    *(inited + 112) = v416;
    *(inited + 120) = v85;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v91;
    *(inited + 152) = 488;
    v92 = v433;
    *(inited + 216) = v88;
    *(inited + 224) = v89;
    *(inited + 192) = v92;
    v93 = v90;
    v94 = v92;
    v95 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v95, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v96 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v96, "Shouldn't have a board modification if we're creating the board.", 64, 2, _swiftEmptyArrayStorage);

    sub_100604780(_swiftEmptyArrayStorage, "getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2u, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2u, 488, "Shouldn't have a board modification if we're creating the board.", 64, 2u);
    v64 = v419;
    v79 = v389;
  }

  else
  {
  }

  v75 = *(v79 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
  if (v75 < 0)
  {
    v366 = [objc_opt_self() _atomicIncrementAssertCount];
    v433 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v433, "Non-board data found associted with boardUUID", 45, 2u);
    StaticString.description.getter("getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2);
    v367 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
    v368 = String._bridgeToObjectiveC()();

    v369 = [v368 lastPathComponent];

    v370 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v372 = v371;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v373 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v374 = swift_initStackObject();
    *(v374 + 16) = xmmword_10146CA70;
    *(v374 + 56) = &type metadata for Int32;
    *(v374 + 64) = &protocol witness table for Int32;
    *(v374 + 32) = v366;
    v375 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v374 + 96) = v375;
    v376 = sub_1005CF04C();
    *(v374 + 104) = v376;
    *(v374 + 72) = v367;
    *(v374 + 136) = &type metadata for String;
    v377 = sub_1000053B0();
    *(v374 + 112) = v370;
    *(v374 + 120) = v372;
    *(v374 + 176) = &type metadata for UInt;
    *(v374 + 184) = &protocol witness table for UInt;
    *(v374 + 144) = v377;
    *(v374 + 152) = 492;
    v378 = v433;
    *(v374 + 216) = v375;
    *(v374 + 224) = v376;
    *(v374 + 192) = v378;
    v379 = v367;
    v380 = v378;
    v381 = static os_log_type_t.error.getter();
    sub_100005404(v373, &_mh_execute_header, v381, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v374);

    v382 = static os_log_type_t.error.getter();
    sub_100005404(v373, &_mh_execute_header, v382, "Non-board data found associted with boardUUID", 45, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Non-board data found associted with boardUUID");
    sub_10063E178(_swiftEmptyArrayStorage, "getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2u, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2u, 492, "Non-board data found associted with boardUUID", 45, 2u);
    goto LABEL_499;
  }

  v66 = i;
LABEL_44:
  v97 = *(v66 + v64);

  v39 = sub_100767A60(v98);

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
  {
    v39 = sub_10113E260();
  }

  v390 = v75;
  v50 = v39 & 0xFFFFFFFFFFFFFF8;
  v99 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = (v39 & 0xFFFFFFFFFFFFFF8) + 32;
  v47 = &off_1019FAE60;
  v51 = 0;
  if (v99)
  {
LABEL_49:
    v100 = (v52 + 8 * v51);
    while (1)
    {
      v101 = *v100;
      if (**v100 == &off_1019FAE60)
      {
        break;
      }

      ++v51;
      ++v100;
      if (v51 >= v99)
      {
        goto LABEL_57;
      }
    }

    v102 = v99 - 1;
    v103 = (v52 + 8 * v99);
    while (v51 < v102)
    {
      v105 = *--v103;
      v104 = v105;
      --v102;
      if (*v105 != &off_1019FAE60)
      {
        *v100 = v104;
        *v103 = v101;
        ++v51;
        v99 = v102 + 1;
        if (v51 < v102 + 1)
        {
          goto LABEL_49;
        }

        break;
      }
    }
  }

LABEL_57:
  v418 = (v39 >> 62);
  if (!(v39 >> 62))
  {
    v106 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v106 >= v51)
    {
      goto LABEL_59;
    }

LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

LABEL_290:
  if ((v39 & 0x8000000000000000) != 0)
  {
    v97 = v39;
  }

  else
  {
    v97 = v50;
  }

  v252 = _CocoaArrayWrapper.endIndex.getter();
  if (v252 < v51)
  {
    __break(1u);
LABEL_492:
    __break(1u);
    goto LABEL_493;
  }

  v106 = v252;
  if (_CocoaArrayWrapper.endIndex.getter() < v51)
  {
    __break(1u);
    goto LABEL_296;
  }

LABEL_59:
  if (v51 < 0)
  {
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

  if (v418)
  {
    v107 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v107 = *(v50 + 16);
  }

  if (v107 < v106)
  {
    goto LABEL_298;
  }

  v415 = v52;
  if (v106 < 0)
  {
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  i = (v39 & 0xC000000000000001);
  if ((v39 & 0xC000000000000001) == 0 || v51 == v106)
  {
  }

  else
  {
    if (v51 >= v106)
    {
      goto LABEL_475;
    }

    v97 = type metadata accessor for CRLBoardItemData();

    v108 = v51;
    do
    {
      v109 = v108 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v108);
      v108 = v109;
    }

    while (v106 != v109);
  }

  v396 = v39;
  v416 = v50;
  if (v418)
  {

    v110 = _CocoaArrayWrapper.subscript.getter();
    v52 = v112;
    v106 = v113 >> 1;
  }

  else
  {
    v110 = v50;
    v111 = v415;
    v52 = v51;
  }

  v50 = v106 - v52;
  if (__OFSUB__(v106, v52))
  {
    goto LABEL_300;
  }

  v431 = v8;
  if (v50)
  {
    v406 = v110;
    v407 = v111;
    v8 = v47;
    v433 = _swiftEmptyArrayStorage;
    v97 = &v433;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_473;
    }

    if (v52 <= v106)
    {
      v114 = v106;
    }

    else
    {
      v114 = v52;
    }

    v39 = v114 - v52;
    v47 = (v407 + 8 * v52);
    do
    {
      if (!v39)
      {
        goto LABEL_283;
      }

      v52 = *v47;
      if (**v47 != v8)
      {
        goto LABEL_284;
      }

      v97 = &v433;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v39;
      ++v47;
      --v50;
    }

    while (v50);
    swift_unknownObjectRelease();
    v50 = v433;
    v47 = v8;
    v8 = v431;
  }

  else
  {
    swift_unknownObjectRelease();
    v50 = _swiftEmptyArrayStorage;
  }

  v39 = v396;
  if (v418)
  {
    if (v396 < 0)
    {
      v97 = v396;
    }

    else
    {
      v97 = v416;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_476;
    }

    v115 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v115 = v416[2];
  }

  if (v115 < v51)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  if (i && v51)
  {
    type metadata accessor for CRLBoardItemData();

    v116 = 0;
    do
    {
      v117 = v116 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v116);
      v116 = v117;
    }

    while (v51 != v117);
    if (!v418)
    {
      goto LABEL_100;
    }

LABEL_102:

    v118 = _CocoaArrayWrapper.subscript.getter();
    v415 = v119;
    v416 = v118;
    v97 = v120;
    v52 = v121;
    if ((v121 & 1) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  if (v418)
  {
    goto LABEL_102;
  }

LABEL_100:
  v97 = 0;
  v52 = (2 * v51) | 1;
LABEL_104:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v123 = swift_dynamicCastClass();
  if (!v123)
  {
    swift_unknownObjectRelease();
    v123 = _swiftEmptyArrayStorage;
  }

  v124 = v123[2];

  if (__OFSUB__(v52 >> 1, v97))
  {
    goto LABEL_477;
  }

  if (v124 != (v52 >> 1) - v97)
  {
    goto LABEL_478;
  }

  v125 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  i = v125;
  if (v125)
  {
    goto LABEL_111;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v122)
  {
    swift_unknownObjectRelease();
LABEL_111:

    v39 = sub_100767A60(v126);

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      v39 = sub_10113E260();
    }

    v97 = (v39 & 0xFFFFFFFFFFFFFF8);
    v127 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v416 = ((v39 & 0xFFFFFFFFFFFFFF8) + 32);
    v433 = v416;
    v434 = v127;
    v128 = v425;
    v52 = sub_100771D5C(&v433);
    v51 = v128;
    v425 = v39 >> 62;
    v418 = (v39 & 0xFFFFFFFFFFFFFF8);
    if (v39 >> 62)
    {
LABEL_302:
      if ((v39 & 0x8000000000000000) != 0)
      {
        v97 = v39;
      }

      v253 = _CocoaArrayWrapper.endIndex.getter();
      if (v253 < v52)
      {
        goto LABEL_492;
      }

      v129 = v253;
      if (_CocoaArrayWrapper.endIndex.getter() < v52)
      {
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }
    }

    else
    {
      v129 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v129 < v52)
      {
        goto LABEL_307;
      }
    }

    if (v52 < 0)
    {
      goto LABEL_308;
    }

    if (v425)
    {
      v130 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v130 = v418[2];
    }

    if (v130 < v129)
    {
      goto LABEL_309;
    }

    if (v129 < 0)
    {
      goto LABEL_310;
    }

    v386 = v51;
    v415 = v39 & 0xC000000000000001;
    if ((v39 & 0xC000000000000001) == 0 || v52 == v129)
    {
    }

    else
    {
      if (v52 >= v129)
      {
        __break(1u);
LABEL_480:
        __break(1u);
LABEL_481:
        __break(1u);
LABEL_482:
        __break(1u);
LABEL_483:
        __break(1u);
LABEL_484:
        __break(1u);
        goto LABEL_485;
      }

      type metadata accessor for CRLBoardItemData();

      v131 = v52;
      do
      {
        v132 = v131 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v131);
        v131 = v132;
      }

      while (v129 != v132);
    }

    v395 = v39;
    v385 = v50;
    if (v425)
    {

      v133 = _CocoaArrayWrapper.subscript.getter();
      v51 = v135;
      v129 = v136 >> 1;
    }

    else
    {
      v133 = v418;
      v134 = v416;
      v51 = v52;
    }

    v50 = v129 - v51;
    if (__OFSUB__(v129, v51))
    {
      goto LABEL_311;
    }

    if (!v50)
    {
      swift_unknownObjectRelease();
      v51 = _swiftEmptyArrayStorage;
      goto LABEL_145;
    }

    v8 = v134;
    v409 = v133;
    v433 = _swiftEmptyArrayStorage;
    v97 = &v433;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v50 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_473:
    __break(1u);
LABEL_474:
    __break(1u);
LABEL_475:
    __break(1u);
LABEL_476:
    __break(1u);
LABEL_477:
    __break(1u);
LABEL_478:
    swift_unknownObjectRelease();
LABEL_103:
    sub_100676648(v416, v415, v97, v52);
  }

  if (v51 <= v129)
  {
    v137 = v129;
  }

  else
  {
    v137 = v51;
  }

  v39 = v137 - v51;
  v8 += 8 * v51;
  do
  {
    if (!v39)
    {
      goto LABEL_285;
    }

    v51 = *v8;
    if (**v8 != v47)
    {
      goto LABEL_286;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    --v39;
    v8 += 8;
    --v50;
  }

  while (v50);
  swift_unknownObjectRelease();
  v51 = v433;
  v8 = v431;
LABEL_145:
  v47 = v418;
  v50 = v419;
  if (!v425)
  {
    v138 = v418[2];
    goto LABEL_152;
  }

  if (v395 < 0)
  {
    v97 = v395;
  }

  else
  {
    v97 = v418;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    goto LABEL_483;
  }

  v138 = _CocoaArrayWrapper.endIndex.getter();
LABEL_152:
  if (v138 < v52)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v383 = v51;
  if (v415 && v52)
  {
    type metadata accessor for CRLBoardItemData();

    v139 = 0;
    do
    {
      v140 = v139 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v139);
      v139 = v140;
    }

    while (v52 != v140);
    if (!v425)
    {
LABEL_158:
      v97 = 0;
      v52 = (2 * v52) | 1;
      goto LABEL_161;
    }
  }

  else
  {

    if (!v425)
    {
      goto LABEL_158;
    }
  }

  v47 = _CocoaArrayWrapper.subscript.getter();
  v416 = v141;
  v97 = v142;
  v52 = v143;
LABEL_161:
  v39 = v423;
  v51 = v426;
  if ((v52 & 1) == 0)
  {
LABEL_162:
    sub_100676648(v47, v416, v97, v52);
    v145 = v144;
    goto LABEL_169;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v146 = swift_dynamicCastClass();
  if (!v146)
  {
    swift_unknownObjectRelease();
    v146 = _swiftEmptyArrayStorage;
  }

  v147 = v146[2];

  if (__OFSUB__(v52 >> 1, v97))
  {
    goto LABEL_484;
  }

  if (v147 != (v52 >> 1) - v97)
  {
LABEL_485:
    swift_unknownObjectRelease();
    v39 = v423;
    v51 = v426;
    goto LABEL_162;
  }

  v145 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v39 = v423;
  v51 = v426;
  if (!v145)
  {
    v145 = _swiftEmptyArrayStorage;
LABEL_169:
    swift_unknownObjectRelease();
  }

  v402 = v145;
  v391 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;

  v52 = sub_100767A60(v148);

  v433 = _swiftEmptyArrayStorage;
  if (!(v52 >> 62))
  {
    v149 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_172;
  }

LABEL_313:
  v149 = _CocoaArrayWrapper.endIndex.getter();
LABEL_172:
  v418 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs;
  if (!v149)
  {
    v176 = _swiftEmptyArrayStorage;
    goto LABEL_200;
  }

  v47 = 0;
  v406 = v52 & 0xFFFFFFFFFFFFFF8;
  v407 = v52 & 0xC000000000000001;
  v403 = v52 + 32;
  v404 = v149;
  v405 = v52;
  while (2)
  {
    if (v407)
    {
      v150 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v151 = __OFADD__(v47, 1);
      v152 = v47 + 1;
      if (v151)
      {
        goto LABEL_197;
      }

LABEL_177:
      v415 = v152;
      v153 = *(v418 + v50);
      v154 = (*v150 + 264);
      v155 = *v154;
      v416 = v150;
      v409 = v154;
      v155();
      if (*(v153 + 16))
      {
        v400 = v155;
        v156 = sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v398 = v156;
        v157 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v158 = -1 << *(v153 + 32);
        v159 = v157 & ~v158;
        if ((*(v153 + 56 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159))
        {
          v160 = ~v158;
          v425 = *(v421 + 72);
          while (1)
          {
            v161 = v427;
            v162 = v431;
            (v428)(v427, *(v153 + 48) + v425 * v159, v431);
            sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v163 = dispatch thunk of static Equatable.== infix(_:_:)();
            (v426)(v161, v162);
            if (v163)
            {
              break;
            }

            v159 = (v159 + 1) & v160;
            if (((*(v153 + 56 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
            {
              goto LABEL_182;
            }
          }

          v39 = v423;
          v8 = v431;
          v164 = v426;
          (v426)(v423, v431);

          v166 = sub_100767620(v165);

          v168 = v411;
          (v400)(v167);
          if (*(v166 + 16))
          {
            v169 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v170 = -1 << *(v166 + 32);
            v171 = v169 & ~v170;
            if ((*(v166 + 56 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171))
            {
              v172 = ~v170;
              while (1)
              {
                v173 = v427;
                v174 = v431;
                (v428)(v427, *(v166 + 48) + v171 * v425, v431);
                v175 = dispatch thunk of static Equatable.== infix(_:_:)();
                (v426)(v173, v174);
                if (v175)
                {
                  break;
                }

                v171 = (v171 + 1) & v172;
                if (((*(v166 + 56 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
                {
                  goto LABEL_192;
                }
              }

              v8 = v431;
              v51 = v426;
              (v426)(v411, v431);
              v50 = v419;
              v39 = v423;
LABEL_185:
              v52 = v405;
              v47 = v415;
              if (v415 == v404)
              {
                goto LABEL_198;
              }

              continue;
            }

LABEL_192:

            v8 = v431;
            v51 = v426;
            (v426)(v411, v431);
            v50 = v419;
            v39 = v423;
          }

          else
          {

            v164(v168, v8);
            v51 = v164;
            v50 = v419;
          }
        }

        else
        {
LABEL_182:

          v39 = v423;
          v8 = v431;
          v51 = v426;
          (v426)(v423, v431);
          v50 = v419;
        }
      }

      else
      {
        (v51)(v39, v8);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_185;
    }

    break;
  }

  if (v47 >= *(v406 + 16))
  {
    goto LABEL_287;
  }

  v151 = __OFADD__(v47, 1);
  v152 = v47 + 1;
  if (!v151)
  {
    goto LABEL_177;
  }

LABEL_197:
  __break(1u);
LABEL_198:
  v176 = v433;
LABEL_200:
  v400 = v176;

  v178 = sub_100EE94AC(v177);
  v47 = v178;
  v179 = _swiftEmptyArrayStorage;
  v51 = v399;
  v180 = v424;
  v411 = *(v178 + 2);
  if (v411)
  {
    v181 = 0;
    v407 = v178;
    do
    {
      if (v181 >= v47[2])
      {
        goto LABEL_288;
      }

      v416 = ((*(v421 + 80) + 32) & ~*(v421 + 80));
      v182 = *(v421 + 72);
      v423 = v181;
      v425 = v182;
      (v428)(v180, v416 + v47 + v182 * v181, v8);
      v183 = *(v418 + v50);
      if (*(v183 + 16))
      {
        v415 = v179;
        v184 = sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v185 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v186 = -1 << *(v183 + 32);
        v187 = v185 & ~v186;
        if ((*(v183 + 56 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187))
        {
          v409 = v184;
          v188 = ~v186;
          while (1)
          {
            v189 = v427;
            v190 = v431;
            (v428)(v427, *(v183 + 48) + v187 * v425, v431);
            sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v191 = dispatch thunk of static Equatable.== infix(_:_:)();
            (v426)(v189, v190);
            if (v191)
            {
              break;
            }

            v187 = (v187 + 1) & v188;
            if (((*(v183 + 56 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187) & 1) == 0)
            {
LABEL_208:
              v8 = v431;
              v51 = v399;
              goto LABEL_217;
            }
          }

          v193 = sub_100767620(v192);

          v51 = v399;
          if (!*(v193 + 16))
          {
            v8 = v431;
LABEL_217:
            v180 = v424;
LABEL_218:
            v47 = v407;
            goto LABEL_219;
          }

          v180 = v424;
          v8 = v431;
          v194 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v52 = v193 + 56;
          v195 = -1 << *(v193 + 32);
          v39 = v194 & ~v195;
          if (((*(v193 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_218;
          }

          v196 = ~v195;
          while (1)
          {
            v197 = v427;
            v198 = v431;
            (v428)(v427, *(v193 + 48) + v39 * v425, v431);
            v199 = dispatch thunk of static Equatable.== infix(_:_:)();
            v200 = v198;
            v201 = v426;
            (v426)(v197, v200);
            if (v199)
            {
              break;
            }

            v39 = (v39 + 1) & v196;
            if (((*(v52 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_208;
            }
          }

          v206 = v424;
          v8 = v431;
          v201(v424, v431);
          v180 = v206;
          v50 = v419;
          v51 = v399;
          v179 = v415;
          v47 = v407;
          goto LABEL_225;
        }

        v8 = v431;
LABEL_219:

        v179 = v415;
      }

      v39 = *v420;
      (*v420)(v51, v180, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v433 = v179;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776524(0, v179[2] + 1, 1);
        v179 = v433;
      }

      v50 = v419;
      v204 = v179[2];
      v203 = v179[3];
      v52 = v204 + 1;
      if (v204 >= v203 >> 1)
      {
        sub_100776524((v203 > 1), v204 + 1, 1);
        v179 = v433;
      }

      v179[2] = v52;
      v205 = v416 + v179 + v204 * v425;
      v8 = v431;
      (v39)(v205, v51, v431);
LABEL_225:
      v181 = v423 + 1;
    }

    while (v423 + 1 != v411);
  }

  v415 = v179;

  v208 = sub_100767A60(v207);

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v208 & 0x8000000000000000) != 0 || (v208 & 0x4000000000000000) != 0)
  {
    v208 = sub_10113E260();
  }

  v209 = v386;
  v210 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v433 = ((v208 & 0xFFFFFFFFFFFFFF8) + 32);
  v434 = v210;
  v211 = sub_100771D5C(&v433);
  v403 = v209;
  if (v211 < 0)
  {
    __break(1u);
  }

  else
  {
    v212 = v211;
    sub_100771A90(0, v208);
    sub_100771A90(v212, v208);
    v399 = v208;
    v213 = sub_100771AFC(0, v212, v208);
    v215 = v214;
    v217 = v216;
    v219 = v218;
    v220 = sub_100771E34(v213, v214, v216, v218);
    if (!v220)
    {
      sub_100676648(v213, v215, v217, v219);
    }

    v39 = v220;
    swift_unknownObjectRelease();
    v51 = v422;
    v433 = _swiftEmptyArrayStorage;
    v180 = v430;
    if ((v39 & 0x8000000000000000) == 0 && (v39 & 0x4000000000000000) == 0)
    {
      v52 = *(v39 + 16);
      goto LABEL_238;
    }
  }

  v52 = _CocoaArrayWrapper.endIndex.getter();
LABEL_238:
  v221 = _swiftEmptyArrayStorage;
  if (!v52)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_268;
  }

  v222 = 0;
  v411 = (v39 & 0xC000000000000001);
  v407 = v39 + 32;
  v404 = v39;
  v409 = v52;
  while (2)
  {
    if (v411)
    {
      v223 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v151 = __OFADD__(v222, 1);
      v224 = v222 + 1;
      if (v151)
      {
        goto LABEL_265;
      }

LABEL_243:
      v423 = v224;
      v47 = *(v418 + v50);
      v225 = (*v223 + 264);
      v226 = *v225;
      v424 = v223;
      v416 = v225;
      v226();
      if (v47[2])
      {
        v406 = v226;
        v227 = sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v405 = v227;
        v228 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v229 = -1 << *(v47 + 32);
        v230 = v228 & ~v229;
        v425 = (v47 + 7);
        if ((*(v47 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v230))
        {
          v231 = ~v229;
          v426 = *(v421 + 72);
          while (1)
          {
            v232 = v427;
            v233 = v431;
            (v428)(v427, v47[6] + v426 * v230, v431);
            sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v234 = dispatch thunk of static Equatable.== infix(_:_:)();
            v235 = *v430;
            (*v430)(v232, v233);
            if (v234)
            {
              break;
            }

            v230 = (v230 + 1) & v231;
            v51 = v422;
            if (((*(v425 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v230) & 1) == 0)
            {
              goto LABEL_248;
            }
          }

          v180 = v430;
          v8 = v431;
          v235(v422, v431);

          v47 = sub_100767620(v236);

          v238 = v410;
          (v406)(v237);
          if (v47[2])
          {
            v239 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v240 = -1 << *(v47 + 32);
            v241 = v239 & ~v240;
            v425 = (v47 + 7);
            if ((*(v47 + ((v241 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v241))
            {
              v242 = ~v240;
              while (1)
              {
                v243 = v427;
                v244 = v431;
                (v428)(v427, v47[6] + v241 * v426, v431);
                v245 = dispatch thunk of static Equatable.== infix(_:_:)();
                v235(v243, v244);
                if (v245)
                {
                  break;
                }

                v241 = (v241 + 1) & v242;
                if (((*(v425 + ((v241 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v241) & 1) == 0)
                {
                  goto LABEL_255;
                }
              }

              v180 = v430;
              v8 = v431;
              v235(v410, v431);
              v50 = v419;
              v51 = v422;
              v39 = v404;
LABEL_260:
              v52 = v409;
              v222 = v423;
              if (v423 == v409)
              {
                goto LABEL_266;
              }

              continue;
            }

LABEL_255:

            v246 = v410;
            v180 = v430;
            v8 = v431;
          }

          else
          {

            v246 = v238;
          }

          v235(v246, v8);
          v50 = v419;
          v51 = v422;
        }

        else
        {
LABEL_248:

          v180 = v430;
          v8 = v431;
          (*v430)(v51, v431);
          v50 = v419;
        }

        v39 = v404;
      }

      else
      {
        (*v180)(v51, v8);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_260;
    }

    break;
  }

  if (v222 >= *(v39 + 16))
  {
    goto LABEL_289;
  }

  v151 = __OFADD__(v222, 1);
  v224 = v222 + 1;
  if (!v151)
  {
    goto LABEL_243;
  }

LABEL_265:
  __break(1u);
LABEL_266:
  v52 = v433;
  v221 = _swiftEmptyArrayStorage;
LABEL_268:

  if (v52 < 0 || (v52 & 0x4000000000000000) != 0)
  {
    v247 = _CocoaArrayWrapper.endIndex.getter();
    if (!v247)
    {
      goto LABEL_317;
    }

LABEL_271:
    v433 = _swiftEmptyArrayStorage;
    v97 = &v433;
    sub_100880670(v247);
    if ((v247 & 0x8000000000000000) == 0)
    {
      v248 = 0;
      do
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v249 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v249 = *(v52 + 8 * v248 + 32);
        }

        (*(*v249 + 264))();

        v221 = v433;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776524(0, v221[2] + 1, 1);
          v221 = v433;
        }

        v251 = v221[2];
        v250 = v221[3];
        if (v251 >= v250 >> 1)
        {
          sub_100776524((v250 > 1), v251 + 1, 1);
          v221 = v433;
        }

        ++v248;
        v221[2] = v251 + 1;
        (*(v421 + 32))(v221 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v251, v417, v431);
        v433 = v221;
      }

      while (v247 != v248);

      v50 = v419;
      goto LABEL_318;
    }

    goto LABEL_474;
  }

  v247 = *(v52 + 16);
  if (v247)
  {
    goto LABEL_271;
  }

LABEL_317:

LABEL_318:
  v254 = sub_100E93A84(v221);

  v255 = *(v50 + v397);
  v50 = v255 + 64;
  v256 = 1 << *(v255 + 32);
  v257 = -1;
  if (v256 < 64)
  {
    v257 = ~(-1 << v256);
  }

  v258 = v257 & *(v255 + 64);
  v47 = ((v256 + 63) >> 6);
  v259 = swift_bridgeObjectRetain_n();
  v8 = 0;
  v430 = _swiftEmptyArrayStorage;
  while (v258)
  {
LABEL_327:
    v262 = __clz(__rbit64(v258));
    v258 &= v258 - 1;
    v263 = *(*(v255 + 56) + ((v8 << 9) | (8 * v262)));
    v264 = *(v263 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
    if (v264 < 0)
    {
      LODWORD(v221) = *(v263 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
      v259 = (*(*(v264 & 0x7FFFFFFFFFFFFFFFLL) + 464))(v259);
      if ((v266 & 0x100) == 0 || (!(v259 | v265) ? (v267 = v266 == 0) : (v267 = 0), v267 || (v259 == 1 ? (v268 = v265 == 0) : (v268 = 0), v268 ? (v269 = v266 == 0) : (v269 = 0), v269 || (v259 == 2 ? (v270 = v265 == 0) : (v270 = 0), v270 ? (v271 = v266 == 0) : (v271 = 0), v271 || (v259 == 3 ? (v272 = v265 == 0) : (v272 = 0), v272 ? (v273 = v266 == 0) : (v273 = 0), v273 || (v259 == 4 ? (v274 = v265 == 0) : (v274 = 0), v274 ? (v275 = v266 == 0) : (v275 = 0), v275 || (v259 == 5 ? (v276 = v265 == 0) : (v276 = 0), v276 ? (v277 = v266 == 0) : (v277 = 0), v277 || (v259 == 6 ? (v278 = v265 == 0) : (v278 = 0), v278 ? (v279 = v266 == 0) : (v279 = 0), v279 || (v259 == 7 ? (v280 = v265 == 0) : (v280 = 0), v280 ? (v281 = v266 == 0) : (v281 = 0), v281 || (v259 == 8 ? (v282 = v265 == 0) : (v282 = 0), v282 ? (v283 = v266 == 0) : (v283 = 0), v283 || (v259 == 9 ? (v284 = v265 == 0) : (v284 = 0), v284 ? (v285 = v266 == 0) : (v285 = 0), !v285)))))))))))
      {
        (v428)(v384, v263 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_id, v431);
        v286 = v254;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v430 = sub_100B356D0(0, v430[2] + 1, 1, v430);
        }

        v288 = v430[2];
        v287 = v430[3];
        v221 = (v288 + 1);
        if (v288 >= v287 >> 1)
        {
          v430 = sub_100B356D0((v287 > 1), v288 + 1, 1, v430);
        }

        v290 = v430;
        v289 = v431;
        v430[2] = v221;
        v259 = (*(v421 + 32))(v290 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v288, v384, v289);
        v254 = v286;
      }
    }
  }

  v260 = i;
  while (2)
  {
    v261 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_468:
      v340 = _CocoaArrayWrapper.endIndex.getter();
      v292 = v260;
      if (!v340)
      {
        goto LABEL_409;
      }

      goto LABEL_412;
    }

    if (v261 < v47)
    {
      v258 = *(v50 + 8 * v261);
      ++v8;
      if (v258)
      {
        v8 = v261;
        goto LABEL_327;
      }

      continue;
    }

    break;
  }

  v291 = sub_101104CFC(v430, v254);

  v430 = sub_100EE94AC(v291);
  if (v388)
  {

    sub_100D86480(v385, v383, v415);

    v427 = sub_100D88530();
  }

  else
  {

    v427 = _swiftEmptyDictionarySingleton;
  }

  v254 = v419;
  v8 = v431;
  v47 = v393;
  v50 = v396;
  v292 = v260;
  LODWORD(v221) = v260 < 0 || (v260 & 0x4000000000000000) != 0;
  if (v221 == 1)
  {
    goto LABEL_468;
  }

  if (*(v260 + 16))
  {
    goto LABEL_412;
  }

LABEL_409:
  if ((v402 & 0x8000000000000000) != 0 || (v402 & 0x4000000000000000) != 0)
  {
    v341 = _CocoaArrayWrapper.endIndex.getter();
    v292 = v260;
    if (!v341)
    {
      goto LABEL_487;
    }

LABEL_412:
    v433 = _swiftEmptyArrayStorage;
    if (v221)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = v292[2];
    }

    v293 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v432 = _swiftEmptyArrayStorage;
      v97 = &v432;
      sub_100880670(v52);
      if (v52 < 0)
      {
        goto LABEL_480;
      }

      v294 = 0;
      v295 = v260;
      v8 = v260 & 0xC000000000000001;
      do
      {
        if (v8)
        {
          v296 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v296 = v295[v294 + 4];
        }

        (*(*v296 + 264))();

        v293 = v432;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776524(0, v293[2] + 1, 1);
          v293 = v432;
        }

        v298 = v293[2];
        v297 = v293[3];
        if (v298 >= v297 >> 1)
        {
          sub_100776524((v297 > 1), v298 + 1, 1);
          v293 = v432;
        }

        ++v294;
        v293[2] = v298 + 1;
        (*(v421 + 32))(v293 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v298, v414, v431);
        v432 = v293;
        v295 = i;
      }

      while (v52 != v294);
      v254 = v419;
      v50 = v396;
    }

    sub_100799B18(v299);
    if ((v402 & 0x8000000000000000) != 0 || (v402 & 0x4000000000000000) != 0)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *(v402 + 16);
    }

    v300 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v432 = _swiftEmptyArrayStorage;
      v97 = &v432;
      sub_100880670(v52);
      if (v52 < 0)
      {
        goto LABEL_481;
      }

      v301 = 0;
      v302 = v402;
      v303 = v402 & 0xC000000000000001;
      do
      {
        if (v303)
        {
          v304 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v304 = *(v302 + 8 * v301 + 32);
        }

        (*(*v304 + 264))();

        v300 = v432;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776524(0, v300[2] + 1, 1);
          v300 = v432;
        }

        v302 = v402;
        v306 = v300[2];
        v305 = v300[3];
        v8 = v306 + 1;
        if (v306 >= v305 >> 1)
        {
          sub_100776524((v305 > 1), v306 + 1, 1);
          v302 = v402;
          v300 = v432;
        }

        ++v301;
        v300[2] = v8;
        (*(v421 + 32))(v300 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v306, v413, v431);
        v432 = v300;
      }

      while (v52 != v301);
      v254 = v419;
      v47 = v393;
      v50 = v396;
    }

    sub_100799B18(v300);
    if (v401 >> 62)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v401 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v307 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v432 = _swiftEmptyArrayStorage;
      v97 = &v432;
      sub_100880670(v52);
      if (v52 < 0)
      {
        goto LABEL_482;
      }

      v308 = 0;
      v309 = v401 & 0xC000000000000001;
      do
      {
        if (v309)
        {
          v310 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v310 = *(v401 + 8 * v308 + 32);
        }

        (*(*v310 + 264))();

        v307 = v432;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776524(0, v307[2] + 1, 1);
          v307 = v432;
        }

        v312 = v307[2];
        v311 = v307[3];
        if (v312 >= v311 >> 1)
        {
          sub_100776524((v311 > 1), v312 + 1, 1);
          v307 = v432;
        }

        ++v308;
        v307[2] = v312 + 1;
        (*(v421 + 32))(v307 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v312, v412, v431);
        v432 = v307;
      }

      while (v52 != v308);
      v254 = v419;
      v47 = v393;
    }

    sub_100799B18(v307);
    v313 = v47[3];
    v314 = v47[4];
    sub_100020E58(v47, v313);
    v315 = (v314[1])(v433, v293, v313, v314);

    if ((v315 & 0xC000000000000001) != 0)
    {
      v316 = __CocoaSet.count.getter();
      v8 = v431;
      if (v316)
      {
LABEL_458:

        v318 = sub_100767620(v317);

        v319 = v403;
        sub_100772240(v315, v318);
        v426 = v320;
        v403 = v319;

        swift_bridgeObjectRelease_n();
        goto LABEL_461;
      }
    }

    else
    {
      v8 = v431;
      if (*(v315 + 16))
      {
        goto LABEL_458;
      }
    }

    v426 = 0;
LABEL_461:
    v292 = i;
    v321 = v392;
    if (!v392)
    {
      goto LABEL_488;
    }

    goto LABEL_462;
  }

  if (*(v402 + 16))
  {
    goto LABEL_412;
  }

LABEL_487:
  v426 = 0;
  v321 = v392;
  if (!v392)
  {
LABEL_488:
    v339 = v292;

    goto LABEL_489;
  }

LABEL_462:
  if (!*(*(v254 + v391) + 16))
  {
    v339 = v292;

LABEL_489:

    goto LABEL_490;
  }

  v322 = [objc_opt_self() _atomicIncrementAssertCount];
  v433 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v433, "A board creation should not include deleted items", 49, 2u);
  StaticString.description.getter("getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2);
  v323 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
  v324 = String._bridgeToObjectiveC()();

  v325 = [v324 lastPathComponent];

  v326 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v328 = v327;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v329 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v330 = swift_initStackObject();
  *(v330 + 16) = xmmword_10146CA70;
  *(v330 + 56) = &type metadata for Int32;
  *(v330 + 64) = &protocol witness table for Int32;
  *(v330 + 32) = v322;
  v331 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v330 + 96) = v331;
  v332 = sub_1005CF04C();
  *(v330 + 104) = v332;
  *(v330 + 72) = v323;
  *(v330 + 136) = &type metadata for String;
  v333 = sub_1000053B0();
  *(v330 + 112) = v326;
  *(v330 + 120) = v328;
  *(v330 + 176) = &type metadata for UInt;
  *(v330 + 184) = &protocol witness table for UInt;
  *(v330 + 144) = v333;
  *(v330 + 152) = 570;
  v334 = v433;
  *(v330 + 216) = v331;
  *(v330 + 224) = v332;
  *(v330 + 192) = v334;
  v335 = v323;
  v336 = v334;
  v337 = static os_log_type_t.error.getter();
  sub_100005404(v329, &_mh_execute_header, v337, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v330);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v338 = static os_log_type_t.error.getter();
  sub_100005404(v329, &_mh_execute_header, v338, "A board creation should not include deleted items", 49, 2, _swiftEmptyArrayStorage);

  sub_100604780(_swiftEmptyArrayStorage, "getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2u, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2u, 570, "A board creation should not include deleted items", 49, 2u);

  v321 = v392;

  v254 = v419;
  v8 = v431;
  v339 = i;
LABEL_490:
  v342 = v321 != 0;
  v343 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
  v344 = v387;
  sub_10004FD94(v254 + v394, &v387[v343[5]], type metadata accessor for CRLBoardIdentifier);
  (v428)(&v344[v343[6]], v254 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_rootContainerUUID, v8);
  *v344 = v342;
  *&v344[v343[7]] = v390;
  *&v344[v343[8]] = v339;
  *&v344[v343[9]] = v402;
  *&v344[v343[10]] = v400;
  *&v344[v343[11]] = v430;
  *&v344[v343[12]] = v427;
  *&v344[v343[13]] = v426;
  *&v344[v343[14]] = v401;
  return (*(*(v343 - 1) + 56))(v344, 0, 1, v343);
}

void sub_10076F5BC(uint64_t a1, uint64_t a2)
{
  sub_10000630C(a2, v16);
  v3 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardAuxiliaryChanges;
  swift_beginAccess();
  v4 = *(a1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100B37740(0, v4[2] + 1, 1, v4);
    *(a1 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_100B37740((v6 > 1), v7 + 1, 1, v4);
    *(a1 + v3) = v4;
  }

  v8 = v17;
  v9 = v18;
  v10 = sub_10002A948(v16, v17);
  v11 = __chkstk_darwin(v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v13, v11);
  sub_100725200(v7, v13, (a1 + v3), v8, v9);
  sub_100005070(v16);
  *(a1 + v3) = v4;
  swift_endAccess();
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    sub_10076BD80();
  }
}

void sub_10076F774(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_10079B020(v3);
  swift_endAccess();
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    sub_10076BD80();
  }
}

uint64_t sub_10076F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_10000630C(a5, v23);
  v11 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_coalescableBoardAuxiliaryChanges;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22[0] = *(a1 + v11);
  v13 = *&v22[0];
  *(a1 + v11) = 0x8000000000000000;
  v15 = sub_1007C7EFC(a2, a3, a4);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(a1 + v11) = v13;
      if (v14)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_10000630C(v23, v22);
      sub_100AA2E24(v15, a2, a3, a4, v22, v13);

      goto LABEL_9;
    }

LABEL_13:
    sub_100AA82D4();
    v13 = *&v22[0];
    *(a1 + v11) = *&v22[0];
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100A90024(v18, isUniquelyReferenced_nonNull_native);
  v13 = *&v22[0];
  v19 = sub_1007C7EFC(a2, a3, a4);
  if ((v5 & 1) != (v20 & 1))
  {
    sub_100005070(v23);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v19;
  *(a1 + v11) = *&v22[0];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_100774FCC((v13[7] + 40 * v15), a5);
  swift_endAccess();
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    sub_10076BD80();
  }

  return sub_100005070(v23);
}

uint64_t sub_10076F9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v150 = v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v154 = v126 - v9;
  __chkstk_darwin(v10);
  v12 = v126 - v11;
  __chkstk_darwin(v13);
  v15 = v126 - v14;
  if (!sub_100768904() || *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) > 0)
  {
    v16 = type metadata accessor for CRLBoardPeerChangeSet(0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  v138 = v2;
  v18 = *(v6 + 16);
  v134 = 0x2000400000000;
  v135 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier;
  v148 = v18;
  v149 = v6 + 16;
  v18(v15, a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier, v5);
  v132 = a2;
  v133 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas;
  v19 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas);
  v20 = *(v19 + 16);
  v153 = v5;
  v145 = v6;
  if (!v20)
  {
    v152 = *(v6 + 8);
    v152(v15, v5);
    v131 = 0;
    v33 = 0;
    v127 = 0xF000000000000000;
    v128 = 0;
    v130 = 1;
    v129 = 0x1000000000000;
    v48 = 0x1000000000000;
LABEL_18:
    v27 = v138;
    goto LABEL_19;
  }

  v21 = sub_10003E994(v15);
  if ((v22 & 1) == 0)
  {

    v152 = *(v145 + 8);
    v152(v15, v5);
    v131 = 0;
    v33 = 0;
    v127 = 0xF000000000000000;
    v128 = 0;
    v130 = 1;
    v48 = 0x1000000000000;
    v129 = 0x1000000000000;
    goto LABEL_18;
  }

  v23 = *(*(v19 + 56) + 8 * v21);
  v24 = *(v145 + 8);
  v136 = 0x1000000000000;
  v137 = v23;

  v152 = v24;
  v24(v15, v5);

  v25 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
  swift_beginAccess();
  v26 = *(a1 + v25);
  if (!v26)
  {
    v131 = 0;
    v127 = 0xF000000000000000;
    v128 = 0;
    v130 = 1;
    v48 = v136;
    v33 = v137;
    v129 = v136;
    goto LABEL_18;
  }

  v148(v12, a1 + v135, v5);
  v27 = v138;
  if (*(v26 + 16))
  {
    v28 = v137;

    v29 = sub_10003E994(v12);
    if (v30)
    {
      v31 = *(*(v26 + 56) + 16 * v29);
      swift_unknownObjectRetain();
      v152(v12, v5);

      type metadata accessor for CRLBoard(0);
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v151 = v31;
        v33 = v137;
        v34 = *(v137 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
        if (v34 < 0)
        {
          goto LABEL_59;
        }

        v35 = *(v34 + 32);
        v136 = *(v34 + 24);
        v134 = v35;
        v36 = *(v32 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
        v37 = *(v34 + 48);
        v129 = *(v34 + 40);
        v131 = v37;
        v38 = *(v36 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
        v130 = *(v34 + 56);

        v39 = v38;

        v41 = sub_1012EFEB4(v40, v39);
        if (v27)
        {

          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v147 = static OS_os_log.realTimeSync;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          swift_getErrorValue();
          v44 = Error.localizedDescription.getter();
          v46 = v45;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v44;
          *(inited + 40) = v46;
          v47 = static os_log_type_t.error.getter();
          sub_100005404(v147, &_mh_execute_header, v47, "Failed to serialize delta for board with error: %@", 50, 2, inited);

          v33 = v137;

          swift_unknownObjectRelease();

          swift_setDeallocating();
          sub_100005070((inited + 32));
          v27 = 0;
          v127 = 0xF000000000000000;
          v128 = 0;
        }

        else
        {
          v127 = v42;
          v128 = v41;

          swift_unknownObjectRelease();

          v27 = 0;
        }

        v48 = v136;
      }

      else
      {
        v33 = v137;

        swift_unknownObjectRelease();
        v131 = 0;
        v127 = 0xF000000000000000;
        v128 = 0;
        v130 = 1;
        v48 = v136;
        v129 = v136;
      }
    }

    else
    {

      v152(v12, v5);
      v131 = 0;
      v127 = 0xF000000000000000;
      v128 = 0;
      v130 = 1;
      v48 = v136;
      v129 = v136;
      v33 = v28;
    }
  }

  else
  {
    v152(v12, v5);
    v131 = 0;
    v127 = 0xF000000000000000;
    v128 = 0;
    v130 = 1;
    v48 = v136;
    v33 = v137;
    v129 = v136;
  }

LABEL_19:

  v50 = sub_100767A60(v49);

  v155 = _swiftEmptyArrayStorage;
  if (v50 >> 62)
  {
    goto LABEL_57;
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  v137 = v33;
  v138 = v27;
  v144 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas;
  swift_beginAccess();
  v27 = _swiftEmptyArrayStorage;
  v136 = v48;
  if (v51)
  {
    v52 = 0;
    v142 = v50 & 0xFFFFFFFFFFFFFF8;
    v143 = v50 & 0xC000000000000001;
    v126[1] = v50;
    v139 = v50 + 32;
    v140 = v51;
    v33 = v145;
    v151 = v145 + 8;
    v48 = v154;
    v141 = a1;
    while (1)
    {
      if (v143)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          v27 = v155;
          break;
        }
      }

      else
      {
        if (v52 >= *(v142 + 16))
        {
          __break(1u);
LABEL_57:
          v51 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_21;
        }

        v27 = *(v139 + 8 * v52);

        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_37;
        }
      }

      v50 = sub_100767620(v55);

      (*(*v27 + 264))(v56);
      v57 = *(v50 + 16);
      v146 = v27;
      v147 = v54;
      if (v57 && (sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v58 = dispatch thunk of Hashable._rawHashValue(seed:)(), v59 = -1 << *(v50 + 32), v60 = v58 & ~v59, ((*(v50 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
      {
        v61 = ~v59;
        v62 = *(v33 + 72);
        while (1)
        {
          v27 = v150;
          v63 = v153;
          v148(v150, *(v50 + 48) + v62 * v60, v153);
          sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v64 = dispatch thunk of static Equatable.== infix(_:_:)();
          v152(v27, v63);
          if (v64)
          {
            break;
          }

          v60 = (v60 + 1) & v61;
          if (((*(v50 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v48 = v154;
        v152(v154, v153);
      }

      else
      {
LABEL_23:

        v48 = v154;
        v152(v154, v153);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v50 = v155[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      a1 = v141;
      v52 = v147;
      v33 = v145;
      if (v147 == v140)
      {
        goto LABEL_38;
      }
    }
  }

  v65 = *(a1 + v133);
  v66 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
  swift_beginAccess();
  if (*(a1 + v66))
  {

    v68 = sub_100767C8C(v67, v65);

    v70 = sub_100767620(v69);

    swift_beginAccess();

    v72 = sub_100767620(v71);

    v74 = sub_10119E374(v73, v72);

    v75 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerDeletedItemIds;
    swift_beginAccess();
    if (*(*(a1 + v75) + 16) <= v74[2] >> 3)
    {
      v155 = v74;

      sub_1012D4DC4(v80, v79);

      v77 = v155;
    }

    else
    {

      v77 = sub_1012D5CC4(v76, v74);
    }

    v81 = v145;
    if (v77[2] <= v70[2] >> 3)
    {
      v155 = v70;
      sub_1012D4DC4(v78, v77);

      v82 = v155;
    }

    else
    {
      v82 = sub_1012D5CC4(v77, v70);
    }

    swift_beginAccess();

    sub_1010ACAA4(v83, v82);
    v85 = v84;
    v86 = *(v84 + 16);
    if (v86)
    {
      v87 = sub_100B39BF4(*(v84 + 16), 0);
      sub_100B3AA50(&v155, &v87[(*(v81 + 80) + 32) & ~*(v81 + 80)], v86, v85);
      v89 = v88;
      sub_100035F90(v155);
      if (v89 == v86)
      {
LABEL_50:
        v90 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_coalescableBoardAuxiliaryChanges;
        swift_beginAccess();
        v91 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardAuxiliaryChanges;
        swift_beginAccess();

        sub_10079B168(v92);
        swift_endAccess();
        *(a1 + v90) = sub_100BD4C44(_swiftEmptyArrayStorage);

        v93 = *(a1 + v91);

        *(a1 + v91) = _swiftEmptyArrayStorage;

        v94 = v132;
        v148(v132, a1 + v135, v153);
        v95 = type metadata accessor for CRLBoardPeerChangeSet(0);
        v96 = v94 + v95[5];
        v97 = v134;
        *v96 = v136;
        *(v96 + 8) = v97;
        v98 = v131;
        *(v96 + 16) = v129;
        *(v96 + 24) = v98;
        *(v96 + 32) = v130;
        v99 = (v94 + v95[6]);
        v100 = v127;
        *v99 = v128;
        v99[1] = v100;
        *(v94 + v95[7]) = v68;
        *(v94 + v95[8]) = v27;
        *(v94 + v95[9]) = v87;
        *(v94 + v95[10]) = v93;
        return (*(*(v95 - 1) + 56))(v94, 0, 1, v95);
      }

      __break(1u);
    }

    v87 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  __break(1u);
LABEL_59:
  v101 = objc_opt_self();
  v102 = [v101 _atomicIncrementAssertCount];
  v155 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v155, "Non-board data found associted with boardUUID", 45, 2u);
  StaticString.description.getter("getBoardPeerChangeSet()", 23, 2);
  v103 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
  v104 = String._bridgeToObjectiveC()();

  v105 = [v104 lastPathComponent];

  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v109 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v110 = swift_initStackObject();
  *(v110 + 16) = xmmword_10146CA70;
  *(v110 + 56) = &type metadata for Int32;
  *(v110 + 64) = &protocol witness table for Int32;
  *(v110 + 32) = v102;
  v111 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v110 + 96) = v111;
  v112 = sub_1005CF04C();
  *(v110 + 104) = v112;
  *(v110 + 72) = v103;
  *(v110 + 136) = &type metadata for String;
  v113 = sub_1000053B0();
  *(v110 + 112) = v106;
  *(v110 + 120) = v108;
  *(v110 + 176) = &type metadata for UInt;
  *(v110 + 184) = &protocol witness table for UInt;
  *(v110 + 144) = v113;
  *(v110 + 152) = 632;
  v114 = v155;
  *(v110 + 216) = v111;
  *(v110 + 224) = v112;
  *(v110 + 192) = v114;
  v115 = v103;
  v116 = v114;
  v117 = static os_log_type_t.error.getter();
  sub_100005404(v109, &_mh_execute_header, v117, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v110);

  v118 = static os_log_type_t.error.getter();
  sub_100005404(v109, &_mh_execute_header, v118, "Non-board data found associted with boardUUID", 45, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Non-board data found associted with boardUUID");
  type metadata accessor for __VaListBuilder();
  v119 = swift_allocObject();
  v119[2] = 8;
  v119[3] = 0;
  v119[4] = 0;
  v119[5] = 0;
  v120 = __VaListBuilder.va_list()();
  StaticString.description.getter("getBoardPeerChangeSet()", 23, 2);
  v121 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
  v122 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Non-board data found associted with boardUUID", 45, 2);
  v123 = String._bridgeToObjectiveC()();

  [v101 handleFailureInFunction:v121 file:v122 lineNumber:632 isFatal:1 format:v123 args:v120];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v124, v125);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_100770A7C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1007751E8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101885A58;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000064D8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);

  return result;
}

void sub_100770D4C(uint64_t a1, unint64_t a2)
{
  sub_100770D8C(a2);
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    sub_10076BD80();
  }
}

void sub_100770D8C(unint64_t a1)
{
  v2 = v1;
  v64 = type metadata accessor for UUID();
  v57 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v54 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = *(v8 + 8);
  v14 = v8 + 8;
  v15(v11, v7);
  if ((v12 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_4;
    }

    return;
  }

  v14 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter);
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_4:
    v17 = 0;
    v58 = v16;
    v59 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
    v66 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatasToProcessAfterUnlock;
    v54 = v7 & 0xFFFFFFFFFFFFFF8;
    v55 = v14;
    v56 = v57 + 16;
    v62 = (v57 + 8);
    v63 = v7 & 0xC000000000000001;
    v61 = v7;
    do
    {
      if (v63)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v17 >= *(v54 + 16))
        {
          goto LABEL_40;
        }

        v19 = *(v7 + 8 * v17 + 32);

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      v20 = *(*v19 + 264);
      if (v14 <= 0)
      {
        v33 = v60;
        v20();
        v34 = v59;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = *(v2 + v34);
        v7 = v68;
        *(v2 + v34) = 0x8000000000000000;
        v37 = sub_10003E994(v33);
        v38 = *(v7 + 16);
        v39 = (v36 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_41;
        }

        v41 = v36;
        if (*(v7 + 24) >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v7 = v68;
            if ((v36 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_100AA82C0();
            v7 = v68;
            if ((v41 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_100A90010(v40, isUniquelyReferenced_nonNull_native);
          v42 = sub_10003E994(v60);
          if ((v41 & 1) != (v43 & 1))
          {
LABEL_47:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v37 = v42;
          v7 = v68;
          if ((v41 & 1) == 0)
          {
LABEL_35:
            *(v7 + 8 * (v37 >> 6) + 64) |= 1 << v37;
            v50 = v57;
            v14 = v60;
            v51 = v64;
            (*(v57 + 16))(*(v7 + 48) + *(v57 + 72) * v37, v60, v64);
            *(*(v7 + 56) + 8 * v37) = v19;
            (*(v50 + 8))(v14, v51);
            v52 = *(v7 + 16);
            v29 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v29)
            {
              goto LABEL_43;
            }

            *(v7 + 16) = v53;
            v14 = v55;
            goto LABEL_37;
          }
        }

        *(*(v7 + 56) + 8 * v37) = v19;

        (*v62)(v60, v64);
LABEL_37:
        *(v2 + v59) = v7;

        swift_endAccess();
        v7 = v61;
        v16 = v58;
        goto LABEL_7;
      }

      v65 = v18;
      v21 = v16;
      v22 = v14;
      v23 = v67;
      v20();
      v14 = v66;
      swift_beginAccess();

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v2 + v14);
      v7 = v68;
      *(v2 + v14) = 0x8000000000000000;
      v25 = sub_10003E994(v23);
      v27 = *(v7 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_39;
      }

      v31 = v26;
      if (*(v7 + 24) >= v30)
      {
        v14 = v22;
        if (v24)
        {
          v7 = v68;
          if ((v26 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v49 = v25;
          sub_100AA82C0();
          v25 = v49;
          v7 = v68;
          if ((v31 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_100A90010(v30, v24);
        v25 = sub_10003E994(v67);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_47;
        }

        v14 = v22;
        v7 = v68;
        if ((v31 & 1) == 0)
        {
LABEL_27:
          *(v7 + 8 * (v25 >> 6) + 64) |= 1 << v25;
          v14 = v57;
          v44 = v25;
          v45 = v67;
          v46 = v64;
          (*(v57 + 16))(*(v7 + 48) + *(v57 + 72) * v25, v67, v64);
          *(*(v7 + 56) + 8 * v44) = v19;
          (*(v14 + 8))(v45, v46);
          v47 = *(v7 + 16);
          v29 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v29)
          {
            goto LABEL_42;
          }

          *(v7 + 16) = v48;
          v14 = v55;
          v16 = v58;
          goto LABEL_6;
        }
      }

      *(*(v7 + 56) + 8 * v25) = v19;

      (*v62)(v67, v64);
      v16 = v21;
LABEL_6:
      *(v2 + v66) = v7;

      swift_endAccess();
      v7 = v61;
      v18 = v65;
LABEL_7:

      ++v17;
    }

    while (v18 != v16);
  }
}

uint64_t sub_10077141C()
{
  sub_10003D45C(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v1 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_rootContainerUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1007715B0()
{
  sub_10077141C();

  return swift_deallocClassInstance();
}

uint64_t sub_100771630(uint64_t a1)
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100771754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1007717B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100771820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10077187C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_100771904()
{
  result = qword_1019FEF78;
  if (!qword_1019FEF78)
  {
    result = swift_getWitnessTable(byte_10147A8C4, &type metadata for CRLBoardCoalescableAuxiliaryChangeIdentity, v0, v1);
    atomic_store(result, &qword_1019FEF78);
  }

  return result;
}

unint64_t *sub_100771958(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100772C20(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1007719F4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100773B44(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_100771A90(uint64_t result, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  result = v2;
  if (v3 < v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

Swift::Int sub_100771AFC(Swift::Int result, Swift::Int a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return _CocoaArrayWrapper.subscript.getter();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    type metadata accessor for CRLBoardItemData();

    result = v5;
    do
    {
      v6 = result + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(result);
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100771BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1005B981C(&qword_1019FEFB8, &qword_1014B6B50) + 48);
  v5 = *(sub_1005B981C(&qword_1019FEFB0, &unk_10147A9A0) + 48);
  v6 = type metadata accessor for UUID();
  v8 = *(a1 + v4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  *(a2 + v5) = v8;

  return swift_unknownObjectRetain();
}

uint64_t sub_100771CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1005B981C(&qword_1019FEF90, &qword_1014B67F0) + 48);
  v5 = *(sub_1005B981C(&qword_1019FEF88, &unk_10147A970) + 48);
  v6 = *(a1 + v4);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

uint64_t sub_100771D5C(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
LABEL_3:
  v4 = *a1;
  for (i = (*a1 + 8 * result); ; ++i)
  {
    v6 = *i;
    if (**i == &off_1019FAE60)
    {
      break;
    }

    if (++result >= v1)
    {
      return result;
    }
  }

  v7 = v1 - 1;
  v8 = (v4 + 8 * v1);
  while (result < v7)
  {
    v10 = *--v8;
    v9 = v10;
    --v7;
    if (*v10 != &off_1019FAE60)
    {
      if (v4)
      {
        v1 = v7 + 1;
        *i = v9;
        *v8 = v6;
        if (++result < v7 + 1)
        {
          goto LABEL_3;
        }
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  return result;
}

void *sub_100771E34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100771EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
  v11 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
  if (v10 < 0)
  {
    if (v11 < 0)
    {
      return (*(*(v10 & 0x7FFFFFFFFFFFFFFFLL) + 512))(v11 & 0x7FFFFFFFFFFFFFFFLL) & 1;
    }

    goto LABEL_6;
  }

  if (v11 < 0)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v10 + v12, v9, type metadata accessor for CRLBoardCRDTData);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v11 + v13, v6, type metadata accessor for CRLBoardCRDTData);
  v14 = sub_1012F2368(v9, v6);
  sub_10003D45C(v6, type metadata accessor for CRLBoardCRDTData);
  sub_10003D45C(v9, type metadata accessor for CRLBoardCRDTData);
  return v14 & 1;
}

uint64_t sub_1007720B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v7);
  v10 = &v15[-v9];
  if (a1 < 0)
  {
    if (a2 < 0)
    {
      return (*(*(a1 & 0x7FFFFFFFFFFFFFFFLL) + 512))(a2 & 0x7FFFFFFFFFFFFFFFLL, v8) & 1;
    }

    goto LABEL_5;
  }

  if (a2 < 0)
  {
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(a1 + v11, v10, type metadata accessor for CRLBoardCRDTData);
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(a2 + v12, v6, type metadata accessor for CRLBoardCRDTData);
  v13 = sub_1012F2368(v10, v6);
  sub_10003D45C(v6, type metadata accessor for CRLBoardCRDTData);
  sub_10003D45C(v10, type metadata accessor for CRLBoardCRDTData);
  return v13 & 1;
}

void sub_100772240(uint64_t a1, void *a2)
{
  v45 = a2;
  v3 = type metadata accessor for UUID();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = v33 - v6;
  v54 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_1000064D8(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v49;
    v7 = v50;
    v8 = v51;
    v9 = v52;
    v10 = v53;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v33[1] = v8;
  v14 = (v8 + 64) >> 6;
  v43 = v45 + 7;
  v41 = v35 + 16;
  v34 = _swiftEmptyArrayStorage;
  v44 = (v35 + 8);
  v37 = v7;
  v38 = a1;
  v36 = v14;
LABEL_8:
  v15 = v9;
  while (a1 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20 || (v47 = v20, type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), v19 = v48, v9 = v15, v18 = v10, !v48))
    {
LABEL_28:
      sub_100035F90(a1);
      return;
    }

LABEL_19:
    v40 = v18;
    v21 = *((swift_isaMask & *v19) + 0x88);
    v39 = v19;
    v21();
    if (v45[2])
    {
      v22 = v45;
      sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v22 + 32);
      v25 = v23 & ~v24;
      if ((*(v43 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        v27 = *(v35 + 72);
        v28 = *(v35 + 16);
        while (1)
        {
          v29 = v42;
          v28(v42, v45[6] + v27 * v25, v3);
          sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          v31 = *v44;
          (*v44)(v29, v3);
          if (v30)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v43 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v31(v46, v3);
        v32 = v39;
        (*((swift_isaMask & *v39) + 0x258))(0);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v34 = v54;
        v7 = v37;
        a1 = v38;
        v14 = v36;
        v10 = v40;
        goto LABEL_8;
      }
    }

LABEL_9:
    (*v44)(v46, v3);

    v15 = v9;
    v10 = v40;
    v7 = v37;
    a1 = v38;
    v14 = v36;
  }

  v16 = v15;
  v17 = v10;
  v9 = v15;
  if (v10)
  {
LABEL_15:
    v18 = (v17 - 1) & v17;
    v19 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_28;
    }

    v17 = *(v7 + 8 * v9);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_1007727A4(uint64_t a1)
{
  v48 = type metadata accessor for UUID();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_1000064D8(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper, "It5");
    Set.Iterator.init(_cocoa:)();
    a1 = v52;
    v3 = v53;
    v5 = v54;
    v4 = v55;
    v6 = v56;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v42[1] = v5;
  v10 = (v5 + 64) >> 6;
  v44 = v45 + 16;
  v47 = (v45 + 8);
  v11 = _swiftEmptyDictionarySingleton;
  v46 = a1;
  v43 = v10;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  v17 = __CocoaSet.Iterator.next()();
  if (!v17 || (v50 = v17, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), v16 = v51, v14 = v4, v15 = v6, !v51))
  {
LABEL_29:
    sub_100035F90(a1);
    return v11;
  }

  while (1)
  {
    v18 = v16[3];
    ObjectType = swift_getObjectType();
    v20 = v49;
    (*(v18 + 32))(ObjectType, v18);
    v21 = v16[3];
    type metadata accessor for CRLTransactableData(0);
    v22 = swift_allocObject();
    v23 = swift_unknownObjectRetain();
    sub_100766DF8(v23, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v11;
    v25 = sub_10003E994(v20);
    v27 = v11[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v11[3] < v30)
    {
      sub_100A89AFC(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_10003E994(v49);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v11 = v51;
      if (v31)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v40 = v25;
    sub_100AA4714();
    v25 = v40;
    v11 = v51;
    if (v31)
    {
LABEL_9:
      *(v11[7] + 8 * v25) = v22;

      (*v47)(v49, v48);
      v4 = v14;
      v6 = v15;
      a1 = v46;
      if (v46 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_24:
    v33 = v3;
    v11[(v25 >> 6) + 8] |= 1 << v25;
    v34 = v45;
    v35 = v25;
    v36 = v48;
    v37 = v49;
    (*(v45 + 16))(v11[6] + *(v45 + 72) * v25, v49, v48);
    *(v11[7] + 8 * v35) = v22;

    (*(v34 + 8))(v37, v36);
    v38 = v11[2];
    v29 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v29)
    {
      goto LABEL_32;
    }

    v11[2] = v39;
    v4 = v14;
    v6 = v15;
    a1 = v46;
    v3 = v33;
    v10 = v43;
    if (v46 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v12 = v4;
    v13 = v6;
    v14 = v4;
    if (!v6)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {
          goto LABEL_29;
        }

        v13 = *(v3 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      break;
    }

LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100772C20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v39 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v37 - v10;
  v46 = a3;
  v11 = *(a3 + 56);
  v40 = a3 + 56;
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
  v44 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  v45 = a4;
  swift_beginAccess();
  v15 = 0;
  v16 = 0;
  v17 = (v12 + 63) >> 6;
  v50 = v7 + 16;
  v38 = v7;
  v53 = (v7 + 8);
  v43 = v17;
  while (2)
  {
    v41 = v15;
    while (1)
    {
      if (!v14)
      {
        v19 = v16;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v16 >= v17)
          {
            goto LABEL_23;
          }

          v20 = *(v40 + 8 * v16);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v48 = (v20 - 1) & v20;
            goto LABEL_14;
          }
        }

        __break(1u);
        return;
      }

      v18 = __clz(__rbit64(v14));
      v48 = (v14 - 1) & v14;
LABEL_14:
      v21 = v18 | (v16 << 6);
      v22 = *(v46 + 48);
      v42 = v21;
      v23 = *(v22 + 8 * v21);
      v24 = *(v45 + v44);
      v25 = *(v23 + 24);
      ObjectType = swift_getObjectType();
      v27 = *(v25 + 32);
      v47 = v23;

      v27(ObjectType, v25);
      if (*(v24 + 16))
      {
        sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v29 = -1 << *(v24 + 32);
        v30 = v28 & ~v29;
        v52 = v24 + 56;
        if ((*(v24 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          break;
        }
      }

LABEL_6:

      (*v53)(v54, v6);

      v17 = v43;
      v14 = v48;
    }

    v49 = ~v29;
    v31 = *(v38 + 72);
    v32 = *(v38 + 16);
    while (1)
    {
      v33 = v51;
      v32(v51, *(v24 + 48) + v31 * v30, v6);
      sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *v53;
      (*v53)(v33, v6);
      if (v34)
      {
        break;
      }

      v30 = (v30 + 1) & v49;
      if (((*(v52 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v35(v54, v6);

    *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v15 = v41 + 1;
    v17 = v43;
    v14 = v48;
    if (!__OFADD__(v41, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  v36 = v46;

  sub_1010F3F24(v39, v37, v41, v36);
}

Swift::Int sub_100773054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = type metadata accessor for UUID();
  v6 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v38 - v9;
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v37 = swift_slowAlloc();

      v35 = sub_100771958(v37, v12, a1, a2);

      return v35;
    }
  }

  v39 = v12;
  v40 = v3;
  v38 = &v38;
  __chkstk_darwin(v14);
  v42 = &v38 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v13);
  v15 = *(a1 + 56);
  v43 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v16 = ~(-1 << v13);
  }

  else
  {
    v16 = -1;
  }

  v3 = v16 & v15;
  v46 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  swift_beginAccess();
  v17 = 0;
  v18 = 0;
  v19 = (v13 + 63) >> 6;
  v53 = v6 + 16;
  v41 = v6;
  v56 = (v6 + 8);
  v47 = v19;
  v48 = a1;
  v49 = a2;
  while (2)
  {
    v44 = v17;
    while (1)
    {
      if (!v3)
      {
        v21 = v18;
        while (1)
        {
          v18 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v18 >= v19)
          {
            goto LABEL_24;
          }

          v22 = *(v43 + 8 * v18);
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v51 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v20 = __clz(__rbit64(v3));
      v51 = (v3 - 1) & v3;
LABEL_15:
      v23 = v20 | (v18 << 6);
      v24 = *(a1 + 48);
      v45 = v23;
      v12 = *(v24 + 8 * v23);
      v25 = *(a2 + v46);
      v6 = *(v12 + 16);
      v26 = *(v12 + 24);
      ObjectType = swift_getObjectType();
      v13 = v26 + 32;
      v28 = *(v26 + 32);
      v50 = v12;

      v28(ObjectType, v26);
      if (*(v25 + 16))
      {
        sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v6 = v58;
        v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v30 = -1 << *(v25 + 32);
        v13 = v29 & ~v30;
        v55 = v25 + 56;
        if ((*(v25 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          break;
        }
      }

LABEL_7:

      (*v56)(v58, v57);

      a1 = v48;
      a2 = v49;
      v19 = v47;
      v3 = v51;
    }

    v52 = ~v30;
    v31 = *(v41 + 9);
    v32 = *(v41 + 2);
    while (1)
    {
      v12 = v54;
      v6 = v57;
      v32(v54, *(v25 + 48) + v31 * v13, v57);
      sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *v56;
      (*v56)(v12, v6);
      if (v33)
      {
        break;
      }

      v13 = (v13 + 1) & v52;
      if (((*(v55 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v34(v58, v57);

    *&v42[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
    v17 = v44 + 1;
    a1 = v48;
    a2 = v49;
    v19 = v47;
    v3 = v51;
    if (!__OFADD__(v44, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v35 = sub_1010F3F24(v42, v39, v44, a1);

  return v35;
}

Swift::Int sub_1007735D0(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for UUID();
  v46 = *(v56 - 8);
  __chkstk_darwin(a1);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v44 - v7;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100773054(v6, a2);
  }

  v60 = _swiftEmptySetSingleton;

  v8 = __CocoaSet.makeIterator()();
  v50 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  swift_beginAccess();
  v51 = v8;
  v9 = __CocoaSet.Iterator.next()();
  if (v9)
  {
    v10 = v9;
    v48 = type metadata accessor for CRLTransactableHashableWrapper();
    v11 = v10;
    v52 = v46 + 16;
    v45 = _swiftEmptySetSingleton;
    v55 = (v46 + 8);
    v49 = a2;
    do
    {
      v58 = v11;
      swift_dynamicCast();
      v12 = *(a2 + v50);
      v13 = *(v59 + 24);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 32);

      v15(ObjectType, v13);
      if (*(v12 + 16) && (v47 = sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v16 = dispatch thunk of Hashable._rawHashValue(seed:)(), v17 = -1 << *(v12 + 32), v18 = v16 & ~v17, v54 = v12 + 56, ((*(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        v20 = *(v46 + 72);
        v21 = *(v46 + 16);
        while (1)
        {
          v22 = v53;
          v23 = v56;
          v21(v53, *(v12 + 48) + v20 * v18, v56);
          sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v24 = dispatch thunk of static Equatable.== infix(_:_:)();
          v25 = *v55;
          (*v55)(v22, v23);
          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v54 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v25(v57, v56);
        v26 = v59;
        v27 = v45[2];
        if (v45[3] <= v27)
        {
          sub_100E7400C(v27 + 1);
        }

        v28 = v60;
        Hasher.init(_seed:)();
        v29 = *(v26 + 24);
        v30 = swift_getObjectType();
        v31 = v53;
        (*(v29 + 32))(v30, v29);
        v32 = v56;
        dispatch thunk of Hashable.hash(into:)();
        v25(v31, v32);
        result = Hasher._finalize()();
        v34 = v28 + 7;
        v35 = -1 << *(v28 + 32);
        v36 = result & ~v35;
        v37 = v36 >> 6;
        a2 = v49;
        if (((-1 << v36) & ~v28[(v36 >> 6) + 7]) != 0)
        {
          v38 = __clz(__rbit64((-1 << v36) & ~v28[(v36 >> 6) + 7])) | v36 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v39 = 0;
          v40 = (63 - v35) >> 6;
          do
          {
            if (++v37 == v40 && (v39 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v41 = v37 == v40;
            if (v37 == v40)
            {
              v37 = 0;
            }

            v39 |= v41;
            v42 = v34[v37];
          }

          while (v42 == -1);
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
        }

        *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        *(v28[6] + 8 * v38) = v26;
        v43 = v28[2] + 1;
        v45 = v28;
        v28[2] = v43;
      }

      else
      {
LABEL_4:

        (*v55)(v57, v56);

        a2 = v49;
      }

      v11 = __CocoaSet.Iterator.next()();
    }

    while (v11);
  }

  else
  {
    v45 = _swiftEmptySetSingleton;
  }

  return v45;
}

void sub_100773B44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v50 = sub_1005B981C(&qword_1019FEF98, &qword_10147A980);
  __chkstk_darwin(v50);
  v7 = &v41 - v6;
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v15 = &v41 - v12;
  v16 = 0;
  v51 = a3;
  v17 = *(a3 + 64);
  v44 = a3 + 64;
  v45 = 0;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v54 = a4 + 56;
  v48 = &v41 - v12;
  v49 = v13;
  v56 = (v13 + 8);
  v57 = v13 + 16;
  v58 = v7;
  v47 = v21;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v53 = (v20 - 1) & v20;
LABEL_14:
    v25 = v22 | (v16 << 6);
    v26 = v51;
    v27 = v51[6];
    v55 = *(v49 + 72);
    v28 = *(v49 + 16);
    v28(v15, v27 + v55 * v25, v8, v14);
    v29 = v26[7];
    v46 = v25;
    v30 = *(v29 + 8 * v25);
    v31 = v58;
    (v28)(v58, v15, v8);
    *(v31 + *(v50 + 48)) = v30;
    v32 = *(a4 + 16);
    v52 = v30;
    if (!v32)
    {
      swift_retain_n();
      goto LABEL_6;
    }

    sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_retain_n();
    v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = -1 << *(a4 + 32);
    v35 = v33 & ~v34;
    if ((*(v54 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
    {
      v36 = ~v34;
      while (1)
      {
        v37 = a4;
        (v28)(v10, *(a4 + 48) + v35 * v55, v8);
        sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = *v56;
        (*v56)(v10, v8);
        if (v38)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        a4 = v37;
        if (((*(v54 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      sub_10000CAAC(v58, &qword_1019FEF98, &qword_10147A980);

      v15 = v48;
      v39(v48, v8);
      *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v40 = __OFADD__(v45++, 1);
      a4 = v37;
      v21 = v47;
      v20 = v53;
      if (v40)
      {
        __break(1u);
LABEL_23:
        sub_100A7A4C8(v43, v42, v45, v51);
        return;
      }
    }

    else
    {
LABEL_6:
      sub_10000CAAC(v58, &qword_1019FEF98, &qword_10147A980);

      v15 = v48;
      (*v56)(v48, v8);
      v21 = v47;
      v20 = v53;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      goto LABEL_23;
    }

    v24 = *(v44 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t *sub_100773FE4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1007719F4(v13, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_100773B44((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

void sub_1007741A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v49 = a5;
  v41 = type metadata accessor for UUID();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A228E0, &unk_10147A9B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v42 = a1;
  v43 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v44 = v16;
  v45 = 0;
  v46 = v19 & v17;
  v47 = a2;
  v48 = a3;
  v20 = (v9 + 32);
  v39 = (v9 + 8);
  v40 = v9;

  v38 = a3;

  while (1)
  {
    sub_100E9082C(v14);
    v21 = sub_1005B981C(&qword_1019FEFC0, &unk_1014B77E0);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_100035F90(v42);

      return;
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v41);
    v24 = *&v14[v22];
    v25 = *v49;
    v27 = sub_10003E994(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA4714();
      }
    }

    else
    {
      sub_100A89AFC(v30, a4 & 1);
      v32 = sub_10003E994(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v49;
    if (v31)
    {
      (*v39)(v11, v41);
      *(v34[7] + 8 * v27) = v24;

      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v40 + 72) * v27), v11, v41);
      *(v34[7] + 8 * v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1007744E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_1019FEFA8, &qword_10147A998);
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v44 = a1;
  v45 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v46 = v17;
  v47 = 0;
  v48 = v20 & v18;
  v49 = a2;
  v50 = a3;
  v21 = (v10 + 32);
  v40 = (v10 + 8);
  v41 = v10;

  v39 = a3;

  while (1)
  {
    sub_100E90FF4(v15);
    v22 = sub_1005B981C(&qword_1019FEFB0, &unk_10147A9A0);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_100035F90(v44);

      return;
    }

    v23 = *(v22 + 48);
    v24 = *v21;
    v25 = v9;
    (*v21)(v12, v15, v9);
    v43 = *&v15[v23];
    v26 = *v51;
    v28 = sub_10003E994(v12);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA37A4();
      }
    }

    else
    {
      sub_100A8812C(v31, a4 & 1);
      v33 = sub_10003E994(v12);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_19;
      }

      v28 = v33;
    }

    v35 = *v51;
    if (v32)
    {
      v42 = *(v35[7] + 16 * v28);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v9 = v25;
      (*v40)(v12, v25);
      *(v35[7] + 16 * v28) = v42;
      swift_unknownObjectRelease();
      a4 = 1;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v9 = v25;
      v24((v35[6] + *(v41 + 72) * v28), v12, v25);
      *(v35[7] + 16 * v28) = v43;
      v36 = v35[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v35[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10077486C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A228E0, &unk_10147A9B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_100E9082C(v14);
    v22 = sub_1005B981C(&qword_1019FEFC0, &unk_1014B77E0);
    if ((*(*(v22 - 8) + 48))(v14, 1, v22) == 1)
    {
      sub_100035F90(v43);

      return;
    }

    v23 = *(v22 + 48);
    v24 = *v20;
    (*v20)(v11, v14, v42);
    v25 = *&v14[v23];
    v26 = *v50;
    v28 = sub_10003E994(v11);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA4714();
      }
    }

    else
    {
      sub_100A89AFC(v31, a4 & 1);
      v33 = sub_10003E994(v11);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_19;
      }

      v28 = v33;
    }

    v35 = *v50;
    if (v32)
    {
      v21 = *(v35[7] + 8 * v28);

      (*v40)(v11, v42);
      *(v35[7] + 8 * v28) = v21;

      a4 = 1;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v24((v35[6] + *(v41 + 72) * v28), v11, v42);
      *(v35[7] + 8 * v28) = v25;
      v36 = v35[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v35[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100774BC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FEF80, &qword_10147A968);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_100E913E0(v14);
    v22 = sub_1005B981C(&qword_1019FEF88, &unk_10147A970);
    if ((*(*(v22 - 8) + 48))(v14, 1, v22) == 1)
    {
      sub_100035F90(v43);

      return;
    }

    v23 = *(v22 + 48);
    v24 = *v20;
    (*v20)(v11, v14, v42);
    v25 = *&v14[v23];
    v26 = *v50;
    v28 = sub_10003E994(v11);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA82C0();
      }
    }

    else
    {
      sub_100A90010(v31, a4 & 1);
      v33 = sub_10003E994(v11);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_19;
      }

      v28 = v33;
    }

    v35 = *v50;
    if (v32)
    {
      v21 = *(v35[7] + 8 * v28);

      (*v40)(v11, v42);
      *(v35[7] + 8 * v28) = v21;

      a4 = 1;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v24((v35[6] + *(v41 + 72) * v28), v11, v42);
      *(v35[7] + 8 * v28) = v25;
      v36 = v35[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v35[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100774F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_100774FCC(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

void sub_100775220(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10003FE44();
    if (v2 <= 0x3F)
    {
      sub_1007755C4(319, &qword_1019FF040, type metadata accessor for CRLBoardItemDeltaChange, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1007755C4(319, &qword_1019FF048, type metadata accessor for CRLBoardItemData, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_1007755C4(319, &unk_101A2C060, &type metadata accessor for UUID, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_10077569C(319, &unk_1019FF050, &unk_101A00080, &qword_10147A9D8, &type metadata accessor for Array);
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

void sub_1007753F0(uint64_t a1)
{
  type metadata accessor for CRLBoardIdentifier(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_1007755C4(319, &qword_1019FF100, type metadata accessor for CRLBoardData, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1007755C4(319, &qword_1019FF048, type metadata accessor for CRLBoardItemData, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_1007755C4(319, &unk_101A2C060, &type metadata accessor for UUID, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_100775628(319);
            if (v6 <= 0x3F)
            {
              sub_10077569C(319, &qword_1019FF110, &unk_1019FF118, &qword_10147AA08, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1007755C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100775628(uint64_t a1)
{
  if (!qword_1019FF108)
  {
    sub_1005C4E5C(&unk_101A228D0, "ԥ'");
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1019FF108);
    }
  }
}

void sub_10077569C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1005C4E5C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1007757E0(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v16 = *v6;
  v11 = a1[3];
  v12 = a1[4];
  sub_100020E58(a1, v11);
  v13 = *(v12 + 8);
  v14 = sub_100775A04(a4, a5, a6);
  return v13(&v16, a2, v14, v11, v12);
}

uint64_t sub_100775960(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v11 = a1[3];
  v10 = a1[4];
  sub_100020E58(a1, v11);
  v12 = *(v10 + 8);
  v13 = sub_100775A04(a4, a5, a6);
  return v12(v6, a2, v13, v11, v10);
}

uint64_t sub_100775A04(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100775A4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10067672C(a1, a1 + 32, 1, (2 * v2) | 1);
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v4 = sub_100775A4C(v3);

    v5 = *(v4 + 16);
    if (v5)
    {
      result = sub_100776AC4(0, v5, 0);
      v7 = 0;
      while (v7 < *(v4 + 16))
      {
        v8 = *(v4 + 32 + 8 * v7);
        sub_1005B981C(&unk_1019F6F30, &unk_10147AAA0);
        inited = swift_initStackObject();
        inited[1] = xmmword_10146C6B0;
        inited[2] = v20;
        v10 = inited + 2;
        inited[3] = v21;
        v11 = *(v8 + 16);
        swift_bridgeObjectRetain_n();
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v12 = *(v8 + 24) >> 1, v13 = v8, v12 <= v11))
        {
          result = sub_100B378BC(result, v11 + 1, 1, v8);
          v13 = result;
          v12 = *(result + 24) >> 1;
        }

        v14 = *(v13 + 16);
        if (v12 <= v14)
        {
          goto LABEL_15;
        }

        v15 = v10[1];
        v16 = v13 + 32 * v14;
        *(v16 + 32) = *v10;
        *(v16 + 48) = v15;

        ++*(v13 + 16);

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_100776AC4((v17 > 1), v18 + 1, 1);
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v18 + 1;
        _swiftEmptyArrayStorage[v18 + 4] = v13;
        if (v5 == v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_10079B558(_swiftEmptyArrayStorage);
      return v4;
    }
  }

  else
  {
    sub_1005B981C(&qword_1019FF1C8, &unk_1014C7190);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10146C6B0;
    *(v19 + 32) = a1;

    return v19;
  }

  return result;
}

void CRLImageFaceAnalyzerResult.init(faceRectValues:)(unint64_t a1)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

LABEL_21:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return;
  }

LABEL_4:

  v34 = sub_100777CB8(v1, sub_100B3D660, sub_1007A9DB4);
  sub_100776448(&v34);

  v2 = v34;
  if ((v34 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
  {
    v3 = *(v34 + 16);
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_23:

    v5 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage[2];
    if (v19)
    {
LABEL_16:
      v20 = (v5 + 7);
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      do
      {
        v21 = sub_10011FC04(v21, v22, v23, v24, *(v20 - 3), *(v20 - 2), *(v20 - 1), *v20);
        v20 += 4;
        --v19;
      }

      while (v19);
      goto LABEL_25;
    }

LABEL_24:
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
LABEL_25:
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v29 = sub_100777D5C(v5);

    v30 = type metadata accessor for CRLImageFaceAnalyzerResult();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_interestingFacesRect];
    *v32 = v25;
    *(v32 + 1) = v26;
    *(v32 + 2) = v27;
    *(v32 + 3) = v28;
    *&v31[OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_faceRectCombinations] = v29;
    v33.receiver = v31;
    v33.super_class = v30;
    objc_msgSendSuper2(&v33, "init");
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_7:
  v34 = _swiftEmptyArrayStorage;
  sub_100776AA4(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v34;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      [v6 CGRectValue];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v34 = v5;
      v17 = v5[2];
      v16 = v5[3];
      if (v17 >= v16 >> 1)
      {
        sub_100776AA4((v16 > 1), v17 + 1, 1);
        v5 = v34;
      }

      ++v4;
      v5[2] = v17 + 1;
      v18 = &v5[4 * v17];
      v18[4] = v9;
      v18[5] = v11;
      v18[6] = v13;
      v18[7] = v15;
    }

    while (v3 != v4);

    v19 = v5[2];
    if (v19)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  __break(1u);

  __break(1u);
}

void CRLImageFaceAnalyzerResult.maskCenterForFaces(imageSize:maskSize:defaultCenter:)(float64_t a1, float64_t a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_faceRectCombinations);
  v6 = *(v5 + 16);
  if (v6)
  {
    sub_100776AA4(0, v6, 0);
    v9 = _swiftEmptyArrayStorage[2];
    v10.f64[0] = a1;
    v10.f64[1] = a2;
    v11 = 4 * v9;
    v12 = (v5 + 48);
    do
    {
      v13 = v12[-1];
      v14 = *v12;
      v15 = _swiftEmptyArrayStorage[3];
      if (v9++ >= v15 >> 1)
      {
        v61 = v10;
        v56 = *v12;
        v57 = v12[-1];
        sub_100776AA4((v15 > 1), v9, 1);
        v14 = v56;
        v13 = v57;
        v10 = v61;
      }

      _swiftEmptyArrayStorage[2] = v9;
      v17 = &_swiftEmptyArrayStorage[v11];
      v17[2] = vmulq_f64(v13, v10);
      v17[3] = vmulq_f64(v14, v10);
      v11 += 4;
      v12 += 2;
      --v6;
    }

    while (v6);
    v18 = &_swiftEmptyArrayStorage[4];
    v19 = &_swiftEmptyArrayStorage[7];
    do
    {
      v23 = *(v19 - 1);
      v24 = *v19;
      if (v23 <= a3 && v24 <= a4)
      {
        v62 = *(v19 - 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776AA4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          sub_100776AA4((v20 > 1), v21 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[4 * v21];
        *(v22 + 2) = v62;
        *(v22 + 6) = v23;
        *(v22 + 7) = v24;
      }

      v19 += 4;
      --v9;
    }

    while (v9);
    v26 = _swiftEmptyArrayStorage[2];
    if (v26)
    {

      v27 = 0;
      v28 = 0;
      v29 = &_swiftEmptyArrayStorage[7];
      v30 = 1.79769313e308;
      do
      {
        v31 = a4 - *v29;
        v32 = a3 - *(v29 - 1) + v31;
        if (v32 < v30)
        {
          v27 = v28;
        }

        v33 = v28 + 1;
        if (v32 < v30)
        {
          v30 = a3 - *(v29 - 1) + v31;
        }

        v29 += 4;
        ++v28;
      }

      while (v26 != v33);
      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v27 < _swiftEmptyArrayStorage[2])
      {
        v18 = &_swiftEmptyArrayStorage[4 * v27 + 4];
        v34 = v18 + 1;
        v35 = v18 + 2;
        v36 = v18 + 3;
LABEL_29:
        v37 = *v35;
        v38 = *v34;
        v39 = *v18;
        v40 = *v36;

        v41 = sub_10011ECB4();
        v43 = v42;
        v63 = v44;
        v60 = v45;
        v46 = sub_100120414(v39, v38, v37, v40);
        v48 = sub_10011EC70(v46, v47, a3);
        v52 = sub_100120B08(v48, v49, v50, v51, v41, v43, v63, v60);
        sub_100120414(v52, v53, v54, v55);
        return;
      }

      __break(1u);
    }

    else
    {

      if (_swiftEmptyArrayStorage[2])
      {
        v34 = &_swiftEmptyArrayStorage[5];
        v35 = &_swiftEmptyArrayStorage[6];
        v36 = &_swiftEmptyArrayStorage[7];
        goto LABEL_29;
      }
    }

    __break(1u);
  }
}

id CRLImageFaceAnalyzerResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLImageFaceAnalyzerResult();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100776448(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10113E268(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100776DC4(v6);
  return specialized ContiguousArray._endMutation()();
}

void *sub_1007764C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A4BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007764E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A4E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776504(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776524(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776544(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776564(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A830(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776584(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007765A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007765C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A94C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007765E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113A960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776604(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AA70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776624(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AB64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776644(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AC68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776664(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776684(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113ACB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007766A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113ADE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007766C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AF2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007766E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AF54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776704(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AF7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776724(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AFA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776744(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AFC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776764(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113AFE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776784(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007767A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B02C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007767C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007767E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776804(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B184(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776824(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B1AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776844(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B2A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776864(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B2C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776884(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B2F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007768A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007768C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B33C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007768E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776904(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B38C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776924(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B3B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776944(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776964(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776984(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007769A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007769C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B54C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007769E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776A04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B59C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776A24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776A44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776A64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776A84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776AA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B778(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776AC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B87C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776AE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B9FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776B04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113BB08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776B24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113BC28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776B44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113BC44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776B64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113BD6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776B84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113BED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776BA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113BF00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776BC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776BE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C2A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776C04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C2C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776C24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776C44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113B8A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776C64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776C84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776CA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776CC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776CE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776D04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113C8FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776D24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113CB08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776D44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113CB2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776D64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113CC84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776D84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113CCAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776DA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10113CDCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100776DC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10077804C();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100776FDC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100776EC8(0, v2, 1, a1);
  }
}

void sub_100776EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 CGRectValue];
      v15 = v14;
      v17 = v16;
      [v13 CGRectValue];
      v19 = v18;
      v21 = v20;

      if (v19 * v21 >= v15 * v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v22 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v22;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100776FDC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_10113DE48(v8);
    }

    v113 = v5;
    v114 = *(v8 + 2);
    if (v114 >= 2)
    {
      while (*a3)
      {
        v5 = v114 - 1;
        v115 = *&v8[16 * v114];
        v116 = *&v8[16 * v114 + 24];
        sub_10077768C((*a3 + 8 * v115), (*a3 + 8 * *&v8[16 * v114 + 16]), (*a3 + 8 * v116), v9);
        if (v113)
        {
          goto LABEL_98;
        }

        if (v116 < v115)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v114 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v117 = &v8[16 * v114];
        *v117 = v115;
        *(v117 + 1) = v116;
        sub_10113DDBC(v114 - 1);
        v114 = *(v8 + 2);
        if (v114 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v119 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 CGRectValue];
      v19 = v18;
      v21 = v20;
      [v17 CGRectValue];
      v23 = v22;
      v25 = v24;

      v26 = v19 * v21;
      v27 = v23 * v25;
      v28 = v12 + 2;
      while (v6 != v28)
      {
        v29 = *(v14 - 1);
        v30 = *v14;
        v31 = v29;
        [v30 CGRectValue];
        v33 = v32;
        v35 = v34;
        [v31 CGRectValue];
        v37 = v36;
        v39 = v38;

        ++v28;
        ++v14;
        if (v27 < v26 == v37 * v39 >= v33 * v35)
        {
          v6 = (v28 - 1);
          break;
        }
      }

      v9 = v12;
      if (v27 < v26)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v40 = 8 * v6 - 8;
          v41 = v6;
          v42 = v12;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v5);
              *(v44 + v5) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v5 += 8;
          }

          while (v42 < v41);
        }
      }

      v10 = v6;
      v5 = v119;
    }

    v45 = a3[1];
    if (v10 < v45)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v9 + a4;
        }

        if (v46 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v46)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100B355CC(0, *(v8 + 2) + 1, 1, v8);
    }

    v68 = *(v8 + 2);
    v67 = *(v8 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v8 = sub_100B355CC((v67 > 1), v68 + 1, 1, v8);
    }

    *(v8 + 2) = v69;
    v70 = &v8[16 * v68];
    *(v70 + 4) = v9;
    *(v70 + 5) = v10;
    v71 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v125 = v10;
    if (v68)
    {
      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *(v8 + 4);
          v74 = *(v8 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_57:
          if (v76)
          {
            goto LABEL_105;
          }

          v89 = &v8[16 * v69];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_108;
          }

          v95 = &v8[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_112;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v99 = &v8[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_71:
        if (v94)
        {
          goto LABEL_107;
        }

        v102 = &v8[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_110;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_78:
        v110 = v72 - 1;
        if (v72 - 1 >= v69)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v111 = *&v8[16 * v110 + 32];
        v9 = *&v8[16 * v72 + 40];
        sub_10077768C((*a3 + 8 * v111), (*a3 + 8 * *&v8[16 * v72 + 32]), (*a3 + 8 * v9), v71);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v111)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v110 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v112 = &v8[16 * v110];
        *(v112 + 4) = v111;
        *(v112 + 5) = v9;
        sub_10113DDBC(v72);
        v69 = *(v8 + 2);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v8[16 * v69 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_103;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_104;
      }

      v84 = &v8[16 * v69];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_106;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_109;
      }

      if (v88 >= v80)
      {
        v106 = &v8[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_113;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v125;
    v6 = a3[1];
    if (v125 >= v6)
    {
      goto LABEL_88;
    }
  }

  v120 = v5;
  v47 = v9;
  v48 = *a3;
  v49 = *a3 + 8 * v10 - 8;
  v121 = v47;
  v50 = v47 - v10;
  v123 = v46;
LABEL_30:
  v124 = v10;
  v51 = *(v48 + 8 * v10);
  v52 = v50;
  v53 = v49;
  while (1)
  {
    v54 = *v53;
    v55 = v51;
    v56 = v54;
    [v55 CGRectValue];
    v58 = v57;
    v60 = v59;
    [v56 CGRectValue];
    v62 = v61;
    v64 = v63;

    if (v62 * v64 >= v58 * v60)
    {
LABEL_29:
      v10 = v124 + 1;
      v49 += 8;
      --v50;
      if (v124 + 1 != v123)
      {
        goto LABEL_30;
      }

      v10 = v123;
      v5 = v120;
      v9 = v121;
      goto LABEL_37;
    }

    if (!v48)
    {
      break;
    }

    v65 = *v53;
    v51 = *(v53 + 8);
    *v53 = v51;
    *(v53 + 8) = v65;
    v53 -= 8;
    if (__CFADD__(v52++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_10077768C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v29 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v29;
    }

    v28 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v49 = v4;
LABEL_26:
      __dst = v28;
      v30 = v28 - 1;
      --v5;
      v31 = v14;
      do
      {
        v32 = v5 + 1;
        v33 = *--v31;
        v34 = v30;
        v35 = *v30;
        v36 = v33;
        v37 = v35;
        [v36 CGRectValue];
        v39 = v38;
        v41 = v40;
        [v37 CGRectValue];
        v43 = v42;
        v45 = v44;

        if (v43 * v45 < v39 * v41)
        {
          v46 = v34;
          if (v32 != __dst)
          {
            *v5 = *v34;
          }

          v4 = v49;
          if (v14 <= v49 || (v28 = v46, v46 <= v6))
          {
            v28 = v46;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v32 != v14)
        {
          *v5 = *v31;
        }

        --v5;
        v14 = v31;
        v30 = v34;
      }

      while (v31 > v49);
      v14 = v31;
      v28 = __dst;
      v4 = v49;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 CGRectValue];
        v19 = v18;
        v21 = v20;
        [v17 CGRectValue];
        v23 = v22;
        v25 = v24;

        if (v23 * v25 >= v19 * v21)
        {
          break;
        }

        v26 = v13;
        v27 = v6 == v13++;
        if (!v27)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v26 = v4;
      v27 = v6 == v4++;
      if (v27)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v26;
      goto LABEL_17;
    }

LABEL_19:
    v28 = v6;
  }

LABEL_37:
  if (v28 != v4 || v28 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v4, 8 * (v14 - v4));
  }

  return 1;
}

void (*sub_100777974(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100778098;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1007779F4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10077809C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100777A74(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1007780A0;
  }

  __break(1u);
  return result;
}

void (*sub_100777AF4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100777B74;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100777B7C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100777BFC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100777C04(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100777C84;
  }

  __break(1u);
  return result;
}

void *sub_100777CB8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3((v9 + 4), v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_100777D5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  if (v1 == 1)
  {

    return v3;
  }

  v4 = 16;
  if (v1 < 0x10)
  {
    v4 = *(a1 + 16);
  }

  if (v1 == v4 - 1)
  {

    v5 = v3;
  }

  else
  {
LABEL_27:
    sub_10067672C(v3, v3 + 32, 1, (2 * v4) | 1);
    v5 = v27;
  }

  v6 = sub_100775A4C(v5);

  v7 = *(v6 + 16);
  if (!v7)
  {

    return _swiftEmptyArrayStorage;
  }

  sub_100776AA4(0, v7, 0);
  v8 = 0;
  v28 = *(v3 + 32);
  v29 = *(v3 + 48);
  v3 = v2;
  while (1)
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v9 = *(v6 + 32 + 8 * v8);
    sub_1005B981C(&unk_1019F6F30, &unk_10147AAA0);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_10146C6B0;
    *(inited + 2) = v28;
    *(inited + 3) = v29;
    v11 = *(v9 + 16);

    if (v11)
    {
      break;
    }

    v12 = 1;
LABEL_14:
    ++v8;
    v13 = (inited + 7);
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v14 = sub_10011FC04(v14, v15, v16, v17, *(v13 - 3), *(v13 - 2), *(v13 - 1), *v13);
      v13 += 4;
      --v12;
    }

    while (v12);
    v18 = v17;
    v19 = v16;
    v20 = v15;
    v21 = v14;

    v2 = *(v3 + 16);
    v22 = *(v3 + 24);
    if (v2 >= v22 >> 1)
    {
      sub_100776AA4((v22 > 1), v2 + 1, 1);
    }

    *(v3 + 16) = v2 + 1;
    v23 = (v3 + 32 * v2);
    v23[4] = v21;
    v23[5] = v20;
    v23[6] = v19;
    v23[7] = v18;
    if (v8 == v7)
    {

      return v3;
    }
  }

  result = sub_100B378BC(1, v11 + 1, 1, inited);
  if (*(v9 + 16))
  {
    inited = result;
    v25 = *(result + 2);
    if ((*(result + 3) >> 1) - v25 < v11)
    {
      __break(1u);
LABEL_29:
      __break(1u);
    }

    memcpy(&result[32 * v25 + 32], (v9 + 32), 32 * v11);
    v26 = inited[2];
    v12 = v26 + v11;
    if (__OFADD__(v26, v11))
    {
      goto LABEL_29;
    }

    inited[2] = v12;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_10077804C()
{
  result = qword_101A04270;
  if (!qword_101A04270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A04270);
  }

  return result;
}

id sub_10077820C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100778278(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v11 = v10;
  v22 = objc_allocWithZone(v11);
  if (a9 <= a10)
  {
    v60 = a6;
    v47 = a2;
    v48 = OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_id;
    v49 = type metadata accessor for UUID();
    v58 = v11;
    v50 = a3;
    v51 = *(v49 - 8);
    (*(v51 + 16))(&v22[v48], a1, v49);
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_movieData] = v47;
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterImageData] = v50;
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterTime] = a8;
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_startTime] = a9;
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_endTime] = a10;
    v52 = &v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_title];
    *v52 = a4;
    *(v52 + 1) = a5;
    v53 = &v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_creator];
    *v53 = v60;
    v53[1] = a7;
    v61.receiver = v22;
    v61.super_class = v58;
    v54 = objc_msgSendSuper2(&v61, "init");
    (*(v51 + 8))(a1, v49);
    return v54;
  }

  else
  {
    v56 = a2;
    v57 = a3;
    v59 = a1;

    v55 = objc_opt_self();
    v23 = [v55 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62, "Attempting to set startTime after endTime will only lead to misery.", 67, 2u);
    StaticString.description.getter("init(id:movieData:posterImageData:posterTime:startTime:endTime:title:creator:)", 78, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetMoviePosterTime.swift", 100, 2);
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 lastPathComponent];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v23;
    v32 = sub_1005CF000();
    *(inited + 96) = v32;
    v33 = sub_1005CF04C();
    *(inited + 104) = v33;
    *(inited + 72) = v24;
    *(inited + 136) = &type metadata for String;
    v34 = sub_1000053B0();
    *(inited + 112) = v27;
    *(inited + 120) = v29;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v34;
    *(inited + 152) = 23;
    v35 = v62;
    *(inited + 216) = v32;
    *(inited + 224) = v33;
    *(inited + 192) = v35;
    v36 = v24;
    v37 = v35;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v39, "Attempting to set startTime after endTime will only lead to misery.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v40 = swift_allocObject();
    v40[2] = 8;
    v40[3] = 0;
    v40[4] = 0;
    v40[5] = 0;
    v41 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(id:movieData:posterImageData:posterTime:startTime:endTime:title:creator:)", 78, 2);
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetMoviePosterTime.swift", 100, 2);
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Attempting to set startTime after endTime will only lead to misery.", 67, 2);
    v44 = String._bridgeToObjectiveC()();

    [v55 handleFailureInFunction:v42 file:v43 lineNumber:23 isFatal:0 format:v44 args:v41];

    v45 = type metadata accessor for UUID();
    (*(*(v45 - 8) + 8))(v59, v45);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_100778818(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  if (a9 <= a10)
  {
    v45 = OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_id;
    v46 = type metadata accessor for UUID();
    v47 = a1;
    v48 = *(v46 - 8);
    (*(v48 + 16))(&v10[v45], v47, v46);
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_movieData] = a2;
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterImageData] = a3;
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterTime] = a8;
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_startTime] = a9;
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_endTime] = a10;
    v49 = &v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_title];
    *v49 = a4;
    *(v49 + 1) = a5;
    v50 = &v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_creator];
    *v50 = a6;
    *(v50 + 1) = a7;
    v55.receiver = v10;
    v55.super_class = type metadata accessor for CRLCommandSetMoviePosterTime(0);
    v51 = objc_msgSendSuper2(&v55, "init");
    (*(v48 + 8))(v47, v46);
    return v51;
  }

  else
  {

    v16 = objc_opt_self();
    v17 = [v16 _atomicIncrementAssertCount];
    v56 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v56, "Attempting to set startTime after endTime will only lead to misery.", 67, 2u);
    StaticString.description.getter("init(id:movieData:posterImageData:posterTime:startTime:endTime:title:creator:)", 78, 2);
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetMoviePosterTime.swift", 100, 2);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_1005CF000();
    *(inited + 96) = v26;
    v27 = sub_1005CF04C();
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 23;
    v29 = v56;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "Attempting to set startTime after endTime will only lead to misery.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(id:movieData:posterImageData:posterTime:startTime:endTime:title:creator:)", 78, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetMoviePosterTime.swift", 100, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Attempting to set startTime after endTime will only lead to misery.", 67, 2);
    v38 = String._bridgeToObjectiveC()();

    [v16 handleFailureInFunction:v36 file:v37 lineNumber:23 isFatal:0 format:v38 args:v35];

    v39 = type metadata accessor for UUID();
    (*(*(v39 - 8) + 8))(a1, v39);
    type metadata accessor for CRLCommandSetMoviePosterTime(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}