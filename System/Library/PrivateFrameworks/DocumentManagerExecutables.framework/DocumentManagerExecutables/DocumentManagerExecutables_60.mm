void one-time initialization function for renameCollisionBaseString(uint64_t a1)
{
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v7._object = 0x8000000249BEFEB0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._object = 0x8000000249BEFE60;
    v4._countAndFlagsBits = 0x1000000000000043;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v7._countAndFlagsBits = 0xD000000000000022;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v7);

    static DOCCreateFolderOperation.renameCollisionBaseString = v6;
  }

  else
  {
    __break(1u);
  }
}

id DOCCreateFolderOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOC_FINewFolderOperation.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *specialized DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, _BYTE *a6)
{
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp] = 0;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp] = 0;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderNode] = 0;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes] = 0;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_scheduleWasDeferred] = 0;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock] = 0;
  v10 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_nameConflictHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_errorHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_completionHandler];
  *v12 = 0;
  v12[1] = 0;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_destinationNode] = a1;
  v13 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderName];
  *v13 = a2;
  v13[1] = a3;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_undoManager] = a5;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_isForAppIntents] = a4;
  v53.receiver = a6;
  v53.super_class = type metadata accessor for DOCCreateFolderOperation();
  swift_unknownObjectRetain();

  v14 = a5;
  v15 = objc_msgSendSuper2(&v53, sel_init);
  if ([objc_opt_self() useFIOperations])
  {
    v16 = type metadata accessor for DOC_FINewFolderOperation();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_destinationNode] = a1;
    v18 = &v17[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_folderName];
    *v18 = a2;
    v18[1] = a3;
    *&v17[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_undoManager] = v14;
    v17[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_didRegisterUndo] = 0;
    v19 = DOCNode.isFINode.getter();
    swift_unknownObjectRetain_n();
    v20 = v14;

    v21 = v20;
    v22 = MEMORY[0x24C1FAD20](a2, a3);

    objc_opt_self();
    v23 = swift_dynamicCastObjCClassUnconditional();
    if (v19)
    {
      v50.receiver = v17;
      v50.super_class = v16;
      swift_unknownObjectRetain();
      v24 = objc_msgSendSuper2(&v50, sel_initWithName_destinationFolder_propertyList_, v22, v23, 0);
    }

    else
    {
      v51.receiver = v17;
      v51.super_class = v16;
      swift_unknownObjectRetain();
      v24 = objc_msgSendSuper2(&v51, sel_initWithName_destinationFolderItem_, v22, v23);
    }

    v36 = v24;

    swift_unknownObjectRelease_n();
    v35 = MEMORY[0x277D85000];
    if (v36)
    {
    }

    v37 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp;
    goto LABEL_15;
  }

  if (!DOCNode.isFINode.getter())
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClassUnconditional();
    v39 = type metadata accessor for DOC_FPCreateFolderOperation();
    v40 = objc_allocWithZone(v39);
    v41 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = v38;
    v42 = &v40[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
    *v42 = a2;
    v42[1] = a3;
    swift_beginAccess();
    *&v40[v41] = 0;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = v14;
    v40[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = 0;
    swift_unknownObjectRetain_n();
    v43 = v14;

    v44 = v43;
    v45 = MEMORY[0x24C1FAD20](a2, a3);

    v52.receiver = v40;
    v35 = MEMORY[0x277D85000];
    v52.super_class = v39;
    v36 = objc_msgSendSuper2(&v52, sel_initWithParentItem_folderName_, v38, v45);

    v46 = *((*v35 & *v36) + 0xB0);
    v47 = v36;
    v46();

    swift_unknownObjectRelease();
    v37 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp;
LABEL_15:
    v48 = *(v15 + v37);
    *(v15 + v37) = v36;

    goto LABEL_16;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.UI);
  swift_unknownObjectRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClassUnconditional();
    *(v28 + 4) = v30;
    *v29 = v30;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_2493AC000, v26, v27, "Fetching FPItem for destinationNode async: %@", v28, 0xCu);
    outlined destroy of NSObject?(v29);
    MEMORY[0x24C1FE850](v29, -1, -1);
    MEMORY[0x24C1FE850](v28, -1, -1);
  }

  *(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes) = 1;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = a1;
  v32[4] = a2;
  v32[5] = a3;
  v32[6] = v14;
  swift_unknownObjectRetain();
  v33 = v14;

  DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:), v32);

  v35 = MEMORY[0x277D85000];
LABEL_16:
  (*((*v35 & *v15) + 0x1D8))(v34);
  return v15;
}

uint64_t partial apply for closure #1 in DOC_FPCreateFolderOperation.operationForRedoing()(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & **(v1 + 16)) + 0x80);
  v4 = a1;
  return v3(a1);
}

unint64_t type metadata accessor for FINode()
{
  result = lazy cache variable for type metadata for FINode;
  if (!lazy cache variable for type metadata for FINode)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FINode);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCCreateFolderOperation, @in_guaranteed String, @in_guaranteed String, @in_guaranteed AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out String?)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v13 = a1;
  v12[0] = a2;
  v12[1] = a3;
  v11[0] = a4;
  v11[1] = a5;
  v10 = a6;
  v7(&v9, &v13, v12, v11, &v10);
  return v9;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCCreateFolderOperation, @guaranteed String, @guaranteed String, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@owned String?)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(v5 + 16))(*a1, *a2, a2[1], *a3, a3[1], *a4);
  *a5 = result;
  a5[1] = v8;
  return result;
}

uint64_t partial apply for closure #1 in DOCCreateFolderOperation._schedule()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in DOCCreateFolderOperation._schedule()(a1, v4, v5, v6);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?)(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v8 = v5(a4, v7);

  return v8;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned Bool, @unowned NSError?) -> ()(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v18 - v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v13 + 8))(v11, v12);
  }

  if (a3)
  {
    v17 = _convertErrorToNSError(_:)();
  }

  else
  {
    v17 = 0;
  }

  (*(a4 + 16))(a4, v15, a2 & 1, v17);
}

uint64_t specialized DOCNode.canBeAddedToDock.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v23 - v10;
  result = [v1 isFolder];
  if (result)
  {
    if ([v1 isAppContainer])
    {
      return 0;
    }

    result = [v1 cachedDomain];
    if (!result)
    {
      return result;
    }

    v13 = result;
    if ([result supportsPickingFolders] & 1) == 0 || (v14 = objc_msgSend(v13, sel_identifier), v15 = DOCProviderDomainIDIsRemovable(), v14, (v15))
    {

      return 0;
    }

    v16 = [v1 nodeURL];
    if (v16)
    {
      v17 = v16;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v11, v6, v2);
      v18 = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      v22 = [v18 doc:v20 hasConfiguredFilesStackWithURL:?];

      (*(v3 + 8))(v11, v2);
      return v22 ^ 1;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

uint64_t specialized DOCNode.localizedSizeDescription()()
{
  v1 = [v0 fileSize];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  if (([v1 longLongValue] & 0x8000000000000000) != 0)
  {

LABEL_7:
    v3 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_8;
  }

  if (one-time initialization token for byteCountFormatter != -1)
  {
    swift_once();
  }

  v3 = [(objc_class *)byteCountFormatter.super.super.isa stringFromByteCount:Int64.init(truncating:)()];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  return v4;
}

uint64_t FINodeEntity.init(item:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for FINodeEntity(0);
  v16 = v15[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  v35 = EntityProperty<>.init()();
  *(a2 + v16) = v35;
  v17 = v15[6];
  v36 = EntityProperty<>.init()();
  *(a2 + v17) = v36;
  v18 = v15[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  *(a2 + v18) = EntityProperty<>.init()();
  v19 = [a1 itemID];
  FileEntityIdentifier.init(fileProviderItemID:)();
  *(a2 + v15[8]) = a1;
  v20 = a1;
  v21 = [v20 filename];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v38 = v22;
  v39 = v24;
  EntityProperty.wrappedValue.setter();
  v25 = [v20 creationDate];
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = type metadata accessor for Date();
  v29 = *(*(v28 - 8) + 56);
  v30 = 1;
  v29(v14, v27, 1, v28);
  outlined init with copy of DOCGridLayout.Spec?(v14, v10, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of CharacterSet?(v14, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  v31 = [v20 contentModificationDate];

  v32 = v37;
  if (v31)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  v29(v32, v30, 1, v28);
  outlined init with copy of DOCGridLayout.Spec?(v32, v10, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of CharacterSet?(v32, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return MEMORY[0x282200958](v10, v11);
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5TY0_, 0, 0);
}

uint64_t _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5TY0_()
{
  v1 = v0[26];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5TQ1_;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVSgs5Error_pGMd, &_sSccy10Foundation3URLVSgs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?;
  v0[13] = &block_descriptor_84_0;
  v0[14] = v3;
  [v2 fetchURL_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5TQ1_()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5TY3_;
  }

  else
  {
    v2 = _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5TY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5TY2_()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  outlined init with take of URL?(v0[26], v1);
  outlined init with copy of DOCGridLayout.Spec?(v1, v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[27];
  if (v5 == 1)
  {
    v7 = v0[19];
    outlined destroy of CharacterSet?(v0[25], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    swift_willThrow();
  }

  else
  {
    v10 = v0[23];
    v9 = v0[24];
    v12 = v0[21];
    v11 = v0[22];
    v14 = v0[19];
    v13 = v0[20];
    (*(v11 + 32))(v9);
    (*(v11 + 16))(v10, v9, v12);
    v15 = [v14 filename];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = [v14 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for UTType();
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    IntentFile.init(fileURL:filename:type:)();

    (*(v11 + 8))(v9, v12);
  }

  outlined destroy of CharacterSet?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v8 = v0[1];

  return v8();
}

uint64_t _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5TY3_(uint64_t a1)
{
  v2 = *(v1 + 152);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t one-time initialization function for supportedContentTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  result = static UTType.item.getter();
  static FINodeEntity.supportedContentTypes = v0;
  return result;
}

uint64_t *FINodeEntity.supportedContentTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedContentTypes != -1)
  {
    swift_once();
  }

  return &static FINodeEntity.supportedContentTypes;
}

double static FINodeEntity.supportedContentTypes.getter()
{
  if (one-time initialization token for supportedContentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t (*static FINodeEntity.supportedContentTypes.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for supportedContentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

double key path getter for static FINodeEntity.supportedContentTypes : FINodeEntity.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for supportedContentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static FINodeEntity.supportedContentTypes;

  return result;
}

double key path setter for static FINodeEntity.supportedContentTypes : FINodeEntity.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for supportedContentTypes;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static FINodeEntity.supportedContentTypes = v1;

  return result;
}

uint64_t one-time initialization function for defaultQuery()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  static UTType.item.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  result = FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v0, 1);
  static FINodeEntity.defaultQuery = result;
  return result;
}

uint64_t *FINodeEntity.defaultQuery.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultQuery != -1)
  {
    swift_once();
  }

  return &static FINodeEntity.defaultQuery;
}

double static FINodeEntity.defaultQuery.getter()
{
  if (one-time initialization token for defaultQuery != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static FINodeEntity.supportedContentTypes.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = *a3;
  *a3 = a1;
  return a4(v8);
}

uint64_t (*static FINodeEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for defaultQuery != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

double key path getter for static FINodeEntity.defaultQuery : FINodeEntity.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultQuery != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static FINodeEntity.defaultQuery;

  return result;
}

double key path setter for static FINodeEntity.defaultQuery : FINodeEntity.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for defaultQuery;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static FINodeEntity.defaultQuery = v1;

  return result;
}

uint64_t FINodeEntity.updateIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for updateIntent != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t static FINodeEntity.updateIntent.getter()
{
  if (one-time initialization token for updateIntent != -1)
  {
    return swift_once();
  }

  return result;
}

void (*static FINodeEntity.updateIntent.modify())()
{
  if (one-time initialization token for updateIntent != -1)
  {
    swift_once();
  }

  return DOCGridLayout.specIconWidth.modify;
}

id FINodeEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v35[0] = v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v35 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + *(type metadata accessor for FINodeEntity(0) + 32));
  v19 = [v18 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  countAndFlagsBits = UTType.localizedDescription.getter();
  object = v21;
  (*(v14 + 8))(v17, v13);
  if (!object)
  {
    result = _DocumentManagerBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    v36._object = 0x8000000249BD08D0;
    v25._countAndFlagsBits = 0x746E656D75636F44;
    v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v26.value._object = 0xEB00000000656C62;
    v25._object = 0xE800000000000000;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000012;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v36);
    countAndFlagsBits = v28._countAndFlagsBits;
    object = v28._object;
  }

  if (([v18 isFolder] & 1) == 0)
  {
    v29 = specialized DOCNode.localizedSizeDescription()();
    v31 = v30;
    v35[2] = countAndFlagsBits;
    v35[3] = object;
    MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
    MEMORY[0x24C1FAEA0](v29, v31);
  }

  v32 = [v18 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v11 + 56))(v9, 0, 1, v10);
  v33 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v33 - 8) + 56))(v35[0], 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, _ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  *(swift_allocObject() + 16) = xmmword_249B9A480;
  v34 = [v18 filename];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LocalizedStringResource.init(stringLiteral:)();
  return DisplayRepresentation.init(title:subtitle:image:synonyms:)();
}

uint64_t FINodeEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FileEntityIdentifier();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t key path setter for FINodeEntity.creationDate : FINodeEntity(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v11 - v8, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  type metadata accessor for FINodeEntity(0);
  outlined init with copy of DOCGridLayout.Spec?(v9, v5, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of CharacterSet?(v9, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
}

uint64_t FINodeEntity.creationDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  type metadata accessor for FINodeEntity(0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v5, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of CharacterSet?(a1, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
}

void (*FINodeEntity.creationDate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for FINodeEntity(0);
  *(v3 + 32) = EntityProperty.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t key path setter for FINodeEntity.fileModificationDate : FINodeEntity(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v11 - v8, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  type metadata accessor for FINodeEntity(0);
  outlined init with copy of DOCGridLayout.Spec?(v9, v5, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of CharacterSet?(v9, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
}

uint64_t FINodeEntity.fileModificationDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  type metadata accessor for FINodeEntity(0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v5, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of CharacterSet?(a1, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
}

uint64_t type metadata accessor for FINodeEntity(uint64_t a1)
{
  result = type metadata singleton initialization cache for FINodeEntity;
  if (!type metadata singleton initialization cache for FINodeEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*FINodeEntity.fileModificationDate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for FINodeEntity(0);
  *(v3 + 32) = EntityProperty.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t FINodeEntity.filename.getter()
{
  type metadata accessor for FINodeEntity(0);
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for FINodeEntity.filename : FINodeEntity(uint64_t *a1)
{
  type metadata accessor for FINodeEntity(0);

  return EntityProperty.wrappedValue.setter();
}

void (*FINodeEntity.filename.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for FINodeEntity(0);
  *(v3 + 32) = EntityProperty.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

id FINodeEntity.item.getter()
{
  v1 = *(v0 + *(type metadata accessor for FINodeEntity(0) + 32));

  return v1;
}

double protocol witness for static FileEntity.supportedContentTypes.getter in conformance FINodeEntity()
{
  if (one-time initialization token for supportedContentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

ValueMetadata *protocol witness for static _IntentUpdatableAppEntity.updateIntent.getter in conformance FINodeEntity()
{
  if (one-time initialization token for updateIntent != -1)
  {
    swift_once();
  }

  return &type metadata for RenameItemIntent;
}

uint64_t FINodeEntity.fileRepresentation.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](FINodeEntity.fileRepresentation.getter, 0, 0);
}

uint64_t FINodeEntity.fileRepresentation.getter()
{
  v1 = *(v0[3] + *(type metadata accessor for FINodeEntity(0) + 32));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = FINodeEntity.fileRepresentation.getter;
  v3 = v0[2];

  return _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5(v3, v1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for FileRepresentableEntity.fileRepresentation.getter in conformance FINodeEntity(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](protocol witness for FileRepresentableEntity.fileRepresentation.getter in conformance FINodeEntity, 0, 0);
}

uint64_t protocol witness for FileRepresentableEntity.fileRepresentation.getter in conformance FINodeEntity()
{
  v1 = *(v0[3] + *(v0[4] + 32));
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = protocol witness for FileRepresentableEntity.fileRepresentation.getter in conformance FINodeEntity;
  v3 = v0[2];

  return _s10AppIntents10IntentFileV26DocumentManagerExecutablesE7docNodeACx_tYaKcSo7DOCNodeRzlufCSo6FPItemC_Tt1g5(v3, v1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id FINodeEntity.itemProvider.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  v2 = *(v0 + *(type metadata accessor for FINodeEntity(0) + 32));
  specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v2, 2u, 1, 0, v1);

  return v1;
}

id protocol witness for static ShareableEntity.configuration(from:) in conformance FINodeEntity@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = specialized static FINodeEntity.configuration(from:)(a2);
  *a1 = result;
  return result;
}

id protocol witness for CopyableEntity.itemProvider.getter in conformance FINodeEntity(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  v4 = *(v1 + *(a1 + 32));
  specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v4, 2u, 1, 0, v3);

  return v3;
}

uint64_t static FINodeEntity.fetchURL(for:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for URL();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](static FINodeEntity.fetchURL(for:), 0, 0);
}

uint64_t static FINodeEntity.fetchURL(for:)()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultManager];
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = static FINodeEntity.fetchURL(for:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVs5Error_pGMd, &_sSccy10Foundation3URLVs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL;
  v0[13] = &block_descriptor_28_5;
  v0[14] = v4;
  [v3 fetchURLForItem:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = OpenItemIntent.fetchURL(for:);
  }

  else
  {
    v2 = static FINodeEntity.fetchURL(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = *(v5 + 32);
  v6(v1, v0[22], v4);
  (*(v5 + 56))(v1, 0, 1, v4);

  outlined init with copy of DOCGridLayout.Spec?(v1, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = (*(v5 + 48))(v3, 1, v4);
  v8 = v0[23];
  v9 = v0[24];
  if (v7 == 1)
  {
    outlined destroy of CharacterSet?(v0[23], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    swift_willThrow();
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v11 = v0[20];
    v12 = v0[18];
    outlined destroy of CharacterSet?(v0[24], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6(v12, v8, v11);
  }

  v10 = v0[1];

  return v10();
}

uint64_t static FINodeEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v0 - 8, v1);
  static UTType.item.getter();
  type metadata accessor for FINodeEntity(0);
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  return FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)();
}

uint64_t closure #1 in static FINodeEntity.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static FINodeEntity.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static FINodeEntity.transferRepresentation.getter()
{
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for FINodeEntity(0) + 32));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = closure #1 in static FINodeEntity.transferRepresentation.getter;
  v4 = v0[7];

  return static FINodeEntity.fetchURL(for:)(v4, v2);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in static FINodeEntity.transferRepresentation.getter;
  }

  else
  {
    v2 = closure #1 in static FINodeEntity.transferRepresentation.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v0[6], v1, v2);
  SentTransferredFile.init(_:allowAccessingOriginalFile:)();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in static FINodeEntity.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](closure #2 in static FINodeEntity.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static FINodeEntity.transferRepresentation.getter()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  *v3 = v0;
  v3[1] = closure #2 in static FINodeEntity.transferRepresentation.getter;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000016, 0x8000000249BF56B0, partial apply for closure #1 in closure #2 in static FINodeEntity.transferRepresentation.getter, v2, v4);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = DOCNode.fpfs_fetchFINode();
  }

  else
  {

    v2 = closure #2 in static FINodeEntity.transferRepresentation.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  FINodeEntity.init(item:)(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in closure #2 in static FINodeEntity.transferRepresentation.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd, &_sScCySo6FPItemCs5Error_pGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  MEMORY[0x24C1F8340]();
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  (*(v3 + 16))(v6, a1, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v6, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in static FINodeEntity.transferRepresentation.getter;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_134;
  v18 = _Block_copy(aBlock);

  [v12 fetchItemForURL:v15 completionHandler:v18];
  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in closure #2 in static FINodeEntity.transferRepresentation.getter(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd, &_sScCySo6FPItemCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
      a2 = 0;
    }

    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd, &_sScCySo6FPItemCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance FINodeEntity(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v2 - 8, v3);
  static UTType.item.getter();
  return FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)();
}

uint64_t one-time initialization function for __assistantSchemaEntity()
{
  v0 = type metadata accessor for AssistantSchema.EntitySchema();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AssistantSchema();
  __swift_allocate_value_buffer(v7, static FINodeEntity.__assistantSchemaEntity);
  __swift_project_value_buffer(v7, static FINodeEntity.__assistantSchemaEntity);
  AssistantSchema.EntitySchema.init(_:)();
  AssistantSchema.EntitySchema.init(_:)();
  (*(v1 + 8))(v6, v0);
  return AssistantSchema.init<A>(_:)();
}

uint64_t FINodeEntity.__assistantSchemaEntity.unsafeMutableAddressor(double a1)
{
  if (one-time initialization token for __assistantSchemaEntity != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for AssistantSchema();

  return __swift_project_value_buffer(v1, static FINodeEntity.__assistantSchemaEntity);
}

uint64_t static FINodeEntity.__assistantSchemaEntity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for __assistantSchemaEntity != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AssistantSchema();
  v4 = __swift_project_value_buffer(v3, static FINodeEntity.__assistantSchemaEntity);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for Identifiable.id.getter in conformance FINodeEntity@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FileEntityIdentifier();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for static TypeDisplayRepresentable.typeDisplayRepresentation.getter in conformance FINodeEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);

  return MEMORY[0x28210BFD8](a1, v2);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance FINodeEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance FINodeEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance FINodeEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

void specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void *a1, unsigned int a2, int a3, int a4, void *a5)
{
  LODWORD(v243) = a4;
  v230 = a3;
  v242 = a2;
  v254 = *MEMORY[0x277D85DE8];
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v227, v7);
  v226 = &v222[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v228 = &v222[-v11];
  MEMORY[0x28223BE20](v12, v13);
  v229 = &v222[-v14];
  v246 = type metadata accessor for DOCDragPasteboardType(0);
  MEMORY[0x28223BE20](v246, v15);
  v240 = &v222[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v241 = type metadata accessor for UTType();
  v17 = *(v241 - 1);
  MEMORY[0x28223BE20](v241, v18);
  v20 = &v222[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v244 = static DOCLog.UI;
  LODWORD(v238) = static os_log_type_t.debug.getter();
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249BA08D0;
  v22 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v23 = v22;
  v24 = lazy protocol witness table accessor for type String and conformance String();
  *(v21 + 64) = v24;
  *(v21 + 32) = 0xD00000000000005BLL;
  *(v21 + 40) = 0x8000000249BCBBB0;
  v245 = 0x8000000249BCBBB0;
  v234 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider, 0x277CCAA88);
  *(v21 + 96) = v234;
  v233 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject();
  *(v21 + 104) = v233;
  *(v21 + 72) = a5;
  v239 = a5;
  v25 = [a1 displayName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(v21 + 136) = v23;
  *(v21 + 144) = v24;
  *(v21 + 112) = v26;
  *(v21 + 120) = v28;
  v29 = [a1 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = UTType.identifier.getter();
  v32 = v31;
  v34 = *(v17 + 8);
  v33 = v17 + 8;
  v35 = v241;
  v34(v20, v241);
  *(v21 + 176) = MEMORY[0x277D837D0];
  *(v21 + 184) = v24;
  v235 = v24;
  *(v21 + 152) = v30;
  *(v21 + 160) = v32;
  os_log(_:dso:log:type:_:)("%@: %@, registering '%@' with type %@", 37, 2, &dword_2493AC000, v244, v238, v21);

  v36 = [a1 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = UTType.identifier.getter();
  v39 = String.isFolderUTI.getter(v37, v38);

  v238 = v34;
  v34(v20, v35);
  v232 = v20;
  if (v39)
  {
    v40 = v239;
    v41 = v245;
    if (v242 == 2)
    {
      v42 = [a1 cachedDomain];
      if (v42)
      {
        v43 = v42;
        v242 = [v42 supportsPickingFolders];
      }

      else
      {
        v242 = 0;
      }
    }
  }

  else
  {
    v242 = 0;
    v40 = v239;
    v41 = v245;
  }

  [v40 setPreferredPresentationStyle_];
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  v237 = v33;
  if (v44)
  {
    v45 = v240;
    *v240 = (v39 & 1) != 0;
  }

  else
  {
    v45 = v240;
    *v240 = (v39 & 1) != 0;
  }

  swift_storeEnumTagMultiPayload();
  v46 = DOCDragPasteboardType.typeIdentifier.getter();
  v47 = MEMORY[0x24C1FAD20](v46);

  v48 = swift_allocObject();
  *(v48 + 16) = a1;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for closure #1 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
  *(v49 + 24) = v48;
  v252 = _s10Foundation4DataVSgs5Error_pSgIeggg_So10NSProgressCSgIeghgo_AdFIeghgg_AIIeghgo_TRTA_0;
  v253 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v249 = 1107296256;
  v250 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v251 = &block_descriptor_38_4;
  v50 = _Block_copy(&aBlock);
  v246 = a1;

  [v40 registerDataRepresentationForTypeIdentifier:v47 visibility:1 loadHandler:v50];
  _Block_release(v50);

  if (v243)
  {
    v225 = v39;
    v51 = objc_opt_self();
    v52 = v246;
    v53 = [v52 itemID];
    aBlock = 0;
    v54 = [v51 archivedDataWithRootObject:v53 requiringSecureCoding:1 error:&aBlock];

    v55 = aBlock;
    if (v54)
    {
      v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      NSItemProvider.doc_setTeamDataSafely(_:)(v56, v58);
      v231 = 0;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static Logger.UI);
      v73 = v52;
      outlined copy of Data._Representation(v56, v58);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      outlined consume of Data._Representation(v56, v58);

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        aBlock = v224;
        *v76 = 136315650;
        *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v41, &aBlock);
        *(v76 + 12) = 2080;
        outlined copy of Data._Representation(v56, v58);
        v77 = v74;
        v78 = Data.description.getter();
        v223 = v75;
        v80 = v79;
        outlined consume of Data._Representation(v56, v58);
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &aBlock);

        *(v76 + 14) = v81;
        *(v76 + 22) = 2080;
        v41 = v245;
        v247 = v73;
        v82 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
        v83 = String.init<A>(describing:)();
        v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &aBlock);

        *(v76 + 24) = v85;
        _os_log_impl(&dword_2493AC000, v77, v223, "%s, encoded teamData: %s for node: %s", v76, 0x20u);
        v86 = v224;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v86, -1, -1);
        MEMORY[0x24C1FE850](v76, -1, -1);
        outlined consume of Data._Representation(v56, v58);
      }

      else
      {

        outlined consume of Data._Representation(v56, v58);
      }
    }

    else
    {
      v59 = v55;
      v60 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v231 = 0;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logger.UI);
      v62 = v60;
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        LODWORD(v224) = v64;
        v66 = v65;
        v67 = swift_slowAlloc();
        aBlock = v67;
        *v66 = 136315394;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v41, &aBlock);
        *(v66 + 12) = 2080;
        v247 = v60;
        v68 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v69 = String.init<A>(describing:)();
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &aBlock);
        v41 = v245;

        *(v66 + 14) = v71;
        _os_log_impl(&dword_2493AC000, v63, v224, "%s, failed to encode node for teamData error: %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v67, -1, -1);
        MEMORY[0x24C1FE850](v66, -1, -1);
      }

      else
      {
      }
    }

    v35 = v241;
    LOBYTE(v39) = v225;
  }

  else
  {
    v231 = 0;
  }

  v87 = [v246 displayName];
  if (!v87)
  {
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = MEMORY[0x24C1FAD20](v88);
  }

  [v40 setSuggestedName_];

  if ((v39 & 1) == 0)
  {
    v107 = v40;
    v108 = specialized DOCNode.fpfs_syncFetchFPItem()();
    v109 = v107;
    if (!v108)
    {
LABEL_38:
      v115 = static os_log_type_t.debug.getter();
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_249B9FA70;
      v117 = v235;
      *(v116 + 56) = MEMORY[0x277D837D0];
      *(v116 + 64) = v117;
      *(v116 + 32) = 0xD00000000000005BLL;
      *(v116 + 40) = v41;
      v118 = v233;
      *(v116 + 96) = v234;
      *(v116 + 104) = v118;
      *(v116 + 72) = v109;
      v119 = v109;
      os_log(_:dso:log:type:_:)("%@: %@, registerFileRepresentation", 34, 2, &dword_2493AC000, v244, v115, v116);

      v120 = v246;
      v121 = [v246 contentType];
      v122 = v232;
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      v123 = UTType.identifier.getter();
      v125 = v124;
      v238(v122, v35);
      v126 = MEMORY[0x24C1FAD20](v123, v125);

      v127 = swift_allocObject();
      *(v127 + 16) = v120;
      *(v127 + 24) = v108;
      v128 = swift_allocObject();
      *(v128 + 16) = partial apply for closure #4 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
      *(v128 + 24) = v127;
      v252 = _s10Foundation3URLVSgSbs5Error_pSgIegnyg_So10NSProgressCSgIeghgo_ADSbAFIeghnyg_AIIeghgo_TRTA_0;
      v253 = v128;
      aBlock = MEMORY[0x277D85DD0];
      v249 = 1107296256;
      v250 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
      v251 = &block_descriptor_47_0;
      v129 = _Block_copy(&aBlock);
      v130 = v120;
      v131 = v108;

      [v119 registerFileRepresentationForTypeIdentifier:v126 fileOptions:1 visibility:0 loadHandler:v129];
      _Block_release(v129);

      if ((v243 & 1) != 0 || (v132 = [objc_opt_self() foldersInDock], v133 = objc_msgSend(v132, sel_isEnabled), v132, (v133 & 1) == 0) || (DOCDeviceIsPad() & 1) == 0 || (specialized DOCNode.canBeAddedToDock.getter() & 1) == 0)
      {
        outlined destroy of DOCDragPasteboardType(v45, type metadata accessor for DOCDragPasteboardType);

        return;
      }

      v134 = [v130 nodeURL];
      if (v134)
      {
        v135 = v228;
        v136 = v134;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v137 = 0;
      }

      else
      {
        v137 = 1;
        v135 = v228;
      }

      v179 = type metadata accessor for URL();
      v180 = *(v179 - 8);
      v181 = v180;
      v246 = *(v180 + 56);
      v244 = v180 + 56;
      (v246)(v135, v137, 1, v179);
      v182 = v135;
      v183 = v229;
      outlined init with take of URL?(v182, v229);
      if ((*(v181 + 48))(v183, 1, v179) == 1)
      {
        outlined destroy of CharacterSet?(v183, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_74:
        v215 = *MEMORY[0x277D06180];
        v216 = swift_allocObject();
        *(v216 + 16) = v130;
        *(v216 + 24) = v108;
        v217 = swift_allocObject();
        *(v217 + 16) = partial apply for closure #5 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
        *(v217 + 24) = v216;
        v252 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?)partial apply;
        v253 = v217;
        aBlock = MEMORY[0x277D85DD0];
        v249 = 1107296256;
        v250 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
        v251 = &block_descriptor_57_3;
        v218 = _Block_copy(&aBlock);
        v219 = v130;
        v220 = v131;
        v221 = v215;

        [v119 registerFileRepresentationForTypeIdentifier:v221 fileOptions:1 visibility:1 loadHandler:v218];
        _Block_release(v218);

        outlined destroy of DOCDragPasteboardType(v240, type metadata accessor for DOCDragPasteboardType);
        return;
      }

      URL._bridgeToObjectiveC()(v184);
      v186 = v185;
      (*(v181 + 8))(v183, v179);
      v187 = objc_opt_self();
      aBlock = 0;
      v243 = v186;
      v188 = [v187 archivedDataWithRootObject:v186 requiringSecureCoding:1 error:&aBlock];
      v189 = aBlock;
      if (v188)
      {
        v190 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v192 = v191;

        v193 = v231;
        NSItemProvider.doc_setTeamDataSafely(_:)(v190, v192);
        if (!v193)
        {

          outlined consume of Data._Representation(v190, v192);
          goto LABEL_74;
        }

        outlined consume of Data._Representation(v190, v192);
      }

      else
      {
        v194 = v189;
        v195 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v193 = v195;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v196 = type metadata accessor for Logger();
      __swift_project_value_buffer(v196, static Logger.UI);
      v197 = v130;
      v198 = v193;
      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v199, v200))
      {
        v242 = v200;
        v201 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        aBlock = v241;
        *v201 = 136315650;
        *(v201 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v245, &aBlock);
        *(v201 + 12) = 2080;
        v202 = [v197 nodeURL];
        if (v202)
        {
          v245 = v199;
          v203 = v193;
          v204 = v226;
          v205 = v202;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v206 = v204;
          v193 = v203;
          v199 = v245;
          v207 = 0;
        }

        else
        {
          v207 = 1;
          v206 = v226;
        }

        (v246)(v206, v207, 1, v179);
        v208 = String.init<A>(describing:)();
        v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v209, &aBlock);

        *(v201 + 14) = v210;
        *(v201 + 22) = 2112;
        v211 = v193;
        v212 = _swift_stdlib_bridgeErrorToNSError();
        *(v201 + 24) = v212;
        v213 = v239;
        *v239 = v212;
        _os_log_impl(&dword_2493AC000, v199, v242, "%s: failed to encode URL: %s as data: %@", v201, 0x20u);
        outlined destroy of CharacterSet?(v213, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v213, -1, -1);
        v214 = v241;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v214, -1, -1);
        MEMORY[0x24C1FE850](v201, -1, -1);
      }

      else
      {
      }

      goto LABEL_74;
    }

LABEL_37:
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v108;
    v252 = partial apply for closure #3 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    v253 = v110;
    aBlock = MEMORY[0x277D85DD0];
    v249 = 1107296256;
    v250 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v251 = &block_descriptor_63_5;
    v111 = _Block_copy(&aBlock);
    v112 = v108;
    v113 = v109;
    v114 = v112;

    [v114 fetchURL_];
    _Block_release(v111);

    goto LABEL_38;
  }

  v89 = objc_opt_self();
  aBlock = 0;
  v90 = [v89 archivedDataWithRootObject:v246 requiringSecureCoding:1 error:&aBlock];
  v91 = aBlock;
  if (v90)
  {
    v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    v95 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
    v96 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC6090);
    v97 = [v95 initWithActivityType_];

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:));
    outlined destroy of String(&unk_285C82580);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v97 setRequiredUserInfoKeys_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    v100 = v239;
    aBlock = 0xD000000000000019;
    v249 = 0x8000000249BC5EE0;
    v101 = v242;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v92;
    *(inited + 80) = v94;
    v102 = v92;
    outlined copy of Data._Representation(v92, v94);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    v103 = Dictionary._bridgeToObjectiveC()().super.isa;
    v104 = v101;

    [v97 addUserInfoEntriesFromDictionary_];

    v45 = v240;
    v105 = v245;
    [v97 setEligibleForSearch_];
    [v97 setEligibleForHandoff_];
    [v97 setEligibleForPrediction_];
    [v97 setEligibleForPublicIndexing_];
    [v100 sbui:*MEMORY[0x277D06118] setRequiredApplicationBundleIdentifier:?];
    v106 = v100;
    [v100 registerObject:v97 visibility:0];

    outlined consume of Data._Representation(v102, v94);
  }

  else
  {
    v138 = v91;
    v139 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    __swift_project_value_buffer(v140, static Logger.UI);
    v106 = v40;
    v141 = v40;
    v142 = v139;
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      aBlock = v239;
      *v145 = 136315650;
      *(v145 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v245, &aBlock);
      *(v145 + 12) = 2080;
      v146 = v141;
      v147 = [v146 description];
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = v149;

      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, &aBlock);

      *(v145 + 14) = v151;
      *(v145 + 22) = 2080;
      LOBYTE(v148) = v242;
      v247 = v139;
      v152 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v153 = String.init<A>(describing:)();
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &aBlock);

      *(v145 + 24) = v155;
      v45 = v240;
      v156 = v245;
      _os_log_impl(&dword_2493AC000, v143, v144, "%s: %s, failed to register NSUserActivity for folder. Error: %s", v145, 0x20u);
      v157 = v239;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v157, -1, -1);
      MEMORY[0x24C1FE850](v145, -1, -1);
      v158 = v139;
      v105 = v156;
      v104 = v148;

      v231 = 0;
      v35 = v241;
    }

    else
    {

      v231 = 0;
      v35 = v241;
      v105 = v245;
      v104 = v242;
    }
  }

  v159 = specialized DOCNode.fpfs_syncFetchFPItem()();
  v108 = v159;
  if (v104)
  {
    v41 = v105;
    v109 = v106;
    if (!v159)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v159)
  {
    if (v230)
    {
      outlined destroy of DOCDragPasteboardType(v45, type metadata accessor for DOCDragPasteboardType);

      return;
    }

    v160 = v105;
    v161 = v159;
    v162 = static os_log_type_t.debug.getter();
    v163 = swift_allocObject();
    *(v163 + 16) = xmmword_249B9FA70;
    v164 = v235;
    *(v163 + 56) = MEMORY[0x277D837D0];
    *(v163 + 64) = v164;
    *(v163 + 32) = 0xD00000000000005BLL;
    *(v163 + 40) = v160;
    v165 = v233;
    *(v163 + 96) = v234;
    *(v163 + 104) = v165;
    *(v163 + 72) = v106;
    v166 = v106;
    os_log(_:dso:log:type:_:)("%@: %@, registerFileProviderItem", 32, 2, &dword_2493AC000, v244, v162, v163);

    v167 = v246;
    v168 = [v246 contentType];
    v169 = v232;
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v170 = UTType.identifier.getter();
    v172 = v171;
    v238(v169, v35);
    v173 = MEMORY[0x24C1FAD20](v170, v172);

    v174 = swift_allocObject();
    *(v174 + 16) = v167;
    *(v174 + 24) = v161;
    v175 = swift_allocObject();
    *(v175 + 16) = partial apply for closure #2 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    *(v175 + 24) = v174;
    v252 = _sSo6FPItemCSgs5Error_pSgIggg_So10NSProgressCSgIeggo_AcEIeggg_AHIeggo_TRTA_0;
    v253 = v175;
    aBlock = MEMORY[0x277D85DD0];
    v249 = 1107296256;
    v250 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed FPItem?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
    v251 = &block_descriptor_72_0;
    v176 = _Block_copy(&aBlock);
    v177 = v167;
    v178 = v161;

    [v166 registerFileProviderItemForTypeIdentifier:v173 visibility:0 loadHandler:v176];
    _Block_release(v176);
  }

  outlined destroy of DOCDragPasteboardType(v45, type metadata accessor for DOCDragPasteboardType);
}

id specialized static FINodeEntity.configuration(from:)(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v17[1] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      outlined init with copy of FINodeEntity(v8, v6);
      v10 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
      v11 = *&v6[*(v2 + 32)];
      v12 = swift_unknownObjectRetain();
      specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v12, 2u, 1, 0, v10);

      outlined destroy of DOCDragPasteboardType(v6, type metadata accessor for FINodeEntity);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  v13 = objc_allocWithZone(MEMORY[0x277D750F0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider, 0x277CCAA88);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithItemProviders_];

  return v15;
}

uint64_t partial apply for closure #1 in static FINodeEntity.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in static FINodeEntity.transferRepresentation.getter(a1, a2);
}

unint64_t lazy protocol witness table accessor for type FINodeEntityQuery and conformance FINodeEntityQuery()
{
  result = lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery;
  if (!lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery;
  if (!lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery;
  if (!lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery;
  if (!lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FINodeEntityQuery and conformance FINodeEntityQuery);
  }

  return result;
}

void type metadata completion function for FINodeEntity(uint64_t a1)
{
  type metadata accessor for FileEntityIdentifier();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EntityProperty<Date?>(319, &lazy cache variable for type metadata for EntityProperty<Date?>, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR, lazy protocol witness table accessor for type Date? and conformance <A> A?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EntityProperty<Date?>(319, &lazy cache variable for type metadata for EntityProperty<String?>, &_sSSSgMd, &_sSSSgMR, lazy protocol witness table accessor for type String? and conformance <A> A?);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CBA4E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for EntityProperty<Date?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t closure #1 in static FINodeEntity.transferRepresentation.getterpartial apply(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in static FINodeEntity.transferRepresentation.getter(a1, a2);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in static FINodeEntity.transferRepresentation.getter(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd, &_sScCySo6FPItemCs5Error_pGMR);

  return closure #1 in closure #1 in closure #2 in static FINodeEntity.transferRepresentation.getter(a1, a2);
}

unint64_t lazy protocol witness table accessor for type NSItemProvider and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSItemProvider and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSItemProvider and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSItemProvider, 0x277CCAA88);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSItemProvider and conformance NSObject);
  }

  return result;
}

uint64_t outlined destroy of DOCDragPasteboardType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id DOCLegacyWebDAVProviderSource.WebDAVService.Version.interface.getter(char a1)
{
  v1 = &protocolRef__TtP26DocumentManagerExecutables36DOC_com_apple_iwork_disconnecting_v2_;
  if ((a1 & 1) == 0)
  {
    v1 = &protocolRef__TtP26DocumentManagerExecutables33DOC_com_apple_iwork_disconnecting_;
  }

  v2 = [objc_opt_self() interfaceWithProtocol_];

  return v2;
}

Swift::Int DOCLegacyWebDAVProviderSource.WebDAVService.Version.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t DOCLegacyWebDAVProviderSource.__allocating_init(_:)(uint64_t a1)
{
  v3 = [objc_opt_self() defaultManager];
  v4 = [objc_opt_self() defaultManager];
  v5 = *(v1 + 720);

  return v5(a1, v3, v4);
}

void *DOCLegacyWebDAVProviderSource.init(_:itemManager:fileManager:)(void *a1, void *a2, void *a3)
{
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_itemManager) = a2;
  v6 = a2;
  v7 = [v6 rootCollectionForProviderDomain_];
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_rootItemCollection) = v7;
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_fileManager) = a3;
  v8 = a3;
  v9 = a1;
  v10 = DOCFileProviderSource.init(_:)(v9);
  *(swift_allocObject() + 16) = v10;
  v11 = v10;
  DOCRunInMainThread(_:)();

  return v11;
}

void DOCLegacyWebDAVProviderSource.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_fileManager);
}

id DOCLegacyWebDAVProviderSource.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_rootItemCollection];
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  DOCRunInMainThread(_:)();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCLegacyWebDAVProviderSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall DOCLegacyWebDAVProviderSource.refreshEjectState()()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  DOCRunInMainThread(_:)();
}

id closure #1 in DOCLegacyWebDAVProviderSource.refreshEjectState()(uint64_t a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "WebDAV refresh the eject state", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_rootItemCollection);
  [v6 doc_stopObserving];

  return [v6 doc_startObserving];
}

void DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (v4)
  {
    v8 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_itemManager];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = a2;
    *(v9 + 32) = a3;
    *(v9 + 40) = a1 & 1;
    v12[4] = partial apply for closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:);
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    v12[3] = &block_descriptor_135;
    v10 = _Block_copy(v12);
    v11 = v3;

    [v8 doc:v4 fetchRootNodeForProviderDomain:v10 completionHandler:?];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(uint64_t a1, uint64_t a2, char *a3, void (*a4)(void, uint64_t, __n128), uint64_t a5, char a6)
{
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = static DOCLog.UI;
    v11 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249B9FA70;
    v13 = [a3 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v17 = _convertErrorToNSError(_:)();
    *(v12 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v12 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v12 + 72) = v17;
    os_log(_:dso:log:type:_:)("Error when trying to get the root node for the provider %@ error %@", 67, 2, &dword_2493AC000, v10, v11, v12);

    v18 = a2;
  }

  else
  {
    if (a1)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = a1;
      v22 = DOCNode.fpfs_syncFetchFPItem()();
      if (v22)
      {
        v23 = v22;
        v24 = *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_itemManager];
        v25 = swift_allocObject();
        *(v25 + 16) = v21;
        *(v25 + 24) = a4;
        *(v25 + 32) = a5;
        *(v25 + 40) = a3;
        *(v25 + 48) = a6 & 1;
        v35[4] = partial apply for closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:);
        v35[5] = v25;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 1107296256;
        v35[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
        v35[3] = &block_descriptor_55_6;
        v26 = _Block_copy(v35);
        swift_unknownObjectRetain();

        v27 = a3;

        [v24 fetchURLForItem:v23 completionHandler:v26];
        _Block_release(v26);
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v28 = static DOCLog.UI;
    v29 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_249B9A480;
    v31 = [a3 identifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    os_log(_:dso:log:type:_:)("Error when trying to get the root node for the provider %@", 58, 2, &dword_2493AC000, v28, v29, v30);

    v18 = 0;
  }

  (a4)(0, v18);
}

uint64_t closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void, uint64_t, __n128), uint64_t a5, char *a6, int a7)
{
  v64 = a6;
  v65 = a4;
  v66 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v57[-v13];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v19 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v57[-v22];
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v24 = static DOCLog.UI;
    v25 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_249B9FA70;
    v27 = [a3 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    v31 = _convertErrorToNSError(_:)();
    *(v26 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v26 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v26 + 72) = v31;
    os_log(_:dso:log:type:_:)("Error when trying to get fetch the url for node %@ error %@", 59, 2, &dword_2493AC000, v24, v25, v26);

    v32 = a2;
    return (v65)(0, v32);
  }

  v63 = a7;
  outlined init with copy of URL?(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of URL?(v14);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v33 = static DOCLog.UI;
    v34 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249B9A480;
    v36 = [a3 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v35 + 32) = v37;
    *(v35 + 40) = v39;
    os_log(_:dso:log:type:_:)("Error when trying to get fetch the url for node %@", 50, 2, &dword_2493AC000, v33, v34, v35);

    v32 = 0;
    return (v65)(0, v32);
  }

  v61 = *(v16 + 32);
  v62 = v16 + 32;
  v61(v23, v14, v15);
  v41 = URL.startAccessingSecurityScopedResource()();
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v60 = static DOCLog.UI;
  LODWORD(v59) = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_249B9FA70;
  URL._bridgeToObjectiveC()(&unk_249B9F000);
  v44 = v43;
  *(v42 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
  *(v42 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
  *(v42 + 32) = v44;
  v45 = MEMORY[0x277D839F0];
  *(v42 + 96) = MEMORY[0x277D839B0];
  *(v42 + 104) = v45;
  v58 = v41;
  *(v42 + 72) = v41;
  os_log(_:dso:log:type:_:)("Start accessing the url %@ accessing %d", 39, 2, &dword_2493AC000, v60, v59, v42);

  v46 = v64;
  v60 = *&v64[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_fileManager];
  URL._bridgeToObjectiveC()(v60);
  v59 = v47;
  (*(v16 + 16))(v19, v23, v15);
  v48 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v49 = v48 + v17;
  v50 = swift_allocObject();
  v61((v50 + v48), v19, v15);
  *(v50 + v49) = v58;
  v51 = v50 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v52 = v66;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  v53 = v50 + (((v49 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v53 = v46;
  *(v53 + 8) = v63 & 1;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:);
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSFileProviderServiceName : NSFileProviderService]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_61_2;
  v54 = _Block_copy(aBlock);

  v55 = v46;

  v56 = v59;
  [(NSURL *)v60 getFileProviderServicesForItemAtURL:v59 completionHandler:v54];
  _Block_release(v54);

  return (*(v16 + 8))(v23, v15);
}

void closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void, uint64_t, __n128), uint64_t a6, void *a7, char a8)
{
  v54 = a5;
  v53 = a4;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v20 = static DOCLog.UI;
    v21 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_249B9FA70;
    URL._bridgeToObjectiveC()(&unk_249B9F000);
    v24 = v23;
    *(v22 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
    *(v22 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
    *(v22 + 32) = v24;
    v25 = _convertErrorToNSError(_:)();
    *(v22 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v22 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v22 + 72) = v25;
    os_log(_:dso:log:type:_:)("Error when trying to get the services for the url %@ error %@", 61, 2, &dword_2493AC000, v20, v21, v22);

    if (v53)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v26 = a2;
  }

  else
  {
    if (a1)
    {
      v27 = v18;
      v28 = specialized static DOCLegacyWebDAVProviderSource.WebDAVService.webDAVService(from:)(a1);
      if (v29)
      {
        v30 = v29;
        v31 = *(v15 + 16);
        v51 = v28;
        v31(&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v27);
        v32 = (*(v15 + 80) + 33) & ~*(v15 + 80);
        v52 = a6;
        v33 = (v16 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
        v34 = swift_allocObject();
        *(v34 + 16) = v51 & 1;
        *(v34 + 24) = v30;
        *(v34 + 32) = v53 & 1;
        (*(v15 + 32))(v34 + v32, v19, v27);
        v35 = (v34 + v33);
        v36 = v52;
        *v35 = v54;
        v35[1] = v36;
        v37 = v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v37 = a7;
        *(v37 + 8) = a8 & 1;
        aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:);
        aBlock[5] = v34;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_67;
        v38 = _Block_copy(aBlock);
        v39 = v30;

        v40 = a7;

        [v39 getFileProviderConnectionWithCompletionHandler_];
        _Block_release(v38);

        return;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v46 = static DOCLog.UI;
      v47 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_249B9A480;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v50 = v49;
      *(v48 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
      *(v48 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
      *(v48 + 32) = v50;
      os_log(_:dso:log:type:_:)("Error when trying to get the webDAV disconnection service for the url %@", 72, 2, &dword_2493AC000, v46, v47, v48);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v41 = static DOCLog.UI;
      v42 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_249B9A480;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v45 = v44;
      *(v43 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
      *(v43 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
      *(v43 + 32) = v45;
      os_log(_:dso:log:type:_:)("Error when trying to the services for the url %@", 48, 2, &dword_2493AC000, v41, v42, v43);
    }

    if (v53)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v26 = 0;
  }

  (v54)(0, v26);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(void *a1, uint64_t a2, char a3, void *a4, char a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, __n128), uint64_t a8, void *a9, char a10)
{
  v75 = a6;
  v76 = a7;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v20 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v21 = static DOCLog.UI;
    v22 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_249B9FA70;
    *(v23 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSFileProviderService, 0x277CCAA10);
    *(v23 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSFileProviderService and conformance NSObject, &lazy cache variable for type metadata for NSFileProviderService, 0x277CCAA10);
    *(v23 + 32) = a4;
    v24 = a4;
    v25 = _convertErrorToNSError(_:)();
    *(v23 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v23 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v23 + 72) = v25;
    os_log(_:dso:log:type:_:)("Error when trying to get the fileProviderConnection for the service %@ error %@", 79, 2, &dword_2493AC000, v21, v22, v23);

    v26 = v76;
    if (a5)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v27 = a2;
    return v26(0, v27);
  }

  if (!a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v52 = static DOCLog.UI;
    v53 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_249B9A480;
    *(v54 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSFileProviderService, 0x277CCAA10);
    *(v54 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSFileProviderService and conformance NSObject, &lazy cache variable for type metadata for NSFileProviderService, 0x277CCAA10);
    *(v54 + 32) = a4;
    v55 = a4;
    os_log(_:dso:log:type:_:)("Error when trying to get the fileProviderConnection for the service %@", 70, 2, &dword_2493AC000, v52, v53, v54);

    v26 = v76;
    if (a5)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v27 = 0;
    return v26(0, v27);
  }

  v29 = a8;
  v74 = a9;
  v30 = &protocolRef__TtP26DocumentManagerExecutables33DOC_com_apple_iwork_disconnecting_;
  v67 = a3 & 1;
  if (a3)
  {
    v30 = &protocolRef__TtP26DocumentManagerExecutables36DOC_com_apple_iwork_disconnecting_v2_;
  }

  v31 = *v30;
  v32 = objc_opt_self();
  v33 = a1;
  v34 = [v32 interfaceWithProtocol_];
  [v33 setRemoteObjectInterface_];

  v68 = *(v17 + 16);
  v65 = v17 + 16;
  v68(&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v75, v16);
  v35 = (*(v17 + 80) + 25) & ~*(v17 + 80);
  v36 = (v18 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = *(v17 + 80);
  v37 = swift_allocObject();
  v38 = v74;
  *(v37 + 16) = v74;
  v39 = a5 & 1;
  *(v37 + 24) = v39;
  v70 = *(v17 + 32);
  v71 = v35;
  v70(v37 + v35, v20, v16);
  v66 = v36;
  v40 = (v37 + v36);
  *v40 = v76;
  v40[1] = v29;
  v82 = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:);
  v83 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v79 = 1107296256;
  v80 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v81 = &block_descriptor_73_0;
  v41 = _Block_copy(&aBlock);
  v72 = v38;
  v73 = v29;

  v42 = [v33 remoteObjectProxyWithErrorHandler_];
  _Block_release(v41);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v74 = v33;
  [v33 resume];
  if (v67)
  {
    outlined init with copy of Any(v84, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables36DOC_com_apple_iwork_disconnecting_v2_pMd, &_s26DocumentManagerExecutables36DOC_com_apple_iwork_disconnecting_v2_pMR);
    swift_dynamicCast();
    v43 = v77;
    v68(v20, v75, v16);
    v44 = v66;
    v45 = swift_allocObject();
    v46 = v71;
    v47 = v72;
    *(v45 + 16) = v72;
    *(v45 + 24) = v39;
    v70(v45 + v46, v20, v16);
    v48 = (v45 + v44);
    v49 = v73;
    *v48 = v76;
    v48[1] = v49;
    v82 = partial apply for closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:);
    v83 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v79 = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v81 = &block_descriptor_79_1;
    v50 = _Block_copy(&aBlock);
    v51 = v47;

    [v43 disconnect:a10 & 1 withCompletion:v50];

    _Block_release(v50);
    swift_unknownObjectRelease();
  }

  else
  {
    outlined init with copy of Any(v84, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables33DOC_com_apple_iwork_disconnecting_pMd, &_s26DocumentManagerExecutables33DOC_com_apple_iwork_disconnecting_pMR);
    swift_dynamicCast();
    v56 = v77;
    v68(v20, v75, v16);
    v57 = v66;
    v58 = swift_allocObject();
    v59 = v71;
    v60 = v72;
    *(v58 + 16) = v72;
    *(v58 + 24) = v39;
    v70(v58 + v59, v20, v16);
    v61 = (v58 + v57);
    v62 = v73;
    *v61 = v76;
    v61[1] = v62;
    v82 = partial apply for closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:);
    v83 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v79 = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v81 = &block_descriptor_85_2;
    v63 = _Block_copy(&aBlock);
    v64 = v60;

    [v56 disconnectWithCompletion_];
    _Block_release(v63);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v84);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, __n128))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = static DOCLog.UI;
  v10 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9FA70;
  v12 = [a2 identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v16 = _convertErrorToNSError(_:)();
  *(v11 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  *(v11 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  *(v11 + 72) = v16;
  os_log(_:dso:log:type:_:)("Error when communicating with the provider %@,when trying to eject it", 69, 2, &dword_2493AC000, v9, v10, v11);

  if (a3)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  return (a5)(0, a1);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(id a1, void *a2, char a3, uint64_t a4, uint64_t (*a5)(void, id), uint64_t a6, char a7)
{
  v8 = a5;
  if (a1)
  {
    v12 = a1;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = static DOCLog.UI;
    v14 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249B9FA70;
    v16 = [a2 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    v20 = _convertErrorToNSError(_:)();
    *(v15 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v15 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v15 + 72) = v20;
    os_log(_:dso:log:type:_:)("Error when trying to eject the provider %@ error %@", 51, 2, &dword_2493AC000, v13, v14, v15);

    if (a3)
    {
LABEL_5:
      URL.stopAccessingSecurityScopedResource()();
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = static DOCLog.UI;
    v23 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249B9A480;
    v25 = [a2 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    os_log(_:dso:log:type:_:)("WebDAV provider %@ successfully disconnected", 44, 2, &dword_2493AC000, v22, v23, v24);

    (*((*MEMORY[0x277D85000] & *a2) + 0x290))(v29);
    v8 = a5;
    if (a3)
    {
      goto LABEL_5;
    }
  }

  return v8(a7 & 1, a1);
}

Swift::Void __swiftcall DOCLegacyWebDAVProviderSource.eject(alertPresenting:)(UIViewController *alertPresenting)
{
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = swift_allocObject();
  v7[2] = alertPresenting;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v1;
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x2D8);
  v9 = alertPresenting;
  v10 = v1;
  v8(0, partial apply for closure #1 in DOCLegacyWebDAVProviderSource.eject(alertPresenting:), v7);
}

void closure #1 in DOCLegacyWebDAVProviderSource.eject(alertPresenting:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v10 = a1;
    v11 = a2;
    if (v10)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.UI);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2493AC000, v13, v14, "Presenting an alert to the user to be able to force the eject", v15, 2u);
        MEMORY[0x24C1FE850](v15, -1, -1);
      }

      v16 = _convertErrorToNSError(_:)();
      v17 = _DocumentManagerBundle();
      if (v17)
      {
        v18 = v17;
        v38._object = 0x8000000249BF5820;
        v19._countAndFlagsBits = 0x74754F206E676953;
        v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v20.value._object = 0xEB00000000656C62;
        v19._object = 0xE90000000000003FLL;
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        v38._countAndFlagsBits = 0xD00000000000006ALL;
        v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v38);

        v23 = MEMORY[0x24C1FAD20](v22._countAndFlagsBits, v22._object);

        v24 = _convertErrorToNSError(_:)();
        v25 = [v24 localizedRecoverySuggestion];

        v26 = swift_allocObject();
        v26[2] = a4;
        v26[3] = a5;
        v26[4] = a6;
        aBlock[4] = partial apply for closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(alertPresenting:);
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_46_4;
        v27 = _Block_copy(aBlock);

        v28 = a6;

        DOCPresentAlertForErrorWithForceHandler();

        _Block_release(v27);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.UI);
      oslog = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_2493AC000, oslog, v33, "We cannot force eject", v34, 2u);
        MEMORY[0x24C1FE850](v34, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v29 = static DOCLog.UI;
    v30 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_249B9A480;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 32) = a4;
    *(v31 + 40) = a5;

    os_log(_:dso:log:type:_:)("Source %@ successfully ejected", 30, 2, &dword_2493AC000, v29, v30, v31);
  }
}

double closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(alertPresenting:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = static DOCLog.UI;
  v7 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9A480;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  os_log(_:dso:log:type:_:)("Trying to eject source %@ again. But this time with the force flag.", 67, 2, &dword_2493AC000, v6, v7, v8);

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x2D8);

  v10(1, partial apply for closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(alertPresenting:), v9);

  return result;
}

double closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = static DOCLog.UI;
    v7 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249B9A480;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = a3;
    *(v8 + 40) = a4;

    os_log(_:dso:log:type:_:)("error trying to force eject the source %@", 41, 2, &dword_2493AC000, v6, v7, v8);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = static DOCLog.UI;
    v10 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249B9A480;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;

    os_log(_:dso:log:type:_:)("Source %@ successfully ejected", 30, 2, &dword_2493AC000, v9, v10, v11);
  }

  return result;
}

uint64_t specialized static DOCLegacyWebDAVProviderSource.WebDAVService.webDAVService(from:)(uint64_t a1)
{
  v2 = MEMORY[0x24C1FAD20](0xD000000000000020, 0x8000000249BF56D0);
  v3 = v2;
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    *(*(a1 + 56) + 8 * v4);

    return 1;
  }

  else
  {

    v7 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BF5700);
    v8 = v7;
    if (*(a1 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v10 & 1) != 0))
    {
      *(*(a1 + 56) + 8 * v9);

      return 0;
    }

    else
    {

      return 0;
    }
  }
}

id partial apply for closure #1 in DOCLegacyWebDAVProviderSource.init(_:itemManager:fileManager:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_rootItemCollection);
  [v1 setDelegate_];

  return [v1 doc_startObserving];
}

id specialized DOCLegacyWebDAVProviderSource.data(forCollectionShouldBeReloaded:)(const char *a1)
{
  v3 = v1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2493AC000, v5, v6, a1, v7, 2u);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  result = [v3 isEjectable];
  if ((result & 1) == 0)
  {

    return [v3 setIsEjectable_];
  }

  return result;
}

id specialized DOCLegacyWebDAVProviderSource.collection(_:didEncounterError:)(uint64_t a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = static DOCLog.UI;
  v3 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249B9A480;
  v5 = _convertErrorToNSError(_:)();
  *(v4 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  *(v4 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  *(v4 + 32) = v5;
  os_log(_:dso:log:type:_:)("WebDAV collection did encounter error %@. Setting is ejectable to false", 71, 2, &dword_2493AC000, v2, v3, v4);

  result = [v1 isEjectable];
  if (result)
  {

    return [v1 setIsEjectable_];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCLegacyWebDAVProviderSource.WebDAVService.Version and conformance DOCLegacyWebDAVProviderSource.WebDAVService.Version()
{
  result = lazy protocol witness table cache variable for type DOCLegacyWebDAVProviderSource.WebDAVService.Version and conformance DOCLegacyWebDAVProviderSource.WebDAVService.Version;
  if (!lazy protocol witness table cache variable for type DOCLegacyWebDAVProviderSource.WebDAVService.Version and conformance DOCLegacyWebDAVProviderSource.WebDAVService.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCLegacyWebDAVProviderSource.WebDAVService.Version and conformance DOCLegacyWebDAVProviderSource.WebDAVService.Version);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = v2 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + v8);
  v14 = *(v2 + v8 + 8);

  closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(a1, a2, v2 + v6, v9, v11, v12, v13, v14);
}

unint64_t lazy protocol witness table accessor for type NSFileProviderServiceName and conformance NSFileProviderServiceName()
{
  result = lazy protocol witness table cache variable for type NSFileProviderServiceName and conformance NSFileProviderServiceName;
  if (!lazy protocol witness table cache variable for type NSFileProviderServiceName and conformance NSFileProviderServiceName)
  {
    type metadata accessor for NSFileProviderServiceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileProviderServiceName and conformance NSFileProviderServiceName);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(a1, v5, v6, v1 + v4, v7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(void *a1, char a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in DOCLegacyWebDAVProviderSource.eject(shouldForce:completion:)(a1, *(v2 + 16), *(v2 + 24), v2 + v6, *v7, *(v7 + 8), a2);
}

uint64_t objectdestroy_69Tm_0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

id static DOCContentUnavailableConfiguration.configuration(for:in:template:)(id result, void *a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    if ((DOCConcreteLocation.isRootContentBrowsingLocation.getter() & 1) != 0 && a2)
    {
      v5 = a2;
      v6 = specialized DOCContentUnavailableConfiguration.configuredForRootContainer(in:)(v5);
    }

    else
    {
      v6 = DOCConcreteLocation.contentUnavailableConfiguration(withTemplate:)();
    }

    return v6;
  }

  return result;
}

id static DOCContentUnavailableConfiguration.configurationForProtectedLocation(template:)()
{
  v0 = specialized DOCContentUnavailableConfiguration.configuredForProtectedLocation.getter();
  v1 = v0;
  return v0;
}

DOCContentUnavailableConfiguration __swiftcall DOCContentUnavailableConfiguration.updateForDisplayingErrors(title:description:withRetryAction:)(Swift::String title, Swift::String_optional description, UIAction_optional *withRetryAction)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  v6 = MEMORY[0x24C1FAD20](title._countAndFlagsBits, title._object);
  [v14 setText_];

  if (object)
  {
    v7 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);
    [v14 setSecondaryText_];
  }

  if (withRetryAction)
  {
    v8 = withRetryAction;
    v9 = [v14 buttonProperties];
    [v9 configurePlain];

    v10 = [v14 buttonProperties];
    [v10 setPrimaryAction_];
  }

  v11 = v14;
  result.super._impl = v12;
  result.super.super.isa = v11;
  return result;
}

uint64_t DOCConcreteLocation.isRootContentBrowsingLocation.getter()
{
  if (![v0 isRoot])
  {
    v10 = 0;
    goto LABEL_17;
  }

  v1 = [v0 fileProviderItem];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 providerID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {

LABEL_9:
      v10 = 1;
      goto LABEL_17;
    }
  }

  v11 = [v2 itemID];
  v12 = [v11 domainIdentifier];

  v13 = [v2 parentItemID];
  v14 = [v13 domainIdentifier];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BB2890;
  v20 = *MEMORY[0x277D060F8];
  *(inited + 32) = *MEMORY[0x277D060F8];
  v21 = *MEMORY[0x277D05DB8];
  v22 = *MEMORY[0x277D05DC0];
  *(inited + 40) = *MEMORY[0x277D05DB8];
  *(inited + 48) = v22;
  v23 = *MEMORY[0x277D05DC8];
  v24 = *MEMORY[0x277D06108];
  *(inited + 56) = *MEMORY[0x277D05DC8];
  *(inited + 64) = v24;
  v25 = *MEMORY[0x277D05DD0];
  *(inited + 72) = *MEMORY[0x277D05DD0];
  v26 = v20;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v32 = [v0 sourceIdentifier];
  v36 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v35[2] = &v36;
  LODWORD(v21) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v35, inited);
  swift_setDeallocating();
  type metadata accessor for DOCDocumentSourceIdentifier(0);
  swift_arrayDestroy();

  return v10 & ~v21 & 1;
}

id DOCConcreteLocation.contentUnavailableConfiguration(withTemplate:)()
{
  v1 = [v0 fileProviderItem];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 folderType];

    if (v3 == 4)
    {
      v4 = specialized DOCContentUnavailableConfiguration.configuredForDownloadedItems.getter();
      goto LABEL_16;
    }
  }

  v5 = [v0 representedTag];
  if (!v5)
  {
    v8 = [v0 sourceIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v15 = [v0 sourceIdentifier];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

          v4 = specialized DOCContentUnavailableConfiguration.configuredForSharedItems.getter();
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            v23 = [v0 sourceIdentifier];
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;
            if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
            {
            }

            else
            {
              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v28 & 1) == 0)
              {
                v29 = [v0 sourceIdentifier];
                v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v32 = v31;
                if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
                {

                  return 0;
                }

                v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v34)
                {
                  return 0;
                }

                v4 = specialized DOCContentUnavailableConfiguration.configuredForGenericFolder.getter();
                goto LABEL_16;
              }
            }

            return [objc_opt_self() searchConfiguration];
          }

          v4 = specialized DOCContentUnavailableConfiguration.configuredForSharedItems.getter();
        }

LABEL_16:
        v7 = v4;
        v20 = v4;
        return v7;
      }
    }

    v4 = specialized DOCContentUnavailableConfiguration.configuredForRecentItems.getter();
    goto LABEL_16;
  }

  v6 = v5;
  v7 = specialized DOCContentUnavailableConfiguration.configuredForTaggedItems(forTag:)(v5);

  return v7;
}

id specialized DOCContentUnavailableConfiguration.configuredForRootContainer(in:)(void *a1)
{
  v3 = [a1 iconPreferingSymbolImages];
  [v1 setImage_];

  result = _DocumentManagerBundle();
  if (result)
  {
    v5 = result;
    v19._object = 0x8000000249BF5DF0;
    v6._countAndFlagsBits = 0x6D45207369204025;
    v6._object = 0xEB00000000797470;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0xD000000000000048;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249B9A480;
    v10 = [a1 providerName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    v14 = static String.localizedStringWithFormat(_:_:)();
    v16 = v15;

    v17 = MEMORY[0x24C1FAD20](v14, v16);

    [v1 setText_];

    v18 = [a1 domainName];
    [v1 setSecondaryText_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized DOCContentUnavailableConfiguration.configuredForDownloadedItems.getter()
{
  v1 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BC5EA0);
  v2 = [objc_opt_self() systemImageNamed_];

  [v0 setImage_];
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v16._object = 0x8000000249BF5E60;
    v5._countAndFlagsBits = 0xD000000000000013;
    v5._object = 0x8000000249BF5E40;
    v16._countAndFlagsBits = 0xD000000000000040;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v16);

    v9 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

    [v0 setText_];

    result = _DocumentManagerBundle();
    if (result)
    {
      v10 = result;
      v17._object = 0x8000000249BF5EE0;
      v11._countAndFlagsBits = 0xD000000000000024;
      v11._object = 0x8000000249BF5EB0;
      v17._countAndFlagsBits = 0xD000000000000046;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

      v15 = MEMORY[0x24C1FAD20](v14._countAndFlagsBits, v14._object);

      [v0 setSecondaryText_];

      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id specialized DOCContentUnavailableConfiguration.configuredForTaggedItems(forTag:)(void *a1)
{
  v3 = MEMORY[0x24C1FAD20](0xD000000000000012, 0x8000000249BF5F30);
  v4 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
  result = _DocumentManagerBundle();
  if (result)
  {
    v6 = result;
    v25._object = 0x8000000249BF5F50;
    v7._countAndFlagsBits = 0x6567676154206F4ELL;
    v7._object = 0xEF73656C69462064;
    v25._countAndFlagsBits = 0xD00000000000003ALL;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v25);

    v11 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    [v1 setText_];

    result = _DocumentManagerBundle();
    if (result)
    {
      v12 = result;
      v26._object = 0x8000000249BF5FC0;
      v13._object = 0x8000000249BF5F90;
      v26._countAndFlagsBits = 0xD000000000000040;
      v13._countAndFlagsBits = 0x100000000000002ALL;
      v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v14.value._object = 0xEB00000000656C62;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v26);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_249B9A480;
      v17 = [a1 displayName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      *(v16 + 56) = MEMORY[0x277D837D0];
      *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      v21 = static String.localizedStringWithFormat(_:_:)();
      v23 = v22;

      v24 = MEMORY[0x24C1FAD20](v21, v23);

      [v1 setSecondaryText_];

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id specialized DOCContentUnavailableConfiguration.configuredForRecentItems.getter()
{
  v1 = MEMORY[0x24C1FAD20](0x69662E6B636F6C63, 0xEA00000000006C6CLL);
  v2 = [objc_opt_self() systemImageNamed_];

  [v0 setImage_];
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v16._object = 0x8000000249BF6010;
    v5._countAndFlagsBits = 0x6E65636552206F4ELL;
    v5._object = 0xEA00000000007374;
    v16._countAndFlagsBits = 0xD000000000000031;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v16);

    v9 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

    [v0 setText_];

    result = _DocumentManagerBundle();
    if (result)
    {
      v10 = result;
      v17._object = 0x8000000249BF6080;
      v11._object = 0x8000000249BF6050;
      v17._countAndFlagsBits = 0xD000000000000037;
      v11._countAndFlagsBits = 0xD00000000000002BLL;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

      v15 = MEMORY[0x24C1FAD20](v14._countAndFlagsBits, v14._object);

      [v0 setSecondaryText_];

      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id specialized DOCContentUnavailableConfiguration.configuredForSharedItems.getter()
{
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BE1B30);
  v2 = [objc_opt_self() systemImageNamed_];

  [v0 setImage_];
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v16._object = 0x8000000249BF60C0;
    v5._countAndFlagsBits = 0x6572616853206F4ELL;
    v5._object = 0xEF73656C69462064;
    v16._countAndFlagsBits = 0xD00000000000003CLL;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v16);

    v9 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

    [v0 setText_];

    result = _DocumentManagerBundle();
    if (result)
    {
      v10 = result;
      v17._object = 0x8000000249BF6120;
      v11._countAndFlagsBits = 0xD00000000000001ELL;
      v11._object = 0x8000000249BF6100;
      v17._countAndFlagsBits = 0xD000000000000042;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

      v15 = MEMORY[0x24C1FAD20](v14._countAndFlagsBits, v14._object);

      [v0 setSecondaryText_];

      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id specialized DOCContentUnavailableConfiguration.configuredForGenericFolder.getter()
{
  v1 = MEMORY[0x24C1FAD20](0x662E7265646C6F66, 0xEB000000006C6C69);
  v2 = [objc_opt_self() systemImageNamed_];

  [v0 setImage_];
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v10._object = 0x8000000249BF6170;
    v5._countAndFlagsBits = 0x69207265646C6F46;
    v5._object = 0xEF7974706D452073;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0xD000000000000034;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v10);

    v9 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

    [v0 setText_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized DOCContentUnavailableConfiguration.configuredForProtectedLocation.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  UIDevice.doc_preferredAuthenticationMechanism.getter(&v24);

  v3 = v24;
  if (v24 - 2 >= 3)
  {
    if (v24)
    {
      result = _DocumentManagerBundle();
      if (!result)
      {
        goto LABEL_10;
      }

      v7 = result;
      v25._object = 0x8000000249BF5DC0;
      v8._countAndFlagsBits = 0x4025207265746E45;
      v8._object = 0xE800000000000000;
      v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v9.value._object = 0xEB00000000656C62;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0xD00000000000002CLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_249B9A480;
      v12 = DOCAuthenticationMechanism.localizedDescription.getter(v11);
      v14 = v13;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      v15 = static String.localizedStringWithFormat(_:_:)();
      v5 = v16;

      v3 = v15;
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  else
  {
    v3 = DOCAuthenticationMechanism.localizedDescription.getter(v24);
    v5 = v4;
  }

  v17 = MEMORY[0x24C1FAD20](v3, v5);

  [v1 setText_];

  result = _DocumentManagerBundle();
  if (result)
  {
    v18 = result;
    v26._object = 0x8000000249BF5D30;
    v19._countAndFlagsBits = 0x20776F6873206F74;
    v19._object = 0xEE007265646C6F66;
    v26._countAndFlagsBits = 0xD000000000000089;
    v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v20.value._object = 0xEB00000000656C62;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v26);

    v23 = MEMORY[0x24C1FAD20](v22._countAndFlagsBits, v22._object);

    [v1 setSecondaryText_];

    return v1;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

id DOCNodeStatusAppearance.image(with:)(uint64_t a1, char a2)
{
  v3 = 0;
  v4 = *v2;
  if (v4 > 4)
  {
    goto LABEL_14;
  }

  if (*v2 <= 1u)
  {
    v13 = 0xE700000000000000;
    v14 = 0x6567617373656DLL;
    v16 = 0x8000000249BF6270;
    v15 = 0xD000000000000015;
    v17 = v4 == 0;
    goto LABEL_19;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x732E64756F6C6369;
    }

    if (v4 == 3)
    {
      v6 = 0x8000000249BF6250;
    }

    else
    {
      v6 = 0xEC0000006873616CLL;
    }

    if (a2)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v7 = *&a1;
      v8 = [objc_opt_self() configurationWithPointSize_];
      v9 = MEMORY[0x24C1FAD20](v5, v6);
      v3 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

      if (v3)
      {
LABEL_27:

        return v3;
      }

      v10 = [objc_opt_self() configurationWithPointSize_];
      v11 = objc_opt_self();
      v12 = MEMORY[0x24C1FAD20](v5, v6);
      v3 = [v11 _systemImageNamed_withConfiguration_];

      if (v3)
      {
        break;
      }

      while (1)
      {
        _StringGuts.grow(_:)(29);

        MEMORY[0x24C1FAEA0](v5, v6);
        a1 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_14:
        if (v4 <= 6)
        {
          v13 = 0xED00006465687361;
          v14 = 0x642E64756F6C6369;
          v16 = 0x8000000249BF6230;
          v15 = 0xD000000000000012;
          v17 = v4 == 5;
        }

        else
        {
          if (v4 == 7)
          {
            return v3;
          }

          v13 = 0xE800000000000000;
          v14 = 0x65706F6C65766E65;
          v15 = 0xD000000000000016;
          v16 = 0x8000000249BF61B0;
          v17 = v4 == 8;
        }

LABEL_19:
        v5 = v17 ? v14 : v15;
        v6 = v17 ? v13 : v16;
        if ((a2 & 1) == 0)
        {
          break;
        }

LABEL_26:
        v18 = MEMORY[0x24C1FAD20](v5, v6);
        v3 = [objc_opt_self() systemImageNamed_];

        if (v3)
        {
          goto LABEL_27;
        }

        v19 = objc_opt_self();
        v20 = MEMORY[0x24C1FAD20](v5, v6);
        v3 = [v19 _systemImageNamed_withConfiguration_];

        if (v3)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_29:
  }

  return v3;
}

NSTextAttachment_optional __swiftcall DOCNodeStatusAppearance.imageTextAttachment(with:)(UIFont with)
{
  v2 = 0;
  v3 = *v1;
  if (v3 > 4)
  {
    if (*v1 <= 6u)
    {
      isa = with.super.isa;
      v6 = 0xED00006465687361;
      v7 = 0x642E64756F6C6369;
      v9 = 0x8000000249BF6230;
      v8 = 0xD000000000000012;
      v10 = v3 == 5;
    }

    else
    {
      if (v3 == 7)
      {
        goto LABEL_26;
      }

      isa = with.super.isa;
      v6 = 0xE800000000000000;
      v7 = 0x65706F6C65766E65;
      v8 = 0xD000000000000016;
      v9 = 0x8000000249BF61B0;
      v10 = v3 == 8;
    }

    goto LABEL_15;
  }

  if (*v1 <= 1u)
  {
    isa = with.super.isa;
    v6 = 0xE700000000000000;
    v7 = 0x6567617373656DLL;
    v9 = 0x8000000249BF6270;
    v8 = 0xD000000000000015;
    v10 = v3 == 0;
LABEL_15:
    if (v10)
    {
      v4 = v7;
    }

    else
    {
      v4 = v8;
    }

    if (v10)
    {
      v5 = v6;
    }

    else
    {
      v5 = v9;
    }

    goto LABEL_21;
  }

  if (v3 == 2)
  {
    goto LABEL_26;
  }

  isa = with.super.isa;
  if (v3 == 3)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x732E64756F6C6369;
  }

  if (v3 == 3)
  {
    v5 = 0x8000000249BF6250;
  }

  else
  {
    v5 = 0xEC0000006873616CLL;
  }

LABEL_21:
  v2 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  v11 = MEMORY[0x24C1FAD20](v4, v5);
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed_];

  if (!v13 || (v14 = [objc_opt_self() secondaryLabelColor], v15 = objc_msgSend(v13, sel_imageWithTintColor_renderingMode_, v14, 1), v13, v14, !v15))
  {
    v16 = MEMORY[0x24C1FAD20](v4, v5);
    v17 = [v12 _systemImageNamed_withConfiguration_];

    if (!v17 || (v17, v18 = [objc_opt_self() secondaryLabelColor], v15 = objc_msgSend(v17, sel_imageWithTintColor_renderingMode_, v18, 1), v17, v18, !v15))
    {
      _StringGuts.grow(_:)(30);

      MEMORY[0x24C1FAEA0](v4, v5);
      v23 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_28;
    }
  }

  v19 = v15;

  v20 = [objc_opt_self() configurationWithFont:isa scale:1];
  v21 = [v19 imageWithConfiguration_];

  [v2 setImage_];
LABEL_26:
  v23 = v2;
LABEL_28:
  result.value.super.isa = v23;
  result.is_nil = v22;
  return result;
}

Swift::Int DOCNodeStatusAppearance.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DOCNodeStatusAppearance and conformance DOCNodeStatusAppearance()
{
  result = lazy protocol witness table cache variable for type DOCNodeStatusAppearance and conformance DOCNodeStatusAppearance;
  if (!lazy protocol witness table cache variable for type DOCNodeStatusAppearance and conformance DOCNodeStatusAppearance)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCNodeStatusAppearance and conformance DOCNodeStatusAppearance);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCNodeStatusAppearance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCNodeStatusAppearance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DOCFullDocumentManagerViewController.canPerformKeyCommandAction(_:with:)(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    if (([v2 isEditing] & 1) == 0)
    {
      v5 = [v2 internalNavigationController];
      v6 = [v5 topViewController];

      if (v6)
      {
        v7 = [v6 navigationItem];

        v8 = [v7 searchController];
        if (v8)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  if (static Selector.== infix(_:_:)())
  {
    return [v2 canPerformGoToEnclosingFolder];
  }

  if (static Selector.== infix(_:_:)())
  {
    result = DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(0, a1, a2);
    if (!result)
    {
      return result;
    }

LABEL_10:
    v10 = result;
    type metadata accessor for DOCItemCollectionViewController(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      outlined init with copy of Any?(a2, &v112);
      v13 = v115;
      if (v115)
      {
        v14 = __swift_project_boxed_opaque_existential_1(&v112, v115);
        v15 = *(v13 - 8);
        v16 = MEMORY[0x28223BE20](v14, v14);
        v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v18, v16);
        v19 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v15 + 8))(v18, v13);
        __swift_destroy_boxed_opaque_existential_0(&v112);
      }

      else
      {
        v19 = 0;
      }

      v22 = [v12 canPerformAction:a1 withSender:{v19, v110}];
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    goto LABEL_240;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    v20 = [v2 traitCollection];
    v21 = [v20 supportHistoryNavigation];

    return v21;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v23 = DOCFullDocumentManagerViewController.availableDisplayModes()();
    v24 = specialized Sequence<>.contains(_:)(3, v23);

    return v24;
  }

  if (static Selector.== infix(_:_:)())
  {
    LOBYTE(v112) = 1;
    return DOCFullDocumentManagerViewController.canChangeUserSizeSetting(direction:)(&v112) & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    LOBYTE(v112) = 0;
    return DOCFullDocumentManagerViewController.canChangeUserSizeSetting(direction:)(&v112) & 1;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v111 = 2;
      v30 = [v2 effectiveBrowserViewController];
      if (!v30)
      {
        v33 = 0;
        goto LABEL_52;
      }

LABEL_41:
      v31 = v30;
      v32 = (*((*MEMORY[0x277D85000] & *v30) + 0xE8))();

      if (v32)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v33 = swift_dynamicCastClass();
        if (!v33)
        {
LABEL_43:

          goto LABEL_52;
        }

        goto LABEL_52;
      }

LABEL_44:
      v33 = 0;
      goto LABEL_52;
    }

    if (static Selector.== infix(_:_:)())
    {
      v111 = 0;
      v30 = [v2 effectiveBrowserViewController];
      if (!v30)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (static Selector.== infix(_:_:)())
    {
      v111 = 7;
      v34 = [v2 effectiveBrowserViewController];
      v35 = v34;
      if (v34)
      {
        v36 = (*((*MEMORY[0x277D85000] & *v34) + 0xE8))();

        if (v36)
        {
          type metadata accessor for DOCItemCollectionViewController(0);
          v35 = swift_dynamicCastClass();
          if (!v35)
          {
          }
        }

        else
        {
          v35 = 0;
        }
      }

      DOCFullDocumentManagerViewController.sortDescriptor(with:for:)(&v111, &v112);

      v37 = v113;
      if (!v113)
      {
        return v37 != 0;
      }

      goto LABEL_53;
    }

    v110 = v2;
    if (static Selector.== infix(_:_:)())
    {
      v111 = 1;
      v38 = [v110 effectiveBrowserViewController];
      goto LABEL_61;
    }

    if (static Selector.== infix(_:_:)())
    {
      v111 = 8;
      v38 = [v110 effectiveBrowserViewController];
      goto LABEL_61;
    }

    if (static Selector.== infix(_:_:)())
    {
      v111 = 4;
      v38 = [v110 effectiveBrowserViewController];
LABEL_61:
      v39 = v38;
      v33 = v39;
      if (v39)
      {
        v32 = (*((*MEMORY[0x277D85000] & *v39) + 0xE8))();

        if (v32)
        {
          type metadata accessor for DOCItemCollectionViewController(0);
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v33 = 0;
        }
      }

LABEL_52:
      DOCFullDocumentManagerViewController.sortDescriptor(with:for:)(&v111, &v112);

      v37 = v113;
      if (!v113)
      {
        return v37 != 0;
      }

LABEL_53:
      outlined consume of DOCItemSortDescriptor?(v112, v37, v114);
      return v37 != 0;
    }

    if (static Selector.== infix(_:_:)())
    {
      v40 = 5;
LABEL_74:
      v111 = v40;
      v33 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
      goto LABEL_52;
    }

    if (static Selector.== infix(_:_:)())
    {
      v40 = 3;
      goto LABEL_74;
    }

    if (static Selector.== infix(_:_:)())
    {
      v111 = 6;
      v41 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
      DOCFullDocumentManagerViewController.sortDescriptor(with:for:)(&v111, &v112);

      if (!v113)
      {
        return 0;
      }

      outlined consume of DOCItemSortDescriptor?(v112, v113, v114);
      v42 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
      if (!v42)
      {
        return 0;
      }

      v43 = v42;
      v44 = (*((*MEMORY[0x277D85000] & *v42) + 0xA68))();

      v45 = [v44 identifier];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;
      if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
      {
        v50 = 1;
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return v50 & 1;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (DOCFullDocumentManagerViewController.isUsingGrouping.getter())
      {
        result = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
        if (result)
        {
          v51 = result;

          return 1;
        }

        return result;
      }

      return 0;
    }

    if (static Selector.== infix(_:_:)())
    {
      if ((DOCFullDocumentManagerViewController.isUsingGrouping.getter() & 1) == 0)
      {
        return 0;
      }

      result = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
      if (!result)
      {
        return result;
      }

      v52 = result;
      v53 = MEMORY[0x277D85000];

      result = [v110 effectiveBrowserViewController];
      if (!result)
      {
        return result;
      }

      v54 = result;
      v55 = (*((*v53 & *result) + 0xE8))();

      if (!v55)
      {
        return 0;
      }

      type metadata accessor for DOCItemCollectionViewController(0);
      v56 = swift_dynamicCastClass();
      if (v56)
      {
        v57 = (*((*v53 & *v56) + 0xA68))();

        v58 = (*((*v53 & *v57) + 0x218))();
        v59 = *(v58 + 16);
        if (v59)
        {
          v60 = 0;
          while (v60 < *(v58 + 16))
          {
            if (*(v58 + v60 + 32) == 5)
            {
              goto LABEL_221;
            }

            v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v61)
            {
              goto LABEL_179;
            }

            if (v59 == ++v60)
            {
              goto LABEL_171;
            }
          }

          __break(1u);
LABEL_221:

LABEL_179:

          return 1;
        }

        goto LABEL_171;
      }

LABEL_203:

      return 0;
    }

    if (static Selector.== infix(_:_:)())
    {
      if ((DOCFullDocumentManagerViewController.isUsingGrouping.getter() & 1) == 0)
      {
        return 0;
      }

      result = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
      if (!result)
      {
        return result;
      }

      v62 = result;
      v63 = MEMORY[0x277D85000];

      result = [v110 effectiveBrowserViewController];
      if (!result)
      {
        return result;
      }

      v64 = result;
      v55 = (*((*v63 & *result) + 0xE8))();

      if (!v55)
      {
        return 0;
      }

      type metadata accessor for DOCItemCollectionViewController(0);
      v65 = swift_dynamicCastClass();
      if (!v65)
      {
        goto LABEL_203;
      }

      v10 = (*((*v63 & *v65) + 0xA68))();

      v66 = (*((*v63 & *v10) + 0x218))();
      v67 = *(v66 + 16);
      if (v67)
      {
        v68 = 0;
        while (v68 < *(v66 + 16))
        {
          v69 = *(v66 + v68 + 32);
          if (v69 > 4)
          {
            if (*(v66 + v68 + 32) > 6u)
            {
              if (v69 != 9)
              {
                goto LABEL_221;
              }

              v10 = 0xEC00000073757461;
            }

            else if (v69 == 5)
            {
              v10 = 0xE400000000000000;
            }

            else
            {
              v10 = 0xE800000000000000;
            }
          }

          else if (*(v66 + v68 + 32) <= 2u)
          {
            if (v69 != 2)
            {
              goto LABEL_221;
            }

            v10 = 0xE400000000000000;
          }

          else
          {
            v10 = 0xE400000000000000;
          }

          v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v63)
          {
            goto LABEL_179;
          }

          if (v67 == ++v68)
          {
            goto LABEL_171;
          }
        }

        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
        goto LABEL_239;
      }

      goto LABEL_171;
    }

    if (static Selector.== infix(_:_:)())
    {
      if ((DOCFullDocumentManagerViewController.isUsingGrouping.getter() & 1) == 0)
      {
        return 0;
      }

      result = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
      if (!result)
      {
        return result;
      }

      v70 = result;
      v63 = MEMORY[0x277D85000];

      result = [v110 effectiveBrowserViewController];
      if (!result)
      {
        return result;
      }

      v71 = result;
      v55 = (*((*v63 & *result) + 0xE8))();

      if (!v55)
      {
        return 0;
      }

      type metadata accessor for DOCItemCollectionViewController(0);
      v72 = swift_dynamicCastClass();
      if (!v72)
      {
        goto LABEL_203;
      }

      v10 = (*((*v63 & *v72) + 0xA68))();

      v73 = (*((*v63 & *v10) + 0x218))();
      v74 = *(v73 + 16);
      if (!v74)
      {
        goto LABEL_171;
      }

      v75 = 0;
      while (1)
      {
        if (v75 >= *(v73 + 16))
        {
          goto LABEL_237;
        }

        v76 = *(v73 + v75 + 32);
        if (v76 <= 4)
        {
          break;
        }

        if (*(v73 + v75 + 32) <= 6u)
        {
          if (v76 == 5)
          {
            v10 = 0xE400000000000000;
          }

          else
          {
            v10 = 0xE800000000000000;
          }

          goto LABEL_146;
        }

        if (v76 - 7 < 2)
        {
          goto LABEL_141;
        }

        v10 = 0xEC00000073757461;
LABEL_146:
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {
          goto LABEL_179;
        }

        if (v74 == ++v75)
        {
          goto LABEL_171;
        }
      }

      if (*(v73 + v75 + 32) > 1u)
      {
        if (v76 == 2)
        {
          v10 = 0xE400000000000000;
        }

        else
        {
          if (v76 != 3)
          {
            goto LABEL_221;
          }

          v10 = 0xE400000000000000;
        }

        goto LABEL_146;
      }

LABEL_141:
      v10 = 0xE400000000000000;
      goto LABEL_146;
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      if (static Selector.== infix(_:_:)())
      {
        result = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
        if (result)
        {
          v86 = result;
          v87 = DOCItemCollectionViewController.displayModeButton.getter();
          v88 = [v87 isEnabled];

          return v88;
        }

        return result;
      }

      if (static Selector.== infix(_:_:)())
      {
        result = DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(0, a1, a2);
        if (!result)
        {
          return result;
        }

        v55 = result;
        type metadata accessor for DOCItemCollectionViewController(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_203;
        }

        v89 = DOCItemCollectionViewController.canPerformCreateFolder(withSelection:)(0);
        goto LABEL_213;
      }

      if (static Selector.== infix(_:_:)())
      {
        result = DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(0, a1, a2);
        if (!result)
        {
          return result;
        }

        v55 = result;
        type metadata accessor for DOCItemCollectionViewController(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_203;
        }

        v89 = DOCItemCollectionViewController.canPerformCreateFolder(withSelection:)(1);
        goto LABEL_213;
      }

      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        if (static Selector.== infix(_:_:)())
        {
          result = [v110 effectiveBrowserViewController];
          if (!result)
          {
            return result;
          }

          v99 = result;
          v100 = MEMORY[0x277D85000];
          v55 = (*((*MEMORY[0x277D85000] & *result) + 0xE8))();

          if (!v55)
          {
            return 0;
          }

          type metadata accessor for DOCItemCollectionViewController(0);
          v101 = swift_dynamicCastClass();
          if (v101)
          {
            v102 = (*((*v100 & *v101) + 0xA68))();
            v103 = [v102 isEjectable];

            return v103;
          }

          goto LABEL_203;
        }

        if (static Selector.== infix(_:_:)())
        {
          v104 = [v110 presentedViewController];
          if (!v104)
          {
            v108 = [v110 traitCollection];
            v109 = [v108 horizontalSizeClass];

            return v109 == 2;
          }

          return 0;
        }

        if (static Selector.== infix(_:_:)())
        {
          v105 = DOCFullDocumentManagerViewController.ownedSearchController.getter();
          if (v105)
          {

            result = DOCFullDocumentManagerViewController.ownedSearchController.getter();
            if (!result)
            {
              goto LABEL_249;
            }

            v106 = result;
            v107 = [result isActive];

            if (v107)
            {
              return 1;
            }
          }

          v10 = [v110 configuration];
          v22 = [v10 isPickerUI];
LABEL_21:

          return v22;
        }

        if (static Selector.== infix(_:_:)())
        {
          return 1;
        }

        if (static Selector.== infix(_:_:)())
        {
          v55 = [v110 configuration];
          v89 = specialized static DOCTabbedBrowserViewController.connectToServerAllowed(for:)(v55);
          goto LABEL_213;
        }

        if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
        {
          result = DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(0, a1, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_10;
        }

        return 2;
      }

      v90 = [v110 configuration];
      v91 = [v90 isFilesApp];

      if (v91)
      {
        return 1;
      }

      v10 = [v110 hierarchyController];
      v92 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
      swift_beginAccess();
      v63 = *(v10 + v92);
      if (!(v63 >> 62))
      {
        v93 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v93)
        {
LABEL_240:

          return 0;
        }

LABEL_188:
        v94 = v93 - 1;
        if (__OFSUB__(v93, 1))
        {
          __break(1u);
        }

        else if ((v63 & 0xC000000000000001) == 0)
        {
          if ((v94 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v94 < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v55 = *(v63 + 8 * v94 + 32);

LABEL_193:
            v95 = [v55 fileProviderItem];
            if (!v95)
            {
LABEL_212:
              v89 = DOCFullDocumentManagerViewController.isOnRecents()();
LABEL_213:
              v98 = v89;
              goto LABEL_214;
            }

            result = [v55 fileProviderItem];
            if (result)
            {
              v96 = result;
              v97 = _sSo16DOCActionManagerC08DocumentB11ExecutablesE9canImport2inSbSo7DOCNode_p_tFZTf4en_nSo6FPItemC_Tt0g5(v96);

              if (v97)
              {
                v98 = 1;
LABEL_214:

                return v98 & 1;
              }

              goto LABEL_212;
            }

            __break(1u);
LABEL_249:
            __break(1u);
            return result;
          }

          __break(1u);
          return 2;
        }

        v55 = MEMORY[0x24C1FC540](v94, v63);

        goto LABEL_193;
      }

LABEL_239:
      v93 = __CocoaSet.count.getter();
      if (!v93)
      {
        goto LABEL_240;
      }

      goto LABEL_188;
    }

    if ((DOCFullDocumentManagerViewController.isUsingGrouping.getter() & 1) == 0)
    {
      return 0;
    }

    result = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();
    if (!result)
    {
      return result;
    }

    v77 = result;
    v63 = MEMORY[0x277D85000];

    result = [v110 effectiveBrowserViewController];
    if (!result)
    {
      return result;
    }

    v78 = result;
    v55 = (*((*v63 & *result) + 0xE8))();

    if (!v55)
    {
      return 0;
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    v79 = swift_dynamicCastClass();
    if (!v79)
    {
      goto LABEL_203;
    }

    v80 = (*((*v63 & *v79) + 0xA68))();

    v81 = (*((*v63 & *v80) + 0x218))();
    v82 = *(v81 + 16);
    if (!v82)
    {
LABEL_171:

      return 0;
    }

    v83 = 0;
    v10 = 0x7942646572616873;
    while (1)
    {
      if (v83 >= *(v81 + 16))
      {
        goto LABEL_238;
      }

      v84 = *(v81 + v83 + 32);
      if (v84 > 4)
      {
        break;
      }

      if (*(v81 + v83 + 32) > 2u)
      {
        v63 = 0xE400000000000000;
        goto LABEL_169;
      }

      if (v84 < 2)
      {
        goto LABEL_164;
      }

      v63 = 0xE400000000000000;
LABEL_169:
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v85)
      {
        goto LABEL_179;
      }

      if (v82 == ++v83)
      {
        goto LABEL_171;
      }
    }

    if (*(v81 + v83 + 32) <= 6u)
    {
      if (v84 != 5)
      {
        goto LABEL_221;
      }

      v63 = 0xE400000000000000;
      goto LABEL_169;
    }

    if (v84 - 7 >= 2)
    {
      v63 = 0xEC00000073757461;
      goto LABEL_169;
    }

LABEL_164:
    v63 = 0xE400000000000000;
    goto LABEL_169;
  }

  result = [v2 effectiveBrowserViewController];
  if (!result)
  {
    return result;
  }

  v25 = result;
  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *result) + 0xE8))();

  if (!v27)
  {
    return 0;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v28 = swift_dynamicCastClass();
  v29 = v28 != 0;
  if (v28)
  {
  }

  return v29;
}

uint64_t DOCFullDocumentManagerViewController.keyCommands.getter()
{
  v1 = [v0 configuration];
  v2 = [v1 isPopoverOrWidget];

  if (v2)
  {
    return 0;
  }

  v6 = MEMORY[0x277D84F90];
  v4 = [objc_opt_self() dismissingKeyCommandsWithAction_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand, 0x277D75650);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v5);
  return v6;
}

Swift::Bool __swiftcall DOCFullDocumentManagerViewController.canPerformGoToEnclosingFolder()()
{
  v1 = v0;
  v2 = [v0 dataSource];
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x188))();

  if (v3 == 3)
  {
    return 0;
  }

  else
  {
    return [v1 _canNavigateBack];
  }
}

uint64_t DOCFullDocumentManagerViewController.canGoBackInHistory.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd, "6\t");
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = [v2 traitCollection];
  v10 = [v9 supportHistoryNavigation];

  if (v10)
  {
    if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v11 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v2, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v14 = MEMORY[0x28223BE20](KeyPath, v13);
    *&v17[-16] = v2;
    (*((*MEMORY[0x277D85000] & *v11) + 0x90))(&v19, v14);

    v18 = a2;
    v15 = (*(*v19 + 264))(&v18, v7);

    outlined destroy of DOCBrowserHistoryShiftAmount(v7);
  }

  else
  {
    outlined destroy of DOCBrowserHistoryShiftAmount(v7);
    v15 = 0;
  }

  return v15 & 1;
}

void DOCFullDocumentManagerViewController.changeDisplayModeAndNotify(_:)(uint64_t a1)
{
  v3 = [v1 effectiveBrowserViewController];
  if (v3)
  {
    v4 = MEMORY[0x277D85000];
    v5 = v3;
    v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

    if (v6)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = (*((*v4 & *v7) + 0xA68))();

        v9 = [v8 identifier];
        goto LABEL_8;
      }
    }

    v9 = 0;
    v8 = 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

LABEL_8:
  v10 = v9;
  DOCFullDocumentManagerViewController.userDidChangeDisplayMode(to:for:)(a1, v9);
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.performViewAsList(_:)(UIKeyCommand *a1)
{
  v1 = [objc_opt_self() outlineView];
  v2 = [v1 isEnabled];

  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  DOCFullDocumentManagerViewController.changeDisplayModeAndNotify(_:)(v3);
}

void DOCFullDocumentManagerViewController.changeUserSizeSetting(direction:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = [objc_opt_self() viewOptionsSizeSetting];
  v4 = [v3 isEnabled];

  if (v4)
  {
    v5 = [v1 configuration];
    v6 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v5);

    v7 = [v1 configuration];
    v8 = v7;
    if (v6 >= 2)
    {
      v10 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSliderValue(configuration:)(v7);

      v11 = -4;
      if (!v2)
      {
        v11 = 4;
      }

      if (__OFADD__(v10, v11))
      {
        __break(1u);
      }

      else
      {

        DOCFullDocumentManagerViewController.currentSizeSliderValue.setter(v10 + v11);
      }
    }

    else
    {
      specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v7);

      v12 = v2;
      LOBYTE(v9) = DOCBrowserLayoutConfiguration.SizeSetting.nextSizeSetting(direction:)(&v12);
      if (v9 != 3)
      {

        DOCFullDocumentManagerViewController.currentSizeSetting.setter(v9);
      }
    }
  }
}

void DOCFullDocumentManagerViewController.performSortBy(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v23 = *a1;
  v4 = [v1 effectiveBrowserViewController];
  v5 = MEMORY[0x277D85000];
  if (v4 && (v6 = v4, v7 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))(), v6, v7))
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  DOCFullDocumentManagerViewController.sortDescriptor(with:for:)(&v23, &v24);

  v9 = v25;
  if (v25)
  {
    v10 = v24;
    v11 = v26;
    v12 = v27;
    v13 = [v2 effectiveBrowserViewController];
    if (v13)
    {
      v14 = v13;
      v15 = (*((*v5 & *v13) + 0xE8))();

      if (v15)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          (*((*v5 & *v16) + 0x1160))(&v24);

          v17 = v25;
          if (v25)
          {
            v18 = v24;
            v19 = v26;
            v20 = v27;
            if (specialized == infix<A>(_:_:)(v3, v24))
            {
              outlined consume of DOCItemSortDescriptor?(v10, v9, v11);
              outlined consume of DOCItemSortDescriptor?(v18, v17, v19);
              v23 = v18;
              DOCItemSortDescriptor.init(type:isReversed:)(&v23, (v20 & 1) == 0, &v24);
              LOBYTE(v10) = v24;
              v9 = v25;
              v11 = v26;
              v12 = v27;
            }

            else
            {
              outlined consume of DOCItemSortDescriptor?(v18, v17, v19);
            }
          }
        }

        else
        {
        }
      }
    }

    LOBYTE(v24) = v10;
    v25 = v9;
    v26 = v11;
    v27 = v12 & 1;
    v21 = DOCFullDocumentManagerViewController.updateSorting(_:)(&v24);
    LOBYTE(v24) = v10;
    v25 = v9;
    v26 = v11;
    v27 = v12 & 1;
    v22 = [v2 configuration];
    specialized static DOCUserInterfaceStateStore.saveDefaultSortMode(_:configuration:)(&v24, v22);
  }
}

void DOCFullDocumentManagerViewController.performGroupBy(_:)(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = [v1 effectiveBrowserViewController];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D85000];
    v14 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();

    if (v14)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = (*((*v6 & *v7) + 0xA68))();

        v16 = v3;
        v9 = [v2 effectiveBrowserViewController];
        if (v9 && (v10 = v9, v11 = (*((*v6 & *v9) + 0xE8))(), v10, v11))
        {
          v12 = swift_dynamicCastClass();
          if (!v12)
          {
          }
        }

        else
        {
          v12 = 0;
        }

        DOCFullDocumentManagerViewController.groupingBehavior(with:for:)(&v16, &v17);

        if (v17 != 11)
        {
          v15 = v17;
          v13 = [v8 identifier];
          DOCFullDocumentManagerViewController.groupBehavior(changeTo:for:)(&v15, v13);
        }
      }

      else
      {
      }
    }
  }
}

void DOCFullDocumentManagerViewController.performUseGrouping(_:)(uint64_t a1, void (*a2)(void))
{
  v4 = [v2 effectiveBrowserViewController];
  if (v4)
  {
    v5 = v4;
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();

    if (v6)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        a2();
      }
    }
  }
}

void @objc DOCFullDocumentManagerViewController.performUseGrouping(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v9 = a1;
  v5 = [v9 effectiveBrowserViewController];
  if (v5)
  {
    v6 = v5;
    v7 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

    if (v7)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        a4();
        v8 = v7;
      }

      else
      {
        v8 = v9;
        v9 = v7;
      }
    }
  }
}

void DOCFullDocumentManagerViewController.performGoToEnclosingFolderInNewWindow(_:)(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = *a2;
  v10[3] = type metadata accessor for NSMutableAttributedString(0, a3, a4);
  v10[0] = a1;
  v7 = a1;
  v8 = DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(0, v6, v10);
  outlined destroy of CharacterSet?(v10, &_sypSgMd, &_sypSgMR);
  if (v8)
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      [v9 *a2];
    }
  }
}

void @objc DOCFullDocumentManagerViewController.performGoToEnclosingFolderInNewWindow(_:)(void *a1, uint64_t a2, void *a3, SEL *a4, unint64_t *a5, void *a6)
{
  v9 = *a4;
  v15[3] = type metadata accessor for NSMutableAttributedString(0, a5, a6);
  v15[0] = a3;
  v10 = a3;
  v11 = a1;
  v12 = DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(0, v9, v15);
  outlined destroy of CharacterSet?(v15, &_sypSgMd, &_sypSgMR);
  if (v12)
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      [v13 *a4];
      v14 = v12;
    }

    else
    {
      v14 = v10;
      v10 = v11;
      v11 = v12;
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.performCreateDocumentOrOpenNewWindow(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v3 = [v1 configuration];
  v4 = [v3 isFilesApp];

  if (v4)
  {
    v5 = [v2 actionManager];
    v6 = [v5 actions];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = [v5 associatedActionManagers];
    type metadata accessor for DOCActionManager(0);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = specialized Sequence.flatMap<A>(_:)(v9);

    v34[0] = v7;
    specialized Array.append<A>(contentsOf:)(v10);

    v11 = v7;
    if (v7 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C1FC540](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = [v14 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_21:

          v24 = [v2 configuration];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249B9A480;
          *(inited + 32) = 0xD000000000000036;
          *(inited + 40) = 0x8000000249BD4210;
          v26 = [objc_opt_self() recentDocumentsLocation];
          *(inited + 72) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
          *(inited + 48) = v26;
          v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
          v28 = type metadata accessor for DOCActionContext();
          v29 = objc_allocWithZone(v28);
          swift_unknownObjectWeakInit();
          *&v29[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
          *&v29[OBJC_IVAR___DOCActionContext_appearance] = 0;
          *&v29[OBJC_IVAR___DOCActionContext_configuration] = v24;
          *&v29[OBJC_IVAR___DOCActionContext_presentingViewController] = v2;
          swift_beginAccess();
          swift_unknownObjectWeakAssign();
          *&v29[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
          *&v29[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
          *&v29[OBJC_IVAR___DOCActionContext_userInfo] = v27;
          v33.receiver = v29;
          v33.super_class = v28;
          v30 = v2;
          v31 = [(UIKeyCommand *)&v33 init];
          v32 = [v30 actionManager];
          specialized DOCActionManager.perform(_:on:actionContext:)(v15, MEMORY[0x277D84F90], v31);

          return;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_21;
        }

        ++v13;
        if (v16 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  else
  {

    [v2 performCreateDocument];
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.performCreateDocument()()
{
  v1 = [v0 documentManager];
  (*((*MEMORY[0x277D85000] & *v1) + 0x110))(0);
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.performEjectMedium(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v3 = [v1 effectiveBrowserViewController];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

    if (v9)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = (*((*v5 & *v6) + 0xA68))();
        (*((*v5 & *v7) + 0x288))(v2);

        v8 = v7;
      }

      else
      {
        v8 = v9;
      }
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.performConnectToServer(_:)(UIKeyCommand *a1)
{
  v3 = objc_opt_self();
  v4 = [v1 configuration];
  v5 = [v4 sceneIdentifier];

  v6 = [v3 globalTabbedBrowserControllerForIdentifier_];
  [v6 performConnectToServer_];
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.performDismiss(_:)(UIKeyCommand *a1)
{
  if ([(UIKeyCommand *)a1 doc_isCancellingKeyCommand])
  {
    v3 = [v1 presentedViewController];
    if (v3)
    {
      v19 = &unk_285D4FB38;
      v4 = v3;
      v5 = swift_dynamicCastObjCProtocolConditional();

      if (v5)
      {
        v6 = [v1 presentedViewController];
        if (v6)
        {
          v7 = v6;
          [v6 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }

    v8 = [v1 internalNavigationController];
    v9 = [v8 topViewController];

    if (v9)
    {
      v10 = [v9 navigationItem];

      v11 = [v10 searchController];
      if (v11)
      {
        if ([v11 isActive])
        {
          [v11 setActive_];

          return;
        }
      }
    }

LABEL_17:
    v17 = [v1 configuration];
    v18 = [v17 isPickerUI];

    if (v18)
    {
      [v1 didIndicateCancelPicker];
    }

    return;
  }

  if (![(UIKeyCommand *)a1 doc_isDismissingKeyCommand])
  {
    return;
  }

  v12 = [v1 presentedViewController];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = swift_dynamicCastObjCProtocolConditional();

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = [v1 presentedViewController];
  if (v15)
  {
    v16 = v15;
    [v15 dismissViewControllerAnimated:1 completion:0];
  }
}

void *DOCFullDocumentManagerViewController.isUsingGrouping.getter()
{
  result = [v0 effectiveBrowserViewController];
  if (result)
  {
    v2 = result;
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *result) + 0xE8))();

    if (v4)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        (*((*v3 & *v5) + 0xCE8))(&v6);

        return (v6 != 10);
      }
    }

    return 0;
  }

  return result;
}

id DOCFullDocumentManagerViewController.canChangeUserSizeSetting(direction:)(char *a1)
{
  v2 = *a1;
  v3 = [objc_opt_self() viewOptionsSizeSetting];
  v4 = [v3 isEnabled];

  if (v4)
  {
    v5 = [v1 configuration];
    specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v5);

    v8 = v2;
    DOCBrowserLayoutConfiguration.SizeSetting.nextSizeSetting(direction:)(&v8);
    v6 = [v1 configuration];
    specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSliderValue(configuration:)(v6);
  }

  return v4;
}

uint64_t DOCFullDocumentManagerViewController.isOnRecents()()
{
  v1 = [v0 hierarchyController];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v6 = MEMORY[0x24C1FC540](v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);

LABEL_8:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v1 = [objc_opt_self() recentDocumentsLocation];
    v7 = static NSObject.== infix(_:_:)();

LABEL_11:
    return v7 & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.validate(_:)(UICommand *a1)
{
  v2 = v1;
  [(UICommand *)a1 action];
  if (static Selector.== infix(_:_:)())
  {
    v4 = _DocumentManagerBundle();
    if (v4)
    {
      v5 = v4;
      v87._object = 0x8000000249BF62B0;
      v6._countAndFlagsBits = 0x646E69572077654ELL;
      v87._countAndFlagsBits = 0xD000000000000031;
      v6._object = 0xEA0000000000776FLL;
      v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v7.value._object = 0xEB00000000656C62;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v87);
      countAndFlagsBits = v9._countAndFlagsBits;
      object = v9._object;

      v12 = _DocumentManagerBundle();
      if (v12)
      {
        v13 = v12;
        v88._object = 0x8000000249BF62F0;
        v14._countAndFlagsBits = 0x4420657461657243;
        v14._object = 0xEF746E656D75636FLL;
        v88._countAndFlagsBits = 0xD000000000000031;
        v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v15.value._object = 0xEB00000000656C62;
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v88);

        v18 = [v2 configuration];
        v19 = [v18 isFilesApp];

        if (v19)
        {
          v20 = v9._object;
        }

        else
        {
          v20 = v17._object;
        }

        if (v19)
        {
          v21 = v9._countAndFlagsBits;
        }

        else
        {
          v21 = v17._countAndFlagsBits;
        }

        v22 = MEMORY[0x24C1FAD20](v21, v20);

        [(UICommand *)a1 setDiscoverabilityTitle:v22];

        v23 = [v2 configuration];
        LODWORD(v22) = [v23 isFilesApp];

        if (!v22)
        {
          countAndFlagsBits = v17._countAndFlagsBits;
          object = v17._object;
        }

        v24 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

        [(UICommand *)a1 setTitle:v24];

        v25 = [v2 configuration];
        v26 = [v25 isFilesApp];

        if (v26)
        {
          v27 = MEMORY[0x24C1FAD20](0x6365722E73756C70, 0xEE00656C676E6174);
          v84 = [objc_opt_self() systemImageNamed_];

          [(UICommand *)a1 setImage:v84];
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_141;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v31 = [v1 traitCollection];
      v32 = [v31 supportHistoryNavigation];

      if (v32 && (DOCFullDocumentManagerViewController.canGoBackInHistory.getter() & 1) != 0)
      {
        return;
      }

LABEL_27:
      v35 = sel_setAttributes_;
      v36 = a1;
      v37 = 1;
LABEL_34:

      [v36 v35];
      return;
    }

    if (static Selector.== infix(_:_:)())
    {
      v33 = [v1 traitCollection];
      v34 = [v33 supportHistoryNavigation];

      if (v34 && (DOCFullDocumentManagerViewController.canGoForwardInHistory.getter() & 1) != 0)
      {
        return;
      }

      goto LABEL_27;
    }

    if (static Selector.== infix(_:_:)())
    {
      v38 = [v1 dataSource];
      v39 = (*((*MEMORY[0x277D85000] & *v38) + 0x188))();

      v40 = v39 == 0;
      goto LABEL_30;
    }

    if (static Selector.== infix(_:_:)())
    {
      v41 = [v1 dataSource];
      v42 = MEMORY[0x277D85000];
      v43 = (*((*MEMORY[0x277D85000] & *v41) + 0x188))();

      if (v43 == 1)
      {
        goto LABEL_42;
      }

      v46 = [v2 dataSource];
      v47 = (*((*v42 & *v46) + 0x188))();

      v40 = v47 == 2;
LABEL_30:
      v37 = v40;
      goto LABEL_33;
    }

    if (static Selector.== infix(_:_:)())
    {
      v44 = [v1 dataSource];
      v45 = (*((*MEMORY[0x277D85000] & *v44) + 0x188))();

      v40 = v45 == 3;
      goto LABEL_30;
    }

    if (static Selector.== infix(_:_:)())
    {
      v48 = [v1 effectiveBrowserViewController];
      if (!v48)
      {
        goto LABEL_135;
      }

      v49 = v48;
      v50 = MEMORY[0x277D85000];
      v51 = (*((*MEMORY[0x277D85000] & *v48) + 0xE8))();

      if (!v51)
      {
        goto LABEL_135;
      }

      type metadata accessor for DOCItemCollectionViewController(0);
      v52 = swift_dynamicCastClass();
      if (v52)
      {
        (*((*v50 & *v52) + 0xCE8))(v85);

        if (LOBYTE(v85[0]) != 10)
        {
          goto LABEL_42;
        }

LABEL_135:
        v37 = 0;
        goto LABEL_33;
      }

LABEL_134:

      goto LABEL_135;
    }

    if (static Selector.== infix(_:_:)())
    {
      v53 = 2;
LABEL_54:
      LOBYTE(v85[0]) = v53;
LABEL_57:
      DOCFullDocumentManagerViewController.validateSortByMenuItemState(_:sortMode:)(a1, v85);
      return;
    }

    if (static Selector.== infix(_:_:)())
    {
      LOBYTE(v85[0]) = 0;
      goto LABEL_57;
    }

    if (static Selector.== infix(_:_:)())
    {
      v53 = 7;
      goto LABEL_54;
    }

    if (static Selector.== infix(_:_:)())
    {
      v53 = 1;
      goto LABEL_54;
    }

    if (static Selector.== infix(_:_:)())
    {
      v53 = 8;
      goto LABEL_54;
    }

    if (static Selector.== infix(_:_:)())
    {
      v53 = 4;
      goto LABEL_54;
    }

    if (static Selector.== infix(_:_:)())
    {
      v53 = 5;
      goto LABEL_54;
    }

    if (static Selector.== infix(_:_:)())
    {
      v53 = 3;
      goto LABEL_54;
    }

    if (static Selector.== infix(_:_:)())
    {
      v54 = [v1 effectiveBrowserViewController];
      if (!v54)
      {
        goto LABEL_42;
      }

      v55 = v54;
      v56 = MEMORY[0x277D85000];
      v57 = (*((*MEMORY[0x277D85000] & *v54) + 0xE8))();

      if (!v57)
      {
        goto LABEL_42;
      }

      type metadata accessor for DOCItemCollectionViewController(0);
      v58 = swift_dynamicCastClass();
      if (!v58)
      {

        goto LABEL_42;
      }

      (*((*v56 & *v58) + 0xCE8))(v85);

      v40 = LOBYTE(v85[0]) == 10;
      goto LABEL_30;
    }

    if (static Selector.== infix(_:_:)())
    {
      v59 = [v1 effectiveBrowserViewController];
      if (!v59)
      {
        goto LABEL_135;
      }

      v60 = v59;
      v61 = MEMORY[0x277D85000];
      v51 = (*((*MEMORY[0x277D85000] & *v59) + 0xE8))();

      if (!v51)
      {
        goto LABEL_135;
      }

      type metadata accessor for DOCItemCollectionViewController(0);
      v62 = swift_dynamicCastClass();
      if (!v62)
      {
        goto LABEL_134;
      }

      (*((*v61 & *v62) + 0xCE8))(v85);

      if (LOBYTE(v85[0]) <= 4u)
      {
        goto LABEL_141;
      }

      if (LOBYTE(v85[0]) <= 7u)
      {
        if (LOBYTE(v85[0]) != 5)
        {
          goto LABEL_141;
        }

        goto LABEL_143;
      }

      if (LOBYTE(v85[0]) != 8 && LOBYTE(v85[0]) != 9)
      {
        goto LABEL_135;
      }

LABEL_141:
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v82 & 1) == 0)
      {
        goto LABEL_135;
      }

LABEL_42:
      v37 = 1;
LABEL_33:
      v35 = sel_setState_;
      v36 = a1;
      goto LABEL_34;
    }

    if (static Selector.== infix(_:_:)())
    {
      v63 = [v1 effectiveBrowserViewController];
      if (v63)
      {
        v64 = v63;
        v65 = MEMORY[0x277D85000];
        v66 = (*((*MEMORY[0x277D85000] & *v63) + 0xE8))();

        if (v66)
        {
          type metadata accessor for DOCItemCollectionViewController(0);
          v67 = swift_dynamicCastClass();
          if (v67)
          {
            (*((*v65 & *v67) + 0xCE8))(v85);

            if (LOBYTE(v85[0]) != 10)
            {
              if (LOBYTE(v85[0]) <= 4u && !LOBYTE(v85[0]))
              {
                goto LABEL_143;
              }

              v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v77)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
          }
        }
      }

      v78 = [v2 effectiveBrowserViewController];
      if (!v78)
      {
        goto LABEL_135;
      }

      v79 = v78;
      v80 = MEMORY[0x277D85000];
      v51 = (*((*MEMORY[0x277D85000] & *v78) + 0xE8))();

      if (!v51)
      {
        goto LABEL_135;
      }

      type metadata accessor for DOCItemCollectionViewController(0);
      v81 = swift_dynamicCastClass();
      if (!v81)
      {
        goto LABEL_134;
      }

      (*((*v80 & *v81) + 0xCE8))(v85);

      if (LOBYTE(v85[0]) > 4u)
      {
        if (LOBYTE(v85[0]) > 8u && LOBYTE(v85[0]) != 9)
        {
          goto LABEL_135;
        }

        goto LABEL_141;
      }

      if (LOBYTE(v85[0]) > 1u || !LOBYTE(v85[0]))
      {
        goto LABEL_141;
      }
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        if ((static Selector.== infix(_:_:)() & 1) == 0)
        {
          return;
        }

        v72 = [v1 effectiveBrowserViewController];
        if (!v72)
        {
          goto LABEL_135;
        }

        v73 = v72;
        v74 = MEMORY[0x277D85000];
        v75 = (*((*MEMORY[0x277D85000] & *v72) + 0xE8))();

        if (!v75)
        {
          goto LABEL_135;
        }

        type metadata accessor for DOCItemCollectionViewController(0);
        v76 = swift_dynamicCastClass();
        if (!v76)
        {

          goto LABEL_135;
        }

        (*((*v74 & *v76) + 0xCE8))(v85);

        if (LOBYTE(v85[0]) > 4u)
        {
          if (LOBYTE(v85[0]) > 7u)
          {
            if (LOBYTE(v85[0]) != 8 && LOBYTE(v85[0]) != 9)
            {
              goto LABEL_135;
            }
          }

          else if (LOBYTE(v85[0]) == 6)
          {
            goto LABEL_143;
          }
        }

        v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v83 & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_42;
      }

      v68 = [v1 effectiveBrowserViewController];
      if (!v68)
      {
        goto LABEL_135;
      }

      v69 = v68;
      v70 = MEMORY[0x277D85000];
      v51 = (*((*MEMORY[0x277D85000] & *v68) + 0xE8))();

      if (!v51)
      {
        goto LABEL_135;
      }

      type metadata accessor for DOCItemCollectionViewController(0);
      v71 = swift_dynamicCastClass();
      if (!v71)
      {
        goto LABEL_134;
      }

      (*((*v70 & *v71) + 0xCE8))(v85);

      if (LOBYTE(v85[0]) > 4u)
      {
        if (LOBYTE(v85[0]) > 8u && LOBYTE(v85[0]) != 9)
        {
          goto LABEL_135;
        }

        goto LABEL_141;
      }

      if (LOBYTE(v85[0]) < 4u)
      {
        goto LABEL_141;
      }
    }

LABEL_143:

    v37 = 1;
    goto LABEL_33;
  }

  v85[3] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICommand, 0x277D75370);
  v85[0] = a1;
  v28 = a1;
  v29 = DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(0, sel_performDelete_, v85);
  outlined destroy of CharacterSet?(v85, &_sypSgMd, &_sypSgMR);
  if (v29)
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      [v30 validateCommand_];

      return;
    }
  }

  [(UICommand *)v28 setAttributes:1];
}

void DOCFullDocumentManagerViewController.validateSortByMenuItemState(_:sortMode:)(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = [v2 effectiveBrowserViewController];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v6) + 0xE8))();

    if (v9)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        (*((*v8 & *v10) + 0x1160))(&v31);

        if (v32)
        {
          v11 = v31;
          outlined consume of DOCItemSortDescriptor?(v31, v32, v33);
          v12 = v11;
          goto LABEL_9;
        }

        outlined consume of DOCItemSortDescriptor?(v31, 0, v33);
      }

      else
      {
      }
    }
  }

  v12 = 5;
LABEL_9:
  if (specialized == infix<A>(_:_:)(v12, v5))
  {
    [a1 setState_];
    v13 = [v3 effectiveBrowserViewController];
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0x277D85000];
      v16 = (*((*MEMORY[0x277D85000] & *v13) + 0xE8))();

      if (v16)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          (*((*v15 & *v17) + 0x1160))(&v31);

          v18 = v31;
          v19 = v32;
          v20 = v33;
          if (v32)
          {

            v21.n128_f64[0] = outlined consume of DOCItemSortDescriptor?(v18, v19, v20);
            if (v19 >> 62)
            {
              if (__CocoaSet.count.getter())
              {
LABEL_16:
                if ((v19 & 0xC000000000000001) != 0)
                {
                  v22 = MEMORY[0x24C1FC540](0, v19, v21);
                }

                else
                {
                  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v22 = *(v19 + 32);
                }

                v23 = v22;
                v24 = [v22 ascending];

                outlined consume of DOCItemSortDescriptor?(v18, v19, v20);
                if (!_UISolariumEnabled())
                {
                  goto LABEL_20;
                }

                goto LABEL_33;
              }
            }

            else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v27 = v18;
            v28 = v19;
          }

          else
          {
            v27 = v31;
            v28 = 0;
          }

          outlined consume of DOCItemSortDescriptor?(v27, v28, v20);
        }

        else
        {
        }
      }
    }

    v24 = 0;
    if (!_UISolariumEnabled())
    {
LABEL_20:
      if (v24)
      {
        v25 = 0xEA00000000007075;
      }

      else
      {
        v25 = 0xEC0000006E776F64;
      }

      v26 = MEMORY[0x24C1FAD20](0x2E6E6F7276656863, v25);

      v30 = [objc_opt_self() systemImageNamed_];

      [a1 setImage_];
LABEL_37:

      return;
    }

LABEL_33:
    LOBYTE(v31) = v5;
    if (v24)
    {
      v29 = DOCItemSortMode.localizedOrderedAscendingString.getter();
    }

    else
    {
      v29 = DOCItemSortMode.localizedOrderedDescendingString.getter();
    }

    v30 = MEMORY[0x24C1FAD20](v29);

    [a1 setSubtitle_];
    goto LABEL_37;
  }

  [a1 setState_];
}

void DOCFullDocumentManagerViewController.performSelectAll(_:enteringEditMode:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [v2 effectiveBrowserViewController];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v6) + 0xE8))();

    if (v9)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v10 = swift_dynamicCastClass();
      if (v10 && (v11 = v10, (v12 = [v3 effectiveSearchController]) != 0))
      {
        v13 = v12;
        if (([v12 isActive] & 1) != 0 || ((*((*v8 & *v11) + 0x1538))(a1, a2 & 1), v14 = objc_msgSend(v3, sel_internalNavigationController), v23 = objc_msgSend(v14, sel_topViewController), v14, !v23))
        {
          v23 = v9;
        }

        else
        {
          type metadata accessor for DOCColumnViewController(0);
          v15 = swift_dynamicCastClass();
          if (v15)
          {
            v16 = v15;
            v17 = [v11 parentViewController];
            if (v17)
            {
              v18 = v17;
              type metadata accessor for DOCBrowserContainerController();
              v19 = swift_dynamicCastClass();
              if (v19)
              {
                v20 = v9;
                (*((*v8 & *v16) + 0x210))(v19, 1);
                v21 = v23;
                v9 = v18;
                v23 = v20;
                v18 = v13;
              }

              else
              {
                v21 = v13;
              }

              v13 = v9;
              v9 = v23;
              v23 = v18;
            }
          }

          v13 = v9;
        }

        v22 = v23;
      }

      else
      {
        v22 = v9;
      }
    }
  }
}

uint64_t key path getter for DOCFullDocumentManagerViewController.browserHistoryController : DOCFullDocumentManagerViewController@<X0>(uint64_t *a1@<X8>)
{
  result = DOCFullDocumentManagerViewController.browserHistoryController.getter();
  *a1 = result;
  return result;
}

void specialized DOCFullDocumentManagerViewController.performFind(_:)()
{
  v1 = [v0 internalNavigationController];
  v2 = [v1 topViewController];

  if (v2)
  {
    v3 = [v2 navigationItem];

    v4 = [v3 searchController];
    if (v4)
    {
      [v4 setActive_];
      v5 = [v4 searchBar];
      [v5 becomeFirstResponder];
    }
  }
}

uint64_t outlined destroy of DOCBrowserHistoryShiftAmount(uint64_t a1)
{
  v2 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized DOCFullDocumentManagerViewController.performGoBackInHistory(_:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd, "6\t");
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = [v2 traitCollection];
  v10 = [v9 supportHistoryNavigation];

  if (v10)
  {
    if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v11 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v2, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v14 = MEMORY[0x28223BE20](KeyPath, v13);
    *&v16[-16] = v2;
    (*((*MEMORY[0x277D85000] & *v11) + 0x90))(&v18, v14);

    v17 = a2;
    (*(*v18 + 272))(&v17, v7);
  }

  return outlined destroy of DOCBrowserHistoryShiftAmount(v7);
}

void specialized DOCFullDocumentManagerViewController.performGroupByNone(_:)()
{
  v10 = 10;
  v1 = [v0 effectiveBrowserViewController];
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    v3 = v1;
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

    if (v4)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = (*((*v2 & *v5) + 0xA68))();

        v8 = [v6 identifier];
        v7 = v8;
        goto LABEL_8;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  v9 = v7;
  DOCFullDocumentManagerViewController.groupBehavior(changeTo:for:)(&v10, v7);
}

void *static DOCDeleteOperation.confirmationStrings(for:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_27:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  do
  {
    v9 = v7;
    if (v6 == v7)
    {
      break;
    }

    if (v8)
    {
      v10 = MEMORY[0x24C1FC540](v7, a1);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_26;
      }

      v10 = *(a1 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = [v10 isCloudItem];

    v7 = v9 + 1;
  }

  while (!v12);
  if (v5)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(v4 + 16);
  }

  result = _DocumentManagerBundle();
  v15 = result;
  if (v13 == 1)
  {
    if (result)
    {
      v38._object = 0x8000000249BF6440;
      v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v16.value._object = 0xEB00000000656C62;
      v17._countAndFlagsBits = 0x1000000000000034;
      v17._object = 0x8000000249BF63D0;
      v18._object = 0x8000000249BF6410;
      v38._countAndFlagsBits = 0xD000000000000050;
      v18._countAndFlagsBits = 0x1000000000000029;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v38);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      result = swift_allocObject();
      *(result + 1) = xmmword_249B9A480;
      if (v6)
      {
        v15 = result;
        if (!v8)
        {
          if (*(v4 + 16))
          {
            v19 = *(a1 + 32);
LABEL_21:
            v20 = v19;
            v21 = v6 != v9;
            v22 = [v19 displayName];

            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v24;

            v15[7] = MEMORY[0x277D837D0];
            v15[8] = lazy protocol witness table accessor for type String and conformance String();
            v15[4] = v23;
            v15[5] = v25;
            v26 = String.init(format:_:)();
            v28 = v27;

            result = closure #2 in static DOCDeleteOperation.confirmationStrings(for:)(v21);
LABEL_24:
            *a2 = v26;
            a2[1] = v28;
            a2[2] = result;
            a2[3] = v29;
            return result;
          }

          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        __break(1u);
      }

      v19 = MEMORY[0x24C1FC540](0, a1);
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (result)
  {
    v30 = v6 != v9;
    v39._object = 0x8000000249BF6370;
    v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v31.value._object = 0xEB00000000656C62;
    v32._object = 0x8000000249BF6330;
    v39._countAndFlagsBits = 0xD000000000000056;
    v32._countAndFlagsBits = 0xD000000000000035;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v15, v33, v39);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D83B88];
    *(v34 + 16) = xmmword_249B9A480;
    v36 = MEMORY[0x277D83C10];
    *(v34 + 56) = v35;
    *(v34 + 64) = v36;
    *(v34 + 32) = v13;
    v26 = static String.localizedStringWithFormat(_:_:)();
    v28 = v37;

    result = closure #3 in static DOCDeleteOperation.confirmationStrings(for:)(v30);
    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t DOCDeleteOperation.RemoveOperationConfirmationStrings.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCDeleteOperation.RemoveOperationConfirmationStrings.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCDeleteOperation.RemoveOperationConfirmationStrings.init(title:subtitle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

objc_class *closure #2 in static DOCDeleteOperation.confirmationStrings(for:)(uint64_t a1)
{
  v1 = a1;
  result = _DocumentManagerBundle();
  v3 = result;
  if (v1)
  {
    if (result)
    {
      v13 = 0x8000000249BF6680;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0x1000000000000065;
      v7 = 0x8000000249BF65B0;
      v8 = 0x100000000000005ALL;
      v9 = 0x8000000249BF6620;
      v10.super.isa = v3;
      v11 = 0xD000000000000052;
LABEL_6:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v4, v10, *&v8, *&v11)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else if (result)
  {
    v13 = 0x8000000249BF6540;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v6 = 0x100000000000004FLL;
    v7 = 0x8000000249BF64A0;
    v9 = 0x8000000249BF64F0;
    v11 = 0xD000000000000065;
    v10.super.isa = v3;
    v8 = 0x1000000000000044;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

objc_class *closure #3 in static DOCDeleteOperation.confirmationStrings(for:)(uint64_t a1)
{
  v1 = a1;
  result = _DocumentManagerBundle();
  v3 = result;
  if (v1)
  {
    if (result)
    {
      v13 = 0x8000000249BF68D0;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0x1000000000000067;
      v7 = 0x8000000249BF6800;
      v8 = 0x100000000000005CLL;
      v9 = 0x8000000249BF6870;
      v10.super.isa = v3;
      v11 = 0xD000000000000058;
LABEL_6:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v4, v10, *&v8, *&v11)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else if (result)
  {
    v13 = 0x8000000249BF6790;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v6 = 0x1000000000000051;
    v7 = 0x8000000249BF66E0;
    v9 = 0x8000000249BF6740;
    v11 = 0xD00000000000006BLL;
    v10.super.isa = v3;
    v8 = 0x1000000000000046;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t DOCItemTapBehavior.localizedName.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

Swift::Int DOCItemTapBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DOCItemTapBehavior and conformance DOCItemTapBehavior()
{
  result = lazy protocol witness table cache variable for type DOCItemTapBehavior and conformance DOCItemTapBehavior;
  if (!lazy protocol witness table cache variable for type DOCItemTapBehavior and conformance DOCItemTapBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemTapBehavior and conformance DOCItemTapBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemTapBehavior and conformance DOCItemTapBehavior;
  if (!lazy protocol witness table cache variable for type DOCItemTapBehavior and conformance DOCItemTapBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemTapBehavior and conformance DOCItemTapBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DOCItemTapBehavior] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCItemTapBehavior] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCItemTapBehavior] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables18DOCItemTapBehaviorOGMd, &_sSay26DocumentManagerExecutables18DOCItemTapBehaviorOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCItemTapBehavior] and conformance [A]);
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v20 = v2 & 0xC000000000000001;
    v18 = v2;
    v19 = v2 & 0xFFFFFFFFFFFFFF8;
    v17 = i;
    while (1)
    {
      if (v20)
      {
        v5 = MEMORY[0x24C1FC540](v4, v2);
      }

      else
      {
        if (v4 >= *(v19 + 16))
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

      v8 = [v5 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      swift_beginAccess();
      MEMORY[0x24C1FAEA0](v9, v11);
      swift_endAccess();

      v12 = [v6 attributeSet];
      v13 = [v12 attributeDictionary];

      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = Dictionary.description.getter();
      v16 = v15;

      MEMORY[0x24C1FAEA0](v14, v16);

      swift_beginAccess();
      MEMORY[0x24C1FAEA0](10, 0xE100000000000000);

      MEMORY[0x24C1FAEA0](2570, 0xE200000000000000);
      v2 = v18;
      swift_endAccess();

      ++v4;
      if (v7 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      closure #1 in closure #1 in DOCPersonSuggester.gatherAvailablePersons(with:)(&v10, a2);

      if (!v2)
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

uint64_t *DOCDebugInfoManager.availableProviders.unsafeMutableAddressor()
{
  if (one-time initialization token for availableProviders != -1)
  {
    swift_once();
  }

  return &static DOCDebugInfoManager.availableProviders;
}

uint64_t *DOCDebugInfoManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCDebugInfoManager.shared;
}

double thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);

  return result;
}

uint64_t DOCDebugInfoManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DOCDebugInfoManager.init()();
  return v0;
}

double static DOCDebugInfoManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t one-time initialization function for availableProviders()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCDebugInfoProvider_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCDebugInfoProvider_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249BA08D0;
  v1 = type metadata accessor for ViewHierarchyProvider();
  v2 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for ViewHierarchyProvider;
  *(v0 + 32) = v2;
  v3 = type metadata accessor for ViewControllerHierarchyProvider();
  v4 = swift_allocObject();
  *(v0 + 96) = v3;
  *(v0 + 104) = &protocol witness table for ViewControllerHierarchyProvider;
  *(v0 + 72) = v4;
  v5 = type metadata accessor for SpotlightDumpProvider();
  v6 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v0 + 144) = &protocol witness table for SpotlightDumpProvider;
  *(v0 + 112) = v6;
  v7 = type metadata accessor for SpotlightCollectorManagerProvider();
  result = swift_allocObject();
  *(v0 + 176) = v7;
  *(v0 + 184) = &protocol witness table for SpotlightCollectorManagerProvider;
  *(v0 + 152) = result;
  static DOCDebugInfoManager.availableProviders = v0;
  return result;
}

double static DOCDebugInfoManager.availableProviders.getter()
{
  if (one-time initialization token for availableProviders != -1)
  {
    swift_once();
  }

  return result;
}

void DOCDebugInfoManager.gather(with:context:outputKind:completion:)(uint64_t a1, void **a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v74 = a5;
  v79 = a4;
  v78 = a3;
  v91 = a1;
  v76 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v8);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v98 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DOCDebugInfoManager.OutputKind(0);
  v73 = *(v14 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v77 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v72 - v19;
  v97 = type metadata accessor for URL();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v21);
  v95 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v22;
  MEMORY[0x28223BE20](v23, v24);
  v96 = v72 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = *a2;
  v72[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v30 = static OS_dispatch_queue.main.getter();
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26);
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  v31 = (*(v27 + 8))(v30, v26);
  if (a2)
  {
    if ((*(*v6 + 104))(v31))
    {
      if (v79)
      {
        v79(0);
      }
    }

    else
    {
      v32 = v6;
      swift_beginAccess();
      v6[16] = 1;
      v89 = swift_allocObject();
      *(v89 + 16) = MEMORY[0x277D84F90];
      outlined init with copy of DOCDebugInfoManager.OutputKind(v78, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v94;
        v35 = v96;
        v34 = v97;
        (*(v94 + 32))(v96, v20, v97);
        v36 = v80;
        v37 = v95;
        v38 = v91;
      }

      else
      {
        outlined destroy of DOCDebugInfoManager.OutputKind(v20);
        v39 = NSTemporaryDirectory();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = v96;
        URL.init(fileURLWithPath:isDirectory:)();

        v34 = v97;
        v36 = v80;
        v37 = v95;
        v38 = v91;
        v33 = v94;
      }

      v72[0] = v15;
      v91 = v11;
      v40 = *(v38 + 16);
      v90 = v10;
      v92 = v32;
      if (v40)
      {
        v41 = v38 + 32;
        v87 = v33 + 16;
        v88 += 7;
        v86 = v33 + 32;
        v85 = *(v32 + 3);
        v84 = *(v32 + 4);
        v83 = &v102;
        v82 = (v36 + 8);
        v81 = (v75 + 8);
        v42 = v76;
        do
        {
          dispatch_group_enter(v85);
          outlined init with copy of DOCSidebarItemIconProvider(v41, &v106);
          v43 = v94;
          v44 = v95;
          (*(v94 + 16))(v95, v35, v34);
          v45 = (*(v43 + 80) + 56) & ~*(v43 + 80);
          v46 = (v88 + v45) & 0xFFFFFFFFFFFFFFF8;
          v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
          v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
          v49 = swift_allocObject();
          outlined init with take of DOCGoToFolderCandidate(&v106, v49 + 16);
          (*(v43 + 32))(v49 + v45, v44, v97);
          v50 = v93;
          *(v49 + v46) = v93;
          *(v49 + v47) = v92;
          v51 = v90;
          *(v49 + v48) = v89;
          v104 = partial apply for closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:);
          v105 = v49;
          aBlock = MEMORY[0x277D85DD0];
          v101 = 1107296256;
          v102 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v103 = &block_descriptor_136;
          v52 = _Block_copy(&aBlock);
          v53 = v50;

          static DispatchQoS.unspecified.getter();
          v99 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          v34 = v97;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x24C1FB9A0](0, v98, v51, v52);
          v35 = v96;
          _Block_release(v52);
          v54 = v51;
          v55 = v98;
          (*v82)(v54, v42);
          (*v81)(v55, v91);

          v41 += 40;
          --v40;
        }

        while (v40);
        v33 = v94;
        v32 = v92;
        v37 = v95;
        v56 = v88;
      }

      else
      {
        v56 = v88 + 7;
        v55 = v98;
      }

      v98 = *(v32 + 3);
      v97 = static OS_dispatch_queue.main.getter();
      outlined init with copy of DOCDebugInfoManager.OutputKind(v78, v77);
      (*(v33 + 16))(v37, v96, v34);
      v57 = (*(v73 + 80) + 24) & ~*(v73 + 80);
      v58 = (v72[0] + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = (*(v33 + 80) + v58 + 8) & ~*(v33 + 80);
      v60 = (v56 + v59) & 0xFFFFFFFFFFFFFFF8;
      v61 = v34;
      v62 = swift_allocObject();
      *(v62 + 16) = v32;
      outlined init with take of DOCDebugInfoManager.OutputKind(v77, v62 + v57);
      *(v62 + v58) = v89;
      (*(v33 + 32))(v62 + v59, v95, v61);
      v63 = v93;
      *(v62 + v60) = v93;
      v64 = (v62 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8));
      v65 = v79;
      v66 = v74;
      *v64 = v79;
      v64[1] = v66;
      v104 = partial apply for closure #2 in DOCDebugInfoManager.gather(with:context:outputKind:completion:);
      v105 = v62;
      aBlock = MEMORY[0x277D85DD0];
      v101 = 1107296256;
      v102 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v103 = &block_descriptor_9_9;
      v67 = _Block_copy(&aBlock);
      v68 = v63;

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v65, v66);
      static DispatchQoS.unspecified.getter();
      *&v106 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v69 = v90;
      v70 = v76;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v71 = v97;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v67);

      (*(v80 + 8))(v69, v70);
      (*(v75 + 8))(v55, v91);
      (*(v94 + 8))(v96, v61);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v31 = a2;
  v32 = a3;
  v33 = type metadata accessor for URL();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33, v8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v30 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = _typeName(_:qualified:)();
  *&v36[0] = 0xD000000000000030;
  *(&v36[0] + 1) = 0x8000000249BF6BD0;
  MEMORY[0x24C1FAEA0](v13);

  MEMORY[0x24C1FAEA0](46, 0xE100000000000000);

  v14 = v36[0];
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = (*(v15 + 8))(v16, v15);
  v19 = v18;
  v36[0] = v14;

  MEMORY[0x24C1FAEA0](v17, v19);

  v30 = v12;
  URL.appendingPathComponent(_:)();

  v21 = a1[3];
  v20 = a1[4];
  v31 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v37 = v32;
  outlined init with copy of DOCSidebarItemIconProvider(a1, v36);
  v22 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v33;
  (*(v6 + 16))(v22, v12, v33);
  v24 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v34;
  outlined init with take of DOCGoToFolderCandidate(v36, v26 + 24);
  v27 = v23;
  (*(v6 + 32))(v26 + v24, v22, v23);
  *(v26 + v25) = v35;
  v28 = *(v20 + 16);

  v28(&v37, partial apply for closure #1 in closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:), v26, v21, v20);

  return (*(v6 + 8))(v30, v27);
}

double closure #1 in closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v28 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v10);
  v29 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v19 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a3 + 32);
  outlined init with copy of DOCSidebarItemIconProvider(a4, v38);
  (*(v16 + 16))(v19, a5, v15);
  v20 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  *(v22 + 24) = a2;
  outlined init with take of DOCGoToFolderCandidate(v38, v22 + 32);
  (*(v16 + 32))(v22 + v20, v19, v15);
  *(v22 + v21) = v30;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_65_2;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v24 = v29;
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v14, v24, v23);
  _Block_release(v23);
  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v14, v34);

  return result;
}

void closure #1 in closure #1 in closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.Encoding();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v33 = a1;
    v34 = a2;
    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.write(to:atomically:encoding:)();
    (*(v16 + 8))(v19, v15);
    (*(v11 + 16))(v14, a4, v10);
    v26 = v31;
    swift_beginAccess();
    v27 = *(v26 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 16) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
      *(v26 + 16) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    (*(v11 + 32))(v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v14, v10);
    *(v26 + 16) = v27;
    dispatch_group_leave(*(v32 + 24));
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v20 = static DOCLog.UI;
    v21 = static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_249B9A480;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v23 = _typeName(_:qualified:)();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:type:_:)("Debug Output: provider '%@' did not generate output data.", 57, 2, &dword_2493AC000, v20, v21, v22);
  }
}

void closure #2 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v13 = type metadata accessor for DOCDebugInfoManager.OutputKind(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  *(a1 + 16) = 0;
  outlined init with copy of DOCDebugInfoManager.OutputKind(a2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = static DOCLog.UI;
    v18 = static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_249B9A480;
    v20 = URL.path.getter();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:type:_:)("Debug Output: saved to folder: %@", 33, 2, &dword_2493AC000, v17, v18, v19);

    v23 = a5;
    v24 = [v23 presentingViewController];
    if (v24)
    {
      v25 = v24;

      v23 = v25;
    }

    aBlock = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    aBlock = 0xD000000000000021;
    v52 = 0x8000000249BF6B60;
    v26 = URL.path.getter();
    MEMORY[0x24C1FAEA0](v26);

    v27 = aBlock;
    v28 = v52;
    v29 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BF6B40);
    v30 = MEMORY[0x24C1FAD20](v27, v28);

    v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v33 = v31;
    v34 = MEMORY[0x24C1FAD20](0x7373696D736944, 0xE700000000000000);
    v55 = partial apply for closure #1 in closure #2 in DOCDebugInfoManager.gather(with:context:outputKind:completion:);
    v56 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v54 = &block_descriptor_56_2;
    v35 = _Block_copy(&aBlock);

    v36 = [objc_opt_self() actionWithTitle:v34 style:0 handler:v35];
    _Block_release(v35);

    v37 = v33;
    [v37 addAction_];
    [v37 setPreferredAction_];

    [v23 presentViewController:v37 animated:1 completion:0];
    outlined destroy of DOCDebugInfoManager.OutputKind(v16);
    if (!a6)
    {
      return;
    }

LABEL_13:
    a6(1);
    return;
  }

  v50[1] = a7;
  v39 = *v16;
  v38 = v16[1];
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v40 = static DOCLog.UI;
  v41 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_249B9A480;
  swift_beginAccess();
  v43 = *(a3 + 16);
  *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation3URLVGMd, &_sSay10Foundation3URLVGMR);
  *(v42 + 64) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [URL] and conformance [A], &_sSay10Foundation3URLVGMd, &_sSay10Foundation3URLVGMR, MEMORY[0x277CC9C50]);
  *(v42 + 32) = v43;

  os_log(_:dso:log:type:_:)("Debug Output: about to present share sheet for URLs: %@", 55, 2, &dword_2493AC000, v40, v41, v42);

  swift_beginAccess();

  specialized _arrayForceCast<A, B>(_:)(v44);

  v45 = objc_allocWithZone(MEMORY[0x277D546D8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v47 = [v45 initWithActivityItems:isa applicationActivities:0];

  v48 = v47;
  [v48 setModalPresentationStyle_];
  v49 = [v48 popoverPresentationController];

  if (v49)
  {
    [v49 setSourceView_];
  }

  [v39 presentViewController:v48 animated:1 completion:0];

  if (a6)
  {
    goto LABEL_13;
  }
}

uint64_t DOCDebugInfoManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCDebugInfoManager.init()()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  *(v0 + 16) = 0;
  *(v0 + 24) = dispatch_group_create();
  v9 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v11[0] = "n trash is not supported";
  v11[1] = v9;
  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

double ViewControllerHierarchyProvider.gather(with:completion:)(id *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = [*a1 _printHierarchy];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v15 = v4;
  v16 = v6;
  v7 = [objc_opt_self() anyWindowPreferingKeyWindow];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 rootViewController];

    if (v9)
    {
      MEMORY[0x24C1FAEA0](0xD000000000000011, 0x8000000249BF6960);
      v10 = [v9 _printHierarchy];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      MEMORY[0x24C1FAEA0](v11, v13);

      v4 = v15;
      v6 = v16;
    }
  }

  a2(v4, v6);

  return result;
}

void ViewHierarchyProvider.gather(with:completion:)(id *a1, void (*a2)(void, unint64_t, __n128))
{
  v3 = [*a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 recursiveDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x24C1FAEA0](v6, v8);

  v9 = [objc_opt_self() anyWindowPreferingKeyWindow];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 rootViewController];

    if (v11)
    {
      MEMORY[0x24C1FAEA0](0xD000000000000011, 0x8000000249BF6960);
      v12 = [v11 view];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 recursiveDescription];

        if (v14)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          MEMORY[0x24C1FAEA0](v15, v17);

          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
        return;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

LABEL_8:
  (a2)(0, 0xE000000000000000);
}

void SpotlightDumpProvider.gather(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v6 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 setFetchAttributes_];

  v8 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v9 = v6;
  v10 = MEMORY[0x24C1FAD20](0xD00000000000001BLL, 0x8000000249BF6980);
  v11 = [v8 initWithQueryString:v10 queryContext:v9];

  v19 = partial apply for closure #1 in SpotlightDumpProvider.gather(with:completion:);
  v20 = v5;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ();
  v18 = &block_descriptor_15_4;
  v12 = _Block_copy(&v15);

  [v11 setFoundItemsHandler_];
  _Block_release(v12);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v5;
  v19 = partial apply for closure #2 in SpotlightDumpProvider.gather(with:completion:);
  v20 = v13;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v18 = &block_descriptor_21_5;
  v14 = _Block_copy(&v15);

  [v11 setCompletionHandler_];
  _Block_release(v14);
  [v11 start];
}

double closure #2 in SpotlightDumpProvider.gather(with:completion:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);

  a2(v7, v6);

  return result;
}

double SpotlightCollectorManagerProvider.gather(with:completion:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = [objc_opt_self() _recursiveDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  a2(v4, v6);

  return result;
}

uint64_t type metadata accessor for DOCDebugInfoManager.OutputKind(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCDebugInfoManager.OutputKind;
  if (!type metadata singleton initialization cache for DOCDebugInfoManager.OutputKind)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DOCDebugInfoManager.OutputKind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCDebugInfoManager.OutputKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)((v0 + 16), (v0 + v2), v5, v6, v7);
}

uint64_t outlined init with take of DOCDebugInfoManager.OutputKind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCDebugInfoManager.OutputKind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #2 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)()
{
  v1 = *(type metadata accessor for DOCDebugInfoManager.OutputKind(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v3);
  v9 = *(v0 + v6);
  v10 = v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  closure #2 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)(v7, v0 + v2, v8, v0 + v5, v9, v11, v12);
}

void type metadata completion function for DOCDebugInfoManager.OutputKind(uint64_t a1)
{
  type metadata accessor for (UIViewController, UIView)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (UIViewController, UIView)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIViewController, UIView))
  {
    type metadata accessor for NSMutableAttributedString(255, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIViewController, UIView));
    }
  }
}

double partial apply for closure #1 in closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)(a1, a2, v7, v2 + 24, v2 + v6, v8);
}

void partial apply for closure #1 in closure #1 in closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in closure #1 in DOCDebugInfoManager.gather(with:context:outputKind:completion:)(v4, v5, v0 + 4, v0 + v2, v6, v7);
}

unint64_t lazy protocol witness table accessor for type NSURL and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSURL and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSURL and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSURL and conformance NSObject);
  }

  return result;
}

void DOCAppearStateTracker.performSkippedViewWillAppearWorkaroundIfNeeded(for:_:)(void *a1, void (*a2)(void))
{
  if (*(v2 + 16) == 2)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  if (*(v2 + 17) == 1)
  {
    *(v2 + 17) = 0;
    if (specialized static DOCAppearStateTracker.checkEnabled_skippedAppearanceEventsWorkarounds(for:)(a1))
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.UI);
      v7 = a1;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v7;
        v12 = v7;
        _os_log_impl(&dword_2493AC000, v8, v9, "WARNING: performing skipped .appearing work for %@", v10, 0xCu);
        outlined destroy of NSObject?(v11);
        MEMORY[0x24C1FE850](v11, -1, -1);
        MEMORY[0x24C1FE850](v10, -1, -1);
      }

      a2();
    }
  }
}

Swift::Void __swiftcall DOCAppearStateTracker.transition(_:to:)(UIViewController *_, DocumentManagerExecutables::DOCAppearState to)
{
  v3 = 0xEB00000000646572;
  v4 = 0x6165707061736964;
  v5 = *to;
  v6 = v2[16];
  v7 = 0x6465726165707061;
  v8 = 0xEC000000676E6972;
  if (v5 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0x6165707061736964;
  }

  v9 = 0x6E69726165707061;
  v10 = 0xE900000000000067;
  if (!*to)
  {
    v9 = 0x6165707061736964;
    v10 = 0xEB00000000646572;
  }

  if (*to <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  v12 = 0xE800000000000000;
  v13 = 0x6465726165707061;
  if (v6 != 2)
  {
    v13 = 0x6165707061736964;
    v12 = 0xEC000000676E6972;
  }

  v14 = 0x6E69726165707061;
  v15 = 0xE900000000000067;
  if (!v2[16])
  {
    v14 = 0x6165707061736964;
    v15 = 0xEB00000000646572;
  }

  if (v2[16] <= 1u)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  if (v2[16] <= 1u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  if (v9 != v16 || v11 != v17)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      return;
    }

    v2[17] = 0;
    if (v5 == 2)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v6 <= 1 && v6)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        v53 = v2;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.UI);
        v23 = _;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v50 = v25;
          log = v24;
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v54 = v49;
          *v26 = 138412546;
          *(v26 + 4) = v23;
          v48 = v27;
          *v27 = v23;
          *(v26 + 12) = 2080;
          v28 = 0xE800000000000000;
          v29 = 0x6465726165707061;
          if (v6 != 2)
          {
            v29 = 0x6165707061736964;
            v28 = 0xEC000000676E6972;
          }

          v30 = 0x6E69726165707061;
          if (v6)
          {
            v31 = 0xE900000000000067;
          }

          else
          {
            v30 = 0x6165707061736964;
            v31 = 0xEB00000000646572;
          }

          if (v6 <= 1)
          {
            v32 = v30;
          }

          else
          {
            v32 = v29;
          }

          if (v6 <= 1)
          {
            v33 = v31;
          }

          else
          {
            v33 = v28;
          }

          v2 = v53;
          v34 = v23;
          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v54);

          *(v26 + 14) = v35;
          _os_log_impl(&dword_2493AC000, log, v50, "WARNING: %@ transitioned from %s to .appeared - skipped the .appearing state!", v26, 0x16u);
          outlined destroy of NSObject?(v48);
          MEMORY[0x24C1FE850](v48, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x24C1FE850](v49, -1, -1);
          MEMORY[0x24C1FE850](v26, -1, -1);
        }

        else
        {

          v2 = v53;
        }

        v2[17] = 1;
      }
    }

LABEL_49:
    v2[18] = 0;
    if (v5)
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
LABEL_66:
        v2[16] = v5;
        return;
      }
    }

    else
    {
    }

    if (v6 > 2)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Logger.UI);
        v39 = _;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          loga = swift_slowAlloc();
          v54 = loga;
          *v42 = 138412546;
          *(v42 + 4) = v39;
          *v43 = v39;
          *(v42 + 12) = 2080;
          v44 = 0xE800000000000000;
          v45 = 0x6E69726165707061;
          if (v6 == 1)
          {
            v44 = 0xE900000000000067;
          }

          else
          {
            v45 = 0x6465726165707061;
          }

          if (v6)
          {
            v4 = v45;
            v3 = v44;
          }

          v46 = v39;
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v54);

          *(v42 + 14) = v47;
          _os_log_impl(&dword_2493AC000, v40, v41, "WARNING: %@ transitioned from %s to .disappeared - bypassing the .disappearing", v42, 0x16u);
          outlined destroy of NSObject?(v43);
          MEMORY[0x24C1FE850](v43, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(loga);
          MEMORY[0x24C1FE850](loga, -1, -1);
          MEMORY[0x24C1FE850](v42, -1, -1);
        }

        else
        {
        }

        v2[18] = 1;
      }
    }

    goto LABEL_66;
  }
}

uint64_t DOCAppearStateTracker.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t DOCAppearStateTracker.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t DOCAppearState.description.getter()
{
  v1 = 0x6165707061736964;
  v2 = 0x6465726165707061;
  if (*v0 != 2)
  {
    v2 = 0x6165707061736964;
  }

  if (*v0)
  {
    v1 = 0x6E69726165707061;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

DocumentManagerExecutables::DOCAppearState_optional __swiftcall DOCAppearState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCAppearState.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCAppearState()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DOCAppearState(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCAppearState(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCAppearState(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646572;
  v3 = 0x6165707061736964;
  v4 = 0xE800000000000000;
  v5 = 0x6465726165707061;
  if (*v1 != 2)
  {
    v5 = 0x6165707061736964;
    v4 = 0xEC000000676E6972;
  }

  if (*v1)
  {
    v3 = 0x6E69726165707061;
    v2 = 0xE900000000000067;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCAppearState()
{
  v1 = 0x6165707061736964;
  v2 = 0x6465726165707061;
  if (*v0 != 2)
  {
    v2 = 0x6165707061736964;
  }

  if (*v0)
  {
    v1 = 0x6E69726165707061;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void one-time initialization function for _featureDisabledByUD()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000002CLL, 0x8000000249BF6D50);
  v2 = [v0 BOOLForKey_];

  _featureDisabledByUD = v2;
}

uint64_t specialized static DOCAppearStateTracker.checkEnabled_skippedAppearanceEventsWorkarounds(for:)(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0xD000000000000011;
    v6 = 0x8000000249BF6D30;
  }

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.UI);
      v21 = a1;

      v12 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v12, v22))
      {

        goto LABEL_25;
      }

      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v14 = 138412546;
      *(v14 + 4) = v21;
      *v23 = v21;
      *(v14 + 12) = 2080;
      v25 = v21;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v27);

      *(v14 + 14) = v26;
      _os_log_impl(&dword_2493AC000, v12, v22, "WARNING: %@ will not perform skipped .appearing work (not allowed for %s)", v14, 0x16u);
      outlined destroy of NSObject?(v23);
      MEMORY[0x24C1FE850](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v18 = v24;
      goto LABEL_23;
    }
  }

  if (one-time initialization token for _featureDisabledByUD != -1)
  {
    swift_once();
  }

  if (!_featureDisabledByUD)
  {
    return 1;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BF6D50, &v27);
    _os_log_impl(&dword_2493AC000, v12, v13, "WARNING: %@ will not perform skipped .appearing work (%s was true)", v14, 0x16u);
    outlined destroy of NSObject?(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v18 = v16;
LABEL_23:
    MEMORY[0x24C1FE850](v18, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

LABEL_25:

  return 0;
}

unint64_t lazy protocol witness table accessor for type DOCAppearState and conformance DOCAppearState()
{
  result = lazy protocol witness table cache variable for type DOCAppearState and conformance DOCAppearState;
  if (!lazy protocol witness table cache variable for type DOCAppearState and conformance DOCAppearState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAppearState and conformance DOCAppearState);
  }

  return result;
}

id protocol witness for DOCItemCollectionViewSectionHeaderTitleControl.attributedText.getter in conformance UILabel()
{
  v1 = [*v0 attributedText];

  return v1;
}

void protocol witness for DOCItemCollectionViewSectionHeaderTitleControl.attributedText.setter in conformance UILabel(void *a1)
{
  [*v1 setAttributedText_];
}

id DOCItemCollectionViewSectionHeader.seeAllString.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x298);
  v2 = v1();
  result = _DocumentManagerBundle();
  v4 = result;
  if (v2 < 1)
  {
    if (result)
    {
      v16._object = 0x8000000249BF7270;
      v12._countAndFlagsBits = 0x6C6C4120776F6853;
      v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v13.value._object = 0xEB00000000656C62;
      v12._object = 0xE800000000000000;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0xD000000000000028;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v4, v14, v16)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    if (result)
    {
      v15._object = 0x8000000249BF72A0;
      v5._countAndFlagsBits = 0x6C6C4120776F6853;
      v5._object = 0xED00002964252820;
      v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v6.value._object = 0xEB00000000656C62;
      v15._countAndFlagsBits = 0xD00000000000005CLL;
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_249B9A480;
      v9 = v1();
      v10 = MEMORY[0x277D83C10];
      *(v8 + 56) = MEMORY[0x277D83B88];
      *(v8 + 64) = v10;
      *(v8 + 32) = v9;
      countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

      return countAndFlagsBits;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id DOCItemCollectionViewSectionHeader.sectionTitleControl.getter()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl];
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl];
  }

  else
  {
    v4 = closure #1 in DOCItemCollectionViewSectionHeader.sectionTitleControl.getter(v0);
    v5 = *v1;
    *v1 = v4;
    *(v1 + 1) = v6;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id closure #1 in DOCItemCollectionViewSectionHeader.sectionTitleControl.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v2 setNumberOfLines_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  if (one-time initialization token for doc_rowHeaderTitleSetting != -1)
  {
    swift_once();
  }

  v3 = static UIFont.doc_rowHeaderTitleSetting;
  v4 = *&qword_27EEF0BF8;
  v5 = objc_opt_self();
  v6 = v3;
  result = [v5 _preferredFontForTextStyle_weight_];
  if (result)
  {
    v8 = result;

    [v2 setFont_];
    v9 = *MEMORY[0x277D76558];
    v10 = v2;
    v11 = [v10 accessibilityTraits];
    if ((v9 & ~v11) != 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    [v10 setAccessibilityTraits_];

    v13 = [a1 contentView];
    [v13 addSubview_];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCItemCollectionViewSectionHeader.expandToggleButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton;
  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton])
  {
    v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton];
  }

  else
  {
    v2 = closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter(void *a1)
{
  v29 = a1;
  v1 = type metadata accessor for UIButton.Configuration();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - v12;
  v14 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton, 0x277D75220);
  v15 = *(v2 + 16);
  v15(v9, v13, v1);
  v16 = swift_allocObject();
  v17 = v29;
  swift_unknownObjectWeakInit();
  v15(v5, v9, v1);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #4 in closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter;
  *(v18 + 24) = v16;
  swift_retain_n();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v19 = UIButton.init(configuration:primaryAction:)();

  v20 = *(v2 + 8);
  v20(v9, v1);

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #5 in closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_204;
  v22 = _Block_copy(aBlock);

  [v19 setConfigurationUpdateHandler_];
  _Block_release(v22);
  v23 = v19;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v24) = 1148846080;
  [v23 setContentCompressionResistancePriority:0 forAxis:v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16DOCViewDecoratorCySo8UIButtonCGMd, &_s26DocumentManagerExecutables16DOCViewDecoratorCySo8UIButtonCGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v23;
  v26 = [v17 contentView];
  [v26 addSubview_];

  v20(v13, v1);
  return v25;
}

void closure #4 in closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x428))();
    if (v3)
    {
      v5 = v3;
      v6 = v4;
      v3(v2);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5, v6);
    }
  }
}

void closure #5 in closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for UIButton.Configuration();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    UIButton.configuration.getter();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

      outlined destroy of CharacterSet?(v16, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    }

    else
    {
      v50 = a1;
      (*(v18 + 32))(v21, v16, v17);
      v24 = v23;
      v25 = [v24 tintColor];
      v51 = v18;
      if (v25)
      {

        UIButton.Configuration.baseForegroundColor.setter();
        v26 = objc_opt_self();
        v49 = v24;
        v27 = *MEMORY[0x277D76968];

        v28 = v27;
        v29 = v49;
        v30 = [v26 preferredFontForTextStyle_];
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v52 = v30;
        lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
        AttributedString.subscript.setter();
        v31 = type metadata accessor for AttributedString();
        (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
        UIButton.Configuration.attributedTitle.setter();
        v32 = v51;
        (*(v51 + 16))(v12, v21, v17);
        (*(v32 + 56))(v12, 0, 1, v17);
        v33 = UIButton.configuration.setter();
        v34 = MEMORY[0x277D85000];
        v35 = (*((*MEMORY[0x277D85000] & *v29) + 0x280))(v33);
        if (v36)
        {
          v37 = v35;
          v38 = v36;
          (*((*v34 & *v29) + 0x410))(&v52);
          v39 = v53;
          if (v53)
          {
            v40 = v52;
            v41 = v55;
            v48 = v54;
            v42 = v56;
            v43 = objc_opt_self();
            v44 = MEMORY[0x24C1FAD20](v37, v38);

            v45 = MEMORY[0x24C1FAD20](v40, v39);
            v46 = [v43 groupBySectionToggleIdentifier:v44 sectionIdentifier:v45 expanded:(*(*v42 + 136))() & 1];

            if (!v46)
            {
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v46 = MEMORY[0x24C1FAD20](v47);
            }

            [v50 setAccessibilityIdentifier_];

            outlined consume of DOCCollectionSection?(v40, v39, v48, v41, v42);
            (*(v51 + 8))(v21, v17);
          }

          else
          {
            (*(v51 + 8))(v21, v17);
          }
        }

        else
        {
          (*(v32 + 8))(v21, v17);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id DOCItemCollectionViewSectionHeader.expandToggleButtonVisibleConstraint.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButtonVisibleConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButtonVisibleConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButtonVisibleConstraint);
  }

  else
  {
    v4 = [*(DOCItemCollectionViewSectionHeader.expandToggleButton.getter() + 16) leadingAnchor];

    v5 = DOCItemCollectionViewSectionHeader.sectionTitleControl.getter();
    v6 = [v5 trailingAnchor];

    v7 = [v4 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v6 multiplier:1.0];
    LODWORD(v8) = 1148682240;
    [v7 setPriority_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id DOCItemCollectionViewSectionHeader.attributedTitle.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x268))();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v3;
  if (String.count.getter() < 1)
  {

LABEL_8:
    v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v24 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v25 = [v23 initWithString_];

    return v25;
  }

  v6 = [v0 traitCollection];
  v7 = specialized static UIFont.doc_rowHeaderTitleFontForTags(compatibleWith:)(v6);

  (*((*v1 & *v0) + 0x250))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
  *(inited + 40) = v7;
  v10 = v9;
  v11 = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = MEMORY[0x24C1FAD20](v4, v5);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [objc_opt_self() requestForChainedTags:isa tagDimension:v13 text:v14 textAttributes:16.0];

  if (v15)
  {

    [v15 setTagToTitleSpacing_];
    [v11 capHeight];
    v17 = (v16 + -24.0) * 0.5;
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    [v15 setTagBaselineAdjustment_];
    v18 = v15;
    [v18 setLayoutDirection_];

    v19 = [objc_opt_self() shared];
    aBlock[4] = closure #1 in DOCItemCollectionViewSectionHeader.attributedTitle.getter;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
    aBlock[3] = &block_descriptor_163_1;
    v20 = _Block_copy(aBlock);
    v21 = [v19 renderAttributedStringWithRequest:v18 titleHighlighter:v20];

    _Block_release(v20);
    return v21;
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v27 = MEMORY[0x24C1FAD20](v4, v5);

    v28 = [v26 initWithString_];

    return v28;
  }
}