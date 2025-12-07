void sub_1004045A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v63 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = 0;
  v67 = 0;
  sub_1000063E8();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v6 newBackgroundContextWithAuthor:v16];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v25 = [objc_opt_self() localInternalAccountID];
    v62 = v24;
    v26 = v25;
    v27 = [v25 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    v30 = String._bridgeToObjectiveC()();
    v29, v31, v32, v33, v34, v35, v36, v37;
    v38 = [v6 storeForAccountIdentifier:v30];

    v24 = v62;
    if (v38)
    {
      v61 = a3;
      v39 = [v6 persistentStoreCoordinator];
      v40 = [v39 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v41 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v60[1] = v5;
        v49 = 0;
        v65 = v41 & 0xC000000000000001;
        v5 = i;
        while (1)
        {
          if (v65)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v49 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v50 = *(v41 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v5 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v49;
          if (v52 == v5)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v41, v42, v43, v44, v45, v46, v47, v48;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v24 = v62;
      [v62 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a3 = v61;
    }
  }

  v54 = swift_allocObject();
  v54[2] = &v68;
  v54[3] = v63;
  v54[4] = a3;
  v54[5] = v24;
  v54[6] = &v67;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_100412C18;
  *(v55 + 24) = v54;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0ED8;
  v56 = _Block_copy(aBlock);
  v57 = v24;

  [v57 performBlockAndWait:v56];
  _Block_release(v56);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if (v56)
  {
    __break(1u);
  }

  else
  {
    if (v67)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v68;

      return;
    }

    if (v68)
    {
      v68;

      v59 = v68;

      return;
    }
  }

  __break(1u);
}

void sub_100404AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v63 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = 0;
  v67 = 0;
  sub_1000063E8();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v6 newBackgroundContextWithAuthor:v16];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v25 = [objc_opt_self() localInternalAccountID];
    v62 = v24;
    v26 = v25;
    v27 = [v25 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    v30 = String._bridgeToObjectiveC()();
    v29, v31, v32, v33, v34, v35, v36, v37;
    v38 = [v6 storeForAccountIdentifier:v30];

    v24 = v62;
    if (v38)
    {
      v61 = a3;
      v39 = [v6 persistentStoreCoordinator];
      v40 = [v39 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v41 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v60[1] = v5;
        v49 = 0;
        v65 = v41 & 0xC000000000000001;
        v5 = i;
        while (1)
        {
          if (v65)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v49 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v50 = *(v41 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v5 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v49;
          if (v52 == v5)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v41, v42, v43, v44, v45, v46, v47, v48;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v24 = v62;
      [v62 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a3 = v61;
    }
  }

  v54 = swift_allocObject();
  v54[2] = &v68;
  v54[3] = v63;
  v54[4] = a3;
  v54[5] = v24;
  v54[6] = &v67;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_100412D40;
  *(v55 + 24) = v54;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0C80;
  v56 = _Block_copy(aBlock);
  v57 = v24;

  [v57 performBlockAndWait:v56];
  _Block_release(v56);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if (v56)
  {
    __break(1u);
  }

  else
  {
    if (v67)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v68;

      return;
    }

    if (v68)
    {
      v68;

      v59 = v68;

      return;
    }
  }

  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_100405054(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, Class isa, uint64_t a4)
{
  type metadata accessor for REMCDDueDateDeltaAlert();
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [(RDXPCStorePerformer *)v8 setAffectedStores:isa];

  [(RDXPCStorePerformer *)v8 setPredicate:a4];
  if (a2)
  {

    sub_100391890(v17);
    a2, v18, v19, v20, v21, v22, v23, v24;
    v71 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v35 = Array._bridgeToObjectiveC()().super.isa;
        &_swiftEmptyArrayStorage, v36, v37, v38, v39, v40, v41, v42;
        [(RDXPCStorePerformer *)v8 setRelationshipKeyPathsForPrefetching:v35];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v69 = a1;
      v70 = v8;
      v26 = 0;
      v72 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v72)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v71 + 16))
          {
            goto LABEL_25;
          }
        }

        v27 = a2;
        v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v29)
        {
          goto LABEL_28;
        }

        v30 = v28;
        v31 = v29;

        v33 = *_swiftEmptyArrayStorage.clientIdentity;
        v32 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v33 >= v32 >> 1)
        {
          sub_100026EF4((v32 > 1), v33 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v33 + 1;
        v34 = &_swiftEmptyArrayStorage + 16 * v33;
        *(v34 + 4) = v30;
        *(v34 + 5) = v31;
        ++v26;
        a2 = v27;
        if (a1 == v8)
        {
          a1 = v69;
          v8 = v70;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v68._object = 0x80000001007EC120;
    v68._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v68);
    sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100391890(v43);
      a1, v44, v45, v46, v47, v48, v49, v50;
      v51 = sub_1003FE084(_swiftEmptySetSingleton, &qword_10093F560, &qword_10079C0F0, &unk_100946500, &qword_1007A8758);
      _swiftEmptySetSingleton, v52, v53, v54, v55, v56, v57, v58;
      v59 = Array._bridgeToObjectiveC()().super.isa;
      v51, v60, v61, v62, v63, v64, v65, v66;
      [(RDXPCStorePerformer *)v8 setPropertiesToFetch:v59];
    }

    else
    {
      _swiftEmptySetSingleton, v10, v11, v12, v13, v14, v15, v16;
    }

    return v8;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100405438(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [(RDXPCStorePerformer *)v8 setAffectedStores:isa];

  [(RDXPCStorePerformer *)v8 setPredicate:a4];
  if (a2)
  {

    sub_100391CC4(v17);
    a2, v18, v19, v20, v21, v22, v23, v24;
    v71 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v35 = Array._bridgeToObjectiveC()().super.isa;
        &_swiftEmptyArrayStorage, v36, v37, v38, v39, v40, v41, v42;
        [(RDXPCStorePerformer *)v8 setRelationshipKeyPathsForPrefetching:v35];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v69 = a1;
      v70 = v8;
      v26 = 0;
      v72 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v72)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v71 + 16))
          {
            goto LABEL_25;
          }
        }

        v27 = a2;
        v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v29)
        {
          goto LABEL_28;
        }

        v30 = v28;
        v31 = v29;

        v33 = *_swiftEmptyArrayStorage.clientIdentity;
        v32 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v33 >= v32 >> 1)
        {
          sub_100026EF4((v32 > 1), v33 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v33 + 1;
        v34 = &_swiftEmptyArrayStorage + 16 * v33;
        *(v34 + 4) = v30;
        *(v34 + 5) = v31;
        ++v26;
        a2 = v27;
        if (a1 == v8)
        {
          a1 = v69;
          v8 = v70;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v68._object = 0x80000001007EC120;
    v68._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v68);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100391CC4(v43);
      a1, v44, v45, v46, v47, v48, v49, v50;
      v51 = sub_1003FE084(_swiftEmptySetSingleton, &qword_10093F478, &unk_1007A76E0, &unk_1009464B0, &unk_1007A86A0);
      _swiftEmptySetSingleton, v52, v53, v54, v55, v56, v57, v58;
      v59 = Array._bridgeToObjectiveC()().super.isa;
      v51, v60, v61, v62, v63, v64, v65, v66;
      [(RDXPCStorePerformer *)v8 setPropertiesToFetch:v59];
    }

    else
    {
      _swiftEmptySetSingleton, v10, v11, v12, v13, v14, v15, v16;
    }

    return v8;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10040582C(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [(RDXPCStorePerformer *)v8 setAffectedStores:isa];

  [(RDXPCStorePerformer *)v8 setPredicate:a4];
  if (a2)
  {

    sub_100391940(v17);
    a2, v18, v19, v20, v21, v22, v23, v24;
    v71 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v35 = Array._bridgeToObjectiveC()().super.isa;
        &_swiftEmptyArrayStorage, v36, v37, v38, v39, v40, v41, v42;
        [(RDXPCStorePerformer *)v8 setRelationshipKeyPathsForPrefetching:v35];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v69 = a1;
      v70 = v8;
      v26 = 0;
      v72 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v72)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v71 + 16))
          {
            goto LABEL_25;
          }
        }

        v27 = a2;
        v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v29)
        {
          goto LABEL_28;
        }

        v30 = v28;
        v31 = v29;

        v33 = *_swiftEmptyArrayStorage.clientIdentity;
        v32 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v33 >= v32 >> 1)
        {
          sub_100026EF4((v32 > 1), v33 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v33 + 1;
        v34 = &_swiftEmptyArrayStorage + 16 * v33;
        *(v34 + 4) = v30;
        *(v34 + 5) = v31;
        ++v26;
        a2 = v27;
        if (a1 == v8)
        {
          a1 = v69;
          v8 = v70;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v68._object = 0x80000001007EC120;
    v68._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v68);
    sub_1000F5104(&unk_100942FF0, &unk_1007A3A70);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100391940(v43);
      a1, v44, v45, v46, v47, v48, v49, v50;
      v51 = sub_1003FE084(_swiftEmptySetSingleton, &unk_100942FF0, &unk_1007A3A70, &qword_1009464F0, &unk_1007A86F0);
      _swiftEmptySetSingleton, v52, v53, v54, v55, v56, v57, v58;
      v59 = Array._bridgeToObjectiveC()().super.isa;
      v51, v60, v61, v62, v63, v64, v65, v66;
      [(RDXPCStorePerformer *)v8 setPropertiesToFetch:v59];
    }

    else
    {
      _swiftEmptySetSingleton, v10, v11, v12, v13, v14, v15, v16;
    }

    return v8;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100405C20(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [(RDXPCStorePerformer *)v8 setAffectedStores:isa];

  [(RDXPCStorePerformer *)v8 setPredicate:a4];
  if (a2)
  {

    sub_100390E88(v17);
    a2, v18, v19, v20, v21, v22, v23, v24;
    v71 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v35 = Array._bridgeToObjectiveC()().super.isa;
        &_swiftEmptyArrayStorage, v36, v37, v38, v39, v40, v41, v42;
        [(RDXPCStorePerformer *)v8 setRelationshipKeyPathsForPrefetching:v35];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v69 = a1;
      v70 = v8;
      v26 = 0;
      v72 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v72)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v71 + 16))
          {
            goto LABEL_25;
          }
        }

        v27 = a2;
        v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v29)
        {
          goto LABEL_28;
        }

        v30 = v28;
        v31 = v29;

        v33 = *_swiftEmptyArrayStorage.clientIdentity;
        v32 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v33 >= v32 >> 1)
        {
          sub_100026EF4((v32 > 1), v33 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v33 + 1;
        v34 = &_swiftEmptyArrayStorage + 16 * v33;
        *(v34 + 4) = v30;
        *(v34 + 5) = v31;
        ++v26;
        a2 = v27;
        if (a1 == v8)
        {
          a1 = v69;
          v8 = v70;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v68._object = 0x80000001007EC120;
    v68._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v68);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100390E88(v43);
      a1, v44, v45, v46, v47, v48, v49, v50;
      v51 = sub_1003FE084(_swiftEmptySetSingleton, &unk_10093D020, qword_1007A3230, &qword_1009464F8, qword_1007A8700);
      _swiftEmptySetSingleton, v52, v53, v54, v55, v56, v57, v58;
      v59 = Array._bridgeToObjectiveC()().super.isa;
      v51, v60, v61, v62, v63, v64, v65, v66;
      [(RDXPCStorePerformer *)v8 setPropertiesToFetch:v59];
    }

    else
    {
      _swiftEmptySetSingleton, v10, v11, v12, v13, v14, v15, v16;
    }

    return v8;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100406014(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &qword_100944260, off_1008D41D8);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [(RDXPCStorePerformer *)v8 setAffectedStores:isa];

  [(RDXPCStorePerformer *)v8 setPredicate:a4];
  if (a2)
  {

    sub_100390EA0(v17);
    a2, v18, v19, v20, v21, v22, v23, v24;
    v71 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v35 = Array._bridgeToObjectiveC()().super.isa;
        &_swiftEmptyArrayStorage, v36, v37, v38, v39, v40, v41, v42;
        [(RDXPCStorePerformer *)v8 setRelationshipKeyPathsForPrefetching:v35];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v69 = a1;
      v70 = v8;
      v26 = 0;
      v72 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v72)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v71 + 16))
          {
            goto LABEL_25;
          }
        }

        v27 = a2;
        v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v29)
        {
          goto LABEL_28;
        }

        v30 = v28;
        v31 = v29;

        v33 = *_swiftEmptyArrayStorage.clientIdentity;
        v32 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v33 >= v32 >> 1)
        {
          sub_100026EF4((v32 > 1), v33 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v33 + 1;
        v34 = &_swiftEmptyArrayStorage + 16 * v33;
        *(v34 + 4) = v30;
        *(v34 + 5) = v31;
        ++v26;
        a2 = v27;
        if (a1 == v8)
        {
          a1 = v69;
          v8 = v70;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v68._object = 0x80000001007EC120;
    v68._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v68);
    sub_1000F5104(&unk_10093CFF0, &unk_10079AAB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100390EA0(v43);
      a1, v44, v45, v46, v47, v48, v49, v50;
      v51 = sub_1003FE084(_swiftEmptySetSingleton, &unk_10093CFF0, &unk_10079AAB0, &qword_100946538, qword_1007A87D8);
      _swiftEmptySetSingleton, v52, v53, v54, v55, v56, v57, v58;
      v59 = Array._bridgeToObjectiveC()().super.isa;
      v51, v60, v61, v62, v63, v64, v65, v66;
      [(RDXPCStorePerformer *)v8 setPropertiesToFetch:v59];
    }

    else
    {
      _swiftEmptySetSingleton, v10, v11, v12, v13, v14, v15, v16;
    }

    return v8;
  }

  return result;
}

id sub_100406408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

void *sub_100406450(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  result = a2(&v6, a4);
  *a1 = 0;
  return result;
}

double sub_1004066A0(_TtC7remindd19RDXPCStorePerformer **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v14, a4);
  v5 = *a1;
  *a1 = v14;
  return sub_100412CB4(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1004068FC(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v14, a4);
  v5 = v15;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  *a1 = v14;
  a1[2] = v5;
  sub_100412C60(v6, v7, v8, v9, v10, v11, v12, v13);
}

double sub_100406B64(_TtC7remindd19RDXPCStorePerformer **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v14, a4);
  v5 = *a1;
  *a1 = v14;
  v5, v6, v7, v8, v9, v10, v11, v12;
  return result;
}

void sub_100406DC0(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v9, a4);
  v5 = v10;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  *a1 = v9;
  a1[2] = v5;
  sub_10003B40C(v6, v7, v8);
}

void *sub_100407028(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  result = a2(&v6, a4);
  *a1 = v6;
  return result;
}

void sub_10040727C(void **a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v6, a4);
  v5 = *a1;
  *a1 = v6;
}

uint64_t sub_1004074D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009463C0);
  v1 = sub_100006654(v0, qword_1009463C0);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004075A0()
{
  result = [objc_opt_self() alarmEngine];
  qword_1009463D8 = result;
  return result;
}

uint64_t sub_1004075DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = xmmword_1007A8590;
  *(v4 + 56) = 0xED00007265637564;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 86) = 0;
  *(v4 + 16) = a1;
  v8 = type metadata accessor for RDDaemonController();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = &v9[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v11 = xmmword_1007A85A0;
  *(v11 + 38) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 2) = 0;
  *&v9[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  sub_10000C71C(0x6F72506D72616C61, 0xED00007265637564, 0, 0, 0, 0);
  v13.receiver = v9;
  v13.super_class = v8;
  *(v4 + 24) = objc_msgSendSuper2(&v13, "init");
  *(v4 + 32) = a4;
  return v4;
}

void sub_1004076F4(uint64_t a1@<X1>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v97 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a1 + 24)];
  v3 = sub_10029B198(1, 160);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v3];
  *&v104 = _swiftEmptySetSingleton;

  sub_100391940(v7);
  inited, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1003FE084(_swiftEmptySetSingleton, &unk_100942FF0, &unk_1007A3A70, &qword_1009464F0, &unk_1007A86F0);
  _swiftEmptySetSingleton, v16, v17, v18, v19, v20, v21, v22;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15, v24, v25, v26, v27, v28, v29, v30;
  [v5 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = [objc_opt_self() daemonUserDefaults];
  LOBYTE(v15) = [v31 disableAlarmEngineDataSourcePrefetching];

  if ((v15 & 1) == 0)
  {
    v32 = Array._bridgeToObjectiveC()().super.isa;
    [v5 setRelationshipKeyPathsForPrefetching:v32];
  }

  v33 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    v34 = v97;
LABEL_5:

    return;
  }

  v35 = v33;
  v94 = v5;
  *&v104 = &_swiftEmptyArrayStorage;
  v95 = v3;
  if (v33 >> 62)
  {
LABEL_50:
    v102 = v35 & 0xFFFFFFFFFFFFFF8;
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v102 = v33 & 0xFFFFFFFFFFFFFF8;
    v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v35 & 0xC000000000000001;
  v5 = v97;
  if (!v36)
  {
    v39 = &_swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v38 = 0;
  v39 = &_swiftEmptyArrayStorage;
  do
  {
    v100 = v39;
    v40 = v38;
    while (1)
    {
      if (v37)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *(v102 + 16))
        {
          goto LABEL_47;
        }

        v41 = *(v35 + 8 * v40 + 32);
      }

      v42 = v41;
      v38 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v43 = [v41 alarm];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 reminder];

        if (v45)
        {
          break;
        }
      }

LABEL_12:
      ++v40;
      if (v38 == v36)
      {
        v39 = v100;
        goto LABEL_28;
      }
    }

    v46 = [v45 remObjectID];

    if (!v46)
    {
      goto LABEL_12;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v39 = v104;
  }

  while (v38 != v36);
LABEL_28:
  v47 = [objc_allocWithZone(REMRemindersDataView) initWithStore:v97];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v48 = Array._bridgeToObjectiveC()().super.isa;
  v39, v49, v50, v51, v52, v53, v54, v55;
  v56 = [objc_opt_self() defaultFetchOptions];
  *&v104 = 0;
  v93 = v47;
  v57 = [v47 fetchRemindersWithObjectIDs:v48 fetchOptions:v56 error:&v104];

  v58 = v104;
  if (!v57)
  {
    v71 = v104;
    v35, v72, v73, v74, v75, v76, v77, v78;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v3 = v93;
    v34 = v94;
    goto LABEL_5;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v98 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  if (v36)
  {
    v60 = 0;
    v61 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v37)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v60 >= *(v102 + 16))
        {
          goto LABEL_49;
        }

        v63 = *(v35 + 8 * v60 + 32);
      }

      v64 = v63;
      v65 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v103 = v63;
      sub_100407F3C(&v103, v98, a1, &v104);

      if (v104)
      {
        v101 = v104;
        v66 = v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_100367EC8(0, (*v61->clientIdentity + 1), 1, v61);
        }

        v68 = *v61->clientIdentity;
        v67 = *&v61->clientIdentity[8];
        v69 = v101;
        if (v68 >= v67 >> 1)
        {
          v70 = sub_100367EC8((v67 > 1), (v68 + 1), 1, v61);
          v69 = v101;
          v61 = v70;
        }

        *v61->clientIdentity = v68 + 1;
        v62 = v61 + 24 * v68;
        *(v62 + 2) = v69;
        *(v62 + 6) = v66;
        v5 = v97;
      }

      ++v60;
      if (v65 == v36)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v61 = &_swiftEmptyArrayStorage;
LABEL_45:

  v35, v79, v80, v81, v82, v83, v84, v85;
  v98, v86, v87, v88, v89, v90, v91, v92;

  *a2 = v61;
}

void sub_100407E00(uint64_t a1, void **a2)
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

void sub_100407F3C(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 alarm];
  if (!v8)
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_1009463C0);
    v38 = v7;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "LocationDataSourceAlarms: Failed to get cdAlarm from trigger. {cdTrigger: %@}", v41, 0xCu);
      sub_1000050A4(v42, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_75;
  }

  v9 = v8;
  v10 = [v8 reminder];
  if (!v10 || (v11 = v10, v12 = [v10 remObjectID], v11, !v12))
  {
    if (qword_1009360A8 != -1)
    {
LABEL_62:
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_1009463C0);
    v31 = v9;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v9;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "LocationDataSourceAlarms: Failed to get reminderID from cdAlarm.reminder. {cdAlarm: %@}", v34, 0xCu);
      sub_1000050A4(v35, &unk_100938E70, &unk_100797230);

      v31 = v32;
      v32 = v36;
    }

    goto LABEL_75;
  }

  v13 = sub_100353844(v12, a2);
  if (!v13)
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006654(v58, qword_1009463C0);
    v59 = v12;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138543362;
      *(v62 + 4) = v59;
      *v63 = v12;
      v64 = v59;
      _os_log_impl(&_mh_execute_header, v60, v61, "LocationDataSourceAlarms: Failed to get remReminder from dataView result {reminderID: %{public}@}", v62, 0xCu);
      sub_1000050A4(v63, &unk_100938E70, &unk_100797230);

      v59 = v60;
      v60 = v9;
      v9 = v64;
    }

    goto LABEL_75;
  }

  v14 = v13;
  v15 = [v13 assignmentContext];
  v16 = [v15 currentAssignment];

  if (v16)
  {

    v17 = *(a3 + 40);
    v18 = v17;
    LOBYTE(v17) = sub_1005815C8(v17);

    if ((v17 & 1) == 0)
    {
      if (qword_1009360A8 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100006654(v65, qword_1009463C0);
      v66 = v14;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138543362;
        v71 = [v66 objectID];
        *(v69 + 4) = v71;
        *v70 = v71;
        _os_log_impl(&_mh_execute_header, v67, v68, "LocationDataSourceAlarms: remReminder is not assigned to current user. Skipping {reminderID: %{public}@}", v69, 0xCu);
        sub_1000050A4(v70, &unk_100938E70, &unk_100797230);

        v72 = v67;
        v67 = v9;
      }

      else
      {
        v72 = v66;
        v66 = v9;
      }

      goto LABEL_74;
    }
  }

  v119 = v14;
  v19 = [v14 alarms];
  if (!v19)
  {
LABEL_65:
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_100006654(v96, qword_1009463C0);
    v97 = v9;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v124[0] = v121;
      *v100 = 136446210;
      v101 = [v97 remObjectID];
      if (v101)
      {
        v102 = v101;
        v103 = v12;
        v104 = a4;
        v105 = [v101 description];

        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = v107;

        a4 = v104;
        v12 = v103;
      }

      else
      {
        v108 = 0xE300000000000000;
        v106 = 7104878;
      }

      v109 = sub_10000668C(v106, v108, v124);
      v108, v110, v111, v112, v113, v114, v115, v116;
      *(v100 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v98, v99, "LocationDataSourceAlarms: Failed to get remAlarm from remReminder.alarms {alarmID: %{public}s}", v100, 0xCu);
      sub_10000607C(v121);
    }

    else
    {
    }

LABEL_74:
LABEL_75:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v20 = v19;
  v117 = v12;
  v118 = a4;
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v120 = v9;
  if (v21 >> 62)
  {
    a4 = _CocoaArrayWrapper.endIndex.getter();
    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

  a4 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a4)
  {
LABEL_64:
    v21, v22, v23, v24, v25, v26, v27, v28;
    a4 = v118;
    v12 = v117;
    v9 = v120;
    goto LABEL_65;
  }

LABEL_10:
  v29 = 0;
  v9 = (v21 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v44 = *(v21 + 8 * v29 + 32);
    }

    v45 = v44;
    v46 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v47 = [v44 remObjectID];
    v48 = [v120 remObjectID];
    v56 = v48;
    if (!v47)
    {
      if (!v48)
      {
        goto LABEL_44;
      }

      goto LABEL_21;
    }

    if (v48)
    {
      break;
    }

    v56 = v47;
LABEL_21:

LABEL_22:
    ++v29;
    if (v46 == a4)
    {
      goto LABEL_64;
    }
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v57 = static NSObject.== infix(_:_:)();

  if ((v57 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_44:
  v21, v49, v50, v51, v52, v53, v54, v55;
  v127 = [v45 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&qword_100946520, &qword_1007A87C0);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v122, v124);
    v73 = v125;
    v74 = v126;
    sub_10000F61C(v124, v125);
    v75 = (*(v74 + 8))(v119, v73, v74);
    v76 = v118;
    if (v75)
    {
      v77 = v75;

      *v118 = v119;
      v118[1] = v45;
      v118[2] = v77;
    }

    else
    {
      if (qword_1009360A8 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_100006654(v86, qword_1009463C0);
      v87 = v45;
      v88 = v119;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *v91 = 138412546;
        v93 = [v87 trigger];
        *(v91 + 4) = v93;
        *v92 = v93;
        *(v91 + 12) = 2114;
        v94 = [v88 objectID];
        *(v91 + 14) = v94;
        v92[1] = v94;
        _os_log_impl(&_mh_execute_header, v89, v90, "LocationDataSourceAlarms: Unable to get CLRegion from remAlarm.trigger {remAlarm.trigger: %@, reminderID: %{public}@}", v91, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
        v76 = v118;

        v95 = v89;
        v89 = v120;
      }

      else
      {
        v95 = v88;
        v88 = v120;
      }

      *v76 = 0;
      v76[1] = 0;
      v76[2] = 0;
    }

    sub_10000607C(v124);
  }

  else
  {
    v123 = 0;
    memset(v122, 0, sizeof(v122));
    sub_1000050A4(v122, &qword_100946528, &unk_1007A87C8);
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100006654(v78, qword_1009463C0);
    v79 = v45;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      v84 = [v79 trigger];
      *(v82 + 4) = v84;
      *v83 = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "LocationDataSourceAlarms: remAlarm.trigger is not a RDCLRegionSource (REMAlarmLocationTrigger) {remAlarm.trigger: %@}", v82, 0xCu);
      sub_1000050A4(v83, &unk_100938E70, &unk_100797230);

      v85 = v80;
    }

    else
    {
      v85 = v79;
      v79 = v80;
    }

    *v118 = 0;
    v118[1] = 0;
    v118[2] = 0;
  }
}

void sub_100408C3C(uint64_t a1@<X1>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v101 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a1 + 24)];
  v3 = sub_10029C950(2, 160);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100940370, off_1008D4150);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v3];
  *&v108 = _swiftEmptySetSingleton;

  sub_1003928E4(v7);
  inited, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1003FE084(_swiftEmptySetSingleton, &qword_100946510, &qword_1007A3B48, &qword_100946518, &qword_1007A8790);
  _swiftEmptySetSingleton, v16, v17, v18, v19, v20, v21, v22;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15, v24, v25, v26, v27, v28, v29, v30;
  [v5 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = [objc_opt_self() daemonUserDefaults];
  LOBYTE(v15) = [v31 disableAlarmEngineDataSourcePrefetching];

  if ((v15 & 1) == 0)
  {
    v32 = Array._bridgeToObjectiveC()().super.isa;
    [v5 setRelationshipKeyPathsForPrefetching:v32];
  }

  v33 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    v34 = v101;
LABEL_5:

    return;
  }

  v35 = v33;
  v98 = v5;
  *&v108 = &_swiftEmptyArrayStorage;
  v99 = v3;
  if (v33 >> 62)
  {
LABEL_50:
    v106 = v35 & 0xFFFFFFFFFFFFFF8;
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v106 = v33 & 0xFFFFFFFFFFFFFF8;
    v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v35 & 0xC000000000000001;
  v5 = v101;
  if (!v36)
  {
    v39 = &_swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v38 = 0;
  v39 = &_swiftEmptyArrayStorage;
  do
  {
    v104 = v39;
    v40 = v38;
    while (1)
    {
      if (v37)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *(v106 + 16))
        {
          goto LABEL_47;
        }

        v41 = *(v35 + 8 * v40 + 32);
      }

      v42 = v41;
      v38 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v43 = [v41 alarm];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 reminder];

        if (v45)
        {
          break;
        }
      }

LABEL_12:
      ++v40;
      if (v38 == v36)
      {
        v39 = v104;
        goto LABEL_28;
      }
    }

    v46 = [v45 remObjectID];

    if (!v46)
    {
      goto LABEL_12;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v39 = v108;
  }

  while (v38 != v36);
LABEL_28:
  v47 = [objc_allocWithZone(REMRemindersDataView) initWithStore:v101];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v48 = Array._bridgeToObjectiveC()().super.isa;
  v39, v49, v50, v51, v52, v53, v54, v55;
  v56 = [objc_opt_self() defaultFetchOptions];
  *&v108 = 0;
  v97 = v47;
  v57 = [v47 fetchRemindersWithObjectIDs:v48 fetchOptions:v56 error:&v108];

  v58 = v108;
  if (!v57)
  {
    v75 = v108;
    v35, v76, v77, v78, v79, v80, v81, v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v3 = v97;
    v34 = v98;
    goto LABEL_5;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v102 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  if (v36)
  {
    v60 = 0;
    v61 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v37)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v60 >= *(v106 + 16))
        {
          goto LABEL_49;
        }

        v63 = *(v35 + 8 * v60 + 32);
      }

      v64 = v63;
      v65 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v107 = v63;
      sub_100409348(&v107, v102, a1, &v108);

      if (v108)
      {
        v105 = v108;
        v66 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_100367EEC(0, (*v61->clientIdentity + 1), 1, v61, v67, v68, v69, v70);
        }

        v72 = *v61->clientIdentity;
        v71 = *&v61->clientIdentity[8];
        v73 = v105;
        if (v72 >= v71 >> 1)
        {
          v74 = sub_100367EEC((v71 > 1), (v72 + 1), 1, v61, v67, v68, v69, v70);
          v73 = v105;
          v61 = v74;
        }

        *v61->clientIdentity = v72 + 1;
        v62 = v61 + 24 * v72;
        *(v62 + 2) = v73;
        *(v62 + 6) = v66;
        v5 = v101;
      }

      ++v60;
      if (v65 == v36)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v61 = &_swiftEmptyArrayStorage;
LABEL_45:

  v35, v83, v84, v85, v86, v87, v88, v89;
  v102, v90, v91, v92, v93, v94, v95, v96;

  *a2 = v61;
}

void sub_100409348(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 alarm];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  v10 = [v8 reminder];
  if (!v10)
  {
    goto LABEL_24;
  }

  v72 = a3;
  v11 = v10;
  v12 = [v10 remObjectID];

  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = sub_100353844(v12, a2);
  if (!v13)
  {

    goto LABEL_25;
  }

  v14 = v13;
  v15 = [v13 alarms];
  v16 = v14;
  if (!v15)
  {

LABEL_24:
    goto LABEL_25;
  }

  v17 = v15;
  v71 = v16;
  v70 = a4;
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = v7;
  v69 = v12;
  if (a4 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_8:
      v18 = 0;
      while (1)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v19 = *(a4 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v22 = [v19 remObjectID];
        v23 = v9;
        v24 = [v9 remObjectID];
        v32 = v24;
        if (!v22)
        {
          break;
        }

        if (!v24)
        {
          v32 = v22;
LABEL_10:

          goto LABEL_11;
        }

        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v33 = static NSObject.== infix(_:_:)();

        if (v33)
        {
LABEL_29:
          a4, v25, v26, v27, v28, v29, v30, v31;
          v41 = [v20 trigger];
          objc_opt_self();
          v42 = swift_dynamicCastObjCClass();
          v7 = v68;
          if (!v42)
          {

            a4 = v70;
            goto LABEL_25;
          }

          v43 = v41;
          v44 = v42;
          v45 = [v71 assignmentContext];
          v46 = [v45 currentAssignment];

          v47 = v23;
          if (v46 && (v46, v48 = *(v72 + 40), v49 = v48, LOBYTE(v48) = sub_1005815C8(v48), v49, (v48 & 1) == 0))
          {
            if (qword_1009360A8 != -1)
            {
              swift_once();
            }

            v53 = type metadata accessor for Logger();
            sub_100006654(v53, qword_1009463C0);
            v54 = v71;
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              *v57 = 138543362;
              v59 = [v54 objectID];
              *(v57 + 4) = v59;
              *v58 = v59;
              _os_log_impl(&_mh_execute_header, v55, v56, "Fetched reminder is not assigned to current user. Skipping {reminderID: %{public}@}", v57, 0xCu);
              sub_1000050A4(v58, &unk_100938E70, &unk_100797230);

              v60 = v55;
              v55 = v43;
              v43 = v20;
            }

            else
            {
              v60 = v54;
              v54 = v20;
            }

            *v70 = 0;
            v70[1] = 0;
            v70[2] = 0;
          }

          else
          {
            v50 = v71;
            v51 = v20;
            v52 = [v44 event];

            *v70 = v71;
            v70[1] = v51;
            v70[2] = v52;
          }

          return;
        }

LABEL_11:

        ++v18;
        v9 = v23;
        if (v21 == v7)
        {
          goto LABEL_44;
        }
      }

      if (!v24)
      {
        goto LABEL_29;
      }

      goto LABEL_10;
    }
  }

LABEL_44:

  a4, v61, v62, v63, v64, v65, v66, v67;
  a4 = v70;
  v7 = v68;
LABEL_25:
  if (qword_1009360A8 != -1)
  {
LABEL_42:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_1009463C0);
  v35 = v7;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "VehicleDataSourceAlarms: Failed to get REMReminder, REMAlarm or triggerEvent from cdTrigger -- skipping {cdTrigger: %@}", v38, 0xCu);
    sub_1000050A4(v39, &unk_100938E70, &unk_100797230);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

void sub_100409980(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a3;
  v87 = a1;
  v5 = _s10PredicatesOMa(0);
  __chkstk_darwin(v5, v6);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a2;
  v88 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a2 + 24)];
  swift_storeEnumTagMultiPayload();
  v9 = sub_100043AA8();
  sub_1000513B4(v8);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v9];
  v89 = _swiftEmptySetSingleton;

  sub_100050AD0(v13);
  inited, v14, v15, v16, v17, v18, v19, v20;
  v21 = v89;
  v22 = sub_1003FE084(v89, &unk_100939F10, &qword_100797F30, &unk_1009464A0, &qword_1007A8698);
  v21, v23, v24, v25, v26, v27, v28, v29;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v22, v31, v32, v33, v34, v35, v36, v37;
  [v11 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v38 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    v39 = v88;
    v40 = v9;
LABEL_3:

    return;
  }

  v41 = v38;
  v84 = v11;
  v87 = v9;
  v42 = objc_allocWithZone(REMRemindersDataView);
  v83 = [v42 initWithStore:v88];
  v89 = &_swiftEmptyArrayStorage;
  v82 = 0;
  if (v41 >> 62)
  {
LABEL_22:
    v50 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v50 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = 0;
  v52 = &_swiftEmptyArrayStorage;
  while (v50 != v51)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v51 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v53 = *(v41 + 8 * v51 + 32);
    }

    v54 = v53;
    v55 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v56 = [v53 remObjectID];

    ++v51;
    if (v56)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = v89;
      v51 = v55;
    }
  }

  v41, v43, v44, v45, v46, v47, v48, v49;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v57 = Array._bridgeToObjectiveC()().super.isa;
  v52, v58, v59, v60, v61, v62, v63, v64;
  v65 = [objc_opt_self() defaultFetchOptions];
  v89 = 0;
  v40 = v83;
  v66 = [v83 fetchRemindersWithObjectIDs:v57 fetchOptions:v65 error:&v89];

  v67 = v89;
  v69 = v85;
  v68 = v86;
  if (!v66)
  {
    v81 = v89;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v39 = v84;
    v11 = v88;
    goto LABEL_3;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v70 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v67;

  sub_100411EA4(v70, v69);
  v73 = v72;
  v70, v74, v75, v76, v77, v78, v79, v80;

  *v68 = v73;
}

void sub_100409EF8(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 contactHandles];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 assignmentContext];
    v9 = [v8 currentAssignment];

    if (!v9 || (v9, v10 = *(a2 + 40), v11 = v10, LOBYTE(v10) = sub_1005815C8(v10), v11, (v10 & 1) != 0))
    {
      v12 = [objc_allocWithZone(REMAlarmContactTrigger) initWithContactRepresentation:v7];
      v13 = [objc_allocWithZone(REMAlarm) initWithTrigger:v12];

      *a3 = v5;
      a3[1] = v13;
      a3[2] = v7;
      v14 = v5;
      return;
    }

    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_1009463C0);
    v23 = v5;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = [v23 objectID];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Fetched reminder is not assigned to current user. Skipping {reminderID: %{public}@}", v26, 0xCu);
      sub_1000050A4(v27, &unk_100938E70, &unk_100797230);
    }
  }

  else
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_1009463C0);
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = [v16 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Fetched reminder is missing contact handle. Skipping {reminderID: %{public}@}", v19, 0xCu);
      sub_1000050A4(v20, &unk_100938E70, &unk_100797230);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t sub_10040A26C()
{
  sub_10000CC4C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32), v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10040A2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v153 = a2;
  v152 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v149 = &v141 - v11;
  __chkstk_darwin(v12, v13);
  v142 = &v141 - v14;
  __chkstk_darwin(v15, v16);
  v143 = &v141 - v17;
  v18 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v18 - 8, v19);
  v147 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v144 = (&v141 - v23);
  __chkstk_darwin(v24, v25);
  v154 = &v141 - v26;
  v27 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v151 = *(v27 - 8);
  __chkstk_darwin(v27, v28);
  v145 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v141 = &v141 - v32;
  __chkstk_darwin(v33, v34);
  v36 = (&v141 - v35);
  v146 = a1;
  sub_100010364(a1, &v141 - v35, &unk_1009464C0, &qword_10079D360);
  v38 = *v36;
  v37 = v36[1];
  v159 = v27;
  v39 = *(v27 + 48);
  v157 = v5;
  v40 = *(v5 + 8);
  v161 = v4;
  v148 = v5 + 8;
  v155 = v40;
  v40(v36 + v39, v4);
  v41 = qword_1009360A8;
  v42 = v37;
  v43 = v38;
  if (v41 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = sub_100006654(v44, qword_1009463C0);
  v46 = v42;
  v47 = v43;
  v158 = v45;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v50 = os_log_type_enabled(v48, v49);
  v160 = v46;
  v150 = v8;
  v156 = v47;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v164[0] = swift_slowAlloc();
    *v51 = 138543874;
    v53 = [v160 objectID];
    *(v51 + 4) = v53;
    *v52 = v53;
    *(v51 + 12) = 2082;
    if ([v160 isSnooze])
    {
      v54 = 89;
    }

    else
    {
      v54 = 78;
    }

    v55 = sub_10000668C(v54, 0xE100000000000000, v164);
    0xE100000000000000, v56, v57, v58, v59, v60, v61, v62;
    *(v51 + 14) = v55;
    *(v51 + 22) = 2082;
    if ([v47 isRecurrent])
    {
      v63 = 89;
    }

    else
    {
      v63 = 78;
    }

    v64 = sub_10000668C(v63, 0xE100000000000000, v164);
    0xE100000000000000, v65, v66, v67, v68, v69, v70, v71;
    *(v51 + 24) = v64;
    _os_log_impl(&_mh_execute_header, v48, v49, "RDTimeAlarmProducerDataSource: nextProducerAlarmFiringAfter alarm {alarmID: %{public}@ isSnooze: %{public}s isRecurring: %{public}s}", v51, 0x20u);
    sub_1000050A4(v52, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
    v46 = v160;
  }

  v72 = v157;
  v73 = *(v157 + 56);
  v74 = v154;
  v73(v154, 1, 1, v161);
  if (([v46 isSnooze] & 1) != 0 || !objc_msgSend(v156, "isOverdue"))
  {
    v81 = &unk_100938850;
    v82 = qword_100795AE0;
    v83 = v74;
LABEL_17:
    sub_1000050A4(v83, v81, v82);
    goto LABEL_18;
  }

  v167 = [v46 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
    memset(v162, 0, sizeof(v162));
    v163 = 0;
    v81 = &qword_10093A718;
    v82 = &qword_100797B90;
    v83 = v162;
    goto LABEL_17;
  }

  sub_100054B6C(v162, v164);
  v75 = v165;
  v76 = v166;
  sub_10000F61C(v164, v165);
  v77 = *(v76 + 16);
  v78 = v75;
  v79 = v144;
  v80 = v76;
  v72 = v157;
  v77(v156, v153, v78, v80);
  sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
  if ((*(v72 + 48))(v79, 1, v161) == 1)
  {
    sub_1000050A4(v79, &unk_100938850, qword_100795AE0);
    sub_10000607C(v164);
LABEL_18:
    v84 = v146;
    sub_100010364(v146, v36, &unk_1009464C0, &qword_10079D360);

    v85 = v36 + *(v159 + 48);
    v86 = v161;
    v144 = *(v72 + 32);
    v144(v74, v85, v161);
    v73(v74, 0, 1, v86);
    v87 = v84;
    v88 = v145;
    sub_100010364(v87, v145, &unk_1009464C0, &qword_10079D360);
    v89 = v160;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138543618;
      v94 = [v89 objectID];
      *(v92 + 4) = v94;
      *v93 = v94;
      *(v92 + 12) = 2114;
      sub_100010364(v88, v36, &unk_1009464C0, &qword_10079D360);

      v95 = *(v159 + 48);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v97 = v161;
      sub_1000050A4(v88, &unk_1009464C0, &qword_10079D360);
      v155(v36 + v95, v97);
      *(v92 + 14) = isa;
      v93[1] = isa;
      _os_log_impl(&_mh_execute_header, v90, v91, "RDTimeAlarmProducerDataSource: nextProducerAlarmFiringAfter is using default fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@}", v92, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v74 = v154;

      v72 = v157;
    }

    else
    {

      sub_1000050A4(v88, &unk_1009464C0, &qword_10079D360);
    }

    v98 = v150;
    v99 = v149;
    v100 = v147;
    goto LABEL_22;
  }

  v121 = v143;
  v122 = v161;
  v144 = *(v72 + 32);
  v144(v143, v79, v161);
  v123 = *(v72 + 16);
  v123(v74, v121, v122);
  v73(v74, 0, 1, v122);
  v124 = v141;
  sub_100010364(v146, v141, &unk_1009464C0, &qword_10079D360);
  v125 = v142;
  v123(v142, v121, v122);
  v126 = v160;
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = v124;
    v131 = swift_slowAlloc();
    *v129 = 138543874;
    v132 = [v126 objectID];
    *(v129 + 4) = v132;
    *v131 = v132;
    *(v129 + 12) = 2114;
    sub_100010364(v130, v36, &unk_1009464C0, &qword_10079D360);

    v133 = *(v159 + 48);
    v134 = v128;
    v135 = Date._bridgeToObjectiveC()().super.isa;
    sub_1000050A4(v130, &unk_1009464C0, &qword_10079D360);
    v136 = v36 + v133;
    v137 = v155;
    v138 = v161;
    v155(v136, v161);
    *(v129 + 14) = v135;
    v131[1] = v135;
    *(v129 + 22) = 2114;
    v139 = v142;
    v140 = Date._bridgeToObjectiveC()().super.isa;
    v137(v139, v138);
    *(v129 + 24) = v140;
    v131[2] = v140;
    _os_log_impl(&_mh_execute_header, v127, v134, "RDTimeAlarmProducerDataSource: nextProducerAlarmFiringAfter is calculating fireDate for overdue recurring alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@ nextFireDate: %{public}@}", v129, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v72 = v157;
  }

  else
  {

    v155(v125, v161);
    sub_1000050A4(v124, &unk_1009464C0, &qword_10079D360);
  }

  v98 = v150;
  v99 = v149;
  v100 = v147;
  v155(v143, v161);
  sub_10000607C(v164);
  v74 = v154;
LABEL_22:
  v101 = v160;
  sub_100010364(v74, v100, &unk_100938850, qword_100795AE0);
  if ((*(v72 + 48))(v100, 1, v161) == 1)
  {
    sub_1000050A4(v100, &unk_100938850, qword_100795AE0);
  }

  else
  {
    v102 = v100;
    v103 = v144;
    v144(v99, v102, v161);
    if (static Date.> infix(_:_:)())
    {
      sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
      v104 = v156;

      v105 = v160;
      v106 = v159;
      v107 = *(v159 + 48);
      v108 = v103;
      v109 = v152;
      *v152 = v104;
      *(v109 + 1) = v105;
      v108(&v109[v107], v99, v161);
      return (*(v151 + 56))(v109, 0, 1, v106);
    }

    v155(v99, v161);
    v101 = v160;
  }

  (*(v72 + 16))(v98, v153, v161);
  v111 = v101;
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = v98;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v115 = 138543618;
    v117 = [v111 objectID];
    *(v115 + 4) = v117;
    *v116 = v117;
    *(v115 + 12) = 2114;
    v118 = Date._bridgeToObjectiveC()().super.isa;
    v155(v114, v161);
    *(v115 + 14) = v118;
    v116[1] = v118;
    _os_log_impl(&_mh_execute_header, v112, v113, "RDTimeAlarmProducerDataSource: nextProducerAlarmFiringAfter fireDate is earlier than now for alarm. Skipping {alarmID: %{public}@ nowDate: %{public}@}", v115, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v119 = v156;
  }

  else
  {

    v120 = v156;
    v155(v98, v161);
  }

  sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
  return (*(v151 + 56))(v152, 1, 1, v159);
}

uint64_t sub_10040B260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v173 = a2;
  v168 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v162 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v166 = &v156 - v10;
  __chkstk_darwin(v11, v12);
  v156 = &v156 - v13;
  __chkstk_darwin(v14, v15);
  v159 = &v156 - v16;
  __chkstk_darwin(v17, v18);
  v20 = &v156 - v19;
  __chkstk_darwin(v21, v22);
  v158 = &v156 - v23;
  __chkstk_darwin(v24, v25);
  v160 = &v156 - v26;
  v27 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v27 - 8, v28);
  v165 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v161 = (&v156 - v32);
  __chkstk_darwin(v33, v34);
  v36 = (&v156 - v35);
  v37 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v167 = *(v37 - 8);
  __chkstk_darwin(v37, v38);
  v163 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v41);
  v157 = &v156 - v42;
  __chkstk_darwin(v43, v44);
  v46 = (&v156 - v45);
  v164 = a1;
  sub_100010364(a1, &v156 - v45, &unk_1009464C0, &qword_10079D360);
  v48 = *v46;
  v47 = v46[1];
  v176 = v37;
  v49 = *(v37 + 48);
  v178 = v5;
  v50 = *(v5 + 8);
  v170 = v5 + 8;
  v174 = v50;
  v50(v46 + v49, v4);
  v51 = qword_1009360A8;
  v52 = v47;
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = sub_100006654(v53, qword_1009463C0);
  v55 = v52;
  v56 = v48;
  v175 = v54;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  v59 = os_log_type_enabled(v57, v58);
  v60 = &selRef_setPublicLinkLastModifiedDate_;
  v171 = v56;
  v172 = v36;
  v169 = v20;
  v177 = v55;
  if (v59)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v181[0] = swift_slowAlloc();
    *v61 = 138543874;
    v63 = [v177 objectID];
    *(v61 + 4) = v63;
    *v62 = v63;
    *(v61 + 12) = 2082;
    if ([v177 isSnooze])
    {
      v64 = 89;
    }

    else
    {
      v64 = 78;
    }

    v65 = sub_10000668C(v64, 0xE100000000000000, v181);
    0xE100000000000000, v66, v67, v68, v69, v70, v71, v72;
    *(v61 + 14) = v65;
    *(v61 + 22) = 2082;
    if ([v56 isRecurrent])
    {
      v73 = 89;
    }

    else
    {
      v73 = 78;
    }

    v74 = sub_10000668C(v73, 0xE100000000000000, v181);
    0xE100000000000000, v75, v76, v77, v78, v79, v80, v81;
    *(v61 + 24) = v74;
    _os_log_impl(&_mh_execute_header, v57, v58, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore alarm {alarmID: %{public}@ isSnooze: %{public}s isRecurring: %{public}s}", v61, 0x20u);
    sub_1000050A4(v62, &unk_100938E70, &unk_100797230);
    v55 = v177;

    swift_arrayDestroy();
    v60 = &selRef_setPublicLinkLastModifiedDate_;

    v36 = v172;
  }

  v82 = *(v178 + 56);
  v82(v36, 1, 1, v4);
  if ([v55 v60[133]])
  {
    v83 = &unk_100938850;
    v84 = qword_100795AE0;
    v85 = v36;
LABEL_17:
    sub_1000050A4(v85, v83, v84);
    goto LABEL_18;
  }

  v184 = [v55 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
    memset(v179, 0, sizeof(v179));
    v180 = 0;
    v83 = &qword_10093A718;
    v84 = &qword_100797B90;
    v85 = v179;
    goto LABEL_17;
  }

  sub_100054B6C(v179, v181);
  v86 = v182;
  v87 = v183;
  sub_10000F61C(v181, v182);
  v88 = v161;
  (*(v87 + 24))(v171, v173, v86, v87);
  sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
  if ((*(v178 + 48))(v88, 1, v4) == 1)
  {
    sub_1000050A4(v88, &unk_100938850, qword_100795AE0);
    sub_10000607C(v181);
    v55 = v177;
LABEL_18:
    v89 = v164;
    sub_100010364(v164, v46, &unk_1009464C0, &qword_10079D360);

    v90 = v46 + *(v176 + 48);
    v161 = *(v178 + 32);
    v161(v36, v90, v4);
    v82(v36, 0, 1, v4);
    v91 = v89;
    v92 = v163;
    sub_100010364(v91, v163, &unk_1009464C0, &qword_10079D360);
    v93 = v55;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138543618;
      v98 = [v93 objectID];
      *(v96 + 4) = v98;
      *v97 = v98;
      *(v96 + 12) = 2114;
      sub_100010364(v92, v46, &unk_1009464C0, &qword_10079D360);

      v99 = v92;
      v100 = *(v176 + 48);
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_1000050A4(v99, &unk_1009464C0, &qword_10079D360);
      v174(v46 + v100, v4);
      *(v96 + 14) = isa;
      v97[1] = isa;
      _os_log_impl(&_mh_execute_header, v94, v95, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore is using default fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@}", v96, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v36 = v172;

      v55 = v177;
    }

    else
    {

      sub_1000050A4(v92, &unk_1009464C0, &qword_10079D360);
    }

    v102 = v169;
    v103 = v166;
    goto LABEL_22;
  }

  v133 = v178;
  v134 = v160;
  v161 = *(v178 + 32);
  v161(v160, v88, v4);
  v135 = *(v133 + 16);
  v135(v36, v134, v4);
  v82(v36, 0, 1, v4);
  v136 = v157;
  sub_100010364(v164, v157, &unk_1009464C0, &qword_10079D360);
  v137 = v158;
  v135(v158, v134, v4);
  v55 = v177;
  v138 = v177;
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = v136;
    v143 = swift_slowAlloc();
    *v141 = 138543874;
    v144 = [v138 objectID];
    *(v141 + 4) = v144;
    *v143 = v144;
    *(v141 + 12) = 2114;
    sub_100010364(v142, v46, &unk_1009464C0, &qword_10079D360);

    v145 = v4;
    v146 = *(v176 + 48);
    v147 = Date._bridgeToObjectiveC()().super.isa;
    sub_1000050A4(v142, &unk_1009464C0, &qword_10079D360);
    v148 = v46 + v146;
    v4 = v145;
    v149 = v145;
    v150 = v174;
    v174(v148, v149);
    *(v141 + 14) = v147;
    v143[1] = v147;
    *(v141 + 22) = 2114;
    v151 = v158;
    v152 = Date._bridgeToObjectiveC()().super.isa;
    v150(v151, v4);
    *(v141 + 24) = v152;
    v143[2] = v152;
    _os_log_impl(&_mh_execute_header, v139, v140, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore is calculating fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@ previousFireDate: %{public}@}", v141, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v55 = v177;
  }

  else
  {

    v150 = v174;
    v174(v137, v4);
    sub_1000050A4(v136, &unk_1009464C0, &qword_10079D360);
  }

  v102 = v169;
  v103 = v166;
  v150(v160, v4);
  sub_10000607C(v181);
  v36 = v172;
LABEL_22:
  v104 = v165;
  sub_100010364(v36, v165, &unk_100938850, qword_100795AE0);
  if ((*(v178 + 48))(v104, 1, v4) == 1)
  {
    sub_1000050A4(v104, &unk_100938850, qword_100795AE0);
    goto LABEL_26;
  }

  v161(v102, v104, v4);
  sub_10041219C(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v174(v102, v4);
    v55 = v177;
LABEL_26:
    v105 = v162;
    (*(v178 + 16))(v162, v173, v4);
    v106 = v55;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v109 = 138543618;
      v111 = [v106 objectID];
      *(v109 + 4) = v111;
      *v110 = v111;
      *(v109 + 12) = 2114;
      v112 = Date._bridgeToObjectiveC()().super.isa;
      v174(v105, v4);
      *(v109 + 14) = v112;
      v110[1] = v112;
      _os_log_impl(&_mh_execute_header, v107, v108, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore fireDate is later than now for alarm. Skipping {alarmID: %{public}@ nowDate: %{public}@}", v109, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v36 = v172;
    }

    else
    {

      v174(v105, v4);
    }

LABEL_29:
    sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
    return (*(v167 + 56))(v168, 1, 1, v176);
  }

  v114 = v177;
  v115 = [v177 acknowledgedDate];
  if (v115)
  {
    v116 = v159;
    v117 = v115;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (static Date.< infix(_:_:)())
    {
      v118 = *(v178 + 16);
      v119 = v156;
      v118(v156, v102, v4);
      v118(v103, v116, v4);
      v120 = v177;
      v121 = Logger.logObject.getter();
      v122 = v103;
      v123 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v121, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *v124 = 138543874;
        v126 = [v120 objectID];
        *(v124 + 4) = v126;
        *v125 = v126;
        *(v124 + 12) = 2114;
        LODWORD(v178) = v123;
        v127 = v122;
        v128 = Date._bridgeToObjectiveC()().super.isa;
        v129 = v119;
        v130 = v121;
        v131 = v174;
        v174(v129, v4);
        *(v124 + 14) = v128;
        v125[1] = v128;
        *(v124 + 22) = 2114;
        v132 = Date._bridgeToObjectiveC()().super.isa;
        v131(v127, v4);
        *(v124 + 24) = v132;
        v125[2] = v132;
        _os_log_impl(&_mh_execute_header, v130, v178, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore fireDate is earlier than ackDate for alarm. Skipping {alarmID: %{public}@ finalFireDate: %{public}@ ackDate: %{public}@}", v124, 0x20u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
        v36 = v172;

        v102 = v169;
      }

      else
      {

        v131 = v174;
        v174(v122, v4);
        v131(v119, v4);
      }

      v131(v159, v4);
      v131(v102, v4);
      goto LABEL_29;
    }

    v114 = v177;

    v174(v116, v4);
  }

  else
  {
  }

  sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
  v153 = v176;
  v154 = *(v176 + 48);
  v155 = v168;
  *v168 = v171;
  v155[1] = v114;
  v161((v155 + v154), v102, v4);
  return (*(v167 + 56))(v155, 0, 1, v153);
}

void sub_10040C4C8(uint64_t a1@<X1>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  __chkstk_darwin(v5 - 8, v6);
  v118 = (&v107 - v7);
  v117 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v113 = *(v117 - 8);
  __chkstk_darwin(v117, v8);
  v116 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v112 = &v107 - v12;
  v119 = a1;
  v111 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a1 + 24)];
  v13 = sub_10029BD74(3, 160);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  v110 = v13;
  [v15 setPredicate:v13];
  v121 = _swiftEmptySetSingleton;

  sub_1003928B4(v17);
  inited, v18, v19, v20, v21, v22, v23, v24;
  v25 = v121;
  v26 = sub_1003FE084(v121, &qword_1009464E0, &unk_1007A3960, &qword_1009464E8, &unk_1007A86E0);
  v25, v27, v28, v29, v30, v31, v32, v33;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v26, v35, v36, v37, v38, v39, v40, v41;
  [v15 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = [objc_opt_self() daemonUserDefaults];
  LOBYTE(v26) = [v42 disableAlarmEngineDataSourcePrefetching];

  if ((v26 & 1) == 0)
  {
    v43 = Array._bridgeToObjectiveC()().super.isa;
    [v15 setRelationshipKeyPathsForPrefetching:v43];
  }

  v44 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    v46 = v110;
    v45 = v111;
LABEL_5:

    return;
  }

  v47 = v44;
  v120 = 0;
  v121 = &_swiftEmptyArrayStorage;
  v107 = a2;
  if (v44 >> 62)
  {
LABEL_50:
    v115 = v47 & 0xFFFFFFFFFFFFFF8;
    v48 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v115 = v44 & 0xFFFFFFFFFFFFFF8;
    v48 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v109 = v15;
  v49 = v47 & 0xC000000000000001;
  if (!v48)
  {
    v114 = &_swiftEmptyArrayStorage;
    v15 = v115;
    goto LABEL_27;
  }

  v50 = 0;
  v114 = &_swiftEmptyArrayStorage;
  v15 = v115;
  do
  {
    v51 = v50;
    while (1)
    {
      if (v49)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v51 >= v15[2])
        {
          goto LABEL_47;
        }

        v52 = *(v47 + 8 * v51 + 32);
      }

      v53 = v52;
      v50 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v54 = [v52 alarm];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 reminder];

        if (v56)
        {
          break;
        }
      }

LABEL_12:
      ++v51;
      if (v50 == v48)
      {
        goto LABEL_27;
      }
    }

    v57 = [v56 remObjectID];

    if (!v57)
    {
      goto LABEL_12;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v115;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v114 = v121;
  }

  while (v50 != v48);
LABEL_27:
  v58 = objc_allocWithZone(REMRemindersDataView);
  v59 = v111;
  v60 = [v58 initWithStore:v111];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v61 = v114;
  v62 = Array._bridgeToObjectiveC()().super.isa;
  v61, v63, v64, v65, v66, v67, v68, v69;
  v70 = [objc_opt_self() defaultFetchOptions];
  v121 = 0;
  v108 = v60;
  v71 = [v60 fetchRemindersWithObjectIDs:v62 fetchOptions:v70 error:&v121];

  v72 = v121;
  if (!v71)
  {
    v85 = v121;
    v47, v86, v87, v88, v89, v90, v91, v92;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v46 = v108;
    v45 = v109;
    v15 = v59;
    goto LABEL_5;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v114 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  if (v48)
  {
    v74 = 0;
    v75 = (v113 + 48);
    v76 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v49)
      {
        v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v74 >= v15[2])
        {
          goto LABEL_49;
        }

        v77 = *(v47 + 8 * v74 + 32);
      }

      v78 = v77;
      v79 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      v121 = v77;
      v80 = v118;
      v81 = v120;
      sub_10040CD40(&v121, v114, v119, v118);
      v120 = v81;

      if ((*v75)(v80, 1, v117) == 1)
      {
        sub_1000050A4(v80, &qword_100945E58, &unk_1007ACAD0);
      }

      else
      {
        v82 = v112;
        sub_10041287C(v80, v112);
        sub_10041287C(v82, v116);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_100367EA4(0, *v76->clientIdentity + 1, 1, v76);
        }

        v84 = *v76->clientIdentity;
        v83 = *&v76->clientIdentity[8];
        if (v84 >= v83 >> 1)
        {
          v76 = sub_100367EA4((v83 > 1), v84 + 1, 1, v76);
        }

        *v76->clientIdentity = v84 + 1;
        sub_10041287C(v116, v76 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v84);
      }

      ++v74;
      v15 = v115;
      if (v79 == v48)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v76 = &_swiftEmptyArrayStorage;
LABEL_45:

  v47, v93, v94, v95, v96, v97, v98, v99;
  v114, v100, v101, v102, v103, v104, v105, v106;

  *v107 = v76;
}

uint64_t sub_10040CD40@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v94 = a3;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v95 = &v86 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 1);
  *&v14 = __chkstk_darwin(v11, v13).n128_u64[0];
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [*a1 alarm];
  if (!v18)
  {
    goto LABEL_46;
  }

  v19 = v18;
  v20 = [v18 reminder];
  if (!v20)
  {

LABEL_46:
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100006654(v78, qword_1009463C0);
    v79 = v17;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      *(v82 + 4) = v79;
      *v83 = v79;
      v84 = v79;
      _os_log_impl(&_mh_execute_header, v80, v81, "TimeDataSourceAlarms: Failed to get REMReminder, REMAlarm or triggerEvent from cdTrigger -- skipping {cdTrigger: %@}", v82, 0xCu);
      sub_1000050A4(v83, &unk_100938E70, &unk_100797230);
    }

    v85 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    return (*(*(v85 - 8) + 56))(a4, 1, 1, v85);
  }

  v93 = v17;
  v21 = v20;
  v22 = [v20 remObjectID];

  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = sub_100353844(v22, a2);
  if (!v23)
  {

LABEL_45:
    v17 = v93;
    goto LABEL_46;
  }

  v24 = v23;
  v25 = [v23 alarms];
  if (!v25)
  {

LABEL_25:
    goto LABEL_45;
  }

  v26 = v25;
  v92 = v24;
  v89 = v22;
  v87 = v12;
  v86 = v16;
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v90 = a4;
  v91 = v4;
  v88 = v11;
  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_44:

    v27, v71, v72, v73, v74, v75, v76, v77;
    a4 = v90;
    goto LABEL_45;
  }

LABEL_8:
  v29 = 0;
  v96 = v19;
  v97 = (v27 & 0xC000000000000001);
  while (1)
  {
    if (v97)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    a4 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = [v30 remObjectID];
    v32 = [v19 remObjectID];
    v40 = v32;
    v22 = v31;
    if (!v11)
    {
      if (!v32)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }

    if (v32)
    {
      break;
    }

    v40 = v11;
LABEL_10:

LABEL_11:
    ++v29;
    v19 = v96;
    if (a4 == v28)
    {
      goto LABEL_44;
    }
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v41 = static NSObject.== infix(_:_:)();

  if ((v41 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v27, v33, v34, v35, v36, v37, v38, v39;
  v42 = v22;
  v103 = [v22 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  v43 = swift_dynamicCast();
  v17 = v93;
  if ((v43 & 1) == 0)
  {

    v99 = 0;
    memset(v98, 0, sizeof(v98));
    sub_1000050A4(v98, &qword_10093A718, &qword_100797B90);
    a4 = v90;
    goto LABEL_46;
  }

  v97 = v42;
  sub_100054B6C(v98, v100);
  v44 = v101;
  v45 = v102;
  sub_10000F61C(v100, v101);
  v46 = v95;
  v47 = v92;
  (*(v45 + 8))(v92, v44, v45);
  v48 = v87;
  v49 = v88;
  v50 = (*(v87 + 48))(v46, 1, v88);
  a4 = v90;
  if (v50 == 1)
  {

    sub_1000050A4(v46, &unk_100938850, qword_100795AE0);
    sub_10000607C(v100);
    goto LABEL_46;
  }

  v51 = v46;
  v52 = *(v48 + 32);
  v22 = v86;
  v52(v86, v51, v49);
  v53 = [v47 assignmentContext];
  v54 = [v53 currentAssignment];

  if (!v54 || (v54, v55 = *(v94 + 40), v56 = v55, LOBYTE(v55) = sub_1005815C8(v55), v56, v49 = v88, (v55 & 1) != 0) || [v47 prefersUrgentPresentationStyleForDateAlarms])
  {

    v57 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    v58 = *(v57 + 48);
    v59 = v97;
    *a4 = v47;
    a4[1] = v59;
    v52(a4 + v58, v22, v49);
    (*(*(v57 - 8) + 56))(a4, 0, 1, v57);
    return sub_10000607C(v100);
  }

  if (qword_1009360A8 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_100006654(v61, qword_1009463C0);
  v11 = v92;
  v27 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138543362;
    v65 = [v11 objectID];
    *(v63 + 4) = v65;
    *v64 = v65;
    _os_log_impl(&_mh_execute_header, v27, v62, "TimeDataSourceAlarms: Fetched reminder is a non-urgent reminder assigned to another user in a shared list. Skipping {reminderID: %{public}@}", v63, 0xCu);
    sub_1000050A4(v64, &unk_100938E70, &unk_100797230);

    v66 = v11;
    v67 = v96;
    v68 = v97;
    v69 = v89;
    goto LABEL_42;
  }

LABEL_41:
  v66 = v27;
  v27 = v11;
  v68 = v89;
  v69 = v96;
  v67 = v97;
LABEL_42:

  (*(v87 + 8))(v22, v88);
  v70 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  (*(*(v70 - 8) + 56))(a4, 1, 1, v70);
  return sub_10000607C(v100);
}

void sub_10040D67C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = [v6 phones];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(a2) = sub_1003D8420(v8, a2);
  v8, v9, v10, v11, v12, v13, v14, v15;
  if ((a2 & 1) == 0)
  {

    return;
  }

  v83 = a3;
  v84 = v6;
  v16 = [v6 phones];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = 0;
  v26 = *(v17 + 16);
  v27 = v17 + 40;
LABEL_3:
  v28 = (v27 + 16 * v25);
  while (v26 != v25)
  {
    if (v25 >= *(v17 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v75 = v18;
      v47 = _CocoaArrayWrapper.endIndex.getter();
      v18 = v75;
      v48 = v84;
      if (!v47)
      {
        goto LABEL_31;
      }

      goto LABEL_13;
    }

    ++v25;
    v29 = v28 + 2;
    v30 = *v28;
    v31 = objc_allocWithZone(CNPhoneNumber);

    v32 = String._bridgeToObjectiveC()();
    v30, v33, v34, v35, v36, v37, v38, v39;
    v40 = [v31 initWithStringValue:v32];

    v28 = v29;
    if (v40)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = v17 + 40;
      goto LABEL_3;
    }
  }

  v17, v18, v19, v20, v21, v22, v23, v24;
  v18 = v83;
  if (v83 >> 62)
  {
    goto LABEL_36;
  }

  v47 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v48 = v84;
  if (!v47)
  {
LABEL_31:
    &_swiftEmptyArrayStorage, v18, v41, v42, v43, v44, v45, v46;
    v66 = [v48 emails];
    v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003D8420(v67, a4);
    v67, v68, v69, v70, v71, v72, v73, v74;

    return;
  }

LABEL_13:
  v49 = v47;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v76 = v18;
    v77 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v76;
    v50 = v77;
  }

  else
  {
    v50 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = 0;
  v52 = v18 & 0xC000000000000001;
  v78 = (v18 + 32);
  v79 = v18 & 0xFFFFFFFFFFFFFF8;
  v80 = v49;
  v81 = v18 & 0xC000000000000001;
  while (v52)
  {
    v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
    v54 = v53;
    v55 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_35;
    }

    for (i = 0; v50 != i; ++i)
    {
      if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v57 = *&_swiftEmptyArrayStorage.clientIdentity[8 * i + 16];
      }

      v58 = v57;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      v59 = [v54 isLikePhoneNumber:v57];

      if (v59)
      {
        &_swiftEmptyArrayStorage, v18, v60, v61, v62, v63, v64, v65;

        return;
      }
    }

    v51 = v55;
    v52 = v81;
    v18 = v83;
    v48 = v84;
    if (v55 == v80)
    {
      goto LABEL_31;
    }
  }

  if (v51 < *(v79 + 16))
  {
    v53 = *&v78[8 * v51];
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_10040DA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v145 = a2;
  v143 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v139 = &v132 - v11;
  __chkstk_darwin(v12, v13);
  v133 = &v132 - v14;
  __chkstk_darwin(v15, v16);
  v135 = &v132 - v17;
  v18 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v18 - 8, v19);
  v138 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v136 = (&v132 - v23);
  __chkstk_darwin(v24, v25);
  v150 = &v132 - v26;
  v27 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v142 = *(v27 - 8);
  __chkstk_darwin(v27, v28);
  v137 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v132 = &v132 - v32;
  __chkstk_darwin(v33, v34);
  v36 = (&v132 - v35);
  sub_100010364(a1, &v132 - v35, &unk_1009464C0, &qword_10079D360);
  v38 = *v36;
  v37 = v36[1];
  v151 = v27;
  v39 = *(v27 + 48);
  v149 = v5;
  v40 = *(v5 + 8);
  v144 = v4;
  v146 = v40;
  v147 = v5 + 8;
  v40(v36 + v39, v4);
  v41 = qword_1009360A8;
  v42 = v37;
  v43 = v38;
  if (v41 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = sub_100006654(v44, qword_1009463C0);
  v46 = v42;
  v47 = v43;
  v148 = v45;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v50 = os_log_type_enabled(v48, v49);
  v141 = v8;
  v152 = v46;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v134 = a1;
    v52 = v51;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v155[0] = v54;
    *v52 = 138543618;
    v55 = [v46 objectID];
    *(v52 + 4) = v55;
    *v53 = v55;
    *(v52 + 12) = 2082;
    if ([v47 isRecurrent])
    {
      v56 = 89;
    }

    else
    {
      v56 = 78;
    }

    v57 = sub_10000668C(v56, 0xE100000000000000, v155);
    0xE100000000000000, v58, v59, v60, v61, v62, v63, v64;
    *(v52 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v48, v49, "RDDueDateDeltaAlarmProducerDataSource: nextProducerDueDateDeltaAlarmFiringAfter alarm {alarmID: %{public}@ isRecurring: %{public}s}", v52, 0x16u);
    sub_1000050A4(v53, &unk_100938E70, &unk_100797230);

    sub_10000607C(v54);

    a1 = v134;
  }

  v66 = v149;
  v65 = v150;
  v67 = *(v149 + 56);
  v68 = v144;
  v67(v150, 1, 1, v144);
  v69 = [v47 isOverdue];
  v140 = v47;
  if (!v69)
  {
    sub_1000050A4(v65, &unk_100938850, qword_100795AE0);
    v76 = v65;
    goto LABEL_14;
  }

  v158 = [v152 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v76 = v150;
    sub_1000050A4(v150, &unk_100938850, qword_100795AE0);
    memset(v153, 0, sizeof(v153));
    v154 = 0;
    sub_1000050A4(v153, &qword_10093A718, &qword_100797B90);
    goto LABEL_14;
  }

  sub_100054B6C(v153, v155);
  v70 = v156;
  v71 = v157;
  sub_10000F61C(v155, v156);
  v72 = *(v71 + 16);
  v73 = v70;
  v74 = v136;
  v75 = v71;
  v66 = v149;
  v72(v47, v145, v73, v75);
  v76 = v150;
  sub_1000050A4(v150, &unk_100938850, qword_100795AE0);
  if ((*(v66 + 48))(v74, 1, v68) == 1)
  {
    sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
    sub_10000607C(v155);
LABEL_14:
    sub_100010364(a1, v36, &unk_1009464C0, &qword_10079D360);

    v77 = v36 + *(v151 + 48);
    v136 = *(v66 + 32);
    v136(v76, v77, v68);
    v67(v76, 0, 1, v68);
    v78 = v137;
    sub_100010364(a1, v137, &unk_1009464C0, &qword_10079D360);
    v79 = v152;
    v80 = Logger.logObject.getter();
    v81 = v68;
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138543618;
      v85 = [v79 objectID];
      *(v83 + 4) = v85;
      *v84 = v85;
      *(v83 + 12) = 2114;
      sub_100010364(v78, v36, &unk_1009464C0, &qword_10079D360);

      v86 = *(v151 + 48);
      v87 = v81;
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_1000050A4(v78, &unk_1009464C0, &qword_10079D360);
      v89 = v36 + v86;
      v76 = v150;
      v146(v89, v87);
      *(v83 + 14) = isa;
      v84[1] = isa;
      _os_log_impl(&_mh_execute_header, v80, v82, "RDDueDateDeltaAlarmProducerDataSource: nextProducerDueDateDeltaAlarmFiringAfter is using default fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@}", v83, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      v66 = v149;
    }

    else
    {

      sub_1000050A4(v78, &unk_1009464C0, &qword_10079D360);
      v87 = v81;
    }

    v90 = v141;
    v91 = v139;
    goto LABEL_18;
  }

  v112 = *(v66 + 32);
  v134 = a1;
  v113 = v135;
  v136 = v112;
  v112(v135, v74, v68);
  v114 = *(v66 + 16);
  v114(v76, v113, v68);
  v67(v76, 0, 1, v68);
  v115 = v132;
  sub_100010364(v134, v132, &unk_1009464C0, &qword_10079D360);
  v116 = v133;
  v114(v133, v113, v68);
  v117 = v68;
  v118 = v152;
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v121 = 138543874;
    v123 = [v118 objectID];
    *(v121 + 4) = v123;
    *v122 = v123;
    *(v121 + 12) = 2114;
    sub_100010364(v115, v36, &unk_1009464C0, &qword_10079D360);

    v124 = v116;
    v125 = *(v151 + 48);
    LODWORD(v137) = v120;
    v126 = Date._bridgeToObjectiveC()().super.isa;
    sub_1000050A4(v115, &unk_1009464C0, &qword_10079D360);
    v127 = v36 + v125;
    v128 = v144;
    v129 = v146;
    v146(v127, v144);
    *(v121 + 14) = v126;
    v122[1] = v126;
    *(v121 + 22) = 2114;
    v130 = Date._bridgeToObjectiveC()().super.isa;
    v129(v124, v128);
    *(v121 + 24) = v130;
    v122[2] = v130;
    v131 = v129;
    _os_log_impl(&_mh_execute_header, v119, v137, "RDDueDateDeltaAlarmProducerDataSource: nextProducerDueDateDeltaAlarmFiringAfter is calculating fireDate for overdue recurring alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@ nextFireDate: %{public}@}", v121, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v66 = v149;

    v87 = v128;
  }

  else
  {

    v131 = v146;
    v146(v116, v117);
    sub_1000050A4(v115, &unk_1009464C0, &qword_10079D360);
    v87 = v117;
  }

  v90 = v141;
  v91 = v139;
  v131(v135, v87);
  sub_10000607C(v155);
LABEL_18:
  v92 = v138;
  sub_100010364(v76, v138, &unk_100938850, qword_100795AE0);
  if ((*(v66 + 48))(v92, 1, v87) == 1)
  {
    sub_1000050A4(v92, &unk_100938850, qword_100795AE0);
  }

  else
  {
    v93 = v92;
    v94 = v136;
    v136(v91, v93, v87);
    if (static Date.> infix(_:_:)())
    {
      sub_1000050A4(v76, &unk_100938850, qword_100795AE0);
      v95 = v140;

      v96 = v152;
      v97 = v151;
      v98 = *(v151 + 48);
      v99 = v94;
      v100 = v143;
      *v143 = v95;
      *(v100 + 1) = v96;
      v99(&v100[v98], v91, v87);
      return (*(v142 + 56))(v100, 0, 1, v97);
    }

    v146(v91, v87);
  }

  v102 = v152;
  (*(v66 + 16))(v90, v145, v87);
  v103 = v102;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v106 = 138543618;
    v108 = [v103 objectID];
    *(v106 + 4) = v108;
    *v107 = v108;
    *(v106 + 12) = 2114;
    v109 = Date._bridgeToObjectiveC()().super.isa;
    v146(v90, v87);
    *(v106 + 14) = v109;
    v107[1] = v109;
    _os_log_impl(&_mh_execute_header, v104, v105, "RDDueDateDeltaAlarmProducerDataSource: nextProducerDueDateDeltaAlarmFiringAfter fireDate is earlier than now for alarm. Skipping {alarmID: %{public}@ nowDate: %{public}@}", v106, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v110 = v140;
  }

  else
  {

    v111 = v140;
    v146(v90, v87);
  }

  sub_1000050A4(v76, &unk_100938850, qword_100795AE0);
  return (*(v142 + 56))(v143, 1, 1, v151);
}

uint64_t sub_10040E92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v267 = a2;
  v262 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v258 = &v245 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v250 = &v245 - v10;
  __chkstk_darwin(v11, v12);
  v247 = &v245 - v13;
  __chkstk_darwin(v14, v15);
  v246 = &v245 - v16;
  __chkstk_darwin(v17, v18);
  v251 = &v245 - v19;
  __chkstk_darwin(v20, v21);
  v23 = &v245 - v22;
  __chkstk_darwin(v24, v25);
  v248 = &v245 - v26;
  __chkstk_darwin(v27, v28);
  v252 = &v245 - v29;
  __chkstk_darwin(v30, v31);
  v263 = &v245 - v32;
  __chkstk_darwin(v33, v34);
  v254 = &v245 - v35;
  __chkstk_darwin(v36, v37);
  v255 = (&v245 - v38);
  v39 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v39 - 8, v40);
  v260 = &v245 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42, v43);
  v256 = (&v245 - v44);
  __chkstk_darwin(v45, v46);
  v48 = &v245 - v47;
  v49 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v261 = *(v49 - 8);
  __chkstk_darwin(v49, v50);
  v257 = &v245 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52, v53);
  v253 = &v245 - v54;
  __chkstk_darwin(v55, v56);
  v58 = (&v245 - v57);
  v259 = a1;
  sub_100010364(a1, &v245 - v57, &unk_1009464C0, &qword_10079D360);
  v60 = *v58;
  v59 = v58[1];
  v272 = v49;
  v273 = v4;
  v61 = *(v49 + 48);
  v270 = v5;
  v62 = v5[1];
  v264 = v5 + 1;
  v62(v58 + v61, v4);
  v63 = qword_1009360A8;
  v64 = v59;
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  v66 = sub_100006654(v65, qword_1009463C0);
  v67 = v64;
  v68 = v60;
  v268 = v66;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  v71 = os_log_type_enabled(v69, v70);
  v269 = v48;
  v265 = v62;
  v266 = v68;
  v249 = v23;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v68;
    v75 = swift_slowAlloc();
    v276 = v75;
    *v72 = 138543618;
    v76 = [v67 objectID];
    *(v72 + 4) = v76;
    *v73 = v76;
    *(v72 + 12) = 2082;
    if ([v74 isRecurrent])
    {
      v77 = 89;
    }

    else
    {
      v77 = 78;
    }

    v78 = sub_10000668C(v77, 0xE100000000000000, &v276);
    0xE100000000000000, v79, v80, v81, v82, v83, v84, v85;
    *(v72 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v69, v70, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore alarm {alarmID: %{public}@ isRecurring: %{public}s}", v72, 0x16u);
    sub_1000050A4(v73, &unk_100938E70, &unk_100797230);
    v48 = v269;

    sub_10000607C(v75);

    v86 = v272;
  }

  else
  {

    v86 = v272;
  }

  v87 = v270;
  v88 = v270[7];
  v88(v48, 1, 1, v273);
  v271 = v67;
  v279 = [v67 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v255 = v88;
    sub_1000050A4(v48, &unk_100938850, qword_100795AE0);
    memset(v274, 0, sizeof(v274));
    v275 = 0;
    sub_1000050A4(v274, &qword_10093A718, &qword_100797B90);
LABEL_13:
    v93 = v259;
    sub_100010364(v259, v58, &unk_1009464C0, &qword_10079D360);

    v94 = v58 + *(v86 + 48);
    v95 = v273;
    v256 = v87[4];
    v256(v48, v94, v273);
    v255(v48, 0, 1, v95);
    v96 = v257;
    sub_100010364(v93, v257, &unk_1009464C0, &qword_10079D360);
    v97 = v271;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138543618;
      v102 = [v97 objectID];
      *(v100 + 4) = v102;
      *v101 = v102;
      *(v100 + 12) = 2114;
      sub_100010364(v96, v58, &unk_1009464C0, &qword_10079D360);

      v103 = v96;
      v104 = *(v272 + 48);
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_1000050A4(v103, &unk_1009464C0, &qword_10079D360);
      v106 = v58 + v104;
      v107 = v269;
      v108 = v272;
      v109 = v265;
      v265(v106, v273);
      *(v100 + 14) = isa;
      v101[1] = isa;
      _os_log_impl(&_mh_execute_header, v98, v99, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore is using default fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@}", v100, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      v110 = v108;

      v111 = v263;
      v112 = v270;
      v113 = v260;
    }

    else
    {

      sub_1000050A4(v96, &unk_1009464C0, &qword_10079D360);
      v111 = v263;
      v109 = v265;
      v112 = v270;
      v107 = v48;
      v113 = v260;
      v110 = v272;
    }

    goto LABEL_20;
  }

  sub_100054B6C(v274, &v276);
  v89 = v277;
  v90 = v278;
  sub_10000F61C(&v276, v277);
  v91 = v89;
  v92 = v256;
  (*(v90 + 24))(v266, v267, v91, v90);
  sub_1000050A4(v48, &unk_100938850, qword_100795AE0);
  if ((v87[6])(v92, 1, v273) == 1)
  {
    v255 = v88;
    sub_1000050A4(v92, &unk_100938850, qword_100795AE0);
    sub_10000607C(&v276);
    v86 = v272;
    goto LABEL_13;
  }

  v114 = v255;
  v115 = v273;
  v256 = v87[4];
  v256(v255, v92, v273);
  v116 = v87[2];
  v116(v48, v114, v115);
  v88(v48, 0, 1, v115);
  v117 = v253;
  sub_100010364(v259, v253, &unk_1009464C0, &qword_10079D360);
  v118 = v254;
  v116(v254, v114, v115);
  v119 = v271;
  v120 = Logger.logObject.getter();
  v121 = v115;
  v122 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v120, v122))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    LODWORD(v259) = v122;
    v125 = v124;
    *v123 = 138543874;
    v126 = [v119 objectID];
    *(v123 + 4) = v126;
    *v125 = v126;
    *(v123 + 12) = 2114;
    v127 = v117;
    sub_100010364(v117, v58, &unk_1009464C0, &qword_10079D360);

    v128 = *(v272 + 48);
    v129 = Date._bridgeToObjectiveC()().super.isa;
    sub_1000050A4(v127, &unk_1009464C0, &qword_10079D360);
    v130 = v58 + v128;
    v131 = v118;
    v109 = v265;
    v265(v130, v121);
    *(v123 + 14) = v129;
    v125[1] = v129;
    *(v123 + 22) = 2114;
    v132 = Date._bridgeToObjectiveC()().super.isa;
    v109(v131, v121);
    *(v123 + 24) = v132;
    v125[2] = v132;
    _os_log_impl(&_mh_execute_header, v120, v259, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore is calculating fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@ previousFireDate: %{public}@}", v123, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v107 = v269;
    v110 = v272;

    v111 = v263;
  }

  else
  {

    v133 = v118;
    v109 = v265;
    v265(v133, v121);
    sub_1000050A4(v117, &unk_1009464C0, &qword_10079D360);
    v111 = v263;
    v110 = v272;
    v107 = v269;
  }

  v113 = v260;
  v109(v255, v273);
  sub_10000607C(&v276);
  v112 = v270;
LABEL_20:
  sub_100010364(v107, v113, &unk_100938850, qword_100795AE0);
  if ((v112[6])(v113, 1, v273) == 1)
  {
    sub_1000050A4(v113, &unk_100938850, qword_100795AE0);
LABEL_24:
    v134 = v271;
    v135 = v258;
    (v112[2])(v258, v267, v273);
    v136 = v134;
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v137, v138))
    {
      v139 = v135;
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *v140 = 138543618;
      v142 = [v136 objectID];
      *(v140 + 4) = v142;
      *v141 = v142;
      *(v140 + 12) = 2114;
      v143 = Date._bridgeToObjectiveC()().super.isa;
      v109(v139, v273);
      *(v140 + 14) = v143;
      v141[1] = v143;
      _os_log_impl(&_mh_execute_header, v137, v138, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore fireDate is later than now for alarm. Skipping {alarmID: %{public}@ nowDate: %{public}@}", v140, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {

      v109(v135, v273);
    }

    sub_1000050A4(v269, &unk_100938850, qword_100795AE0);
    v144 = *(v261 + 56);
    v145 = v262;
    v146 = 1;
    v147 = v272;
    return v144(v145, v146, 1, v147);
  }

  v256(v111, v113, v273);
  sub_10041219C(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v109 = v265;
    v265(v111, v273);
    goto LABEL_24;
  }

  v149 = v271;
  v150 = [v271 trigger];
  objc_opt_self();
  v151 = swift_dynamicCastObjCClass();
  if (!v151)
  {

LABEL_45:
    sub_1000050A4(v107, &unk_100938850, qword_100795AE0);
    v238 = *(v110 + 48);
    v239 = v262;
    *v262 = v266;
    *(v239 + 1) = v149;
    v256(&v239[v238], v111, v273);
    v144 = *(v261 + 56);
    v145 = v239;
    v146 = 0;
LABEL_46:
    v147 = v110;
    return v144(v145, v146, 1, v147);
  }

  v152 = v151;
  v153 = [v151 acknowledgedDate];
  if (v153)
  {
    v154 = v107;
    v155 = v252;
    v156 = v153;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (static Date.< infix(_:_:)())
    {
      v157 = v155;
      v158 = v270[2];
      v159 = v248;
      v160 = v111;
      v161 = v273;
      v158(v248, v160, v273);
      v162 = v249;
      v158(v249, v157, v161);
      v163 = v271;
      v164 = Logger.logObject.getter();
      v165 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v164, v165))
      {
        v166 = v162;
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        *v167 = 138543874;
        v169 = [v163 objectID];
        *(v167 + 4) = v169;
        *v168 = v169;
        *(v167 + 12) = 2114;
        v271 = v164;
        v170 = Date._bridgeToObjectiveC()().super.isa;
        v171 = v159;
        v172 = v273;
        v173 = v265;
        v265(v171, v273);
        *(v167 + 14) = v170;
        v168[1] = v170;
        *(v167 + 22) = 2114;
        v174 = v166;
        v175 = Date._bridgeToObjectiveC()().super.isa;
        v173(v174, v172);
        *(v167 + 24) = v175;
        v168[2] = v175;
        v176 = v271;
        _os_log_impl(&_mh_execute_header, v271, v165, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore fireDate is earlier than ackDate for alarm. Skipping {alarmID: %{public}@ finalFireDate: %{public}@ ackDate: %{public}@}", v167, 0x20u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        v177 = v269;
        v178 = v272;
      }

      else
      {

        v240 = v273;
        v173 = v265;
        v265(v162, v273);
        v173(v159, v240);
        v178 = v272;
        v177 = v154;
      }

      v241 = v273;
      v173(v252, v273);
      v173(v263, v241);
      sub_1000050A4(v177, &unk_100938850, qword_100795AE0);
      return (*(v261 + 56))(v262, 1, 1, v178);
    }

    v265(v155, v273);
    v107 = v154;
  }

  v179 = [v152 dueDateDelta];
  v180 = [v179 isEmpty];

  if (v180)
  {
    v181 = v250;
    (v270[2])(v250, v111, v273);
    v182 = v150;
    v183 = Logger.logObject.getter();
    v184 = v111;
    v185 = static os_log_type_t.error.getter();
    v270 = v182;

    v186 = os_log_type_enabled(v183, v185);
    v110 = v272;
    if (v186)
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v189 = v273;
      v190 = v188;
      v268 = swift_slowAlloc();
      v276 = v268;
      *v187 = 136446722;
      sub_10041219C(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v191 = dispatch thunk of CustomStringConvertible.description.getter();
      v192 = v181;
      v194 = v193;
      v195 = v189;
      v196 = v183;
      v197 = v265;
      v265(v192, v195);
      v198 = sub_10000668C(v191, v194, &v276);
      v194, v199, v200, v201, v202, v203, v204, v205;
      *(v187 + 4) = v198;
      *(v187 + 12) = 2114;
      v206 = [v152 dueDateDelta];
      *(v187 + 14) = v206;
      *v190 = v206;
      *(v187 + 22) = 2114;
      v207 = [v152 objectID];
      *(v187 + 24) = v207;
      v190[1] = v207;
      v208 = v196;
      _os_log_impl(&_mh_execute_header, v196, v185, "RDDueDateDeltaAlarmProducerDataSource: unable to calculate dueDate fireDate {finalFireDate: %{public}s, un-inverted dueDateDelta: %{public}@, triggerID: %{public}@}", v187, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v268);

      v110 = v272;

      v209 = v271;

      v197(v263, v273);
      v210 = v269;
    }

    else
    {
      v235 = v271;

      v236 = v273;
      v237 = v265;
      v265(v181, v273);
      v237(v184, v236);
      v210 = v107;
    }

    sub_1000050A4(v210, &unk_100938850, qword_100795AE0);
    v144 = *(v261 + 56);
    v145 = v262;
    v146 = 1;
    goto LABEL_46;
  }

  v211 = [v152 dueDateDelta];
  v212 = [v211 inverted];

  v213 = Date._bridgeToObjectiveC()().super.isa;
  v214 = [v212 addedTo:v213];

  v215 = v251;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v149 = v271;

    v265(v215, v273);
    v110 = v272;
    goto LABEL_45;
  }

  v216 = v270[2];
  v217 = v246;
  v218 = v111;
  v219 = v273;
  v216(v246, v218, v273);
  v220 = v247;
  v216(v247, v215, v219);
  v221 = v271;
  v222 = Logger.logObject.getter();
  v223 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v222, v223))
  {
    v224 = swift_slowAlloc();
    v225 = v217;
    v226 = swift_slowAlloc();
    *v224 = 138543874;
    v227 = [v221 objectID];
    *(v224 + 4) = v227;
    *v226 = v227;
    *(v224 + 12) = 2114;
    v271 = v222;
    v228 = Date._bridgeToObjectiveC()().super.isa;
    v229 = v273;
    LODWORD(v270) = v223;
    v230 = v220;
    v231 = v265;
    v265(v225, v273);
    *(v224 + 14) = v228;
    v226[1] = v228;
    *(v224 + 22) = 2114;
    v232 = Date._bridgeToObjectiveC()().super.isa;
    v231(v230, v229);
    *(v224 + 24) = v232;
    v226[2] = v232;
    v233 = v271;
    _os_log_impl(&_mh_execute_header, v271, v270, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerAlarmsBefore dueDate alarm notification has already past. Skipping {alarmID: %{public}@ finalFireDate: %{public}@ calculatedDueDateFireDate: %{public}@}", v224, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v215 = v251;

    v107 = v269;
    v234 = v272;
  }

  else
  {

    v242 = v220;
    v243 = v273;
    v231 = v265;
    v265(v242, v273);
    v231(v217, v243);
    v234 = v272;
  }

  v244 = v273;
  v231(v215, v273);
  v231(v263, v244);
  sub_1000050A4(v107, &unk_100938850, qword_100795AE0);
  return (*(v261 + 56))(v262, 1, 1, v234);
}

void sub_100410310(uint64_t a1@<X0>, uint64_t a2@<X1>, _TtC7remindd19RDXPCStorePerformer *a3@<X8>)
{
  v4 = v3;
  v155 = a1;
  v7 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  __chkstk_darwin(v7 - 8, v8);
  v147 = &v140 - v9;
  v150 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v146 = *(v150 - 8);
  __chkstk_darwin(v150, v10);
  v149 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v145 = &v140 - v14;
  v153 = type metadata accessor for UUID();
  v143 = *(v153 - 1);
  __chkstk_darwin(v153, v15);
  v17 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a2;
  v144 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a2 + 24)];
  v159 = &_swiftEmptyArrayStorage;
  v18 = rem_currentRuntimeVersion();
  KeyPath = swift_getKeyPath();
  sub_1003EBD48(KeyPath, v18);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v159 + 16) >= *(v159 + 24) >> 1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = sub_10000C2B0();
    v21 = sub_10075E638();
    type metadata accessor for REMCDDueDateDeltaAlert();
    v22 = [objc_allocWithZone(NSFetchRequest) init];
    v23 = [swift_getObjCClassFromMetadata() entity];
    [v22 setEntity:v23];

    [v22 setAffectedStores:0];
    [v22 setPredicate:v20];
    v159 = _swiftEmptySetSingleton;

    sub_100391890(v24);
    v21, v25, v26, v27, v28, v29, v30, v31;
    v32 = v159;
    v33 = sub_1003FE084(v159, &qword_10093F560, &qword_10079C0F0, &unk_100946500, &qword_1007A8758);
    v32, v34, v35, v36, v37, v38, v39, v40;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v33, v42, v43, v44, v45, v46, v47, v48;
    [v22 setPropertiesToFetch:isa];
    v21, v49, v50, v51, v52, v53, v54, v55;

    v56 = NSManagedObjectContext.fetch<A>(_:)();
    if (v4)
    {

      return;
    }

    v64 = v56;
    v155 = 0;
    v142 = v20;
    v65 = v56 >> 62;
    v4 = v56 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v140 = a3;
    v141 = v22;
    v154 = v64;
    if (!v4)
    {
      break;
    }

    v152 = v65;
    v159 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v66 = 0;
      v67 = v64 & 0xC000000000000001;
      v68 = v64 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        a3 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v67)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v66 >= *(v68 + 16))
          {
            goto LABEL_56;
          }

          v69 = *(v64 + 8 * v66 + 32);
        }

        v70 = v69;
        v157 = v69;
        v71 = v155;
        sub_100410D34(&v157, &v156, &v158);
        v155 = v71;
        if (v71)
        {

          v64, v111, v112, v113, v114, v115, v116, v117;

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v64 = v154;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v66;
        if (a3 == v4)
        {
          v72 = v159;
          v65 = v152;
          goto LABEL_18;
        }
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
LABEL_60:
    v98 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v147;
    if (!v98)
    {
      goto LABEL_61;
    }

LABEL_35:
    v99 = 0;
    v4 = a3 & 0xC000000000000001;
    v100 = a3 & 0xFFFFFFFFFFFFFF8;
    v101 = (v146 + 48);
    v102 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v4)
      {
        v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v99 >= *(v100 + 16))
        {
          goto LABEL_55;
        }

        v104 = *&a3->clientIdentity[8 * v99 + 16];
      }

      v105 = v104;
      a3 = (v99 + 1);
      if (__OFADD__(v99, 1))
      {
        break;
      }

      v159 = v104;
      v106 = v155;
      sub_1004110C4(&v159, v154, v151, v17);
      v155 = v106;

      if ((*v101)(v17, 1, v150) == 1)
      {
        sub_1000050A4(v17, &qword_100945E58, &unk_1007ACAD0);
      }

      else
      {
        v107 = v17;
        v108 = v145;
        sub_10041287C(v107, v145);
        sub_10041287C(v108, v149);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_100367EA4(0, *v102->clientIdentity + 1, 1, v102);
        }

        v110 = *v102->clientIdentity;
        v109 = *&v102->clientIdentity[8];
        if (v110 >= v109 >> 1)
        {
          v102 = sub_100367EA4((v109 > 1), v110 + 1, 1, v102);
        }

        *v102->clientIdentity = v110 + 1;
        sub_10041287C(v149, v102 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v110);
        v17 = v147;
      }

      ++v99;
      v103 = a3 == v98;
      a3 = v148;
      if (v103)
      {
        goto LABEL_62;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v72 = &_swiftEmptyArrayStorage;
LABEL_18:
  v148 = v72;
  v159 = &_swiftEmptyArrayStorage;
  v152 = v64 & 0xFFFFFFFFFFFFFF8;
  if (v65)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  a3 = (v64 & 0xC000000000000001);
  storeController = v143->storeController;
  v143 = &_swiftEmptyArrayStorage;
  while (v73 != v4)
  {
    if (a3)
    {
      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v152 + 16))
      {
        goto LABEL_52;
      }

      v75 = *&v154->clientIdentity[8 * v4 + 16];
    }

    v76 = v75;
    v77 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v78 = objc_opt_self();
    v79 = [v76 reminderIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = UUID._bridgeToObjectiveC()().super.isa;
    (*storeController)(v17, v153);
    v81 = [v78 objectIDWithUUID:v80];

    ++v4;
    if (v81)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v143 = v159;
      v4 = v77;
    }
  }

  v154, v57, v58, v59, v60, v61, v62, v63;
  v82 = objc_allocWithZone(REMRemindersDataView);
  v83 = v144;
  v84 = [v82 initWithStore:v144];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v85 = v143;
  v86 = Array._bridgeToObjectiveC()().super.isa;
  v85, v87, v88, v89, v90, v91, v92, v93;
  v94 = [objc_opt_self() defaultFetchOptions];
  v159 = 0;
  v153 = v84;
  v95 = [v84 fetchRemindersWithObjectIDs:v86 fetchOptions:v94 error:&v159];

  v96 = v159;
  if (!v95)
  {
    v118 = v159;
    v148, v119, v120, v121, v122, v123, v124, v125;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v154 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;

  a3 = v148;
  if (v148 >> 62)
  {
    goto LABEL_60;
  }

  v98 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v147;
  if (v98)
  {
    goto LABEL_35;
  }

LABEL_61:
  v102 = &_swiftEmptyArrayStorage;
LABEL_62:

  a3, v126, v127, v128, v129, v130, v131, v132;
  v154, v133, v134, v135, v136, v137, v138, v139;

  v140->super.isa = v102;
}

void sub_100410D34(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v53 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [*a1 account];
  v60 = v11;
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v58, v12, v13, v14, v15, v16, v17, v18;
  v57 = 0xD000000000000025;
  v58 = 0x80000001007F8150;
  v54 = v10;
  v19 = [v10 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10041219C(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v20._object;
  String.append(_:)(v20);
  object, v22, v23, v24, v25, v26, v27, v28;
  v29 = *(v5 + 8);
  v29(v9, v4);
  v30._countAndFlagsBits = 8317;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31 = v58;
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  v32 = v56;
  Optional.tryUnwrap(_:file:line:)();
  v33 = v32;
  v31, v34, v35, v36, v37, v38, v39, v40;

  if (!v32)
  {
    v41 = v59;
    v42 = objc_opt_self();
    v43 = [v54 reminderIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v29(v9, v4);
    v45 = [v42 objectIDWithUUID:isa];

    v57 = 0;
    v46 = [v41 remObjectIDWithError:&v57];
    if (v46)
    {
      v47 = v46;
      v48 = v57;
      v49 = v45;
      v51 = sub_10075DC6C(v54);

      *v53 = v51;
      return;
    }

    v50 = v57;
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *v55 = v33;
}

uint64_t sub_1004110C4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v83 = a3;
  v85 = a4;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v80 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v16, v17).n128_u64[0];
  v20 = &v80 - v19;
  v21 = *a1;
  v22 = [*a1 reminderID];
  v23 = sub_100353844(v22, a2);

  if (!v23)
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_1009463C0);
    v34 = v21;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "DueDateDeltaDataSourceAlarms: Failed to get REMReminder from remEarlyAlert -- skipping {remEarlyAlert: %@}", v37, 0xCu);
      sub_1000050A4(v38, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_25;
  }

  v82 = v12;
  v84 = v4;
  v24 = [v21 dueDateDelta];
  v25 = [v24 isEmpty];

  if (v25)
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_1009463C0);
    v27 = v21;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "DueDateDeltaDataSourceAlarms: Invalid dueDateDelta of 0 for remEarlyAlert -- skipping {remEarlyAlert: %@}", v30, 0xCu);
      sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
    }

LABEL_25:
    v58 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    return (*(*(v58 - 8) + 56))(v85, 1, 1, v58);
  }

  v40 = [v21 dueDateDelta];
  v41 = [v21 acknowledgedDate];
  if (v41)
  {
    v42 = v41;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v43.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v44 = v82;
    (*(v82 + 8))(v20, v11);
  }

  else
  {
    v43.super.isa = 0;
    v44 = v82;
  }

  v45 = [objc_allocWithZone(REMAlarmDueDateDeltaAlertTrigger) initWithDueDateDelta:v40 acknowledgedDate:v43.super.isa];

  v46 = objc_allocWithZone(REMAlarm);
  v81 = v45;
  v47 = [v46 initWithTrigger:v45];
  v91 = [v47 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    sub_1000050A4(v86, &qword_10093A718, &qword_100797B90);
    goto LABEL_20;
  }

  v80 = v47;
  sub_100054B6C(v86, v88);
  v48 = v89;
  v49 = v90;
  sub_10000F61C(v88, v89);
  (*(v49 + 8))(v23, v48, v49);
  if ((*(v44 + 48))(v10, 1, v11) == 1)
  {
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    sub_10000607C(v88);
    v47 = v80;
LABEL_20:
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100006654(v50, qword_1009463C0);
    v51 = v21;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v47;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v51;
      *v56 = v51;
      v57 = v51;
      _os_log_impl(&_mh_execute_header, v52, v53, "DueDateDeltaDataSourceAlarms: Failed to get fireDate from remEarlyAlert -- skipping {remEarlyAlert: %@}", v55, 0xCu);
      sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

      v47 = v54;
    }

    goto LABEL_25;
  }

  v60 = *(v44 + 32);
  v60(v15, v10, v11);
  v61 = [v23 assignmentContext];
  v62 = [v61 currentAssignment];

  if (v62 && (v62, v63 = *(v83 + 40), v64 = v63, LOBYTE(v63) = sub_1005815C8(v63), v64, (v63 & 1) == 0))
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100006654(v69, qword_1009463C0);
    v70 = v23;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138543362;
      v75 = [v70 objectID];
      *(v73 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&_mh_execute_header, v71, v72, "Fetched reminder is not assigned to current user. Skipping {reminderID: %{public}@}", v73, 0xCu);
      sub_1000050A4(v74, &unk_100938E70, &unk_100797230);

      v77 = v80;
      v76 = v81;
      v78 = v70;
    }

    else
    {
      v76 = v71;
      v78 = v80;
      v77 = v81;
      v71 = v70;
    }

    (*(v82 + 8))(v15, v11);
    v79 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    (*(*(v79 - 8) + 56))(v85, 1, 1, v79);
    return sub_10000607C(v88);
  }

  else
  {

    v65 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    v66 = *(v65 + 48);
    v67 = v85;
    v68 = v80;
    *v85 = v23;
    *(v67 + 1) = v68;
    v60(&v67[v66], v15, v11);
    (*(*(v65 - 8) + 56))(v67, 0, 1, v65);
    return sub_10000607C(v88);
  }
}

void sub_100411B4C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      a5(0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    a5(0);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_100411DD0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_10001B270(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100411E50(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100411EA4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = ~v8;
    v4 = a1 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a1 + 64);
    v7 = a1;
  }

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  v35 = v7;
  while ((v7 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (v20 = v19, swift_unknownObjectRelease(), v38 = v20, sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr), swift_dynamicCast(), v18 = v36, v16 = v11, v17 = v6, !v36))
    {
LABEL_26:
      v7 = v35;
LABEL_27:
      sub_10001B860(v7);
      return;
    }

LABEL_19:
    v38 = v18;
    sub_100409EF8(&v38, a2, &v36);
    if (v3)
    {

      sub_10001B860(v35);
      v12, v26, v27, v28, v29, v30, v31, v32;
      return;
    }

    if (v36)
    {
      v33 = v36;
      v21 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100368034(0, (*v12->clientIdentity + 1), 1, v12);
      }

      v23 = *v12->clientIdentity;
      v22 = *&v12->clientIdentity[8];
      v24 = v33;
      if (v23 >= v22 >> 1)
      {
        v25 = sub_100368034((v22 > 1), (v23 + 1), 1, v12);
        v24 = v33;
        v12 = v25;
      }

      *v12->clientIdentity = v23 + 1;
      v13 = v12 + 24 * v23;
      *(v13 + 2) = v24;
      *(v13 + 6) = v21;
    }

    v7 = v35;
    v11 = v16;
    v6 = v17;
  }

  v14 = v11;
  v15 = v6;
  v16 = v11;
  if (v6)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v7 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v5 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_10041219C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_TtC7remindd19RDXPCStorePerformer *sub_1004121E4(unint64_t a1)
{

  v3 = sub_1004129A4(v2, sub_100412180, sub_100403054);

  if (a1 >> 62)
  {
    goto LABEL_88;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v139 = v3;
  v5 = &_swiftEmptyArrayStorage;
  v142 = a1;
  v143 = v4;
  v140 = &_swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = 0;
    v3 = a1 & 0xC000000000000001;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v3)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_76;
        }

        v10 = *(a1 + 8 * v6 + 32);
      }

      v11 = v10;
      a1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v12 = [v10 phones];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = *(v13 + 16);
      v15 = *v5->clientIdentity;
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_77;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= *&v5->clientIdentity[8] >> 1)
      {
        if (*(v13 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v25 = v15 + v14;
        }

        else
        {
          v25 = v15;
        }

        v5 = sub_100365788(isUniquelyReferenced_nonNull_native, v25, 1, v5, v21, v22, v23, v24);
        if (*(v13 + 16))
        {
LABEL_20:
          if ((*&v5->clientIdentity[8] >> 1) - *v5->clientIdentity < v14)
          {
            goto LABEL_84;
          }

          swift_arrayInitWithCopy();
          v13, v26, v27, v28, v29, v30, v31, v32;
          v8 = v143;
          if (v14)
          {
            v33 = *v5->clientIdentity;
            v34 = __OFADD__(v33, v14);
            v35 = v33 + v14;
            if (v34)
            {
              goto LABEL_86;
            }

            *v5->clientIdentity = v35;
          }

          goto LABEL_6;
        }
      }

      v13, v18, v19, v20, v21, v22, v23, v24;
      v8 = v143;
      if (v14)
      {
        goto LABEL_78;
      }

LABEL_6:
      ++v6;
      v9 = a1 == v8;
      a1 = v142;
    }

    while (!v9);
  }

  v36 = sub_1001A5660(v5);
  v5, v37, v38, v39, v40, v41, v42, v43;
  v145[0] = &_swiftEmptyArrayStorage;
  v3 = v36 + 56;
  v44 = 1 << *(v36 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v36 + 56);
  v47 = (v44 + 63) >> 6;
  v141 = v36;

  v48 = 0;
  if (!v46)
  {
    goto LABEL_30;
  }

  do
  {
LABEL_28:
    while (1)
    {
      v49 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v50 = *(*(v36 + 48) + ((v48 << 10) | (16 * v49)) + 8);
      v51 = objc_allocWithZone(CNPhoneNumber);

      v52 = String._bridgeToObjectiveC()();
      v50, v53, v54, v55, v56, v57, v58, v59;
      v60 = [v51 initWithStringValue:v52];

      if (v60)
      {
        break;
      }

      if (!v46)
      {
        goto LABEL_30;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v145[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v140 = v145[0];
  }

  while (v46);
  while (1)
  {
LABEL_30:
    v61 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v61 >= v47)
    {
      break;
    }

    v46 = *(v3 + 8 * v61);
    ++v48;
    if (v46)
    {
      v48 = v61;
      goto LABEL_28;
    }
  }

  if (v143)
  {
    v62 = 0;
    v63 = a1 & 0xC000000000000001;
    v64 = a1 & 0xFFFFFFFFFFFFFF8;
    v65 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v63)
      {
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v62 >= *(v64 + 16))
        {
          goto LABEL_81;
        }

        v66 = *(a1 + 8 * v62 + 32);
      }

      v67 = v66;
      a1 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_80;
      }

      v68 = [v66 emails];
      v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = *(v69 + 16);
      v3 = *v65->clientIdentity;
      v71 = v3 + v70;
      if (__OFADD__(v3, v70))
      {
        goto LABEL_82;
      }

      v72 = swift_isUniquelyReferenced_nonNull_native();
      if (v72 && v71 <= *&v65->clientIdentity[8] >> 1)
      {
        if (!*(v69 + 16))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v3 <= v71)
        {
          v80 = v3 + v70;
        }

        else
        {
          v80 = v3;
        }

        v65 = sub_100365788(v72, v80, 1, v65, v76, v77, v78, v79);
        if (!*(v69 + 16))
        {
LABEL_40:
          v69, v73, v74, v75, v76, v77, v78, v79;
          if (v70)
          {
            goto LABEL_83;
          }

          goto LABEL_41;
        }
      }

      if ((*&v65->clientIdentity[8] >> 1) - *v65->clientIdentity < v70)
      {
        goto LABEL_85;
      }

      swift_arrayInitWithCopy();
      v69, v81, v82, v83, v84, v85, v86, v87;
      if (v70)
      {
        v88 = *v65->clientIdentity;
        v34 = __OFADD__(v88, v70);
        v89 = v88 + v70;
        if (v34)
        {
          goto LABEL_87;
        }

        *v65->clientIdentity = v89;
      }

LABEL_41:
      ++v62;
      v9 = a1 == v143;
      a1 = v142;
      if (v9)
      {
        goto LABEL_61;
      }
    }
  }

  v65 = &_swiftEmptyArrayStorage;
LABEL_61:
  v90 = sub_1001A5660(v65);
  v65, v91, v92, v93, v94, v95, v96, v97;
  v105 = v139;
  v3 = *(v139 + 16);
  if (v3)
  {
    v106 = 0;
    v107 = (v139 + 48);
    v108 = &_swiftEmptyArrayStorage;
    v144 = v90;
    while (v106 < *(v105 + 16))
    {
      a1 = *(v107 - 1);
      v109 = *v107;
      v145[0] = *(v107 - 2);
      v145[1] = a1;
      v145[2] = v109;
      v110 = v145[0];
      v111 = a1;
      v112 = v109;
      sub_10040D67C(v145, v141, v140, v90);
      if (v113)
      {
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v146 = v108;
        if ((v114 & 1) == 0)
        {
          sub_100253948(0, *v108->clientIdentity + 1, 1);
          v108 = v146;
        }

        a1 = *v108->clientIdentity;
        v115 = *&v108->clientIdentity[8];
        if (a1 >= v115 >> 1)
        {
          sub_100253948((v115 > 1), a1 + 1, 1);
          v108 = v146;
        }

        *v108->clientIdentity = a1 + 1;
        v116 = &v108->super.isa + 3 * a1;
        v116[4] = v110;
        v116[5] = v111;
        v116[6] = v112;
        v90 = v144;
      }

      else
      {
      }

      ++v106;
      v107 += 3;
      v105 = v139;
      if (v3 == v106)
      {
        goto LABEL_73;
      }
    }

    goto LABEL_79;
  }

  v108 = &_swiftEmptyArrayStorage;
LABEL_73:
  v105, v98, v99, v100, v101, v102, v103, v104;
  v90, v117, v118, v119, v120, v121, v122, v123;
  v140, v124, v125, v126, v127, v128, v129, v130;
  v141, v131, v132, v133, v134, v135, v136, v137;
  return v108;
}

uint64_t sub_10041287C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004129A4(_OWORD *a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t, _OWORD *))
{
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v10 = a1[3];
  v11[0] = v7;
  *(v11 + 14) = *(a1 + 78);
  v8 = a3(&v10, a2, a1);
  objc_autoreleasePoolPop(v6);
  return v8;
}

void sub_100412C60(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

double sub_100412CB4(_TtC7remindd19RDXPCStorePerformer *a1, SEL x1_0, id x2_0, id x3_0, id x4_0, id x5_0, id x6_0, id x7_0)
{
  if (a1 != 1)
  {
    a1, x1_0, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0;
  }

  return result;
}

uint64_t sub_100412D88()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946550);
  v1 = sub_100006654(v0, qword_100946550);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD000000000000049;
  *(&v8 + 1) = 0x80000001007A87D0;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1000050A4(v10, &qword_100939ED0, &qword_100791B10);
LABEL_9:
    sub_100413068(_.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD000000000000049;
    *(&v10[0] + 1) = 0x80000001007A87D0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

uint64_t sub_100413068(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100946550);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = ObjectType;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, &v38);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v19 = sub_1003533B0();
    v21 = v20;
    v22 = sub_10000668C(v19, v20, &v38);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v7 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: BEGIN {store: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  v30 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v31 = [v4 persistentStoreCoordinator];
  [v30 setPersistentStoreCoordinator:v31];

  [v30 setTransactionAuthor:RDStoreControllerMostRecentTargetTemplateIdentifierByCurrentUserMigrationAuthor];
  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = v4;
  v32[4] = ObjectType;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004157D8;
  *(v33 + 24) = v32;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1310;
  v34 = _Block_copy(aBlock);
  v35 = v4;
  v36 = v30;

  [v36 performBlockAndWait:v34];

  _Block_release(v34);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  return result;
}

void sub_1004133B0(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v12);
  v14 = &v59[-v13];
  __chkstk_darwin(v15, v16);
  v18 = &v59[-v17];
  Date.init()();
  v19 = objc_autoreleasePoolPush();
  sub_10041399C(a1, a2, v18, a3, &v64);
  objc_autoreleasePoolPop(v19);
  v63[0] = 0;
  v20 = objc_autoreleasePoolPush();
  sub_10041441C(a1, v63, a2, v18, a3, &v64);
  objc_autoreleasePoolPop(v20);
  v21 = objc_autoreleasePoolPush();
  sub_100414D68(a1, v63, a2, v18, a3, &v64);
  objc_autoreleasePoolPop(v21);
  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100946550);
  (*(v7 + 16))(v14, v18, v6);
  v23 = a2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *v26 = 136315650;
    v64 = a3;
    swift_getMetatypeMetadata();
    v27 = String.init<A>(describing:)();
    v60 = v25;
    v29 = v28;
    v30 = sub_10000668C(v27, v28, &v62);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    v38 = sub_1003533B0();
    v40 = v39;
    v41 = sub_10000668C(v38, v39, &v62);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v26 + 14) = v41;
    *(v26 + 22) = 2050;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v50 = v49;
    v51 = *(v7 + 8);
    v51(v10, v6);
    v51(v14, v6);
    *(v26 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v24, v60, "%s: END {store: %{public}s, elapsedSeconds: %{public}f}", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v51 = *(v7 + 8);
    v51(v14, v6);
  }

  v51(v18, v6);
  v63[0], v52, v53, v54, v55, v56, v57, v58;
}

void sub_10041399C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v125 = a5;
  v6 = v5;
  v117 = a4;
  v120 = a3;
  v121 = a2;
  v8 = type metadata accessor for Date();
  v122 = *(v8 - 8);
  v123 = v8;
  __chkstk_darwin(v8, v9);
  v118 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v124 = &v115 - v13;
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v14 = [swift_getObjCClassFromMetadata() entity];
  v15 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v14];

  KeyPath = swift_getKeyPath();
  v17 = sub_1003F71F0(KeyPath);

  [v15 setPredicate:v17];

  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  v119 = xmmword_100791300;
  *(inited + 16) = xmmword_100791300;
  *&v128 = 0xD00000000000002FLL;
  *(&v128 + 1) = 0x80000001007F8250;
  AnyHashable.init<A>(_:)();
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() expressionForKeyPath:v19];

  *(inited + 96) = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
  *(inited + 72) = v20;
  v21 = sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21, v23, v24, v25, v26, v27, v28, v29;
  [v15 setPropertiesToUpdate:isa];

  [v15 setResultType:1];
  v126 = 0;
  v30 = [a1 executeRequest:v15 error:&v126];
  v31 = v126;
  if (!v30)
  {
    v34 = v126;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_9;
  }

  v32 = v30;
  *(&v129 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
  *&v128 = v32;
  sub_1000060C8(0, &qword_1009465A0, NSBatchUpdateResult_ptr);
  v33 = v31;
  throwingCast<A>(_:as:failureMessage:)();
  if (v5)
  {

    sub_10000607C(&v128);
LABEL_9:
    *v125 = v6;
    return;
  }

  sub_10000607C(&v128);
  v35 = *&v127[0];
  if ([*&v127[0] result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(v127, &v128);
  }

  else
  {
    v128 = 0u;
    v129 = 0u;
  }

  v36 = sub_1000F5104(&qword_100937028, &qword_100791C10);
  throwingCast<A>(_:as:failureMessage:)();
  sub_1000050A4(&v128, &qword_100939ED0, &qword_100791B10);
  v125 = v35;
  v37 = v126;
  v38 = objc_opt_self();
  v39 = swift_initStackObject();
  *(v39 + 16) = v119;
  *&v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v128 + 1) = v40;
  AnyHashable.init<A>(_:)();
  *(v39 + 96) = v36;
  *(v39 + 72) = v37;
  *&v119 = v37;

  v41 = sub_10038ED74(v39);
  swift_setDeallocating();
  sub_1000050A4(v39 + 32, &unk_100946590, &qword_100796FF0);
  v42 = Dictionary._bridgeToObjectiveC()().super.isa;
  v41, v43, v44, v45, v46, v47, v48, v49;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1007953F0;
  *(v50 + 32) = a1;
  sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
  v51 = a1;
  v52 = Array._bridgeToObjectiveC()().super.isa;
  v50, v53, v54, v55, v56, v57, v58, v59;
  [v38 mergeChangesFromRemoteContextSave:v42 intoContexts:v52];

  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_100006654(v60, qword_100946550);
  v61 = v122;
  v62 = v123;
  (*(v122 + 16))(v124, v120, v123);
  v63 = v119;

  v64 = v121;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v120 = v64;

  LODWORD(v121) = v66;
  if (os_log_type_enabled(v65, v66))
  {
    v67 = v61;
    v116 = v65;
    v68 = v63;
    v69 = swift_slowAlloc();
    *&v127[0] = swift_slowAlloc();
    *v69 = 136315906;
    *&v128 = v117;
    swift_getMetatypeMetadata();
    v70 = String.init<A>(describing:)();
    v72 = v71;
    v73 = sub_10000668C(v70, v71, v127);
    v72, v74, v75, v76, v77, v78, v79, v80;
    *(v69 + 4) = v73;
    *(v69 + 12) = 2082;
    v81 = sub_1003533B0();
    v83 = v82;
    v84 = sub_10000668C(v81, v82, v127);
    v83, v85, v86, v87, v88, v89, v90, v91;
    *(v69 + 14) = v84;
    *(v69 + 22) = 2050;
    if (v68 >> 62)
    {
      v99 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v99 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v100 = v124;
    v68, v92, v93, v94, v95, v96, v97, v98;
    *(v69 + 24) = v99;
    v68, v101, v102, v103, v104, v105, v106, v107;
    *(v69 + 32) = 2050;
    v108 = v118;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v110 = v109;
    v111 = *(v67 + 8);
    v112 = v108;
    v113 = v123;
    v111(v112, v123);
    v111(v100, v113);
    *(v69 + 34) = v110;
    v114 = v116;
    _os_log_impl(&_mh_execute_header, v116, v121, "%s: Copied value of '\\REMCDList.mostRecentTargetTemplateIdentifier' to '\\REMCDList.mostRecentTargetTemplateIdentifierByCurrentUser' via 'NSBatchUpdateRequest' {store: %{public}s, count = %{public}ld, elapsedSeconds: %{public}f}", v69, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v61 + 8))(v124, v62);
  }
}

uint64_t sub_10041424C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 mostRecentTargetTemplateIdentifier];
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

  return v7(a2, v5, 1, v6);
}

void sub_1004142F0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setMostRecentTargetTemplateIdentifier:isa];
}

void sub_10041441C(uint64_t a1, char **a2, void *a3, uint64_t a4, uint64_t a5, char **a6)
{
  v114 = a5;
  v115 = a4;
  v116 = a3;
  v119 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v109 - v9;
  v11 = type metadata accessor for UUID();
  v126 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v130 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v123 = &v109 - v16;
  __chkstk_darwin(v17, v18);
  v124 = &v109 - v19;
  v118 = type metadata accessor for Date();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118, v20);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v109 - v25;
  v27 = sub_10001035C(0);
  v28 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDTemplate();
  v29 = [swift_getObjCClassFromMetadata() entity];
  [v28 setEntity:v29];

  [v28 setAffectedStores:0];
  [v28 setPredicate:v27];
  [v28 setResultType:2];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100791300;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 32) = 0x696669746E656469;
  *(v30 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v30, v32, v33, v34, v35, v36, v37, v38;
  [v28 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v39 = v129;
  v40 = NSManagedObjectContext.fetch<A>(_:)();
  v48 = v39;
  if (v39)
  {

    *a6 = v39;
    return;
  }

  v49 = v126;
  v50 = v118;
  v51 = v119;
  v110 = v22;
  v113 = v26;
  v134[0] = _swiftEmptySetSingleton;
  v129 = v40;
  if (v40 >> 62)
  {
    goto LABEL_34;
  }

  v52 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v53 = v124;
  v111 = v48;
  v112 = v28;
  if (v52)
  {
    v50 = 0;
    v127 = v40 & 0xFFFFFFFFFFFFFF8;
    v128 = v40 & 0xC000000000000001;
    v54 = (v49 + 56);
    v125 = (v49 + 48);
    v126 = v52;
    v121 = (v49 + 16);
    v122 = (v49 + 32);
    v120 = (v49 + 8);
    while (1)
    {
      if (v128)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v50 >= *(v127 + 16))
        {
          goto LABEL_33;
        }

        v55 = *(v40 + 8 * v50 + 32);
      }

      v28 = v55;
      v49 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v52 = _CocoaArrayWrapper.endIndex.getter();
        v40 = v129;
        goto LABEL_5;
      }

      *&v131 = 0x696669746E656469;
      *(&v131 + 1) = 0xEA00000000007265;
      v51 = [v55 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v51)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v131 = 0u;
        v132 = 0u;
      }

      v48 = v130;
      v133[0] = v131;
      v133[1] = v132;
      if (*(&v132 + 1))
      {
        v56 = swift_dynamicCast();
        (*v54)(v10, v56 ^ 1u, 1, v11);
        if ((*v125)(v10, 1, v11) != 1)
        {
          (*v122)(v53, v10, v11);
          (*v121)(v48, v53, v11);
          v57 = v123;
          sub_1003794C4(v123, v48);

          v58 = v57;
          v53 = v124;
          v51 = v120;
          v48 = *v120;
          (*v120)(v58, v11);
          (v48)(v53, v11);
          goto LABEL_9;
        }
      }

      else
      {

        sub_1000050A4(v133, &qword_100939ED0, &qword_100791B10);
        (*v54)(v10, 1, 1, v11);
      }

      sub_1000050A4(v10, &unk_100939D90, "8\n\r");
LABEL_9:
      ++v50;
      v40 = v129;
      if (v49 == v126)
      {
        v59 = v134[0];
        v60 = v119;
        v61 = v118;
        goto LABEL_24;
      }
    }
  }

  v59 = _swiftEmptySetSingleton;
  v60 = v51;
  v61 = v50;
LABEL_24:
  v40, v41, v42, v43, v44, v45, v46, v47;
  swift_beginAccess();
  v62 = *v60;
  *v60 = v59;
  v62, v63, v64, v65, v66, v67, v68, v69;
  v70 = v117;
  v71 = v113;
  v72 = v116;
  v73 = v115;
  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_100006654(v74, qword_100946550);
  (*(v70 + 16))(v71, v73, v61);
  v75 = v72;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v134[0] = swift_slowAlloc();
    *v78 = 136315906;
    *&v131 = v114;
    swift_getMetatypeMetadata();
    v79 = String.init<A>(describing:)();
    v81 = v80;
    v82 = sub_10000668C(v79, v80, v134);
    v81, v83, v84, v85, v86, v87, v88, v89;
    *(v78 + 4) = v82;
    *(v78 + 12) = 2082;
    v90 = sub_1003533B0();
    v92 = v91;
    v93 = sub_10000668C(v90, v91, v134);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v78 + 14) = v93;
    *(v78 + 22) = 2050;
    swift_beginAccess();
    if (*v60)
    {
      v101 = *(*v60 + 2);
    }

    else
    {
      v101 = 0;
    }

    v102 = v61;
    v103 = v117;
    v104 = v113;
    v105 = v110;
    *(v78 + 24) = v101;
    *(v78 + 32) = 2050;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v107 = v106;
    v108 = *(v103 + 8);
    v108(v105, v102);
    v108(v104, v102);
    *(v78 + 34) = v107;
    _os_log_impl(&_mh_execute_header, v76, v77, "%s: Fetched '\\REMCDTemplate.identifier' of all non-deleted templates in persistent stores {store: %{public}s, count = %{public}ld, elapsedSeconds: %{public}f}", v78, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v70 + 8))(v71, v61);
  }
}

void sub_100414D68(void *a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v127 = a6;
  v135 = a5;
  v122 = a4;
  v123 = a3;
  v134 = a2;
  v126 = type metadata accessor for Date();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126, v7);
  v121 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v124 = v118 - v11;
  v12 = type metadata accessor for UUID();
  v128 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = v118 - v18;
  v20 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v20, v20);
  v22 = v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v23 = sub_10001F6F4();
  sub_1001555B4(v22);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v24 = [objc_allocWithZone(NSFetchRequest) init];
  v25 = [swift_getObjCClassFromMetadata() entity];
  [v24 setEntity:v25];

  [v24 setAffectedStores:0];
  [v24 setPredicate:v23];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100791300;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 32) = 0xD00000000000002FLL;
  *(v26 + 40) = 0x80000001007F8250;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v26, v28, v29, v30, v31, v32, v33, v34;
  [v24 setPropertiesToFetch:isa];

  v35 = a1;
  v36 = v127;
  v37 = v143;
  v38 = NSManagedObjectContext.fetch<A>(_:)();
  v46 = v37;
  if (v37)
  {
    goto LABEL_2;
  }

  v141 = v19;
  v142 = v12;
  v139 = v15;
  v129 = v38;
  if (v38 >> 62)
  {
    goto LABEL_40;
  }

  v47 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v48 = v135;
  v49 = v128;
  v120 = v35;
  v118[1] = v46;
  v119 = v24;
  if (v47)
  {
    v35 = v47;
    v24 = v129;
    v136 = v129 & 0xC000000000000001;
    swift_beginAccess();
    v50 = 0;
    v51 = 0;
    v130 = (v24 + 32);
    v131 = v24 & 0xFFFFFFFFFFFFFF8;
    v138 = v49 + 16;
    v143 = (v49 + 8);
    v53 = v141;
    v52 = v142;
    v46 = v139;
    v133 = v35;
    while (1)
    {
      while (1)
      {
        if (v136)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v55 = __OFADD__(v51++, 1);
          if (v55)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v51 >= *(v131 + 16))
          {
            goto LABEL_39;
          }

          v56 = *&v130[8 * v51];
          v55 = __OFADD__(v51++, 1);
          if (v55)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v47 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_5;
          }
        }

        v57 = v56;
        v58 = [v56 mostRecentTargetTemplateIdentifierByCurrentUser];
        if (v58)
        {
          break;
        }

LABEL_25:

        if (v51 == v35)
        {
          goto LABEL_28;
        }
      }

      v137 = v57;
      v59 = v58;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = *v134;
      if (*v134 && *(v60 + 16))
      {
        v132 = v50;
        sub_1001BE27C(&qword_10093B410, &protocol conformance descriptor for UUID);

        v61 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v69 = -1 << *(v60 + 32);
        v70 = v61 & ~v69;
        v140 = v60 + 56;
        if ((*(v60 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
        {
          v71 = ~v69;
          v72 = *(v128 + 72);
          v73 = *(v128 + 16);
          while (1)
          {
            v74 = v142;
            v73(v46, *(v60 + 48) + v72 * v70, v142);
            sub_1001BE27C(&qword_10093A3E0, &protocol conformance descriptor for UUID);
            v75 = dispatch thunk of static Equatable.== infix(_:_:)();
            v76 = v46;
            v77 = *v143;
            (*v143)(v76, v74);
            if (v75)
            {
              break;
            }

            v70 = (v70 + 1) & v71;
            v46 = v139;
            if (((*(v140 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          v60, v62, v63, v64, v65, v66, v67, v68;
          v53 = v141;
          v52 = v142;
          v77(v141, v142);
          v48 = v135;
          v46 = v139;
          v50 = v132;
          v35 = v133;
          v24 = v129;
          v57 = v137;
          goto LABEL_25;
        }

LABEL_7:
        v60, v62, v63, v64, v65, v66, v67, v68;
        v53 = v141;
        v52 = v142;
        v50 = v132;
        v24 = v129;
      }

      v54 = v137;
      [v137 setMostRecentTargetTemplateIdentifierByCurrentUser:0];

      (*v143)(v53, v52);
      v55 = __OFADD__(v50++, 1);
      v48 = v135;
      v35 = v133;
      if (v55)
      {
        goto LABEL_38;
      }

      if (v51 == v133)
      {
        goto LABEL_28;
      }
    }
  }

  v50 = 0;
  v24 = v129;
LABEL_28:
  v24, v39, v40, v41, v42, v43, v44, v45;
  v78 = v120;
  v79 = [v120 hasChanges];
  v80 = v126;
  v81 = v125;
  v82 = v124;
  v83 = v123;
  v84 = v122;
  if (v79)
  {
    v144 = 0;
    if (![v78 save:&v144])
    {
      v117 = v144;
      v46 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v24 = v119;
      v36 = v127;
LABEL_2:

      *v36 = v46;
      return;
    }

    v85 = v144;
  }

  v132 = v50;
  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  sub_100006654(v86, qword_100946550);
  (*(v81 + 16))(v82, v84, v80);
  v87 = v83;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v144 = v48;
    v145 = v143;
    *v90 = 136315906;
    swift_getMetatypeMetadata();
    v91 = String.init<A>(describing:)();
    v93 = v92;
    v94 = sub_10000668C(v91, v92, &v145);
    v93, v95, v96, v97, v98, v99, v100, v101;
    *(v90 + 4) = v94;
    *(v90 + 12) = 2082;
    v102 = sub_1003533B0();
    v104 = v103;
    v105 = sub_10000668C(v102, v103, &v145);
    v104, v106, v107, v108, v109, v110, v111, v112;
    *(v90 + 14) = v105;
    *(v90 + 22) = 2050;
    *(v90 + 24) = v132;
    *(v90 + 32) = 2050;
    v113 = v121;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v115 = v114;
    v116 = *(v81 + 8);
    v116(v113, v80);
    v116(v82, v80);
    *(v90 + 34) = v115;
    _os_log_impl(&_mh_execute_header, v88, v89, "%s: Set '\\REMCDList.mostRecentTargetTemplateIdentifierByCurrentUser' of some shared lists to nil {store: %{public}s, count = %{public}ld, elapsedSeconds: %{public}f}", v90, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v81 + 8))(v82, v80);
  }
}

id RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004157F0()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s10PredicatesOMa_0(0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &_swiftEmptyArrayStorage;
  sub_1004161B8(v1, v14);
  (*(v7 + 32))(v10, v14, v6);
  KeyPath = swift_getKeyPath();
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_10039221C(KeyPath, v5);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v18->clientIdentity >= *&v18->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(v7 + 8))(v10, v6);
  return sub_10000C2B0();
}

uint64_t sub_100415A38@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 publicLinkURLUUID];
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

  return v7(a2, v5, 1, v6);
}

void sub_100415ADC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkURLUUID:isa];
}

_TtC7remindd19RDXPCStorePerformer *sub_100415C08()
{
  sub_100026EF4(0, 6, 0);
  v0 = 0;
  result = &_swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_1008DD4B0 + v0 + 32);
    if (v2 == 4)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x53676E6974726F73;
    }

    if (v2 == 4)
    {
      v4 = 0x80000001007A8870;
    }

    else
    {
      v4 = 0xEC000000656C7974;
    }

    if (v2 == 3)
    {
      v3 = 1701667182;
      v4 = 0xE400000000000000;
    }

    v5 = 0xD000000000000015;
    if (v2 == 1)
    {
      v5 = 0x726F6C6F63;
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x80000001007F8280;
    }

    if (!*(&off_1008DD4B0 + v0 + 32))
    {
      v5 = 0x626D456567646162;
      v6 = 0xEB000000006D656CLL;
    }

    if (*(&off_1008DD4B0 + v0 + 32) <= 2u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*(&off_1008DD4B0 + v0 + 32) <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v12 = result;
    v10 = *result->clientIdentity;
    v9 = *&result->clientIdentity[8];
    if (v10 >= v9 >> 1)
    {
      sub_100026EF4((v9 > 1), v10 + 1, 1);
      result = v12;
    }

    ++v0;
    *result->clientIdentity = v10 + 1;
    v11 = &result->super.isa + 2 * v10;
    v11[4] = v7;
    v11[5] = v8;
  }

  while (v0 != 6);
  return result;
}

unint64_t sub_100415DE4(NSString a1, __n128 a2, uint64_t a3, Class isa)
{
  v7 = _s10PredicatesOMa_0(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = sub_1004157F0();
  type metadata accessor for REMCDPublicTemplate();
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  [v13 setAffectedStores:0];
  [v13 setPredicate:v12];

  if (isa)
  {
    v15 = sub_10003450C(isa);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v15, v16, v17, v18, v19, v20, v21, v22;
  }

  [v13 setPropertiesToFetch:isa];

  [v13 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {
    sub_10041615C(v10);

    return a1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_13:
    result, v24, v25, v26, v27, v28, v29, v30;
    v42 = objc_opt_self();
    v43 = objc_allocWithZone(REMObjectID);
    v44 = UUID._bridgeToObjectiveC()().super.isa;
    a1 = String._bridgeToObjectiveC()();
    v45 = [v43 initWithUUID:v44 entityName:a1];

    [v42 noSuchObjectErrorWithObjectID:v45];
    swift_willThrow();

    sub_10041615C(v10);
    return a1;
  }

  v40 = result;
  v41 = _CocoaArrayWrapper.endIndex.getter();
  result = v40;
  if (!v41)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v31 = result;
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = result;
    v32 = *(result + 32);
LABEL_10:
    a1 = v32;
    v31, v33, v34, v35, v36, v37, v38, v39;

    sub_10041615C(v10);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t _s10PredicatesOMa_0(uint64_t a1)
{
  result = qword_100946618;
  if (!qword_100946618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041615C(uint64_t a1)
{
  v2 = _s10PredicatesOMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004161B8(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10041621C(void *a1, uint64_t a2)
{
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v6 = sub_100013674(qword_1009752E8);
  if (v6)
  {
    v7 = v6;
    v8 = sub_100415C08();
    v10 = sub_100415DE4(a1, v9, a2, v8);
    if (v2)
    {
      v8, v11, v12, v13, v14, v15, v16, v17;
      swift_getErrorValue();
      if (Error.isREMError(withErrorCode:)())
      {
        type metadata accessor for REMCDPublicTemplate();
        v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a2];
        [v3 setAccount:v7];
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v3 setPublicLinkURLUUID:isa];
      }

      else
      {
        swift_willThrow();
      }
    }

    else
    {
      v3 = v10;

      v8, v19, v20, v21, v22, v23, v24, v25;
    }
  }

  else
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    swift_willThrow();
  }

  return v3;
}

uint64_t *sub_1004163B8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  return a1;
}

uint64_t sub_100416468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1004164D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100416550(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t type metadata accessor for RDSuggestedAttributeCache(uint64_t a1)
{
  result = qword_100946640;
  if (!qword_100946640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100416680()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946628);
  v1 = sub_100006654(v0, qword_100946628);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100416748()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0, v1);
  v16 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3, v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8, v6);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007F54();
  v19 = type metadata accessor for RDSuggestedAttributeCache(0);
  sub_1000F5104(&qword_1009466B8, &unk_1007A8948);
  v12 = String.init<A>(reflecting:)();
  v15[0] = v13;
  v15[1] = v12;
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v7);
  static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v11, v7);
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10000D4A0(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_allocObject();
  result = REMCache.init(cacheQueue:countLimit:)();
  qword_100974E40 = result;
  return result;
}

uint64_t sub_100416AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v73 = a8;
  v74 = a7;
  v72 = a6;
  v13 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v68 - v20;
  v22 = REMCacheContext.object(forKey:)();
  v71 = a1;
  if (v22)
  {
    *&v70 = a3;
    v69 = a2;
    REMStructWrapper.value.getter();

    v23 = v76;
    if (*v76->clientIdentity && (v24 = sub_1003647E8(v70), (v25 & 1) != 0))
    {
      v26 = *(*&v23->clientIdentity[40] + 8 * v24);
      v27 = *(v26 + 16);

      if (v27 && (v28 = sub_100005F4C(a4, a5), (v29 & 1) != 0))
      {
        v76 = *(*(v26 + 56) + 8 * v28);
      }

      else
      {
        v76 = _swiftEmptySetSingleton;
      }

      (*(v14 + 16))(v17, v72, v13);
      sub_10037E310(v21, v17);
      (*(v14 + 8))(v21, v13);
      v49 = v76;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v26;
      sub_1002C97A8(v49, a4, a5, isUniquelyReferenced_nonNull_native);
      a5, v51, v52, v53, v54, v55, v56, v57;
      v58 = v75;

      v59 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v23;
      sub_1002C97D4(v58, v70, v59);

      v36 = v75;
    }

    else
    {
      sub_1000F5104(&qword_100946698, &qword_1007A8928);
      inited = swift_initStackObject();
      v68 = xmmword_100791300;
      *(inited + 16) = xmmword_100791300;
      *(inited + 32) = a4;
      *(inited + 40) = a5;
      sub_1000F5104(&qword_1009466A0, &qword_1007A8930);
      v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v68;
      (*(v14 + 16))(v32 + v31, v72, v13);

      v33 = sub_1003932F8(v32);
      swift_setDeallocating();
      (*(v14 + 8))(v32 + v31, v13);
      swift_deallocClassInstance();
      *(inited + 48) = v33;
      v34 = sub_100390588(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &qword_1009466A8, &qword_1007A8938);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v23;
      sub_1002C97D4(v34, v70, v35);
      v36 = v76;
    }

    v76 = v36;
    sub_1000F5104(&qword_1009466B0, &qword_1007A8940);
    swift_allocObject();

    REMStructWrapper.init(_:)();
    v48 = v71;
    REMCacheContext.setObject(_:forKey:)();
    v36, v60, v61, v62, v63, v64, v65, v66;
  }

  else
  {
    sub_1000F5104(&qword_100946690, &unk_1007A8918);
    v37 = (sub_1000F5104(&qword_100943F10, &qword_1007A4680) - 8);
    v38 = (*(*v37 + 80) + 32) & ~*(*v37 + 80);
    v39 = swift_allocObject();
    v70 = xmmword_100791300;
    *(v39 + 16) = xmmword_100791300;
    v40 = v39 + v38;
    v69 = v37[14];
    v41 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
    (*(*(v41 - 8) + 16))(v40, a3, v41);
    sub_1000F5104(&qword_100946698, &qword_1007A8928);
    v42 = swift_initStackObject();
    *(v42 + 16) = v70;
    *(v42 + 32) = a4;
    *(v42 + 40) = a5;
    sub_1000F5104(&qword_1009466A0, &qword_1007A8930);
    v43 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v70;
    (*(v14 + 16))(v44 + v43, v72, v13);

    v45 = sub_1003932F8(v44);
    swift_setDeallocating();
    (*(v14 + 8))(v44 + v43, v13);
    swift_deallocClassInstance();
    *(v42 + 48) = v45;
    v46 = sub_100390588(v42);
    swift_setDeallocating();
    sub_1000050A4(v42 + 32, &qword_1009466A8, &qword_1007A8938);
    *(v40 + v69) = v46;
    v47 = sub_10039059C(v39);
    swift_setDeallocating();
    sub_1000050A4(v40, &qword_100943F10, &qword_1007A4680);
    swift_deallocClassInstance();
    v76 = v47;
    sub_1000F5104(&qword_1009466B0, &qword_1007A8940);
    swift_allocObject();
    REMStructWrapper.init(_:)();
    v48 = v71;
    REMCacheContext.setObject(_:forKey:)();
  }

  return v74(v48);
}

void sub_100417174(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v126 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v131 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v111 - v8;
  __chkstk_darwin(v10, v11);
  v124 = &v111 - v12;
  v13 = sub_1000F5104(&qword_1009466C0, &qword_1007A8958);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v111 - v19;
  v132 = a2;
  v21 = REMSuggestedAttributeInput.reminderID.getter();
  v22 = REMCacheContext.object(forKey:)();

  if (v22)
  {
    REMStructWrapper.value.getter();

    v23 = v137;
    if (qword_1009360C0 != -1)
    {
LABEL_58:
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100946628);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v133 = v16;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *(v23 + 16);
      v23, v29, v30, v31, v32, v33, v34, v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "RDSuggestedAttributeCache: Posting suggestion metric for %ld suggestions", v28, 0xCu);
    }

    else
    {

      v23, v36, v37, v38, v39, v40, v41, v42;
    }

    v44 = v23 + 64;
    v43 = *(v23 + 64);
    v45 = 1 << *(v23 + 32);
    v129 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.list(_:);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & v43;
    v120 = (v45 + 63) >> 6;
    v134 = (v126 + 32);
    v135 = (v126 + 16);
    v128 = (v126 + 88);
    v121 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.recurrence(_:);
    v119 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.dueDayOfWeek(_:);
    v117 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.location(_:);
    v118 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.nlpDueDate(_:);
    v115 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.flagged(_:);
    v116 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.vehicle(_:);
    v114 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.priority(_:);
    v113 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.tag(_:);
    v130 = (v126 + 8);
    v112 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.contact(_:);
    v125 = v23;

    v23 = 0;
    v136 = v9;
    v122 = v44;
    v123 = v20;
    v127 = v3;
    while (1)
    {
      if (!v47)
      {
        if (v120 <= v23 + 1)
        {
          v67 = v23 + 1;
        }

        else
        {
          v67 = v120;
        }

        v68 = v67 - 1;
        v69 = v133;
        while (1)
        {
          v66 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v66 >= v120)
          {
            v16 = &unk_1007A8960;
            v94 = sub_1000F5104(&qword_1009466C8, &unk_1007A8960);
            (*(*(v94 - 8) + 56))(v69, 1, 1, v94);
            v47 = 0;
            v23 = v68;
            goto LABEL_23;
          }

          v47 = *(v44 + 8 * v66);
          ++v23;
          if (v47)
          {
            v23 = v66;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_58;
      }

      v66 = v23;
LABEL_22:
      v70 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v71 = v70 | (v66 << 6);
      v72 = v125;
      v73 = v126;
      v74 = v124;
      (*(v126 + 16))(v124, *(v125 + 48) + *(v126 + 72) * v71, v3);
      v75 = *(*(v72 + 56) + 8 * v71);
      v16 = &unk_1007A8960;
      v76 = sub_1000F5104(&qword_1009466C8, &unk_1007A8960);
      v77 = *(v76 + 48);
      v78 = *(v73 + 32);
      v69 = v133;
      v78(v133, v74, v3);
      *(v69 + v77) = v75;
      (*(*(v76 - 8) + 56))(v69, 0, 1, v76);

      v9 = v136;
      v44 = v122;
      v20 = v123;
LABEL_23:
      sub_1004179E4(v69, v20);
      v79 = sub_1000F5104(&qword_1009466C8, &unk_1007A8960);
      if ((*(*(v79 - 8) + 48))(v20, 1, v79) == 1)
      {
        v103 = v125;

        v103, v104, v105, v106, v107, v108, v109, v110;
        return;
      }

      v80 = *&v20[*(v79 + 48)];
      v3 = v127;
      (*v134)(v9, v20, v127);
      v81 = v131;
      (*v135)(v131, v9, v3);
      v82 = (*v128)(v81, v3);
      if (v82 == v129)
      {
        REMSuggestedAttributeInput.list.getter();
        v48 = REMSuggestedList.description.getter();
        v50 = v49;

        sub_100417A54(v136, v80, v48, v50, 0);
        v80, v51, v52, v53, v54, v55, v56, v57;
        v65 = v50;
        v9 = v136;
        goto LABEL_11;
      }

      if (v82 == v121)
      {
        v83 = REMSuggestedAttributeInput.recurrence.getter();
      }

      else
      {
        if (v82 == v119)
        {
          REMSuggestedAttributeInput.dueDayOfWeek.getter();
          v92 = REMSuggestedWeekDay.description.getter();
          goto LABEL_47;
        }

        if (v82 == v118)
        {
          v95 = REMSuggestedAttributeInput.dueDateTime.getter();
          v84 = v96;
          goto LABEL_33;
        }

        if (v82 == v117 || v82 == v116)
        {
          REMSuggestedAttributeInput.location.getter();
          goto LABEL_46;
        }

        if (v82 == v115)
        {
          v98 = REMSuggestedAttributeInput.flagged.getter();
          if (v98)
          {
            v95 = 1702195828;
          }

          else
          {
            v95 = 0x65736C6166;
          }

          if (v98)
          {
            v84 = 0xE400000000000000;
          }

          else
          {
            v84 = 0xE500000000000000;
          }

LABEL_33:
          v9 = v136;
LABEL_34:
          sub_100417A54(v9, v80, v95, v84, 0);
          goto LABEL_35;
        }

        v9 = v136;
        if (v82 == v114)
        {
          v137 = REMSuggestedAttributeInput.priority.getter();
          sub_100418828();
          v95 = BinaryInteger.description.getter();
          v84 = v102;
          goto LABEL_34;
        }

        if (v82 != v113)
        {
          if (v82 != v112)
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return;
          }

          REMSuggestedAttributeInput.contact.getter();
LABEL_46:
          v92 = dispatch thunk of ClassificationLabel.description.getter();
LABEL_47:
          v99 = v92;
          v100 = v93;

          v101 = v99;
          v9 = v136;
          sub_100417A54(v136, v80, v101, v100, 0);
          v97 = v100;
          goto LABEL_48;
        }

        v83 = REMSuggestedAttributeInput.tags.getter();
      }

      v84 = v83;
      sub_1004180E8(v9, v80, v83, 0);
LABEL_35:
      v97 = v84;
LABEL_48:
      v97, v85, v86, v87, v88, v89, v90, v91;
      v65 = v80;
LABEL_11:
      v65, v58, v59, v60, v61, v62, v63, v64;
      (*v130)(v9, v3);
    }
  }
}

uint64_t sub_1004179AC()
{
  REMCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1004179E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009466C0, &qword_1007A8958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100417A54(uint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  if (a5)
  {
    if (qword_1009360C0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100946628);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    a4, v11, v12, v13, v14, v15, v16, v17;
    if (os_log_type_enabled(v9, v10))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v128 = v19;
      *v18 = v7[80];
      *(v18 + 4) = sub_10000668C(a3, a4, &v128);
      _os_log_impl(&_mh_execute_header, v9, v10, "RDSuggestedAttributeCache: Comparing cached suggestions with true value {%s} from the commited reminder", v18, 0xCu);
      sub_10000607C(v19);

      v6 = a3;
      v5 = a4;
    }

    else
    {

      v5 = a4;
      v6 = a3;
    }
  }

  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v121 = v7[80];
  while (v22)
  {
    v25 = v24;
LABEL_16:
    v26 = __clz(__rbit64(v22)) | (v25 << 6);
    v27 = (*(a2 + 48) + 16 * v26);
    v28 = v27[1];
    v29 = *(*(a2 + 56) + 8 * v26);
    v30 = *v27 == v6 && v28 == v5;
    v123 = *v27;
    if (!v30)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v129 = 0x74636572726F63;
    v130 = 0xE700000000000000;
    v127 = v28;

    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v132 = 0x7475626972747461;
    v133 = 0xE900000000000065;
    REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
    v32 = v31;
    v33 = String._bridgeToObjectiveC()();
    v32, v34, v35, v36, v37, v38, v39, v40;
    v134 = v33;
    v135 = 0x656372756F73;
    v136 = 0xE600000000000000;
    type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
    sub_10000D4A0(&qword_100943EE0, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline, &protocol conformance descriptor for REMSuggestedAttributeOutput.Pipeline);
    Set.description.getter();
    v42 = v41;
    v29, v41, v43, v44, v45, v46, v47, v48;
    v49 = String._bridgeToObjectiveC()();
    v42, v50, v51, v52, v53, v54, v55, v56;
    v137 = v49;
    sub_1000F5104(&unk_100942ED0, &qword_1007A3958);
    v57 = static _DictionaryStorage.allocate(capacity:)();

    v59 = v129;
    v58 = v130;
    v60 = isa;

    v61 = v60;
    v62 = sub_100005F4C(v59, v58);
    if (v63)
    {
      goto LABEL_36;
    }

    v7 = v57 + 8;
    *(&v57[8] + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
    v64 = (*&v57[6] + 16 * v62);
    *v64 = v59;
    v64[1] = v58;
    *(*&v57[7] + 8 * v62) = v61;
    v65 = v57[2];
    v66 = __OFADD__(v65, 1);
    v67 = (*&v65 + 1);
    if (v66)
    {
      goto LABEL_37;
    }

    v57[2] = v67;
    v68 = v132;
    v69 = v133;
    v70 = v134;

    v71 = v70;
    v72 = sub_100005F4C(v68, v69);
    if (v73)
    {
      goto LABEL_36;
    }

    *(v7 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
    v74 = (*&v57[6] + 16 * v72);
    *v74 = v68;
    v74[1] = v69;
    *(*&v57[7] + 8 * v72) = v71;
    v75 = v57[2];
    v66 = __OFADD__(v75, 1);
    v76 = (*&v75 + 1);
    if (v66)
    {
      goto LABEL_37;
    }

    v57[2] = v76;
    v77 = v135;
    v78 = v136;
    v79 = v137;

    v80 = v79;
    v81 = sub_100005F4C(v77, v78);
    if (v82)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    *(v7 + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v81;
    v83 = (*&v57[6] + 16 * v81);
    *v83 = v77;
    v83[1] = v78;
    *(*&v57[7] + 8 * v81) = v80;
    v84 = v57[2];
    v66 = __OFADD__(v84, 1);
    v85 = (*&v84 + 1);
    if (v66)
    {
      goto LABEL_37;
    }

    v22 &= v22 - 1;
    v57[2] = v85;

    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939250, &unk_100795D30);
    swift_arrayDestroy();
    static Analytics.postEvent(_:payload:duration:)();

    if (a5)
    {
      v7 = v127;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_100006654(v93, qword_100946628);

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();
      v127, v96, v97, v98, v99, v100, v101, v102;
      if (os_log_type_enabled(v94, v95))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v128 = v111;
        *v110 = v121;
        v112 = sub_10000668C(v123, v127, &v128);
        v127, v113, v114, v115, v116, v117, v118, v119;
        *(v110 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v94, v95, "RDSuggestedAttributeCache: Sugestion record {%s}", v110, 0xCu);
        sub_10000607C(v111);
      }

      else
      {
        v127, v103, v104, v105, v106, v107, v108, v109;
      }
    }

    else
    {
      v127, v86, v87, v88, v89, v90, v91, v92;
    }

    v24 = v25;
    v6 = a3;
    v5 = a4;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v25 >= v23)
    {
    }

    v22 = *(a2 + 64 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1004180E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  if (a4)
  {
    if (qword_1009360C0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

LABEL_6:
  v29 = a2 + 64;
  v30 = 1 << *(a2 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(a2 + 64);
  v33 = (v30 + 63) >> 6;
  v34 = a3 + 56;

  v35 = 0;
  v129 = *(v5 + 640);
  v131 = a3;
  v130 = v33;
  v133 = a3 + 56;
  if (v32)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_13:
    v5 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      swift_once();
LABEL_3:
      v6 = type metadata accessor for Logger();
      sub_100006654(v6, qword_100946628);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      a3, v9, v10, v11, v12, v13, v14, v15;
      if (os_log_type_enabled(v7, v8))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v137[0] = v17;
        *v16 = *(v5 + 640);
        v18 = Set.description.getter();
        v20 = v19;
        v21 = sub_10000668C(v18, v19, v137);
        v20, v22, v23, v24, v25, v26, v27, v28;
        *(v16 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v7, v8, "RDSuggestedAttributeCache: Comparing cached suggestions with true values {%s} from the commited reminder", v16, 0xCu);
        sub_10000607C(v17);
      }

      goto LABEL_6;
    }

    if (v5 >= v33)
    {
    }

    v32 = *(v29 + 8 * v5);
    ++v35;
    if (v32)
    {
      while (1)
      {
        v36 = __clz(__rbit64(v32)) | (v5 << 6);
        v37 = (*(a2 + 48) + 16 * v36);
        v39 = *v37;
        v38 = v37[1];
        v40 = *(*(a2 + 56) + 8 * v36);
        if (*(a3 + 16))
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v41 = Hasher._finalize()();
          v42 = -1 << *(a3 + 32);
          v43 = v41 & ~v42;
          if ((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
          {
            v44 = ~v42;
            do
            {
              v45 = (*(a3 + 48) + 16 * v43);
              if (*v45 == v39 && v45[1] == v38)
              {
                break;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                break;
              }

              v43 = (v43 + 1) & v44;
            }

            while (((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0);
          }
        }

        else
        {
        }

        isa = Bool._bridgeToObjectiveC()().super.super.isa;
        REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        v48 = v47;
        v49 = String._bridgeToObjectiveC()();
        v48, v50, v51, v52, v53, v54, v55, v56;
        v136 = v49;
        type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
        sub_10000D4A0(&qword_100943EE0, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline, &protocol conformance descriptor for REMSuggestedAttributeOutput.Pipeline);
        Set.description.getter();
        v58 = v57;
        v40, v57, v59, v60, v61, v62, v63, v64;
        v65 = String._bridgeToObjectiveC()();
        v58, v66, v67, v68, v69, v70, v71, v72;
        sub_1000F5104(&unk_100942ED0, &qword_1007A3958);
        v73 = static _DictionaryStorage.allocate(capacity:)();

        a3 = 0xE700000000000000;

        v74 = isa;
        v75 = sub_100005F4C(0x74636572726F63, 0xE700000000000000);
        if (v76)
        {
          goto LABEL_43;
        }

        v77 = v73 + 8;
        *(v73 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v75;
        v78 = (v73[6] + 16 * v75);
        *v78 = 0x74636572726F63;
        v78[1] = 0xE700000000000000;
        *(v73[7] + 8 * v75) = v74;
        v79 = v73[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_44;
        }

        v73[2] = v81;
        a3 = 0xE900000000000065;

        v82 = v136;
        v83 = sub_100005F4C(0x7475626972747461, 0xE900000000000065);
        if (v84)
        {
          goto LABEL_43;
        }

        *(v77 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
        v85 = (v73[6] + 16 * v83);
        *v85 = 0x7475626972747461;
        v85[1] = 0xE900000000000065;
        *(v73[7] + 8 * v83) = v82;
        v86 = v73[2];
        v80 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v80)
        {
          goto LABEL_44;
        }

        v73[2] = v87;
        a3 = 0xE600000000000000;

        v88 = v65;
        v89 = sub_100005F4C(0x656372756F73, 0xE600000000000000);
        if (v90)
        {
          goto LABEL_43;
        }

        *(v77 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
        v91 = (v73[6] + 16 * v89);
        *v91 = 0x656372756F73;
        v91[1] = 0xE600000000000000;
        *(v73[7] + 8 * v89) = v88;
        v92 = v73[2];
        v80 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v80)
        {
          goto LABEL_44;
        }

        v32 &= v32 - 1;
        v73[2] = v93;

        type metadata accessor for Analytics();
        sub_1000F5104(&unk_100939250, &unk_100795D30);
        swift_arrayDestroy();
        static Analytics.postEvent(_:payload:duration:)();

        if ((a4 & 1) == 0)
        {
          v38, v94, v95, v96, v97, v98, v99, v100;
          v35 = v5;
          a3 = v131;
          v33 = v130;
          v29 = a2 + 64;
          v34 = v133;
          if (v32)
          {
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        a3 = v131;
        v34 = v133;
        if (qword_1009360C0 != -1)
        {
          swift_once();
        }

        v101 = type metadata accessor for Logger();
        sub_100006654(v101, qword_100946628);

        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();
        v38, v104, v105, v106, v107, v108, v109, v110;
        if (os_log_type_enabled(v102, v103))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v137[0] = v119;
          *v118 = v129;
          v120 = sub_10000668C(v39, v38, v137);
          v38, v121, v122, v123, v124, v125, v126, v127;
          *(v118 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v102, v103, "RDSuggestedAttributeCache: Sugestion record {%s}", v118, 0xCu);
          sub_10000607C(v119);

          v34 = v133;
        }

        else
        {
          v38, v111, v112, v113, v114, v115, v116, v117;
        }

        v35 = v5;
        v33 = v130;
        v29 = a2 + 64;
        if (!v32)
        {
          goto LABEL_13;
        }

LABEL_12:
        v5 = v35;
      }
    }
  }
}

unint64_t sub_100418828()
{
  result = qword_1009466D0;
  if (!qword_1009466D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009466D0);
  }

  return result;
}

uint64_t sub_10041887C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009466D8);
  v1 = sub_100006654(v0, qword_1009466D8);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100418944()
{
  v0 = sub_10038D894(&off_1008DD368);
  result = swift_arrayDestroy();
  qword_1009466F0 = v0;
  return result;
}

void sub_100418990(uint64_t a1@<X0>, char *a2@<X4>, uint64_t a3@<X8>)
{
  v214 = a3;
  v5 = sub_1000F5104(&qword_1009467D8, &qword_1007A8A78);
  __chkstk_darwin(v5 - 8, v6);
  v213 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v212 = &v202 - v10;
  __chkstk_darwin(v11, v12);
  v211 = &v202 - v13;
  v210 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v216 = *&v210[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v210, v14);
  v205 = &v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v204 = &v202 - v18;
  v209 = sub_1000F5104(&qword_100946820, &qword_1007A8AB8);
  v208 = *(v209 - 8);
  __chkstk_darwin(v209, v19);
  v207 = &v202 - v20;
  v21 = type metadata accessor for REMSuggestedAttributesHarvester.Request();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21, v23);
  v25 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1000F5104(&qword_100946828, &unk_1007A8AC0);
  v219 = *(v220 - 8);
  __chkstk_darwin(v220, v26);
  v221 = &v202 - v27;
  v28 = sub_1000F5104(&unk_100943F70, &unk_1007A46C0);
  v215 = *(v28 - 8);
  __chkstk_darwin(v28, v29);
  v217 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v34 = &v202 - v33;
  sub_100247474(&v229);
  if (qword_1009360D0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v218 = sub_100006654(v35, qword_1009466D8);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v203 = v34;
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "loaded model in invocation", v38, 2u);
    v34 = v203;
  }

  v39 = &_swiftEmptyArrayStorage;
  if (REMSuggestedAttributesHarvester.Request.allowLocalOverrides.getter())
  {
    v203 = a2;
    (*(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 48))();
    sub_10042252C(&qword_100946858, &type metadata accessor for REMSuggestedAttributesHarvester.Request, &protocol conformance descriptor for REMSuggestedAttributesHarvester.Request);
    v40 = v236;
    Partial<A>.init(dictionary:)();
    v236 = v40;
    if (v40)
    {
      sub_1002497E0(&v229);
      return;
    }

    v39 = sub_100365C78(0, 1, 1, &_swiftEmptyArrayStorage);
    v42 = *v39->clientIdentity;
    v41 = *&v39->clientIdentity[8];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_100365C78((v41 > 1), v42 + 1, 1, v39);
    }

    *v39->clientIdentity = v42 + 1;
    (*(v215 + 32))(v39 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v42, v34, v28);
    a2 = v203;
  }

  if (REMSuggestedAttributesHarvester.Request.allowCloudOverrides.getter())
  {
    v43 = a2;
    (*(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 32))();
    sub_10042252C(&qword_100946858, &type metadata accessor for REMSuggestedAttributesHarvester.Request, &protocol conformance descriptor for REMSuggestedAttributesHarvester.Request);
    v44 = v236;
    Partial<A>.init(dictionary:)();
    v45 = v44;
    if (v44)
    {
      sub_1002497E0(&v229);
      v39, v46, v47, v48, v49, v50, v51, v52;
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_100365C78(0, *v39->clientIdentity + 1, 1, v39);
    }

    v54 = *v39->clientIdentity;
    v53 = *&v39->clientIdentity[8];
    if (v54 >= v53 >> 1)
    {
      v39 = sub_100365C78((v53 > 1), v54 + 1, 1, v39);
    }

    *v39->clientIdentity = v54 + 1;
    (*(v215 + 32))(v39 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v54, v217, v28);
    a2 = v43;
  }

  else
  {
    v45 = v236;
  }

  (*(v22 + 16))(v25, a2, v21);

  PartialOverride.init(full:partials:)();
  v55 = v45;
  v56 = sub_100420A2C();
  v57 = v45;
  if (v45)
  {
    v58 = v45;
  }

  else
  {
    v58 = v56;
  }

  if (v45)
  {
    v45 = 0;
  }

  swift_getKeyPath();
  v59 = v220;
  PartialOverride.subscript.getter();

  if (LOBYTE(v224[0]) == 1)
  {
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    v69 = os_log_type_enabled(v67, v68);
    v217 = v58;
    if (v69)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      v39, v78, v79, v80, v81, v82, v83, v84;
      _os_log_impl(&_mh_execute_header, v67, v68, "SuggestedAttributes harvesting is enabled on iOS: YES", v77, 2u);
    }

    else
    {
      v39, v70, v71, v72, v73, v74, v75, v76;
    }

    swift_getKeyPath();
    v90 = v207;
    PartialOverride.subscript.getter();

    v91 = v209;
    PartialOverride._full.getter();
    (*(v208 + 8))(v90, v91);
    v92 = *&v224[0];
    v93 = REMSuggestedAttributeInput.title.getter();
    v95 = v94;
    swift_getKeyPath();
    PartialOverride.subscript.getter();

    v96 = *(&v224[0] + 1);
    LOBYTE(v93) = sub_100420C6C(v93, v95, *&v224[0], *(&v224[0] + 1));
    v95, v97, v98, v99, v100, v101, v102, v103;
    v96, v104, v105, v106, v107, v108, v109, v110;
    v218 = v92;
    if (v93)
    {
      sub_100010364(&v229, v224, &unk_10093E960, &qword_10079CC10);
      v236 = v45;
      v203 = v55;
      if (v225 == 1)
      {
        v222 = *&v224[0];
        sub_1000F5104(&unk_1009399E0, &qword_100795D00);
        swift_willThrowTypedImpl();

        v215 = 0;
        v224[0] = 0uLL;
      }

      else
      {
        sub_100054B6C(v224, &v226);
        sub_10000F61C(&v226, v228);
        REMSuggestedAttributeInput.title.getter();
        v113 = v112;
        v114 = dispatch thunk of REMTitleEmbedding.vector(for:)();
        v113, v115, v116, v117, v118, v119, v120, v121;
        sub_10000607C(&v226);
        v224[0] = 0uLL;
        v215 = v114;
        if (v114)
        {
          v122 = v232;
          if (v233)
          {
            v226 = v232;
            sub_1000F5104(&unk_1009399E0, &qword_100795D00);
            swift_willThrowTypedImpl();
            v123 = 0;
            v124 = 0;
          }

          else
          {

            sub_1002490E8(v122, 0);
            v123 = RDIntentClusterModel.predict(for:)();
            v124 = v125;

            sub_10042251C(v122, 0, &_swift_release);
          }

          *&v224[0] = v123;
          *(&v224[0] + 1) = v124;
        }

        else
        {
          v215 = 0;
        }
      }

      swift_getKeyPath();
      sub_100422444();
      PartialOverride.subscript.getter();

      v126 = v226;
      v127 = v216;
      v128 = *(v216 + 104);
      v129 = v204;
      v130 = v210;
      v128(v204, enum case for REMSuggestedAttributeOutput.Pipeline.kNN(_:), v210);
      v131 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      v133 = v132;
      v134 = *(v127 + 8);
      v216 = v127 + 8;
      v134(v129, v130);
      if (*(v126 + 16))
      {
        v142 = sub_100005F4C(v131, v133);
        v144 = v143;
        v133, v143, v145, v146, v147, v148, v149, v150;
        if (v144)
        {
          v151 = *(*(v126 + 56) + v142);
          goto LABEL_49;
        }
      }

      else
      {
        v133, v135, v136, v137, v138, v139, v140, v141;
      }

      v151 = 1;
LABEL_49:
      v152 = v203;
      v153 = v205;
      v154 = v210;
      v128(v205, enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:), v210);
      v155 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      v157 = v156;
      v134(v153, v154);
      if (*(v126 + 16))
      {
        v165 = sub_100005F4C(v155, v157);
        v167 = v166;
        v157, v166, v168, v169, v170, v171, v172, v173;
        v181 = v206;
        if (v167)
        {
          v182 = *(*(v126 + 56) + v165);
          v126, v174, v175, v176, v177, v178, v179, v180;
          if ((v151 & 1) == 0)
          {
            LODWORD(v216) = 0;
            v185 = 0;
            v210 = &_swiftEmptyArrayStorage;
            v186 = &_swiftEmptyArrayStorage;
            v187 = v218;
            if (!v182)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v157, v158, v159, v160, v161, v162, v163, v164;
        v181 = v206;
      }

      v126, v174, v175, v176, v177, v178, v179, v180;
      if (!v151)
      {
        LODWORD(v216) = 0;
        v210 = &_swiftEmptyArrayStorage;
LABEL_60:
        v187 = v218;
LABEL_61:
        v191 = v234;
        v192 = v235;
        v222 = v234;
        v223 = v235;
        __chkstk_darwin(v183, v184);
        *(&v202 - 4) = v181;
        *(&v202 - 3) = v187;
        *(&v202 - 2) = v224;
        *(&v202 - 1) = v221;
        sub_1002490E8(v191, v192);
        sub_1000F5104(&qword_10093E9A8, &qword_1007A8A70);
        sub_1000F5104(&qword_100946848, &qword_1007A8BA0);
        Result<>.tryMap<A>(transform:)();
        sub_10042251C(v191, v192, &_swift_release);
        v186 = v226;
        v185 = v227;
        goto LABEL_62;
      }

      LOBYTE(v182) = 1;
LABEL_57:
      v188 = v230;
      v189 = v231;
      v222 = v230;
      v223 = v231;
      __chkstk_darwin(v183, v184);
      v190 = v215;
      *(&v202 - 4) = v181;
      *(&v202 - 3) = v190;
      *(&v202 - 2) = v221;
      sub_1002490E8(v188, v189);
      sub_1000F5104(&qword_100946850, &qword_1007A8BA8);
      sub_1000F5104(&qword_100946848, &qword_1007A8BA0);
      Result<>.tryMap<A>(transform:)();
      v183 = sub_10042251C(v188, v189, &_swift_release);
      v210 = v226;
      LODWORD(v216) = v227;
      if ((v182 & 1) == 0)
      {
        v185 = 0;
        v186 = &_swiftEmptyArrayStorage;
LABEL_62:
        LODWORD(v209) = v152 != 0;
        v226 = v217;
        v227 = v152 != 0;
        sub_1000F5104(&qword_1009467E0, &qword_1007A8A80);
        Result.eraseToCodableError()();
        v193 = v210;
        v226 = v210;
        v194 = v216;
        v227 = v216;
        Result.eraseToCodableError()();
        v226 = v186;
        v227 = v185;
        Result.eraseToCodableError()();
        REMSuggestedAttributesHarvester.Response.init(heuristicResult:embeddingResult:coreBehaviorResult:)();

        sub_10042251C(v186, v185, &_swift_bridgeObjectRelease);
        sub_10042251C(v193, v194, &_swift_bridgeObjectRelease);
        sub_10042251C(v217, v209, &_swift_bridgeObjectRelease);

        sub_1002497E0(&v229);
        *(&v224[0] + 1), v195, v196, v197, v198, v199, v200, v201;
        v59 = v220;
        goto LABEL_63;
      }

      goto LABEL_60;
    }

    v111 = v217;
    *&v224[0] = v217;
    BYTE8(v224[0]) = v55 != 0;
    sub_1000F5104(&qword_1009467E0, &qword_1007A8A80);
    Result.eraseToCodableError()();
    *&v224[0] = &_swiftEmptyArrayStorage;
    BYTE8(v224[0]) = 0;
    Result.eraseToCodableError()();
    *&v224[0] = &_swiftEmptyArrayStorage;
    BYTE8(v224[0]) = 0;
    Result.eraseToCodableError()();
    REMSuggestedAttributesHarvester.Response.init(heuristicResult:embeddingResult:coreBehaviorResult:)();

    v88 = v111;
    v89 = v55 != 0;
  }

  else
  {
    v39, v60, v61, v62, v63, v64, v65, v66;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "SuggestedAttributes harvesting is enabled on iOS: NO", v87, 2u);
    }

    sub_1004223F0();
    swift_allocError();
    swift_willThrow();
    v88 = v58;
    v89 = v57 != 0;
  }

  sub_10042251C(v88, v89, &_swift_bridgeObjectRelease);
  sub_1002497E0(&v229);
LABEL_63:
  (*(v219 + 8))(v221, v59);
}

void sub_100419BE4(unint64_t a1@<X2>, _TtC7remindd19RDXPCStorePerformer **a2@<X3>, uint64_t a3@<X4>, char **a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];

  v9 = sub_1004C68F8(a1, v7, v8, 0, 0);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v25[2] = a3;
  v17 = sub_1003E00D4(sub_1004230A0, v25, v9);
  v9, v18, v19, v20, v21, v22, v23, v24;
  *a4 = v17;
}

uint64_t sub_100419C9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v704 = a3;
  v701 = a2;
  v4 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v708 = *(v4 - 8);
  v709 = v4;
  __chkstk_darwin(v4, v5);
  v684 = &v662 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v682 = &v662 - v9;
  __chkstk_darwin(v10, v11);
  v683 = &v662 - v12;
  __chkstk_darwin(v13, v14);
  v681 = &v662 - v15;
  __chkstk_darwin(v16, v17);
  v679 = &v662 - v18;
  __chkstk_darwin(v19, v20);
  v680 = &v662 - v21;
  __chkstk_darwin(v22, v23);
  v678 = (&v662 - v24);
  v715 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v713 = *(v715 - 8);
  __chkstk_darwin(v715, v25);
  v673 = &v662 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v693 = &v662 - v29;
  __chkstk_darwin(v30, v31);
  v672 = &v662 - v32;
  __chkstk_darwin(v33, v34);
  v692 = &v662 - v35;
  __chkstk_darwin(v36, v37);
  v675 = &v662 - v38;
  __chkstk_darwin(v39, v40);
  v686 = &v662 - v41;
  __chkstk_darwin(v42, v43);
  v671 = &v662 - v44;
  __chkstk_darwin(v45, v46);
  v691 = &v662 - v47;
  __chkstk_darwin(v48, v49);
  v670 = &v662 - v50;
  __chkstk_darwin(v51, v52);
  v690 = &v662 - v53;
  __chkstk_darwin(v54, v55);
  v669 = &v662 - v56;
  __chkstk_darwin(v57, v58);
  v695 = (&v662 - v59);
  __chkstk_darwin(v60, v61);
  v707 = &v662 - v62;
  __chkstk_darwin(v63, v64);
  v668 = &v662 - v65;
  v700 = v66;
  __chkstk_darwin(v67, v68);
  v694 = (&v662 - v69);
  v712 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v714 = *(v712 - 8);
  __chkstk_darwin(v712, v70);
  v667 = &v662 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72, v73);
  v689 = &v662 - v74;
  __chkstk_darwin(v75, v76);
  v666 = &v662 - v77;
  __chkstk_darwin(v78, v79);
  v688 = &v662 - v80;
  __chkstk_darwin(v81, v82);
  v665 = &v662 - v83;
  __chkstk_darwin(v84, v85);
  v687 = &v662 - v86;
  __chkstk_darwin(v87, v88);
  v674 = &v662 - v89;
  __chkstk_darwin(v90, v91);
  v685 = &v662 - v92;
  __chkstk_darwin(v93, v94);
  v664 = &v662 - v95;
  __chkstk_darwin(v96, v97);
  v696 = (&v662 - v98);
  __chkstk_darwin(v99, v100);
  v663 = &v662 - v101;
  __chkstk_darwin(v102, v103);
  v105 = &v662 - v104;
  __chkstk_darwin(v106, v107);
  v109 = &v662 - v108;
  __chkstk_darwin(v110, v111);
  v113 = &v662 - v112;
  v699 = v114;
  __chkstk_darwin(v115, v116);
  v711 = &v662 - v117;
  v118 = type metadata accessor for REMSuggestedAttributeOutput.Source();
  v702 = *(v118 - 8);
  v703 = v118;
  __chkstk_darwin(v118, v119);
  v698 = &v662 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v121, v122);
  v124 = &v662 - v123;
  v125 = type metadata accessor for REMSuggestedAttributesHarvester.Request();
  v126 = *(v125 - 8);
  __chkstk_darwin(v125, v127);
  v129 = &v662 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(a1 + 8);
  v710 = *a1;
  v677 = v130;
  v131 = *(a1 + 32);
  v697 = *(a1 + 24);
  v706 = v131;
  v676 = *(a1 + 40);
  v132 = *(a1 + 48);
  sub_1000F5104(&qword_100946828, &unk_1007A8AC0);
  PartialOverride._full.getter();
  REMSuggestedAttributesHarvester.Request.reminder.getter();
  (*(v126 + 8))(v129, v125);
  v133 = REMSuggestedAttributeInput.reminderID.getter();

  v701 = v133;
  if (v132 <= 2)
  {
    v692 = v109;
    v693 = v124;
    v188 = v105;
    v189 = v696;
    v190 = v694;
    v191 = v695;
    if (v132)
    {
      v192 = v132 == 1;
      v193 = v714;
      v194 = v715;
      if (v192)
      {
        v195 = qword_1009360C8;

        v196 = v713;
        if (v195 != -1)
        {
          swift_once();
        }

        v693 = qword_100974E40;

        v694 = dispatch thunk of ClassificationLabel.description.getter();
        v198 = v197;

        (*(v196 + 104))(v191, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.location(_:), v194);
        v199 = v193[13];
        LODWORD(v691) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
        v200 = v712;
        v692 = (v193 + 13);
        v690 = v199;
        (v199)(v188);
        (*(v708 + 104))(v680, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v709);
        if (qword_1009360C0 != -1)
        {
          swift_once();
        }

        v201 = type metadata accessor for Logger();
        sub_100006654(v201, qword_100946628);
        v202 = (v196 + 16);
        v203 = *(v196 + 16);
        v204 = v669;
        v689 = v202;
        v687 = v203;
        (v203)(v669, v191, v194);
        v205 = v193[2];
        v206 = v663;
        v696 = v188;
        v685 = v205;
        (v205)(v663, v188, v200);

        v207 = v194;
        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.default.getter();
        v198, v210, v211, v212, v213, v214, v215, v216;
        v217 = os_log_type_enabled(v208, v209);
        v682 = v198;
        if (v217)
        {
          v218 = swift_slowAlloc();
          LODWORD(v679) = v209;
          v219 = v206;
          v220 = v218;
          v681 = swift_slowAlloc();
          v717 = v681;
          *v220 = 136446722;
          v678 = v208;
          v221 = v198;
          v222 = v207;
          v223 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
          v224 = v193;
          v226 = v225;
          v227 = *(v713 + 8);
          v686 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v688 = v227;
          (v227)(v204, v222);
          v228 = sub_10000668C(v223, v226, &v717);
          v226, v229, v230, v231, v232, v233, v234, v235;
          *(v220 + 4) = v228;
          *(v220 + 12) = 2082;
          v236 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
          v238 = v237;
          v239 = v224[1];
          v683 = ((v224 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v240 = v712;
          v684 = v239;
          (v239)(v219, v712);
          v241 = sub_10000668C(v236, v238, &v717);
          v242 = v238;
          v193 = v224;
          v243 = v713;
          v242, v244, v245, v246, v247, v248, v249, v250;
          *(v220 + 14) = v241;
          *(v220 + 22) = 2080;
          *(v220 + 24) = sub_10000668C(v694, v221, &v717);
          v251 = v678;
          _os_log_impl(&_mh_execute_header, v678, v679, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v220, 0x20u);
          swift_arrayDestroy();

          v207 = v222;
        }

        else
        {

          v535 = v193[1];
          v683 = ((v193 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v684 = v535;
          (v535)(v206, v200);
          v536 = v713;
          v537 = *(v713 + 8);
          v686 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v688 = v537;
          (v537)(v204, v207);
          v240 = v200;
          v243 = v536;
        }

        (v687)(v707, v695, v207);
        (v685)(v711, v696, v240);
        v538 = (*(v243 + 80) + 24) & ~*(v243 + 80);
        v539 = (v700 + v538 + 7) & 0xFFFFFFFFFFFFFFF8;
        v540 = v193;
        v541 = v243;
        v542 = (*(v193 + 80) + v539 + 16) & ~*(v193 + 80);
        v543 = (v699 + v542 + 7) & 0xFFFFFFFFFFFFFFF8;
        v544 = swift_allocObject();
        v545 = v701;
        *(v544 + 16) = v701;
        (*(v541 + 32))(v544 + v538, v707, v715);
        v546 = (v544 + v539);
        v547 = v682;
        *v546 = v694;
        v546[1] = v547;
        v548 = v711;
        (v540[4])(v544 + v542, v711, v240);
        v549 = (v544 + v543);
        *v549 = REMCDList.cleanUpAfterLocalObjectMerge();
        v549[1] = 0;
        v550 = v545;
        v551 = v680;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        (*(v708 + 8))(v551, v709);
        (v684)(v696, v240);
        (v688)(v695, v715);
        (v690)(v548, v691, v240);
        v552 = v698;
        REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

        v553 = *(sub_1000F5104(&qword_1009413F0, &qword_1007A8C30) + 48);
        v533 = v704;
        (*(v702 + 32))(v704, v552, v703);
        *(v533 + v553) = v710;
        v534 = &enum case for REMSuggestedAttributeOutput.location(_:);
      }

      else
      {
        v356 = qword_1009360C8;

        v357 = v713;
        if (v356 != -1)
        {
          swift_once();
        }

        v691 = qword_100974E40;
        v695 = REMSuggestedWeekDay.description.getter();
        v359 = v358;
        v360 = v690;
        (*(v357 + 104))(v690, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.dueDayOfWeek(_:), v194);
        v361 = v193[13];
        LODWORD(v693) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
        v362 = v194;
        v363 = v712;
        v694 = v193 + 13;
        v692 = v361;
        (v361)(v189);
        (*(v708 + 104))(v679, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v709);
        if (qword_1009360C0 != -1)
        {
          swift_once();
        }

        v364 = type metadata accessor for Logger();
        sub_100006654(v364, qword_100946628);
        v365 = *(v357 + 16);
        v366 = v670;
        v689 = (v357 + 16);
        v687 = v365;
        (v365)(v670, v360, v362);
        v367 = v193[2];
        v368 = v357;
        v369 = v664;
        v682 = v367;
        (v367)(v664, v189, v363);

        v370 = v362;
        v371 = Logger.logObject.getter();
        v372 = static os_log_type_t.default.getter();
        v359, v373, v374, v375, v376, v377, v378, v379;
        v380 = os_log_type_enabled(v371, v372);
        v683 = v359;
        if (v380)
        {
          v381 = v369;
          v382 = swift_slowAlloc();
          v681 = swift_slowAlloc();
          v717 = v681;
          *v382 = 136446722;
          LODWORD(v680) = v372;
          v383 = v370;
          v384 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
          v386 = v385;
          v387 = *(v713 + 8);
          v686 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v688 = v387;
          (v387)(v366, v383);
          v388 = sub_10000668C(v384, v386, &v717);
          v386, v389, v390, v391, v392, v393, v394, v395;
          *(v382 + 4) = v388;
          *(v382 + 12) = 2082;
          v396 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
          v398 = v397;
          v399 = v714[1];
          v684 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v400 = v381;
          v363 = v712;
          v685 = v399;
          (v399)(v400, v712);
          v401 = sub_10000668C(v396, v398, &v717);
          v402 = v398;
          v368 = v713;
          v402, v403, v404, v405, v406, v407, v408, v409;
          *(v382 + 14) = v401;
          *(v382 + 22) = 2080;
          *(v382 + 24) = sub_10000668C(v695, v359, &v717);
          _os_log_impl(&_mh_execute_header, v371, v680, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v382, 0x20u);
          swift_arrayDestroy();

          v410 = v383;
        }

        else
        {

          v554 = v714[1];
          v684 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v685 = v554;
          (v554)(v369, v363);
          v555 = *(v368 + 8);
          v686 = ((v368 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v688 = v555;
          (v555)(v366, v370);
          v410 = v370;
        }

        (v687)(v707, v690, v410);
        (v682)(v711, v696, v363);
        v556 = (*(v368 + 80) + 24) & ~*(v368 + 80);
        v557 = v368;
        v558 = (v700 + v556 + 7) & 0xFFFFFFFFFFFFFFF8;
        v559 = v714;
        v560 = (*(v714 + 80) + v558 + 16) & ~*(v714 + 80);
        v561 = (v699 + v560 + 7) & 0xFFFFFFFFFFFFFFF8;
        v562 = swift_allocObject();
        v563 = v701;
        *(v562 + 16) = v701;
        (*(v557 + 32))(v562 + v556, v707, v715);
        v564 = (v562 + v558);
        v565 = v683;
        *v564 = v695;
        v564[1] = v565;
        v566 = v711;
        (v559[4])(v562 + v560, v711, v363);
        v567 = (v562 + v561);
        *v567 = REMCDList.cleanUpAfterLocalObjectMerge();
        v567[1] = 0;
        v568 = v563;
        v569 = v679;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        (*(v708 + 8))(v569, v709);
        (v685)(v696, v363);
        (v688)(v690, v715);
        (v692)(v566, v693, v363);
        v570 = v698;
        REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

        v571 = *(sub_1000F5104(&qword_1009413E8, &unk_1007A13B0) + 48);
        v533 = v704;
        (*(v702 + 32))(v704, v570, v703);
        *(v533 + v571) = v710;
        v534 = &enum case for REMSuggestedAttributeOutput.dueDate(_:);
      }
    }

    else
    {
      v305 = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v306 = v714[13];
      v307 = v712;
      (v306)(v711, enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:), v712);

      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();
      if (qword_1009360C8 != -1)
      {
        swift_once();
      }

      v697 = qword_100974E40;
      v698 = REMSuggestedList.listIdentifier.getter();
      v309 = v308;
      v310 = v713;
      (*(v713 + 104))(v190, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.list(_:), v715);
      (v306)(v113, v305, v307);
      (*(v708 + 104))(v678, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v709);
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v311 = type metadata accessor for Logger();
      sub_100006654(v311, qword_100946628);
      v312 = *(v310 + 16);
      v313 = v668;
      v695 = (v310 + 16);
      v690 = v312;
      (v312)(v668, v190, v715);
      v314 = v714[2];
      v315 = v692;
      v706 = v113;
      v688 = v314;
      (v314)(v692, v113, v307);

      v316 = v307;
      v317 = Logger.logObject.getter();
      v318 = static os_log_type_t.default.getter();
      v309, v319, v320, v321, v322, v323, v324, v325;
      v326 = os_log_type_enabled(v317, v318);
      v687 = v309;
      if (v326)
      {
        v327 = swift_slowAlloc();
        v686 = swift_slowAlloc();
        v717 = v686;
        *v327 = 136446722;
        LODWORD(v685) = v318;
        v328 = v316;
        v329 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        v331 = v330;
        v332 = *(v713 + 8);
        v691 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v696 = v332;
        (v332)(v313, v715);
        v333 = sub_10000668C(v329, v331, &v717);
        v331, v334, v335, v336, v337, v338, v339, v340;
        *(v327 + 4) = v333;
        *(v327 + 12) = 2082;
        v341 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v343 = v342;
        v344 = v714[1];
        v689 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v692 = v344;
        (v344)(v315, v328);
        v345 = sub_10000668C(v341, v343, &v717);
        v346 = v343;
        v347 = v713;
        v346, v348, v349, v350, v351, v352, v353, v354;
        *(v327 + 14) = v345;
        *(v327 + 22) = 2080;
        *(v327 + 24) = sub_10000668C(v698, v309, &v717);
        _os_log_impl(&_mh_execute_header, v317, v685, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v327, 0x20u);
        swift_arrayDestroy();

        v355 = v715;
      }

      else
      {
        v347 = v310;

        v516 = v714[1];
        v689 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v692 = v516;
        (v516)(v315, v316);
        v517 = *(v310 + 8);
        v691 = ((v310 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v355 = v715;
        v696 = v517;
        (v517)(v313, v715);
        v328 = v316;
      }

      (v690)(v707, v694, v355);
      (v688)(v711, v706, v328);
      v518 = (*(v347 + 80) + 24) & ~*(v347 + 80);
      v519 = (v700 + v518 + 7) & 0xFFFFFFFFFFFFFFF8;
      v520 = v714;
      v521 = v347;
      v522 = (*(v714 + 80) + v519 + 16) & ~*(v714 + 80);
      v523 = (v699 + v522 + 7) & 0xFFFFFFFFFFFFFFF8;
      v524 = swift_allocObject();
      v525 = v701;
      *(v524 + 16) = v701;
      (*(v521 + 32))(v524 + v518, v707, v355);
      v526 = (v524 + v519);
      v527 = v687;
      *v526 = v698;
      v526[1] = v527;
      v528 = v712;
      (v520[4])(v524 + v522, v711, v712);
      v529 = (v524 + v523);
      *v529 = REMCDList.cleanUpAfterLocalObjectMerge();
      v529[1] = 0;
      v530 = v525;
      v531 = v678;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v708 + 8))(v531, v709);
      (v692)(v706, v528);
      (v696)(v694, v355);
      v532 = *(sub_1000F5104(&qword_1009413F8, &qword_1007A13C0) + 48);
      v533 = v704;
      (*(v702 + 32))(v704, v693, v703);
      *(v533 + v532) = v710;
      v534 = &enum case for REMSuggestedAttributeOutput.list(_:);
    }
  }

  else if (v132 > 4)
  {
    v253 = v714;
    v252 = v715;
    if (v132 == 5)
    {
      v254 = qword_1009360C8;
      v255 = v677;

      v257 = v712;
      v256 = v713;
      if (v254 != -1)
      {
        swift_once();
      }

      v694 = qword_100974E40;
      v258 = v692;
      (*(v256 + 104))(v692, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.tag(_:), v252);
      v259 = v253[13];
      v260 = v688;
      LODWORD(v696) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v697 = (v253 + 13);
      v695 = v259;
      (v259)(v688);
      (*(v708 + 104))(v682, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v709);
      v261 = v252;
      v262 = v672;
      v263 = v257;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v264 = type metadata accessor for Logger();
      sub_100006654(v264, qword_100946628);
      v265 = *(v256 + 16);
      v691 = (v256 + 16);
      v689 = v265;
      (v265)(v262, v258, v261);
      v266 = v666;
      v687 = v253[2];
      (v687)(v666, v260, v257);

      v267 = Logger.logObject.getter();
      v268 = static os_log_type_t.default.getter();
      v255, v269, v270, v271, v272, v273, v274, v275;
      if (os_log_type_enabled(v267, v268))
      {
        v276 = v255;
        v277 = swift_slowAlloc();
        v684 = swift_slowAlloc();
        v717 = v684;
        *v277 = 136446722;
        v278 = v276;
        v279 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        LODWORD(v683) = v268;
        v280 = v266;
        v281 = v279;
        v283 = v282;
        v284 = *(v713 + 8);
        v690 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v693 = v284;
        (v284)(v262, v261);
        v285 = sub_10000668C(v281, v283, &v717);
        v283, v286, v287, v288, v289, v290, v291, v292;
        *(v277 + 4) = v285;
        *(v277 + 12) = 2082;
        v293 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v295 = v294;
        v296 = v714[1];
        v685 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v686 = v296;
        (v296)(v280, v712);
        v297 = sub_10000668C(v293, v295, &v717);
        v295, v298, v299, v300, v301, v302, v303, v304;
        *(v277 + 14) = v297;
        *(v277 + 22) = 2080;
        *(v277 + 24) = sub_10000668C(v710, v278, &v717);
        _os_log_impl(&_mh_execute_header, v267, v683, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v277, 0x20u);
        swift_arrayDestroy();

        v263 = v712;
      }

      else
      {

        v594 = v714[1];
        v685 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v686 = v594;
        (v594)(v266, v257);
        v595 = *(v713 + 8);
        v690 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v693 = v595;
        (v595)(v262, v261);
      }

      (v689)(v707, v692, v261);
      v596 = v261;
      (v687)(v711, v688, v263);
      v597 = v713;
      v598 = v714;
      v599 = (*(v713 + 80) + 24) & ~*(v713 + 80);
      v600 = (v700 + v599 + 7) & 0xFFFFFFFFFFFFFFF8;
      v601 = (*(v714 + 80) + v600 + 16) & ~*(v714 + 80);
      v602 = (v699 + v601 + 7) & 0xFFFFFFFFFFFFFFF8;
      v603 = swift_allocObject();
      v604 = v701;
      *(v603 + 16) = v701;
      (*(v597 + 32))(v603 + v599, v707, v596);
      v605 = (v603 + v600);
      v606 = v711;
      v607 = v677;
      *v605 = v710;
      v605[1] = v607;
      v608 = v603 + v601;
      v609 = v712;
      (v598[4])(v608, v606, v712);
      v610 = (v603 + v602);
      *v610 = REMCDList.cleanUpAfterLocalObjectMerge();
      v610[1] = 0;
      v611 = v604;

      v612 = v682;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v708 + 8))(v612, v709);
      (v686)(v688, v609);
      (v693)(v692, v715);
      (v695)(v606, v696, v609);
      v613 = v698;
      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

      v614 = sub_1000F5104(&qword_1009413D8, &unk_1007A13A0);
      v533 = v704;
      v615 = (v704 + *(v614 + 48));
      (*(v702 + 32))(v704, v613, v703);
      *v615 = v710;
      v615[1] = v607;
      v534 = &enum case for REMSuggestedAttributeOutput.tag(_:);
    }

    else
    {
      v462 = qword_1009360C8;

      v463 = v712;
      v464 = v713;
      if (v462 != -1)
      {
        swift_once();
      }

      v691 = qword_100974E40;
      v696 = REMSuggestedContact.name.getter();
      v466 = v465;
      v467 = v693;
      (*(v464 + 104))(v693, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.contact(_:), v252);
      v468 = v253[13];
      v469 = v689;
      LODWORD(v694) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v695 = (v253 + 13);
      v692 = v468;
      (v468)(v689);
      (*(v708 + 104))(v684, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v709);
      v470 = v673;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v471 = type metadata accessor for Logger();
      sub_100006654(v471, qword_100946628);
      v688 = *(v464 + 16);
      (v688)(v470, v467, v252);
      v472 = v253[2];
      v473 = v667;
      v686 = v472;
      (v472)(v667, v469, v463);

      v474 = v463;
      v475 = v466;
      v476 = Logger.logObject.getter();
      v477 = static os_log_type_t.default.getter();
      v475, v478, v479, v480, v481, v482, v483, v484;
      v485 = os_log_type_enabled(v476, v477);
      v682 = v475;
      if (v485)
      {
        v486 = v473;
        v487 = swift_slowAlloc();
        v681 = swift_slowAlloc();
        v717 = v681;
        *v487 = 136446722;
        v488 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        LODWORD(v680) = v477;
        v490 = v489;
        v491 = *(v713 + 8);
        v687 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v690 = v491;
        (v491)(v470, v715);
        v492 = sub_10000668C(v488, v490, &v717);
        v490, v493, v494, v495, v496, v497, v498, v499;
        *(v487 + 4) = v492;
        *(v487 + 12) = 2082;
        v500 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v502 = v501;
        v503 = v714[1];
        v683 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v504 = v486;
        v505 = v712;
        v685 = v503;
        (v503)(v504, v712);
        v506 = sub_10000668C(v500, v502, &v717);
        v502, v507, v508, v509, v510, v511, v512, v513;
        *(v487 + 14) = v506;
        *(v487 + 22) = 2080;
        *(v487 + 24) = sub_10000668C(v696, v475, &v717);
        _os_log_impl(&_mh_execute_header, v476, v680, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v487, 0x20u);
        swift_arrayDestroy();

        v514 = v715;

        v474 = v505;
        v515 = v713;
      }

      else
      {

        v637 = v714[1];
        v683 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v685 = v637;
        (v637)(v473, v474);
        v638 = v713;
        v639 = *(v713 + 8);
        v687 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v690 = v639;
        (v639)(v470, v252);
        v515 = v638;
        v514 = v252;
      }

      (v688)(v707, v693, v514);
      (v686)(v711, v689, v474);
      v640 = (*(v515 + 80) + 24) & ~*(v515 + 80);
      v641 = (v700 + v640 + 7) & 0xFFFFFFFFFFFFFFF8;
      v642 = v714;
      v643 = (*(v714 + 80) + v641 + 16) & ~*(v714 + 80);
      v644 = v514;
      v645 = (v699 + v643 + 7) & 0xFFFFFFFFFFFFFFF8;
      v646 = swift_allocObject();
      v647 = v701;
      *(v646 + 16) = v701;
      (*(v515 + 32))(v646 + v640, v707, v644);
      v648 = (v646 + v641);
      v649 = v682;
      *v648 = v696;
      v648[1] = v649;
      v650 = v646 + v643;
      v651 = v711;
      v652 = v712;
      (v642[4])(v650, v711, v712);
      v653 = (v646 + v645);
      *v653 = REMCDList.cleanUpAfterLocalObjectMerge();
      v653[1] = 0;
      v654 = v647;
      v655 = v684;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v708 + 8))(v655, v709);
      (v685)(v689, v652);
      (v690)(v693, v715);
      (v692)(v651, v694, v652);
      v656 = v698;
      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

      v657 = *(sub_1000F5104(&qword_1009413D0, &qword_1007A1398) + 48);
      v533 = v704;
      (*(v702 + 32))(v704, v656, v703);
      *(v533 + v657) = v710;
      v534 = &enum case for REMSuggestedAttributeOutput.contact(_:);
    }
  }

  else
  {
    v134 = v714;
    v135 = v715;
    if (v132 == 3)
    {
      v136 = qword_1009360C8;

      v137 = v710;
      v138 = v713;
      if (v136 != -1)
      {
        swift_once();
      }

      v692 = qword_100974E40;
      v139 = 1702195828;
      if ((v137 & 1) == 0)
      {
        v139 = 0x65736C6166;
      }

      v696 = v139;
      if (v137)
      {
        v140 = 0xE400000000000000;
      }

      else
      {
        v140 = 0xE500000000000000;
      }

      v141 = v691;
      (*(v138 + 104))(v691, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.flagged(_:), v135);
      v142 = v134[13];
      v143 = v685;
      LODWORD(v694) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v144 = v712;
      v695 = (v134 + 13);
      v693 = v142;
      (v142)(v685);
      (*(v708 + 104))(v681, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v709);
      v145 = v671;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v146 = type metadata accessor for Logger();
      sub_100006654(v146, qword_100946628);
      v147 = *(v138 + 16);
      v690 = (v138 + 16);
      v688 = v147;
      (v147)(v145, v141, v135);
      v148 = v134[2];
      (v148)(v674, v143, v144);

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.default.getter();
      v140, v151, v152, v153, v154, v155, v156, v157;
      v158 = os_log_type_enabled(v149, v150);
      v683 = v140;
      if (v158)
      {
        v159 = swift_slowAlloc();
        v682 = v148;
        v160 = v159;
        v717 = swift_slowAlloc();
        *v160 = 136446722;
        v161 = v150;
        v162 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        v163 = v135;
        v165 = v164;
        v166 = *(v713 + 8);
        v687 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v689 = v166;
        (v166)(v145, v163);
        v167 = sub_10000668C(v162, v165, &v717);
        v165, v168, v169, v170, v171, v172, v173, v174;
        *(v160 + 4) = v167;
        *(v160 + 12) = 2082;
        v175 = v674;
        v176 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v178 = v177;
        v179 = v714[1];
        v684 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v686 = v179;
        (v179)(v175, v712);
        v180 = sub_10000668C(v176, v178, &v717);
        v178, v181, v182, v183, v184, v185, v186, v187;
        *(v160 + 14) = v180;
        *(v160 + 22) = 2080;
        *(v160 + 24) = sub_10000668C(v696, v140, &v717);
        _os_log_impl(&_mh_execute_header, v149, v161, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v160, 0x20u);
        swift_arrayDestroy();

        v148 = v682;
        v143 = v685;
        v144 = v712;

        v135 = v715;
      }

      else
      {

        v572 = v714[1];
        v684 = ((v714 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v686 = v572;
        (v572)(v674, v144);
        v573 = *(v713 + 8);
        v687 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v689 = v573;
        (v573)(v145, v135);
      }

      v574 = v707;
      (v688)(v707, v691, v135);
      (v148)(v711, v143, v144);
      v576 = v713;
      v575 = v714;
      v577 = (*(v713 + 80) + 24) & ~*(v713 + 80);
      v578 = (v700 + v577 + 7) & 0xFFFFFFFFFFFFFFF8;
      v579 = (*(v714 + 80) + v578 + 16) & ~*(v714 + 80);
      v580 = (v699 + v579 + 7) & 0xFFFFFFFFFFFFFFF8;
      v581 = swift_allocObject();
      v582 = v701;
      *(v581 + 16) = v701;
      v583 = v574;
      v584 = v715;
      (*(v576 + 32))(v581 + v577, v583, v715);
      v585 = (v581 + v578);
      v586 = v683;
      *v585 = v696;
      v585[1] = v586;
      v588 = v711;
      v587 = v712;
      (v575[4])(v581 + v579, v711, v712);
      v589 = (v581 + v580);
      *v589 = REMCDList.cleanUpAfterLocalObjectMerge();
      v589[1] = 0;
      v590 = v582;
      v591 = v681;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v708 + 8))(v591, v709);
      (v686)(v685, v587);
      (v689)(v691, v584);
      (v693)(v588, v694, v587);
      v592 = v698;
      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

      v593 = *(sub_1000F5104(&qword_100946870, &unk_1007A8C20) + 48);
      v533 = v704;
      (*(v702 + 32))(v704, v592, v703);
      *(v533 + v593) = v710 & 1;
      v534 = &enum case for REMSuggestedAttributeOutput.flagged(_:);
    }

    else
    {
      v411 = qword_1009360C8;

      v412 = v710;
      v413 = v713;
      if (v411 != -1)
      {
        swift_once();
      }

      v694 = qword_100974E40;
      v717 = v412;
      sub_100418828();
      v696 = BinaryInteger.description.getter();
      v415 = v414;
      v416 = v686;
      (*(v413 + 104))(v686, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.priority(_:), v135);
      v417 = v134[13];
      v418 = v687;
      LODWORD(v692) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v419 = v712;
      v693 = (v134 + 13);
      v691 = v417;
      (v417)(v687);
      (*(v708 + 104))(v683, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v709);
      v420 = v665;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v421 = type metadata accessor for Logger();
      sub_100006654(v421, qword_100946628);
      v422 = *(v413 + 16);
      v690 = (v413 + 16);
      v688 = v422;
      (v422)(v675, v416, v135);
      v681 = v134[2];
      (v681)(v420, v418, v419);

      v423 = v135;
      v424 = v420;
      v425 = Logger.logObject.getter();
      v426 = static os_log_type_t.default.getter();
      v415, v427, v428, v429, v430, v431, v432, v433;
      LODWORD(v680) = v426;
      v434 = os_log_type_enabled(v425, v426);
      v695 = v415;
      if (v434)
      {
        v435 = swift_slowAlloc();
        v679 = swift_slowAlloc();
        v716 = v679;
        *v435 = 136446722;
        v436 = v675;
        v437 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        v438 = v134;
        v440 = v439;
        v441 = *(v713 + 8);
        v685 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v689 = v441;
        (v441)(v436, v423);
        v442 = sub_10000668C(v437, v440, &v716);
        v440, v443, v444, v445, v446, v447, v448, v449;
        *(v435 + 4) = v442;
        *(v435 + 12) = 2082;
        v450 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v452 = v451;
        v453 = v438[1];
        v682 = ((v438 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v419 = v712;
        v684 = v453;
        (v453)(v424, v712);
        v454 = sub_10000668C(v450, v452, &v716);
        v452, v455, v456, v457, v458, v459, v460, v461;
        *(v435 + 14) = v454;
        *(v435 + 22) = 2080;
        *(v435 + 24) = sub_10000668C(v696, v695, &v716);
        _os_log_impl(&_mh_execute_header, v425, v680, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v435, 0x20u);
        swift_arrayDestroy();

        v416 = v686;
      }

      else
      {

        v616 = v134[1];
        v682 = ((v134 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v684 = v616;
        (v616)(v424, v419);
        v617 = *(v713 + 8);
        v685 = ((v713 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v689 = v617;
        (v617)(v675, v423);
      }

      v618 = v707;
      (v688)(v707, v416, v423);
      (v681)(v711, v687, v419);
      v620 = v713;
      v619 = v714;
      v621 = (*(v713 + 80) + 24) & ~*(v713 + 80);
      v622 = (v700 + v621 + 7) & 0xFFFFFFFFFFFFFFF8;
      v623 = (*(v714 + 80) + v622 + 16) & ~*(v714 + 80);
      v705 = (v699 + v623 + 7) & 0xFFFFFFFFFFFFFFF8;
      v624 = swift_allocObject();
      v625 = v701;
      *(v624 + 16) = v701;
      v626 = v618;
      v627 = v715;
      (*(v620 + 32))(v624 + v621, v626, v715);
      v628 = (v624 + v622);
      v629 = v695;
      *v628 = v696;
      v628[1] = v629;
      v631 = v711;
      v630 = v712;
      (v619[4])(v624 + v623, v711, v712);
      v632 = (v624 + v705);
      *v632 = REMCDList.cleanUpAfterLocalObjectMerge();
      v632[1] = 0;
      v633 = v625;
      v634 = v683;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v708 + 8))(v634, v709);
      (v684)(v687, v630);
      (v689)(v686, v627);
      (v691)(v631, v692, v630);
      v635 = v698;
      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

      v636 = *(sub_1000F5104(&qword_100946868, &qword_1007A8C18) + 48);
      v533 = v704;
      (*(v702 + 32))(v704, v635, v703);
      *(v533 + v636) = v710;
      v534 = &enum case for REMSuggestedAttributeOutput.priority(_:);
    }
  }

  v658 = *v534;
  v659 = type metadata accessor for REMSuggestedAttributeOutput();
  v660 = *(v659 - 8);
  (*(v660 + 104))(v533, v658, v659);
  return (*(v660 + 56))(v533, 0, 1, v659);
}