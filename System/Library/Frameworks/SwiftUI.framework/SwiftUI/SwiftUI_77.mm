void closure #1 in CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v10 = type metadata accessor for ShadowListDataSource(0, *((v8 & v7) + 0x60), *(*((v8 & v7) + 0x70) + 8), v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  ListCoreDataSource.moveCell(fromRowAt:to:)(a2, a3, v10, WitnessTable);
  swift_endAccess();
  UICollectionViewListCoordinatorBase.commitUpdates()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = IndexPath._bridgeToObjectiveC()().super.isa;
  [a4 moveItemAtIndexPath:isa toIndexPath:v13];
}

uint64_t closure #4 in CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0xA8), *(*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0) + 8), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = *((v7 & v6) + 0x60);
  swift_beginAccess();
  (*(v9 + 16))(v11, &a1[v12], v8);
  ShadowListDataSource.performDrop(to:)(a2, v8);
  return (*(v9 + 8))(v11, v8);
}

id TableViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v20 = a1;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0);
  v11 = type metadata accessor for ShadowListDataSource(0, v9, v10, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = *((v8 & v7) + 0x60);
  swift_beginAccess();
  (*(v12 + 16))(v14, &v4[v15], v11);
  v22 = v9;
  v23 = v10;
  v24 = a3;
  v25 = a2;
  v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITableViewDropProposal, 0x1E69DD048);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v11);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(v20, partial apply for closure #1 in TableViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:), v21, v11, v16, WitnessTable, &v26);
  (*(v12 + 8))(v14, v11);
  result = v26;
  if (!v26)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD048]) initWithDropOperation_];
  }

  return result;
}

id closure #1 in TableViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:)@<X0>(id a1@<X2>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a2)
  {
    v9 = type metadata accessor for ShadowListDataSource(255, a3, a4, a3);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
    v12 = type metadata accessor for _RowVisitationContext(0, v9, WitnessTable, v11);
    if (_RowVisitationContext.canMove.getter(v12))
    {
      result = [objc_allocWithZone(MEMORY[0x1E69DD048]) initWithDropOperation:3 intent:1];
LABEL_19:
      *a5 = result;
      return result;
    }
  }

  v14 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_14:

    v22._rawValue = MEMORY[0x1E69E7CC0];
LABEL_15:
    v23 = type metadata accessor for ShadowListDataSource(255, a3, a4, v21);
    v24 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v23);
    type metadata accessor for _RowVisitationContext(0, v23, v24, v25);
    LOBYTE(v23) = _RowVisitationContext.canHandleDropInsert(items:)(v22);

    v26 = objc_allocWithZone(MEMORY[0x1E69DD048]);
    if (v23)
    {
      result = [v26 initWithDropOperation:2 intent:1];
    }

    else
    {
      result = [v26 initWithDropOperation_];
    }

    goto LABEL_19;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_6:
  v27 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x18D00E9C0](v17, v15);
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = [v18 itemProvider];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v16 != v17);

    v22._rawValue = v27;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void CollectionViewListDragAndDropController.validIndexPath(in:)(void *a1, SEL *a2)
{
  v4 = [a1 numberOfSections];
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) != 0 || !__OFSUB__([a1 *a2], 1))
  {

LABEL_9:
    JUMPOUT(0x18D000680);
  }

  __break(1u);
  goto LABEL_9;
}

void closure #1 in TableViewListDragAndDropController.dragItem(at:tableView:session:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = type metadata accessor for ShadowListDataSource(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v6);
  type metadata accessor for _RowVisitationContext(0, v6, WitnessTable, v8);
  v9 = ViewTraitCollection.value<A>(for:defaultValue:)();
  v10 = v14[0];
  if (v14[0] && (v11 = v14[1], (v14[0])(v14, v9), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10, v11), (v12 = v14[0]) != 0))
  {
    type metadata accessor for Spacer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18CD69590;
    *(v13 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v13;
}

Class @objc TableViewListDragAndDropController.tableView(_:itemsForBeginning:at:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_18C0B8E10(v11, v10, v13, v14);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

Class @objc TableViewListDragAndDropController.tableView(_:itemsForAddingTo:at:point:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_18C0B8E10(v11, v10, v13, v14);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

void TableViewListDragAndDropController.tableView(_:dragPreviewParametersForRowAt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0);
  v11 = type metadata accessor for ShadowListDataSource(0, v9, v10, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29[-v13];
  v15 = *((v8 & v7) + 0x60);
  swift_beginAccess();
  (*(v12 + 16))(v14, &v4[v15], v11);
  v30 = v9;
  v31 = v10;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v11);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(a2, partial apply for closure #1 in TableViewListDragAndDropController.tableView(_:dragPreviewParametersForRowAt:), v29, v11, MEMORY[0x1E69E6370], WitnessTable, v33);
  (*(v12 + 8))(v14, v11);
  if (LOBYTE(v33[0]) != 2 && (v33[0] & 1) != 0)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 clearColor];
    [v19 setBackgroundColor_];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v22 = [a1 cellForRowAtIndexPath_];

    if (v22)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_dynamicCastUnknownClassUnconditional();
      v36 = 0u;
      v37 = 0u;
      v38 = 6;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = (*(*(AssociatedConformanceWitness + 8) + 56))(AssociatedTypeWitness);
      if (v25 && (v26 = v25, _UIHostingView.viewGraph.getter(v25), v26, v27 = ViewGraph.responderNode.getter(), , v27))
      {
        type metadata accessor for ViewResponder();
        if (swift_dynamicCastClass())
        {
          *&v39 = 2;
          hostingViewCoordinateSpace.getter();
          v35 = 1;
          dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
          outlined destroy of CoordinateSpace(v33);
          v39 = v36;
          v40 = v37;
          v41 = v38;
          if (Path.isEmpty.getter())
          {
          }

          else
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath, 0x1E69DC728);
            v33[0] = v39;
            v33[1] = v40;
            v34 = v41;
            outlined init with copy of Path.Storage(v33, v32);
            v28 = UIBezierPath.init(_:)(&v39);
            [v19 setVisiblePath_];
          }

          outlined destroy of Path(&v39);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in TableViewListDragAndDropController.tableView(_:dragPreviewParametersForRowAt:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a1, a2, a3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for _RowVisitationContext(0, v5, WitnessTable, v7);
  result = _RowVisitationContext.wantsClippedBackground.getter(v8);
  *a4 = result & 1;
  return result;
}

id TableViewListDragAndDropController.tableView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v101 = a1;
  v8 = *v4;
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v10 = *((*MEMORY[0x1E69E7D40] & v8) + 0xB0);
  v11 = *(v10 + 8);
  v12 = type metadata accessor for ShadowRowCollection(0, v9, v11, a4);
  v99 = *(v12 - 8);
  v100 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v93 - v13;
  v15 = type metadata accessor for ShadowSectionCollection(0, v9, v11, v14);
  v104 = *(v15 - 8);
  v105 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v93 - v16;
  v110 = type metadata accessor for ShadowListDataSource(0, v9, v10, v17);
  v106 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v93 - v18;
  _s7SwiftUI12DropDelegate_pSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v93 - v23;
  v25 = type metadata accessor for IndexPath();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v93 - v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v93 - v32;
  v97 = a2;
  v34 = [a2 localDragSession];
  Strong = swift_unknownObjectWeakLoadStrong();
  v36 = Strong;
  v107 = v25;
  v108 = v26;
  if (!v34)
  {
    v39 = a3;
    if (!Strong)
    {
      LODWORD(v102) = 1;
      v38 = MEMORY[0x1E69E7D40];
      goto LABEL_26;
    }

LABEL_9:
    swift_unknownObjectRelease();
    v38 = MEMORY[0x1E69E7D40];
    goto LABEL_10;
  }

  if (!Strong)
  {
    v39 = a3;
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v37 = v34 == v36;
  v38 = MEMORY[0x1E69E7D40];
  v39 = a3;
  if (v37)
  {
    LODWORD(v102) = 1;
LABEL_26:
    outlined init with copy of _DraggingModifier?(v39, v21, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI12DropDelegate_pSgMaTm_0);
    v60 = *(v26 + 48);
    v61 = v60(v21, 1, v25);
    v62 = v106;
    if (v61 == 1)
    {
      CollectionViewListDragAndDropController.validIndexPath(in:)(v101, &selRef_numberOfRowsInSection_);
      if (v60(v21, 1, v25) != 1)
      {
        _s7SwiftUI12DropDelegate_pSgWOhTm_0(v21, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
      }
    }

    else
    {
      (*(v26 + 32))(v111, v21, v25);
    }

    v63 = *((*v38 & *v5) + 0x60);
    swift_beginAccess();
    v64 = v5;
    v101 = v62[2];
    v66 = v109;
    v65 = v110;
    (v101)(v109, v5 + v63, v110);
    v67 = v103;
    ShadowListDataSource.sectionIDs.getter(v65, v68, v103);
    v106 = v62[1];
    (v106)(v66, v65);
    v69 = v105;
    v70 = specialized ViewLeafView.platformView.getter(v105);
    (*(v104 + 8))(v67, v69);
    v71 = IndexPath.section.getter();
    v105 = v70;
    if (v71 >= v70 || (v72 = IndexPath.row.getter(), (v101)(v66, v64 + v63, v65), v73 = IndexPath.section.getter(), v74 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v65), v75 = v98, ListDiffable.rowIDs(forSectionAtOffset:)(v73, v65, v74), (v106)(v66, v65), v76 = v75, v77 = v100, v78 = ShadowRowCollection.count.getter(v100), (*(v99 + 8))(v76, v77), v65 = v110, v72 >= v78))
    {
      if (v102)
      {
        v83 = [objc_allocWithZone(MEMORY[0x1E69DD048]) initWithDropOperation:3 intent:1];
      }

      else
      {
        if (v105 >= 1)
        {
          v84 = v109;
          (v101)(v109, v64 + v63, v65);
          WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v65);
          v86 = v98;
          ListDiffable.rowIDs(forSectionAtOffset:)(0, v65, WitnessTable);
          (v106)(v84, v65);
          v87 = v100;
          swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, v100);
          LOBYTE(v84) = Collection.isEmpty.getter();
          (*(v99 + 8))(v86, v87);
          if ((v84 & 1) == 0)
          {
            v88 = v96;
            MEMORY[0x18D000680](0, 0);
            v59 = TableViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:)(v88, v97, 0, v89);
            v90 = *(v108 + 8);
            v91 = v88;
            v92 = v107;
            v90(v91, v107);
            v90(v111, v92);
            return v59;
          }
        }

        v83 = [objc_allocWithZone(MEMORY[0x1E69DD048]) initWithDropOperation_];
      }

      v59 = v83;
      v81 = *(v108 + 8);
      v82 = v111;
    }

    else
    {
      v80 = v111;
      v59 = TableViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:)(v111, v97, v102, v79);
      v81 = *(v108 + 8);
      v82 = v80;
    }

    v81(v82, v107);
    return v59;
  }

LABEL_10:
  outlined init with copy of _DraggingModifier?(v39, v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI12DropDelegate_pSgMaTm_0);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    _s7SwiftUI12DropDelegate_pSgWOhTm_0(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    goto LABEL_25;
  }

  (*(v26 + 32))(v33, v24, v25);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v41 = [v101 cellForRowAtIndexPath_];

  if (!v41)
  {
LABEL_24:
    (*(v26 + 8))(v33, v25);
    goto LABEL_25;
  }

  type metadata accessor for ListTableViewCell(0);
  v42 = swift_dynamicCastClass();
  if (!v42)
  {

    goto LABEL_24;
  }

  v43 = *(v5 + *((*v38 & *v5) + 0x98));
  if (!v43)
  {
    v26 = v108;
    (*(v108 + 8))(v33, v25);

    goto LABEL_25;
  }

  v44 = *(v42 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
  if (!v44)
  {

    v26 = v108;
    goto LABEL_24;
  }

  v45 = *(v44 + *((*v44 & *v38) + 0x120));
  v112 = 0;
  v113 = 0;
  v46 = &v45[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v48 = *(v46 + 1);
    ObjectType = swift_getObjectType();
    v94 = *(v48 + 24);
    v49 = v45;
    v102 = v43;
    v50 = v94(ObjectType, v48);
    v51 = swift_unknownObjectRelease();
    if (v50)
    {
      MEMORY[0x1EEE9AC00](v51);
      *(&v93 - 2) = &v112;
      dispatch thunk of ResponderNode.visit(applying:)();

      v52 = v112;
      v25 = v107;
      v38 = MEMORY[0x1E69E7D40];
      if (v112)
      {
        v53 = v113;
        v54 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x78);
        swift_beginAccess();

        v55 = specialized static UIDropProposal.fromActiveDrop(_:session:responder:host:)(v5 + v54, v97, v52, v53, v102);
        swift_endAccess();

        ObjectType = v55;
        if ([v55 operation] == 2)
        {
          v56 = ObjectType;
          v57 = v41;
          v58 = [ObjectType operation];
          v59 = [objc_allocWithZone(MEMORY[0x1E69DD048]) initWithDropOperation:v58 intent:2];

          (*(v108 + 8))(v33, v25);
          return v59;
        }

        v26 = v108;
        (*(v108 + 8))(v33, v25);

        goto LABEL_25;
      }
    }

    else
    {

      v25 = v107;
      v38 = MEMORY[0x1E69E7D40];
    }

    v26 = v108;
    (*(v108 + 8))(v33, v25);

LABEL_25:
    LODWORD(v102) = 0;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

id @objc CollectionViewListDragAndDropController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(id, uint64_t, char *))
{
  _s7SwiftUI12DropDelegate_pSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for IndexPath();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  v16 = a3;
  swift_unknownObjectRetain();
  v17 = a1;
  v18 = a6(v16, a4, v13);

  swift_unknownObjectRelease();
  _s7SwiftUI12DropDelegate_pSgWOhTm_0(v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);

  return v18;
}

void TableViewListDragAndDropController.tableView(_:performDropWith:)(void *a1, void *a2)
{
  v5 = v2;
  v107 = a1;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for DropCoordinator(0, TupleTypeMetadata2, v11, v12);
  v111 = *(v13 - 8);
  v112 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v104 - v14;
  v106 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v104 - v16;
  v18 = type metadata accessor for ShadowListDataSource(0, v9, v8, v17);
  v114 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v104 - v19;
  v20 = type metadata accessor for IndexPath();
  v116 = *(v20 - 8);
  v117 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v104 - v23;
  v121 = TupleTypeMetadata2;
  v26 = type metadata accessor for DropCoordinator.Operation(0, TupleTypeMetadata2, v24, v25);
  v119 = *(v26 - 8);
  v120 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v115 = (&v104 - v29);
  _s7SwiftUI12DropDelegate_pSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = (&v104 - v32);
  v34 = a2;
  v35 = [objc_msgSend(a2 session];
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  v37 = v7;
  if (v35)
  {
    if (Strong)
    {
      v38 = Strong;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v39 = v35 != v38;
      goto LABEL_7;
    }
  }

  else if (!Strong)
  {
    v39 = 0;
    goto LABEL_7;
  }

  swift_unknownObjectRelease();
  v39 = 1;
LABEL_7:
  v40 = [v34 items];
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UITableViewDropItem, &protocolRef_UITableViewDropItem);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    v42 = __CocoaSet.count.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v42 != 1 || v39;
  v44 = v34;
  v45 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  if (!v43)
  {
    v46 = [v44 items];
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x18D00E9C0](0, v47);
    }

    else
    {
      if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_57;
      }

      v48 = *(v47 + 32);
      swift_unknownObjectRetain();
    }

    v49 = [v48 sourceIndexPath];
    swift_unknownObjectRelease();
    if (v49)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v116 + 56))(v33, 0, 1, v117);
      _s7SwiftUI12DropDelegate_pSgWOhTm_0(v33, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    }

    else
    {
      (*(v116 + 56))(v33, 1, 1, v117);
      _s7SwiftUI12DropDelegate_pSgWOhTm_0(v33, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
      v50 = [v44 proposal];
      v51 = [v50 operation];

      if (v51 == 3)
      {
        return;
      }
    }
  }

  v52 = &v5[*((*v37 & *v5) + 0x78)];
  swift_beginAccess();
  if (*v52 || *(v52 + 1) != 1)
  {
    v53 = swift_weakLoadStrong();
    if (v53)
    {
      v33 = v53;
      v54 = *&v5[*((*v37 & *v5) + 0x98)];
      if (v54)
      {
        v121 = *(v52 + 1);
        v55 = v54;
        v46 = [v44 session];
        v142 = &type metadata for DropInfoAdaptor;
        v143 = &protocol witness table for DropInfoAdaptor;
        v42 = swift_allocObject();
        *&v141 = v42;
        swift_unknownObjectWeakInit();
        v130[1] = 0;
        swift_unknownObjectWeakAssign();
        v18 = v55;

        [v46 locationInView_];
        v128 = v56;
        v129 = v57;
        v58 = MEMORY[0x1E697DF20];
        v59 = MEMORY[0x1E697DF18];
        type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v58, v59);
        if (static SemanticFeature.isEnabled.getter())
        {
          hostingViewCoordinateSpace.getter();
          v127 = 1;
          v60 = *(*v33 + class metadata base offset for UIViewSnapshotResponder + 80);

          v60(v125, v61);

          v122 = v125[0];
          v123 = v125[1];
          v124 = v125[2];
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convert(from:transform:)();

          outlined destroy of CoordinateSpace(&v126);
        }

        v3 = v128;
        v4 = v129;
        v139 = v128;
        v140 = v129;
        v45 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
        if ([v46 localDragSession])
        {
          swift_unknownObjectRelease();
          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

        v86 = [v46 items];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
        v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v87 >> 62))
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:

          if ([swift_unknownObjectRetain() v45[230]])
          {
            swift_unknownObjectRelease();
            v89 = &selRef_allowsMoveOperation;
            v90 = 3;
          }

          else
          {
            v89 = &selRef_isRestrictedToDraggingApplication;
            v90 = 4;
          }

          v91 = [v46 *v89];
          swift_unknownObjectRelease();
          if (v91)
          {
            v92 = v90;
          }

          else
          {
            v92 = 1;
          }

          [v18 bounds];
          v94 = v93;
          v96 = v95;

          swift_unknownObjectRelease();

          v130[2] = v46;
          v131 = 6;
          v132 = v37;
          v133 = v88;
          v134 = v92;
          v135 = v94;
          v136 = v96;
          v137 = v3;
          v138 = v4;
          outlined init with take of DropInfoAdaptor(v130, v42 + 16);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v141, v125);
          v97 = *v33;
          v126 = v33;
          (*(v121 + 8))(&v122, v97);
          v98 = *(&v123 + 1);
          if (*(&v123 + 1))
          {
            v99 = v124;
            __swift_project_boxed_opaque_existential_1(&v122, *(&v123 + 1));
            (*(v99 + 16))(v125, v98, v99);

            outlined destroy of DropInfo(v125);
            __swift_destroy_boxed_opaque_existential_1(&v122);
          }

          else
          {

            outlined destroy of DropInfo(v125);
            _s7SwiftUI12DropDelegate_pSgWOhTm_0(&v122, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate);
          }

          goto LABEL_53;
        }

LABEL_58:
        v88 = __CocoaSet.count.getter();
        goto LABEL_40;
      }
    }
  }

  v109 = v44;
  v62 = [v44 destinationIndexPath];
  if (v62)
  {
    v63 = v108;
    v64 = v62;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = *(v121 + 48);
    v66 = *((*v37 & *v5) + 0x60);
    swift_beginAccess();
    v67 = v114;
    v68 = &v5[v66];
    v69 = v113;
    (*(v114 + 16))(v113, v68, v18);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v18);
    v33 = v115;
    v45 = ListDiffable.rowIndex(at:)(v115, v63, v18, WitnessTable);
    v71 = *(v67 + 8);
    v42 = v67 + 8;
    v71(v69, v18);
    (*(v116 + 8))(v63, v117);
    *(v33 + v65) = v45;
  }

  else
  {
    v42 = v121;
    v108 = *(v121 + 48);
    v72 = *((*v37 & *v5) + 0x60);
    swift_beginAccess();
    v45 = v113;
    v73 = v114;
    (*(v114 + 16))(v113, &v5[v72], v18);
    v74 = v104;
    CollectionViewListDragAndDropController.validIndexPath(in:)(v107, &selRef_numberOfRowsInSection_);
    v75 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v18);
    v76 = v105;
    v77 = ListDiffable.rowIndex(at:)(v105, v74, v18, v75);
    (*(v116 + 8))(v74, v117);
    (*(v73 + 8))(v45, v18);
    *(v76 + v108) = v77;
    v33 = v115;
    (*(v106 + 32))(v115, v76, v42);
  }

  v78 = v120;
  swift_storeEnumTagMultiPayload();
  (*(v119 + 16))(v118, v33, v78);
  v79 = [objc_msgSend(v109 session)];
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v46 = __CocoaSet.count.getter();
    if (v46)
    {
LABEL_30:
      *&v125[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v46 & 0x8000000000000000) == 0)
      {
        v80 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v81 = MEMORY[0x18D00E9C0](v80, v18);
          }

          else
          {
            v81 = *(v18 + 8 * v80 + 32);
          }

          v82 = v81;
          ++v80;
          v83 = [v81 itemProvider];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v46 != v80);

        v85 = *&v125[0];
        v33 = v115;
        goto LABEL_52;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  else
  {
    v46 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_30;
    }
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_52:
  v100 = v110;
  v101 = DropCoordinator.init(operation:items:)(v118, v85, v121, v110, v84);
  v102 = MEMORY[0x1EEE9AC00](v101);
  *(&v104 - 2) = v5;
  *(&v104 - 1) = v100;
  v103(partial apply for closure #2 in TableViewListDragAndDropController.tableView(_:performDropWith:), v102);
  (*(v119 + 8))(v33, v120);
  (*(v111 + 8))(v100, v112);
LABEL_53:
  $defer #1 <A>() in CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(v5);
}

uint64_t $defer #1 <A>() in CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(void *a1)
{
  v4[0] = xmmword_18CD633F0;
  memset(&v4[1], 0, 57);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x78);
  swift_beginAccess();
  outlined assign with take of DropDestination?(v4, a1 + v2);
  return swift_endAccess();
}

uint64_t closure #2 in TableViewListDragAndDropController.tableView(_:performDropWith:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0xA8), *((*MEMORY[0x1E69E7D40] & *a1) + 0xB0), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = *((v7 & v6) + 0x60);
  swift_beginAccess();
  (*(v9 + 16))(v11, &a1[v12], v8);
  ShadowListDataSource.performDrop(to:)(a2, v8);
  return (*(v9 + 8))(v11, v8);
}

void @objc CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

id @objc CollectionViewListDragAndDropController.collectionView(_:dragPreviewParametersForItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = a5(v12, v11);

  (*(v9 + 8))(v11, v8);

  return v14;
}

void @objc CollectionViewListDragAndDropController.collectionView(_:dropSessionDidEnter:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  a5(v7);

  swift_unknownObjectRelease();
}

void @objc CollectionViewListDragAndDropController.collectionView(_:dragSessionWillBegin:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type ActiveDragDropSessions and conformance ActiveDragDropSessions()
{
  result = lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions;
  if (!lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActiveDragDropSessions, &unk_1EFFAB4A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions;
  if (!lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActiveDragDropSessions, &unk_1EFFAB4A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions;
  if (!lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActiveDragDropSessions, &unk_1EFFAB4A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions;
  if (!lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActiveDragDropSessions, &unk_1EFFAB4A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActiveDragDropSessions and conformance ActiveDragDropSessions);
  }

  return result;
}

unint64_t specialized CollectionViewListDragAndDropController.collectionView(_:itemsForAddingTo:at:point:)(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6, v8);
  v11 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
  v12 = *(v3 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v3 + v11) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v6);
  *(v3 + v11) = v12;
  return CollectionViewListDragAndDropController.dragItem(at:collectionView:session:)(a3, a1, v19, v16);
}

uint64_t specialized CollectionViewListDragAndDropController.collectionView(_:dragSessionWillBegin:)(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  if ((*(v1 + v3) & 2) == 0)
  {
    *(v1 + v3) |= 2u;
  }

  ListDragAndDropControllerBase.activeSessions.didset();
  swift_unknownObjectWeakAssign();
  v25 = a1;
  v4 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_30:
    v6 = __CocoaSet.count.getter();
    v26 = v1;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_31:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = v1;
  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v1 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18D00E9C0](v1, v5);
      }

      else
      {
        if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v9 = *(v5 + 8 * v1 + 32);
      }

      v10 = v9;
      v7 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ([v9 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v27 = v31;
      v28 = v32;
      if (*(&v32 + 1))
      {
        break;
      }

      outlined destroy of DropDestination?(&v27, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
LABEL_8:
      ++v1;
      if (v7 == v6)
      {
        goto LABEL_32;
      }
    }

    type metadata accessor for DragSourceContext();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_8;
    }

    v11 = *(v30 + 24);

    if (*(v11 + 176))
    {
    }

    else
    {
      swift_beginAccess();
      result = outlined init with copy of _DraggingModifier?(v11 + 32, &v27, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
      if (!v29)
      {
        goto LABEL_45;
      }

      v14 = _DraggingModifier.resolve()();

      *(v11 + 176) = v14;
    }

    MEMORY[0x18D00CC30](v12);
    if (*(v33 + 16) >= *(v33 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v33;
  }

  while (v7 != v6);
LABEL_32:

  v15 = *(v8 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (v17 < *(v8 + 16))
    {
      v19 = *(**(v8 + 32 + 8 * v17) + 128);

      v19(&v27, v20);
      v31 = v27;
      v32 = v28;

      if (*(&v32 + 1))
      {
        outlined init with take of Any(&v31, &v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        }

        v22 = *(v18 + 2);
        v21 = *(v18 + 3);
        if (v22 >= v21 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v18);
        }

        *(v18 + 2) = v22 + 1;
        result = outlined init with take of Any(&v27, &v18[32 * v22 + 32]);
      }

      else
      {
        result = outlined destroy of DropDestination?(&v31, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      }

      if (v15 == ++v17)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {
LABEL_43:

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 setLocalContext_];

    v24 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x80);
    *(v26 + *((*MEMORY[0x1E69E7D40] & *v26) + 0x88)) = *(v26 + v24);

    *(v26 + v24) = v16;
  }

  return result;
}

uint64_t specialized CollectionViewListDragAndDropController.collectionView(_:dragSessionDidEnd:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  if ((*(v0 + v1) & 2) != 0)
  {
    *(v0 + v1) &= ~2u;
  }

  return ListDragAndDropControllerBase.activeSessions.didset();
}

uint64_t specialized TableViewListDragAndDropController.dragItem(at:tableView:session:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0);
  v11 = type metadata accessor for ShadowListDataSource(0, v9, v10, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [a2 cellForRowAtIndexPath_];

  if (!v16)
  {
    goto LABEL_9;
  }

  type metadata accessor for ListTableViewCell(0);
  v17 = swift_dynamicCastClass();
  if (!v17 || (v18 = *(v17 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host)) == 0)
  {

LABEL_9:
    v25 = *((*v8 & *v5) + 0x60);
    swift_beginAccess();
    v26 = (*(v12 + 16))(v14, &v5[v25], v11);
    MEMORY[0x1EEE9AC00](v26);
    *(&v30 - 2) = v9;
    *(&v30 - 1) = v10;
    type metadata accessor for [UIDragItem](0);
    v28 = v27;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v11);
    ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, partial apply for closure #1 in TableViewListDragAndDropController.dragItem(at:tableView:session:), (&v30 - 4), v11, v28, WitnessTable, &v32);
    (*(v12 + 8))(v14, v11);
    if (v32)
    {
      return v32;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v19 = *(v18 + *((*v8 & *v18) + 0x120));
  v31 = v18;
  v20 = v19;
  v21 = specialized DragAndDropBridge.itemsInListForSession(_:)();

  v22 = v21;
  if (v21 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v22;
  if (!v23)
  {

    v8 = MEMORY[0x1E69E7D40];
    goto LABEL_9;
  }

  return result;
}

void specialized TableViewListDragAndDropController.tableView(_:dragSessionWillBegin:)(void *a1)
{
  swift_unknownObjectWeakAssign();
  v20 = a1;
  v2 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = MEMORY[0x1E69E7CC0];
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_43:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CA0];
  if (!v5)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18D00E9C0](v9, v3);
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_41;
        }

        v10 = *(v3 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if ([v10 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        v6 = MEMORY[0x1E69E7CA0];
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
      }

      v21 = v25;
      v22 = v26;
      if (*(&v26 + 1))
      {
        break;
      }

      outlined destroy of DropDestination?(&v21, &lazy cache variable for type metadata for Any?, v6 + 8);
LABEL_7:
      ++v9;
      if (v7 == v5)
      {
        goto LABEL_28;
      }
    }

    type metadata accessor for DragSourceContext();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_7;
    }

    v12 = *(v24 + 24);

    if (*(v12 + 176))
    {

      goto LABEL_23;
    }

    swift_beginAccess();
    outlined init with copy of _DraggingModifier?(v12 + 32, &v21, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
    if (!v23)
    {
      __break(1u);
      return;
    }

    v14 = _DraggingModifier.resolve()();

    *(v12 + 176) = v14;

LABEL_23:
    MEMORY[0x18D00CC30](v13);
    v6 = MEMORY[0x1E69E7CA0];
    if (*(v27 + 16) >= *(v27 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v27;
  }

  while (v7 != v5);
LABEL_28:

  v15 = *(v8 + 16);
  if (v15)
  {
    v16 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    while (v16 < *(v8 + 16))
    {
      v4 = *(**(v8 + 32 + 8 * v16) + 128);

      (v4)(&v21, v17);
      v25 = v21;
      v26 = v22;

      if (*(&v26 + 1))
      {
        outlined init with take of Any(&v25, &v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
        }

        v4 = *(v3 + 16);
        v18 = *(v3 + 24);
        if (v4 >= v18 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v4 + 1, 1, v3);
        }

        *(v3 + 16) = v4 + 1;
        outlined init with take of Any(&v21, (v3 + 32 * v4 + 32));
      }

      else
      {
        outlined destroy of DropDestination?(&v25, &lazy cache variable for type metadata for Any?, v6 + 8);
      }

      if (v15 == ++v16)
      {
        goto LABEL_39;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_39:

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setLocalContext_];
}

unint64_t type metadata accessor for DropDelegate()
{
  result = lazy cache variable for type metadata for DropDelegate;
  if (!lazy cache variable for type metadata for DropDelegate)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DropDelegate);
  }

  return result;
}

uint64_t outlined assign with take of DropDestination?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Spacer?(0, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI12DropDelegate_pSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI12DropDelegate_pSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of _DraggingModifier?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of DropDestination?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Spacer?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for [UIDragItem](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [UIDragItem])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [UIDragItem]);
    }
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v2>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for _SemanticFeature();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _SemanticFeature<Semantics_v2>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v6);
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in CollectionViewListDragAndDropController.collectionView(_:performDropWith:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 32);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(v6, v0 + v4, v0 + v5, v7);
}

unint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath()
{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    v3 = type metadata accessor for IndexPath();
    result = swift_getWitnessTable(MEMORY[0x1E6969C50], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    v3 = type metadata accessor for IndexPath();
    result = swift_getWitnessTable(MEMORY[0x1E6969C68], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

double View.menuOrder(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void EnvironmentValues.menuOrder.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.menuOrder : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.menuOrder : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.menuOrder.setter(char *a1)
{
  type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

Swift::Int MenuOrder.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

double (*EnvironmentValues.menuOrder.modify(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.menuOrder.modify;
}

double EnvironmentValues.menuOrder.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuOrder and conformance MenuOrder()
{
  result = lazy protocol witness table cache variable for type MenuOrder and conformance MenuOrder;
  if (!lazy protocol witness table cache variable for type MenuOrder and conformance MenuOrder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuOrder, &type metadata for MenuOrder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuOrder and conformance MenuOrder);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<MenuOrder>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MenuOrder>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MenuOrder>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MenuOrder.Guts and conformance MenuOrder.Guts()
{
  result = lazy protocol witness table cache variable for type MenuOrder.Guts and conformance MenuOrder.Guts;
  if (!lazy protocol witness table cache variable for type MenuOrder.Guts and conformance MenuOrder.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuOrder.Guts, &type metadata for MenuOrder.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuOrder.Guts and conformance MenuOrder.Guts);
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.menuOrder.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

uint64_t specialized PlaceholderTextShapeStyle._apply(to:)(uint64_t a1)
{
  EnvironmentValues.interfaceIdiom.getter();
  AnyInterfaceIdiom.init(idiom:)();
  if (static Solarium.isEnabled(for:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return MEMORY[0x1EEDE18C8](a1, v2);
}

uint64_t EnvironmentValues.triggerDeleteBackward.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.triggerDeleteBackward : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.triggerDeleteBackward : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>();

  outlined copy of AppIntentExecutor?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>, MEMORY[0x1E697FE40]);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t closure #1 in OnDeleteBackwardModifier.body(content:)(uint64_t a1)
{
  v2 = specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v2();
    v2 = outlined consume of TriggerSubmitAction?(v5, v4);
  }

  return (*a1)(v2);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance OnDeleteBackwardModifier@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  KeyPath = swift_getKeyPath();
  v9 = *(v1 + 1);
  v10 = *(v1 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = *(v1 + 1);
  *(v6 + 48) = *(v1 + 32);
  *a1 = KeyPath;
  a1[1] = partial apply for closure #1 in OnDeleteBackwardModifier.body(content:);
  a1[2] = v6;

  return outlined init with copy of Environment<TriggerDeleteBackwardAction?>(&v9, v8);
}

unint64_t lazy protocol witness table accessor for type OnDeleteBackwardModifier and conformance OnDeleteBackwardModifier()
{
  result = lazy protocol witness table cache variable for type OnDeleteBackwardModifier and conformance OnDeleteBackwardModifier;
  if (!lazy protocol witness table cache variable for type OnDeleteBackwardModifier and conformance OnDeleteBackwardModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnDeleteBackwardModifier, &type metadata for OnDeleteBackwardModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnDeleteBackwardModifier and conformance OnDeleteBackwardModifier);
  }

  return result;
}

double destroy for OnDeleteBackwardModifier(uint64_t a1)
{

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);

  return outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v2, v3, v4);
}

uint64_t initializeWithCopy for OnDeleteBackwardModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);

  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return a1;
}

uint64_t assignWithCopy for OnDeleteBackwardModifier(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = v2[2];
  v6 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v2);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v2;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v7, v8, v9);
  return a1;
}

uint64_t assignWithTake for OnDeleteBackwardModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v5, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnDeleteBackwardModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for OnDeleteBackwardModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of Environment<TriggerDeleteBackwardAction?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Environment<TriggerDeleteBackwardAction?>(0, &lazy cache variable for type metadata for Environment<TriggerDeleteBackwardAction?>, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for TriggerDeleteBackwardAction?()
{
  if (!lazy cache variable for type metadata for TriggerDeleteBackwardAction?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TriggerDeleteBackwardAction?);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnDeleteBackwardModifier>, _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnDeleteBackwardModifier>, _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnDeleteBackwardModifier>, _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnDeleteBackwardModifier>, _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnDeleteBackwardModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<OnDeleteBackwardModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnDeleteBackwardModifier>, _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnDeleteBackwardModifier>, _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnDeleteBackwardModifier>, _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>>)
  {
    type metadata accessor for _ViewModifier_Content<OnDeleteBackwardModifier>(255);
    type metadata accessor for Environment<TriggerDeleteBackwardAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnDeleteBackwardModifier>, _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<OnDeleteBackwardModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnDeleteBackwardModifier>)
  {
    lazy protocol witness table accessor for type OnDeleteBackwardModifier and conformance OnDeleteBackwardModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<OnDeleteBackwardModifier>);
    }
  }
}

void type metadata accessor for Environment<TriggerDeleteBackwardAction?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TriggerDeleteBackwardAction?();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TriggerDeleteBackwardKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for Environment<TriggerDeleteBackwardAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?>, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerDeleteBackwardAction?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2[3];
  v16 = a2[2];
  v17 = v4;
  v18 = a2[4];
  v19 = *(a2 + 20);
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  outlined init with copy of _ViewInputs(a2, v24);
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  v21 = v19;
  v20[0] = v14;
  v20[1] = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v8 = v14;
  v9 = v15;
  v6 = outlined init with copy of _ViewInputs(v20, v24);
  a3(v6, &v8);
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v23 = v13;
  v22[0] = v8;
  v22[1] = v9;
  outlined destroy of _ViewInputs(v22);
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v18;
  v25 = v19;
  v24[0] = v14;
  v24[1] = v15;
  return outlined destroy of _ViewInputs(v24);
}

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v9 = a2[3];
  v23 = a2[2];
  v24 = v9;
  v25 = a2[4];
  v26 = *(a2 + 20);
  v10 = a2[1];
  v21 = *a2;
  v22 = v10;
  LODWORD(v29[0]) = a1;
  v11 = a5();
  v12 = *(v11 + 24);
  outlined init with copy of _ViewInputs(a2, v31);
  v12(v29, &v21, a6, v11);
  v27[2] = v23;
  v27[3] = v24;
  v27[4] = v25;
  v28 = v26;
  v27[0] = v21;
  v27[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v13 = outlined init with copy of _ViewInputs(v27, v31);
  a3(v13, &v15);
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v30 = v20;
  v29[0] = v15;
  v29[1] = v16;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v32 = v26;
  v31[0] = v21;
  v31[1] = v22;
  return outlined destroy of _ViewInputs(v31);
}

uint64_t ResolvedTabView.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v8 = type metadata accessor for TabViewStyleConfiguration(0, a2, a3, x3_0);
  v9 = *(*(v8 - 8) + 32);

  return v9(a4, a1, v8);
}

uint64_t _TabViewValue.selection.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v7 = type metadata accessor for TabViewStyleConfiguration(0, *(a1 + 24), *(a1 + 40), x3_0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, v4 + *(a1 + 52), v8);
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  return (*(*(v12 - 8) + 32))(a2, v10, v12);
}

uint64_t _TabViewValue.Init1.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for ResolvedTabView(0, *(a1 + 24), *(a1 + 40), a3);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, Value, v4);
}

uint64_t _TabViewValue.Init1.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for TabViewStyleConfiguration(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v12 = type metadata accessor for ResolvedTabView(0, v5, v6, v11);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = *(a1 + 16);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v3 + *(a1 + 52), v15, v17);
  _TabViewValue.Init1.base.getter(a1, v14, v21);
  (*(v8 + 32))(v10, v14, v7);
  return _TabViewValue.init(style:configuration:)(v19, v10, v15, v5, *(a1 + 32), v6, v24);
}

uint64_t _TabViewValue.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v13 = *(type metadata accessor for _TabViewValue(0, v17) + 52);
  v15 = type metadata accessor for TabViewStyleConfiguration(0, a4, a6, v14);
  return (*(*(v15 - 8) + 32))(a7 + v13, a2, v15);
}

uint64_t _TabViewValue.Init2.base.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v6 = type metadata accessor for ResolvedTabView(0, a2, a3, x3_0);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, Value, v6);
}

uint64_t _TabViewValue.Init2.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a6;
  v25 = a4;
  v9 = type metadata accessor for TabViewStyleConfiguration(0, a3, a5, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v14 = type metadata accessor for ResolvedTabView(0, a3, a5, v13);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v17 + 16))(v20, Value, a2);
  _TabViewValue.Init2.base.getter(a3, a5, v16, v22);
  (*(v10 + 32))(v12, v16, v9);
  return _TabViewValue.init(style:configuration:)(v20, v12, a2, a3, v25, a5, v24);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _TabViewValue<A, B>.Init1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for _TabViewValue(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t View.tabViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _TabViewStyleWriter(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t type metadata completion function for _TabViewValue(void *a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for TabViewStyleConfiguration(319, a1[3], a1[5], v3);
    if (v5 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TabViewValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v7 + 64);
  v11 = v9 | 7 | *(v4 + 80);
  if (v11 == 7 && ((*(v4 + 80) | *(v7 + 80)) & 0x100000) == 0 && (((v9 | 7) + v5) & ~(v9 | 7)) + v10 <= 0x18)
  {
    v15 = ~v9;
    (*(v4 + 16))(a1);
    v17 = v3 + v5 + 7;
    v18 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0x80000000) != 0)
    {
      v22 = (*(v7 + 48))((v19 + v9 + 8) & v15, v8, v6);
      v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
      if (v22)
      {
LABEL_14:
        memcpy(v21, v18, v10);
        return v3;
      }
    }

    else
    {
      v20 = *v19;
      if (*v19 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
      if (v20 != -1)
      {
        goto LABEL_14;
      }
    }

    *v21 = *v18;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v19;
    v24 = v23 + v9 + 8;
    v25 = *(v7 + 16);

    v25(v24 & v15, (v19 + v9 + 8) & v15, v6);
    return v3;
  }

  v14 = *a2;
  *v3 = *a2;
  v3 = (v14 + ((v11 + 16) & ~v11));

  return v3;
}

uint64_t initializeWithCopy for _TabViewValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 48);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = *(v8 + 64);
  v15 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v16 = *v15;
    if (*v15 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    if (v16 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v17 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v15;
    v18 = v17 + v9 + 8;
    v19 = *(v8 + 16);

    v19(v18 & v13, (v15 + v9 + 8) & v13, v7);
    return a1;
  }

  if (!(*(v8 + 48))((v15 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, ((v9 + 16) & ~v9) + v14);
  return a1;
}

uint64_t assignWithCopy for _TabViewValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 40);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ~v9;
  v15 = (v9 + 16) & ~v9;
  v16 = *(v8 + 64);
  v17 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 0x80000000) != 0)
  {
    v34 = a1;
    v24 = *(v8 + 48);
    v33 = *(v8 + 64);
    v32 = v24((v17 + v9 + 8) & ~v9, v13, v7);
    v18 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = ~v9;
    v20 = v24((v18 + v9 + 8) & ~v9, v13, v7);
    v16 = v33;
    v15 = (v9 + 16) & ~v9;
    a1 = v34;
    if (!v32)
    {
LABEL_5:
      if (!v20)
      {
        *v11 = *v12;

        *v17 = *v18;

        (*(v8 + 24))((v17 + v9 + 8) & v14, (v18 + v9 + 8) & v14, v7);
        return a1;
      }

      v21 = v15;
      v22 = v16;

      (*(v8 + 8))((v17 + v9 + 8) & v14, v7);
      v23 = v21 + v22;
      goto LABEL_10;
    }
  }

  else
  {
    v18 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 + 1;
    if (*v17 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v20)
  {
    *v11 = *v12;
    *v17 = *v18;
    v25 = v9 + 8;
    v26 = v7;
    v27 = v17 + v9 + 8;
    v28 = v14;
    v29 = v18 + v25;
    v30 = *(v8 + 16);

    v30(v27 & v28, v29 & v28, v26);
    return a1;
  }

  v23 = v15 + v16;
LABEL_10:
  memcpy(v11, v12, v23);
  return a1;
}

uint64_t initializeWithTake for _TabViewValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 32);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = *(v8 + 64);
  v15 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v16 = *v15;
    if (*v15 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    if (v16 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v17 = (v11 + 15);
    *(v17 & 0xFFFFFFFFFFFFFFF8) = *v15;
    (*(v8 + 32))((v9 + 8 + (v17 & 0xFFFFFFFFFFFFFFF8)) & v13, (v15 + v9 + 8) & v13, v7);
    return a1;
  }

  if (!(*(v8 + 48))((v15 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, ((v9 + 16) & ~v9) + v14);
  return a1;
}

uint64_t assignWithTake for _TabViewValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 24);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v21 = *(v8 + 48);
    v22 = v7;
    v23 = v21((v16 + v9 + 8) & ~v9, v13, v7);
    v24 = v21;
    v28 = v23;
    v18 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v13;
    v17 = v22;
    v26 = v22;
    v14 = (v9 + 16) & ~v9;
    v20 = v24((v18 + v9 + 8) & ~v9, v25, v26);
    if (!v28)
    {
LABEL_5:
      if (!v20)
      {
        *v11 = *v12;

        *v16 = *v18;

        (*(v8 + 40))((v16 + v9 + 8) & v29, (v18 + v9 + 8) & v29, v17);
        return a1;
      }

      (*(v8 + 8))((v16 + v9 + 8) & v29, v17);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = v7;
    v18 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 + 1;
    if (*v16 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v20)
  {
    *v11 = *v12;
    *v16 = *v18;
    (*(v8 + 32))((v16 + v9 + 8) & v29, (v18 + v9 + 8) & v29, v17);
    return a1;
  }

LABEL_9:
  memcpy(v11, v12, v14 + v15);
  return a1;
}

uint64_t getEnumTagSinglePayload for _TabViewValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v8 + 80);
  if (v12 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v13 | 7;
  v16 = (v13 | 7) + *(*(v5 - 8) + 64);
  v17 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + 16) & ~v13) + *(*(*(a3 + 24) - 8) + 64) + (v16 & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v7 >= v12)
      {
        v29 = *(v6 + 48);

        return v29();
      }

      else
      {
        v26 = ((((a1 + v16) & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) != 0)
        {
          v28 = (*(v9 + 48))((v26 + v13 + 8) & ~v13);
        }

        else
        {
          v27 = *v26;
          if (v27 >= 0xFFFFFFFF)
          {
            LODWORD(v27) = -1;
          }

          v28 = v27 + 1;
        }

        if (v28 >= 2)
        {
          return v28 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = ((v13 + 16) & ~v13) + *(*(*(a3 + 24) - 8) + 64) + (v16 & ~v15);
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for _TabViewValue(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  if (v11 - 1 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v11 - 1;
  }

  v14 = v10 | 7;
  v15 = ((v10 + 16) & ~v10) + *(v8 + 64);
  v16 = (v10 | 7) + *(*(v5 - 8) + 64);
  v17 = (v16 & ~(v10 | 7)) + v15;
  v18 = a3 >= v13;
  v19 = a3 - v13;
  if (v19 != 0 && v18)
  {
    if (v17 <= 3)
    {
      v24 = ((v19 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
      if (HIWORD(v24))
      {
        v20 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v20 = v25;
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v13 < a2)
  {
    v21 = ~v13 + a2;
    if (v17 < 4)
    {
      v23 = (v21 >> (8 * v17)) + 1;
      if (v17)
      {
        v26 = v21 & ~(-1 << (8 * v17));
        v27 = a1;
        bzero(a1, v17);
        a1 = v27;
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *v27 = v26;
            if (v20 > 1)
            {
LABEL_60:
              if (v20 == 2)
              {
                *&a1[v17] = v23;
              }

              else
              {
                *&a1[v17] = v23;
              }

              return;
            }
          }

          else
          {
            *v27 = v21;
            if (v20 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v27 = v26;
        v27[2] = BYTE2(v26);
      }

      if (v20 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v22 = a1;
      bzero(a1, v17);
      a1 = v22;
      *v22 = v21;
      v23 = 1;
      if (v20 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v20)
    {
      a1[v17] = v23;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_33;
  }

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v7 >= v12)
  {
    v32 = *(v6 + 56);

    v32();
  }

  else
  {
    v28 = &a1[v16] & ~v14;
    if (v12 >= a2)
    {
      v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v34 = *(v8 + 56);
        v35 = a2 + 1;

        v34((v33 + v10 + 8) & ~v10, v35);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v33 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v33 = a2;
      }
    }

    else
    {
      if (v15 <= 3)
      {
        v29 = ~(-1 << (8 * v15));
      }

      else
      {
        v29 = -1;
      }

      if (v15)
      {
        v30 = v29 & (a2 - v11);
        if (v15 <= 3)
        {
          v31 = v15;
        }

        else
        {
          v31 = 4;
        }

        bzero((&a1[v16] & ~v14), v15);
        if (v31 > 2)
        {
          if (v31 == 3)
          {
            *v28 = v30;
            *(v28 + 2) = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }

        else if (v31 == 1)
        {
          *v28 = v30;
        }

        else
        {
          *v28 = v30;
        }
      }
    }
  }
}

uint64_t type metadata completion function for ResolvedTabView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TabViewStyleConfiguration(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static _TabViewStyleWriter._makeInputs(modifier:inputs:)(int *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TabViewStyleOverrideInput(0, a3, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for TabViewStyleOverrideInput<A>, v6);
  PropertyList.subscript.getter();
  if (!v11)
  {
    type metadata accessor for _TabViewStyleWriter(255, a3, a4, v7);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    if (*(*(a3 - 8) + 64))
    {
      closure #1 in static _TabViewStyleWriter._makeInputs(modifier:inputs:)(1, a3, a4, v8);
    }

    AGGraphCreateOffsetAttribute2();
    type metadata accessor for StyleType(0, a3, a4, v9);
  }

  lazy protocol witness table accessor for type TabViewStyleInput and conformance TabViewStyleInput();
  return PropertyList.subscript.setter();
}

uint64_t closure #1 in static _TabViewStyleWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for _TabViewStyleWriter(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance TabViewStyleOverrideInput<A>@<X0>(uint64_t a1@<X8>)
{
  result = static TabViewStyleOverrideInput.defaultValue.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t static ResolvedTabView._makeView(view:inputs:)@<X0>(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = (a2 + 1);
  v10 = *a2;
  lazy protocol witness table accessor for type TabViewStyleInput and conformance TabViewStyleInput();
  PropertyList.subscript.getter();
  if (v20)
  {
    v11 = *v9;
    v12 = v9[2];
    v13 = v9[3];
    v22 = v9[1];
    v23 = v12;
    *v24 = v13;
    *&v24[12] = *(v9 + 60);
    v14 = v21;
    v25 = v8;
    v21 = v11;
    v15 = *(v14 + 8);
    v20 = v10;
    return v15(&v25);
  }

  else
  {
    v25 = v8;
    v20 = v10;
    v17 = *v9;
    v18 = v9[2];
    v19 = v9[3];
    v22 = v9[1];
    v23 = v18;
    *v24 = v19;
    *&v24[12] = *(v9 + 60);
    v21 = v17;
    return static ResolvedTabView.makeView<A>(view:style:inputs:)(&v25, 0, &v20, a3, &type metadata for DefaultTabViewStyle, a4, &protocol witness table for DefaultTabViewStyle, a5);
  }
}

uint64_t static ResolvedTabView.makeView<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a2;
  v34 = a1;
  v37 = a8;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v16;
  v42 = v15;
  v43 = v18;
  v44 = v17;
  v19 = type metadata accessor for _TabViewValue.Init1(0, &v41);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  v26 = *v34;
  v27 = *(a3 + 48);
  v39[2] = *(a3 + 32);
  v39[3] = v27;
  v39[4] = *(a3 + 64);
  v40 = *(a3 + 80);
  v28 = *(a3 + 16);
  v39[0] = *a3;
  v39[1] = v28;
  v38 = v26;
  type metadata accessor for ResolvedTabView(255, a4, a6, v29);
  type metadata accessor for _GraphValue();
  LODWORD(a3) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v36, a5);
  *v25 = a3;
  v41 = a5;
  v42 = a4;
  v30 = v35;
  v43 = v35;
  v44 = a6;
  v31 = type metadata accessor for _TabViewValue.Init1(0, &v41);
  (*(v12 + 32))(&v25[*(v31 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v41 = a5;
  v42 = a4;
  v43 = v30;
  v44 = a6;
  type metadata accessor for _TabViewValue(0, &v41);
  swift_getWitnessTable(protocol conformance descriptor for _TabViewValue<A, B>.Init1, v19);
  _GraphValue.init<A>(_:)();
  (*(v30 + 8))(&v41, v39, a4, a6, a5, v30);
  return (*(v20 + 8))(v25, v19);
}

uint64_t static ResolvedTabView._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  lazy protocol witness table accessor for type TabViewStyleInput and conformance TabViewStyleInput();
  PropertyList.subscript.getter();
  if (v11[0])
  {
    LODWORD(v11[0]) = v9;
    return (*(v11[1] + 16))(v11);
  }

  else
  {
    LODWORD(v11[0]) = v9;
    return static ResolvedTabView.makeViewList<A>(view:style:inputs:)(v11, 0, a2, a3, &type metadata for DefaultTabViewStyle, a4, &protocol witness table for DefaultTabViewStyle, a5);
  }
}

uint64_t static ResolvedTabView.makeViewList<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v32 = a2;
  v33 = a8;
  v34 = a3;
  v11 = a1;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v16;
  v37 = v15;
  v38 = v18;
  v39 = v17;
  v19 = type metadata accessor for _TabViewValue.Init1(0, &v36);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v35 = *v11;
  type metadata accessor for ResolvedTabView(255, a4, a6, v26);
  type metadata accessor for _GraphValue();
  LODWORD(v11) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v32, a5);
  *v25 = v11;
  v36 = a5;
  v37 = a4;
  v27 = v31;
  v38 = v31;
  v39 = a6;
  v28 = type metadata accessor for _TabViewValue.Init1(0, &v36);
  (*(v12 + 32))(&v25[*(v28 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v36 = a5;
  v37 = a4;
  v38 = v27;
  v39 = a6;
  type metadata accessor for _TabViewValue(0, &v36);
  swift_getWitnessTable(protocol conformance descriptor for _TabViewValue<A, B>.Init1, v19);
  _GraphValue.init<A>(_:)();
  (*(v27 + 16))(&v36, v34, a4, a6, a5, v27);
  return (*(v20 + 8))(v25, v19);
}

uint64_t protocol witness for Rule.value.getter in conformance UpdateDefaultTabFill.FillSymbols@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  static SymbolVariants.fill.getter();
  v8 = v9;
  v5 = EnvironmentValues.symbolVariants.modify();
  SymbolVariants.formUnion(_:)();
  return v5(v7, 0);
}

uint64_t UpdateDefaultTabFill.AdaptiveFillSymbols.value.getter@<X0>(void *a1@<X8>)
{
  v11 = *(v1 + 8);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v15 = *Value;
  v16 = v5;

  v6 = AGGraphGetValue();
  v8 = *v6;
  v7 = v6[1];
  *&v12 = v8;
  *(&v12 + 1) = v7;

  EnvironmentValues.horizontalSizeClass.getter();

  if (v14 != 2 && (v14 & 1) == 0 || (v12 = v11, result = AnyInterfaceIdiom.accepts<A>(_:)(), (result & 1) != 0))
  {
    static SymbolVariants.fill.getter();
    v13 = v14;
    v10 = EnvironmentValues.symbolVariants.modify();
    SymbolVariants.formUnion(_:)();
    result = v10(&v12, 0);
    v4 = v15;
    v5 = v16;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance UpdateDefaultTabFill(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4, specialized static UpdateDefaultTabFill._makeViewInputs(modifier:inputs:));
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UpdateDefaultTabFill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  updated = lazy protocol witness table accessor for type UpdateDefaultTabFill and conformance UpdateDefaultTabFill();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, updated);
}

uint64_t instantiation function for generic protocol witness table for TabViewStyleConfiguration<A>.Content(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TabViewStyleConfiguration<A>.Content);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TabViewStyleInput and conformance TabViewStyleInput()
{
  result = lazy protocol witness table cache variable for type TabViewStyleInput and conformance TabViewStyleInput;
  if (!lazy protocol witness table cache variable for type TabViewStyleInput and conformance TabViewStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewStyleInput, &unk_1EFFABB00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewStyleInput and conformance TabViewStyleInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewStyleInput and conformance TabViewStyleInput;
  if (!lazy protocol witness table cache variable for type TabViewStyleInput and conformance TabViewStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewStyleInput, &unk_1EFFABB00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewStyleInput and conformance TabViewStyleInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateDefaultTabFill and conformance UpdateDefaultTabFill()
{
  result = lazy protocol witness table cache variable for type UpdateDefaultTabFill and conformance UpdateDefaultTabFill;
  if (!lazy protocol witness table cache variable for type UpdateDefaultTabFill and conformance UpdateDefaultTabFill)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateDefaultTabFill, &type metadata for UpdateDefaultTabFill, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateDefaultTabFill and conformance UpdateDefaultTabFill);
  }

  return result;
}

uint64_t specialized static UpdateDefaultTabFill._makeViewInputs(modifier:inputs:)(uint64_t a1, uint64_t *a2)
{
  lazy protocol witness table accessor for type TabViewStyleInput and conformance TabViewStyleInput();
  PropertyList.subscript.getter();
  if (v7 && (type metadata accessor for StyleType<SidebarAdaptableTabViewStyle>(0, v2, v3, v4), v5 == v7))
  {
    swift_beginAccess();
    _GraphInputs.interfaceIdiom.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UpdateDefaultTabFill.AdaptiveFillSymbols and conformance UpdateDefaultTabFill.AdaptiveFillSymbols();
  }

  else
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UpdateDefaultTabFill.FillSymbols and conformance UpdateDefaultTabFill.FillSymbols();
  }

  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

unint64_t lazy protocol witness table accessor for type UpdateDefaultTabFill.FillSymbols and conformance UpdateDefaultTabFill.FillSymbols()
{
  result = lazy protocol witness table cache variable for type UpdateDefaultTabFill.FillSymbols and conformance UpdateDefaultTabFill.FillSymbols;
  if (!lazy protocol witness table cache variable for type UpdateDefaultTabFill.FillSymbols and conformance UpdateDefaultTabFill.FillSymbols)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateDefaultTabFill.FillSymbols, &type metadata for UpdateDefaultTabFill.FillSymbols, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateDefaultTabFill.FillSymbols and conformance UpdateDefaultTabFill.FillSymbols);
  }

  return result;
}

void type metadata accessor for StyleType<SidebarAdaptableTabViewStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for StyleType<SidebarAdaptableTabViewStyle>)
  {
    v4 = type metadata accessor for StyleType(0, &type metadata for SidebarAdaptableTabViewStyle, &protocol witness table for SidebarAdaptableTabViewStyle, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for StyleType<SidebarAdaptableTabViewStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UpdateDefaultTabFill.AdaptiveFillSymbols and conformance UpdateDefaultTabFill.AdaptiveFillSymbols()
{
  result = lazy protocol witness table cache variable for type UpdateDefaultTabFill.AdaptiveFillSymbols and conformance UpdateDefaultTabFill.AdaptiveFillSymbols;
  if (!lazy protocol witness table cache variable for type UpdateDefaultTabFill.AdaptiveFillSymbols and conformance UpdateDefaultTabFill.AdaptiveFillSymbols)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateDefaultTabFill.AdaptiveFillSymbols, &type metadata for UpdateDefaultTabFill.AdaptiveFillSymbols, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateDefaultTabFill.AdaptiveFillSymbols and conformance UpdateDefaultTabFill.AdaptiveFillSymbols);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexViewPlacementModifier and conformance IndexViewPlacementModifier()
{
  result = lazy protocol witness table cache variable for type IndexViewPlacementModifier and conformance IndexViewPlacementModifier;
  if (!lazy protocol witness table cache variable for type IndexViewPlacementModifier and conformance IndexViewPlacementModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexViewPlacementModifier, &type metadata for IndexViewPlacementModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewPlacementModifier and conformance IndexViewPlacementModifier);
  }

  return result;
}

void type metadata accessor for AnyStyle?()
{
  if (!lazy cache variable for type metadata for AnyStyle?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyStyle?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableRowForegroundStyleModifier and conformance TableRowForegroundStyleModifier()
{
  result = lazy protocol witness table cache variable for type TableRowForegroundStyleModifier and conformance TableRowForegroundStyleModifier;
  if (!lazy protocol witness table cache variable for type TableRowForegroundStyleModifier and conformance TableRowForegroundStyleModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableRowForegroundStyleModifier, &type metadata for TableRowForegroundStyleModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowForegroundStyleModifier and conformance TableRowForegroundStyleModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityClearLabeledContentModifier and conformance AccessibilityClearLabeledContentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityClearLabeledContentModifier and conformance AccessibilityClearLabeledContentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityClearLabeledContentModifier and conformance AccessibilityClearLabeledContentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityClearLabeledContentModifier, &type metadata for AccessibilityClearLabeledContentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityClearLabeledContentModifier and conformance AccessibilityClearLabeledContentModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BorderedButtonStyle_Phone(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for BorderedButtonStyle_Phone(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *key path getter for EnvironmentValues.colorScheme : EnvironmentValues@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.colorScheme.getter();
  *a2 = v4;
  return result;
}

void closure #2 in ResolvedBorderedButton.body.getter(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[9];
  v107 = a1[8];
  v108 = v5;
  v109 = *(a1 + 160);
  v6 = a1[5];
  v103 = a1[4];
  v104 = v6;
  v7 = a1[7];
  v105 = a1[6];
  v106 = v7;
  v8 = a1[1];
  v99 = *a1;
  v100 = v8;
  v9 = a1[3];
  v101 = a1[2];
  v102 = v9;
  v10 = specialized Environment.wrappedValue.getter(*(a2 + 104), *(a2 + 112));
  if (v10 != 2 && (v10 & 1) != 0 && (*(a2 + 128) & 1) != 0)
  {
    v60 = static Color.white.getter();
  }

  else
  {
    memcpy(__dst, a2, 0x111uLL);
    ResolvedBorderedButton.colorSpec.getter(&v87);
    v95 = v89;
    v96 = v90;
    v97 = v91;
    v93 = v87;
    v94 = v88;
    v60 = v90;
    outlined copy of BorderedButtonColorSpec.LabelStyle(v90);
    outlined destroy of BorderedButtonColorSpec(&v93);
  }

  v84 = v107;
  v85 = v108;
  LOBYTE(v86) = v109;
  v80 = v103;
  v81 = v104;
  v82 = v105;
  v83 = v106;
  v76 = v99;
  v77 = v100;
  v78 = v101;
  v79 = v102;
  v11 = *(a2 + 216);
  v12 = *(a2 + 224);
  v13 = *(a2 + 264);
  v14 = *(a2 + 272);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(&v99, __dst, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  v57 = v12;
  v58 = v11;
  specialized Environment.wrappedValue.getter(v11, v12 & 1, &v93);
  if (v93 < 2u)
  {
    v15 = 10.0;
    v16 = 0x4014000000000000;
  }

  else if (v93 - 3 >= 2)
  {
    v15 = 12.0;
    v16 = 0x401C000000000000;
  }

  else
  {
    v15 = 20.0;
    v16 = 0x402E000000000000;
  }

  v59 = v16;
  specialized Environment.wrappedValue.getter(v13, v14 & 1, &v75);
  v17 = 0.0;
  if (v75 - 7 <= 4)
  {
    v17 = dbl_18CD86210[(v75 - 7)];
  }

  v56 = static Edge.Set.all.getter();
  v98 = 0;
  v63 = *(a2 + 72);
  v62 = *(a2 + 80);
  v18 = specialized Environment.wrappedValue.getter(v63, v62);
  v19 = *(a2 + 120);
  v20 = *(a2 + 128);
  v21 = *(a2 + 200);
  v22 = *(a2 + 208);
  if (v20)
  {
    v23 = *(a2 + 120);
    if (v19 || (v23 = specialized Environment.wrappedValue.getter(*(a2 + 200), v22 & 1)) != 0)
    {
    }

    else if (*(a2 + 113))
    {
      v23 = static Color.accentColor.getter();
    }

    else
    {
      v23 = static Color.red.getter();
    }

    v24 = v23 | 0x4000000000000000;
  }

  else
  {
    v24 = *(a2 + 120);
    if (v19 || (v24 = specialized Environment.wrappedValue.getter(*(a2 + 200), v22 & 1)) != 0)
    {
    }

    else
    {
      v24 = 0x8000000000000000;
    }
  }

  v54 = v22;
  v64 = *(a2 + 114);
  v25 = *(a2 + 113);
  v53 = v21;
  if (*(a2 + 113))
  {
    v26 = static Color.accentColor.getter();
  }

  else
  {
    v26 = static Color.red.getter();
  }

  v27 = v26;
  v28 = *(a2 + 64);
  v61 = *(a2 + 56);
  specialized Environment.wrappedValue.getter(v61, v28, __dst);
  LOBYTE(v87) = __dst[0];
  static BorderedButtonColorSpec.imageBackgroundSpec(isEnabled:isPressed:resolvedTint:defaultTint:colorScheme:)(v18 & 1, v64 & 1, v24, v27, &v87, &v93);

  v87 = v93;
  v88 = v94;
  v89 = v95;
  v90 = v96;
  v91 = v97;
  v55 = Color.opacity(_:)();
  outlined destroy of BorderedButtonColorSpec(&v87);
  v29 = static Edge.Set.all.getter();
  __dst[8] = v84;
  __dst[9] = v85;
  *&__dst[10] = v86;
  __dst[4] = v80;
  __dst[5] = v81;
  __dst[6] = v82;
  __dst[7] = v83;
  __dst[0] = v76;
  __dst[1] = v77;
  __dst[2] = v78;
  __dst[3] = v79;
  v30 = specialized Environment.wrappedValue.getter(v63, v62);
  if (v20)
  {
    v31 = v19;
    if (v19 || (v31 = specialized Environment.wrappedValue.getter(v53, v54 & 1)) != 0)
    {
    }

    else if (v25)
    {
      v31 = static Color.accentColor.getter();
    }

    else
    {
      v31 = static Color.red.getter();
    }

    v32 = v31 | 0x4000000000000000;
    if (!v25)
    {
      goto LABEL_40;
    }

LABEL_33:
    v33 = static Color.accentColor.getter();
    goto LABEL_41;
  }

  v32 = v19;
  if (v19 || (v32 = specialized Environment.wrappedValue.getter(v53, v54 & 1)) != 0)
  {

    if (v25)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v32 = 0x8000000000000000;
    if (v25)
    {
      goto LABEL_33;
    }
  }

LABEL_40:
  v33 = static Color.red.getter();
LABEL_41:
  v34 = v33;
  specialized Environment.wrappedValue.getter(v61, v28, v68);
  LOBYTE(v65) = v68[0];
  static BorderedButtonColorSpec.imageBackgroundSpec(isEnabled:isPressed:resolvedTint:defaultTint:colorScheme:)(v30 & 1, v64 & 1, v32, v34, &v65, &v70);

  v68[2] = v72;
  v68[3] = v73;
  v69 = v74;
  v68[0] = v70;
  v68[1] = v71;
  v35 = *(&v71 + 1);
  v36 = v72;
  v37 = ~v72;
  outlined copy of Material?(*(&v71 + 1), v72);
  outlined destroy of BorderedButtonColorSpec(v68);
  if (v37)
  {
    v38 = v15 + v17;
    v39 = static Edge.Set.all.getter();
    outlined copy of Material.ID(v35, v36);
    outlined consume of Material.ID(v35, v36);
    specialized Environment.wrappedValue.getter(v58, v57 & 1, &v67);
    v40 = v67;
    specialized Environment.wrappedValue.getter(*(a2 + 16), *(a2 + 24) | (*(a2 + 25) << 8), &v65);
    v41 = v65;
    v42 = v66;
    static EdgeInsets.zero.getter();
    v43 = __dst[9];
    *(a3 + 128) = __dst[8];
    *(a3 + 144) = v43;
    v44 = *&__dst[10];
    v45 = __dst[5];
    *(a3 + 64) = __dst[4];
    *(a3 + 80) = v45;
    v46 = __dst[7];
    *(a3 + 96) = __dst[6];
    *(a3 + 112) = v46;
    v47 = __dst[1];
    *a3 = __dst[0];
    *(a3 + 16) = v47;
    v48 = __dst[3];
    *(a3 + 32) = __dst[2];
    *(a3 + 48) = v48;
    *(a3 + 160) = v44;
    *(a3 + 168) = v60;
    *(a3 + 176) = v56;
    *(a3 + 184) = v59;
    *(a3 + 192) = v38;
    *(a3 + 200) = v59;
    *(a3 + 208) = v38;
    *(a3 + 216) = 0;
    *(a3 + 224) = v55;
    *(a3 + 232) = v29;
    *(a3 + 240) = v35;
    *(a3 + 248) = v36;
    *(a3 + 252) = HIDWORD(v36);
    *(a3 + 256) = v39;
    *(a3 + 264) = v40;
    *(a3 + 272) = v41;
    *(a3 + 280) = v42;
    *(a3 + 288) = v49;
    *(a3 + 296) = v50;
    *(a3 + 304) = v51;
    *(a3 + 312) = v52;
    *(a3 + 320) = 256;
  }

  else
  {
    __break(1u);
  }
}

void *closure #3 in ResolvedBorderedButton.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v4 = a1[9];
  v43 = a1[8];
  v44 = v4;
  v45 = *(a1 + 160);
  v5 = a1[5];
  v39 = a1[4];
  v40 = v5;
  v6 = a1[6];
  v42 = a1[7];
  v41 = v6;
  v7 = a1[1];
  v35 = *a1;
  v36 = v7;
  v8 = a1[2];
  v38 = a1[3];
  v37 = v8;
  memcpy(v34, a2, 0x111uLL);
  ResolvedBorderedButton.colorSpec.getter(v46);
  outlined destroy of BorderedButtonColorSpec(v46);
  v9 = v46[7];
  v55 = v43;
  v56 = v44;
  LOBYTE(v57) = v45;
  v51 = v39;
  v52 = v40;
  v54 = v42;
  v53 = v41;
  v47 = v35;
  v48 = v36;
  v50 = v38;
  v49 = v37;
  v10 = *(a2 + 216);
  v11 = *(a2 + 224);
  v12 = *(a2 + 264);
  v13 = *(a2 + 272);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(&v35, v34, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  specialized Environment.wrappedValue.getter(v10, v11 & 1, v27);
  if (v27[0] < 2u)
  {
    v14 = 10.0;
    v15 = 0x4014000000000000;
  }

  else if (v27[0] - 3 >= 2)
  {
    v14 = 12.0;
    v15 = 0x401C000000000000;
  }

  else
  {
    v14 = 20.0;
    v15 = 0x402E000000000000;
  }

  specialized Environment.wrappedValue.getter(v12, v13 & 1, &v33);
  v16 = 0.0;
  if (v33 - 7 <= 4)
  {
    v16 = dbl_18CD86210[(v33 - 7)];
  }

  v17 = v14 + v16;
  v18 = static Edge.Set.all.getter();
  v25[2] = v25;
  *&v27[160] = v57;
  *&v27[128] = v55;
  *&v27[144] = v56;
  *&v27[64] = v51;
  *&v27[80] = v52;
  *&v27[96] = v53;
  *&v27[112] = v54;
  *v27 = v47;
  *&v27[16] = v48;
  *&v27[32] = v49;
  *&v27[48] = v50;
  BYTE1(v33) = 0;
  *&v27[168] = v9;
  v27[176] = v18;
  *&v27[184] = v15;
  *&v27[192] = v17;
  *&v27[200] = v15;
  *&v27[208] = v17;
  v27[216] = 0;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>(0);
  v25[1] = v20;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ApplyGlassButtonConfigurationPredicate and conformance ApplyGlassButtonConfigurationPredicate();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type GlassConfigurationModifier and conformance GlassConfigurationModifier);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  View.staticIf<A, B, C>(_:then:else:)();
  v30[10] = *&v27[160];
  v30[11] = *&v27[176];
  v31[0] = *&v27[192];
  *(v31 + 9) = *&v27[201];
  v30[6] = *&v27[96];
  v30[7] = *&v27[112];
  v30[8] = *&v27[128];
  v30[9] = *&v27[144];
  v30[2] = *&v27[32];
  v30[3] = *&v27[48];
  v30[4] = *&v27[64];
  v30[5] = *&v27[80];
  v30[0] = *v27;
  v30[1] = *&v27[16];
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v30, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>);
  memcpy(v32, v34, sizeof(v32));
  v21 = specialized Environment.wrappedValue.getter(*(a2 + 104), *(a2 + 112));
  if (v21 != 2 && (v21 & 1) != 0 && (*(a2 + 128) & 1) != 0)
  {
    v22 = static Color.white.getter();
  }

  else
  {
    memcpy(v27, a2, sizeof(v27));
    ResolvedBorderedButton.colorSpec.getter(v28);
    v22 = v29;
    outlined copy of BorderedButtonColorSpec.LabelStyle(v29);
    outlined destroy of BorderedButtonColorSpec(v28);
  }

  v23 = v26;
  result = memcpy(v26, v32, 0x2E0uLL);
  v23[92] = v22;
  return result;
}

uint64_t closure #1 in closure #3 in ResolvedBorderedButton.body.getter@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[11];
  v23 = a1[10];
  v24 = v4;
  v25[0] = a1[12];
  *(v25 + 9) = *(a1 + 201);
  v5 = a1[7];
  v19 = a1[6];
  v20 = v5;
  v6 = a1[9];
  v21 = a1[8];
  v22 = v6;
  v7 = a1[3];
  v15 = a1[2];
  v16 = v7;
  v8 = a1[5];
  v17 = a1[4];
  v18 = v8;
  v9 = a1[1];
  v13 = *a1;
  v14 = v9;
  memcpy(__dst, a2, 0x111uLL);
  ResolvedBorderedButton.glassConfigurationModifier.getter(v26);
  __src[10] = v23;
  __src[11] = v24;
  __src[12] = v25[0];
  *(&__src[12] + 9) = *(v25 + 9);
  __src[6] = v19;
  __src[7] = v20;
  __src[8] = v21;
  __src[9] = v22;
  __src[2] = v15;
  __src[3] = v16;
  __src[4] = v17;
  __src[5] = v18;
  __src[0] = v13;
  __src[1] = v14;
  __src[24] = v26[10];
  __src[25] = v26[11];
  *&__src[26] = v27;
  __src[20] = v26[6];
  __src[21] = v26[7];
  __src[22] = v26[8];
  __src[23] = v26[9];
  __src[16] = v26[2];
  __src[17] = v26[3];
  __src[18] = v26[4];
  __src[19] = v26[5];
  __src[14] = v26[0];
  __src[15] = v26[1];
  memcpy(a3, __src, 0x1A8uLL);
  return outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(&v13, __dst, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>);
}

uint64_t ResolvedBorderedButton.glassConfigurationModifier.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = *(v1 + 16);
  v3 = *(v1 + 24);
  v31 = *(v1 + 25);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v9 = *(v1 + 152);
  v8 = *(v1 + 160);
  v10 = *(v1 + 216);
  v11 = *(v1 + 224);
  v34 = *(v1 + 168);
  v35 = v8;
  v33 = *(v1 + 176);
  if (v4)
  {
    outlined copy of Glass?(v6, v7, v9, v8);
    v12 = v4;
LABEL_4:

    goto LABEL_5;
  }

  v29 = *(v1 + 113);
  v30 = *(v1 + 128);
  v13 = *(v1 + 208);
  v14 = *(v1 + 200);
  outlined copy of Glass?(v6, v7, v9, v8);
  v15 = v13 & 1;
  v5 = v30;
  v12 = specialized Environment.wrappedValue.getter(v14, v15);
  if (v12)
  {
    goto LABEL_4;
  }

  if (v29)
  {
    v28 = static Color.accentColor.getter();
  }

  else
  {
    v28 = static Color.red.getter();
  }

  v12 = v28;
LABEL_5:
  specialized Environment.wrappedValue.getter(v10, v11 & 1, &v38);
  v16 = v38;
  specialized Environment.wrappedValue.getter(v32, v3 & 0xFFFFFEFF | ((v31 & 1) << 8), &v36);
  v17 = v36;
  v18 = v37;
  static EdgeInsets.zero.getter();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  *(a1 + 56) = swift_getKeyPath();
  *(a1 + 64) = 0;
  result = swift_getKeyPath();
  *(a1 + 72) = result;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v9;
  *(a1 + 112) = v35;
  *(a1 + 120) = v34;
  *(a1 + 128) = v33;
  *(a1 + 129) = v5 & 1;
  *(a1 + 136) = v12;
  *(a1 + 144) = v16;
  *(a1 + 152) = v17;
  *(a1 + 160) = v18;
  *(a1 + 168) = v20;
  *(a1 + 176) = v22;
  *(a1 + 184) = v24;
  *(a1 + 192) = v26;
  return result;
}

uint64_t closure #2 in closure #3 in ResolvedBorderedButton.body.getter@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[11];
  v28 = a1[10];
  v29 = v4;
  v30[0] = a1[12];
  *(v30 + 9) = *(a1 + 201);
  v5 = a1[7];
  v24 = a1[6];
  v25 = v5;
  v6 = a1[9];
  v26 = a1[8];
  v27 = v6;
  v7 = a1[3];
  v20 = a1[2];
  v21 = v7;
  v8 = a1[5];
  v22 = a1[4];
  v23 = v8;
  v9 = a1[1];
  v18 = *a1;
  v19 = v9;
  memcpy(__dst, a2, 0x111uLL);
  ResolvedBorderedButton.resolvedBackground.getter(v14);
  *(&__src[17] + 15) = *&v15[15];
  __src[16] = v14[2];
  __src[17] = *v15;
  __src[14] = v14[0];
  __src[15] = v14[1];
  v10 = static Alignment.center.getter();
  v12 = v11;
  __src[10] = v28;
  __src[11] = v29;
  __src[12] = v30[0];
  *(&__src[12] + 9) = *(v30 + 9);
  __src[6] = v24;
  __src[7] = v25;
  __src[8] = v26;
  __src[9] = v27;
  __src[2] = v20;
  __src[3] = v21;
  __src[4] = v22;
  __src[5] = v23;
  __src[0] = v18;
  __src[1] = v19;
  memcpy(a3, __src, 0x128uLL);
  a3[37] = v10;
  a3[38] = v12;
  return outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(&v18, __dst, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>);
}

double ResolvedBorderedButton.materialBackgroundSpec.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v32 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 113);
  v31 = *(v1 + 114);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 200);
  v9 = *(v1 + 208);
  v10 = specialized Environment.wrappedValue.getter(*(v1 + 72), *(v1 + 80) & 1);
  v11 = v6;
  if ((v7 & 1) == 0)
  {
    if (v6 || (v11 = specialized Environment.wrappedValue.getter(v8, v9 & 1)) != 0)
    {

      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0x8000000000000000;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_6:
    v12 = static Color.accentColor.getter();
    goto LABEL_11;
  }

  if (v6 || (v11 = specialized Environment.wrappedValue.getter(v8, v9 & 1)) != 0)
  {
  }

  else if (v5)
  {
    v11 = static Color.accentColor.getter();
  }

  else
  {
    v11 = static Color.red.getter();
  }

  v11 |= 0x4000000000000000uLL;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_10:
  v12 = static Color.red.getter();
LABEL_11:
  v13 = v12;
  specialized Environment.wrappedValue.getter(v2, v3 & 1, &v34);
  v14 = v34;
  v15 = specialized Environment.wrappedValue.getter(v32, v4 & 1);
  if ((v10 & 1) == 0)
  {
    if ((v14 & 1) == 0)
    {
      v17 = 1.0;
      v16 = Color.init(_:white:opacity:)();
      v21 = Color.init(_:white:opacity:)();

      v19 = 0;
      v20 = 0.15;
      v11 = v21;
      goto LABEL_72;
    }

    v17 = 1.0;
    if (v15)
    {
      v19 = 0;
    }

    else
    {
      v19 = 19;
    }

    v16 = Color.init(_:white:opacity:)();

    v11 = 2;
    goto LABEL_71;
  }

  if (!(v11 >> 62))
  {
    v22 = v15;

    if ((v14 & 1) == 0)
    {
      if (static Color.yellow.getter() != v11)
      {
        dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
      }

      v16 = Color.opacity(_:)();
      if (v22)
      {
        static Color.white.getter();
        v28 = Color.over(_:)();

        v16 = v28;
      }

      v19 = 0;
      if (v31)
      {
        v20 = 0.75;
      }

      else
      {
        v20 = 1.0;
      }

      if (v31)
      {
        v17 = 0.65;
      }

      else
      {
        v17 = 1.0;
      }

      goto LABEL_72;
    }

    if (static Color.red.getter() == v11)
    {
      goto LABEL_53;
    }

    v23 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

    if (v23)
    {
      goto LABEL_54;
    }

    if (static Color.pink.getter() == v11)
    {
LABEL_53:
    }

    else
    {
      dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
    }

LABEL_54:
    v27 = Color.opacity(_:)();
    if (v31)
    {
      if (v22)
      {
        static Color.black.getter();
        v16 = Color.over(_:)();
      }

      else
      {

        v16 = v27;
      }

      v17 = 1.0;
      Color.init(_:white:opacity:)();
      v29 = Color.over(_:)();

      v19 = 0;
      v11 = v29;
    }

    else
    {
      v17 = 1.0;
      Color.init(_:white:opacity:)();
      v16 = Color.over(_:)();

      v19 = 0;
    }

    goto LABEL_71;
  }

  if (v11 >> 62 == 1)
  {
    v16 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    if (v31)
    {
      if (v14)
      {

        v17 = 1.0;
        Color.init(_:white:opacity:)();
        v18 = Color.over(_:)();

        v19 = 0;
        v11 = 0;
        v20 = 0.75;
        v16 = v18;
      }

      else
      {
        if (v15)
        {

          static Color.white.getter();
          v26 = Color.over(_:)();

          v19 = 0;
          v11 = 0;
          v17 = 0.75;
          v16 = v26;
        }

        else
        {

          v19 = 0;
          v11 = 0;
          v17 = 0.75;
        }

        v20 = 0.75;
      }

      goto LABEL_72;
    }

    v19 = 0;
    v11 = 0;
    v17 = 1.0;
LABEL_71:
    v20 = 1.0;
    goto LABEL_72;
  }

  if (v14)
  {
    v24 = v15;
    v17 = 1.0;
    v16 = Color.init(_:white:opacity:)();
    if ((v31 & 1) == 0)
    {
      v19 = 0;
      v11 = v13;
      goto LABEL_71;
    }

    v20 = 1.0;
    if (v24)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.65;
    }

    Color.init(_:white:opacity:)();
    v11 = Color.over(_:)();

    v19 = 0;
  }

  else
  {
    v17 = 1.0;
    if (v15)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.65;
    }

    v16 = Color.init(_:white:opacity:)();
    v19 = 0;
    if (v31)
    {
      v20 = 0.75;
    }

    else
    {
      v20 = 1.0;
    }

    if (v31)
    {
      v17 = v25;
    }

    v11 = v13;
  }

LABEL_72:
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = 0x3FF0000000000000;
  result = 0.0;
  *(a1 + 24) = xmmword_18CD6E1E0;
  *(a1 + 40) = v19;
  *(a1 + 48) = v11;
  *(a1 + 56) = v20;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

void GlassConfigurationModifier.body(content:)(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[7];
  v32 = v1[6];
  v33 = v4;
  v5 = v1[7];
  v34 = v1[8];
  v6 = v1[1];
  v7 = v1[3];
  v28 = v1[2];
  v29 = v7;
  v8 = v1[3];
  v9 = v1[5];
  v30 = v1[4];
  v31 = v9;
  v10 = v1[1];
  v26 = *v1;
  v27 = v10;
  v51 = v32;
  v52 = v5;
  v53 = v1[8];
  v11 = *(v1 + 144);
  *v36 = *(v1 + 145);
  v12 = *(v1 + 37);
  v13 = *(v1 + 19);
  *v39 = *(v1 + 161);
  v14 = *(v1 + 160);
  v15 = *(v1 + 41);
  *&v36[3] = v12;
  *&v39[3] = v15;
  v47 = v28;
  v48 = v8;
  v16 = *(v1 + 21);
  v17 = *(v1 + 22);
  v49 = v30;
  v50 = v3;
  v18 = *(v1 + 23);
  v19 = *(v1 + 24);
  v45 = v26;
  v46 = v6;
  v54 = v11;
  *v55 = *(v1 + 145);
  *&v55[3] = *(v1 + 37);
  v56 = v13;
  v57 = v14;
  *v58 = *(v1 + 161);
  *&v58[3] = *(v1 + 41);
  v59 = v16;
  v60 = v17;
  v61 = v18;
  v62 = v19;
  v44 = GlassConfigurationModifier.resolvedLabelStyle.getter();
  v35 = v11;
  v37 = v13;
  v38 = v14;
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  GlassConfigurationModifier.resolvedGlass.getter(&v24);
  v22 = v24;
  v23 = v25;
  LOBYTE(v45) = v11;
  *(&v45 + 1) = v13;
  LOBYTE(v46) = v14 & 1;
  *(&v46 + 1) = v16;
  *&v47 = v17;
  *(&v47 + 1) = v18;
  *&v48 = v19;
  type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, lazy protocol witness table accessor for type _ViewModifier_Content<GlassConfigurationModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>);
  lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
  View.glassEffect<A>(_:in:)();
  outlined consume of _Glass.Variant.Role(v22, BYTE8(v22), v23);

  outlined consume of BorderedButtonColorSpec.LabelStyle?(v44);
  type metadata accessor for ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>>(0);
  v21 = a1 + *(v20 + 36);
  *v21 = v11;
  *(v21 + 1) = v45;
  *(v21 + 4) = *(&v45 + 3);
  *(v21 + 8) = v13;
  *(v21 + 16) = v14 & 1;
  *(v21 + 17) = v26;
  *(v21 + 20) = *(&v26 + 3);
  *(v21 + 24) = v16;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  *(v21 + 48) = v19;
  *(v21 + 56) = 0;
  *(v21 + 57) = v24;
  *(v21 + 60) = *(&v24 + 3);
  *(v21 + 64) = 4;
}

uint64_t GlassConfigurationModifier.resolvedLabelStyle.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 129);
  if ((specialized Environment.wrappedValue.getter(v5, v6) & 1) == 0)
  {
    return static Color.tertiary.getter();
  }

  v8 = specialized Environment.wrappedValue.getter(v1, v2);
  if (v8 != 2 && (v8 & 1) != 0 || v7 && specialized Environment.wrappedValue.getter(v1, v2) == 2)
  {
    return static Color.white.getter();
  }

  result = specialized Environment.wrappedValue.getter(v3, v4);
  if (!result)
  {
    return static Color.primary.getter();
  }

  return result;
}

double GlassConfigurationModifier.resolvedGlass.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  if (v6 == 1)
  {
    static Glass.regular.getter();
    v7 = v21;
    v8 = v22;
    v9 = GlassConfigurationModifier.glassTintColor.getter();
    if (v9)
    {
      v10 = v9;

      v7 = v10;
    }

    v12 = v17;
    LOBYTE(v11) = v20;
    v13 = v18;
    v15 = v23;
    LOBYTE(v14) = v19;
  }

  else
  {
    v11 = v5 >> 8;
    v12 = *(v1 + 88);
    v13 = *(v1 + 96);
    v14 = *(v1 + 104);
    v7 = *(v1 + 112);
    v8 = *(v1 + 120);
    v15 = *(v1 + 128);
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 17) = v11;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8 | 1;
  *(a1 + 40) = v15;

  return outlined copy of Glass?(v3, v4, v5, v6);
}

uint64_t GlassConfigurationModifier.glassTintColor.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 129);
  v4 = *(v0 + 136);
  if (specialized Environment.wrappedValue.getter(*(v0 + 72), *(v0 + 80)))
  {
  }

  else
  {
    static Color.secondarySystemFill.getter();
    v4 = Color.opacity(_:)();
  }

  v5 = specialized Environment.wrappedValue.getter(v1, v2);
  if (v5 != 2)
  {
    if (v5)
    {
      return v4;
    }

    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_6:

    return 0;
  }

  return v4;
}

uint64_t assignWithTake for ResolvedBorderedButton(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = *(a1 + 16);
  v11 = *(a1 + 25);
  *(a1 + 16) = a2[2];
  v12 = *(a1 + 24);
  *(a1 + 24) = v8;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v10, v12, v11);
  v13 = *(a2 + 48);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v13;
  outlined consume of Environment<Material?>.Content(v14, v15, v16);
  v17 = *(a2 + 64);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = *(a2 + 80);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = *(a2 + 96);
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v23;
  outlined consume of Environment<Selector?>.Content(v24, v25);
  v26 = *(a2 + 112);
  v27 = *(a1 + 104);
  v28 = *(a1 + 112);
  *(a1 + 104) = a2[13];
  *(a1 + 112) = v26;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 114) = *(a2 + 114);
  *(a1 + 120) = a2[15];

  *(a1 + 128) = *(a2 + 128);
  if (*(a1 + 160) != 1)
  {
    v29 = a2[20];
    if (v29 != 1)
    {
      v30 = *(a2 + 152);
      v31 = *(a1 + 136);
      v32 = *(a1 + 144);
      *(a1 + 136) = *(a2 + 17);
      v33 = *(a1 + 152);
      *(a1 + 152) = v30;
      outlined consume of _Glass.Variant.Role(v31, v32, v33);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 160) = v29;

      *(a1 + 168) = a2[21];
      *(a1 + 176) = *(a2 + 176);
      goto LABEL_6;
    }

    outlined destroy of Glass(a1 + 136);
  }

  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = *(a2 + 19);
  *(a1 + 161) = *(a2 + 161);
LABEL_6:
  v34 = *(a2 + 192);
  v35 = *(a1 + 184);
  v36 = *(a1 + 192);
  *(a1 + 184) = a2[23];
  *(a1 + 192) = v34;
  outlined consume of Environment<Selector?>.Content(v35, v36);
  v37 = *(a2 + 208);
  v38 = *(a1 + 200);
  *(a1 + 200) = a2[25];
  *(a1 + 208) = v37;
  outlined consume of Environment<Color?>.Content(v38);
  v39 = *(a2 + 224);
  v40 = *(a1 + 216);
  v41 = *(a1 + 224);
  *(a1 + 216) = a2[27];
  *(a1 + 224) = v39;
  outlined consume of Environment<Selector?>.Content(v40, v41);
  v42 = a2[31];
  v43 = *(a2 + 256);
  v44 = *(a2 + 257);
  v45 = *(a1 + 232);
  v46 = *(a1 + 240);
  v47 = *(a1 + 248);
  v48 = *(a1 + 257);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 248) = v42;
  v49 = *(a1 + 256);
  *(a1 + 256) = v43;
  *(a1 + 257) = v44;
  outlined consume of Environment<KeyboardShortcut?>.Content(v45, v46, v47, v49, v48);
  v50 = *(a2 + 272);
  v51 = *(a1 + 264);
  v52 = *(a1 + 272);
  *(a1 + 264) = a2[33];
  *(a1 + 272) = v50;
  outlined consume of Environment<Selector?>.Content(v51, v52);
  return a1;
}

{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = *(a2 + 56);
  v15 = *(a1 + 48);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v14;
  outlined consume of Environment<Color?>.Content(v15);
  v16 = *(a2 + 72);
  v17 = *(a2 + 73);
  v18 = *(a1 + 64);
  v19 = *(a1 + 73);
  *(a1 + 64) = a2[8];
  v20 = *(a1 + 72);
  *(a1 + 72) = v16;
  *(a1 + 73) = v17;
  outlined consume of Environment<CGFloat?>.Content(v18, v20, v19);
  v21 = *(a2 + 88);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v21;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 91) = *(a2 + 91);
  v24 = *(a2 + 104);
  v25 = *(a1 + 96);
  v26 = *(a1 + 104);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = v24;
  outlined consume of Environment<Selector?>.Content(v25, v26);
  v27 = a2[16];
  v28 = *(a2 + 136);
  v29 = *(a2 + 137);
  v30 = *(a1 + 112);
  v31 = *(a1 + 120);
  v32 = *(a1 + 128);
  v33 = *(a1 + 137);
  *(a1 + 112) = *(a2 + 7);
  *(a1 + 128) = v27;
  v34 = *(a1 + 136);
  *(a1 + 136) = v28;
  *(a1 + 137) = v29;
  outlined consume of Environment<KeyboardShortcut?>.Content(v30, v31, v32, v34, v33);
  v35 = *(a2 + 152);
  v36 = *(a1 + 144);
  v37 = *(a1 + 152);
  *(a1 + 144) = a2[18];
  *(a1 + 152) = v35;
  outlined consume of Environment<Selector?>.Content(v36, v37);
  *(a1 + 160) = a2[20];

  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedBorderedButton(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 273))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t storeEnumTagSinglePayload for ResolvedBorderedButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 272) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 273) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 273) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>(255);
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>, &type metadata for ShouldRenderAsTemplate, &type metadata for ButtonDefaultRenderingModeModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>)
  {
    type metadata accessor for HStack<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<ButtonStyleConfiguration.Label>, &type metadata for ButtonStyleConfiguration.Label, &protocol witness table for ButtonStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, lazy protocol witness table accessor for type ToolbarItemWritesTintColorPredicate and conformance ToolbarItemWritesTintColorPredicate, &type metadata for ToolbarItemWritesTintColorPredicate, MEMORY[0x1E6980680]);
    type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarItemWritesTintColorPredicate and conformance ToolbarItemWritesTintColorPredicate()
{
  result = lazy protocol witness table cache variable for type ToolbarItemWritesTintColorPredicate and conformance ToolbarItemWritesTintColorPredicate;
  if (!lazy protocol witness table cache variable for type ToolbarItemWritesTintColorPredicate and conformance ToolbarItemWritesTintColorPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemWritesTintColorPredicate, &type metadata for ToolbarItemWritesTintColorPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemWritesTintColorPredicate and conformance ToolbarItemWritesTintColorPredicate);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>> and conformance _BackgroundModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, lazy protocol witness table accessor for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>, MEMORY[0x1E697EBF8]);
    v5[1] = lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMaTm_0(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ApplyGlassButtonConfigurationPredicate and conformance ApplyGlassButtonConfigurationPredicate()
{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfigurationPredicate and conformance ApplyGlassButtonConfigurationPredicate;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfigurationPredicate and conformance ApplyGlassButtonConfigurationPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplyGlassButtonConfigurationPredicate, &type metadata for ApplyGlassButtonConfigurationPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfigurationPredicate and conformance ApplyGlassButtonConfigurationPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassConfigurationModifier and conformance GlassConfigurationModifier()
{
  result = lazy protocol witness table cache variable for type GlassConfigurationModifier and conformance GlassConfigurationModifier;
  if (!lazy protocol witness table cache variable for type GlassConfigurationModifier and conformance GlassConfigurationModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlassConfigurationModifier, &unk_1EFFABD98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GlassConfigurationModifier and conformance GlassConfigurationModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate> and conformance InvertedViewInputPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, MEMORY[0x1E697F940]);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate> and conformance InvertedViewInputPredicate<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, lazy protocol witness table accessor for type ToolbarItemWritesTintColorPredicate and conformance ToolbarItemWritesTintColorPredicate, &type metadata for ToolbarItemWritesTintColorPredicate, MEMORY[0x1E6980680]);
    result = swift_getWitnessTable(MEMORY[0x1E6980688], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double destroy for GlassConfigurationModifier(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Material?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  outlined consume of Environment<Color?>.Content(*(a1 + 40));
  outlined consume of Environment<Selector?>.Content(*(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Selector?>.Content(*(a1 + 72), *(a1 + 80));
  if (*(a1 + 112) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 88), *(a1 + 96), *(a1 + 104));
  }

  return result;
}

uint64_t initializeWithCopy for GlassConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Environment<Material?>.Content(v6, v7, v8);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  LOBYTE(v7) = *(a2 + 48);
  outlined copy of Environment<Color?>.Content(v9);
  *(a1 + 40) = v9;
  *(a1 + 48) = v7;
  v10 = *(a2 + 56);
  LOBYTE(v7) = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v10, v7);
  *(a1 + 56) = v10;
  *(a1 + 64) = v7;
  v11 = *(a2 + 72);
  LOBYTE(v7) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v11, v7);
  *(a1 + 72) = v11;
  *(a1 + 80) = v7;
  v12 = *(a2 + 112);
  if (v12 == 1)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 113) = *(a2 + 113);
  }

  else
  {
    v13 = *(a2 + 88);
    v14 = *(a2 + 96);
    v15 = *(a2 + 104);
    outlined copy of _Glass.Variant.Role(v13, v14, v15);
    *(a1 + 88) = v13;
    *(a1 + 96) = v14;
    *(a1 + 104) = v15;
    *(a1 + 105) = *(a2 + 105);
    v16 = *(a2 + 120);
    *(a1 + 112) = v12;
    *(a1 + 120) = v16;
    *(a1 + 128) = *(a2 + 128);
  }

  *(a1 + 129) = *(a2 + 129);
  *(a1 + 136) = *(a2 + 136);
  v17 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v17;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);

  return a1;
}

uint64_t assignWithCopy for GlassConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  outlined copy of Environment<Material?>.Content(v8, v9, v10);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  outlined consume of Environment<Material?>.Content(v11, v12, v13);
  v14 = *(a2 + 40);
  LOBYTE(v9) = *(a2 + 48);
  outlined copy of Environment<Color?>.Content(v14);
  v15 = *(a1 + 40);
  *(a1 + 40) = v14;
  *(a1 + 48) = v9;
  outlined consume of Environment<Color?>.Content(v15);
  v16 = *(a2 + 56);
  LOBYTE(v9) = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v16, v9);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  *(a1 + 56) = v16;
  *(a1 + 64) = v9;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  v19 = *(a2 + 72);
  LOBYTE(v9) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v19, v9);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  *(a1 + 72) = v19;
  *(a1 + 80) = v9;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = *(a2 + 112);
  if (*(a1 + 112) == 1)
  {
    if (v22 == 1)
    {
      v23 = *(a2 + 88);
      v24 = *(a2 + 104);
      *(a1 + 113) = *(a2 + 113);
      *(a1 + 104) = v24;
      *(a1 + 88) = v23;
    }

    else
    {
      v27 = *(a2 + 88);
      v28 = *(a2 + 96);
      v29 = *(a2 + 104);
      outlined copy of _Glass.Variant.Role(v27, v28, v29);
      *(a1 + 88) = v27;
      *(a1 + 96) = v28;
      *(a1 + 104) = v29;
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
    }
  }

  else if (v22 == 1)
  {
    outlined destroy of Glass(a1 + 88);
    v25 = *(a2 + 113);
    v26 = *(a2 + 104);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = v26;
    *(a1 + 113) = v25;
  }

  else
  {
    v30 = *(a2 + 88);
    v31 = *(a2 + 96);
    v32 = *(a2 + 104);
    outlined copy of _Glass.Variant.Role(v30, v31, v32);
    v33 = *(a1 + 88);
    v34 = *(a1 + 96);
    *(a1 + 88) = v30;
    *(a1 + 96) = v31;
    v35 = *(a1 + 104);
    *(a1 + 104) = v32;
    outlined consume of _Glass.Variant.Role(v33, v34, v35);
    *(a1 + 105) = *(a2 + 105);
    *(a1 + 112) = *(a2 + 112);

    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
  }

  *(a1 + 129) = *(a2 + 129);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  v36 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v36;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t assignWithTake for GlassConfigurationModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 32);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v8;
  outlined consume of Environment<Material?>.Content(v9, v10, v11);
  v12 = *(a2 + 48);
  v13 = *(a1 + 40);
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v12;
  outlined consume of Environment<Color?>.Content(v13);
  v14 = *(a2 + 64);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = *(a2 + 80);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  if (*(a1 + 112) != 1)
  {
    v20 = a2[14];
    if (v20 != 1)
    {
      v21 = *(a2 + 104);
      v22 = *(a1 + 88);
      v23 = *(a1 + 96);
      *(a1 + 88) = *(a2 + 11);
      v24 = *(a1 + 104);
      *(a1 + 104) = v21;
      outlined consume of _Glass.Variant.Role(v22, v23, v24);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 112) = v20;

      *(a1 + 120) = a2[15];
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_6;
    }

    outlined destroy of Glass(a1 + 88);
  }

  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 113) = *(a2 + 113);
LABEL_6:
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 136) = a2[17];

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = a2[19];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 184) = *(a2 + 23);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassConfigurationModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassConfigurationModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDe(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTem)
  {
    type metadata accessor for ModifiedContent<StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingMo(255);
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>, &type metadata for ToolbarItemWritesTintColorPredicate, &type metadata for ToolbarItemTintColorModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTem);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingMo(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDef)
  {
    type metadata accessor for StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, Empt( 255,  &lazy cache variable for type metadata for StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingMod,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>,  type metadata accessor for ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<Resolve,  &type metadata for UseImageBackground);
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ResolvedBorderShape>, lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape, &type metadata for ResolvedBorderShape, MEMORY[0x1E69805E0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDef);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>(255);
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ClipEffect<ResolvedBorderShape>, lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape, &type metadata for ResolvedBorderShape, MEMORY[0x1E697DDA0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>(255);
    type metadata accessor for HStack<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>);
    type metadata accessor for HStack<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(255);
    type metadata accessor for HStack<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>, &type metadata for BorderedButtonColorSpec.LabelStyle, &protocol witness table for BorderedButtonColorSpec.LabelStyle, MEMORY[0x1E6980AB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<Resolve(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_Sh)
  {
    type metadata accessor for StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, Empt(255, &lazy cache variable for type metadata for StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<Resolved, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>>, &type metadata for ApplyGlassButtonConfigurationPredicate);
    type metadata accessor for HStack<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>, &type metadata for BorderedButtonColorSpec.LabelStyle, &protocol witness table for BorderedButtonColorSpec.LabelStyle, MEMORY[0x1E6980AB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_Sh);
    }
  }
}

void type metadata accessor for StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, Empt(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v7 = type metadata accessor for StaticIf();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderin()
{
  result = lazy protocol witness table cache variable for type StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRe;
  if (!lazy protocol witness table cache variable for type StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRe)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, Empt( 255,  &lazy cache variable for type metadata for StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingMod,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>,  type metadata accessor for ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<Resolve,  &type metadata for UseImageBackground);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type UseImageBackground and conformance UseImageBackground();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>);
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedC,  type metadata accessor for ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<Resolve,  lazy protocol witness table accessor for type StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<Reso,  lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRe);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseImageBackground and conformance UseImageBackground()
{
  result = lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground;
  if (!lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseImageBackground, &type metadata for UseImageBackground, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground;
  if (!lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseImageBackground, &type metadata for UseImageBackground, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground;
  if (!lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseImageBackground, &type metadata for UseImageBackground, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground;
  if (!lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseImageBackground, &type metadata for UseImageBackground, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground;
  if (!lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseImageBackground, &type metadata for UseImageBackground, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseImageBackground and conformance UseImageBackground);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>);
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<Reso()
{
  result = lazy protocol witness table cache variable for type StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeVie;
  if (!lazy protocol witness table cache variable for type StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeVie)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<UseImageBackground, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<ResolvedBorderShape>>, ModifiedContent<StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, Empt(255, &lazy cache variable for type metadata for StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<Resolved, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>>, &type metadata for ApplyGlassButtonConfigurationPredicate);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ApplyGlassButtonConfigurationPredicate and conformance ApplyGlassButtonConfigurationPredicate();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type GlassConfigurationModifier and conformance GlassConfigurationModifier);
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ApplyGlassButtonConfigurationPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, GlassConfigurationModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _OpacityEffect>, _PaddingLayout>, StaticIf<InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeVie);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>, &type metadata for ToolbarItemWritesTintColorPredicate, &type metadata for ToolbarItemTintColorModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ToolbarItemWritesTintColorPredicate and conformance ToolbarItemWritesTintColorPredicate();
    v5[1] = lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>)
  {
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassConfigurationModifier>, lazy protocol witness table accessor for type GlassConfigurationModifier and conformance GlassConfigurationModifier, &unk_1EFFABD98, MEMORY[0x1E697FDE8]);
    type metadata accessor for HStack<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>, &type metadata for BorderedButtonColorSpec.LabelStyle, &protocol witness table for BorderedButtonColorSpec.LabelStyle, MEMORY[0x1E6980AB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>);
    }
  }
}

void type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<GlassConfigurationModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<GlassConfigurationModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<GlassConfigurationModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassConfigurationModifier>, lazy protocol witness table accessor for type GlassConfigurationModifier and conformance GlassConfigurationModifier, &unk_1EFFABD98, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<GlassConfigurationModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

double outlined consume of BorderedButtonColorSpec.LabelStyle?(unint64_t a1)
{
  if (a1 != 3)
  {
    return outlined consume of BorderedButtonColorSpec.LabelStyle(a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>>)
  {
    type metadata accessor for <<opaque return type of View._glassEffect<A>(_:in:)>>.0(255);
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ResolvedBorderShape>, lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape, &type metadata for ResolvedBorderShape, MEMORY[0x1E69805E0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>>);
    }
  }
}

void type metadata accessor for <<opaque return type of View._glassEffect<A>(_:in:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of View._glassEffect<A>(_:in:)>>.0)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, lazy protocol witness table accessor for type _ViewModifier_Content<GlassConfigurationModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>);
    lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View._glassEffect<A>(_:in:)>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    v6[10] = v0;
    v6[11] = v1;
    type metadata accessor for ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>>(255);
    v4 = v3;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>(255);
    v6[2] = v5;
    v6[3] = &type metadata for ResolvedBorderShape;
    v6[4] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassConfigurationModifier>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, lazy protocol witness table accessor for type _ViewModifier_Content<GlassConfigurationModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>);
    v6[5] = lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = lazy protocol witness table accessor for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, _ContentShapeKindModifier<ResolvedBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WindowFlexibility.Role and conformance WindowFlexibility.Role()
{
  result = lazy protocol witness table cache variable for type WindowFlexibility.Role and conformance WindowFlexibility.Role;
  if (!lazy protocol witness table cache variable for type WindowFlexibility.Role and conformance WindowFlexibility.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowFlexibility.Role, &type metadata for WindowFlexibility.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowFlexibility.Role and conformance WindowFlexibility.Role);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ContentMarginModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ContentMarginModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ContentMarginModifier and conformance ContentMarginModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

double ContentMarginProxy.margins(for:in:allowAutomatic:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  ContentMarginProxy.optionalMargins(for:allowAutomatic:)(&v5, a3, v4);
  OptionalEdgeInsets.in(edges:)();
  return result;
}

double ContentMarginProxy.optionalMargins(for:allowAutomatic:)@<D0>(unsigned __int8 *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = *a1;
  v7 = MEMORY[0x18D007050](&v17);
  v8 = v3 + 8;
  if (v6 != 2)
  {
    v8 = v3 + 12;
  }

  v9 = v3 + 4;
  if (!v6)
  {
    v9 = v3;
  }

  if (v6 <= 1)
  {
    v8 = v9;
  }

  *(v19 + 9) = *(v8 + 41);
  v10 = v8[2];
  v18 = v8[1];
  v19[0] = v10;
  v17 = *v8;
  v15[0] = v17;
  v15[1] = v18;
  v16[0] = v10;
  *(v16 + 9) = *(v19 + 9);
  MEMORY[0x18D007000](v14, v7);
  if (MEMORY[0x18D006FC0](v15, v14) & 1) != 0 && (a2)
  {
    v11 = v3[1];
    v17 = *v3;
    v18 = v11;
    v19[0] = v3[2];
    *(v19 + 9) = *(v3 + 41);
  }

  v12 = v18;
  *a3 = v17;
  a3[1] = v12;
  a3[2] = v19[0];
  result = *(v19 + 9);
  *(a3 + 41) = *(v19 + 9);
  return result;
}

double specialized implicit closure #1 in _GraphInputs.contentMarginProxy.getter@<D0>(_OWORD *a1@<X8>)
{
  EnvironmentValues.contentMarginProxy.getter(v10);
  v2 = v22;
  a1[12] = v21;
  a1[13] = v2;
  a1[14] = v23[0];
  *(a1 + 233) = *(v23 + 9);
  v3 = v18;
  a1[8] = v17;
  a1[9] = v3;
  v4 = v20;
  a1[10] = v19;
  a1[11] = v4;
  v5 = v14;
  a1[4] = v13;
  a1[5] = v5;
  v6 = v16;
  a1[6] = v15;
  a1[7] = v6;
  v7 = v10[1];
  *a1 = v10[0];
  a1[1] = v7;
  result = *&v11;
  v9 = v12;
  a1[2] = v11;
  a1[3] = v9;
  return result;
}

uint64_t View.contentMargins(_:_:for:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v10 = a1;
  v11 = *a2;
  static Edge.Set.all.getter();
  OptionalEdgeInsets.init(_:edges:)();
  *&v19[48] = *(v22 + 9);
  *&v19[39] = v22[0];
  *&v19[23] = v21;
  *&v19[7] = v20;
  v14 = *v19;
  v15 = *&v19[16];
  v16 = *&v19[32];
  v13 = v10;
  v17 = *&v19[48];
  v18 = v11;
  return MEMORY[0x18D00A570](&v13, a3, &type metadata for ContentMarginModifier, a4);
}

uint64_t View.contentMargins(_:for:)(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *a1;
  v7 = static Edge.Set.all.getter();
  static Edge.Set.all.getter();
  OptionalEdgeInsets.init(_:edges:)();
  *&v15[48] = *(v18 + 9);
  *&v15[39] = v18[0];
  *&v15[23] = v17;
  *&v15[7] = v16;
  v10 = *v15;
  v11 = *&v15[16];
  v12 = *&v15[32];
  v9 = v7;
  v13 = *&v15[48];
  v14 = v6;
  return MEMORY[0x18D00A570](&v9, a2, &type metadata for ContentMarginModifier, a3);
}

uint64_t getEnumTagSinglePayload for ContentMarginProxy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 249))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContentMarginProxy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0;
    *result = (a2 - 1);
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

  *(result + 249) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentMarginModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 66))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentMarginModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentMarginModifier and conformance ContentMarginModifier()
{
  result = lazy protocol witness table cache variable for type ContentMarginModifier and conformance ContentMarginModifier;
  if (!lazy protocol witness table cache variable for type ContentMarginModifier and conformance ContentMarginModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentMarginModifier, &type metadata for ContentMarginModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContentMarginModifier and conformance ContentMarginModifier);
  }

  return result;
}

uint64_t EnvironmentValues.listSectionIndexVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance SectionIndexLabelKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&result = 0x1FFFFFFFELL;
  *(a1 + 16) = xmmword_18CD67BD0;
  return result;
}

void View.listSectionIndexTitle(_:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.listSectionIndexTitle(_:)();
}

double View.listSectionIndexVisibility(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path getter for EnvironmentValues.listSectionIndexVisibility : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.listSectionIndexVisibility : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double outlined copy of SectionIndexLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double outlined consume of SectionIndexLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t *initializeWithCopy for SectionIndexLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of SectionIndexLabel(*a2, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for SectionIndexLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of SectionIndexLabel(*a2, v4, v5);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of SectionIndexLabel(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for SectionIndexLabel(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v6;
  outlined consume of SectionIndexLabel(v3, v5, v4);
  return a1;
}

uint64_t storeEnumTagSinglePayload for SectionIndexLabel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SectionIndexTitleKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SectionIndexTitleKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SectionIndexTitleKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SectionIndexTitleKey>, &type metadata for SectionIndexTitleKey, &protocol witness table for SectionIndexTitleKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SectionIndexTitleKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t View.disclosureGroupStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DisclosureGroupStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t DisclosureGroupStyleConfiguration.isExpanded.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

void *key path getter for DisclosureGroupStyleConfiguration.isExpanded : DisclosureGroupStyleConfiguration@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  type metadata accessor for Binding<Bool>();
  result = MEMORY[0x18D00ACC0](&v6);
  *a2 = v6;
  return result;
}

double key path setter for DisclosureGroupStyleConfiguration.isExpanded : DisclosureGroupStyleConfiguration(char *a1, uint64_t *a2)
{

  dispatch thunk of AnyLocation.set(_:transaction:)();

  return result;
}

void (*DisclosureGroupStyleConfiguration.isExpanded.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v5 = v1[1];
  *(v3 + 24) = *v1;
  *(v3 + 32) = v5;
  v6 = *(v1 + 16);
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0]();
  return ToggleStyleConfiguration.isOn.modify;
}

uint64_t DisclosureGroupStyleConfiguration.$isExpanded.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t instantiation function for generic protocol witness table for DisclosureGroupStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroupStyleConfiguration.Label, &type metadata for DisclosureGroupStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroupStyleConfiguration.Label, &type metadata for DisclosureGroupStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DisclosureGroupStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroupStyleConfiguration.Content, &type metadata for DisclosureGroupStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroupStyleConfiguration.Content, &type metadata for DisclosureGroupStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedDisclosureGroupStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedDisclosureGroupStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ResolvedDisclosureGroupStyle(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);

  outlined consume of StateOrBinding<Bool>(0, 0, 0, 0);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = 1;
}

uint64_t DisclosureGroupStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-1] - v11;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v13;
  v19 = v14;
  (*(v3 + 24))(v18, v4, v3, v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v6 + 8);
  v15(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v12, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle;
  if (!lazy protocol witness table cache variable for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedDisclosureGroupStyle, &type metadata for ResolvedDisclosureGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle;
  if (!lazy protocol witness table cache variable for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedDisclosureGroupStyle, &type metadata for ResolvedDisclosureGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle);
  }

  return result;
}

void type metadata accessor for DisclosureGroupStyleModifier<AutomaticDisclosureGroupStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DisclosureGroupStyleModifier<AutomaticDisclosureGroupStyle>)
  {
    v2 = lazy protocol witness table accessor for type AutomaticDisclosureGroupStyle and conformance AutomaticDisclosureGroupStyle();
    v4 = type metadata accessor for DisclosureGroupStyleModifier(a1, &type metadata for AutomaticDisclosureGroupStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for DisclosureGroupStyleModifier<AutomaticDisclosureGroupStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticDisclosureGroupStyle and conformance AutomaticDisclosureGroupStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticDisclosureGroupStyle and conformance AutomaticDisclosureGroupStyle;
  if (!lazy protocol witness table cache variable for type AutomaticDisclosureGroupStyle and conformance AutomaticDisclosureGroupStyle)
  {
    result = swift_getWitnessTable("9_ cD\\\n", &type metadata for AutomaticDisclosureGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticDisclosureGroupStyle and conformance AutomaticDisclosureGroupStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance DisclosureGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroupStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance DisclosureGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisclosureGroupStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t lazy protocol witness table accessor for type DisclosureGroupStyleModifier<AutomaticDisclosureGroupStyle> and conformance DisclosureGroupStyleModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t closure #1 in PlatformSliderStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v97 = a4;
  v6 = HIDWORD(a2);
  v106 = HIDWORD(a2);
  v107 = a2;
  v7 = a2;
  type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(0);
  v95 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v96 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v79 - v11;
  v105 = type metadata accessor for SymbolEffectOptions();
  v112 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for BounceSymbolEffect();
  v111 = *(v80 - 8);
  v13 = v111;
  MEMORY[0x1EEE9AC00](v80);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(0);
  v103 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19 - 8);
  v109 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v79 - v23;
  MEMORY[0x18D00BF90](v22);
  v126 = __PAIR64__(v6, v7);
  v127 = a3;
  type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(0, &lazy cache variable for type metadata for State<PlatformSliderStyle.SymbolEffectState>, &type metadata for PlatformSliderStyle.SymbolEffectState, MEMORY[0x1E6981790]);
  v94 = v25;
  State.wrappedValue.getter();
  LODWORD(v6) = v113;
  v26 = v104;
  static SymbolEffectOptions.default.getter();
  v92 = *(v13 + 16);
  v93 = v13 + 16;
  v27 = v18;
  v83 = v18;
  v28 = v80;
  v92(v15, v18, v80);
  type metadata accessor for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>(0, &lazy cache variable for type metadata for _DiscreteSymbolEffectModifier<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E7688], type metadata accessor for _DiscreteSymbolEffectModifier);
  v30 = *(v29 + 36);
  v31 = v29;
  v32 = v112;
  v33 = *(v112 + 16);
  v89 = v29;
  v90 = v112 + 16;
  v91 = v33;
  v34 = v26;
  v35 = v26;
  v36 = v105;
  v33(&v24[v30], v34, v105);
  *&v24[*(v31 + 40)] = v6;
  v88 = lazy protocol witness table accessor for type [SliderTick<Double>] and conformance [A](&lazy protocol witness table cache variable for type BounceSymbolEffect and conformance BounceSymbolEffect, MEMORY[0x1E69820E0], MEMORY[0x1E69820D8]);
  v108 = v24;
  v37 = v98;
  dispatch thunk of SymbolEffect.configuration.getter();
  v38 = v111 + 8;
  v39 = v37;
  v40 = *(v111 + 8);
  v86 = v40;
  v40(v39, v28);
  v41 = *(v32 + 8);
  v111 = v38;
  v112 = v32 + 8;
  v87 = v41;
  v41(v35, v36);
  v40(v27, v28);
  v24[*(v103 + 44)] = 0;
  v42 = swift_allocObject();
  v43 = *(a1 + 112);
  *(v42 + 112) = *(a1 + 96);
  *(v42 + 128) = v43;
  *(v42 + 144) = *(a1 + 128);
  v44 = *(a1 + 48);
  *(v42 + 48) = *(a1 + 32);
  *(v42 + 64) = v44;
  v45 = *(a1 + 80);
  *(v42 + 80) = *(a1 + 64);
  *(v42 + 96) = v45;
  v46 = *(a1 + 16);
  *(v42 + 16) = *a1;
  *(v42 + 32) = v46;
  v47 = v106;
  *(v42 + 160) = v107;
  *(v42 + 164) = v47;
  v48 = v82;
  *(v42 + 168) = v82;

  outlined init with copy of SliderStyleConfiguration(a1, &v126);

  v49 = static Alignment.center.getter();
  v84 = v50;
  v85 = v49;
  v51 = *(a1 + 88);
  v52 = MEMORY[0x1E69E7CC0];
  if (v51)
  {
    v52 = v51;
  }

  v126 = v52;
  type metadata accessor for [SliderTick<Double>](0);
  v103 = v53;
  _s7SwiftUI10SliderTickVySdGMaTm_0(0, &lazy cache variable for type metadata for SliderTick<Double>.ID, type metadata accessor for SliderTick.ID);
  type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(0, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type [SliderTick<Double>] and conformance [A](&lazy protocol witness table cache variable for type [SliderTick<Double>] and conformance [A], type metadata accessor for [SliderTick<Double>], MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type AnyView? and conformance <A> A?();
  lazy protocol witness table accessor for type SliderTick<Double> and conformance SliderTick<A>(&lazy protocol witness table cache variable for type SliderTick<Double> and conformance SliderTick<A>, &lazy cache variable for type metadata for SliderTick<Double>, type metadata accessor for SliderTick, protocol conformance descriptor for SliderTick<A>);

  ForEach<>.init(_:content:)();
  v81 = v120;
  v102 = v122;
  v103 = v121;
  v101 = v123;
  v99 = v125;
  v100 = v124;

  v55 = v83;
  MEMORY[0x18D00BF90](v54);
  v126 = __PAIR64__(v106, v107);
  v127 = v48;
  State.wrappedValue.getter();
  v56 = DWORD1(v113);
  v57 = v104;
  static SymbolEffectOptions.default.getter();
  v58 = v98;
  v92(v98, v55, v28);
  v59 = v89;
  v60 = v110;
  v61 = v57;
  v62 = v57;
  v63 = v105;
  v91(v110 + *(v89 + 36), v61, v105);
  *(v60 + *(v59 + 40)) = v56;
  dispatch thunk of SymbolEffect.configuration.getter();
  v64 = v86;
  v86(v58, v28);
  v87(v62, v63);
  v64(v55, v28);
  v65 = v60;
  *(v60 + *(v95 + 44)) = 0;
  v66 = v109;
  outlined init with copy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v108, v109, type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
  v67 = v96;
  outlined init with copy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v65, v96, type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
  v68 = v97;
  outlined init with copy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v66, v97, type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
  type metadata accessor for (ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)(0, v69);
  v71 = v68 + *(v70 + 48);
  *&v113 = partial apply for closure #1 in closure #1 in PlatformSliderStyle.makeBody(configuration:);
  *(&v113 + 1) = v42;
  v73 = v84;
  v72 = v85;
  *&v114 = v85;
  *(&v114 + 1) = v84;
  v74 = v81;
  *&v115 = v81;
  *(&v115 + 1) = v103;
  *&v116 = v102;
  *(&v116 + 1) = v101;
  *&v117 = v100;
  *(&v117 + 1) = v99;
  *&v118 = closure #1 in View.forcePlatformItem();
  *(&v118 + 1) = 0;
  v119 = 0;
  *(v71 + 96) = 0;
  v75 = v114;
  *v71 = v113;
  *(v71 + 16) = v75;
  v76 = v116;
  *(v71 + 32) = v115;
  *(v71 + 48) = v76;
  v77 = v118;
  *(v71 + 64) = v117;
  *(v71 + 80) = v77;
  outlined init with copy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v67, v68 + *(v70 + 64), type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
  outlined init with copy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(&v113, &v126, type metadata accessor for ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>);
  outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v110, type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
  outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v108, type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
  outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v67, type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
  v126 = partial apply for closure #1 in closure #1 in PlatformSliderStyle.makeBody(configuration:);
  v127 = v42;
  v128 = v72;
  v129 = v73;
  v130 = v74;
  v131 = v103;
  v132 = v102;
  v133 = v101;
  v134 = v100;
  v135 = v99;
  v136 = closure #1 in View.forcePlatformItem();
  v137 = 0;
  v138 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(&v126, type metadata accessor for ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>);
  return outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v109, type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
}

double closure #1 in closure #1 in PlatformSliderStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PlatformTickLabelItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v44 = a3;
    KeyPath = a4;
    v46 = a2;
    v47 = a5;
    *&v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v50;
    v16 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    do
    {
      outlined init with copy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v17, v13, type metadata accessor for PlatformItemList.Item);
      *&v50 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v15 = v50;
      }

      *(v15 + 16) = v20 + 1;
      outlined init with take of PlatformTickLabelItem(v13, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20);
      v17 += v18;
      --v14;
    }

    while (v14);
    a2 = v46;
    a5 = v47;
    a3 = v44;
    a4 = KeyPath;
  }

  v53 = a3;
  v54 = a4;
  type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(0, &lazy cache variable for type metadata for State<PlatformSliderStyle.SymbolEffectState>, &type metadata for PlatformSliderStyle.SymbolEffectState, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v46 = *(&v50 + 1);
  v47 = v50;
  v21 = v51;
  KeyPath = swift_getKeyPath();
  LOBYTE(v53) = 0;
  v44 = swift_getKeyPath();
  v22 = a2[4];
  *&v56[87] = a2[5];
  v23 = a2[7];
  *&v56[103] = a2[6];
  *&v56[119] = v23;
  *&v56[135] = a2[8];
  v24 = *a2;
  *&v56[23] = a2[1];
  v25 = a2[3];
  *&v56[39] = a2[2];
  *&v56[55] = v25;
  *&v56[71] = v22;
  v57 = 0;
  *&v56[7] = v24;
  v26 = v53;
  v43 = 0;
  outlined init with copy of SliderStyleConfiguration(a2, &v50);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = swift_getKeyPath();
  v49 = 0;
  v28 = swift_getKeyPath();
  v48 = 0;
  v29 = swift_getKeyPath();
  v55 = 0;
  v30 = v49;
  v31 = v48;
  v32 = swift_allocObject();
  v33 = *&v56[112];
  *(a5 + 121) = *&v56[96];
  *(a5 + 137) = v33;
  *(a5 + 153) = *&v56[128];
  v34 = *&v56[48];
  *(a5 + 57) = *&v56[32];
  *(a5 + 73) = v34;
  v35 = *&v56[80];
  *(a5 + 89) = *&v56[64];
  *(a5 + 105) = v35;
  v36 = *&v56[16];
  *(a5 + 25) = *v56;
  *(v32 + 16) = 0;
  v37 = v44;
  *a5 = KeyPath;
  *(a5 + 8) = v26;
  *(a5 + 16) = v37;
  *(a5 + 24) = v43;
  v38 = *&v56[143];
  *(a5 + 41) = v36;
  *(a5 + 168) = v38;
  *(a5 + 176) = v15;
  v39 = v46;
  *(a5 + 184) = v47;
  *(a5 + 192) = v39;
  *(a5 + 200) = v21;
  v40 = v51;
  *(a5 + 208) = v50;
  *(a5 + 224) = v40;
  result = v52[0];
  *(a5 + 240) = *v52;
  *(a5 + 256) = xmmword_18CD80A00;
  *(a5 + 272) = xmmword_18CD80A00;
  *(a5 + 288) = v27;
  *(a5 + 296) = 0;
  *(a5 + 304) = 0;
  *(a5 + 312) = 0;
  *(a5 + 320) = v30;
  *(a5 + 328) = v28;
  *(a5 + 336) = v31;
  *(a5 + 344) = v29;
  *(a5 + 400) = 256;
  *(a5 + 408) = partial apply for closure #1 in View.accessibilityLabel<A>(_:label:);
  *(a5 + 416) = v32;
  return result;
}

double closure #1 in closure #2 in closure #1 in PlatformSliderStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t protocol witness for SliderStyle.makeBody(configuration:) in conformance PlatformSliderStyle@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = a1[7];
  v12[6] = a1[6];
  v12[7] = v6;
  v12[8] = a1[8];
  v7 = a1[3];
  v12[2] = a1[2];
  v12[3] = v7;
  v8 = a1[5];
  v12[4] = a1[4];
  v12[5] = v8;
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>>(0);
  return closure #1 in PlatformSliderStyle.makeBody(configuration:)(v12, v5, v4, a2 + *(v10 + 44));
}

id SystemSlider.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v5 = MEMORY[0x1E69E6720];
  type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for UISlider.TrackConfiguration?, MEMORY[0x1E69DC5B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v79 - v7;
  v8 = type metadata accessor for UISlider.TrackConfiguration();
  v89 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlatformTickLabelItem(0);
  v92 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for UISlider.TrackConfiguration.Tick?, MEMORY[0x1E69DC5B0], v5);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v79 - v14;
  v16 = type metadata accessor for UISlider.TrackConfiguration.Tick();
  v93 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v79 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v79 - v21;
  v22 = *a2;
  v83 = a2[1];
  v90 = v22;
  v82 = *(a2 + 32);
  v23 = *(a2 + 5);
  v85 = *v2;
  v86 = v23;
  v84 = *(v2 + 8);
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v26 = *(v2 + 144);
  v138 = *(v2 + 128);
  v139 = v26;
  v140 = *(v2 + 160);
  v27 = *(v2 + 80);
  v134 = *(v2 + 64);
  v135 = v27;
  v28 = *(v2 + 112);
  v136 = *(v2 + 96);
  v137 = v28;
  v29 = *(v2 + 48);
  v132 = *(v2 + 32);
  v133 = v29;
  v101 = *(v2 + 176);
  v111 = v132;
  *&v112 = v29;
  outlined init with copy of SliderStyleConfiguration(&v132, &v122);
  type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v122);
  v30 = *&v122;

  v31 = Transaction.animation.getter();

  if (v31)
  {
  }

  *&v32 = v30;
  [a1 setValue:v31 != 0 animated:v32];
  result = specialized Environment.wrappedValue.getter(v24, v25);
  if (result == 2)
  {
    result = [a1 setSliderStyle_];
  }

  v34 = *(&v137 + 1);
  v35 = v102;
  if (*(&v137 + 1))
  {
    v97 = *(*(&v137 + 1) + 16);
    if (v97)
    {
      v80 = v8;
      v81 = a1;
      v36 = 0;
      v94 = (v93 + 48);
      v95 = (v93 + 56);
      v37 = *(&v137 + 1) + 40;
      v99 = (v93 + 32);
      v100 = MEMORY[0x1E69E7CC0];
      v96 = *(&v137 + 1);
      while (v36 < *(v34 + 16))
      {

        UISlider.TrackConfiguration.Tick.init(position:title:image:)();
        if (v36 < *(v101 + 16))
        {
          outlined init with copy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v101 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v36, v12, type metadata accessor for PlatformTickLabelItem);
          v38 = *(v12 + 112);
          if (v38)
          {
            v39 = v16;
            v40 = v15;
            v41 = [v38 string];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v15 = v40;
            v16 = v39;
          }

          UISlider.TrackConfiguration.Tick.title.setter();
          v42 = *(v12 + 13);
          v43 = *(v12 + 11);
          v119 = *(v12 + 12);
          v120 = v42;
          v44 = *(v12 + 13);
          v121[0] = *(v12 + 14);
          *(v121 + 11) = *(v12 + 235);
          v45 = *(v12 + 9);
          v46 = *(v12 + 7);
          v115 = *(v12 + 8);
          v116 = v45;
          v47 = *(v12 + 9);
          v48 = *(v12 + 11);
          v117 = *(v12 + 10);
          v118 = v48;
          v49 = *(v12 + 5);
          v111 = *(v12 + 4);
          v112 = v49;
          v50 = *(v12 + 7);
          v52 = *(v12 + 4);
          v51 = *(v12 + 5);
          v113 = *(v12 + 6);
          v114 = v50;
          v129 = v119;
          v130 = v44;
          v131[0] = *(v12 + 14);
          *(v131 + 11) = *(v12 + 235);
          v126 = v115;
          v127[0] = v47;
          v127[1] = v117;
          v128 = v43;
          v122 = v52;
          v123 = v51;
          v124 = v113;
          v125 = v46;
          if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v122) != 1)
          {
            if (v130)
            {
              swift_unknownObjectRetain();
              objc_opt_self();
              swift_dynamicCastObjCClassUnconditional();
            }

            else
            {
              v109 = v126;
              v110[0] = v127[0];
              *(v110 + 12) = *(v127 + 12);
              v105 = v122;
              v106 = v123;
              v107 = v124;
              v108 = v125;
              v53 = *(v12 + 6);
              outlined init with copy of Image.Resolved?(&v111, v103);
              outlined init with copy of GraphicsImage(&v122, v103);
              GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v53);
              outlined destroy of Image.Resolved?(&v111, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>);
              v103[4] = v109;
              v104[0] = v110[0];
              *(v104 + 12) = *(v110 + 12);
              v103[0] = v105;
              v103[1] = v106;
              v103[2] = v107;
              v103[3] = v108;
              outlined destroy of GraphicsImage(v103);
            }
          }

          v35 = v102;
          UISlider.TrackConfiguration.Tick.image.setter();
          outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v12, type metadata accessor for PlatformTickLabelItem);
        }

        v54 = *v99;
        (*v99)(v15, v35, v16);
        (*v95)(v15, 0, 1, v16);

        if ((*v94)(v15, 1, v16) == 1)
        {
          result = outlined destroy of Image.Resolved?(v15, &lazy cache variable for type metadata for UISlider.TrackConfiguration.Tick?, MEMORY[0x1E69DC5B0], MEMORY[0x1E69E6720], type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>);
        }

        else
        {
          v55 = v91;
          v54(v91, v15, v16);
          v54(v98, v55, v16);
          v56 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
          }

          v58 = v56[2];
          v57 = v56[3];
          v100 = v56;
          if (v58 >= v57 >> 1)
          {
            v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v100);
          }

          v59 = v100;
          v100[2] = v58 + 1;
          result = (v54)(v59 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v58, v98, v16);
          v35 = v102;
        }

        ++v36;
        v37 += 16;
        v34 = v96;
        if (v97 == v36)
        {
          v8 = v80;
          a1 = v81;
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_34;
    }
  }

LABEL_27:
  v60 = v88;
  result = UISlider.TrackConfiguration.init(allowsTickValuesOnly:neutralValue:enabledRange:ticks:)();
  v61 = v89;
  if ((v135 & 1) == 0)
  {
    v62 = *&v134;
    v63 = *(&v134 + 1);
    if (v62 > v63)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    UISlider.TrackConfiguration.enabledRange.setter();
  }

  v64 = v87;
  (*(v61 + 16))(v87, v60, v8);
  (*(v61 + 56))(v64, 0, 1, v8);
  UISlider.trackConfiguration.setter();
  if (specialized Environment.wrappedValue.getter(v85, v84))
  {
    v122 = v90;
    v123 = v83;
    LOBYTE(v124) = v82;
    RepresentableContextValues.environment.getter();
    v122 = v111;
    dispatch thunk of AnyColorBox.resolve(in:)();

    v65 = Color.Resolved.kitColor.getter();
    objc_opt_self();
    [a1 setTintColor_];
  }

  (*(v61 + 8))(v60, v8);
  v66 = (v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration);
  v122 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration);
  v67 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 64);
  v69 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 16);
  v68 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 32);
  v125 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 48);
  v126 = v67;
  v123 = v69;
  v124 = v68;
  v70 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 128);
  v72 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 80);
  v71 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 96);
  v128 = *(v86 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 112);
  v129 = v70;
  v127[0] = v72;
  v127[1] = v71;
  *v66 = v132;
  v73 = v133;
  v74 = v134;
  v75 = v136;
  v66[3] = v135;
  v66[4] = v75;
  v66[1] = v73;
  v66[2] = v74;
  v76 = v137;
  v77 = v138;
  v78 = v140;
  v66[7] = v139;
  v66[8] = v78;
  v66[5] = v76;
  v66[6] = v77;
  return outlined destroy of SliderStyleConfiguration(&v122);
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance SystemSlider(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF60]) init];
  [v2 addTarget:v1 action:sel_valueChanged_ forControlEvents:4096];
  [v2 addTarget:v1 action:sel_editingEnded_ forControlEvents:448];
  return v2;
}

void *protocol witness for UIViewRepresentable.makeCoordinator() in conformance SystemSlider@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 144);
  v29 = *(v1 + 128);
  v30 = v3;
  v31 = *(v1 + 160);
  v4 = *(v1 + 80);
  v25 = *(v1 + 64);
  v26 = v4;
  v5 = *(v1 + 112);
  v27 = *(v1 + 96);
  v28 = v5;
  v6 = *(v1 + 48);
  v23 = *(v1 + 32);
  v24 = v6;
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  v9 = type metadata accessor for Coordinator();
  v10 = *(v1 + 200);
  v11 = objc_allocWithZone(v9);
  v11[OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_isUpdating] = 0;
  v12 = &v11[OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration];
  *v12 = v23;
  v13 = v27;
  v15 = v24;
  v14 = v25;
  v12[3] = v26;
  v12[4] = v13;
  v12[1] = v15;
  v12[2] = v14;
  v16 = v31;
  v18 = v28;
  v17 = v29;
  v12[7] = v30;
  v12[8] = v16;
  v12[5] = v18;
  v12[6] = v17;
  v19 = &v11[OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator__symbolEffectState];
  *v19 = v7;
  v19[1] = v8;
  v19[2] = v10;
  outlined init with copy of SliderStyleConfiguration(&v23, v22);
  v21.receiver = v11;
  v21.super_class = v9;

  result = objc_msgSendSuper2(&v21, sel_init);
  *a1 = result;
  return result;
}

void Coordinator.valueChanged(_:)(void *a1)
{
  [a1 value];
  v4 = v3;
  v5 = (v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration);
  v6 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 8);
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 16);
  *&v29 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration);
  *(&v29 + 1) = v6;
  *&v30 = v7;
  type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  v9 = v8;
  v10 = MEMORY[0x18D00ACC0](&v25);
  if (v25 != v4)
  {
    if ((*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_isUpdating) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_isUpdating) = 1;
      MEMORY[0x1EEE9AC00](v10);
      LOBYTE(v29) = 17;
      MEMORY[0x1EEE9AC00](v11);
      static Update.dispatchImmediately<A>(reason:_:)();
    }

    v12 = v5[7];
    v35 = v5[6];
    v36 = v12;
    v37 = v5[8];
    v13 = v5[1];
    v29 = *v5;
    v30 = v13;
    v14 = v5[3];
    v31 = v5[2];
    v32 = v14;
    v15 = v5[5];
    v33 = v5[4];
    v34 = v15;
    v28 = v4;
    outlined init with copy of SliderStyleConfiguration(&v29, &v25);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of SliderStyleConfiguration(&v29);
    v16 = *(v5 + 1);
    v17 = *(v5 + 2);
    v25 = *v5;
    v26 = v16;
    v27 = v17;
    MEMORY[0x18D00ACC0](&v28, v9);
    HIDWORD(v18) = HIDWORD(v28);
    *&v18 = v28;
    [a1 setValue_];
    v19 = *(v5 + 1);
    v20 = *(v5 + 2);
    v25 = *v5;
    v26 = v19;
    v27 = v20;
    MEMORY[0x18D00ACC0](&v28, v9);
    v21 = v28;
    v22 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator__symbolEffectState + 8);
    v25 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator__symbolEffectState);
    v26 = v22;
    v27 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator__symbolEffectState + 16);
    type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(0, &lazy cache variable for type metadata for Binding<PlatformSliderStyle.SymbolEffectState>, &type metadata for PlatformSliderStyle.SymbolEffectState, MEMORY[0x1E6981948]);
    v24 = v23;

    MEMORY[0x18D00ACC0](&v28, v24);
    if (v21 == 0.0)
    {
      ++LODWORD(v28);
    }

    else if (v21 == 1.0)
    {
      ++HIDWORD(v28);
    }

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }
}

uint64_t assignWithCopy for PlatformSliderStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithTake for PlatformSliderStyle(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>, type metadata accessor for (ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>), MEMORY[0x1E6981F40]);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(255);
    type metadata accessor for ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)
  {
    type metadata accessor for ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>(255, &lazy cache variable for type metadata for ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, &lazy cache variable for type metadata for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, &type metadata for SliderStyleConfiguration.MinimumValueLabel, &protocol witness table for SliderStyleConfiguration.MinimumValueLabel);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>)
  {
    type metadata accessor for PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>);
    }
  }
}

void type metadata accessor for PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>(255);
    v3 = v2;
    type metadata accessor for ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    v7[0] = &type metadata for AllPlatformItemListFlags;
    v7[1] = v3;
    v7[2] = v4;
    v7[3] = &protocol witness table for AllPlatformItemListFlags;
    v7[4] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>();
    v7[5] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?> and conformance <> ForEach<A, B, C>, lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>);
    v5 = type metadata accessor for PlatformItemListReader(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>(255);
    type metadata accessor for AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>)
  {
    type metadata accessor for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>(255, &lazy cache variable for type metadata for ModifiedContent<SystemSlider, _FrameLayout>, &type metadata for SystemSlider, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext, MEMORY[0x1E69808E8]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>);
    }
  }
}

void type metadata accessor for AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E73E0];
    v4[1] = &type metadata for SliderStyleConfiguration.Label;
    v4[2] = MEMORY[0x1E6982070];
    v4[3] = &protocol witness table for SliderStyleConfiguration.Label;
    v2 = type metadata accessor for AccessibilityProxyTransformModifier(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>(255);
    type metadata accessor for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>)
  {
    type metadata accessor for [SliderTick<Double>](255);
    _s7SwiftUI10SliderTickVySdGMaTm_0(255, &lazy cache variable for type metadata for SliderTick<Double>.ID, type metadata accessor for SliderTick.ID);
    type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(255, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type [SliderTick<Double>] and conformance [A](&lazy protocol witness table cache variable for type [SliderTick<Double>] and conformance [A], type metadata accessor for [SliderTick<Double>], MEMORY[0x1E69E6338]);
    lazy protocol witness table accessor for type SliderTick<Double> and conformance SliderTick<A>(&lazy protocol witness table cache variable for type SliderTick<Double>.ID and conformance SliderTick<A>.ID, &lazy cache variable for type metadata for SliderTick<Double>.ID, type metadata accessor for SliderTick.ID, protocol conformance descriptor for SliderTick<A>.ID);
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>);
    }
  }
}

void type metadata accessor for [SliderTick<Double>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [SliderTick<Double>])
  {
    _s7SwiftUI10SliderTickVySdGMaTm_0(255, &lazy cache variable for type metadata for SliderTick<Double>, type metadata accessor for SliderTick);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [SliderTick<Double>]);
    }
  }
}

void _s7SwiftUI10SliderTickVySdGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Double and conformance Double();
    v7 = a3(a1, MEMORY[0x1E69E63B0], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type SliderTick<Double> and conformance SliderTick<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI10SliderTickVySdGMaTm_0(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<SystemSlider, _FrameLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SystemSlider, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SystemSlider, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SystemSlider, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>(255, &lazy cache variable for type metadata for ModifiedContent<SystemSlider, _FrameLayout>, &type metadata for SystemSlider, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for SystemSlider;
    v4[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SystemSlider, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v6[5] = v0;
    v6[6] = v1;
    type metadata accessor for StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v6[0] = MEMORY[0x1E6981CD0];
    v6[1] = v5;
    v6[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type OutsetByRowInsets and conformance OutsetByRowInsets();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext, MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?> and conformance <> ForEach<A, B, C>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AnyView? and conformance <A> A?();
    result = swift_getWitnessTable(MEMORY[0x1E69819D0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AnyView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AnyView? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(255, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    v4[0] = MEMORY[0x1E6981900];
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyView? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)
  {
    type metadata accessor for ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>(255, &lazy cache variable for type metadata for ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, &lazy cache variable for type metadata for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, &type metadata for SliderStyleConfiguration.MaximumValueLabel, &protocol witness table for SliderStyleConfiguration.MaximumValueLabel);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>(255, a3, a4, a5, type metadata accessor for PlatformSliderStyle.ValueLabel);
    type metadata accessor for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>(255, &lazy cache variable for type metadata for _DiscreteSymbolEffectModifier<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E7688], type metadata accessor for _DiscreteSymbolEffectModifier);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PlatformTickLabelItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlatformTickLabelItem;
  if (!type metadata singleton initialization cache for PlatformTickLabelItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of PlatformTickLabelItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformTickLabelItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in Coordinator.valueChanged(_:)(uint64_t a1)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 56);

  v3(a1);

  return result;
}

char *initializeBufferWithCopyOfBuffer for PlatformTickLabelItem(char *a1, char **a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = &v6[(v5 + 16) & ~v5];
    goto LABEL_58;
  }

  v8 = a2[1];
  v7 = a2[2];
  *(a1 + 1) = v8;
  *(a1 + 2) = v7;
  *(a1 + 3) = a2[3];
  a1[32] = *(a2 + 32);
  v9 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v9;
  a1[56] = *(a2 + 56);
  v10 = a2[24];
  v11 = v6;
  v12 = v8;

  if (v10 >> 1 != 4294967294)
  {
    v22 = *(a2 + 72);
    if (v22 == 255)
    {
      *(a1 + 8) = a2[8];
      a1[72] = *(a2 + 72);
    }

    else
    {
      v23 = a2[8];
      outlined copy of GraphicsImage.Contents(v23, *(a2 + 72));
      *(a1 + 8) = v23;
      a1[72] = v22;
      v10 = a2[24];
    }

    *(a1 + 10) = a2[10];
    *(a1 + 88) = *(a2 + 11);
    a1[104] = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    a1[170] = *(a2 + 170);
    a1[171] = *(a2 + 171);
    if (v10 >> 1 == 0xFFFFFFFF)
    {
      v24 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v24;
    }

    else
    {
      v25 = a2[22];
      v26 = a2[23];
      v27 = a2[25];
      outlined copy of AccessibilityImageLabel(v25, v26, v10, v27);
      *(a1 + 22) = v25;
      *(a1 + 23) = v26;
      *(a1 + 24) = v10;
      *(a1 + 25) = v27;
    }

    v28 = a2[27];
    *(a1 + 26) = a2[26];
    *(a1 + 27) = v28;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    a1[232] = *(a2 + 232);
    v29 = a2[30];
    *(a1 + 30) = v29;
    *(a1 + 124) = *(a2 + 124);
    a1[250] = *(a2 + 250);
    swift_unknownObjectRetain();

    v30 = v29;
    v18 = a2[33];
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_15:
    v31 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v31;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_16;
  }

  v13 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v13;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v14 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v14;
  v15 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v15;
  v16 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v16;
  v17 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v17;
  v18 = a2[33];
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 32) = a2[32];
  *(a1 + 33) = v18;
  v19 = a2[34];

  if (v19 >= 2)
  {
    v20 = v19;
  }

  *(a1 + 34) = v19;
  *(a1 + 70) = *(a2 + 70);
  a1[284] = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v21 = a2[37];
  *(a1 + 36) = a2[36];
  *(a1 + 37) = v21;

LABEL_16:
  v32 = a2[42];
  v105 = v4;
  if (v32 >> 2 == 0xFFFFFFFF)
  {
    v33 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v33;
    *(a1 + 50) = a2[50];
    v34 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v34;
    v35 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v35;
  }

  else
  {
    v36 = a2[38];
    v37 = a2[39];
    v38 = a2[40];
    v39 = a2[41];
    v40 = a2[43];
    v41 = a2[44];
    v42 = a2[45];
    v95 = a2[46];
    v96 = a2[47];
    v98 = a2[48];
    v100 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v36, v37, v38, v39, v32, v40, v41, v42, v95, v96, v98, v100, __dsta);
    *(a1 + 38) = v36;
    *(a1 + 39) = v37;
    *(a1 + 40) = v38;
    *(a1 + 41) = v39;
    *(a1 + 42) = v32;
    *(a1 + 43) = v40;
    *(a1 + 44) = v41;
    *(a1 + 45) = v42;
    *(a1 + 46) = v95;
    *(a1 + 47) = v96;
    *(a1 + 48) = v98;
    *(a1 + 49) = v100;
    v4 = v105;
    *(a1 + 50) = __dsta;
  }

  v43 = a2[52];
  if (v43 == 1)
  {
    v44 = *(a2 + 57);
    *(a1 + 440) = *(a2 + 55);
    *(a1 + 456) = v44;
    a1[472] = *(a2 + 472);
    v45 = *(a2 + 53);
    *(a1 + 408) = *(a2 + 51);
    *(a1 + 424) = v45;
    goto LABEL_29;
  }

  *(a1 + 102) = *(a2 + 102);
  a1[412] = *(a2 + 412);
  if (v43)
  {
    v46 = a2[53];
    *(a1 + 52) = v43;
    *(a1 + 53) = v46;

    v47 = a2[54];
    if (v47)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 27) = *(a2 + 27);
    v49 = a2[56];
    if (v49)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_28;
  }

  *(a1 + 26) = *(a2 + 26);
  v47 = a2[54];
  if (!v47)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = a2[55];
  *(a1 + 54) = v47;
  *(a1 + 55) = v48;

  v49 = a2[56];
  if (!v49)
  {
    goto LABEL_27;
  }

LABEL_24:
  v50 = a2[57];
  *(a1 + 56) = v49;
  *(a1 + 57) = v50;

LABEL_28:
  *(a1 + 58) = a2[58];
  a1[472] = *(a2 + 472);
LABEL_29:
  v51 = a2[61];
  *(a1 + 60) = a2[60];
  *(a1 + 61) = v51;
  *(a1 + 62) = a2[62];
  a1[504] = *(a2 + 504);
  v52 = a2[64];

  if (v52)
  {
    v53 = a2[65];
    *(a1 + 64) = v52;
    *(a1 + 65) = v53;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  a1[528] = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 536, a2 + 67, 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 67) = a2[67];
  *(a1 + 68) = a2[68];
  a1[552] = *(a2 + 552);
  *(a1 + 70) = a2[70];
  a1[568] = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  a1[592] = *(a2 + 592);
  v54 = a1 + 600;
  v55 = a2 + 75;
  v56 = a2[78];

  if (!v56)
  {
    v58 = *(a2 + 77);
    *v54 = *v55;
    *(a1 + 616) = v58;
    *(a1 + 79) = a2[79];
LABEL_39:
    *(a1 + 80) = a2[80];

    goto LABEL_40;
  }

  if (v56 != 1)
  {
    *(a1 + 78) = v56;
    *(a1 + 79) = a2[79];
    (**(v56 - 1))(a1 + 600, a2 + 75, v56);
    goto LABEL_39;
  }

  v57 = *(a2 + 77);
  *v54 = *v55;
  *(a1 + 616) = v57;
  *(a1 + 632) = *(a2 + 79);
LABEL_40:
  *(a1 + 81) = a2[81];
  a1[656] = *(a2 + 656);
  v59 = a1 + 664;
  v60 = a2 + 83;
  v61 = a2[97];
  if (v61 == 1)
  {
    v62 = *(a2 + 97);
    *(a1 + 760) = *(a2 + 95);
    *(a1 + 776) = v62;
    *(a1 + 792) = *(a2 + 99);
    a1[808] = *(a2 + 808);
    v63 = *(a2 + 89);
    *(a1 + 696) = *(a2 + 87);
    *(a1 + 712) = v63;
    v64 = *(a2 + 93);
    *(a1 + 728) = *(a2 + 91);
    *(a1 + 744) = v64;
    v65 = *(a2 + 85);
    *v59 = *v60;
    *(a1 + 680) = v65;
  }

  else
  {
    *v59 = *v60;
    a1[672] = *(a2 + 672);
    *(a1 + 85) = a2[85];
    a1[688] = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    a1[691] = *(a2 + 691);
    a1[692] = *(a2 + 692);
    *(a1 + 87) = a2[87];
    v66 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v66;
    *(a1 + 92) = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    a1[768] = *(a2 + 768);
    *(a1 + 97) = v61;
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 100) = a2[100];
    a1[808] = *(a2 + 808);
  }

  *(a1 + 102) = a2[102];
  *(a1 + 103) = a2[103];
  *(a1 + 104) = a2[104];

LABEL_44:
  v67 = a1 + 840;
  v68 = a2 + 105;
  v69 = a2[108];
  if (!v69)
  {
    v71 = *(a2 + 107);
    *v67 = *v68;
    *(a1 + 856) = v71;
    *(a1 + 109) = a2[109];
    v72 = a2[110];
    if (!v72)
    {
LABEL_50:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_51;
    }

LABEL_48:
    v73 = a2[111];
    *(a1 + 110) = v72;
    *(a1 + 111) = v73;

    goto LABEL_51;
  }

  if (v69 != 1)
  {
    *(a1 + 108) = v69;
    *(a1 + 109) = a2[109];
    (**(v69 - 1))(v67, v68);
    v72 = a2[110];
    if (!v72)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v70 = *(a2 + 107);
  *v67 = *v68;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 109);
  *(a1 + 111) = a2[111];
LABEL_51:
  v74 = a2[112];
  *(a1 + 112) = v74;
  *(a1 + 113) = a2[113];
  *(a1 + 114) = a2[114];
  *(a1 + 115) = a2[115];
  *(a1 + 116) = a2[116];
  *(a1 + 117) = a2[117];
  *(a1 + 118) = a2[118];
  *(a1 + 476) = *(a2 + 476);
  a1[954] = *(a2 + 954);
  v75 = *(v4 + 112);
  __dst = &a1[v75];
  v76 = a2 + v75;
  v77 = type metadata accessor for CommandOperation(0);
  v99 = *(v77 - 8);
  v101 = *(v99 + 48);
  v78 = v74;

  if (v101(v76, 1, v77))
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v76, *(*(v79 - 8) + 64));
    v80 = v105;
  }

  else
  {
    *__dst = *v76;
    v81 = *(v77 + 20);
    v82 = &__dst[v81];
    v83 = &v76[v81];
    v102 = v76;
    v84 = v77;
    v85 = *v83;
    v86 = *(v83 + 1);
    v87 = v83[16];
    outlined copy of Text.Storage(*v83, v86, v87);
    *v82 = v85;
    *(v82 + 1) = v86;
    v82[16] = v87;
    *(v82 + 3) = *(v83 + 3);
    v88 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v89 = type metadata accessor for UUID();
    v97 = *(*(v89 - 8) + 16);

    v97(&v82[v88], &v83[v88], v89);
    v90 = *(v84 + 24);
    v91 = &__dst[v90];
    v92 = &v102[v90];
    if (*v92)
    {
      v93 = v92[1];
      *v91 = *v92;
      *(v91 + 1) = v93;
    }

    else
    {
      *v91 = *v92;
    }

    v80 = v105;
    (*(v99 + 56))(__dst, 0, 1, v84);
  }

  a1[v80[29]] = *(a2 + v80[29]);
  a1[v80[30]] = *(a2 + v80[30]);
  a1[v80[31]] = *(a2 + v80[31]);
  a1[v80[32]] = *(a2 + v80[32]);
  a1[v80[33]] = *(a2 + v80[33]);
  *&a1[v80[34]] = *(a2 + v80[34]);
LABEL_58:

  return a1;
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t initializeWithCopy for PlatformTickLabelItem(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a2 + 192);
  v9 = v4;
  v10 = v5;

  if (v8 >> 1 != 4294967294)
  {
    v20 = *(a2 + 72);
    if (v20 == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v21 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v21, *(a2 + 72));
      *(a1 + 64) = v21;
      *(a1 + 72) = v20;
      v8 = *(a2 + 192);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v8 >> 1 == 0xFFFFFFFF)
    {
      v22 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v22;
    }

    else
    {
      v23 = *(a2 + 176);
      v24 = *(a2 + 184);
      v25 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v23, v24, v8, v25);
      *(a1 + 176) = v23;
      *(a1 + 184) = v24;
      *(a1 + 192) = v8;
      *(a1 + 200) = v25;
    }

    v26 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v26;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v27 = *(a2 + 240);
    *(a1 + 240) = v27;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v28 = v27;
    v16 = *(a2 + 264);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_13:
    v29 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v29;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_14;
  }

  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v12 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v12;
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v14;
  v15 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v15;
  v16 = *(a2 + 264);
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v16;
  v17 = *(a2 + 272);

  if (v17 >= 2)
  {
    v18 = v17;
  }

  *(a1 + 272) = v17;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v19 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v19;

LABEL_14:
  v30 = *(a2 + 336);
  if (v30 >> 2 == 0xFFFFFFFF)
  {
    v31 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v31;
    *(a1 + 400) = *(a2 + 400);
    v32 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v32;
    v33 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v33;
  }

  else
  {
    v34 = *(a2 + 304);
    v35 = *(a2 + 312);
    v36 = *(a2 + 320);
    v37 = *(a2 + 328);
    v38 = *(a2 + 344);
    v39 = *(a2 + 352);
    v40 = *(a2 + 360);
    v94 = *(a2 + 368);
    v96 = *(a2 + 376);
    v98 = *(a2 + 384);
    v100 = *(a2 + 392);
    __dsta = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v34, v35, v36, v37, v30, v38, v39, v40, v94, v96, v98, v100, __dsta);
    *(a1 + 304) = v34;
    *(a1 + 312) = v35;
    *(a1 + 320) = v36;
    *(a1 + 328) = v37;
    *(a1 + 336) = v30;
    *(a1 + 344) = v38;
    *(a1 + 352) = v39;
    *(a1 + 360) = v40;
    *(a1 + 368) = v94;
    *(a1 + 376) = v96;
    *(a1 + 384) = v98;
    *(a1 + 392) = v100;
    *(a1 + 400) = __dsta;
  }

  v41 = *(a2 + 416);
  if (v41 == 1)
  {
    v42 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v42;
    *(a1 + 472) = *(a2 + 472);
    v43 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v43;
    goto LABEL_27;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v41)
  {
    v44 = *(a2 + 424);
    *(a1 + 416) = v41;
    *(a1 + 424) = v44;

    v45 = *(a2 + 432);
    if (v45)
    {
      goto LABEL_21;
    }

LABEL_24:
    *(a1 + 432) = *(a2 + 432);
    v47 = *(a2 + 448);
    if (v47)
    {
      goto LABEL_22;
    }

LABEL_25:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_26;
  }

  *(a1 + 416) = *(a2 + 416);
  v45 = *(a2 + 432);
  if (!v45)
  {
    goto LABEL_24;
  }

LABEL_21:
  v46 = *(a2 + 440);
  *(a1 + 432) = v45;
  *(a1 + 440) = v46;

  v47 = *(a2 + 448);
  if (!v47)
  {
    goto LABEL_25;
  }

LABEL_22:
  v48 = *(a2 + 456);
  *(a1 + 448) = v47;
  *(a1 + 456) = v48;

LABEL_26:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_27:
  v49 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v49;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v50 = *(a2 + 512);

  if (v50)
  {
    v51 = *(a2 + 520);
    *(a1 + 512) = v50;
    *(a1 + 520) = v51;
  }

  else
  {
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_42;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v52 = (a1 + 600);
  v53 = (a2 + 600);
  v54 = *(a2 + 624);

  if (!v54)
  {
    v56 = *(a2 + 616);
    *v52 = *v53;
    *(a1 + 616) = v56;
    *(a1 + 632) = *(a2 + 632);
LABEL_37:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_38;
  }

  if (v54 != 1)
  {
    *(a1 + 624) = v54;
    *(a1 + 632) = *(a2 + 632);
    (**(v54 - 8))(a1 + 600, a2 + 600, v54);
    goto LABEL_37;
  }

  v55 = *(a2 + 616);
  *v52 = *v53;
  *(a1 + 616) = v55;
  *(a1 + 632) = *(a2 + 632);
LABEL_38:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v57 = (a1 + 664);
  v58 = (a2 + 664);
  v59 = *(a2 + 776);
  if (v59 == 1)
  {
    v60 = *(a2 + 776);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 776) = v60;
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v61 = *(a2 + 712);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 712) = v61;
    v62 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v62;
    v63 = *(a2 + 680);
    *v57 = *v58;
    *(a1 + 680) = v63;
  }

  else
  {
    *v57 = *v58;
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    v64 = *(a2 + 720);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = v64;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = v59;
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_42:
  v65 = (a1 + 840);
  v66 = (a2 + 840);
  v67 = *(a2 + 864);
  if (v67)
  {
    if (v67 == 1)
    {
      v68 = *(a2 + 856);
      *v65 = *v66;
      *(a1 + 856) = v68;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 888) = *(a2 + 888);
      goto LABEL_49;
    }

    *(a1 + 864) = v67;
    *(a1 + 872) = *(a2 + 872);
    (**(v67 - 8))(v65, v66);
    v70 = *(a2 + 880);
    if (!v70)
    {
      goto LABEL_48;
    }

LABEL_46:
    v71 = *(a2 + 888);
    *(a1 + 880) = v70;
    *(a1 + 888) = v71;

    goto LABEL_49;
  }

  v69 = *(a2 + 856);
  *v65 = *v66;
  *(a1 + 856) = v69;
  *(a1 + 872) = *(a2 + 872);
  v70 = *(a2 + 880);
  if (v70)
  {
    goto LABEL_46;
  }

LABEL_48:
  *(a1 + 880) = *(a2 + 880);
LABEL_49:
  v72 = *(a2 + 896);
  *(a1 + 896) = v72;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v73 = type metadata accessor for PlatformItemList.Item(0);
  v74 = *(v73 + 112);
  v101 = v73;
  __dst = (a1 + v74);
  v75 = (a2 + v74);
  v76 = type metadata accessor for CommandOperation(0);
  v77 = *(v76 - 8);
  v97 = *(v77 + 48);
  v78 = v72;

  if (v97(v75, 1, v76))
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v75, *(*(v79 - 8) + 64));
  }

  else
  {
    *__dst = *v75;
    v80 = *(v76 + 20);
    v81 = v75;
    v82 = &__dst[v80];
    v83 = &v81[v80];
    v84 = *&v81[v80];
    v85 = *&v81[v80 + 8];
    v86 = v81[v80 + 16];
    outlined copy of Text.Storage(v84, v85, v86);
    *v82 = v84;
    *(v82 + 1) = v85;
    v82[16] = v86;
    *(v82 + 3) = *(v83 + 3);
    v99 = v76;
    v87 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v88 = type metadata accessor for UUID();
    v95 = *(*(v88 - 8) + 16);

    v95(&v82[v87], &v83[v87], v88);
    v89 = *(v99 + 24);
    v90 = &__dst[v89];
    v91 = &v81[v89];
    if (*v91)
    {
      v92 = v91[1];
      *v90 = *v91;
      v90[1] = v92;
    }

    else
    {
      *v90 = *v91;
    }

    (*(v77 + 56))(__dst, 0, 1, v99);
  }

  *(a1 + v101[29]) = *(a2 + v101[29]);
  *(a1 + v101[30]) = *(a2 + v101[30]);
  *(a1 + v101[31]) = *(a2 + v101[31]);
  *(a1 + v101[32]) = *(a2 + v101[32]);
  *(a1 + v101[33]) = *(a2 + v101[33]);
  *(a1 + v101[34]) = *(a2 + v101[34]);

  return a1;
}

uint64_t assignWithCopy for PlatformTickLabelItem(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 286;
  v5 = *a1;
  v6 = *a2;
  *a1 = *a2;
  v7 = v6;

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  *(a1 + 8) = v9;
  v10 = v9;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 192) >> 1 == 4294967294)
  {
    if (v11 == 0x1FFFFFFFCLL)
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      v14 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v14;
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
      v15 = *(a2 + 128);
      v16 = *(a2 + 144);
      v17 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v17;
      *(a1 + 128) = v15;
      *(a1 + 144) = v16;
      v18 = *(a2 + 192);
      v19 = *(a2 + 208);
      v20 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v19;
      *(a1 + 224) = v20;
      *(a1 + 192) = v18;
    }

    else
    {
      v30 = *(a2 + 72);
      if (v30 == 255)
      {
        v36 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v36;
      }

      else
      {
        v31 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v31, *(a2 + 72));
        *(a1 + 64) = v31;
        *(a1 + 72) = v30;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v37 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v37;
      v38 = *(a2 + 136);
      v39 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v39;
      *(a1 + 136) = v38;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v40 = *(a2 + 192);
      if (v40 >> 1 == 0xFFFFFFFF)
      {
        v41 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v41;
      }

      else
      {
        v42 = *(a2 + 176);
        v43 = *(a2 + 184);
        v44 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v42, v43, *(a2 + 192), v44);
        *(a1 + 176) = v42;
        *(a1 + 184) = v43;
        *(a1 + 192) = v40;
        *(a1 + 200) = v44;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v45 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v45;
      v46 = *(a2 + 240);
      *(a1 + 240) = v46;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v47 = v46;
    }
  }

  else if (v11 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    v21 = *(a2 + 112);
    v23 = *(a2 + 64);
    v22 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v21;
    *(a1 + 64) = v23;
    *(a1 + 80) = v22;
    v24 = *(a2 + 176);
    v26 = *(a2 + 128);
    v25 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v24;
    *(a1 + 128) = v26;
    *(a1 + 144) = v25;
    v28 = *(a2 + 208);
    v27 = *(a2 + 224);
    v29 = *(a2 + 192);
    *(a1 + 235) = *(a2 + 235);
    *(a1 + 208) = v28;
    *(a1 + 224) = v27;
    *(a1 + 192) = v29;
  }

  else
  {
    v32 = *(a2 + 72);
    if (*(a1 + 72) == 255)
    {
      if (v32 == 255)
      {
        v50 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v50;
      }

      else
      {
        v48 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v48, *(a2 + 72));
        *(a1 + 64) = v48;
        *(a1 + 72) = v32;
      }
    }

    else if (v32 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 64);
      v49 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v49;
    }

    else
    {
      v33 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v33, *(a2 + 72));
      v34 = *(a1 + 64);
      *(a1 + 64) = v33;
      v35 = *(a1 + 72);
      *(a1 + 72) = v32;
      outlined consume of GraphicsImage.Contents(v34, v35);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v51 = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 108) = v51;
    v52 = *(a2 + 136);
    v53 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v53;
    *(a1 + 136) = v52;
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    v54 = *(a2 + 192);
    v55 = v54 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
    {
      if (v55 == 0x1FFFFFFFELL)
      {
        v56 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v56;
      }

      else
      {
        v58 = *(a2 + 176);
        v59 = *(a2 + 184);
        v60 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v58, v59, *(a2 + 192), v60);
        *(a1 + 176) = v58;
        *(a1 + 184) = v59;
        *(a1 + 192) = v54;
        *(a1 + 200) = v60;
      }
    }

    else if (v55 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 176);
      v57 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v57;
    }

    else
    {
      v61 = *(a2 + 176);
      v62 = *(a2 + 184);
      v63 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v61, v62, *(a2 + 192), v63);
      v64 = *(a1 + 176);
      v65 = *(a1 + 184);
      v66 = *(a1 + 192);
      v67 = *(a1 + 200);
      *(a1 + 176) = v61;
      *(a1 + 184) = v62;
      *(a1 + 192) = v54;
      *(a1 + 200) = v63;
      outlined consume of AccessibilityImageLabel(v64, v65, v66, v67);
    }

    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    v68 = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 228) = v68;
    v69 = *(a1 + 240);
    v70 = *(a2 + 240);
    *(a1 + 240) = v70;
    v71 = v70;

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
  }

  v72 = *(a2 + 264);
  if (*(a1 + 264))
  {
    if (!v72)
    {
      outlined destroy of Image.NamedResolved(a1 + 256);
      v80 = *(a2 + 272);
      v79 = *(a2 + 288);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v80;
      *(a1 + 288) = v79;
      goto LABEL_44;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);

    v73 = *(a1 + 272);
    v74 = *(a2 + 272);
    if (v73 >= 2)
    {
      if (v74 >= 2)
      {
        *(a1 + 272) = v74;
        v83 = v74;

        goto LABEL_43;
      }

      v74 = *(a2 + 272);
    }

    else if (v74 >= 2)
    {
      *(a1 + 272) = v74;
      v75 = v74;
LABEL_43:
      v84 = *(a2 + 280);
      *(a1 + 284) = *(a2 + 284);
      *(a1 + 280) = v84;
      *(a1 + 285) = *(a2 + 285);
      *(a1 + 286) = *v4;
      *(a1 + 288) = *(a2 + 288);

      *(a1 + 296) = *(a2 + 296);

      goto LABEL_44;
    }

    *(a1 + 272) = v74;
    goto LABEL_43;
  }

  if (v72)
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    v76 = *(a2 + 272);

    if (v76 >= 2)
    {
      v77 = v76;
    }

    *(a1 + 272) = v76;
    v78 = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 280) = v78;
    *(a1 + 285) = *(a2 + 285);
    *(a1 + 286) = *(a2 + 286);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
  }

  else
  {
    v81 = *(a2 + 256);
    v82 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v82;
    *(a1 + 256) = v81;
  }

LABEL_44:
  v85 = *(a2 + 336);
  v86 = v85 & 0xFFFFFFFFFFFFFFFCLL;
  if (*(a1 + 336) >> 2 == 0xFFFFFFFFLL)
  {
    if (v86 == 0x3FFFFFFFCLL)
    {
      v87 = *(a2 + 304);
      v88 = *(a2 + 336);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 336) = v88;
      *(a1 + 304) = v87;
      v89 = *(a2 + 352);
      v90 = *(a2 + 368);
      v91 = *(a2 + 384);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 368) = v90;
      *(a1 + 384) = v91;
      *(a1 + 352) = v89;
    }

    else
    {
      v97 = *(a2 + 304);
      v98 = *(a2 + 312);
      v282 = v4;
      v99 = *(a2 + 320);
      v100 = *(a2 + 328);
      v101 = *(a2 + 344);
      v102 = *(a2 + 352);
      v103 = *(a2 + 360);
      v270 = *(a2 + 368);
      v272 = *(a2 + 376);
      v274 = *(a2 + 384);
      v276 = *(a2 + 392);
      v279 = *(a2 + 400);
      outlined copy of PlatformItemList.Item.SystemItem(v97, v98, v99, v100, v85, v101, v102, v103, v270, v272, v274, v276, v279);
      *(a1 + 304) = v97;
      *(a1 + 312) = v98;
      *(a1 + 320) = v99;
      *(a1 + 328) = v100;
      *(a1 + 336) = v85;
      *(a1 + 344) = v101;
      *(a1 + 352) = v102;
      *(a1 + 360) = v103;
      *(a1 + 368) = v270;
      *(a1 + 376) = v272;
      *(a1 + 384) = v274;
      *(a1 + 392) = v276;
      v4 = v282;
      *(a1 + 400) = v279;
    }
  }

  else if (v86 == 0x3FFFFFFFCLL)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    v93 = *(a2 + 320);
    v92 = *(a2 + 336);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v93;
    *(a1 + 336) = v92;
    v95 = *(a2 + 368);
    v94 = *(a2 + 384);
    v96 = *(a2 + 352);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 368) = v95;
    *(a1 + 384) = v94;
    *(a1 + 352) = v96;
  }

  else
  {
    v104 = *(a2 + 304);
    v105 = *(a2 + 312);
    v283 = v4;
    v106 = *(a2 + 320);
    v107 = *(a2 + 328);
    v108 = *(a2 + 344);
    v109 = *(a2 + 352);
    v110 = *(a2 + 360);
    v271 = *(a2 + 368);
    v273 = *(a2 + 376);
    v275 = *(a2 + 384);
    v277 = *(a2 + 392);
    v280 = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v104, v105, v106, v107, v85, v108, v109, v110, v271, v273, v275, v277, v280);
    v111 = *(a1 + 304);
    v112 = *(a1 + 312);
    v113 = *(a1 + 320);
    v114 = *(a1 + 328);
    v115 = *(a1 + 336);
    v116 = *(a1 + 344);
    v117 = *(a1 + 352);
    v118 = *(a1 + 360);
    v119 = *(a1 + 368);
    v120 = *(a1 + 384);
    v121 = *(a1 + 400);
    *(a1 + 304) = v104;
    *(a1 + 312) = v105;
    *(a1 + 320) = v106;
    *(a1 + 328) = v107;
    *(a1 + 336) = v85;
    *(a1 + 344) = v108;
    *(a1 + 352) = v109;
    *(a1 + 360) = v110;
    *(a1 + 368) = v271;
    *(a1 + 376) = v273;
    *(a1 + 384) = v275;
    *(a1 + 392) = v277;
    v4 = v283;
    *(a1 + 400) = v280;
    outlined consume of PlatformItemList.Item.SystemItem(v111, v112, v113, v114, v115, v116, v117, v118, v119, *(&v119 + 1), v120, SBYTE8(v120), v121);
  }

  v122 = (a1 + 408);
  v123 = *(a1 + 416);
  v124 = *(a2 + 416);
  if (v123 == 1)
  {
    if (v124 == 1)
    {
      *v122 = *(v4 + 122);
      v125 = *(v4 + 138);
      v126 = *(v4 + 154);
      v127 = *(v4 + 170);
      *(a1 + 472) = *(v4 + 186);
      *(a1 + 440) = v126;
      *(a1 + 456) = v127;
      *(a1 + 424) = v125;
      goto LABEL_85;
    }

    *(a1 + 408) = *(a2 + 408);
    *(a1 + 409) = *(a2 + 409);
    *(a1 + 410) = *(a2 + 410);
    *(a1 + 411) = *(a2 + 411);
    *(a1 + 412) = *(a2 + 412);
    v131 = *(a2 + 416);
    if (v131)
    {
      v132 = *(a2 + 424);
      *(a1 + 416) = v131;
      *(a1 + 424) = v132;

      v133 = *(a2 + 432);
      if (v133)
      {
LABEL_58:
        v134 = *(a2 + 440);
        *(a1 + 432) = v133;
        *(a1 + 440) = v134;

        goto LABEL_64;
      }
    }

    else
    {
      *(a1 + 416) = *(a2 + 416);
      v133 = *(a2 + 432);
      if (v133)
      {
        goto LABEL_58;
      }
    }

    *(a1 + 432) = *(a2 + 432);
LABEL_64:
    v137 = *(a2 + 448);
    if (!v137)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  if (v124 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    *v122 = *(v4 + 122);
    v128 = *(v4 + 154);
    v129 = *(v4 + 170);
    v130 = *(v4 + 138);
    *(a1 + 472) = *(v4 + 186);
    *(a1 + 440) = v128;
    *(a1 + 456) = v129;
    *(a1 + 424) = v130;
    goto LABEL_85;
  }

  *(a1 + 408) = *(v4 + 122);
  *(a1 + 409) = *(v4 + 123);
  *(a1 + 410) = *(v4 + 124);
  *(a1 + 411) = *(v4 + 125);
  *(a1 + 412) = *(a2 + 412);
  v135 = *(a2 + 416);
  if (v123)
  {
    if (v135)
    {
      v136 = *(a2 + 424);
      *(a1 + 416) = v135;
      *(a1 + 424) = v136;

      goto LABEL_70;
    }
  }

  else if (v135)
  {
    v138 = *(a2 + 424);
    *(a1 + 416) = v135;
    *(a1 + 424) = v138;

    goto LABEL_70;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_70:
  v139 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v139)
    {
      v140 = *(a2 + 440);
      *(a1 + 432) = v139;
      *(a1 + 440) = v140;

      goto LABEL_77;
    }
  }

  else if (v139)
  {
    v141 = *(a2 + 440);
    *(a1 + 432) = v139;
    *(a1 + 440) = v141;

    goto LABEL_77;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_77:
  v137 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v137)
    {
LABEL_81:
      v143 = *(a2 + 456);
      *(a1 + 448) = v137;
      *(a1 + 456) = v143;

      goto LABEL_84;
    }

LABEL_83:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_84;
  }

  if (!v137)
  {

    goto LABEL_83;
  }

  v142 = *(a2 + 456);
  *(a1 + 448) = v137;
  *(a1 + 456) = v142;

LABEL_84:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_85:
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v144 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v144)
    {
      v145 = *(a2 + 520);
      *(a1 + 512) = v144;
      *(a1 + 520) = v145;

      goto LABEL_92;
    }
  }

  else if (v144)
  {
    v146 = *(a2 + 520);
    *(a1 + 512) = v144;
    *(a1 + 520) = v146;

    goto LABEL_92;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_92:
  *(a1 + 528) = *(a2 + 528);
  v147 = *(a2 + 816);
  if (*(a1 + 816))
  {
    if (v147)
    {
      *(a1 + 536) = *(a2 + 536);
      *(a1 + 544) = *(a2 + 544);

      *(a1 + 552) = *(a2 + 552);
      *(a1 + 560) = *(a2 + 560);

      *(a1 + 568) = *(a2 + 568);
      v148 = *(a2 + 576);
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 576) = v148;
      v149 = (a1 + 600);
      v150 = (a2 + 600);
      v151 = *(a1 + 624);
      v152 = *(a2 + 624);
      if (v151 != 1)
      {
        if (v152 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 600);
          v162 = *(a2 + 616);
          v161 = *(a2 + 632);
          *v149 = *v150;
          *(a1 + 616) = v162;
          *(a1 + 632) = v161;
        }

        else
        {
          if (v151)
          {
            if (v152)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 600), (a2 + 600));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 600);
              v180 = *(a2 + 632);
              v181 = *(a2 + 616);
              *v149 = *v150;
              *(a1 + 616) = v181;
              *(a1 + 632) = v180;
            }
          }

          else if (v152)
          {
            *(a1 + 624) = v152;
            *(a1 + 632) = *(a2 + 632);
            (**(v152 - 8))(a1 + 600, a2 + 600);
          }

          else
          {
            v182 = *v150;
            v183 = *(a2 + 616);
            *(a1 + 632) = *(a2 + 632);
            *v149 = v182;
            *(a1 + 616) = v183;
          }

          *(a1 + 640) = *(a2 + 640);
        }

        goto LABEL_124;
      }

      if (v152)
      {
        if (v152 == 1)
        {
          v153 = *v150;
          v154 = *(a2 + 632);
          *(a1 + 616) = *(a2 + 616);
          *(a1 + 632) = v154;
          *v149 = v153;
LABEL_124:
          v184 = *(a2 + 648);
          *(a1 + 656) = *(a2 + 656);
          *(a1 + 648) = v184;
          v185 = (a1 + 664);
          v186 = (a2 + 664);
          v187 = *(a2 + 776);
          if (*(a1 + 776) == 1)
          {
            if (v187 == 1)
            {
              v188 = *(a2 + 680);
              *v185 = *v186;
              *(a1 + 680) = v188;
              v189 = *(a2 + 696);
              v190 = *(a2 + 712);
              v191 = *(a2 + 744);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 744) = v191;
              *(a1 + 696) = v189;
              *(a1 + 712) = v190;
              v192 = *(a2 + 760);
              v193 = *(a2 + 776);
              v194 = *(a2 + 792);
              *(a1 + 808) = *(a2 + 808);
              *(a1 + 776) = v193;
              *(a1 + 792) = v194;
              *(a1 + 760) = v192;
            }

            else
            {
              v202 = *v186;
              *(a1 + 672) = *(a2 + 672);
              *v185 = v202;
              v203 = *(a2 + 680);
              *(a1 + 688) = *(a2 + 688);
              *(a1 + 680) = v203;
              *(a1 + 689) = *(a2 + 689);
              *(a1 + 690) = *(a2 + 690);
              *(a1 + 691) = *(v4 + 405);
              *(a1 + 692) = *(a2 + 692);
              *(a1 + 696) = *(a2 + 696);
              *(a1 + 704) = *(a2 + 704);
              *(a1 + 712) = *(a2 + 712);
              *(a1 + 720) = *(a2 + 720);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 736) = *(a2 + 736);
              *(a1 + 744) = *(a2 + 744);
              *(a1 + 745) = *(a2 + 745);
              *(a1 + 752) = *(a2 + 752);
              *(a1 + 760) = *(a2 + 760);
              *(a1 + 768) = *(a2 + 768);
              *(a1 + 776) = *(a2 + 776);
              v204 = *(a2 + 784);
              *(a1 + 800) = *(a2 + 800);
              *(a1 + 784) = v204;
              *(a1 + 808) = *(a2 + 808);
            }
          }

          else if (v187 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
            v195 = *(a2 + 680);
            *v185 = *v186;
            *(a1 + 680) = v195;
            v196 = *(a2 + 744);
            v198 = *(a2 + 696);
            v197 = *(a2 + 712);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 744) = v196;
            *(a1 + 696) = v198;
            *(a1 + 712) = v197;
            v200 = *(a2 + 776);
            v199 = *(a2 + 792);
            v201 = *(a2 + 760);
            *(a1 + 808) = *(a2 + 808);
            *(a1 + 776) = v200;
            *(a1 + 792) = v199;
            *(a1 + 760) = v201;
          }

          else
          {
            v205 = *v186;
            *(a1 + 672) = *(a2 + 672);
            *v185 = v205;
            v206 = *(a2 + 680);
            *(a1 + 688) = *(a2 + 688);
            *(a1 + 680) = v206;
            *(a1 + 689) = *(a2 + 689);
            *(a1 + 690) = *(a2 + 690);
            *(a1 + 691) = *(v4 + 405);
            *(a1 + 692) = *(a2 + 692);
            *(a1 + 696) = *(a2 + 696);
            *(a1 + 704) = *(a2 + 704);
            *(a1 + 712) = *(a2 + 712);
            *(a1 + 720) = *(a2 + 720);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 736) = *(a2 + 736);
            *(a1 + 744) = *(v4 + 458);
            *(a1 + 745) = *(v4 + 459);
            *(a1 + 752) = *(a2 + 752);
            *(a1 + 760) = *(a2 + 760);
            *(a1 + 768) = *(a2 + 768);
            *(a1 + 776) = *(a2 + 776);

            v207 = *(a2 + 784);
            *(a1 + 800) = *(a2 + 800);
            *(a1 + 784) = v207;
            *(a1 + 808) = *(a2 + 808);
          }

          *(a1 + 816) = *(a2 + 816);

          *(a1 + 824) = *(a2 + 824);

          *(a1 + 832) = *(a2 + 832);

          goto LABEL_132;
        }

        *(a1 + 624) = v152;
        *(a1 + 632) = *(a2 + 632);
        (**(v152 - 8))(a1 + 600, a2 + 600);
      }

      else
      {
        v178 = *v150;
        v179 = *(a2 + 616);
        *(a1 + 632) = *(a2 + 632);
        *v149 = v178;
        *(a1 + 616) = v179;
      }

      *(a1 + 640) = *(a2 + 640);

      goto LABEL_124;
    }

    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
LABEL_103:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_132;
  }

  if (!v147)
  {
    goto LABEL_103;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v155 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 576) = v155;
  v156 = (a1 + 600);
  v157 = (a2 + 600);
  v158 = *(a2 + 624);

  if (!v158)
  {
    v163 = *v157;
    v164 = *(a2 + 616);
    *(a1 + 632) = *(a2 + 632);
    *v156 = v163;
    *(a1 + 616) = v164;
LABEL_111:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_112;
  }

  if (v158 != 1)
  {
    *(a1 + 624) = v158;
    *(a1 + 632) = *(a2 + 632);
    (**(v158 - 8))(a1 + 600, a2 + 600, v158);
    goto LABEL_111;
  }

  v159 = *v157;
  v160 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v160;
  *v156 = v159;
LABEL_112:
  v165 = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 648) = v165;
  v166 = (a1 + 664);
  v167 = (a2 + 664);
  if (*(a2 + 776) == 1)
  {
    v168 = *(a2 + 680);
    *v166 = *v167;
    *(a1 + 680) = v168;
    v169 = *(a2 + 696);
    v170 = *(a2 + 712);
    v171 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v171;
    *(a1 + 696) = v169;
    *(a1 + 712) = v170;
    v172 = *(a2 + 760);
    v173 = *(a2 + 776);
    v174 = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 776) = v173;
    *(a1 + 792) = v174;
    *(a1 + 760) = v172;
  }

  else
  {
    v175 = *v167;
    *(a1 + 672) = *(a2 + 672);
    *v166 = v175;
    v176 = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 680) = v176;
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 690) = *(a2 + 690);
    *(a1 + 691) = *(v4 + 405);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 745) = *(a2 + 745);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = *(a2 + 776);
    v177 = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 784) = v177;
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_132:
  v208 = (a1 + 840);
  v209 = (a2 + 840);
  v210 = *(a1 + 864);
  v211 = *(a2 + 864);
  if (v210 == 1)
  {
    if (v211)
    {
      if (v211 == 1)
      {
        v212 = *v209;
        v213 = *(a2 + 856);
        v214 = *(a2 + 872);
        *(a1 + 888) = *(a2 + 888);
        *(a1 + 856) = v213;
        *(a1 + 872) = v214;
        *v208 = v212;
        goto LABEL_156;
      }

      *(a1 + 864) = v211;
      *(a1 + 872) = *(a2 + 872);
      (**(v211 - 8))(a1 + 840, a2 + 840);
    }

    else
    {
      v218 = *v209;
      v219 = *(a2 + 856);
      *(a1 + 872) = *(a2 + 872);
      *v208 = v218;
      *(a1 + 856) = v219;
    }

    v220 = *(a2 + 880);
    if (!v220)
    {
      goto LABEL_155;
    }

LABEL_153:
    v226 = *(a2 + 888);
    *(a1 + 880) = v220;
    *(a1 + 888) = v226;

    goto LABEL_156;
  }

  if (v211 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    v216 = *(a2 + 856);
    v215 = *(a2 + 872);
    v217 = *v209;
    *(a1 + 888) = *(a2 + 888);
    *(a1 + 856) = v216;
    *(a1 + 872) = v215;
    *v208 = v217;
    goto LABEL_156;
  }

  if (v210)
  {
    if (v211)
    {
      __swift_assign_boxed_opaque_existential_1((a1 + 840), (a2 + 840));
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1 + 840);
      v221 = *(a2 + 872);
      v222 = *(a2 + 856);
      *v208 = *v209;
      *(a1 + 856) = v222;
      *(a1 + 872) = v221;
    }
  }

  else if (v211)
  {
    *(a1 + 864) = v211;
    *(a1 + 872) = *(a2 + 872);
    (**(v211 - 8))(a1 + 840, a2 + 840);
  }

  else
  {
    v223 = *v209;
    v224 = *(a2 + 856);
    *(a1 + 872) = *(a2 + 872);
    *v208 = v223;
    *(a1 + 856) = v224;
  }

  v220 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v220)
    {
      v225 = *(a2 + 888);
      *(a1 + 880) = v220;
      *(a1 + 888) = v225;

      goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (v220)
  {
    goto LABEL_153;
  }

LABEL_155:
  *(a1 + 880) = *(a2 + 880);
LABEL_156:
  v227 = *(a1 + 896);
  v228 = *(a2 + 896);
  *(a1 + 896) = v228;
  v229 = v228;

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  *(a1 + 954) = *(a2 + 954);
  v230 = type metadata accessor for PlatformItemList.Item(0);
  v231 = v230[28];
  v232 = (a1 + v231);
  v233 = (a2 + v231);
  v234 = type metadata accessor for CommandOperation(0);
  v235 = *(v234 - 8);
  v236 = *(v235 + 48);
  v237 = v236(v232, 1, v234);
  v238 = v236(v233, 1, v234);
  if (!v237)
  {
    if (!v238)
    {
      *v232 = *v233;
      v253 = *(v234 + 20);
      v254 = &v232[v253];
      v285 = &v233[v253];
      v255 = *&v233[v253];
      v256 = *&v233[v253 + 8];
      v257 = v233[v253 + 16];
      outlined copy of Text.Storage(v255, v256, v257);
      v258 = *v254;
      v259 = *(v254 + 1);
      v260 = v254[16];
      *v254 = v255;
      *(v254 + 1) = v256;
      v254[16] = v257;
      outlined consume of Text.Storage(v258, v259, v260);
      *(v254 + 3) = *(v285 + 3);

      v261 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v262 = type metadata accessor for UUID();
      (*(*(v262 - 8) + 24))(&v254[v261], &v285[v261], v262);
      v263 = *(v234 + 24);
      v264 = &v232[v263];
      v265 = &v233[v263];
      v266 = *&v233[v263];
      if (*v264)
      {
        if (v266)
        {
          v267 = *(v265 + 1);
          *v264 = v266;
          v264[1] = v267;

          goto LABEL_168;
        }
      }

      else if (v266)
      {
        v269 = *(v265 + 1);
        *v264 = v266;
        v264[1] = v269;

        goto LABEL_168;
      }

      *v264 = *v265;
      goto LABEL_168;
    }

    outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v232, type metadata accessor for CommandOperation);
    goto LABEL_162;
  }

  if (v238)
  {
LABEL_162:
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v232, v233, *(*(v252 - 8) + 64));
    goto LABEL_168;
  }

  *v232 = *v233;
  v239 = *(v234 + 20);
  v240 = v233;
  v281 = v233;
  v284 = v232;
  v241 = &v232[v239];
  v242 = &v240[v239];
  v243 = *&v240[v239];
  v244 = *&v240[v239 + 8];
  v245 = v240[v239 + 16];
  outlined copy of Text.Storage(v243, v244, v245);
  *v241 = v243;
  *(v241 + 1) = v244;
  v241[16] = v245;
  *(v241 + 3) = *(v242 + 3);
  v246 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v247 = type metadata accessor for UUID();
  v278 = *(*(v247 - 8) + 16);

  v278(&v241[v246], &v242[v246], v247);
  v248 = *(v234 + 24);
  v249 = &v284[v248];
  v250 = &v281[v248];
  if (*v250)
  {
    v251 = v250[1];
    *v249 = *v250;
    v249[1] = v251;
  }

  else
  {
    *v249 = *v250;
  }

  (*(v235 + 56))(v284, 0, 1, v234);
LABEL_168:
  *(a1 + v230[29]) = *(a2 + v230[29]);
  *(a1 + v230[30]) = *(a2 + v230[30]);
  *(a1 + v230[31]) = *(a2 + v230[31]);
  *(a1 + v230[32]) = *(a2 + v230[32]);
  *(a1 + v230[33]) = *(a2 + v230[33]);
  *(a1 + v230[34]) = *(a2 + v230[34]);

  return a1;
}