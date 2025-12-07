void sub_1009B1BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  sub_1012E0400(v3, &off_10188FE10);
  if (!v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v9 = *(*v8 + 496);

    v9(a1);
    (*(*v8 + 488))(a1);
    (*(*v8 + 480))(a1);
    v10 = *(a1 + 40);
    v11[0] = *(a1 + 24);
    v11[1] = v10;
    v12 = *(a1 + 56);
    sub_10073E870(v11, *(a1 + 16));

    sub_1012CF6CC(v5, &off_10188FE10, v6);
  }
}

void sub_1009B1D18(void *a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *a1) + 0xE0);
  v5 = v4();
  [v5 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030, off_10182F788);
  if (swift_dynamicCast())
  {
    v6 = (*((swift_isaMask & *a1) + 0x2A0))();
    v8 = v7;
    v9 = *((swift_isaMask & *v2) + 0xE0);
    v10 = v9();
    [v10 size];
    v12 = v11;
    v14 = v13;

    v15 = v4();
    [v15 size];
    v17 = v16;
    v19 = v18;

    v51.width = sub_100121EF4(0, v12, v14, v17, v19);
    width = v51.width;
    height = v51.height;
    v52.width = 0.0;
    v52.height = 0.0;
    if (CGSizeEqualToSize(v51, v52))
    {
      v22 = v9();
      [v22 size];
      width = v23;
      height = v24;
    }

    [v50 setSize:{width, height}];
    [v50 setCenter:{v6, v8}];
    v25 = *((swift_isaMask & *v2) + 0xE8);
    v26 = v50;
    v25();
  }

  else
  {
    v27 = objc_opt_self();
    v28 = [v27 _atomicIncrementAssertCount];
    v50 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v50, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
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
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v37;
    v38 = sub_1005CF04C();
    *(inited + 104) = v38;
    *(inited + 72) = v29;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 434;
    v40 = v50;
    *(inited + 216) = v37;
    *(inited + 224) = v38;
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
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v49 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v47 file:v48 lineNumber:434 isFatal:0 format:v49 args:v46];
  }
}

double sub_1009B22EC()
{
  v1 = (*((swift_isaMask & *v0) + 0xE0))();
  [v1 center];
  v3 = v2;

  return v3;
}

void sub_1009B2368(uint64_t a1)
{
  if ((sub_1011255D4() & 1) == 0)
  {
LABEL_5:

    swift_unknownObjectRelease();
    return;
  }

  if (a1)
  {
    type metadata accessor for CRLBoardItem(0);
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectWeakAssign();
      goto LABEL_5;
    }

    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("parentInfo", 10, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 468;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("parentInfo", 10, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:468 isFatal:0 format:v24 args:v21];
    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectWeakAssign();
  }
}

void sub_1009B27C4(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101465920;
  *(v6 + 32) = v2;
  v7 = v2;
  sub_1005B981C(&qword_1019F5720, &unk_101474E20);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  v12[4] = sub_1009C32A8;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_10068B39C;
  v12[3] = &unk_10188FF40;
  v10 = _Block_copy(v12);
  v11 = v7;

  [v5 temporaryLayoutControllerForInfos:isa useInBlock:v10];
  _Block_release(v10);
}

__n128 sub_1009B293C@<Q0>(_OWORD *a1@<X8>)
{
  v3 = (*((swift_isaMask & *v1) + 0xE0))();
  if ([v3 widthValid] && (objc_msgSend(v3, "heightValid") & 1) != 0)
  {
    [v3 fullTransform];
    v7 = v10;
    v8 = v9;
    v6 = v11;
  }

  else
  {
    v4 = swift_allocObject();
    v4[2] = 0x3FF0000000000000;
    v4[3] = 0;
    v4[4] = 0;
    v4[6] = 0;
    v4[7] = 0;
    v4[5] = 0x3FF0000000000000;

    sub_1009B27C4(sub_1009C3F80, v4);

    swift_beginAccess();
    v7 = *(v4 + 2);
    v8 = *(v4 + 1);
    v6 = *(v4 + 3);
  }

  *a1 = v8;
  a1[1] = v7;
  result = v6;
  a1[2] = v6;
  return result;
}

__n128 sub_1009B2A94@<Q0>(uint64_t a1@<X8>)
{
  v3 = (*((swift_isaMask & *v1) + 0xE0))();
  [v3 fullTransform];
  v18 = *&t1.a;
  v19 = *&t1.c;
  tx = t1.tx;
  ty = t1.ty;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    b = 0.0;
    a = 1.0;
    v10 = v7;
    c = 0.0;
    d = 1.0;
    v13 = 0.0;
    v14 = 0.0;
    while (1)
    {
      v15 = (*((swift_isaMask & *v10) + 0xE0))();
      [v15 transform];
      v21 = *&t1.c;
      v22 = *&t1.a;
      v20 = *&t1.tx;

      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v13;
      t1.ty = v14;
      *&t2.a = v22;
      *&t2.c = v21;
      *&t2.tx = v20;
      CGAffineTransformConcat(&v23, &t1, &t2);
      a = v23.a;
      b = v23.b;
      c = v23.c;
      d = v23.d;
      v13 = v23.tx;
      v14 = v23.ty;
      v16 = swift_unknownObjectWeakLoadStrong();

      if (!v16)
      {
        break;
      }

      v10 = v16;
    }

    *&t1.a = v18;
    *&t1.c = v19;
    t1.tx = tx;
    t1.ty = ty;
    t2.a = a;
    t2.b = b;
    t2.c = c;
    t2.d = d;
    t2.tx = v13;
    t2.ty = v14;
    CGAffineTransformConcat(&v23, &t1, &t2);
    v18 = *&v23.a;
    v19 = *&v23.c;
    tx = v23.tx;
    ty = v23.ty;
  }

  result = v19;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = tx;
  *(a1 + 40) = ty;
  return result;
}

void *sub_1009B2C80()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*((swift_isaMask & *result) + 0x380))();

    return v2;
  }

  return result;
}

void *sub_1009B2CFC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*((swift_isaMask & *result) + 0x388))();

    return (v2 & 1);
  }

  return result;
}

void *sub_1009B2D78()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*((swift_isaMask & *result) + 0x390))();

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_1009B2DF4(uint64_t a1)
{
  v2 = v1;
  v53 = type metadata accessor for UUID();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLBoardItemBase(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = *((swift_isaMask & *v1) + 0x480);
    swift_unknownObjectRetain();
    v8 = v7(v6, &off_10188FE10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v8;
    sub_1009C0C84(_swiftEmptyDictionarySingleton, sub_1009BE284, 0, isUniquelyReferenced_nonNull_native, &v54);
    v10 = v54;
    v11 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v12 = *(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 640);

    v14 = v12(v13);

    v16 = (*((swift_isaMask & *v2) + 0x3F0))(v15) & 1;
    if (v16 == ((*((swift_isaMask & *v6) + 0x3F0))() & 1))
    {
      if (!*(v14 + 2))
      {

        v17 = v53;
        v18 = v52;
        goto LABEL_11;
      }

      v17 = v53;
      v18 = v52;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100024CBC(0, *(v14 + 2) + 1, 1, v14);
      }

      v17 = v53;
      v18 = v52;
      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      if (v20 >= v19 >> 1)
      {
        v14 = sub_100024CBC((v19 > 1), v20 + 1, 1, v14);
      }

      *(v14 + 2) = v20 + 1;
      v21 = &v14[16 * v20];
      *(v21 + 4) = 0x6574726F70707573;
      *(v21 + 5) = 0xE900000000000064;
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v10;
    v23 = sub_100A9B080(v14, 0, v22);
    v10 = v54;
LABEL_11:
    (*(**(v2 + v11) + 264))(v23);
    type metadata accessor for CRLTransactableObservableDeltas(0);
    v24 = swift_allocObject();
    (*(v18 + 32))(v24 + OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_id, v4, v17);
    *(v24 + OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_invalidationKeys) = v10;
    v25 = (v24 + OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_snapshot);
    *v25 = v6;
    v25[1] = &off_10188FE10;
    return v24;
  }

  v27 = objc_opt_self();
  v28 = [v27 _atomicIncrementAssertCount];
  v54 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v54, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createObservableDeltas(fromSnapshot:)", 37, 2);
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
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
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v28;
  v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v37;
  v38 = sub_1005CF04C();
  *(inited + 104) = v38;
  *(inited + 72) = v29;
  *(inited + 136) = &type metadata for String;
  v39 = sub_1000053B0();
  *(inited + 112) = v32;
  *(inited + 120) = v34;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v39;
  *(inited + 152) = 989;
  v40 = v54;
  *(inited + 216) = v37;
  *(inited + 224) = v38;
  *(inited + 192) = v40;
  v41 = v29;
  v42 = v40;
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v44 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v44, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v45 = swift_allocObject();
  v45[2] = 8;
  v45[3] = 0;
  v45[4] = 0;
  v45[5] = 0;
  v46 = __VaListBuilder.va_list()();
  StaticString.description.getter("createObservableDeltas(fromSnapshot:)", 37, 2);
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v49 = String._bridgeToObjectiveC()();

  [v27 handleFailureInFunction:v47 file:v48 lineNumber:989 isFatal:1 format:v49 args:v46];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v50, v51);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1009B3580()
{
  v1 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v1 - 8);
  v3 = v31 - v2 + 16;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 272);

  v8(v9);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &qword_1019F6990, &qword_10146D2F0);
LABEL_16:
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v10 = (*(v5 + 32))(v7, v3, v4);
  v11 = (*((swift_isaMask & *v0) + 0x380))(v10);
  if (!v11 || (v12 = v11, isa = UUID._bridgeToObjectiveC()().super.isa, v14 = [v12 getBoardItemForUUID:isa], v12, isa, !v14))
  {
LABEL_15:
    (*(v5 + 8))(v7, v4);
    goto LABEL_16;
  }

  type metadata accessor for CRLContainerItem(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    goto LABEL_15;
  }

  v16 = v15;
  v17 = sub_100BD51F4(_swiftEmptyArrayStorage);
  v18 = type metadata accessor for CRLPropertyMap();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data] = v17;
  v33.receiver = v19;
  v33.super_class = v18;
  v20 = objc_msgSendSuper2(&v33, "init");
  v21 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v22 = *(v16 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
  if (!v22)
  {
    sub_10096C7D4();
    v22 = *(v16 + v21);
  }

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v32[3] = sub_1005B981C(&qword_101A0A360, qword_101489F20);
  v32[0] = v23;
  sub_10000BE14(v32, v31, &unk_1019F4D00, &unk_10146E7F0);
  swift_beginAccess();

  sub_100BC1F00(v31, 4);
  swift_endAccess();
  sub_10000CAAC(v32, &unk_1019F4D00, &unk_10146E7F0);
  v24 = sub_100B361A0(0, 1, 1, _swiftEmptyArrayStorage);
  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100B361A0((v25 > 1), v26 + 1, 1, v24);
  }

  (*(v5 + 8))(v7, v4);
  v24[2] = v26 + 1;
  v27 = &v24[2 * v26];
  v27[4] = v16;
  v27[5] = v20;
LABEL_17:
  v28 = sub_1006401DC(v24);

  return v28;
}

void *sub_1009B3994(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v117 - v8;
  v10 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v122 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for UUID();
  v12 = *(v143 - 8);
  __chkstk_darwin(v143);
  v127 = v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v129 = v117 - v15;
  __chkstk_darwin(v16);
  v126 = v117 - v17;
  v134 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v134);
  v142 = v117 - v18;
  v19 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v19 - 8);
  v130 = v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v132 = v117 - v22;
  __chkstk_darwin(v23);
  v128 = v117 - v24;
  __chkstk_darwin(v25);
  v138 = v117 - v26;
  __chkstk_darwin(v27);
  v136 = v117 - v28;
  if (a2)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      v114 = _swiftEmptyArrayStorage;
      goto LABEL_60;
    }
  }

  else
  {
  }

  type metadata accessor for CRLBoardItemBase(0);
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    return _swiftEmptyArrayStorage;
  }

  v121 = v9;
  v31 = *(a1 + 16);
  if (v31)
  {
    v120 = v6;
    v139 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v32 = *(v30 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v131 = (v12 + 32);
    v33 = (v12 + 8);
    v119 = (v7 + 16);
    v118 = (v7 + 8);
    v117[1] = a3;
    swift_unknownObjectRetain();
    v137 = v32;
    v34 = (v12 + 48);

    v35 = (a1 + 40);
    v123 = _swiftEmptyArrayStorage;
    v36 = v135;
    v37 = v138;
    v133 = v33;
    while (1)
    {
      v38 = *(v35 - 1) == 0x6641746E65726170 && *v35 == 0xEE007974696E6966;
      if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_9;
      }

      v140 = v35;
      v141 = v31;
      v39 = (*v137 + 272);
      v40 = *v39;
      v41 = v136;
      (*v39)();
      v42 = *(**(v36 + v139) + 272);

      v42(v43);

      v44 = *(v134 + 48);
      v45 = v142;
      sub_10000BE14(v41, v142, &qword_1019F6990, &qword_10146D2F0);
      sub_10000BE14(v37, v45 + v44, &qword_1019F6990, &qword_10146D2F0);
      v46 = *v34;
      if ((*v34)(v45, 1, v143) == 1)
      {
        break;
      }

      v49 = v142;
      v50 = v128;
      sub_10000BE14(v142, v128, &qword_1019F6990, &qword_10146D2F0);
      if (v46(v49 + v44, 1, v143) == 1)
      {
        sub_10000CAAC(v138, &qword_1019F6990, &qword_10146D2F0);
        sub_10000CAAC(v136, &qword_1019F6990, &qword_10146D2F0);
        v48 = v133;
        (*v133)(v50, v143);
        v36 = v135;
LABEL_20:
        v51 = sub_10000CAAC(v142, &unk_101A0AFE0, &unk_10146F3C0);
        v52 = v132;
        goto LABEL_21;
      }

      v72 = *v131;
      v125 = v46;
      v73 = v143;
      v74 = v126;
      v72(v126, v142 + v44, v143);
      sub_1009C2C74(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v124 = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = v50;
      v76 = v133;
      v77 = *v133;
      v78 = v74;
      v52 = v132;
      (*v133)(v78, v73);
      sub_10000CAAC(v138, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v136, &qword_1019F6990, &qword_10146D2F0);
      v79 = v75;
      v46 = v125;
      v80 = v73;
      v48 = v76;
      v77(v79, v80);
      v51 = sub_10000CAAC(v142, &qword_1019F6990, &qword_10146D2F0);
      v36 = v135;
      if (v124)
      {
        goto LABEL_8;
      }

LABEL_21:
      (v40)(v51);
      if (v46(v52, 1, v143) == 1)
      {
        sub_10000CAAC(v52, &qword_1019F6990, &qword_10146D2F0);
        goto LABEL_39;
      }

      v53 = v129;
      v54 = (*v131)(v129, v52, v143);
      v55 = (*((swift_isaMask & *v36) + 0x380))(v54);
      if (!v55)
      {
        goto LABEL_38;
      }

      v56 = v55;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v58 = [v56 getBoardItemForUUID:isa];

      v53 = v129;
      if (!v58)
      {
        goto LABEL_38;
      }

      type metadata accessor for CRLContainerItem(0);
      v59 = swift_dynamicCastClass();
      if (!v59)
      {

LABEL_38:
        (*v48)(v53, v143);
        goto LABEL_39;
      }

      v60 = v59;
      v61 = _swiftEmptyArrayStorage;
      v62 = sub_100BD51F4(_swiftEmptyArrayStorage);
      v63 = type metadata accessor for CRLPropertyMap();
      v64 = objc_allocWithZone(v63);
      *&v64[OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data] = v62;
      v144.receiver = v64;
      v144.super_class = v63;
      v65 = objc_msgSendSuper2(&v144, "init");
      v66 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
      v67 = *(v60 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
      if (!v67)
      {
        sub_10096C7D4();
        v67 = *(v60 + v66);
      }

      if (v67)
      {
        v61 = v67;
      }

      v147 = sub_1005B981C(&qword_101A0A360, qword_101489F20);
      v146 = v61;
      sub_10000BE14(&v146, &v145, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();

      sub_100BC1F00(&v145, 4);
      swift_endAccess();
      sub_10000CAAC(&v146, &unk_1019F4D00, &unk_10146E7F0);
      v68 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_100B361A0(0, v68[2] + 1, 1, v68);
      }

      v70 = v68[2];
      v69 = v68[3];
      v36 = v135;
      if (v70 >= v69 >> 1)
      {
        v68 = sub_100B361A0((v69 > 1), v70 + 1, 1, v68);
      }

      (*v48)(v129, v143);
      v68[2] = v70 + 1;
      v123 = v68;
      v71 = &v68[2 * v70];
      v71[4] = v60;
      v71[5] = v65;
LABEL_39:
      v81 = v36;
      v82 = *(**(v36 + v139) + 272);

      v84 = v130;
      v82(v83);

      if (v46(v84, 1, v143) == 1)
      {
        sub_10000CAAC(v84, &qword_1019F6990, &qword_10146D2F0);
        v36 = v81;
      }

      else
      {
        v85 = v127;
        v86 = (*v131)(v127, v84, v143);
        v87 = (*((swift_isaMask & *v81) + 0x380))(v86);
        v36 = v81;
        if (v87)
        {
          v88 = v87;
          v89 = UUID._bridgeToObjectiveC()().super.isa;
          v90 = [v88 getBoardItemForUUID:v89];

          if (v90)
          {
            type metadata accessor for CRLContainerItem(0);
            v91 = swift_dynamicCastClass();
            if (v91)
            {
              v92 = v91;
              v125 = v90;
              type metadata accessor for CRLContainerItemData(0);
              v93 = *(*swift_dynamicCastClassUnconditional() + 840);

              v95 = v122;
              v93(v94);
              v36 = v135;

              v96 = v121;
              v97 = v120;
              (*v119)(v121, v95, v120);
              v98 = sub_1009C3314(v95, type metadata accessor for CRLContainerItemCRDTData);
              v99 = v126;
              (*(**(v36 + v139) + 264))(v98);
              v100 = CROrderedSet.contains(_:)();
              v101 = *v48;
              (*v48)(v99, v143);
              (*v118)(v96, v97);
              if (v100)
              {
                v101(v127, v143);
              }

              else
              {
                v125 = v101;
                v102 = _swiftEmptyArrayStorage;
                v103 = sub_100BD51F4(_swiftEmptyArrayStorage);
                v104 = type metadata accessor for CRLPropertyMap();
                v105 = objc_allocWithZone(v104);
                *&v105[OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data] = v103;
                v148.receiver = v105;
                v148.super_class = v104;
                v106 = objc_msgSendSuper2(&v148, "init");
                v107 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
                v108 = *(v92 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
                if (!v108)
                {
                  sub_10096C7D4();
                  v108 = *(v92 + v107);
                }

                if (v108)
                {
                  v102 = v108;
                }

                v147 = sub_1005B981C(&qword_101A0A360, qword_101489F20);
                v146 = v102;
                sub_10000BE14(&v146, &v145, &unk_1019F4D00, &unk_10146E7F0);
                swift_beginAccess();

                sub_100BC1F00(&v145, 4);
                swift_endAccess();
                sub_10000CAAC(&v146, &unk_1019F4D00, &unk_10146E7F0);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v123 = sub_100B361A0(0, v123[2] + 1, 1, v123);
                }

                v110 = v123[2];
                v109 = v123[3];
                v36 = v135;
                v111 = v125;
                if (v110 >= v109 >> 1)
                {
                  v123 = sub_100B361A0((v109 > 1), v110 + 1, 1, v123);
                }

                v111();
                v112 = v123;
                v123[2] = v110 + 1;
                v113 = &v112[2 * v110];
                v113[4] = v92;
                v113[5] = v106;
              }

              goto LABEL_8;
            }

            v85 = v127;
          }
        }

        (*v48)(v85, v143);
      }

LABEL_8:
      v35 = v140;
      v31 = v141;
      v37 = v138;
LABEL_9:
      v35 += 2;
      if (!--v31)
      {
        swift_unknownObjectRelease();

        v114 = v123;
        goto LABEL_60;
      }
    }

    sub_10000CAAC(v37, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v41, &qword_1019F6990, &qword_10146D2F0);
    v47 = v46(v142 + v44, 1, v143);
    v36 = v135;
    v48 = v133;
    if (v47 == 1)
    {
      sub_10000CAAC(v142, &qword_1019F6990, &qword_10146D2F0);
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v114 = _swiftEmptyArrayStorage;
LABEL_60:
  v115 = sub_1006401DC(v114);

  return v115;
}

void *sub_1009B4B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - v5 + 16;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = *(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 272);

  v11(v12);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CAAC(v6, &qword_1019F6990, &qword_10146D2F0);
LABEL_15:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  (*(v8 + 32))(v10, v6, v7);
  ObjectType = swift_getObjectType();
  if (!(*(a2 + 16))(v10, ObjectType, a2))
  {
LABEL_14:
    (*(v8 + 8))(v10, v7);
    goto LABEL_15;
  }

  type metadata accessor for CRLContainerItem(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v15 = v14;
  v16 = sub_100BD51F4(_swiftEmptyArrayStorage);
  v17 = type metadata accessor for CRLPropertyMap();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data] = v16;
  v32.receiver = v18;
  v32.super_class = v17;
  v19 = objc_msgSendSuper2(&v32, "init");
  v20 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v21 = *(v15 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
  if (!v21)
  {
    sub_10096C7D4();
    v21 = *(v15 + v20);
  }

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v31[3] = sub_1005B981C(&qword_101A0A360, qword_101489F20);
  v31[0] = v22;
  sub_10000BE14(v31, v30, &unk_1019F4D00, &unk_10146E7F0);
  swift_beginAccess();

  sub_100BC1F00(v30, 4);
  swift_endAccess();
  sub_10000CAAC(v31, &unk_1019F4D00, &unk_10146E7F0);
  v23 = sub_100B361A0(0, 1, 1, _swiftEmptyArrayStorage);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_100B361A0((v24 > 1), v25 + 1, 1, v23);
  }

  (*(v8 + 8))(v10, v7);
  v23[2] = v25 + 1;
  v26 = &v23[2 * v25];
  v26[4] = v15;
  v26[5] = v19;
LABEL_16:
  v27 = sub_1006401DC(v23);

  return v27;
}

double sub_1009B4ED4()
{

  sub_100747BB4();

  return result;
}

char *sub_1009B4F54()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v2 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 416);

  v4 = v2(v3);
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(**(v0 + v1) + 416);

    v10 = v8(v9);
    v12 = v11;

    v13 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_100024CBC((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v10;
    *(v16 + 5) = v12;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v17 = sub_1009B05A0();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v21 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100024CBC(0, *(v13 + 2) + 1, 1, v13);
      }

      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      if (v23 >= v22 >> 1)
      {
        v13 = sub_100024CBC((v22 > 1), v23 + 1, 1, v13);
      }

      *(v13 + 2) = v23 + 1;
      v24 = &v13[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v20;
    }

    else
    {
    }
  }

  return v13;
}

uint64_t sub_1009B5140(uint64_t a1)
{
  sub_10000BE14(a1, v17, &unk_1019F4D00, &unk_10146E7F0);
  v3 = v18;
  if (v18)
  {
    v4 = sub_100020E58(v17, v18);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_100005070(v17);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v1 isEqual:v9];
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_9;
  }

  sub_10000BE14(a1, v17, &unk_1019F4D00, &unk_10146E7F0);
  if (!v18)
  {
    sub_10000CAAC(v17, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_9;
  }

  type metadata accessor for CRLBoardItemBase(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = 0;
    return v14 & 1;
  }

  v11 = v16[1];
  v12 = *(**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 512);

  v14 = v12(v13);

  return v14 & 1;
}

void sub_1009B5378(float32x4_t *a1)
{
  v36 = a1[1];
  v37 = *a1;
  v38 = a1[3];
  v39 = a1[2];
  if (!*(v1 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext) && ((*((swift_isaMask & *v1) + 0x388))() & 1) != 0)
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    *&v40[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v40, "Attempting to mutate spatial transform on a board item without a CRLTransactableContext set", 91, 2u);
    StaticString.description.getter("_setSpatialTransform(newValue:)", 31, 2);
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
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
    *(inited + 152) = 917;
    v20 = *&v40[0];
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "Attempting to mutate spatial transform on a board item without a CRLTransactableContext set", 91, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate spatial transform on a board item without a CRLTransactableContext set");
    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter("_setSpatialTransform(newValue:)", 31, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Attempting to mutate spatial transform on a board item without a CRLTransactableContext set", 91, 2);
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:917 isFatal:1 format:v29 args:v26];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v30, v31);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v4 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 320);

    v4(v40, v5);
    v32 = v40[1];
    v33 = v40[0];
    v34 = v40[3];
    v35 = v40[2];

    if (v41)
    {
      if (a1[4].i8[0])
      {
        return;
      }
    }

    else if ((a1[4].i8[0] & 1) == 0 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v32, v36), vceqq_f32(v33, v37)), vandq_s8(vceqq_f32(v35, v39), vceqq_f32(v34, v38)))) & 0x80000000) != 0)
    {
      return;
    }

    v6 = *(**(v1 + v3) + 328);

    v6(a1);
  }
}

double sub_1009B58C4(uint64_t a1)
{
  v3 = type metadata accessor for CRKeyPath();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v45 - v6;
  v7 = type metadata accessor for CRLTableAnchorHint(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A0B010, &unk_101479370);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  if (sub_1011255D4())
  {
    v49 = v16;
    v50 = v1;
    v47 = v10;
    v48 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v24 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 344);

    v24(v25);

    v26 = *(v11 + 48);
    sub_10000BE14(v22, v13, &unk_101A09DD0, &unk_101478C10);
    sub_10000BE14(a1, &v13[v26], &unk_101A09DD0, &unk_101478C10);
    v27 = *(v8 + 48);
    if (v27(v13, 1, v7) == 1)
    {
      sub_10000CAAC(v22, &unk_101A09DD0, &unk_101478C10);
      if (v27(&v13[v26], 1, v7) == 1)
      {
        sub_10000CAAC(v13, &unk_101A09DD0, &unk_101478C10);
        return result;
      }

      goto LABEL_7;
    }

    sub_10000BE14(v13, v19, &unk_101A09DD0, &unk_101478C10);
    if (v27(&v13[v26], 1, v7) == 1)
    {
      sub_10000CAAC(v22, &unk_101A09DD0, &unk_101478C10);
      sub_1009C3314(v19, type metadata accessor for CRLTableAnchorHint);
LABEL_7:
      sub_10000CAAC(v13, &unk_101A0B010, &unk_101479370);
      v29 = v49;
      v28 = v50;
      goto LABEL_13;
    }

    v46 = a1;
    sub_10074A42C(&v13[v26], v47);
    _s6CellIDVMa(0);
    sub_1009C2C74(&unk_101A0B020, _s6CellIDVMa, byte_1014D2118);
    v30 = v51;
    dispatch thunk of RawRepresentable.rawValue.getter();
    v31 = v52;
    dispatch thunk of RawRepresentable.rawValue.getter();
    sub_1009C2C74(&unk_101A2C5A0, &type metadata accessor for CRKeyPath, &protocol conformance descriptor for CRKeyPath);
    v32 = v54;
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    v34 = *(v53 + 8);
    v34(v31, v32);
    v34(v30, v32);
    v35 = v47;
    if ((v33 & 1) == 0 || (v36 = &v19[*(v7 + 20)], v37 = *(v36 + 1), v55[0] = *v36, v55[1] = v37, v38 = &v47[*(v7 + 20)], v39 = *(v38 + 1), v56[0] = *v38, v56[1] = v39, sub_101271C28(v55, v56), (v40 & 1) == 0))
    {
      sub_1009C3314(v35, type metadata accessor for CRLTableAnchorHint);
      sub_10000CAAC(v22, &unk_101A09DD0, &unk_101478C10);
      sub_1009C3314(v19, type metadata accessor for CRLTableAnchorHint);
      sub_10000CAAC(v13, &unk_101A09DD0, &unk_101478C10);
      v29 = v49;
      v28 = v50;
      a1 = v46;
      goto LABEL_13;
    }

    sub_100B3216C(*&v19[*(v7 + 24)], *(v35 + *(v7 + 24)));
    v42 = v41;
    sub_1009C3314(v35, type metadata accessor for CRLTableAnchorHint);
    sub_10000CAAC(v22, &unk_101A09DD0, &unk_101478C10);
    sub_1009C3314(v19, type metadata accessor for CRLTableAnchorHint);
    sub_10000CAAC(v13, &unk_101A09DD0, &unk_101478C10);
    v29 = v49;
    v28 = v50;
    a1 = v46;
    if ((v42 & 1) == 0)
    {
LABEL_13:
      v43 = *(v28 + v48);
      sub_10000BE14(a1, v29, &unk_101A09DD0, &unk_101478C10);
      v44 = *(*v43 + 352);

      v44(v29);
    }
  }

  return result;
}

double sub_1009B5F44(void *a1)
{
  v2 = v1;
  if (sub_1011255D4())
  {
    v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v6 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 440);

    v8 = v6(v7);

    if (v8)
    {
      if (a1)
      {
        sub_100006370(0, &unk_101A11F40, off_10182F940);
        v9 = a1;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          return result;
        }
      }

      else
      {
      }
    }

    else if (!a1)
    {
      return result;
    }

    v11 = *(**(v2 + v5) + 448);
    v12 = a1;

    v11(a1);
  }

  return result;
}

uint64_t sub_1009B6088(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1009BDCB0(a1, v2);
}

void *sub_1009B60D8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1009C08A8(a1);
}

void sub_1009B611C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = (*(v5 + 16))(&v22 - v10, a1 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_id, v4, v9);
  v22 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v12);
  v13 = static UUID.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v11, v4);
  if (v13)
  {
    v15 = v25;
    sub_1012E0400(v2, &off_10188FE10);
    if (!v15)
    {
      v16 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
      swift_beginAccess();
      v17 = *(a1 + v16);
      if (*(v17 + 16))
      {

        v18 = sub_1007C8124(0);
        if (v19)
        {
          sub_10000BE14(*(v17 + 56) + 32 * v18, v23, &unk_1019F4D00, &unk_10146E7F0);

          v24[0] = v23[0];
          v24[1] = v23[1];
          v20 = *(**(v2 + v22) + 648);

          v20(v24);

          sub_10000CAAC(v24, &unk_1019F4D00, &unk_10146E7F0);
        }

        else
        {
        }
      }

      sub_1012CF6CC(v2, &off_10188FE10, 2);
    }
  }

  else
  {
    sub_1009C3238();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
  }
}

void sub_1009B6424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  sub_1009BE298(a1, a2, a3, a4, v5);
}

uint64_t sub_1009B6498()
{

  sub_100743DF0();
  v1 = v0;

  return v1;
}

void sub_1009B64DC(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X8>)
{
  v8 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v9 = *(**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 520);

  v10 = v9(a1, a2);
  v12 = v11;

  if (!v4)
  {
    v60 = a3;
    v61 = v12;
    v13 = *(**(v3 + v8) + 528);

    v14 = v13(a1, a2 & 1);
    v15 = v3;
    v16 = v14;
    v18 = v17;

    sub_1005B981C(&unk_101A22760, &unk_101482CB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v58 = v15;
    *(inited + 32) = 1;
    *(inited + 40) = v10;
    *(inited + 48) = v61;
    *(inited + 56) = 2;
    *(inited + 64) = v16;
    *(inited + 72) = v18;
    sub_100024E98(v10, v61);
    v57 = v16;
    sub_100024E98(v16, v18);
    v20 = sub_100BD5754(inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_101A0B000, &unk_10148AB50);
    swift_arrayDestroy();
    v55 = v8;
    v21 = *(**(v15 + v8) + 536);

    v22 = v21(a1, a2 & 1);
    v24 = v23;
    v54 = v20;
    v25 = v22;

    if (v24 >> 60 != 15)
    {
      sub_100024E98(v25, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v20;
      sub_100A9BBAC(v25, v24, 3, isUniquelyReferenced_nonNull_native);
      v26 = sub_100025870(v25, v24);
    }

    v28 = v58;
    v29 = *(v58 + v8);
    v30 = (*(*v29 + 464))(v26);
    if ((v32 & 0x100) != 0)
    {
      if (v30 | v31)
      {
        v34 = 0;
      }

      else
      {
        v34 = v32 == 0;
      }

      if (v34)
      {
        v53 = 0;
        v52 = 0;
        v33 = 2;
      }

      else if (v30 == 1 && v31 == 0 && v32 == 0)
      {
        v53 = 0;
        v52 = 1;
        v33 = 3;
      }

      else if (v30 == 2 && v31 == 0 && v32 == 0)
      {
        v53 = 0;
        v52 = 1;
        v33 = 4;
      }

      else if (v30 != 3 || v31 || v32)
      {
        if (v30 != 4 || v31 || v32)
        {
          if (v30 != 5 || v31 || v32)
          {
            if (v30 != 6 || v31 || v32)
            {
              if (v30 != 7 || v31 || v32)
              {
                if (v30 != 8 || v31 || v32)
                {
                  if (v30 != 9 || v31 || v32)
                  {
                    if (v30 != 10 || v31 || v32)
                    {
                      if (v32)
                      {
                        v49 = 0;
                      }

                      else
                      {
                        v49 = v31 == 0;
                      }

                      v50 = v49 && v30 == 11;
                      v51 = 1;
                      if (!v50)
                      {
                        v51 = 2;
                      }

                      v53 = v51;
                      v33 = 2;
                      v52 = 0;
                      v28 = v58;
                    }

                    else
                    {
                      v53 = 0;
                      v52 = 1;
                      v33 = 12;
                      v28 = v58;
                    }
                  }

                  else
                  {
                    v53 = 0;
                    v52 = 1;
                    v33 = 11;
                    v28 = v58;
                  }
                }

                else
                {
                  v53 = 0;
                  v52 = 1;
                  v33 = 10;
                }
              }

              else
              {
                v53 = 0;
                v52 = 1;
                v33 = 9;
              }
            }

            else
            {
              v53 = 0;
              v52 = 1;
              v33 = 8;
            }
          }

          else
          {
            v53 = 0;
            v52 = 1;
            v33 = 7;
          }
        }

        else
        {
          v53 = 0;
          v52 = 1;
          v33 = 6;
        }
      }

      else
      {
        v53 = 0;
        v52 = 1;
        v33 = 5;
      }
    }

    else
    {
      v33 = v30;
      v52 = v32;
      v53 = v31;
    }

    v39 = *(*v29 + 664);

    v41 = v39(v40);
    v42 = (*(*v29 + 672))();
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v41;
    sub_1010935A0(v42, sub_100E8FDF4, 0, v43, &v62);

    v44 = v62;
    v45 = sub_100BD5554(_swiftEmptyArrayStorage);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v44;
    sub_1010935A0(v45, sub_100E8FDF4, 0, v46, &v62);

    v47 = v62;
    v48 = *(v28 + v55);
    v59 = v48[2];
    v56 = v48[1];
    sub_10002640C(v57, v18);
    sub_10002640C(v10, v61);
    *v60 = vextq_s8(v56, v59, 8uLL);
    v60[1] = vextq_s8(v59, v56, 8uLL);
    v60[2].i64[0] = v33;
    v60[2].i64[1] = v53;
    v60[3].i8[0] = v52 & 1;
    v60[3].i64[1] = v54;
    v60[4].i64[0] = v47;
    v60[4].i64[1] = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1009B6B8C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1009B7078()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

unint64_t sub_1009B7300(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x70756F7267;
      break;
    case 2:
      result = 0x6570616873;
      break;
    case 3:
      result = 0x697463656E6E6F63;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 1701603686;
      break;
    case 7:
      result = 7107189;
      break;
    case 8:
      result = 2053403509;
      break;
    case 9:
      result = 0x646E616865657266;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6F4E796B63697473;
      break;
    case 12:
      result = 0x656C626174;
      break;
    case 13:
      result = 0x65636166727573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1009B7464(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v87 = a4;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  v53 = sub_1005B981C(&qword_101A0AF60, &qword_10148AAD0);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v48 - v5;
  v50 = sub_1005B981C(&qword_101A0AF68, &qword_10148AAD8);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v48 - v6;
  v56 = sub_1005B981C(&qword_101A0AF70, &qword_10148AAE0);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v48 - v7;
  v59 = sub_1005B981C(&qword_101A0AF78, &qword_10148AAE8);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v48 - v8;
  v62 = sub_1005B981C(&qword_101A0AF80, &qword_10148AAF0);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v48 - v9;
  v65 = sub_1005B981C(&qword_101A0AF88, &qword_10148AAF8);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v48 - v10;
  v68 = sub_1005B981C(&qword_101A0AF90, &qword_10148AB00);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v48 - v11;
  v71 = sub_1005B981C(&qword_101A0AF98, &qword_10148AB08);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v48 - v12;
  v13 = sub_1005B981C(&qword_101A0AFA0, &qword_10148AB10);
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v72 = &v48 - v14;
  v15 = sub_1005B981C(&qword_101A0AFA8, &qword_10148AB18);
  v76 = *(v15 - 8);
  v77 = v15;
  __chkstk_darwin(v15);
  v75 = &v48 - v16;
  v17 = sub_1005B981C(&qword_101A0AFB0, &qword_10148AB20);
  v79 = *(v17 - 8);
  v80 = v17;
  __chkstk_darwin(v17);
  v78 = &v48 - v18;
  v19 = sub_1005B981C(&qword_101A0AFB8, &qword_10148AB28);
  v82 = *(v19 - 8);
  v83 = v19;
  __chkstk_darwin(v19);
  v81 = &v48 - v20;
  v21 = sub_1005B981C(&qword_101A0AFC0, &qword_10148AB30);
  v84 = *(v21 - 8);
  v85 = v21;
  __chkstk_darwin(v21);
  v23 = &v48 - v22;
  v24 = sub_1005B981C(&qword_101A0AFC8, &qword_10148AB38);
  v86 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v48 - v25;
  v27 = sub_1005B981C(&qword_101A0AFD0, &unk_10148AB40);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v48 - v29;
  sub_100020E58(a1, a1[3]);
  sub_1009C26B0();
  v31 = v87;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v31 & 0x100) == 0)
  {
    LOBYTE(v89) = 0;
    sub_1009C2B48();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v89 = v88;
    v90 = v31 & 1;
    sub_1009C2BF0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v86 + 8))(v26, v24);
    return (*(v28 + 8))(v30, v27);
  }

  if (v88 != 0 || v31)
  {
    if (v88 != 1 || v31)
    {
      if (v88 == 2 && !v31)
      {
        LOBYTE(v89) = 3;
        sub_1009C2A4C();
        v23 = v78;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v79;
        v33 = v80;
        goto LABEL_6;
      }

      if (v88 == 3 && !v31)
      {
        LOBYTE(v89) = 4;
        sub_1009C29F8();
        v23 = v75;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v76;
        v33 = v77;
        goto LABEL_6;
      }

      if (v88 == 4 && !v31)
      {
        LOBYTE(v89) = 5;
        sub_1009C29A4();
        v23 = v72;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v73;
        v33 = v74;
        goto LABEL_6;
      }

      if (v88 != 5 || v31)
      {
        if (v88 != 6 || v31)
        {
          if (v88 != 7 || v31)
          {
            if (v88 != 8 || v31)
            {
              if (v88 != 9 || v31)
              {
                if (v88 != 0xA || v31)
                {
                  if (v88 != 0xB || v31)
                  {
                    LOBYTE(v89) = 13;
                    sub_1009C2704();
                    v47 = v51;
                    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
                    v37 = *(v52 + 8);
                    v38 = v47;
                    v40 = &v85;
                  }

                  else
                  {
                    LOBYTE(v89) = 12;
                    sub_1009C2758();
                    v46 = v48;
                    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
                    v37 = *(v49 + 8);
                    v38 = v46;
                    v40 = &v82;
                  }
                }

                else
                {
                  LOBYTE(v89) = 11;
                  sub_1009C27AC();
                  v45 = v54;
                  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
                  v37 = *(v55 + 8);
                  v38 = v45;
                  v40 = &v88;
                }
              }

              else
              {
                LOBYTE(v89) = 10;
                sub_1009C2800();
                v44 = v57;
                KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
                v37 = *(v58 + 8);
                v38 = v44;
                v40 = &v89 + 1;
              }
            }

            else
            {
              LOBYTE(v89) = 9;
              sub_1009C2854();
              v43 = v60;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v37 = *(v61 + 8);
              v38 = v43;
              v40 = &v91;
            }
          }

          else
          {
            LOBYTE(v89) = 8;
            sub_1009C28A8();
            v42 = v63;
            KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v37 = *(v64 + 8);
            v38 = v42;
            v40 = &v92;
          }
        }

        else
        {
          LOBYTE(v89) = 7;
          sub_1009C28FC();
          v41 = v66;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v37 = *(v67 + 8);
          v38 = v41;
          v40 = &v93;
        }
      }

      else
      {
        LOBYTE(v89) = 6;
        sub_1009C2950();
        v39 = v69;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v37 = *(v70 + 8);
        v38 = v39;
        v40 = &v94;
      }

      v36 = *(v40 - 32);
    }

    else
    {
      LOBYTE(v89) = 2;
      sub_1009C2AA0();
      v35 = v81;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v83;
      v37 = *(v82 + 8);
      v38 = v35;
    }

    v37(v38, v36);
    return (*(v28 + 8))(v30, v27);
  }

  LOBYTE(v89) = 1;
  sub_1009C2AF4();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v34 = v84;
  v33 = v85;
LABEL_6:
  (*(v34 + 8))(v23, v33);
  return (*(v28 + 8))(v30, v27);
}

uint64_t sub_1009B8270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009C0EE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009B82A4(uint64_t a1)
{
  v2 = sub_1009C26B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B82E0(uint64_t a1)
{
  v2 = sub_1009C26B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B831C(uint64_t a1)
{
  v2 = sub_1009C2A4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8358(uint64_t a1)
{
  v2 = sub_1009C2A4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B8394(uint64_t a1)
{
  v2 = sub_1009C2950();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B83D0(uint64_t a1)
{
  v2 = sub_1009C2950();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B840C(uint64_t a1)
{
  v2 = sub_1009C2854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8448(uint64_t a1)
{
  v2 = sub_1009C2854();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B8484(uint64_t a1)
{
  v2 = sub_1009C2800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B84C0(uint64_t a1)
{
  v2 = sub_1009C2800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B84FC(uint64_t a1)
{
  v2 = sub_1009C2AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8538(uint64_t a1)
{
  v2 = sub_1009C2AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B8574(uint64_t a1)
{
  v2 = sub_1009C29F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B85B0(uint64_t a1)
{
  v2 = sub_1009C29F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B85EC(uint64_t a1)
{
  v2 = sub_1009C29A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8628(uint64_t a1)
{
  v2 = sub_1009C29A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B8664(uint64_t a1)
{
  v2 = sub_1009C2AA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B86A0(uint64_t a1)
{
  v2 = sub_1009C2AA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B86DC(uint64_t a1)
{
  v2 = sub_1009C27AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8718(uint64_t a1)
{
  v2 = sub_1009C27AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B8754(uint64_t a1)
{
  v2 = sub_1009C2704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8790(uint64_t a1)
{
  v2 = sub_1009C2704();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B87CC(uint64_t a1)
{
  v2 = sub_1009C2758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8808(uint64_t a1)
{
  v2 = sub_1009C2758();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B8860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000010157EF40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1009B88F4(uint64_t a1)
{
  v2 = sub_1009C2B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8930(uint64_t a1)
{
  v2 = sub_1009C2B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B896C(uint64_t a1)
{
  v2 = sub_1009C28FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B89A8(uint64_t a1)
{
  v2 = sub_1009C28FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B89E4(uint64_t a1)
{
  v2 = sub_1009C28A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B8A20(uint64_t a1)
{
  v2 = sub_1009C28A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B8A5C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1009C1348(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

id sub_1009B8F5C(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = (*((swift_isaMask & *a1) + 0xC8))();
  a3(v4);
  v5 = String._bridgeToObjectiveC()();

  return v5;
}

void sub_1009BA7A4(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v5 = [a1 layoutForInfo:a4];
  a2();
}

BOOL sub_1009BA8F0(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x160);
  v2 = a1;
  LOBYTE(v1) = v1();

  return (v1 & 1) == 0;
}

void sub_1009BABA4(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v8 = xmmword_101463BB0;
    v7 = xmmword_101466510;
    v5 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v3 = [a1 pureGeometry];
  if (v3)
  {
    v4 = v3;
    [v3 fullTransform];
    v7 = v9;
    v8 = v10;
    v5 = v11;
    v6 = v12;

LABEL_5:
    swift_beginAccess();
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *(a2 + 48) = v5;
    *(a2 + 56) = v6;
    return;
  }

  __break(1u);
}

double sub_1009BADC8@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X2>, _OWORD *a3@<X8>)
{
  v5 = a1;
  a2(v9);

  result = *v9;
  v7 = v9[1];
  v8 = v9[2];
  *a3 = v9[0];
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

void sub_1009BBA10(uint64_t a1)
{
  sub_10084E720(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1009BBAC4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext) = a1;

  return result;
}

__n128 sub_1009BBDF4@<Q0>(uint64_t a1@<X8>)
{
  (*((swift_isaMask & *v1) + 0x400))(v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1009BC874(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  sub_10000BE14(a1, v68, &unk_1019F4D00, &unk_10146E7F0);
  if (!v69)
  {
    sub_10000CAAC(v68, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_407;
  }

  type metadata accessor for CRLBoardItemBase(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_407:
    v22 = 0;
    return v22 & 1;
  }

  v10 = v67;
  if (v67 != v1)
  {
    v11 = *&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    v12 = *(*v11 + 464);
    v66 = v11;
    v13 = v12();
    v15 = v14;
    v17 = v16;
    v18 = v10;
    v65 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v19 = (*(**&v10[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 464))();
    if ((v17 & 0x100) == 0)
    {
      if ((v21 & 0x100) != 0 || v13 != v19)
      {
        goto LABEL_406;
      }

      if (v17)
      {
        if ((v21 & 1) == 0)
        {
LABEL_406:

          goto LABEL_407;
        }
      }

      else if ((v21 & 1) != 0 || v15 != v20)
      {
        goto LABEL_406;
      }

      goto LABEL_108;
    }

    if (v13 | v15)
    {
      v23 = 0;
    }

    else
    {
      v23 = v17 == 0;
    }

    if (v23)
    {
      if ((v21 & 0x100) == 0)
      {
        goto LABEL_406;
      }

      if (v19 | v20 || v21 != 0)
      {
        goto LABEL_406;
      }
    }

    else if (v13 == 1 && v15 == 0 && v17 == 0)
    {
      if ((v21 & 0x100) == 0)
      {
        goto LABEL_406;
      }

      if (!(v19 | v20) && v21 == 0)
      {
        goto LABEL_406;
      }

      v38 = v19 == 1 && v20 == 0;
      if (!v38 || v21 != 0)
      {
        goto LABEL_406;
      }
    }

    else if (v13 == 2 && v15 == 0 && v17 == 0)
    {
      if ((v21 & 0x100) == 0)
      {
        goto LABEL_406;
      }

      if (!(v19 | v20) && v21 == 0)
      {
        goto LABEL_406;
      }

      v43 = v19 == 1 && v20 == 0;
      if (v43 && v21 == 0)
      {
        goto LABEL_406;
      }

      v45 = v19 == 2 && v20 == 0;
      if (!v45 || v21 != 0)
      {
        goto LABEL_406;
      }
    }

    else if (v13 == 3 && v15 == 0 && v17 == 0)
    {
      if ((v21 & 0x100) == 0)
      {
        goto LABEL_406;
      }

      if (!(v19 | v20) && v21 == 0)
      {
        goto LABEL_406;
      }

      v48 = v19 == 1 && v20 == 0;
      if (v48 && v21 == 0)
      {
        goto LABEL_406;
      }

      v50 = v19 == 2 && v20 == 0;
      if (v50 && v21 == 0)
      {
        goto LABEL_406;
      }

      v52 = v19 == 3 && v20 == 0;
      if (!v52 || v21 != 0)
      {
        goto LABEL_406;
      }
    }

    else if (v13 == 4 && v15 == 0 && v17 == 0)
    {
      if ((v21 & 0x100) == 0)
      {
        goto LABEL_406;
      }

      if (!(v19 | v20) && v21 == 0)
      {
        goto LABEL_406;
      }

      v55 = v19 == 1 && v20 == 0;
      if (v55 && v21 == 0)
      {
        goto LABEL_406;
      }

      v57 = v19 == 2 && v20 == 0;
      v58 = v57 && v21 == 0;
      if (v58 || v19 == 3 && !v20 && !v21 || v19 != 4 || v20 || v21)
      {
        goto LABEL_406;
      }
    }

    else if (v13 == 5 && v15 == 0 && v17 == 0)
    {
      if ((v21 & 0x100) == 0)
      {
        goto LABEL_406;
      }

      if (!(v19 | v20) && v21 == 0)
      {
        goto LABEL_406;
      }

      v60 = v19 == 1 && v20 == 0;
      v61 = v60 && v21 == 0;
      if (v61 || v19 == 2 && !v20 && !v21 || v19 == 3 && !v20 && !v21 || v19 == 4 && !v20 && !v21 || v19 != 5 || v20 || v21)
      {
        goto LABEL_406;
      }
    }

    else if (v13 == 6 && v15 == 0 && v17 == 0)
    {
      if ((v21 & 0x100) == 0)
      {
        goto LABEL_406;
      }

      v62 = !(v19 | v20) && v21 == 0;
      if (v62 || v19 == 1 && !v20 && !v21 || v19 == 2 && !v20 && !v21 || v19 == 3 && !v20 && !v21 || v19 == 4 && !v20 && !v21 || v19 == 5 && !v20 && !v21 || v19 != 6 || v20 || v21)
      {
        goto LABEL_406;
      }
    }

    else
    {
      if (v13 == 7 && !v15 && !v17)
      {
        if ((v21 & 0x100) == 0 || !(v19 | v20) && !v21 || v19 == 1 && !v20 && !v21 || v19 == 2 && !v20 && !v21 || v19 == 3 && !v20 && !v21 || v19 == 4 && !v20 && !v21 || v19 == 5 && !v20 && !v21 || v19 == 6 && !v20 && !v21 || v19 != 7 || v20 || v21)
        {
          goto LABEL_406;
        }

        goto LABEL_108;
      }

      if (v13 == 8 && !v15 && !v17)
      {
        if ((v21 & 0x100) == 0 || !(v19 | v20) && !v21 || v19 == 1 && !v20 && !v21 || v19 == 2 && !v20 && !v21 || v19 == 3 && !v20 && !v21 || v19 == 4 && !v20 && !v21 || v19 == 5 && !v20 && !v21 || v19 == 6 && !v20 && !v21 || v19 == 7 && !v20 && !v21 || v19 != 8 || v20 || v21)
        {
          goto LABEL_406;
        }

        goto LABEL_108;
      }

      if (v13 == 9 && !v15 && !v17)
      {
        if ((v21 & 0x100) == 0 || !(v19 | v20) && !v21 || v19 == 1 && !v20 && !v21 || v19 == 2 && !v20 && !v21 || v19 == 3 && !v20 && !v21 || v19 == 4 && !v20 && !v21 || v19 == 5 && !v20 && !v21 || v19 == 6 && !v20 && !v21 || v19 == 7 && !v20 && !v21 || v19 == 8 && !v20 && !v21 || v19 != 9)
        {
          goto LABEL_406;
        }

LABEL_294:
        if (v20 || v21)
        {
          goto LABEL_406;
        }

        goto LABEL_108;
      }

      if (v13 == 10 && !v15 && !v17)
      {
        if ((v21 & 0x100) == 0 || !(v19 | v20) && !v21 || v19 == 1 && !v20 && !v21 || v19 == 2 && !v20 && !v21 || v19 == 3 && !v20 && !v21 || v19 == 4 && !v20 && !v21 || v19 == 5 && !v20 && !v21 || v19 == 6 && !v20 && !v21 || v19 == 7 && !v20 && !v21 || v19 == 8 && !v20 && !v21 || v19 == 9 && !v20 && !v21 || v19 != 10)
        {
          goto LABEL_406;
        }

        goto LABEL_294;
      }

      if (v13 == 11 && !v15 && !v17)
      {
        v18 = v10;
        if ((v21 & 0x100) == 0 || !(v19 | v20) && !v21 || v19 == 1 && !v20 && !v21 || v19 == 2 && !v20 && !v21 || v19 == 3 && !v20 && !v21 || v19 == 4 && !v20 && !v21 || v19 == 5 && !v20 && !v21 || v19 == 6 && !v20 && !v21 || v19 == 7 && !v20 && !v21 || v19 == 8 && !v20 && !v21 || v19 == 9 && !v20 && !v21 || v19 == 10 && !v20 && !v21 || v19 != 11)
        {
          goto LABEL_406;
        }

        goto LABEL_294;
      }

      v18 = v10;
      if ((v21 & 0x100) == 0 || !(v19 | v20) && !v21 || v19 == 1 && !v20 && !v21 || v19 == 2 && !v20 && !v21 || v19 == 3 && !v20 && !v21 || v19 == 4 && !v20 && !v21 || v19 == 5 && !v20 && !v21 || v19 == 6 && !v20 && !v21 || v19 == 7 && !v20 && !v21 || v19 == 8 && !v20 && !v21 || v19 == 9 && !v20 && !v21 || v19 == 10 && !v20 && !v21 || v19 == 11 && !v20 && !v21)
      {
        goto LABEL_406;
      }
    }

LABEL_108:
    v40 = (*(*v66 + 264))();
    (*(**&v18[v65] + 264))(v40);
    v22 = static UUID.== infix(_:_:)();

    v41 = *(v4 + 8);
    v41(v6, v3);
    v41(v9, v3);
    return v22 & 1;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1009BD41C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_10000CAAC(v10, &unk_1019F4D00, &unk_10146E7F0);
  return v8 & 1;
}

Swift::Int sub_1009BD4E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Hasher.init()();
  v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v7 = (*(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 464))(v5);
  v10 = v8;
  v11 = v9;
  if ((v9 & 0x100) != 0)
  {
    if (v7 | v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 0;
    }

    if (v12)
    {
      v10 = 0;
    }

    else
    {
      if (v7 == 1 && v8 == 0 && v9 == 0)
      {
        v31 = 3;
        goto LABEL_87;
      }

      if (v7 == 2 && v8 == 0 && v9 == 0)
      {
        v31 = 4;
        goto LABEL_87;
      }

      if (v7 == 3 && v8 == 0 && v9 == 0)
      {
        v31 = 5;
        goto LABEL_87;
      }

      if (v7 == 4 && v8 == 0 && v9 == 0)
      {
        v31 = 6;
        goto LABEL_87;
      }

      if (v7 == 5 && v8 == 0 && v9 == 0)
      {
        v31 = 7;
        goto LABEL_87;
      }

      if (v7 == 6 && v8 == 0 && v9 == 0)
      {
        v31 = 8;
        goto LABEL_87;
      }

      if (v7 == 7 && v8 == 0 && v9 == 0)
      {
        v31 = 9;
        goto LABEL_87;
      }

      if (v7 == 8 && v8 == 0 && v9 == 0)
      {
        v31 = 10;
        goto LABEL_87;
      }

      if (v7 == 9 && v8 == 0 && v9 == 0)
      {
        v31 = 11;
        goto LABEL_87;
      }

      if (v7 == 10 && !v8 && !v9)
      {
        v31 = 12;
LABEL_87:
        Hasher._combine(_:)(v31);
LABEL_88:
        Hasher._combine(_:)(0);
        goto LABEL_89;
      }

      if (v9)
      {
        v33 = 0;
      }

      else
      {
        v33 = v8 == 0;
      }

      if (v33 && v7 == 11)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    Hasher._combine(_:)(2uLL);
    goto LABEL_77;
  }

  Hasher._combine(_:)(v7);
  if (v11)
  {
    goto LABEL_88;
  }

LABEL_77:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v10);
LABEL_89:
  (*(**(v0 + v6) + 264))();
  sub_1009C2C74(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher.finalize()();
}

double sub_1009BD9C0()
{

  return result;
}

id sub_1009BDA18(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for CRLBoardItemType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLBoardItemType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 18) = v3;
  return result;
}

uint64_t sub_1009BDBF8(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1009BDC14(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

unint64_t sub_1009BDC4C()
{
  result = qword_101A0AE50;
  if (!qword_101A0AE50)
  {
    v3 = sub_1005C4E5C(&qword_101A0AE58, qword_10148A948);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A0AE50);
  }

  return result;
}

uint64_t sub_1009BDCB0(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v3 = *(v40 - 8);
  __chkstk_darwin(v40);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLBoardItemBase(0);
  if (swift_dynamicCastClass())
  {
    v44 = _swiftEmptyDictionarySingleton;
    v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v7 = *(**(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 632);
    swift_unknownObjectRetain();

    v7(&v41, v8);

    if (v42)
    {
      sub_10000BF3C(&v41, v43);
      sub_100064288(v43, &v41);
      sub_100BC1CF0(&v41, 0);
      v9 = sub_100005070(v43);
      v10 = v44;
    }

    else
    {
      v9 = sub_10000CAAC(&v41, &unk_1019F4D00, &unk_10146E7F0);
      v10 = _swiftEmptyDictionarySingleton;
    }

    (*(**(a2 + v6) + 264))(v9);
    sub_1010A7F08(v10);
    v12 = v11;

    swift_unknownObjectRelease();
    type metadata accessor for CRLTransactableUndoingMutations(0);
    v13 = swift_allocObject();
    (*(v3 + 32))(v13 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_id, v5, v40);
    *(v13 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values) = v12;
    return v13;
  }

  else
  {
    v15 = objc_opt_self();
    v16 = [v15 _atomicIncrementAssertCount];
    *&v43[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v43, "Tried to generate undo from mismatched type", 43, 2u);
    StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v25;
    v26 = sub_1005CF04C();
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 975;
    v28 = *&v43[0];
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
    v37 = String._bridgeToObjectiveC()();

    [v15 handleFailureInFunction:v35 file:v36 lineNumber:975 isFatal:1 format:v37 args:v34];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v38, v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1009BE284@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;
}

void sub_1009BE298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v211 = a5;
  v7 = a3;
  v208 = a1;
  v205 = type metadata accessor for UUID();
  v9 = *(v205 - 8);
  __chkstk_darwin(v205);
  v185 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v191);
  v209 = &v180 - v11;
  v12 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v12 - 8);
  v188 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v190 = &v180 - v15;
  __chkstk_darwin(v16);
  v204 = &v180 - v17;
  __chkstk_darwin(v18);
  v202 = &v180 - v19;
  if (v7)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_3;
    }

    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10146BDE0;
    v141 = CRLTransactablePropertyMapKeys.rawValue.getter(v7);
    v143 = v142;
    *(v47 + 56) = &type metadata for String;
    v144 = sub_1000053B0();
    *(v47 + 32) = v141;
    v23 = (v47 + 32);
    v210 = v144;
    *(v47 + 64) = v144;
    *(v47 + 40) = v143;
    *(v47 + 96) = type metadata accessor for CRLBoardItemBase(0);
    *(v47 + 104) = sub_1009C2C74(&qword_101A0AFF0, type metadata accessor for CRLBoardItemBase, &protocol conformance descriptor for NSObject);
    v49 = v211;
    *(v47 + 72) = v211;
    v145 = objc_opt_self();
    v146 = v49;
    v209 = v145;
    LODWORD(v49) = [v145 _atomicIncrementAssertCount];
    *&v220[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v47, v220, "Unhandled CRLTransactablePropertyMapKeys key %@ for transactable %@", 67, 2u);
    StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v147 = String._bridgeToObjectiveC()();

    v148 = [v147 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v149;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_144;
    }

LABEL_106:
    v150 = static OS_os_log.crlAssert;
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_10146CA70;
    *(v151 + 56) = &type metadata for Int32;
    *(v151 + 64) = &protocol witness table for Int32;
    *(v151 + 32) = v49;
    v152 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v151 + 96) = v152;
    v153 = sub_1005CF04C();
    *(v151 + 72) = v25;
    v154 = v210;
    *(v151 + 136) = &type metadata for String;
    *(v151 + 144) = v154;
    *(v151 + 104) = v153;
    *(v151 + 112) = v24;
    *(v151 + 120) = v5;
    *(v151 + 176) = &type metadata for UInt;
    *(v151 + 184) = &protocol witness table for UInt;
    *(v151 + 152) = 1092;
    v155 = *&v220[0];
    *(v151 + 216) = v152;
    *(v151 + 224) = v153;
    *(v151 + 192) = v155;
    v156 = v25;
    v157 = v155;
    v158 = static os_log_type_t.error.getter();
    sub_100005404(v150, &_mh_execute_header, v158, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v151);
    swift_setDeallocating();
    v210 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v159 = static os_log_type_t.error.getter();
    sub_100005404(v150, &_mh_execute_header, v159, "Unhandled CRLTransactablePropertyMapKeys key %@ for transactable %@", 67, 2, v47);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    *(v25 + 24) = 0;
    v160 = (v25 + 24);
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    v211 = v47;
    v161 = *(v47 + 16);
    if (!v161)
    {
LABEL_131:
      v176 = __VaListBuilder.va_list()();
      StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
      v177 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
      v178 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Unhandled CRLTransactablePropertyMapKeys key %@ for transactable %@", 67, 2);
      v179 = String._bridgeToObjectiveC()();

      [v209 handleFailureInFunction:v177 file:v178 lineNumber:1092 isFatal:0 format:v179 args:v176];

      swift_setDeallocating();
      swift_arrayDestroy();

      swift_deallocClassInstance();
      return;
    }

    v162 = 0;
    v47 = 40;
    while (1)
    {
      v163 = &v23[5 * v162];
      v24 = v163[4];
      LODWORD(v49) = sub_100020E58(v163, v163[3]);
      v164 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v5 = *v160;
      v165 = *(v164 + 16);
      v54 = __OFADD__(*v160, v165);
      v166 = *v160 + v165;
      if (v54)
      {
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        swift_once();
        goto LABEL_106;
      }

      v49 = *(v25 + 32);
      if (v49 >= v166)
      {
        goto LABEL_123;
      }

      if (v49 + 0x4000000000000000 < 0)
      {
        goto LABEL_139;
      }

      v24 = *(v25 + 40);
      if (2 * v49 > v166)
      {
        v166 = 2 * v49;
      }

      *(v25 + 32) = v166;
      if ((v166 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_140;
      }

      v167 = v23;
      v168 = v164;
      v169 = swift_slowAlloc();
      v170 = v169;
      *(v25 + 40) = v169;
      if (v24)
      {
        break;
      }

      v164 = v168;
      v23 = v167;
      v47 = 40;
      if (!v170)
      {
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

LABEL_124:
      v172 = *(v164 + 16);
      if (v172)
      {
        v173 = (v164 + 32);
        v174 = *v160;
        while (1)
        {
          v175 = *v173++;
          *&v170[8 * v174] = v175;
          v174 = *v160 + 1;
          if (__OFADD__(*v160, 1))
          {
            break;
          }

          *v160 = v174;
          if (!--v172)
          {
            goto LABEL_108;
          }
        }

        __break(1u);
        goto LABEL_138;
      }

LABEL_108:

      if (++v162 == v161)
      {
        goto LABEL_131;
      }
    }

    if (v169 != v24 || v169 >= &v24[8 * v5])
    {
      memmove(v169, v24, 8 * v5);
    }

    LODWORD(v49) = v25;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v164 = v168;
    v23 = v167;
    v47 = 40;
LABEL_123:
    v170 = *(v25 + 40);
    if (!v170)
    {
      goto LABEL_130;
    }

    goto LABEL_124;
  }

LABEL_3:
  type metadata accessor for CRLBoardItemBase(0);
  v206 = swift_dynamicCastClass();
  if (!v206)
  {
    return;
  }

  v201 = *(a2 + 16);
  if (!v201)
  {
    return;
  }

  v210 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v21 = *(v206 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v207 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v200 = a2 + 32;
  v183 = a4;
  v184 = 0x8000000101563140;
  v182 = 0x8000000101563120;
  v203 = (v9 + 48);
  v186 = (v9 + 8);
  v187 = (v9 + 32);
  swift_unknownObjectRetain();
  v189 = v21;

  v22 = 0;
  v23 = &type metadata for String;
  v181 = xmmword_10146C6B0;
  v180 = xmmword_10146CA70;
  v25 = v202;
  while (1)
  {
    v26 = (v200 + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *v26 == 0x6641746E65726170 && v28 == 0xEE007974696E6966;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    (*(*v189 + 272))();
    v30 = *(**(v211 + v210) + 272);

    v5 = v204;
    v30(v31);

    v32 = *(v191 + 48);
    v33 = v209;
    sub_10000BE14(v25, v209, &qword_1019F6990, &qword_10146D2F0);
    sub_10000BE14(v5, &v33[v32], &qword_1019F6990, &qword_10146D2F0);
    v34 = *v203;
    v35 = v205;
    if ((*v203)(v33, 1, v205) == 1)
    {
      sub_10000CAAC(v5, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v25, &qword_1019F6990, &qword_10146D2F0);
      if (v34(&v209[v32], 1, v35) == 1)
      {
        v36 = v209;
        v37 = &qword_1019F6990;
        v38 = &qword_10146D2F0;
      }

      else
      {
LABEL_19:
        sub_10000CAAC(v209, &unk_101A0AFE0, &unk_10146F3C0);
LABEL_20:
        v40 = *(**(v211 + v210) + 272);

        v42 = v188;
        v40(v41);

        if (v34(v42, 1, v35) == 1)
        {
          sub_10000CAAC(v42, &qword_1019F6990, &qword_10146D2F0);
          v214 = 0u;
          v215 = 0u;
        }

        else
        {
          *(&v215 + 1) = v35;
          v57 = sub_10002C58C(&v214);
          (*v187)(v57, v42, v35);
        }

        v5 = &unk_10146E7F0;
        sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(v213, 0);
        swift_endAccess();
        v36 = &v214;
        v37 = &unk_1019F4D00;
        v38 = &unk_10146E7F0;
      }

      v58 = sub_10000CAAC(v36, v37, v38);
      v59 = v206;
      goto LABEL_34;
    }

    v39 = v209;
    sub_10000BE14(v209, v190, &qword_1019F6990, &qword_10146D2F0);
    if (v34(&v39[v32], 1, v35) == 1)
    {
      sub_10000CAAC(v204, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v25, &qword_1019F6990, &qword_10146D2F0);
      (*v186)(v190, v35);
      goto LABEL_19;
    }

    v65 = v209;
    v66 = v190;
    v67 = v185;
    (*v187)(v185, &v209[v32], v35);
    sub_1009C2C74(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v199.i32[0] = dispatch thunk of static Equatable.== infix(_:_:)();
    v68 = v22;
    v69 = v65;
    v5 = v186;
    v70 = *v186;
    (*v186)(v67, v205);
    sub_10000CAAC(v204, &qword_1019F6990, &qword_10146D2F0);
    v59 = v206;
    sub_10000CAAC(v202, &qword_1019F6990, &qword_10146D2F0);
    v70(v66, v205);
    v71 = v69;
    v22 = v68;
    v35 = v205;
    v58 = sub_10000CAAC(v71, &qword_1019F6990, &qword_10146D2F0);
    if ((v199.i8[0] & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_34:
    v60 = v22;
    v61 = (*((swift_isaMask & *v211) + 0xE0))(v58);
    v62 = (*((swift_isaMask & *v59) + 0xE0))();
    v63 = sub_100006370(0, &unk_1019F5730, off_10182F770);
    if (static NSObject.== infix(_:_:)())
    {
      goto LABEL_42;
    }

    if ([v61 isEqualExceptForPosition:v62])
    {
      *(&v215 + 1) = v63;
      *&v214 = v61;
      v5 = &unk_10146E7F0;
      sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      v64 = v61;
      sub_100BC1F00(v213, 6);
      swift_endAccess();
    }

    else
    {
      *(&v215 + 1) = v63;
      *&v214 = v61;
      v5 = &unk_1019F4D00;
      sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      v72 = v61;
      sub_100BC1F00(v213, 7);
      swift_endAccess();
      sub_10000CAAC(&v214, &unk_1019F4D00, &unk_10146E7F0);
      [v72 angle];
      v74 = v73;
      [v62 angle];
      if (sub_1009C2C44(v74, v75))
      {
        goto LABEL_42;
      }

      *(&v215 + 1) = v63;
      *&v214 = v72;
      sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      v76 = v72;
      sub_100BC1F00(v213, 8);
      swift_endAccess();
    }

    sub_10000CAAC(&v214, &unk_1019F4D00, &unk_10146E7F0);
LABEL_42:
    v77 = v210;
    v78 = *(**(v211 + v210) + 320);

    v78(v216, v79);
    v196 = v216[1];
    v197 = v216[0];
    v198 = v216[3];
    v199 = v216[2];

    v80 = *(**(v206 + v77) + 320);

    v80(v218, v81);
    v192 = v218[1];
    v193 = v218[0];
    v194 = v218[3];
    v195 = v218[2];

    if (v217)
    {
      if ((v219 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if ((v219 & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v196, v192), vceqq_f32(v197, v193)), vandq_s8(vceqq_f32(v199, v195), vceqq_f32(v198, v194)))) & 0x80000000) == 0)
    {
LABEL_47:
      v82 = *(**(v211 + v210) + 320);

      v82(v220, v83);

      if (v221)
      {
        v214 = 0u;
        v215 = 0u;
      }

      else
      {
        *(&v215 + 1) = &type metadata for CRL3DTransform;
        v84 = swift_allocObject();
        *&v214 = v84;
        v85 = v220[1];
        v84[1] = v220[0];
        v84[2] = v85;
        v86 = v220[3];
        v84[3] = v220[2];
        v84[4] = v86;
      }

      v25 = v202;
      v5 = &unk_10146E7F0;
      sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      sub_100BC1F00(v213, 9);
      swift_endAccess();

      sub_10000CAAC(&v214, &unk_1019F4D00, &unk_10146E7F0);
      goto LABEL_7;
    }

    v25 = v202;
LABEL_7:
    v22 = v60;
    v23 = &type metadata for String;
LABEL_8:
    if (++v22 == v201)
    {
      swift_unknownObjectRelease();

      return;
    }
  }

  v43 = v27 == 0x64656B636F6CLL && v28 == 0xE600000000000000;
  if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v44 = *(**(v211 + v210) + 368);

    LOBYTE(v44) = v44(v45);

    *(&v215 + 1) = &type metadata for Bool;
    LOBYTE(v214) = v44 & 1;
    v47 = v207;
    v46 = v208;
    swift_beginAccess();
    sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v46 + v47);
    v212 = v49;
    v50 = sub_1007CF108();
    v52 = *(v49 + 16);
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      goto LABEL_141;
    }

    v47 = v51;
    if (*(v49 + 24) >= v55)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_52;
      }

      v136 = v50;
      sub_100AA3EA4();
      v50 = v136;
      v49 = v212;
      if ((v47 & 1) == 0)
      {
        goto LABEL_101;
      }

LABEL_53:
      sub_10002C638(v213, *(v49 + 56) + 32 * v50, &unk_1019F4D00, &unk_10146E7F0);
    }

    else
    {
      sub_100A890C0(v55, isUniquelyReferenced_nonNull_native);
      v50 = sub_1007CF108();
      if ((v47 & 1) != (v56 & 1))
      {
        goto LABEL_149;
      }

LABEL_52:
      v49 = v212;
      if (v47)
      {
        goto LABEL_53;
      }

LABEL_101:
      *(v49 + 8 * (v50 >> 6) + 64) |= 1 << v50;
      *(*(v49 + 48) + 8 * v50) = 12;
      v137 = *(v49 + 56) + 32 * v50;
      v138 = v213[1];
      *v137 = v213[0];
      *(v137 + 16) = v138;
      v139 = *(v49 + 16);
      v54 = __OFADD__(v139, 1);
      v140 = v139 + 1;
      if (v54)
      {
        goto LABEL_142;
      }

      *(v49 + 16) = v140;
    }

    *(v208 + v207) = v49;
    swift_endAccess();
LABEL_104:
    sub_10000CAAC(&v214, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_8;
  }

  v87 = v27 == 0xD000000000000011 && v184 == v28;
  if (v87 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v88 = *(**(v211 + v210) + 392);

    LOBYTE(v88) = v88(v89);

    *(&v215 + 1) = &type metadata for Bool;
    LOBYTE(v214) = v88 & 1;
    v5 = &unk_1019F4D00;
    sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    v90 = 13;
LABEL_60:
    sub_100BC1F00(v213, v90);
    swift_endAccess();
    goto LABEL_104;
  }

  if (v27 == 0xD000000000000018 && v182 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v91 = *(**(v211 + v210) + 416);

    v93 = v91(v92);
    v95 = v94;

    *(&v215 + 1) = &type metadata for String;
    *&v214 = v93;
    *(&v214 + 1) = v95;
    v5 = &unk_1019F4D00;
    sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    v90 = 15;
    goto LABEL_60;
  }

  if (v27 == 0x776F64616873 && v28 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(&v215 + 1) = &type metadata for Bool;
    LOBYTE(v214) = 1;
    v5 = &unk_1019F4D00;
    sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    v90 = 17;
    goto LABEL_60;
  }

  if (v27 == 0x6574726F70707573 && v28 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v96 = (*((swift_isaMask & *v211) + 0x3F0))();
    *(&v215 + 1) = &type metadata for Bool;
    LOBYTE(v214) = v96 & 1;
    v5 = &unk_1019F4D00;
    sub_10000BE14(&v214, v213, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    v90 = 14;
    goto LABEL_60;
  }

  v194.i64[0] = v22;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v97 = swift_allocObject();
  *(v97 + 16) = v181;
  *(v97 + 56) = &type metadata for String;
  v98 = sub_1000053B0();
  *(v97 + 32) = v27;
  v197.i64[0] = v97 + 32;
  v198.i64[0] = v98;
  *(v97 + 64) = v98;
  *(v97 + 40) = v28;
  v99 = objc_opt_self();

  v193.i64[0] = v99;
  v199.i32[0] = [v99 _atomicIncrementAssertCount];
  *&v214 = [objc_allocWithZone(NSString) init];
  v195.i64[0] = v97;
  StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
  v196.i64[0] = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
  v100 = String._bridgeToObjectiveC()();

  v101 = [v100 lastPathComponent];

  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v105 = static OS_os_log.crlAssert;
  v106 = swift_allocObject();
  *(v106 + 16) = v180;
  *(v106 + 56) = &type metadata for Int32;
  *(v106 + 64) = &protocol witness table for Int32;
  *(v106 + 32) = v199.i32[0];
  v107 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v106 + 96) = v107;
  v108 = sub_1005CF04C();
  v109 = v196.i64[0];
  *(v106 + 72) = v196.i64[0];
  v110 = v198.i64[0];
  *(v106 + 136) = &type metadata for String;
  *(v106 + 144) = v110;
  *(v106 + 104) = v108;
  *(v106 + 112) = v102;
  *(v106 + 120) = v104;
  *(v106 + 176) = &type metadata for UInt;
  *(v106 + 152) = 1088;
  v111 = v214;
  *(v106 + 216) = v107;
  *(v106 + 224) = v108;
  *(v106 + 184) = &protocol witness table for UInt;
  *(v106 + 192) = v111;
  v112 = v109;
  v113 = v111;
  v114 = static os_log_type_t.error.getter();
  sub_100005404(v105, &_mh_execute_header, v114, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v106);
  swift_setDeallocating();
  v192.i64[0] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v115 = static os_log_type_t.error.getter();
  v116 = v105;
  v117 = v195.i64[0];

  type metadata accessor for __VaListBuilder();
  v118 = swift_allocObject();
  v118[2] = 8;
  v118[3] = 0;
  v119 = v118 + 3;
  v118[4] = 0;
  v118[5] = 0;
  v198.i64[0] = v118;
  v196.i64[0] = *(v117 + 16);
  if (!v196.i64[0])
  {
LABEL_99:
    v5 = __VaListBuilder.va_list()();
    StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
    v133 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v134 = String._bridgeToObjectiveC()();

    v135 = String._bridgeToObjectiveC()();

    [v193.i64[0] handleFailureInFunction:v133 file:v134 lineNumber:1088 isFatal:0 format:v135 args:v5];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v25 = v202;
    v22 = v194.i64[0];
    goto LABEL_8;
  }

  v120 = 0;
  while (2)
  {
    v199.i64[0] = v120;
    v121 = (v197.i64[0] + 40 * v120);
    v47 = v121[3];
    LODWORD(v49) = sub_100020E58(v121, v47);
    v122 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v25 = *v119;
    v123 = *(v122 + 16);
    v54 = __OFADD__(*v119, v123);
    v124 = *v119 + v123;
    if (!v54)
    {
      v125 = v122;
      v126 = v198.i64[0];
      v5 = *(v198.i64[0] + 32);
      if (v5 >= v124)
      {
        goto LABEL_92;
      }

      if (v5 + 0x4000000000000000 < 0)
      {
        goto LABEL_146;
      }

      v47 = *(v198.i64[0] + 40);
      if (2 * v5 > v124)
      {
        v124 = 2 * v5;
      }

      *(v198.i64[0] + 32) = v124;
      if ((v124 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_147;
      }

      v49 = v126;
      v127 = swift_slowAlloc();
      *(v49 + 40) = v127;
      if (v47)
      {
        if (v127 != v47 || v127 >= v47 + 8 * v25)
        {
          memmove(v127, v47, 8 * v25);
          LODWORD(v49) = v198.i32[0];
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v126 = v198.i64[0];
LABEL_92:
        v127 = *(v126 + 40);
      }

      if (!v127)
      {
        goto LABEL_148;
      }

      v129 = *(v125 + 16);
      if (v129)
      {
        v130 = (v125 + 32);
        v131 = *v119;
        do
        {
          v132 = *v130++;
          *(v127 + v131) = v132;
          v131 = *v119 + 1;
          if (__OFADD__(*v119, 1))
          {
            goto LABEL_143;
          }

          *v119 = v131;
          --v129;
        }

        while (v129);
      }

      v120 = v199.i64[0] + 1;
      if (v199.i64[0] + 1 == v196.i64[0])
      {
        goto LABEL_99;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  type metadata accessor for CRLChangeProperty(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

BOOL sub_1009C00CC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) == 0)
    {
      if (a1 == a4)
      {
        if (a3)
        {
          if (a6)
          {
            return 1;
          }
        }

        else if ((a6 & 1) == 0 && a2 == a5)
        {
          return 1;
        }
      }

      return 0;
    }

    if (!(a5 | a4) && !a6)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (!(a2 | a1) && !a3)
  {
    if ((a6 & 0x100) == 0)
    {
      return 0;
    }

    if (!(a5 | a4) && !a6)
    {
      return 1;
    }

LABEL_25:
    if (a4 == 1 && !a5 && !a6)
    {
      return 0;
    }

LABEL_28:
    if (a4 == 2 && !a5 && !a6)
    {
      return 0;
    }

LABEL_31:
    if (a4 == 3 && !a5 && !a6)
    {
      return 0;
    }

LABEL_34:
    if (a4 == 4 && !a5 && !a6)
    {
      return 0;
    }

LABEL_37:
    if (a4 == 5 && !a5 && !a6)
    {
      return 0;
    }

LABEL_40:
    if (a4 == 6 && !a5 && !a6)
    {
      return 0;
    }

LABEL_43:
    if (a4 == 7 && !a5 && !a6)
    {
      return 0;
    }

LABEL_46:
    if (a4 == 8 && !a5 && !a6)
    {
      return 0;
    }

    goto LABEL_49;
  }

  if (a1 == 1 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6)
    {
      return 0;
    }

    if (a4 == 1 && !a5 && !a6)
    {
      return 1;
    }

    goto LABEL_28;
  }

  if (a1 == 2 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 2 && !a5 && !a6)
    {
      return 1;
    }

    goto LABEL_31;
  }

  if (a1 == 3 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 3 && !a5 && !a6)
    {
      return 1;
    }

    goto LABEL_34;
  }

  if (a1 == 4 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6 || a4 == 3 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 4 && !a5 && !a6)
    {
      return 1;
    }

    goto LABEL_37;
  }

  if (a1 == 5 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6 || a4 == 3 && !a5 && !a6 || a4 == 4 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 5 && !a5 && !a6)
    {
      return 1;
    }

    goto LABEL_40;
  }

  if (a1 == 6 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6 || a4 == 3 && !a5 && !a6 || a4 == 4 && !a5 && !a6 || a4 == 5 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 6 && !a5 && !a6)
    {
      return 1;
    }

    goto LABEL_43;
  }

  if (a1 == 7 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6 || a4 == 3 && !a5 && !a6 || a4 == 4 && !a5 && !a6 || a4 == 5 && !a5 && !a6 || a4 == 6 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 7 && !a5 && !a6)
    {
      return 1;
    }

    goto LABEL_46;
  }

  if (a1 == 8 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6 || a4 == 3 && !a5 && !a6 || a4 == 4 && !a5 && !a6 || a4 == 5 && !a5 && !a6 || a4 == 6 && !a5 && !a6 || a4 == 7 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 8 && !a5 && !a6)
    {
      return 1;
    }

LABEL_49:
    if (a4 != 9 || a5 || a6)
    {
      return 0;
    }

    return 0;
  }

  if (a1 == 9 && !a2 && !a3)
  {
    if ((a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && (a4 != 4 || a5 || a6) && (a4 != 5 || a5 || a6) && (a4 != 6 || a5 || a6) && (a4 != 7 || a5 || a6) && (a4 != 8 || a5 || a6))
    {
      return a4 == 9 && !a5 && !a6;
    }

    return 0;
  }

  if (a1 == 10 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6 || a4 == 3 && !a5 && !a6 || a4 == 4 && !a5 && !a6 || a4 == 5 && !a5 && !a6 || a4 == 6 && !a5 && !a6 || a4 == 7 && !a5 && !a6)
    {
      return 0;
    }

    return (a4 != 8 || a5 || a6) && (a4 != 9 || a5 || a6) && a4 == 10 && !a5 && !a6;
  }

  if (a1 == 11 && !a2 && !a3)
  {
    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6 || a4 == 3 && !a5 && !a6 || a4 == 4 && !a5 && !a6 || a4 == 5 && !a5 && !a6 || a4 == 6 && !a5 && !a6)
    {
      return 0;
    }

    if ((a4 != 7 || a5 || a6) && (a4 != 8 || a5 || a6) && (a4 != 9 || a5 || a6) && (a4 != 10 || a5 || a6))
    {
      return a4 == 11 && a5 == 0 && a6 == 0;
    }

    return 0;
  }

  if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6 || a4 == 1 && !a5 && !a6 || a4 == 2 && !a5 && !a6 || a4 == 3 && !a5 && !a6 || a4 == 4 && !a5 && !a6 || a4 == 5 && !a5 && !a6 || a4 == 6 && !a5 && !a6 || a4 == 7 && !a5 && !a6)
  {
    return 0;
  }

  if (a4 == 8 && !a5 && !a6 || a4 == 9 && !a5 && !a6 || a4 == 10 && !a5 && !a6)
  {
    return 0;
  }

  return a4 != 11 || a5 != 0 || a6 != 0;
}

void *sub_1009C08A8(uint64_t a1)
{
  type metadata accessor for CRLBoardItemBase(0);
  if (swift_dynamicCastClass())
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = objc_opt_self();
  v3 = [v2 _atomicIncrementAssertCount];
  v27 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v27, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v4 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v5 lastPathComponent];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v3;
  v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v12;
  v13 = sub_1005CF04C();
  *(inited + 104) = v13;
  *(inited + 72) = v4;
  *(inited + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 112) = v7;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v14;
  *(inited + 152) = 1014;
  v15 = v27;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 192) = v15;
  v16 = v4;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v20 = swift_allocObject();
  v20[2] = 8;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v21 = __VaListBuilder.va_list()();
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v24 = String._bridgeToObjectiveC()();

  [v2 handleFailureInFunction:v22 file:v23 lineNumber:1014 isFatal:1 format:v24 args:v21];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1009C0C84(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v33 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = *(*(a1 + 56) + 8 * v14);
    v35[0] = *(*(a1 + 48) + v14);
    v36 = v15;

    a2(v34, v35);

    v16 = LOBYTE(v34[0]);
    v17 = v34[1];
    v18 = *v37;
    v20 = sub_1007C8124(LOBYTE(v34[0]));
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_25;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v33 & 1) == 0)
      {
        sub_100AA4058();
      }
    }

    else
    {
      sub_100A8937C(v23, v33 & 1);
      v25 = sub_1007C8124(v16);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    v27 = *v37;
    if (v24)
    {
      *(v27[7] + 8 * v20) = v17;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + v20) = v16;
      *(v27[7] + 8 * v20) = v17;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_26;
      }

      v27[2] = v30;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_100035F90(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v33 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1009C0EE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEE00656E694C6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6569766F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 2053403509 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646E616865657266 && a2 == 0xEF676E6977617244 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010157EF20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F4E796B63697473 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656C626174 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65636166727573 && a2 == 0xE700000000000000)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1009C1348(void *a1)
{
  v91 = sub_1005B981C(&qword_101A0AE60, &qword_10148AA50);
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v50 - v2;
  v77 = sub_1005B981C(&qword_101A0AE68, &qword_10148AA58);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v86 = &v50 - v3;
  v75 = sub_1005B981C(&qword_101A0AE70, &qword_10148AA60);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v85 = &v50 - v4;
  v73 = sub_1005B981C(&qword_101A0AE78, &qword_10148AA68);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v84 = &v50 - v5;
  v71 = sub_1005B981C(&qword_101A0AE80, &qword_10148AA70);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v83 = &v50 - v6;
  v69 = sub_1005B981C(&qword_101A0AE88, &qword_10148AA78);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v82 = &v50 - v7;
  v67 = sub_1005B981C(&qword_101A0AE90, &qword_10148AA80);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v50 - v8;
  v65 = sub_1005B981C(&qword_101A0AE98, &qword_10148AA88);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v90 = &v50 - v9;
  v63 = sub_1005B981C(&qword_101A0AEA0, &qword_10148AA90);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v89 = &v50 - v10;
  v61 = sub_1005B981C(&qword_101A0AEA8, &qword_10148AA98);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v81 = &v50 - v11;
  v59 = sub_1005B981C(&qword_101A0AEB0, &qword_10148AAA0);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v80 = &v50 - v12;
  v57 = sub_1005B981C(&qword_101A0AEB8, &qword_10148AAA8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v88 = &v50 - v13;
  v55 = sub_1005B981C(&qword_101A0AEC0, &qword_10148AAB0);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v50 - v14;
  v16 = sub_1005B981C(&qword_101A0AEC8, &qword_10148AAB8);
  v53 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v19 = sub_1005B981C(&qword_101A0AED0, &unk_10148AAC0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v50 - v21;
  v23 = a1[3];
  v93 = a1;
  v24 = sub_100020E58(a1, v23);
  sub_1009C26B0();
  v25 = v92;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v52 = v18;
    v92 = v15;
    v51 = v16;
    v27 = v88;
    v26 = v89;
    v28 = v90;
    v29 = v91;
    v30 = KeyedDecodingContainer.allKeys.getter();
    v31 = (2 * *(v30 + 16)) | 1;
    v95 = v30;
    v96 = v30 + 32;
    v97 = 0;
    v98 = v31;
    v32 = sub_10074CD3C();
    if (v97 == v98 >> 1)
    {
      v33 = v19;
      v19 = 0;
      switch(v32)
      {
        case 0:
          LOBYTE(v94) = 0;
          sub_1009C2B48();
          v34 = v52;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_1009C2B9C();
          v49 = v51;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v53 + 8))(v34, v49);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = v94;
          break;
        case 1:
          LOBYTE(v94) = 1;
          sub_1009C2AF4();
          v45 = v92;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v54 + 8))(v45, v55);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 0;
          break;
        case 2:
          LOBYTE(v94) = 2;
          sub_1009C2AA0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v56 + 8))(v27, v57);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 1;
          break;
        case 3:
          LOBYTE(v94) = 3;
          sub_1009C2A4C();
          v43 = v80;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v58 + 8))(v43, v59);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 2;
          break;
        case 4:
          LOBYTE(v94) = 4;
          sub_1009C29F8();
          v40 = v81;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v60 + 8))(v40, v61);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 3;
          break;
        case 5:
          LOBYTE(v94) = 5;
          sub_1009C29A4();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v62 + 8))(v26, v63);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 4;
          break;
        case 6:
          LOBYTE(v94) = 6;
          sub_1009C2950();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v64 + 8))(v28, v65);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 5;
          break;
        case 7:
          LOBYTE(v94) = 7;
          sub_1009C28FC();
          v44 = v79;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v66 + 8))(v44, v67);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 6;
          break;
        case 8:
          LOBYTE(v94) = 8;
          sub_1009C28A8();
          v48 = v82;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v68 + 8))(v48, v69);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 7;
          break;
        case 9:
          LOBYTE(v94) = 9;
          sub_1009C2854();
          v42 = v83;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v70 + 8))(v42, v71);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 8;
          break;
        case 10:
          LOBYTE(v94) = 10;
          sub_1009C2800();
          v47 = v84;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v72 + 8))(v47, v73);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 9;
          break;
        case 11:
          LOBYTE(v94) = 11;
          sub_1009C27AC();
          v39 = v85;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v74 + 8))(v39, v75);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 10;
          break;
        case 12:
          LOBYTE(v94) = 12;
          sub_1009C2758();
          v41 = v86;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v76 + 8))(v41, v77);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 11;
          break;
        case 13:
          LOBYTE(v94) = 13;
          sub_1009C2704();
          v46 = v87;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v78 + 8))(v46, v29);
          (*(v20 + 8))(v22, v33);
          swift_unknownObjectRelease();
          v24 = 12;
          break;
        default:
          goto LABEL_5;
      }
    }

    else
    {
LABEL_5:
      v35 = type metadata accessor for DecodingError();
      swift_allocError();
      v37 = v36;
      sub_1005B981C(&qword_101A0AEE0, &qword_10146C160);
      *v37 = &type metadata for CRLBoardItemType;
      v24 = v22;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v35 - 8) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v35);
      swift_willThrow();
      (*(v20 + 8))(v22, v19);
      swift_unknownObjectRelease();
    }
  }

  sub_100005070(v93);
  return v24;
}

unint64_t sub_1009C26B0()
{
  result = qword_101A0AED8;
  if (!qword_101A0AED8)
  {
    result = swift_getWitnessTable(byte_10148B6B4, &type metadata for CRLBoardItemType.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AED8);
  }

  return result;
}

unint64_t sub_1009C2704()
{
  result = qword_101A0AEE8;
  if (!qword_101A0AEE8)
  {
    result = swift_getWitnessTable(byte_10148B664, &type metadata for CRLBoardItemType.SurfaceCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AEE8);
  }

  return result;
}

unint64_t sub_1009C2758()
{
  result = qword_101A0AEF0;
  if (!qword_101A0AEF0)
  {
    result = swift_getWitnessTable(aE_26, &type metadata for CRLBoardItemType.TableCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AEF0);
  }

  return result;
}

unint64_t sub_1009C27AC()
{
  result = qword_101A0AEF8;
  if (!qword_101A0AEF8)
  {
    result = swift_getWitnessTable(byte_10148B5C4, &type metadata for CRLBoardItemType.StickyNoteCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AEF8);
  }

  return result;
}

unint64_t sub_1009C2800()
{
  result = qword_101A0AF00;
  if (!qword_101A0AF00)
  {
    result = swift_getWitnessTable(byte_10148B574, &type metadata for CRLBoardItemType.FreehandDrawingShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF00);
  }

  return result;
}

unint64_t sub_1009C2854()
{
  result = qword_101A0AF08;
  if (!qword_101A0AF08)
  {
    result = swift_getWitnessTable(a5_21, &type metadata for CRLBoardItemType.FreehandDrawingCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF08);
  }

  return result;
}

unint64_t sub_1009C28A8()
{
  result = qword_101A0AF10;
  if (!qword_101A0AF10)
  {
    result = swift_getWitnessTable(byte_10148B4D4, &type metadata for CRLBoardItemType.UsdzCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF10);
  }

  return result;
}

unint64_t sub_1009C28FC()
{
  result = qword_101A0AF18;
  if (!qword_101A0AF18)
  {
    result = swift_getWitnessTable("Մ:", &type metadata for CRLBoardItemType.UrlCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF18);
  }

  return result;
}

unint64_t sub_1009C2950()
{
  result = qword_101A0AF20;
  if (!qword_101A0AF20)
  {
    result = swift_getWitnessTable(asc_10148B434, &type metadata for CRLBoardItemType.FileCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF20);
  }

  return result;
}

unint64_t sub_1009C29A4()
{
  result = qword_101A0AF28;
  if (!qword_101A0AF28)
  {
    result = swift_getWitnessTable(aU_29, &type metadata for CRLBoardItemType.MovieCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF28);
  }

  return result;
}

unint64_t sub_1009C29F8()
{
  result = qword_101A0AF30;
  if (!qword_101A0AF30)
  {
    result = swift_getWitnessTable("Ņ:", &type metadata for CRLBoardItemType.ImageCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF30);
  }

  return result;
}

unint64_t sub_1009C2A4C()
{
  result = qword_101A0AF38;
  if (!qword_101A0AF38)
  {
    result = swift_getWitnessTable(byte_10148B344, &type metadata for CRLBoardItemType.ConnectionLineCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF38);
  }

  return result;
}

unint64_t sub_1009C2AA0()
{
  result = qword_101A0AF40;
  if (!qword_101A0AF40)
  {
    result = swift_getWitnessTable(aE_25, &type metadata for CRLBoardItemType.ShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF40);
  }

  return result;
}

unint64_t sub_1009C2AF4()
{
  result = qword_101A0AF48;
  if (!qword_101A0AF48)
  {
    result = swift_getWitnessTable(byte_10148B2A4, &type metadata for CRLBoardItemType.GroupCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF48);
  }

  return result;
}

unint64_t sub_1009C2B48()
{
  result = qword_101A0AF50;
  if (!qword_101A0AF50)
  {
    result = swift_getWitnessTable(byte_10148B254, &type metadata for CRLBoardItemType.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0AF50);
  }

  return result;
}

unint64_t sub_1009C2B9C()
{
  result = qword_101A0AF58;
  if (!qword_101A0AF58)
  {
    result = swift_getWitnessTable(byte_10148D7F8, &type metadata for CRLSerializableObjectType.RawPersistenceValues, v0, v1);
    atomic_store(result, &qword_101A0AF58);
  }

  return result;
}

unint64_t sub_1009C2BF0()
{
  result = qword_101A0AFD8;
  if (!qword_101A0AFD8)
  {
    result = swift_getWitnessTable("1a:", &type metadata for CRLSerializableObjectType.RawPersistenceValues, v0, v1);
    atomic_store(result, &qword_101A0AFD8);
  }

  return result;
}

uint64_t sub_1009C2C74(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1009C2CBC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v30[-v9];
  v11 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v11 - 8);
  v35 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v38 = &v30[-v14];
  __chkstk_darwin(v15);
  v17 = &v30[-v16];
  v19 = __chkstk_darwin(v18);
  v21 = &v30[-v20];
  v22 = *((swift_isaMask & *a1) + 0xB8);
  v37 = a1;
  v23 = v22(v19);
  v36 = a2;
  v33 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v23);
  v34 = *(v5 + 56);
  v34(v17, 0, 1, v4);
  v24 = *(v8 + 56);
  sub_10000BE14(v21, v10, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(v17, &v10[v24], &qword_1019F6990, &qword_10146D2F0);
  v25 = *(v5 + 48);
  if (v25(v10, 1, v4) == 1)
  {
    sub_10000CAAC(v17, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v21, &qword_1019F6990, &qword_10146D2F0);
    if (v25(&v10[v24], 1, v4) == 1)
    {
      return sub_10000CAAC(v10, &qword_1019F6990, &qword_10146D2F0);
    }

    goto LABEL_6;
  }

  sub_10000BE14(v10, v38, &qword_1019F6990, &qword_10146D2F0);
  if (v25(&v10[v24], 1, v4) == 1)
  {
    sub_10000CAAC(v17, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v21, &qword_1019F6990, &qword_10146D2F0);
    (*(v5 + 8))(v38, v4);
LABEL_6:
    result = sub_10000CAAC(v10, &unk_101A0AFE0, &unk_10146F3C0);
LABEL_7:
    v10 = v35;
    (*(**(v36 + v33) + 264))(result);
    v34(v10, 0, 1, v4);
    (*((swift_isaMask & *v37) + 0xC0))(v10);
    return sub_10000CAAC(v10, &qword_1019F6990, &qword_10146D2F0);
  }

  v27 = v32;
  (*(v5 + 32))(v32, &v10[v24], v4);
  sub_1009C2C74(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28 = v38;
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v5 + 8);
  v29(v27, v4);
  sub_10000CAAC(v17, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v21, &qword_1019F6990, &qword_10146D2F0);
  v29(v28, v4);
  result = sub_10000CAAC(v10, &qword_1019F6990, &qword_10146D2F0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1009C3238()
{
  result = qword_101A0AFF8;
  if (!qword_101A0AFF8)
  {
    result = swift_getWitnessTable(asc_1014D7E00, &type metadata for CRLTransactableError, v0, v1);
    atomic_store(result, &qword_101A0AFF8);
  }

  return result;
}

void sub_1009C32A8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 layoutForInfo:*(v1 + 32)];
  v2();
}

uint64_t sub_1009C3314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1009C3468()
{
  result = qword_101A0B080;
  if (!qword_101A0B080)
  {
    result = swift_getWitnessTable(aE_27, &type metadata for CRLBoardItemType.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B080);
  }

  return result;
}

unint64_t sub_1009C34C0()
{
  result = qword_101A0B088;
  if (!qword_101A0B088)
  {
    result = swift_getWitnessTable(byte_10148B22C, &type metadata for CRLBoardItemType.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B088);
  }

  return result;
}

unint64_t sub_1009C3518()
{
  result = qword_101A0B090;
  if (!qword_101A0B090)
  {
    result = swift_getWitnessTable(aU_30, &type metadata for CRLBoardItemType.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B090);
  }

  return result;
}

unint64_t sub_1009C3570()
{
  result = qword_101A0B098;
  if (!qword_101A0B098)
  {
    result = swift_getWitnessTable(asc_10148B10C, &type metadata for CRLBoardItemType.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B098);
  }

  return result;
}

unint64_t sub_1009C35C8()
{
  result = qword_101A0B0A0;
  if (!qword_101A0B0A0)
  {
    result = swift_getWitnessTable(byte_10148B094, &type metadata for CRLBoardItemType.GroupCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0A0);
  }

  return result;
}

unint64_t sub_1009C3620()
{
  result = qword_101A0B0A8;
  if (!qword_101A0B0A8)
  {
    result = swift_getWitnessTable(byte_10148B0BC, &type metadata for CRLBoardItemType.GroupCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0A8);
  }

  return result;
}

unint64_t sub_1009C3678()
{
  result = qword_101A0B0B0;
  if (!qword_101A0B0B0)
  {
    result = swift_getWitnessTable(byte_10148B044, &type metadata for CRLBoardItemType.ShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0B0);
  }

  return result;
}

unint64_t sub_1009C36D0()
{
  result = qword_101A0B0B8;
  if (!qword_101A0B0B8)
  {
    result = swift_getWitnessTable("݈:", &type metadata for CRLBoardItemType.ShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0B8);
  }

  return result;
}

unint64_t sub_1009C3728()
{
  result = qword_101A0B0C0;
  if (!qword_101A0B0C0)
  {
    result = swift_getWitnessTable(aE_28, &type metadata for CRLBoardItemType.ConnectionLineCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0C0);
  }

  return result;
}

unint64_t sub_1009C3780()
{
  result = qword_101A0B0C8;
  if (!qword_101A0B0C8)
  {
    result = swift_getWitnessTable(asc_10148B01C, &type metadata for CRLBoardItemType.ConnectionLineCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0C8);
  }

  return result;
}

unint64_t sub_1009C37D8()
{
  result = qword_101A0B0D0;
  if (!qword_101A0B0D0)
  {
    result = swift_getWitnessTable(byte_10148AFA4, &type metadata for CRLBoardItemType.ImageCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0D0);
  }

  return result;
}

unint64_t sub_1009C3830()
{
  result = qword_101A0B0D8;
  if (!qword_101A0B0D8)
  {
    result = swift_getWitnessTable(asc_10148AFCC, &type metadata for CRLBoardItemType.ImageCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0D8);
  }

  return result;
}

unint64_t sub_1009C3888()
{
  result = qword_101A0B0E0;
  if (!qword_101A0B0E0)
  {
    result = swift_getWitnessTable(byte_10148AF54, &type metadata for CRLBoardItemType.MovieCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0E0);
  }

  return result;
}

unint64_t sub_1009C38E0()
{
  result = qword_101A0B0E8;
  if (!qword_101A0B0E8)
  {
    result = swift_getWitnessTable("͉:", &type metadata for CRLBoardItemType.MovieCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0E8);
  }

  return result;
}

unint64_t sub_1009C3938()
{
  result = qword_101A0B0F0;
  if (!qword_101A0B0F0)
  {
    result = swift_getWitnessTable(a5_22, &type metadata for CRLBoardItemType.FileCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0F0);
  }

  return result;
}

unint64_t sub_1009C3990()
{
  result = qword_101A0B0F8;
  if (!qword_101A0B0F8)
  {
    result = swift_getWitnessTable(byte_10148AF2C, &type metadata for CRLBoardItemType.FileCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B0F8);
  }

  return result;
}

unint64_t sub_1009C39E8()
{
  result = qword_101A0B100;
  if (!qword_101A0B100)
  {
    result = swift_getWitnessTable(byte_10148AEB4, &type metadata for CRLBoardItemType.UrlCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B100);
  }

  return result;
}

unint64_t sub_1009C3A40()
{
  result = qword_101A0B108;
  if (!qword_101A0B108)
  {
    result = swift_getWitnessTable(aM_38, &type metadata for CRLBoardItemType.UrlCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B108);
  }

  return result;
}

unint64_t sub_1009C3A98()
{
  result = qword_101A0B110;
  if (!qword_101A0B110)
  {
    result = swift_getWitnessTable("Պ:", &type metadata for CRLBoardItemType.UsdzCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B110);
  }

  return result;
}

unint64_t sub_1009C3AF0()
{
  result = qword_101A0B118;
  if (!qword_101A0B118)
  {
    result = swift_getWitnessTable(byte_10148AE8C, &type metadata for CRLBoardItemType.UsdzCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B118);
  }

  return result;
}

unint64_t sub_1009C3B48()
{
  result = qword_101A0B120;
  if (!qword_101A0B120)
  {
    result = swift_getWitnessTable(asc_10148AE14, &type metadata for CRLBoardItemType.FreehandDrawingCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B120);
  }

  return result;
}

unint64_t sub_1009C3BA0()
{
  result = qword_101A0B128;
  if (!qword_101A0B128)
  {
    result = swift_getWitnessTable(asc_10148AE3C, &type metadata for CRLBoardItemType.FreehandDrawingCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B128);
  }

  return result;
}

unint64_t sub_1009C3BF8()
{
  result = qword_101A0B130;
  if (!qword_101A0B130)
  {
    result = swift_getWitnessTable(aU_31, &type metadata for CRLBoardItemType.FreehandDrawingShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B130);
  }

  return result;
}

unint64_t sub_1009C3C50()
{
  result = qword_101A0B138;
  if (!qword_101A0B138)
  {
    result = swift_getWitnessTable(asc_10148ADEC, &type metadata for CRLBoardItemType.FreehandDrawingShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B138);
  }

  return result;
}

unint64_t sub_1009C3CA8()
{
  result = qword_101A0B140;
  if (!qword_101A0B140)
  {
    result = swift_getWitnessTable("ŋ:", &type metadata for CRLBoardItemType.StickyNoteCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B140);
  }

  return result;
}

unint64_t sub_1009C3D00()
{
  result = qword_101A0B148;
  if (!qword_101A0B148)
  {
    result = swift_getWitnessTable(byte_10148AD9C, &type metadata for CRLBoardItemType.StickyNoteCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B148);
  }

  return result;
}

unint64_t sub_1009C3D58()
{
  result = qword_101A0B150;
  if (!qword_101A0B150)
  {
    result = swift_getWitnessTable(byte_10148AD24, &type metadata for CRLBoardItemType.TableCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B150);
  }

  return result;
}

unint64_t sub_1009C3DB0()
{
  result = qword_101A0B158;
  if (!qword_101A0B158)
  {
    result = swift_getWitnessTable(byte_10148AD4C, &type metadata for CRLBoardItemType.TableCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B158);
  }

  return result;
}

unint64_t sub_1009C3E08()
{
  result = qword_101A0B160;
  if (!qword_101A0B160)
  {
    result = swift_getWitnessTable(aE_29, &type metadata for CRLBoardItemType.SurfaceCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B160);
  }

  return result;
}

unint64_t sub_1009C3E60()
{
  result = qword_101A0B168;
  if (!qword_101A0B168)
  {
    result = swift_getWitnessTable(aM_39, &type metadata for CRLBoardItemType.SurfaceCodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B168);
  }

  return result;
}

unint64_t sub_1009C3EB8()
{
  result = qword_101A0B170;
  if (!qword_101A0B170)
  {
    result = swift_getWitnessTable(byte_10148B19C, &type metadata for CRLBoardItemType.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B170);
  }

  return result;
}

unint64_t sub_1009C3F10()
{
  result = qword_101A0B178;
  if (!qword_101A0B178)
  {
    result = swift_getWitnessTable(byte_10148B1C4, &type metadata for CRLBoardItemType.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B178);
  }

  return result;
}

id sub_1009C3F84()
{
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10146CE00;
  *(v1 + 32) = sub_1009C41C4();
  *(v1 + 40) = sub_1009C480C();
  v2 = (*((swift_isaMask & *v0) + 0x268))();
  sub_1007993B0(v2);
  v3 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithArrangedSubviews:isa];

  [v5 setAxis:1];
  [v5 setSpacing:12.0];
  return v5;
}

uint64_t sub_1009C40D0()
{
  result = sub_10072C004();
  if (!v1)
  {
    return 0;
  }

  return result;
}

id sub_1009C410C()
{
  v0 = sub_10072C1BC();
  if (v1)
  {
    return 0;
  }

  v3 = v0;
  v4 = [objc_allocWithZone(NSByteCountFormatter) init];
  result = [v4 setAllowedUnits:0xFFFFLL];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = [v4 stringFromByteCount:v3];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  return result;
}

id sub_1009C41C4()
{
  v0 = sub_1009C4478();
  if (v0)
  {
    v1 = v0;
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10146CE00;
    *(v2 + 32) = sub_1009C42F8();
    *(v2 + 40) = v1;
    v3 = objc_allocWithZone(UIStackView);
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithArrangedSubviews:isa];

    [v6 setAxis:1];
    [v6 setSpacing:2.5];
    [v6 setAlignment:3];

    return v6;
  }

  else
  {

    return sub_1009C42F8();
  }
}

id sub_1009C42F8()
{
  v1 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  (*((swift_isaMask & *v0) + 0xA0))();
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v1 setFont:v2];

  v3 = String._bridgeToObjectiveC()();

  [v1 setText:v3];

  v4 = [objc_opt_self() labelColor];
  [v1 setTextColor:v4];

  [v1 setTextAlignment:1];
  [v1 setLineBreakMode:5];
  [v1 setAdjustsFontForContentSizeCategory:1];
  return v1;
}

id sub_1009C4478()
{
  (*((swift_isaMask & *v0) + 0x1F8))();
  if (!v1)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v2 setFont:v3];

  v4 = String._bridgeToObjectiveC()();

  [v2 setText:v4];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v5];

  [v2 setTextAlignment:1];
  [v2 setAdjustsFontForContentSizeCategory:1];
  return v2;
}

uint64_t sub_1009C45F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1009C46C0()
{
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

void sub_1009C4770(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider);

    (*((swift_isaMask & *v4) + 0xE8))();
  }
}

id sub_1009C480C()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 16);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 104))(ObjectType, v2);
    swift_unknownObjectRelease();
    if (v4 == 280.0)
    {
      v5 = 122.0;
    }

    else
    {
      v5 = 142.0;
    }
  }

  else
  {
    v5 = 142.0;
  }

  v6 = sub_1009C4C68();
  height = UILayoutFittingCompressedSize.height;
  v8 = v6;
  [v8 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101465920;
  *(v11 + 32) = v8;
  v32 = v11;
  v12 = sub_1009C5534();
  if (v12)
  {
    v13 = v12;
    [v13 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
    v15 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v13 = v32;
      if (v5 >= v10 && v5 >= v15)
      {
        break;
      }

      v17 = objc_allocWithZone(UIStackView);
      sub_100006370(0, &qword_1019F6D00, UIView_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v19 = [v17 initWithArrangedSubviews:isa];

      [v19 setAxis:1];
      [v19 setSpacing:12.0];
      v31 = v8;
      if (v32 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
        if (!v20)
        {
LABEL_28:

          v29 = v31;
          goto LABEL_29;
        }
      }

      else
      {
        v20 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_28;
        }
      }

      v8 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v21 = *(v32 + 8 * v8 + 32);
        }

        v22 = v21;
        v23 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v24 = [v21 heightAnchor];
        v25 = [v24 constraintGreaterThanOrEqualToConstant:34.0];

        [v25 setActive:1];
        ++v8;
        if (v23 == v20)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  v26 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v26 initWithArrangedSubviews:v27];

  [v19 setAxis:0];
  [v19 setAlignment:0];
  [v19 setDistribution:0];
  [v19 setSpacing:12.0];
  v28 = [v19 heightAnchor];
  v29 = [v28 constraintGreaterThanOrEqualToConstant:34.0];

  [v29 setActive:1];
LABEL_29:

  return v19;
}

id sub_1009C4C68()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v2 - 8);
  v56 = &v51 - v3;
  v54 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration.Size();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v15 = __chkstk_darwin(v14);
  v63 = &v51 - v16;
  v17 = (*((swift_isaMask & *v0) + 0x218))(v15);
  v19 = v18;
  v53 = (*((swift_isaMask & *v0) + 0x220))();
  v20 = objc_opt_self();
  v59 = [v20 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  static UIButton.Configuration.filled()();

  v57 = v17;
  v60 = v19;
  UIButton.Configuration.title.setter();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v21 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.Size.medium(_:), v5);
  UIButton.Configuration.buttonSize.setter();
  v22 = [objc_opt_self() mainScreen];
  v23 = [v22 traitCollection];

  LODWORD(v22) = [v23 crl_isUserInterfaceStyleDark];
  if (v22)
  {
    v24 = v61;
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v25 = &qword_101AD5DF0;
  }

  else
  {
    v24 = v61;
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v25 = &qword_101AD5DE8;
  }

  v26 = *v25;
  UIButton.Configuration.baseBackgroundColor.setter();
  v27 = [v20 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v52 + 104))(v51, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v54);
  UIButton.Configuration.cornerStyle.setter();
  v28 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v28(aBlock, 0);
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = 0;
  v29 = v56;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v30 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v32 = v62;
  v31 = v63;
  (*(v24 + 32))(v63, v13, v62);
  sub_100006370(0, &qword_1019F6E10, UIButton_ptr);
  (*(v24 + 16))(v55, v31, v32);
  v33 = v53;
  v34 = UIButton.init(configuration:primaryAction:)();
  v35 = [v20 labelColor];
  v36 = [v20 labelColor];
  v37 = sub_1005D46A0(0, 0, v35, v36);
  v39 = v38;

  aBlock[4] = v37;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018902A0;
  v40 = _Block_copy(aBlock);

  [v34 setConfigurationUpdateHandler:v40];
  _Block_release(v40);
  v41 = v34;
  v42 = String._bridgeToObjectiveC()();
  [v41 setAccessibilityLabel:v42];

  v43 = v41;
  [v43 setShowsLargeContentViewer:1];
  v44 = String._bridgeToObjectiveC()();
  [v43 setLargeContentTitle:v44];

  [v43 setLargeContentImage:0];
  v45 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v1];
  [v43 addInteraction:v45];

  v46 = [v43 titleLabel];
  if (v46)
  {
    v47 = v46;
    [v46 setTextAlignment:1];
  }

  v48 = [v43 heightAnchor];

  v49 = [v48 constraintGreaterThanOrEqualToConstant:34.0];
  [v49 setActive:1];

  (*(v24 + 8))(v63, v32);
  return v43;
}

id sub_1009C5534()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration.Size();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UIButton.Configuration();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v17 = __chkstk_darwin(v16);
  v60 = &v52 - v18;
  v59 = (*((swift_isaMask & *v0) + 0x228))(v17);
  if (!v19)
  {
    return 0;
  }

  v52 = (*((swift_isaMask & *v0) + 0x230))();
  v20 = objc_opt_self();
  v53 = [v20 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  static UIButton.Configuration.filled()();

  UIButton.Configuration.title.setter();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v21 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v9 + 104))(v11, enum case for UIButton.Configuration.Size.medium(_:), v8);
  UIButton.Configuration.buttonSize.setter();
  v22 = [objc_opt_self() mainScreen];
  v23 = [v22 traitCollection];

  LODWORD(v22) = [v23 crl_isUserInterfaceStyleDark];
  if (v22)
  {
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v24 = &qword_101AD5DF0;
  }

  else
  {
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v24 = &qword_101AD5DE8;
  }

  v26 = *v24;
  UIButton.Configuration.baseBackgroundColor.setter();
  v27 = [v20 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v54 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v55);
  UIButton.Configuration.cornerStyle.setter();
  v28 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v28(aBlock, 0);
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = 0;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v29 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v29 - 8) + 56))(v4, 0, 1, v29);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v31 = v60;
  v30 = v61;
  v32 = v58;
  (*(v61 + 32))(v60, v15, v58);
  sub_100006370(0, &qword_1019F6E10, UIButton_ptr);
  (*(v30 + 16))(v56, v31, v32);
  v33 = v52;
  v34 = UIButton.init(configuration:primaryAction:)();
  v35 = [v20 labelColor];
  v36 = [v20 labelColor];
  v37 = sub_1005D46A0(0, 0, v35, v36);
  v39 = v38;

  aBlock[4] = v37;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_101890250;
  v40 = _Block_copy(aBlock);

  [v34 setConfigurationUpdateHandler:v40];
  _Block_release(v40);
  v41 = v34;
  v42 = String._bridgeToObjectiveC()();
  [v41 setAccessibilityLabel:v42];

  v43 = v41;
  [v43 setShowsLargeContentViewer:1];
  v44 = String._bridgeToObjectiveC()();
  [v43 setLargeContentTitle:v44];

  [v43 setLargeContentImage:0];
  v45 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v1];
  [v43 addInteraction:v45];

  v46 = [v43 titleLabel];
  if (v46)
  {
    v47 = v46;
    [v46 setTextAlignment:1];
  }

  v48 = [v43 heightAnchor];

  v49 = [v48 constraintGreaterThanOrEqualToConstant:34.0];
  [v49 setActive:1];

  (*(v61 + 8))(v60, v32);
  v50 = *((swift_isaMask & *v1) + 0x238);
  v25 = v43;
  [v25 setEnabled:v50() & 1];

  return v25;
}

void *sub_1009C5E54()
{
  v0 = sub_100911E34();
  if (v0)
  {
    sub_1006369C4(v0);
  }

  v1 = sub_100911E34();
  if (v1)
  {
    sub_1006369C4(v1);
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1009C5EDC(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, v7);
  type metadata accessor for CRLMediaItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100911E34();
  if (!v2)
  {

LABEL_5:
    v4 = sub_1005D518C();
    return v4 & 1;
  }

  v3 = sub_10079DB40(v6, v2);

  v4 = v3;
  return v4 & 1;
}

id sub_1009C5FBC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLiOSMiniFormatterMediaBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1009C6040(uint64_t a1, uint64_t a2)
{
  sub_100064288(a1, v33);
  sub_1005B981C(&qword_101A0B200, &qword_10148B748);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = v2;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("copyStyleFrom(item:to:)", 23, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 14;
    v17 = v32;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter("copyStyleFrom(item:to:)", 23, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:14 isFatal:0 format:v26 args:v23];

    v2 = v31;
  }

  v34[0] = v36;
  v34[1] = v37;
  v35 = v38;
  if (!*(&v37 + 1))
  {
    return sub_10000CAAC(v34, &qword_101A0B208, &qword_10148B750);
  }

  sub_100050F74(v34, &v36);
  v27 = *(&v37 + 1);
  v28 = v38;
  v29 = sub_100020E58(&v36, *(&v37 + 1));
  sub_1009CC2FC(v29, a2, v2, v27, v28);
  return sub_100005070(&v36);
}

uint64_t sub_1009C651C(uint64_t a1, uint64_t a2)
{
  result = [v2 boardItemStyleKindsOnPasteboard:a2];
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = result - 1;
  if ((result - 1) > 5)
  {
    return 0;
  }

  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (!v8)
  {
LABEL_7:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return 1;
      }

      v8 = *(a1 + 56 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  while (1)
  {
    v11 = v10;
LABEL_10:
    sub_100064110(*(a1 + 48) + 40 * (__clz(__rbit64(v8)) | (v11 << 6)), v22);
    v16 = v22[0];
    v17 = v22[1];
    v18 = v23;
    sub_1005B981C(&qword_101A0B200, &qword_10148B748);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      sub_10000CAAC(v14, &qword_101A0B208, &qword_10148B750);
      return 0;
    }

    sub_100050F74(v14, v19);
    v12 = v20;
    v13 = v21;
    sub_100020E58(v19, v20);
    if (((*(v13 + 32))(v5, v12, v13) & 1) == 0)
    {
      break;
    }

    v8 &= v8 - 1;
    result = sub_100005070(v19);
    v10 = v11;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  sub_100005070(v19);
  return 0;
}

void *sub_1009C679C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v366 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 newReadAssistantWithPasteboard:{v4, v9}];
  if (!v12)
  {
    v20 = objc_opt_self();
    LODWORD(v8) = [v20 _atomicIncrementAssertCount];
    *&v417[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v417, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v26;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_156;
    }

    goto LABEL_11;
  }

  v380 = v12;
  v13 = *&v12[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_pasteboardObject];
  if (!v13)
  {
    v43 = objc_opt_self();
    v44 = [v43 _atomicIncrementAssertCount];
    *&v417[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v417, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10146CA70;
    *(v52 + 56) = &type metadata for Int32;
    *(v52 + 64) = &protocol witness table for Int32;
    *(v52 + 32) = v44;
    v53 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v52 + 96) = v53;
    v54 = sub_1005CF04C();
    *(v52 + 104) = v54;
    *(v52 + 72) = v45;
    *(v52 + 136) = &type metadata for String;
    v55 = sub_1000053B0();
    *(v52 + 112) = v48;
    *(v52 + 120) = v50;
    *(v52 + 176) = &type metadata for UInt;
    *(v52 + 184) = &protocol witness table for UInt;
    *(v52 + 144) = v55;
    *(v52 + 152) = 56;
    v56 = *&v417[0];
    *(v52 + 216) = v53;
    *(v52 + 224) = v54;
    *(v52 + 192) = v56;
    v57 = v45;
    v58 = v56;
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v59, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v52);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v60 = static os_log_type_t.error.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_100005404(v51, &_mh_execute_header, v60, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v61 = swift_allocObject();
    v61[2] = 8;
    v61[3] = 0;
    v61[4] = 0;
    v61[5] = 0;
    v62 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v65 = String._bridgeToObjectiveC()();

    [v43 handleFailureInFunction:v63 file:v64 lineNumber:56 isFatal:0 format:v65 args:v62];

    return v37;
  }

  v14 = v13;
  v15 = [v2 delegate];
  if (!v15)
  {
    v379 = v14;
    v66 = objc_opt_self();
    v67 = [v66 _atomicIncrementAssertCount];
    *&v417[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v417, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v69 = String._bridgeToObjectiveC()();

    v70 = [v69 lastPathComponent];

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v74 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_10146CA70;
    *(v75 + 56) = &type metadata for Int32;
    *(v75 + 64) = &protocol witness table for Int32;
    *(v75 + 32) = v67;
    v76 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v75 + 96) = v76;
    v77 = sub_1005CF04C();
    *(v75 + 104) = v77;
    *(v75 + 72) = v68;
    *(v75 + 136) = &type metadata for String;
    v78 = sub_1000053B0();
    *(v75 + 112) = v71;
    *(v75 + 120) = v73;
    *(v75 + 176) = &type metadata for UInt;
    *(v75 + 184) = &protocol witness table for UInt;
    *(v75 + 144) = v78;
    *(v75 + 152) = 57;
    v79 = *&v417[0];
    *(v75 + 216) = v76;
    *(v75 + 224) = v77;
    *(v75 + 192) = v79;
    v80 = v68;
    v81 = v79;
    v82 = static os_log_type_t.error.getter();
    sub_100005404(v74, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v75);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v83 = static os_log_type_t.error.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_100005404(v74, &_mh_execute_header, v83, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v84 = swift_allocObject();
    v84[2] = 8;
    v84[3] = 0;
    v84[4] = 0;
    v84[5] = 0;
    v85 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v87 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v88 = String._bridgeToObjectiveC()();

    [v66 handleFailureInFunction:v86 file:v87 lineNumber:57 isFatal:0 format:v88 args:v85];

    return v37;
  }

  v16 = [v15 boardForPasteboardController:v2];
  swift_unknownObjectRelease();
  v416[0] = _swiftEmptyArrayStorage;
  v17 = *&v14[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData];
  v18 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
  swift_beginAccess();
  sub_10000BE14(v17 + v18, v417, &qword_101A0B1E0, &unk_101482CD0);
  if (!*(&v417[1] + 1))
  {

    sub_10000CAAC(v417, &qword_101A0B1E0, &unk_101482CD0);
    return v416[0];
  }

  sub_100050F74(v417, v415);
  v19 = *(v17 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind);
  v378 = v16;
  if (v19 > 3)
  {
    if (v19 != 4)
    {
      if (v19 != 5)
      {
        sub_100005070(v415);

        return v416[0];
      }

      goto LABEL_21;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for CRLStyledItem(0);
      sub_1009CCDDC();
      Set.Iterator.init(_cocoa:)();
      v97 = *(&v383[0] + 1);
      v6 = *&v383[0];
      v20 = *(&v383[1] + 1);
      v8 = *&v383[1];
      v21 = *&v383[2];
    }

    else
    {
      v184 = -1 << *(v6 + 32);
      v97 = v6 + 56;
      v8 = ~v184;
      v185 = -v184;
      if (v185 < 64)
      {
        v186 = ~(-1 << v185);
      }

      else
      {
        v186 = -1;
      }

      v21 = (v186 & *(v6 + 56));

      v20 = 0;
    }

    v369 = v8;
    v187 = (v8 + 64) >> 6;
    v372 = xmmword_10146CA70;
    *&v377 = v6;
    *&v373 = v97;
    *&v375 = v187;
    v379 = v14;
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_66:
    while (2)
    {
      v188 = __CocoaSet.Iterator.next()();
      if (!v188 || (*&v381[0] = v188, type metadata accessor for CRLStyledItem(0), swift_dynamicCast(), v189 = *&v384[0], v7 = v20, v190 = v21, !*&v384[0]))
      {
LABEL_93:
        sub_100005070(v415);

        v139 = v6;
        goto LABEL_149;
      }

      while (1)
      {
        *&v376 = v190;
        type metadata accessor for CRLWPShapeItem(0);
        v193 = swift_dynamicCastClass();
        if (!v193)
        {
          break;
        }

        v8 = v193;
        sub_10000630C(v415, v381);
        v194 = v189;
        sub_1005B981C(&qword_101A0B1E8, &qword_10148B740);
        if ((swift_dynamicCast() & 1) == 0)
        {
          *&v374 = v194;
          *&v371 = objc_opt_self();
          v222 = [v371 _atomicIncrementAssertCount];
          *&v384[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v384, "invalid nil found when unwrapping value", 39, 2u);
          StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
          v223 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
          v224 = String._bridgeToObjectiveC()();

          v225 = [v224 lastPathComponent];

          v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v228 = v227;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v229 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v230 = swift_allocObject();
          *(v230 + 16) = v372;
          *(v230 + 56) = &type metadata for Int32;
          *(v230 + 64) = &protocol witness table for Int32;
          *(v230 + 32) = v222;
          v231 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(v230 + 96) = v231;
          v232 = sub_1005CF04C();
          *(v230 + 104) = v232;
          *(v230 + 72) = v223;
          *(v230 + 136) = &type metadata for String;
          v233 = sub_1000053B0();
          *(v230 + 112) = v226;
          *(v230 + 120) = v228;
          *(v230 + 176) = &type metadata for UInt;
          *(v230 + 144) = v233;
          *(v230 + 152) = 97;
          v234 = *&v384[0];
          *(v230 + 216) = v231;
          *(v230 + 224) = v232;
          *(v230 + 184) = &protocol witness table for UInt;
          *(v230 + 192) = v234;
          v8 = v223;
          v235 = v234;
          v236 = static os_log_type_t.error.getter();
          sub_100005404(v229, &_mh_execute_header, v236, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v230);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v237 = static os_log_type_t.error.getter();
          sub_100005404(v229, &_mh_execute_header, v237, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v238 = swift_allocObject();
          LODWORD(v8) = v238;
          v238[2] = 8;
          v238[3] = 0;
          v238[4] = 0;
          v238[5] = 0;
          v239 = __VaListBuilder.va_list()();
          StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
          v240 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
          v241 = String._bridgeToObjectiveC()();

          StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
          v242 = String._bridgeToObjectiveC()();

          [v371 handleFailureInFunction:v240 file:v241 lineNumber:97 isFatal:0 format:v242 args:v239];
          v243 = v374;

          goto LABEL_85;
        }

        v417[12] = v384[12];
        v417[13] = v384[13];
        v417[14] = v384[14];
        *&v417[15] = *&v384[15];
        v417[8] = v384[8];
        v417[9] = v384[9];
        v417[10] = v384[10];
        v417[11] = v384[11];
        v417[4] = v384[4];
        v417[5] = v384[5];
        v417[6] = v384[6];
        v417[7] = v384[7];
        v417[0] = v384[0];
        v417[1] = v384[1];
        v417[2] = v384[2];
        v417[3] = v384[3];
        v195 = *(v8 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
        if (v195)
        {
          *&v374 = v194;
          v196 = v195;
          v197 = [v196 range];
          v199 = v198;
          result = NSNotFound.getter();
          if (v197 == result)
          {

            v8 = v374;
            sub_10081852C(v417);
          }

          else
          {
            if (__OFADD__(v197, v199))
            {
              __break(1u);
              return result;
            }

            sub_100A2197C(v417, v197, v197 + v199, v8);
            v245 = v244;
            sub_10081852C(v417);
            sub_100799F10(v245);

            v8 = v374;
          }
        }

        else
        {

          sub_10081852C(v417);
        }

        v20 = v7;
        v21 = v376;
        v187 = v375;
        if (v6 < 0)
        {
          goto LABEL_66;
        }

LABEL_69:
        v191 = v20;
        v192 = v21;
        v7 = v20;
        if (!v21)
        {
          do
          {
            v7 = (v191 + 1);
            if (__OFADD__(v191, 1))
            {
              goto LABEL_155;
            }

            if (v7 >= v187)
            {
              goto LABEL_93;
            }

            v192 = *(v97 + 8 * v7);
            ++v191;
          }

          while (!v192);
        }

        v190 = (v192 - 1) & v192;
        v189 = *(*(v6 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v192)))));
        if (!v189)
        {
          goto LABEL_93;
        }
      }

      *&v374 = objc_opt_self();
      v201 = [v374 _atomicIncrementAssertCount];
      *&v384[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v384, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
      *&v371 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v202 = String._bridgeToObjectiveC()();

      v203 = [v202 lastPathComponent];

      v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *&v370 = v205;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v206 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v207 = swift_allocObject();
      *(v207 + 16) = v372;
      *(v207 + 56) = &type metadata for Int32;
      *(v207 + 64) = &protocol witness table for Int32;
      *(v207 + 32) = v201;
      v208 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v207 + 96) = v208;
      v209 = sub_1005CF04C();
      *(v207 + 104) = v209;
      v210 = v371;
      *(v207 + 72) = v371;
      *(v207 + 136) = &type metadata for String;
      v211 = sub_1000053B0();
      v212 = v370;
      *(v207 + 112) = v204;
      *(v207 + 120) = v212;
      *(v207 + 176) = &type metadata for UInt;
      *(v207 + 144) = v211;
      *(v207 + 152) = 96;
      v213 = *&v384[0];
      *(v207 + 216) = v208;
      *(v207 + 224) = v209;
      *(v207 + 184) = &protocol witness table for UInt;
      *(v207 + 192) = v213;
      v8 = v210;
      v214 = v213;
      v215 = static os_log_type_t.error.getter();
      sub_100005404(v206, &_mh_execute_header, v215, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v207);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v216 = static os_log_type_t.error.getter();
      sub_100005404(v206, &_mh_execute_header, v216, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v217 = swift_allocObject();
      LODWORD(v8) = v217;
      v217[2] = 8;
      v217[3] = 0;
      v217[4] = 0;
      v217[5] = 0;
      v218 = __VaListBuilder.va_list()();
      StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
      v219 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v220 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v221 = String._bridgeToObjectiveC()();

      [v374 handleFailureInFunction:v219 file:v220 lineNumber:96 isFatal:0 format:v221 args:v218];

LABEL_85:
      v20 = v7;
      v21 = v376;
      v16 = v378;
      v14 = v379;
      v6 = v377;
      v97 = v373;
      v187 = v375;
      if ((v377 & 0x8000000000000000) != 0)
      {
        continue;
      }

      goto LABEL_69;
    }
  }

  if (v19 < 2)
  {
LABEL_21:
    v89 = v6;
    sub_10000630C(v415, v382);
    sub_1005B981C(&qword_101A0B1E8, &qword_10148B740);
    v90 = swift_dynamicCast();
    v379 = v14;
    if (v90)
    {
      memcpy(v381, v417, sizeof(v381));
      memcpy(v383, v417, sizeof(v383));
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v383, v91);
      v92 = *&v381[37];
      v376 = v381[34];
      v377 = v381[35];
      v94 = *(&v381[36] + 1);
      v93 = *&v381[36];
      v374 = v381[30];
      v375 = v381[31];
      v372 = v381[32];
      v373 = v381[33];
      v6 = &v381[14] + 8;
      v95 = BYTE8(v381[29]);
      sub_1009CCF30(v381, v418);
      memcpy(v384, v383, sizeof(v384));
      v397 = v381[12];
      v398 = v381[13];
      v399 = *&v381[14];
      v393 = v381[8];
      v394 = v381[9];
      v396 = v381[11];
      v395 = v381[10];
      v389 = v381[4];
      v390 = v381[5];
      v392 = v381[7];
      v391 = v381[6];
      v385 = v381[0];
      v386 = v381[1];
      v388 = v381[3];
      v387 = v381[2];
      v404 = *(&v381[18] + 8);
      v405 = *(&v381[19] + 8);
      v406 = *(&v381[20] + 8);
      v400 = *(&v381[14] + 8);
      v401 = *(&v381[15] + 8);
      v403 = *(&v381[17] + 8);
      v402 = *(&v381[16] + 8);
      v410 = *(&v381[24] + 8);
      v409 = *(&v381[23] + 8);
      v408 = *(&v381[22] + 8);
      v407 = *(&v381[21] + 8);
      v414 = *(&v381[28] + 8);
      v413 = *(&v381[27] + 8);
      v412 = *(&v381[26] + 8);
      v411 = *(&v381[25] + 8);
    }

    else
    {
      sub_100084F94(v383);
      sub_10000630C(v415, v418);
      if (!swift_dynamicCast())
      {
        *&v377 = objc_opt_self();
        v140 = [v377 _atomicIncrementAssertCount];
        *&v381[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v381, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
        v141 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
        v142 = String._bridgeToObjectiveC()();

        v143 = [v142 lastPathComponent];

        v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v146 = v145;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v147 = static OS_os_log.crlAssert;
        *&v376 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v148 = swift_allocObject();
        v375 = xmmword_10146CA70;
        *(v148 + 16) = xmmword_10146CA70;
        *(v148 + 56) = &type metadata for Int32;
        *(v148 + 64) = &protocol witness table for Int32;
        *(v148 + 32) = v140;
        v149 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v148 + 96) = v149;
        v150 = v149;
        *&v370 = v149;
        v151 = sub_1005CF04C();
        *(v148 + 104) = v151;
        *(v148 + 72) = v141;
        *(v148 + 136) = &type metadata for String;
        v152 = sub_1000053B0();
        *&v374 = v152;
        *(v148 + 112) = v144;
        *(v148 + 120) = v146;
        *(v148 + 176) = &type metadata for UInt;
        *(v148 + 184) = &protocol witness table for UInt;
        *(v148 + 144) = v152;
        *(v148 + 152) = 76;
        v153 = *&v381[0];
        *(v148 + 216) = v150;
        *(v148 + 224) = v151;
        *(v148 + 192) = v153;
        v154 = v141;
        v155 = v153;
        v156 = static os_log_type_t.error.getter();
        *&v371 = v147;
        sub_100005404(v147, &_mh_execute_header, v156, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v148);
        swift_setDeallocating();
        *&v373 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v157 = static os_log_type_t.error.getter();
        v37 = _swiftEmptyArrayStorage;
        sub_100005404(v147, &_mh_execute_header, v157, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        *&v372 = type metadata accessor for __VaListBuilder();
        v158 = swift_allocObject();
        v158[2] = 8;
        v158[3] = 0;
        v158[4] = 0;
        v158[5] = 0;
        v159 = __VaListBuilder.va_list()();
        StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
        v160 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
        v161 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v162 = String._bridgeToObjectiveC()();

        v163 = v377;
        [v377 handleFailureInFunction:v160 file:v161 lineNumber:76 isFatal:0 format:v162 args:v159];

        LODWORD(v154) = [v163 _atomicIncrementAssertCount];
        *&v381[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v381, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
        v164 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
        v165 = String._bridgeToObjectiveC()();

        v166 = [v165 lastPathComponent];

        v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v169 = v168;

        v170 = swift_allocObject();
        *(v170 + 16) = v375;
        *(v170 + 56) = &type metadata for Int32;
        *(v170 + 64) = &protocol witness table for Int32;
        *(v170 + 72) = v164;
        *(v170 + 32) = v154;
        v171 = v370;
        *(v170 + 96) = v370;
        *(v170 + 104) = v151;
        v172 = v374;
        *(v170 + 136) = &type metadata for String;
        *(v170 + 144) = v172;
        *(v170 + 112) = v167;
        *(v170 + 120) = v169;
        *(v170 + 176) = &type metadata for UInt;
        *(v170 + 152) = 78;
        v173 = *&v381[0];
        *(v170 + 216) = v171;
        *(v170 + 224) = v151;
        *(v170 + 184) = &protocol witness table for UInt;
        *(v170 + 192) = v173;
        v174 = v164;
        v175 = v173;
        v176 = static os_log_type_t.error.getter();
        v177 = v371;
        sub_100005404(v371, &_mh_execute_header, v176, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v170);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v178 = static os_log_type_t.error.getter();
        sub_100005404(v177, &_mh_execute_header, v178, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        v179 = swift_allocObject();
        v179[2] = 8;
        v179[3] = 0;
        v179[4] = 0;
        v179[5] = 0;
        v180 = __VaListBuilder.va_list()();
        StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
        v181 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
        v182 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v183 = String._bridgeToObjectiveC()();

        [v377 handleFailureInFunction:v181 file:v182 lineNumber:78 isFatal:0 format:v183 args:v180];

        sub_100005070(v415);
        return v37;
      }

      v397 = v381[12];
      v398 = v381[13];
      v399 = *&v381[14];
      v393 = v381[8];
      v394 = v381[9];
      v396 = v381[11];
      v395 = v381[10];
      v389 = v381[4];
      v390 = v381[5];
      v392 = v381[7];
      v391 = v381[6];
      v385 = v381[0];
      v386 = v381[1];
      v388 = v381[3];
      v387 = v381[2];
      v404 = *(&v381[18] + 8);
      v405 = *(&v381[19] + 8);
      v406 = *(&v381[20] + 8);
      v400 = *(&v381[14] + 8);
      v401 = *(&v381[15] + 8);
      v403 = *(&v381[17] + 8);
      v402 = *(&v381[16] + 8);
      v410 = *(&v381[24] + 8);
      v409 = *(&v381[23] + 8);
      v408 = *(&v381[22] + 8);
      v407 = *(&v381[21] + 8);
      v414 = *(&v381[28] + 8);
      v413 = *(&v381[27] + 8);
      v412 = *(&v381[26] + 8);
      v411 = *(&v381[25] + 8);
      v95 = BYTE8(v381[29]);
      v374 = v381[30];
      v375 = v381[31];
      v372 = v381[32];
      v373 = v381[33];
      v376 = v381[34];
      v377 = v381[35];
      v94 = *(&v381[36] + 1);
      v93 = *&v381[36];
      v92 = *&v381[37];
      memcpy(v384, v383, sizeof(v384));
    }

    v382[12] = v397;
    v382[13] = v398;
    *&v382[14] = v399;
    v382[8] = v393;
    v382[9] = v394;
    v382[11] = v396;
    v382[10] = v395;
    v382[4] = v389;
    v382[5] = v390;
    v382[7] = v392;
    v382[6] = v391;
    v382[0] = v385;
    v382[1] = v386;
    v382[3] = v388;
    v382[2] = v387;
    *(&v382[18] + 8) = v404;
    *(&v382[19] + 8) = v405;
    *(&v382[20] + 8) = v406;
    *(&v382[16] + 8) = v402;
    *(&v382[17] + 8) = v403;
    *(&v382[14] + 8) = v400;
    *(&v382[15] + 8) = v401;
    *(&v382[23] + 8) = v409;
    *(&v382[24] + 8) = v410;
    *(&v382[21] + 8) = v407;
    *(&v382[22] + 8) = v408;
    *(&v382[27] + 8) = v413;
    *(&v382[28] + 8) = v414;
    *(&v382[25] + 8) = v411;
    *(&v382[26] + 8) = v412;
    BYTE8(v382[29]) = v95;
    v382[31] = v375;
    v382[30] = v374;
    v382[33] = v373;
    v382[32] = v372;
    v382[35] = v377;
    v382[34] = v376;
    *&v382[36] = v93;
    *(&v382[36] + 1) = v94;
    *&v382[37] = v92;
    memcpy(v418, v382, 0x258uLL);
    if ((v89 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for CRLStyledItem(0);
      sub_1009CCDDC();
      Set.Iterator.init(_cocoa:)();
      v96 = v416[1];
      v21 = v416[2];
      v8 = v416[3];
      v20 = v416[4];
      v7 = v416[5];
    }

    else
    {
      v100 = -1 << *(v89 + 32);
      v21 = (v89 + 56);
      v8 = ~v100;
      v101 = -v100;
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      else
      {
        v102 = -1;
      }

      v7 = v102 & *(v89 + 56);

      v20 = 0;
    }

    *&v374 = v8;
    v103 = (v8 + 64) >> 6;
    v373 = xmmword_10146CA70;
    *&v376 = v21;
    *&v375 = v103;
    while (1)
    {
      if (v96 < 0)
      {
        v6 = v96;
        v111 = __CocoaSet.Iterator.next()();
        if (!v111)
        {
          goto LABEL_57;
        }

        *&v381[0] = v111;
        type metadata accessor for CRLStyledItem(0);
        swift_dynamicCast();
        v110 = *&v383[0];
        v108 = v20;
        v109 = v7;
        if (!*&v383[0])
        {
          goto LABEL_57;
        }
      }

      else
      {
        v106 = v20;
        v107 = v7;
        v108 = v20;
        if (!v7)
        {
          while (1)
          {
            v108 = (v106 + 1);
            if (__OFADD__(v106, 1))
            {
              __break(1u);
              goto LABEL_153;
            }

            if (v108 >= v103)
            {
              break;
            }

            v107 = v21[v108];
            ++v106;
            if (v107)
            {
              goto LABEL_44;
            }
          }

          v6 = v96;
LABEL_57:
          sub_100005070(v415);

          sub_1009CCEDC(v382);
          sub_10000CAAC(v384, &qword_1019F4B88, &qword_10146CDF0);
          v139 = v6;
          goto LABEL_149;
        }

LABEL_44:
        v109 = (v107 - 1) & v107;
        v6 = v96;
        v110 = *(*(v96 + 48) + ((v108 << 9) | (8 * __clz(__rbit64(v107)))));
        if (!v110)
        {
          goto LABEL_57;
        }
      }

      type metadata accessor for CRLWPShapeItem(0);
      if (swift_dynamicCastClass())
      {
        memcpy(v383, v384, sizeof(v383));
        if (sub_1000C0F9C(v383) == 1)
        {
          v104 = *&v378[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
          v105 = sub_100C3B2CC(v418);

          v8 = v416;
          sub_100799F10(v105);

          v20 = v108;
          v7 = v109;
        }

        else
        {
          memcpy(v417, v383, sizeof(v417));
          v112 = *&v378[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
          sub_10000BE14(v384, v381, &qword_1019F4B88, &qword_10146CDF0);
          v113 = v112;
          v114 = sub_100AB7958(v417);
          sub_10000CAAC(v384, &qword_1019F4B88, &qword_10146CDF0);

          v8 = v416;
          sub_100799F10(v114);

          v20 = v108;
          v7 = v109;
          v103 = v375;
        }

        v21 = v376;
        v96 = v6;
      }

      else
      {
        type metadata accessor for CRLShapeItem(0);
        if (swift_dynamicCastClass())
        {
          v115 = *&v378[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
          v116 = v110;
          v117 = v115;
          v118 = sub_100C3B2CC(v418);

          v21 = v376;
          v8 = v416;
          sub_100799F10(v118);

          v20 = v108;
          v7 = v109;
          v96 = v6;
        }

        else
        {
          *&v372 = v109;
          *&v377 = v6;
          *&v371 = objc_opt_self();
          v119 = [v371 _atomicIncrementAssertCount];
          *&v383[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v383, "invalid nil found when unwrapping value", 39, 2u);
          StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
          *&v370 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
          v120 = String._bridgeToObjectiveC()();

          v121 = [v120 lastPathComponent];

          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v368 = v123;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v369 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v124 = swift_allocObject();
          *(v124 + 16) = v373;
          *(v124 + 56) = &type metadata for Int32;
          *(v124 + 64) = &protocol witness table for Int32;
          *(v124 + 32) = v119;
          v125 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(v124 + 96) = v125;
          v126 = sub_1005CF04C();
          *(v124 + 104) = v126;
          v127 = v370;
          *(v124 + 72) = v370;
          *(v124 + 136) = &type metadata for String;
          v128 = sub_1000053B0();
          v129 = v368;
          *(v124 + 112) = v122;
          *(v124 + 120) = v129;
          *(v124 + 176) = &type metadata for UInt;
          *(v124 + 144) = v128;
          *(v124 + 152) = 89;
          v130 = *&v383[0];
          *(v124 + 216) = v125;
          *(v124 + 224) = v126;
          *(v124 + 184) = &protocol witness table for UInt;
          *(v124 + 192) = v130;
          v131 = v127;
          v132 = v130;
          v133 = static os_log_type_t.error.getter();
          v8 = v369;
          sub_100005404(v369, &_mh_execute_header, v133, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v124);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v134 = static os_log_type_t.error.getter();
          sub_100005404(v8, &_mh_execute_header, v134, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v135 = swift_allocObject();
          LODWORD(v8) = v135;
          v135[2] = 8;
          v135[3] = 0;
          v135[4] = 0;
          v135[5] = 0;
          v136 = __VaListBuilder.va_list()();
          StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
          v137 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
          v6 = String._bridgeToObjectiveC()();

          StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
          v138 = String._bridgeToObjectiveC()();

          [v371 handleFailureInFunction:v137 file:v6 lineNumber:89 isFatal:0 format:v138 args:v136];

          v20 = v108;
          v7 = v372;
          v96 = v377;
          v21 = v376;
        }
      }
    }
  }

  *&v375 = v7;
  *&v374 = v11;
  v379 = v14;
  if (v19 != 2)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for CRLStyledItem(0);
      sub_1009CCDDC();
      Set.Iterator.init(_cocoa:)();
      v20 = *(&v381[0] + 1);
      v6 = *&v381[0];
      v21 = *(&v381[1] + 1);
      v98 = *&v381[1];
      v99 = *&v381[2];
    }

    else
    {
      v305 = -1 << *(v6 + 32);
      v20 = (v6 + 56);
      v98 = ~v305;
      v306 = -v305;
      if (v306 < 64)
      {
        v307 = ~(-1 << v306);
      }

      else
      {
        v307 = -1;
      }

      v99 = v307 & *(v6 + 56);

      v21 = 0;
    }

    v308 = (v98 + 64) >> 6;
    v366 = v98;
    v367 = (v8 + 8);
    v371 = xmmword_10146CA70;
    *&v377 = v6;
    *&v373 = v20;
    *&v372 = v308;
    while (1)
    {
      if (v6 < 0)
      {
        v334 = __CocoaSet.Iterator.next()();
        if (!v334)
        {
          goto LABEL_148;
        }

        *&v384[0] = v334;
        type metadata accessor for CRLStyledItem(0);
        swift_dynamicCast();
        v333 = *&v417[0];
        v6 = v21;
        v332 = v99;
        if (!*&v417[0])
        {
          goto LABEL_148;
        }
      }

      else
      {
        v330 = v21;
        v331 = v99;
        v6 = v21;
        if (!v99)
        {
          while (1)
          {
            v6 = v330 + 1;
            if (__OFADD__(v330, 1))
            {
              goto LABEL_154;
            }

            if (v6 >= v308)
            {
              break;
            }

            v331 = *&v20[8 * v6];
            v330 = (v330 + 1);
            if (v331)
            {
              goto LABEL_136;
            }
          }

LABEL_148:
          sub_100005070(v415);

          v139 = v377;
LABEL_149:
          sub_100035F90(v139);
          return v416[0];
        }

LABEL_136:
        v332 = (v331 - 1) & v331;
        v333 = *(*(v377 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v331)))));
        if (!v333)
        {
          goto LABEL_148;
        }
      }

      *&v376 = v332;
      type metadata accessor for CRLMovieItem(0);
      v335 = swift_dynamicCastClass();
      if (!v335)
      {
        break;
      }

      v336 = v335;
      sub_10000630C(v415, v418);
      v337 = v333;
      sub_1005B981C(&qword_101A0B1E8, &qword_10148B740);
      v338 = swift_dynamicCast();
      v339 = v374;
      if ((v338 & 1) == 0)
      {
        *&v370 = v337;
        v369 = objc_opt_self();
        v344 = [v369 _atomicIncrementAssertCount];
        *&v417[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v417, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
        v345 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
        v346 = String._bridgeToObjectiveC()();

        v347 = [v346 lastPathComponent];

        v348 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v350 = v349;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v351 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v352 = swift_allocObject();
        *(v352 + 16) = v371;
        *(v352 + 56) = &type metadata for Int32;
        *(v352 + 64) = &protocol witness table for Int32;
        *(v352 + 32) = v344;
        v353 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v352 + 96) = v353;
        v354 = sub_1005CF04C();
        *(v352 + 104) = v354;
        *(v352 + 72) = v345;
        *(v352 + 136) = &type metadata for String;
        v355 = sub_1000053B0();
        *(v352 + 112) = v348;
        *(v352 + 120) = v350;
        *(v352 + 176) = &type metadata for UInt;
        *(v352 + 144) = v355;
        *(v352 + 152) = 113;
        v356 = *&v417[0];
        *(v352 + 216) = v353;
        *(v352 + 224) = v354;
        *(v352 + 184) = &protocol witness table for UInt;
        *(v352 + 192) = v356;
        v8 = v345;
        v357 = v356;
        v358 = static os_log_type_t.error.getter();
        sub_100005404(v351, &_mh_execute_header, v358, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v352);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v359 = static os_log_type_t.error.getter();
        sub_100005404(v351, &_mh_execute_header, v359, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v360 = swift_allocObject();
        LODWORD(v8) = v360;
        v360[2] = 8;
        v360[3] = 0;
        v360[4] = 0;
        v360[5] = 0;
        v361 = __VaListBuilder.va_list()();
        StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
        v362 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
        v363 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v364 = String._bridgeToObjectiveC()();

        [v369 handleFailureInFunction:v362 file:v363 lineNumber:113 isFatal:0 format:v364 args:v361];
        v365 = v370;

LABEL_129:
        v21 = v6;
        v99 = v376;
        v16 = v378;
        v14 = v379;
        v6 = v377;
        v7 = v375;
        goto LABEL_130;
      }

      memcpy(v384, v417, 0x180uLL);
      memcpy(v383, v417, 0x178uLL);
      *&v382[0] = sub_10110B468(v383);
      v340 = DWORD2(v384[22]);
      v341 = objc_allocWithZone(type metadata accessor for CRLCommandSetMovieCornerRadius(0));
      (*(**(v336 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v367)(v339, v7);
      LODWORD(v343) = v340;
      [v341 initWithId:isa cornerRadius:v343];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v382[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v382[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1009CCE34(v384);
      v8 = v416;
      sub_100799F10(*&v382[0]);

      v21 = v6;
      v99 = v376;
      v6 = v377;
LABEL_130:
      v20 = v373;
      v308 = v372;
    }

    *&v370 = objc_opt_self();
    v309 = [v370 _atomicIncrementAssertCount];
    *&v417[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v417, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
    v369 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v310 = String._bridgeToObjectiveC()();

    v311 = [v310 lastPathComponent];

    v312 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v368 = v313;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v314 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v315 = swift_allocObject();
    *(v315 + 16) = v371;
    *(v315 + 56) = &type metadata for Int32;
    *(v315 + 64) = &protocol witness table for Int32;
    *(v315 + 32) = v309;
    v316 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v315 + 96) = v316;
    v317 = sub_1005CF04C();
    *(v315 + 104) = v317;
    v318 = v369;
    *(v315 + 72) = v369;
    *(v315 + 136) = &type metadata for String;
    v319 = sub_1000053B0();
    v320 = v368;
    *(v315 + 112) = v312;
    *(v315 + 120) = v320;
    *(v315 + 176) = &type metadata for UInt;
    *(v315 + 144) = v319;
    *(v315 + 152) = 112;
    v321 = *&v417[0];
    *(v315 + 216) = v316;
    *(v315 + 224) = v317;
    *(v315 + 184) = &protocol witness table for UInt;
    *(v315 + 192) = v321;
    v8 = v318;
    v322 = v321;
    v323 = static os_log_type_t.error.getter();
    sub_100005404(v314, &_mh_execute_header, v323, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v315);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v324 = static os_log_type_t.error.getter();
    sub_100005404(v314, &_mh_execute_header, v324, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v325 = swift_allocObject();
    LODWORD(v8) = v325;
    v325[2] = 8;
    v325[3] = 0;
    v325[4] = 0;
    v325[5] = 0;
    v326 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
    v327 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v328 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v329 = String._bridgeToObjectiveC()();

    [v370 handleFailureInFunction:v327 file:v328 lineNumber:112 isFatal:0 format:v329 args:v326];

    goto LABEL_129;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLStyledItem(0);
    sub_1009CCDDC();
    Set.Iterator.init(_cocoa:)();
    v20 = *(&v381[0] + 1);
    v6 = *&v381[0];
    v21 = *(&v381[1] + 1);
    v22 = *&v381[1];
    v23 = *&v381[2];
  }

  else
  {
    v246 = -1 << *(v6 + 32);
    v20 = (v6 + 56);
    v22 = ~v246;
    v247 = -v246;
    if (v247 < 64)
    {
      v248 = ~(-1 << v247);
    }

    else
    {
      v248 = -1;
    }

    v23 = v248 & *(v6 + 56);

    v21 = 0;
  }

  v249 = (v22 + 64) >> 6;
  v366 = v22;
  v367 = (v8 + 8);
  v370 = xmmword_10146CA70;
  *&v377 = v6;
  *&v372 = v20;
  *&v371 = v249;
  while (v6 < 0)
  {
    v274 = __CocoaSet.Iterator.next()();
    if (!v274)
    {
      goto LABEL_148;
    }

    *&v384[0] = v274;
    type metadata accessor for CRLStyledItem(0);
    swift_dynamicCast();
    v273 = *&v417[0];
    v6 = v21;
    v272 = v23;
    if (!*&v417[0])
    {
      goto LABEL_148;
    }

LABEL_113:
    *&v376 = v272;
    type metadata accessor for CRLImageItem(0);
    v275 = swift_dynamicCastClass();
    if (!v275)
    {
      *&v373 = objc_opt_self();
      v250 = [v373 _atomicIncrementAssertCount];
      *&v417[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v417, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
      v369 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v251 = String._bridgeToObjectiveC()();

      v252 = [v251 lastPathComponent];

      v368 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v254 = v253;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v255 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v256 = swift_allocObject();
      *(v256 + 16) = v370;
      *(v256 + 56) = &type metadata for Int32;
      *(v256 + 64) = &protocol witness table for Int32;
      *(v256 + 32) = v250;
      v257 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v256 + 96) = v257;
      v258 = sub_1005CF04C();
      *(v256 + 104) = v258;
      v259 = v369;
      *(v256 + 72) = v369;
      *(v256 + 136) = &type metadata for String;
      v260 = sub_1000053B0();
      *(v256 + 112) = v368;
      *(v256 + 120) = v254;
      *(v256 + 176) = &type metadata for UInt;
      *(v256 + 144) = v260;
      *(v256 + 152) = 105;
      v261 = *&v417[0];
      *(v256 + 216) = v257;
      *(v256 + 224) = v258;
      *(v256 + 184) = &protocol witness table for UInt;
      *(v256 + 192) = v261;
      v8 = v259;
      v262 = v261;
      v263 = static os_log_type_t.error.getter();
      sub_100005404(v255, &_mh_execute_header, v263, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v256);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v264 = static os_log_type_t.error.getter();
      sub_100005404(v255, &_mh_execute_header, v264, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v265 = swift_allocObject();
      LODWORD(v8) = v265;
      v265[2] = 8;
      v265[3] = 0;
      v265[4] = 0;
      v265[5] = 0;
      v266 = __VaListBuilder.va_list()();
      StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
      v267 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v268 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v269 = String._bridgeToObjectiveC()();

      [v373 handleFailureInFunction:v267 file:v268 lineNumber:105 isFatal:0 format:v269 args:v266];

      goto LABEL_102;
    }

    v276 = v275;
    sub_10000630C(v415, v418);
    *&v373 = v273;
    sub_1005B981C(&qword_101A0B1E8, &qword_10148B740);
    v277 = swift_dynamicCast();
    v278 = v374;
    if ((v277 & 1) == 0)
    {
      v369 = objc_opt_self();
      v283 = [v369 _atomicIncrementAssertCount];
      *&v417[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v417, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
      v284 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v285 = String._bridgeToObjectiveC()();

      v286 = [v285 lastPathComponent];

      v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v289 = v288;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v290 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v291 = swift_allocObject();
      *(v291 + 16) = v370;
      *(v291 + 56) = &type metadata for Int32;
      *(v291 + 64) = &protocol witness table for Int32;
      *(v291 + 32) = v283;
      v292 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v291 + 96) = v292;
      v293 = sub_1005CF04C();
      *(v291 + 104) = v293;
      *(v291 + 72) = v284;
      *(v291 + 136) = &type metadata for String;
      v294 = sub_1000053B0();
      *(v291 + 112) = v287;
      *(v291 + 120) = v289;
      *(v291 + 176) = &type metadata for UInt;
      *(v291 + 144) = v294;
      *(v291 + 152) = 106;
      v295 = *&v417[0];
      *(v291 + 216) = v292;
      *(v291 + 224) = v293;
      *(v291 + 184) = &protocol witness table for UInt;
      *(v291 + 192) = v295;
      v8 = v284;
      v296 = v295;
      v297 = static os_log_type_t.error.getter();
      sub_100005404(v290, &_mh_execute_header, v297, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v291);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v298 = static os_log_type_t.error.getter();
      sub_100005404(v290, &_mh_execute_header, v298, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v299 = swift_allocObject();
      LODWORD(v8) = v299;
      v299[2] = 8;
      v299[3] = 0;
      v299[4] = 0;
      v299[5] = 0;
      v300 = __VaListBuilder.va_list()();
      StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
      v301 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v302 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v303 = String._bridgeToObjectiveC()();

      [v369 handleFailureInFunction:v301 file:v302 lineNumber:106 isFatal:0 format:v303 args:v300];
      v304 = v373;

LABEL_102:
      v21 = v6;
      v23 = v376;
      v16 = v378;
      v14 = v379;
      v6 = v377;
      v7 = v375;
      goto LABEL_103;
    }

    memcpy(v384, v417, 0x180uLL);
    memcpy(v383, v417, 0x178uLL);
    *&v382[0] = sub_10110B468(v383);
    v279.n128_u32[0] = DWORD2(v384[22]);
    v280 = sub_100BB9950(v279);
    v281 = objc_allocWithZone(type metadata accessor for CRLCommandSetMask(0));
    (*(**(v276 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
    v282 = UUID._bridgeToObjectiveC()().super.isa;
    (*v367)(v278, v7);
    [v281 initWithId:v282 maskInfo:v280];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v382[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v382[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_1009CCE88(v384);
    sub_100799F10(*&v382[0]);
    v8 = v373;

    v21 = v6;
    v23 = v376;
    v6 = v377;
LABEL_103:
    v20 = v372;
    v249 = v371;
  }

  v270 = v21;
  v271 = v23;
  v6 = v21;
  if (v23)
  {
LABEL_109:
    v272 = (v271 - 1) & v271;
    v273 = *(*(v377 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v271)))));
    if (!v273)
    {
      goto LABEL_148;
    }

    goto LABEL_113;
  }

  while (1)
  {
    v6 = v270 + 1;
    if (__OFADD__(v270, 1))
    {
      break;
    }

    if (v6 >= v249)
    {
      goto LABEL_148;
    }

    v271 = *&v20[8 * v6];
    v270 = (v270 + 1);
    if (v271)
    {
      goto LABEL_109;
    }
  }

LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  swift_once();
LABEL_11:
  v27 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10146CA70;
  *(v28 + 56) = &type metadata for Int32;
  *(v28 + 64) = &protocol witness table for Int32;
  *(v28 + 32) = v8;
  v29 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v28 + 96) = v29;
  v30 = sub_1005CF04C();
  *(v28 + 104) = v30;
  *(v28 + 72) = v21;
  *(v28 + 136) = &type metadata for String;
  v31 = sub_1000053B0();
  *(v28 + 112) = v6;
  *(v28 + 120) = v7;
  *(v28 + 176) = &type metadata for UInt;
  *(v28 + 184) = &protocol witness table for UInt;
  *(v28 + 144) = v31;
  *(v28 + 152) = 55;
  v32 = *&v417[0];
  *(v28 + 216) = v29;
  *(v28 + 224) = v30;
  *(v28 + 192) = v32;
  v33 = v21;
  v34 = v32;
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v28);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v36 = static os_log_type_t.error.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100005404(v27, &_mh_execute_header, v36, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v38 = swift_allocObject();
  v38[2] = 8;
  v38[3] = 0;
  v38[4] = 0;
  v38[5] = 0;
  v39 = __VaListBuilder.va_list()();
  StaticString.description.getter("commandsToPasteStyle(to:from:)", 30, 2);
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v42 = String._bridgeToObjectiveC()();

  [v20 handleFailureInFunction:v40 file:v41 lineNumber:55 isFatal:0 format:v42 args:v39];

  return v37;
}

void *sub_1009CA570(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [v5 newReadAssistantWithPasteboard:a4];
  if (!v9)
  {
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    *&__src[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, __src, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10146CA70;
    *(v27 + 56) = &type metadata for Int32;
    *(v27 + 64) = &protocol witness table for Int32;
    *(v27 + 32) = v19;
    v28 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v27 + 96) = v28;
    v29 = sub_1005CF04C();
    *(v27 + 104) = v29;
    *(v27 + 72) = v20;
    *(v27 + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(v27 + 112) = v23;
    *(v27 + 120) = v25;
    *(v27 + 176) = &type metadata for UInt;
    *(v27 + 184) = &protocol witness table for UInt;
    *(v27 + 144) = v30;
    *(v27 + 152) = 124;
    v31 = *&__src[0];
    *(v27 + 216) = v28;
    *(v27 + 224) = v29;
    *(v27 + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v27);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v35 = static os_log_type_t.error.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_100005404(v26, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v37 = swift_allocObject();
    v37[2] = 8;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
    v38 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v41 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v39 file:v40 lineNumber:124 isFatal:0 format:v41 args:v38];

    return v36;
  }

  v10 = v9;
  v11 = *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_pasteboardObject];
  if (!v11)
  {
    v42 = objc_opt_self();
    v43 = [v42 _atomicIncrementAssertCount];
    *&__src[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, __src, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10146CA70;
    *(v51 + 56) = &type metadata for Int32;
    *(v51 + 64) = &protocol witness table for Int32;
    *(v51 + 32) = v43;
    v52 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v51 + 96) = v52;
    v53 = sub_1005CF04C();
    *(v51 + 104) = v53;
    *(v51 + 72) = v44;
    *(v51 + 136) = &type metadata for String;
    v54 = sub_1000053B0();
    *(v51 + 112) = v47;
    *(v51 + 120) = v49;
    *(v51 + 176) = &type metadata for UInt;
    *(v51 + 184) = &protocol witness table for UInt;
    *(v51 + 144) = v54;
    *(v51 + 152) = 125;
    v55 = *&__src[0];
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
    swift_deallocClassInstance();
    v59 = static os_log_type_t.error.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_100005404(v50, &_mh_execute_header, v59, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v60 = swift_allocObject();
    v60[2] = 8;
    v60[3] = 0;
    v60[4] = 0;
    v60[5] = 0;
    v61 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
    v62 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v64 = String._bridgeToObjectiveC()();

    [v42 handleFailureInFunction:v62 file:v63 lineNumber:125 isFatal:0 format:v64 args:v61];

    return v36;
  }

  v192 = _swiftEmptyArrayStorage;
  v12 = *&v11[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData];
  v13 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
  swift_beginAccess();
  sub_10000BE14(v12 + v13, __src, &qword_101A0B1E0, &unk_101482CD0);
  if (!*(&__src[1] + 1))
  {

    sub_10000CAAC(__src, &qword_101A0B1E0, &unk_101482CD0);
    return v192;
  }

  sub_100050F74(__src, v191);
  v14 = *(v12 + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind);
  if (v14 <= 3)
  {
    if (v14 < 2)
    {
      sub_10000630C(v191, v190);
      v15 = v11;
      sub_1005B981C(&qword_101A0B1E8, &qword_10148B740);
      if (swift_dynamicCast())
      {
        memcpy(__dst, __src, sizeof(__dst));
        v193[12] = *(&__src[49] + 8);
        v193[13] = *(&__src[50] + 8);
        v193[14] = *(&__src[51] + 8);
        v193[8] = *(&__src[45] + 8);
        v193[9] = *(&__src[46] + 8);
        v193[10] = *(&__src[47] + 8);
        v193[11] = *(&__src[48] + 8);
        v193[4] = *(&__src[41] + 8);
        v193[5] = *(&__src[42] + 8);
        v193[6] = *(&__src[43] + 8);
        v193[7] = *(&__src[44] + 8);
        v193[0] = *(&__src[37] + 8);
        v193[1] = *(&__src[38] + 8);
        v193[2] = *(&__src[39] + 8);
        v194 = *(&__src[52] + 1);
        v193[3] = *(&__src[40] + 8);
        sub_100880AD0(&__dst[37] + 8, v187);
        sub_1009CCD88(__dst);
        result = NSNotFound.getter();
        if (result == a2)
        {
          sub_100005070(v191);

          v17 = (&__dst[37] + 8);
LABEL_29:
          sub_10081852C(v17);

          return v192;
        }

        v172 = __OFADD__(a2, a3);
        v173 = a2 + a3;
        if (!v172)
        {
          v174 = *&a1[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
          if (v174)
          {
            v175 = v174;
            sub_100A2197C(v193, a2, v173, a1);
            v177 = v176;
            sub_10081852C(&__dst[37] + 8);

            sub_100799F10(v177);
            goto LABEL_38;
          }

          goto LABEL_53;
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v184 = v15;
      v109 = objc_opt_self();
      v110 = [v109 _atomicIncrementAssertCount];
      *&__src[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, __src, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
      v111 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v112 = String._bridgeToObjectiveC()();

      v113 = [v112 lastPathComponent];

      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v117 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_10146CA70;
      *(v118 + 56) = &type metadata for Int32;
      *(v118 + 64) = &protocol witness table for Int32;
      *(v118 + 32) = v110;
      v119 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v118 + 96) = v119;
      v120 = sub_1005CF04C();
      *(v118 + 104) = v120;
      *(v118 + 72) = v111;
      *(v118 + 136) = &type metadata for String;
      v121 = sub_1000053B0();
      *(v118 + 112) = v114;
      *(v118 + 120) = v116;
      *(v118 + 176) = &type metadata for UInt;
      *(v118 + 184) = &protocol witness table for UInt;
      *(v118 + 144) = v121;
      *(v118 + 152) = 134;
      v122 = *&__src[0];
      *(v118 + 216) = v119;
      *(v118 + 224) = v120;
      *(v118 + 192) = v122;
      v123 = v111;
      v124 = v122;
      v125 = static os_log_type_t.error.getter();
      sub_100005404(v117, &_mh_execute_header, v125, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v118);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v126 = static os_log_type_t.error.getter();
      sub_100005404(v117, &_mh_execute_header, v126, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v127 = swift_allocObject();
      v127[2] = 8;
      v127[3] = 0;
      v127[4] = 0;
      v127[5] = 0;
      v128 = __VaListBuilder.va_list()();
      StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
      v129 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v130 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v131 = String._bridgeToObjectiveC()();

      [v109 handleFailureInFunction:v129 file:v130 lineNumber:134 isFatal:0 format:v131 args:{v128, v184}];
LABEL_42:

      sub_100005070(v191);
      return v192;
    }

    if (v14 == 2)
    {
      v88 = objc_opt_self();
      v183 = v11;
      v89 = [v88 _atomicIncrementAssertCount];
      *&__src[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, __src, "Can not apply text style from an image", 38, 2u);
      StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
      v90 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v91 = String._bridgeToObjectiveC()();

      v92 = [v91 lastPathComponent];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v96 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_10146CA70;
      *(v97 + 56) = &type metadata for Int32;
      *(v97 + 64) = &protocol witness table for Int32;
      *(v97 + 32) = v89;
      v98 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v97 + 96) = v98;
      v99 = sub_1005CF04C();
      *(v97 + 104) = v99;
      *(v97 + 72) = v90;
      *(v97 + 136) = &type metadata for String;
      v100 = sub_1000053B0();
      *(v97 + 112) = v93;
      *(v97 + 120) = v95;
      *(v97 + 176) = &type metadata for UInt;
      *(v97 + 184) = &protocol witness table for UInt;
      *(v97 + 144) = v100;
      *(v97 + 152) = 145;
      v101 = *&__src[0];
      *(v97 + 216) = v98;
      *(v97 + 224) = v99;
      *(v97 + 192) = v101;
      v102 = v90;
      v103 = v101;
      v104 = static os_log_type_t.error.getter();
      sub_100005404(v96, &_mh_execute_header, v104, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v97);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v96, &_mh_execute_header, v105, "Can not apply text style from an image", 38, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v106 = swift_allocObject();
      v106[2] = 8;
      v106[3] = 0;
      v106[4] = 0;
      v106[5] = 0;
      v107 = __VaListBuilder.va_list()();
      StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
      v85 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v86 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Can not apply text style from an image", 38, 2);
      v87 = String._bridgeToObjectiveC()();

      [v88 handleFailureInFunction:v85 file:v86 lineNumber:145 isFatal:0 format:v87 args:v107];
    }

    else
    {
      v132 = objc_opt_self();
      v183 = v11;
      v133 = [v132 _atomicIncrementAssertCount];
      *&__src[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, __src, "Can not apply text style from a movie", 37, 2u);
      StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
      v134 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v135 = String._bridgeToObjectiveC()();

      v136 = [v135 lastPathComponent];

      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v138;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v140 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_10146CA70;
      *(v141 + 56) = &type metadata for Int32;
      *(v141 + 64) = &protocol witness table for Int32;
      *(v141 + 32) = v133;
      v142 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v141 + 96) = v142;
      v143 = sub_1005CF04C();
      *(v141 + 104) = v143;
      *(v141 + 72) = v134;
      *(v141 + 136) = &type metadata for String;
      v144 = sub_1000053B0();
      *(v141 + 112) = v137;
      *(v141 + 120) = v139;
      *(v141 + 176) = &type metadata for UInt;
      *(v141 + 184) = &protocol witness table for UInt;
      *(v141 + 144) = v144;
      *(v141 + 152) = 147;
      v145 = *&__src[0];
      *(v141 + 216) = v142;
      *(v141 + 224) = v143;
      *(v141 + 192) = v145;
      v146 = v134;
      v147 = v145;
      v148 = static os_log_type_t.error.getter();
      sub_100005404(v140, &_mh_execute_header, v148, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v141);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v149 = static os_log_type_t.error.getter();
      sub_100005404(v140, &_mh_execute_header, v149, "Can not apply text style from a movie", 37, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v150 = swift_allocObject();
      v150[2] = 8;
      v150[3] = 0;
      v150[4] = 0;
      v150[5] = 0;
      v151 = __VaListBuilder.va_list()();
      StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
      v85 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
      v86 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Can not apply text style from a movie", 37, 2);
      v87 = String._bridgeToObjectiveC()();

      [v132 handleFailureInFunction:v85 file:v86 lineNumber:147 isFatal:0 format:v87 args:v151];
    }

LABEL_37:

LABEL_38:
    sub_100005070(v191);
    return v192;
  }

  if (v14 != 4)
  {
    if (v14 != 5)
    {
      sub_100005070(v191);

      return v192;
    }

    v65 = objc_opt_self();
    v183 = v11;
    v66 = [v65 _atomicIncrementAssertCount];
    *&__src[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, __src, "Can not apply text style from a connection line", 47, 2u);
    StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
    v67 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v68 = String._bridgeToObjectiveC()();

    v69 = [v68 lastPathComponent];

    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v73 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_10146CA70;
    *(v74 + 56) = &type metadata for Int32;
    *(v74 + 64) = &protocol witness table for Int32;
    *(v74 + 32) = v66;
    v75 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v74 + 96) = v75;
    v76 = sub_1005CF04C();
    *(v74 + 104) = v76;
    *(v74 + 72) = v67;
    *(v74 + 136) = &type metadata for String;
    v77 = sub_1000053B0();
    *(v74 + 112) = v70;
    *(v74 + 120) = v72;
    *(v74 + 176) = &type metadata for UInt;
    *(v74 + 184) = &protocol witness table for UInt;
    *(v74 + 144) = v77;
    *(v74 + 152) = 149;
    v78 = *&__src[0];
    *(v74 + 216) = v75;
    *(v74 + 224) = v76;
    *(v74 + 192) = v78;
    v79 = v67;
    v80 = v78;
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v73, &_mh_execute_header, v81, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v74);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v82 = static os_log_type_t.error.getter();
    sub_100005404(v73, &_mh_execute_header, v82, "Can not apply text style from a connection line", 47, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v83 = swift_allocObject();
    v83[2] = 8;
    v83[3] = 0;
    v83[4] = 0;
    v83[5] = 0;
    v84 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Can not apply text style from a connection line", 47, 2);
    v87 = String._bridgeToObjectiveC()();

    [v65 handleFailureInFunction:v85 file:v86 lineNumber:149 isFatal:0 format:v87 args:v84];
    goto LABEL_37;
  }

  sub_10000630C(v191, v193);
  v108 = v11;
  sub_1005B981C(&qword_101A0B1E8, &qword_10148B740);
  if (!swift_dynamicCast())
  {
    v186 = v108;
    v152 = objc_opt_self();
    v153 = [v152 _atomicIncrementAssertCount];
    *&__src[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, __src, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
    v154 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v155 = String._bridgeToObjectiveC()();

    v156 = [v155 lastPathComponent];

    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v159 = v158;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v160 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_10146CA70;
    *(v161 + 56) = &type metadata for Int32;
    *(v161 + 64) = &protocol witness table for Int32;
    *(v161 + 32) = v153;
    v162 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v161 + 96) = v162;
    v163 = sub_1005CF04C();
    *(v161 + 104) = v163;
    *(v161 + 72) = v154;
    *(v161 + 136) = &type metadata for String;
    v164 = sub_1000053B0();
    *(v161 + 112) = v157;
    *(v161 + 120) = v159;
    *(v161 + 176) = &type metadata for UInt;
    *(v161 + 184) = &protocol witness table for UInt;
    *(v161 + 144) = v164;
    *(v161 + 152) = 140;
    v165 = *&__src[0];
    *(v161 + 216) = v162;
    *(v161 + 224) = v163;
    *(v161 + 192) = v165;
    v166 = v154;
    v167 = v165;
    v168 = static os_log_type_t.error.getter();
    sub_100005404(v160, &_mh_execute_header, v168, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v161);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v169 = static os_log_type_t.error.getter();
    sub_100005404(v160, &_mh_execute_header, v169, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v170 = swift_allocObject();
    v170[2] = 8;
    v170[3] = 0;
    v170[4] = 0;
    v170[5] = 0;
    v171 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToPasteTextStyle(to:in:from:)", 37, 2);
    v129 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v130 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v131 = String._bridgeToObjectiveC()();

    [v152 handleFailureInFunction:v129 file:v130 lineNumber:140 isFatal:0 format:v131 args:{v171, v186}];
    goto LABEL_42;
  }

  __src[12] = __dst[12];
  __src[13] = __dst[13];
  __src[14] = __dst[14];
  *&__src[15] = *&__dst[15];
  __src[8] = __dst[8];
  __src[9] = __dst[9];
  __src[10] = __dst[10];
  __src[11] = __dst[11];
  __src[4] = __dst[4];
  __src[5] = __dst[5];
  __src[6] = __dst[6];
  __src[7] = __dst[7];
  __src[0] = __dst[0];
  __src[1] = __dst[1];
  __src[2] = __dst[2];
  __src[3] = __dst[3];
  result = NSNotFound.getter();
  if (result == a2)
  {
    sub_100005070(v191);

    v17 = __src;
    goto LABEL_29;
  }

  v172 = __OFADD__(a2, a3);
  v178 = a2 + a3;
  if (v172)
  {
    goto LABEL_52;
  }

  v179 = *&a1[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (v179)
  {
    v180 = v179;
    sub_100A2197C(__src, a2, v178, a1);
    v182 = v181;
    sub_10081852C(__src);

    sub_100799F10(v182);
    goto LABEL_38;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1009CC2FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = [a3 newCopyAssistantWithPasteboard:a2];
  v14 = [v13 pasteboardObject];
  if (v14)
  {
    v15 = v14;
    sub_1008806E8(v12, v14, a4, a5);
    v16 = [objc_allocWithZone(CRLContentDescriptionTranslator) init];
    v17 = sub_100B3EEA0(v12, v16, a4, a5);
    sub_10007941C(v17);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 setContentDescription:isa];

    [v13 copyToPasteboard];
  }

  else
  {
    v43 = objc_opt_self();
    v19 = [v43 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v44, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("copyStyleFrom(styledItem:to:)", 29, 2);
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v41 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v25 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v25;
    v26 = sub_1005CF04C();
    *(inited + 104) = v26;
    v27 = v42;
    *(inited + 72) = v42;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v40;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 20;
    v29 = v44;
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v29;
    v30 = v27;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    v33 = v41;
    sub_100005404(v41, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter("copyStyleFrom(styledItem:to:)", 29, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v16 = String._bridgeToObjectiveC()();

    [v43 handleFailureInFunction:v37 file:v15 lineNumber:20 isFatal:0 format:v16 args:v36];

    v13 = v37;
  }

  return (*(v9 + 8))(v12, a4);
}

void *sub_1009CC878(uint64_t a1, int a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v9 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = [objc_allocWithZone(CRLBoardItemProviderFactory) initWithBoardItemFactory:a1];
  if (*(a3 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems))
  {
    v13 = *(a3 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= 1)
    {
      goto LABEL_6;
    }

LABEL_11:
    HIDWORD(v31) = a2;

    v21 = *(a3 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);
    v22 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
    swift_beginAccess();
    sub_10000BE14(v21 + v22, v11, &unk_101A0B1C0, &qword_101470EC0);
    v23 = type metadata accessor for CRLWPStorageCRDTData(0);
    LODWORD(v21) = (*(*(v23 - 8) + 48))(v11, 1, v23);
    sub_10000CAAC(v11, &unk_101A0B1C0, &qword_101470EC0);
    if (v21 != 1)
    {
      v24 = sub_10087BD0C(a1);
      if (v24)
      {
        v25 = v24;
        result = swift_allocObject();
        *(result + 1) = xmmword_101465920;
        v27 = *&v25[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
        if (!v27)
        {
          __break(1u);
          return result;
        }

        result[4] = v27;
        type metadata accessor for CRLWPStorage();
        v28 = v27;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v30 = [v12 providersForBoardItemsFromTextStorages:isa position:BYTE4(v31) & 1 keepHighlights:{0.0, 0.0}];

        if (v30)
        {
          sub_1005B981C(&qword_101A0B1B8, &qword_10148B738);
          v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          goto LABEL_18;
        }
      }
    }

LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (v14 < 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v15 = objc_opt_self();
  type metadata accessor for CRLBoardItem(0);

  v16 = Array._bridgeToObjectiveC()().super.isa;

  sub_1005B981C(&qword_101A0B1B0, &unk_1014C61F0);
  v17 = Array._bridgeToObjectiveC()().super.isa;
  v18 = [v15 ingestibleBoardItemAndDescriptionWithBoardItems:v16 descriptions:v17];

  if (!v18)
  {
    sub_100006370(0, &unk_101A0B1D0, off_10182F8A0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = Array._bridgeToObjectiveC()().super.isa;
  }

  v19 = [v12 styleMappingProvidersForPasteboardBoardItems:v18];

  if (!v19)
  {
    goto LABEL_17;
  }

  sub_1005B981C(&qword_101A0B1B8, &qword_10148B738);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_18:
  if (a5)
  {
    *a5 = v14 > 0;
  }

  if (v20)
  {
    return v20;
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

void sub_1009CCC80(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        if (v5)
        {
          v7 = v6;
          ObjectType = swift_getObjectType();
          (*(v7 + 32))(ObjectType, v7);
        }
      }
    }
  }
}

unint64_t sub_1009CCDDC()
{
  result = qword_101A0B1F0;
  if (!qword_101A0B1F0)
  {
    v3 = type metadata accessor for CRLStyledItem(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_101A0B1F0);
  }

  return result;
}

uint64_t sub_1009CCF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1009CCFD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1009CD0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1009CF62C();
  v7 = sub_1009CF580();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1009CD150(uint64_t a1, uint64_t a2)
{
  sub_1009CF62C();
  sub_1009CE1B4();
  return CRValue<>.init(from:)();
}

uint64_t sub_1009CD1BC(uint64_t a1, uint64_t a2)
{
  sub_1009CF62C();
  sub_1009CE1B4();
  return CRValue<>.encode(to:)();
}

uint64_t sub_1009CD218(uint64_t a1)
{
  v2 = sub_1009CF62C();
  v3 = sub_1009CE1B4();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_1009CD2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009CE1B4();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

Swift::Int sub_1009CD348()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10148BD98[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1009CD3D0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10148BD98[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1009CD434()
{
  v1 = *v0;
  v2 = 1752457584;
  v3 = 0x64656C6C69467369;
  v4 = 0x696669746E656469;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E696F4A656E696CLL;
  if (v1 != 1)
  {
    v5 = 0x746E696F50646E65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009CD4F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009CEBF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009CD540(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009CDE38();
  v5 = sub_1009CDE90();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_1009CD598(uint64_t a1)
{
  v2 = sub_1009CDE90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009CD5D4(uint64_t a1)
{
  v2 = sub_1009CDE90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009CD614(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0B2A8, &qword_10148BAE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1009CDE90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = 0;
  sub_1009CF2EC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[1];
    v11 = *(v3 + 16);
    v12 = 1;
    sub_1005B981C(&qword_101A0B290, &qword_10148BAE0);
    sub_1009CF340(&qword_101A0B2B8, &protocol conformance descriptor for <> CRExtensible<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 20);
    v12 = 2;
    sub_1009CF3B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v3[6];
    v12 = 5;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009CD8CC(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

double sub_1009CD974@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1009CEE00(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1009CD9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009CF404();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1009CDA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009CF404();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1009CDA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1009CDC80();
  v7 = sub_1009CF458();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1009CDAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009CF404();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1009CDBD8(uint64_t a1)
{
  v2 = sub_1009CE000();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_1009CDC28()
{
  result = qword_101A0B210;
  if (!qword_101A0B210)
  {
    result = swift_getWitnessTable(aI_74, &type metadata for CRLLineEndData, v0, v1);
    atomic_store(result, &qword_101A0B210);
  }

  return result;
}

unint64_t sub_1009CDC80()
{
  result = qword_101A0DA10;
  if (!qword_101A0DA10)
  {
    result = swift_getWitnessTable(byte_10148BAA0, &type metadata for CRLLineEndData, v0, v1);
    atomic_store(result, &qword_101A0DA10);
  }

  return result;
}

unint64_t sub_1009CDCD8()
{
  result = qword_101A0B218;
  if (!qword_101A0B218)
  {
    result = swift_getWitnessTable(byte_10148B888, &type metadata for CRLLineEndData, v0, v1);
    atomic_store(result, &qword_101A0B218);
  }

  return result;
}

unint64_t sub_1009CDD30()
{
  result = qword_101A0B220;
  if (!qword_101A0B220)
  {
    result = swift_getWitnessTable(byte_10148B860, &type metadata for CRLLineEndData, v0, v1);
    atomic_store(result, &qword_101A0B220);
  }

  return result;
}

unint64_t sub_1009CDD88()
{
  result = qword_101A0B228;
  if (!qword_101A0B228)
  {
    result = swift_getWitnessTable(byte_10148B8F8, &type metadata for CRLLineEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B228);
  }

  return result;
}

unint64_t sub_1009CDDE0()
{
  result = qword_101A0B230;
  if (!qword_101A0B230)
  {
    result = swift_getWitnessTable("х:", &type metadata for CRLLineEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B230);
  }

  return result;
}

unint64_t sub_1009CDE38()
{
  result = qword_101A0B238;
  if (!qword_101A0B238)
  {
    result = swift_getWitnessTable(byte_10148B9D8, &type metadata for CRLLineEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B238);
  }

  return result;
}

unint64_t sub_1009CDE90()
{
  result = qword_101A0B240;
  if (!qword_101A0B240)
  {
    result = swift_getWitnessTable(asc_10148B930, &type metadata for CRLLineEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B240);
  }

  return result;
}

unint64_t sub_1009CDEE8()
{
  result = qword_101A0B248;
  if (!qword_101A0B248)
  {
    result = swift_getWitnessTable(byte_10148B9A8, &type metadata for CRLLineEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B248);
  }

  return result;
}

unint64_t sub_1009CDF40()
{
  result = qword_101A0B250;
  if (!qword_101A0B250)
  {
    result = swift_getWitnessTable(byte_10148B980, &type metadata for CRLLineEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0B250);
  }

  return result;
}

unint64_t sub_1009CDF98()
{
  result = qword_101A0B258;
  if (!qword_101A0B258)
  {
    v3 = sub_1005C4E5C(&qword_101A0B260, &qword_10148B9D0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A0B258);
  }

  return result;
}

unint64_t sub_1009CE000()
{
  result = qword_101A0B268;
  if (!qword_101A0B268)
  {
    result = swift_getWitnessTable("Ɇ:", &type metadata for CRLLineEndData, v0, v1);
    atomic_store(result, &qword_101A0B268);
  }

  return result;
}

unint64_t sub_1009CE058()
{
  result = qword_101A0B270;
  if (!qword_101A0B270)
  {
    result = swift_getWitnessTable(byte_10148B7F0, &type metadata for CRLLineEndData, v0, v1);
    atomic_store(result, &qword_101A0B270);
  }

  return result;
}

uint64_t sub_1009CE0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  if (v6)
  {
    if (!v7 || !sub_10067063C(v6, v7))
    {
      goto LABEL_10;
    }
  }

  else if (v7)
  {
    goto LABEL_10;
  }

  sub_1009CE1B4();
  if (static CRExtensible.== infix(_:_:)() & 1) != 0 && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && ((*(a1 + 28) ^ *(a2 + 28)) & 1) == 0 && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    sub_100B3216C(*(a1 + 48), *(a2 + 48));
    return v8 & 1;
  }

LABEL_10:
  v8 = 0;
  return v8 & 1;
}

unint64_t sub_1009CE1B4()
{
  result = qword_101A0B278;
  if (!qword_101A0B278)
  {
    result = swift_getWitnessTable(byte_10148BD5C, &type metadata for CRLLineEndData.JoinType, v0, v1);
    atomic_store(result, &qword_101A0B278);
  }

  return result;
}

id sub_1009CE208(float *a1)
{
  if (a1[4])
  {
    v35 = objc_opt_self();
    v2 = [v35 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36, "Tried to decode unknown line end line join value. Falling back to unarchiving miter.", 84, 2u);
    StaticString.description.getter("init(unarchiving:)", 18, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLLineEndData.swift", 84, 2);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 85;
    v14 = v36;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Tried to decode unknown line end line join value. Falling back to unarchiving miter.", 84, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(unarchiving:)", 18, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLLineEndData.swift", 84, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to decode unknown line end line join value. Falling back to unarchiving miter.", 84, 2);
    v23 = String._bridgeToObjectiveC()();

    [v35 handleFailureInFunction:v21 file:v22 lineNumber:85 isFatal:0 format:v23 args:v20];

    v24 = 0;
    if (*a1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v27 = 0;
    goto LABEL_8;
  }

  v24 = *(a1 + 8);
  if (!*a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_100006370(0, &qword_101A02480, off_10182F728);

  v26 = sub_100C58684(v25);

  v27 = v26;
LABEL_8:
  v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v29 = a1[5];
  v30 = a1[6];
  v31 = *(a1 + 28);
  v32 = String._bridgeToObjectiveC()();
  v33 = [v28 initWithBezierPath:v27 wrapPath:0 endPoint:v31 isFilled:v32 identifier:v24 lineJoin:{v29, v30}];

  return v33;
}