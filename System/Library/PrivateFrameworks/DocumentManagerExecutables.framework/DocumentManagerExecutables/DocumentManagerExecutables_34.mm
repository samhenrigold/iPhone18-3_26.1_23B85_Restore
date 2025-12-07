Swift::Int closure #1 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  outlined assign with copy of IndexPath?(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return OS_dispatch_semaphore.signal()();
}

void DOCItemCollectionViewController.getCell(for:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v10[4] = partial apply for closure #1 in DOCItemCollectionViewController.getCell(for:_:);
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_320;
  v8 = _Block_copy(v10);
  v9 = v3;
  swift_unknownObjectRetain();

  [a1 fetchURL_];
  _Block_release(v8);
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.getCell(for:_:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{

  v8 = swift_unknownObjectRetain();
  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v8, a1, a3, a4, a2);

  return swift_unknownObjectRelease();
}

void DOCItemCollectionViewController.previewController(_:viewFor:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:);
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
  v10[3] = &block_descriptor_326;
  v9 = _Block_copy(v10);

  [v4 getViewFor_waitForNewThumbnail:a2 :{0, v9}];
  _Block_release(v9);
}

void protocol witness for DOCPreviewControllerTransitioningProvider.previewController(_:viewFor:_:) in conformance DOCItemCollectionViewController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)partial apply;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
  v10[3] = &block_descriptor_908;
  v9 = _Block_copy(v10);

  [v4 getViewFor_waitForNewThumbnail:a2 :{0, v9}];
  _Block_release(v9);
}

uint64_t DOCItemCollectionViewController.shouldAdjustScrollViewInsetWhenRenaming.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xAE8))();
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 effectiveFullBrowser];

  v4 = [v3 pickerFilenameView];
  if (!v4)
  {
    return 1;
  }

  return 0;
}

Swift::Void __swiftcall DOCItemCollectionViewController.renameWillBegin()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v35 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v39 = v4;
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = MEMORY[0x277D85000];
  if (v14)
  {
    v36 = v9;
    v37 = v6;
    v38 = v5;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BDF090, &v40);
    *(v16 + 12) = 2080;
    v18 = v15;
    v19 = (*((*v15 & *v11) + 0x1498))();
    if (v19)
    {
      (*(*v19 + 272))(v19);

      swift_getObjectType();
      v20 = DOCNode.nodeDescription.getter();
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 4271950;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v40);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_2493AC000, v12, v13, "%s node: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);

    v6 = v37;
    v5 = v38;
    v9 = v36;
  }

  else
  {
    v18 = MEMORY[0x277D85000];
  }

  v24 = v18;
  v25 = *((*v18 & *v11) + 0xBD8);
  if (!v25() || v25() == 1)
  {
    v26 = (*((*v18 & *v11) + 0x1498))();
    if (v26)
    {
      v27 = (*(*v26 + 272))(v26);

      v28 = *v18 & *v11;
      v29 = v39;
      (*(v28 + 3480))(v27);
      if ((*(v6 + 48))(v29, 1, v5) == 1)
      {
        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(v29, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        (*(v6 + 32))(v9, v29, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
        v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_249B9A480;
        (*(v6 + 16))(v31 + v30, v9, v5);
        (*((*v24 & *v11) + 0x1300))(0, v31);

        swift_unknownObjectRelease();
        (*(v6 + 8))(v9, v5);
      }
    }
  }

  v32 = [v11 traitCollection];
  DOCItemCollectionViewController.updateNavBarHiddenForActiveRename(traitCollection:)(v32);

  v33 = (*((*v24 & *v11) + 0x1010))();
  v34 = [v33 panGestureRecognizer];

  [v34 setEnabled_];
}

void closure #1 in DOCItemCollectionViewController.renameFinished(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v40[-v4];
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *a1) + 0x1498))(v9);
  if (v13)
  {
    v14 = (*(*v13 + 272))(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = (*((*v12 & *a1) + 0x1010))(v13);
  v16 = [v15 panGestureRecognizer];

  [v16 setEnabled_];
  (*((*v12 & *a1) + 0x14A0))(0);
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 0;
  if (*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) == 1)
  {
    v17 = [a1 navigationController];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v20 = (*((*v12 & *a1) + 0xAE8))();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 effectiveFullBrowser];
        v18 = [v22 internalNavigationController];

        v19 = 0;
        goto LABEL_10;
      }

      v18 = 0;
    }

    v19 = 1;
LABEL_10:
    DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:)(0, v18, v19);
  }

  if ((*((*v12 & *a1) + 0xBD8))() == 3 && (*((*v12 & *a1) + 0x1268))())
  {
    (*((*v12 & *a1) + 0xD98))();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v38 = *(v7 + 32);
      v38(v11, v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
      v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_249B9A480;
      v38((v23 + v39), v11, v6);
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  v23 = MEMORY[0x277D84F90];
LABEL_16:
  (*((*v12 & *a1) + 0x1300))(0, v23);

  if (GSEventIsHardwareKeyboardAttached() && v14)
  {
    swift_getObjectType();
    DOCNode.nodeType.getter(&v41);
    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_249BA0290;
      *(v24 + 32) = v14;
      v25 = *((*v12 & *a1) + 0x1378);
      swift_unknownObjectRetain_n();
      v25(v24, 0, 0);
    }

    else
    {
      v26 = swift_allocObject();
      *(v26 + 16) = a1;
      *(v26 + 24) = v14;
      v46 = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.renameFinished(_:);
      v47 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v45 = &block_descriptor_937;
      v27 = _Block_copy(&aBlock);
      swift_unknownObjectRetain_n();
      v28 = a1;

      [v14 fetchURL_];
      _Block_release(v27);
    }

    swift_unknownObjectRelease();
  }

  v29 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (([v29 forMovingDocuments] & 1) == 0 && (objc_msgSend(v29, sel_forSavingDocuments) & 1) == 0 && (objc_msgSend(v29, sel_forPickingFolders) & 1) == 0 && !objc_msgSend(v29, sel_forPickingDownloadsFolder) || *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) != 1)
  {
    goto LABEL_30;
  }

  if (v14)
  {
    swift_getObjectType();
    v30 = DOCNode.fpfs_syncFetchFPItem()();
    if (v30)
    {
      v31 = v30;
      v32 = [objc_opt_self() defaultManager];
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v34 = [v31 itemID];
      v35 = swift_allocObject();
      v35[2] = v31;
      v35[3] = partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.renameFinished(_:);
      v35[4] = v33;
      v46 = partial apply for closure #1 in FPItemManager.doc_refetchItem(_:completion:);
      v47 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v45 = &block_descriptor_931;
      v36 = _Block_copy(&aBlock);
      v37 = v31;

      [v32 fetchItemForItemID:v34 completionHandler:v36];
      _Block_release(v36);
      swift_unknownObjectRelease();

      goto LABEL_31;
    }

LABEL_30:
    swift_unknownObjectRelease();
  }

LABEL_31:
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) = 0;
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.renameFinished(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v15 + 32))(v18, v13, v14);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClassUnconditional();
  (*(v15 + 16))(v9, v18, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  v21 = (*((*MEMORY[0x277D85000] & *a3) + 0xDA0))(v20, v9);
  outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v21)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = v21;
    v23 = a3;
    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();
  }

  return (*(v15 + 8))(v18, v14);
}

double closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.renameFinished(_:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = *MEMORY[0x277D85000] & *a1;
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = a2;
  v6 = *(v5 + 4984);
  swift_unknownObjectRetain();
  v6(v4, 0, 0);

  return result;
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.renameFinished(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.renameFinished(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_946;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v18);
}

void closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.renameFinished(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = *((*MEMORY[0x277D85000] & *Strong) + 0x18E0);
      v6 = a2;
      v5();
    }

    else
    {
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.Rename);
      v6 = v4;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v8, v9))
      {

        return;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BCE890, &v17);
      *(v10 + 12) = 2080;
      v12 = (*((*MEMORY[0x277D85000] & *v6) + 0x1498))();
      if (v12)
      {
        (*(*v12 + 272))(v12);

        swift_getObjectType();
        v13 = DOCNode.nodeDescription.getter();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 4271950;
      }

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v17);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_2493AC000, v8, v9, "%s Could not refetch item when trying to open the newly created folder: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }
  }
}

uint64_t protocol witness for DOCInlineRenameControllerDelegate.shouldAdjustScrollViewInsetWhenRenaming.getter in conformance DOCItemCollectionViewController()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xAE8))();
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 effectiveFullBrowser];

  v4 = [v3 pickerFilenameView];
  if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  type metadata accessor for MainActor();
  v8[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[17] = v10;
  v8[18] = v9;

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:), v10, v9);
}

uint64_t closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:);
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[12];

    return DOCItemCollectionViewController.createNewFolder(_:inFolder:)(v5, v3, v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

{
  v26 = v0;
  v1 = v0[21];

  if (v1)
  {
    v2 = v0[21];
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.Rename);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[21];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE0E80, &v25);
      *(v8 + 12) = 2112;
      *(v8 + 14) = v4;
      *v9 = v7;
      v11 = v4;
      _os_log_impl(&dword_2493AC000, v5, v6, "%s new folder action created item: %@. Attempting to reveal", v8, 0x16u);
      outlined destroy of CharacterSet?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1FE850](v10, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    v12 = v0[19];
    v13 = v0[15];
    v14 = [v4 itemIdentifier];
    v15 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation];
    *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249BA0290;
    *(v16 + 32) = v4;
    v17 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v12;
    v19[4] = v13;
    v0[6] = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:);
    v0[7] = v19;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v0[5] = &block_descriptor_1218;
    v20 = _Block_copy(v0 + 2);
    v21 = v17;
    v22 = v12;

    [v22 revealWithNodes:isa selectEvenIfVisible:0 completionBlock:v20];
    _Block_release(v20);
  }

  else
  {
    v22 = v0[19];
  }

  v23 = v0[1];

  return v23();
}

uint64_t closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:), v4, v3);
}

uint64_t DOCItemCollectionViewController.createNewFolder(_:inFolder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](DOCItemCollectionViewController.createNewFolder(_:inFolder:), v6, v5);
}

uint64_t DOCItemCollectionViewController.createNewFolder(_:inFolder:)()
{
  swift_getObjectType();
  v1 = DOCNode.fpfs_syncFetchFPItem()();
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 48);
    v11 = *(v0 + 24);
    v4 = static MainActor.shared.getter();
    *(v0 + 96) = v4;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v11;
    *(v5 + 40) = v3;
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
    *v6 = v0;
    v6[1] = DOCItemCollectionViewController.createNewFolder(_:inFolder:);
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 16, v4, v8, 0xD00000000000001CLL, 0x8000000249BDF0B0, partial apply for closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:), v5, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9(0);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](DOCItemCollectionViewController.createNewFolder(_:inFolder:), v3, v2);
}

{
  v26 = v0;

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = one-time initialization token for Rename;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.Rename);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 88);
    if (v8)
    {
      v24 = *(v0 + 88);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315650;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BDF0B0, &v25);
      *(v10 + 12) = 2080;
      v12 = [v5 displayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

      *(v10 + 14) = v16;
      *(v10 + 22) = 2080;
      v17 = [v5 itemIdentifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v25);

      *(v10 + 24) = v21;
      _os_log_impl(&dword_2493AC000, v6, v7, "%s: new folder named %s was created with itemIdentifier: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22(v1);
}

void *closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(char a1, void *a2, void *a3, uint64_t a4)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.Rename);
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE0E80, &v25);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *(v11 + 22) = 2080;
    v14 = (a1 & 1) == 0;
    if (a1)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    *v12 = v8;
    if (v14)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v17 = v8;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_2493AC000, v9, v10, "%s reveal item: %@ success: %s", v11, 0x20u);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v19 = MEMORY[0x277D85000];
  v20 = *((*MEMORY[0x277D85000] & *a3) + 0x1968);
  v21 = v8;
  v20(v8);
  v22 = *((*v19 & *a3) + 0x1980);

  v22(v23);
  return DOCItemCollectionViewController.resetReadyForRenameTimer()();
}

void *DOCItemCollectionViewController.resetReadyForRenameTimer()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1960);
  result = v2();
  if (result)
  {

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.Rename);
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE0EB0, v27);
      *(v8 + 12) = 2080;
      v10 = v2();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 itemIdentifier];

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 4271950;
      }

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v27);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_2493AC000, v6, v7, "%s: item: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    v17 = (*((*v1 & *v5) + 0x1990))();
    [v17 invalidate];

    v18 = (*((*v1 & *v5) + 0xA68))();
    v19 = *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
    v20 = v19;

    if (v19 && (v21 = [v20 isUsingFPFS], v20, v21))
    {
      v22 = 0.01;
    }

    else
    {
      v22 = 0.1;
    }

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27[4] = partial apply for closure #1 in DOCItemCollectionViewController.resetReadyForRenameTimer();
    v27[5] = v24;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v27[3] = &block_descriptor_1222;
    v25 = _Block_copy(v27);

    v26 = [v23 scheduledTimerWithTimeInterval:0 repeats:v25 block:v22];
    _Block_release(v25);
    return (*((*v1 & *v5) + 0x1998))(v26);
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5NeverOGMd, &_sScCySo6FPItemCSgs5NeverOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v35 - v12;

  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = 256;
  v17 = type metadata accessor for DOCBlockOperation();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v19 = partial apply for closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:);
  v19[1] = v16;
  v37.receiver = v18;
  v37.super_class = v17;
  v20 = a2;

  v21 = objc_msgSendSuper2(&v37, sel_init);
  v22 = objc_allocWithZone(type metadata accessor for DOCCreateNewFolderPostflightUIOperation());
  v23 = &v22[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName];
  *v23 = a3;
  *(v23 + 1) = a4;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v24 = type metadata accessor for DOCActionUIOperation();
  v36.receiver = v22;
  v36.super_class = v24;

  v25 = objc_msgSendSuper2(&v36, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249BA1010;
  *(v26 + 32) = v21;
  *(v26 + 40) = v25;
  v27 = objc_allocWithZone(type metadata accessor for DOCChainOperation());
  v28 = v21;
  v29 = v25;
  v30 = DOCChainOperation.init(operations:)(v26);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:);
  *(v31 + 24) = v15;
  v32 = MEMORY[0x277D85000];
  v33 = *((*MEMORY[0x277D85000] & *v30) + 0xB0);

  v33(partial apply for closure #2 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:), v31);
  HIBYTE(v35) = 1;
  (*((*v32 & *v30) + 0x150))(&v35 + 7);
  v34 = [objc_opt_self() mainQueue];
  [v34 addOperation_];
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5NeverOGMd, &_sScCySo6FPItemCSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1448))() & 1) == 0)
  {
    return 0;
  }

  result = (*((*v2 & *v0) + 0x1498))();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = (*result + 272);
  v6 = *v5;
  v88 = (*v5)();
  result = (*((*v2 & *v0) + 0xBD8))();
  if (result != 2 || (result = (*((*v2 & *v0) + 0xF10))(), (result & 1) != 0))
  {
    v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v7)
    {
      v8 = (*((*v2 & *v7) + 0x258))();
      goto LABEL_9;
    }

    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v9)
  {
    goto LABEL_63;
  }

  v8 = (*((*v2 & *v9) + 0x290))();
LABEL_9:
  v10 = v8;
  v86 = v6;
  if (v8 >> 62)
  {
LABEL_27:
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_28:

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.Rename);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v18 = v86;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v89 = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v89);
      *(v28 + 12) = 2080;
      v86();
      swift_getObjectType();
      v30 = DOCNode.nodeDescription.getter();
      v32 = v31;
      swift_unknownObjectRelease();
      v33 = v30;
      v18 = v86;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v89);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_2493AC000, v26, v27, "%s: Couldn't find item by matching DOCNode: %s in itemCollection", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    else
    {
    }

    v35 = [v18() filename];
    swift_unknownObjectRelease();
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v13 = findItem #1 (matching:) in DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()(v36, v38, v1);

    if (v13)
    {
      swift_unknownObjectRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v89 = v43;
        *v42 = 136315394;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v89);
        *(v42 + 12) = 2080;
        swift_getObjectType();
        v44 = DOCNode.nodeDescription.getter();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v89);

        *(v42 + 14) = v46;
        _os_log_impl(&dword_2493AC000, v40, v41, "%s: Found new item matching by file name: %s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v42, -1, -1);
      }

LABEL_37:
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v47 = *(*v4 + 280);
      v48 = swift_unknownObjectRetain();
      v47(v48);
      goto LABEL_38;
    }

    v69 = (*(*v4 + 248))(v39);
    if (v70)
    {
      v13 = findItem #1 (matching:) in DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()(v69, v70, v1);

      if (v13)
      {
        swift_unknownObjectRetain();
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v89 = v74;
          *v73 = 136315394;
          *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v89);
          *(v73 + 12) = 2080;
          swift_getObjectType();
          v75 = DOCNode.nodeDescription.getter();
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v89);

          *(v73 + 14) = v77;
          _os_log_impl(&dword_2493AC000, v71, v72, "%s: Found new item matching by proposed file name: %s", v73, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v74, -1, -1);
          MEMORY[0x24C1FE850](v73, -1, -1);
        }

        swift_unknownObjectRetain();
        goto LABEL_37;
      }
    }

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v89 = v81;
      *v80 = 136315138;
      *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v89);
      _os_log_impl(&dword_2493AC000, v78, v79, "%s: Failed at all attempts to find item being renamed", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x24C1FE850](v81, -1, -1);
      MEMORY[0x24C1FE850](v80, -1, -1);
    }

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v89 = v85;
      *v84 = 136315138;
      *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v89);
      _os_log_impl(&dword_2493AC000, v82, v83, "%s: Failed. Unable to find item being renamed", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x24C1FE850](v85, -1, -1);
      MEMORY[0x24C1FE850](v84, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

LABEL_11:
  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x24C1FC540](v12, v10);
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_20;
    }

LABEL_15:
    swift_getObjectType();
    if (DOCNode.isEqualTo(node:)(v88))
    {
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
    ++v12;
    if (v14 == v11)
    {
      goto LABEL_28;
    }
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v13 = *(v10 + 8 * v12 + 32);
  swift_unknownObjectRetain();
  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
LABEL_21:

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.Rename);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = v86;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v89 = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v89);
    *(v19 + 12) = 2080;
    v86();
    swift_getObjectType();
    v21 = DOCNode.nodeDescription.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v89);
    v18 = v86;

    *(v19 + 14) = v24;
    _os_log_impl(&dword_2493AC000, v16, v17, "%s: Found item by matching by matching identifiers: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

LABEL_38:
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (DOCNode.isEqualTo(node:)(v88))
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.Rename);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v89 = v53;
      *v52 = 136315138;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v89);
      _os_log_impl(&dword_2493AC000, v50, v51, "%s: No update needed", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C1FE850](v53, -1, -1);
      MEMORY[0x24C1FE850](v52, -1, -1);

      swift_unknownObjectRelease();

      goto LABEL_48;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return 1;
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.Rename);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v89 = v87;
      *v57 = 136315650;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v89);
      *(v57 + 12) = 2080;
      v58 = [v18() filename];
      swift_unknownObjectRelease();
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v18;
      v62 = v61;

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v62, &v89);

      *(v57 + 14) = v63;
      *(v57 + 22) = 2080;
      (v60)(v64);
      swift_getObjectType();
      v65 = DOCNode.nodeDescription.getter();
      v67 = v66;
      swift_unknownObjectRelease();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v89);

      *(v57 + 24) = v68;
      _os_log_impl(&dword_2493AC000, v55, v56, "%s: Updating renameController with new item name: %s node: %s", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v87, -1, -1);
      MEMORY[0x24C1FE850](v57, -1, -1);
    }

    (*(*v4 + 280))(v13);

    swift_unknownObjectRelease();
LABEL_48:
    swift_unknownObjectRelease();
    return 1;
  }
}

uint64_t DOCItemCollectionViewController.repositionRenameToNewCellIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x19A8))();
  [v2 invalidate];

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = partial apply for closure #1 in DOCItemCollectionViewController.repositionRenameToNewCellIfNeeded();
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v8[3] = &block_descriptor_1341;
  v5 = _Block_copy(v8);

  v6 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:0.1];
  _Block_release(v5);
  return (*((*v1 & *v0) + 0x1998))(v6);
}

double DOCItemCollectionViewController.abortRename()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x1498);
  v2 = v1();
  if (v2)
  {
    (*(*v2 + 272))(v2);

    swift_getObjectType();
    v3 = DOCNode.nodeDescription.getter();
    v5 = v4;
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Rename);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E655274726F6261, 0xED00002928656D61, &v14);
    *(v9 + 12) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, &v14);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: detected unrecoverable state: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {
  }

  v12 = v1();
  if (v12)
  {
    (*(*v12 + 472))(v12);
  }

  return result;
}

void DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1960))();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() defaultManager];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v2;
    v8[4] = partial apply for closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem();
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v8[3] = &block_descriptor_1228;
    v5 = _Block_copy(v8);
    v6 = v0;
    v7 = v2;

    [v3 fetchURLForItem:v7 completionHandler:v5];
    _Block_release(v5);
  }
}

double closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v19 - v11;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v19 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  outlined init with take of (key: URL, value: FPItem)(v12, v15 + v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v15 + v14) = a3;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v16 = a3;
  v17 = a4;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()(uint64_t a1, void *a2, char *a3)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v22 = a2;
LABEL_7:
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.Rename);
    v27 = v22;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000249BE0ED0, &v58);
      *(v30 + 12) = 2080;
      v32 = (*((*MEMORY[0x277D85000] & *v27) + 0x1960))();
      if (v32)
      {
        v33 = v32;
        v34 = [v32 itemIdentifier];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v35 = 4271950;
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v58);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_2493AC000, v28, v29, "%s: Enqueued folder not found in item collection: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

    return;
  }

  (*(v18 + 32))(v21, v16, v17);
  (*(v18 + 16))(v12, v21, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v23 = MEMORY[0x277D85000];
  v24 = (*((*MEMORY[0x277D85000] & *a2) + 0xDA0))(v57, v12);
  outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v22 = a2;
  if (!v24)
  {
    (*(v18 + 8))(v21, v17);
    goto LABEL_7;
  }

  (*((*v23 & *a2) + 0xD98))(v24);
  v25 = type metadata accessor for IndexPath();
  if ((*(*(v25 - 8) + 48))(v8, 1, v25) == 1)
  {
    (*(v18 + 8))(v21, v17);
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    goto LABEL_7;
  }

  outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.Rename);
  v40 = a2;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v56 = v42;
    v57 = v21;
    v43 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58 = v55;
    *v43 = 136315394;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000249BE0ED0, &v58);
    *(v43 + 12) = 2080;
    v44 = (*((*v23 & *v40) + 0x1960))();
    if (v44)
    {
      v45 = v44;
      v46 = [v44 itemIdentifier];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v47 = 4271950;
      v49 = 0xE300000000000000;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v58);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_2493AC000, v41, v56, "%s: Resuming enqueued inline rename of folder created: %s", v43, 0x16u);
    v51 = v55;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v51, -1, -1);
    MEMORY[0x24C1FE850](v43, -1, -1);

    v21 = v57;
    v23 = MEMORY[0x277D85000];
  }

  else
  {
  }

  v52 = *((*v23 & *v40) + 0x1978);
  v53 = swift_unknownObjectRetain();
  v54 = v52(v53);
  DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(v24, v54);
  swift_unknownObjectRelease();

  (*((*v23 & *v40) + 0x1968))(0);
  (*((*v23 & *v40) + 0x1980))(MEMORY[0x277D84F90]);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v21, v17);
}

void DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, unint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    swift_unknownObjectRetain();
    [v2 setEditing_];
    v6 = a2 >> 62;
    if (a2 >> 62)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      if ((*((*MEMORY[0x277D85000] & *v2) + 0xBD8))() != 3)
      {
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.Rename);

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v30 = v22;
          *v21 = 136315394;
          *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0EF0, &v30);
          *(v21 + 12) = 2048;
          if (v6)
          {
            v23 = __CocoaSet.count.getter();
          }

          else
          {
            v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v21 + 14) = v23;

          _os_log_impl(&dword_2493AC000, v19, v20, "%s not in column view with: %ld nodes to move. Moving nodes then starting rename", v21, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x24C1FE850](v22, -1, -1);
          MEMORY[0x24C1FE850](v21, -1, -1);
        }

        else
        {
        }

        v25 = swift_allocObject();
        v25[2] = 0xD000000000000026;
        v25[3] = 0x8000000249BE0EF0;
        v25[4] = a2;
        v25[5] = v3;
        v25[6] = a1;
        swift_unknownObjectRetain();

        specialized DOCItemCollectionViewController.move(nodes:to:completion:)(a2, a1, partial apply for closure #1 in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:), v25, v3);

        goto LABEL_37;
      }

      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.Rename);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v8, v9))
      {

LABEL_36:
        prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(0xD000000000000026, 0x8000000249BE0EF0, v3, a1, a2);
LABEL_37:

        swift_unknownObjectRelease();
        return;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0EF0, &v30);
      *(v10 + 12) = 2048;
      if (v6)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 14) = v12;

      _os_log_impl(&dword_2493AC000, v8, v9, "%s in column view with: %ld nodes to move", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      v24 = v10;
      goto LABEL_34;
    }

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.Rename);
    v8 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v8, v27))
    {
      goto LABEL_35;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0EF0, &v30);
    _os_log_impl(&dword_2493AC000, v8, v27, "%s no nodes to move, preparing to rename", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C1FE850](v29, -1, -1);
    v24 = v28;
LABEL_34:
    MEMORY[0x24C1FE850](v24, -1, -1);
LABEL_35:

    goto LABEL_36;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.Rename);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0EF0, &v30);
    _os_log_impl(&dword_2493AC000, v14, v15, "%s: nil folder node. Bailing and cleaning up", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(0xD000000000000026, 0x8000000249BE0EF0, v3);
}

void closure #1 in DOCItemCollectionViewController.resetReadyForRenameTimer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1960))();
    if (v4)
    {

      DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()();
    }
  }
}

void *findItem #1 (matching:) in DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v3)
  {
    v5 = result;
    v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x258))();
    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        v18 = v7 & 0xFFFFFFFFFFFFFF8;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1FC540](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:

            return v10;
          }

LABEL_8:
          v12 = [v10 filename];
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (v13 == v5 && v15 == a2)
          {
            goto LABEL_18;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {

            return v10;
          }

          swift_unknownObjectRelease();
          ++v9;
          if (v11 == v8)
          {
            goto LABEL_22;
          }
        }

        if (v9 < *(v18 + 16))
        {
          break;
        }

        __break(1u);
LABEL_21:
        v8 = __CocoaSet.count.getter();
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      v10 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_22:

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.repositionRenameToNewCellIfNeeded()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x1448))())
    {
      if ((*((*v4 & *v3) + 0x1498))())
      {

        DOCItemCollectionViewController._repositionRenamingCell()();
      }
    }
  }
}

double updateActiveRenameCell #1 (_:) in DOCItemCollectionViewController._repositionRenamingCell()(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.Rename);

  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v26 = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315906;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v27);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE1070, &v27);
    *(v14 + 22) = 2048;
    *(v14 + 24) = a4;
    *(v14 + 32) = 2080;
    swift_getObjectType();
    v16 = DOCNode.nodeDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v27);

    *(v14 + 34) = v18;
    _os_log_impl(&dword_2493AC000, v12, v13, "%s->%s (%ld): Found existing cell on screen: %s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v15, -1, -1);
    v19 = v14;
    a1 = v26;
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  v20 = (*((*MEMORY[0x277D85000] & *a6) + 0x1498))();
  if (v20)
  {
    v22 = v20;
    type metadata accessor for DOCItemCollectionCell();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v25 = a1;
      v23 = v24;
    }

    (*(*v22 + 304))(v23);
  }

  return result;
}

double findRenameCell #1 () in DOCItemCollectionViewController._repositionRenamingCell()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, id a6)
{
  v10 = a2;
  v12 = MEMORY[0x277D85000];
  v41 = (*((*MEMORY[0x277D85000] & *a1) + 0x18D0))(a2);
  if (v41)
  {
    if ((*((*v12 & *a1) + 0xF70))(v10))
    {
      v13 = (*((*v12 & *a1) + 0x1010))();
      [v41 frame];
      v14 = [v13 _isRectFullyVisible_];

      if (v14)
      {
        v15 = a3;
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.Rename);

        swift_unknownObjectRetain();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v19 = 136315906;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, a4, &v43);
          *(v19 + 12) = 2080;
          *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BE1050, &v43);
          *(v19 + 22) = 2048;
          *(v19 + 24) = a5;
          *(v19 + 32) = 2080;
          swift_getObjectType();
          v20 = DOCNode.nodeDescription.getter();
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v43);

          *(v19 + 34) = v22;
          _os_log_impl(&dword_2493AC000, v17, v18, "%s->%s (%ld): Found existing cell on screen: %s", v19, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v39, -1, -1);
          MEMORY[0x24C1FE850](v19, -1, -1);
        }

        updateActiveRenameCell #1 (_:) in DOCItemCollectionViewController._repositionRenamingCell()(v41, v15, a4, a5, v10, a1);

        return result;
      }
    }
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.Rename);

  swift_unknownObjectRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v25, v26))
  {
    v42 = a6;
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v27 = 136315906;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v43);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BE1050, &v43);
    *(v27 + 22) = 2048;
    *(v27 + 24) = a5;
    *(v27 + 32) = 2080;
    swift_getObjectType();
    v28 = DOCNode.nodeDescription.getter();
    v30 = v10;
    v31 = a4;
    v32 = a3;
    v33 = a5;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v43);

    *(v27 + 34) = v34;
    a5 = v33;
    a3 = v32;
    a4 = v31;
    v10 = v30;
    _os_log_impl(&dword_2493AC000, v25, v26, "%s->%s (%ld): No existing cell on screen, trying to scroll to it: %s", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v40, -1, -1);
    v35 = v27;
    a6 = v42;
    MEMORY[0x24C1FE850](v35, -1, -1);
  }

  v36 = swift_allocObject();
  v36[2] = a1;
  v36[3] = v10;
  v36[4] = a3;
  v36[5] = a4;
  v36[6] = a5;
  v37 = *((*MEMORY[0x277D85000] & *a1) + 0x18D8);

  swift_unknownObjectRetain();
  v38 = a1;
  v37(a6, partial apply for closure #1 in findRenameCell #1 () in DOCItemCollectionViewController._repositionRenamingCell(), v36);

  return result;
}

void closure #1 in findRenameCell #1 () in DOCItemCollectionViewController._repositionRenamingCell()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = (*((*MEMORY[0x277D85000] & *a1) + 0x18D0))(a2);
  if (v10)
  {
    v11 = v10;
    updateActiveRenameCell #1 (_:) in DOCItemCollectionViewController._repositionRenamingCell()(v10, a3, a4, a5, a2, a1);
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.Rename);

    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315906;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v27);
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BE1050, &v27);
      *(v14 + 22) = 2048;
      *(v14 + 24) = a5;
      *(v14 + 32) = 2080;
      swift_getObjectType();
      v16 = DOCNode.nodeDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v27);

      *(v14 + 34) = v18;
      _os_log_impl(&dword_2493AC000, oslog, v13, "%s->%s (%ld): Scrolling revealed cell for folder node: %s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);

LABEL_10:
      return;
    }
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.Rename);

    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315906;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v27);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BE1050, &v27);
      *(v21 + 22) = 2048;
      *(v21 + 24) = a5;
      *(v21 + 32) = 2080;
      swift_getObjectType();
      v23 = DOCNode.nodeDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

      *(v21 + 34) = v25;
      _os_log_impl(&dword_2493AC000, oslog, v20, "%s->%s (%ld): Scrolling FAILED. Could not find cell for folder node: %s", v21, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
      goto LABEL_10;
    }
  }
}

void closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*((*MEMORY[0x277D85000] & *a1) + 0x18D0))(a2, v13);
  if (v16)
  {
    v17 = v16;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.Rename);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v41);
      _os_log_impl(&dword_2493AC000, v19, v20, "%s: Scrolling completed and found cell", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    v40 = v17;
    a3(v17);

    v23 = v40;
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.Rename);
    (*(v11 + 16))(v15, a5, v10);
    swift_unknownObjectRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[1] = a4;
      v29 = v28;
      v41 = v28;
      *v27 = 136315650;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v41);
      *(v27 + 12) = 2080;
      v30 = [a2 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = a3;
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v41);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v11 + 8))(v15, v10);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v41);

      *(v27 + 24) = v38;
      a3 = v40;
      _os_log_impl(&dword_2493AC000, v25, v26, "%s: Could not find item cell for node: %s indexPath: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    a3(0);
  }
}

void cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Rename);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v11);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2870756E61656C63, 0xE900000000000029, &v11);
    _os_log_impl(&dword_2493AC000, v7, v8, "%s > %s: clearing preparing state", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
}

void prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void (*a1)(char *, uint64_t, uint64_t), unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v67 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v63 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.Rename);

  v65 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v66 = a2;
  v64 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = a2;
    v26 = v14;
    v27 = a4;
    v28 = v13;
    v29 = a5;
    v30 = v24;
    v68 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v25, &v68);
    *(v23 + 12) = 2080;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BE0F40, &v68);
    _os_log_impl(&dword_2493AC000, v20, v21, "%s > %s BEGIN", v23, 0x16u);
    swift_arrayDestroy();
    v31 = v30;
    a5 = v29;
    v13 = v28;
    a4 = v27;
    v14 = v26;
    MEMORY[0x24C1FE850](v31, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  v32 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a3) + 0xD98))(a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    swift_getObjectType();
    v33 = DOCNode.fpfs_syncFetchFPItem()();
    (*((*v32 & *a3) + 0x1968))(v33);
    v34 = *((*v32 & *a3) + 0x1980);

    v34(v35);
    v36 = v66;

    swift_unknownObjectRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68 = v40;
      *v39 = 136315650;
      v41 = v67;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v36, &v68);
      *(v39 + 12) = 2080;
      *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BE0F40, &v68);
      *(v39 + 22) = 2080;
      v42 = [a4 description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v68);

      *(v39 + 24) = v46;
      _os_log_impl(&dword_2493AC000, v37, v38, "%s > %s: item collection doesn't contain new folder: %s yet, enqueing", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v40, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);
    }

    else
    {

      v41 = v67;
    }

    cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(v41, v36, a3);
  }

  else
  {
    v47 = v64;
    v48 = (*(v14 + 32))(v64, v12, v13);
    v49 = (*((*v32 & *a3) + 0xBD8))(v48);
    v50 = v66;
    if (v49 == 3)
    {
      v51 = v47;
      v63 = v14;

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v67;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v65 = a4;
        v58 = v13;
        v59 = a5;
        v60 = v57;
        v68 = v57;
        *v56 = 136315394;
        *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v50, &v68);
        *(v56 + 12) = 2080;
        *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BE0F60, &v68);
        _os_log_impl(&dword_2493AC000, v52, v53, "%s > %s: BEGIN", v56, 0x16u);
        swift_arrayDestroy();
        v61 = v60;
        a5 = v59;
        v13 = v58;
        a4 = v65;
        MEMORY[0x24C1FE850](v61, -1, -1);
        MEMORY[0x24C1FE850](v56, -1, -1);
      }

      swift_unknownObjectRetain();
      v62 = a3;

      specialized DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(a4, v51, v62, a4, v55, v50, v62, a5);
      swift_unknownObjectRelease();

      v14 = v63;
    }

    else
    {
      otherViewModesRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(v67, v66, a3, a4, v47);
      v51 = v47;
    }

    (*(v14 + 8))(v51, v13);
  }
}

uint64_t closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41 = a6;
  v42 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v43 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v41 - v21;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.Rename);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = a5;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, aBlock);
    _os_log_impl(&dword_2493AC000, v24, v25, "%s > %s: validation and selection completed", v26, 0x16u);
    swift_arrayDestroy();
    v29 = v28;
    a5 = v27;
    MEMORY[0x24C1FE850](v29, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v30 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v43 = *(v43 + 8);
  (v43)(v18, v50);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v33 = v41;
  v32[4] = v42;
  v32[5] = a5;
  v32[6] = v31;
  v32[7] = a3;
  v32[8] = v33;
  aBlock[4] = partial apply for closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1253;
  v34 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v35 = a3;
  v36 = v33;

  v37 = v44;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v38 = v45;
  v39 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v22, v37, v38, v34);
  _Block_release(v34);

  (*(v48 + 8))(v38, v39);
  (*(v46 + 8))(v37, v47);
  return (v43)(v22, v50);
}

void closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.Rename);

  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  v32 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, aBlock);
    *(v15 + 22) = 2080;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v17 = String.init<A>(describing:)();
    v19 = a4;
    v20 = a6;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v15 + 24) = v21;
    a6 = v20;
    a4 = v19;
    _os_log_impl(&dword_2493AC000, v13, v14, "%s > %s: collection view quiescent timer finished, re-fetching item: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  v22 = [objc_opt_self() defaultManager];
  swift_getObjectType();
  v23 = DOCNode.fpfs_syncFetchFPItem()();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v32;
    v25[3] = a2;
    v25[4] = a4;
    v25[5] = a5;
    v25[6] = a6;
    v25[7] = a7;

    v26 = a6;
    v27 = a7;
    v28 = [v24 itemID];
    v29 = swift_allocObject();
    v29[2] = v24;
    v29[3] = partial apply for closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
    v29[4] = v25;
    aBlock[4] = closure #1 in FPItemManager.doc_refetchItem(_:completion:)partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1263;
    v30 = _Block_copy(aBlock);
    v31 = v24;

    [v22 fetchItemForItemID:v28 completionHandler:v30];
    _Block_release(v30);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void *a7, NSObject *a8)
{
  if (a1)
  {
    v14 = one-time initialization token for Rename;
    v15 = a1;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.Rename);
    v17 = v15;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v49 = a3;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = a5;
      v21 = a3;
      v22 = swift_slowAlloc();
      osloga = a8;
      v23 = swift_slowAlloc();
      v48 = a7;
      v24 = swift_slowAlloc();
      v52[0] = v24;
      *v22 = 136315650;
      v25 = v21;
      a5 = v20;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, a4, v52);
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, v52);
      *(v22 + 22) = 2112;
      *(v22 + 24) = v17;
      *v23 = a1;
      v26 = v17;
      _os_log_impl(&dword_2493AC000, v18, v19, "%s > %s: re-fetched item: %@", v22, 0x20u);
      outlined destroy of CharacterSet?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = v23;
      a8 = osloga;
      MEMORY[0x24C1FE850](v27, -1, -1);
      swift_arrayDestroy();
      v28 = v24;
      a7 = v48;
      MEMORY[0x24C1FE850](v28, -1, -1);
      MEMORY[0x24C1FE850](v22, -1, -1);
    }

    if (a5 >> 62)
    {
      v29 = __CocoaSet.count.getter();
    }

    else
    {
      v29 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v29 >= 1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        v32 = v17;

        v33 = a7;
        v34 = a8;
        specialized DOCItemCollectionViewController.move(nodes:to:completion:)(a5, v32, v31, v49, a4, v33, v32, v34);
      }

      else
      {
      }

      return;
    }

    v45 = swift_allocObject();
    v45[2] = v49;
    v45[3] = a4;
    v45[4] = a7;
    v45[5] = v17;
    v45[6] = a8;
    oslog = v17;

    v46 = a7;
    v47 = a8;
    DOCRunInMainThread(_:)();
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.Rename);
    v37 = a2;

    oslog = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      *v39 = 136315650;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v52);
      *(v39 + 12) = 2080;
      *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, v52);
      *(v39 + 22) = 2080;
      v52[3] = a2;
      v41 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd, &_sSo7NSErrorCSgMR);
      v42 = String.init<A>(describing:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v52);

      *(v39 + 24) = v44;
      _os_log_impl(&dword_2493AC000, oslog, v38, "%s > %s: could not re-fetch folder, error: %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v40, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);

      return;
    }
  }
}

double closure #1 in closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(char a1, uint64_t a2, unint64_t a3, void *a4, void *a5, void *a6)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.Rename);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v22);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v22);
    *(v15 + 22) = 1024;
    *(v15 + 24) = a1 & 1;
    _os_log_impl(&dword_2493AC000, v13, v14, "%s > %s: move success finished with success: %{BOOL}d. Starting rename", v15, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;

  v18 = a4;
  v19 = a5;
  v20 = a6;
  DOCRunInMainThread(_:)();

  return result;
}

double closure #2 in closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, _BYTE *a3, void *a4, void *a5)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v16);
    _os_log_impl(&dword_2493AC000, v11, v12, "%s > %s: No node to move. Starting rename", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  return specialized startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a4, a5, a1, a2, a3);
}

void closure #1 in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    v11 = one-time initialization token for Rename;
    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.Rename);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v33);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v33);
      _os_log_impl(&dword_2493AC000, v14, v15, "%s > %s: Beginning rename steps starting with validateNodeSelectionAndPerformDidPickIfNeeded", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    v18 = swift_allocObject();
    v19 = *MEMORY[0x277D85000] & *a5;
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = a2;
    v18[6] = a6;
    v18[7] = v12;
    v20 = *(v19 + 6368);
    v21 = v12;

    v22 = a5;
    swift_unknownObjectRetain();

    v20(a2, 0, closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)partial apply, v18);
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.Rename);
    swift_unknownObjectRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BE0F60, &v33);
      *(v26 + 12) = 2080;
      v28 = [a2 description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v33);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_2493AC000, v24, v25, "%s: Could not show inline rename for item: %s. Unable to find cell.", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a3, a4, a5);
  }
}

uint64_t otherViewModesRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void (*a1)(char *, uint64_t, uint64_t), unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE1010, &v18);
    _os_log_impl(&dword_2493AC000, v11, v12, "%s > %s: BEGIN", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  v15 = a3;
  v16 = swift_unknownObjectRetain();
  specialized DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(v16, a5, v15, a1, a2, v15, a4);

  return swift_unknownObjectRelease();
}

void closure #1 in otherViewModesRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4, void *a5)
{
  if (a1)
  {
    swift_getObjectType();
    v20 = a1;
    specialized startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a5, v20, a2, a3, a4);
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.Rename);
    swift_unknownObjectRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE1010, &v21);
      *(v13 + 12) = 2080;
      v15 = [a5 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_2493AC000, v11, v12, "%s: Could not show inline rename for item: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a2, a3, a4);
  }
}

void closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Rename);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0FF0, &v13);
    _os_log_impl(&dword_2493AC000, v9, v10, "%s > %s: now safe to change first responder, beginning rename", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  (*(*a3 + 432))();

  cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a1, a2, a4);
}

void closure #1 in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), unint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.Rename);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
    *(v14 + 12) = 2048;
    if (a4 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 14) = v16;

    _os_log_impl(&dword_2493AC000, v12, v13, "%s not in column view with: %ld nodes to move. Node move success! preparing to rename", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  else
  {
  }

  prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a2, a3, a5, a6, a4);
}

void closure #1 in DOCItemCollectionViewController.createNewFolderModal(_:parentNode:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      objc_allocWithZone(type metadata accessor for DOCCreateFolderViewController());
      v9 = a1;

      v10 = v8;
      v8 = specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(v9, a3, a4, v8);

      DOCFilenameViewController.present(from:animated:)(v10, 1);
    }
  }
}

void DOCItemCollectionViewController.toggleCellExpansion(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = aBlock - v7;
  v9 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xF10))(v6) & 1) == 0)
  {
    v10 = (*((*v9 & *a1) + 0x208))();
    if (v10)
    {
      v11 = v10;
      v12 = (*((*v9 & *v10) + 0x3D0))();

      if (v12)
      {
        if ([v12 isBrowsable])
        {
          v13 = *((*v9 & *v2) + 0x820);
          v13(aBlock);
          v14 = v31;
          if (v31)
          {
            v15 = v32;
            __swift_project_boxed_opaque_existential_1(aBlock, v31);
            (*(v15 + 11))(v12, v14, v15);
            v16 = type metadata accessor for IndexPath();
            v17 = (*(*(v16 - 8) + 48))(v8, 1, v16);
            outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            v18 = __swift_destroy_boxed_opaque_existential_0(aBlock);
            if (v17 == 1)
            {
LABEL_16:
              swift_unknownObjectRelease();
              return;
            }

            v19 = (*((*v9 & *v2) + 0xD60))(v18);
            if (!*(v19 + 16))
            {
              swift_unknownObjectRelease();

              return;
            }

            v20 = *(v19 + 48);
            v36 = *(v19 + 32);
            v37 = v20;
            v38 = *(v19 + 64);
            outlined init with copy of DOCCollectionSection(&v36, aBlock);

            (v13)(aBlock, v21);
            v22 = v31;
            if (v31)
            {
              v23 = v32;
              __swift_project_boxed_opaque_existential_1(aBlock, v31);
              v34[0] = v36;
              v34[1] = v37;
              v35 = v38;
              v24 = (*(v23 + 6))(v12, v34, v22, v23);
              __swift_destroy_boxed_opaque_existential_0(aBlock);
              if (v24)
              {
                _toggleAfterAuthenticating #1 (isExpanded:) in DOCItemCollectionViewController.toggleCellExpansion(_:)(1, v2, v12, &v36);
                outlined destroy of DOCCollectionSection(&v36);
              }

              else
              {
                v25 = [objc_opt_self() sharedManager];
                v26 = swift_allocObject();
                *(v26 + 16) = v2;
                *(v26 + 24) = v12;
                v27 = v37;
                *(v26 + 32) = v36;
                *(v26 + 48) = v27;
                *(v26 + 64) = v38;
                *(v26 + 72) = 0;
                v32 = partial apply for closure #1 in DOCItemCollectionViewController.toggleCellExpansion(_:);
                v33 = v26;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
                v31 = &block_descriptor_333;
                v28 = _Block_copy(aBlock);
                swift_unknownObjectRetain();
                outlined init with copy of DOCCollectionSection(&v36, v34);
                swift_unknownObjectRetain();
                v29 = v2;

                [v25 authenticateLocationWithNoUI:v12 completion:v28];
                outlined destroy of DOCCollectionSection(&v36);
                swift_unknownObjectRelease();
                _Block_release(v28);
              }

              goto LABEL_16;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void _toggleAfterAuthenticating #1 (isExpanded:) in DOCItemCollectionViewController.toggleCellExpansion(_:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *a2) + 0x760))() & 1) == 0)
  {
    if (a1)
    {
      (*((*v8 & *a2) + 0x820))(v16);
      v9 = v17;
      if (v17)
      {
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v11 = *(a4 + 16);
        v14[0] = *a4;
        v14[1] = v11;
        v15 = *(a4 + 32);
        (*(v10 + 56))(a3, v14, v9, v10);
        __swift_destroy_boxed_opaque_existential_0(v16);
        v12 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
        if (v12)
        {
          (*((*v8 & *v12) + 0x130))(a3);
LABEL_11:
          DOCItemCollectionViewController.displayEmptyFolderAsExpandedIfNeeded(_:)(a3);
          return;
        }

LABEL_15:
        __break(1u);
        return;
      }

      __break(1u);
    }

    else
    {
      v13 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      if (v13)
      {
        (*((*v8 & *v13) + 0x120))(a3);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  if (a1)
  {
    DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(a3);
  }

  else
  {
    DOCItemCollectionViewController.recursivelyExpandNodes(_:)(a3);
  }
}

void closure #1 in DOCItemCollectionViewController.toggleCellExpansion(_:)(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {

    _toggleAfterAuthenticating #1 (isExpanded:) in DOCItemCollectionViewController.toggleCellExpansion(_:)(a6 & 1, a3, a4, a5);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v8 = a2;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BE0A30, &v17);
      *(v10 + 12) = 2080;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_2493AC000, oslog, v9, "%s app protection authentication did not succeed or hit error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    else
    {
    }
  }
}

double DOCItemCollectionViewController.cell(_:perform:)(void *a1, void *a2)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *a1) + 0x208))();
  if (v4)
  {
    v6 = *((*v3 & *v4) + 0x3D0);
    v7 = v4;
    v8 = v6();

    if (v8)
    {
      swift_getObjectType();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = a2;

      v11 = a2;
      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionViewController.cell(_:perform:), v10);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.cell(_:perform:)(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_249BA0290;
      *(v8 + 32) = a1;
      v9 = a1;
      v10 = v7;
      v11 = DOCItemCollectionViewController.actionContext(from:)();
      specialized DOCActionManager.perform(_:on:actionContext:)(a3, v8, v11);

      v6 = v11;
    }
  }
}

uint64_t DOCItemCollectionViewController.cell(_:shouldSpringLoadWith:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10, v11);
  v14 = &v20 - v13;
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))(v12);
  v17 = [v16 indexPathForCell_];

  if (v17)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v14, v9, v5);
    v18 = (*((*v15 & *v2) + 0x17B0))(v14, a2);
    (*(v6 + 8))(v14, v5);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t DOCTab.description.getter(uint64_t a1)
{
  v1 = 0x6573776F7242;
  v2 = 0x3F3F3F3F3FLL;
  if (a1 == 1)
  {
    v2 = 0x646572616853;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x73746E65636552;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCTab()
{
  v1 = *v0;
  v2 = 0x6573776F7242;
  v3 = 0x3F3F3F3F3FLL;
  if (*v0 == 1)
  {
    v3 = 0x646572616853;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x73746E65636552;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.reloadCollectionForAppProtectionStateChange()()
{
  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = MEMORY[0x277D85000];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315650;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BDF0D0, &v10);
      *(v7 + 12) = 1024;
      *(v7 + 14) = (*((*v6 & *v2) + 0xAB0))() & 1;
      *(v7 + 18) = 1024;
      *(v7 + 20) = (*((*v6 & *v2) + 0xAE0))() & 1;

      _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d reload contents of item collection", v7, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1FE850](v8, -1, -1);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    else
    {
    }

    v9 = (*((*v6 & *v2) + 0xD60))();
    v11 = 0;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v9, &v11, 0);
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()<A>(uint64_t a1, uint64_t a2)
{
  v4 = specialized Sequence._copyToContiguousArray()();
  v5 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v5;
  v9 = *(v2 + 64);
  v6 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v6;
  (*(*(a1 - 8) + 8))(v8, a1);
  return v4;
}

void specialized DOCFocusableCollectionView.setIndexPathsForSelectedItems(_:animated:scrollPosition:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v30 - v14;
  v33 = v4;
  v16 = [v4 indexPathsForSelectedItems];
  if (!v16)
  {
LABEL_7:
    v22 = v32;
    if (a1)
    {
      v23 = *(a1 + 16);
      if (v23)
      {
        v26 = *(v7 + 16);
        v25 = v7 + 16;
        v24 = v26;
        v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
        v28 = *(v25 + 56);
        do
        {
          v24(v10, v27, v6);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v33 selectItemAtIndexPath:isa animated:v22 & 1 scrollPosition:v31];

          (*(v25 - 8))(v10, v6);
          v27 += v28;
          --v23;
        }

        while (v23);
      }
    }

    return;
  }

  v30 = a1;
  v17 = v16;
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_6:

    a1 = v30;
    goto LABEL_7;
  }

  v20 = 0;
  while (v20 < *(v18 + 16))
  {
    (*(v7 + 16))(v15, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20++, v6);
    v21 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v33 deselectItemAtIndexPath:v21 animated:v32 & 1];

    (*(v7 + 8))(v15, v6);
    if (v19 == v20)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void specialized DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  if (v4 >= [v2 numberOfSections] || (v5 = IndexPath.item.getter(), v5 >= objc_msgSend(v2, sel_numberOfItemsInSection_, IndexPath.section.getter())))
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249B9A480;
    type metadata accessor for IndexPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v19 = static OS_os_log.default.getter();
    v20 = "Unable to determine frame of cell for item at index beyond bounds: %@";
    v21 = 69;
LABEL_7:
    rect_16 = v19;
    os_log(_:dso:log:type:_:)(v20, v21, 2, &dword_2493AC000);

    goto LABEL_8;
  }

  v6 = [v2 collectionViewLayout];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v6 layoutAttributesForItemAtIndexPath_];

  if (!v8)
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_249B9A480;
    type metadata accessor for IndexPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v19 = static OS_os_log.default.getter();
    v20 = "Unable to determine frame of cell for item: %@";
    v21 = 46;
    goto LABEL_7;
  }

  if ((*((*MEMORY[0x277D85000] & *v2) + 0xD8))())
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 48))(v2, &protocol witness table for DOCItemCollectionView, a1, ObjectType, v10);
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
  }

  [v8 frame];
  v30 = UIEdgeInsetsInsetRect(v26, v27, v28, v29, v12, v14);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [v2 _effectiveContentInset];
  v38 = v37;
  v40 = v39;
  rect_16a = v41;
  v43 = v42;
  [v2 contentOffset];
  v45 = v40 + v44;
  [v2 contentOffset];
  rect_8 = v38 + v46;
  [v2 bounds];
  v47 = CGRectGetWidth(v56) - v40 - v43;
  v48 = v30;
  [v2 bounds];
  v49 = CGRectGetHeight(v57) - v38 - rect_16a;
  v58.origin.x = v30;
  v58.origin.y = v32;
  v58.size.width = v34;
  v58.size.height = v36;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = v45;
  v59.origin.y = rect_8;
  v59.size.width = v47;
  v59.size.height = v49;
  if (MinY < CGRectGetMinY(v59) || (v60.origin.x = v48, v60.origin.y = v32, v60.size.width = v34, v60.size.height = v36, MaxY = CGRectGetMaxY(v60), v61.origin.x = v45, v61.origin.y = rect_8, v61.size.width = v47, v61.size.height = v49, CGRectGetMaxY(v61) < MaxY))
  {
    [v2 scrollRectToVisible:0 animated:{v48, v32, v34, v36}];
    [v2 _flashScrollIndicatorsPersistingPreviousFlashes];
  }

  rect_16 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v2 scrollToItemAtIndexPath_atScrollPosition_animated_];

LABEL_8:
}

uint64_t specialized closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(void *a1, uint64_t a2, char a3)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 cellForItemAtIndexPath_];

  UIAccessibilityPostNotification(0x3FCu, v7);
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xD8))();
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 72))(a1, &protocol witness table for DOCItemCollectionView, a2, a3 & 1, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v4);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

{
  v39 = type metadata accessor for URL();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v40 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v39;
    v6 = v40;
    v14 = v11;
    v37 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v35 = a2 + 64;
    v36 = v16;
    v17 = *(v15 + 56);
    v34 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v38;
      v21 = v14;
      v22 = v15;
      v36(v38, *(v6 + 48) + v17 * v10, v13);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v34)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v37)
      {
        if (v24 >= v37 && a1 >= v24)
        {
LABEL_15:
          v6 = v40;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v40 + 48) + v18 * a1 >= (*(v40 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v40;
            v17 = v18;
            v14 = v21;
            v8 = v35;
          }

          else
          {
            v8 = v35;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v40;
              v17 = v18;
              v14 = v21;
            }
          }

          v27 = *(v6 + 56);
          v28 = (v27 + 8 * a1);
          v29 = (v27 + 8 * v10);
          if (a1 != v10 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v37 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v35;
      v17 = v18;
      v6 = v40;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v6 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v32;
    ++*(v6 + 36);
  }
}

{
  v40 = type metadata accessor for URL();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v5);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v27 = *(v6 + 56);
          v28 = (v27 + 32 * a1);
          v29 = (v27 + 32 * v10);
          if (a1 != v10 || v28 >= v29 + 2)
          {
            v30 = v29[1];
            *v28 = *v29;
            v28[1] = v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = *(*v9 + 96);

      v10(v26);
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v3);
      v15 = (v13 + 8 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for URL() - 8) + 72);
      v18 = v17 * v3;
      v19 = v16 + v17 * v3;
      v20 = v17 * v6;
      v21 = v16 + v17 * v6 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      Hasher.init(_seed:)();
      if (v12)
      {
        MEMORY[0x24C1FCBD0](1);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v11;
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x24C1FCBD0](0);
        v14 = v11;
        NSObject.hash(into:)();
      }

      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v16 < v8)
      {
        goto LABEL_13;
      }

LABEL_14:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v3);
      v19 = (v17 + v9);
      if (16 * v3 != v9 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(type metadata accessor for RestorableSettings(0) - 8) + 72);
      v22 = v21 * v3;
      v23 = v20 + v21 * v3;
      v24 = v21 * v6;
      v25 = v20 + v21 * v6 + v21;
      if (v22 < v24 || v23 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v22 == v24)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v16 < v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v3 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_23:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      if (v9)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFStringRef(0);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
        v9 = v9;
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = v11 + 40 * v3;
      v13 = (v11 + 40 * v6);
      if (v3 != v6 || v12 >= v13 + 40)
      {
        v14 = *v13;
        v15 = v13[1];
        *(v12 + 32) = *(v13 + 4);
        *v12 = v14;
        *(v12 + 16) = v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for ScrollPositionInfo.ItemOffset(0) - 8) + 72);
      v18 = v17 * v3;
      v19 = v16 + v17 * v3;
      v20 = v17 * v6;
      v21 = v16 + v17 * v6 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v29 = v4;
    do
    {
      v9 = v7;
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      Hasher.init(_seed:)();
      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            MEMORY[0x24C1FCBD0](3);
            v15 = v11;
            v16 = 2;
          }

          else
          {
            MEMORY[0x24C1FCBD0](4);
            v15 = v11;
            v16 = 3;
          }

          goto LABEL_25;
        }

        if (!v12)
        {
          MEMORY[0x24C1FCBD0](0);
          v15 = v11;
          v16 = 0;
          goto LABEL_25;
        }

        if (v12 == 1)
        {
          MEMORY[0x24C1FCBD0](2);
          v15 = v11;
          v16 = 1;
          goto LABEL_25;
        }
      }

      else
      {
        if (v12 <= 5)
        {
          if (v12 == 4)
          {
            MEMORY[0x24C1FCBD0](5);
            v15 = v11;
            v16 = 4;
          }

          else
          {
            MEMORY[0x24C1FCBD0](6);
            v15 = v11;
            v16 = 5;
          }

          goto LABEL_25;
        }

        switch(v12)
        {
          case 6:
            MEMORY[0x24C1FCBD0](7);
            v15 = v11;
            v16 = 6;
            goto LABEL_25;
          case 7:
            MEMORY[0x24C1FCBD0](8);
            v15 = v11;
            v16 = 7;
            goto LABEL_25;
          case 8:
            MEMORY[0x24C1FCBD0](9);
            v15 = v11;
            v16 = 8;
LABEL_25:
            outlined copy of ColumnType(v15, v16);

            goto LABEL_26;
        }
      }

      MEMORY[0x24C1FCBD0](1);
      outlined copy of ColumnType(v11, v12);

      String.hash(into:)();
LABEL_26:
      specialized Set.hash(into:)(v30, v13);
      specialized Dictionary<>.hash(into:)(v30, v14);
      v17 = Hasher._finalize()();
      outlined consume of ColumnType(v11, v12);

      v7 = v9;
      v18 = v17 & v9;
      if (v3 >= v8)
      {
        v4 = v29;
        if (v18 < v8)
        {
          goto LABEL_5;
        }

LABEL_30:
        if (v3 < v18)
        {
          goto LABEL_5;
        }

        goto LABEL_31;
      }

      v4 = v29;
      if (v18 < v8)
      {
        goto LABEL_30;
      }

LABEL_31:
      v19 = *(a2 + 48);
      v20 = (v19 + 32 * v3);
      v21 = (v19 + 32 * v6);
      if (v3 != v6 || v20 >= v21 + 2)
      {
        v22 = v21[1];
        *v20 = *v21;
        v20[1] = v22;
      }

      v23 = *(a2 + 56);
      v24 = *(*(type metadata accessor for Column(0) - 8) + 72);
      v25 = v24 * v3;
      if (v24 * v3 < (v24 * v6) || v23 + v24 * v3 >= v23 + v24 * v6 + v24)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v25 == v24 * v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = *(*v9 + 96);

      v10(v22);
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v4);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v112 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
  v122 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v125 = &v109 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v127 = &v109 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v126 = &v109 - v17;
  v123 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_100:
    a4 = *v112;
    if (!*v112)
    {
      goto LABEL_139;
    }

    v6 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v113;
    if (isUniquelyReferenced_nonNull_native)
    {
      v104 = v6;
LABEL_103:
      v129 = v104;
      v6 = *(v104 + 2);
      if (v6 >= 2)
      {
        while (*v123)
        {
          v105 = *&v104[16 * v6];
          v106 = v104;
          v107 = *&v104[16 * v6 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v123 + *(v122 + 72) * v105, *v123 + *(v122 + 72) * *&v104[16 * v6 + 16], *v123 + *(v122 + 72) * v107, a4);
          if (v35)
          {
            goto LABEL_111;
          }

          if (v107 < v105)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
          }

          if (v6 - 2 >= *(v106 + 2))
          {
            goto LABEL_127;
          }

          v108 = &v106[16 * v6];
          *v108 = v105;
          *(v108 + 1) = v107;
          v129 = v106;
          specialized Array.remove(at:)(v6 - 1);
          v104 = v129;
          v6 = *(v129 + 2);
          if (v6 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_137;
      }

LABEL_111:

      return;
    }

LABEL_133:
    v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_103;
  }

  v110 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v21 = &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd;
  v128 = v6;
  while (1)
  {
    v22 = v19;
    v117 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
      v35 = v113;
    }

    else
    {
      v23 = v19;
      v24 = *v123;
      v120 = v24;
      v25 = *(v122 + 72);
      a4 = v24 + v25 * (v19 + 1);
      v26 = v126;
      outlined init with copy of DOCGridLayout.Spec?(a4, v126, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      v27 = v24 + v25 * v23;
      v28 = v127;
      outlined init with copy of DOCGridLayout.Spec?(v27, v127, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      LODWORD(v121) = static IndexPath.< infix(_:_:)();
      outlined destroy of CharacterSet?(v28, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      outlined destroy of CharacterSet?(v26, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      v111 = v23;
      v29 = v23 + 2;
      v124 = v25;
      v30 = v120 + v25 * (v23 + 2);
      while (v18 != v29)
      {
        v31 = v126;
        outlined init with copy of DOCGridLayout.Spec?(v30, v126, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        v32 = v127;
        outlined init with copy of DOCGridLayout.Spec?(a4, v127, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        v33 = static IndexPath.< infix(_:_:)() & 1;
        outlined destroy of CharacterSet?(v32, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        outlined destroy of CharacterSet?(v31, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        ++v29;
        v30 += v124;
        a4 += v124;
        if ((v121 & 1) != v33)
        {
          v34 = v29 - 1;
          goto LABEL_12;
        }
      }

      v34 = v18;
LABEL_12:
      v6 = v128;
      v22 = v111;
      v35 = v113;
      if (v121)
      {
        if (v34 < v111)
        {
          goto LABEL_130;
        }

        if (v111 < v34)
        {
          v36 = v124 * (v34 - 1);
          v37 = v34;
          v38 = v34 * v124;
          v39 = v34;
          v40 = v111;
          a4 = v111 * v124;
          do
          {
            if (v40 != --v37)
            {
              v41 = *v123;
              if (!*v123)
              {
                goto LABEL_136;
              }

              outlined init with take of (key: URL, value: FPItem)(v41 + a4, v116, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
              if (a4 < v36 || v41 + a4 >= (v41 + v38))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of (key: URL, value: FPItem)(v116, v41 + v36, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
            }

            ++v40;
            v36 -= v124;
            v38 -= v124;
            a4 += v124;
          }

          while (v40 < v37);
          v35 = v113;
          v6 = v128;
          v22 = v111;
          v34 = v39;
        }
      }
    }

    v42 = v123[1];
    if (v34 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v34, v22))
    {
      goto LABEL_129;
    }

    if (v34 - v22 >= v110)
    {
LABEL_35:
      v19 = v34;
      if (v34 < v22)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v110))
    {
      goto LABEL_131;
    }

    if (v22 + v110 >= v42)
    {
      v43 = v123[1];
    }

    else
    {
      v43 = v22 + v110;
    }

    if (v43 < v22)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v34 == v43)
    {
      goto LABEL_35;
    }

    v113 = v35;
    v90 = *v123;
    v91 = *(v122 + 72);
    v92 = *v123 + v91 * (v34 - 1);
    v93 = -v91;
    v111 = v22;
    v94 = v22 - v34;
    v121 = v34;
    v114 = v91;
    v115 = v43;
    v124 = v90;
    a4 = v90 + v34 * v91;
LABEL_90:
    v118 = a4;
    v119 = v94;
    v120 = v92;
    v95 = v92;
LABEL_91:
    v96 = v126;
    outlined init with copy of DOCGridLayout.Spec?(a4, v126, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    v97 = v127;
    outlined init with copy of DOCGridLayout.Spec?(v95, v127, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    v98 = static IndexPath.< infix(_:_:)();
    outlined destroy of CharacterSet?(v97, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    outlined destroy of CharacterSet?(v96, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    if (v98)
    {
      break;
    }

    v6 = v128;
LABEL_89:
    v19 = v115;
    v92 = v120 + v114;
    v94 = v119 - 1;
    a4 = v118 + v114;
    if (++v121 != v115)
    {
      goto LABEL_90;
    }

    v35 = v113;
    v22 = v111;
    if (v115 < v111)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v117;
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
    }

    v45 = *(v20 + 2);
    v44 = *(v20 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v20);
    }

    *(v20 + 2) = a4;
    v46 = &v20[16 * v45];
    *(v46 + 4) = v22;
    *(v46 + 5) = v19;
    if (!*v112)
    {
      goto LABEL_138;
    }

    if (v45)
    {
      v47 = *v112;
      v6 = v128;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v20 + 4);
          v50 = *(v20 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_117;
          }

          v65 = &v20[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_120;
          }

          v71 = &v20[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_124;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v20[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_119;
        }

        v78 = &v20[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v81 < v69)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v123)
        {
          goto LABEL_135;
        }

        v86 = v20;
        a4 = *&v20[16 * v6 + 32];
        v87 = *&v20[16 * v48 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v123 + *(v122 + 72) * a4, *v123 + *(v122 + 72) * *&v20[16 * v48 + 32], *v123 + *(v122 + 72) * v87, v47);
        if (v35)
        {
          goto LABEL_111;
        }

        if (v87 < a4)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v88 = v86;
        }

        else
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew()(v86);
        }

        if (v6 >= *(v88 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v88[16 * v6];
        *(v89 + 4) = a4;
        *(v89 + 5) = v87;
        v129 = v88;
        specialized Array.remove(at:)(v48);
        v20 = v129;
        a4 = *(v129 + 2);
        v6 = v128;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v53 = &v20[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_115;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_116;
      }

      v60 = &v20[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_118;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_121;
      }

      if (v64 >= v56)
      {
        v82 = &v20[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v128;
LABEL_4:
    v113 = v35;
    v18 = v123[1];
    if (v19 >= v18)
    {
      goto LABEL_100;
    }
  }

  if (v124)
  {
    v99 = v21;
    v100 = v125;
    outlined init with take of (key: URL, value: FPItem)(a4, v125, v99, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    v6 = v128;
    swift_arrayInitWithTakeFrontToBack();
    v101 = v100;
    v21 = v99;
    outlined init with take of (key: URL, value: FPItem)(v101, v95, v99, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    v95 += v93;
    a4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

{
  v112 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
  v122 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v125 = &v109 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v127 = &v109 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v126 = &v109 - v17;
  v123 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_100:
    a4 = *v112;
    if (!*v112)
    {
      goto LABEL_139;
    }

    v6 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v113;
    if (isUniquelyReferenced_nonNull_native)
    {
      v104 = v6;
LABEL_103:
      v129 = v104;
      v6 = *(v104 + 2);
      if (v6 >= 2)
      {
        while (*v123)
        {
          v105 = *&v104[16 * v6];
          v106 = v104;
          v107 = *&v104[16 * v6 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v123 + *(v122 + 72) * v105, *v123 + *(v122 + 72) * *&v104[16 * v6 + 16], *v123 + *(v122 + 72) * v107, a4);
          if (v35)
          {
            goto LABEL_111;
          }

          if (v107 < v105)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
          }

          if (v6 - 2 >= *(v106 + 2))
          {
            goto LABEL_127;
          }

          v108 = &v106[16 * v6];
          *v108 = v105;
          *(v108 + 1) = v107;
          v129 = v106;
          specialized Array.remove(at:)(v6 - 1);
          v104 = v129;
          v6 = *(v129 + 2);
          if (v6 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_137;
      }

LABEL_111:

      return;
    }

LABEL_133:
    v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_103;
  }

  v110 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v21 = &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd;
  v128 = v6;
  while (1)
  {
    v22 = v19;
    v117 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
      v35 = v113;
    }

    else
    {
      v23 = v19;
      v24 = *v123;
      v120 = v24;
      v25 = *(v122 + 72);
      a4 = v24 + v25 * (v19 + 1);
      v26 = v126;
      outlined init with copy of DOCGridLayout.Spec?(a4, v126, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      v27 = v24 + v25 * v23;
      v28 = v127;
      outlined init with copy of DOCGridLayout.Spec?(v27, v127, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      LODWORD(v121) = static Date.> infix(_:_:)();
      outlined destroy of CharacterSet?(v28, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      outlined destroy of CharacterSet?(v26, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      v111 = v23;
      v29 = v23 + 2;
      v124 = v25;
      v30 = v120 + v25 * (v23 + 2);
      while (v18 != v29)
      {
        v31 = v126;
        outlined init with copy of DOCGridLayout.Spec?(v30, v126, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        v32 = v127;
        outlined init with copy of DOCGridLayout.Spec?(a4, v127, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        v33 = static Date.> infix(_:_:)() & 1;
        outlined destroy of CharacterSet?(v32, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        outlined destroy of CharacterSet?(v31, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        ++v29;
        v30 += v124;
        a4 += v124;
        if ((v121 & 1) != v33)
        {
          v34 = v29 - 1;
          goto LABEL_12;
        }
      }

      v34 = v18;
LABEL_12:
      v6 = v128;
      v22 = v111;
      v35 = v113;
      if (v121)
      {
        if (v34 < v111)
        {
          goto LABEL_130;
        }

        if (v111 < v34)
        {
          v36 = v124 * (v34 - 1);
          v37 = v34;
          v38 = v34 * v124;
          v39 = v34;
          v40 = v111;
          a4 = v111 * v124;
          do
          {
            if (v40 != --v37)
            {
              v41 = *v123;
              if (!*v123)
              {
                goto LABEL_136;
              }

              outlined init with take of (key: URL, value: FPItem)(v41 + a4, v116, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
              if (a4 < v36 || v41 + a4 >= (v41 + v38))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of (key: URL, value: FPItem)(v116, v41 + v36, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
            }

            ++v40;
            v36 -= v124;
            v38 -= v124;
            a4 += v124;
          }

          while (v40 < v37);
          v35 = v113;
          v6 = v128;
          v22 = v111;
          v34 = v39;
        }
      }
    }

    v42 = v123[1];
    if (v34 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v34, v22))
    {
      goto LABEL_129;
    }

    if (v34 - v22 >= v110)
    {
LABEL_35:
      v19 = v34;
      if (v34 < v22)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v110))
    {
      goto LABEL_131;
    }

    if (v22 + v110 >= v42)
    {
      v43 = v123[1];
    }

    else
    {
      v43 = v22 + v110;
    }

    if (v43 < v22)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v34 == v43)
    {
      goto LABEL_35;
    }

    v113 = v35;
    v90 = *v123;
    v91 = *(v122 + 72);
    v92 = *v123 + v91 * (v34 - 1);
    v93 = -v91;
    v111 = v22;
    v94 = v22 - v34;
    v121 = v34;
    v114 = v91;
    v115 = v43;
    v124 = v90;
    a4 = v90 + v34 * v91;
LABEL_90:
    v118 = a4;
    v119 = v94;
    v120 = v92;
    v95 = v92;
LABEL_91:
    v96 = v126;
    outlined init with copy of DOCGridLayout.Spec?(a4, v126, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
    v97 = v127;
    outlined init with copy of DOCGridLayout.Spec?(v95, v127, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
    v98 = static Date.> infix(_:_:)();
    outlined destroy of CharacterSet?(v97, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
    outlined destroy of CharacterSet?(v96, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
    if (v98)
    {
      break;
    }

    v6 = v128;
LABEL_89:
    v19 = v115;
    v92 = v120 + v114;
    v94 = v119 - 1;
    a4 = v118 + v114;
    if (++v121 != v115)
    {
      goto LABEL_90;
    }

    v35 = v113;
    v22 = v111;
    if (v115 < v111)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v117;
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
    }

    v45 = *(v20 + 2);
    v44 = *(v20 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v20);
    }

    *(v20 + 2) = a4;
    v46 = &v20[16 * v45];
    *(v46 + 4) = v22;
    *(v46 + 5) = v19;
    if (!*v112)
    {
      goto LABEL_138;
    }

    if (v45)
    {
      v47 = *v112;
      v6 = v128;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v20 + 4);
          v50 = *(v20 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_117;
          }

          v65 = &v20[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_120;
          }

          v71 = &v20[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_124;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v20[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_119;
        }

        v78 = &v20[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v81 < v69)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v123)
        {
          goto LABEL_135;
        }

        v86 = v20;
        a4 = *&v20[16 * v6 + 32];
        v87 = *&v20[16 * v48 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v123 + *(v122 + 72) * a4, *v123 + *(v122 + 72) * *&v20[16 * v48 + 32], *v123 + *(v122 + 72) * v87, v47);
        if (v35)
        {
          goto LABEL_111;
        }

        if (v87 < a4)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v88 = v86;
        }

        else
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew()(v86);
        }

        if (v6 >= *(v88 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v88[16 * v6];
        *(v89 + 4) = a4;
        *(v89 + 5) = v87;
        v129 = v88;
        specialized Array.remove(at:)(v48);
        v20 = v129;
        a4 = *(v129 + 2);
        v6 = v128;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v53 = &v20[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_115;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_116;
      }

      v60 = &v20[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_118;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_121;
      }

      if (v64 >= v56)
      {
        v82 = &v20[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v128;
LABEL_4:
    v113 = v35;
    v18 = v123[1];
    if (v19 >= v18)
    {
      goto LABEL_100;
    }
  }

  if (v124)
  {
    v99 = v21;
    v100 = v125;
    outlined init with take of (key: URL, value: FPItem)(a4, v125, v99, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
    v6 = v128;
    swift_arrayInitWithTakeFrontToBack();
    v101 = v100;
    v21 = v99;
    outlined init with take of (key: URL, value: FPItem)(v101, v95, v99, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
    v95 += v93;
    a4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v129 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v137 = &v122 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v143 = &v122 - v18;
  v21.n128_f64[0] = MEMORY[0x28223BE20](v19, v20);
  v142 = &v122 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_136;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v116 = a4;
    }

    else
    {
LABEL_130:
      v116 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v117 = v6;
    v145 = v116;
    a4 = *(v116 + 2);
    if (a4 >= 2)
    {
      v118 = v10;
      v10 = a3;
      a3 = v118;
      while (*v10)
      {
        v119 = *&v116[16 * a4];
        v120 = v116;
        v6 = *&v116[16 * a4 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v10 + a3[9] * v119, (*v10 + a3[9] * *&v116[16 * a4 + 16]), *v10 + a3[9] * v6, v5);
        if (v117)
        {
          goto LABEL_107;
        }

        if (v6 < v119)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew()(v120);
        }

        if (a4 - 2 >= *(v120 + 2))
        {
          goto LABEL_124;
        }

        v121 = &v120[16 * a4];
        *v121 = v119;
        *(v121 + 1) = v6;
        v145 = v120;
        specialized Array.remove(at:)(a4 - 1);
        v116 = v145;
        a4 = *(v145 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v24 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v25 = MEMORY[0x277D84F90];
  v127 = a3;
  v125 = a4;
  v144 = v9;
  while (1)
  {
    v26 = v24;
    v130 = v25;
    if (v24 + 1 >= v23)
    {
      v37 = v24 + 1;
    }

    else
    {
      v135 = v23;
      v124 = v6;
      v132 = *a3;
      v27 = v132;
      v28 = v10[9];
      v5 = v132 + v28 * (v24 + 1);
      v29 = v10[2];
      v30 = v142;
      v29(v142, v5, v9, v21);
      v31 = v27 + v28 * v26;
      v32 = v143;
      v134 = v29;
      (v29)(v143, v31, v9);
      LODWORD(v136) = static IndexPath.< infix(_:_:)();
      v33 = v9;
      v34 = v10[1];
      v34(v32, v33);
      v133 = v34;
      v34(v30, v33);
      v123 = v26;
      v35 = v26 + 2;
      v138 = v28;
      v36 = v132 + v28 * (v26 + 2);
      while (1)
      {
        v37 = v135;
        if (v135 == v35)
        {
          break;
        }

        v38 = v10;
        v39 = v142;
        v40 = v144;
        v41 = v134;
        (v134)(v142, v36, v144);
        v42 = v143;
        v41(v143, v5, v40);
        v43 = static IndexPath.< infix(_:_:)() & 1;
        v44 = v133;
        (v133)(v42, v40);
        v45 = v39;
        v10 = v38;
        v44(v45, v40);
        ++v35;
        v36 += v138;
        v5 += v138;
        if ((v136 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      a3 = v127;
      v25 = v130;
      v6 = v124;
      a4 = v125;
      v9 = v144;
      v26 = v123;
      if (v136)
      {
        if (v37 < v123)
        {
          goto LABEL_127;
        }

        if (v123 < v37)
        {
          v122 = v10;
          v46 = v138 * (v37 - 1);
          v47 = v37 * v138;
          v48 = v37;
          v49 = v123;
          v50 = v123 * v138;
          do
          {
            if (v49 != --v48)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v53 = v37;
              v5 = &v52[v50];
              v136 = *v139;
              (v136)(v129, &v52[v50], v144, v25);
              if (v50 < v46 || v5 >= &v52[v47])
              {
                v51 = v144;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v51 = v144;
                if (v50 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v136(&v52[v46], v129, v51);
              a3 = v127;
              v25 = v130;
              v37 = v53;
            }

            ++v49;
            v46 -= v138;
            v47 -= v138;
            v50 += v138;
          }

          while (v49 < v48);
          v6 = v124;
          a4 = v125;
          v10 = v122;
          v9 = v144;
          v26 = v123;
        }
      }
    }

    v54 = a3[1];
    if (v37 < v54)
    {
      if (__OFSUB__(v37, v26))
      {
        goto LABEL_126;
      }

      if (v37 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_128;
        }

        if ((v26 + a4) >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v26 + a4;
        }

        if (v55 < v26)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v37 != v55)
        {
          break;
        }
      }
    }

    v56 = v37;
    if (v37 < v26)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = v130;
    }

    else
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 2) + 1, 1, v130);
    }

    a4 = *(v25 + 2);
    v57 = *(v25 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), a4 + 1, 1, v25);
    }

    *(v25 + 2) = v5;
    v58 = &v25[16 * a4];
    *(v58 + 4) = v26;
    *(v58 + 5) = v56;
    v59 = *v126;
    if (!*v126)
    {
      goto LABEL_135;
    }

    v131 = v56;
    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v25 + 4);
          v62 = *(v25 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_52:
          if (v64)
          {
            goto LABEL_114;
          }

          v77 = &v25[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_117;
          }

          v83 = &v25[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_121;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v87 = &v25[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_66:
        if (v82)
        {
          goto LABEL_116;
        }

        v90 = &v25[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_119;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v98 = v25;
        v99 = *&v25[16 * a4 + 32];
        v5 = *&v25[16 * v60 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v10[9] * v99, (*a3 + v10[9] * *&v25[16 * v60 + 32]), *a3 + v10[9] * v5, v59);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v99)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew()(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_111;
        }

        v100 = &v98[16 * a4];
        *(v100 + 4) = v99;
        *(v100 + 5) = v5;
        v145 = v98;
        specialized Array.remove(at:)(v60);
        v25 = v145;
        v5 = *(v145 + 2);
        v9 = v144;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v25[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_112;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_113;
      }

      v72 = &v25[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_115;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_118;
      }

      if (v76 >= v68)
      {
        v94 = &v25[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_122;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = a3[1];
    v24 = v131;
    a4 = v125;
    if (v131 >= v23)
    {
      goto LABEL_95;
    }
  }

  v124 = v6;
  v101 = *a3;
  v102 = v10[9];
  v122 = v10;
  v138 = v10[2];
  v103 = v101 + v102 * (v37 - 1);
  v104 = -v102;
  v123 = v26;
  v105 = (v26 - v37);
  v136 = v101;
  v128 = v102;
  v5 = v101 + v37 * v102;
  v131 = v55;
LABEL_85:
  v134 = v103;
  v135 = v37;
  v132 = v5;
  v133 = v105;
  v106 = v103;
  while (1)
  {
    v107 = v142;
    v108 = v138;
    (v138)(v142, v5, v9, v25);
    v109 = v143;
    v108(v143, v106, v144);
    v110 = static IndexPath.< infix(_:_:)();
    a4 = v140;
    v111 = *v140;
    v112 = v109;
    v9 = v144;
    (*v140)(v112, v144);
    v111(v107, v9);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v37 = v135 + 1;
      v103 = &v134[v128];
      v105 = v133 - 1;
      v5 = v132 + v128;
      v56 = v131;
      if (v135 + 1 != v131)
      {
        goto LABEL_85;
      }

      v6 = v124;
      a3 = v127;
      v10 = v122;
      v26 = v123;
      if (v131 < v123)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    a4 = v139;
    v113 = *v139;
    v114 = v137;
    (*v139)(v137, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v9);
    v106 += v104;
    v5 += v104;
    if (__CFADD__(v105++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v58 = type metadata accessor for IndexPath();
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v9);
  v56 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v55 = &v46 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v57 = a3;
  v17 = &a2[-a1] / v15;
  v61 = a1;
  v60 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || &a2[v19] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = &a4[v19];
    if (v19 < 1)
    {
      v34 = &a4[v19];
    }

    else
    {
      v31 = -v15;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = &a4[v19];
      v33 = v57;
      v34 = v30;
      v48 = a1;
      v49 = a4;
      v52 = -v15;
      do
      {
        v46 = v34;
        v35 = a2;
        v36 = &a2[v31];
        v53 = v35;
        v54 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v61 = v35;
            v59 = v46;
            goto LABEL_59;
          }

          v38 = v33;
          v47 = v34;
          v57 = v33 + v31;
          v39 = &v32[v31];
          v40 = *v51;
          v41 = v55;
          v42 = v58;
          v43 = v32;
          (*v51)(v55, v39, v58);
          v44 = v56;
          (v40)(v56, v36, v42);
          LOBYTE(v40) = static IndexPath.< infix(_:_:)();
          v45 = *v50;
          (*v50)(v44, v42);
          v45(v41, v42);
          if (v40)
          {
            break;
          }

          v34 = v39;
          v33 = v57;
          if (v38 < v43 || v57 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v54;
            a1 = v48;
          }

          else
          {
            v36 = v54;
            a1 = v48;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v39;
          v37 = v39 > v49;
          v31 = v52;
          v35 = v53;
          if (!v37)
          {
            a2 = v53;
            goto LABEL_58;
          }
        }

        v46 = v43;
        v33 = v57;
        if (v38 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v47;
          a1 = v48;
          v31 = v52;
        }

        else
        {
          a2 = v54;
          v34 = v47;
          a1 = v48;
          v31 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v46 > v49);
    }

LABEL_58:
    v61 = a2;
    v59 = v34;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = &a4[v18];
    v59 = &a4[v18];
    if (v18 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = (v8 + 16);
      v50 = v15;
      v51 = (v8 + 8);
      do
      {
        v21 = v55;
        v22 = v58;
        v23 = v52;
        (v52)(v55, a2, v58);
        v24 = a2;
        v25 = v56;
        v23(v56, a4, v22);
        v26 = static IndexPath.< infix(_:_:)();
        v27 = *v51;
        (*v51)(v25, v22);
        v27(v21, v22);
        if (v26)
        {
          v28 = v50;
          a2 = &v50[v24];
          if (a1 < v24 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v28 = v50;
          v29 = &v50[a4];
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v29;
          a4 = &v28[a4];
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v61, &v60, &v59, MEMORY[0x277CC9AF8]);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, MEMORY[0x277CC9578]);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1FE870](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1FE870](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _NativeSet.isSubset<A>(of:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  v7 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v7 = v12, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v7);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    specialized closure #1 in _NativeSet.isSubset<A>(of:)(v9, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    partial apply for specialized closure #1 in _NativeSet.isSubset<A>(of:)(v13, &v17);
    v14 = v17;
    MEMORY[0x24C1FE850](v13, -1, -1);
    v10 = v14;
  }

  return v10 & 1;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n0110_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingyO12_tFSbSSXEfU_0sT11Executables0vwxY0C29StringWidthCalculationContextCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void specialized DOCItemCollectionViewController.move(nodes:to:completion:)(unint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v50 = a5;
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v54 = type metadata accessor for DOCOperationItem(0);
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v7);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10, v11);
  v48 = &v47 - v13;
  v14 = *MEMORY[0x277CC6028];
  v49 = a2;
  if (![a2 canPerform_])
  {
    goto LABEL_37;
  }

  v15 = v55;
  v47 = v55 >> 62;
  if (!(v55 >> 62))
  {
    v53 = v55 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      v17 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

LABEL_37:
    v51(0);
    return;
  }

LABEL_35:
  v53 = v15 & 0xFFFFFFFFFFFFFF8;
  v46 = __CocoaSet.count.getter();
  if (v46 < 1)
  {
    goto LABEL_37;
  }

  v16 = v46;
  v17 = __CocoaSet.count.getter();
LABEL_5:
  v18 = 0;
  v19 = v55 & 0xC000000000000001;
  v20 = (v55 + 32);
  v21 = *MEMORY[0x277CC6048];
  while (v17 != v18)
  {
    if (v19)
    {
      v22 = MEMORY[0x24C1FC540](v18, v55);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = v55;
      if (v18 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v22 = *(v55 + 8 * v18 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v18, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    v23 = [v22 canPerform_];
    swift_unknownObjectRelease();
    ++v18;
    if ((v23 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v56 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v24 = v56;
  if (v19)
  {
    v25 = 0;
    v26 = v55;
    do
    {
      *v9 = MEMORY[0x24C1FC540](v25, v26);
      swift_storeEnumTagMultiPayload();
      v56 = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v24 = v56;
      }

      ++v25;
      *(v24 + 16) = v28 + 1;
      outlined init with take of ScrollPositionInfo.ItemOffset(v9, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, type metadata accessor for DOCOperationItem);
    }

    while (v16 != v25);
  }

  else
  {
    v29 = v48;
    do
    {
      *v29 = *v20;
      swift_storeEnumTagMultiPayload();
      v56 = v24;
      v30 = *(v24 + 16);
      v31 = *(v24 + 24);
      swift_unknownObjectRetain();
      if (v30 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v30 + 1, 1);
        v24 = v56;
      }

      *(v24 + 16) = v30 + 1;
      outlined init with take of ScrollPositionInfo.ItemOffset(v29, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, type metadata accessor for DOCOperationItem);
      ++v20;
      --v16;
    }

    while (v16);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.UI);

  v33 = v49;
  swift_unknownObjectRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v56 = v37;
    *v36 = 136315906;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE0F20, &v56);
    *(v36 + 12) = 2048;
    if (v47)
    {
      *(v36 + 14) = __CocoaSet.count.getter();
      *(v36 + 22) = 2048;
      v38 = __CocoaSet.count.getter();
    }

    else
    {
      v38 = *(v53 + 16);
      *(v36 + 14) = v38;
      *(v36 + 22) = 2048;
    }

    *(v36 + 24) = v38;

    *(v36 + 32) = 2080;
    v39 = [v33 displayName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v56);

    *(v36 + 34) = v43;
    _os_log_impl(&dword_2493AC000, v34, v35, "%s Requested to move %ld nodes. Moving %ld eligible to newly created folder: %s", v36, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v37, -1, -1);
    MEMORY[0x24C1FE850](v36, -1, -1);
  }

  else
  {
  }

  v44 = [objc_opt_self() defaultManager];
  v45 = swift_allocObject();
  *(v45 + 16) = v51;
  *(v45 + 24) = v52;

  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v24, v33, 1, 1, 0, v50, partial apply for closure #3 in DOCItemCollectionViewController.move(nodes:to:completion:), v45);
}

double specialized startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, void *a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);

  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v41);
    v39 = v13;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0FF0, &v41);
    *(v14 + 22) = 2080;
    v15 = a3;
    v16 = [v11 description];
    v17 = v11;
    v18 = a4;
    v19 = a2;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    a3 = v15;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v41);

    *(v14 + 24) = v23;
    a2 = v19;
    a4 = v18;
    v11 = v17;
    _os_log_impl(&dword_2493AC000, v12, v39, "%s > %s: item: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v40, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  a5[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder] = 1;
  type metadata accessor for DOCInlineRenameController();
  v24 = swift_allocObject();
  v25 = v11;
  v26 = a5;
  v27 = a2;
  v28 = specialized DOCInlineRenameController.init(delegate:cell:node:)(v26, v27, v25, v24);

  (*(*v28 + 232))(1);
  v29 = MEMORY[0x277D85000];
  v30 = *((*MEMORY[0x277D85000] & *v26) + 0x14A0);

  v30(v31);
  v26[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename] = 0;
  v32 = swift_allocObject();
  v32[2] = a3;
  v32[3] = a4;
  v32[4] = v28;
  v32[5] = v26;
  v33 = *((*v29 & *v26) + 0x8D8);

  v34 = v26;

  v36 = v33(v35);
  if (v36)
  {

    v37 = *((*v29 & *v34) + 0x910);

    v37(partial apply for closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:), v32);
  }

  else
  {
    closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a3, a4, v28, v34);
  }

  return result;
}

{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);

  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v38 = a3;
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, a4, &v39);
    v37 = a2;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0FF0, &v39);
    *(v13 + 22) = 2080;
    v14 = [a1 description];
    v15 = a5;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v16;
    a5 = v15;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v39);
    a2 = v37;

    *(v13 + 24) = v20;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s > %s: item: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v36, -1, -1);
    v21 = v13;
    a3 = v38;
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  a5[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder] = 1;
  type metadata accessor for DOCInlineRenameController();
  v22 = swift_allocObject();
  swift_unknownObjectRetain();
  v23 = a5;
  v24 = a2;
  v25 = specialized DOCInlineRenameController.init(delegate:cell:node:)(v23, v24, a1, v22);

  swift_unknownObjectRelease();
  (*(*v25 + 232))(1);
  v26 = MEMORY[0x277D85000];
  v27 = *((*MEMORY[0x277D85000] & *v23) + 0x14A0);

  v27(v28);
  v23[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename] = 0;
  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = v25;
  v29[5] = v23;
  v30 = *((*v26 & *v23) + 0x8D8);

  v31 = v23;

  v33 = v30(v32);
  if (v33)
  {

    v34 = *((*v26 & *v31) + 0x910);

    v34(closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)partial apply, v29);
  }

  else
  {
    closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a3, a4, v25, v31);
  }

  return result;
}

uint64_t specialized static DOCItemCollectionViewController.RestorableSettingsCacheKey.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    return 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v9 & 1;
  }
}

uint64_t specialized static RestorableSearchInfo.restorableInfo(for:)(void *a1)
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0xBB8))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0x340))();
  if ((*((*v1 & *v3) + 0x338))())
  {
    v5 = String.count.getter();

    if (v5 > 0)
    {
      return v4;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return 0;
}

void specialized Sequence.forEach(_:)(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      closure #1 in DOCItemCollectionViewController.visibleCellsBySection.getter(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
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

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);

    v15 = String.count.getter();
    v16 = (*(*a4 + 136))(v15);

    if (v15 != v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v32 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = v8;
    v28 = v3;
    v26[1] = v26;
    MEMORY[0x28223BE20](v10, v11);
    v29 = v26 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v9);
    v30 = 0;
    v31 = v5;
    v8 = 0;
    v13 = *(v5 + 56);
    v5 += 56;
    v12 = v13;
    v14 = 1 << *(v5 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v9 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v3 = v17 | (v8 << 6);

      v20 = String.count.getter();
      v21 = (*(*a2 + 136))();

      if (v20 != v21)
      {
        *&v29[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v23 = specialized _NativeSet.extractSubset(using:count:)(v29, v27, v30, v31);

          return v23;
        }
      }
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        goto LABEL_16;
      }

      v19 = *(v5 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();

  v23 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n0110_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingyO12_tFSbSSXEfU_0sT11Executables0vwxY0C29StringWidthCalculationContextCTf1nnc_n(v25, v8, v5, a2);

  MEMORY[0x24C1FE850](v25, -1, -1);

  return v23;
}

void specialized closure #1 in _NativeSet.isSubset<A>(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62)
  {
LABEL_26:
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    v19 = a2;
    v26 = __CocoaSet.count.getter();
    v3 = v19;
  }

  else
  {
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = a2;
  }

  v21 = 0;
  v4 = 0;
  v25 = v3 & 0xC000000000000001;
  v20 = v3;
  v23 = v3 + 32;
  v27 = a3 + 56;
LABEL_4:
  if (v4 != v26)
  {
    while (1)
    {
      if (v25)
      {
        v5 = MEMORY[0x24C1FC540](v4, v20);
      }

      else
      {
        if (v4 >= *(v24 + 16))
        {
          goto LABEL_25;
        }

        v5 = *(v23 + 8 * v4);
      }

      v6 = v5;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = NSObject._rawHashValue(seed:)(*(a3 + 40));
      v9 = -1 << *(a3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & *(v27 + 8 * (v10 >> 6))) == 0)
      {
        goto LABEL_6;
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
      v13 = *(*(a3 + 48) + 8 * v10);
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) == 0)
      {
        break;
      }

LABEL_17:

      v18 = *(a1 + 8 * v11);
      *(a1 + 8 * v11) = v18 | v12;
      if ((v18 & v12) == 0)
      {
        if (__OFADD__(v21, 1))
        {
          __break(1u);
        }

        else if (++v21 != *(a3 + 16))
        {
          goto LABEL_4;
        }

        return;
      }

LABEL_7:
      if (v4 == v26)
      {
        return;
      }
    }

    v15 = ~v9;
    while (1)
    {
      v10 = (v10 + 1) & v15;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & *(v27 + 8 * (v10 >> 6))) == 0)
      {
        break;
      }

      v16 = *(*(a3 + 48) + 8 * v10);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_17;
      }
    }

LABEL_6:

    goto LABEL_7;
  }
}

uint64_t specialized DOCItemCollectionViewController.footerView(createIfNeeded:)(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView) || (result & 1) == 0)
  {
    return *(v2 + v3);
  }

  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v4)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x1B0))();
    v7 = *((*v5 & *v2) + 0xA50);
    v8 = v4;
    v7(v21);
    v14 = specialized DOCStatusFooterView.__allocating_init(folderNode:nodeCollection:itemCollectionConfiguration:)(v6, v8, v21, v9, v10, v11, v12, v13);
    if (v14)
    {
      v15 = v14;
      v16 = v14;
      v17 = (*((*v5 & *v2) + 0xBD8))([v16 setTranslatesAutoresizingMaskIntoConstraints_]);
      DOCStatusFooterView.displayMode.setter(v17);
      v18 = &v16[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate];
      swift_beginAccess();
      *(v18 + 1) = &protocol witness table for DOCItemCollectionViewController;
      swift_unknownObjectWeakAssign();
      [v16 setAccessibilityIdentifier_];

      v19 = &v16[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate];
      swift_beginAccess();
      *(v19 + 1) = &protocol witness table for DOCItemCollectionViewController;
      swift_unknownObjectWeakAssign();
      v20 = *(v2 + v3);
      *(v2 + v3) = v15;
    }

    return *(v2 + v3);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, uint64_t a2, char *a3)
{
  i = v3;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsVSgMd, &_s21DocumentManagerUICore12ImageOptionsVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v27 - v9;
  v39 = type metadata accessor for ImageOptions();
  v11 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = &v27 - v18;
  v43 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_23:
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = __CocoaSet.count.getter();
    if (v20)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v42 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v33 = a3;
  v34 = v19;
  v32 = v14;
  v14 = 0;
  v41 = a1 & 0xC000000000000001;
  v37 = (v11 + 6);
  v30 = (v11 + 4);
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_imageCache;
  v28 = (v11 + 1);
  v29 = (v11 + 2);
  v21 = MEMORY[0x277D84F90];
  v11 = &_s21DocumentManagerUICore12ImageOptionsVSgMd;
  a3 = &_s21DocumentManagerUICore12ImageOptionsVSgMR;
  v40 = v20;
  v36 = i;
  do
  {
    v35 = v21;
    for (i = v14; ; ++i)
    {
      if (v41)
      {
        v19 = a1;
        a1 = MEMORY[0x24C1FC540](i, a1, v17);
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *(v42 + 16))
        {
          goto LABEL_22;
        }

        v19 = a1;
        a1 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      swift_getObjectType();
      v22 = v11;
      if (!DOCNode.isCreateDocumentSentinel()())
      {
        break;
      }

LABEL_6:
      swift_unknownObjectRelease();
      a1 = v19;
      if (v14 == v40)
      {
        return v35;
      }
    }

    outlined init with copy of DOCGridLayout.Spec?(v38, v10, v11, &_s21DocumentManagerUICore12ImageOptionsVSgMR);
    if ((*v37)(v10, 1, v39) == 1)
    {
      outlined destroy of CharacterSet?(v10, v11, &_s21DocumentManagerUICore12ImageOptionsVSgMR);
      goto LABEL_6;
    }

    v23 = v34;
    v24 = v39;
    (*v30)(v34, v10, v39);
    (*v29)(v32, v23, v24);
    objc_allocWithZone(type metadata accessor for NodeThumbnail());
    swift_unknownObjectRetain();

    v35 = NodeThumbnail.init(node:imageOptions:imageCache:)();
    (*v28)(v34, v24);
    v25 = swift_unknownObjectRelease();
    MEMORY[0x24C1FB090](v25);
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v43;
    a1 = v19;
    v11 = v22;
  }

  while (v14 != v40);
  return v21;
}

uint64_t specialized DOCItemCollectionViewController.renameFinished(_:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.Rename);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v25 = v1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BCE890, aBlock);
    *(v13 + 12) = 2080;
    v15 = (*((*MEMORY[0x277D85000] & *v10) + 0x1498))();
    if (v15)
    {
      (*(*v15 + 272))(v15);

      swift_getObjectType();
      v16 = DOCNode.nodeDescription.getter();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 4271950;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, aBlock);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s node: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);

    v1 = v25;
  }

  else
  {
  }

  *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.renameFinished(_:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_924;
  v22 = _Block_copy(aBlock);
  v23 = v10;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v8, v4, v22);
  _Block_release(v22);

  (*(v28 + 8))(v4, v1);
  return (*(v26 + 8))(v8, v27);
}

uint64_t specialized DOCItemCollectionViewController.cell(_:canPerform:)(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *a1) + 0x208))();
  if (v4 && (v5 = *((*v3 & *v4) + 0x3D0), v6 = v4, v7 = v5(), v6, v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v7;
    swift_unknownObjectRetain();
    specialized static DOCActionManager.canPerform(_:on:)(a2, inited);
    v10 = v9;
    swift_unknownObjectRelease();
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t specialized DOCItemCollectionViewController.cellShouldStartInlineRenaming(_:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1010))();
  if ([v1 isDragging] || objc_msgSend(v1, sel_isDecelerating))
  {

    return 0;
  }

  v3 = [v1 isTracking];

  if (v3)
  {
    return 0;
  }

  return [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI] ^ 1;
}

id specialized DOCItemCollectionViewController.cell(_:actionContextFrom:)(uint64_t a1)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v3, &_sypSgMd, &_sypSgMR);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCActionPerformer_pMd, &_s26DocumentManagerExecutables18DOCActionPerformer_pMR);
    swift_dynamicCast();
  }

  else
  {
    outlined destroy of CharacterSet?(v3, &_sypSgMd, &_sypSgMR);
  }

  v1 = DOCItemCollectionViewController.actionContext(from:)();
  swift_unknownObjectRelease();
  return v1;
}

void specialized DOCItemCollectionViewController.configureSupplementaryItems(for:footerContentInsets:)(void *a1)
{
  v20 = MEMORY[0x277D84F90];
  if (DOCItemCollectionViewController.needsHeaderView.getter())
  {
    v2 = objc_opt_self();
    v3 = [v2 fractionalWidthDimension_];
    v4 = [v2 estimatedDimension_];
    v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

    v6 = v5;
    v7 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC6130);
    v8 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:v7 alignment:1];

    v9 = v8;
    MEMORY[0x24C1FB090]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v10 = objc_opt_self();
  v11 = [v10 fractionalWidthDimension_];
  v12 = [v10 estimatedDimension_];
  v13 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = v13;
  v15 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC5E50);
  v16 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:v15 alignment:5];

  v17 = v16;
  MEMORY[0x24C1FB090]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v19 = [a1 configuration];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem, 0x277CFB830);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setBoundarySupplementaryItems_];

  [v19 setContentInsetsReference_];
  [a1 setConfiguration_];
}

void specialized DOCItemCollectionViewController.nodeCollectionDidStartGathering(_:)()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xA40))();
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    if ([v1 isGathering])
    {
      *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) = 0;

      DOCItemCollectionViewController.showLoadingViewIfNeeded()();
    }

    else
    {
      DOCItemCollectionViewController.notifyContentDidLoad()();
      v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
      if (v2)
      {
        v4 = v2;
        DOCStatusFooterView.updateQuotaLabel()(v3);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized DOCItemCollectionViewController.nodeCollectionDidFinishGathering(_:)()
{
  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for DOCItemCollectionViewDidFinishGathering != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidFinishGathering object:v0];

  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v2)
  {
    DOCItemCollectionViewController.data(forNodeCollectionShouldBeReloaded:)(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection));
    (*((*MEMORY[0x277D85000] & *v0) + 0xA40))();
    if ([v2 isGathering])
    {
      *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) = 0;

      DOCItemCollectionViewController.showLoadingViewIfNeeded()();
    }

    else
    {
      DOCItemCollectionViewController.notifyContentDidLoad()();
      v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
      if (v3)
      {
        v5 = v3;
        DOCStatusFooterView.updateQuotaLabel()(v4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized DOCItemCollectionViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) = 1;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_subscriptions) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTasks) = v2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview) = 0;
  v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_existingOverlayTitleBeforeRename);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher);
  v5 = type metadata accessor for FamilyFetcher();
  v6 = swift_allocObject();
  v4[3] = v5;
  v4[4] = &protocol witness table for FamilyFetcher;
  *v4 = v6;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDropSession) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration) = 0;
  v7 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_blockToRunWhenMenuInteractionFinishedDismissing);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registeredItemCellClassByIdentifier;
  v9 = MEMORY[0x277D84F90];
  *(v1 + v8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_26DocumentManagerExecutables21DOCItemCollectionCellCmTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus) = 2;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath;
  v12 = type metadata accessor for IndexPath();
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_dropTargetHighlightedCell) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_titleMenuContext) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTitleMenuContext) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_valuesPendingUntilNextReload) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_contentUnavailableUIAllowed) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_urlToItemCache) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationIsProtected) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationHasAuthenticated) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_outerScrollView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkCreateFolderInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkTrashFileInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetFileExtensionVisibilityInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetGroupingModeInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus) = 0;
  v14 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier);
  *v14 = 0xD000000000000020;
  v14[1] = 0x8000000249BDE7A0;
  v15 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
  *v15 = 0xD000000000000023;
  v15[1] = 0x8000000249BDE7D0;
  v16 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier);
  *v16 = 0xD000000000000020;
  v16[1] = 0x8000000249BDE800;
  v17 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier);
  *v17 = 0xD000000000000029;
  v17[1] = 0x8000000249BDE830;
  v18 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionCreateCellIdentifier);
  *v18 = 0xD000000000000022;
  v18[1] = 0x8000000249BDE860;
  v19 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier);
  *v19 = 0xD00000000000002BLL;
  v19[1] = 0x8000000249BDE890;
  v20 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier);
  *v20 = 0xD000000000000030;
  v20[1] = 0x8000000249BDE8C0;
  v21 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier);
  *v21 = 0xD00000000000002BLL;
  v21[1] = 0x8000000249BDE900;
  v22 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier);
  *v22 = 0xD00000000000002CLL;
  v22[1] = 0x8000000249BDE930;
  v23 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyHeaderIdentifier);
  *v23 = 0xD000000000000030;
  v23[1] = 0x8000000249BDE960;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_searchPresentationState) = 4;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode) = 0;
  v24 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentLoadingProgress);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentTransitionVisibility);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool;
  type metadata accessor for DOCItemCollectionCellContentPool();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v27[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(v9);
  *(v1 + v26) = v27;
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(v1 + v28) = ImageCache.init()();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isApplyingSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsUpdateDiffableSnapshot) = 1;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_appLaunchOptimizationsActive;
  v30 = [objc_opt_self() shared];
  LOBYTE(v28) = [v30 locked];

  *(v1 + v29) = v28;
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentFocusEngineIndexPath, 1, 1, v12);
  v31 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController;
  *v31 = v9;
  *(v31 + 8) = v9;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_So7DOCNode_pTt0g5Tf4g_n(v9);
  *(v31 + 16) = v32;
  *(v31 + 24) = 11;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__groupingBehavior) = 10;
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldShowAllFilenameExtensionPublisher;
  if (one-time initialization token for shared != -1)
  {
    v32 = swift_once();
  }

  *(v1 + v33) = (*(*static DOCFileExtensionManager.shared + 192))(v32);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsBeforeModelUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsOriginObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeThumbnailBatchingTokens) = v9;
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathForRememberedFocusNode, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_firstItemInsertionRequestsFocus) = 0;
  v34 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController;
  *(v1 + v34) = [objc_allocWithZone(type metadata accessor for DOCTypeToFocusController()) init];
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathOfSwipedItem, 1, 1, v12);
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___listLayoutConfiguration;
  v36 = type metadata accessor for UICollectionLayoutListConfiguration();
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout) = 0;
  v37 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tableLayoutSidebarPlainAppearanceMetrics;
  *v37 = 0;
  *(v37 + 8) = xmmword_249BAA8A0;
  *(v37 + 24) = xmmword_249BAA8B0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView) = 1;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits) = 0;
  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v39 = v1 + v38;
  v40 = qword_27EEE8FE0;
  v41 = *algn_27EEE8FD0;
  *v39 = static DOCItemCollectionCellStackMetrics.zero;
  *(v39 + 16) = v41;
  *(v39 + 32) = v40;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading) = 0;
  v42 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *v42 = 0;
  *(v42 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__selectedChildNode) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForceLayoutForFooter) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
  v43 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController) = 0;
  v44 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName);
  *v44 = 0;
  v44[1] = 0;
  v45 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v45 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = v9;
  v46 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
  *v46 = 0;
  *(v46 + 8) = 0;
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
  v48 = type metadata accessor for ScrollPositionInfo(0);
  (*(*(v48 - 8) + 56))(v1 + v47, 1, 1, v48);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell) = 0;
  v49 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 0;
  v50 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_bbiStorage;
  type metadata accessor for DOCItemCollectionViewController.BBIStorage();
  swift_allocObject();
  DOCItemCollectionViewController.BBIStorage.init()();
  *(v1 + v50) = v51;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToBeMovedIntoCreatedFolder) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized DOCItemCollectionViewController.init(configuration:documentManager:actionManager:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) = 1;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_subscriptions) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTasks) = v2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview) = 0;
  v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_existingOverlayTitleBeforeRename);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher);
  v5 = type metadata accessor for FamilyFetcher();
  v6 = swift_allocObject();
  v4[3] = v5;
  v4[4] = &protocol witness table for FamilyFetcher;
  *v4 = v6;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDropSession) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration) = 0;
  v7 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_blockToRunWhenMenuInteractionFinishedDismissing);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registeredItemCellClassByIdentifier;
  v9 = MEMORY[0x277D84F90];
  *(v1 + v8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_26DocumentManagerExecutables21DOCItemCollectionCellCmTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus) = 2;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath;
  v12 = type metadata accessor for IndexPath();
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_dropTargetHighlightedCell) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_titleMenuContext) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTitleMenuContext) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_valuesPendingUntilNextReload) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_contentUnavailableUIAllowed) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_urlToItemCache) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationIsProtected) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationHasAuthenticated) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_outerScrollView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkCreateFolderInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkTrashFileInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetFileExtensionVisibilityInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetGroupingModeInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus) = 0;
  v14 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier);
  *v14 = 0xD000000000000020;
  v14[1] = 0x8000000249BDE7A0;
  v15 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
  *v15 = 0xD000000000000023;
  v15[1] = 0x8000000249BDE7D0;
  v16 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier);
  *v16 = 0xD000000000000020;
  v16[1] = 0x8000000249BDE800;
  v17 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier);
  *v17 = 0xD000000000000029;
  v17[1] = 0x8000000249BDE830;
  v18 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionCreateCellIdentifier);
  *v18 = 0xD000000000000022;
  v18[1] = 0x8000000249BDE860;
  v19 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier);
  *v19 = 0xD00000000000002BLL;
  v19[1] = 0x8000000249BDE890;
  v20 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier);
  *v20 = 0xD000000000000030;
  v20[1] = 0x8000000249BDE8C0;
  v21 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier);
  *v21 = 0xD00000000000002BLL;
  v21[1] = 0x8000000249BDE900;
  v22 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier);
  *v22 = 0xD00000000000002CLL;
  v22[1] = 0x8000000249BDE930;
  v23 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyHeaderIdentifier);
  *v23 = 0xD000000000000030;
  v23[1] = 0x8000000249BDE960;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_searchPresentationState) = 4;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode) = 0;
  v24 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentLoadingProgress);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentTransitionVisibility);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool;
  type metadata accessor for DOCItemCollectionCellContentPool();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v27[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(v9);
  *(v1 + v26) = v27;
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(v1 + v28) = ImageCache.init()();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isApplyingSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsUpdateDiffableSnapshot) = 1;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_appLaunchOptimizationsActive;
  v30 = [objc_opt_self() shared];
  LOBYTE(v28) = [v30 locked];

  *(v1 + v29) = v28;
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentFocusEngineIndexPath, 1, 1, v12);
  v31 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController;
  *v31 = v9;
  *(v31 + 8) = v9;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_So7DOCNode_pTt0g5Tf4g_n(v9);
  *(v31 + 16) = v32;
  *(v31 + 24) = 11;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__groupingBehavior) = 10;
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldShowAllFilenameExtensionPublisher;
  if (one-time initialization token for shared != -1)
  {
    v32 = swift_once();
  }

  *(v1 + v33) = (*(*static DOCFileExtensionManager.shared + 192))(v32);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsBeforeModelUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsOriginObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeThumbnailBatchingTokens) = v9;
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathForRememberedFocusNode, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_firstItemInsertionRequestsFocus) = 0;
  v34 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController;
  *(v1 + v34) = [objc_allocWithZone(type metadata accessor for DOCTypeToFocusController()) init];
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathOfSwipedItem, 1, 1, v12);
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___listLayoutConfiguration;
  v36 = type metadata accessor for UICollectionLayoutListConfiguration();
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout) = 0;
  v37 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tableLayoutSidebarPlainAppearanceMetrics;
  *v37 = 0;
  *(v37 + 8) = xmmword_249BAA8A0;
  *(v37 + 24) = xmmword_249BAA8B0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView) = 1;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits) = 0;
  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v39 = v1 + v38;
  v40 = qword_27EEE8FE0;
  v41 = *algn_27EEE8FD0;
  *v39 = static DOCItemCollectionCellStackMetrics.zero;
  *(v39 + 16) = v41;
  *(v39 + 32) = v40;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading) = 0;
  v42 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *v42 = 0;
  *(v42 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__selectedChildNode) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForceLayoutForFooter) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
  v43 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController) = 0;
  v44 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName);
  *v44 = 0;
  v44[1] = 0;
  v45 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v45 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = v9;
  v46 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
  *v46 = 0;
  *(v46 + 8) = 0;
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
  v48 = type metadata accessor for ScrollPositionInfo(0);
  (*(*(v48 - 8) + 56))(v1 + v47, 1, 1, v48);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell) = 0;
  v49 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 0;
  v50 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_bbiStorage;
  type metadata accessor for DOCItemCollectionViewController.BBIStorage();
  swift_allocObject();
  DOCItemCollectionViewController.BBIStorage.init()();
  *(v1 + v50) = v51;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToBeMovedIntoCreatedFolder) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type UIView and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIView and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIView and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIView and conformance NSObject);
  }

  return result;
}

void *outlined copy of (progress: NSProgress, node: DOCNode)?(void *result)
{
  if (result)
  {
    v1 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

double outlined consume of (offset: Int, element: DOCCollectionSection)?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return result;
}

id partial apply for closure #3 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 removeFromSuperview];
}

void *specialized DOCItemCollectionViewController.FooterView.preferredLayoutAttributesFitting(_:)(void *a1)
{
  [a1 frame];
  Width = CGRectGetWidth(v16);
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [v1 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v4, v5}];
  v7 = v6;
  [a1 frame];
  [a1 setSize_];
  [a1 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a1 size];
  [a1 setFrame_];
  return a1;
}

void specialized DOCItemCollectionViewController.title.setter()
{
  _StringGuts.grow(_:)(31);

  swift_getObjectType();
  v0 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t outlined init with copy of ScrollPositionInfo.ItemOffset(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id outlined copy of DOCItemCollectionViewController.RestorableSettingsCacheKey?(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t outlined destroy of RestorableSettings(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of ScrollPositionInfo.ItemOffset(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ScrollPositionInfo.ItemOffset(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #1 in DOCItemCollectionViewController.willTransition(to:with:)()
{
  v1 = *(v0 + 24);
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x1448))())
  {
    DOCItemCollectionViewController.updateNavBarHiddenForActiveRename(traitCollection:)(v1);
  }
}

unint64_t lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait()
{
  result = lazy protocol witness table cache variable for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait;
  if (!lazy protocol witness table cache variable for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait);
  }

  return result;
}

uint64_t specialized closure #3 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in closure #3 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1347;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v16 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v15);
}

double specialized DOCItemCollectionViewController.collectionView(_:prefetchItemsAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v56 = &v46 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = &v46 - v18;
  v20 = *(a1 + 16);
  v57 = v2;
  if (v20)
  {
    v21 = *((*MEMORY[0x277D85000] & *v2) + 0x18A0);
    v53 = ((*MEMORY[0x277D85000] & *v2) + 6304);
    v54 = v21;
    v22 = *(v9 + 16);
    v47 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v23 = a1 + v47;
    v24 = *(v9 + 72);
    v50 = (v9 + 8);
    v51 = v22;
    v25 = (v9 + 48);
    v58 = MEMORY[0x277D84F90];
    v52 = v9 + 16;
    v48 = v9;
    v49 = (v9 + 32);
    v22(v19, a1 + v47, v8, v17);
    while (1)
    {
      v54(v19);
      (*v50)(v19, v8);
      if ((*v25)(v7, 1, v8) == 1)
      {
        outlined destroy of CharacterSet?(v7, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        v26 = *v49;
        (*v49)(v55, v7, v8);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = v58;
        }

        else
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
        }

        v27[2] = v29 + 1;
        v58 = v27;
        v26(v27 + v47 + v29 * v24, v55, v8);
        v2 = v57;
        v9 = v48;
      }

      v23 += v24;
      if (!--v20)
      {
        break;
      }

      v51(v19, v23, v8, v17);
    }
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v59 = MEMORY[0x277D84F90];
  v30 = v58[2];
  if (!v30)
  {

    v37 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_22;
    }

LABEL_25:
    v41 = __CocoaSet.count.getter();
    if (v41)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v31 = *((*MEMORY[0x277D85000] & *v2) + 0xD88);
  v54 = ((*MEMORY[0x277D85000] & *v2) + 3464);
  v55 = v31;
  v33 = *(v9 + 16);
  v32 = v9 + 16;
  v53 = v33;
  v34 = v58 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
  v35 = *(v32 + 56);
  v36 = (v32 - 8);
  v37 = MEMORY[0x277D84F90];
  do
  {
    v38 = v56;
    v53(v56, v34, v8, v17);
    v39 = (v55)(v38, 0);
    v40 = (*v36)(v38, v8);
    if (v39)
    {
      MEMORY[0x24C1FB090](v40);
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v48 = v32;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v48;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v37 = v59;
    }

    v34 += v35;
    --v30;
  }

  while (v30);

  v2 = v57;
  if (v37 >> 62)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    v43 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool);
    v44 = MEMORY[0x28223BE20](v41, v42);
    *(&v46 - 2) = v2;
    (*(*v43 + 184))(v37, closure #1 in DOCItemCollectionViewController.prefetchCellContent(for:)partial apply, v44);

    return result;
  }

LABEL_26:

  return result;
}