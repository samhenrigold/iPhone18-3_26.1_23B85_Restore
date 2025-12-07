void closure #1 in closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 136))())
  {
    type metadata accessor for OS_dispatch_queue();
    v6 = static OS_dispatch_queue.main.getter();
    (*(*a1 + 208))(v6, a2, a3);
  }
}

double specialized closure #2 in closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a4 + 24) localizedDisconnectionBannerText];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  a1(a3, v8, v10);

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned FPDomainState, @guaranteed Error) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

uint64_t DOCProviderDomainStateManager.deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCProviderDomainStateManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t specialized DOCProviderDomainStateManager.State.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCProviderDomainStateManager.State.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DOCProviderDomainStateManager.State and conformance DOCProviderDomainStateManager.State()
{
  result = lazy protocol witness table cache variable for type DOCProviderDomainStateManager.State and conformance DOCProviderDomainStateManager.State;
  if (!lazy protocol witness table cache variable for type DOCProviderDomainStateManager.State and conformance DOCProviderDomainStateManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProviderDomainStateManager.State and conformance DOCProviderDomainStateManager.State);
  }

  return result;
}

uint64_t type metadata accessor for DOCProviderDomainStateManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCProviderDomainStateManager;
  if (!type metadata singleton initialization cache for DOCProviderDomainStateManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DOCProviderDomainStateManager(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:)(void *a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    v8 = objc_opt_self();
    v9 = a1;
    v10 = [v8 defaultManager];
    v11 = [v9 itemID];
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = group;
    v16[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:);
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    v16[3] = &block_descriptor_59;
    v13 = _Block_copy(v16);
    v14 = v9;

    v15 = group;

    [v10 fetchParentsForItemID:v11 recursively:1 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {

    dispatch_group_leave(group);
  }
}

void closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, char **a5, dispatch_group_t group)
{
  if (a2)
  {
    goto LABEL_49;
  }

  v9 = a1;
  if (!a1)
  {
    goto LABEL_49;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
  v12 = a3;
  v13 = 0;
  v14 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v12, 3);

  v66 = a5;

  v15 = _DocumentManagerBundle();
  if (!v15)
  {
    __break(1u);
    goto LABEL_55;
  }

  v16 = v15;
  v69._object = 0x8000000249BD09D0;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0xD00000000000001CLL;
  v18._object = 0x8000000249BD0990;
  v19._object = 0x8000000249BD09B0;
  v69._countAndFlagsBits = 0xD000000000000031;
  v19._countAndFlagsBits = 0xD000000000000010;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v69);
  countAndFlagsBits = v20._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0x68736172542ELL;
  v22 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v20;

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
  if (!v14)
  {
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = 1;
    *(v27 + 24) = v12;
    *(v27 + 32) = 1;
    *(v27 + 40) = v20;
    *(v27 + 56) = v6;
    *(v27 + 64) = a4;
    *(v27 + 72) = 0;
    *(v27 + 80) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:);
    *(v27 + 88) = a5;
    *(v27 + 96) = v9;
    aBlock[4] = partial apply for closure #1 in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_65_0;
    v28 = _Block_copy(aBlock);
    v29 = v12;

    [v26 fetchProviderDomainForItem:v29 cachePolicy:1 completionHandler:v28];

    _Block_release(v28);
    goto LABEL_49;
  }

  object = v20._object;
  a5 = MEMORY[0x277D84F90];
  v67 = v9;
  aBlock[0] = MEMORY[0x277D84F90];
  if (v9 >> 62 && __CocoaSet.count.getter() < 0)
  {
    __break(1u);
LABEL_18:
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), a5, 1, v32);
    goto LABEL_10;
  }

  v12 = v12;

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v12);

  v23 = &selRef_initWithFrame_;
  [v12 isTrashed];
  v24 = v14;
  if (DOCProviderDomainIsSharedServerDomain())
  {

    v25 = v67;
    goto LABEL_23;
  }

  v14 = group;
  v9 = v24;
  v30 = DOCLocalizedDisplayName();
  inited = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v31;

  v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  group = *(v32 + 2);
  v33 = *(v32 + 3);
  a5 = (&group->isa + 1);
  if (group >= v33 >> 1)
  {
    goto LABEL_18;
  }

LABEL_10:
  *(v32 + 2) = a5;
  v34 = &v32[16 * group];
  *(v34 + 4) = inited;
  *(v34 + 5) = v22;
  aBlock[0] = v32;
  v25 = v67;
  if (v67 >> 62)
  {
    v38 = __CocoaSet.count.getter();
    group = v14;
    v24 = v9;
    a5 = MEMORY[0x277D84F90];
    if (v38 <= 0)
    {
      goto LABEL_22;
    }

    if (!__CocoaSet.count.getter())
    {
      __break(1u);
      goto LABEL_22;
    }

LABEL_55:
    swift_isUniquelyReferenced_nonNull_bridgeObject();
    group = v14;
    v24 = v9;
    goto LABEL_13;
  }

  group = v14;
  v24 = v9;
  a5 = MEMORY[0x277D84F90];
  if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:

    v23 = &selRef_initWithFrame_;
    goto LABEL_23;
  }

  if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
LABEL_13:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = &selRef_initWithFrame_;
  if (!v35)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v36 = v35 - 1;
  v37 = *((v25 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20);
  *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) = v36;

LABEL_23:
  specialized Sequence.forEach(_:)(v25, aBlock);
  v13 = aBlock[0];
  v63 = v24;
  if (*(aBlock[0] + 2) >= 3uLL && (*(aBlock[0] + 6) == 0x736568736172542ELL && *(aBlock[0] + 7) == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v23 = v25;
    specialized Array.remove(at:)(1uLL);

    specialized Array.remove(at:)(1uLL);

    v13 = aBlock[0];
    v25 = *(aBlock[0] + 2);
    if (v25)
    {
      v12 = object;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v25 >= *(v13 + 3) >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25 + 1, 1, v13);
        aBlock[0] = v13;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (![v12 v23[86]])
  {
    goto LABEL_38;
  }

  v12 = object;
  if (!*(v13 + 2))
  {
    goto LABEL_38;
  }

  v23 = a5;
  v40 = *(v13 + 4);
  v41 = *(v13 + 5);

  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  aBlock[0] = v13;
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v40, v41);

  v25 = *(v13 + 2);
  if (!v25)
  {
    goto LABEL_52;
  }

  aBlock[0] = v13;
  v42 = *(v13 + 3);

  if (v25 >= v42 >> 1)
  {
LABEL_53:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v25 + 1, 1, v13);
    aBlock[0] = v13;
  }

  a5 = v23;
LABEL_37:
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1uLL, 1, 1, countAndFlagsBits, v12);

LABEL_38:
  v43 = *(v13 + 2);
  if (v43)
  {
    v62 = group;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
    v44 = a5;
    v45 = (v13 + 40);
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      v48 = *(v6 + 16);

      if (v48)
      {
        v49 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
        if (v50)
        {
          v51 = (*(v6 + 56) + 16 * v49);
          v46 = *v51;
          v52 = v51[1];

          v47 = v52;
        }
      }

      v54 = a5[2];
      v53 = a5[3];
      if (v54 >= v53 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
      }

      a5[2] = (v54 + 1);
      v55 = &a5[2 * v54];
      v55[4] = v46;
      v55[5] = v47;
      v45 += 2;
      --v43;
    }

    while (v43);

    group = v62;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v56 = specialized pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(v44, 0);
  v57 = pathForCopy(fromPathComponents:layoutDirection:)(v44, a4);
  v59 = v58;

  v60 = swift_allocObject();
  v60[2] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:);
  v60[3] = v66;
  v60[4] = v56;
  v60[5] = v57;
  v60[6] = v59;

  v61 = v56;
  DOCRunInMainThread(_:)();

LABEL_49:
  dispatch_group_leave(group);
}

void closure #1 in closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    v7 = *(a4 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      *(a4 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = a2;
    *(v11 + 5) = a3;
    *(a4 + 16) = v7;
    swift_endAccess();
  }
}

void closure #2 in DOCItemCollectionViewController.performCopyAsPathname(_:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (*(v2 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v3 = BidirectionalCollection<>.joined(separator:)();
    v5 = v4;

    v6 = [objc_opt_self() generalPasteboard];
    v7 = MEMORY[0x24C1FAD20](v3, v5);

    [v6 setString_];
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performCreateFolder(_:)(UIKeyCommand *a1)
{
  v4[3] = type metadata accessor for DOCItemCollectionViewController(0);
  v4[0] = v1;
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1548);
  v3 = v1;
  v2(v4);
  outlined destroy of CharacterSet?(v4, &_sypSgMd, &_sypSgMR);
}

Swift::Void __swiftcall DOCItemCollectionViewController.performMoveHere(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0xA98))())
  {
    goto LABEL_6;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  v16 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand, 0x277D75650);
  v15[0] = a1;
  v8 = *(v6 + 32);
  v9 = a1;
  v10 = v8(v1, sel_moveHere_, v15, ObjectType, v6);
  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v15, &_sypSgMd, &_sypSgMR);
  if (!v10)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_6:
    v12 = v1;
    goto LABEL_7;
  }

  v12 = v11;
LABEL_7:
  v16 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand, 0x277D75650);
  v15[0] = a1;
  v13 = *((*v4 & *v12) + 0x1540);
  v14 = a1;
  v13(v15);
  outlined destroy of CharacterSet?(v15, &_sypSgMd, &_sypSgMR);
  [v2 setEditing:0 animated:{1, v15[0]}];
}

uint64_t DOCItemCollectionViewController.canConfirmPickerImport.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1010))();
  v2 = [v1 indexPathsForSelectedItems];

  if (v2)
  {
    type metadata accessor for IndexPath();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = *(v3 + 16);

    LODWORD(v2) = v2 != 0;
  }

  return [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forPickingDocuments] & v2;
}

double DOCItemCollectionViewController.confirmPickerImport()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  if (DOCItemCollectionViewController.canConfirmPickerImport.getter())
  {
    v12 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v0) + 0x130))() & 1) != 0 && (v13 = DOCItemCollectionViewController.multiSelectionOpenAction.getter()) != 0)
    {
      v14 = v13;
      v21 = DOCItemCollectionViewController.actionContext(from:)();
      [v0 performActionWithAction:v14 actionContext:v21];

      v15 = v21;
    }

    else
    {
      v16 = (*((*v12 & *v0) + 0x1330))();
      if (*(v16 + 16))
      {
        (*(v3 + 16))(v6, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

        v17 = (*(v3 + 32))(v10, v6, v2);
        v18 = (*((*v12 & *v0) + 0x1010))(v17);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v1 collectionView:v18 performPrimaryActionForItemAtIndexPath:isa];

        (*(v3 + 8))(v10, v2);
      }

      else
      {
      }
    }
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.confirmPickerExportOrDrillIn()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0)
  {
    if (!DOCItemCollectionViewController.exportablePickerTargetNode.getter())
    {
      return;
    }

    swift_unknownObjectRelease();
  }

  if (DOCItemCollectionViewController.canDrillInToPickerSelection.getter())
  {
    v11 = MEMORY[0x277D85000];
    v12 = (*((*MEMORY[0x277D85000] & *v0) + 0x1330))();
    if (*(v12 + 16))
    {
      (*(v3 + 16))(v6, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      v13 = (*(v3 + 32))(v10, v6, v2);
      v14 = (*((*v11 & *v0) + 0x1010))(v13);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v1 collectionView:v14 performPrimaryActionForItemAtIndexPath:isa];

      (*(v3 + 8))(v10, v2);
      return;
    }
  }

  v16 = DOCItemCollectionViewController.exportablePickerTargetNode.getter();
  if (v16)
  {
    v17 = v16;
    v18 = (*((*MEMORY[0x277D85000] & *v0) + 0xE8))();
    if (v18)
    {
      [v18 didConfirmPickIn_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performCommandReturnKey(_:)(UIKeyCommand *a1)
{
  if (DOCItemCollectionViewController.canConfirmPickerImport.getter())
  {

    DOCItemCollectionViewController.confirmPickerImport()();
  }

  else
  {
    if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0)
    {
      if (!DOCItemCollectionViewController.exportablePickerTargetNode.getter())
      {
        return;
      }

      swift_unknownObjectRelease();
    }

    DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
  }
}

unint64_t DOCItemCollectionViewController.canDrillInToPickerSelection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (([v1 forMovingDocuments] & 1) != 0 || objc_msgSend(v1, sel_forPickingDocuments) && (objc_msgSend(v1, sel_forSavingDocuments) & 1) != 0 || (result = objc_msgSend(v1, sel_forPickingFolders), result))
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1338);
    result = v3();
    if (result >> 62)
    {
      v9 = result;
      v10 = __CocoaSet.count.getter();
      result = v9;
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((result & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](0);
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v4 = *(result + 32);
        swift_unknownObjectRetain();
      }

      v6 = (v3)(v5);
      if (v6 >> 62)
      {
        v7 = __CocoaSet.count.getter();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7 == 1 && [v4 isFolder])
      {
        v8 = [v4 isReadable];
        swift_unknownObjectRelease();
        return v8;
      }

      swift_unknownObjectRelease();
      return 0;
    }

    return 0;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.exportablePickerTargetNode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (([v1 forMovingDocuments] & 1) == 0 && (!objc_msgSend(v1, sel_forPickingDocuments) || (objc_msgSend(v1, sel_forSavingDocuments) & 1) == 0) && !objc_msgSend(v1, sel_forPickingFolders))
  {
    return 0;
  }

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xE8))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = (*((*v2 & *v0) + 0xC70))();
  if (!v5)
  {
LABEL_14:
    swift_unknownObjectRelease();
    return v5;
  }

  v6 = (*((*v2 & *v0) + 0x1338))();
  if (v6 >> 62)
  {
    v8 = __CocoaSet.count.getter();

    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
LABEL_9:
      swift_unknownObjectRelease();
LABEL_10:
      v5 = 0;
      goto LABEL_14;
    }
  }

  v9 = [v4 pickerOperationFor_];
  if ((v9 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (v9)
  {
    v11 = v9 == 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = [v1 forPickingFolders];
    swift_unknownObjectRelease();
    if (v12)
    {
      return v5;
    }

    goto LABEL_10;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.performRename(_:)(UIKeyCommand *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v51 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v51 - v18;
  if (DOCItemCollectionViewController.canDrillInToPickerSelection.getter())
  {
LABEL_4:

    DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
    return;
  }

  if (DOCItemCollectionViewController.exportablePickerTargetNode.getter())
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v20 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v21 = [v20 forPickingFolders];
  v22 = MEMORY[0x277D85000];
  if ((v21 & 1) != 0 || ([v20 forPickingDocuments]) && ((*((*v22 & *v1) + 0x130))() & 1) == 0)
  {

    [v1 performOpen_];
  }

  else
  {
    v23 = (*v22 & *v1);
    v56 = v1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v57 = v8;
    v23 += 514;
    v24 = *v23;
    v25 = (*v23)();
    v26 = [v25 indexPathsForSelectedItems];

    if (v26)
    {
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = *(v27 + 16);

      if (v28 == 1)
      {
        v30 = (v24)(v29);
        v31 = [v30 indexPathsForSelectedItems];

        if (v31)
        {
          v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v33 = v57;
          v34 = MEMORY[0x277D85000];
          if (*(v32 + 16))
          {
            (*(v57 + 16))(v15, v32 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v7);

            v35 = *(v33 + 32);
            v35(v19, v15, v7);
            (*((*v34 & *v1) + 0x18A0))(v19);
            if ((*(v33 + 48))(v6, 1, v7) == 1)
            {
              (*(v33 + 8))(v19, v7);
              outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            }

            else
            {
              v35(v11, v6, v7);
              v36 = (*((*v34 & *v1) + 0xD88))(v11, 0);
              if (v36)
              {
                v37 = v36;
                v54 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
                v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v55 = v38;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_249BA0290;
                *(inited + 32) = v37;
                v40 = *((*v34 & *v1) + 0xC70);
                v41 = swift_unknownObjectRetain();
                v42 = v40(v41);
                v43 = DOCItemCollectionViewController.actionContext(from:)();
                All = specialized Array<A>.fpfs_syncFetchAllFPItems()(inited);
                swift_setDeallocating();
                swift_arrayDestroy();
                v56 = v42;
                if (All)
                {
                  v52 = v43;
                  v45 = v55;
                  if (v42)
                  {
                    swift_getObjectType();
                    v46 = DOCNode.fpfs_syncFetchFPItem()();
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v48 = v57;
                  v49 = v52;
                  DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v53, v45, All, v46, v52);
                }

                else
                {

                  v48 = v57;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v50 = *(v48 + 8);
                v50(v11, v7);
                v50(v19, v7);
              }

              else
              {
                v47 = *(v33 + 8);
                v47(v11, v7);
                v47(v19, v7);
              }
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
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performPreview(_:)(UIKeyCommand *a1)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  v21.n128_f64[0] = MEMORY[0x28223BE20](v19, v20);
  v23 = (&v40 - v22);
  v24 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v21);
  v25 = [v24 indexPathsForSelectedItems];

  if (v25)
  {
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v26 + 16))
    {
      v41 = v14;
      (*(v11 + 16))(v18, v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

      v40 = *(v11 + 32);
      v40(v23, v18, v10);
      (*(v11 + 56))(v9, 1, 1, v10);
      DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v9);
      outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v29 = v44;
      v43 = v28;
      *(v28 + 16) = v27;
      *(v28 + 24) = v29;
      v30 = *((*MEMORY[0x277D85000] & *v1) + 0x18A0);

      v42 = v29;
      v44 = v23;
      v30(v23);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {
        outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        v31 = v41;
        v40(v41, v5, v10);
        if ((*((*MEMORY[0x277D85000] & *v1) + 0xD88))(v31, 0))
        {

          swift_getObjectType();
          v32 = swift_allocObject();
          v33 = v43;
          *(v32 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.performPreview(_:);
          *(v32 + 24) = v33;

          DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:), v32);

          swift_unknownObjectRelease();

          v34 = *(v11 + 8);
          v34(v31, v10);
          v34(v44, v10);
          return;
        }

        (*(v11 + 8))(v31, v10);
      }

      v35 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v37 = swift_allocObject();
      v37[2] = v35;
      v37[3] = 0;
      v38 = v42;
      v37[4] = v42;
      v39 = v38;

      DOCRunInMainThread(_:)();

      (*(v11 + 8))(v44, v10);
    }

    else
    {
    }
  }
}

double closure #1 in DOCItemCollectionViewController.performPreview(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a3;
  v8 = a1;
  v9 = a3;

  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in DOCItemCollectionViewController.performPreview(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v56 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *Strong) + 0xCB8))();
  Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v12);

  v15 = (*((*v11 & *v10) + 0x1018))(v14);
  if (!v15)
  {
    LOBYTE(v17) = 0;
    if (!a2)
    {
      goto LABEL_30;
    }

LABEL_11:
    v20 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration;
    v21 = *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    v22 = a2;
    v23 = v10;
    if ([v21 isFilesApp] && (v17 & 1) != 0)
    {
      v61 = v22;
      v62 = Available;
      v58 = a3;
      v59 = a2;
      v60 = v23;
      v57 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager;
      v24 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager];
      v25 = [v24 actions];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = [v24 associatedActionManagers];
      type metadata accessor for DOCActionManager(0);
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = specialized Sequence.flatMap<A>(_:)(v28);

      v66[0] = v26;
      specialized Array.append<A>(contentsOf:)(v29);

      v30 = v66[0];
      v56 = v20;
      if (v66[0] >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v32 = 0;
        v63 = v30 & 0xFFFFFFFFFFFFFF8;
        v64 = v30 & 0xC000000000000001;
        while (1)
        {
          if (v64)
          {
            v33 = MEMORY[0x24C1FC540](v32, v30);
          }

          else
          {
            if (v32 >= *(v63 + 16))
            {
              goto LABEL_39;
            }

            v33 = *(v30 + 8 * v32 + 32);
          }

          v34 = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v36 = [v33 identifier];
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
          {

LABEL_37:

            v44 = *(v10 + v56);
            v45 = v60;
            v46 = v60;
            v47 = v44;
            v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            v49 = type metadata accessor for DOCActionContext();
            v50 = objc_allocWithZone(v49);
            swift_unknownObjectWeakInit();
            *&v50[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
            *&v50[OBJC_IVAR___DOCActionContext_appearance] = 0;
            *&v50[OBJC_IVAR___DOCActionContext_configuration] = v47;
            *&v50[OBJC_IVAR___DOCActionContext_presentingViewController] = v46;
            swift_beginAccess();
            swift_unknownObjectWeakAssign();
            *&v50[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
            *&v50[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
            *&v50[OBJC_IVAR___DOCActionContext_userInfo] = v48;
            v65.receiver = v50;
            v65.super_class = v49;
            v51 = objc_msgSendSuper2(&v65, sel_init);
            v52 = *&v45[v57];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_249BA0290;
            v54 = v61;
            *(v53 + 32) = v61;
            v55 = v54;
            specialized DOCActionManager.perform(_:on:actionContext:)(v34, v53, v51);

            goto LABEL_31;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v42)
          {
            goto LABEL_37;
          }

          ++v32;
          if (v35 == i)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_41:

      a2 = v59;
      v23 = v60;
      Available = v62;
      v11 = MEMORY[0x277D85000];
    }

    else
    {
    }

    goto LABEL_30;
  }

  v16 = v15;
  v17 = [v15 window];

  if (!v17)
  {
LABEL_10:
    if (!a2)
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  v18 = [v17 windowScene];

  if (!v18)
  {
    LOBYTE(v17) = 0;
    goto LABEL_10;
  }

  if (a2)
  {
    v19 = [a2 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v43 = type metadata accessor for UTType();
  (*(*(v43 - 8) + 56))(v8, v17, 1, v43);
  LOBYTE(v17) = UIWindowScene.configurationSupportsPreviewInNewWindow(contentType:)(v8);

  outlined destroy of CharacterSet?(v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_30:
  (*((*v11 & *v10) + 0x1440))(Available, a2);
LABEL_31:
}

Swift::Void __swiftcall DOCItemCollectionViewController.performGoToEnclosingFolder(_:)(UIKeyCommand *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v6 = (v2)(a1);
  v3 = v2();
  v4 = [v3 effectiveUserInterfaceLayoutDirection];

  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v5, 0);
}

void specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for timestampOfLastKeyboardFocusKeyCommand != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, &sharedTypeToFocusInputView._minimumSafeAreaInsets);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  Date.timeIntervalSinceNow.getter();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  sharedTypeToFocusInputView._minimumSafeAreaInsets.right = -v20;
  Date.init()();
  swift_beginAccess();
  (*(v14 + 40))(v18, v17, v13);
  swift_endAccess();
  [objc_msgSend(objc_opt_self() shared)];
  swift_unknownObjectRelease();
  v21 = [v3 effectiveUserInterfaceLayoutDirection];
  if (a1 == 4)
  {
    if (v21 == 1)
    {
      a1 = 3;
    }

    else
    {
      a1 = 4;
    }
  }

  else if (a1 == 3)
  {
    if (v21 == 1)
    {
      a1 = 4;
    }

    else
    {
      a1 = 3;
    }
  }

  v48 = a2;
  v22 = a2 & 3;
  v23 = [v3 indexPathsForSelectedItems];
  if (v23)
  {

    v24 = [v3 indexPathsForSelectedItems];
    if (!v24)
    {
      __break(1u);
      goto LABEL_32;
    }

    v25 = v24;
    v26 = type metadata accessor for IndexPath();
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v27 + 16);

    if (v28)
    {
      v46 = *((*MEMORY[0x277D85000] & *v3) + 0xF0);
      v30 = (v46)(v29);
      (*(*v30 + 104))(v30);

      v31 = *(v26 - 8);
      v32 = *(v31 + 48);
      v33 = v32(v12, 1, v26);
      outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      if (v33 != 1 && v22 != 2)
      {
        v34 = v48;
        if ((v48 & 1) == 0)
        {
LABEL_17:
          if (one-time initialization token for keyboardFocus != -1)
          {
            swift_once();
          }

          static os_log_type_t.debug.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_249B9A480;
          *(v35 + 56) = type metadata accessor for DOCItemCollectionView();
          *(v35 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DOCItemCollectionView and conformance NSObject, type metadata accessor for DOCItemCollectionView, MEMORY[0x277D85388]);
          *(v35 + 32) = v3;
          v3;
          os_log(_:dso:log:type:_:)("Changing focus in in %p", v43);

          specialized DOCFocusableCollectionView.changeFocus(with:)(a1);
          return;
        }

        if ([v3 isEditing])
        {
LABEL_30:
          specialized DOCFocusableCollectionView.selectOrExtendSelection(with:toBoundary:)(a1, (v34 >> 1) & 1);
          return;
        }

        if (!(*((*MEMORY[0x277D85000] & *v3) + 0xD8))())
        {
          goto LABEL_17;
        }

        v45 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
        v44 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_249B9A480;
        v39 = v46();
        v40 = v47;
        (*(*v39 + 104))(v39);

        if (v32(v40, 1, v26) != 1)
        {
          ObjectType = swift_getObjectType();
          (*(v31 + 32))(v38 + v44, v40, v26);
          v42 = (*(v45 + 96))(v3, &protocol witness table for DOCItemCollectionView, v38, ObjectType);
          swift_unknownObjectRelease();

          v34 = v48;
          if ((v42 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_30;
        }

LABEL_32:
        __break(1u);
        return;
      }
    }
  }

  if (one-time initialization token for keyboardFocus != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_249B9A480;
  *(v36 + 56) = type metadata accessor for DOCItemCollectionView();
  *(v36 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DOCItemCollectionView and conformance NSObject, type metadata accessor for DOCItemCollectionView, MEMORY[0x277D85388]);
  *(v36 + 32) = v3;
  v3;
  os_log(_:dso:log:type:_:)("Focusing inital item in %p", v43);

  if (v22 == 2 && (a1 - 1) <= 3)
  {
    a1 = qword_249BA5920[a1 - 1];
  }

  specialized DOCFocusableCollectionView.focusInitialItem(with:animated:ignoringPreviouslyFocusedItem:)(a1, v22 == 2);
}

Swift::Void __swiftcall DOCItemCollectionViewController.performGoToEnclosingFolderInNewWindow(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  v6 = (*((*v4 & *v1) + 0xA68))();
  v7 = (*((*v4 & *v6) + 0x198))();

  if ((v7 & 1) == 0)
  {
    if (!v5)
    {
      return;
    }

    v9 = v5;
    goto LABEL_10;
  }

  v8 = (*((*v4 & *v2) + 0x1338))();
  if (v8 >> 62)
  {
    v14 = v8;
    v15 = __CocoaSet.count.getter();
    v8 = v14;
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(v8 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
LABEL_10:
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    v16[4] = partial apply for closure #1 in DOCItemCollectionViewController.performGoToEnclosingFolderInNewWindow(_:);
    v16[5] = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    v16[3] = &block_descriptor_33;
    v12 = _Block_copy(v16);
    v13 = a1;

    [v9 fetchParent_];
    _Block_release(v12);
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
}

void closure #1 in DOCItemCollectionViewController.performGoToEnclosingFolderInNewWindow(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 && !a2)
    {
      v37 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager;
      v7 = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager];
      v8 = Strong;
      v39 = a1;
      swift_unknownObjectRetain();
      v40 = v8;
      v38 = v8;
      v9 = v7;
      v10 = [v9 actions];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = [v9 associatedActionManagers];
      type metadata accessor for DOCActionManager(0);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = specialized Sequence.flatMap<A>(_:)(v13);

      v42[0] = v11;
      specialized Array.append<A>(contentsOf:)(v14);

      v15 = v11;
      if (v11 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x24C1FC540](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v21 = [v18 identifier];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
          {

LABEL_20:

            v28 = *&v38[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
            v29 = v38;
            v30 = v28;
            v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            v32 = type metadata accessor for DOCActionContext();
            v33 = objc_allocWithZone(v32);
            swift_unknownObjectWeakInit();
            *&v33[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
            *&v33[OBJC_IVAR___DOCActionContext_appearance] = 0;
            *&v33[OBJC_IVAR___DOCActionContext_configuration] = v30;
            *&v33[OBJC_IVAR___DOCActionContext_presentingViewController] = v29;
            swift_beginAccess();
            swift_unknownObjectWeakAssign();
            *&v33[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
            *&v33[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
            *&v33[OBJC_IVAR___DOCActionContext_userInfo] = v31;
            v41.receiver = v33;
            v41.super_class = v32;
            v34 = objc_msgSendSuper2(&v41, sel_init);
            v35 = *&v40[v37];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v36 = swift_allocObject();
            *(v36 + 16) = xmmword_249BA0290;
            *(v36 + 32) = v39;
            swift_unknownObjectRetain();
            specialized DOCActionManager.perform(_:on:actionContext:)(v19, v36, v34);

            swift_unknownObjectRelease();
            Strong = v40;
            goto LABEL_25;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_20;
          }

          ++v17;
          if (v20 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:
      swift_unknownObjectRelease();

      Strong = v40;
    }

LABEL_25:
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performDismiss(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v29 - v7;
  v9 = [v1 presentedViewController];
  if (v9)
  {

    v10 = [v1 presentedViewController];
    if (v10)
    {
      v29[0] = v10;
      [v10 dismissViewControllerAnimated:1 completion:0];
      v11 = v29[0];
    }
  }

  else
  {
    v12 = [v1 viewIfLoaded];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 window];

      if (v14)
      {
        v15 = [v14 rootViewController];

        if (v15)
        {
          v16 = [v15 presentedViewController];

          if (v16)
          {
            v29[1] = &unk_285D4FB38;
            if (swift_dynamicCastObjCProtocolConditional())
            {
              [v16 dismissViewControllerAnimated:1 completion:0];

              return;
            }
          }
        }
      }
    }

    v17 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) != 0 && [(UIKeyCommand *)a1 doc_isCancellingKeyCommand])
    {
      v18 = (*((*v17 & *v2) + 0x1498))();
      if (v18)
      {
        (*(*v18 + 472))(v18);
      }
    }

    else
    {
      v19 = *((*v17 & *v2) + 0x1010);
      v20 = v19();
      v21 = (*((*v17 & *v20) + 0xF0))();
      v22 = (*(*v21 + 152))(v21);

      if ((v22 & 1) != 0 && ([v2 isEditing] & 1) == 0 && -[UIKeyCommand doc_isCancellingKeyCommand](a1, sel_doc_isCancellingKeyCommand))
      {
        v23 = v19();
        specialized DOCFocusableCollectionView.resignFocus()();

        v24 = *((*v17 & *v2) + 0xBD8);
        v24();
        v25 = type metadata accessor for IndexPath();
        (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
        v26 = (*((*v17 & *v2) + 0xE38))(v8);
        if ((v24)(v26) != 3)
        {
          v27 = [objc_opt_self() sharedManager];
          [v27 requestCurrentFocus_];
        }
      }

      else if ([v2 isEditing] && -[UIKeyCommand doc_isCancellingKeyCommand](a1, sel_doc_isCancellingKeyCommand))
      {
        [v2 setEditing:0 animated:1];
      }

      else if ([*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI])
      {
        v28 = (*((*v17 & *v2) + 0xE8))();
        if (v28)
        {
          [v28 didIndicateCancelPicker];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

id DOCItemCollectionViewController.keyCommands.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPopoverOrWidget])
  {
    return 0;
  }

  v63 = MEMORY[0x277D84F90];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);

  v3 = objc_opt_self();
  v4 = [v3 directionalKeyCommandsWithAction:sel_performKeyboardFocusKeyCommand_ prioritize:0];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand, 0x277D75650);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v5);
  v6 = [v3 selectionKeyCommandsWithAction:sel_performKeyboardFocusKeyCommand_ prioritize:0];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v7);
  v8 = [objc_opt_self() dismissingKeyCommandsWithAction_];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v9);
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = result;
  v64._object = 0x8000000249BD6330;
  v11._countAndFlagsBits = 0x646E61707845;
  v11._object = 0xE600000000000000;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD000000000000028;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v64);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = result;
  v65._object = 0x8000000249BD6360;
  v16._countAndFlagsBits = 0x4120646E61707845;
  v65._countAndFlagsBits = 0xD00000000000002CLL;
  v16._object = 0xEA00000000006C6CLL;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v65);

  v20 = *MEMORY[0x277D76B60];
  v21 = objc_opt_self();
  v22 = [v21 keyCommandWithInput:v20 modifierFlags:0 action:sel_performArrowKeyDisclosure_];
  v23 = [v21 keyCommandWithInput:v20 modifierFlags:0x100000 action:sel_performArrowKeyDisclosure_];
  v24 = [v21 keyCommandWithInput:v20 modifierFlags:0x80000 action:sel_performArrowKeyDisclosure_];
  v25 = [v21 keyCommandWithInput:v20 modifierFlags:1572864 action:sel_performArrowKeyDisclosure_];
  v26 = MEMORY[0x24C1FAD20](v14._countAndFlagsBits, v14._object);
  [v22 setDiscoverabilityTitle_];

  v27 = MEMORY[0x24C1FAD20](v14._countAndFlagsBits, v14._object);

  [v23 setDiscoverabilityTitle_];

  v28 = MEMORY[0x24C1FAD20](v19._countAndFlagsBits, v19._object);
  [v24 setDiscoverabilityTitle_];

  v29 = MEMORY[0x24C1FAD20](v19._countAndFlagsBits, v19._object);

  [v25 setDiscoverabilityTitle_];

  v59 = v22;
  [v22 setAttributes_];
  v60 = v23;
  [v23 setAttributes_];
  v61 = v24;
  [v24 setAttributes_];
  v62 = v25;
  [v25 setAttributes_];
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = result;
  v66._object = 0x8000000249BD6390;
  v66._countAndFlagsBits = 0xD00000000000002ALL;
  v31._countAndFlagsBits = 0x657370616C6C6F43;
  v31._object = 0xE800000000000000;
  v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32.value._object = 0xEB00000000656C62;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v66);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v35 = result;
  v67._object = 0x8000000249BD63C0;
  v36._object = 0xEC0000006C6C4120;
  v67._countAndFlagsBits = 0xD00000000000002ELL;
  v36._countAndFlagsBits = 0x657370616C6C6F43;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v67);

  v40 = *MEMORY[0x277D76B48];
  v41 = [v21 keyCommandWithInput:*MEMORY[0x277D76B48] modifierFlags:0 action:sel_performArrowKeyDisclosure_];
  v42 = [v21 keyCommandWithInput:v40 modifierFlags:0x100000 action:sel_performArrowKeyDisclosure_];
  v43 = [v21 keyCommandWithInput:v40 modifierFlags:0x80000 action:sel_performArrowKeyDisclosure_];
  v44 = v41;
  v45 = [v21 keyCommandWithInput:v40 modifierFlags:1572864 action:sel_performArrowKeyDisclosure_];
  v46 = MEMORY[0x24C1FAD20](v34._countAndFlagsBits, v34._object);
  [v41 setDiscoverabilityTitle_];

  v47 = MEMORY[0x24C1FAD20](v34._countAndFlagsBits, v34._object);

  [v42 setDiscoverabilityTitle_];

  v48 = MEMORY[0x24C1FAD20](v39._countAndFlagsBits, v39._object);
  [v43 setDiscoverabilityTitle_];

  v49 = v42;
  v50 = MEMORY[0x24C1FAD20](v39._countAndFlagsBits, v39._object);

  [v45 setDiscoverabilityTitle_];

  [v44 setAttributes_];
  [v42 setAttributes_];
  [v43 setAttributes_];
  [v45 setAttributes_];
  [v59 setWantsPriorityOverSystemBehavior_];
  [v44 setWantsPriorityOverSystemBehavior_];
  v51 = v59;
  MEMORY[0x24C1FB090]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v52 = v60;
  MEMORY[0x24C1FB090]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v53 = v61;
  MEMORY[0x24C1FB090]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v54 = v62;
  MEMORY[0x24C1FB090]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v49 = v42;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v55 = v44;
  MEMORY[0x24C1FB090]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v56 = v49;
  MEMORY[0x24C1FB090]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v57 = v43;
  MEMORY[0x24C1FB090]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v58 = v45;
  MEMORY[0x24C1FB090]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v63;
}

void DOCItemCollectionViewController.displayEmptyFolderAsExpandedIfNeeded(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x248))();
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      return;
    }

LABEL_4:
    if (((*((*v5 & *v3) + 0x128))(a1) & 1) == 0)
    {
      return;
    }

    (*((*v5 & *v2) + 0x820))(v11);
    v8 = v12;
    if (v12)
    {
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 104))(a1, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(v11);
      return;
    }

LABEL_11:
    __break(1u);
    return;
  }

  v10 = __CocoaSet.count.getter();

  if (!v10)
  {
    goto LABEL_4;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performArrowKeyDisclosurePostAuthentication(on:expand:recursive:)(Swift::OpaquePointer on, Swift::Bool expand, Swift::Bool recursive)
{
  v4 = v3;
  v59 = recursive;
  v60 = expand;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v51 - v8);
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (on._rawValue >> 62)
  {
    goto LABEL_54;
  }

  v16 = *((on._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v16;
  if (!v16)
  {
    return;
  }

  v18 = on._rawValue & 0xC000000000000001;
  if ((on._rawValue & 0xC000000000000001) != 0)
  {
    goto LABEL_57;
  }

LABEL_4:
  if (!*((on._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v58 = *(on._rawValue + 4);
  swift_unknownObjectRetain();
LABEL_6:
  if (v17 != 1 || v60)
  {
    goto LABEL_10;
  }

  v19 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v19)
  {
    goto LABEL_60;
  }

  if ((*((*MEMORY[0x277D85000] & *v19) + 0x128))(v58))
  {
LABEL_10:
    v10 = 0;
    v57 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
    v20 = on._rawValue & 0xFFFFFFFFFFFFFF8;
    v21 = &selRef_initWithFrame_;
    v9 = MEMORY[0x277D85000];
    v56 = on._rawValue & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v15 = MEMORY[0x24C1FC540](v10, on._rawValue);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 >= *(v20 + 16))
        {
          goto LABEL_53;
        }

        v15 = *(on._rawValue + v10 + 4);
        swift_unknownObjectRetain();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v49 = __CocoaSet.count.getter();
          if (v49 < 1)
          {
            return;
          }

          v17 = v49;
          v50 = __CocoaSet.count.getter();
          if (!v50)
          {
            return;
          }

          v16 = v50;
          v18 = on._rawValue & 0xC000000000000001;
          if ((on._rawValue & 0xC000000000000001) != 0)
          {
LABEL_57:
            v58 = MEMORY[0x24C1FC540](0, on._rawValue, v13);
            goto LABEL_6;
          }

          goto LABEL_4;
        }
      }

      if ([v15 v21[65]] && objc_msgSend(v15, sel_isBrowsable) && objc_msgSend(v15, sel_isFullyFormed))
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_12:
      ++v10;
      if (v11 == v16)
      {
        swift_unknownObjectRelease();
        return;
      }
    }

    if (!v60)
    {
      if (v59)
      {
        DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(v15);
        goto LABEL_27;
      }

      v27 = (*((*v9 & *v4) + 0xD60))();
      if (!v27[2])
      {
        swift_unknownObjectRelease();

        goto LABEL_40;
      }

      v28 = v27[5];
      v52 = v27[4];
      v29 = v27[7];
      v51 = v27[6];
      v30 = v27[8];
      v55 = v28;

      v54 = v29;

      v53 = v30;

      (*((*MEMORY[0x277D85000] & *v4) + 0x820))(v62, v31);
      v32 = v4;
      v33 = v63;
      if (!v63)
      {
        goto LABEL_62;
      }

      v34 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      v61[0] = v52;
      v61[1] = v55;
      v61[2] = v51;
      v61[3] = v54;
      v61[4] = v53;
      (*(v34 + 56))(v15, v61, v33, v34);
      __swift_destroy_boxed_opaque_existential_0(v62);
      v35 = *(v32 + v57);
      if (!v35)
      {
        goto LABEL_61;
      }

      v4 = v32;
      v9 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v35) + 0x130))(v15);

      goto LABEL_38;
    }

    if (v59)
    {
      DOCItemCollectionViewController.recursivelyExpandNodes(_:)(v15);
LABEL_27:
      swift_unknownObjectRelease();
LABEL_40:
      v21 = &selRef_initWithFrame_;
      goto LABEL_12;
    }

    v22 = *(v4 + v57);
    if (!v22)
    {
      goto LABEL_59;
    }

    (*((*v9 & *v22) + 0x120))(v15);
    v23 = (*((*v9 & *v22) + 0x248))(v15);
    if (v23 >> 62)
    {
      v36 = __CocoaSet.count.getter();
      v9 = MEMORY[0x277D85000];

      if (v36)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v24)
      {
        goto LABEL_38;
      }
    }

    if ((*((*v9 & *v22) + 0x128))(v15))
    {
      (*((*v9 & *v4) + 0x820))(v62);
      v25 = v63;
      if (!v63)
      {
        goto LABEL_64;
      }

      v26 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v26 + 104))(v15, v25, v26);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v62);
      v9 = MEMORY[0x277D85000];
      goto LABEL_39;
    }

LABEL_38:
    swift_unknownObjectRelease();
LABEL_39:
    v20 = v56;
    goto LABEL_40;
  }

  v37 = v11;
  (*((*MEMORY[0x277D85000] & *v4) + 0x820))(v62);
  v38 = v63;
  if (v63)
  {
    v39 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v40 = v58;
    v41 = (*(v39 + 112))(v58, v38, v39);
    if (v41)
    {
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_0(v62);
      v43 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v4) + 0xD98))(v40);
      if ((*(v37 + 48))(v9, 1, v10) == 1)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        v44 = (*(v37 + 32))(v15, v9, v10);
        v45 = (*((*v43 & *v4) + 0x1010))(v44);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v45 deselectItemAtIndexPath:isa animated:0];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_249BA0290;
        *(v47 + 32) = v42;
        v48 = *((*v43 & *v4) + 0x1378);
        swift_unknownObjectRetain();
        v48(v47, 0, 0);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v37 + 8))(v15, v10);
      }
    }

    else
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v62);
    }

    return;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

void DOCItemCollectionViewController.recursivelyExpandNodes(_:)(uint64_t a1)
{
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v31 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v20)
  {
    v21 = MEMORY[0x277D85000];
    v22 = (*((*MEMORY[0x277D85000] & *v20) + 0x128))(a1, v17);
    v34 = v10;
    if (v22)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v32 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v33 = *(v11 + 8);
      v33(v14, v10);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a1;
      v43 = partial apply for closure #2 in DOCItemCollectionViewController.recursivelyExpandNodes(_:);
      v44 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v25 = &block_descriptor_28_1;
    }

    else
    {
      (*((*v21 & *v20) + 0x120))(a1);
      DOCItemCollectionViewController.displayEmptyFolderAsExpandedIfNeeded(_:)(a1);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v32 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v33 = *(v11 + 8);
      v33(v14, v10);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = a1;
      v43 = partial apply for closure #1 in DOCItemCollectionViewController.recursivelyExpandNodes(_:);
      v44 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v25 = &block_descriptor_21_0;
    }

    v41 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v42 = v25;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v29 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v32;
    MEMORY[0x24C1FB940](v19, v9, v5, v28);
    _Block_release(v28);

    (*(v38 + 8))(v5, v29);
    (*(v36 + 8))(v9, v37);
    v33(v19, v34);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = result;
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x128))();
  if ((result & 1) == 0)
  {
    return result;
  }

  v5 = (*((*v4 & *v2) + 0x248))(v3);
  v6 = v5;
  v22 = v3;
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_16;
      }

LABEL_13:
      if ([v9 isBrowsable])
      {
        if ((*((*MEMORY[0x277D85000] & *v2) + 0x128))(v9))
        {
          DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(v9);
        }
      }

      swift_unknownObjectRelease();
      ++v8;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v9 = *(v6 + 8 * v8 + 32);
    swift_unknownObjectRetain();
    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v1) + 0xD60))();
  if (!v12[2])
  {

    v21 = v22;
    goto LABEL_23;
  }

  v13 = v12[4];
  v14 = v12[5];
  v16 = v12[6];
  v15 = v12[7];
  v17 = v12[8];

  result = (*((*v11 & *v1) + 0x820))(v24, v18);
  v19 = v25;
  if (!v25)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v23[0] = v13;
  v23[1] = v14;
  v23[2] = v16;
  v23[3] = v15;
  v23[4] = v17;
  v21 = v22;
  (*(v20 + 56))(v22, v23, v19, v20);

  __swift_destroy_boxed_opaque_existential_0(v24);
  v11 = MEMORY[0x277D85000];
LABEL_23:

  return (*((*v11 & *v2) + 0x130))(v21);
}

Swift::Void __swiftcall DOCItemCollectionViewController.performArrowKeyDisclosure(_:)(UIKeyCommand *a1)
{
  v3 = MEMORY[0x277D85000];
  if (*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() != 2 || ((*((*v3 & *v1) + 0xF10))())
  {
    return;
  }

  v4 = [(UIKeyCommand *)a1 modifierFlags];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 effectiveUserInterfaceLayoutDirection];

  v8 = [(UIKeyCommand *)a1 input];
  if (v7 != 1)
  {
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_14:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_15;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v12)
  {
    if (v10 == v13 && v12 == v14)
    {

      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_16;
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  v16 = *&v4 & 0x80000;

  v18._rawValue = (*((*v3 & *v1) + 0x1338))(v17);
  rawValue = v18._rawValue;
  if (v15)
  {
    v20 = [objc_opt_self() sharedManager];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = rawValue;
    *(v22 + 32) = v16 >> 19;

    specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v23, 1, 1, partial apply for closure #1 in DOCItemCollectionViewController.performArrowKeyDisclosure(_:), v22);
  }

  else
  {
    DOCItemCollectionViewController.performArrowKeyDisclosurePostAuthentication(on:expand:recursive:)(v18, 0, v16 != 0);
  }
}

void closure #1 in DOCItemCollectionViewController.performArrowKeyDisclosure(_:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a1)
  {
    v6 = objc_opt_self();
    swift_unknownObjectRetain();
    v7 = [v6 sharedManager];
    v8 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = a3;
    *(v10 + 32) = a4 & 1;
    v38 = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.performArrowKeyDisclosure(_:);
    v39 = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v37 = &block_descriptor_39_0;
    v11 = _Block_copy(aBlock);

    [v7 authenticateLocationWithNoUI:a1 completion:v11];
    _Block_release(v11);

    swift_unknownObjectRelease_n();
    return;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    if (a3 >> 62)
    {
      goto LABEL_40;
    }

    v13 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
LABEL_42:

      return;
    }

LABEL_7:
    v14 = a3 & 0xC000000000000001;
    v34 = v12;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1FC540](0, a3);
      v15 = a3 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_10;
    }

    v15 = a3 & 0xFFFFFFFFFFFFFF8;
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = swift_unknownObjectRetain();
LABEL_10:
      v16 = 0;
      v17 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
      v18 = &selRef_initWithFrame_;
      v19 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      while (1)
      {
        if (v14)
        {
          v12 = MEMORY[0x24C1FC540](v16, a3);
          v20 = v12;
          v21 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v16 >= *(v15 + 16))
          {
            goto LABEL_39;
          }

          v20 = *(a3 + 8 * v16 + 32);
          v12 = swift_unknownObjectRetain();
          v21 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v31 = v12;
            v32 = __CocoaSet.count.getter() < 1;
            v12 = v31;
            if (v32)
            {
              goto LABEL_42;
            }

            v13 = __CocoaSet.count.getter();
            v12 = v31;
            if (!v13)
            {
              goto LABEL_42;
            }

            goto LABEL_7;
          }
        }

        if ([v20 v18[65]] && objc_msgSend(v20, v19[262]) && (objc_msgSend(v20, sel_isFullyFormed) & 1) != 0)
        {
          if (a4)
          {
            DOCItemCollectionViewController.recursivelyExpandNodes(_:)(v20);
          }

          else
          {
            v22 = *(v34 + v17);
            if (!v22)
            {
              goto LABEL_46;
            }

            v23 = MEMORY[0x277D85000];
            (*((*MEMORY[0x277D85000] & *v22) + 0x120))(v20);
            v24 = *(v34 + v17);
            if (!v24)
            {
              goto LABEL_45;
            }

            v25 = (*((*v23 & *v24) + 0x248))(v20);
            if (v25 >> 62)
            {
              v26 = __CocoaSet.count.getter();
            }

            else
            {
              v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v18 = &selRef_initWithFrame_;
            v14 = a3 & 0xC000000000000001;

            if (!v26)
            {
              v27 = *(v34 + v17);
              if (!v27)
              {
                goto LABEL_47;
              }

              v28 = MEMORY[0x277D85000];
              if ((*((*MEMORY[0x277D85000] & *v27) + 0x128))(v20))
              {
                v33 = v17;
                (*((*v28 & *v34) + 0x820))(aBlock);
                v29 = v37;
                if (!v37)
                {
                  goto LABEL_48;
                }

                v30 = v38;
                __swift_project_boxed_opaque_existential_1(aBlock, v37);
                (*(v30 + 13))(v20, v29, v30);
                swift_unknownObjectRelease();
                v12 = __swift_destroy_boxed_opaque_existential_0(aBlock);
                v17 = v33;
              }

              else
              {
                v12 = swift_unknownObjectRelease();
              }

              v19 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              v14 = a3 & 0xC000000000000001;
              goto LABEL_12;
            }
          }

          v12 = swift_unknownObjectRelease();
          v19 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        }

        else
        {
          v12 = swift_unknownObjectRelease();
        }

LABEL_12:
        ++v16;
        if (v21 == v13)
        {

          swift_unknownObjectRelease();
          return;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

void closure #1 in closure #1 in DOCItemCollectionViewController.performArrowKeyDisclosure(_:)(char a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a1 & 1) == 0)
  {
    v5 = a2;
    if (one-time initialization token for UI != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (a4 >> 62)
  {
    v34 = Strong;
    v35 = __CocoaSet.count.getter() < 1;
    Strong = v34;
    if (v35)
    {
      goto LABEL_41;
    }

    v8 = __CocoaSet.count.getter();
    Strong = v34;
    if (!v8)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_41;
    }
  }

  v9 = a4 & 0xC000000000000001;
  v37 = Strong;
  if ((a4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a4);
    v10 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = a4 & 0xFFFFFFFFFFFFFF8;
    if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  v11 = 0;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
  v13 = &selRef_initWithFrame_;
  v14 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  while (v9)
  {
    v15 = MEMORY[0x24C1FC540](v11, a4);
    v5 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_17:
    if ([v15 v13[65]] && objc_msgSend(v15, v14[262]) && (objc_msgSend(v15, sel_isFullyFormed) & 1) != 0)
    {
      if (a5)
      {
        DOCItemCollectionViewController.recursivelyExpandNodes(_:)(v15);
      }

      else
      {
        v16 = *(v37 + v12);
        if (!v16)
        {
          goto LABEL_53;
        }

        v17 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v16) + 0x120))(v15);
        v18 = *(v37 + v12);
        if (!v18)
        {
          goto LABEL_52;
        }

        v19 = (*((*v17 & *v18) + 0x248))(v15);
        if (v19 >> 62)
        {
          v20 = __CocoaSet.count.getter();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v13 = &selRef_initWithFrame_;
        v9 = a4 & 0xC000000000000001;

        if (!v20)
        {
          v21 = *(v37 + v12);
          if (!v21)
          {
            goto LABEL_54;
          }

          v22 = MEMORY[0x277D85000];
          if ((*((*MEMORY[0x277D85000] & *v21) + 0x128))(v15))
          {
            v36 = v12;
            (*((*v22 & *v37) + 0x820))(v40);
            v23 = v41;
            if (!v41)
            {
              goto LABEL_55;
            }

            v24 = v42;
            __swift_project_boxed_opaque_existential_1(v40, v41);
            (*(v24 + 104))(v15, v23, v24);
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0(v40);
            v12 = v36;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v14 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          v9 = a4 & 0xC000000000000001;
          goto LABEL_10;
        }
      }

      swift_unknownObjectRelease();
      v14 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_10:
    ++v11;
    if (v5 == v8)
    {

      swift_unknownObjectRelease();
      return;
    }
  }

  if (v11 >= *(v10 + 16))
  {
    goto LABEL_45;
  }

  v15 = *(a4 + 8 * v11 + 32);
  swift_unknownObjectRetain();
  v5 = (v11 + 1);
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_17;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_36:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.UI);
  v26 = v5;
  osloga = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BD65C0, v40);
    *(v28 + 12) = 2080;
    v43 = v5;
    v30 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v31 = String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v40);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_2493AC000, osloga, v27, "%s app protection authentication did not succeed or hit error: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v29, -1, -1);
    MEMORY[0x24C1FE850](v28, -1, -1);
    Strong = &osloga->isa;
  }

  else
  {
    Strong = &osloga->isa;
  }

LABEL_41:
}

void closure #1 in DOCItemCollectionViewController.recursivelyExpandNodes(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x248);
    v7 = v5;
    v8 = v6(a2);

    if (v8 >> 62)
    {
      v9 = __CocoaSet.count.getter();
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_5:
        if (v9 >= 1)
        {
          for (i = 0; i != v9; ++i)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x24C1FC540](i, v8);
            }

            else
            {
              v11 = *(v8 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            if ([v11 isFolder] && objc_msgSend(v11, sel_isBrowsable))
            {
              if ([v11 isFullyFormed])
              {
                DOCItemCollectionViewController.recursivelyExpandNodes(_:)(v11);
              }
            }

            swift_unknownObjectRelease();
          }

          goto LABEL_16;
        }

        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }
    }

LABEL_16:
  }
}

uint64_t DOCItemCollectionViewController.canPerformAction(_:withSender:)(const char *a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of DOCGridLayout.Spec?(a2, v62, &_sypSgMd, &_sypSgMR);
  if (v63)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand, 0x277D75650);
    if (swift_dynamicCast())
    {
      v6 = [v59 doc_isDismissingKeyCommand];

      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v62, &_sypSgMd, &_sypSgMR);
  }

  DOCItemCollectionViewController.canPerformKeyCommandAction(_:withSender:)(a1, a2);
  if (v7 != 2)
  {
    v8 = v7;
    return v8 & 1;
  }

LABEL_7:
  outlined init with copy of DOCGridLayout.Spec?(a2, v62, &_sypSgMd, &_sypSgMR);
  if (v63)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuController, 0x277D75718);
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v62, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of DOCGridLayout.Spec?(a2, v62, &_sypSgMd, &_sypSgMR);
  if (v63)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextMenuInteraction, 0x277D753B8);
    if (swift_dynamicCast())
    {
LABEL_14:

      v9 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v62, &_sypSgMd, &_sypSgMR);
  }

  v9 = 0;
LABEL_17:
  if (static Selector.== infix(_:_:)())
  {
    goto LABEL_18;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v30 = MEMORY[0x277D85000];
      v31 = (*((*MEMORY[0x277D85000] & *v2) + 0xC70))();
      if (v31)
      {
        v32 = [v31 fpfs_fpItem];
        v33 = swift_unknownObjectRelease();
        if (v32)
        {
          if (((*((*v30 & *v2) + 0x1448))(v33) & 1) == 0)
          {
            v35 = specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(v32, 1);

            v8 = v35 > 0;
            goto LABEL_19;
          }
        }
      }

      goto LABEL_18;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (v9)
      {
        goto LABEL_18;
      }

      v34 = DOCItemCollectionViewController.canPerformSelectAll.getter();
LABEL_42:
      v8 = v34;
      goto LABEL_19;
    }

    if (static Selector.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    if (static Selector.== infix(_:_:)())
    {
LABEL_45:
      v8 = 1;
      goto LABEL_19;
    }

    if (static Selector.== infix(_:_:)())
    {
      v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x1448))() ^ 1;
      goto LABEL_19;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) != 0 || (specialized static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) == 0)
      {
        goto LABEL_18;
      }

      outlined init with copy of DOCGridLayout.Spec?(a2, v62, &_sypSgMd, &_sypSgMR);
      v36 = v63;
      if (v63)
      {
        v37 = __swift_project_boxed_opaque_existential_1(v62, v63);
        v38 = *(v36 - 8);
        v39 = MEMORY[0x28223BE20](v37, v37);
        v41 = &v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v38 + 16))(v41, v39);
        v42 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v38 + 8))(v41, v36);
        __swift_destroy_boxed_opaque_existential_0(v62);
      }

      else
      {
        v42 = 0;
      }

      v57 = type metadata accessor for DOCItemCollectionViewController(0);
      v60.receiver = v3;
      v60.super_class = v57;
      v51 = objc_msgSendSuper2(&v60, sel_canPerformAction_withSender_, a1, v42);
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
      {
        if (static Selector.== infix(_:_:)())
        {
          goto LABEL_18;
        }

        if ((static Selector.== infix(_:_:)() & 1) == 0)
        {
          if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_18;
          }

          DOCItemCollectionViewController.canPerformKeyCommandAction(_:withSender:)(a1, a2);
          goto LABEL_42;
        }

        v52 = MEMORY[0x277D85000];
        if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) == 0)
        {
          v53 = (*((*v52 & *v2) + 0x1010))();
          v54 = (*((*v52 & *v53) + 0xF0))();
          v55 = (*(*v54 + 152))(v54);

          if ((v55 & 1) == 0 && ([v2 isEditing] & 1) == 0)
          {
            v56 = [v2 presentedViewController];
            if (v56)
            {

              v8 = 1;
              goto LABEL_19;
            }

            v34 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI];
            goto LABEL_42;
          }
        }

        goto LABEL_45;
      }

      if ((*((*MEMORY[0x277D85000] & *v2) + 0x1448))())
      {
        goto LABEL_18;
      }

      outlined init with copy of DOCGridLayout.Spec?(a2, v62, &_sypSgMd, &_sypSgMR);
      v43 = v63;
      if (v63)
      {
        v44 = __swift_project_boxed_opaque_existential_1(v62, v63);
        v45 = *(v43 - 8);
        v46 = MEMORY[0x28223BE20](v44, v44);
        v48 = &v58 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v45 + 16))(v48, v46);
        v49 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v45 + 8))(v48, v43);
        __swift_destroy_boxed_opaque_existential_0(v62);
      }

      else
      {
        v49 = 0;
      }

      v50 = type metadata accessor for DOCItemCollectionViewController(0);
      v61.receiver = v3;
      v61.super_class = v50;
      v51 = objc_msgSendSuper2(&v61, sel_canPerformAction_withSender_, a1, v49);
    }

    v8 = v51;
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v21 = MEMORY[0x277D85000];
  v22 = *((*MEMORY[0x277D85000] & *v2) + 0x1338);
  v23 = v22();
  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 < 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v9;
  }

  if ((v26 & 1) == 0 && ((*((*v21 & *v3) + 0x1448))(v25) & 1) == 0)
  {
    v27 = *MEMORY[0x277CC5FD8];
    v28 = v22();
    specialized static DOCActionManager.canPerform(_:on:)(v27, v28);
    v8 = v29;

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
LABEL_19:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v62[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000249BD63F0, v62);
    *(v13 + 12) = 2080;
    v15 = NSStringFromSelector(a1);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v62);

    *(v13 + 14) = v19;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v8 & 1;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s Can perform key command with action '%s': %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  return v8 & 1;
}

void DOCItemCollectionViewController.canPerformKeyCommandAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v152 = a2;
  v154 = a1;
  v3 = type metadata accessor for IndexPath();
  v155 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v139 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v139 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v139 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v139 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v139 - v29;
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v139 - v34;
  v36 = [v2 presentedViewController];
  if (v36)
  {

    return;
  }

  v145 = v26;
  v142 = v10;
  v143 = v22;
  v148 = v30;
  v146 = v18;
  v144 = v14;
  v141 = v6;
  v151 = v3;
  v37 = MEMORY[0x277D85000];
  v38 = *((*MEMORY[0x277D85000] & *v2) + 0x1338);
  v149 = (*MEMORY[0x277D85000] & *v2) + 4920;
  v150 = v38;
  v39 = v38();
  v153 = v35;
  if (v39 >> 62)
  {
    v40 = __CocoaSet.count.getter();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = *((*v37 & *v2) + 0xC80);
  v43 = v153;
  (v42)(v41);
  v44 = *(v155 + 48);
  v45 = v43;
  v147 = v155 + 48;
  v46 = v44;
  v47 = v44(v45, 1, v151);
  IsKeyInput = DOCFirstResponderIsKeyInput();
  if (static Selector.== infix(_:_:)())
  {
    if ((*((*v37 & *v2) + 0xBD8))() != 2)
    {
      v50 = v153;
      goto LABEL_29;
    }

    v49 = (*((*v37 & *v2) + 0xF10))();
    v50 = v153;
    if (v49)
    {
LABEL_29:
      v69 = v50;
LABEL_30:
      outlined destroy of CharacterSet?(v69, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      return;
    }

LABEL_8:
    (*((*v37 & *v2) + 0x1448))();
    goto LABEL_29;
  }

  v140 = v2;
  if (static Selector.== infix(_:_:)())
  {
    v50 = v153;
    if (v40 >= 1)
    {
      v51 = *MEMORY[0x277CC5FD0];
      v52 = v150();
      specialized static DOCActionManager.canPerform(_:on:)(v51, v52);
    }

    goto LABEL_29;
  }

  if (static Selector.== infix(_:_:)())
  {
    v53 = v140;
    if ((*((*v37 & *v140) + 0xBD8))() != 3)
    {
      v54 = (*((*v37 & *v53) + 0xC70))();
      v55 = v153;
      if (v54)
      {
        v56 = [v54 fpfs_fpItem];
        swift_unknownObjectRelease();
        if (v56)
        {
          v57 = *MEMORY[0x277CC6028];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA0290;
          *(inited + 32) = v56;
          v59 = v56;
          specialized static DOCActionManager.canPerform(_:on:)(v57, inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          [v140 isEditing];
        }
      }

      v69 = v55;
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (static Selector.== infix(_:_:)())
  {
    v60 = v140;
    if ((*((*v37 & *v140) + 0xBD8))() != 3)
    {
      v63 = (*((*v37 & *v60) + 0xC70))();
      v50 = v153;
      if (v63)
      {
        v64 = [v63 fpfs_fpItem];
        swift_unknownObjectRelease();
        if (v64)
        {
          v65 = *MEMORY[0x277CC6028];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v66 = swift_initStackObject();
          *(v66 + 16) = xmmword_249BA0290;
          *(v66 + 32) = v64;
          v67 = v64;
          specialized static DOCActionManager.canPerform(_:on:)(v65, v66);
          swift_setDeallocating();
          v68 = swift_arrayDestroy();
          (*((*v37 & *v140) + 0x1368))(v68);

          v50 = v153;
        }
      }

      goto LABEL_29;
    }

    goto LABEL_35;
  }

  if (static Selector.== infix(_:_:)())
  {
    v2 = v140;
    v61 = v150();
    if (v61 >> 62)
    {
      v62 = __CocoaSet.count.getter();
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v153;

    if (v62 < 1)
    {
      goto LABEL_29;
    }

    goto LABEL_8;
  }

  if (static Selector.== infix(_:_:)())
  {
LABEL_32:
    v69 = v153;
    goto LABEL_30;
  }

  if (static Selector.== infix(_:_:)())
  {
LABEL_35:
    outlined destroy of CharacterSet?(v153, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    goto LABEL_32;
  }

  if (static Selector.== infix(_:_:)())
  {
    v70 = v140;
    if ((*((*v37 & *v140) + 0xC70))())
    {
      swift_getObjectType();
      v71 = DOCNode.fpfs_syncFetchFPItem()();
      v72 = v153;
      if (v71)
      {
        v73 = v71;
        specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(v71, v70, 1);
      }

      swift_unknownObjectRelease();
      v69 = v72;
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (static Selector.== infix(_:_:)())
  {
    v74 = v47;
    v75 = v140;
    if ((*((*v37 & *v140) + 0x148))())
    {
      v76 = [v75 isEditing];
    }

    else
    {
      v76 = 0;
    }

    if ([v75 isEditing] && !v76)
    {
      goto LABEL_35;
    }

    v77 = v74 == 1 ? 0 : v76;
    if (v40 != 1 && !v77)
    {
      goto LABEL_35;
    }

    if (v76)
    {
      v78 = v148;
      v42();
      v79 = v151;
LABEL_124:
      v122 = v145;
      outlined init with copy of DOCGridLayout.Spec?(v78, v145, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      if (v46(v122, 1, v79) == 1)
      {
        outlined destroy of CharacterSet?(v78, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        outlined destroy of CharacterSet?(v122, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        outlined destroy of CharacterSet?(v153, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        return;
      }

      v123 = (*(v155 + 32))(v146, v122, v79);
      v124 = v140;
      v125 = (*((*v37 & *v140) + 0x1010))(v123);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      LODWORD(v124) = [v124 collectionView:v125 shouldSelectItemAtIndexPath:isa];

      if (v124)
      {
        v127 = v150();
        if (v127 >> 62)
        {
          v128 = __CocoaSet.count.getter();
        }

        else
        {
          v128 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v128 >= 2)
        {
          (*((*v37 & *v140) + 0x130))(v129);
        }

        (*(v155 + 8))(v146, v151);
        outlined destroy of CharacterSet?(v148, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        goto LABEL_35;
      }

      (*(v155 + 8))(v146, v151);
      v111 = &v159;
      goto LABEL_133;
    }

    v88 = (*((*v37 & *v140) + 0x1018))();
    if (v88)
    {
      v89 = v88;
      v90 = [v88 indexPathsForSelectedItems];

      if (v90)
      {
        v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v91 + 16))
        {
          v92 = v155;
          v78 = v148;
          v79 = v151;
          (*(v155 + 16))(v148, v91 + ((*(v92 + 80) + 32) & ~*(v92 + 80)), v151);

          (*(v92 + 56))(v78, 0, 1, v79);
          goto LABEL_124;
        }
      }
    }

    v78 = v148;
    v79 = v151;
    (*(v155 + 56))(v148, 1, 1, v151);
    goto LABEL_124;
  }

  if (static Selector.== infix(_:_:)())
  {
    if ((DOCItemCollectionViewController.canConfirmPickerImport.getter() & 1) == 0 && (DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0 && DOCItemCollectionViewController.exportablePickerTargetNode.getter())
    {
      swift_unknownObjectRelease();
    }

    v69 = v153;
    goto LABEL_30;
  }

  if (static Selector.== infix(_:_:)())
  {
    if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) != 0 || !DOCItemCollectionViewController.exportablePickerTargetNode.getter())
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

  if (static Selector.== infix(_:_:)())
  {
    v80 = *&v140[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
    if (([v80 forMovingDocuments] & 1) == 0 && (!objc_msgSend(v80, sel_forPickingDocuments) || !objc_msgSend(v80, sel_forSavingDocuments)))
    {
      if ([v80 forPickingFolders] & 1) == 0 && !objc_msgSend(v80, sel_forPickingDocuments) || ((*((*v37 & *v140) + 0x130))())
      {
        if (IsKeyInput)
        {
          goto LABEL_35;
        }

        if ([v80 forPickingFolders])
        {
          goto LABEL_35;
        }

        if ([v80 forPickingDocuments])
        {
          goto LABEL_35;
        }

        if ([v140 isEditing])
        {
          goto LABEL_35;
        }

        v96 = *((*v37 & *v140) + 0x1010);
        v97 = v96();
        v98 = [v97 indexPathsForSelectedItems];

        if (!v98)
        {
          goto LABEL_35;
        }

        v99 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = *(v99 + 16);

        if (!v100)
        {
          goto LABEL_35;
        }

        v102 = (v96)(v101);
        v103 = [v102 indexPathsForSelectedItems];

        if (v103)
        {
          v104 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v104 + 16))
          {

            goto LABEL_35;
          }

          v105 = v155;
          v106 = v142;
          v107 = v151;
          (*(v155 + 16))(v142, v104 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v151);

          v108 = *(v105 + 32);
          v109 = v144;
          v108(v144, v106, v107);
          v110 = v143;
          (*((*v37 & *v140) + 0x18A0))(v109);
          if (v46(v110, 1, v107) != 1)
          {
            v135 = v141;
            v136 = v151;
            v108(v141, v143, v151);
            v137 = (*((*v37 & *v140) + 0xD88))(v135, 0);
            v138 = *(v155 + 8);
            v138(v135, v136);
            v138(v144, v136);
            if (v137)
            {
              swift_unknownObjectRelease();
            }

            goto LABEL_35;
          }

          (*(v155 + 8))(v144, v151);
          v111 = &v158;
LABEL_133:
          outlined destroy of CharacterSet?(*(v111 - 32), &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          outlined destroy of CharacterSet?(v153, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          return;
        }

        goto LABEL_170;
      }

      goto LABEL_111;
    }

    v81 = (*((*v37 & *v140) + 0x1010))();
    v82 = [v81 indexPathsForSelectedItems];

    if (v82)
    {
      v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = *(v83 + 16);

      if (v84)
      {
LABEL_111:
        outlined init with copy of DOCGridLayout.Spec?(v152, v156, &_sypSgMd, &_sypSgMR);
        v114 = v157;
        if (v157)
        {
          v115 = __swift_project_boxed_opaque_existential_1(v156, v157);
          v116 = *(v114 - 8);
          v117 = MEMORY[0x28223BE20](v115, v115);
          v119 = &v139 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v116 + 16))(v119, v117);
          v120 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v116 + 8))(v119, v114);
          __swift_destroy_boxed_opaque_existential_0(v156);
        }

        else
        {
          v120 = 0;
        }

        [v140 canPerformAction:sel_performOpen_ withSender:v120];
        goto LABEL_77;
      }
    }

    v85 = (*((*v37 & *v140) + 0xC70))();
    if (!v85)
    {
      goto LABEL_35;
    }

    v86 = v85;
    v87 = (*((*v37 & *v140) + 0xE8))();
    if (v87)
    {
      [v87 pickerOperationFor_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_32;
    }

LABEL_77:
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  if (static Selector.== infix(_:_:)())
  {
    if (v40 != 1 || (((*((*v37 & **&v140[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController]) + 0xF8))() | IsKeyInput) & 1) != 0)
    {
      goto LABEL_32;
    }

    v93 = v150();
    v94 = v93;
    if (v93 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_83:
        if ((v94 & 0xC000000000000001) == 0)
        {
          if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v95 = *(v94 + 32);
            swift_unknownObjectRetain();
LABEL_86:

            [v95 isFolder];
            swift_unknownObjectRelease();
            goto LABEL_32;
          }

          __break(1u);
          goto LABEL_164;
        }

LABEL_161:
        v95 = MEMORY[0x24C1FC540](0, v94);
        goto LABEL_86;
      }
    }

    else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

    __break(1u);
    goto LABEL_159;
  }

  if (static Selector.== infix(_:_:)())
  {
    if (v40 != 1)
    {
      goto LABEL_32;
    }

    v112 = v150();
    v94 = v112;
    if (!(v112 >> 62))
    {
      if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_160:

        __break(1u);
        goto LABEL_161;
      }

LABEL_106:
      if ((v94 & 0xC000000000000001) != 0)
      {
        v113 = MEMORY[0x24C1FC540](0, v94);
      }

      else
      {
        if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_164:
          __break(1u);
LABEL_165:
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_166;
          }

          goto LABEL_118;
        }

        v113 = *(v94 + 32);
        swift_unknownObjectRetain();
      }

      [v113 isFolder];
      goto LABEL_77;
    }

LABEL_159:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_160;
    }

    goto LABEL_106;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      (*((*v37 & *v140) + 0xBD8))();
      goto LABEL_32;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (v40 != 1 || (v130 = (*((*v37 & *v140) + 0xA68))(), v131 = (*((*v37 & *v130) + 0x198))(), v130, (v131 & 1) == 0))
      {
        v132 = (*((*v37 & *v140) + 0xC70))();
        if (v132)
        {
          [v132 isRootItem];
          swift_unknownObjectRelease();
          goto LABEL_32;
        }
      }

      goto LABEL_35;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (v40 == 1)
      {
        v133 = (*((*v37 & *v140) + 0xA68))();
        (*((*v37 & *v133) + 0x198))();
      }
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        static Selector.== infix(_:_:)();
        outlined destroy of CharacterSet?(v153, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        return;
      }

      if (v40 >= 1)
      {
        v134._rawValue = v150();
        DOCActionManager.canShare(_:)(v134);
      }
    }

LABEL_167:
    v69 = v153;
    goto LABEL_30;
  }

  if (v40 != 1)
  {
    goto LABEL_167;
  }

  v121 = v150();
  v94 = v121;
  if (v121 >> 62)
  {
    goto LABEL_165;
  }

  if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_166:

    goto LABEL_167;
  }

LABEL_118:
  if ((v94 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, v94);
    goto LABEL_121;
  }

  if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_121:

    swift_getObjectType();
    DOCNode.canBeAddedToDock.getter();
    swift_unknownObjectRelease();
    goto LABEL_167;
  }

  __break(1u);
LABEL_170:
  __break(1u);
}

id DOCItemCollectionViewController.canPerformSelectAll.getter()
{
  v1 = v0;
  result = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forSavingDocuments];
  if (result)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v3)
  {
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v3) + 0x258))();
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 < 1 || ((*((*v4 & *v1) + 0x1448))(v7) & 1) != 0)
    {
      return 0;
    }

    return (DOCFirstResponderIsKeyInput() ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.canPerformDeselectAll.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*((*v1 & *v0) + 0x1448))(v4) ^ 1;
  }

  return v5 & 1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.validate(_:)(UICommand *a1)
{
  [(UICommand *)a1 action];
  if (static Selector.== infix(_:_:)())
  {
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1338))();
    if (v3 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4 >= 1000)
    {
      v5 = 1000;
    }

    else
    {
      v5 = v4;
    }

    if (v4 >= 2)
    {
      v6 = _DocumentManagerBundle();
      if (v6)
      {
        v7 = v6;
        v85._object = 0x8000000249BD6560;
        v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v8.value._object = 0xEB00000000656C62;
        v9._countAndFlagsBits = 0xD000000000000023;
        v9._object = 0x8000000249BD6530;
        v85._countAndFlagsBits = 0xD00000000000005FLL;
        v10._countAndFlagsBits = 0;
        v10._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v85);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v11 = swift_allocObject();
        v12 = MEMORY[0x277D83B88];
        *(v11 + 16) = xmmword_249B9A480;
        v13 = MEMORY[0x277D83C10];
        *(v11 + 56) = v12;
        *(v11 + 64) = v13;
        *(v11 + 32) = v5;
        v14 = static String.localizedStringWithFormat(_:_:)();
        v16 = v15;

        v81 = MEMORY[0x24C1FAD20](v14, v16);
LABEL_37:

        [(UICommand *)a1 setDiscoverabilityTitle:v81];
LABEL_38:
        v31 = v81;
        goto LABEL_39;
      }

      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      v17 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
      if (!v17)
      {
        return;
      }

      v81 = [v17 fpfs_fpItem];
      swift_unknownObjectRelease();
      if (!v81)
      {
        return;
      }

      v18 = specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(v81, 1);
      if (v18 < 1)
      {
        goto LABEL_38;
      }

      v19 = v18;
      v20 = _DocumentManagerBundle();
      if (v20)
      {
        v21 = v20;
        v86._object = 0x8000000249BD6510;
        v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v22.value._object = 0xEB00000000656C62;
        v23._countAndFlagsBits = 0xD000000000000024;
        v23._object = 0x8000000249BD64E0;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        v86._countAndFlagsBits = 0xD00000000000001BLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v86);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v25 = swift_allocObject();
        v26 = MEMORY[0x277D83B88];
        *(v25 + 16) = xmmword_249B9A480;
        v27 = MEMORY[0x277D83C10];
        *(v25 + 56) = v26;
        *(v25 + 64) = v27;
        *(v25 + 32) = v19;
        v28 = static String.localizedStringWithFormat(_:_:)();
        v30 = v29;

        v80 = MEMORY[0x24C1FAD20](v28, v30);

        [(UICommand *)a1 setDiscoverabilityTitle:v80];

        v31 = v80;
LABEL_39:

        return;
      }

LABEL_59:
      __break(1u);
      return;
    }

    if (static Selector.== infix(_:_:)())
    {
      v32 = *MEMORY[0x277CC6048];
      v33 = *((*MEMORY[0x277D85000] & *v1) + 0x1338);
      v34 = v33();
      specialized static DOCActionManager.canPerform(_:on:)(v32, v34);
      LOBYTE(v32) = v35;

      if (v32)
      {
        v37 = (v33)(v36);
        if (v37 >> 62)
        {
          v38 = __CocoaSet.count.getter();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v38 = 0;
      }

      v65 = _DocumentManagerBundle();
      if (v65)
      {
        v66 = v65;
        v89._object = 0x8000000249BD64A0;
        v67.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v67.value._object = 0xEB00000000656C62;
        v68._countAndFlagsBits = 0xD00000000000002ELL;
        v68._object = 0x8000000249BD6470;
        v89._countAndFlagsBits = 0xD000000000000034;
        v69._countAndFlagsBits = 0;
        v69._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v67, v66, v69, v89);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v70 = swift_allocObject();
        v71 = MEMORY[0x277D83B88];
        *(v70 + 16) = xmmword_249B9A480;
        v72 = MEMORY[0x277D83C10];
        *(v70 + 56) = v71;
        *(v70 + 64) = v72;
        *(v70 + 32) = v38;
        v73 = static String.localizedStringWithFormat(_:_:)();
        v75 = v74;

        v81 = MEMORY[0x24C1FAD20](v73, v75);
        goto LABEL_37;
      }

      goto LABEL_56;
    }

    if (static Selector.== infix(_:_:)())
    {
      v39 = _DocumentManagerBundle();
      if (!v39)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v40 = v39;
      v87._object = 0x8000000249BD6410;
      v41._countAndFlagsBits = 0x7265766F636552;
      v87._countAndFlagsBits = 0xD000000000000029;
      v41._object = 0xE700000000000000;
      v42.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v42.value._object = 0xEB00000000656C62;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v87);
      countAndFlagsBits = v44._countAndFlagsBits;
      object = v44._object;

      v47 = _DocumentManagerBundle();
      if (!v47)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v48 = v47;
      v88._object = 0x8000000249BD6440;
      v49._countAndFlagsBits = 0x6574656C6544;
      v88._countAndFlagsBits = 0xD000000000000028;
      v49._object = 0xE600000000000000;
      v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v50.value._object = 0xEB00000000656C62;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v88);

      v53 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v1) + 0xA50))(v82);
      v54 = outlined destroy of DOCItemCollectionConfiguration(v82);
      v55 = v83;
      v56 = (*((*v53 & *v1) + 0x1338))(v54);
      if (v56 >> 62)
      {
        v57 = __CocoaSet.count.getter();
      }

      else
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = 2;
      if (v57)
      {
        v59 = 0;
      }

      else
      {
        v58 = 3;
        v59 = 1;
      }

      if (v55)
      {
        v60 = v59;
      }

      else
      {
        object = v52._object;
        countAndFlagsBits = v52._countAndFlagsBits;
        v60 = v58;
      }

      v61 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      [(UICommand *)a1 setTitle:v61];

      v62 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      [(UICommand *)a1 setDiscoverabilityTitle:v62];

      [(UICommand *)a1 setAttributes:v60];
      if (v55)
      {
        v63 = 0x6C732E6873617274;
        v64 = 0xEB00000000687361;
      }

      else
      {
        v63 = 0x6873617274;
        v64 = 0xE500000000000000;
      }

      v78 = MEMORY[0x24C1FAD20](v63, v64);
      v79 = [objc_opt_self() systemImageNamed_];

      [(UICommand *)a1 setImage:v79];
    }

    else if (static Selector.== infix(_:_:)())
    {
      v76 = (*((*MEMORY[0x277D85000] & *v1) + 0x1338))();
      if (v76 >> 62)
      {
        v77 = __CocoaSet.count.getter();
      }

      else
      {
        v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [(UICommand *)a1 setAttributes:4 * (v77 > 1)];
    }
  }
}

Swift::Bool __swiftcall DOCItemCollectionViewController.canPerformCreateFolder(withSelection:)(Swift::Bool withSelection)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  if (v4 && (v5 = [v4 fpfs_fpItem], swift_unknownObjectRelease(), v5))
  {
    v6 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v5;
    v8 = v5;
    specialized static DOCActionManager.canPerform(_:on:)(v6, inited);
    v10 = v9;
    swift_setDeallocating();
    v11 = swift_arrayDestroy();
    if (withSelection)
    {
      v12 = (*((*v3 & *v1) + 0x1368))(v11);

      v13 = v12 & v10;
    }

    else
    {
      v14 = [v1 isEditing];

      v13 = (v14 ^ 1) & v10;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void specialized DOCFocusableCollectionView.resignFocus()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  v14 = (v13)(v11);
  outlined init with copy of DOCGridLayout.Spec?(v9, v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*v14 + 112))(v5);

  v15 = outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v16 = (v13)(v15);
  v17 = (*(*v16 + 152))(v16);

  if (v17)
  {
    if ((*((*v12 & *v1) + 0xD8))(v18))
    {
      v20 = v19;
      ObjectType = swift_getObjectType();
      v22 = v13();
      (*(*v22 + 104))(v22);

      (*(v20 + 16))(v1, &protocol witness table for DOCItemCollectionView, v9, ObjectType, v20);
      swift_unknownObjectRelease();
      outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }
  }
}

uint64_t specialized DOCFocusableCollectionView.selectOrExtendSelection(with:toBoundary:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v151) = a2;
  v149 = a1;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg_ACSgtMd, &_sSay10Foundation9IndexPathVGSg_ACSgtMR);
  MEMORY[0x28223BE20](v146, v4);
  v145 = (&v141 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v150 = (&v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v157 = &v141 - v11;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v142 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v143 = &v141 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v148 = &v141 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v147 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v155 = &v141 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v144 = (&v141 - v30);
  MEMORY[0x28223BE20](v31, v32);
  v156 = &v141 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v141 = &v141 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v141 - v39;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v141 - v43;
  MEMORY[0x28223BE20](v45, v46);
  v152 = &v141 - v47;
  MEMORY[0x28223BE20](v48, v49);
  v153 = &v141 - v50;
  v53 = MEMORY[0x28223BE20](v51, v52);
  v55 = &v141 - v54;
  v56 = *((*MEMORY[0x277D85000] & *v2) + 0xF0);
  v160 = (*MEMORY[0x277D85000] & *v2) + 240;
  v57 = v56(v53);
  (*(*v57 + 128))(v57);

  v159 = v13;
  v58 = *(v13 + 48);
  v158 = v13 + 48;
  v161 = v58;
  v59 = v58(v55, 1, v12);
  v60 = outlined destroy of CharacterSet?(v55, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if (v59 == 1)
  {
    v61 = (v56)(v60);
    v62 = v153;
    (*(*v61 + 104))(v61);

    v64 = (v56)(v63);
    v65 = v152;
    outlined init with copy of DOCGridLayout.Spec?(v62, v152, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    (*(*v64 + 136))(v65);

    v60 = outlined destroy of CharacterSet?(v62, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  v66 = MEMORY[0x277D85000];
  v154 = v56;
  if (v151)
  {
    v60 = (*((*MEMORY[0x277D85000] & *v3) + 0xD8))(v60);
    if (v60)
    {
      v68 = v67;
      ObjectType = swift_getObjectType();
      v70 = (*(v68 + 80))(v3, &protocol witness table for DOCItemCollectionView, v149, ObjectType, v68);
      v60 = swift_unknownObjectRelease();
      if (v70)
      {
        v71 = (*((*v66 & *v3) + 0xD8))(v60);
        v73 = v156;
        v74 = v161;
        if (v71)
        {
          v44 = v72;
          v75 = (v56)();
          v76 = v141;
          (*(*v75 + 104))(v75);
          v77 = v76;

          v78 = v74(v76, 1, v12);
          v79 = v157;
          if (v78 != 1)
          {
            v80 = swift_getObjectType();
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMR);
            v82 = *(v44 + 11);
            v83 = v44;
            v84 = v77;
            v85 = v82(v79 + *(v81 + 48), v3, &protocol witness table for DOCItemCollectionView, v77, v149, v80, v83);
            swift_unknownObjectRelease();
            v86 = v159;
            (*(v159 + 8))(v84, v12);
            *v79 = v85;
            (*(*(v81 - 8) + 56))(v79, 0, 1, v81);
            v73 = v156;
            goto LABEL_21;
          }

          goto LABEL_33;
        }

        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMR);
        v79 = v157;
        (*(*(v140 - 8) + 56))(v157, 1, 1, v140);
        v86 = v159;
        goto LABEL_21;
      }
    }
  }

  v87 = (v56)(v60);
  (*(*v87 + 104))(v87);

  if (v161(v44, 1, v12) != 1)
  {
    v86 = v159;
    v88 = *(v159 + 32);
    v89 = v148;
    v90 = v88(v148, v44, v12);
    if ((*((*MEMORY[0x277D85000] & *v3) + 0xD8))(v90))
    {
      v92 = v91;
      v93 = swift_getObjectType();
      (*(v92 + 32))(v3, &protocol witness table for DOCItemCollectionView, v89, v149, 0, v93, v92);
      swift_unknownObjectRelease();
      if (v161(v40, 1, v12) != 1)
      {
        v96 = v143;
        v88(v143, v40, v12);
        v86 = v159;
        v97 = v153;
        (*(v159 + 16))(v153, v96, v12);
        v98 = (*(v86 + 56))(v97, 0, 1, v12);
        v99 = (v154)(v98);
        v100 = v152;
        outlined init with copy of DOCGridLayout.Spec?(v97, v152, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        (*(*v99 + 112))(v100);

        outlined destroy of CharacterSet?(v97, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        v94 = *(v86 + 8);
        v94(v96, v12);
        v95 = (v94)(v89, v12);
        goto LABEL_16;
      }

      v86 = v159;
      v94 = *(v159 + 8);
      v94(v89, v12);
    }

    else
    {
      v94 = *(v86 + 8);
      v94(v89, v12);
      (*(v86 + 56))(v40, 1, 1, v12);
    }

    v95 = outlined destroy of CharacterSet?(v40, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
LABEL_16:
    v79 = v157;
    v66 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v3) + 0xD8))(v95))
    {
      v44 = v101;
      v151 = v94;
      v102 = v154;
      v103 = v154();
      v104 = v155;
      (*(*v103 + 128))(v103);

      v105 = v161;
      if (v161(v104, 1, v12) == 1)
      {
        __break(1u);
      }

      else
      {
        v106 = v12;
        v107 = v102();
        v108 = v147;
        (*(*v107 + 104))(v107);

        if (v105(v108, 1, v106) != 1)
        {
          v109 = swift_getObjectType();
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMR);
          v79 = v157;
          v111 = v155;
          v112 = (*(v44 + 5))(&v157[*(v110 + 48)], v3, &protocol witness table for DOCItemCollectionView, v155, v108, v109, v44);
          swift_unknownObjectRelease();
          v86 = v159;
          v113 = v108;
          v114 = v151;
          v151(v113, v106);
          v114(v111, v106);
          *v79 = v112;
          (*(*(v110 - 8) + 56))(v79, 0, 1, v110);
          v74 = v161;
          v66 = MEMORY[0x277D85000];
          v12 = v106;
          v73 = v156;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMR);
    (*(*(v115 - 8) + 56))(v79, 1, 1, v115);
    v73 = v156;
    v74 = v161;
LABEL_21:
    v116 = v150;
    outlined init with copy of DOCGridLayout.Spec?(v79, v150, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMR);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMR);
    if ((*(*(v117 - 8) + 48))(v116, 1, v117) == 1)
    {
      v118 = &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd;
      v119 = &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMR;
      v120 = v79;
    }

    else
    {
      v121 = *(v117 + 48);
      v123 = v145;
      v122 = v146;
      v124 = *(v146 + 48);
      *v145 = *v116;
      outlined init with take of IndexPath?(v116 + v121, v123 + v124);
      v125 = *v123;
      v126 = outlined init with take of IndexPath?(v123 + *(v122 + 48), v73);
      if ((*((*v66 & *v3) + 0xD8))(v126))
      {
        v128 = v127;
        v129 = swift_getObjectType();
        (*(v128 + 104))(v3, &protocol witness table for DOCItemCollectionView, v125, v129, v128);
        swift_unknownObjectRelease();
      }

      v116 = v144;
      outlined init with copy of DOCGridLayout.Spec?(v73, v144, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      if (v74(v116, 1, v12) != 1)
      {
        v133 = v142;
        (*(v86 + 32))(v142, v116, v12);
        v134 = v153;
        (*(v86 + 16))(v153, v133, v12);
        v135 = (*(v86 + 56))(v134, 0, 1, v12);
        v136 = (v154)(v135);
        v137 = v73;
        v138 = v152;
        outlined init with copy of DOCGridLayout.Spec?(v134, v152, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        (*(*v136 + 112))(v138);

        outlined destroy of CharacterSet?(v134, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        specialized DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(v133);
        (*(v86 + 8))(v133, v12);
        outlined destroy of CharacterSet?(v137, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        v131 = &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd;
        v132 = &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMR;
        v130 = v79;
        return outlined destroy of CharacterSet?(v130, v131, v132);
      }

      v118 = &_s10Foundation9IndexPathVSgMd;
      v119 = &_s10Foundation9IndexPathVSgMR;
      outlined destroy of CharacterSet?(v73, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      v120 = v79;
    }

    outlined destroy of CharacterSet?(v120, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMR);
    v130 = v116;
    v131 = v118;
    v132 = v119;
    return outlined destroy of CharacterSet?(v130, v131, v132);
  }

LABEL_34:
  outlined destroy of CharacterSet?(v44, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized DOCFocusableCollectionView.changeFocus(with:)(uint64_t a1)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v55 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v55 - v17;
  v19 = MEMORY[0x277D85000];
  v20 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v16);
  (*(*v20 + 104))(v20);

  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    return outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  v58 = v11;
  v59 = v10;
  v55 = *(v11 + 32);
  v23 = v55(v18, v9, v10);
  v24 = *((*v19 & *v1) + 0xD8);
  if ((v24)(v23))
  {
    v26 = v25;
    ObjectType = swift_getObjectType();
    LOBYTE(v26) = (*(v26 + 112))(v1, &protocol witness table for DOCItemCollectionView, v60, v18, ObjectType, v26);
    swift_unknownObjectRelease();
    if ((v26 & 1) == 0)
    {
      return (*(v58 + 8))(v18, v59);
    }
  }

  v56 = v18;
  if (v24())
  {
    v29 = v28;
    v30 = swift_getObjectType();
    v31 = v60;
    (*(v29 + 32))(v1, &protocol witness table for DOCItemCollectionView, v56, v60, 0, v30, v29);
    swift_unknownObjectRelease();
    if (v21(v5, 1, v59) != 1)
    {
      v32 = v57;
      v33 = v59;
      v55(v57, v5, v59);
      if (one-time initialization token for keyboardFocus != -1)
      {
        swift_once();
      }

      v34 = static OS_os_log.keyboardFocus;
      v35 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_249BA08C0;
      *(v36 + 56) = type metadata accessor for DOCItemCollectionView();
      *(v36 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DOCItemCollectionView and conformance NSObject, type metadata accessor for DOCItemCollectionView, MEMORY[0x277D85388]);
      *(v36 + 32) = v1;
      v1;
      v37 = v56;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v39 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSIndexPath, 0x277CCAA70);
      *(v36 + 96) = v39;
      v40 = lazy protocol witness table accessor for type NSIndexPath and conformance NSObject();
      *(v36 + 104) = v40;
      *(v36 + 72) = isa;
      v41.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      *(v36 + 136) = v39;
      *(v36 + 144) = v40;
      *(v36 + 112) = v41;
      os_log(_:dso:log:type:_:)("Will change focus in collection view %p from %@ to %@", 53, 2, &dword_2493AC000, v34, v35, v36);

      specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v32, 1);
      v42 = *(v58 + 8);
      v42(v32, v33);
      return (v42)(v37, v33);
    }
  }

  else
  {
    (*(v58 + 56))(v5, 1, 1, v59);
    v31 = v60;
  }

  v43 = outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if (!(v24)(v43))
  {
    return (*(v58 + 8))(v56, v59);
  }

  v45 = v44;
  v46 = swift_getObjectType();
  v47 = (*(v45 + 120))(v1, &protocol witness table for DOCItemCollectionView, v31, v46, v45);
  v49 = v48;
  swift_unknownObjectRelease();
  v51 = v58;
  v50 = v59;
  v52 = v56;
  if (v47)
  {
    specialized DOCFocusableCollectionView.resignFocus()();
    v53 = swift_getObjectType();
    DOCFocusableCollectionView.handleFocusHandOff(from:)(v31, v53, v49, v54);
  }

  return (*(v51 + 8))(v52, v50);
}

id specialized DOCItemCollectionViewController.performCompress(_:)()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  v6 = (*((*v4 & *v0) + 0xC70))();
  v7 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v5);

  if (All)
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v9 = 0;
    }

    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v1, v3, All, v9, v7);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return [v0 setEditing:0 animated:1];
}

void specialized DOCItemCollectionViewController.performCopyAsPathname(_:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x277D84F90];
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    v27 = v10;
    v33 = [v11 effectiveUserInterfaceLayoutDirection];

    v13 = dispatch_group_create();
    v14 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
    v15 = v14;
    v31 = v2;
    v32 = v1;
    v29 = v5;
    v30 = v6;
    v28 = v7;
    if (v14 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v17 = 0;
      while ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v17, v15);
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        dispatch_group_enter(v13);
        swift_getObjectType();
        v19 = swift_allocObject();
        v19[2] = v33;
        v19[3] = v34;
        v19[4] = v13;

        v20 = v13;
        DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:), v19);
        swift_unknownObjectRelease();

        ++v17;
        if (v18 == i)
        {
          goto LABEL_15;
        }
      }

      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      swift_unknownObjectRetain();
      v18 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v21 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #2 in DOCItemCollectionViewController.performCopyAsPathname(_:);
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_53;
    v22 = _Block_copy(aBlock);

    v23 = v27;
    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v24 = v29;
    v25 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v22);

    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v23, v30);
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized DOCItemCollectionViewController.performDuplicate(_:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x1338);
  v2 = v1();
  v3 = DOCItemCollectionViewController.bestTargetNode(for:)(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = v1();
  v8 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v7);

  if (All)
  {
    if (v3)
    {
      swift_getObjectType();
      v10 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v10 = 0;
    }

    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v4, v6, All, v10, v8);
  }

  else
  {
  }

  [v0 setEditing:0 animated:1];

  return swift_unknownObjectRelease();
}

uint64_t specialized DOCItemCollectionViewController.performOpen(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x148))(v13) & 1) != 0 && [v0 isEditing])
  {
    (*((*v16 & *v0) + 0xC80))();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }

LABEL_9:
    (*(v11 + 32))(v15, v9, v10);
    (*(v11 + 16))(v5, v15, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v5);
    outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    if (DOCItemCollectionViewController.canConfirmPickerImport.getter())
    {
      v21.n128_f64[0] = DOCItemCollectionViewController.confirmPickerImport()();
    }

    else
    {
      if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0)
      {
        if (!DOCItemCollectionViewController.exportablePickerTargetNode.getter())
        {
          v23 = (*((*v16 & *v1) + 0x1010))();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v1 collectionView:v23 performPrimaryActionForItemAtIndexPath:isa];

          return (*(v11 + 8))(v15, v10, v21);
        }

        swift_unknownObjectRelease();
      }

      DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
    }

    return (*(v11 + 8))(v15, v10, v21);
  }

  v17 = (*((*v16 & *v0) + 0x1018))();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 indexPathsForSelectedItems];

    if (v19)
    {
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v20 + 16))
      {
        (*(v11 + 16))(v9, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

        (*(v11 + 56))(v9, 0, 1, v10);
        goto LABEL_9;
      }
    }
  }

  (*(v11 + 56))(v9, 1, 1, v10);
  return outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
}

void specialized DOCItemCollectionViewController.performAddFolderToDock(_:)()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.UI);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = MEMORY[0x277D85000];
  if (!v7)
  {

    goto LABEL_12;
  }

  v1 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v18 = v2;
  *v1 = 136315394;
  *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BD6730, &v18);
  *(v1 + 12) = 2080;
  v9 = (*((*v8 & *v4) + 0x1338))();
  if (v9 >> 62)
  {
    v11 = v9;
    v12 = __CocoaSet.count.getter();
    v9 = v11;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((v9 & 0xC000000000000001) != 0)
    {
      goto LABEL_24;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  while (1)
  {
LABEL_11:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v1 + 14) = v15;
    _os_log_impl(&dword_2493AC000, v5, v6, "%s add node to dock: %s", v1, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v2, -1, -1);
    MEMORY[0x24C1FE850](v1, -1, -1);

LABEL_12:
    v16 = (*((*v8 & *v4) + 0x1338))(v10);
    if (v16 >> 62)
    {
      v4 = v16;
      v17 = __CocoaSet.count.getter();
      v16 = v4;
      if (!v17)
      {
LABEL_21:

        return;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_17;
    }

    __break(1u);
LABEL_24:
    MEMORY[0x24C1FC540](0);
  }

  MEMORY[0x24C1FC540](0);
LABEL_17:

  swift_getObjectType();
  if (DOCNode.canBeAddedToDock.getter())
  {
    DOCNode.addToDock()();
  }

  swift_unknownObjectRelease();
}

double specialized DOCFocusableCollectionView.focusInitialItem(with:animated:ignoringPreviouslyFocusedItem:)(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v2) + 0xD8))(v12))
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(v2, &protocol witness table for DOCItemCollectionView, a1, a2 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v14, v8, v9);
      specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v14, 1);
      (*(v10 + 8))(v14, v9);
      return result;
    }
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if (one-time initialization token for keyboardFocus != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249B9FA70;
  *(v19 + 56) = type metadata accessor for DOCItemCollectionView();
  v20 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DOCItemCollectionView and conformance NSObject, type metadata accessor for DOCItemCollectionView, MEMORY[0x277D85388]);
  *(v19 + 32) = v2;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 96) = MEMORY[0x277D83B88];
  *(v19 + 104) = v21;
  *(v19 + 64) = v20;
  *(v19 + 72) = a1;
  v22 = v2;
  os_log(_:dso:log:type:_:)("There is no item to focus initially with for direction %ld", v23);

  return result;
}

void specialized DOCItemCollectionViewController.performRevealItem(_:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  if (v2 >> 62)
  {
    v14 = v2;
    v15 = __CocoaSet.count.getter();
    v2 = v14;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1FC540](0);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
    swift_unknownObjectRetain();
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v3;
  v8 = *((*v1 & *v0) + 0xC70);
  v9 = swift_unknownObjectRetain();
  v10 = v8(v9);
  v11 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (All)
  {
    if (v10)
    {
      swift_getObjectType();
      v13 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v13 = 0;
    }

    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v4, v6, All, v13, v11);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

void specialized DOCItemCollectionViewController.performDeleteNow(_:)(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x1338))();
  v7 = (*((*v5 & *v1) + 0xC70))();
  v8 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v6);

  if (All)
  {
    if (v7)
    {
      swift_getObjectType();
      v10 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v2, v4, All, v10, v8);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroy_17Tm_0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t outlined init with take of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type NSIndexPath and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSIndexPath and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSIndexPath and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSIndexPath, 0x277CCAA70);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSIndexPath and conformance NSObject);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void specialized Sequence.forEach(_:)(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(a3 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(a3 + 56) + 80 * v13);
      v35[0] = *v17;
      v18 = v17[4];
      v20 = v17[1];
      v19 = v17[2];
      v35[3] = v17[3];
      v35[4] = v18;
      v35[1] = v20;
      v35[2] = v19;
      v21 = v17[3];
      v32 = v17[2];
      v33 = v21;
      v34 = v17[4];
      v22 = v17[1];
      v30 = *v17;
      v31 = v22;
      *&v29 = v16;
      *(&v29 + 1) = v15;

      outlined init with copy of DOCDebugUIScenario.Settings(v35, &v23);
      a1(&v29);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v23 = v29;
      v24 = v30;
      outlined destroy of (key: String, value: DOCDebugUIScenario.Settings)(&v23);
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v25 = v31;
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v23 = v29;
    v24 = v30;
    outlined destroy of (key: String, value: DOCDebugUIScenario.Settings)(&v23);
LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      swift_unknownObjectRetain();
      a1(&v8);
      if (v3)
      {
        break;
      }

      swift_unknownObjectRelease();

      if (!--v4)
      {
        return;
      }
    }

    swift_unknownObjectRelease();
  }
}

double specialized Sequence.forEach(_:)(void (*result)(__int128 *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    for (i = (a3 + 88); ; i += 64)
    {
      v14 = v3;
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v15 = *(i - 56);
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v21 = v10;
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v5, v6, v7, v8, v9, v10);
      v11 = v22;
      result(&v15);
      v22 = v11;
      if (v11)
      {
        break;
      }

      swift_unknownObjectRelease();
      v12 = outlined consume of DOCSidebarItem?(v5, v6, v7, v8, v9, v10);
      v3 = v14 - 1;
      if (v14 == 1)
      {
        return v12;
      }
    }

    swift_unknownObjectRelease();
    return outlined consume of DOCSidebarItem?(v5, v6, v7, v8, v9, v10);
  }

  return v12;
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, a3);
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

{
  sub_2493D2D08(a1, a2, a3);
}

void UIViewController.doc_dismiss(animated:includingPresented:completion:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) != 0 && (v8 = [v4 presentedViewController]) != 0)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    v11 = a1 & 1;
    *(v10 + 24) = v11;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    v12 = v4;

    UIViewController.doc_dismiss(animated:includingPresented:completion:)(v11, 1, partial apply for closure #1 in UIViewController.doc_dismiss(animated:includingPresented:completion:), v10);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v15[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v15[5] = v13;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15[3] = &block_descriptor_34;
    v14 = _Block_copy(v15);

    [v4 dismissViewControllerAnimated:a1 & 1 completion:v14];
    _Block_release(v14);
  }
}

void Array<A>.doc_setActive(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = &selRef_activateConstraints_;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_deactivateConstraints_;
  }

  [v4 *v5];
}

void UIView.doc_performBlock(allowingAnimations:block:)(char a1, void (*a2)(void), uint64_t a3)
{
  if ((a1 & 1) != 0 && (v6 = [v3 window]) != 0)
  {

    a2();
  }

  else
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v9 + 24) = v8;
    v11[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed () -> ();
    v11[3] = &block_descriptor_12_1;
    v10 = _Block_copy(v11);

    [v7 performWithoutAnimation_];
    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }
}

BOOL UIView.doc_shouldAllowAnimations.getter()
{
  v1 = [v0 window];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void static UIView.doc_performBlock(allowingAnimations:block:)(char a1, void (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    a2();
  }

  else
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = swift_allocObject();
    *(v7 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v7 + 24) = v6;
    v9[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed () -> ();
    v9[3] = &block_descriptor_23;
    v8 = _Block_copy(v9);

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

void static UIView.doc_performAnimatable(allowingAnimations:animationDuration:animations:completion:)(char a1, uint64_t (*a2)(), uint64_t a3, uint64_t (*a4)(), uint64_t a5, double a6)
{
  if (a1 & 1) != 0 && (v11 = objc_opt_self(), ([v11 areAnimationsEnabled]))
  {
    v23 = a2;
    v24 = a3;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v22 = &block_descriptor_36;
    v12 = _Block_copy(&v19);

    v23 = a4;
    v24 = a5;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v22 = &block_descriptor_39_1;
    v13 = _Block_copy(&v19);

    [v11 animateWithDuration:v12 animations:v13 completion:a6];
    _Block_release(v13);
    _Block_release(v12);
  }

  else
  {
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in static UIView.doc_performAnimatable(allowingAnimations:animationDuration:animations:completion:);
    *(v16 + 24) = v15;
    v23 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v24 = v16;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed () -> ();
    v22 = &block_descriptor_33_0;
    v17 = _Block_copy(&v19);

    [v14 performWithoutAnimation_];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

double thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id UIView.doc_nearestAncestorNavBar.getter()
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UINavigationBar, 0x277D75780);
  result = [v0 superview];
  if (result)
  {
    v2 = result;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (![v2 isKindOfClass_])
    {
      v4 = [v2 superview];

      v2 = v4;
      if (!v4)
      {
        return 0;
      }
    }

    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  return result;
}

id UIView.doc_nearestAncestor(passingTest:)(uint64_t (*a1)(id))
{
  v3 = [v1 superview];
  if (v3)
  {
    do
    {
      if (a1(v3))
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
    }

    while (v4);
  }

  return v3;
}

id static UIView.doc_autolayoutFlexibleHorizontalSpacer.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  [v2 setActive_];
  LODWORD(v3) = 1144750080;
  [v0 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v4];
  return v0;
}

Swift::Void __swiftcall UIView.doc_addAutoresizingSubview(_:insetBy:)(UIView *_, NSDirectionalEdgeInsets insetBy)
{
  [v2 addSubview_];
  [(UIView *)_ setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = DOCConstraintsToResizeWithSuperview();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v6 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints_];
}

uint64_t UIView.doc_findSubtreeViews<A>(includingSelf:ofType:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v15 = static Array._allocateUninitialized(_:)();
  if (a1)
  {
    v7 = swift_dynamicCastUnknownClass();
    if (v7)
    {
      v14[5] = v7;
      type metadata accessor for Array();
      v8 = v4;
      Array.append(_:)();
    }
  }

  v9 = [v4 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x28223BE20](v11, v12);
  v14[2] = a3;
  v14[3] = &v15;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in UIView.doc_findSubtreeViews<A>(includingSelf:ofType:), v14, v10);

  return v15;
}

BOOL closure #1 in closure #1 in UIView.doc_findSubtreeViews<A>(includingSelf:ofType:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_dynamicCastUnknownClass();
  if (v4)
  {
    type metadata accessor for Array();
    v5 = a1;
    Array.append(_:)();
  }

  return v4 == 0;
}

double specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(char a1, void *a2)
{
  if (a1)
  {
    [a2 setNeedsLayout];
  }

  v3 = [a2 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, v7);

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return result;
}

double specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(char a1, void *a2, void *a3)
{
  if ((a1 & 1) != 0 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    MEMORY[0x24C1FB090](a2);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v6 = [a2 subviews];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1FC540](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, v10, a3);

        ++v9;
        if (v12 == i)
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
  }

  return result;
}

double UIView.doc_performDepthFirstTraversal(includingSelf:_:)(char a1, uint64_t (*a2)(void *), uint64_t a3)
{
  if (a1 & 1) == 0 || (a2(v3))
  {
    v7 = [v3 subviews];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x24C1FC540](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, a2, a3);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return result;
}

void UIViewController.doc_performBlock(allowingAnimations:block:)(char a1, void (*a2)(void), uint64_t a3)
{
  if ((a1 & 1) != 0 && [v3 doc_hasAppearedOrIsAppearing])
  {
    v6 = [v3 view];
    if (!v6)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v6 window];

    if (v8)
    {

      if ([v3 doc_isAppearing])
      {
        v9 = [v3 navigationController];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 topViewController];
          if (v11)
          {
            v12 = v11;
            type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
            v13 = v3;
            v14 = static NSObject.== infix(_:_:)();

            if (v14)
            {
              goto LABEL_9;
            }
          }

          else
          {
          }
        }
      }

      a2();
      return;
    }
  }

LABEL_9:
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
  *(v17 + 24) = v16;
  v19[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed () -> ();
  v19[3] = &block_descriptor_50_1;
  v18 = _Block_copy(v19);

  [v15 performWithoutAnimation_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }
}

uint64_t UIViewController.doc_findSubtreeViews<A>(includingSelf:loadViewIfNeed:ofType:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [v5 viewIfLoaded];
  if (v8)
  {
    v10 = v8;
    v11 = UIView.doc_findSubtreeViews<A>(includingSelf:ofType:)(a1 & 1, v9, a4);

    return v11;
  }

  else
  {

    return static Array._allocateUninitialized(_:)();
  }
}

uint64_t partial apply for closure #1 in static UIView.doc_performAnimatable(allowingAnimations:animationDuration:animations:completion:)()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  return v1(1);
}

double specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(char a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  if (a1)
  {
    a3(a2);
  }

  v7 = [a2 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, v11, a3, a4);

      ++v10;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return result;
}

uint64_t outlined destroy of (key: String, value: DOCDebugUIScenario.Settings)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_26DocumentManagerExecutables18DOCDebugUIScenarioV8SettingsV5valuetMd, &_sSS3key_26DocumentManagerExecutables18DOCDebugUIScenarioV8SettingsV5valuetMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions()
{
  result = lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions;
  if (!lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions;
  if (!lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions;
  if (!lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions;
  if (!lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions);
  }

  return result;
}

id DOCOuterScrollView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCOuterScrollView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCOuterScrollView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCOuterScrollView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCOuterScrollView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCOuterScrollView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCOuterScrollView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCOuterScrollView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static DOCDocumentSource.== infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 identifier];
  v4 = [a2 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void static DOCPickerSource.getBundles(from:)(void *a1)
{
  v1 = &selRef__setLocationsInBrowseTab_;
  v2 = [a1 identifier];
  if (!v2)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x277CC1E50]);
  v8 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(v4, v6);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 containingBundleRecord];
    if (!v10)
    {

      return;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {

      return;
    }

    v12 = [v11 applicationExtensionRecords];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x277CC1E50);
    lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type LSApplicationExtensionRecord and conformance NSObject, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x277CC1E50, MEMORY[0x277D85378]);
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v13 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v13 = v36;
      v14 = v37;
      v15 = v38;
      v16 = v39;
      v17 = v40;
    }

    else
    {
      v16 = 0;
      v18 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v13 + 56);
    }

    v21 = (v15 + 64) >> 6;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v22 = v35, v23 = v16, v24 = v17, !v35))
    {
LABEL_33:
      outlined consume of Set<UITouch>.Iterator._Variant(v13);
      return;
    }

    while (1)
    {
      v27 = [v22 extensionPointRecord];
      v28 = v1;
      v29 = [v27 v1[466]];

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      if (v30 == 0xD00000000000001CLL && 0x8000000249BD67E0 == v32)
      {

        goto LABEL_33;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_33;
      }

      v16 = v23;
      v17 = v24;
      v1 = v28;
      if (v13 < 0)
      {
        goto LABEL_16;
      }

LABEL_19:
      v25 = v16;
      v26 = v17;
      v23 = v16;
      if (!v17)
      {
        break;
      }

LABEL_23:
      v24 = (v26 - 1) & v26;
      v22 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!v22)
      {
        goto LABEL_33;
      }
    }

    while (1)
    {
      v23 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
        goto LABEL_33;
      }

      v26 = *(v14 + 8 * v23);
      ++v25;
      if (v26)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_36;
  }
}

id @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x24C1FAD20](a1);

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t specialized static DOCDocumentSource.< infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String.lowercased()();

  v5 = [a2 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String.lowercased()();

  if (v4._countAndFlagsBits == v6._countAndFlagsBits && v4._object == v6._object)
  {
    v8 = 0;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for DOCPickerSource.DOCPickerBundles(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for DOCPickerSource.DOCPickerBundles(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double DOCProgressIndicatorView.fractionCompleted.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCProgressIndicatorView.fractionCompleted.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCProgressIndicatorView.fractionCompleted.didset();
}

void DOCProgressIndicatorView.fractionCompleted.didset()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    v8 = v4;
    v7(ObjectType, v5, v2);
    *v3 = v4;
    *(v3 + 8) = v5;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*DOCProgressIndicatorView.fractionCompleted.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCProgressIndicatorView.fractionCompleted.modify;
}

void DOCProgressIndicatorView.fractionCompleted.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCProgressIndicatorView.fractionCompleted.didset();
  }
}

void *DOCProgressIndicatorView.preferredIconColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_preferredIconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCProgressIndicatorView.preferredIconColor.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_preferredIconColor;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
      v6 = a1;
      v7 = v5;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {

LABEL_12:
        return;
      }
    }

    else
    {
      v9 = a1;
    }

LABEL_8:
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (v11)
    {
      type metadata accessor for DOCCircularProgressView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = *(v2 + v4);
        v14 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor);
        *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor) = v13;
        v15 = v13;
        v16 = v11;

        DOCCircularProgressView.updateColors()();
      }
    }

    v7 = a1;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_8;
  }
}

void (*DOCProgressIndicatorView.preferredIconColor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_preferredIconColor;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 72) = v6;
  v7 = v6;
  return DOCProgressIndicatorView.preferredIconColor.modify;
}

void DOCProgressIndicatorView.preferredIconColor.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v7)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_19:
LABEL_20:
          v11 = *v4;
          goto LABEL_26;
        }
      }

      else
      {
        v14 = v3;
      }
    }

    else if (!v7)
    {
      goto LABEL_20;
    }

    v15 = v2[10];
    v16 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v17 = *(v15 + v16);
    if (v17)
    {
      type metadata accessor for DOCCircularProgressView();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = *(v2[10] + v2[11]);
        v20 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor);
        *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor) = v19;
        v21 = v19;
        v22 = v17;

        DOCCircularProgressView.updateColors()();
      }
    }

    v8 = v3;
    goto LABEL_19;
  }

  if (v3)
  {
    if (v7)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
      v11 = v3;
      v12 = v7;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {

LABEL_26:
        goto LABEL_27;
      }
    }

    else
    {
      v23 = v3;
    }

LABEL_22:
    v24 = v2[10];
    v25 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v26 = *(v24 + v25);
    if (v26)
    {
      type metadata accessor for DOCCircularProgressView();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = *(v2[10] + v2[11]);
        v29 = *(v27 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor);
        *(v27 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor) = v28;
        v30 = v28;
        v31 = v26;

        DOCCircularProgressView.updateColors()();
      }
    }

    v11 = v3;
    goto LABEL_26;
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_27:

  free(v2);
}

Swift::Int DOCProgressIndicatorView.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

char *DOCProgressIndicatorView.init(style:progressChangeAnimationDuration:)(char *a1, double a2)
{
  v4 = 0xD00000000000001DLL;
  v5 = *a1;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_preferredIconColor] = 0;
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView];
  v7 = type metadata accessor for DOCProgressIndicatorView();
  *v6 = 0;
  *(v6 + 1) = 0;
  v20.receiver = v2;
  v20.super_class = v7;
  v8 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = v8;
  if (v5)
  {
    v10 = specialized static DOCCircularProgressView.view(byAddingTo:changeAnimationDuration:)(v8, a2);
    v12 = v11;
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v14 = *&v9[v13];
    *&v9[v13] = v10;
    v15 = "com.apple.fileprovider-nonui";
  }

  else
  {
    v10 = specialized static DOCHorizontalBarProgressView.view(byAddingTo:changeAnimationDuration:)(v8, a2);
    v12 = v16;
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v14 = *&v9[v13];
    *&v9[v13] = v10;
    v15 = "DOCProgress.circularIndicator";
    v4 = 0xD00000000000001FLL;
  }

  *&v9[v13 + 8] = v12;
  v17 = v10;

  v18 = MEMORY[0x24C1FAD20](v4, v15 | 0x8000000000000000);
  [v17 setAccessibilityIdentifier_];

  return v9;
}

void DOCProgressIndicatorView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView);
}

uint64_t DOCHorizontalBarProgressView.changeAnimationDuration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration;
  swift_beginAccess();
  return *v1;
}

void DOCHorizontalBarProgressView.changeAnimationDuration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void DOCHorizontalBarProgressView.fractionCompleted.setter(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = [v4 progress];
  if (v6 > 1.0 || (v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x58))(v5), (v8 & 1) != 0))
  {
    v9 = [v4 window];
    if (v9)
    {

      v11 = [objc_opt_self() areAnimationsEnabled];
    }

    else
    {
      v11 = 0;
    }

    *&v10 = a1;
    [v4 setProgress:v11 animated:v10];
  }

  else
  {
    v12 = *&v7;
    v13 = objc_opt_self();
    v15[4] = partial apply for closure #1 in DOCHorizontalBarProgressView.fractionCompleted.setter;
    v15[5] = v3;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15[3] = &block_descriptor_35;
    v14 = _Block_copy(v15);

    [v13 animateWithDuration:v14 animations:v12];

    _Block_release(v14);
  }
}

id closure #1 in DOCHorizontalBarProgressView.fractionCompleted.setter(void *a1, double a2)
{
  v4 = [a1 window];
  if (v4)
  {

    v6 = [objc_opt_self() areAnimationsEnabled];
  }

  else
  {
    v6 = 0;
  }

  *&v5 = a2;
  return [a1 setProgress:v6 animated:v5];
}

void (*DOCHorizontalBarProgressView.fractionCompleted.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  [v1 progress];
  *a1 = v3;
  return DOCHorizontalBarProgressView.fractionCompleted.modify;
}

id DOCHorizontalBarProgressView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration];
  *v9 = 0;
  v9[8] = 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DOCHorizontalBarProgressView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCHorizontalBarProgressView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCHorizontalBarProgressView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration];
  *v3 = 0;
  v3[8] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCHorizontalBarProgressView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DOCCircularProgressView.init(changeAnimationDuration:)(double a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_fractionCompleted] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v6 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize];
  __asm { FMOV            V0.2D, #20.0 }

  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize] = _Q0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor] = 0;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor;
  v13 = objc_opt_self();
  *&v1[v12] = [v13 systemBlueColor];
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor;
  *&v1[v14] = [v13 systemBlueColor];
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBackgroundColor;
  *&v1[v15] = [v13 systemBackgroundColor];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_changeAnimationDuration] = a1;
  v16 = *v6;
  v17 = v6[1];
  v23.receiver = v1;
  v23.super_class = type metadata accessor for DOCCircularProgressView();
  v18 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, v16, v17);
  [v18 setOpaque_];
  DOCCircularProgressView.setupLayers()();
  DOCCircularProgressView.updateColors()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249B9A480;
  v20 = type metadata accessor for UITraitUserInterfaceStyle();
  v21 = MEMORY[0x277D74BF0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v18;
}

void DOCCircularProgressView.updateColors()()
{
  v1 = [v0 tintColor];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor];
    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor];
    }

    else
    {
      v4 = v1;
      v3 = 0;
    }

    v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor] = v4;
    v6 = v3;
    v7 = v4;

    v8 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor] = v7;
    v11 = v7;

    v9 = [objc_opt_self() systemBackgroundColor];
    v10 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBackgroundColor];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBackgroundColor] = v9;

    DOCCircularProgressView.updateLayers()();
  }

  else
  {
    __break(1u);
  }
}

void DOCCircularProgressView.layoutSublayers(of:)(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DOCCircularProgressView();
  objc_msgSendSuper2(&v15, sel_layoutSublayersOfLayer_, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA37E0;
  v4 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer];
  *(inited + 32) = v4;
  v14 = inited + 32;
  v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer];
  *(inited + 40) = v5;
  v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer];
  *(inited + 48) = v6;
  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v10, inited);
      goto LABEL_5;
    }

    if (v10 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v11 = *(inited + 8 * v10 + 32);
LABEL_5:
    v12 = v11;
    ++v10;
    [a1 bounds];
    [v12 setBounds_];
    [a1 bounds];
    MidX = CGRectGetMidX(v16);
    [a1 bounds];
    [v12 setPosition_];

    if (v10 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      DOCCircularProgressView.updateLayers()();
      return;
    }
  }

  __break(1u);
}

void DOCCircularProgressView.setupLayers()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer;
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer] setStrokeStart_];
  [*&v0[v1] setStrokeEnd_];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer;
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer] setContentsGravity_];
  v3 = [v0 layer];
  [v3 addSublayer_];

  v4 = [v0 layer];
  [v4 addSublayer_];

  v5 = [v0 layer];
  [v5 addSublayer_];
}

void DOCCircularProgressView.updateLayers()()
{
  [v0 bounds];
  x = v91.origin.x;
  y = v91.origin.y;
  height = v91.size.height;
  Width = CGRectGetWidth(v91);
  v5 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize];
  if (Width > *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize])
  {
    v6 = Width;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize];
  }

  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = v6;
  v92.size.height = height;
  v7 = CGRectGetHeight(v92);
  if (v7 > v5[1])
  {
    v8 = v7;
  }

  else
  {
    v8 = v5[1];
  }

  v93.origin.x = x;
  v93.origin.y = y;
  v93.size.width = v6;
  v93.size.height = v8;
  v9 = CGRectGetHeight(v93);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = v6;
  v94.size.height = v8;
  v10 = CGRectGetWidth(v94);
  if (v10 < v9)
  {
    v9 = v10;
  }

  v11 = v9 * 0.5;
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = v6;
  v95.size.height = v8;
  MidX = CGRectGetMidX(v95);
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = v6;
  v96.size.height = v8;
  MidY = CGRectGetMidY(v96);
  [v0 frame];
  v14 = 2.0;
  v15 = 2.0;
  if (CGRectGetHeight(v97) <= 50.0)
  {
    v16 = [v0 traitCollection];
    [v16 displayScale];
    v18 = v17;

    v15 = (1.0 / fmax(v18, 1.0) + 1.0) * 0.5;
  }

  v19 = MidX - v11;
  v20 = MidY - v11;
  [v0 frame];
  if (CGRectGetHeight(v98) <= 50.0)
  {
    v21 = [v0 traitCollection];
    [v21 displayScale];
    v23 = v22;

    v14 = (1.0 / fmax(v23, 1.0) + 1.0) * 0.5;
  }

  v88 = v20;
  v89 = v19;
  v99.origin.x = v19;
  v99.origin.y = v20;
  v99.size.width = v9;
  v99.size.height = v9;
  v100 = CGRectInset(v99, v15, v14);
  v24 = v100.origin.x;
  v25 = v100.origin.y;
  v26 = v100.size.width;
  v27 = v100.size.height;
  v28 = CGRectGetHeight(v100) * 0.5;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer;
  v30 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer];
  v101.origin.x = v24;
  v101.origin.y = v25;
  v101.size.width = v26;
  v101.size.height = v27;
  v31 = CGRectGetWidth(v101);
  v102.origin.x = v24;
  v102.origin.y = v25;
  v102.size.width = v26;
  v102.size.height = v27;
  v32 = CGRectGetHeight(v102);
  if (v32 >= v31)
  {
    v32 = v31;
  }

  v33 = v32 * 0.5 - v28 * 0.5;
  v103.origin.x = v24;
  v103.origin.y = v25;
  v103.size.width = v26;
  v103.size.height = v27;
  v34 = CGRectGetMidX(v103);
  v104.origin.x = v24;
  v104.origin.y = v25;
  v104.size.width = v26;
  v104.size.height = v27;
  v35 = CGRectGetMidY(v104);
  v36 = objc_opt_self();
  v37 = [v36 bezierPathWithArcCenter:1 radius:v34 startAngle:v35 endAngle:v33 clockwise:{4.71238898, 10.9955743}];
  [v37 setLineWidth_];
  v38 = [v37 CGPath];

  [v30 setPath_];
  [*&v0[v29] setLineWidth_];
  v39 = *&v0[v29];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  v43 = [v42 CGColor];

  [v41 setFillColor_];
  v44 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor];
  v45 = *&v0[v29];
  v46 = [v44 CGColor];
  [v45 setStrokeColor_];

  [*&v0[v29] setStrokeEnd_];
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer;
  v48 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer];
  [v0 frame];
  v49 = 4.0;
  v50 = CGRectGetHeight(v105) <= 50.0;
  v51 = 4.0;
  if (v50)
  {
    v52 = [v0 traitCollection];
    [v52 displayScale];
    v54 = v53;

    v51 = 1.0 / fmax(v54, 1.0) + 1.0;
  }

  [v48 setBorderWidth_];

  v55 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor];
  v56 = *&v0[v47];
  v57 = [v55 CGColor];
  [v56 setBorderColor_];

  v58 = *&v0[v47];
  [v58 bounds];
  [v58 setCornerRadius_];

  v59 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer;
  v60 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer];
  [v0 frame];
  if (CGRectGetHeight(v107) <= 50.0)
  {
    v61 = [v0 traitCollection];
    [v61 displayScale];
    v63 = v62;

    v49 = 1.0 / fmax(v63, 1.0) + 1.0;
  }

  v108.origin.x = v89;
  v108.origin.y = v88;
  v108.size.width = v9;
  v108.size.height = v9;
  v64 = CGRectGetWidth(v108);
  v109.origin.x = v89;
  v109.origin.y = v88;
  v109.size.width = v9;
  v109.size.height = v9;
  v65 = CGRectGetHeight(v109);
  if (v65 >= v64)
  {
    v65 = v64;
  }

  v66 = v65 * 0.5 - v49 * 0.5;
  v110.origin.x = v89;
  v110.origin.y = v88;
  v110.size.width = v9;
  v110.size.height = v9;
  v67 = CGRectGetMidX(v110);
  v111.origin.x = v89;
  v111.origin.y = v88;
  v111.size.width = v9;
  v111.size.height = v9;
  v68 = [v36 bezierPathWithArcCenter:1 radius:v67 startAngle:CGRectGetMidY(v111) endAngle:v66 clockwise:{4.71238898, 10.3672558}];
  [v68 setLineWidth_];
  v69 = [v68 CGPath];

  [v60 setPath_];
  v70 = *&v0[v47];
  v71 = *&v0[v59];
  [v70 borderWidth];
  [v71 setLineWidth_];

  v72 = *&v0[v47];
  v73 = *&v0[v59];
  v74 = [v72 borderColor];
  [v73 setStrokeColor_];

  v75 = *&v0[v59];
  v76 = [v40 clearColor];
  v77 = [v76 CGColor];

  [v75 setFillColor_];
  [*&v0[v59] setLineCap_];
  if ([objc_opt_self() areAnimationsEnabled] && (objc_msgSend(objc_opt_self(), sel_disableActions) & 1) == 0 && (objc_msgSend(v0, sel_isHiddenOrHasHiddenAncestor) & 1) == 0)
  {
    v78 = [*&v0[v29] presentationLayer];
    if (v78)
    {
      v79 = v78;
      [v78 strokeEnd];
    }

    else
    {
      [*&v0[v29] strokeEnd];
    }

    v80 = MEMORY[0x24C1FAD20](0x6E45656B6F727473, 0xE900000000000064);
    v81 = [objc_opt_self() animationWithKeyPath_];

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v81 setFromValue_];

    v83 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v81 setToValue_];

    v84 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_changeAnimationDuration];
    v85 = v81;
    [v85 setDuration_];
    [v85 setFillMode_];

    v86 = *&v0[v29];
    v87 = [v85 keyPath];
    [v86 addAnimation:v85 forKey:v87];
  }

  DOCCircularProgressView.updateIndeterminateUI()();
}

void DOCCircularProgressView.updateIndeterminateUI()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_fractionCompleted);
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer;
  v3 = (v1 < COERCE_DOUBLE(1)) ^ [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer) isHidden];
  if ((v3 & 1) == 0)
  {
    v4 = objc_opt_self();
    [v4 begin];
    [v4 setDisableActions_];
  }

  [*(v0 + v2) setHidden_];
  [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer) setHidden_];
  [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer) setHidden_];
  if ((v3 & 1) == 0)
  {
    [objc_opt_self() commit];
  }

  v5 = *(v0 + v2);
  v6 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BD6A90);
  if (v1 >= COERCE_DOUBLE(1))
  {
    [v5 removeAnimationForKey_];
  }

  else
  {
    v16 = [v5 animationForKey_];

    v7 = v16;
    if (v16)
    {
      goto LABEL_10;
    }

    v8 = MEMORY[0x24C1FAD20](0xD000000000000014, 0x8000000249BD6AB0);
    v9 = [objc_opt_self() animationWithKeyPath_];

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v9 setFromValue_];

    v11 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v9 setToValue_];

    v12 = v9;
    [v12 setRemovedOnCompletion_];
    LODWORD(v13) = 2139095039;
    [v12 setRepeatCount_];
    [v12 setFillMode_];
    [v12 setDuration_];
    v14 = CACurrentMediaTime();
    [v12 setBeginTimeMode_];
    [v12 duration];
    [v12 setBeginTime_];

    v5 = *(v0 + v2);
    v6 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BD6A90);
    [v5 addAnimation:v12 forKey:v6];
  }

  v7 = v6;
LABEL_10:
}

id DOCProgressIndicatorView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *specialized static DOCHorizontalBarProgressView.view(byAddingTo:changeAnimationDuration:)(void *a1, double a2)
{
  type metadata accessor for DOCHorizontalBarProgressView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v6 = v4;
  v5(*&a2, 0);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [a1 tintColor];
  [v6 setTintColor_];

  [a1 addSubview_];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0470;
  v10 = [v6 widthAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant_];

  *(v9 + 32) = v11;
  v12 = [v6 centerYAnchor];
  v13 = [a1 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v9 + 40) = v14;
  v15 = [v6 leadingAnchor];
  v16 = [a1 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v9 + 48) = v17;
  v18 = [v6 trailingAnchor];
  v19 = [a1 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v9 + 56) = v20;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints_];

  return v6;
}

char *specialized static DOCCircularProgressView.view(byAddingTo:changeAnimationDuration:)(void *a1, double a2)
{
  v4 = objc_allocWithZone(type metadata accessor for DOCCircularProgressView());
  v5 = DOCCircularProgressView.init(changeAnimationDuration:)(a2);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  v6 = [v5 heightAnchor];
  v7 = [a1 heightAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  LODWORD(v9) = 1144750080;
  [v8 setPriority_];
  v10 = [v5 heightAnchor];
  v11 = [a1 widthAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  LODWORD(v13) = 1144750080;
  [v12 setPriority_];
  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA5C40;
  *(v14 + 32) = v8;
  *(v14 + 40) = v12;
  v15 = v8;
  v16 = v12;
  v17 = [v5 &selRef_splitViewController_didChangeFromState_toState_isUserDisplayModeChange_ + 6];
  v18 = [v5 heightAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v14 + 48) = v19;
  v20 = [v5 &selRef_splitViewController_didChangeFromState_toState_isUserDisplayModeChange_ + 6];
  v21 = [v20 constraintGreaterThanOrEqualToConstant_];

  *(v14 + 56) = v21;
  v22 = [v5 centerXAnchor];
  v23 = [a1 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v14 + 64) = v24;
  v25 = [v5 centerYAnchor];
  v26 = [a1 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v14 + 72) = v27;
  v28 = [v5 topAnchor];
  v29 = [a1 topAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor_];

  *(v14 + 80) = v30;
  v31 = [v5 bottomAnchor];
  v32 = [a1 bottomAnchor];
  v33 = [v31 constraintLessThanOrEqualToAnchor_];

  *(v14 + 88) = v33;
  v34 = [v5 leadingAnchor];
  v35 = [a1 leadingAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor_];

  *(v14 + 96) = v36;
  v37 = [v5 trailingAnchor];
  v38 = [a1 trailingAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor_];

  *(v14 + 104) = v39;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints_];

  return v5;
}

unint64_t lazy protocol witness table accessor for type DOCProgressIndicatorView.Style and conformance DOCProgressIndicatorView.Style()
{
  result = lazy protocol witness table cache variable for type DOCProgressIndicatorView.Style and conformance DOCProgressIndicatorView.Style;
  if (!lazy protocol witness table cache variable for type DOCProgressIndicatorView.Style and conformance DOCProgressIndicatorView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressIndicatorView.Style and conformance DOCProgressIndicatorView.Style);
  }

  return result;
}

void specialized DOCCircularProgressView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_fractionCompleted) = 0;
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  __asm { FMOV            V0.2D, #20.0 }

  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor) = 0;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor;
  v10 = objc_opt_self();
  *(v0 + v9) = [v10 systemBlueColor];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor;
  *(v0 + v11) = [v10 systemBlueColor];
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBackgroundColor;
  *(v0 + v12) = [v10 systemBackgroundColor];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static GetContentOfFolderIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables24GetContentOfFolderIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables24GetContentOfFolderIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables24GetContentOfFolderIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables24GetContentOfFolderIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD6B50;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables24GetContentOfFolderIntentV10AppIntents0J9ParameterCyAC12FINodeEntityVGGMd, &_ss7KeyPathCy26DocumentManagerExecutables24GetContentOfFolderIntentV10AppIntents0J9ParameterCyAC12FINodeEntityVGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent()
{
  result = lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent;
  if (!lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent;
  if (!lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent;
  if (!lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent);
  }

  return result;
}

uint64_t key path setter for GetContentOfFolderIntent.folder : GetContentOfFolderIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of FINodeEntity(a1, &v11 - v8);
  outlined init with copy of FINodeEntity(v9, v5);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(v9);
}

uint64_t GetContentOfFolderIntent.folder.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

void (*GetContentOfFolderIntent.folder.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t GetContentOfFolderIntent.title.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static GetContentOfFolderIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static GetContentOfFolderIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static GetContentOfFolderIntent.authenticationPolicy.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v1, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static GetContentOfFolderIntent.authenticationPolicy : GetContentOfFolderIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static GetContentOfFolderIntent.authenticationPolicy : GetContentOfFolderIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t GetContentOfFolderIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for FINodeEntity(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContentOfFolderIntent.perform(), 0, 0);
}

uint64_t GetContentOfFolderIntent.perform()()
{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "[GetContentOfFolderIntent] Performing Get Contents of Folder Intent", v4, 2u);
    MEMORY[0x24C1FE850](v4, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[6];

  IntentParameter.wrappedValue.getter();
  v7 = *(v5 + *(v6 + 32));
  v0[11] = v7;
  v8 = v7;
  outlined destroy of FINodeEntity(v5);
  v9 = v8;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *(v10 + 16) = v9;
  v11 = swift_task_alloc();
  v0[13] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
  *v11 = v0;
  v11[1] = GetContentOfFolderIntent.perform();

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000015, 0x8000000249BD6B80, partial apply for closure #1 in static FolderNodeObserver.getChildrenNodes(in:), v10, v12);
}

{

  return MEMORY[0x2822009F8](GetContentOfFolderIntent.perform(), 0, 0);
}

{
  v28 = v0;
  v2 = v0[11];

  v3 = v0[2];
  v27 = MEMORY[0x277D84F90];
  v25 = v3 >> 62;
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_36:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v26 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v6, v3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    v1 = [v7 fpfs_fpItem];
    v9 = swift_unknownObjectRelease();
    ++v6;
    if (v1)
    {
      MEMORY[0x24C1FB090](v9);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v26 = v27;
      v6 = v8;
    }
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = v26 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {
    swift_bridgeObjectRelease_n();

    goto LABEL_23;
  }

  v1 = swift_slowAlloc();
  *v1 = 134218240;
  if (v12)
  {
    goto LABEL_43;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    *(v1 + 4) = i;

    *(v1 + 6) = 2048;
    v14 = v25 ? __CocoaSet.count.getter() : *(v4 + 16);

    *(v1 + 14) = v14;

    _os_log_impl(&dword_2493AC000, v10, v11, "[GetContentOfFolderIntent] %ld items out of %ld nodes found", v1, 0x16u);
    MEMORY[0x24C1FE850](v1, -1, -1);
LABEL_23:

    if (v12)
    {
      v15 = __CocoaSet.count.getter();
      if (!v15)
      {
LABEL_38:

        v18 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    else
    {
      v15 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_38;
      }
    }

    v27 = MEMORY[0x277D84F90];
    v10 = &v27;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_43:
    ;
  }

  v16 = 0;
  v17 = v0[7];
  v18 = v27;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x24C1FC540](v16, v26);
    }

    else
    {
      v19 = *(v26 + 8 * v16 + 32);
    }

    FINodeEntity.init(item:)(v19, v0[8]);
    v27 = v18;
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v18 = v27;
    }

    v22 = v0[8];
    ++v16;
    *(v18 + 16) = v21 + 1;
    outlined init with take of FINodeEntity(v22, v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v21);
  }

  while (v15 != v16);

LABEL_39:
  v0[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR);
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
  static IntentResult.result<A>(value:)();

  v23 = v0[1];

  return v23();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance GetContentOfFolderIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LocalizedStringResource();
  v4 = __swift_project_value_buffer(v3, static GetContentOfFolderIntent.title);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for AppIntent.perform() in conformance GetContentOfFolderIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return GetContentOfFolderIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance GetContentOfFolderIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of GetContentOfFolderIntent.init(folder:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance GetContentOfFolderIntent(uint64_t a1)
{
  ContentOfFolderIntent = lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent();

  return MEMORY[0x28210B538](a1, ContentOfFolderIntent);
}

void *FolderNodeObserver.__allocating_init(folderNode:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *FolderNodeObserver.init(folderNode:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return specialized static FolderNodeObserver.getChildrenNodes(in:)(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

double closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd, &_sScCySaySo7DOCNode_pGs5NeverOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21 - v14;
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  (*(v12 + 32))(v18 + v17, v15, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_36;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v10, v6, v19);
  _Block_release(v19);

  (*(v25 + 8))(v6, v3);
  (*(v23 + 8))(v10, v24);

  return result;
}

double closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd, &_sScCySaySo7DOCNode_pGs5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  type metadata accessor for FolderNodeObserver();
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = a1;
  (*(v5 + 16))(v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  swift_unknownObjectRetain();
  FolderNodeObserver.startObserving(completionBlock:)(partial apply for closure #1 in closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:), v11);

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd, &_sScCySaySo7DOCNode_pGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void FolderNodeObserver.startObserving(completionBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(type metadata accessor for DOCNodeObserver());
  v7 = swift_unknownObjectRetain();
  v8 = DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(v7, 0, 0);
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = a1;
  v9[4] = a2;

  v10 = DOCNodeObserver.addDidFinishGatheringSubscriber(_:)(partial apply for closure #1 in FolderNodeObserver.startObserving(completionBlock:), v9);

  v11 = *(v3 + 32);
  *(v3 + 32) = v10;

  (*((*MEMORY[0x277D85000] & **&v8[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection]) + 0x1D0))();
  v12 = *(v3 + 24);
  *(v3 + 24) = v8;
}

double closure #1 in FolderNodeObserver.startObserving(completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a1;
  v14[7] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:), v14);

  return result;
}

uint64_t closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:), v9, v8);
}

uint64_t closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:)()
{
  v1 = v0[7];
  v2 = v0[5];

  v2(v1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 24);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & **&v5[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection]) + 0x1C8);
      v7 = v5;
      v6();
      v8 = *(v4 + 32);
      if (v8)
      {
        v9 = v8;
        DOCNodeObserver.removeSubscriber(_:)(v9);
      }
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t FolderNodeObserver.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FolderNodeObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of FINodeEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FINodeEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR);
    lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR);
    lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A]);
  }

  return result;
}

uint64_t specialized static FolderNodeObserver.getChildrenNodes(in:)()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
  *v3 = v0;
  v3[1] = specialized static FolderNodeObserver.getChildrenNodes(in:);

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000015, 0x8000000249BD6B80, closure #1 in static FolderNodeObserver.getChildrenNodes(in:)partial apply, v2, v4);
}

{

  return MEMORY[0x2822009F8](specialized static FolderNodeObserver.getChildrenNodes(in:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t default argument 0 of GetContentOfFolderIntent.init(folder:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd, &_s26DocumentManagerExecutables12FINodeEntityVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v45 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v44 = &v36 - v14;
  v15 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v22 - 8, v23);
  *&v36 = type metadata accessor for LocalizedStringResource();
  v24 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v25);
  v37 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd, &_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v16 + 104);
  v28(v19, v27, v15);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28(v19, v27, v15);
  v29 = v44;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v24 + 56))(v29, 0, 1, v36);
  v30 = type metadata accessor for FINodeEntity(0);
  (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  v31 = swift_allocObject();
  v36 = xmmword_249B9A480;
  *(v31 + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  v32 = type metadata accessor for IntentDialog();
  v33 = *(*(v32 - 8) + 56);
  v33(v39, 1, 1, v32);
  v33(v40, 1, 1, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = v36;
  static UTType.folder.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  v46 = FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v34, 1);
  v47 = 2;
  (*(v42 + 104))(v41, *MEMORY[0x277CBA308], v43);
  lazy protocol witness table accessor for type LocationOptionsProvider and conformance LocationOptionsProvider();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  return IntentParameter<>.init<A>(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

unint64_t lazy protocol witness table accessor for type LocationOptionsProvider and conformance LocationOptionsProvider()
{
  result = lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider;
  if (!lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider;
  if (!lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider);
  }

  return result;
}

uint64_t dispatch thunk of static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1)
{
  v6 = (*(v1 + 160) + **(v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return v6(a1);
}

uint64_t partial apply for closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:)(a1, v4, v5, v6, v7, v9, v8);
}

double partial apply for closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd, &_sScCySaySo7DOCNode_pGs5NeverOGMR) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(v2, v3);
}

uint64_t lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd, &_sScCySaySo7DOCNode_pGs5NeverOGMR);

  return closure #1 in closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(a1);
}

uint64_t key path getter for DOCOperation.finishedBlock : DOCOperation@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCOperation.finishedBlock : DOCOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

uint64_t DOCOperation.finishedBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_finishedBlock);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1, v1[1]);
  return v2;
}

uint64_t DOCOperation.finishedBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_finishedBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v7);
}

id DOCOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCOperation.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = v1;
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v22 = v0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation__isFinished] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation__isExecuting] = 0;
  v9 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_finishedBlock];
  v17 = type metadata accessor for OS_dispatch_queue();
  v21 = "t Contents of Folder intent";
  *v9 = 0;
  *(v9 + 1) = 0;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  v20 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = *MEMORY[0x277D85260];
  v11 = *(v23 + 104);
  v23 += 104;
  v11(v4, v10, v1);
  v12 = v4;
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v22;
  *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue] = v13;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11(v12, v10, v18);
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for DOCOperation();
  v24.receiver = v14;
  v24.super_class = v15;
  return objc_msgSendSuper2(&v24, sel_init);
}

Swift::Void __swiftcall DOCOperation.start()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCOperation.start();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

void closure #1 in DOCOperation.start()(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isCancelled])
  {
    v19 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue];
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    aBlock[4] = closure #1 in DOCOperation._finishIfCanceled()partial apply;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_71;
    v14 = _Block_copy(aBlock);
    v18 = v7;
    v15 = v14;
    v16 = a1;
    static DispatchQoS.unspecified.getter();
    v20 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v6, v15);
    _Block_release(v15);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v18);
  }

  else
  {
    [a1 setExecuting_];

    [a1 main];
  }
}

void DOCOperation.isFinished.getter()
{
  v8 = 0;
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DOCOperation.isFinished.getter;
  *(v3 + 24) = v2;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9_3;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void DOCOperation.isFinished.setter(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x24C1FAD20](0x6873696E69467369, 0xEA00000000006465);
  [v2 willChangeValueForKey_];

  v5 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in DOCOperation.isFinished.setter;
  *(v7 + 24) = v6;
  v11[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_19_3;
  v8 = _Block_copy(v11);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x24C1FAD20](0x6873696E69467369, 0xEA00000000006465);
    [v9 didChangeValueForKey_];
  }
}

void DOCOperation.isExecuting.getter()
{
  v8 = 0;
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DOCOperation.isExecuting.getter;
  *(v3 + 24) = v2;
  aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_29_1;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void DOCOperation.isExecuting.setter(char a1)
{
  v3 = MEMORY[0x24C1FAD20](0x7475636578457369, 0xEB00000000676E69);
  [v1 willChangeValueForKey_];

  v4 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in DOCOperation.isExecuting.setter;
  *(v6 + 24) = v5;
  v10[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_39_2;
  v7 = _Block_copy(v10);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x24C1FAD20](0x7475636578457369, 0xEB00000000676E69);
    [v8 didChangeValueForKey_];
  }
}

Swift::Void __swiftcall DOCOperation.cancel()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCOperation();
  objc_msgSendSuper2(&v1, sel_cancel);
  DOCOperation._finishIfCanceled()();
}

id DOCOperation._finishIfCanceled()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 isCancelled];
  if (result)
  {
    v17[1] = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue];
    v18 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    aBlock[4] = partial apply for closure #1 in DOCOperation._finishIfCanceled();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_64;
    v14 = _Block_copy(aBlock);
    v17[0] = v6;
    v15 = v14;
    v16 = v0;
    static DispatchQoS.unspecified.getter();
    v19 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v11, v5, v15);
    _Block_release(v15);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v17[0]);

    return v18;
  }

  return result;
}

uint64_t closure #1 in DOCOperation._finishIfCanceled()(void *a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:{0, 0, 0}];
  (*((*MEMORY[0x277D85000] & *a1) + 0xE8))(v4, v2);

  return outlined destroy of Any?(v4);
}

double DOCOperation.completed(with:error:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue];
  outlined init with copy of Any?(a1, v24);
  v14 = swift_allocObject();
  v15 = v24[1];
  *(v14 + 24) = v24[0];
  *(v14 + 16) = v2;
  *(v14 + 40) = v15;
  *(v14 + 56) = a2;
  aBlock[4] = partial apply for closure #1 in DOCOperation.completed(with:error:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_45;
  v16 = _Block_copy(aBlock);
  v17 = v2;
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v21);

  return result;
}

id DOCOperation.finish(with:error:)(uint64_t a1, uint64_t a2)
{
  result = [v2 isFinished];
  if ((result & 1) == 0)
  {
    v6 = MEMORY[0x277D85000];
    v7 = (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();
    if (v7)
    {
      v9 = v7;
      v10 = v8;
      v7(a1, a2);
      (*((*v6 & *v2) + 0xB0))(0, 0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v9, v10);
    }

    [v2 setExecuting_];

    return [v2 setFinished_];
  }

  return result;
}

id DOCOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @in_guaranteed Error?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

void notificationCallback(notification:responseCode:)(void *a1, char a2)
{
  if (a1)
  {
    v3 = one-time initialization token for blockForNotification;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = specialized Dictionary._Variant.removeValue(forKey:)(v4);
    v7 = v6;
    swift_endAccess();
    if (v5)
    {
      v8[0] = a2 & 3;
      v5(v8);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5, v7);
    }
  }
}

unint64_t one-time initialization function for blockForNotification()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ySucTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static DOCSystemAlert.blockForNotification = result;
  return result;
}

Swift::Int DOCSystemAlert.Response.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCSystemAlert.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double static DOCSystemAlert.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static DOCSystemAlert.shared.setter(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCSystemAlert.shared = a1;

  return result;
}

uint64_t (*static DOCSystemAlert.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

double key path getter for static DOCSystemAlert.shared : DOCSystemAlert.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCSystemAlert.shared;

  return result;
}

double key path setter for static DOCSystemAlert.shared : DOCSystemAlert.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCSystemAlert.shared = v1;

  return result;
}

void DOCSystemAlert.presentError(title:message:primaryButtonTitle:alternateButtonTitle:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59 = *MEMORY[0x277D85DE8];
  if (v10[2].isa)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v12, "Error dialog is already visible. Don't show a second one.", v13, 2u);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    return;
  }

  osloga = v10;
  error = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_SStGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA08C0;
  v54 = a8;
  v22 = *MEMORY[0x277CBF188];
  *(inited + 32) = *MEMORY[0x277CBF188];
  v23 = *MEMORY[0x277CBF198];
  *(inited + 56) = *MEMORY[0x277CBF198];
  *(inited + 64) = a3;
  v24 = MEMORY[0x277CBF1E8];
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  v25 = *v24;
  *(inited + 72) = a4;
  *(inited + 80) = v25;
  *(inited + 88) = a5;
  *(inited + 96) = a6;
  v26 = v25;

  v27 = v22;
  v28 = v23;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSg_SStMd, &_sSo11CFStringRefaSg_SStMR);
  swift_arrayDestroy();
  if (v54)
  {
    v29 = *MEMORY[0x277CBF1C0];

    v30 = v29;
    specialized Dictionary.subscript.setter(a7, v54, v29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
  lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v32 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, isa);

  v33 = v10[2].isa;
  v10[2].isa = v32;
  v34 = v32;

  if (!v34)
  {
    goto LABEL_14;
  }

  if (error)
  {

LABEL_14:

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.UI);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      swift_beginAccess();
      *(v38 + 4) = error;
      _os_log_impl(&dword_2493AC000, v36, v37, "Could not create CFUserNotification: %d", v38, 8u);
      MEMORY[0x24C1FE850](v38, -1, -1);
    }

    return;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v34, @objc notificationCallback(notification:responseCode:), 0);
  v40 = v10[3].isa;
  v10[3].isa = RunLoopSource;
  v41 = RunLoopSource;

  if (v41)
  {
    v42 = CFRunLoopGetCurrent();
    v43 = CFRunLoopCopyCurrentMode(v42);
    if (!v43)
    {
      v43 = *MEMORY[0x277CBF048];
    }

    if (one-time initialization token for blockForNotification != -1)
    {
      swift_once();
    }

    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = a9;
    v45[4] = a10;
    v45[5] = v42;
    swift_beginAccess();

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a9, a10);
    v46 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = static DOCSystemAlert.blockForNotification;
    static DOCSystemAlert.blockForNotification = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in DOCSystemAlert.presentError(title:message:primaryButtonTitle:alternateButtonTitle:responseHandler:), v45, v34, isUniquelyReferenced_nonNull_native);
    static DOCSystemAlert.blockForNotification = v57;
    swift_endAccess();

    CFRunLoopAddSource(v46, v41, v43);
    CFRunLoopRun();
  }

  else
  {

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.UI);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2493AC000, v49, v50, "Could not create CFRunLoopSource.", v51, 2u);
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    v52 = osloga[2].isa;
    osloga[2].isa = 0;
  }
}