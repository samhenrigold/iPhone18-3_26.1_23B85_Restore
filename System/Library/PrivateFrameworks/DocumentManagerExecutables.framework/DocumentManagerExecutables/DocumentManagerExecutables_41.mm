Swift::Bool __swiftcall DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessarySynchronously(timeout:)(Swift::Double timeout)
{
  v28 = type metadata accessor for DispatchTime();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = (&v27 - v16);
  v18 = dispatch_semaphore_create(0);
  v19 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D851B8], v9);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v13, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v22 = v18;
  DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(v17, 0, v20, partial apply for closure #1 in DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessarySynchronously(timeout:), v21);

  outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v1 + 8);
  v24 = v4;
  v25 = v28;
  v23(v24, v28);
  MEMORY[0x24C1FBB60](v8);
  v23(v8, v25);
  LOBYTE(v10) = static DispatchTimeoutResult.== infix(_:_:)();

  return (v10 & 1) == 0;
}

BOOL DOCBrowserHistoryDataSource.refreshNodesInHistoryItemIfNecessarySynchronously(timeout:historyItemToRefresh:)(uint64_t a1, double a2)
{
  v30 = type metadata accessor for DispatchTime();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = (&v29 - v18);
  v20 = dispatch_semaphore_create(0);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, v19, type metadata accessor for DOCBrowserHistoryItem);
  v21 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v12 + 104))(v15, *MEMORY[0x277D851B8], v11);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v24 = v20;
  DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(v19, 0, v22, partial apply for closure #2 in closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:), v23);

  outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v3 + 8);
  v26 = v6;
  v27 = v30;
  v25(v26, v30);
  MEMORY[0x24C1FBB60](v10);
  v25(v10, v27);
  LOBYTE(v12) = static DispatchTimeoutResult.== infix(_:_:)();

  return (v12 & 1) == 0;
}

void DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DOCBrowserHistoryItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(v13 + 28));
  v15 = [v14 fileProviderItem];
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  if ([v14 isRoot])
  {

LABEL_4:
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    outlined init with take of DOCBrowserHistoryItem(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);

    DOCRunInMainThread(_:)();

    return;
  }

  v27 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_itemManager];
  v19 = [v16 itemID];
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  outlined init with take of DOCBrowserHistoryItem(v12, v22 + v20);
  *(v22 + v21) = v3;
  v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a2;
  v23[1] = a3;
  aBlock[4] = partial apply for closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_80;
  v24 = _Block_copy(aBlock);
  v25 = v3;

  [v27 fetchParentsForItemID:v19 recursively:1 completionHandler:v24];
  _Block_release(v24);
}

double closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a1;
  v37 = a4;
  v35 = a3;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DOCBrowserHistoryItem(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v18 + 104))(v21, *MEMORY[0x277D851B8], v17);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v21, v17);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v35, &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  outlined init with take of DOCBrowserHistoryItem(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v23);
  *(v26 + v24) = v36;
  v28 = v37;
  v27 = v38;
  *(v26 + v25) = v37;
  v29 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v39;
  *v29 = v27;
  v29[1] = v30;
  aBlock[4] = partial apply for closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_186_0;
  v31 = _Block_copy(aBlock);

  v32 = v28;

  static DispatchQoS.unspecified.getter();
  v44 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v33 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v31);
  _Block_release(v31);

  (*(v43 + 8))(v8, v33);
  (*(v41 + 8))(v12, v42);

  return result;
}

double closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DOCBrowserHistoryItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocBox();
  v17 = v16;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, v16, type metadata accessor for DOCBrowserHistoryItem);
  if (a2)
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = a3;
    v20 = swift_allocObject();
    outlined init with take of DOCBrowserHistoryItem(v14, v20 + v18);
    *(v20 + v19) = a2;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
    a3 = v24;
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for closure #1 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:);
    *(v21 + 24) = v20;

    _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v21);
  }

  swift_beginAccess();
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v17, v14, type metadata accessor for DOCBrowserHistoryItem);
  (*((*MEMORY[0x277D85000] & *a3) + 0x1F0))(v14, 5.0);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v14, type metadata accessor for DOCBrowserHistoryItem);
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v15;

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)@<X0>(__objc2_prot **a1@<X0>, unint64_t a3@<X2>, id a5@<X8>)
{
  v8 = type metadata accessor for DOCBrowserHistoryItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  if (static UUID.== infix(_:_:)())
  {
    v30 = v12;
    if (a3 >> 62)
    {
      goto LABEL_19;
    }

    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v25 = v13;
      v26 = a1;
      v27 = v9;
      v28 = v8;
      v29 = a5;
      v32[0] = MEMORY[0x277D84F90];
      a5 = (a3 & 0xFFFFFFFFFFFFFF8);
      specialized ContiguousArray.reserveCapacity(_:)();
      v31 = a3 & 0xFFFFFFFFFFFFFF8;
      v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (1)
      {
        v13 = 0;
        v8 = a3 & 0xC000000000000001;
        v9 = v16 + 3;
        a1 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        while ((v16 ^ v13) != 0x8000000000000000)
        {
          v20 = v9 - 4;
          if (v8)
          {
            v17 = MEMORY[0x24C1FC540](v20, a3);
          }

          else
          {
            if ((v20 & 0x8000000000000000) != 0)
            {
              goto LABEL_17;
            }

            if (v20 >= *(v31 + 16))
            {
              goto LABEL_18;
            }

            v17 = *(a3 + 8 * v9);
          }

          v18 = v17;
          ++v13;
          v19 = [v17 providerDomainID];
          a5 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v19 node:v18];

          [a5 setIsFPV2_];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v9;
          if (v14 == v13)
          {
            v15 = v32[0];
            v8 = v28;
            a5 = v29;
            v9 = v27;
            v13 = v25;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v31 = a3 & 0xFFFFFFFFFFFFFF8;
        v23 = __CocoaSet.count.getter();
        v15 = MEMORY[0x277D84F90];
        if (!v23)
        {
          break;
        }

        v14 = v23;
        v32[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        result = __CocoaSet.count.getter();
        if (v14 < 0)
        {
          __break(1u);
          return result;
        }

        v16 = result;
        v25 = v13;
        v26 = a1;
        v27 = v9;
        v28 = v8;
        v29 = a5;
      }
    }

LABEL_14:
    v21 = v30;
    DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(0, 0, v15, v30);

    swift_beginAccess();
    outlined assign with take of DOCBrowserHistoryItem(v21, v13);
    swift_beginAccess();
    a1 = v13;
  }

  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, a5, type metadata accessor for DOCBrowserHistoryItem);
  return (*(v9 + 56))(a5, 0, 1, v8);
}

void DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a4;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v4, a4, type metadata accessor for DOCBrowserHistoryItem);
  v9 = type metadata accessor for DOCBrowserHistoryItem(0);
  v10 = v9[5];
  v11 = *(v8 + v10);
  v12 = refreshed #1 (optional:) in DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(v11, a1, a2);
  if (!v12)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    return;
  }

  v13 = v12;

  *(v8 + v10) = v13;
  v14 = v9[7];
  v15 = *(v8 + v14);
  v16 = refreshed #1 (optional:) in DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(v15, a1, a2);

  *(v8 + v14) = v16;
  v17 = v9[6];
  v18 = *(v8 + v17);
  if (!a3)
  {

    v16 = v18;
    goto LABEL_43;
  }

  if (v16)
  {
    if (v18 >> 62)
    {
      if (__CocoaSet.count.getter() < 2)
      {
        goto LABEL_6;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_6;
    }

    v72 = v16;
    v67 = v17;
    if ((v18 & 0xC000000000000001) != 0)
    {

      v63 = v16;
      v16 = a3;

      v64 = v63;
      v9 = MEMORY[0x24C1FC540](1, v18);
    }

    else
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_87;
      }

      v19 = *(v18 + 40);
      v16 = a3;

      v20 = v72;
      v9 = v19;
    }

    v18 = specialized Collection<>.firstIndex(of:)(v9, v16);
    v15 = v21;

    if (v15)
    {

      goto LABEL_43;
    }

    v71 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_249BA0290;
    v69 = v22;
    *(v22 + 32) = v72;
    v17 = v16 >> 62;
    if (!(v16 >> 62))
    {
      v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23;
      if (v23 < v18)
      {
        __break(1u);
        goto LABEL_93;
      }

LABEL_16:
      if (v23 >= v18)
      {
        if ((v18 & 0x8000000000000000) == 0)
        {
          if (v17)
          {
            v25 = __CocoaSet.count.getter();
          }

          else
          {
            v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v25 >= v24)
          {
            if ((v24 & 0x8000000000000000) == 0)
            {
              if ((a3 & 0xC000000000000001) == 0)
              {
                v15 = a3;

                v27 = v72;
                goto LABEL_31;
              }

              if (v18 == v24)
              {
                v15 = a3;

                v26 = v72;
                goto LABEL_30;
              }

              if (v18 < v24)
              {
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
                v15 = a3;

                v28 = v72;
                v29 = v18;
                do
                {
                  v30 = v29 + 1;
                  _ArrayBuffer._typeCheckSlowPath(_:)(v29);
                  v29 = v30;
                }

                while (v24 != v30);
LABEL_30:
                if (v17)
                {

                  a3 = _CocoaArrayWrapper.subscript.getter();
                  v9 = v32;
                  v18 = v33;
                  v24 = v34;

                  if (v24)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_34;
                }

LABEL_31:

                a3 = v15 & 0xFFFFFFFFFFFFFF8;
                v9 = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
                v24 = (2 * v24) | 1;
                if (v24)
                {
LABEL_35:
                  type metadata accessor for __ContiguousArrayStorageBase();
                  swift_unknownObjectRetain_n();
                  v37 = swift_dynamicCastClass();
                  if (!v37)
                  {
                    swift_unknownObjectRelease();
                    v37 = MEMORY[0x277D84F90];
                  }

                  v38 = *(v37 + 16);

                  if (!__OFSUB__(v24 >> 1, v18))
                  {
                    if (v38 == (v24 >> 1) - v18)
                    {
                      v36 = swift_dynamicCastClass();
                      swift_unknownObjectRelease_n();
                      a2 = v71;
                      v17 = v67;
                      if (v36)
                      {
LABEL_42:
                        v74[0] = v69;
                        specialized Array.append<A>(contentsOf:)(v36);

                        v16 = v69;
                        goto LABEL_43;
                      }

                      v36 = MEMORY[0x277D84F90];
LABEL_41:
                      swift_unknownObjectRelease();
                      goto LABEL_42;
                    }

                    goto LABEL_98;
                  }

LABEL_97:
                  __break(1u);
LABEL_98:
                  swift_unknownObjectRelease_n();
                }

LABEL_34:
                specialized _copyCollectionToContiguousArray<A>(_:)(a3, v9, v18, v24, v31);
                v36 = v35;
                a2 = v71;
                v17 = v67;
                goto LABEL_41;
              }

              __break(1u);
              goto LABEL_100;
            }

LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_87:
    if ((v16 & 0x8000000000000000) != 0)
    {
      v15 = v16;
    }

    else
    {
      v15 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v65 = __CocoaSet.count.getter();
    if (v65 < v18)
    {
      goto LABEL_101;
    }

    v24 = v65;
    v23 = __CocoaSet.count.getter();
    goto LABEL_16;
  }

LABEL_6:
  v16 = a3;

LABEL_43:
  v75 = MEMORY[0x277D84F90];
  v70 = v16;
  if (v16 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v68 = v17;
    v66 = v8;
    v40 = 0;
    v8 = v70;
    v41 = &selRef__setLocationsInBrowseTab_;
    while (1)
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x24C1FC540](v40, v8);
      }

      else
      {
        if (v40 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v42 = *(v8 + 8 * v40 + 32);
      }

      v43 = v42;
      v17 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (a1)
      {
        v44 = a2;
        v45 = v42;
        v46 = [v45 v41[408]];
        if (v46)
        {
          v47 = v46;
          v48 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
          v49 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
          v50 = &unk_285C9E320;
          v15 = v47;
        }

        else
        {
          v53 = [v45 representedTag];
          if (v53)
          {
            v54 = v53;
            v15 = FPTagFromDOCTag();

            v48 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
            v49 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
            v50 = &unk_285C9E3A0;
          }

          else
          {
            v48 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
            v49 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
            v50 = &unk_285C9E3C8;
          }
        }

        a2 = v44;
        v73[0] = v45;
        v73[1] = v45;
        v73[2] = v15;
        v73[4] = v50;
        v73[5] = v48;
        v73[6] = v49;
        v8 = v70;
        if (a1[2] && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(v73), (v56 & 1) != 0))
        {
          outlined init with copy of DOCIdentityHashableLocation(a1[7] + 56 * v55, v74);
          outlined destroy of DOCIdentityHashableLocation(v73);
          v52 = v74[0];
          outlined destroy of DOCIdentityHashableLocation(v74);
          v41 = &selRef__setLocationsInBrowseTab_;
          if (!a2)
          {
            goto LABEL_61;
          }
        }

        else
        {
          outlined destroy of DOCIdentityHashableLocation(v73);
          v52 = 0;
          v41 = &selRef__setLocationsInBrowseTab_;
          if (!a2)
          {
LABEL_61:
            if (v52)
            {
              goto LABEL_66;
            }

            goto LABEL_73;
          }
        }
      }

      else
      {
        v51 = v42;
        v52 = 0;
        if (!a2)
        {
          goto LABEL_61;
        }
      }

      if (v52 || (v52 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithTaggedItemsSourceRepresentedTag_]) != 0)
      {
LABEL_66:
        v57 = [v52 representedTag];
        if (v57)
        {

          v58 = [v43 isTaggedItemsSource];
          if (v58)
          {
            v59 = v43;
          }

          else
          {
            v59 = v52;
          }
        }

        else
        {
          v60 = [v43 v41[408]];
          if (v60 && (v60, (v61 = [v52 v41[408]]) != 0))
          {

            v59 = v43;
          }

          else
          {

            v59 = v52;
          }
        }

        goto LABEL_75;
      }

LABEL_73:
      v59 = v43;
LABEL_75:

      MEMORY[0x24C1FB090]();
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v40;
      v41 = &selRef__setLocationsInBrowseTab_;
      if (v17 == i)
      {
        v62 = v75;
        v8 = v66;
        v17 = v68;
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_84:

  *(v8 + v17) = v62;
}

uint64_t closure #2 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  swift_beginAccess();
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v8, v7, type metadata accessor for DOCBrowserHistoryItem);
  a1(v7);
  return outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v7, type metadata accessor for DOCBrowserHistoryItem);
}

id DOCBrowserHistoryDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

size_t closure #1 in DOCBrowserHistoryDataSource.shiftBackward()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd, &_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for DOCBrowserHistoryItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v38 - v21;
  outlined init with copy of DOCGridLayout.Spec?(a1, v13, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v23 = &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd;
    v24 = "2\t";
    v25 = v13;
    return outlined destroy of CharacterSet?(v25, v23, v24);
  }

  outlined init with take of DOCBrowserHistoryItem(v13, v22);
  v26 = *(v14 + 36);
  outlined init with copy of DOCGridLayout.Spec?(&v22[v26], v40, &_sypSgMd, &_sypSgMR);
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pMd, _s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v40, &_sypSgMd, &_sypSgMR);
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  outlined init with copy of DOCGridLayout.Spec?(&v42, v40, &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMd, &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMR);
  if (v41)
  {
    v39 = v26;
    v27 = v9;
    v28 = v18;
    v29 = v5;
    v30 = __swift_project_boxed_opaque_existential_1(v40, v41);
    v31 = *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0) + 24);
    if (!*(*(a1 + v31) + 16))
    {
      v32 = *v30;

      *(a1 + v31) = v32;
    }

    __swift_destroy_boxed_opaque_existential_0(v40);
    v5 = v29;
    v18 = v28;
    v9 = v27;
    v26 = v39;
  }

  else
  {
    outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMd, &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMR);
  }

  outlined init with copy of DOCGridLayout.Spec?(&v22[v26], v40, &_sypSgMd, &_sypSgMR);
  if (v41)
  {
    if (swift_dynamicCast())
    {

      goto LABEL_17;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v40, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v22, v5, type metadata accessor for DOCBrowserHistoryItem);
  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v5);
LABEL_17:
  v33 = *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0) + 20);
  v34 = *(a1 + v33);
  if (!v34[2])
  {
    __break(1u);
LABEL_23:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
    v34 = result;
    v36 = *(result + 16);
    if (v36)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v36 = v34[2];
  if (v36)
  {
LABEL_20:
    v37 = v36 - 1;
    outlined init with take of DOCBrowserHistoryItem(v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * (v36 - 1), v18);
    v34[2] = v37;
    *(a1 + v33) = v34;
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v22, type metadata accessor for DOCBrowserHistoryItem);
    outlined init with take of DOCBrowserHistoryItem(v18, v9);
    (*(v15 + 56))(v9, 0, 1, v14);
    outlined assign with take of IndexPath?(v9, a1, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
    v23 = &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMd;
    v24 = &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMR;
    v25 = &v42;
    return outlined destroy of CharacterSet?(v25, v23, v24);
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.shiftForward()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for DOCBrowserHistoryItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v29 - v17;
  outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  }

  outlined init with take of DOCBrowserHistoryItem(v9, v18);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v18, v14, type metadata accessor for DOCBrowserHistoryItem);
  v20 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v21 = *(v20 + 20);
  v22 = *(a1 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  result = outlined init with take of DOCBrowserHistoryItem(v14, v22 + v26 + *(v11 + 72) * v25);
  *(a1 + v21) = v22;
  v27 = *(a1 + *(v20 + 24));
  if (*(v27 + 16))
  {
    v28 = v30;
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v27 + v26, v30, type metadata accessor for DOCBrowserHistoryItem);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v18, type metadata accessor for DOCBrowserHistoryItem);
    (*(v11 + 56))(v28, 0, 1, v10);
    return outlined assign with take of IndexPath?(v28, a1, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCBrowserHistoryDataSource.applyFilter()(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v106 = v100 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v110 = v100 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v105 = v100 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v107 = v100 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v111 = v100 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v113 = v100 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v29 = v100 - v28;
  v30 = type metadata accessor for DOCBrowserHistoryItem(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v104 = v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v118 = v100 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = v100 - v39;
  MEMORY[0x28223BE20](v41, v42);
  v119 = v100 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v47 = v100 - v46;
  MEMORY[0x28223BE20](v48, v49);
  v51 = (v100 - v50);
  outlined init with copy of DOCGridLayout.Spec?(a1, v29, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  v52 = *(v31 + 48);
  v112 = v30;
  v114 = v31 + 48;
  v115 = v52;
  if (v52(v29, 1, v30) == 1)
  {
    outlined destroy of CharacterSet?(v29, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
    return;
  }

  v101 = v7;
  v108 = v51;
  outlined init with take of DOCBrowserHistoryItem(v29, v51);
  v53 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v54 = *(v53 + 20);
  v109 = a1;
  v102 = v54;
  v103 = v53;
  v55 = *(a1 + v54);
  v56 = *(v55 + 16);
  v116 = v55;
  v117 = v56;
  if (v56)
  {
    v57 = 0;
    v120 = MEMORY[0x277D84F90];
    while (v57 < *(v55 + 16))
    {
      v58 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      a1 = *(v31 + 72);
      v59 = outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v55 + v58 + a1 * v57, v47, type metadata accessor for DOCBrowserHistoryItem);
      v60 = (*((*MEMORY[0x277D85000] & *a2) + 0x158))(v59);
      v51 = v61;
      v62 = v60(v47);

      if (v62)
      {
        outlined init with take of DOCBrowserHistoryItem(v47, v119);
        v51 = v120;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1);
          v51 = v121[0];
        }

        v65 = v51[2];
        v64 = v51[3];
        if (v65 >= v64 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
          v51 = v121[0];
        }

        v51[2] = v65 + 1;
        v120 = v51;
        v53 = outlined init with take of DOCBrowserHistoryItem(v119, v51 + v58 + v65 * a1);
        v55 = v116;
      }

      else
      {
        v53 = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v47, type metadata accessor for DOCBrowserHistoryItem);
      }

      if (v117 == ++v57)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_15:
  v103 = *(v103 + 24);
  v55 = *(v109 + v103);
  v66 = *(v55 + 16);
  v117 = v55;
  v119 = v66;
  if (v66)
  {
    v100[1] = a2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v57 = 0;
    a1 = MEMORY[0x277D84F90];
    while (v57 < *(v55 + 16))
    {
      v67 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v47 = *(v31 + 72);
      v68 = outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v55 + v67 + v47 * v57, v40, type metadata accessor for DOCBrowserHistoryItem);
      v69 = (*((*MEMORY[0x277D85000] & *a2) + 0x158))(v68);
      v51 = v70;
      v71 = v69(v40);

      if (v71)
      {
        outlined init with take of DOCBrowserHistoryItem(v40, v118);
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = a1;
        if ((v72 & 1) == 0)
        {
          v51 = v121;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1);
          a1 = v121[0];
        }

        v74 = *(a1 + 16);
        v73 = *(a1 + 24);
        if (v74 >= v73 >> 1)
        {
          v51 = v121;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1);
          a1 = v121[0];
        }

        *(a1 + 16) = v74 + 1;
        v53 = outlined init with take of DOCBrowserHistoryItem(v118, a1 + v67 + v74 * v47);
        v55 = v117;
      }

      else
      {
        v53 = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v40, type metadata accessor for DOCBrowserHistoryItem);
      }

      if (v119 == ++v57)
      {
        goto LABEL_28;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  a1 = MEMORY[0x277D84F90];
LABEL_28:
  v75 = (*((*MEMORY[0x277D85000] & *a2) + 0x158))(v53);
  v76 = v108;
  v77 = v75(v108);

  v78 = v112;
  v47 = v113;
  if (v77)
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v76, v113, type metadata accessor for DOCBrowserHistoryItem);
    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  v80 = *(v31 + 56);
  v119 = v31 + 56;
  v80(v47, v79, 1, v78);
  v81 = v111;
  outlined init with copy of DOCGridLayout.Spec?(v47, v111, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  v55 = v78;
  v82 = v115(v81, 1, v78);
  outlined destroy of CharacterSet?(v81, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  if (v82 != 1)
  {
    a2 = v80;
    goto LABEL_39;
  }

  v83 = v120;
  v84 = v120[2];
  if (!v84)
  {
    v93 = v107;
    a2 = v80;
    v80(v107, 1, 1, v55);
    outlined destroy of CharacterSet?(v93, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
    goto LABEL_39;
  }

  v51 = ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v57 = *(v31 + 72);
  v85 = v107;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v51 + v120 + v57 * (v84 - 1), v107, type metadata accessor for DOCBrowserHistoryItem);
  a2 = v80;
  v80(v85, 0, 1, v55);
  outlined destroy of CharacterSet?(v85, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  if (!v83[2])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_55;
  }

  v86 = v120;
  v87 = v120[2];
  if (!v87)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return;
  }

  while (1)
  {
    v88 = v87 - 1;
    v89 = v51 + v86 + (v87 - 1) * v57;
    v90 = v104;
    outlined init with take of DOCBrowserHistoryItem(v89, v104);
    v120 = v86;
    v86[2] = v88;
    outlined destroy of CharacterSet?(v47, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
    v91 = v90;
    v92 = v105;
    outlined init with take of DOCBrowserHistoryItem(v91, v105);
    a2(v92, 0, 1, v55);
    outlined init with take of DOCBrowserHistoryItem?(v92, v47);
LABEL_39:
    v94 = v110;
    outlined init with copy of DOCGridLayout.Spec?(v47, v110, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
    v95 = v115(v94, 1, v55);
    v57 = v109;
    if (v95 != 1)
    {
      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v108, type metadata accessor for DOCBrowserHistoryItem);
LABEL_49:
      outlined destroy of CharacterSet?(v94, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
      v98 = v102;
      goto LABEL_50;
    }

    outlined destroy of CharacterSet?(v94, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
    if (!*(a1 + 16))
    {
      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v108, type metadata accessor for DOCBrowserHistoryItem);
      v94 = v106;
      a2(v106, 1, 1, v55);
      goto LABEL_49;
    }

    v51 = ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v31 = v106;
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v51 + a1, v106, type metadata accessor for DOCBrowserHistoryItem);
    a2(v31, 0, 1, v55);
    outlined destroy of CharacterSet?(v31, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
    if (*(a1 + 16))
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    v86 = specialized _ArrayBuffer._consumeAndCreateNew()(v120);
    v87 = v86[2];
    if (!v87)
    {
      goto LABEL_56;
    }
  }

  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v51 + a1, v101, type metadata accessor for DOCBrowserHistoryItem);
  v96 = *(a1 + 16);
  if (!v96)
  {
    goto LABEL_57;
  }

  v97 = swift_isUniquelyReferenced_nonNull_native();
  v121[0] = a1;
  v98 = v102;
  if (!v97 || (v96 - 1) > *(a1 + 24) >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v97, v96, 1, a1);
    v121[0] = a1;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  outlined destroy of CharacterSet?(v47, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v108, type metadata accessor for DOCBrowserHistoryItem);
  v99 = v101;
  a2(v101, 0, 1, v55);
  outlined init with take of DOCBrowserHistoryItem?(v99, v47);
LABEL_50:
  outlined assign with take of IndexPath?(v47, v57, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");

  *(v57 + v98) = v120;
  *(v57 + v103) = a1;
}

void *refreshed #1 (optional:) in DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (!a1)
  {
    return v3;
  }

  v5 = a2;
  if (!a2)
  {
    v9 = a1;
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v21 = a1;
  v6 = a1;
  v7 = [v6 fileProviderItem];
  if (v7)
  {
    v8 = v7;
    v24 = &unk_285C9E320;
    v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    v22 = v6;
    v23 = v8;
    if (!v5[2])
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = [v6 representedTag];
  if (!v10)
  {
    v24 = &unk_285C9E3C8;
    v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
    v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
    v22 = v6;
    if (!v5[2])
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v11 = v10;
  v12 = FPTagFromDOCTag();
  v24 = &unk_285C9E3A0;
  v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
  v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();

  v22 = v6;
  v23 = v12;
  if (v5[2])
  {
LABEL_12:
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v21);
    if ((v14 & 1) == 0)
    {
      goto LABEL_15;
    }

    outlined init with copy of DOCIdentityHashableLocation(v5[7] + 56 * v13, v27);
    outlined destroy of DOCIdentityHashableLocation(&v21);
    v5 = v27[0];
    outlined destroy of DOCIdentityHashableLocation(v27);
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_18:
    if (!v5)
    {
      return v3;
    }

    goto LABEL_19;
  }

LABEL_15:
  outlined destroy of DOCIdentityHashableLocation(&v21);
  v5 = 0;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithTaggedItemsSourceRepresentedTag_];
    goto LABEL_18;
  }

LABEL_19:
  v15 = [v5 representedTag];
  if (v15)
  {

    v16 = [v3 isTaggedItemsSource];
    if (v16)
    {
      v17 = v3;
    }

    else
    {
      v17 = v5;
    }

    if (v16)
    {
      v3 = v5;
    }
  }

  else
  {
    v18 = [v3 fileProviderItem];
    if (v18 && (v18, (v19 = [v5 fileProviderItem]) != 0))
    {

      v17 = v3;
      v3 = v5;
    }

    else
    {
      v17 = v5;
    }
  }

  return v3;
}

double closure #1 in DOCBrowserHistoryDataSource.startObservingForChanges()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(swift_allocObject() + 16) = Strong;
    v6 = v5;
    DOCRunInMainThread(_:)();
  }

  return result;
}

void closure #2 in DOCBrowserHistoryDataSource.startObservingForChanges()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x188))();
  }
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.scheduleRefreshUnderlyingNodes()(void *a1)
{
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = &v27 - v18;
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x1B8))(v17);
  if ((result & 1) == 0 && (*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_scheduleRefreshUnderlyingNodesPending) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_scheduleRefreshUnderlyingNodesPending) = 1;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v21 = *(v11 + 8);
    v31 = v11 + 8;
    v32 = v21;
    v21(v14, v10);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCBrowserHistoryDataSource.scheduleRefreshUnderlyingNodes();
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_180_0;
    v29 = _Block_copy(aBlock);
    v23 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v28 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v24 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v29;
    v25 = v30;
    MEMORY[0x24C1FB940](v19, v9, v5, v29);
    _Block_release(v26);

    (*(v2 + 8))(v5, v24);
    (*(v34 + 8))(v9, v28);
    return v32(v19, v10);
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCBrowserHistoryDataSource.scheduleRefreshUnderlyingNodes()(void *a1)
{
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_scheduleRefreshUnderlyingNodesPending) = 0;
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x1B8))();
  if ((result & 1) == 0)
  {
    return (*((*v2 & *a1) + 0x1E0))(0, DOCGridLayout.specIconWidth.modify, 0);
  }

  return result;
}

void DOCBrowserHistoryDataSource.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    if (__CocoaSet.count.getter() < 1)
    {
      return;
    }
  }

  else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return;
  }

  *(swift_allocObject() + 16) = v4;
  v5 = v4;
  DOCRunInMainThread(_:)();
}

double DOCBrowserHistoryDataSource.tagRegistry(_:didRemove:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didRemove:);
  *(v4 + 24) = v3;
  v5 = a2;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, partial apply for closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:), v4);

  return result;
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didRemove:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DOCBrowserHistoryItem(0);
  v7 = [*(a1 + *(v6 + 20)) representedTag];
  if (v7 && (v8 = v7, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260), v9 = a2, v10 = static NSObject.== infix(_:_:)(), v9, v8, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, a3, type metadata accessor for DOCBrowserHistoryItem);
    v11 = 0;
  }

  v12 = *(*(v6 - 8) + 56);

  return v12(a3, v11, 1, v6);
}

double DOCBrowserHistoryDataSource.tagRegistry(_:didReplace:with:)(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didReplace:with:);
  *(v6 + 24) = v5;
  v7 = a2;
  v8 = a3;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v6);

  return result;
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didReplace:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DOCBrowserHistoryItem(0);
  v9 = [*(a1 + *(v8 + 20)) representedTag];
  if (v9 && (v10 = v9, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260), v11 = a2, v12 = static NSObject.== infix(_:_:)(), v11, v10, (v12 & 1) != 0))
  {
    DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(0, a3, 0, a4);
  }

  else
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, a4, type metadata accessor for DOCBrowserHistoryItem);
  }

  v13 = *(*(v8 - 8) + 56);

  return v13(a4, 0, 1, v8);
}

double closure #1 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_258_0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);

  return result;
}

double closure #2 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v73 = a8;
  v74 = a7;
  v70 = a5;
  v71 = a6;
  v68 = a3;
  v69 = a4;
  v72 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v65 - v22;
  v24 = type metadata accessor for DOCBrowserHistoryItem(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v65 - v31;
  v33 = a1 + *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0) + 20);
  if (*v33)
  {
    v75 = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x24C1FAEA0](91, 0xE100000000000000);
    v34 = MEMORY[0x24C1FAE00](v68, v69, v70, v71);
    MEMORY[0x24C1FAEA0](v34);

    MEMORY[0x24C1FAEA0](0xD000000000000048, 0x8000000249BE6C50);
    DOCBrowserHistoryDataSource.log(_:)(v75, v76);

    v35 = swift_allocObject();
    *(v35 + 16) = v74;
    *(v35 + 24) = v73;
    v36 = *v33;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    }

    v39 = v36[2];
    v38 = v36[3];
    if (v39 >= v38 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
    }

    v36[2] = v39 + 1;
    v40 = &v36[2 * v39];
    v40[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v40[5] = v35;
    *v33 = v36;
  }

  else
  {
    v67 = v12;
    v68 = v32;
    v70 = v15;
    v71 = v24;
    v66 = v28;
    v72 = v25;
    v69 = a1;
    v41 = MEMORY[0x277D84F90];
    *v33 = MEMORY[0x277D84F90];
    *(v33 + 8) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = v74;
    *(v42 + 24) = v73;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
    }

    v44 = v41[2];
    v43 = v41[3];
    v45 = v19;
    if (v44 >= v43 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
    }

    v41[2] = v44 + 1;
    v46 = &v41[2 * v44];
    v46[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v46[5] = v42;
    *v33 = v41;
    outlined init with copy of DOCGridLayout.Spec?(a9, v23, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
    v48 = v71;
    v47 = v72;
    v49 = *(v72 + 48);
    if (v49(v23, 1, v71) == 1)
    {
      v74 = a10;
      outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVSgGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVSgGMR);
      v50 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v51 = swift_allocObject();
      v52 = v69;
      outlined init with copy of DOCGridLayout.Spec?(v69, v51 + v50, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
      outlined init with copy of DOCGridLayout.Spec?(v51 + v50, v45, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
      v53 = v45;
      v54 = v70;
      outlined init with take of DOCBrowserHistoryItem?(v53, v70);
      if (v49(v54, 1, v48) == 1)
      {
        outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
        v55 = MEMORY[0x277D84F90];
      }

      else
      {
        v59 = v66;
        outlined init with take of DOCBrowserHistoryItem(v54, v66);
        v55 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
        }

        v61 = v55[2];
        v60 = v55[3];
        if (v61 >= v60 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v55);
        }

        v55[2] = v61 + 1;
        outlined init with take of DOCBrowserHistoryItem(v59, v55 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v61);
      }

      v62 = v74;
      swift_setDeallocating();
      outlined destroy of CharacterSet?(v51 + v50, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
      swift_deallocClassInstance();
      v77 = *(v52 + *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0) + 20));

      specialized Array.append<A>(contentsOf:)(v55);

      specialized Array.append<A>(contentsOf:)(v63);
      v64 = v77;
      swift_beginAccess();
      *(v62 + 16) = v64;
    }

    else
    {
      v56 = v68;
      outlined init with take of DOCBrowserHistoryItem(v23, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMR);
      v57 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_249B9A480;
      outlined init with take of DOCBrowserHistoryItem(v56, v58 + v57);
      swift_beginAccess();
      *(a10 + 16) = v58;
    }
  }

  return result;
}

void closure #7 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v10 = a4 + 16;
  v11 = a6 + 16;
  outlined init with copy of DOCIdentityHashableLocation(a5, v18);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v10;
  v13 = v18[1];
  *(v12 + 32) = v18[0];
  *(v12 + 48) = v13;
  *(v12 + 64) = v18[2];
  *(v12 + 80) = v19;
  *(v12 + 88) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #7 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:);
  *(v14 + 24) = v12;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_245;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  dispatch_sync(a3, v15);
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    dispatch_group_leave(a7);
  }
}

void closure #1 in closure #7 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (a1)
  {
    outlined init with copy of DOCIdentityHashableLocation(a3, v29);
    v5 = a1;
    v6 = [v5 providerDomainID];
    v7 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v6 node:v5];

    [v7 setIsFPV2_];
    v23 = v7;
    v8 = v7;
    v9 = [v8 fileProviderItem];
    if (v9)
    {
      v10 = v9;
      v26 = &unk_285C9E320;
      v27 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v28 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v24 = v8;
      v25 = v10;
    }

    else
    {
      v20 = [v8 representedTag];
      if (v20)
      {
        v21 = v20;
        v22 = FPTagFromDOCTag();
        v26 = &unk_285C9E3A0;
        v27 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v28 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();

        v24 = v8;
        v25 = v22;
      }

      else
      {
        v26 = &unk_285C9E3C8;
        v27 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v28 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v24 = v8;
      }
    }

    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v23, v29);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of DOCIdentityHashableLocation(a3, v29);
    swift_beginAccess();
    v12 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      *a4 = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
      *a4 = v12;
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[56 * v15];
    v17 = v29[0];
    v18 = v29[1];
    v19 = v29[2];
    *(v16 + 10) = v30;
    *(v16 + 3) = v18;
    *(v16 + 4) = v19;
    *(v16 + 2) = v17;
    swift_endAccess();
  }
}

void closure #8 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    _StringGuts.grow(_:)(45);

    v54 = 91;
    v55 = 0xE100000000000000;
    v46 = a2;
    v47 = a3;
    v48 = a4;
    v49 = a5;
    v18 = MEMORY[0x24C1FAE00](a2, a3, a4, a5);
    MEMORY[0x24C1FAEA0](v18);

    MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BE6B80);
    swift_beginAccess();
    *&v52[0] = *(*(a6 + 16) + 16);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v19);

    MEMORY[0x24C1FAEA0](0xD000000000000011, 0x8000000249BE6BA0);
    v45 = v17;
    DOCBrowserHistoryDataSource.log(_:)(91, 0xE100000000000000);

    v20 = 1 << *(a7 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a7 + 64);

    swift_beginAccess();
    v23 = 0;
    v24 = (v20 + 63) >> 6;
    while (v22)
    {
LABEL_12:
      v30 = 56 * (__clz(__rbit64(v22)) | (v23 << 6));
      outlined init with copy of DOCIdentityHashableLocation(*(a7 + 48) + v30, &v54);
      outlined init with copy of DOCIdentityHashableLocation(*(a7 + 56) + v30, v56);
      outlined init with copy of DOCIdentityHashableLocation(&v54, v52);
      swift_beginAccess();
      v31 = *(a8 + 16);
      if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v33 & 1) != 0))
      {
        outlined init with copy of DOCIdentityHashableLocation(*(v31 + 56) + 56 * v32, v50);
      }

      else
      {
        v51 = 0;
        memset(v50, 0, sizeof(v50));
      }

      swift_endAccess();
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v50, v52);
      swift_endAccess();
      v34 = *(a9 + 16);

      v35 = specialized Sequence<>.contains(_:)(&v54, v34);

      if (v35)
      {
        outlined init with copy of DOCIdentityHashableLocation(v56, v52);
        swift_beginAccess();
        v36 = *(a9 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a9 + 16) = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
          *(a9 + 16) = v36;
        }

        v39 = *(v36 + 2);
        v38 = *(v36 + 3);
        if (v39 >= v38 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
        }

        *(v36 + 2) = v39 + 1;
        v25 = &v36[56 * v39];
        v26 = v52[0];
        v27 = v52[1];
        v28 = v52[2];
        *(v25 + 10) = v53;
        *(v25 + 3) = v27;
        *(v25 + 4) = v28;
        *(v25 + 2) = v26;
        *(a9 + 16) = v36;
        swift_endAccess();
      }

      v22 &= v22 - 1;
      outlined destroy of CharacterSet?(&v54, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationV3key_AC5valuetMd, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationV3key_AC5valuetMR);
    }

    while (1)
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v24)
      {

        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);

        v54 = 91;
        v55 = 0xE100000000000000;
        v40 = MEMORY[0x24C1FAE00](a2, v47, v48, v49);
        MEMORY[0x24C1FAEA0](v40);

        MEMORY[0x24C1FAEA0](0xD000000000000022, 0x8000000249BE6BC0);
        DOCBrowserHistoryDataSource.log(_:)(v54, v55);

        v41 = swift_allocObject();
        v41[2] = a9;
        v41[3] = v45;
        v41[4] = a2;
        v41[5] = v47;
        v41[6] = v48;
        v41[7] = v49;
        v41[8] = a8;
        v42 = swift_allocObject();
        *(v42 + 16) = partial apply for closure #2 in closure #8 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:);
        *(v42 + 24) = v41;

        v43 = v45;

        _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(1, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v42);

        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v54 = 91;
        v55 = 0xE100000000000000;
        v44 = MEMORY[0x24C1FAE00](v46, v47, v48, v49);
        MEMORY[0x24C1FAEA0](v44);

        MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BE6BF0);
        DOCBrowserHistoryDataSource.log(_:)(v54, v55);

        return;
      }

      v22 = *(a7 + 64 + 8 * v29);
      ++v23;
      if (v22)
      {
        v23 = v29;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t closure #2 in closure #8 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a8@<X8>)
{
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = type metadata accessor for DOCBrowserHistoryItem(0);
  v32 = *(a1 + *(v14 + 20));
  v15 = v32;

  v16 = [v15 fileProviderItem];
  if (v16)
  {
    v17 = v16;
    v35 = &unk_285C9E320;
    v36 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    v37 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    v33 = v15;
    v34 = v17;
  }

  else
  {
    v18 = [v15 representedTag];
    if (v18)
    {
      v19 = v18;
      v20 = FPTagFromDOCTag();
      v35 = &unk_285C9E3A0;
      v36 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
      v37 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();

      v33 = v15;
      v34 = v20;
    }

    else
    {
      v35 = &unk_285C9E3C8;
      v36 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
      v37 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
      v33 = v15;
    }
  }

  v21 = specialized Sequence<>.contains(_:)(&v32, v13);

  outlined destroy of DOCIdentityHashableLocation(&v32);
  if (v21)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x24C1FAEA0](91, 0xE100000000000000);
    v22 = MEMORY[0x24C1FAE00](a3, a4, a5, a6);
    MEMORY[0x24C1FAEA0](v22);

    MEMORY[0x24C1FAEA0](0xD000000000000034, 0x8000000249BE6C10);
    v23 = [v15 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    MEMORY[0x24C1FAEA0](v24, v26);

    DOCBrowserHistoryDataSource.log(_:)(v32, v33);
    v27 = 1;
  }

  else
  {
    swift_beginAccess();

    DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(v28, 0, 0, a8);
    v27 = 0;
  }

  return (*(*(v14 - 8) + 56))(a8, v27, 1, v14);
}

void protocol witness for DOCNodeCollectionDelegate.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:) in conformance DOCBrowserHistoryDataSource(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    if (__CocoaSet.count.getter() < 1)
    {
      return;
    }
  }

  else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return;
  }

  *(swift_allocObject() + 16) = v4;
  v5 = v4;
  DOCRunInMainThread(_:)();
}

void DOCIdentityHashableLocation.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = a1;
  v4 = [v3 fileProviderItem];
  if (v4)
  {
    v5 = v4;
    a2[4] = &unk_285C9E320;
    a2[5] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    a2[6] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    a2[1] = v3;
    a2[2] = v5;
  }

  else
  {
    v6 = [v3 representedTag];
    if (v6)
    {
      v7 = v6;
      v8 = FPTagFromDOCTag();
      a2[4] = &unk_285C9E3A0;
      a2[5] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
      a2[6] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();

      a2[1] = v3;
      a2[2] = v8;
    }

    else
    {
      a2[4] = &unk_285C9E3C8;
      a2[5] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
      a2[6] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
      a2[1] = v3;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCIdentityHashableLocation.FPItemImpl()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCIdentityHashableLocation.FPItemImpl(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCIdentityHashableLocation.FPTagImpl()
{
  v1 = [*(v0 + 8) label];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x24C1FAEA0](v2, v4);

  return 979853652;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCIdentityHashableLocation.FPItemImpl(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t DOCIdentityHashableLocation.OtherImpl.description.getter(void *a1)
{
  _StringGuts.grow(_:)(30);

  v2 = [a1 displayName];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE200000000000000;
    v4 = 16191;
  }

  MEMORY[0x24C1FAEA0](v4, v6);

  return 0xD00000000000001CLL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCIdentityHashableLocation.OtherImpl()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = [v1 sourceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v3 = [v1 displayName];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DOCIdentityHashableLocation.OtherImpl(uint64_t a1)
{
  v2 = *v1;
  v3 = [v2 sourceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v4 = [v2 displayName];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCIdentityHashableLocation.OtherImpl(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = [v2 sourceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v4 = [v2 displayName];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

BOOL static DOCIdentityHashableLocation.== infix(_:_:)(void *a1, void *a2)
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher._finalize()();
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(a2 + 1, a2[4]);
  dispatch thunk of Hashable.hash(into:)();
  return v4 == Hasher._finalize()();
}

Swift::Int DOCIdentityHashableLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCIdentityHashableLocation()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCIdentityHashableLocation(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((v1 + 8), *(v1 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCIdentityHashableLocation(void *a1, void *a2)
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher._finalize()();
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(a2 + 1, a2[4]);
  dispatch thunk of Hashable.hash(into:)();
  return v4 == Hasher._finalize()();
}

uint64_t outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DOCBrowserHistoryItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DOCBrowserHistoryDataSource.didBrowse(updatingHistoryTo:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in DOCBrowserHistoryDataSource.didBrowse(updatingHistoryTo:)(a1, v4, v5);
}

double partial apply for closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(a1, a2, v2 + v6, v8, v10, v11);
}

unint64_t lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl()
{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl()
{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl()
{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl);
  }

  return result;
}

uint64_t outlined init with copy of CustomStringConvertible & Hashable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DOCBrowserHistoryShiftDirection and conformance DOCBrowserHistoryShiftDirection()
{
  result = lazy protocol witness table cache variable for type DOCBrowserHistoryShiftDirection and conformance DOCBrowserHistoryShiftDirection;
  if (!lazy protocol witness table cache variable for type DOCBrowserHistoryShiftDirection and conformance DOCBrowserHistoryShiftDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserHistoryShiftDirection and conformance DOCBrowserHistoryShiftDirection);
  }

  return result;
}

void type metadata completion function for DOCBrowserHistoryItem(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [DOCConcreteLocation](319, &lazy cache variable for type metadata for [DOCConcreteLocation], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [DOCConcreteLocation](319, &lazy cache variable for type metadata for DOCConcreteLocation?, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Any?(319, &lazy cache variable for type metadata for Any?, MEMORY[0x277D84F70] + 8);
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

void type metadata accessor for [DOCConcreteLocation](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata completion function for DOCBrowserHistoryShiftAmount(uint64_t a1)
{
  type metadata accessor for (historyItem: DOCBrowserHistoryItem)();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (historyItem: DOCBrowserHistoryItem)()
{
  if (!lazy cache variable for type metadata for (historyItem: DOCBrowserHistoryItem))
  {
    v0 = type metadata accessor for DOCBrowserHistoryItem(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (historyItem: DOCBrowserHistoryItem));
    }
  }
}

void type metadata completion function for _DOCBrowserHistoryDataSourceBase.ItemSet(uint64_t a1)
{
  type metadata accessor for [DOCBrowserHistoryItem](319, &lazy cache variable for type metadata for DOCBrowserHistoryItem?, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [DOCBrowserHistoryItem](319, &lazy cache variable for type metadata for [DOCBrowserHistoryItem], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [DOCBrowserHistoryItem](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DOCBrowserHistoryItem(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata completion function for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(uint64_t a1)
{
  type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Any?(319, &lazy cache variable for type metadata for _DOCBrowserHistoryDataSourceBase.RefreshContext?, &unk_285C9E448);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Any?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized DOCIdentityHashableLocation.FPItemImpl.description.getter(void *a1)
{
  _StringGuts.grow(_:)(16);

  v2 = [a1 itemID];
  v3 = [v2 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x24C1FAEA0](v4, v6);

  MEMORY[0x24C1FAEA0](0x3A656D616E202CLL, 0xE700000000000000);
  v7 = [a1 displayName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x24C1FAEA0](v8, v10);

  return 0x3A44497066;
}

uint64_t specialized static _DOCBrowserHistoryDataSourceBase.ItemSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSg_ADtMd, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSg_ADtMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of DOCGridLayout.Spec?(a1, &v24 - v15, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  outlined init with copy of DOCGridLayout.Spec?(a2, &v16[v18], &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of DOCGridLayout.Spec?(v16, v12, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v12, type metadata accessor for DOCBrowserHistoryItem);
LABEL_6:
    outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSg_ADtMd, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSg_ADtMR);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  outlined init with take of DOCBrowserHistoryItem(&v16[v18], v8);
  v20 = static UUID.== infix(_:_:)();
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v8, type metadata accessor for DOCBrowserHistoryItem);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v12, type metadata accessor for DOCBrowserHistoryItem);
  outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables21DOCBrowserHistoryItemV_Tt1g5(*(a1 + *(v21 + 20)), *(a2 + *(v21 + 20))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables21DOCBrowserHistoryItemV_Tt1g5(*(a1 + *(v21 + 24)), *(a2 + *(v21 + 24)));
  return v22 & 1;
}

uint64_t objectdestroy_6Tm_3(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

double outlined consume of _DOCBrowserHistoryDataSourceBase.RefreshContext?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined init with take of DOCBrowserHistoryItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)()
{
  v1 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(v0 + v2, v5, v6, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)@<X0>(__objc2_prot **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(a1, v6, a2);
}

uint64_t outlined assign with take of DOCBrowserHistoryItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double partial apply for closure #2 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd, "2\t") - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  return closure #2 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *specialized static DOCIdentityHashableLocation.locationMap(from:)(unint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F98];
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = ~v6;
    v1 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v3 = v8 & *(a1 + 64);
    v4 = a1;
  }

  v9 = 0;
  v10 = (v2 + 64) >> 6;
  v5 = MEMORY[0x277D84F98];
  v58 = v4;
  while ((v4 & 0x8000000000000000) != 0)
  {
    v19 = __CocoaDictionary.Iterator.next()();
    if (!v19 || (v21 = v20, *&v60 = v19, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8), swift_dynamicCast(), v17 = v64[0], *&v60 = v21, swift_dynamicCast(), v18 = v64[0], v13 = v9, v14 = v3, !v17))
    {
LABEL_40:
      outlined consume of Set<UITouch>.Iterator._Variant(v4);
      return v5;
    }

LABEL_21:
    v59 = v14;
    v22 = v17;
    v23 = [v22 fileProviderItem];
    if (v23)
    {
      v24 = v23;
      v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v27 = &unk_285C9E320;
    }

    else
    {
      v28 = [v22 representedTag];
      if (v28)
      {
        v29 = v28;
        v24 = FPTagFromDOCTag();

        v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v27 = &unk_285C9E3A0;
      }

      else
      {
        v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v27 = &unk_285C9E3C8;
        v24 = v57;
      }
    }

    v64[0] = v22;
    v64[1] = v22;
    v64[2] = v24;
    v64[4] = v27;
    v64[5] = v25;
    v64[6] = v26;
    v30 = v18;
    v31 = [v30 fileProviderItem];
    v57 = v24;
    if (v31)
    {
      v32 = v31;
      v33 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v34 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v35 = &unk_285C9E320;
    }

    else
    {
      v36 = [v30 representedTag];
      if (v36)
      {
        v37 = v36;
        v32 = FPTagFromDOCTag();

        v33 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v34 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v35 = &unk_285C9E3A0;
      }

      else
      {
        v33 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v34 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v35 = &unk_285C9E3C8;
        v32 = v56;
      }
    }

    *&v60 = v30;
    *(&v60 + 1) = v30;
    v56 = v32;
    *&v61 = v32;
    *&v62 = v35;
    *(&v62 + 1) = v33;
    v63 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
    v41 = v5[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_43;
    }

    v44 = v39;
    if (v5[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_45;
      }

      v40 = v45;
    }

    v4 = v58;
    if (v44)
    {
      outlined assign with take of DOCIdentityHashableLocation(&v60, v5[7] + 56 * v40);
    }

    else
    {
      v5[(v40 >> 6) + 8] |= 1 << v40;
      v47 = 56 * v40;
      outlined init with copy of DOCIdentityHashableLocation(v64, v5[6] + v47);
      v48 = v5[7] + v47;
      v49 = v60;
      v50 = v61;
      v51 = v62;
      *(v48 + 48) = v63;
      *(v48 + 16) = v50;
      *(v48 + 32) = v51;
      *v48 = v49;
      v52 = v5[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_44;
      }

      v5[2] = v54;
    }

    outlined destroy of DOCIdentityHashableLocation(v64);

    v9 = v13;
    v3 = v59;
  }

  v11 = v9;
  v12 = v3;
  v13 = v9;
  if (v3)
  {
LABEL_17:
    v14 = (v12 - 1) & v12;
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v12)));
    v16 = *(*(v4 + 56) + v15);
    v17 = *(*(v4 + 48) + v15);
    v18 = v16;
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_40;
    }

    v12 = *(v1 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t DOCTransitionableProxy.__allocating_init(viewControllers:)(unint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  if (a1 >> 62)
  {
    v9 = result;
    v10 = __CocoaSet.count.getter();
    result = v9;
    if (v10)
    {
      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v3 = result;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, &v11);
    _os_log_impl(&dword_2493AC000, v5, v6, "[Presentation Error] %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  return v3;
}

uint64_t DOCTransitionableProxy.init(viewControllers:)(unint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      return v2;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v2;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.UI);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, &v9);
    _os_log_impl(&dword_2493AC000, v4, v5, "[Presentation Error] %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  return v2;
}

uint64_t DOCTransitionableProxy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(uint64_t a1, void (*a2)(void, __n128), uint64_t a3)
{
  v54 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  v17 = v16 >> 62;
  v18 = v16;
  if (v16 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_21:
    v54(0, v13);
    return;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_21;
  }

LABEL_3:
  v47 = a3;
  v48 = v15;
  v49 = v11;
  v50 = v9;
  v51 = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v59 = (v19 + 16);
  v60 = v19;
  v20 = dispatch_group_create();
  v53 = v5;
  v52 = v6;
  if (v17)
  {
    v23 = __CocoaSet.count.getter();
    v21 = v18;
    v22 = v23;
    if (!v23)
    {
LABEL_19:
      type metadata accessor for OS_dispatch_queue();
      v40 = static OS_dispatch_queue.main.getter();
      v41 = swift_allocObject();
      v42 = v54;
      v41[2] = v60;
      v41[3] = v42;
      v41[4] = v47;
      v64 = partial apply for closure #1 in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:);
      v65 = v41;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v63 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v63 + 1) = &block_descriptor_9_5;
      v43 = _Block_copy(&aBlock);

      v44 = v48;
      static DispatchQoS.unspecified.getter();
      v61 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v45 = v50;
      v46 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v43);

      (*(v52 + 8))(v45, v46);
      (*(v49 + 8))(v44, v51);

      return;
    }
  }

  else
  {
    v21 = v18;
    v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_19;
    }
  }

  if (v22 >= 1)
  {
    v57 = v21 & 0xC000000000000001;
    swift_beginAccess();
    v24 = v18;
    v25 = 0;
    v56 = &v63;
    v55 = xmmword_249B9A480;
    v58 = v18;
    do
    {
      if (v57)
      {
        v36 = MEMORY[0x24C1FC540](v25, v24);
      }

      else
      {
        v36 = *(v24 + 8 * v25 + 32);
        swift_unknownObjectRetain();
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v37 = static DOCLog.UI;
      v38 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v39 = swift_allocObject();
      *(v39 + 16) = v55;
      if (!*v59 || (v61 = *v59, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28DOCServiceTransitionProtocol_pMd, &_sSo28DOCServiceTransitionProtocol_pMR), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR), (swift_dynamicCast() & 1) == 0))
      {
        v64 = 0;
        aBlock = 0u;
        v63 = 0u;
      }

      ++v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pSgMd, &_ss7CVarArg_pSgMR);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v39 + 32) = v26;
      *(v39 + 40) = v28;
      os_log(_:dso:log:type:_:)("looping through the VCs to to get transition controller: trying %@", 66, 2, &dword_2493AC000, v37, v38, v39);

      dispatch_group_enter(v20);
      URL._bridgeToObjectiveC()(v29);
      v31 = v30;
      v32 = swift_allocObject();
      v33 = v60;
      *(v32 + 16) = v20;
      *(v32 + 24) = v33;
      v64 = partial apply for closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:);
      v65 = v32;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v63 = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      *(&v63 + 1) = &block_descriptor_81;
      v34 = _Block_copy(&aBlock);
      v35 = v20;

      [v36 getTransitionControllerForURL:v31 completionBlock:v34];
      _Block_release(v34);
      swift_unknownObjectRelease();

      v24 = v58;
    }

    while (v22 != v25);
    goto LABEL_19;
  }

  __break(1u);
}

void closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(uint64_t a1, NSObject *a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    dispatch_group_leave(a2);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2493AC000, v7, v8, "_transitionController is nil. Bailing early.", v9, 2u);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }

    dispatch_group_leave(a2);
  }
}

uint64_t closure #1 in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(uint64_t a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = static DOCLog.UI;
  v5 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28DOCServiceTransitionProtocol_pMd, &_sSo28DOCServiceTransitionProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    swift_dynamicCast();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pSgMd, &_ss7CVarArg_pSgMR);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:type:_:)("looping through the VCs to to get transition controller: finished, returning %@", 79, 2, &dword_2493AC000, v4, v5, v6);

  swift_beginAccess();
  v10 = swift_unknownObjectRetain();
  a2(v10);
  return swift_unknownObjectRelease();
}

uint64_t DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = a2;
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v13 = __CocoaSet.count.getter();
      if (!v13)
      {
LABEL_10:
        swift_beginAccess();
        v11 = swift_unknownObjectRetain();
        v3(v11);

        return swift_unknownObjectRelease();
      }

      v6 = v13;
      if (v13 >= 1)
      {
        v14 = v3;
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1FC540](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          ++v8;
          aBlock[4] = partial apply for closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forItem:completionBlock:);
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
          aBlock[3] = &block_descriptor_13_1;
          v10 = _Block_copy(aBlock);

          [v9 getTransitionControllerForItem:a1 completionBlock:v10];
          _Block_release(v10);
          swift_unknownObjectRelease();
        }

        while (v6 != v8);
        v3 = v14;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v14 = a2;
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      goto LABEL_4;
    }
  }

  return (v3)(0);
}

void closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.UI);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v5, "_transitionController is nil. Bailing early.", v6, 2u);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }
  }
}

void DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)(uint64_t a1, void (*a2)(void, __n128), uint64_t a3)
{
  v39 = a2;
  v40 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  if (v16 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_15:
    v39(0, v13);
    return;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v32 = a3;
  v33 = v15;
  v34 = v11;
  v35 = v9;
  v36 = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = dispatch_group_create();
  v37 = v6;
  v38 = v5;
  if (v16 >> 62)
  {
    v19 = __CocoaSet.count.getter();
    if (!v19)
    {
LABEL_13:
      type metadata accessor for OS_dispatch_queue();
      v25 = static OS_dispatch_queue.main.getter();
      v26 = swift_allocObject();
      v27 = v32;
      v26[2] = v39;
      v26[3] = v27;
      v26[4] = v17;
      v46 = partial apply for closure #1 in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:);
      v47 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v45 = &block_descriptor_28_3;
      v28 = _Block_copy(&aBlock);

      v29 = v33;
      static DispatchQoS.unspecified.getter();
      v41 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v30 = v35;
      v31 = v38;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v28);

      (*(v37 + 8))(v30, v31);
      (*(v34 + 8))(v29, v36);

      return;
    }
  }

  else
  {
    v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v19 >= 1)
  {
    v20 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x24C1FC540](v20, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      ++v20;
      dispatch_group_enter(v18);
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v17;
      v46 = partial apply for closure #1 in getPopoverTracker #1 (for:) in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:);
      v47 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      v45 = &block_descriptor_22_1;
      v23 = _Block_copy(&aBlock);
      v24 = v18;

      [v21 getPopoverTrackerForItem:v40 completionBlock:v23];
      _Block_release(v23);
      swift_unknownObjectRelease();
    }

    while (v19 != v20);
    goto LABEL_13;
  }

  __break(1u);
}

void closure #1 in getPopoverTracker #1 (for:) in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)(uint64_t a1, dispatch_group_t group, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    dispatch_group_leave(group);
  }

  else
  {

    dispatch_group_leave(group);
  }
}

uint64_t closure #1 in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  a1(v4);
  return swift_unknownObjectRelease();
}

double @objc DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(void *, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
  _Block_release(v8);

  return result;
}

void DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)(uint64_t a1, char a2, void (*a3)(void *, void *))
{
  v5 = *(v3 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_15:
    a3(0, 0);
    return;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v17 = a3;
  if (v5 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
LABEL_13:
      swift_beginAccess();
      v13 = *(v6 + 16);
      swift_beginAccess();
      v14 = *(v7 + 16);
      v15 = v14;
      v16 = v13;
      v17(v13, v14);

      return;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      *(v11 + 24) = v7;
      aBlock[4] = partial apply for closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:);
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
      aBlock[3] = &block_descriptor_40_1;
      v12 = _Block_copy(aBlock);

      [v10 getViewFor_waitForNewThumbnail:a1 :{a2 & 1, v12}];
      _Block_release(v12);
      swift_unknownObjectRelease();
    }

    while (v8 != v9);
    goto LABEL_13;
  }

  __break(1u);
}

void closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = a1;
    v9 = a1;

    swift_beginAccess();
    v10 = *(a4 + 16);
    *(a4 + 16) = a2;
    v11 = a2;
  }
}

void DOCTransitionableProxy.getCell(for:_:)(uint64_t a1, void (*a2)(void *))
{
  v3 = a2;
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v11 = (v7 + 16);
      v14 = __CocoaSet.count.getter();
      if (!v14)
      {
LABEL_10:
        swift_beginAccess();
        v12 = *v11;
        v13 = v12;
        v3(v12);

        return;
      }

      v6 = v14;
      if (v14 >= 1)
      {
        v15 = (v7 + 16);
        v16 = v3;
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1FC540](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          ++v8;
          aBlock[4] = partial apply for closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getCell(for:_:);
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
          aBlock[3] = &block_descriptor_46_1;
          v10 = _Block_copy(aBlock);

          [v9 getCellFor:a1 :v10];
          _Block_release(v10);
          swift_unknownObjectRelease();
        }

        while (v6 != v8);
        v3 = v16;
        v11 = v15;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v16 = a2;
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v15 = (v7 + 16);
      goto LABEL_4;
    }
  }

  v3(0);
}

void closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getCell(for:_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = a1;
    v5 = a1;
  }
}

void DOCTransitionableProxy.reveal(nodes:selectEvenIfVisible:completionBlock:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      ++v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      aBlock[3] = &block_descriptor_49_1;
      v11 = _Block_copy(aBlock);

      [v9 revealWithNodes:isa selectEvenIfVisible:a2 & 1 completionBlock:v11];
      _Block_release(v11);
      swift_unknownObjectRelease();
    }

    while (v7 != v8);
  }
}

void specialized DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_allocObject();
  *(v51 + 16) = a3;
  v14 = *(a2 + 16);
  v15 = v14 >> 62;
  v16 = v14;
  if (v14 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_21:
    _Block_copy(a3);
    a3[2](a3, 0);

    return;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_21;
  }

LABEL_3:
  v45 = v11;
  v46 = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v56 = (v17 + 16);
  v57 = v17;
  _Block_copy(a3);
  v18 = dispatch_group_create();
  v49 = v5;
  v48 = v6;
  v47 = v10;
  if (v15)
  {
    v21 = __CocoaSet.count.getter();
    v19 = v16;
    v20 = v21;
    if (!v21)
    {
LABEL_19:
      type metadata accessor for OS_dispatch_queue();
      v38 = static OS_dispatch_queue.main.getter();
      v39 = swift_allocObject();
      v39[2] = v57;
      v39[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
      v39[4] = v51;
      v61 = closure #1 in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)partial apply;
      v62 = v39;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v60 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v60 + 1) = &block_descriptor_109;
      v40 = _Block_copy(&aBlock);

      v41 = v50;
      static DispatchQoS.unspecified.getter();
      v58 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v42 = v46;
      v43 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v40);

      (*(v48 + 8))(v42, v43);
      (*(v45 + 8))(v41, v47);

      return;
    }
  }

  else
  {
    v19 = v16;
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  if (v20 >= 1)
  {
    v54 = v19 & 0xC000000000000001;
    swift_beginAccess();
    v22 = v16;
    v23 = 0;
    v53 = &v60;
    v52 = xmmword_249B9A480;
    v55 = v16;
    do
    {
      if (v54)
      {
        v34 = MEMORY[0x24C1FC540](v23, v22);
      }

      else
      {
        v34 = *(v22 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v35 = static DOCLog.UI;
      v36 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v37 = swift_allocObject();
      *(v37 + 16) = v52;
      if (!*v56 || (v58 = *v56, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28DOCServiceTransitionProtocol_pMd, &_sSo28DOCServiceTransitionProtocol_pMR), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR), (swift_dynamicCast() & 1) == 0))
      {
        v61 = 0;
        aBlock = 0u;
        v60 = 0u;
      }

      ++v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pSgMd, &_ss7CVarArg_pSgMR);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v37 + 32) = v24;
      *(v37 + 40) = v26;
      os_log(_:dso:log:type:_:)("looping through the VCs to to get transition controller: trying %@", 66, 2, &dword_2493AC000, v35, v36, v37);

      dispatch_group_enter(v18);
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v30 = swift_allocObject();
      v31 = v57;
      *(v30 + 16) = v18;
      *(v30 + 24) = v31;
      v61 = closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)partial apply;
      v62 = v30;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v60 = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      *(&v60 + 1) = &block_descriptor_102;
      v32 = _Block_copy(&aBlock);

      v33 = v18;

      [v34 getTransitionControllerForURL:v29 completionBlock:v32];
      _Block_release(v32);
      swift_unknownObjectRelease();

      v22 = v55;
    }

    while (v20 != v23);
    goto LABEL_19;
  }

  __break(1u);
}

void specialized DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a2 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v11 = (v7 + 16);
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
LABEL_10:
        swift_beginAccess();
        (*(v3 + 16))(v3, *v11);

        return;
      }

      v6 = v12;
      if (v12 >= 1)
      {
        v14 = (v7 + 16);
        v15 = v3;
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1FC540](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          ++v8;
          aBlock[4] = closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)partial apply;
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
          aBlock[3] = &block_descriptor_91_2;
          v10 = _Block_copy(aBlock);

          [v9 getTransitionControllerForItem:a1 completionBlock:v10];
          _Block_release(v10);
          swift_unknownObjectRelease();
        }

        while (v6 != v8);
        v11 = v14;
        v3 = v15;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v15 = a3;
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v14 = (v7 + 16);
      goto LABEL_4;
    }
  }

  v13 = *(v3 + 16);

  v13(v3, 0);
}

void specialized DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v40 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = *(a2 + 16);
  if (v16 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_15:
    _Block_copy(a3);
    a3[2](a3, 0);

    return;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v33 = v14;
  v34 = v15;
  v35 = v11;
  v36 = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  _Block_copy(a3);
  v18 = dispatch_group_create();
  v38 = v6;
  v39 = v5;
  v37 = v10;
  if (v16 >> 62)
  {
    v19 = __CocoaSet.count.getter();
    if (!v19)
    {
LABEL_13:
      type metadata accessor for OS_dispatch_queue();
      v25 = static OS_dispatch_queue.main.getter();
      v26 = swift_allocObject();
      v27 = v34;
      v26[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
      v26[3] = v27;
      v26[4] = v17;
      v46 = closure #1 in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)partial apply;
      v47 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v45 = &block_descriptor_86_1;
      v28 = _Block_copy(&aBlock);

      v29 = v33;
      static DispatchQoS.unspecified.getter();
      v41 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v30 = v36;
      v31 = v39;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v28);

      (*(v38 + 8))(v30, v31);
      (*(v35 + 8))(v29, v37);

      return;
    }
  }

  else
  {
    v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v19 >= 1)
  {
    v20 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x24C1FC540](v20, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      ++v20;
      dispatch_group_enter(v18);
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v17;
      v46 = closure #1 in getPopoverTracker #1 (for:) in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)partial apply;
      v47 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      v45 = &block_descriptor_79_0;
      v23 = _Block_copy(&aBlock);

      v24 = v18;

      [v21 getPopoverTrackerForItem:v40 completionBlock:v23];
      _Block_release(v23);
      swift_unknownObjectRelease();
    }

    while (v19 != v20);
    goto LABEL_13;
  }

  __break(1u);
}

void specialized DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_15:
    v14 = *(a4 + 16);

    v14(a4, 0, 0);
    return;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  if (v5 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
LABEL_13:
      swift_beginAccess();
      v13 = *(v6 + 16);
      swift_beginAccess();
      (*(a4 + 16))(a4, v13, *(v7 + 16));

      return;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      *(v11 + 24) = v7;
      aBlock[4] = closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)partial apply;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
      aBlock[3] = &block_descriptor_68_1;
      v12 = _Block_copy(aBlock);

      [v10 getViewFor_waitForNewThumbnail:a1 :{a2 & 1, v12}];
      _Block_release(v12);
      swift_unknownObjectRelease();
    }

    while (v8 != v9);
    goto LABEL_13;
  }

  __break(1u);
}

void specialized DOCTransitionableProxy.getCell(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a2 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v11 = (v7 + 16);
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
LABEL_10:
        swift_beginAccess();
        (*(v3 + 16))(v3, *v11);

        return;
      }

      v6 = v12;
      if (v12 >= 1)
      {
        v14 = (v7 + 16);
        v15 = v3;
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1FC540](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          ++v8;
          aBlock[4] = closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getCell(for:_:)partial apply;
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
          aBlock[3] = &block_descriptor_59_2;
          v10 = _Block_copy(aBlock);

          [v9 getCellFor:a1 :v10];
          _Block_release(v10);
          swift_unknownObjectRelease();
        }

        while (v6 != v8);
        v11 = v14;
        v3 = v15;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v15 = a3;
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v14 = (v7 + 16);
      goto LABEL_4;
    }
  }

  v13 = *(v3 + 16);

  v13(v3, 0);
}

id DOCDocumentSourceIdentifierICloud_CurrentManaged_0(__n128 a1)
{
  v1 = FPIsCloudDocsWithFPFSEnabled();
  v2 = MEMORY[0x277D060D0];
  if (!v1)
  {
    v2 = MEMORY[0x277D060E0];
  }

  v3 = *v2;

  return v3;
}

id static DOCDocumentSourceIdentifier.iCloudCurrentManaged.getter(uint64_t (*a1)(void))
{
  result = a1();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id DOCDocumentSourceIdentifierICloud_Current_0(__n128 a1)
{
  v1 = FPIsCloudDocsWithFPFSEnabled();
  v2 = MEMORY[0x277D060C8];
  if (!v1)
  {
    v2 = MEMORY[0x277D060D8];
  }

  v3 = *v2;

  return v3;
}

uint64_t UIView.registerForUIPDocumentLandingTraitChanges<A>(options:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  return a7(a5, a6, &v9, a2, a3, a4);
}

uint64_t UIViewController.registerForTabSwitcherTraitChanges(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, uint64_t *, uint64_t, void *, uint64_t, __n128))
{
  ObjectType = swift_getObjectType();
  v12 = 0;
  v13 = 1;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = ObjectType;

  (a5)(1, 0, &v12, a4, v10, ObjectType);

  return swift_unknownObjectRelease();
}

uint64_t UIViewController.registerForUIPDocumentLandingTraitChanges(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t *, uint64_t, void *, uint64_t, __n128))
{
  ObjectType = swift_getObjectType();
  v12 = 0;
  v13 = 1;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = ObjectType;

  (a5)(0, 1, &v12, a4, v10, ObjectType);

  return swift_unknownObjectRelease();
}

uint64_t DOCMutableSidebarSection.__allocating_init(kind:title:sourceVisibilityController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = swift_allocObject();
  DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(v7, a2, a3, a4);
  return v8;
}

uint64_t DOCSidebarSectionKind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7368564;
  v2 = 0x6E6F697461636F6CLL;
  v3 = 0x73726576726573;
  if (a1 != 4)
  {
    v3 = 1936154996;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x796C746E65636572;
  if (a1 != 1)
  {
    v4 = 0x657469726F766166;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCSidebarSectionKind(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = *a2;
  v5 = 0x6E6F697461636F6CLL;
  v6 = 0xE900000000000073;
  v7 = 0xE700000000000000;
  v8 = 0x73726576726573;
  if (v2 != 4)
  {
    v8 = 1936154996;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x796C746E65636572;
  v10 = 0xEC00000064657355;
  if (v2 != 1)
  {
    v9 = 0x657469726F766166;
    v10 = 0xE900000000000073;
  }

  if (*a1)
  {
    v3 = v10;
  }

  else
  {
    v9 = 7368564;
  }

  if (*a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (*a2 <= 2u)
  {
    if (!*a2)
    {
      v13 = 0xE300000000000000;
      if (v11 != 7368564)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (v4 == 1)
    {
      v13 = 0xEC00000064657355;
      if (v11 != 0x796C746E65636572)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v14 = 0x657469726F766166;
LABEL_29:
    v13 = 0xE900000000000073;
    if (v11 != v14)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v4 == 3)
  {
    v14 = 0x6E6F697461636F6CLL;
    goto LABEL_29;
  }

  if (v4 == 4)
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x73726576726573)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v11 != 1936154996)
    {
LABEL_34:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v12 != v13)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCSidebarSectionKind()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DOCSidebarSectionKind(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarSectionKind(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCSidebarSectionKind@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCSidebarSectionKind.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCSidebarSectionKind(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0x6E6F697461636F6CLL;
  v6 = 0xE900000000000073;
  v7 = 0xE700000000000000;
  v8 = 0x73726576726573;
  if (v2 != 4)
  {
    v8 = 1936154996;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEC00000064657355;
  v10 = 0x796C746E65636572;
  if (v2 != 1)
  {
    v10 = 0x657469726F766166;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t DOCMutableSidebarSection.title.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double DOCMutableSidebarSection.title.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

uint64_t DOCMutableSidebarSection.deleteConfirmationTitle.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

double DOCMutableSidebarSection.deleteConfirmationTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

id DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  *(v4 + 48) = 1;
  result = _DocumentManagerBundle();
  if (result)
  {
    v10 = result;
    v16._object = 0x8000000249BC9970;
    v11._countAndFlagsBits = 0x6574656C6544;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v11._object = 0xE600000000000000;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v16);

    *(v4 + 56) = v14;
    *(v4 + 72) = 256;
    v15 = MEMORY[0x277D84F90];
    *(v4 + 16) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    *(v4 + 80) = a4;
    *(v4 + 88) = v15;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCMutableSidebarSection.getItems(forEditingMode:)(char a1)
{
  if (a1 == 2)
  {
    swift_beginAccess();

    return;
  }

  v1 = (*(*v41 + 312))();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v37 = *MEMORY[0x277D060F0];
    v36 = *MEMORY[0x277D05DD0];
    v33 = v3 - 1;
    v34 = v1 + 72;
    v5 = MEMORY[0x277D84F90];
    v39 = *(v1 + 16);
    v38 = v1;
    do
    {
      v35 = v5;
      v6 = (v34 + 48 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        v9 = *(v6 - 5);
        v10 = *(v6 - 4);
        v11 = *(v6 - 3);
        v43 = *(v6 - 1);
        v44 = *(v6 - 2);
        v12 = *v6;
        v42 = *v6;
        if (v12 != 1)
        {
          break;
        }

        v13 = v9;
        v14 = [v13 status];
        if (v14 == 1)
        {
          v40 = v13;
          v15 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
          v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v15);

          v17 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
          v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v17);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA08C0;
          v20 = DOCDocumentSourceIdentifierICloud_Current();
          if (!v20)
          {
            goto LABEL_37;
          }

          *(inited + 32) = v20;
          *(inited + 40) = v37;
          *(inited + 48) = v36;
          v21 = v37;
          v22 = v36;
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(inited);
          v24 = v23;
          swift_setDeallocating();
          type metadata accessor for DOCDocumentSourceIdentifier(0);
          swift_arrayDestroy();
          specialized Set.union<A>(_:)(v18, v16);
          specialized Set.union<A>(_:)(v24, v25);
          v26 = [v40 identifier];
          v27 = specialized Set.contains(_:)();

          v2 = v38;
          v3 = v39;
          if ((v27 & 1) == 0 && [v40 status] && objc_msgSend(v40, sel_status) != 2)
          {
LABEL_18:
            v5 = v35;
            goto LABEL_30;
          }
        }

        else
        {
          if (v14)
          {
            v8 = v14 == 2;
          }

          else
          {
            v8 = 1;
          }

          if (v8)
          {
            goto LABEL_18;
          }
        }

        ++v7;
        outlined consume of DOCSidebarItem(v9, v10, v11, v44, v43, 1u);
        v6 += 48;
        if (v3 == v7)
        {
          goto LABEL_35;
        }
      }

      if (*v6 > 3u)
      {
        v5 = v35;
        if (v12 == 4)
        {
          goto LABEL_27;
        }

        if (v12 != 5)
        {
          if (v11 | v10 | v9 | v44 | v43)
          {
            v9 = 1;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v5 = v35;
        if (!*v6 || v12 == 2)
        {
LABEL_27:
          v29 = v9;
          goto LABEL_30;
        }

        v28 = v9;
      }

LABEL_30:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      }

      v31 = *(v5 + 16);
      v30 = *(v5 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
      }

      v4 = v7 + 1;
      *(v5 + 16) = v31 + 1;
      v32 = v5 + 48 * v31;
      *(v32 + 32) = v9;
      *(v32 + 40) = v10;
      *(v32 + 48) = v11;
      *(v32 + 56) = v44;
      *(v32 + 64) = v43;
      *(v32 + 72) = v42;
      v3 = v39;
    }

    while (v33 != v7);
  }

LABEL_35:
}

uint64_t DOCMutableSidebarSection.PersistableState.init(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a2) = (*(a2 + 32))(ObjectType, a2);
  swift_unknownObjectRelease();
  return a2 & 1;
}

void protocol witness for CodingKey.init(stringValue:) in conformance DOCMutableSidebarSection.PersistableState.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465646E61707865 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCMutableSidebarSection.PersistableState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCMutableSidebarSection.PersistableState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DOCMutableSidebarSection.PersistableState.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMd, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DOCMutableSidebarSection.PersistableState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMd, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8 & 1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DOCMutableSidebarSection.PersistableState@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMd, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10 & 1;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance DOCMutableSidebarSection.PersistableState(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMd, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t DOCMutableSidebarSection.persistentState.getter()
{
  (*(*v0 + 184))();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v1;
}

uint64_t DOCMutableSidebarSection.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 8))(ObjectType, a2);
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

double DOCMutableSidebarSection.asHashable()()
{
  v1 = *(v0 + 24);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type NSUUID and conformance NSObject, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v2 = v1;
  AnyHashable.init<A>(_:)();
  return result;
}

uint64_t DOCMutableSidebarSection.restorePersistentState(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return (*(*v2 + 192))(v4);
}

void DOCMutableSidebarSection.absoluteIndex(fromIndex:editingMode:)(uint64_t a1, char a2)
{
  if (a2 != 2)
  {
    swift_beginAccess();
    if (*(*(v2 + 88) + 16))
    {
      v4 = 0;
      v5 = *MEMORY[0x277D060F0];
      v34 = *MEMORY[0x277D05DD0];
      v6 = a1 + 1;
      v7 = 0;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (v8)
        {
          return;
        }

        v9 = *(v2 + 88);
        if (v7 >= *(v9 + 16))
        {
          return;
        }

        v10 = v9 + 48 * v7;
        if (*(v10 + 72) <= 1u && *(v10 + 72))
        {
          v36 = *(v10 + 40);
          v37 = *(v10 + 48);
          v12 = *(v10 + 64);
          v38 = *(v10 + 56);
          v35 = *(v10 + 32);
          v13 = v35;
          v14 = [v13 status];
          if (v14 == 2)
          {
            goto LABEL_15;
          }

          if (v14 != 1)
          {
            if (v14)
            {
              goto LABEL_21;
            }

LABEL_15:
            outlined consume of DOCSidebarItem(v35, v36, v37, v38, v12, 1u);
            goto LABEL_8;
          }

          v32 = v12;
          v33 = v2;
          v15 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
          v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v15);

          v16 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
          v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v16);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA08C0;
          v19 = DOCDocumentSourceIdentifierICloud_Current();
          if (!v19)
          {
            goto LABEL_25;
          }

          *(inited + 32) = v19;
          *(inited + 40) = v5;
          *(inited + 48) = v34;
          v20 = v5;
          v21 = v34;
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(inited);
          v22 = v5;
          v24 = v23;
          swift_setDeallocating();
          type metadata accessor for DOCDocumentSourceIdentifier(0);
          swift_arrayDestroy();
          specialized Set.union<A>(_:)(v17, v31);
          v26 = v25;
          v27 = v24;
          v5 = v22;
          specialized Set.union<A>(_:)(v27, v26);
          v28 = [v13 identifier];
          v29 = specialized Set.contains(_:)();

          v12 = v32;
          v2 = v33;
          if ((v29 & 1) != 0 || ![v13 status])
          {
LABEL_21:
            outlined consume of DOCSidebarItem(v35, v36, v37, v38, v12, 1u);
LABEL_22:
            ++v7;
            goto LABEL_4;
          }

          v30 = [v13 status];
          outlined consume of DOCSidebarItem(v35, v36, v37, v38, v32, 1u);
          if (v30 == 2)
          {
            goto LABEL_22;
          }
        }

LABEL_8:
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }

        ++v4;
        v8 = 1;
        if (v6 != v4)
        {
          v4 = v11;
          ++v7;
          goto LABEL_4;
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCMutableSidebarSection.setItems(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  v1[11]._rawValue = a1._rawValue;
}

void DOCMutableSidebarSection.removeItem(_:editingMode:)(uint64_t a1)
{
  swift_beginAccess();
  outlined init with copy of DOCSidebarItem(a1, v6);
  specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + 88), a1);
  v4 = v3;
  outlined destroy of DOCSidebarItem(a1);
  v5 = *(*(v1 + 88) + 16);
  if (v5 < v4)
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v4, v5);
    swift_endAccess();
  }
}

void DOCMutableSidebarSection.insertItem(_:at:editingMode:)(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *a1;
  v10 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  DOCMutableSidebarSection.absoluteIndex(fromIndex:editingMode:)(a2, a3);
  v8 = v7;
  swift_beginAccess();
  if (*(*(v3 + 88) + 16) < v8)
  {
    __break(1u);
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    v12[0] = v9;
    v12[1] = v10;
    v13 = v5;
    v14 = v6;
    outlined init with copy of DOCSidebarItem(a1, v11);
    specialized Array.replaceSubrange<A>(_:with:)(v8, v8, v12);
    swift_endAccess();
    outlined destroy of DOCSidebarItem(a1);
    return;
  }

  __break(1u);
}

void DOCMutableSidebarSection.commit(newOrdering:editingMode:sourceReorderHandler:completion:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v9 = *(a1 + 16);
  swift_beginAccess();
  if (v9)
  {
    v10 = 0;
    v11 = a1 + 32;
    v99 = *MEMORY[0x277D060F0];
    v98 = *MEMORY[0x277D05DD0];
    v102 = a2;
    v100 = a1 + 32;
    v101 = v9;
    do
    {
      v13 = (v11 + 48 * v10);
      v14 = v13[1];
      v126 = *v13;
      v127[0] = v14;
      *(v127 + 9) = *(v13 + 25);
      v15 = *(*v6 + 320);
      outlined init with copy of DOCSidebarItem(&v126, aBlock);
      v16 = v15(a2);
      v17 = specialized Collection<>.firstIndex(of:)(&v126, v16);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        if (a2 == 2)
        {
          v20 = v10;
          goto LABEL_58;
        }

        v20 = v10;
        if (*(v6[11] + 16))
        {
          v21 = 0;
          v22 = v17 + 1;
          v17 = 0;
          v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
LABEL_11:
          v24 = 48 * v17;
          v25 = 1;
          while (1)
          {
            v26 = v6[11];
            v27 = *(v26 + 16);
            if ((v25 & 1) == 0 || v17 >= v27)
            {
              if (v27)
              {
                v20 = 0;
                v52 = 0;
                v53 = v10 + 1;
                v107 = v10;
LABEL_35:
                v54 = 0;
                v55 = 48 * v20;
                while (1)
                {
                  if (v54)
                  {
                    goto LABEL_57;
                  }

                  v56 = v6[11];
                  if (v20 >= *(v56 + 16))
                  {
                    goto LABEL_57;
                  }

                  v57 = v56 + v55;
                  if (*(v57 + 72) <= 1u && *(v57 + 72))
                  {
                    v114 = *(v57 + 40);
                    v116 = *(v57 + 48);
                    v59 = *(v57 + 64);
                    v118 = *(v57 + 56);
                    v112 = *(v57 + 32);
                    v106 = v112;
                    v60 = [v106 v23[305]];
                    if (v60)
                    {
                      v110 = v20;
                      if (v60 == 1)
                      {
                        v61 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
                        v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v61);

                        v62 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
                        v63 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v62);

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMR);
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_249BA08C0;
                        v65 = DOCDocumentSourceIdentifierICloud_Current();
                        if (!v65)
                        {
                          goto LABEL_85;
                        }

                        *(inited + 32) = v65;
                        *(inited + 40) = v99;
                        *(inited + 48) = v98;
                        v66 = v99;
                        v67 = v98;
                        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(inited);
                        v69 = v68;
                        swift_setDeallocating();
                        type metadata accessor for DOCDocumentSourceIdentifier(0);
                        swift_arrayDestroy();
                        specialized Set.union<A>(_:)(v63, v104);
                        specialized Set.union<A>(_:)(v69, v70);
                        v71 = [v106 identifier];
                        LOBYTE(v69) = specialized Set.contains(_:)();

                        v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
                        if ((v69 & 1) != 0 || ![v106 status])
                        {
LABEL_55:
                          outlined consume of DOCSidebarItem(v112, v114, v116, v118, v59, 1u);
                          v10 = v107;
                          v20 = v110;
                          goto LABEL_54;
                        }

                        v72 = [v106 status];
                        outlined consume of DOCSidebarItem(v112, v114, v116, v118, v59, 1u);
                        v51 = v72 == 2;
                        v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
                        v10 = v107;
                        v20 = v110;
                        if (v51)
                        {
                          goto LABEL_54;
                        }
                      }

                      else
                      {
                        if (v60 != 2)
                        {
                          goto LABEL_55;
                        }

                        outlined consume of DOCSidebarItem(v112, v114, v116, v118, v59, 1u);
                        v10 = v107;
                      }
                    }

                    else
                    {
                      outlined consume of DOCSidebarItem(v112, v114, v116, v118, v59, 1u);
                    }
                  }

                  v58 = v52 + 1;
                  if (__OFADD__(v52, 1))
                  {
                    goto LABEL_78;
                  }

                  ++v52;
                  v54 = 1;
                  if (v53 != v52)
                  {
                    v52 = v58;
LABEL_54:
                    ++v20;
                    goto LABEL_35;
                  }
                }
              }

              v20 = v10;
LABEL_57:
              a2 = v102;
              v11 = v100;
              v9 = v101;
              break;
            }

            v28 = (v26 + v24);
            v29 = *(v26 + v24 + 72);
            if (v29 <= 1 && v29)
            {
              v113 = v28[5];
              v115 = v28[6];
              v31 = v28[8];
              v117 = v28[7];
              v111 = v28[4];
              v32 = v111;
              v33 = [v32 v23[305]];
              if (!v33)
              {
                v34 = v111;
                v35 = v113;
                v36 = v115;
                v37 = v117;
                v38 = v31;
LABEL_30:
                outlined consume of DOCSidebarItem(v34, v35, v36, v37, v38, 1u);
                goto LABEL_15;
              }

              v109 = v31;
              if (v33 != 1)
              {
                if (v33 != 2)
                {
                  goto LABEL_31;
                }

                v34 = v111;
                v35 = v113;
                v36 = v115;
                v37 = v117;
                v38 = v31;
                goto LABEL_30;
              }

              v39 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
              v105 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v39);

              v40 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
              v103 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v40);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMR);
              v41 = swift_initStackObject();
              *(v41 + 16) = xmmword_249BA08C0;
              v42 = DOCDocumentSourceIdentifierICloud_Current();
              if (!v42)
              {
                __break(1u);
LABEL_85:
                __break(1u);
                return;
              }

              *(v41 + 32) = v42;
              *(v41 + 40) = v99;
              *(v41 + 48) = v98;
              v43 = v99;
              v44 = v98;
              _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(v41);
              v46 = v45;
              swift_setDeallocating();
              type metadata accessor for DOCDocumentSourceIdentifier(0);
              swift_arrayDestroy();
              specialized Set.union<A>(_:)(v103, v105);
              specialized Set.union<A>(_:)(v46, v47);
              v48 = [v32 identifier];
              v49 = specialized Set.contains(_:)();

              v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              if ((v49 & 1) != 0 || ![v32 status])
              {
LABEL_31:
                outlined consume of DOCSidebarItem(v111, v113, v115, v117, v109, 1u);
LABEL_32:
                ++v17;
                goto LABEL_11;
              }

              v50 = [v32 status];
              outlined consume of DOCSidebarItem(v111, v113, v115, v117, v109, 1u);
              v51 = v50 == 2;
              v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              if (v51)
              {
                goto LABEL_32;
              }
            }

LABEL_15:
            v30 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            v25 = 0;
            if (v22 != ++v21)
            {
              v21 = v30;
              ++v17;
              goto LABEL_11;
            }
          }
        }

LABEL_58:
        if (v17 != v20)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            if (__CocoaSet.count.getter() <= 0)
            {
              goto LABEL_83;
            }

LABEL_75:
            v90 = [objc_opt_self() sharedManager];
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v92 = swift_allocObject();
            *(v92 + 16) = a4;
            *(v92 + 24) = a5;
            aBlock[4] = partial apply for closure #1 in DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessary(locationMap:_:);
            aBlock[5] = v92;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
            aBlock[3] = &block_descriptor_82;
            v93 = _Block_copy(aBlock);

            [v90 updateFavoritesRanksToMatchOrderedFavorites:isa completion:v93];
            _Block_release(v93);

            return;
          }

          v73 = v6[11];
          if (v17 >= *(v73 + 16))
          {
            goto LABEL_80;
          }

          v108 = v10;
          v74 = v73 + 48 * v17;
          v75 = *(v74 + 32);
          v76 = *(v74 + 40);
          v77 = *(v74 + 48);
          v78 = *(v74 + 56);
          v79 = *(v74 + 64);
          v80 = *(v74 + 72);
          swift_beginAccess();
          outlined copy of DOCSidebarItem(v75, v76, v77, v78, v79, v80);
          specialized Array.remove(at:)(v17, v120);
          outlined destroy of DOCSidebarItem(v120);
          if (*(v6[11] + 16) < v20)
          {
            goto LABEL_81;
          }

          *&v121 = v75;
          *(&v121 + 1) = v76;
          v122 = v77;
          v123 = v78;
          v124 = v79;
          v125 = v80;
          outlined copy of DOCSidebarItem(v75, v76, v77, v78, v79, v80);
          specialized Array.replaceSubrange<A>(_:with:)(v20, v20, &v121);
          swift_endAccess();
          v81 = outlined consume of DOCSidebarItem(v75, v76, v77, v78, v79, v80);
          if (v80 == 2)
          {
            v12 = [objc_opt_self() sharedInstance];
            [v12 moveTag:v75 toIndex:v20];
          }

          else if (v80 == 1)
          {
            [a3 moveSource:v75 toIndex:{v20, v81}];
          }

          outlined consume of DOCSidebarItem(v75, v76, v77, v78, v79, v80);
          a2 = v102;
          v11 = v100;
          v9 = v101;
          v10 = v108;
        }
      }

      ++v10;
      outlined destroy of DOCSidebarItem(&v126);
    }

    while (v10 != v9);
  }

  swift_beginAccess();
  v82 = v6[11];
  v83 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v84 = *(v82 + 16);

  v85 = 0;
LABEL_66:
  v86 = v82 - 16 + 48 * v85;
  while (v84 != v85)
  {
    if (v85 >= *(v82 + 16))
    {
      goto LABEL_77;
    }

    ++v85;
    v87 = (v86 + 48);
    v88 = *(v86 + 88);
    v86 += 48;
    if (!v88)
    {
      v89 = *v87;
      MEMORY[0x24C1FB090]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v83 = aBlock[0];
      goto LABEL_66;
    }
  }

  if (v83 >> 62)
  {
    goto LABEL_82;
  }

  if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_75;
  }

LABEL_83:

  a4(v94);
}

uint64_t DOCMutableSidebarSection.deinit()
{

  return v0;
}

uint64_t DOCMutableSidebarSection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized Set.union<A>(_:)(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    specialized Set._Variant.insert(_:)(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
    lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type UITouch and conformance NSObject, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      outlined consume of Set<UITouch>.Iterator._Variant(v2);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 32); ; i += 3)
  {
    v4 = i[1];
    v12 = *i;
    v13[0] = v4;
    *(v13 + 9) = *(i + 25);
    outlined init with copy of DOCSidebarItem(&v12, &v11);
    v5 = DOCSidebarItem.hashComparableValue.getter();
    v7 = v6;
    if (v5 == DOCSidebarItem.hashComparableValue.getter() && v7 == v8)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of DOCSidebarItem(&v12);
    if (v9)
    {
      return v2;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  outlined destroy of DOCSidebarItem(&v12);
  return v2;
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = specialized Collection.firstIndex(where:)(*a1);
  if (!v2 && (v7 & 1) == 0)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      v11 = (v5 + 16);
      v10 = *(v5 + 16);
      if (v9 == v10)
      {
        return;
      }

      v41 = a1;
      v53 = a2;
      v12 = 48 * v6 + 120;
      while (v9 < v10)
      {
        v13 = *(v5 + v12 - 40);
        v14 = *(v5 + v12 - 24);
        *&v52[9] = *(v5 + v12 - 15);
        v51 = v13;
        *v52 = v14;
        outlined init with copy of DOCSidebarItem(&v51, v50);
        v15 = DOCSidebarItem.hashComparableValue.getter();
        v17 = v16;
        if (v15 == DOCSidebarItem.hashComparableValue.getter() && v17 == v18)
        {

          outlined destroy of DOCSidebarItem(&v51);
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined destroy of DOCSidebarItem(&v51);
          if ((v19 & 1) == 0)
          {
            if (v9 != v8)
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              if (v8 >= *v11)
              {
                goto LABEL_24;
              }

              if (v9 >= *v11)
              {
                goto LABEL_25;
              }

              v48 = v8;
              v49 = 48 * v8;
              v20 = v5 + 32 + 48 * v8;
              v21 = *(v5 + v12 - 40);
              v23 = *(v5 + v12 - 32);
              v22 = *(v5 + v12 - 24);
              v24 = *(v5 + v12 - 16);
              v25 = *(v5 + v12 - 8);
              v26 = *(v5 + v12);
              v42 = *v20;
              v43 = *(v20 + 32);
              v47 = *(v20 + 8);
              v44 = *(v20 + 24);
              v45 = *(v20 + 16);
              v46 = *(v20 + 40);
              outlined copy of DOCSidebarItem(*v20, v47, v45, v44, v43, v46);
              outlined copy of DOCSidebarItem(v21, v23, v22, v24, v25, v26);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
              }

              v27 = v5 + v49;
              v28 = *(v5 + v49 + 32);
              v29 = *(v5 + v49 + 40);
              v30 = *(v5 + v49 + 48);
              v31 = *(v5 + v49 + 56);
              v32 = *(v5 + v49 + 64);
              *(v27 + 32) = v21;
              *(v27 + 40) = v23;
              *(v27 + 48) = v22;
              *(v27 + 56) = v24;
              *(v27 + 64) = v25;
              v33 = *(v5 + v49 + 72);
              *(v27 + 72) = v26;
              outlined consume of DOCSidebarItem(v28, v29, v30, v31, v32, v33);
              v8 = v48;
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_26;
              }

              v34 = (v5 + v12);
              v35 = *(v5 + v12 - 40);
              v36 = *(v5 + v12 - 32);
              v37 = *(v5 + v12 - 24);
              v38 = *(v5 + v12 - 16);
              v39 = *(v5 + v12 - 8);
              *(v34 - 5) = v42;
              *(v34 - 4) = v47;
              *(v34 - 3) = v45;
              *(v34 - 2) = v44;
              *(v34 - 1) = v43;
              v40 = *(v5 + v12);
              *v34 = v46;
              outlined consume of DOCSidebarItem(v35, v36, v37, v38, v39, v40);
              *v41 = v5;
            }

            ++v8;
          }
        }

        ++v9;
        v11 = (v5 + 16);
        v10 = *(v5 + 16);
        v12 += 48;
        if (v9 == v10)
        {
          return;
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
    }

    __break(1u);
  }
}

unint64_t specialized DOCSidebarSectionKind.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCSidebarSectionKind.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState()
{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DOCSidebarSectionKind] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCSidebarSectionKind] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCSidebarSectionKind] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables21DOCSidebarSectionKindOGMd, &_sSay26DocumentManagerExecutables21DOCSidebarSectionKindOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCSidebarSectionKind] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarSectionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCSidebarSectionKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of DOCMutableSidebarSection.removeItem(_:editingMode:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*v1 + 400);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

uint64_t dispatch thunk of DOCMutableSidebarSection.insertItem(_:at:editingMode:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*v1 + 408);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

uint64_t static DOCFileOperation.mockTestable(withProgress:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v40 = type metadata accessor for Date();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v2);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DOCProgressProvidingOperationIconType(0);
  MEMORY[0x28223BE20](v45, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for UTType();
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v20 + 8))(v23, v19);
  v28 = v40;
  v27 = v41;
  NSProgress.iconUTType.getter(v18);
  v49 = v24;
  v50 = v26;
  v29 = v42;
  AnyHashable.init<A>(_:)();
  Date.init(timeIntervalSinceNow:)();
  v30 = v43;
  (*(v43 + 56))(v14, 0, 1, v28);
  v31 = *(v48 + 16);
  v44 = v15;
  v31(v6, v18, v15);
  v47 = v6;
  v32 = v30;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of AnyHashable(v51, v29);
  *(v29 + 40) = v27;
  outlined init with copy of DOCGridLayout.Spec?(v14, v10, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  v33 = *(v30 + 48);
  v45 = v10;
  LODWORD(v30) = v33(v10, 1, v28);
  v34 = v27;
  if (v30 == 1)
  {
    v35 = v46;
    Date.init(timeIntervalSinceNow:)();
    outlined destroy of CharacterSet?(v14, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    outlined destroy of AnyHashable(v51);
    (*(v48 + 8))(v18, v44);
    v36 = v45;
    v37 = v35;
    if (v33(v45, 1, v28) != 1)
    {
      outlined destroy of CharacterSet?(v36, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v14, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    outlined destroy of AnyHashable(v51);
    (*(v48 + 8))(v18, v44);
    v37 = v46;
    (*(v32 + 32))(v46, v45, v28);
  }

  v38 = type metadata accessor for DOCFileOperation(0);
  (*(v32 + 32))(v29 + *(v38 + 24), v37, v28);
  return outlined init with take of DOCProgressProvidingOperationIconType(v47, v29 + *(v38 + 28));
}

uint64_t one-time initialization function for prepareForTesting()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000028, 0x8000000249BE6FC0);
  static DOCProgressTestability.prepareForTesting = result;
  return result;
}

uint64_t one-time initialization function for readyForTesting()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000026, 0x8000000249BE6F90);
  static DOCProgressTestability.readyForTesting = result;
  return result;
}

uint64_t static DOCProgressTestability.resetProgressTestabilityState()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;

  specialized static DOCProgressTestability.resetProgressTestabilityState(then:)(partial apply for closure #1 in static DOCProgressTestability.resetProgressTestabilityState(), v5);

  v6 = [objc_opt_self() currentRunLoop];
  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  if ((*(v5 + 16) & 1) == 0)
  {
    v8 = (v1 + 8);
    do
    {
      if (CFAbsoluteTimeGetCurrent() - Current > 30.0)
      {
        break;
      }

      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v8)(v4, v0);
      [v6 runUntilDate_];
    }

    while ((*(v5 + 16) & 1) == 0);
  }

  v10 = *(v5 + 16);

  return v10;
}

uint64_t closure #1 in static DOCProgressTestability.resetProgressTestabilityState(then:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(double))
{
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(a2 + 16, &v8, &_sypSgMd, &_sypSgMR);
  v5 = *(&v9 + 1);
  result = outlined destroy of CharacterSet?(&v8, &_sypSgMd, &_sypSgMR);
  if (v5)
  {
    v8 = 0u;
    v9 = 0u;
    swift_beginAccess();
    outlined assign with take of Any?(&v8, a2 + 16);
    v7 = specialized static DOCProgressTestability.resetTestableURLs()();
    return a3(v7);
  }

  return result;
}

uint64_t closure #2 in static DOCProgressTestability._testableURLs.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a2, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  URL.init(string:relativeTo:)();
  outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result != 1)
  {
    return (*(v14 + 32))(a3, v12, v13);
  }

  __break(1u);
  return result;
}

uint64_t specialized static DOCProgressTestability._testableURLs.getter()
{
  v51 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v42 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = MEMORY[0x24C1FAD20](0xD00000000000001FLL, 0x8000000249BE6F50);
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier_];

  if (!v12)
  {
    __break(1u);
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = URL.path.getter();
  v15 = v14;
  v16 = *(v1 + 8);
  v45 = v1 + 8;
  v43 = v16;
  v16(v8, v0);
  v49 = v13;
  v50 = v15;

  MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BE6F70);

  v18 = v49;
  v17 = v50;
  v19 = [v9 defaultManager];
  v20 = MEMORY[0x24C1FAD20](v18, v17);
  v21 = [v19 fileExistsAtPath_];

  v46 = v0;
  v44 = v4;
  v42[2] = v18;
  v42[3] = v17;
  if ((v21 & 1) == 0)
  {
    v22 = [v9 defaultManager];
    v23 = MEMORY[0x24C1FAD20](v18, v17);
    v49 = 0;
    v24 = [v22 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:&v49];

    if (v24)
    {
      v25 = v49;
    }

    else
    {
      v26 = v49;
      v27 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v42[1] = 0;
  v48 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10, 0);
  v28 = 0;
  v29 = v48;
  do
  {
    v49 = 0x656C694674736554;
    v50 = 0xE90000000000002DLL;
    v47 = v28;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v30);

    MEMORY[0x24C1FAEA0](1717858350, 0xE400000000000000);
    v32 = v49;
    v31 = v50;
    v48 = v29;
    v34 = *(v29 + 16);
    v33 = *(v29 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v29 = v48;
    }

    ++v28;
    *(v29 + 16) = v34 + 1;
    v35 = v29 + 16 * v34;
    *(v35 + 32) = v32;
    *(v35 + 40) = v31;
  }

  while (v28 != 10);
  v36 = v44;
  URL.init(fileURLWithPath:)();

  MEMORY[0x28223BE20](v37, v38);
  v42[-2] = v36;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_10Foundation3URLVs5NeverOTg5(partial apply for closure #2 in static DOCProgressTestability._testableURLs.getter, &v42[-4], v29);
  v40 = v39;

  v43(v36, v46);
  return v40;
}

double specialized static DOCProgressTestability.resetProgressTestabilityState(then:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  if (one-time initialization token for readyForTesting != -1)
  {
    swift_once();
  }

  v6 = static DOCProgressTestability.readyForTesting;
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  v14 = partial apply for closure #1 in static DOCProgressTestability.resetProgressTestabilityState(then:);
  v15 = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  ObjectType = &block_descriptor_83;
  v9 = _Block_copy(aBlock);

  v10 = [v4 addObserverForName:v6 object:0 queue:v7 usingBlock:v9];
  _Block_release(v9);

  ObjectType = swift_getObjectType();
  aBlock[0] = v10;
  swift_beginAccess();
  outlined assign with take of Any?(aBlock, v5 + 16);
  if (one-time initialization token for prepareForTesting != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:static DOCProgressTestability.prepareForTesting object:0];

  return result;
}

double specialized static DOCProgressTestability.resetTestableURLs()()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = specialized static DOCProgressTestability._testableURLs.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = objc_opt_self();
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v24 = v9;
    v25 = v7;
    v10 = *(v8 + 64);
    v23 = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v12 = *(v8 + 56);
    v13 = (v8 - 8);
    do
    {
      v15 = v8;
      v24(v4, v11, v0);
      v16 = [v25 defaultManager];
      v17 = URL.path.getter();
      v18 = MEMORY[0x24C1FAD20](v17);

      v26[0] = 0;
      v19 = [v16 removeItemAtPath:v18 error:v26];

      if (v19)
      {
        v14 = v26[0];
      }

      else
      {
        v20 = v26[0];
        v21 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*v13)(v4, v0);
      v11 += v12;
      --v6;
      v8 = v15;
    }

    while (v6);
  }

  return result;
}

Swift::Int DOCAPIRateLimiterAPI.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCAPIRateLimiter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x3FF0000000000000;
  return result;
}

double static DOCAPIRateLimiter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static DOCAPIRateLimiter.shared.setter(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCAPIRateLimiter.shared = a1;

  return result;
}

uint64_t (*static DOCAPIRateLimiter.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

double key path getter for static DOCAPIRateLimiter.shared : DOCAPIRateLimiter.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCAPIRateLimiter.shared;

  return result;
}

double key path setter for static DOCAPIRateLimiter.shared : DOCAPIRateLimiter.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCAPIRateLimiter.shared = v1;

  return result;
}

BOOL DOCAPIRateLimiter.performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v11 = *a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = v11;

  v12 = COERCE_DOUBLE(DOCAPIRateLimiter._timeIntervalSinceLastCall(madeBy:)(&v26)) <= 1.0;
  v14 = v13 | v12;
  if ((v13 | v12))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315650;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x8000000249BE6FF0, &v26);
      *(v18 + 12) = 2080;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v26);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_2493AC000, v16, v17, "%s call to %s by: %s was rate-limited", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = v11;
    DOCAPIRateLimiter._updateLastCallTime(madeBy:)(&v26);

    a6(v24);
  }

  return (v14 & 1) == 0;
}

void DOCAPIRateLimiter._updateLastCallTime(madeBy:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v53 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v59 = *(a1 + 32);
  v17 = (*(*v1 + 120))(v10);
  if (v17)
  {
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
    v20 = v14;
    v21 = v19;
    v22 = MEMORY[0x24C1FAD20](v13, v20);
    [v21 setHostIdentifier_];

    if (v16)
    {
      v23 = MEMORY[0x24C1FAD20](v15, v16);
    }

    else
    {
      v23 = 0;
    }

    [v21 setRoleIdentifier_];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = MEMORY[0x24C1FAD20](v28);

    v30 = [v18 doc:v29 roleSpecificKeyForKey:v21 configuration:?];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    static Date.now.getter();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v57 = v18;
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.UI);
    v34 = *(v4 + 16);
    v58 = v12;
    v34(v7, v12, v3);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v55 = v21;
      v38 = v37;
      v54 = swift_slowAlloc();
      v60 = v54;
      *v38 = 136315650;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE70A0, &v60);
      *(v38 + 12) = 2080;
      lazy protocol witness table accessor for type Date and conformance Date();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = *(v4 + 8);
      v42(v7, v3);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v60);

      *(v38 + 14) = v43;
      *(v38 + 22) = 2080;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v32, &v60);

      *(v38 + 24) = v44;
      _os_log_impl(&dword_2493AC000, v35, v36, "%s updating last call to renameDocumentAtURL: timetstamp to: %s for key: %s", v38, 0x20u);
      v45 = v54;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v45, -1, -1);
      v46 = v38;
      v21 = v55;
      MEMORY[0x24C1FE850](v46, -1, -1);
    }

    else
    {

      v42 = *(v4 + 8);
      v42(v7, v3);
    }

    v47 = v58;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = MEMORY[0x24C1FAD20](v49);

    v51 = v57;
    [v57 doc:isa setObject:v50 forRoleKey:v21 configuation:?];

    v42(v47, v3);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.UI);
    v59 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60 = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE70A0, &v60);
      _os_log_impl(&dword_2493AC000, v59, v25, "%s unable to load docUserDefaults", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    else
    {
      v52 = v59;
    }
  }
}

uint64_t DOCAPIRateLimiter._timeIntervalSinceLastCall(madeBy:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v70 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v73 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v74 = &v70 - v13;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v75 = &v70 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = (*(*v1 + 120))(v16);
  if (v22)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
    v24 = v19;
    v25 = v23;
    v26 = MEMORY[0x24C1FAD20](v18, v24);
    [v25 setHostIdentifier_];

    v72 = v8;
    if (v21)
    {
      v27 = MEMORY[0x24C1FAD20](v20, v21);
    }

    else
    {
      v27 = 0;
    }

    [v25 setRoleIdentifier_];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = MEMORY[0x24C1FAD20](v34);

    v36 = [v22 doc:v35 roleSpecificKeyForKey:v25 configuration:?];

    v37 = v36;
    if (!v36)
    {
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = MEMORY[0x24C1FAD20](v38);
    }

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    v43 = __swift_project_value_buffer(v42, static Logger.UI);

    v71 = v43;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v70 = v22;
      v47 = v25;
      v48 = v46;
      v49 = swift_slowAlloc();
      *&v78[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BE70C0, v78);
      *(v48 + 12) = 2080;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v78);

      *(v48 + 14) = v50;
      _os_log_impl(&dword_2493AC000, v44, v45, "%s fetching last call to renameDocumentAtURL: timetstamp for key: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v49, -1, -1);
      v51 = v48;
      v25 = v47;
      v22 = v70;
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    else
    {
    }

    v53 = v74;
    v52 = v75;
    v54 = v73;
    v55 = [v22 valueForKey_];

    if (v55)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
    }

    v56 = v72;
    v78[0] = v76;
    v78[1] = v77;
    if (!*(&v77 + 1))
    {

      outlined destroy of CharacterSet?(v78, &_sypSgMd, &_sypSgMR);
      (*(v56 + 56))(v6, 1, 1, v7);
      goto LABEL_24;
    }

    v57 = swift_dynamicCast();
    (*(v56 + 56))(v6, v57 ^ 1u, 1, v7);
    if ((*(v56 + 48))(v6, 1, v7) == 1)
    {

LABEL_24:
      outlined destroy of CharacterSet?(v6, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
      return 0x4000000000000000;
    }

    (*(v56 + 32))(v52, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v59 = v58;
    (*(v56 + 16))(v54, v52, v7);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v78[0] = v73;
      *v62 = 136315650;
      *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BE70C0, v78);
      *(v62 + 12) = 2080;
      lazy protocol witness table accessor for type Date and conformance Date();
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v71 = v25;
      v66 = *(v56 + 8);
      v66(v54, v7);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v78);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2048;
      *(v62 + 24) = v59;
      _os_log_impl(&dword_2493AC000, v60, v61, "%s fetched date: %s time interval since now: %f", v62, 0x20u);
      v68 = v73;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v68, -1, -1);
      MEMORY[0x24C1FE850](v62, -1, -1);

      v66(v74, v7);
      v66(v75, v7);
    }

    else
    {

      v69 = *(v56 + 8);
      v69(v54, v7);
      v69(v53, v7);
      v69(v52, v7);
    }

    return v59;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.UI);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v78[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BE70C0, v78);
      _os_log_impl(&dword_2493AC000, v29, v30, "%s unable to load user defaults", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1FE850](v32, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    return 0;
  }
}

void __swiftcall DOCAPIRateLimiter.defaults()(NSUserDefaults_optional *__return_ptr retstr)
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static NSUserDefaults.docUserDefaults;
}

uint64_t DOCAPIRateLimiter.init()()
{
  result = v0;
  *(v0 + 16) = 0x3FF0000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCAPIRateLimiterAPI and conformance DOCAPIRateLimiterAPI()
{
  result = lazy protocol witness table cache variable for type DOCAPIRateLimiterAPI and conformance DOCAPIRateLimiterAPI;
  if (!lazy protocol witness table cache variable for type DOCAPIRateLimiterAPI and conformance DOCAPIRateLimiterAPI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAPIRateLimiterAPI and conformance DOCAPIRateLimiterAPI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t DOCViewDecorator.__allocating_init(_:wrappedForVibrancy:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  v3 = a1;
  return v2;
}

uint64_t DOCViewDecorator.__allocating_init(contentWithoutWrapping:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  v3 = a1;
  return v2;
}

void DOCViewDecorator<>.attributedText.setter(void *a1)
{
  specialized DOCViewDecorator<>.attributedText.setter(a1);
}

void DOCViewDecorator<>.textColor.setter(void *a1)
{
  specialized DOCViewDecorator<>.textColor.setter(a1);
}

uint64_t DOCViewDecorator<>.text.getter()
{
  v1 = [*(v0 + 24) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id DOCViewDecorator<>.attributedText.getter()
{
  v1 = [*(v0 + 24) attributedText];

  return v1;
}

id DOCViewDecorator.widthAnchor.getter()
{
  v1 = [*(v0 + 16) widthAnchor];

  return v1;
}

id DOCViewDecorator.centerYAnchor.getter()
{
  v1 = [*(v0 + 16) centerYAnchor];

  return v1;
}

id DOCViewDecorator.leadingAnchor.getter()
{
  v1 = [*(v0 + 16) leadingAnchor];

  return v1;
}

id DOCViewDecorator.trailingAnchor.getter()
{
  v1 = [*(v0 + 16) trailingAnchor];

  return v1;
}

id DOCViewDecorator.heightAnchor.getter()
{
  v1 = [*(v0 + 16) heightAnchor];

  return v1;
}

id DOCViewDecorator.centerXAnchor.getter()
{
  v1 = [*(v0 + 16) centerXAnchor];

  return v1;
}

id DOCViewDecorator.topAnchor.getter()
{
  v1 = [*(v0 + 16) topAnchor];

  return v1;
}

id DOCViewDecorator.bottomAnchor.getter()
{
  v1 = [*(v0 + 16) bottomAnchor];

  return v1;
}

uint64_t DOCViewDecorator.init(contentWithoutWrapping:)(void *a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = a1;
  v2 = a1;
  return v1;
}

uint64_t DOCViewDecorator.init(_:wrappedForVibrancy:)(void *a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = a1;
  v2 = a1;
  return v1;
}

uint64_t DOCViewDecorator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id DOCViewDecorator.setContentHuggingPriority(_:for:)(uint64_t a1, SEL *a2, float a3)
{
  [*(v3 + 16) *a2];
  v7 = *(v3 + 24);
  v8 = *a2;
  *&v9 = a3;

  return [v7 v8];
}

id DOCViewDecorator.layer.getter()
{
  v1 = [*(v0 + 16) layer];

  return v1;
}

id (*DOCViewDecorator.isHidden.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(v1 + 16) isHidden];
  return DOCViewDecorator.isHidden.modify;
}

id (*DOCViewDecorator.alpha.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [*(v1 + 16) alpha];
  *a1 = v3;
  return DOCViewDecorator.alpha.modify;
}

id DOCViewDecorator.firstBaselineAnchor.getter()
{
  v1 = [*(v0 + 16) firstBaselineAnchor];

  return v1;
}

id DOCViewDecorator.lastBaselineAnchor.getter()
{
  v1 = [*(v0 + 16) lastBaselineAnchor];

  return v1;
}

id (*DOCViewDecorator.translatesAutoresizingMaskIntoConstraints.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(v1 + 16) translatesAutoresizingMaskIntoConstraints];
  return DOCViewDecorator.translatesAutoresizingMaskIntoConstraints.modify;
}

id DOCViewDecorator.setNeedsDisplay()(SEL *a1)
{
  [*(v1 + 16) *a1];
  v3 = *(v1 + 24);
  v4 = *a1;

  return [v3 v4];
}

void DOCViewDecorator.tintColor.setter(void *a1)
{
  specialized DOCViewDecorator.tintColor.setter(a1);
}

void (*DOCViewDecorator.tintColor.modify(id *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = DOCViewDecorator.tintColor.getter();
  return DOCViewDecorator.tintColor.modify;
}

uint64_t (*DOCViewDecorator<>.configurationUpdateHandler.getter())()
{
  result = [*(v0 + 24) configurationUpdateHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  }

  return result;
}

uint64_t (*key path getter for DOCViewDecorator<>.configurationUpdateHandler : <A>DOCViewDecorator<A>@<X0>(void *a1@<X8>))()
{
  result = DOCViewDecorator<>.configurationUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t key path setter for DOCViewDecorator<>.configurationUpdateHandler : <A>DOCViewDecorator<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1, v2);
  specialized DOCViewDecorator<>.configurationUpdateHandler.setter(v4, v3);

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4, v3);
}

uint64_t DOCViewDecorator<>.configurationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  specialized DOCViewDecorator<>.configurationUpdateHandler.setter(a1, a2);

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1, a2);
}

uint64_t (*DOCViewDecorator<>.configurationUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = DOCViewDecorator<>.configurationUpdateHandler.getter();
  a1[1] = v3;
  return DOCViewDecorator<>.configurationUpdateHandler.modify;
}

uint64_t DOCViewDecorator<>.configurationUpdateHandler.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4, v3);
    specialized DOCViewDecorator<>.configurationUpdateHandler.setter(v2, v3);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2, v3);
  }

  else
  {
    specialized DOCViewDecorator<>.configurationUpdateHandler.setter(v4, v3);
  }

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2, v3);
}

void DOCViewDecorator<>.configuration.getter()
{
  v1 = *(v0 + 24);
  UIButton.configuration.getter();
}

uint64_t key path setter for DOCViewDecorator<>.configuration : <A>DOCViewDecorator<A>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  outlined init with copy of UIButton.Configuration?(a1, &v7 - v4);
  return DOCViewDecorator<>.configuration.setter(v5);
}

uint64_t DOCViewDecorator<>.configuration.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = *(v1 + 24);
  outlined init with copy of UIButton.Configuration?(a1, &v9 - v6);
  v7 = v5;
  UIButton.configuration.setter();

  return outlined destroy of UIButton.Configuration?(a1);
}

void (*DOCViewDecorator<>.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  DOCViewDecorator<>.configuration.getter();
  return DOCViewDecorator<>.configuration.modify;
}

void DOCViewDecorator<>.configuration.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of UIButton.Configuration?(v3, v2);
    DOCViewDecorator<>.configuration.setter(v2);
    outlined destroy of UIButton.Configuration?(v3);
  }

  else
  {
    DOCViewDecorator<>.configuration.setter(v3);
  }

  free(v3);

  free(v2);
}

id DOCViewDecorator<>.menu.getter()
{
  v1 = [*(v0 + 24) menu];

  return v1;
}

void DOCViewDecorator<>.menu.setter(void *a1)
{
  specialized DOCViewDecorator<>.menu.setter(a1);
}

void (*DOCViewDecorator<>.menu.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + 24) menu];
  return DOCViewDecorator<>.menu.modify;
}

void DOCViewDecorator<>.menu.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    [*(v2 + 24) setMenu_];
  }

  else
  {
    v3 = *a1;
    [*(v2 + 24) setMenu_];
  }
}

void DOCViewDecorator<>.font.setter(void *a1)
{
  specialized DOCViewDecorator<>.font.setter(a1);
}

void DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v5 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v21 - v11;
  v21[0] = v3;
  v23 = *(v3 + 24);
  v24 = v23;
  v13 = v23;
  v14 = swift_readAtKeyPath();
  v15 = *(v6 + 16);
  v15(v12);
  v14(v22, 0);

  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(v6 + 8))(v12, v5);
  }

  else
  {
    (v15)(v8, a2, v5);
    swift_setAtWritableKeyPath();
    v16 = *(v21[0] + 16);
    v17 = *(v21[0] + 24);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v18 = v16;
    v19 = v17;
    v20 = static NSObject.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      [v18 invalidateIntrinsicContentSize];
    }

    (*(v6 + 8))(v12, v5);
    v13 = v24;
  }
}

void (*DOCViewDecorator<>.font.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = DOCViewDecorator<>.font.getter();
  return DOCViewDecorator<>.font.modify;
}

void DOCViewDecorator<>.font.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = *a1;
  if (a2)
  {
    v3 = v2;
    specialized DOCViewDecorator<>.font.setter(v3);
  }

  else
  {
    specialized DOCViewDecorator<>.font.setter(v2);
  }
}

double DOCViewDecorator<>.numberOfLines.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = a1;
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, &v4, MEMORY[0x277D83BA8]);

  return result;
}

double (*DOCViewDecorator<>.numberOfLines.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 24) numberOfLines];
  return DOCViewDecorator<>.numberOfLines.modify;
}

id DOCViewDecorator.tintColor.getter(SEL *a1)
{
  result = [*(v1 + 24) *a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void (*DOCViewDecorator<>.textColor.modify(id *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = DOCViewDecorator<>.textColor.getter();
  return DOCViewDecorator<>.textColor.modify;
}

void DOCViewDecorator.tintColor.modify(uint64_t a1, char a2, const char **a3)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + 24);
  v5 = *a3;
  v7 = *a1;
  if (a2)
  {
    v6 = v3;
    [v4 v5];
  }

  else
  {
    [v4 v5];
  }
}

void (*DOCViewDecorator<>.attributedText.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + 24) attributedText];
  return DOCViewDecorator<>.attributedText.modify;
}

void DOCViewDecorator<>.attributedText.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    specialized DOCViewDecorator<>.attributedText.setter(v4);

    v3 = v2;
  }

  else
  {
    specialized DOCViewDecorator<>.attributedText.setter(*a1);
    v3 = v4;
  }
}

double key path setter for DOCViewDecorator<>.text : <A>DOCViewDecorator<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  specialized DOCViewDecorator<>.text.setter(v1, v2);

  return result;
}

double DOCViewDecorator<>.text.setter(uint64_t a1, uint64_t a2)
{
  specialized DOCViewDecorator<>.text.setter(a1, a2);

  return result;
}

void key path getter for UILabel.text : UILabel(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
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

void key path setter for UILabel.text : UILabel(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x24C1FAD20](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

double (*DOCViewDecorator<>.text.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = DOCViewDecorator<>.text.getter();
  a1[1] = v3;
  return DOCViewDecorator<>.text.modify;
}

double DOCViewDecorator<>.text.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    specialized DOCViewDecorator<>.text.setter(v3, v2);
  }

  else
  {
    specialized DOCViewDecorator<>.text.setter(*a1, v2);
  }

  return result;
}

uint64_t (*DOCViewDecorator<>.textAlignment.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = [*(v1 + 24) textAlignment];
  return DOCViewDecorator<>.textAlignment.modify;
}

double DOCViewDecorator<>.adjustsFontForContentSizeCategory.setter(char a1)
{
  KeyPath = swift_getKeyPath();
  v4 = a1;
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, &v4, MEMORY[0x277D839C8]);

  return result;
}

double (*DOCViewDecorator<>.adjustsFontForContentSizeCategory.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(v1 + 24) adjustsFontForContentSizeCategory];
  return DOCViewDecorator<>.adjustsFontForContentSizeCategory.modify;
}

double specialized DOCViewDecorator<>.attributedText.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v5 = a1;
  v3 = lazy protocol witness table accessor for type NSAttributedString? and conformance <A> A?();
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, &v5, v3);

  return result;
}

void specialized DOCViewDecorator<>.configurationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v9[3] = &block_descriptor_84;
    v6 = _Block_copy(v9);
    v7 = v3;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1, a2);
  }

  else
  {
    v8 = v3;
    v6 = 0;
  }

  [v3 setConfigurationUpdateHandler_];
  _Block_release(v6);
}

double specialized DOCViewDecorator<>.font.setter(void *a1)
{
  KeyPath = swift_getKeyPath();
  v6 = a1;
  v3 = lazy protocol witness table accessor for type UIFont? and conformance <A> A?();
  v4 = a1;
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, &v6, v3);

  return result;
}

double specialized DOCViewDecorator<>.text.setter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v7[0] = a1;
  v7[1] = a2;
  v5 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, v7, v5);

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String and conformance String();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIFont? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIFont? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIFont? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6UIFontCSgMd, _sSo6UIFontCSgMR);
    lazy protocol witness table accessor for type UIFont and conformance NSObject(&lazy protocol witness table cache variable for type UIFont and conformance NSObject, &lazy cache variable for type metadata for UIFont, 0x277D74300);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFont? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSAttributedString? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type NSAttributedString? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type NSAttributedString? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo18NSAttributedStringCSgMd, &_sSo18NSAttributedStringCSgMR);
    lazy protocol witness table accessor for type UIFont and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedString? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIFont and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSMutableAttributedString(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id QLItem.node.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 fpItem];
  if (v8)
  {

    return [v1 fpItem];
  }

  else
  {
    v10 = [v1 previewItemURL];
    if (v10)
    {
      v11 = v10;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v12);
      v14 = v13;
      (*(v3 + 8))(v7, v2);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_opt_self() fiNodeFromURL_];

    return v15;
  }
}

void DOCPreviewController.reload(withUpdatedNode:previousNode:)(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16);
  if (v3 != 255)
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    if (v3)
    {
      outlined copy of DOCPreviewSource(*v2, *(v2 + 8), 1);
    }

    else
    {
      v18 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16);
      v24 = MEMORY[0x277D84F90];
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
LABEL_48:
        v7 = __CocoaSet.count.getter();
      }

      else
      {
        v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v1;
      v19 = v4;
      outlined copy of DOCPreviewSource(v5, v4, 0);
      if (v7)
      {
        v8 = 0;
        v4 = (v5 & 0xC000000000000001);
        v9 = MEMORY[0x277D84F90];
        while (2)
        {
          v1 = v8;
          while (1)
          {
            if (v4)
            {
              v10 = MEMORY[0x24C1FC540](v1, v5);
              v8 = v1 + 1;
              if (__OFADD__(v1, 1))
              {
                goto LABEL_44;
              }
            }

            else
            {
              if (v1 >= *(v6 + 16))
              {
                goto LABEL_45;
              }

              v10 = *(v5 + 8 * v1 + 32);
              swift_unknownObjectRetain();
              v8 = v1 + 1;
              if (__OFADD__(v1, 1))
              {
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
                goto LABEL_48;
              }
            }

            swift_getObjectType();
            if ([v10 isActionable])
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v1;
            if (v8 == v7)
            {
              goto LABEL_28;
            }
          }

          DOCNode.identifierKey.getter();
          swift_getObjectType();
          DOCNode.identifierKey.getter();
          v11 = MEMORY[0x24C1FC430](&v21, v20);
          outlined destroy of AnyHashable(v20);
          outlined destroy of AnyHashable(&v21);
          if (v11 & 1) != 0 || (DOCNode.identifierKey.getter(), swift_getObjectType(), DOCNode.identifierKey.getter(), v12 = MEMORY[0x24C1FC430](&v21, v20), outlined destroy of AnyHashable(v20), v13 = outlined destroy of AnyHashable(&v21), (v12))
          {
            swift_unknownObjectRelease();
            v13 = swift_unknownObjectRetain();
          }

          v1 = &v24;
          MEMORY[0x24C1FB090](v13);
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = v24;
          if (v8 != v7)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

LABEL_28:
      outlined consume of DOCPreviewSource?(v5, v19, v18);
      v4 = (v9 & 0xFFFFFFFFFFFFFF8);
      if (v9 >> 62)
      {
        v6 = __CocoaSet.count.getter();
      }

      else
      {
        v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = 0;
      while (1)
      {
        if (v6 == v5)
        {
          v16 = v17;
          v5 = [v17 currentPreviewItemIndex];
          goto LABEL_42;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C1FC540](v5, v9);
        }

        else
        {
          if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v14 = *(v9 + 8 * v5 + 32);
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v1 = DOCNode.isEqualTo(node:)(v14);
        swift_unknownObjectRelease();
        if (v1)
        {
          break;
        }

        if (__OFADD__(v5++, 1))
        {
          goto LABEL_47;
        }
      }

      v16 = v17;
LABEL_42:
      v21 = v9;
      v22 = 0;
      v23 = 0;
      (*((*MEMORY[0x277D85000] & *v16) + 0x1C8))(&v21, v5, 0);
      outlined consume of DOCPreviewSource?(v21, v22, v23);
    }
  }
}

void DOCPreviewController.reload(withDuplicatedNode:original:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  swift_getObjectType();

  specialized DOCPreviewController.reload(withDuplicatedNode:original:)(a1, a2, v2);
}

Swift::Int __swiftcall DOCPreviewSource.count()()
{
  v1 = *v0;
  if (v0[2])
  {
    return *(v1 + 16);
  }

  if (v1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t DOCPreviewSource.allQLItems.getter()
{
  v1 = *v0;
  v7 = MEMORY[0x277D84F90];
  if (v0[1])
  {
    v2 = *v0;
  }

  else
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6 < 0)
      {
        __break(1u);
      }

      v3 = v6;
      if (v6)
      {
        goto LABEL_5;
      }

      return MEMORY[0x277D84F90];
    }
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v4 = 0;
  do
  {
    DOCPreviewSource.qlItemAt(_:)(v4);
    MEMORY[0x24C1FB090]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v4;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v3 != v4);
  return v7;
}

id DOCPreviewSource.qlItemAt(_:)(unint64_t a1)
{
  v3 = type metadata accessor for UTType();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v52 - v18;
  v22.n128_f64[0] = MEMORY[0x28223BE20](v20, v21);
  v24 = &v52 - v23;
  v25 = *v1;
  if (v1[2])
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(v25 + 16) > a1)
      {
        (*(v12 + 16))(v15, v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a1, v11, v22.n128_f64[0]);
        v26 = objc_allocWithZone(MEMORY[0x277CDAA48]);
        URL._bridgeToObjectiveC()(v27);
        v29 = v28;
        v30 = [v26 initWithURL_];

        (*(v12 + 8))(v15, v11);
        return v30;
      }

      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }

  v53 = v25 + 8 * a1;
  v54 = v25 & 0xC000000000000001;
  if ((v25 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v15 = MEMORY[0x24C1FC540](a1, v25, v22);
    goto LABEL_9;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = *(v25 + 8 * a1 + 32);
  swift_unknownObjectRetain();
LABEL_9:
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    swift_unknownObjectRetain();
    v33 = [v32 fileURL];
    if (v33)
    {
      v34 = v33;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v12 + 32))(v24, v19, v11);
      v35 = objc_allocWithZone(MEMORY[0x277CDAA48]);
      URL._bridgeToObjectiveC()(v36);
      v38 = v37;
      v30 = [v35 initWithURL_];

      swift_unknownObjectRelease();
      (*(v12 + 8))(v24, v11);
      if (!v54)
      {
        goto LABEL_19;
      }

LABEL_16:
      v40 = v30;
      v41 = MEMORY[0x24C1FC540](a1, v25);
LABEL_20:
      v45 = [v41 contentType];
      swift_unknownObjectRelease();
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      static UTType.pdf.getter();
      v46 = UTType.conforms(to:)();
      v47 = *(v55 + 8);
      v48 = v6;
      v49 = v56;
      v47(v48, v56);
      v47(v10, v49);
      [v30 setUseFullPDFTransition_];

      swift_unknownObjectRelease();
      return v30;
    }

    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CDAA48]) initWithFPItem_];
    if (v54)
    {
      goto LABEL_16;
    }

LABEL_19:
    v41 = *(v53 + 32);
    v44 = v30;
    swift_unknownObjectRetain();
    goto LABEL_20;
  }

  v42 = [v15 fpfs_fpItem];
  if (v42)
  {
    v43 = v42;
    v30 = [objc_allocWithZone(MEMORY[0x277CDAA48]) initWithFPItem_];

    if (v54)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

LABEL_27:
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v58 = 0xD000000000000015;
  v59 = 0x8000000249BE7150;
  v57 = v15;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  v51 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v51);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t DOCPreviewSource.canCopy.getter()
{
  v23 = *v0;
  v21 = v0[1];
  v22 = *(v0 + 16);
  if ((v22 & 1) == 0)
  {
    if (v23 >> 62)
    {
      goto LABEL_24;
    }

    v1 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      while (1)
      {
        v2 = 0;
        while ((v23 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x24C1FC540](v2, v23);
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_21:
            __break(1u);
            return 0;
          }

LABEL_10:
          v5 = [v3 providerDomainID];
          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v7;

          if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
          {
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v11 & 1) == 0)
            {
              swift_unknownObjectRelease();
              goto LABEL_6;
            }
          }

          v12 = [v3 isAppContainer];
          swift_unknownObjectRelease();
          if (v12)
          {
            return 0;
          }

LABEL_6:
          ++v2;
          if (v4 == v1)
          {
            goto LABEL_25;
          }
        }

        if (v2 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v1 = __CocoaSet.count.getter();
        if (!v1)
        {
          goto LABEL_25;
        }
      }

      v3 = *(v23 + 8 * v2 + 32);
      swift_unknownObjectRetain();
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }
  }

LABEL_25:
  v14 = [objc_opt_self() defaultPermission];
  if ([(objc_class *)v14 hasOpenInRestrictions])
  {
    if ((v22 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v19 = &selRef_canCopyNodes_;
LABEL_33:
      v13 = [v14 *v19];

      v14 = isa;
      goto LABEL_34;
    }

    v15 = [v21 providerDomain];
    if (v15)
    {
      v16 = v15;
      isa = [v15 topLevelBundleIdentifier];

      if (!isa)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        isa = MEMORY[0x24C1FAD20](v18);
      }

      v19 = &selRef_canCopyfromContainingBundleIdentifer_;
      goto LABEL_33;
    }
  }

  v13 = 1;
LABEL_34:

  return v13;
}

id DOCQLItemsPreviewController.init(previewItems:)(unint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCQLItemsPreviewController__nonSourceBasedQLItems] = a1;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13QLPreviewItem_pMd, _sSo13QLPreviewItem_pMR);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13QLPreviewItem_pMd, _sSo13QLPreviewItem_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCQLItemsPreviewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPreviewItems_, isa);

  return v3;
}

id DOCQLItemsPreviewController.init(nibName:bundle:)(__n128 a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCQLItemsPreviewController__nonSourceBasedQLItems] = MEMORY[0x277D84F90];
  if (a3)
  {
    v6 = MEMORY[0x24C1FAD20](a2, a1);
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v4;
  v9.super_class = type metadata accessor for DOCQLItemsPreviewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a4);

  return v7;
}

id DOCQLItemsPreviewController.__allocating_init(previewItems:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13QLPreviewItem_pMd, _sSo13QLPreviewItem_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithPreviewItems_];

  return v4;
}

void (*DOCPreviewController.editingDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_editingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

void (*DOCPreviewController.visibilityDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_visibilityDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

void DOCPreviewController.actionManager.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCPreviewController.actionManager.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_actionManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

void *DOCPreviewController.configuration.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPreviewController.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCPreviewController.duplicatedNodeObserver.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeObserver;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPreviewController.duplicatedNodeObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeObserver;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCPreviewController.duplicatedNodeSubscriber.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeSubscriber;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPreviewController.duplicatedNodeSubscriber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeSubscriber;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id static DOCPreviewController.thumbnailCallbackQueue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setMaxConcurrentOperationCount_];
  v1 = MEMORY[0x24C1FAD20](0xD000000000000030, 0x8000000249BE71D0);
  [v0 setName_];

  return v0;
}

uint64_t DOCPreviewController.qlItems.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16) == 255)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return DOCPreviewSource.allQLItems.getter();
  }
}

void DOCPreviewController.set(_:defaultIndex:)(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v71 = a3;
  v68 = a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v65 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v17 = &v65 - v16;
  v18 = *(a1 + 8);
  v79 = *a1;
  v19 = *(a1 + 16);
  if (v19 == 255)
  {
    v7 = 0;
    v30 = 0;
    v31 = v18;
    v32 = -1;
    v78 = v31;
    v33 = v79;
    goto LABEL_82;
  }

  v69 = *(a1 + 16);
  v70 = v18;
  if (v19)
  {
    v66 = v15;
    v67 = v4;
    v20 = v79;
    v4 = *(v79 + 16);
    outlined copy of DOCPreviewSource?(v79, v18, v19);
    v21 = v18;
    v78 = v4;
    if (!v4)
    {
      v22 = MEMORY[0x277D84F90];
LABEL_31:
      if (v71)
      {
        v7 = 0;
        v78 = v70;
        v4 = v67;
        goto LABEL_60;
      }

      v18 = v70;
      if ((v68 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v4 = v67;
        if (*(v20 + 16) > v68)
        {
          v39 = v66;
          (*(v7 + 16))(v66, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v68, v6);
          v40 = specialized Collection<>.firstIndex(of:)(v39, v22);
          v42 = v41;
          (*(v7 + 8))(v39, v6);
          if (v42)
          {
            v7 = 0;
          }

          else
          {
            v7 = v40;
          }

          v78 = v18;
          goto LABEL_60;
        }
      }

      __break(1u);
      goto LABEL_91;
    }

    v4 = 0;
    v18 = 0;
    v72 = (v7 + 8);
    v76 = (v7 + 32);
    v77 = v7 + 16;
    v22 = MEMORY[0x277D84F90];
    v74 = v7;
    v75 = v6;
    v73 = v12;
    while (v4 < *(v20 + 16))
    {
      v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v24 = *(v7 + 72);
      (*(v7 + 16))(v17, v20 + v23 + v24 * v4, v6);
      if (closure #3 in DOCPreviewController.set(_:defaultIndex:)(v17))
      {
        v25 = *v76;
        (*v76)(v12, v17, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
          v20 = v79;
          v22 = v81;
        }

        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v20 = v79;
          v22 = v81;
        }

        *(v22 + 16) = v28 + 1;
        v29 = v22 + v23 + v28 * v24;
        v12 = v73;
        v6 = v75;
        v25(v29, v73, v75);
        v7 = v74;
      }

      else
      {
        (*v72)(v17, v6);
      }

      if (v78 == ++v4)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v81 = MEMORY[0x277D84F90];
  v20 = v79;
  v6 = v79 & 0xFFFFFFFFFFFFFF8;
  if (v79 >> 62)
  {
LABEL_88:
    v34 = __CocoaSet.count.getter();
    goto LABEL_17;
  }

  v34 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  outlined copy of DOCPreviewSource(v20, v18, 0);
  if (!v34)
  {
    v18 = 0;
    v22 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v35 = v4;
  v36 = 0;
  v18 = 0;
  v4 = v20 & 0xC000000000000001;
  while (v4)
  {
    v37 = MEMORY[0x24C1FC540](v36, v20);
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_28;
    }

LABEL_24:
    v80 = v37;
    if (closure #1 in DOCPreviewController.set(_:defaultIndex:)(&v80))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v20 = v79;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v36;
    if (v38 == v34)
    {
      goto LABEL_29;
    }
  }

  if (v36 >= *(v6 + 16))
  {
    goto LABEL_84;
  }

  v37 = *(v20 + 8 * v36 + 32);
  swift_unknownObjectRetain();
  v38 = v36 + 1;
  if (!__OFADD__(v36, 1))
  {
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v22 = v81;
  v4 = v35;
LABEL_40:
  if (v71)
  {
    v7 = 0;
    v78 = 0;
    goto LABEL_60;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x24C1FC540](v68, v20);
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_93;
    }

LABEL_46:
    if ((v22 & 0x4000000000000000) != 0)
    {
      goto LABEL_93;
    }

    v6 = v4;
    v43 = *(v22 + 16);
LABEL_48:
    v7 = 0;
    v4 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v43 == v7)
      {
        swift_unknownObjectRelease();
        v7 = 0;
        v78 = 0;
        v4 = v6;
        goto LABEL_60;
      }

      if (v4)
      {
        v44 = v22;
        v45 = MEMORY[0x24C1FC540](v7, v22);
      }

      else
      {
        if (v7 >= *(v22 + 16))
        {
          goto LABEL_86;
        }

        v44 = v22;
        v45 = *(v22 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v46 = DOCNode.isEqualTo(node:)(v45);
      swift_unknownObjectRelease();
      if (v46)
      {
        break;
      }

      v47 = __OFADD__(v7++, 1);
      v22 = v44;
      if (v47)
      {
        goto LABEL_87;
      }
    }

    swift_unknownObjectRelease();
    v78 = 0;
    v4 = v6;
    v22 = v44;
LABEL_60:
    v18 = [objc_opt_self() defaultPermission];
    if (![v18 hasOpenInRestrictions])
    {
      goto LABEL_80;
    }

    if (v69)
    {
      v48 = v78;
      v49 = [v48 providerDomain];
      if (v49)
      {
        v50 = v22;
        v51 = v49;
        v52 = [v49 topLevelBundleIdentifier];

        if (!v52)
        {
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = MEMORY[0x24C1FAD20](v53);
        }

        v54 = [v18 dataOwnerStateForBundleIdentifier_];

        v55 = v69;
        outlined consume of DOCPreviewSource?(v79, v70, v69);

        v30 = v54 == 1;
        v22 = v50;
        goto LABEL_81;
      }

LABEL_80:
      v55 = v69;
      outlined consume of DOCPreviewSource?(v79, v70, v69);
      v30 = 0;
      goto LABEL_81;
    }

    v67 = v4;
    v4 = v22 & 0xFFFFFFFFFFFFFF8;
    if (!(v22 >> 62))
    {
      v56 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_68:
      v6 = v22 & 0xC000000000000001;
      v20 = v22;

      v57 = 0;
      while (1)
      {
        if (v56 == v57)
        {
          goto LABEL_78;
        }

        if (v6)
        {
          v58 = MEMORY[0x24C1FC540](v57, v20);
          if (__OFADD__(v57, 1))
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v57 >= *(v4 + 16))
          {
            goto LABEL_85;
          }

          v58 = *(v20 + 8 * v57 + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(v57, 1))
          {
LABEL_77:
            __break(1u);
LABEL_78:

            v22 = v20;
            outlined consume of DOCPreviewSource(v20, v78, 0);
            v55 = v69;
            outlined consume of DOCPreviewSource?(v79, v70, v69);
            v30 = 0;
            v4 = v67;
LABEL_81:
            v32 = v55 & 1;
            v33 = v22;
LABEL_82:
            v60 = v4 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source;
            v61 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source);
            v62 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 8);
            v63 = v78;
            *v60 = v33;
            *(v60 + 8) = v63;
            v64 = *(v60 + 16);
            *(v60 + 16) = v32;
            outlined copy of DOCPreviewSource?(v33, v63, v32);
            outlined consume of DOCPreviewSource?(v61, v62, v64);
            [v4 setIsContentManaged_];
            [v4 reloadDataWithIndex_];
            outlined consume of DOCPreviewSource?(v33, v63, v32);
            return;
          }
        }

        v59 = [v18 dataOwnerStateForNode_];
        swift_unknownObjectRelease();
        ++v57;
        if (v59 == 1)
        {

          v22 = v20;
          outlined consume of DOCPreviewSource(v20, v78, 0);
          v55 = v69;
          outlined consume of DOCPreviewSource?(v79, v70, v69);
          v30 = 1;
          v4 = v67;
          goto LABEL_81;
        }
      }
    }

LABEL_91:
    v56 = __CocoaSet.count.getter();
    goto LABEL_68;
  }

  if ((v68 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > v68)
  {
    v20 = *(v20 + 8 * v68 + 32);
    swift_unknownObjectRetain();
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_93:
    v6 = v4;
    v43 = __CocoaSet.count.getter();
    goto LABEL_48;
  }

  __break(1u);

  swift_unknownObjectRelease();

  __break(1u);

  (*v72)(v34, v6);

  __break(1u);
}

uint64_t closure #1 in DOCPreviewController.set(_:defaultIndex:)(void **a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - v9;
  v11 = *a1;
  swift_getObjectType();
  if ([v11 isFolder])
  {
    return 0;
  }

  v13 = [v11 nodeURL];
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (URL.isFileURL.getter())
  {
    (*(v3 + 8))(v10, v2);
    return 1;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.UI);
  (*(v3 + 16))(v6, v10, v2);
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v17;
    v19 = v18;
    v34 = swift_slowAlloc();
    v35 = v34;
    *v19 = 136315394;
    v32 = v16;
    v20 = DOCNode.nodeDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v35);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = *(v3 + 8);
    v26(v6, v2);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v35);

    *(v19 + 14) = v27;
    v28 = v32;
    _os_log_impl(&dword_2493AC000, v32, v33, "Filtering item: %s with invalid URL: %s from QL data source", v19, 0x16u);
    v29 = v34;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v29, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);

    v26(v10, v2);
  }

  else
  {

    v30 = *(v3 + 8);
    v30(v6, v2);
    v30(v10, v2);
  }

  return 0;
}